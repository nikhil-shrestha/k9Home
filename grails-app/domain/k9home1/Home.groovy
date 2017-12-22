package k9home1

class Home {

    String title
    String description
    String filename
    String fullPath

    static constraints = {
        filename(blank:false, nullable:false)
        fullPath(blank:false, nullable:false)
    }
}
