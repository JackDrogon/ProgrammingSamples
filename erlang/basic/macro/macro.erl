#!/usr/bin/env escript
%% -*- coding:utf-8 -*-

-define(FUNC, X).
-define(TION, +X).

%% Can't be ?FUNC?TION
double(X) -> ?FUNC ?TION.

-define(Multiple(X,Y), X rem Y == 0).
tstFun(Z, W) when ?Multiple(Z,W) -> true;
tstFun(Z, W) -> false.

-define(VALUE(Call), io:format("~p = ~p~n", [??Call, Call])).
test1() ->
	?VALUE(length([1, 2, 3])).

main(_) ->
	io:format("~p~n", [double(1)]),
	test1().
