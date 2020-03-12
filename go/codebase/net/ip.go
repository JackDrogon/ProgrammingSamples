package net

import (
	"fmt"
	"net"
	"strings"
)

func IsIPv6(str string) bool {
	ip := net.ParseIP(str)
	return ip != nil && strings.Contains(str, ":")
}

func Addr(ip string, port int) string {
	if IsIPv6(ip) {
		return fmt.Sprintf("[%s]:%d", ip, port)
	}

	return fmt.Sprintf("%s:%d", ip, port)
}
