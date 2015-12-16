#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/monica/panda_work/src/rosserial/rosserial_xbee"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/monica/panda_work/install/lib/python2.7/dist-packages:/home/monica/panda_work/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/monica/panda_work/build" \
    "/usr/bin/python" \
    "/home/monica/panda_work/src/rosserial/rosserial_xbee/setup.py" \
    build --build-base "/home/monica/panda_work/build/rosserial/rosserial_xbee" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/monica/panda_work/install" --install-scripts="/home/monica/panda_work/install/bin"
