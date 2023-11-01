page 89000 "Rewards Level List"
{
    PageType = List;
    SourceTable = "Reward Level";
    //ContextSensitiveHelpPage = 'sales-rewards';
    SourceTableView = sorting("Minimum Reward Points") order(ascending);
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Level; Rec.Level)
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the level of reward that the customer has at this point.';
                }

                field("Minimum Reward Points"; Rec."Minimum Reward Points")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the number of points that customers must have to reach this level.';
                }
            }
        }
    }

    trigger OnOpenPage();
    begin

        if not CustomerRewardsExtMgt.IsCustomerRewardsActivated then
            Error(NotActivatedTxt);
    end;

    var
        CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext Mgt";
        NotActivatedTxt: Label 'Customer Rewards is not activated';
}