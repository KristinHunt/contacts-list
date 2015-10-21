//
//  ContactList.h
//  Contacts List
//
//  Created by Kristin Hunt on 10/20/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

-(void)listContacts;

@end
