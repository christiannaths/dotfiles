#!/bin/bash


SOURCE="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-darwin-arm.tar.gz"
DESTINATION="/Applications"



echo "Installing gcloud SDK"
echo "Note: there's no need to install shell command completion, it's already done."


wget -qO- $SOURCE | tar xvz -C $DESTINATION
sh $DESTINATION/google-cloud-sdk/install.sh --install-python=false --quiet


# gcloud auth login


echo -e "Done. \n"
echo "╔════════════════════════════════════════════════════════════╗"
echo "╠═ You may wish to configure gcr.io authentication          ═╣"
echo "╠═ with docker                                              ═╣"
echo "╠════════════════════════════════════════════════════════════╣"
echo "╠═ gcloud auth configure-docker                             ═╣"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
