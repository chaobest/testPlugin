//
//  TestPlugin.m
//  HelloCordova
//
//  Created by Chao Wang on 4/25/20.
//

#import "TestPlugin.h"

@implementation TestPlugin

-(void)testWithTitle:(CDVInvokedUrlCommand *)command {
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count>0) {
        NSString* title = command.arguments[0];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Here is the callback"];
        NSLog(@"%@", title);
        
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"no callback"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)add:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count>0) {
        @try {
            NSArray *array = command.arguments.firstObject;
            NSLog(@"%@", array);
            if ([array.firstObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for a"];
            } else if ([array.lastObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for b"];
            } else {
                NSNumber *param1 = array.firstObject;
                NSNumber *param2 = array.lastObject;
                NSString* total = [[NSNumber numberWithFloat:([param1 floatValue] + [param2 floatValue])] stringValue];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
            }
        }
        @catch(NSException *exception) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invailded input"];
        }
    } else {
           pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)minus:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count>0) {
        @try {
            NSArray *array = command.arguments.firstObject;
            NSLog(@"%@", array);
            if ([array.firstObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for a"];
            } else if ([array.lastObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for b"];
            } else {
                NSNumber *param1 = array.firstObject;
                NSNumber *param2 = array.lastObject;
                NSString* total = [[NSNumber numberWithFloat:([param1 floatValue] - [param2 floatValue])] stringValue];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
            }
        }
        @catch(NSException *exception) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invailded input"];
        }
    } else {
           pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)product:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count>0) {
        @try {
            NSArray *array = command.arguments.firstObject;
            NSLog(@"%@", array);
            if ([array.firstObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for a"];
            } else if ([array.lastObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for b"];
            } else {
                NSNumber *param1 = array.firstObject;
                NSNumber *param2 = array.lastObject;
                NSString* total = [[NSNumber numberWithFloat:([param1 floatValue] * [param2 floatValue])] stringValue];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
            }
        }
        @catch(NSException *exception) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invailded input"];
        }
    } else {
           pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)divide:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count>0) {
        @try {
            NSArray *array = command.arguments.firstObject;
            NSLog(@"%@", array);
            if ([array.firstObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for a"];
            } else if ([array.lastObject isEqual:@""]) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No input for b"];
            } else if ([array.lastObject intValue] == 0) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Divisor cannot be 0"];
            } else {
                NSNumber *param1 = array.firstObject;
                NSNumber *param2 = array.lastObject;
                NSString* total = [[NSNumber numberWithFloat:([param1 floatValue] / [param2 floatValue])] stringValue];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
            }
        }
        @catch(NSException *exception) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invailded input"];
        }
    } else {
           pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
