
## bash/

* [**arrayutils.bash**](arrayutils.bash): Bash array utilities
* [**coreutils.bash**](coreutils.bash): Bash core utilities
* [**dateandtimeutils.bash**](dateandtimeutils.bash): Bash date and time utilities
* [**fileanddirectoryutils.bash**](fileanddirectoryutils.bash): Bash file and directory utilities
* [**httputils.bash**](httputils.bash): Bash http utilities
* [**numberutils.bash**](numberutils.bash): Bash number utilities
* [**stringutils.bash**](stringutils.bash): Bash string utilities

### Usage Notes

* Utility functions accept array arguments by reference. *(Therefore, arrays must be passed by name rather than value [e.g. an array X would be passed as "X" rather than "${X[@]}"]).*
