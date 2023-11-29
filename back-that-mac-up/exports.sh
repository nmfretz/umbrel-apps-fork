# APP_DATA_DIR="$(readlink -f $(dirname "${BASH_SOURCE[0]}")/..)/data"
APP_DATA_DIR="${EXPORTS_APP_DIR}/data"

echo "APP_DATA_DIR: ${APP_DATA_DIR}"
SMB_CONF_FILE="${APP_DATA_DIR}/etc-samba/smb.conf"
echo "SMB_CONF_FILE: ${SMB_CONF_FILE}"

if [ -f "$SMB_CONF_FILE" ]; then
  echo "SMB_CONF_FILE exists"
  export SMB_CONF_EXISTS="true"
else
  echo "SMB_CONF_FILE does not exist"
  export SMB_CONF_EXISTS="false"
fi