pipeline {
  agent any 
	stages {
		stage('checkout') {
			steps {
				checkout scm
			}
}
		stage('upload') {
		steps {
                        withCredentials([
                             string(credentialsId: 'awscredentials', 'aws_access_key_id', variable: 'AWS_ACCESS_KEY_ID'),
                             string(credentialsId: 'awscredentials', 'aws_secret_access_key', variable: 'AWS_SECRET_ACCESS_KEY'),
			])
			
			}
		}
	}
}
