namespace ALProjectPage.ALProjectPage;

using Microsoft.Sales.Customer;

query 50149 CustomerQuery
{
    Caption = 'CustomerQuery';
    QueryType = Normal;

    elements
    {
        dataitem(customer; customer)
        {
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
