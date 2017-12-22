package k9home1

class PetsController {

    def index() {
        def v = Pets.findAll()
        render(view: "pets", model: [r: v])
    }

    def viewPetsDash() {

        def v = Pets.findAll()
        render(view: "petsDash", model: [r: v])

    }

    def addPets() {
        render(view: "petsAdd")
    }

    def ckEditorData() {

        def val = params.cv.encodeAsHTML()

        println("controller data" + val)

    }

    def savePets() {

        def pet_name = params.pet_name
        def details = params.details

        Pets p = new Pets()
        p.pet_name = pet_name
        p.details = details

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            p.filename = file.originalFilename
            p.fullPath = grailsApplication.config.uploadFolder + p.filename
            file.transferTo(new File(p.fullPath))
            p.save()
        }
        redirect(action: "viewPetsDash")
    }

    def editPets() {
        def id = params.id
        def edit = Pets.findById(id)

        render(view: "petsEdit", model: [e: edit])
    }

    def update() {
        def id = params.id
        def p = Pets.findById(id)

        p.pet_name = params.pet_name
        p.details = params.details

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            p.filename = file.originalFilename
            p.fullPath = grailsApplication.config.uploadFolder + p.filename
            file.transferTo(new File(p.fullPath))
            p.save()
        }
        redirect(action: "viewPetsDash")
    }

    def delete() {
        def id = params.id
        def d = Pets.get(id)
        d.delete()
        redirect(action: "viewPetsDash")
    }

}
