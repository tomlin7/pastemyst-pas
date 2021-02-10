
Unit sample_tests;

{$mode objfpc}{$H+}

Interface

Uses 
TestFramework;

Type 
   TTestCaseFirst =  Class(TTestCase)
      Published 
         Procedure TestWarning;
         Procedure TestOne;
         Procedure TestNoError;
         Procedure TestThree;
         Procedure TestFour;
   End;


Procedure RegisterTests;


Implementation

Uses 
SysUtils;


{ register all test classes }
Procedure RegisterTests;
Begin
   TestFramework.RegisterTest(TTestCaseFirst.Suite);
End;

{ TTestCaseFirst }

Procedure TTestCaseFirst.TestWarning;
Begin
   // warning, chills!
End;

Procedure TTestCaseFirst.TestOne;
Begin
   Check(1 + 1 = 3, 'Catastrophic arithmetic failure!');
End;

Procedure TTestCaseFirst.TestNoError;
Begin
   Check(1 + 1 = 2, 'Catastrophic arithmetic failure!');
End;

Procedure TTestCaseFirst.TestThree;

Var 
   s:  string;
Begin
   s := 'hello';
   CheckEquals('Hello', s, 'Failed CheckEquals');
End;

Procedure TTestCaseFirst.TestFour;

Var 
   x, y:  integer;
Begin
   x := 10;
   y := 0;
   Check(x / y = 0, 'Failed on 1');
End;

End.
