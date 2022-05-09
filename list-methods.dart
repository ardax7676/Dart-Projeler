void main(List<String> args) {
  FitMember m1 = FitMember(1);
  FitMember m2 = FitMemberPlus(2, 1);
  var m3 = FitMemberPlus(3, 6);
  FitMemberPlus m4 = FitMemberPlus(4, 10);
  var m5 = FitMember(5);
  FitMember m6 = FitMember(5);

  List<FitMember> members = [m1, m2, m3, m4, m5, m6];
  print(members.asMap());
  //print(members.cast<FitMember>());
  
  //print(members.expand((element) => fonk1(element)).toSet());

}

Set<FitMember> fonk1(FitMember n) {
  Set<FitMember> uyeler = {};
  for (int i = 0; i < 6; i++) {
    uyeler.add(FitMember(n.id + i));
  }
  return uyeler;
}

class FitMember {
  int id;
  FitMember(this.id);

  void signUp() {
    print("You Signed Up");
  }

  @override
  String toString() {
    return "Member id: $id ";
  }
}

class FitMemberPlus extends FitMember {
  int plusLevel;
  FitMemberPlus(int id, this.plusLevel) : super(id);

  void getDiscount() {
    print("You got discount");
  }

  @override
  String toString() {
    return super.toString() + "Member Plus Level: $plusLevel";
  }
}
