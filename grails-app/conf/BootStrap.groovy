import pl.helenium.lunchtime.Restaurant

class BootStrap {

    def init = { servletContext ->
        new Restaurant(name: 'Peperone').save(flush: true)
    }

    def destroy = {
    }

}
