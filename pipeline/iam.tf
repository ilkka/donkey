resource "aws_iam_group" "trainers" {
  name = "trainers"
}

resource "aws_iam_group_policy_attachment" "trainers_s3" {
  group      = "${aws_iam_group.trainers.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user" "markku" {
  name = "markku"
  tags = "${merge(local.common_tags, map())}"
}

resource "aws_iam_access_key" "markku" {
  user = "${aws_iam_user.markku.name}"
}

output "markku_access_key" {
  value = "${aws_iam_access_key.markku.id}"
}

output "markku_secret_key" {
  value = "${aws_iam_access_key.markku.secret}"
}

resource "aws_iam_group_membership" "markku_trainer" {
  name  = "markku_trainer"
  group = "${aws_iam_group.trainers.name}"
  users = ["${aws_iam_user.markku.name}"]
}
