package co.za.wethinkcode.management.hardware.repositories;

import co.za.wethinkcode.management.hardware.models.Hardware;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface HardwareRepository extends JpaRepository<Hardware,Integer>{

}
