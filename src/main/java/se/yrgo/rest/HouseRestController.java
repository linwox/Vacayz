package se.yrgo.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import se.yrgo.data.HouseRepository;
import se.yrgo.domain.House;

import java.util.List;

@RestController
public class HouseRestController {

    @Autowired
    private HouseRepository data;

    @RequestMapping("/houses")
    public HouseList allHouses() {
        List<House> all = data.findAll();
        return new HouseList(all);
    }
}
