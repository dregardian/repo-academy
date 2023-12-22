table 50104 "HOR Address"
{
    Caption = 'Sample table';
    DataClassification = CustomerContent;
    DataPerCompany = true;

    fields
    {
        field(1; Address; Text[50])
        {
            Description = 'Address retrived by Service';
        }
        field(2; Locality; Text[30])
        {
            Description = 'Locality retrived by Service';
        }
        field(3; "Town/City"; Text[30])
        {
            Description = 'Town/City retrived by Service';
        }
        field(4; Country; Text[30])
        {
            Description = 'Country retrived by Service';

            trigger OnValidate()
            begin

            end;
        }
    }

    keys
    {
        key(PK; Address)
        {
            Clustered = true;
        }
    }

    var
        Msg: Label 'Hello from my method';

    trigger OnInsert()
    begin

    end;

    procedure MyMethod()
    begin
        Message(Msg);
    end;
}