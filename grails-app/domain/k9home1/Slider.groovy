package k9home1

class Slider {

    String img_title
    String img_description
    String filename
    String fullPath

    static constraints = {
        filename(blank:false, nullable:false)
        fullPath(blank:false, nullable:false)
    }
}
