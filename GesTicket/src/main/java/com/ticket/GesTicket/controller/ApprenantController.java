package com.ticket.GesTicket.controller;

import com.ticket.GesTicket.modele.Apprenant;
import com.ticket.GesTicket.services.ApprenantServices;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/apprenant")
@AllArgsConstructor
public class ApprenantController {
    public final ApprenantServices AppSer;

    @PostMapping("/a")
    public Apprenant Creer(@RequestBody Apprenant App) {
        return AppSer.creerApprenant(App);
    }
    @GetMapping("/b")
    List<Apprenant> Lire (){
        return AppSer.ListerApprenent();
    }
}
