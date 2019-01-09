SCRIPT="${BASH_SOURCE[0]}"
SOURCE=`dirname "${BASH_SOURCE[0]}"`
PIPELINE_SOURCE="$SOURCE/../Pipline"

$PIPELINE_SOURCE/cif_env.sh
$PIPELINE_SOURCE/cif_transform.sh
$PIPELINE_SOURCE/cif_spool.sh
