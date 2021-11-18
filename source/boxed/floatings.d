/** 
 *  Authors: Alex 'asperan' Speranza, alex.speranza@studio.unibo.it
 *  License: 
 *  MIT License
 *  
 *  Copyright (c) 2021 Alex Speranza
 *  
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *  
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *  
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 */
module boxed.floatings;

import boxed.templates;

/**
 *  Boxed float value.
 *  
 *  Assign operation are not supported.
 */
class BoxedFloat : Boxed!float
{
    /**
     *  Ctor.
     */
    this(float value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed double value.
 *  
 *  Assign operation are not supported.
 */
class BoxedDouble : Boxed!double
{
    /**
     *  Ctor.
     */
    this(double value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed real value.
 *  
 *  Assign operation are not supported.
 */
class BoxedReal : Boxed!real
{
    /**
     *  Ctor.
     */
    this(real value)
    {
        super(value);
    }

    mixin BoxedAlias;
}
