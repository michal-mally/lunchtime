package pl.helenium.lunchtime

class OrderItem {

    String user

    String meal

    BigDecimal price

    static belongsTo = [order: Order]

    static constraints = {
    }

}
