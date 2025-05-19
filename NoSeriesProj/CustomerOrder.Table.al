table 50130 "Customer Order"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Order Number"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(2; "Order Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            //InitValue = "myWithum";

        }
        field(3; "Order Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Order Number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myNoSeries: Codeunit "No. Series";

    trigger OnInsert()
    begin
        if "Order Number" = '' then begin
            TestField("Order Series");
            "Order Number" := myNoSeries.GetNextNo("Order Series", WorkDate(), true);
        end;
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