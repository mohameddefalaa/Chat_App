class UserModel {
  String? id;
  String name;
  String image;
  String createdat;
  String LasteActivated;
  bool online;
  String about;
  String catchtoken;

  UserModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.createdat,
      required this.LasteActivated,
      required this.online,
      required this.about,
      required this.catchtoken});

  factory UserModel.fromjson(Map<String, dynamic> jsondata) {
    return UserModel(
        id: jsondata['id'],
        name: jsondata['name'],
        image: jsondata['image'],
        createdat: jsondata['createdat'],
        LasteActivated: jsondata['LasteActivated'],
        online: jsondata['online'],
        about: jsondata['about'],
        catchtoken: jsondata['catchtoken']);
  }
  Map<String, dynamic> tojson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'createdat': createdat,
      'lasteactivated': createdat,
      'LasteActivated': LasteActivated,
      'online': online,
      'abut': about,
      'catchtoken': catchtoken
    };
  }
}
