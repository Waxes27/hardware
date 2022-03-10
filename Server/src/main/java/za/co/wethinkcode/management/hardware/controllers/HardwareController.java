package za.co.wethinkcode.management.hardware.controllers;

import za.co.wethinkcode.management.hardware.models.Hardware;
import za.co.wethinkcode.management.hardware.services.HardwareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.security.PermitAll;
import java.util.List;

@RestController
@RequestMapping(path = "/api/v1/hardware")
public class HardwareController {
    private final HardwareService service;

    @Autowired
    public HardwareController(HardwareService service){
        this.service = service;
    }

    @GetMapping
    public List<Hardware> getHardware(){
        return service.getHardware();
    }

    @PostMapping
    public void registerNewHardware(@RequestBody Hardware hardware){
        service.addNewHardware(hardware);

    }

    @DeleteMapping(path = "{hardwareSerial}")
    public void removeHardware(@PathVariable("hardwareSerial") String serial){
        // System.out.println("SERIAL HERE:   "+serial);
        service.markHardwareAsRemoved(serial);
    }
}
