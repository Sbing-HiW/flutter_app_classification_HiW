class CallFunc {
  var funcint;
  var valf;
  var number;
  var neirongshu;
  var ou;

  factory CallFunc() => _getInstance();
  static CallFunc get instance => _getInstance();

  static CallFunc _instance;
  CallFunc._internal() {
    funcint = null;
  }
  static CallFunc _getInstance() {
    if (_instance == null) {
      _instance = CallFunc._internal();
    }
    return _instance;
  }
}

CallFunc callFunc = CallFunc.instance;
