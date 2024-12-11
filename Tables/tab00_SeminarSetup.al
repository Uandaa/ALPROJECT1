table 50103 "CSD Seminar Setup"
//lab 5.2
{
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';

        }
        field(20; "Seminar Nos."; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos."; Code[50])
        {
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[50])
        {
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}