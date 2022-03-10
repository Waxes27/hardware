package za.co.wethinkcode.management.hardware.services;

import za.co.wethinkcode.management.hardware.models.Hardware;
import za.co.wethinkcode.management.hardware.repositories.HardwareRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HardwareService {
    private final HardwareRepository hardwareRepository;

    @Autowired
    public HardwareService(HardwareRepository hardwareRepository){
        this.hardwareRepository = hardwareRepository;
    }

    public List<Hardware> getHardware(){
       return hardwareRepository.findAll();
    }


    public void addNewHardware(Hardware hardware) {
        Optional<Hardware> hardwareBySerialNumber = hardwareRepository.findHardwareBySerialNumber(hardware.getSerialNumber());
        System.out.println(hardware);

        if (hardwareBySerialNumber.isPresent()){
            throw new IllegalStateException("Email Taken");
        }

        hardwareRepository.save(hardware);
    }

    public void markHardwareAsRemoved(String serial){
        System.out.println(serial);
        Optional<Hardware> hardwareOptional = hardwareRepository.findHardwareBySerialNumber(serial);

        if (!hardwareOptional.isPresent()){
            throw new IllegalStateException("Serial Number "+serial+" not Found");
        }

        hardwareRepository.delete(hardwareOptional.get());
    }
}
