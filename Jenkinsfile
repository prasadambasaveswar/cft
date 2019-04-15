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
        withCredentials([[
            $class: 'AmazonWebServicesCredentialsBinding',
            credentialsId: 'awscredentials',
            accessKeyVariable: 'AWS_ACCESS_KEY_ID',
            secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
        ]]) {
            sh 'AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} AWS_DEFAULT_REGION=us-east-1'
            sh 'sleep 1m' // SOOOO HACKY!!!
            sh 'aws s3 ls'
        }
			
			}
		}
	}
}
