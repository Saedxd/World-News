library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:newsapi/models/GetNewsModel/ArticlesModel.dart';
import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';
import 'package:newsapi/models/GetNewsModel/SourceModel.dart';

part 'serializer.g.dart';


@SerializersFor([

      ArticlesModel,
      GetNewsModel,
      SourceModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
    //    ArticlesModel,
    //       GetNewsModel,
    //       SourceModel,
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ArticlesModel),
        ],
      )),
          () => ListBuilder<ArticlesModel>())
      ..addBuilderFactory(
          (const FullType(
                BuiltList,
                [
                      FullType(GetNewsModel),
                ],
          )),
              () => ListBuilder<GetNewsModel>())
      ..addBuilderFactory(
          (const FullType(
                BuiltList,
                [
                      FullType(SourceModel),
                ],
          )),
              () => ListBuilder<SourceModel>())

).build();
//Serializers used for converting json unUsed Code to a code of object
//which i can intract with and use serializer is one of the ways of handleing this
// json data thing. we have chosen this way because it gets genrated easily and
//fastly and has lots of features.

//Make sure you add the StandardJsonPlugin whenever you want to use the generated
// JSON with a RESTful API. By default, BuiltValue's JSON output aren't key-value
// pairs, but instead a list containing [key1, value1, key2, value2, ...]. This is
// not what most of the APIs expect.