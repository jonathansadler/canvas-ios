//
// This file is part of Canvas.
// Copyright (C) 2016-present  Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

#import "UIImage+TechDebt.h"
#import "CBIViewModel.h"

@implementation UIImage (TechDebt)
+ (instancetype)techDebtImageNamed:(NSString *)name {
    static NSBundle *techDebtBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        techDebtBundle = [NSBundle bundleForClass:[CBIViewModel class]];
    });
    return [self imageNamed:name inBundle:techDebtBundle compatibleWithTraitCollection:nil];
}
@end
