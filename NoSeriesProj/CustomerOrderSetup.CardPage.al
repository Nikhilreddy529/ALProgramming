page 50129 "Customer Order Setup Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Customer Order Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    Editable = true;

    layout
    {
        area(Content)
        {
            group("Setup Details")
            {
                field(MyKey; Rec.MyKey)
                {
                    Caption = 'My Key';
                }
                field("Default Code Series"; Rec."Default Code Series")
                {
                    Caption = 'Default Code Series';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnInit()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;

    var
        myInt: Integer;
}