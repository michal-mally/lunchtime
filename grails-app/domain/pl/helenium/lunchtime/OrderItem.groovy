package pl.helenium.lunchtime

class OrderItem {

    Date submitDate

    String user

    String meal

    BigDecimal price

    static belongsTo = [order: Order]

    static constraints = {
    }

    static mapping = {
        sort 'submitDate'
    }

}
