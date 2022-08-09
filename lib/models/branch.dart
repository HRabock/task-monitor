class Branch {
  final String name;

  Branch(
    this.name,
  );
  Branch.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {
        'name': this.name,
      };
}
