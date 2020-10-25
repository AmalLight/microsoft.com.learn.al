page 50112 "Statements Card"
{
    // Note1 => Learn the AL statements in Dynamics 365 Business Central Exercise
    // Note2 => Use conditional and compound statements

    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(input)
            {
                Caption = 'input';

                field("Difficulty"; Difficulty)
                {
                    Caption = 'Difficulty';
                    ApplicationArea = ALL;

                    trigger OnValidate()
                    var
                    begin
                        GetSuggestion();
                    end;
                }
            }

            group(output)
            {
                Caption = 'output';

                field("Suggestion"; Suggestion)
                {
                    Caption = 'Suggestion';
                    ApplicationArea = ALL;
                    Editable = false;
                }

                field("Level"; Level)
                {
                    Caption = 'Level';
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    /// <summary> 
    /// Description for GetSuggestion.
    /// </summary>
    local procedure GetSuggestion()
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}