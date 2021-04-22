import 'package:app/api/v1/user.pbgrpc.dart' as userGrpc;
import 'package:app/providers/GRPC.dart';
import 'package:app/api/v1/google/protobuf/empty.pb.dart';

class UserGrpcRepository {
  Future<userGrpc.UserResponse> me() async {
    userGrpc.UserResponse response = await userGrpc.UserServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .me(Empty());
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> auth(String login, String password) async {
    userGrpc.AuthRequest request = userGrpc.AuthRequest()
      ..login = login
      ..password = password;
    userGrpc.UserResponse response =
        await userGrpc.UserServiceClient(GrpcClientSingleton().client)
            .auth(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> googleSignIn(
      String displayName, String email, String uid, String token) async {
    userGrpc.GoogleSignInRequest request = userGrpc.GoogleSignInRequest()
      ..name = displayName
      ..email = email
      ..firebaseId = uid
      ..firebaseToken = token;
    userGrpc.UserResponse response =
        await userGrpc.UserServiceClient(GrpcClientSingleton().client)
            .googleSignIn(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> facebookSignIn(
      String displayName, String email, String uid, String token) async {
    userGrpc.FacebookSignInRequest request = userGrpc.FacebookSignInRequest()
      ..name = displayName
      ..email = email
      ..firebaseId = uid
      ..firebaseToken = token;
    userGrpc.UserResponse response =
        await userGrpc.UserServiceClient(GrpcClientSingleton().client)
            .facebookSignIn(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> changePassword(String password) async {
    userGrpc.ChangePasswordRequest request = userGrpc.ChangePasswordRequest()
      ..password = password;
    userGrpc.UserResponse response = await userGrpc.UserServiceClient(
            GrpcClientSingleton().client,
            options: GrpcClientSingleton.options())
        .changePassword(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> register(String name, String phone,
      String password, String uid, String token) async {
    userGrpc.RegisterRequest request = userGrpc.RegisterRequest()
      ..name = name
      ..phone = phone
      ..password = password
      ..firebaseId = uid
      ..firebaseToken = token;
    userGrpc.UserResponse response =
        await userGrpc.UserServiceClient(GrpcClientSingleton().client)
            .register(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }

  Future<userGrpc.UserResponse> forgotPassword(
      String phone, String token) async {
    userGrpc.ForgotPasswordRequest request = userGrpc.ForgotPasswordRequest()
      ..login = phone
      ..firebaseToken = token;
    userGrpc.UserResponse response =
        await userGrpc.UserServiceClient(GrpcClientSingleton().client)
            .forgotPassword(request);
    GrpcClientSingleton.token = response.token;
    return response;
  }
}
