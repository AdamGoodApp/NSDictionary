//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main()
{
    
    NSDictionary *movie = [[NSDictionary alloc] initWithObjectsAndKeys: @"The Matrix", @"Title", @"Neo", @"Hero", nil];
    NSDictionary *book = @{ @"Title": @"Harry Potter", @"Author": @"JK Rowland"};
    NSMutableDictionary *mutableBook = [NSMutableDictionary dictionaryWithDictionary:book];
    
    [mutableBook setObject:@2013 forKey:@"Year"];
    [mutableBook removeObjectForKey:@"Author"];
    
    NSString *hero = [mutableBook objectForKey:@"Title"];
    NSLog(@"%@", hero);
    
    for (NSString *string in [mutableBook allKeys]) {
        NSLog(@"Key is %@ and Vale is %@", string, [mutableBook objectForKey:string]);
    }

    return 0;
}
