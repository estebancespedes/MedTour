class Evento{
  String nombre;
  DateTime fechaInicio;
  DateTime fechaFin;

  Evento(
    this.nombre,
    this.fechaInicio,
    this.fechaFin
  );

  factory Evento.fromJson(Map<String, dynamic> json) {
    return Evento(
      json['nombre']??'',
      DateTime.parse(json['FechaInicio'] ?? DateTime.now().toIso8601String()),
      DateTime.parse(json['FechaFin'] ?? DateTime.now().toIso8601String())
    );
  }

  String get fechaInicioFormateada {
    return '${fechaInicio.day}/${fechaInicio.month}/${fechaInicio.year}';
  }

  String get fechaFinFormateada {
    return '${fechaFin.day}/${fechaFin.month}/${fechaFin.year}';
  }

  // Método para verificar si el evento está activo
  bool get estaActivo {
    final ahora = DateTime.now();
    return ahora.isAfter(fechaInicio) && ahora.isBefore(fechaFin);
  }

  // Método para verificar si el evento ya terminó
  bool get yaTermino {
    return DateTime.now().isAfter(fechaFin);
  }

  // Método para verificar si el evento aún no ha comenzado
  bool get noHaComenzado {
    return DateTime.now().isBefore(fechaInicio);
  }
}