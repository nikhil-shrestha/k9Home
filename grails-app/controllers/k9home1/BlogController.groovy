package k9home1

class BlogController {

    def index() {
        def v = Blog.findAll()
        render(view: "blog", model: [r: v])
    }

    def viewBlogDash() {
        def v = Blog.findAll("from Blog as b order by b.id desc")
        render(view: "blogDash", model: [r: v])

    }

    def addBlog() {
        render(view: "blogAdd")
    }

    def ckEditorData() {
        def val = params.cv.encodeAsHTML()

        println("controller data" + val)
    }

    def saveBlog() {
        def title = params.title
        def less_description = params.less_description
        def description = params.description

        Blog b = new Blog()
        b.title = title
        b.less_description = less_description
        b.description = description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            b.filename = file.originalFilename
            b.fullPath = grailsApplication.config.uploadFolder + b.filename
            file.transferTo(new File(b.fullPath))
            b.save()
        }
        redirect(action: "viewBlogDash")
    }

    def editBlog() {
        def id = params.id
        def edit = Blog.findById(id)

        render(view: "blogEdit", model: [e: edit])
    }

    def update() {
        def id = params.id
        def blog = Blog.findById(id)
        blog.title = params.title
        blog.less_description = params.less_description
        blog.description = params.description

        def file = request.getFile('file')
        if (file.empty) {
            flash.message = "File cannot be empty"
        } else {
            blog.filename = file.originalFilename
            blog.fullPath = grailsApplication.config.uploadFolder + blog.filename
            file.transferTo(new File(blog.fullPath))
            blog.save()
        }
        redirect(action: "viewBlogDash")
    }


    def delete() {
        def id = params.id
        def blog = Blog.get(id)
        blog.delete()
        redirect(action: "viewBlogDash")
    }

    def postPreview() {
        def id = params.id
        def blog = Blog.findById(id)
        render(view: "blogPreview", model: [r: blog])
    }
}
