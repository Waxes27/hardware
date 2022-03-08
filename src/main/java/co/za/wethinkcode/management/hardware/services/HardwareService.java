package co.za.wethinkcode.management.hardware.services;

import co.za.wethinkcode.management.hardware.repositories.HardwareRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class HardwareService {
    private final HardwareRepository hardwareRepository;

    @Autowired
    public HardwareService(HardwareRepository hardwareRepository){
        this.hardwareRepository = hardwareRepository;
    }
}
