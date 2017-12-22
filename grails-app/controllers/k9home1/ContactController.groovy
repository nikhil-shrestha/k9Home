package k9home1

class ContactController {

    def index() {
        render(view: "contact")
    }

    def addContact(){
        def name = params.name
        def email = params.email
        def phone = Long.parseLong(params.phone)
        def message = params.message

        Contact c = new Contact()
        c.name = name
        c.email = email
        c.phone = phone
        c.message = message

        c.save()
        redirect(action: "index")
    }
}
