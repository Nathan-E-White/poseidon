#!/usr/bin/env bash

USR="Nathan-E-White";
RPO="poseidon";
DIR="/mnt/d/neptune/software/poseidon";
REPO_URL="git@github.com:${USR}/${RPO}";

cd "${DIR}" || printf "%s\n" "Unable to find target directory" 1>&2;
git init || printf "%s\n" "Unable to initialize Git repository" 1>&2;
git add . || printf "%s\n" "Could not stage files for initial commit" 1>&2;
git commit -m "First commit" || printf "%s\n" "Could not commit initial files" 1>&2;
git remote add origin "${REPO_URL}" || printf "%s\n" "Unable to link local sources to git" 1>&2;
git remote -v || printf "%s\n" "Unable to verify new remote URL" 1>&2;
git push origin main || printf "%s\n" "Could not push changes to remote branch" 1>&2;
