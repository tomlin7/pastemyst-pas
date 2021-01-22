{Example -  }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var language_name: string;

{--------------------------------------------------------------}
{ Main Program }

begin
   readln(language_name);
   writeln(get_language_by_name(language_name));
end.


{--------------------------------------------------------------}
