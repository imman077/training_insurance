// import 'package:graphql_flutter/graphql_flutter.dart';
//
// import 'global.dart';
//
// class GraphQLConfig {
//   Future<GraphQLClient> clientToQuery() async {
//     // var tok = await "create()";
//     // 'user': tok ?? "",
//     HttpLink httpLink = HttpLink(
//       graphql_url,
//       defaultHeaders: {
//         'Authorization': 'Basic c2VsdmFtLmc6QW5vdWRAc2VsdmFt', // Include the token in the Authorization header
//       },
//     );
//
//     return GraphQLClient(cache: GraphQLCache(), link: httpLink);
//   }
// }
//
// Future gql_query(header, body) async {
//   GraphQLConfig graphQLConfiguration = GraphQLConfig();
//   GraphQLClient client = await graphQLConfiguration.clientToQuery();
//   QueryResult result = await client.query(QueryOptions(document: gql(header), variables: body, fetchPolicy: FetchPolicy.noCache));
//   if (result.hasException) {
//     if (result.exception!.graphqlErrors == null) {
//       return;
//     } else {
//       return;
//     }
//   } else if (result.data != null) {
//     var res = result.data;
//
//     // print_log(call_type: "QUERY", responsde: res, body: body, header: header);
//     return res;
//   }
// }
//
// Future gql_mutation(header, body) async {
//   GraphQLConfig graphQLConfiguration = GraphQLConfig();
//   GraphQLClient client = await graphQLConfiguration.clientToQuery();
//   QueryResult result = await client.mutate(MutationOptions(document: gql(header), variables: body));
//   // print_log(
//   //     call_type: "MUTATION", responsde: res, body: body, header: header);
//
//   if (result.hasException) {
//     var res = {"ERROR": result.exception};
//
//     return null;
//   } else if (result.data != null) {
//     var res = {"SUCCESS": result.data};
//     return res;
//   }
// }
