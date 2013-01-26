package pl.helenium.lunchtime

class Order {

    Date orderDate

    static constraints = {
        orderDate unique: true
    }

    static mapping = {
        table 'order_'
    }

}
