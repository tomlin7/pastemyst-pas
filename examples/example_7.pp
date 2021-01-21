{Example - Getting a User }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var user_id: string;

{--------------------------------------------------------------}
{ Main Program }


begin
    readln(user_id);
    writeln(get_user(user_id));
end.


{--------------------------------------------------------------}