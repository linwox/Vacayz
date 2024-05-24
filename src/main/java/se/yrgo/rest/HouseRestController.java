package se.yrgo.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import se.yrgo.data.HouseRepository;
import se.yrgo.domain.House;

import java.util.List;

@RestController
@RequestMapping("/website/houses")
public class HouseRestController {

    @Autowired
    private HouseRepository data;

    @GetMapping("/json")
    public HouseList allHouses() {
        List<House> all = data.findAll();
        return new HouseList(all);
    }

    @PostMapping("/json")
    public ResponseEntity createANewHouse(@RequestBody House house) {
        data.save(house);
        return new ResponseEntity<House>(house, HttpStatus.CREATED);
    }

    // Used to delete a house example: (curl -X DELETE http://localhost:8080/website/houses/1)
    // This removes the house with id 1
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteHouseById(@PathVariable Long id) {
        if (data.existsById(id)) {
            data.deleteById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
