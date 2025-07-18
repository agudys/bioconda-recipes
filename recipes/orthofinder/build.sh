#!/bin/bash

mkdir -p $PREFIX/bin

cp orthofinder.py $PREFIX/bin/orthofinder

mkdir -p $PREFIX/bin/src/orthofinder
cp -r src/orthofinder/* $PREFIX/bin/src/orthofinder/

sed -i.bak 's/raxmlHPC-AVX/raxmlHPC-AVX2/g' src/orthofinder/run/config.json
cp src/orthofinder/run/config.json $PREFIX/bin/src/orthofinder/run/config.json

cp tools/convert_orthofinder_tree_ids.py $PREFIX/bin/
cp tools/create_files_for_hogs.py $PREFIX/bin/
cp tools/make_ultrametric.py $PREFIX/bin/
cp tools/orthogroup_gene_count.py $PREFIX/bin/
cp tools/primary_transcript.py $PREFIX/bin/

chmod a+x $PREFIX/bin/orthofinder
chmod a+x $PREFIX/bin/convert_orthofinder_tree_ids.py
chmod a+x $PREFIX/bin/create_files_for_hogs.py
chmod a+x $PREFIX/bin/make_ultrametric.py
chmod a+x $PREFIX/bin/orthogroup_gene_count.py
chmod a+x $PREFIX/bin/primary_transcript.py

mkdir -p $PREFIX/share/orthofinder/
cp -r ExampleData $PREFIX/share/orthofinder/
