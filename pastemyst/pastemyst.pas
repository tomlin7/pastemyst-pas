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
{ Fetches a paste with given id - Interface }

function get_paste(_id: string): string;

{--------------------------------------------------------------}
{ Fetches a private paste with given id - Interface }

function get_private_paste(_id: string; _token: string): string;

{--------------------------------------------------------------}
{ Private Implementation }

implementation

{--------------------------------------------------------------}
{ Units }

uses 
   fphttpclient, 
   opensslsockets;

{--------------------------------------------------------------}
{ Constant Declarations }

const url = 'https://paste.myst.rs/api/v2/paste/';

{--------------------------------------------------------------}
{ Variable Declarations }

Var Client : TFPHttpClient;

{--------------------------------------------------------------}
{ Fetches paste with given id - Implementation }

function get_paste(_id: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   try
      get_paste := Client.Get(url + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}
{ Fetches a private paste with given id - Implementation }

function get_private_paste(_id: string; _token: string): string;
begin
   Client := TFPHttpClient.Create(Nil);
   Client.AddHeader('Authorization', _token);
   try
      get_private_paste := Client.Get(url + _id);
   finally
      Client.Free;
   end;
end;


{--------------------------------------------------------------}

end.