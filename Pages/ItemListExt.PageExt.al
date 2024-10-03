pageextension 50354 ItemListExt extends "Item Card"
{
    actions
    {
        addafter("Stockkeepin&g Units")
        {

            action("Stockage")
            {
                Caption = 'Stockage';
                ToolTip = 'Ouvre la page du Stockage.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ItemRec: Record Stockage; // Declare a record for the Stockage table
                begin
                    ItemRec.SetRange("No.", Rec."No."); // Apply filter on the ItemNbr
                    PAGE.Run(PAGE::"Stockage", ItemRec); // Run the page with the filtered records
                end;
            }

        }

    }
    trigger OnAfterGetCurrRecord()
    var
        StockageRec: Record Stockage; // Declare a record for the Stockage table
    begin
        // Apply filter to find records in the Stockage table where Picking is TRUE and Item No. matches the current item
        StockageRec.SetRange("No.", Rec."No.");
        StockageRec.SetRange(Picking, true);

        if StockageRec.FindFirst() then
            // Fetch the "cbubicacion" (Emplacement) and update the "Shelf No." in the Item table
            if Rec."Shelf No." <> StockageRec."cbubicacion" then begin
                Rec.Validate("Shelf No.", StockageRec."cbubicacion");
                Rec.Modify();
            end;
    end;
}
