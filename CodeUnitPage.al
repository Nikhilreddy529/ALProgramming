page 50141 CalDateDiff
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Cal)
            {

                trigger OnAction()
                begin
                    mycode.Run();
                end;
            }
        }
    }

    var
        mycode: Codeunit MyCodeunit;
}