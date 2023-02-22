/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Post extends _i1.TableRow {
  Post({
    int? id,
    required this.title,
    required this.subtitle,
    required this.viewsCount,
    required this.commentCount,
    required this.postDate,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      subtitle: serializationManager
          .deserialize<String>(jsonSerialization['subtitle']),
      viewsCount: serializationManager
          .deserialize<int>(jsonSerialization['viewsCount']),
      commentCount: serializationManager
          .deserialize<int>(jsonSerialization['commentCount']),
      postDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['postDate']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedAt']),
    );
  }

  static final t = PostTable();

  String title;

  String subtitle;

  int viewsCount;

  int commentCount;

  DateTime postDate;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  String get tableName => 'posts';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'viewsCount': viewsCount,
      'commentCount': commentCount,
      'postDate': postDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'viewsCount': viewsCount,
      'commentCount': commentCount,
      'postDate': postDate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'viewsCount': viewsCount,
      'commentCount': commentCount,
      'postDate': postDate,
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
      case 'title':
        title = value;
        return;
      case 'subtitle':
        subtitle = value;
        return;
      case 'viewsCount':
        viewsCount = value;
        return;
      case 'commentCount':
        commentCount = value;
        return;
      case 'postDate':
        postDate = value;
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

  static Future<List<Post>> find(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Post?> findSingleRow(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Post>(
      where: where != null ? where(Post.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Post?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Post>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PostExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PostExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where != null ? where(Post.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PostExpressionBuilder = _i1.Expression Function(PostTable);

class PostTable extends _i1.Table {
  PostTable() : super(tableName: 'posts');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final title = _i1.ColumnString('title');

  final subtitle = _i1.ColumnString('subtitle');

  final viewsCount = _i1.ColumnInt('viewsCount');

  final commentCount = _i1.ColumnInt('commentCount');

  final postDate = _i1.ColumnDateTime('postDate');

  final createdAt = _i1.ColumnDateTime('createdAt');

  final updatedAt = _i1.ColumnDateTime('updatedAt');

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        subtitle,
        viewsCount,
        commentCount,
        postDate,
        createdAt,
        updatedAt,
      ];
}

@Deprecated('Use PostTable.t instead.')
PostTable tPost = PostTable();
