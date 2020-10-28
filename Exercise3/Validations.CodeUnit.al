codeunit 50111 Validations
{
    trigger OnRun()
    begin

    end;

    /// <summary> 
    /// Description for CheckForPlusSign.
    /// </summary>
    /// <param name="TextToVerify">Parameter of type Text.</param>
    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        if (TextToVerify.Contains('+')) then
            Message(TextToVerify + ', contains (+)')
        else
            Message(TextToVerify + ', not contains (+)')
    end;


    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', false, false)]
    /// <summary> 
    /// Description for OnBeforeValidateAddress.
    /// </summary>
    local procedure OnBeforeValidateAddress(Rec: Record Customer; xRec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;
}