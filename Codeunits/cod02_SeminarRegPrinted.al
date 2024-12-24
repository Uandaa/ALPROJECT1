codeunit 50102 "CSD SeminarRegPrinted"
{
    //Lab 9.1 task 2
    TableNo = "CSD Seminar Reg. Header";
    trigger OnRun()
    begin
        Rec.Find;
        Rec."No. Printed" += 1;
        Rec.Modify();
        Commit();

    end;


}