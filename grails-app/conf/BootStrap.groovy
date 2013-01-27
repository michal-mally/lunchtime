import pl.helenium.lunchtime.Restaurant
import pl.helenium.lunchtime.User

class BootStrap {

    def init = { servletContext ->
        new Restaurant(name: 'Peperone').save(flush: true)
        new User(name: 'mima').save(flush: true)
    }

    def destroy = {
    }

}
