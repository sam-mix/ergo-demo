-module(t).

-include("common.hrl").

-export(
    [
        s/0
        ,s/1
        ,s/2
        ,a/0
    ]
).


s() ->
    [{1,2,3,a,b,c}, {1,2,3},{5,6},{a,b}].

s(A) ->
    lists:foreach(fun(B, L) -> [{A, B}| L]  end, lists:seq(1,10)).

s(A, B) ->
    lists:foreach(fun(C, L) -> [{A, B, C}| L]  end, lists:seq(1,10)).

a() ->
    ?DFLAG_BIG_CREATION.

