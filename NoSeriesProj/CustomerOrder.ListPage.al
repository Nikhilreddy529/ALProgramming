page 50130 "Customer Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Order";
    CardPageId = 50131;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Order Number"; Rec."Order Number")
                {
                    ApplicationArea = all;
                }
                field("Order Name"; Rec."Order Name")
                {
                    ApplicationArea = all;
                }
                field("Order Series"; Rec."Order Series")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(Factboxes)
        {

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
}