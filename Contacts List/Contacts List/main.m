//
//  main.m
//  Contacts List
//
//  Created by Kristin Hunt on 10/20/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    ContactList *myContactList = [[ContactList alloc] init];
    
    while (YES) {
      
      Contact *newContact = [[Contact alloc] init];
      
      InputCollector *input = [[InputCollector alloc] init];
      
      NSString *question = @"What would you like do next? \n new - Create a new contact \n list - List all contacts \n quit - Exit \n Application: ";
      
      NSString *answer = [input inputForPrompt: question];
      
      NSLog(@"Answer: %@", answer);
      
      if ([answer isEqualToString:@"quit"]) {
        NSLog(@"Adios!");
        return 0;
        
      } else if ([answer isEqualToString:@"new"]) {
        newContact.name = [input inputForPrompt:@"Enter your name: "];
        newContact.email = [input inputForPrompt:@"Enter your email address: "];
        [myContactList addContact:newContact];
      } else if ([answer isEqualToString:@"list"]) {
        [myContactList listContacts];
      }
      
      NSLog(@"Name: %@ and Email: %@", newContact.name, newContact.email);
    }
    return 0;
  }
}

