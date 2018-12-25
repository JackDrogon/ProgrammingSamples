package main

import (
	"html/template"
	"os"
)

func main() {
	t := template.New("test_with")
	t.Parse(`{{ with .Env }}{{ range $key, $val := . }}
    {{ $key }}: {{ $val }}
    {{ end }}{{ end }}`)
	t.Execute(os.Stdout, struct {
		Env map[string]string
	}{
		Env: map[string]string{
			"Home":  "Fly",
			"Lover": "Simple",
		},
	})
}
