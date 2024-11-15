import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

typedef OnReplied = void Function(Fragment$ActivityReply reply);

typedef OnPosted = void Function(Fragment$TextActivity activity);

typedef OnMessaged = void Function(Fragment$MessageActivity activity);