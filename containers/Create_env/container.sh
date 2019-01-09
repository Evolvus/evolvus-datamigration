SCRIPT="${BASH_SOURCE[0]}"
SOURCE=`dirname "${BASH_SOURCE[0]}"`
sqlplus $USERNAME/$PASSWORD@$SID @$SOURCE/drop_table.sql
sqlplus $USERNAME/$PASSWORD@$SID @$SOURCE/create_table.sql
