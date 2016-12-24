// Package main provides ...
package integer

type Integer int

func (a Integer) Less(b Integer) bool {
	return a < b
}
