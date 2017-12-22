package k9home1

class TrainingController {

    def index() {
        def v = Training.findAll()
        render(view: "training" , model: [r: v])
    }

    def viewTrainingDash(){

        def v = Training.findAll()
        render(view: "trainingDash", model: [r: v])
    }

    def addTraining(){
        render(view: "trainingAdd")
    }

    def ckEditorData(){

        def val = params.cv.encodeAsHTML()

        println("controller data"+ val)

    }

    def saveTraining() {

        def title = params.title
        def short_detail = params.short_detail
        def full_detail = params.full_detail

        Training t = new Training()
        t.title = title
        t.short_detail = short_detail
        t.full_detail = full_detail

        t.save()
        redirect(action: "viewTrainingDash")
    }

    def edit(){
        def id = params.id
        def edit = Training.findById(id)

        render(view: "trainingEdit", model: [e: edit,ids:id])
    }

    def update() {
        def id = params.id
        def t = Training.findById(id)

        t.title = params.title
        t.short_detail = params.short_detail
        t.full_detail = params.full_detail

        t.save()
        redirect(action: "viewTrainingDash")
    }

    def delete(){
        def id = params.id
        def d = Training.get(id)
        d.delete()
        redirect(action: "viewTrainingDash")
    }
}
