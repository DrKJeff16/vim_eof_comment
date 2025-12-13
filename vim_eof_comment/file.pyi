from .util import die as die, error as error
from io import TextIOWrapper

def bootstrap_paths(paths: tuple[str], exts: tuple[str]) -> tuple[tuple[str, str]]: ...
def open_batch_paths(paths: tuple[tuple[str, str]]) -> dict[str, tuple[TextIOWrapper, str]]: ...

# vim:ts=4:sts=4:sw=4:et:ai:si:sta:
