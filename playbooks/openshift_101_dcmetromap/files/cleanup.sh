#!/usr/bin/env bash

function delete_project_name() {
 local regex=$1; shift || return 1

 declare -a arr=( $(oc projects | grep $regex) )

 for i in "${arr[@]}"; do
  oc delete project "$i"
 done
}

function cleanup_dcmetromap() {
 delete_project_name "demo"
 delete_project_name "bluegreen"
 delete_project_name "cicd"
 delete_project_name "student"
}
