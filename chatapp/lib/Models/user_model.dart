class UserModel {
  final String? id;
  final String name;
  final String image;
  final String createdat;
  final String LasteActivated;
  final bool online;
  final String about;
  final String catchtoken;
  final String email;

  UserModel(
      {required this.email,
      required this.id,
      required this.name,
      required this.image,
      required this.createdat,
      required this.LasteActivated,
      required this.online,
      required this.about,
      required this.catchtoken});

  factory UserModel.fromjson(Map<String, dynamic> jsondata) {
    return UserModel(
        email: jsondata['email'],
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
      'email': email,
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
