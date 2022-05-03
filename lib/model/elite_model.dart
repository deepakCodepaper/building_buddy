class EliteModel{
  String? nonMemberText;
  String eliteMemberText;
  
  EliteModel({this.nonMemberText,required this.eliteMemberText});
}

List<EliteModel> eliteModelList = [
  EliteModel(nonMemberText: 'Same day delivery \$40', eliteMemberText: 'Same day delivery FREE'),
  EliteModel(nonMemberText: 'Same day delivery \$55', eliteMemberText: 'Same day delivery \$30'),
  EliteModel(eliteMemberText: 'End of the week free return'),
  EliteModel(nonMemberText: 'Return and Exchange window - 30 Days', eliteMemberText: 'Return and Exchange window - 60 Days'),
  EliteModel(eliteMemberText: 'Bulk order saving and quote for orders over \$5k'),
  EliteModel(eliteMemberText: 'Dedicated Sales Manager'),
  EliteModel(eliteMemberText: 'Rebate \n\$5k - \$15k - 1% \n\$15k - \$49k - 1% \n\$50k+ - 3%'),
];