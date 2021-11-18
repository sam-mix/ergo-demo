%%%-------------------------------------------------------------------
%% @doc t public API
%% @end
%%%-------------------------------------------------------------------

-module(t_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    t_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
