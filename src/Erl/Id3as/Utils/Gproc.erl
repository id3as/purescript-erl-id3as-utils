-module(erl_id3as_utils_gproc@foreign).

-export([ whereisNameImpl/3
        ]).

whereisNameImpl(Nothing, Just, Term) ->
    fun() ->
            case gproc:whereis_name(Term) of
                undefined -> Nothing;
                Pid -> Just(Pid)
            end
    end.
