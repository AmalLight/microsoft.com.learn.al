table 50120 "Customer Overview"
{
    DataClassification = CustomerContent;
    Caption = 'Customer Overview';

    fields
    {
        field(1; EntryNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'EntryNo';
        }

        field(2; CustomerNo; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'CustomerNo';
        }

        field(3; CustomerName; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'CustomerName';
        }

        field(4; SourceCode; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'SourceCode';
        }

        field(5; Amount; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Ammount';
        }

        field(6; LastRunDate; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'LastRunDate';
        }
    }

    keys
    {
        key(PK; EntryNo)
        {
            Clustered = true;
        }
    }
}