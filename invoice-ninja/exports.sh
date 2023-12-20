LARAVEL_APP_KEY_FILE_PATH="$(readlink -f $(dirname "${BASH_SOURCE[0]}")/..)/data/laravel-app-key.txt"
echo "LARAVEL_APP_KEY_FILE_PATH: ${LARAVEL_APP_KEY_FILE_PATH}"
if [[ -f "${LARAVEL_APP_KEY_FILE_PATH}" ]]; then
  export APP_KEY=$(cat "${LARAVEL_APP_KEY_FILE_PATH}")
  echo "APP_KEY: ${APP_KEY}"
fi