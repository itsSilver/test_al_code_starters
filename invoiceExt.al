pageextension 50120 ExtendNavigationArea extends "Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        // Adds the action called "Calcualte Stock" to the Action menu 
        addfirst(processing)
        {
            action("Calcualte Stock")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                Image = Calculate;
                RunObject = page "Item Availability Check";
            }
        }

    }
}