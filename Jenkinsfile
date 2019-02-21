def do_it = {
    sh 'id' > out.txt
    sh 'date' >> out.txt
}
pipeline {
    agent none
    stages {
        stage("build"){
            agent {
                docker "python:3.7"
            }
            steps {
                script {do_it()}
            }
        }
    }
}
