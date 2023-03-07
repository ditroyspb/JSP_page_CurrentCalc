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

    public double calculateSinglePhaseCurrent(String transPower, List<CableArea> cableAreaList) {

        double resistance = 0;
        String[] columnMappingCable = {"diameter", "material", "resistance"};
        String[] columnMappingTrans = {"model", "power", "upVoltage", "downVoltage", "idleLoss", "shortCircuitLoss",
                "idleCurrent", "shortCircuitVoltage", "resistance"};
        String[] columnMappingThreePhaseTrans = {"power", "scheme", "resistance"};
        String fileCableBaseName = "cableBaseTest.csv";
        String fileTransBaseName = "transBaseTest.csv";
        String fileThreePhaseTransBaseName = "threePhaseTransBase.csv";
        List<Cable> cableList = parseBaseCable(columnMappingCable, fileCableBaseName);
        List<Trans> transList = parseBaseTrans(columnMappingTrans, fileTransBaseName);
        List<ThreePhaseTrans> threePhaseTransList = parseBaseThreePhaseTrans(columnMappingThreePhaseTrans, fileThreePhaseTransBaseName);

        if (transPower.contains("_")) {
            String[] parts = transPower.split("_");
            for (ThreePhaseTrans trans : threePhaseTransList) {
                if (trans.power == Double.parseDouble(parts[0]) && trans.scheme == Integer.parseInt(parts[1])) {
                    resistance += trans.resistance;
                    break;
                }
            }
        } else {
            for (Trans trans : transList) {
                if (trans.power == Double.parseDouble(transPower)) {
                    resistance += trans.resistance;
                    break;
                }
            }
        }

        for (CableArea cableArea : cableAreaList) {
            for (Cable cable : cableList) {
                if (cableArea.cableSection == cable.diameter && cableArea.cableMaterial.equals(cable.material)) {
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

    public static List<ThreePhaseTrans> parseBaseThreePhaseTrans(String[] columnMapping, String fileName) {
        List<ThreePhaseTrans> list = new ArrayList<>();
        try (CSVReader csvReader = new CSVReader(new FileReader(fileName))) {
            ColumnPositionMappingStrategy<ThreePhaseTrans> strategy = new ColumnPositionMappingStrategy<>();
            strategy.setType(ThreePhaseTrans.class);
            strategy.setColumnMapping(columnMapping);
            CsvToBean<ThreePhaseTrans> csv = new CsvToBeanBuilder<ThreePhaseTrans>(csvReader)
                    .withMappingStrategy(strategy)
                    .build();
            list = csv.parse();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }
}
