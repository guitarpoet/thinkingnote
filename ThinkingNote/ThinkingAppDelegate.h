//
//  ThinkingAppDelegate.h
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ThinkingNote.h"

@interface ThinkingAppDelegate : NSObject <NSApplicationDelegate, NSTextViewDelegate>

@property ThinkingNote* note;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextView *textview;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end


void messagebox(NSString* text);
