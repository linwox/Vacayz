package se.yrgo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import se.yrgo.data.HouseRepository;
import se.yrgo.domain.House;

import java.util.List;

@Controller
@RequestMapping("/website/houses")
public class HouseController {
    @Autowired
    private HouseRepository data;

    //This method will save the house into the database
    @RequestMapping(value = "/newHouse.html", method = RequestMethod.POST)
    public String newHouse(House house) {
        data.save(house);
        return "redirect:/website/houses/list.html";
    }

    //Presenting the initial newHouse form to the user
    @RequestMapping(value = "/newHouse.html", method = RequestMethod.GET)
    public ModelAndView newHouseForm() {
        House newHouse = new House();
        return new ModelAndView("newHouse", "form", newHouse);
    }

    // Sends you to the deleteHouse page
    @RequestMapping(value = "/deleteHouse", method = RequestMethod.GET)
    public String deleteHousePage() {
        return "deleteHouse";
    }

    //Responsible for listing all the houses
    @RequestMapping(value = "/list.html", method = RequestMethod.GET)
    public ModelAndView houses() {
        List<House> allHouses = data.findAll();
        return new ModelAndView("allHouses", "houses", allHouses);
    }

    //Search for a house by its objectId
    @RequestMapping(value = "/house/{objectId}")
    public ModelAndView showHouseByObjectId(@PathVariable("objectId") String objectId) {
        House house = data.findByObjectId(objectId);
        return new ModelAndView("houseInfo", "house", house);
    }

}
