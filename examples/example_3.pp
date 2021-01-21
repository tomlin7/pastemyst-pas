Program example_3;

uses pastemyst in '../pastemyst/pastemyst.pas';

var params: string;

begin
    readln(params);
    writeln(create_paste(params));
end.