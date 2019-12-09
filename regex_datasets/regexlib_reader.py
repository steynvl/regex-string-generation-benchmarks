import jsonlines
from regex_datasets import Reader, DATA_DIR


class RegexLibReader(Reader):

    def __init__(self):
        super().__init__()
        self.data_dir.append(f'{DATA_DIR}/regexlib/internetSources-regExLib.json')

    def get_data(self):
        assert len(self.data_dir) == 1

        with jsonlines.open(self.data_dir[0], 'r') as reader:
            for obj in reader:
                for pattern in obj['patterns']:
                    yield pattern
