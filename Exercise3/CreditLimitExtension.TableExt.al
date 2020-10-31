tableextension 50130 "CreditLimitExtension" extends Customer
{
    /// <summary> 
    /// Description for UpdateCreditLimit.
    /// </summary>
    /// <param name="NewCreditLimit">Parameter of type Decimal.</param>
    procedure UpdateCreditLimit(var NewCreditLimit: Decimal)
    begin
        NewCreditLimit := Round(NewCreditLimit, 10000);
        Rec.Validate("Credit Limit (LCY)", NewCreditLimit);
        Rec.Modify();
    end;

    /// <summary> 
    /// Description for CalculateCreditLimit.
    /// </summary>
    /// <returns>Return variable "Decimal".</returns>
    procedure CalculateCreditLimit(): Decimal
    var
        Cust: Record Customer;
    begin
        Cust := Rec;
        Cust.SetRange("Date Filter", CalcDate('<-12M>', WorkDate()), WorkDate());
        Cust.CalcFields("Sales (LCY)", "Balance (LCY)");
        exit(Round(Cust."Sales (LCY)" * 0.5));
    end;
}