codeunit 50142 MyCodeunit
{
    trigger OnRun()
    begin
        dojInit := WorkDate();
        result := CalculateWorkDays(dojInit);
        Message('Difference between %2 and %3 is %1', result, dojInit, Today());
    end;

    procedure CalculateWorkDays(doj: Date): Integer
    var
        Today: Date;
        DateDifference: Integer;
    begin
        Today := DT2Date(CurrentDateTime());
        DateDifference := Today - doj;
        exit(DateDifference);
    end;

    var
        dojInit: Date;
        result: Integer;
}
