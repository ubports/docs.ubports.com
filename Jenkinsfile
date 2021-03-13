pipeline {
    agent {
        docker {
            image "python:3.7"
        }
    }
    options {
        buildDiscarder(logRotator(artifactDaysToKeepStr: '180'))
    }
    environment {
        HOME = "${env.WORKSPACE}"
    }
    stages {
        stage("Install dependencies") {
            steps {
                sh 'pip install --no-cache-dir --user --upgrade -r requirements.txt'
            }
        }
        stage("Build docs"){
            steps {
                sh 'python3 -m sphinx -Wab html . _build/html/'
                sh 'cp redir.html _build/html/..index.html'
                archiveArtifacts artifacts: '_build/html/', onlyIfSuccessful: true
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
                sh 'python3 -m sphinx -Wab rediraffecheckdiff . _build/html'
            }
        }
    }
    post {
        cleanup {
            cleanWs()
        }
    }
}
