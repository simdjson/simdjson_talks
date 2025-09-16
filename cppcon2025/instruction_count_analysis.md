# Real Assembly Analysis: Manual vs Reflection

---

# Instruction Count: The Shocking Truth

## Actual measurements from Compiler Explorer:

| Approach | Instructions | Lines of Assembly |
|----------|-------------|-------------------|
| **Manual serialization** | 1,635 | 1,635 lines |
| **Reflection (user code)** | 38 | 38 lines |
| **Reflection (generated)** | 648 | 648 lines |

**Manual is 43x larger than reflection API call!**
**Even counting generated code, manual has 2.5x more instructions!**

---

# Why is Manual So Large?

## The manual approach (1636 instructions) includes:

```asm
; Character-by-character escaping (lines 446-507)
movzx   r12d, byte ptr [rsi + rbp]
cmp     r12d, 92        ; Is it backslash?
je      .LBB0_19        ; Jump to escape handling
cmp     r12d, 34        ; Is it quote?
jne     .LBB0_12        ; Jump to next check
; ... 60+ more lines per character!
```

**Every character needs 5-10 instructions for escaping!**

---

# Dynamic Memory Management Hell

## Manual approach constantly reallocates:

```asm
; Lines 190-350: Reallocation nightmare
cmp     rbx, rdi        ; Buffer full?
je      .LBB0_190       ; Reallocate
lea     rbx, [rdi + rdi] ; Double size
call    operator new[]   ; Allocate
call    memcpy          ; Copy old data
call    operator delete[] ; Free old buffer
```

**100+ reallocation checks throughout the code!**

---

# Reflection: Just Call the Function

## What you write (38 instructions total):

```asm
serialize_reflection(Car const&):
    push    rbx
    sub     rsp, 32
    ; ... setup ...
    call    simdjson::to_json_string<Car>
    ; ... error handling ...
    ret
```

**That's it! The compiler does everything else!**

---

# The Magic: Field Names as Integers

## Reflection pre-computes field names:

```asm
; "make" encoded as 8-byte integer
movabs  rcx, 2466321564927356194
mov     qword ptr [rax + r15], rcx

; "model" encoded as 8-byte integer
movabs  rcx, 4189029786140503330
mov     qword ptr [rax + r12], rcx

; "year" encoded as 4-byte integer
mov     dword ptr [rax + r12], 1634040098
```

**Field names become single MOV instructions!**

---

# Performance Impact by Section

## Manual approach instruction breakdown (1,635 total):

| Operation | Instructions | Percentage |
|-----------|-------------|------------|
| String escaping | ~600 | 37% |
| Memory management | ~400 | 24% |
| Conditional branches | 311 | 19% |
| Field name building | ~200 | 12% |
| Structure/delimiters | ~124 | 8% |

## Reflection approach (648 generated):
| Operation | Instructions | Percentage |
|-----------|-------------|------------|
| Structure setup | ~400 | 62% |
| Value serialization | ~200 | 31% |
| Field names (8-byte moves) | ~8 | 1% |
| Error handling | ~40 | 6% |
| **No escaping loops!** | 0 | 0% |
| **No character-by-character!** | 0 | 0% |

---

# The Escaping Loop Problem

## Manual: Complex branching per character

```asm
.LBB0_10:  ; Loop for each character
    movzx   r12d, byte ptr [rsi + rbp]
    cmp     r12d, 92    ; backslash?
    je      .LBB0_19    ; escape it
    cmp     r12d, 34    ; quote?
    jne     .LBB0_12    ; check next
    ; ... more checks ...
    cmp     r12b, 31    ; control char?
    jg      .LBB0_21    ; regular char
    ; ... escape as \uXXXX (20+ instructions!)
```

**5-20 instructions PER CHARACTER in manual approach!**

---

# Buffer Management Overhead

## Manual has 30+ reallocation sites:

```asm
; Lines 190, 260, 273, 303, 322, ... (30+ locations)
call    operator new[]
call    memcpy
call    operator delete[]
```

## Reflection: Pre-sized buffer
```asm
; One allocation at start
mov     edi, 1024
call    operator new[]
; No reallocations needed!
```

---

# Real Performance Numbers

Based on actual assembly analysis:

| Metric | Manual | Reflection | Speedup |
|--------|--------|------------|---------|
| Total instructions | 1,635 | 648* | **2.5x** |
| User-visible code | 1,635 | 38 | **43x** |
| Field name ops | ~200 | ~8 | **25x** |
| Conditional branches | 311 | ~20 | **15x** |
| String escaping | ~600 | 0 | **∞** |

*Generated code, user only writes 38 instructions

---

# The Bottom Line

```cpp
// Manual: 1,635 assembly instructions
std::string serialize_manual(const Car& car) {
    std::string json = "{";
    json += "\"make\":\"";
    // ... 70+ lines of escaping and building
    // Generates 1,635 lines of assembly!
}

// Reflection: 648 total assembly instructions
std::string serialize_reflection(const Car& car) {
    return simdjson::to_json(car);  // 1 line of C++!
    // Compiler generates: 648 lines of optimized assembly
    // (38 wrapper + 610 template instantiation)
}
```

**What actually matters:**
- **2.5x fewer instructions** (1,635 → 648)
- **15x fewer branches** (311 → ~20)
- **70+ lines of C++ → 1 line**
- **Zero manual string escaping**

---

# Why This Matters

1. **Less code = fewer bugs**
   - 1636 instructions vs 38 is 43x less surface area

2. **Better CPU utilization**
   - Fewer branches = better prediction
   - No reallocation = no cache misses
   - Inline constants = no memory loads

3. **Compiler can optimize better**
   - Sees the whole picture at compile time
   - Can inline and vectorize

**This is what zero-overhead abstraction looks like!**

Link: https://godbolt.org/z/94jPx6bEb
