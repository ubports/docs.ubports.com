def install_dependencies = {
    sh 'pip install --no-cache-dir -r requirements.txt'
}
def build_docs = {
    sh 'pipenv run sphinx-build -Wab html . _build/html/'
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
                archiveArtifacts artifacts: 'docs/_build/html/', onlyIfSuccessful: true
                deleteDir()
            }
        }
    }
}
