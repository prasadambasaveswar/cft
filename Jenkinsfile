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
		ls -lrth
		else
		echo "this is not $env environment"
		pwd
		fi
		'''
			}
		}
		stage('deploy') {
		steps {
		sh '''
		sh -x /mnt/xyz.sh
		'''
	}
	}
	}
}
