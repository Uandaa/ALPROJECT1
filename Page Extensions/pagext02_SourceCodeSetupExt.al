pageextension 50102 "CSD SourceCodeSetupExt" extends "Source Code Setup"
//Lab 7 task 8
{
    layout
    {
        addafter("Cost Accounting")
        {
            group("CSD SeminarGroup")
            {
                Caption = 'Seminar';
                field(Seminar; Rec."CSD Seminar")
                {

                }

            }
        }

    }


}