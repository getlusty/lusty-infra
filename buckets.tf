resource "yandex_storage_bucket" "photo-bucket" {
  access_key = lusty-profile-sa_static-key.access_key
  secret_key = lusty-profile-sa_static-key.secret_key
  bucket     = "photo-bucket"
}