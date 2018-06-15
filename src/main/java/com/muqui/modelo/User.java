/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.muqui.modelo;

import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author mq12
 */
public class User {

    @NotEmpty(message = "Campo nombre no puede estar vacio")
    @Size(min = 2, max = 30, message = "El tamaño de nombre tiene que estar entre 2 y 20") 
    String nombre;
    @NotEmpty(message = "Campo correo no puede estar vacio")
    @Email(message = "Escriba un correo valido")
    String email;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
