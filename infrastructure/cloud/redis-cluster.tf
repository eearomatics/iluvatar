resource "upstash_redis_database" "common_redis" {
  database_name = "shared_redis"
  region = "us-east-1"
  tls = "true"
}