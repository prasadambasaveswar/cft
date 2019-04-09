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
			sh 'export PATH=~/.local/bin:$PATH'
			sh 'aws '
			}
		}
	}
}
