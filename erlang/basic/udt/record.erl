#!/usr/bin/env escript
%% -*- coding:utf-8 -*-

-record(person, {name, age=0, phone=""}).
-record(foo, {bar}).
-record(bar, {first="", second=""}).

birthday(#person{age=Age} = P) ->
	P#person{age=Age+1}.

main(_) ->
	Person = #person{name="Joe", age=21, phone="999-999"},
	io:format("~p~n", [Person]),
	io:format("~p~n", [#person{name="Jack"}]),
	io:format("~p~n", [#person{phone="123"}]),
	io:format("~p~n", [Person#person{name="Drogon"}]),
	io:format("~p~n", [Person#person.name]),
	io:format("~p~n", [birthday(Person)]),

	%% 嵌套Record
	Foo = #foo{bar=#bar{first="foo", second="bar"}},
	io:format("~p~n", [Foo]),
	io:format("~p~n", [(Foo#foo.bar)#bar.first]).
