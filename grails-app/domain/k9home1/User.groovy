package k9home1

class User {

    String fname
    String lname
    String email
    String password
    String confirm_pass
    String role

    static searchable = true

    static constraints = {
        fname(blank: true)
        lname(blank: true)
        email(blank: true)
        password(blank: true)
        confirm_pass(blank: true)
    }

}
