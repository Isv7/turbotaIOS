import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';

class Errors extends StatelessWidget {
  final dynamic errors;

  const Errors({Key key, @required this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var errorsWidgets = <Widget>[];
    Map<String, String> serverErrors = {
      "Wrong password": S.of(context).WrongPassword,
      "facebook_auth_error": S.of(context).facebook_auth_error
    };

    if (errors is List) {
      errors.forEach((message) {
        errorsWidgets.add(Center(
            child: Text(
                serverErrors.containsKey(message["Message"])
                    ? serverErrors[message["Message"]]
                    : message["Message"],
                style: Theme.of(context).textTheme.headline6)));
      });
    } else {
      errorsWidgets.add(Center(
          child: Text(
              errors != null
                  ? serverErrors.containsKey(errors)
                      ? serverErrors[errors]
                      : errors
                  : "Unknown error",
              style: Theme.of(context).textTheme.headline6)));
    }

    return Column(children: errorsWidgets);
  }
}
