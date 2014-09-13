//
//  ThinkingNote.m
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import "ThinkingNote.h"
#import <Carbon/Carbon.h>

@implementation ThinkingNote

- (IBAction) show:(id)sender {
    [self.window setCollectionBehavior: NSWindowCollectionBehaviorCanJoinAllSpaces];
    NSApplication *myApp = [NSApplication sharedApplication];
    [myApp activateIgnoringOtherApps:YES];
    [[self window]  makeKeyAndOrderFront:self];
    [[self textview] selectAll:self];
}

- (void) initialize {
    [[self textview] setFont:[NSFont fontWithName:@"Open Sans" size:18]];
    [[self textview] setDrawsBackground:NO];
    [[self textview] setInsertionPointColor:[NSColor whiteColor]];
    [[self textview] setTextColor:[NSColor whiteColor]];
    
    [self registerHotekey];
    
    [self restoreText];
}

- (void) textDidChange:(NSNotification *)notification {
    [self write:[[self textview] string]];
}

- (void) restoreText {
    // Restroing the text
    NSString* content = [self read];
    if(content) {
        [[self textview] setString:content];
    }
}

- (NSString*) read {
    return [[NSString alloc] initWithContentsOfFile:[self filePath] encoding:NSUTF8StringEncoding error:nil];
}

- (NSString*) filePath {
    NSMutableString* home = [[NSMutableString alloc] initWithString:NSHomeDirectory()];
    [home appendString:@"/.thinking_note"];
    return home;
}

- (void) write:(NSString *)note {
    [note writeToFile:[self filePath] atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

- (void) registerHotekey {
    DDHotKeyCenter* center = [DDHotKeyCenter sharedHotKeyCenter];
    if(! [center hasRegisteredHotKeyWithKeyCode:kVK_ANSI_M modifierFlags:(NSControlKeyMask | NSAlternateKeyMask)]) {
        [center registerHotKeyWithKeyCode:kVK_ANSI_M modifierFlags:(NSControlKeyMask | NSAlternateKeyMask) target:self action:@selector(show:) object:nil];
    }
}

@end
