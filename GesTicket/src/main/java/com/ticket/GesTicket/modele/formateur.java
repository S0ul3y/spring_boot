package com.ticket.GesTicket.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "formateur")
@Getter
@Setter
@NoArgsConstructor
public class formateur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id_for;

    @OneToMany(mappedBy = "formateur", cascade = CascadeType.ALL)
    private Set<Ticket> ticket;

    @Column(length = 50)
    private String nom;
    @Column(length = 50)
    private String email;
    private String mdp;

}
