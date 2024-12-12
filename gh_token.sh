#!/usr/bin/env bash

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: argocd-app-config-repo
  namespace: argocd
  labels:
    argocd.argoproj.io/secret-type: repository
stringData:
  url: https://github.com/p4ali/argocd-app-config
  password: ${GITHUB_TOKEN_ARGO}
  username: not-used
EOF