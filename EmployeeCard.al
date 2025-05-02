page 50145 "Employe Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;

    layout
    {
        area(Content)
        {
            group("Personal Details")
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
            }
            group("Employment Details")
            {
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