// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostViewModel on _PostViewModelBase, Store {
  late final _$postModelsAtom =
      Atom(name: '_PostViewModelBase.postModels', context: context);

  @override
  List<PostModel> get postModels {
    _$postModelsAtom.reportRead();
    return super.postModels;
  }

  @override
  set postModels(List<PostModel> value) {
    _$postModelsAtom.reportWrite(value, super.postModels, () {
      super.postModels = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_PostViewModelBase.pageState', context: context);

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  late final _$isServiseRequestLoadingAtom = Atom(
      name: '_PostViewModelBase.isServiseRequestLoading', context: context);

  @override
  bool get isServiseRequestLoading {
    _$isServiseRequestLoadingAtom.reportRead();
    return super.isServiseRequestLoading;
  }

  @override
  set isServiseRequestLoading(bool value) {
    _$isServiseRequestLoadingAtom
        .reportWrite(value, super.isServiseRequestLoading, () {
      super.isServiseRequestLoading = value;
    });
  }

  late final _$jsonPlaceServiceAtom =
      Atom(name: '_PostViewModelBase.jsonPlaceService', context: context);

  @override
  JsonPlaceService get jsonPlaceService {
    _$jsonPlaceServiceAtom.reportRead();
    return super.jsonPlaceService;
  }

  @override
  set jsonPlaceService(JsonPlaceService value) {
    _$jsonPlaceServiceAtom.reportWrite(value, super.jsonPlaceService, () {
      super.jsonPlaceService = value;
    });
  }

  late final _$getPotsAsyncAction =
      AsyncAction('_PostViewModelBase.getPots', context: context);

  @override
  Future<void> getPots() {
    return _$getPotsAsyncAction.run(() => super.getPots());
  }

  late final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase', context: context);

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
postModels: ${postModels},
pageState: ${pageState},
isServiseRequestLoading: ${isServiseRequestLoading},
jsonPlaceService: ${jsonPlaceService}
    ''';
  }
}
