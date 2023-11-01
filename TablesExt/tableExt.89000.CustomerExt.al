 tableextension 89000 Customer extends Customer
{
  fields
  {
    field(89001; RewardPoints; Integer)
    {
      Caption = 'Reward Points';
      DataClassification = CustomerContent;
      MinValue = 0;
    }
  }
} 