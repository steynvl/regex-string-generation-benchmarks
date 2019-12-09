import snortsig
from regex_datasets import Reader, DATA_DIR


class SnortReader(Reader):

    def __init__(self):
        super().__init__()
        for i in [2, 3]:
            self.data_dir.append(f'{DATA_DIR}/snort/snort{i}-community.rules')

    def get_data(self):
        for rules_file in self.data_dir:
            with open(rules_file, 'r') as f:
                rules = ''.join(f.readlines())

            ss = snortsig.SnortSig()
            ss.fromstring(rules)

            for rule in ss.getall():
                options = rule['options']
                if 'pcre' in options:
                    yield options['pcre'][0]
