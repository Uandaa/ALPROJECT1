table 50141 "CSD My Seminars"
//Lab 10 task 3
{
    Caption = 'My Seminars';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "User Id"; Code[50])
        {
            Caption = 'User Id';
            TableRelation = User;
            DataClassification = ToBeClassified;

        }
        field(20; "Seminar No."; Code[50])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "User Id", "Seminar No.")
        {
            Clustered = true;
        }
    }


}