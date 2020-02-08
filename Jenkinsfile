def install_dependencies = {
    sh 'pip install --no-cache-dir --user --upgrade -r requirements.txt'
}
def build_docs = {
    sh 'python3 -m sphinx -Wab html . _build/html/'
}
def link_index = {
    sh 'cp redir.html _build/html/..index.html'
}
pipeline {
    agent none
    stages {
        stage("build"){
            agent {
                docker {
                    image "python:3.7"
                }
            }
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    script {install_dependencies()}
                    script {build_docs()}
                    script {link_index()}
                    archiveArtifacts artifacts: '_build/html/', onlyIfSuccessful: true
                }
            }
            post {
                cleanup {
                    cleanWs()
                }
            }
        }
    }
}
