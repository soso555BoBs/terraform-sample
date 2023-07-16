resource "aws_iam_policy" "deploy" {
    name = "deploy"
    path = "/"
    description = "This policy is for deploy user"
    policy = file("aws_iam_policies/deploy_policy.json")
}

resource "aws_iam_policy" "sample_ecs_instance_policy" {
    name = "sample_ecs_instance_policy"
    path = "/"
    description = "This policy is for ecs instance policy"
    policy = file("aws_iam_policies/ecs_instance_policy.json")
}