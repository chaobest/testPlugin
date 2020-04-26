//
//  TestPlugin.h
//  HelloCordova
//
//  Created by Chao Wang on 4/25/20.
//

#import <Cordova/CDVPlugin.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestPlugin : CDVPlugin
-(void)testWithTitle:(CDVInvokedUrlCommand *)command;
-(void)add:(CDVInvokedUrlCommand *)command;
-(void)minus:(CDVInvokedUrlCommand *)command;
-(void)product:(CDVInvokedUrlCommand *)command;
-(void)divide:(CDVInvokedUrlCommand *)command;
@end

NS_ASSUME_NONNULL_END
