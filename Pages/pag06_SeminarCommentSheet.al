page 50109 "CSD Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    UsageCategory = Tasks;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Date"; Rec."Date")
                {

                }
                field("Code"; Rec."Code")
                {
                    Visible = false;
                }
                field("Comment"; Rec."Comment")
                {

                }
            }
        }

    }

    trigger OnNewRecord(BelowxRec: Boolean)

    begin
        Rec.SetupNewLine();
    end;


}