pipeline {
  agent any 
	stages {
		stage('checkout') {
			steps {
				checkout scm
			}
}
		stage('env') {
		steps {
		sh '''
		if [ $env == dev ]; then
		echo "this is $env environment"
		else
		echo "this is not $env environment"
		fi
		'''
			}
		}
	}
}
