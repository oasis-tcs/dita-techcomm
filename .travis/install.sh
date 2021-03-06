#!/bin/bash

set -e

# Install DITA-OT
curl -sfL https://github.com/dita-ot/dita-ot/releases/download/$DITA_OT_VERSION/dita-ot-$DITA_OT_VERSION.zip -o dita-ot-$DITA_OT_VERSION.zip
unzip -q dita-ot-$DITA_OT_VERSION.zip
export DITA_HOME=$PWD/dita-ot-$DITA_OT_VERSION

# Create and install base plugin for 2.0 with latest doctypes
rm -rv $DITA_HOME/plugins/org.oasis-open.dita.v2_0/dtd/
rm -rv $DITA_HOME/plugins/org.oasis-open.dita.v2_0/rng/
rm -rv $DITA_HOME/plugins/org.oasis-open.dita.techcomm.v2_0/dtd/
rm -rv $DITA_HOME/plugins/org.oasis-open.dita.techcomm.v2_0/rng/
cp -a ./specification/baseSpec/doctypes/. $DITA_HOME/plugins/org.oasis-open.dita.v2_0/
cp -a ./doctypes/. $DITA_HOME/plugins/org.oasis-open.dita.techcomm.v2_0/
# install plugins
$DITA_HOME/bin/dita -install

# Install RNG support
#curl -sfL https://github.com/oxygenxml/dita-relaxng-defaults/archive/master.zip -o dita-ng.zip
#$DITA_HOME/bin/dita -install dita-ng.zip -v
#rm dita-ng.zip

# Grab test files
curl -sfL https://github.com/robander/metadita-sampledocs/archive/master.zip -o testfiles.zip
unzip testfiles.zip
rm testfiles.zip
