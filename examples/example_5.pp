{Example - Editing an existing paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var 
   token: string,
   id: string,
   params: string;


{--------------------------------------------------------------}
{ Main Program }

begin
   readln(token);
   readln(id);
   readln(params);
   writeln(edit_paste(token, id, params));
end.


{--------------------------------------------------------------}
