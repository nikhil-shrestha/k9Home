package k9home1

class SliderController {

    def index() {
    }

    def viewSlider() {

        def v = Slider.findAll("from Slider as s order by s.id desc")
        render(view: "viewSlider", model: [r: v])
    }

    def addSlider() {
        render(view: "addSlider")
    }

    def saveSlider() {
        def img_title = params.img_title
        def img_description = params.img_description

        Slider s = new Slider()
        s.img_title = img_title
        s.img_description = img_description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            s.filename = file.originalFilename
            s.fullPath = grailsApplication.config.uploadFolder + s.filename
            file.transferTo(new File(s.fullPath))
            s.save()
        }
        redirect(action: "viewSlider")
    }

    def edit() {
        def id = params.id
        def edit = Slider.findById(id)

        render(view: "editSlider", model: [e: edit])
    }

    def update() {
        def id = params.id
        def s = Slider.findById(id)
        s.img_title = params.img_title
        s.img_description = params.img_description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            s.filename = file.originalFilename
            s.fullPath = grailsApplication.config.uploadFolder + s.filename
            file.transferTo(new File(s.fullPath))
            s.save()
        }
        redirect(action: "viewSlider")
    }

    def delete() {
        def id = params.id
        def d = Slider.get(id)
        d.delete()
        redirect(action: "viewSlider")
    }
}
