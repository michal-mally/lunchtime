package pl.helenium.lunchtime

class Restaurant {

    String name

    static constraints = {
        name unique: true
    }

}
