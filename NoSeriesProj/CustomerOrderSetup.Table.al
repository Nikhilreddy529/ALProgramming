table 50129 "Customer Order Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyKey; Code[10])
        {
            DataClassification = ToBeClassified;
            InitValue = 'Setup';
            Editable = true;
        }
        field(2; "Default Code Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
            Editable = true;
        }
    }

    keys
    {
        key(PK; MyKey)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myRec: Record "No. Series";

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}