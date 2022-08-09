class Repository {
  String name;
  String fullName;
  String url;
  String gitUrl;
  String sshUrl;
  String cloneUrl;

  Repository(
    this.name,
    this.fullName,
    this.url,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
  );

  Repository.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        fullName = json['full_name'],
        url = json['url'],
        gitUrl = json['git_url'],
        sshUrl = json['ssh_url'],
        cloneUrl = json['clone_url'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'full_name': fullName,
        'url': url,
        'git_url': gitUrl,
        'ssh_url': sshUrl,
        'clone_url': cloneUrl
      };
}
