package k9home1

class StaffController {

    def index() {
    }

    def viewStaffs(){

        def v = Staff.findAll()
        render(view: "staffView", model: [r:v])
    }

    def addStaffs(){
        render(view: "staffAdd")
    }

    def saveStaffs() {
        def name = params.name
        def title = params.title

        Staff s = new Staff()
        s.title = title
        s.name = name

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            s.filename = file.originalFilename
            s.fullPath = grailsApplication.config.uploadFolder + s.filename
            file.transferTo(new File(s.fullPath))
            s.save()
        }
        redirect(action: "viewStaffs")
    }

    def edit(){
        def id = params.id
        def edit = Staff.findById(id)

        render(view: "staffEdit", model: [e: edit])
    }

    def update() {
        def id = params.id
        def s = Staff.findById(id)
        s.name = params.name
        s.title = params.title

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            s.filename = file.originalFilename
            s.fullPath = grailsApplication.config.uploadFolder + s.filename
            file.transferTo(new File(s.fullPath))
            s.save()
        }
        redirect(action: "viewStaffs")
    }

    def delete() {
        def id = params.id
        def a = Staff.get(id)
        a.delete()
        redirect(action: "viewStaffs")
    }
}
