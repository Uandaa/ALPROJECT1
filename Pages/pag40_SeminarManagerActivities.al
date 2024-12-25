page 50140 "CSD Seminar Manager Activities"
{
    //Lab 10 task 2
    Caption = 'Seminar Manager Activities';
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup(Registration)
            {
                Caption = 'Registration';
                field(Planned; Rec.Planned)
                {

                }
                field(Registered; Rec.Registered)
                {

                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }

            }
            cuegroup("For Posting")
            {
                field(Closed; Rec.Closed)
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