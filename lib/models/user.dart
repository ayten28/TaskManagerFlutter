class UserModel
{
  String firstName;
  String lastName;
  String position;
  String id;
  String userName;
  String normalizedUserName;
  String email;
  String normalizedEmail;
  bool emailConfirmed;
  String phoneNumber;
  UserModel(this.firstName, this.lastName, this.position, this.id, this.userName,
      this.normalizedUserName, this.email, this.normalizedEmail, this.emailConfirmed,
      this.phoneNumber);
}

class UserListModel
{
  String userName;
  String email;

  UserListModel(this.userName,this.email);
}