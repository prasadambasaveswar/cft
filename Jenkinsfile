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
		load "${WORKSPACE}/parameters.groovy"
        withCredentials([[
            $class: 'AmazonWebServicesCredentialsBinding',
            credentialsId: 'awscredentials',
            accessKeyVariable: 'AWS_ACCESS_KEY_ID',
            secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
        ]]) {
	    sh 'AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}'
		sh 'export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}'
            sh 'aws cloudformation create-stack --stack-name ${StackName} --template-body file://ml-security3.template \
		--parameters ParameterKey=KeyName,ParameterValue=${KeyName} ParameterKey=AZ,ParameterValue=${AZ} \
		ParameterKey=IAMRole,ParameterValue=${IAMRole} ParameterKey=VolumeSize,ParameterValue=${VolumeSize} \
		ParameterKey=VolumeType,ParameterValue=${VolumeType} ParameterKey=VolumeEncryption,ParameterValue=${VolumeEncryption} \
		ParameterKey=VolumeEncryptionKey,ParameterValue=${VolumeEncryptionKey} ParameterKey=InstanceType,ParameterValue=${InstanceType} \
		ParameterKey=SpotPrice,ParameterValue=${SpotPrice} ParameterKey=NumberOfZones,ParameterValue=${NumberOfZones} \
		ParameterKey=NodesPerZone,ParameterValue=${NodesPerZone} ParameterKey=VPC,ParameterValue=${VPC} \
		ParameterKey=LogSNS,ParameterValue=${LogSNS} ParameterKey=PrivateSubnets,ParameterValue=${PrivateSubnets} \
		ParameterKey=SecurityGroup,ParameterValue=${SecurityGroup} ParameterKey=AdminUser,ParameterValue=${AdminUser} \
		ParameterKey=AdminPass,ParameterValue=${AdminPass} ParameterKey=Licensee,ParameterValue=${Licensee} \
		ParameterKey=LicenseKey,ParameterValue=${LicenseKey}'
        }
			}
		}
	}
}
