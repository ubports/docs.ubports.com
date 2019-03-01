def install_dependencies = {
    sh 'pip install --no-cache-dir --upgrade -r requirements.txt'
}
def build_docs = {
    sh 'sphinx-build -Wab html . _build/html/'
}
def link_index = {
    sh 'echo "<!DOCTYPE HTML><html lang="en-US"><head>\
        <meta charset=\"UTF-8\"><meta http-equiv=\"refresh\" content=\"0; url=index.html\">\
        <script type=\"text/javascript\">window.location.href = \"index.html\"</script>\
        <title>Page Redirection</title></head>\
    <body>Redirecting to <a href='index.html'>index.html</a>.</body></html>" > _build/html/..index.html'
}
def clean_up = {
    sh 'git clean -fdx'
}
pipeline {
    agent none
    stages {
        stage("build"){
            agent {
                docker {
                    image "python:3.7"
                    args '--user 0:0'
                }
            }
            steps {
                script {install_dependencies()}
                script {build_docs()}
		script {link_index()}
                archiveArtifacts artifacts: '_build/html/', onlyIfSuccessful: true
                script {clean_up()}
            }
        }
    }
}
