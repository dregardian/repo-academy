codeunit 50100 "HOR Test"
{
    trigger OnRun()
    begin
        Error('errore');
    end;

    var
        myInt: Integer;

    procedure getMin(a: Decimal; b: Decimal): Decimal
    begin
        if a >= b then
            exit(b)
        else
            exit(a);
    end;
}