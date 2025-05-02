table 50148 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(20; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(40; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = "Instructor Led","e-Learning","Remote Training";
        }
        field(50; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }
        field(60; Price; Decimal)
        {
            Caption = 'Price';
        }
        field(70; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(80; Difficulty; Integer)
        {
            Caption = 'Difficulty';
        }
        field(90; "Passing Rate"; Integer)
        {
            Caption = 'Passing Rate';
        }
        field(100; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Resource where(Type = const(Person));
        }
        field(110; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
        key(key1; "Instructor Code")
        {

        }
        key(key2; Type)
        {

        }
    }
}
