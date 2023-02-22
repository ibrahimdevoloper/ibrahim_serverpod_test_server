import 'package:ibrahim_serverpod_test_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint {
  Future<Post> createPost(Session session,
      {required String title, required String subtitle}) async {
    var post = Post(
      title: title,
      subtitle: subtitle,
      commentCount: 0,
      viewsCount: 0,
      postDate: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    await Post.insert(session, post);
    return post;
  }

  Future<Post> updatePost(
    Session session, {
    required Post post,
  }) async {
    await Post.update(session, post);
    return post;
  }

  Future<Post> deletePost(
    Session session, {
    required Post post,
  }) async {
    await Post.deleteRow(session, post);
    return post;
  }

  Future<List<Post>> getPosts(Session session) async {
    var posts = await Post.find(session,
        orderBy: PostTable().createdAt, orderDescending: true);
    for (var post in posts) {
      post.viewsCount++;
      await Post.update(session, post);
    }
    return posts;
  }
}
