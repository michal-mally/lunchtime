package pl.helenium.lunchtime

import grails.plugins.springsecurity.Secured

@Secured("ROLE_USER")
class RestaurantController {

    static scaffold = true

}
