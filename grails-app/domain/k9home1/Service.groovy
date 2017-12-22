package k9home1

class Service {

    String title
    String short_detail
    String full_detail
    String filename
    String fullPath

    static constraints = {
        filename(blank:false, nullable:false)
        fullPath(blank:false, nullable:false)
    }
}
