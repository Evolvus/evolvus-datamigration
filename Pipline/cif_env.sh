SCRIPT="${BASH_SOURCE[0]}"
SOURCE=`dirname "${BASH_SOURCE[0]}"`

CONTAINER_SOURCE="$SOURCE/../containers"

$CONTAINER_SOURCE/Create_env/container.sh
$CONTAINER_SOURCE/Load_Source/container.sh
