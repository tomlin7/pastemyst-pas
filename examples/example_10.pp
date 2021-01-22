{Example -  }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

Uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

Var language_extension: string;

{--------------------------------------------------------------}
{ Main Program }

Begin
   readln(language_extension);
   writeln(get_language_by_extension(language_extension));
End.


{--------------------------------------------------------------}
