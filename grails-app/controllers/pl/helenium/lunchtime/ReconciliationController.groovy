package pl.helenium.lunchtime

import grails.plugins.springsecurity.Secured

@Secured("ROLE_USER")
class ReconciliationController {

    def springSecurityService

    def index() {
        redirect action: "list"
    }

    def list() {
        def user = springSecurityService.currentUser as User
        [
                reconciliation: Reconciliation.findByUser(user),
                transfers: Transfer.findAllByFromOrTo(user, user, [sort: 'transferDate', order: 'desc', max: 10])
        ]
    }

}
