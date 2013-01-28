package pl.helenium.lunchtime

import grails.plugins.springsecurity.Secured

@Secured("ROLE_ADMIN")
class RestaurantController {

    static scaffold = true

}
