package main

import (
	"sync/atomic"
	"testing"

	"golang.org/x/sys/cpu"
)

type NoPad struct {
	a uint64
	b uint64
	c uint64
}

func (np *NoPad) Increase() {
	atomic.AddUint64(&np.a, 1)
	atomic.AddUint64(&np.b, 1)
	atomic.AddUint64(&np.c, 1)
}

type Pad struct {
	a  uint64
	_a cpu.CacheLinePad
	b  uint64
	_b cpu.CacheLinePad
	c  uint64
	_c cpu.CacheLinePad
}

func (p *Pad) Increase() {
	atomic.AddUint64(&p.a, 1)
	atomic.AddUint64(&p.b, 1)
	atomic.AddUint64(&p.c, 1)
}

func BenchmarkPadIncrement(b *testing.B) {
	pad := &Pad{}

	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			pad.Increase()
		}
	})
}

func BenchmarkNoPadIncrement(b *testing.B) {
	noPad := &NoPad{}

	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			noPad.Increase()
		}
	})
}
