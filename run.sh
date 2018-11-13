#!/bin/sh
#
# Copyright (c) 2018 sasairc
# Released under the MIT license.
# see https://github.com/sasairc/lsoac/blob/master/LICENSE
#

SCRIPT="./advent-notifier-for-twitter"
DAYFILE="./latest"

test -f ${DAYFILE} || echo -n 1 > ${DAYFILE}
cat ${DAYFILE} | ${SCRIPT} > ${DAYFILE}.new && mv ${DAYFILE}.new ${DAYFILE}
