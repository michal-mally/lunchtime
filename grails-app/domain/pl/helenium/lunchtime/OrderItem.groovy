package pl.helenium.lunchtime

class OrderItem {

    Date submitDate

    String meal

    BigDecimal price

    static belongsTo = [
            order: Order,
            user: User,
            submitter: User
    ]

    static constraints = {
    }

    static mapping = {
        sort 'submitDate'
    }

}
