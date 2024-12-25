table 50140 "CSD Seminar Cue"
{
    //Lab 10 task 1
    DataClassification = ToBeClassified;
    Caption = 'Seminar Cue';

    fields
    {
        field(10; "Primmary Key"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(20; Planned; Integer)
        {
            Caption = 'Planned';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Planning)));

        }
        field(30; Registered; Integer)
        {
            Caption = 'Registered';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Registration)));

        }
        field(40; Closed; Integer)
        {
            Caption = 'Closed';
            FieldClass = FlowField;
            CalcFormula = count("CSD Seminar Reg. Header" where(Status = const(Closed)));

        }
    }

    keys
    {
        key(PK; "Primmary Key")
        {
            Clustered = true;
        }
    }





}