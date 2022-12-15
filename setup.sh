#!/bin/bash
pip install pyserini faiss-cpu transformers
pip install torch --extra-index-url https://download.pytorch.org/whl/cpu
wget https://rgw.cs.uwaterloo.ca/JIMMYLIN-bucket0/pyserini-indexes/lucene-index.beir-v1.0.0-dbpedia-entity-flat.20220501.1842ee.tar.gz
tar zxvf lucene-index.beir-v1.0.0-dbpedia-entity-flat.20220501.1842ee.tar.gz
git lfs install
git clone https://huggingface.co/ixa-ehu/SciBERT-SQuAD-QuAC
rm lucene-index.beir-v1.0.0-dbpedia-entity-flat.20220501.1842ee.tar.gz
