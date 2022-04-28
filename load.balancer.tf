
resource "aws_lb" "project03_lb" {
  name               = "Assignment03-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Project03.id]
  subnets            = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]

  enable_deletion_protection = false

  # access_logs {
  #   bucket  = aws_s3_bucket.project03.bucket
  #   prefix  = "test-lb"
  #   enabled = true
  # }

  tags = {
    Environment = "wip"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.project03_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.project03.arn
  }
}

resource "aws_lb_target_group" "project03" {
  name     = "Assignment03-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.project03.id
}

