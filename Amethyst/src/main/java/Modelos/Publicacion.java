/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

import java.io.InputStream;

/**
 *
 * @author denis
 */
public class Publicacion {
    private int idPublicacion;
    private String texto;
    private InputStream imagen;
    private boolean hasImage;
    private boolean spoiler;
    private int idUsuario;
    private boolean activo;
    private String fechaCreacion;

    public Publicacion(int idPublicacion, String texto, InputStream imagen, boolean hasImage, boolean spoiler, int idUsuario, boolean activo, String fechaCreacion) {
        this.idPublicacion = idPublicacion;
        this.texto = texto;
        this.imagen = imagen;
        this.hasImage=hasImage;
        this.spoiler = spoiler;
        this.idUsuario = idUsuario;
        this.activo = activo;
        this.fechaCreacion=fechaCreacion;
    }

    public boolean isHasImage() {
        return hasImage;
    }

    public void setHasImage(boolean hasImage) {
        this.hasImage = hasImage;
    }

    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public int getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(int idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
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

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    public String getfechaCreacion() {
        return fechaCreacion;
    }

    public void setfechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }
    
}
