class User {
   String email;
   final UserName name;
   String phone;
   String nat;

   User({required this.name, required this.nat, required this.email, required this.phone});


}
class UserName{
   String first;
   String last;
   String title;

   UserName({required this.first, required this.last, required this.title});
}