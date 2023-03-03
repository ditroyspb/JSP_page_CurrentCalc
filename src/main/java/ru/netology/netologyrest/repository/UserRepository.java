package ru.netology.netologyrest.repository;


import com.opencsv.CSVReader;
import com.opencsv.bean.ColumnPositionMappingStrategy;
import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import org.springframework.stereotype.Repository;
import ru.netology.netologyrest.repository.Cable;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class UserRepository {

    public double calculateSinglePhaseCurrent(double transPower, List<CableArea> cableAreaList) {

        double resistance = 0;
        String[] columnMappingCable = {"diameter", "material", "resistance"};
        String[] columnMappingTrans = {"model", "power", "upVoltage", "downVoltage", "idleLoss", "shortCircuitLoss",
                "idleCurrent", "shortCircuitVoltage", "resistance"};
        String fileCableBaseName = "cableBaseTest.csv";
        String fileTransBaseName = "transBaseTest.csv";
        List<Cable> cableList = parseBaseCable(columnMappingCable, fileCableBaseName);
        List<Trans> transList = parseBaseTrans(columnMappingTrans, fileTransBaseName);

        for (Trans trans : transList) {
            if (trans.power == transPower) {
                resistance += trans.resistance;
                break;
            }
        }

        for (CableArea cableArea : cableAreaList) {
            for (Cable cable : cableList) {
                if (cableArea.cableSection == cable.diameter && cableArea.cableMaterial.equals(cable.material)) {
//                    double lengthResistance = cableArea.cableLength / 1000;
                    double areaResistance = cable.resistance * (cableArea.cableLength / 1000) + 0.02;
                    System.out.println(cable.resistance);
                    resistance += areaResistance;
                    break;
                }
            }
        }
        System.out.println(resistance);
        return 220 / resistance;
    }


    public static List<Cable> parseBaseCable(String[] columnMapping, String fileName) {
        //todo создать класс, в котором будет generic метод,
        //todo чтобы не пришлось дублировать методы
        List<Cable> list = new ArrayList<>();
        try (CSVReader csvReader = new CSVReader(new FileReader(fileName))) {
            ColumnPositionMappingStrategy<Cable> strategy = new ColumnPositionMappingStrategy<>();
            strategy.setType(Cable.class);
            strategy.setColumnMapping(columnMapping);
            CsvToBean<Cable> csv = new CsvToBeanBuilder<Cable>(csvReader)
                    .withMappingStrategy(strategy)
                    .build();
            list = csv.parse();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<Trans> parseBaseTrans(String[] columnMapping, String fileName) {
        //todo создать класс, в котором будет generic метод,
        //todo чтобы не пришлось дублировать методы
        List<Trans> list = new ArrayList<>();
        try (CSVReader csvReader = new CSVReader(new FileReader(fileName))) {
            ColumnPositionMappingStrategy<Trans> strategy = new ColumnPositionMappingStrategy<>();
            strategy.setType(Trans.class);
            strategy.setColumnMapping(columnMapping);
            CsvToBean<Trans> csv = new CsvToBeanBuilder<Trans>(csvReader)
                    .withMappingStrategy(strategy)
                    .build();
            list = csv.parse();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }
}


//    private final Map<User, List<Authorities>> usersAuthoritiesList;

//    private UserRepository() {
//        usersAuthoritiesList = addUsersAutorities();
//    }

//    public List<Authorities> getUserAuthorities(String user, String password) {
//        List<Authorities> ans = new ArrayList<>();
//        for (Map.Entry<User, List<Authorities>> pair : usersAuthoritiesList.entrySet()) {
//            if (pair.getKey().getUser().equals(user) && pair.getKey().getPassword().equals(password))  {
//                ans = pair.getValue();
//            }
//        }
//        return ans;
//    }
//
//    private Map<User, List<Authorities>> addUsersAutorities() {
//        Map<User, List<Authorities>> usersAuthoritiesList = new HashMap<>();
//        List<Authorities> opt1 = new ArrayList<>();
//        opt1.add(Authorities.READ);
//        opt1.add(Authorities.WRITE);
//        opt1.add(Authorities.DELETE);
//        List<Authorities> opt2 = new ArrayList<>();
//        opt2.add(Authorities.READ);
//        opt2.add(Authorities.WRITE);
//        List<Authorities> opt3 = new ArrayList<>();
//        opt3.add(Authorities.READ);
//        User user1 = new User("andrey", "12345");
//        User user2 = new User("ivan", "123");
//        User user3 = new User("nastya", "123456789");
//
//        usersAuthoritiesList.put(user3, opt3);
//        usersAuthoritiesList.put(user1, opt1);
//        usersAuthoritiesList.put(user2, opt2);
//        return usersAuthoritiesList;
//    }

