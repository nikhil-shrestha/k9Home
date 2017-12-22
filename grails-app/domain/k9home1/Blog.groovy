package k9home1

class Blog {

    String title
    String less_description
    String description
    String filename
    String fullPath

    static constraints = {
        filename(blank:false, nullable:false)
        fullPath(blank:false, nullable:false)
    }
}
