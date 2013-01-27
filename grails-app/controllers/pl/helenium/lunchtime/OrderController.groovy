package pl.helenium.lunchtime

class OrderController {

    static allowedMethods = [save: "POST"]

    def index() {
        redirect action: "list"
    }

    def list() {
        [orders: Order.list()]
    }

    def create() {
        [order: new Order()]
    }

    def save() {
        def order = new Order(params)
        order.orderDate = new Date()
        if (!order.save(flush: true)) {
            render view: "create", model: [order: order]
            return
        }

        redirect action: "list"
    }

    def show(Long id) {
        def order = Order.get(id)
        if (!order) {
            redirect action: "list"
            return
        }

        [order: order]
    }

}
