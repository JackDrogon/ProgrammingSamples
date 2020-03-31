package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	ospath "path"
	"time"

	rolling "github.com/arthurkiller/rollingWriter"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

//Writer generate the rollingWriter
func Writer(path, pattern string, compress bool) (io.Writer, error) {
	var opts []rolling.Option
	opts = append(opts, rolling.WithRollingTimePattern(pattern))
	if compress {
		opts = append(opts, rolling.WithCompress())
	}
	dir, filename := ospath.Split(path)
	opts = append(opts, rolling.WithLogPath(dir), rolling.WithFileName(filename), rolling.WithLock())
	writer, err := rolling.NewWriter(opts...)
	if err != nil {
		return nil, fmt.Errorf("create IOWriter failed, %s", err)
	}
	return writer, nil
}

// ConfigureZap customize the zap logger
func ConfigureZap(name, path, level, pattern string, compress bool) error {
	writer, err := Writer(path, pattern, compress)
	if err != nil {
		return err
	}

	var lv = zap.NewAtomicLevel()
	switch level {
	case "debug":
		lv.SetLevel(zap.DebugLevel)
	case "info":
		lv.SetLevel(zap.InfoLevel)
	case "warn":
		lv.SetLevel(zap.WarnLevel)
	case "error":
		lv.SetLevel(zap.ErrorLevel)
	case "panic":
		lv.SetLevel(zap.PanicLevel)
	case "fatal":
		lv.SetLevel(zap.FatalLevel)
	default:
		return fmt.Errorf("unknown log level(%s)", level)
	}
	timeEncoder := func(t time.Time, enc zapcore.PrimitiveArrayEncoder) {
		enc.AppendString(t.Local().Format("2006-01-02 15:04:05.999999999"))
	}

	encoderCfg := zapcore.EncoderConfig{
		NameKey:        "Name",
		StacktraceKey:  "Stack",
		MessageKey:     "Message",
		LevelKey:       "Level",
		TimeKey:        "TimeStamp",
		CallerKey:      "Caller",
		EncodeTime:     timeEncoder,
		EncodeLevel:    zapcore.CapitalLevelEncoder,
		EncodeDuration: zapcore.StringDurationEncoder,
		EncodeCaller:   zapcore.ShortCallerEncoder,
	}

	output := zapcore.AddSync(writer)
	var zapOpts []zap.Option
	zapOpts = append(zapOpts, zap.AddCaller())
	// zapOpts = append(zapOpts, zap.Hooks(metrics.Measure))

	logger := zap.New(zapcore.NewCore(zapcore.NewJSONEncoder(encoderCfg), output, lv), zapOpts...)
	logger.Named(name)
	log := logger.With(zap.Int("PID", os.Getpid()))
	zap.ReplaceGlobals(log)
	//http change log level
	http.Handle("/tips/log/level", lv)

	return nil
}

func ConfigureZapWithErrorExit(name, path, level, pattern string, compress bool) {
	if err := ConfigureZap(name, path, level, pattern, compress); err != nil {
		fmt.Printf("create logger failed, %s\n", err)
		os.Exit(1)
	}
}

func main() {
	ConfigureZapWithErrorExit("hello", "/tmp/fuck", "info",
		config.Logger.TimeRotate, config.Logger.Compress)

	// zap.L().Fatal("create writer for continuous failed", zap.Error(err))
}
