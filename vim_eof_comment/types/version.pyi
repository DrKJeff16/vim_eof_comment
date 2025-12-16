class _VersionInfo:
    """
    A sys-inspired version_info object type.

    Attributes
    ----------
    major : int
    minor : int
    patch : int
    """
    major: int
    minor: int
    patch: int
    def __init__(self, major: int, minor: int, patch: int) -> None:
        """
        Initialize _VersionInfo object.

        Parameters
        ----------
        major : int
            The major component of the version.
        minor : int
            The minor component of the version.
        patch : int
            The patch component of the version.
        """
    def __str__(self) -> str:
        """
        Representate this object as a string.

        Returns
        -------
        str
            The string representation of the instance.
        """

version_info: _VersionInfo
# vim: set ts=4 sts=4 sw=4 et ai si sta:
