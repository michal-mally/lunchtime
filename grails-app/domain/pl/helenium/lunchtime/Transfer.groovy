package pl.helenium.lunchtime

class Transfer {

    Date transferDate = new Date()

    String description

    BigDecimal amount

    static belongsTo = [
            from: User,
            to: User
    ]

    static constraints = {
    }

}
