#  # Resource: aws_iam_role
#  # https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/iam_role
#  # Resource: aws_iam_role_policy_attachment
#  # https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/iam_role_policy_attachment

#  resource "aws_iam_role" "test_role" {
#      # The Name Of The Role (REQUIRED)
#    name = "test_role"

#  # Policy - (REQUIRED) Policy document as a JSON formatted string.
#    # Terraform's "jsonencode" function converts a
#    # Terraform expression result to valid JSON syntax.

#    # Assume_Role_Policy - (REQUIRED) Policy that grants an entity permission to assume the role.
#    # Used To Access AWS Resource That You Might Not Normally Have Access To.
#    # The Role That Amazon EC2 Will Use To Create AWS Resources
#    assume_role_policy = jsonencode({
#      Version = "2012-10-17"
#      Statement = [
#        {
#          Action = "sts:AssumeRole"
#          Effect = "Allow"
#          Sid    = ""
#          Principal = {
#            Service = "ec2.amazonaws.com"
#          }
#        },
#      ]
#    })

#    tags = {
#      tag-key = "tag-value"
#    }
#  }

#  # role (Required) - The name of the IAM role to which the policy should be applied
#  # policy_arn (Required) - The ARN of the policy you want to apply

#  # https://github.com/hashicorp/terraform-provider-aws/blob/main/website/docs/r/iam_role_policy_attachment.markdown

#  resource "aws_iam_role_policy_attachment" "amazon_ecs_cluster_policy" {
#    role       = aws_iam_role.ecs_cluster.name
#    policy_arn = aws_iam_policy.policy.arn
#  }





