package k9home1

class UserController {

    def index() {
        redirect(action: "login")
    }

    def login() {
        render(view: "login")
    }

    def registerView() {
        render(view: "register")
    }

    def save() {
        def fname = params.fname
        def lname = params.lname
        def email = params.email
        def password = params.password
        def confirm_pass = params.confirm_pass
        def role = params.role

        User user = new User()
        user.fname = fname
        user.lname = lname
        user.email = email
        user.password = password
        user.confirm_pass = confirm_pass
        user.role = role

        user.save()
        redirect(action: "login")
    }

    def dashboard() {
        def user = User.findAllByEmailAndPassword(params.email, params.password)
        def c = Contact.findAll()

        if (user) {
            session["user"] = user
            flash.message = "Login Success"
            render(view: "dashboard", model: [r: c])
        } else {

            flash.message = "Login Credential is invalid"
//            redirect(action: "login")
            render(view: "login")
        }
    }

    def dash() {
        def c = Contact.findAll()
        def user = session.user
        render(view: "dashboard", model: [r: c,u:user])
    }


    def tables() {
        render(view: "tables")
    }

    def delete() {
        def id = params.id
        def contact = Contact.get(id)
        contact.delete()
        redirect(action: "dash")
    }

    def logout() {
        session.invalidate()
        redirect(action: login())
    }
}
