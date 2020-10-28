page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(input)
            {
                Caption = 'input';

                field("field_Value_1"; Value1)
                {
                    Caption = 'Value1';
                    ApplicationArea = ALL;
                }
                field("field_Value_2"; Value2)
                {
                    Caption = 'Value2';
                    ApplicationArea = ALL;
                }
            }

            group(output)
            {
                Caption = 'output';

                field("field_Result"; Result)
                {
                    Caption = 'Result';
                    ApplicationArea = ALL;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}