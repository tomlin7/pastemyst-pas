{Example - Creating a Paste }

Program example;

{--------------------------------------------------------------}
{ import the pastemyst unit to get started }

uses pastemyst in '../pastemyst/pastemyst.pas';

{--------------------------------------------------------------}
{ Variable Declarations}

var params: string;

{--------------------------------------------------------------}
{ Main Program }

begin
    // a basic example is given in ./sample_post.json
    readln(params);
    writeln(create_paste(params));
end.


{--------------------------------------------------------------}