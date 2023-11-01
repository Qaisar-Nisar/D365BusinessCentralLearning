table 89001 "Activation Code Information"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; ActivationCode; Text[15])
        {
            Caption = 'Activation Code';
            DataClassification = SystemMetadata;
            Description = 'Activation code used to activate Customer Rewards';

        }
        field(2; "Date Activated"; Date)
        {
            Caption = 'Activation Date';
            DataClassification = SystemMetadata;
            Description = 'Date Customer Rewards was activated';
        }
        field(3; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            DataClassification = SystemMetadata;
            Description = 'Date Customer Rewards activation expires';

        }

    }

    keys
    {
        key(PK; ActivationCode)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}