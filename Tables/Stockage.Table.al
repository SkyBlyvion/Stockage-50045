table 50301 Stockage
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
        field(2; "cbarticulo"; Code[25])
        {
            DataClassification = ToBeClassified;
            Caption = 'Gendcode ';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
        field(3; "cbubicacion"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Emplacement ';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
        field(4; "stock"; Integer)
        {
            DataClassification = ToBeClassified;
            BlankNumbers = DontBlank;
            Caption = 'Stock';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
        field(5; "bultos"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankNumbers = DontBlank;
            Caption = 'Bultos';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
        field(6; "principal"; Boolean)
        {
            DataClassification = ToBeClassified;
            BlankNumbers = DontBlank;
            Caption = 'Principal';
            Description = 'STOCKAGE LN 30/09/24 REV24';
        }
    }


    keys
    {
        key(PK; "cbarticulo", "cbubicacion")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }



}