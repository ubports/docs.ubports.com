def install_dependencies = {
    sh 'pip install -r requirements.txt'
}
def build_docs = {
    sh 'pipenv run sphinx-build -Wab html . _build/html/'
}
pipeline {
    agent none
    stages {
        stage("build"){
            agent {
                docker "python:3.7"
            }
            steps {
                script {install_dependencies()}
                script {build_docs()}
                archiveArtifacts artifacts: 'docs/_build/html/', onlyIfSuccessful: true
                deleteDir()
            }
        }
    }
}
