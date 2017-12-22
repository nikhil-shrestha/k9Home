package k9home1

class Staff {

    String name
    String title
    String filename
    String fullPath

    static constraints = {
        filename(blank:false, nullable:false)
        fullPath(blank:false, nullable:false)
    }
}
