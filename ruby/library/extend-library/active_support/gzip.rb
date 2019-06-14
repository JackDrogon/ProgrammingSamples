#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

# TODO(active_support): Add stream

require 'active_support/gzip'

gzip = ActiveSupport::Gzip.compress('compress me!')
# => "\x1F\x8B\b\x00o\x8D\xCDO\x00\x03K\xCE\xCF-(J-.V\xC8MU\x04\x00R>n\x83\f\x00\x00\x00"
p gzip

s = ActiveSupport::Gzip.decompress(gzip)
# => "compress me!"
p s
