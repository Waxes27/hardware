package za.co.wethinkcode.management.hardware.repositories;

import za.co.wethinkcode.management.hardware.models.Hardware;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface HardwareRepository extends JpaRepository<Hardware,Long>{
//    @Query("SELECT s FROM Hardware s WHERE s.serialNumber =?1")
    Optional<Hardware> findHardwareBySerialNumber(String serialNumber);
}
