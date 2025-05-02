query 50140 CheckEmployee
{
    QueryType = Normal;
    QueryCategory = 'Customer List';
    TopNumberOfRows = 1;
    Caption = 'One Employee';
    OrderBy = descending(EmployeeName);

    elements
    {
        dataitem(DataItemEmployee; Employe)
        {
            column(EmployeeCode; "emp code")
            {

            }
            column(EmployeeName; "emp name")
            {

            }
            filter(EmployeeFilter; gender)
            {
                ColumnFilter = EmployeeFilter = const(Female);
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}