pipeline{
    agent{
        label "master"
    }
    environment {
        registry = "qader/anagram"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    stages{
        stage("Git Checkout"){
            steps{
                echo "Cloning Git Repository"
                git 'https://github.com/qader1987/anagram_test.git'
            }
        }
        stage("Build Image"){
            steps{
                echo "Building Docker Image"
                script {
                    dockerImage = docker.build registry + ":1.0"
                }
            }
        }
        stage("Pushing Inage"){
            steps{
                echo "Pushing Image To Registery"
                script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                }
            }
          }
        }
        stage("Deploy Application"){
            steps{
                echo "Deploy Application"
                sh '''
                    cd deploy
                    ansible-playbook -i inventory -e ansible_user=jenkins deploy-anagram.yml
                '''
            }
        }
        stage("Cleaning up"){
            steps{
                echo "Cleaning Up Image"
                sh "docker rmi $registry:1.0"
            }
        }
    }
    post{
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}