#import "TextfieldTagsPlugin.h"
#if __has_include(<textfield_tags/textfield_tags-Swift.h>)
#import <textfield_tags/textfield_tags-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "textfield_tags-Swift.h"
#endif

@implementation TextfieldTagsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTextfieldTagsPlugin registerWithRegistrar:registrar];
}
@end
