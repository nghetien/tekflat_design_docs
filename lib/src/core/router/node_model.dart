class NodeModel<T> {
  NodeModel({
    required this.data,
    this.parent,
  });

  final T data;
  final NodeModel<T>? parent;
  List<NodeModel<T>> _children = [];

  void setChildren(List<NodeModel<T>> children) => _children = children;

  List<NodeModel<T>> get children => _children;
}
