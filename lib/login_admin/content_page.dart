abstract class Content {
  Future<HomePageRecipes> lista();
  Future<InicioPage> recetas(String id);
  Future<MapsPage> mapa();
  Future<ListMyrecipe> myrecipe(String id);
  Future<InicioPage> admin();
}

class contentPage implements Content {
  Future<HomePageRecipes> lista() async {
    return HomePageRecipes();
  }

  Future<InicioPage> recetas(String id) async {
    print('en content page $id');
    return InicioPage(
      id: id,
    );
  }

  Future<MapsPage> mapa() async {
    return MapsPage();
  }

  Future<ListMyrecipe> myrecipe(String id) async {
    print('listados mis recetas $id');
    return ListMyrecipe(
      id: id,
    );
  }

  Future<InicioPage> admin() async {
    return InicioPage();
  }
}
