page 50111 "CSD Seminar Reg. Subpage"
{

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    AutoSplitKey = true;
    SourceTable = "CSD Seminar Registration Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                }
                field("Participant Name"; Rec."Participant Name")
                {
                }
                field(Participated; Rec.Participated)
                {
                }
                field("Registration Date"; Rec."Registration Date")
                {
                }
                field("Confirmation Date"; Rec."Confirmation Date")
                {
                }
                field("To Invoice"; Rec."To Invoice")
                {
                }
                field(Registered; Rec.Registered)
                {
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

