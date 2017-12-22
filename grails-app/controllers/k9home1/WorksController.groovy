package k9home1

class WorksController {

    def index() {
    }

    def viewWorks(){

        def v = Works.findAll()
        render(view: "viewWorks", model: [r:v])
    }

    def addWorks(){
        render(view: "addWorks")
    }

    def saveWorks() {

        def description = params.description

        Works w = new Works()
        w.description = description

        w.save()
        redirect(action: "viewWorks")
    }

    def edit(){
        def id = params.id
        def edit = Works.findById(id)

        render(view: "editWorks", model: [e: edit])
    }

    def update() {
        def id = params.id
        def works = Works.findById(id)

        works.description = params.description

        works.save()
        redirect(action: "viewWorks")
    }

    def delete(){
        def id = params.id
        def d = Works.get(id)
        d.delete()
        redirect(action: "viewWorks")
    }
}
