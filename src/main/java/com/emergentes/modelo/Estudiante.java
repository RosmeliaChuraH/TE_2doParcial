
package com.emergentes.modelo;

public class Estudiante {
    private int id;
    private String nombres;
    private String apellidos;
    private String seminario;
    private String confirmado;
    private String fecha_inscripcion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getSeminario() {
        return seminario;
    }

    public void setSeminario(String seminario) {
        this.seminario = seminario;
    }

    public String getConfirmado() {
        return confirmado;
    }

    public void setConfirmado(String confirmado) {
        this.confirmado = confirmado;
    }

    public String getFecha_inscripcion() {
        return fecha_inscripcion;
    }

    public void setFecha_inscripcion(String fecha_inscripcion) {
        this.fecha_inscripcion = fecha_inscripcion;
    }

    @Override
    public String toString() {
        return "Estudiante{" + "id=" + id + ", nombres=" + nombres + ", apellidos=" + apellidos + ", seminario=" + seminario + ", confirmado=" + confirmado + ", fecha_inscripcion=" + fecha_inscripcion + '}';
    }

   
    
}
