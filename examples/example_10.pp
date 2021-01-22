{Example -  }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var language_extension: string;

{--------------------------------------------------------------}
{ Main Program }

begin
   readln(language_extension);
   writeln(get_language_by_extension(language_extension));
end.


{--------------------------------------------------------------}
