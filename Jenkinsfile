def install_dependencies = {
    sh 'pip install --no-cache-dir --user --upgrade -r requirements.txt'
}
def build_docs = {
    sh 'python3 -m sphinx -Wab html . _build/html/'
}
def check_redirects = {
    sh 'python3 -m sphinx -Wab rediraffecheckdiff . _build/html'
}
def link_index = {
    sh 'cp redir.html _build/html/..index.html'
}
pipeline {
    agent none
    options {
        buildDiscarder(logRotator(artifactDaysToKeepStr: '180'))
    }
    stages {
        stage("Build docs"){
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
        }
        stage('Fix git ref for non-master builds') {
            when { not { branch 'master' }  }
            steps {
                // Workaround to create the master branch since Jenkins
                // refuses to do it on PR builds
                sh 'git show-ref --verify --quiet master || git branch master `git show-ref -s origin/master`'
            }
        }
        stage('Check redirects') {
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    script {check_redirects()}
                }
            }
        }
    }
    post {
        cleanup {
            cleanWs()
        }
    }
}
