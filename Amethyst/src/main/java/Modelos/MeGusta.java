/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author denis
 */
public class MeGusta {
    private int idMeGusta;
    private int idUsuario;
    private int idPublicacion;
    private boolean activo;

    public MeGusta(int idMeGusta, int idUsuario, int idPublicacion, boolean activo) {
        this.idMeGusta = idMeGusta;
        this.idUsuario = idUsuario;
        this.idPublicacion = idPublicacion;
        this.activo = activo;
    }

    public int getIdMeGusta() {
        return idMeGusta;
    }

    public void setIdMeGusta(int idMeGusta) {
        this.idMeGusta = idMeGusta;
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
