from collections.abc import Callable
from typing import Any

def get_callable(lookup_view: Callable[..., Any] | str) -> Callable[..., Any]: ...
def get_mod_func(callback: str) -> tuple[str, str]: ...
