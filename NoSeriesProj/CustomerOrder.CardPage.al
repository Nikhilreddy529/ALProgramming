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
            group(Orders)
            {
                field("Order Number"; Rec."Order Number")
                {
                    Caption = 'Order Number';
                }
                field("Order Name"; Rec."Order Name")
                {
                    Caption = 'Order Name';
                }
                field("Order Series"; Rec."Order Series")
                {
                    Caption = 'Order Series';
                }
            }
        }
    }


}