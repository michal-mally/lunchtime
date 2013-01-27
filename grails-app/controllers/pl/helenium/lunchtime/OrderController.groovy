package pl.helenium.lunchtime

class OrderController {

    def index() {
        redirect action: "list"
    }

    def list() {
        [orders: Order.list()]
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
