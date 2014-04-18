-module(drop).
-export([fall_velocity/2]).
fall_velocity(Planemo, Distance) ->
  Gravity = case Planemo of
              earth when Distance >= 0 -> 9.8;
              moon when Distance >= 0 -> 1.6;
              mars when Distance >= 0 -> 3.71
            end, % note comma - function isn't done yet
  math:sqrt(2 * Gravity * Distance).





%% -module(drop).
%% -export([fall_velocity/1]).
%% fall_velocity({Planemo, Distance}) -> fall_velocity(Planemo, Distance).
%% fall_velocity(earth, Distance) when Distance >= 0 -> math:sqrt(2 * 9.8 * Distance);
%% fall_velocity(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);
%% fall_velocity(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).



%% -module(drop).
%% -export([fall_velocity/2]).
%% fall_velocity(Planemo, Distance) when Distance >= 0 ->
%%   case Planemo of
%%     earth -> math:sqrt(2 * 9.8 * Distance);
%%     moon -> math:sqrt(2 * 1.6 * Distance);
%%     mars -> math:sqrt(2 * 3.71 * Distance) % no closing period!
%%   end.