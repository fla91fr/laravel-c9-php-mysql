#!/bin/bash

CMDCOMPOSER="composer"
CMDARTISAN="php artisan"

$CMDCOMPOSER clear-cache
$CMDCOMPOSER dump-autoload

echo
echo "Clear Cache facade value:"
STMT="cache:clear"
$CMDARTISAN $STMT
echo "Cache facade value cleared."

echo
echo "Clear compiled pages:"
STMT="clear-compiled"
$CMDARTISAN $STMT

echo
echo "Clear views cache:"
STMT="view:clear"
$CMDARTISAN $STMT

echo
echo "Clear config cache:"
STMT="config:cache"
$CMDARTISAN $STMT

echo
echo "Clear Route cache:"
STMT="route:clear"
$CMDARTISAN $STMT

exit 1
echo
echo "Route cache:"
STMT="route:cache"
$CMDARTISAN $STMT

