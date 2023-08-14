class UserModel {
String? UserId;
String? UserName;
String? email;
String? password;

UserModel(this.UserId,this.UserName,this.email,this.password);

Map<String,dynamic> toMap(){
  var map=<String,dynamic>{
    "UserId":UserId,
    "UserName":UserName,
    "email":email,
    "password":password,
  };
  return map;
}
UserModel.fromMap(Map<String,dynamic>map){
  UserId=map['UserId'];
  UserName=map['UserName'];
  email=map['email'];
  password=map['password'];
}
}