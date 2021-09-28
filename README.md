> **Thanks for using Jaya world modules**

> **Example to create new inline policies**

module "jayaworld-iam-policies" {

  source  = "JayavardhanTummidi/jayaworld-iam-policies/aws"

  # insert the required variables here

  policy_name = "hello-jaya-world"

  iam_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Action = [

          "ec2:Describe*",

        ]

        Effect   = "Allow"

        Resource = "*"

      },

    ]

  })
  
  # OR 

  iam_policy = file("./policy.json")
  
  # OR

  <<EOT


{
   
   
    "Version": "2012-10-17",
    

    "Statement": [

        {

            "Effect": "Allow",

            "Action": [

                "iam:GenerateCredentialReport",

                "iam:GenerateServiceLastAccessedDetails",

            ],

            "Resource": "*"
        }
    ]
}

EOT

  
 # Example to created AWS managed policies and attach it to the users, groups and roles

 is_aws_policy_required = "true"

 policy_name = "hello-jaya-world"

 aws_policy_arn = "arn:aws:iam::800153021777:policy/hello-jaya-world"

 apply_to_users = ["jayaworld", "jaya-be-happy"]

 apply_to_groups = ["group-1", "group-2"]

 apply_to_roles = ["role-1", "role-2"]

 
}