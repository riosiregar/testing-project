class User {
  String _fullname;
  String _username;
  String _password;
  String _email;
  String _tgllahir;
  String _alamat;
  String _pendterakhir;
  String _flaglogged;

  User(this._fullname, this._username, this._password, this._email,
      this._alamat, this._pendterakhir, this._flaglogged);

  User.map(dynamic obj) {
    this._fullname = obj['fullname'];
    this._username = obj['username'];
    this._password = obj['password'];
    this._email = obj['email'];
    this._tgllahir = obj['tgllahir'];
    this._alamat = obj['alamat'];
    this._pendterakhir = obj['pendterakhir'];
    this._flaglogged = obj['password'];
  }

  String get fullname => _fullname;
  String get username => _username;
  String get password => _password;
  String get email => _email;
  String get tgllahir => _tgllahir;
  String get alamat => _alamat;
  String get pendterakhir => _pendterakhir;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["fullname"] = _fullname;
    map["username"] = _username;
    map["password"] = _password;
    map["email"] = _email;
    map["tgllahir"] = _tgllahir;
    map["alamat"] = _alamat;
    map["pendterakhir"] = _pendterakhir;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
