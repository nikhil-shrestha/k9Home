package k9home1

class HomeController {

    def index() {
        def home = Home.findAll("from Home as h order by h.id desc").get(0)
        def blog = Blog.findAll("from Blog as b order by b.id desc",[max:5])
        def pet = Pets.findAll()
        def slider = Slider.findAll()
        def tips = Tips.findAll("from Tips as t order by t.id desc").get(0)
        render(view: "home", model: [h:home, b:blog, p:pet, s:slider, t:tips])
    }

    def viewHomeDash(){

        def v = Home.findAll("from Home as h order by h.id desc")
        render(view: "homeDash", model: [r: v])

    }

    def addPage(){
        render(view: "addPage")
    }

    def viewPage(){
        render(view: "viewPage")
    }

    def addHome(){
        render(view: "homeAdd")
    }

    def ckEditorData(){
        def val = params.cv.encodeAsHTML()

        println("controller data"+ val)
    }

    def saveHome() {
        def title = params.title
        def description = params.description

        Home h = new Home()
        h.title = title
        h.description = description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {

            h.filename = file.originalFilename
            h.fullPath = grailsApplication.config.uploadFolder + h.filename
            file.transferTo(new File(h.fullPath))
            h.save()
        }
        redirect(action: "viewHomeDash")
    }

    def edit(){
        def id = params.id
        def edit = Home.findById(id)

        render(view: "homeEdit", model: [e: edit,ids:id])
    }

    def update() {
        def id = params.id
        def h = Home.findById(id)

        h.title = params.title
        h.description = params.description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            h.filename = file.originalFilename
            h.fullPath = grailsApplication.config.uploadFolder + h.filename
            file.transferTo(new File(h.fullPath))
            h.save()
        }
        redirect(action: "viewHomeDash")
    }

    def delete(){
        def id = params.id
        def ques = Home.get(id)
        ques.delete()
        redirect(action: "viewHomeDash")
    }
}
