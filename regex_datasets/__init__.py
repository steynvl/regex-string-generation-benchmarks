import os

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__)))
DATA_DIR = ROOT_DIR + '/data'

from regex_datasets.reader import Reader
from regex_datasets.snort_reader import SnortReader
from regex_datasets.regexlib_reader import RegexLibReader
from regex_datasets.polyglot_corpus_reader import PolyglotCorpusReader
