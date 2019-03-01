def install_dependencies = {
    sh 'pip install --no-cache-dir --upgrade -r requirements.txt'
}
def build_docs = {
    sh 'sphinx-build -Wab html . _build/html/'
}
def link_index = {
    sh 'pwd'
    sh 'ls'
    sh 'ls _build/html/'
    sh 'ls _build/html/index.html'
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
