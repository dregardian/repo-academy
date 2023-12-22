page 50111 "HOR Sample Customer List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Caption = 'Pagina academy';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; rec.ShoeSize)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Promoted = true;
                PromotedCategory = Process;
                Caption = 'Generic Test';
                ApplicationArea = All;

                trigger OnAction()
                var
                    OK: Boolean;
                    myCodUnit: Codeunit "HOR Test";
                begin
                    // myCodUnit.Run();
                    message('il minimo fra 2 e 5 è %1', Format(myCodUnit.getMin(2, 5)));
                end;
            }
        }
    }

    var
        myInt: Integer;
}