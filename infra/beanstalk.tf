resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = var.name
  description = var.description
}

resource "aws_elastic_beanstalk_environment" "beanstalk_environment" {
  name                = var.environment
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = "64bit Amazon Linux 2 v4.0.3 running Docker"
  
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "InstanceType"
    value = var.machine
  }
  
  setting {
    namespace = "aws:autoscaling:asg"
    name = "MaxSize"
    value = var.MaxSize
  }
  
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }
}