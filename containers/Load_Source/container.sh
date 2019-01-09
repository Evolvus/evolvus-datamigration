SCRIPT="${BASH_SOURCE[0]}"
SOURCE=`dirname "${BASH_SOURCE[0]}"`

sqlldr  $USERNAME/$PASSWORD@$SID control=$SOURCE/GFPF.ctl data=$INPUT_FILE/GFPF.dat log=$SQLLDR_LOG/gfpg.log bad=$SQLLDR_BAD/gfpf.bad direct=true errors=1000000 bindsize= 5048576 multithreading=true
