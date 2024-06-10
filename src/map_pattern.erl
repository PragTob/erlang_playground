-module(map_pattern).
-export([fun_map/1]).

% this warns
% commented out to show that there are no warnings
% fun_map(_Var) ->
%     io:format("Just a variable!~n");
% these don't want
fun_map(#{}) ->
    io:format("The map is empty~n");
fun_map(#{first := FirstValue}) ->
    io:format("The map has a 'first' key with value: ~p~n", [FirstValue]);
fun_map(#{first := FirstValue, second := SecondValue}) ->
    io:format("The map has a 'first' & 'second' key with value: ~p~n ~p~n", [
        FirstValue, SecondValue
    ]).
