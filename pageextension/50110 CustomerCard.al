pageextension 50101 "HOR Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(ShoeSize; rec.ShoeSize)
            {
                Caption = 'Shoe Size';

                trigger OnValidate()
                begin
                    if rec.ShoeSize < 10 then
                        Error('Feet too small');
                end;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}