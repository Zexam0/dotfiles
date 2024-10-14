set auto-load safe-path /
skip -gfi /usr/include/c++/13/*/*/*
skip -gfi /usr/include/c++/13/*/*
skip -gfi /usr/include/c++/13/*
skip -gfi /usr/include/*
skip -gfi /usr/include/*.h
skip -gfi /usr/include/*.c
skip -gfi /lib/x86_64-linux-gnu/*
skip -fi /lib64/ld-linux-x86-64.so.2
skip -fi /lib/x86_64-linux-gnu/libthread_db.so.1
set stop-on-solib-events 0
skip -fi /lib/x86_64-linux-gnu/libc.so.6
