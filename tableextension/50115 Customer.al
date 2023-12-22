tableextension 50115 "HOR Customer" extends Customer
{
    fields
    {
        field(50116; ShoeSize; Integer)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if rec.ShoeSize < 0 then begin
                    Message('Shoe size not valid %1', Rec.ShoeSize);
                end;
            end;
        }

        field(50117; Loyalty; enum "HOR Loyalty")
        {

        }
        field(50118; PreferredContactMethodCode; Option)
        {
            OptionMembers = Any,Email,Phone,Fax,Mail;
        }
    }

    var
        myInt: Integer;

    procedure HasShoeSize(): Boolean
    begin
        exit(rec.ShoeSize <> 0);
    end;

    trigger OnBeforeInsert()
    begin
        if not HasShoeSize() then
            ShoeSize := Random(42);
    end;
}