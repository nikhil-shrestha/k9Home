package k9home1

class Contact {

    String name
    String email
    long phone
    String message

    static constraints = {
        name(blank: false)
        email(blank: false)
        phone(blank: false)
        message(blank: false)
    }
}
