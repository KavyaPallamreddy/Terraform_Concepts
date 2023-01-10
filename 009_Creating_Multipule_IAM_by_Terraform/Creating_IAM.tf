resource "aws_iam_user" "myuser" {
    for_each = toset(["TKavya", "TSumanth", "TBaby1", "TBaby2" ])
    name = each.value
    }