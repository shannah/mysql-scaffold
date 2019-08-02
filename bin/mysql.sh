#!/bin/sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
scaffolddir="$SCRIPTPATH/..";
ACMD="$1"
case $ACMD in
init)
    echo "Doing mysql init"
    mysql --socket="$scaffolddir"/tmp/mysql.sock
    ERROR=$?
;;
*)
    echo "Doing regular mysql"
    mysql --socket="$scaffolddir"/tmp/mysql.sock 
    ERROR=$?
;;
esac
exit $ERROR