package pl.helenium.lunchtime

import static pl.helenium.lunchtime.OrderState.*

class OrderService {

    def proceed(Order order) {
        switch (order.orderState) {
            case NEW:
                order.orderState = SUBMITTED;
                break;
            case SUBMITTED:
                createTransfers(order)
                order.orderState = CLOSED;
                break;
        }
    }

    def createTransfers(Order order) {
        order.orderItems.findAll(
                { it.user != order.organizer }
        ).each {
            transfer from: order.organizer, to: it.user,         amount: it.price
            transfer from: it.user,         to: order.organizer, amount: -it.price

            new Transfer(from: order.organizer, to: it.user, description: it.meal, amount: it.price).save(flush: true)
        }
    }

    private void transfer(Map params) {
        def recon = Reconciliation.findByUser params.from
        if (!recon) {
            recon = new Reconciliation(user: params.from)
        }

        def entry = recon.entries[params.to.username] ?: 0.00
        entry += params.amount
        recon.entries[params.to.username] = entry
        recon.save(flush: true)
    }
}
