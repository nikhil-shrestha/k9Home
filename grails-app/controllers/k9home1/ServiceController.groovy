package k9home1

class ServiceController {

    def index() {
        def tr = Training.findAll()
        def ser = Service.findAll()
        def ms = MainService.findAll()
        render(view: "service", model: [s: ser, m: ms, t: tr])
    }

    def viewServiceDash() {
        def v = Service.findAll()
        render(view: "serviceDash", model: [r: v])
    }

    def addService() {
        render(view: "serviceAdd")
    }

    def dashViewPage() {
        render(view: "dashViewPage")
    }

    def viewAddPage() {
        render(view: "viewAddPage")
    }

    def ckEditorData() {
        def val = params.cv.encodeAsHTML()

        println("controller data" + val)

    }

    def saveService() {
        def title = params.title
        def short_detail = params.short_detail
        def full_detail = params.full_detail

        Service s = new Service()
        s.title = title
        s.short_detail = short_detail
        s.full_detail = full_detail

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            s.filename = file.originalFilename
            s.fullPath = grailsApplication.config.uploadFolder + s.filename
            file.transferTo(new File(s.fullPath))
            s.save()
        }
        redirect(action: "viewServiceDash")
    }

    def edit() {
        def id = params.id
        def edit = Service.findById(id)

        render(view: "serviceEdit", model: [e: edit, ids: id])
    }

    def update() {
        def id = params.id
        def p = Service.findById(id)

        p.title = params.title
        p.short_detail = params.short_detail
        p.full_detail = params.full_detail

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {

            p.filename = file.originalFilename
            p.fullPath = grailsApplication.config.uploadFolder + p.filename
            p.save()
            file.transferTo(new File(p.fullPath))
            p.save()
        }
        redirect(action: "viewServiceDash")
    }

    def delete() {
        def id = params.id
        def d = Service.get(id)
        d.delete()
        redirect(action: "viewServiceDash")
    }
}
