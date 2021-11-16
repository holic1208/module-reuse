module "test" {
  source = "../01_test"

  true             = true
  name             = "suuu"
  region           = "ap-northeast-3"
  region_instance  = "ap-northeast-3a"
  ava              = ["a", "c"]
  key              = "suuu-key"
  cidr_main        = "192.168.0.0/16"
  cidr_public      = ["192.168.0.0/24", "192.168.2.0/24"]
  cidr_private     = ["192.168.1.0/24", "192.168.3.0/24"]
  cidr_privatedb   = ["192.168.4.0/24", "192.168.5.0/24"]
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
  instance_type    = "t3.micro"
  ec2_private_ip   = "192.168.0.11"
  ami = "ami-0d9649ef6deb663a7"
  protocol_HTTP    = "HTTP"
  health_path      = "/health.html"
  health_port      = "traffic-port"
  health_type      = "EC2"
  listener_port    = "80"
  RDS_allocate_sto = 20
  RDS_ins_type     = "db.t3.micro"
  RDS_eng_type     = "mysql"
  RDS_sto_type     = "gp2"
  RDS_version      = "8.0"
  RDS_dbname       = "test"  
  RDS_user         = "admin"
  RDS_password     = "It12345!"
  RDS_parag_name   = "default.mysql8.0"
}