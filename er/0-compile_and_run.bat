@ECHO OFF
rebar3 compile && rebar3 shell --sname n --apps er
