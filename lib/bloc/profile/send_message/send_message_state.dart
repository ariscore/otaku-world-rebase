part of 'send_message_cubit.dart';

sealed class SendMessageState {}

final class SendMessageInitial extends SendMessageState {}

final class SendingMessage extends SendMessageState {}

final class SentMessage extends SendMessageState {
  SentMessage({required this.message});

  final Fragment$MessageActivity message;
}

final class SendMessageError extends SendMessageState {
  SendMessageError(this.error);

  final CustomError error;
}
