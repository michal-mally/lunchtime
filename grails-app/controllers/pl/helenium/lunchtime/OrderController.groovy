package pl.helenium.lunchtime

import static pl.helenium.lunchtime.OrderState.CLOSED
import static pl.helenium.lunchtime.OrderState.NEW
import static pl.helenium.lunchtime.OrderState.SUBMITTED

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

    def proceed(Long id) {
        def order = Order.get(id)
        if (!order) {
            redirect action: "list"
            return
        }

        switch (order.orderState) {
            case NEW: order.orderState = SUBMITTED; break;
            case SUBMITTED: order.orderState = CLOSED; break;
        }
        redirect action: 'show', id: id
    }

}
