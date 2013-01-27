package pl.helenium.lunchtime

class OrderItem {

    Date submitDate

    String meal

    BigDecimal price

    static belongsTo = [
            order: Order,
            user: User
    ]

    static constraints = {
    }

    static mapping = {
        sort 'submitDate'
    }

}
