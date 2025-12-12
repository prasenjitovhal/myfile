provider "aws" {
  region = "ap-south-1"
}

# IAM User create
resource "aws_iam_user" "demo_user" {
  name = "demo-user"
}

# IAM User Login Profile (Console Password)
resource "aws_iam_user_login_profile" "console_password" {
  user                    = aws_iam_user.demo_user.name
  password_length         = 12
  password_reset_required = false
}

# IAM Policy attach (optional: full access)
