-module(remote_field).

-type f(T) :: {ssl:sslsocket(), T}.

-record(r1, { f1 :: f(_) }).
-type r1(T) :: #r1{ f1 :: fun((ssl:sslsocket(), T) -> any()) }.

-record(state, {
          r :: r1(T),
          arg :: T
         }).
