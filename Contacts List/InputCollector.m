//
//  InputCollector.m
//  Contacts List
//
//  Created by Kristin Hunt on 10/20/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
  NSLog(@"%@", promptString);
  
  char inputChars[255];
  
  fgets(inputChars, 255, stdin);
  
  NSString *inputString = [NSString stringWithUTF8String:inputChars];
  
  inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
  
  return inputString;
  
}


@end
