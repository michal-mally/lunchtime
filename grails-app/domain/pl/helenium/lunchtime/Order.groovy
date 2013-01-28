package pl.helenium.lunchtime

class Order {

    Date orderDate

    OrderState orderState = OrderState.NEW

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
        table '`order`'
    }

}
