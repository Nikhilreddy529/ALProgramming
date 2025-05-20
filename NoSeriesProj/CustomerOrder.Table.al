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
            Editable = false;
        }
        field(4; "Order date"; Date)
        {
            DataClassification = ToBeClassified;

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
        myRec: Record "Customer Order Setup";
        orderSeries: Code[20];

    trigger OnInsert()
    begin
        if myRec.Get('Setup') then
            "Order Series" := myRec."Default Code Series";
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