page 50120 "Customer Overview List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Overview";
    Caption = 'Course Overview List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(EntryNo; EntryNo)
                {
                    ApplicationArea = All;
                    Caption = 'EntryNo';
                }

                field(CustomerNo; CustomerNo)
                {
                    ApplicationArea = All;
                    Caption = 'CustomerNo';
                }

                field(CustomerName; CustomerName)
                {
                    ApplicationArea = All;
                    Caption = 'CustomerName';
                }

                field(SourceCode; SourceCode)
                {
                    ApplicationArea = All;
                    Caption = 'SourceCode';
                }

                field(Amount; Amount)
                {
                    ApplicationArea = All;
                    Caption = 'Ammount';
                }

                field(LastRunDate; LastRunDate)
                {
                    ApplicationArea = All;
                    Caption = 'LastRunDate';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                Caption = 'Import Records';
                Image = Import;
                ApplicationArea = All;

                trigger OnAction()
                var
                    UpdateCustomerOverview: Codeunit "Customer Overview Mgmt";
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
        }
    }
}