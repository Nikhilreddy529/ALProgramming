page 50146 "Employee Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;
    CardPageId = 50145;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec."emp code")
                {

                }
                field(Name; Rec."emp name")
                {

                }
                field(Gender; Rec.gender)
                {

                }
                field(Salary; Rec.salary)
                {

                }
                field("Date of Joining"; Rec.DOJ)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowAMessage)
            {

                trigger OnAction()
                begin
                    Message('Ran action');
                end;
            }
        }
    }

    var
        myInt: Integer;
}