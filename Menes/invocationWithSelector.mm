/* Cydia - iPhone UIKit Front-End for Debian APT
 * Copyright (C) 2008-2012  Jay Freeman (saurik)
*/

/* GNU General Public License, Version 3 {{{ */
/*
 * Cydia is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License,
 * or (at your option) any later version.
 *
 * Cydia is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Cydia.  If not, see <http://www.gnu.org/licenses/>.
**/
/* }}} */

#include "Menes/invocationWithSelector.h"

@implementation NSInvocation (MenesInvocationWithSelector)

+ (NSInvocation *) invocationWithSelector:(SEL)selector forTarget:(id)target {
    NSInvocation *invocation([NSInvocation invocationWithMethodSignature:[target methodSignatureForSelector:selector]]);
    [invocation setTarget:target];
    [invocation setSelector:selector];
    return invocation;
}

@end
