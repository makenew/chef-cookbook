#!/usr/bin/env sh

set -e
set -u

find_replace () {
  git ls-files -z | xargs -0 sed -i "$1"
}

check_env () {
  test -d .git || (echo 'This is not a Git repository. Exiting.' && exit 1)
  for cmd in ${1}; do
    command -v ${cmd} >/dev/null 2>&1 || \
      (echo "Could not find '$cmd' which is required to continue." && exit 2)
  done
  echo
  echo 'Ready to bootstrap your new project!'
  echo
}

stage_env () {
  echo
  git rm -f makenew.sh
  echo
  echo 'Staging changes.'
  git add --all
  echo
  echo 'Done!'
  echo
}

makenew () {
  read -p '> Cookbook title: ' mk_title
  read -p '> Cookbook name (slug): ' mk_slug
  read -p '> Short cookbook description: ' mk_description
  read -p '> Version number: ' mk_version
  read -p '> Maintainer name: ' mk_author
  read -p '> Maintainer email: ' mk_email
  read -p '> Copyright owner: ' mk_owner
  read -p '> Copyright year: ' mk_year
  read -p '> GitHub user or organization name: ' mk_user
  read -p '> GitHub repository name: ' mk_repo

  sed -i -e '7d' _README.md.erb
  sed -i -e '1d' doc/badges.md
  sed -i -e '8d' metadata.rb

  find_replace "s/0\.0\.0\.\.\./${mk_version}.../g"
  find_replace "s/Chef Cookbook Skeleton/${mk_title}/g"
  find_replace "s/Chef cookbook skeleton./${mk_description}/g"
  find_replace "s/2016 Evan Sosenko/${mk_year} ${mk_owner}/g"
  find_replace "s/Evan Sosenko/${mk_author}/g"
  find_replace "s/razorx@evansosenko\.com/${mk_email}/g"
  find_replace "s/makenew\/chef-cookbook/${mk_user}\/${mk_repo}/g"
  find_replace "s/makenew-chef_cookbook/${mk_slug}/g"
  find_replace "s/cd chef-cookbook/cd ${mk_repo}/g"

  sed -i -e "8i version          '${mk_version}'" metadata.rb

  mk_attribution='> <img src="https://makenew.github.io/makenew.svg" alt="Make New" height="20"> Built from [makenew/chef-cookbook](https://github.com/makenew/chef-cookbook).'
  echo "" >> doc/badges.md
  echo "${mk_attribution}" >> doc/badges.md

  rm doc/makenew.md

  echo
  echo 'Replacing boilerplate.'
}

check_env 'git read sed xargs'
makenew
stage_env
exit
