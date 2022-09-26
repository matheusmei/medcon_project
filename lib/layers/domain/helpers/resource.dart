class Resource<T, E> {
  T? data;
  E? error;

  Resource({
    this.data,
    this.error,
  });

  bool get hasData => data != null;

  bool get hasError => error != null;

  bool get isLoading => !hasData && !hasError ? true : false;
}
