> **Thanks for using Jaya world modules**

> **Example to create new inline policies and AWS managed policies**

module "jayaworld-iam-groups" {

  source  = "JayavardhanTummidi/jayaworld-iam-groups/aws"

  version = "0.3.0"
  # insert the required variables here

  group_name = "jaya-world"

  group_policy_name = "jw-world-policy"

  group_policy = jsonencode({

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

  group_policy = file("./policy.json")
  
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
  # AWS managed policies ARN

  group_policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"

}