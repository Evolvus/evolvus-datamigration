SCRIPT="${BASH_SOURCE[0]}"
SOURCE=`dirname "${BASH_SOURCE[0]}"`
sqlplus $USERNAME/$PASSWORD@$SID @$SOURCE/cu1_upload_fram.sql
