package pl.helenium.lunchtime

class Order {

    Date orderDate

    static hasMany = [orderItems: OrderItem]

    static constraints = {
        orderDate unique: true
    }

    static mapping = {
        table 'order_'
    }

}
