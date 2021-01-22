{Example - Creating a private paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var
    token: string,
    params: string;

{--------------------------------------------------------------}
{ Main Program }

begin
   readln(token);
   readln(params);
   writeln(create_private_paste(token, params));
end.


{--------------------------------------------------------------}