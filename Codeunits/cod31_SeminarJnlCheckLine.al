codeunit 50131 "CSD Seminar Jnl.-Check"
//Lab 7.2 
{
    TableNo = "CSD Seminar Journal Line";
    trigger OnRun()
    begin
        RunCheck(Rec);
    end;

    var
        GlSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        AllowPostingFrom: Date;
        AllowPostingTo: Date;
        ClosingDateTxe: Label 'Cannot be a closing date';
        PostingDateTxt: Label ' is not within your range of allowed posting dates';

    procedure RunCheck(var SemJnlLine: Record "CSD Seminar Journal Line")

    begin
        if SemJnlLine.EmptyLine() then
            exit;
        SemJnlLine.TestField("Posting Date");
        SemJnlLine.TestField("Instructor Resource No.");
        SemJnlLine.TestField("Seminar No.");
        case SemJnlLine."Charge Type" of

            SemJnlLine."Charge Type"::Instructor:
                SemJnlLine.TestField("Instructor Resource No.");

            SemJnlLine."Charge Type"::Room:
                SemJnlLine.TestField("Room Resource No.");

            SemJnlLine."Charge Type"::Participant:
                SemJnlLine.TestField("Participant Contact No.");

        end;

        if SemJnlLine.Chargeable then
            SemJnlLine.TestField("Bill-to Customer No.");

        if SemJnlLine."Posting Date" = ClosingDate(SemJnlLine."Posting Date") then
            SemJnlLine.FieldError("Posting Date", ClosingDateTxe);

        if (AllowPostingFrom = 0D) and (AllowPostingTO = 0D) then begin
            if UserId <> '' then
                if UserSetup.Get(UserId) then begin
                    AllowPostingFrom := UserSetup."Allow Posting From";
                    AllowPostingTo := UserSetup."Allow Posting To";
                end;
            if (AllowPostingFrom = 0D) and (AllowPostingTo = 0D) then begin
                GlSetup.Get();
                AllowPostingFrom := GlSetup."Allow Posting From";
                AllowPostingTo := GlSetup."Allow Posting To";

            end;
            if AllowPostingTo = 0D then
                AllowPostingTo := DMY2Date(31, 12, 9999);
        end;

        if (SemJnlLine."Posting Date" < AllowPostingFrom) or (SemJnlLine."Posting Date" > AllowPostingTo) then
            SemJnlLine.FieldError("Posting Date", PostingDateTxt);

        if (SemJnlLine."Document Date" <> 0D) then
            if (SemJnlLine."Document Date" = ClosingDate(SemJnlLine."Document Date")) then
                SemJnlLine.FieldError("Document Date", PostingDateTxt);



    end;
}