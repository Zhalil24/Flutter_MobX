// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlbumViewModel on _AlbumViewModelBase, Store {
  late final _$albumModelsAtom =
      Atom(name: '_AlbumViewModelBase.albumModels', context: context);

  @override
  List<AlbumModel> get albumModels {
    _$albumModelsAtom.reportRead();
    return super.albumModels;
  }

  @override
  set albumModels(List<AlbumModel> value) {
    _$albumModelsAtom.reportWrite(value, super.albumModels, () {
      super.albumModels = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_AlbumViewModelBase.pageState', context: context);

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
      name: '_AlbumViewModelBase.isServiseRequestLoading', context: context);

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
      Atom(name: '_AlbumViewModelBase.jsonPlaceService', context: context);

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

  late final _$getAlbumAsyncAction =
      AsyncAction('_AlbumViewModelBase.getAlbum', context: context);

  @override
  Future<void> getAlbum() {
    return _$getAlbumAsyncAction.run(() => super.getAlbum());
  }

  late final _$_AlbumViewModelBaseActionController =
      ActionController(name: '_AlbumViewModelBase', context: context);

  @override
  void changeRequest() {
    final _$actionInfo = _$_AlbumViewModelBaseActionController.startAction(
        name: '_AlbumViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_AlbumViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
albumModels: ${albumModels},
pageState: ${pageState},
isServiseRequestLoading: ${isServiseRequestLoading},
jsonPlaceService: ${jsonPlaceService}
    ''';
  }
}
