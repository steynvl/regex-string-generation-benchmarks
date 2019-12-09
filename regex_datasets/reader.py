import abc


class Reader(abc.ABC):

    def __init__(self):
        self.__data_dir = []

    @property
    def data_dir(self):
        return self.__data_dir

    @abc.abstractmethod
    def get_data(self):
        pass
