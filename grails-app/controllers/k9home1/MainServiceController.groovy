package k9home1

class MainServiceController {

    def index() {}

    def viewMainServices(){
        def v = MainService.findAll()
        render(view: "mainServicesView", model: [r:v])
    }

    def addMainServices(){
        render(view: "mainServicesAdd")
    }

    def saveService() {
        def title = params.title
        def sub_title = params.sub_title

        MainService ms = new MainService()
        ms.title = title
        ms.sub_title = sub_title

        ms.save()
        redirect(action: "viewMainServices")
    }

    def edit(){
        def id = params.id
        def edit = MainService.findById(id)

        render(view: "mainServicesEdit", model: [e: edit])
    }

    def update() {
        def id = params.id
        def ms = MainService.findById(id)

        ms.title = params.title
        ms.sub_title = params.sub_title

        ms.save()
        redirect(action: "viewMainServices")
    }

    def delete(){
        def id = params.id
        def d = MainService.get(id)
        d.delete()
        redirect(action: "viewMainServices")
    }
}
