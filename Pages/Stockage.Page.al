page 50353 "Stockage"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = 50351; // Stockage table
    Caption = 'Stockage';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the unique identifier for the stockage record.';
                }
                field("Gendcode"; Rec."cbarticulo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the article code (Gendcode) related to this stockage.';
                }
                field("Emplacement"; Rec."cbubicacion")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicates the location where the item is stored.';
                }
                field("Picking"; Rec."Picking")
                {
                    ApplicationArea = All;
                    ToolTip = 'Indicates whether picking true or false.';
                }
                field("Stock"; Rec."Stock")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows the current stock quantity available in this storage location.';
                }
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Shows the article code related to this stockage.';
                }
                
            }
        }
       
    }

}
               
