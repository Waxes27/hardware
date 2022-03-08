package co.za.wethinkcode.management.hardware.services;

import co.za.wethinkcode.management.hardware.models.Hardware;
import co.za.wethinkcode.management.hardware.repositories.HardwareRepository;
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
}
