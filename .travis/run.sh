#!/bin/bash

set -ev

export DITA_HOME=$PWD/dita-ot-$DITA_OT_VERSION

# Build 1.3 doctype to ensure builds working properly
#$DITA_HOME/bin/dita -i $PWD/metadita-sampledocs-master/doctypes/dita1.3/dtd/base/basemap.ditamap -f html5

# Build beta 2.0 doctype
$DITA_HOME/bin/dita -i $PWD/metadita-sampledocs-master/doctypes/dita20/2.0grammars-techcomm.ditamap -f html5 --processing-mode=strict -v
$DITA_HOME/bin/dita -i $PWD/specification/dita-2.0-technical-content-specification.ditamap -f html5 --processing-mode=strict -v
