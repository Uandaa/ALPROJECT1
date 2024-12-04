page 50105 "CSD Seminar Setup"
// lab 5.2
{
    Caption = 'Seminar Setup';
    SourceTable = "CSD Seminar Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    PageType = Card;


    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; Rec."Seminar Nos.")
                {
                }
                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {

                }
                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    var
        SeminarSetup: Record "CSD Seminar Setup";
    begin
        if not SeminarSetup.Get() then begin
            SeminarSetup.Init();
            SeminarSetup.Insert();
        end;
    end;


}