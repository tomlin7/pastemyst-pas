
Unit data_endpoint;

{$mode objfpc}{$H+}

Interface

Uses 
   Classes, SysUtils,
   TestFramework;

Type 
   TTestCaseFirst =  Class(TTestCase)
      Published 
         Procedure test_get_language_by_name(_name: String);
         Procedure test_get_language_by_extension(_extension: String);
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

Procedure TTestCaseFirst.test_get_language_by_name(_name: String);
Begin
   //TODO: pastemyst.get_language-by_name
   AssertTrue(true);
End;

Procedure TTestCaseFirst.test_get_language_by_extension(_extension: String);
Begin
   //TODO: pastemyst.get_language_by_extension
   AssertTrue(true);
End;

initialization
   RegisterTests;
End.
