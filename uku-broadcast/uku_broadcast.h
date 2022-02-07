//
//  uku_broadcast.h
//  uku-broadcast
//
//  Created by Hugo Pievic on 07/02/2022.
//

#import <Foundation/Foundation.h>

//! Project version number for uku_broadcast.
FOUNDATION_EXPORT double uku_broadcastVersionNumber;

//! Project version string for uku_broadcast.
FOUNDATION_EXPORT const unsigned char uku_broadcastVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <uku_broadcast/PublicHeader.h>

#ifdef __cplusplus
extern “C” {
#endif
typedef void (*RequestFooCallback)(const int status);
#ifdef __cplusplus
}
#endif
