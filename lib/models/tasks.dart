class Tasks {
  final String name;
  bool isChecked = false;

  Tasks({this.name});

  void setIsChecked(bool value) {
    isChecked = value;
  }
}
