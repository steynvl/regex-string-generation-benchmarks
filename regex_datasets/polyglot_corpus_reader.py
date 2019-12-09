import jsonlines
from regex_datasets import Reader, DATA_DIR


class PolyglotCorpusReader(Reader):

    def __init__(self):
        super().__init__()
        self.data_dir.append(f'{DATA_DIR}/polyglot_corpus/uniq-regexes-8.json')

    def get_data(self):
        assert len(self.data_dir) == 1

        with jsonlines.open(self.data_dir[0], 'r') as reader:
            for obj in reader:
                yield obj['pattern']
