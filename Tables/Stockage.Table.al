table 50351 Stockage
{
    DataClassification = ToBeClassified;

    fields
    {
        field(13; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No. article';
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }
        field(14; "cbarticulo"; Code[25]) // 
        {
            DataClassification = ToBeClassified;
            Caption = 'Gendcode';
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }
        field(15; "cbubicacion"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Emplacement';
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }
        field(16; "Stock"; Integer)
        {
            DataClassification = ToBeClassified;
            BlankNumbers = DontBlank;
            Caption = 'Stock';
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }
        field(2; "bultos"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'bultos';
            BlankNumbers = DontBlank;
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }
        field(6; "principal"; Boolean)
        {
            DataClassification = ToBeClassified;
            BlankNumbers = DontBlank;
            Caption = 'Principal';
            Description = 'STOCKAGE LN 03/10/24 REV24';
        }

    }


    keys
    {
        key(PK; "No.", "cbubicacion")
        {
            Clustered = true;
        }

        key(SecondaryKey; "principal", "cbarticulo")
        {
            Enabled = true;
        }


    }

    fieldgroups
    {
        // Add changes to field groups here
    }



}