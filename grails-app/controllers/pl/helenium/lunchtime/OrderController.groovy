package pl.helenium.lunchtime
import grails.plugins.springsecurity.Secured

@Secured("ROLE_USER")
class OrderController {

    def springSecurityService

    static allowedMethods = [save: "POST"]

    def orderService

    def index() {
        redirect action: "list"
    }

    def list() {
        [orders: Order.list(sort: 'orderDate', order: 'desc')]
    }

    def create() {
        [order: new Order()]
    }

    def save() {
        def order = new Order(params)
        order.organizer = springSecurityService.currentUser as User
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

        orderService.proceed(order)
        redirect action: 'show', id: id
    }

}
