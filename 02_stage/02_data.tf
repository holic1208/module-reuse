module "test" {
  source = "../01_test"

  true             = true
  name             = "suuu"
  region           = "ap-northeast-2"
  region_instance  = "ap-northeast-2a"
  ava              = ["a", "c"]
  key              = "suuu-key"
  cidr_main        = "10.0.0.0/16"
  cidr_public      = ["10.0.0.0/24", "10.0.2.0/24"]
  cidr_private     = ["10.0.1.0/24", "10.0.3.0/24"]
  cidr_privatedb   = ["10.0.4.0/24", "10.0.5.0/24"]
  cidr_route       = "0.0.0.0/0"
  cidr_ipv6        = "::/0"
  sg_ICMP          = "Allow ICMP"
  sg_HTTP          = "Allow HTTP"
  sg_SSH           = "Allow SSH"
  sg_SQL           = "Allow SQL"
  SSH_port         = 22
  HTTP_port        = 80
  SQL_port         = 3306
  ALL_port         = 0
  tcp_protocol     = "tcp"
  icmp_protocol    = "icmp"
  instance_type    = "t2.micro"
  ec2_private_ip   = "10.0.0.11"
  ami              = "ami-0a5a6128e65676ebb"
  protocol_HTTP    = "HTTP"
  health_path      = "/health.html"
  health_port      = "traffic-port"
  health_type      = "EC2"
  listener_port    = "80"
  RDS_allocate_sto = 20
  RDS_ins_type     = "db.t2.micro"
  RDS_eng_type     = "mysql"
  RDS_sto_type     = "gp2"
  RDS_version      = "8.0"
  RDS_dbname       = "test"
  RDS_user         = "admin"
  RDS_password     = "It12345!"
  RDS_parag_name   = "default.mysql8.0"
}