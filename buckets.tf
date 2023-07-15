resource "yandex_storage_bucket" "photo-bucket" {
  access_key = terraform-account.lusty-profile-sa_static-key.access_key
  secret_key = terraform-account.lusty-profile-sa_static-key.secret_key
  bucket     = "photo-bucket"
}