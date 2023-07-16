resource "aws_iam_role_policy_attachment" "ecs_instance_role_attachment" {
    role = aws_iam_role.sample_ecs_instance_role.name
    policy_arn = aws_iam_policy.sample_ecs_instance_policy.arn
}