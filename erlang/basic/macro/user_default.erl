#!/usr/bin/env escript
%% -*- coding:utf-8 -*-
%%! -pz .

-include("console.hrl").

hello() ->
	io:format("Hello,World!~n").

away(Time) ->
	?CONSOLE("Drogon is away and will be back in ~w minutes.~n", [Time]).

main(_) ->
        hello(),
        away(10).
