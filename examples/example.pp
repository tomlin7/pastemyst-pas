{Example - Getting a Paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var paste_id: string;


{--------------------------------------------------------------}
{ Main Program }

begin
   readln(paste_id);
   writeln('Fetching Paste with Id: ', paste_id);
   writeln(get_paste(paste_id));
end.


{--------------------------------------------------------------}