package pl.helenium.lunchtime

import grails.plugins.springsecurity.Secured

@Secured("ROLE_USER")
class ReconciliationController {

    def springSecurityService

    def index() {
        redirect action: "list"
    }

    def list() {
        [reconciliation: Reconciliation.findByUser(springSecurityService.currentUser as User)]
    }

}
