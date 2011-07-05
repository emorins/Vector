//
//  Vector.h
//  Vector
//
//  Created by Shotaro Emori on 11/04/14.
//  Copyright 2011 Shotaro Emori All rights reserved.
//

struct CGVector {
    CGFloat x;
    CGFloat y;
    CGFloat z;
};
typedef struct CGVector CGVector;
CG_INLINE CGVector
CGVectorMake(CGFloat x, CGFloat y, CGFloat z){
    CGVector v;

    v.x = x;
    v.y = y;
    v.z = z;
    return (v);
}

@interface Vector : NSObject {
}

/**
 * normalize
 * @param CGVector
 * @returns float
 */
+ (CGFloat) normalize:(CGVector)vector;

/**
 * reverse
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) reverse:(CGVector)vector;

/**
 * add
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) add:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * sub
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) sub:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * mul
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) mul:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * div
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) div:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * cross
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGVector) cross:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * dot
 * @param CGVector
 * @param CGVector
 * @returns CGVector
 */
+ (CGFloat) dot:(CGVector)vector1 vector:(CGVector)vector2;

/**
 * scalarTripleProduct
 * @param CGVector
 * @param CGVector
 * @param CGVector
 * @returns float
 */
+ (CGFloat) scalarTripleProduct:(CGVector)vector1:(CGVector)vector2 vector:(CGVector)vector3;

@end
