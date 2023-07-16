resource "aws_iam_policy" "deploy" {
    name = "deploy"
    path = "/"
    description = "This policy is for deploy user"
    policy = file("aws_iam_policies/deploy_policy.json")
}