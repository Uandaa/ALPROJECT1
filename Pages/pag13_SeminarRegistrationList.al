page 50113 "CSD Seminar Registration List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Seminar Registration List';
    CardPageID = "CSD Seminar Registration";
    Editable = false;
    PageType = List;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                }
                field("Starting Date"; Rec."Starting Date")
                {
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                }
                field(Status; Rec.Status)
                {
                }
                field(Duration; Rec.Duration)
                {
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                }
                field("Room Code"; Rec."Room Resource No.")
                {
                }
            }
        }
        area(factboxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50109;
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Table Name" = Const("Seminar Registration Header"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
                // Lab 7.5 task 8
                action("P&ost")
                {
                    Caption = '&Post';
                    Image = PostDocument;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    ShortcutKey = F9;
                    RunObject = codeunit "CSD Seminar-Post (Yes/No)";
                }
                //Lab 9.1 task 8
                action("&Print")
                {
                    Caption = '&Print';
                    Image = Print;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SeminarReportSelection: Record "CSD Seminar Report Selections";
                    begin
                        SeminarReportSelection.PrintReportSelection(SeminarReportSelection.Usage::Registration, Rec);
                    end;
                }
            }
        }
    }
}

