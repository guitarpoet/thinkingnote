//
//  ThinkingAppDelegate.h
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "common.h"
#import "ThinkingNote.h"

@interface ThinkingAppDelegate : NSObject <NSApplicationDelegate, NSTextViewDelegate>

@property (assign) IBOutlet ThinkingNote* note;
@property (assign) IBOutlet NSMenu* statusbarMenu;

@property NSStatusItem* statusBarItem;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
