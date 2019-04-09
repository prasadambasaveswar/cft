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
			sh 'export PATH=/root/.local/bin:$PATH'
			sh 'aws '
			}
		}
	}
}
