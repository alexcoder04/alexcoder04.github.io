---
layout: post
title:  "How to Use CGo"
date:   2022-10-23 12:02:44 +0200
tags: [languages, programming, go]
---

Go offers you the awesome ability to include C code
right into your Go project. Here I want you to show
a basic example on how to do it.

**Disclaimer:** if you just want to copy the code
(which I can understand), just look at this
[GitHub Gist](https://gist.github.com/alexcoder04/f0d6360a086a1a665fff8710298731b9):)

## Step 1: Writing C header files

Here we plan on writing just one simple greet function, which takes in a name
and formats the greeting message.

**`greet.h`:**

```c
#ifndef _GREETER_H
#define _GREETER_H

int greet(const char *name, char *out);

#endif
```

## Step 2: Writing your C code

Here we write the actual function. It writes the greeting message
at the given location and returns its length.

**`greet.c`:**

```c
#include "greet.h"
#include <stdio.h>

int greet(const char *name, char *out) {
    int n;
    n = sprintf(out, "Hello %s!", name);
    return n;
}
```

## Step 3: Writing your Go code

Note the comments above the `import "C"` line.
These are important and get processed by CGo.

**`main.go`:**

```go
package main

// #cgo CFLAGS: -g -Wall
// #include <stdlib.h>
// #include "greet.h"
import "C"
import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"unsafe"
)

// help function, unrelated to cgo
func Input(prompt string) (string, error) {
	fmt.Print(prompt)
	r := bufio.NewReader(os.Stdin)
	return r.ReadString('\n')
}

func main() {
	// do some go code (enter name)
	input, err := Input("Enter your name: ")
	if err != nil {
		return
	}

	// c variable for name
	name := C.CString(strings.TrimSpace(input))
	defer C.free(unsafe.Pointer(name))

	// c pointer for the result
	ptr := C.malloc(C.sizeof_char * 1024)
	defer C.free(unsafe.Pointer(ptr))

	// execute c code
	size := C.greet(name, (*C.char)(ptr))

	// get bytes from pointer into go variable
	b := C.GoBytes(ptr, size)

	// do some go code again
	fmt.Println(string(b))
}
```

## Step 4: Run/Compile your code

Just use `go run main.go` or `go build main.go`. You are done!
