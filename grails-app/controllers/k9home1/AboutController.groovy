package k9home1

class AboutController {

    def index() {

        def staff = Staff.findAll()
        def works = Works.findAll("from Works as w order by w.id desc").get(0)
        def about = About.findAll()
        render(view: "about", model: [r:about, w:works, s:staff])
    }

    def viewPage(){
        render(view: "viewPage")
    }

    def addPage(){
        render(view: "addPage")
    }

    def viewAboutDash(){

        def v = About.findAll()
        render(view: "aboutDash", model: [r:v])
    }

    def addAbout(){
        render(view: "aboutAdd")
    }

    def ckEditorData(){

        def val = params.cv.encodeAsHTML()

        println("controller data"+ val)
    }

    def saveOffers() {

        def title = params.title
        def description = params.description

        About h = new About()
        h.title = title
        h.description = description

        h.save()
        redirect(action: "viewAboutDash")
    }

    def editOffers(){
        def id = params.id
        def edit = About.findById(id)

        render(view: "aboutEdit", model: [e: edit])
    }

    def update() {
        def id = params.id
        def about = About.findById(id)

        about.title = params.title
        about.description = params.description

        about.save()
        redirect(action: "viewAboutDash")
    }

    def delete() {
        def id = params.id
        def a = About.get(id)
        a.delete()
        redirect(action: "viewAboutDash")
    }
}
