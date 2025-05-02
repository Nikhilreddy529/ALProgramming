query 50139 JoinCustSales
{
    QueryType = Normal;
    OrderBy = descending(Quantity);

    elements
    {
        dataitem(Cust; Customer)
        {
            column(CustNo; "No.")
            {

            }
            column(CustName; Name)
            {

            }
            dataitem(Sales_line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Cust."No.";
                column(Quantity; Quantity)
                {

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}