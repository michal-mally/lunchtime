import pl.helenium.lunchtime.Restaurant
import pl.helenium.lunchtime.Role
import pl.helenium.lunchtime.User
import pl.helenium.lunchtime.UserRole

class BootStrap {

    def init = { servletContext ->
        new Restaurant(name: 'Peperone').save(flush: true)

        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        ['ludr', 'makz', 'semi', 'mima', 'sapo', 'dacr', 'anbo', 'pamj', 'pima', 'marz'].each {
            def regularUser = new User(username: it, enabled: true, password: it)
            regularUser.save(flush: true)
            UserRole.create regularUser, userRole, true
        }

//        def adminUser = new User(username: 'admin', enabled: true, password: 'pass')
//        adminUser.save(flush: true)
//        UserRole.create adminUser, adminRole, true
    }

    def destroy = {
    }

}
