#!/bin/bash
if [ "$#" -ne 1 ] ; then
  echo "Missing Parameters ..."
  echo "Usage: $0 dataset[small|small_old|small_tree|small_path] " >&2
  exit 1
fi

dataset=$1

case ${dataset} in
   "small")
      set -x
      onmt_translate -config examples/learning_fix/config/small_translate_1G_1.yml
      ;;

   "small_old")
      set -x
      onmt_translate -config examples/learning_fix/config/small_translate_1G_1.yml
      ;;

   "small_tree")
      set -x
      onmt_translate -config examples/learning_fix/config/small_translate_1G_1.yml
      ;;

   "median")
      set -x
      onmt_translate -config examples/learning_fix/config/small_translate_1G_1.yml
      ;;

   *)
     echo "There is no match case for ${dataset}"
     echo "Usage: $0 dataset[small|small_old|small_tree|small_path] " >&2
     exit 1
     ;;
esac
