LARAVEL_APP_KEY_FILE_PATH="${APP_DATA_DIR}/laravel-app-key.txt"

if [[ -f "${LARAVEL_APP_KEY_FILE_PATH}" ]]; then
  export APP_KEY=$(cat "${LARAVEL_APP_KEY_FILE_PATH}")
fi