{Example - Getting a Paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var paste_id: string;

{--------------------------------------------------------------}
{ Prints Output to The console }

procedure print(s: string);
begin
   Write(s, ^M);
end;


{--------------------------------------------------------------}
{ Main Program }

begin
   Read(paste_id);
   writeln('Fetching Paste with Id: ', paste_id);
   print(get_paste(paste_id));
end.


{--------------------------------------------------------------}