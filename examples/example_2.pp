Program example_2;

uses pastemyst in '../pastemyst/pastemyst.pas';

var paste_id: string;
var token: string;

begin
    readln(paste_id);
    readln(token);
    writeln('Fetching Paste with Id: ', paste_id);
    writeln(get_private_paste(paste_id, token));
end.

