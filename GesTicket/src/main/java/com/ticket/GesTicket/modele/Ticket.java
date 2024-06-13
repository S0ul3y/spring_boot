package com.ticket.GesTicket.modele;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "tickets")
@Getter
@Setter
@NoArgsConstructor
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    //@JoinColumn(name = "apprenant_id", nullable = false)
    private Apprenant apprenant;

    @ManyToOne
    //@JoinColumn(name = "formateur_id", nullable = false)
    private formateur formateur;



    @Column(length = 50)
    private String categotie;
    @Column(length = 50)
    private String description;
    @Column(length = 50)
    private String urgence;
    @Column(length = 50)
    private String statut;
    private String reponse;
}
