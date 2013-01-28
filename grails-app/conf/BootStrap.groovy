import pl.helenium.lunchtime.Restaurant
import pl.helenium.lunchtime.Role
import pl.helenium.lunchtime.User
import pl.helenium.lunchtime.UserRole

class BootStrap {

    def init = { servletContext ->
        new Restaurant(name: 'Peperone').save(flush: true)

        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)

        def regularUser = new User(username: 'user', enabled: true, password: 'pass')
        regularUser.save(flush: true)
        UserRole.create regularUser, userRole, true

        def adminUser = new User(username: 'admin', enabled: true, password: 'pass')
        adminUser.save(flush: true)
        UserRole.create adminUser, adminRole, true
    }

    def destroy = {
    }

}
