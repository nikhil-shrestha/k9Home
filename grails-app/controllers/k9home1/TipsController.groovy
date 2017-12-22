package k9home1

class TipsController {

    def index() { }

    def addTips(){
        render(view: "addTips")
    }

    def viewTips(){

        def tps = Tips.findAll()
        render(view: "viewTips", model: [t:tps])
    }

    def editTips(){
        render(view: "editTips")
    }

    def save(){
        def tips = params.tips

        Tips tps = new Tips()
        tps.tips = tips

        tps.save()
        redirect(action: "viewTips")
    }

    def edit(){
        def id = params.id
        def edit = Tips.findById(id)

        render(view: "editTips", model: [e: edit])
    }

    def update() {
        def id = params.id
        def ms = Tips.findById(id)

        ms.tips = params.tips

        ms.save()
        redirect(action: "viewTips")
    }

    def delete(){
        def id = params.id
        def d = Tips.get(id)
        d.delete()
        redirect(action: "viewTips")
    }
}
