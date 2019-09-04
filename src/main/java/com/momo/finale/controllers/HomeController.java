package com.momo.finale.controllers;

import com.momo.finale.dao.EtudiantRepo;
import com.momo.finale.model.Etudiant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {

    @Autowired
    EtudiantRepo repo;



    @RequestMapping("/home")
    public String home() {

        return "etudiant.jsp";
    }

    @RequestMapping("/login")
    public String loginPage()
    {
        return "index.jsp";
    }

    @RequestMapping("/addEtudiant")
    public String addEtudiant(Etudiant etudiant)
    {
        repo.save(etudiant);
        return "index.jsp";
    }

    @RequestMapping("/liste")
    public String ListEtudiant(Model m)
    {
        List<Etudiant> etudiantList = repo.findAll();
        m.addAttribute("etudiantList",etudiantList);
        System.out.println(etudiantList);
        return "listeEtudiants.jsp";
    }
    @RequestMapping(value="/edits/{id}", method = RequestMethod.GET)
    public ModelAndView edits(@PathVariable int id){
        Optional<Etudiant> etudiants = repo.findById(id);
        System.out.println(etudiants);
        return new ModelAndView("edits.jsp","etudiants",etudiants);
    }

    @RequestMapping(value="/deleteEtudiant/{id}",method = RequestMethod.GET)
    public String deleteEtudiant(@PathVariable int id){
        repo.deleteById(id);
        return "redirect:/liste";
    }

}
