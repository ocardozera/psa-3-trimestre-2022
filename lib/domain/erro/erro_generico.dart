class ErroGenerico implements Exception {
  String causa;

  ErroGenerico(this.causa);

  @override
  String toString() {
    return causa;
  }
}
