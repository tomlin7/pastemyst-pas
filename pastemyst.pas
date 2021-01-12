{--------------------------------------------------------------}
{ Unit Declaration }

unit pastemyst;

{--------------------------------------------------------------}
{ switches }

{$mode delphi}

{--------------------------------------------------------------}
{ Public Interface }

interface

{--------------------------------------------------------------}
{ Fetches the paste with given id - Interface }

function get_paste(_id: string): string;

{--------------------------------------------------------------}
{ Private Implementation }

implementation

{--------------------------------------------------------------}
{ Units }

uses 
   fphttpclient, 
   opensslsockets;

{--------------------------------------------------------------}
{ Constamt Declarations }

const url = 'https://paste.myst.rs/api/v2/paste/';

{--------------------------------------------------------------}
{ Variable Declarations }

Var Client : TFPHttpClient;

{--------------------------------------------------------------}
{ Fetches paste with given id - implementation }

function get_paste(_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   // Client.AddHeader('', '');
   try
      get_paste := Client.Get(url + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}

end.