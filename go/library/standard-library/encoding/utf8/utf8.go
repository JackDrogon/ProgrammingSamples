package main

import (
	"bytes"
	"fmt"
	"unicode/utf8"
)

func convertToValidUTF8(input []byte) []byte {
	var buf bytes.Buffer

	for len(input) > 0 {
		r, size := utf8.DecodeRune(input)

		// If the rune is invalid, replace it with the Unicode replacement character U+FFFD
		if r == utf8.RuneError && size == 1 {
			buf.WriteRune('\uFFFD')
		} else {
			buf.WriteRune(r)
		}
		input = input[size:]
	}

	return buf.Bytes()
}

func main() {
	// Example usage:
	input := []byte("Hello, 世界!\x80") // The \x80 byte is an invalid UTF-8 encoded character
	output := convertToValidUTF8(input)
	fmt.Println(string(output)) // Output: "Hello, 世界!�"
}
