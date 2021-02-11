unit user_endpoint;

{$mode objfpc}{$H+}

Interface

Uses 
   Classes, SysUtils,
   TestFramework;

Type 
   TTestCaseFirst =  Class(TTestCase)
      Published 
         Procedure get_user(_user_name: String);
         Procedure user_exists(_user_name: String);
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

Procedure TTestCaseFirst.get_user(_user_name: String);
begin
  //TODO: pastemyst.get_user
  AssertTrue(true);
end;

Procedure TTestCaseFirst.user_exists(_user_name: String);
begin
  //TODO: pastemyst.user_exists
  AssertTrue(true);
end;        

initialization
   RegisterTests;
End.
