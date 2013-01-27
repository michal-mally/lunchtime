package pl.helenium.lunchtime

class User {

    String name

    static constraints = {
        name unique: true
    }

    static mapping = {
        sort 'name'
    }

}
