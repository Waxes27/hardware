package co.za.wethinkcode.management.hardware.controllers;

import co.za.wethinkcode.management.hardware.services.HardwareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/api/v1/hardware")
public class HardwareController {
    private final HardwareService service;

    @Autowired
    public HardwareController(HardwareService service){
        this.service = service;
    }

    @GetMapping()
    public void getHardware(){
        
    }
}
