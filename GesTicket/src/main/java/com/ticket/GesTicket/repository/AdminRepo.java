package com.ticket.GesTicket.repository;

import com.ticket.GesTicket.modele.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepo extends JpaRepository<Admin, Long> {
}
