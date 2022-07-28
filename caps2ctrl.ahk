; The MIT License (MIT)
; 
; Copyright (c) 2022 Xia Shuangxi <xiashuangxi@hotmail.com>
; 
; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:
; 
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
; 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
; SOFTWARE.

; 当此程序已经运行时，打开一个新的程序，彼此不冲突
#SingleInstance Off

; 在CapsLock按下时，执行按下Ctrl键等待CapsLock松开，当Ctrl松开时，将
; CapsLock键的状态还原。
Capslock::
Send {LControl Down}
KeyWait, CapsLock
Send (LControl Up)

if (A_PriorKey = "CapsLock")
{

    SetCapsLockState % !GetKeyState("CapsLock", "T")
}
