unit paste_endpoint;

{$mode objfpc}{$H+}

Interface

Uses 
   Classes, SysUtils,
   TestFramework;

Type 
   TTestCaseFirst =  Class(TTestCase)
      Published 
         Procedure test_get_paste(_paste_id: String);
         Procedure test_get_private_paste(_paste_id: String; _token: String);
         Procedure test_create_paste(_params: String);
         Procedure test_create_private_paste(_params: String; _token: String);
         Procedure test_edit_paste(_id: String; _params: String; _token: String);
         Procedure test_delete_paste(_id: String; _token: String);
   End;

Procedure RegisterTests;

Implementation

Uses
   pastemyst;

{ Register all test classes }
Procedure RegisterTests;
Begin
   TestFramework.RegisterTest(TTestCaseFirst.Suite);
End;

{ TTestCaseFirst }

Procedure TTestCaseFirst.test_get_paste(_paste_id: String);
Begin
   //TODO: pastemyst.get_paste
   AssertTrue(true);
End;

Procedure TTestCaseFirst.test_get_private_paste(_paste_id: String; _token: String);
Begin
   //TODO: pastemyst.get_private_paste
   AssertTrue(true);
End;

Procedure TTestCaseFirst.test_create_paste(_params: String);
Begin
   //TODO: pastemyst.create_paste
   AssertTrue(true);
End;

Procedure TTestCaseFirst.test_create_private_paste(_params: String; _token: String);
Begin
   //TODO: pastemyst.create_private_paste
   AssertTrue(true);
End;

Procedure TTestCaseFirst.test_edit_paste(_id: String; _params: String; _token: String);
begin
   //TODO: pastemyst.edit_paste
   AssertTrue(true);
end;

Procedure TTestCaseFirst.test_delete_paste(_id: String; _token: String);
begin
   //TODO: pastemyst.delete_paste
   AssertTrue(true);
end;

initialization
   RegisterTests;
End.
