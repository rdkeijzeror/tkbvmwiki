#!/usr/bin/bash
############################################################################
# This script will copy the latest tkbdokuwiki backup from local backup dir
# to the vagrant dir 
############################################################################

SOURCEDIR="/d/data/backup/tkbdokuwiki"
VAGRANT_DIR="/d/data/Werk/TKB_Ordina/TKB_WiKi/vmwiki"
BACKUPFILE="tkb_wiki_*.tgz"
DESTFILE="tkb_wiki.tgz"

echo "Starting"
cd ${SOURCEDIR}

LAST_FILE=$(ls -1tr ${BACKUPFILE} | tail -1 2>/dev/null)

if [ -n "${LAST_FILE}" ]
then
  echo "Copy file ${LAST_FILE} to ${VAGRANT_DIR}"
  /usr/bin/cp -f ${SOURCEDIR}/${LAST_FILE} ${VAGRANT_DIR}/${DESTFILE}
fi

echo "Finished"

sleep 20


