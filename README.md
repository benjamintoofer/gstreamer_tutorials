# gstreamer_tutorials

## Installing GStreamer w/ Brew on OSX
```
brew install cmake gstreamer gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly
```

NOTE: This isn't really a reccomended way to install gstreamer on OSX, but is used for a simple example to get up and running.
Actual GStreamer install instructions are here..

https://gstreamer.freedesktop.org/documentation/installing/on-mac-osx.html?gi-language=c

## Compiling w/ CMake
```
mkdir build
cd build
cmake ..
cmake --build .
```

## Runing the example
```
GST_PLUGIN_PATH=/usr/local/lib/gstreamer-1.0 ./gstreamer_tutorials
```

# OSX Refactor
The application/windowing was not properly initialized for OSX.  
Example program should produce the same output as this:
```
./gst-launch-1.0 -v playbin uri=https://www.freedesktop.org/software/gstreamer-sdk/data/media/sintel_trailer-480p.webm
```

Add `GST_DEBUG=1` to see the following message regarding the error.
```
gldisplay gstgldisplay_cocoa.m:175:gst_gl_display_cocoa_setup_nsapp: Custom NSApp initialization failed
```

Obj-c++ files were added and compiled with the OSX Cocoa Framework.
The approach is a bit hacky, and won't kill the app when the window is closed.
