pageextension 50143 SocialMediaExt extends "Employe Card"
{
    layout
    {
        addafter("Employment Details")
        {
            group("Social Media")
            {
                field(Facebook; Rec.Facebook)
                {
                    ApplicationArea = All;
                }
                field(Linkdin; Rec.Linkdin)
                {
                    ApplicationArea = All;
                }
                field(Instagram; Rec.Instagram)
                {
                    ApplicationArea = All;
                }
                field(Twitter; Rec.Twitter)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}