//
//  AppDelegate.h
//  Palindrome-Finder_ios-0616
//
//  Created by Kenneth Cooke on 6/14/16.
//  Copyright © 2016 Itstoday. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(BOOL)isAPalindrome:(NSString *)potentialPalindrome;

@end

