//
// Copyright (C) 2016-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "CKIClient.h"

@class CKIFile;
@class CKIFolder;
@class RACSignal;

@interface CKIClient (CKIFile)

- (RACSignal *)fetchFile:(NSString *)fileID;
- (RACSignal *)deleteFile:(CKIFile *)file;
- (RACSignal *)uploadFile:(NSData *)fileData ofType:(NSString *)fileType withName:(NSString *)name inFolder:(CKIFolder *)folder;

@end
