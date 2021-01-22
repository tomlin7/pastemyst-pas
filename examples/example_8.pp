{Example - Checking whether a user exists or not }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var user_name: string;

{--------------------------------------------------------------}
{ Main Program }

begin
   readln(user_name);
   writeln(user_exists(user_name));
end.


{--------------------------------------------------------------}