#include "osx_app.h"
#import <Cocoa/Cocoa.h>

void osx_app_init() {
  [NSApplication sharedApplication];
}

void osx_app_run() {
    [NSApp run];
}