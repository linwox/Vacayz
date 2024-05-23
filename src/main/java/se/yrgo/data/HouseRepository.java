package se.yrgo.data;

import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.*;
import se.yrgo.domain.House;

@Repository
public interface HouseRepository extends JpaRepository<House, Long> {
    House findByObjectId(String objectId);
}
