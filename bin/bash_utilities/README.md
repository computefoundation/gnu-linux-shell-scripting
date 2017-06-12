
## bash_utilities/

* [**arrayutils**](arrayutils): Bash array utilities
* [**coreutils**](coreutils): Bash core utilities
* [**dateandtimeutils**](dateandtimeutils): Bash date and time utilities
* [**fileanddirectoryutils**](fileanddirectoryutils): Bash file and directory utilities
* [**httputils**](httputils): Bash http utilities
* [**numberutils**](numberutils): Bash number utilities
* [**stringutils**](stringutils): Bash string utilities

### Usage Notes

* If a function accepts an array, it must be passed by reference. This is done by passing the array name rather than its values (e.g. an array X would be passed as "X" rather than "${X[@]}").
