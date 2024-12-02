pageextension 50101 "CSD ResourceListExt" extends "Resource List"
//lab 5.1
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
            }
            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage();
    begin
        ShowType := (Rec.GetFilter(Type) = '');
        ShowMaxField :=
       (Rec.GetFilter(Type) = format(Rec.Type::machine));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}