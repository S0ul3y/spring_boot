package com.ticket.GesTicket.services;

import com.ticket.GesTicket.modele.formateur;
import com.ticket.GesTicket.repository.formateurRepo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class formateurServices {

    public final formateurRepo formRepo;

    
    public formateur creerformateur(formateur form) {
        
        return formRepo.save(form);
    }

    
    public List<formateur> ListerFormateur() {
        
        return formRepo.findAll();
    }

    
    public formateur modifierFormateur(long id, formateur App) {
        return formRepo.findById(id)
                .map(F -> {
                    F.setNom(App.getNom());
                    F.setEmail(App.getEmail());
                    F.setMdp(App.getMdp());
                    return formRepo.save(F);
                }).orElseThrow(()-> new RuntimeException("formateur non trouvée"));
    }

    
    public String supprimerformateur(long id) {
        formRepo.deleteById(id);
        return "formateur supprimer !";
    }
}
