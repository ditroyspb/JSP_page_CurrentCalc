package ru.netology.netologyrest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
//import ru.netology.netologyrest.repository.Authorities;

import ru.netology.netologyrest.repository.CableArea;
import ru.netology.netologyrest.service.AuthorizationService;

import java.util.ArrayList;
import java.util.List;

//@RestController
@Controller
public class AuthorizationController {

    public static String result = "test";

    private final AuthorizationService service;

    private AuthorizationController(AuthorizationService service) {
        this.service = service;
    }



    @PostMapping("/singlephasecurrentcalc")
    public String getParam(@RequestParam("transPower") String transPower, @RequestParam("cableLength_1") String cableLength_1,
                           @RequestParam("cableMaterial_1") String cableMaterial_1, @RequestParam("cableSection_1") String cableSection_1,
                           @RequestParam("cableLength_2") String cableLength_2,
                           @RequestParam("cableMaterial_2") String cableMaterial_2, @RequestParam("cableSection_2") String cableSection_2,
                           @RequestParam("cableLength_3") String cableLength_3,
                           @RequestParam("cableMaterial_3") String cableMaterial_3, @RequestParam("cableSection_3") String cableSection_3,
                           @RequestParam("cableLength_4") String cableLength_4,
                           @RequestParam("cableMaterial_4") String cableMaterial_4, @RequestParam("cableSection_4") String cableSection_4,
                           @RequestParam("cableLength_5") String cableLength_5,
                           @RequestParam("cableMaterial_5") String cableMaterial_5, @RequestParam("cableSection_5") String cableSection_5,
                           @RequestParam("cableLength_6") String cableLength_6,
                           @RequestParam("cableMaterial_6") String cableMaterial_6, @RequestParam("cableSection_6") String cableSection_6,
                           @RequestParam("cableLength_7") String cableLength_7,
                           @RequestParam("cableMaterial_7") String cableMaterial_7, @RequestParam("cableSection_7") String cableSection_7,
                           @RequestParam("cableLength_8") String cableLength_8,
                           @RequestParam("cableMaterial_8") String cableMaterial_8, @RequestParam("cableSection_8") String cableSection_8,
                           @RequestParam("cableLength_9") String cableLength_9,
                           @RequestParam("cableMaterial_9") String cableMaterial_9, @RequestParam("cableSection_9") String cableSection_9,
                           @RequestParam("cableLength_10") String cableLength_10,
                           @RequestParam("cableMaterial_10") String cableMaterial_10, @RequestParam("cableSection_10") String cableSection_10) {


        List<CableArea> cableAreaList = new ArrayList<>();
        addCableArea(cableLength_1, cableSection_1, cableMaterial_1, cableAreaList);
        addCableArea(cableLength_2, cableSection_2, cableMaterial_2, cableAreaList);
        addCableArea(cableLength_3, cableSection_3, cableMaterial_3, cableAreaList);
        addCableArea(cableLength_4, cableSection_4, cableMaterial_4, cableAreaList);
        addCableArea(cableLength_5, cableSection_5, cableMaterial_5, cableAreaList);
        addCableArea(cableLength_6, cableSection_6, cableMaterial_6, cableAreaList);
        addCableArea(cableLength_7, cableSection_7, cableMaterial_7, cableAreaList);
        addCableArea(cableLength_8, cableSection_8, cableMaterial_8, cableAreaList);
        addCableArea(cableLength_9, cableSection_9, cableMaterial_9, cableAreaList);
        addCableArea(cableLength_10, cableSection_10, cableMaterial_10, cableAreaList);

        double current = service.calculateCurrent(Integer.parseInt(transPower), cableAreaList);
        System.out.println(current);

        cableAreaList.clear();
//        return "singlePhaseCurrentCalculation";
        result = Double.toString(current);
        System.out.println(result);
        return "singlePhaseCurrentCalculationResult";
    }

    @GetMapping("/singlephasecurrentcalc")
    public String getParam() {
        return "singlePhaseCurrentCalculation";
    }

    private void addCableArea(String cableLength, String cableSection, String cableMaterial, List<CableArea> cableAreaList) {
        if (!cableLength.equals("")) {
            cableAreaList.add(new CableArea(Integer.parseInt(cableLength), Integer.parseInt(cableSection), cableMaterial));
        }
    }
}