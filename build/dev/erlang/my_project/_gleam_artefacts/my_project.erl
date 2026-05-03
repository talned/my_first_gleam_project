-module(my_project).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch, inline]).
-define(FILEPATH, "src/my_project.gleam").
-export([main/0]).

-file("src/my_project.gleam", 3).
-spec main() -> nil.
main() ->
    gleam_stdlib:println(<<"hello, friend!"/utf8>>),
    gleam_stdlib:println(<<"This is my first gleam project by Talnad"/utf8>>).
