/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

import java.io.InputStream;
import java.util.ArrayList;

/**
 *
 * @author denis
 */
public class ConsultaPublicacion {
     private int idPublicacion;
    private String texto;
    private boolean spoiler;
    private boolean hasImage;
    private int idUsuario;
    private boolean activo;
    private String fechaCreacion;
    private String username;
    private int meGusta;
    private int comentarios;

    public ConsultaPublicacion(int idPublicacion, String texto, boolean spoiler, boolean hasImage, int idUsuario, boolean activo, String fechaCreacion, String username, int meGusta, int comentarios) {
        this.idPublicacion = idPublicacion;
        this.texto = texto;
        this.spoiler = spoiler;
        this.hasImage = hasImage;
        this.idUsuario = idUsuario;
        this.activo = activo;
        this.fechaCreacion = fechaCreacion;
        this.username = username;
        this.meGusta = meGusta;
        this.comentarios = comentarios;
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

    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getMeGusta() {
        return meGusta;
    }

    public void setMeGusta(int meGusta) {
        this.meGusta = meGusta;
    }

    public int getComentarios() {
        return comentarios;
    }

    public void setComentarios(int comentarios) {
        this.comentarios = comentarios;
    }

    public boolean isHasImage() {
        return hasImage;
    }

    public void setHasImage(boolean hasImage) {
        this.hasImage = hasImage;
    }
    
    
    
}
