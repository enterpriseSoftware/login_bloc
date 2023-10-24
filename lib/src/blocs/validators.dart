import 'dart:async';

mixin ValidatorsMixins {
  
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@') && email.contains('.')) {
        sink.add(email);
      } else {
        sink.addError('Invalid email');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length >= 3) {
        sink.add(password);
      } else {
        sink.addError('Invalid password, must be at least 3 characters long');
      }
    },
  );
}
