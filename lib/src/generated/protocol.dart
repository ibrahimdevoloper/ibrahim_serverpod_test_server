/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'comment.dart' as _i2;
import 'example.dart' as _i3;
import 'post.dart' as _i4;
import 'package:ibrahim_serverpod_test_server/src/generated/comment.dart'
    as _i5;
import 'package:ibrahim_serverpod_test_server/src/generated/post.dart' as _i6;
import 'package:serverpod/protocol.dart' as _i7;
export 'comment.dart';
export 'example.dart';
export 'post.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Comment) {
      return _i2.Comment.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Post) {
      return _i4.Post.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Comment?>()) {
      return (data != null ? _i2.Comment.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Post?>()) {
      return (data != null ? _i4.Post.fromJson(data, this) : null) as T;
    }
    if (t == List<_i5.Comment>) {
      return (data as List).map((e) => deserialize<_i5.Comment>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Post>) {
      return (data as List).map((e) => deserialize<_i6.Post>(e)).toList()
          as dynamic;
    }
    try {
      return _i7.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Comment) {
      return 'Comment';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Post) {
      return 'Post';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Comment') {
      return deserialize<_i2.Comment>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i4.Post>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i7.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i2.Comment:
        return _i2.Comment.t;
      case _i4.Post:
        return _i4.Post.t;
    }
    return null;
  }
}
