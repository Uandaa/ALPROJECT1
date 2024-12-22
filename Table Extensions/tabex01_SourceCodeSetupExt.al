tableextension 50101 "CSD SourceCodeSetupExt" extends "Source Code Setup"
{
    //lab 7 task 7
    fields
    {
        field(50100; "CSD Seminar"; Code[10])
        {
            Caption = 'Seminar';
            TableRelation = "Source Code";
        }


    }


}