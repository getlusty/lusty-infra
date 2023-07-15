resource "yandex_iam_service_account" "lusty-profile-sa" {
  name = "lusty-profile-sa"
}

resource "yandex_iam_service_account_static_access_key" "lusty-profile-sa_static-key" {
  service_account_id = yandex_iam_service_account.lusty-profile-sa.id
}