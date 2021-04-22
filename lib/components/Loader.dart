import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io' show Platform;

import 'package:app/config/config.dart';
import 'package:app/blocs/content/Bloc.dart';
import 'package:app/blocs/authentication/Bloc.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, authState) {
      return BlocBuilder<ContentBloc, ContentState>(
          builder: (context, routerState) {
        return (routerState is ContentLoadingState) ||
                (authState is AuthenticationLoading)
            ? Center(
                child: Container(
                    width: scale(context, 80),
                    height: scale(context, 80),
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(scale(context, 10.0)),
                        color: Colors.black12),
                    child: Platform.isAndroid
                        ? CircularProgressIndicator(
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.black26))
                        : CupertinoActivityIndicator(
                            radius: scale(context, 20),
                          )))
            : Container();
      });
    });
  }
}
