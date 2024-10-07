class Location {
  Location? location; // This should be nullable to prevent recursion issues
  String? id;
  String name;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Location({
    this.location, // Allow nullable `location` to avoid recursive instantiation
    this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      location: json['location'] != null && json['location'] is Map<String, dynamic>
          ? Location.fromJson(json['location'] as Map<String, dynamic>)
          : null, // Set to null if location is missing or invalid
      id: json['_id'] as String?,
      name: json['name'] as String? ?? 'Unknown', // Provide fallback value if name is null
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
      v: json['__v'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
    'location': location?.toJson(), // Handle potential null location
    '_id': id,
    'name': name,
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    '__v': v,
  };

  // Provide an empty Location to handle null cases
  static Location empty() {
    return Location(
      location: null, // Set to null to prevent infinite recursion
      name: 'Unknown',
    );
  }
}
