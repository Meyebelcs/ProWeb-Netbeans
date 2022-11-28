/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author denis
 */
public class Comentario {
    private int idComentario;
    private String texto;
    private boolean spoiler;
    private int idUsuario;
    private int idPublicacion;
    private boolean activo;
    private String fechaCreacion;
    
    public Comentario(int idComentario, String texto, boolean spoiler, int idUsuario, int idPublicacion, boolean activo, String fechaCreacion) {
        this.idComentario = idComentario;
        this.texto = texto;
        this.spoiler = spoiler;
        this.idUsuario = idUsuario;
        this.idPublicacion = idPublicacion;
        this.activo = activo;
        this.fechaCreacion=fechaCreacion;
    }
    
    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public int getIdComentario() {
        return idComentario;
    }


    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public boolean isSpoiler() {
        return spoiler;
    }

    public void setSpoiler(boolean spoiler) {
        this.spoiler = spoiler;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(int idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
        
}
