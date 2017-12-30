#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'rubygems'
require 'webrick'
require 'dbi'

class WebForm < WEBrick::HTTPServlet::AbstractServlet

  def do_GET(request, response)
    status, content_type, body = print_questions(request)

    response.status = status
    response['Content-Type'] = content_type
    response.body = body
  end

  def print_questions(request)
    html   = "<html><body><form method='POST' action='/save'>"
    html += "Name: <input type='textbox' name='first_name' /><br /><br />";

    dbh = DBI.connect("DBI:Mysql:webarchive:localhost", "root", "pass")
    sth = dbh.execute("SELECT DISTINCT(headline),story,id FROM yahoo_news where date >= '2004-12-01' and date <= '2005-01-01'")

    while row = sth.fetch_hash do
      html += "<b>#{row['headline']}</b><br />\n"
      html += "#{row['story']}<br />\n"
      html += "<input type='textbox' name='#{row['id']}' /><br /><br />\n"
    end
    sth.finish

    html += "<input type='submit'></form></body></html>"
    return 200, "text/html", html
  end
end

class PersistAnswers < WEBrick::HTTPServlet::AbstractServlet

  def do_POST(request, response)
    status, content_type, body = save_answers(request)

    response.status = status
    response['Content-Type'] = content_type
    response.body = body
  end

  def save_answers(request)
    if (filename = request.query['first_name'] )
      f = File.open("save-#{filename}.#{Time.now.strftime('%H%M%S')}.txt", 'w')
      request.query.collect { | key, value | 
        f.write("#{key}: #{value}\n")
      }
      f.close
    end

    return 200, "text/plain", "Saved! Thank you."
  end
end

if $0 == __FILE__ then
  server = WEBrick::HTTPServer.new(:Port => 8000)
  server.mount "/questions", WebForm
  server.mount "/save", PersistAnswers
  trap "INT" do server.shutdown end
  server.start
end
