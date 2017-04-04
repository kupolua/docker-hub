#!/bin/sh

git init
git remote add origin -f ${GIT_REPO_URL}

if [ ${WEBUI_PATH} ]
then
    git config core.sparseCheckout true
    echo ${WEBUI_PATH} >> .git/info/sparse-checkout
fi

git pull origin ${GIT_BRANCH}

git checkout ${GIT_BRANCH}

git fetch
git pull origin ${GIT_BRANCH}

if [ ${GIT_REPO_SYNC_TIME} ]
then
    i=1
    while [ ${i} ];
    do
        git fetch
        git pull origin ${GIT_BRANCH}

        sleep ${GIT_REPO_SYNC_TIME}
    done
fi