#!/bin/bash

echo "Installing gcloud SDK"
echo "Note: there's no need to install shell command completion, it's already done."
curl https://sdk.cloud.google.com | bash
echo -e "Done. \n"
echo "╔════════════════════════════════════════════════════════════╗"
echo "╠═ You may wish to configure gcr.io authentication          ═╣"
echo "╠═ with docker                                              ═╣"
echo "╠════════════════════════════════════════════════════════════╣"
echo "╠═ gcloud auth configure-docker                             ═╣"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
