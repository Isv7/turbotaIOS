import 'package:grpc/grpc.dart';

import 'package:app/config/GRPC.dart';

class GrpcClientSingleton {
  bool _isShutdown = false;
  static String token = "";
  ClientChannel client;

  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    client = ClientChannel(GRPCConfig.server,
        port: GRPCConfig.serverPort,
        options: ChannelOptions(
          ///TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }

  static CallOptions options() {
    return CallOptions(metadata: {"authorization": "Bearer " + token});
  }

  // Shutdown client (send channel)
  void _shutdownSend() {
    if (client != null) {
      client.shutdown();
      Future.delayed(Duration(seconds: 1), () {
        print("reinit grpc");
        client = ClientChannel(GRPCConfig.server,
            port: GRPCConfig.serverPort,
            options: ChannelOptions(
              //TODO: Change to secure with server certificates
              credentials: ChannelCredentials.insecure(),
              idleTimeout: Duration(minutes: 1),
            ));
        _isShutdown = false;
      });
    } else {
      client = ClientChannel(GRPCConfig.server,
          port: GRPCConfig.serverPort,
          options: ChannelOptions(
            //TODO: Change to secure with server certificates
            credentials: ChannelCredentials.insecure(),
            idleTimeout: Duration(minutes: 1),
          ));
      _isShutdown = false;
    }
  }

  // Shutdown client
  Future<void> shutdown() async {
    _isShutdown = true;
    _shutdownSend();
  }
}
