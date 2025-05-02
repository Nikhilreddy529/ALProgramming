namespace ALProjectPage.ALProjectPage;

tableextension 50144 "Social Media" extends Employe
{
    fields
    {
        field(7; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(8; Twitter; Text[50])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
        field(9; Linkdin; Text[50])
        {
            Caption = 'Linkdin';
            DataClassification = ToBeClassified;
        }
        field(10; "Instagram"; Text[50])
        {
            Caption = '';
            DataClassification = ToBeClassified;
        }
    }
}
