package com.ticket.GesTicket.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.util.Set;

@Entity
@Table(name = "apprenant")
@Getter
@Setter
@NoArgsConstructor
public class Apprenant{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id_app;

    @OneToMany(mappedBy = "apprenant", cascade = CascadeType.ALL)
    private Set<Ticket> ticket;

    @Column(length = 50)
    private String nom;
    @Column(length = 50)
    private String email;
    private String mdp;

}
