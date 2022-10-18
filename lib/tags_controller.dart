abstract class TagsController {
  static TagsController init({List<String> values = const []}) {
    return _TagsControllerImpl(values);
  }

  void add({
    required String value,
    required Function onInvalidFormat,
  });

  void edit(
      {required String oldValue,
      required String newValue,
      required Function onInvalidFormat});

  List<String> get values;
}

class _TagsControllerImpl extends TagsController {
  final List<String> _values;

  _TagsControllerImpl(this._values);

  @override
  void add({required String value, required Function onInvalidFormat}) {
    //bool isValid = false;
    _values.add(value);
    // if (isValid) {
    //   //check something
    //   values.add(value);
    // } else {
    //   onError.call();
    // }
  }

  @override
  void edit(
      {required String oldValue,
      required String newValue,
      required Function onInvalidFormat}) {
    // TODO: implement edit
  }

  @override
  List<String> get values => List.from(_values);
}
