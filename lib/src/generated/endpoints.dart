/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/comment_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/post_endpoint.dart' as _i4;
import 'package:ibrahim_serverpod_test_server/src/generated/comment.dart'
    as _i5;
import 'package:ibrahim_serverpod_test_server/src/generated/post.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'comment': _i2.CommentEndpoint()
        ..initialize(
          server,
          'comment',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'post': _i4.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
    };
    connectors['comment'] = _i1.EndpointConnector(
      name: 'comment',
      endpoint: endpoints['comment']!,
      methodConnectors: {
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'commentValue': _i1.ParameterDescription(
              name: 'commentValue',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i2.CommentEndpoint).createComment(
            session,
            commentValue: params['commentValue'],
            postId: params['postId'],
          ),
        ),
        'updateComment': _i1.MethodConnector(
          name: 'updateComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i5.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i2.CommentEndpoint).updateComment(
            session,
            comment: params['comment'],
          ),
        ),
        'deleteComment': _i1.MethodConnector(
          name: 'deleteComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i5.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i2.CommentEndpoint).deleteComment(
            session,
            comment: params['comment'],
          ),
        ),
        'getComments': _i1.MethodConnector(
          name: 'getComments',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i2.CommentEndpoint).getComments(
            session,
            postId: params['postId'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subtitle': _i1.ParameterDescription(
              name: 'subtitle',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).createPost(
            session,
            title: params['title'],
            subtitle: params['subtitle'],
          ),
        ),
        'updatePost': _i1.MethodConnector(
          name: 'updatePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i6.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).updatePost(
            session,
            post: params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i6.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).deletePost(
            session,
            post: params['post'],
          ),
        ),
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['post'] as _i4.PostEndpoint).getPosts(session),
        ),
      },
    );
  }
}
