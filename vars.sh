#!/bin/bash

export StackName="${params.StackName}"
export KeyName="${params.KeyName}"
export IAMRole="marklogic"
export VolumeSize=10
export VolumeType="gp2"
export VolumeEncryption="enable"
export VolumeEncryptionKey=""
export InstanceType="t3.small"
export SpotPrice=0
export NumberOfZones=1
export NodesPerZone=1
export AZ="us-east-2a"
export LogSNS="none"
export VPC="vpc-04605c571539c8c48"
export PrivateSubnets="subnet-0d6772cce291227ac"
export SecurityGroup="sg-01db71343f24ed71e"
export AdminUser="admin"
export AdminPass="admin123"
export Licensee="none"
export LicenseKey="none"
