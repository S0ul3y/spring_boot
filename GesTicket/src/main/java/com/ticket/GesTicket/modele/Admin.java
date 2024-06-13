package com.ticket.GesTicket.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import static jakarta.persistence.GenerationType.*;

@Entity
@Table(name = "admin")
@Getter
@Setter
@NoArgsConstructor
public class Admin{
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private long id_admin;
    @Column(length = 50)
    private String nom;
    @Column(length = 50)
    private String email;
    @Column(length = 50)
    private String mdp;

}
