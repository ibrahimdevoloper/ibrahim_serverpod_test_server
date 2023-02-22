/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Comment extends _i1.TableRow {
  Comment({
    int? id,
    required this.comment,
    required this.postId,
    required this.commentDate,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

  factory Comment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Comment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      comment: serializationManager
          .deserialize<String>(jsonSerialization['comment']),
      postId:
          serializationManager.deserialize<int>(jsonSerialization['postId']),
      commentDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['commentDate']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedAt']),
    );
  }

  static final t = CommentTable();

  String comment;

  int postId;

  DateTime commentDate;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  String get tableName => 'comments';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'comment': comment,
      'postId': postId,
      'commentDate': commentDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'comment': comment,
      'postId': postId,
      'commentDate': commentDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'comment': comment,
      'postId': postId,
      'commentDate': commentDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'comment':
        comment = value;
        return;
      case 'postId':
        postId = value;
        return;
      case 'commentDate':
        commentDate = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Comment>> find(
    _i1.Session session, {
    CommentExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Comment>(
      where: where != null ? where(Comment.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Comment?> findSingleRow(
    _i1.Session session, {
    CommentExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Comment>(
      where: where != null ? where(Comment.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Comment?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Comment>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CommentExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Comment>(
      where: where(Comment.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CommentExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Comment>(
      where: where != null ? where(Comment.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CommentExpressionBuilder = _i1.Expression Function(CommentTable);

class CommentTable extends _i1.Table {
  CommentTable() : super(tableName: 'comments');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final comment = _i1.ColumnString('comment');

  final postId = _i1.ColumnInt('postId');

  final commentDate = _i1.ColumnDateTime('commentDate');

  final createdAt = _i1.ColumnDateTime('createdAt');

  final updatedAt = _i1.ColumnDateTime('updatedAt');

  @override
  List<_i1.Column> get columns => [
        id,
        comment,
        postId,
        commentDate,
        createdAt,
        updatedAt,
      ];
}

@Deprecated('Use CommentTable.t instead.')
CommentTable tComment = CommentTable();
