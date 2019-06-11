#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require "mail"
require "socket"

smtp_conn = Net::SMTP.new("mh2.comp.hkbu.edu.hk", 465)
smtp_conn.set_debug_output $stderr
smtp_conn.enable_tls
smtp_conn.start Socket.gethostname, "<username>", "<password>", "login"

Mail.defaults do
  delivery_method :smtp_connection, connection: smtp_conn
end

# format the email
mail = Mail.new do
  from     'from@example.com'
  to       'to@example.com'
  subject  '<subject>'
  body     '<body>'
  add_file filename: 'some_attachment.txt', content: File.read('/path/to/attachment.txt')
end

# check the email
puts mail

# send the email
mail.deliver!

sleep 2 # wait a bit
# handle next email
