aws cloudformation update-stack --stack-name cfn-reskill-sandbox-stack `
    --template-body file://../templates/template.yaml `
    --parameters ParameterKey=EC2InstanceType,ParameterValue=t2.micro `
                ParameterKey=EC2ImageId,ParameterValue=ami-05d72852800cbf29e `
                ParameterKey=VPCCidrBlock,ParameterValue=10.0.0.0/16 `
                ParameterKey=PublicSubnet1CidrBlock,ParameterValue=10.0.3.0/24 `
                ParameterKey=PublicSubnet2CidrBlock,ParameterValue=10.0.4.0/24 `
                ParameterKey=PrivateSubnet1CidrBlock,ParameterValue=10.0.1.0/24 `
                ParameterKey=PrivateSubnet2CidrBlock,ParameterValue=10.0.2.0/24 `
                ParameterKey=Subnet1AZ,ParameterValue=us-east-2a `
                ParameterKey=Subnet2AZ,ParameterValue=us-east-2b `
                ParameterKey=Env,ParameterValue=Sandbox `
                --tags Key=Env,Value=Sandbox