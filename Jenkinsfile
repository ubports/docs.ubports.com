pipeline {
    agent {
        docker {
            image "python:3.12"
            args '-u root:root'  // Run as root to allow package installation
        }
    }
    options {
        buildDiscarder(logRotator(daysToKeepStr: '120'))
    }
    environment {
        HOME = "${env.WORKSPACE}"
    }
    stages {
        stage("Install dependencies") {
            steps {
                sh 'python --version'
                sh 'pip --version'
                // TODO: the `--quiet` is to workaround some Docker/Jenkins bugs/misconfigurations, this should be removed at some point
                sh 'pip install --quiet --no-cache-dir --user --upgrade -r requirements.txt'
            }
        }
        stage("Setup Mermaid") {
            steps {
                script {
                    try {
                        def setup = load 'Jenkinsfile.setup-mermaid'
                        setup.call()
                    } catch (Exception e) {
                        echo "Setup Mermaid failed with error: ${e.getMessage()}"
                        throw e
                    }
                }
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
                sh '''
                    # Add workspace to safe.directory
                    git config --global --add safe.directory "${WORKSPACE}"
                    
                    # Original command
                    git show-ref --verify --quiet master || git branch master `git show-ref -s origin/master`
                '''
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