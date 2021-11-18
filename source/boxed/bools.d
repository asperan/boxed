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
module boxed.bools;

import boxed.templates;

/**
 *  Boxed boolean value.
 *
 *  When using this class alone, always use <object>.getValue to avoid the null-reference check.
 *  
 *  When the class is used as a boolean argument, the AliasThis kicks in.
 *  
 *  Examples:
 *  ```
 *  BoxedBool bb = new BoxedBool(false);
 *
 *  void testFalse(bool value)
 *  {
 *      assert(!value);
 *  }
 *
 *  if (bb) // null-reference check, it will always fail. Use bb.getValue in this case.
 *  {
 *      assert(false);
 *  }
 *  else
 *  {
 *      assert(true);
 *  }
 *
 *  testFalse(bb); // bb is treated as a bool, it won't fail this way.
 *  ```
 */
class BoxedBool : Boxed!bool
{
    /**
     *  Ctor.
     */
    this(bool value)
    {
        super(value);
    }

    mixin BoxedAlias;
}

unittest
{
    BoxedBool bb = new BoxedBool(false);
    assert(!bb.getValue);

    void testFalse(bool value)
    {
        assert(!value);
    }

    testFalse(bb);
}
