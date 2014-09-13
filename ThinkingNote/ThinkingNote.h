//
//  ThinkingNote.h
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDHotKeyCenter.h"

//
// This is the main object for the thinking note, it'll handles all the function and calls
//
@interface ThinkingNote : NSObject <NSTextViewDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextView *textview;

- (IBAction) show:(id)sender;

- (void) initialize;
- (NSString*) read;
- (NSString*) filePath;
- (void) restoreText;
- (void) write: (NSString*)note;
- (void) registerHotekey;

@end
