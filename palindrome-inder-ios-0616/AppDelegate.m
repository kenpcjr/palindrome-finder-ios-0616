//
//  AppDelegate.m
//  Palindrome-Finder_ios-0616
//
//  Created by Kenneth Cooke on 6/14/16.
//  Copyright © 2016 Itstoday. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSString *potentialPalindrome = @"A man, a plan, a cat, a ham, a yak, a yam, a hat, a canal-Panama!";
    BOOL isPalindrome = [self isAPalindrome:potentialPalindrome];
    
    return isPalindrome;
}


-(BOOL)isAPalindrome:(NSString *)potentialPalindrome{
    NSString *spacesRemovedAndLowercase = [[potentialPalindrome stringByReplacingOccurrencesOfString:@" " withString:@""]lowercaseString];
    NSCharacterSet *punctuationSetToRemove = [[NSCharacterSet alphanumericCharacterSet]invertedSet];
    NSString *strippedString = [[spacesRemovedAndLowercase componentsSeparatedByCharactersInSet:punctuationSetToRemove]componentsJoinedByString:@""];
    
    NSMutableArray *subsStringsToCompare = [@[]mutableCopy];
    NSMutableArray *reversedSubStringArray = [@[]mutableCopy];
    for (NSUInteger i = 0; i < [strippedString length]; i++) {
        char characterCapture = [strippedString characterAtIndex:i];
        NSString *characterToAdd = [NSString stringWithFormat:@"%c",characterCapture];
        [subsStringsToCompare addObject:characterToAdd];
        [reversedSubStringArray insertObject:characterToAdd atIndex:0 ];
    }
    if ([subsStringsToCompare isEqualToArray:reversedSubStringArray]){
        NSLog(@"Yep, %@ is a palidrome.",potentialPalindrome);
        return YES;
    }
    NSLog(@"Nope, %@ is not a palidrome.",potentialPalindrome);
    return NO;
}

@end
