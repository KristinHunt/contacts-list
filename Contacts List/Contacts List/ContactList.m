//
//  ContactList.m
//  Contacts List
//
//  Created by Kristin Hunt on 10/20/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.contacts = [[NSMutableArray alloc] init];
  }
  return self;
}

-(void)addContact:(Contact *)newContact {
  [self.contacts addObject:newContact];
  
}

-(void)listContacts {
  NSUInteger index = 0;
  for (Contact *aContact in self.contacts) {
    NSLog(@"%lu: %@ (%@)", (unsigned long)index, aContact.name, aContact.email);
    index++;
  }
}

@end
