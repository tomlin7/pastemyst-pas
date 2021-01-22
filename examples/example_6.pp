{Example -  }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var
    token: string,
    paste_id: string;

{--------------------------------------------------------------}
{ Main Program }

begin
   readln(token);
   readln(paste_id);
   writeln(delete_paste(token, paste_id));
end.


{--------------------------------------------------------------}
