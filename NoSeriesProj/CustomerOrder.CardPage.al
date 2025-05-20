page 50131 "Customer Order Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Customer Order";

    layout
    {
        area(Content)
        {
            group("Order")
            {
                Visible = pageVisibility;
                field("Order Number"; Rec."Order Number")
                {
                    Caption = 'Order Number';
                }
            }
            group("Orders Details")
            {
                field("Order Name"; Rec."Order Name")
                {
                    Caption = 'Order Name';
                }
                field("Order Series"; Rec."Order Series")
                {
                    Caption = 'Order Series';
                    Visible = pageVisibility;
                }
                field("Order date"; Rec."Order date")
                {
                    Caption = 'Order Date';
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        pageVisibility := CurrPage.Editable;
    end;


    var
        pageVisibility: Boolean;

}