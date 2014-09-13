//
//  ThinkingNote.h
//  ThinkingNote
//
//  Created by Jack on 9/12/14.
//  Copyright (c) 2014 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThinkingNote : NSObject

- (NSString*) read;
- (NSString*) file_path;
- (void) write: (NSString*)note;

@end