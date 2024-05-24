package se.yrgo.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
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

    @RequestMapping(value = "/vehicles", method = RequestMethod.POST)
    public ResponseEntity createANewVehicle(@RequestBody House house) {
        data.save(house);
        return new ResponseEntity<House>(house, HttpStatus.CREATED);
    }
}
