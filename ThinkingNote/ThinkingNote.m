//
//  ThinkingNote.m
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "ThinkingNote.h"

@implementation ThinkingNote

- (NSString*) read {
    return [[NSString alloc] initWithContentsOfFile:[self file_path] encoding:NSUTF8StringEncoding error:nil];
}

- (NSString*) file_path {
    NSMutableString* home = [[NSMutableString alloc] initWithString:NSHomeDirectory()];
    [home appendString:@"/.thinking_note"];
    return home;
}

- (void) write:(NSString *)note {
    [note writeToFile:[self file_path] atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

@end
