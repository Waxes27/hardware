package za.co.wethinkcode.management.hardware.models;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table
public class Hardware {
    @Id
    @SequenceGenerator(
            name = "hardware_sequence",
            sequenceName = "hardware_sequence"
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "hardware_sequence"
    )

    private Long id;
    private String name;
    private String serialNumber;
    private String model;
    private LocalDate date;
    private String brand;

    public Hardware() {
        this.date = LocalDate.now();
    }


    public Hardware(String name, String serialNumber,String model,String brand){
        this.date = LocalDate.now();
        this.name = name;
        this.serialNumber = serialNumber;
        this.model = model;
        this.brand = brand;

    }

    public LocalDate getDate() {
        return date;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return this.model;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Hardware{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", serialNumber='" + serialNumber + '\'' +
                ", model='" + model + '\'' +
                ", date=" + date +
                ", brand='" + brand + '\'' +
                '}';
    }
}
