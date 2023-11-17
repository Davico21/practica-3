package com.emergentes.bean;

import com.emergentes.entidades.Contactos;
import com.emergentes.jpa.ContactosJpaController;
import com.emergentes.jpa.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class BeanContacto {

    private EntityManagerFactory emf;
    private ContactosJpaController jpaContacto;

    public BeanContacto() {
        emf = Persistence.createEntityManagerFactory("UPagenda");
        jpaContacto = new ContactosJpaController(emf);

    }

    public List<Contactos> listarTodos() {
        return jpaContacto.findContactosEntities();
    }

    public void insertar(Contactos c) {
        jpaContacto.create(c);
    }

    public void eliminar(Integer id) {
        try {
            jpaContacto.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(BeanContacto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editar(Contactos c) {
        try {
            jpaContacto.edit(c);
        } catch (Exception ex) {
            Logger.getLogger(BeanContacto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Contactos buscar(Integer id) {
        Contactos conta = new Contactos();
        conta = jpaContacto.findContactos(id);
        return conta;
    }

}
