#import "CodeEditorBridge.h"
#import "../cpp/codeEditor.hpp"

@implementation CodeEdit

+ (NSString *)write:(NSString *)path with:(NSString *)data {
    std::string result = fs::write(
        std::string([path UTF8String]),
        std::string([data UTF8String])
    );
    return [NSString stringWithUTF8String:result.c_str()];
}

@end
