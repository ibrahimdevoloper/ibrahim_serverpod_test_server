import 'package:ibrahim_serverpod_test_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CommentEndpoint extends Endpoint {
  Future<Comment> createComment(Session session,
      {required String commentValue, required int postId}) async {
    var comment = Comment(
      comment: commentValue,
      postId: postId,
      commentDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    await Comment.insert(session, comment);
    return comment;
  }

  Future<Comment> updateComment(
    Session session, {
    required Comment comment,
  }) async {
    await Comment.update(session, comment);
    return comment;
  }

  Future<Comment> deleteComment(
    Session session, {
    required Comment comment,
  }) async {
    await Comment.deleteRow(session, comment);
    return comment;
  }

  Future<List<Comment>> getComments(Session session,
      {required int postId}) async {
    var comments = await Comment.find(session,
        where: (post) => post.postId.equals(postId),
        orderBy: CommentTable().createdAt,
        orderDescending: true);
    return comments;
  }
}
