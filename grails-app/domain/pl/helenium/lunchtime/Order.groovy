package pl.helenium.lunchtime

class Order {

    Date orderDate

    List<OrderItem> orderItems

    BigDecimal getOrderTotal() {
        orderItems*.price.sum()
    }

    static hasMany = [orderItems: OrderItem]

    static belongsTo = [restaurant: Restaurant]

    static constraints = {
        orderDate unique: true
    }

    static mapping = {
        table 'order_'
    }

}
