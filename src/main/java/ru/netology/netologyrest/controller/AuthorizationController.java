package ru.netology.netologyrest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.netology.netologyrest.repository.Authorities;

import ru.netology.netologyrest.service.AuthorizationService;

import java.util.List;

//@RestController
@Controller
public class AuthorizationController {
    private final AuthorizationService service;

    private AuthorizationController(AuthorizationService service) {
        this.service = service;
    }

    @GetMapping("/authorize")
    public List<Authorities> getAuthorities(@RequestParam("user") String user, @RequestParam("password") String password) {
        return service.getAuthorities(user, password);
    }

    @GetMapping(value = { "/index" })
    public String getJSP() {
//        return service.getAuthorities(user, password);
    return "index";
    }

    @GetMapping("/indexTest")
    public String getJSPTest() {
//        return service.getAuthorities(user, password);
        return "indexTest";
    }

    @PostMapping("/indexTest")
    public String getParam(@RequestParam("firstName") String firstName, @RequestParam("secondName") String secondName) {
        System.out.println(firstName);
        System.out.println(secondName);
        return "indexTest";
    }

    @PostMapping("/singlephasecurrentcalc")
    public String getParam(@RequestParam("transPower") String transPower, @RequestParam("cableLength") int cableLength,
                           @RequestParam("cableMaterial") String cableMaterial, @RequestParam("cableSection") String cableSection) {
        System.out.println(transPower);
        System.out.println(cableLength);
        System.out.println(cableMaterial);
        System.out.println(cableSection);
        return "singlePhaseCurrentCalculation";
    }

    @GetMapping("/singlephasecurrentcalc")
    public String getParam() {
        return "singlePhaseCurrentCalculation";
    }
}