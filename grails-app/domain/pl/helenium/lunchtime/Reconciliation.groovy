package pl.helenium.lunchtime

class Reconciliation {

    Map<String, BigDecimal> entries = [:]

    static belongsTo = [user: User]

    static hasMany = [entries: BigDecimal]

    static constraints = {
        user unique: true
    }

}
