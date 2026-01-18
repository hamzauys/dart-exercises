void main(List<String> args) {
  if ('ali'.isAdmin()) {
    print('object');
  }

  String? name = 'admin'; // 💡 burada admin inputunu verdik

  if (name.isAdmin()) {
    print('name is admin');
  } else {
    print('name is not admin');
  }
}

// Nullable String extension
extension NullableStringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin';
  }
}
