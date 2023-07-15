resource "yandex_iam_service_account" "lusty-profile-sa" {
  name = "lusty-profile-sa"
}

resource "yandex_resourcemanager_folder_iam_member" "lusty-profile-sa_permission_storage-editor" {
  folder_id = "prod"
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.lusty-profile-sa.id}"
}

resource "yandex_iam_service_account_static_access_key" "lusty-profile-sa_static-key" {
  service_account_id = yandex_iam_service_account.lusty-profile-sa.id
}