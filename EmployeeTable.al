table 50147 Employe
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Table';
    Description = 'Employee Description';

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "salary"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "DOJ"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "City"; Option)
        {
            OptionMembers = "Hyderabad","Banglore","Chennai";
            DataClassification = ToBeClassified;
        }
        field(6; gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Male,Female,Non;
        }
        field(11; "WorkingDays"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


    trigger OnInsert()
    begin
        Message('Data Inserted/');
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Renamed');
    end;

}