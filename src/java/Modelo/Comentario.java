/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;


/**
 *
 * @author USER
 */
public class Comentario {
    private String comentario;
    private String fecha;
    private String autor;
    private String comentado;
    
    

    public Comentario(String comentario, String fecha, String autor, String comentado) {
        this.comentario = comentario;
        this.fecha = fecha;
        this.autor = autor;
        this.comentado = comentado;
    }

    public Comentario() {
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getComentado() {
        return comentado;
    }

    public void setComentado(String comentado) {
        this.comentado = comentado;
    }    
}
