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
module boxed.integers;

import boxed.templates;

/**
 *  Boxed byte value.
 */
class BoxedByte : Boxed!byte
{
    /**
     *  Ctor.
     */
    this(byte value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 * Boxed unsigned byte value. 
 */
class BoxedUbyte : Boxed!ubyte
{
    /**
     *  Ctor.
     */
    this(ubyte value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed short value.
 */
class BoxedShort : Boxed!short
{
    /**
     *  Ctor.
     */
    this(short value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed unsigned short value.
 */
class BoxedUshort : Boxed!ushort
{
    /**
     *  Ctor.
     */
    this(ushort value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed signed integer value.
 *  
 *  Assign operation are not supported.
 */
class BoxedInt : Boxed!int
{
    /**
     *  Ctor.
     */
    this(int value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

unittest
{
    BoxedInt bi = new BoxedInt(3);
    assert(bi + 4 == 7);
    assert(!__traits(compiles, bi += 3));
}

/**
 *  Boxed unsigned integer value.
 *  
 *  Assign operation are not supported.
 */
class BoxedUint : Boxed!uint
{
    /**
     *  Ctor.
     */
    this(uint value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed signed long value.
 *  
 *  Assign operation are not supported.
 */
class BoxedLong : Boxed!long
{
    /**
     *  Ctor.
     */
    this(long value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

/**
 *  Boxed unsigned long value.
 *  
 *  Assign operation are not supported.
 */
class BoxedUlong : Boxed!ulong
{
    /**
     *  Ctor.
     */
    this(ulong value)
    {
        super(value);
    }

    mixin BoxedAlias;
}
