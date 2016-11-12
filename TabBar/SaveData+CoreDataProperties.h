//
//  SaveData+CoreDataProperties.h
//  TabBar
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "SaveData.h"

NS_ASSUME_NONNULL_BEGIN

@interface SaveData (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *fname;
@property (nullable, nonatomic, retain) NSString *lname;
@property (nullable, nonatomic, retain) NSNumber *salary;
@property (nullable, nonatomic, retain) NSString *eid;

@end

NS_ASSUME_NONNULL_END
