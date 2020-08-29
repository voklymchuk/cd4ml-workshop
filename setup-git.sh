#!/usr/bin/env bash

read -p 'Name: ' NAME
read -p 'E-mail: ' EMAIL
read -p 'Github username: ' GITHUB_USER
read -sp 'Github personal access token: ' GITHUB_TOKEN
echo
echo "Setting up git..."
export
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git remote set-url origin https://$GITHUB_USER:29dfecc9ed632cb6bfd62c3dc244f36dbcca3dbb@github.com/$GITHUB_USER/cd4ml-workshop
git pull --rebase
