
#!/usr/bin/bash


find ~/ -type f -mtime 1 | tar -zcvf TTarball.tar.gz -T-
