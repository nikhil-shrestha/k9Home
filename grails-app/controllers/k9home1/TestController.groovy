package k9home1

class TestController {
    def testAction() {
        sendMail {
            to "myfriend@gmail.com"
            subject "This is a test mail"
            html g.render(template:'/mail/test', model:[name:'John Doe'])
        }
    }
}
