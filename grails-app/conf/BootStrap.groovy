import pl.helenium.lunchtime.Order

class BootStrap {

    def init = { servletContext ->
        if (!Order.count()) {
            new Order(orderDate: new Date()).save(flush: true)
        }
    }
    def destroy = {
    }
}
