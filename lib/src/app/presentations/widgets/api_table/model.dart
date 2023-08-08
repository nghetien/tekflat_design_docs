class APITableModel {
  final int id;
  final String property;
  final String description;
  final String type;
  final String defaultValue;
  final String version;

  const APITableModel({
    required this.id,
    required this.property,
    required this.description,
    required this.type,
    required this.defaultValue,
    required this.version,
  });

  factory APITableModel.fromJson(Map<String, dynamic> json) => APITableModel(
        id: json['id'] as int,
        property: json['property'] as String,
        description: json['description'] as String,
        type: json['type'] as String,
        defaultValue: json['defaultValue'] as String,
        version: json['version'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'property': property,
        'description': description,
        'type': type,
        'defaultValue': defaultValue,
        'version': version,
      };
}
