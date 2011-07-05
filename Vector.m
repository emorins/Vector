//
//  Vector.m
//  Vector
//
//  Created by Shotaro Emori on 11/04/14.
//  Copyright 2011 Shotaro Emori All rights reserved.
//

#import "Vector.h"


@implementation Vector

const CGFloat VECTOR_TOL = 0.0001f;

+ (CGFloat) normalize:(CGVector)vector {
    return (sqrt(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z));
}

+ (CGVector) reverse:(CGVector)vector {
    float m = [self normalize:vector];

    if (m <= VECTOR_TOL) {
        m = 1;
    }
    float x = vector.x / m;
    float y = vector.y / m;
    float z = vector.z / m;
    if (fabs(x) < VECTOR_TOL) {
        x = 0.0f;
    }
    if (fabs(y) < VECTOR_TOL) {
        y = 0.0f;
    }
    if (fabs(z) < VECTOR_TOL) {
        z = 0.0f;
    }
    return (CGVectorMake(x, y, z));
}

+ (CGVector) add:(CGVector)vector1 vector:(CGVector)vector2 {
    return (CGVectorMake(vector1.x + vector2.x, vector1.y + vector2.y, vector1.z + vector2.z));
}

+ (CGVector) sub:(CGVector)vector1 vector:(CGVector)vector2 {
    return (CGVectorMake(vector1.x - vector2.x, vector1.y - vector2.y, vector1.z - vector2.z));
}

+ (CGVector) mul:(CGVector)vector1 vector:(CGVector)vector2 {
    return (CGVectorMake(vector1.x * vector2.x, vector1.y * vector2.y, vector1.z * vector2.z));
}

+ (CGVector) div:(CGVector)vector1 vector:(CGVector)vector2 {
    return (CGVectorMake(vector1.x / vector2.x, vector1.y / vector2.y, vector1.z / vector2.z));
}

+ (CGVector) cross:(CGVector)vector1 vector:(CGVector)vector2 {
    return (CGVectorMake(
                vector1.y * vector2.z - vector1.z * vector2.y,
                -vector1.x * vector2.z + vector1.z * vector2.x,
                vector1.x * vector2.y - vector1.y * vector2.x
                ));
}

+ (CGFloat) dot:(CGVector)vector1 vector:(CGVector)vector2  {
    return (vector1.x * vector2.x + vector1.y + vector2.y + vector1.z * vector2.z);
}

+ (CGFloat) scalarTripleProduct:(CGVector)vector1:(CGVector)vector2 vector:(CGVector)vector3 {
    return (
               (vector1.x * (vector2.y * vector3.z - vector2.z * vector3.y)) +
               (vector1.y * (-vector2.x * vector3.z + vector2.z * vector3.x)) +
               (vector1.z * (vector2.x * vector3.y - vector2.y * vector3.x))
               );
}

@end
