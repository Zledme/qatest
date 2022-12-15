from transformers import pipeline
import json
from pyserini.search.lucene import LuceneSearcher


def get_ans(question):
    searcher = LuceneSearcher('./lucene-index.beir-v1.0.0-dbpedia-entity-flat.20220501.1842ee')
    search_results = searcher.search(question, k=30)
    content = ""
    for result in search_results:
        result = json.loads(result.raw)
        text = result["text"]
        content = content + text + ". "

    pipe = pipeline("question-answering", model="./SciBERT-SQuAD-QuAC")
    answer = pipe(question=question, context=content)
    return answer['answer']
