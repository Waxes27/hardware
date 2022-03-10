package za.co.wethinkcode.management.hardware.config;

import za.co.wethinkcode.management.hardware.models.Hardware;
import za.co.wethinkcode.management.hardware.repositories.HardwareRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@Configuration
public class HardwareConfig {
    @CrossOrigin
    @Bean
    CommandLineRunner commandLineRunner(HardwareRepository repository){
        return args -> {
            repository.saveAll(List.of());
        };

    }
}