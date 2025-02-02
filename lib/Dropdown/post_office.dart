class PostOffice {
  final String postOfficeName;
  final String pinCode;
  final String districtsName;
  final String city;
  final String state;

  PostOffice({
    required this.pinCode,
    required this.postOfficeName,
    required this.city,
    required this.districtsName,
    required this.state,
  });

  factory PostOffice.fromJson(Map<String, dynamic> json) {
    return PostOffice(
      state: json['State'],
      districtsName: json['DistrictsName'],
      city: json['City'],
      postOfficeName: json['PostOfficeName'],
      pinCode: json['Pincode'],
    );
  }
}
