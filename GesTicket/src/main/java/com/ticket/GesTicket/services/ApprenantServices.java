package com.ticket.GesTicket.services;

import com.ticket.GesTicket.modele.Apprenant;
import com.ticket.GesTicket.repository.ApprenantRepo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ApprenantServices {

    public final ApprenantRepo AppRepo;


    public Apprenant creerApprenant(Apprenant App) {
        return AppRepo.save(App);
    }


    public List<Apprenant> ListerApprenent() {

        return AppRepo.findAll();
    }


    public Apprenant modifierTicket(long id, Apprenant App) {
        return AppRepo.findById(id)
                .map(A -> {
                    A.setNom(App.getNom());
                    A.setEmail(App.getEmail());
                    A.setMdp(App.getMdp());
                    return AppRepo.save(A);
                }).orElseThrow(()-> new RuntimeException("Apprenant non trouvée"));
    }


    public String supprimerApprenant(long id) {
        AppRepo.deleteById(id);
        return "Apprenant supprimer !";
    }
}
