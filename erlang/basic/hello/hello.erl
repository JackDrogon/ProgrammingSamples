#!/usr/bin/env escript
%% -*- coding:utf-8 -*-

-mode(compile).

hello() ->
	io:format("Hello,World!~n").
hello1(_X) ->
	io:format("Hello,World!~n").

main(_) ->
	hello(),
	hello1(d),
	% 不能使用spawn(fun hello/0)
	spawn(fun ?MODULE:hello/0),
	spawn(fun ?MODULE:hello1/1),
	halt(0).
