serialize_manual(Car const&):
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 136
        mov     r14, rsi
        mov     rbx, rdi
        mov     word ptr [rdi], 31490
        mov     byte ptr [rdi + 2], 0
        lea     rsi, [rip + .L.str.1]
        mov     edx, 8
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        movzx   eax, byte ptr [r14]
        mov     rcx, r14
        lea     rbp, [r14 + 1]
        mov     r14d, eax
        shr     r14d
        test    al, 1
        cmovne  rbp, qword ptr [rcx + 16]
        mov     qword ptr [rsp + 104], rcx
        cmovne  r14, qword ptr [rcx + 8]
        lea     rax, [rbx + 1]
        mov     qword ptr [rsp + 24], rax
        test    r14, r14
        je      .LBB0_32
        xor     r12d, r12d
        jmp     .LBB0_3
.LBB0_14:
        lea     rsi, [rip + .L.str.6]
.LBB0_17:
        mov     edx, 2
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
.LBB0_31:
        inc     r12
        cmp     r14, r12
        je      .LBB0_32
.LBB0_3:
        movzx   r13d, byte ptr [rbp + r12]
        movzx   ecx, r13b
        lea     eax, [rcx - 8]
        cmp     eax, 26
        ja      .LBB0_4
        lea     rdx, [rip + .LJTI0_0]
        movsxd  rax, dword ptr [rdx + 4*rax]
        add     rax, rdx
        jmp     rax
.LBB0_12:
        lea     rsi, [rip + .L.str.4]
        jmp     .LBB0_17
.LBB0_4:
        lea     rsi, [rip + .L.str.3]
        cmp     ecx, 92
        je      .LBB0_17
.LBB0_5:
        cmp     r13b, 32
        jl      .LBB0_30
        movzx   eax, byte ptr [rbx]
        test    al, 1
        jne     .LBB0_18
        cmp     eax, 44
        jne     .LBB0_104
        mov     edi, 48
        mov     ecx, 22
        mov     rax, qword ptr [rsp + 24]
        mov     qword ptr [rsp + 8], rax
        jmp     .LBB0_23
.LBB0_10:
        lea     rsi, [rip + .L.str.2]
        jmp     .LBB0_17
.LBB0_13:
        lea     rsi, [rip + .L.str.5]
        jmp     .LBB0_17
.LBB0_16:
        lea     rsi, [rip + .L.str.8]
        jmp     .LBB0_17
.LBB0_15:
        lea     rsi, [rip + .L.str.7]
        jmp     .LBB0_17
.LBB0_30:
        mov     esi, 7
        lea     r15, [rsp + 32]
        mov     rdi, r15
        lea     rdx, [rip + .L.str.9]
        xor     eax, eax
        call    snprintf@PLT
        mov     rdi, r15
        call    strlen@PLT
        mov     rdi, rbx
        mov     rsi, r15
        mov     rdx, rax
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        jmp     .LBB0_31
.LBB0_18:
        mov     rdx, qword ptr [rbx]
        mov     rax, qword ptr [rbx + 8]
        and     rdx, -2
        lea     rcx, [rdx - 1]
        mov     r15, qword ptr [rbx + 16]
        cmp     rax, rcx
        jne     .LBB0_19
        mov     qword ptr [rsp + 16], rdx
        mov     qword ptr [rsp + 8], r15
        mov     rdi, -9
        movabs  rax, 9223372036854775795
        cmp     rcx, rax
        jae     .LBB0_21
        lea     rax, [rcx + rcx]
        or      rax, 7
        lea     rdi, [rax + 1]
        cmp     rax, 23
        mov     eax, 26
        cmove   rdi, rax
        cmp     rcx, 12
        mov     eax, 23
        cmovb   rdi, rax
.LBB0_23:
        mov     qword ptr [rsp], rcx
        lea     rax, [rcx + 1]
        mov     qword ptr [rsp + 16], rax
        jmp     .LBB0_24
.LBB0_104:
        mov     ecx, eax
        shr     ecx
        add     eax, 2
        mov     byte ptr [rbx], al
        mov     r15, qword ptr [rsp + 24]
        jmp     .LBB0_29
.LBB0_19:
        mov     qword ptr [rsp], rax
        jmp     .LBB0_28
.LBB0_21:
        mov     qword ptr [rsp], rcx
.LBB0_24:
        mov     qword ptr [rsp + 72], rdi
        call    operator new(unsigned long)@PLT
        mov     r15, rax
        mov     rdi, rax
        mov     rsi, qword ptr [rsp + 8]
        mov     rdx, qword ptr [rsp]
        call    memmove@PLT
        mov     rsi, qword ptr [rsp + 16]
        cmp     rsi, 23
        je      .LBB0_27
        mov     rdi, qword ptr [rsp + 8]
        call    operator delete(void*, unsigned long)@PLT
.LBB0_27:
        mov     qword ptr [rbx + 16], r15
        mov     rax, qword ptr [rsp + 72]
        or      rax, 1
        mov     qword ptr [rbx], rax
.LBB0_28:
        mov     rcx, qword ptr [rsp]
        lea     rax, [rcx + 1]
        mov     qword ptr [rbx + 8], rax
.LBB0_29:
        mov     byte ptr [r15 + rcx], r13b
        mov     byte ptr [r15 + rcx + 1], 0
        jmp     .LBB0_31
.LBB0_32:
        lea     rsi, [rip + .L.str.10]
        mov     edx, 2
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     r15, qword ptr [rsp + 104]
        lea     rsi, [rip + .L.str.11]
        mov     edx, 9
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        movzx   eax, byte ptr [r15 + 24]
        lea     r14, [r15 + 25]
        mov     ebp, eax
        shr     ebp
        test    al, 1
        cmovne  r14, qword ptr [r15 + 40]
        cmovne  rbp, qword ptr [r15 + 32]
        test    rbp, rbp
        je      .LBB0_65
        xor     r12d, r12d
        jmp     .LBB0_36
.LBB0_47:
        lea     rsi, [rip + .L.str.6]
.LBB0_50:
        mov     edx, 2
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
.LBB0_64:
        inc     r12
        cmp     rbp, r12
        je      .LBB0_65
.LBB0_36:
        movzx   r13d, byte ptr [r14 + r12]
        movzx   ecx, r13b
        lea     eax, [rcx - 8]
        cmp     eax, 26
        ja      .LBB0_37
        lea     rdx, [rip + .LJTI0_1]
        movsxd  rax, dword ptr [rdx + 4*rax]
        add     rax, rdx
        jmp     rax
.LBB0_45:
        lea     rsi, [rip + .L.str.4]
        jmp     .LBB0_50
.LBB0_37:
        lea     rsi, [rip + .L.str.3]
        cmp     ecx, 92
        je      .LBB0_50
.LBB0_38:
        cmp     r13b, 32
        jl      .LBB0_63
        movzx   eax, byte ptr [rbx]
        test    al, 1
        jne     .LBB0_51
        cmp     eax, 44
        jne     .LBB0_106
        mov     edi, 48
        mov     ecx, 22
        mov     rax, qword ptr [rsp + 24]
        mov     qword ptr [rsp + 8], rax
        jmp     .LBB0_56
.LBB0_43:
        lea     rsi, [rip + .L.str.2]
        jmp     .LBB0_50
.LBB0_46:
        lea     rsi, [rip + .L.str.5]
        jmp     .LBB0_50
.LBB0_49:
        lea     rsi, [rip + .L.str.8]
        jmp     .LBB0_50
.LBB0_48:
        lea     rsi, [rip + .L.str.7]
        jmp     .LBB0_50
.LBB0_63:
        mov     esi, 7
        lea     r15, [rsp + 32]
        mov     rdi, r15
        lea     rdx, [rip + .L.str.9]
        xor     eax, eax
        call    snprintf@PLT
        mov     rdi, r15
        call    strlen@PLT
        mov     rdi, rbx
        mov     rsi, r15
        mov     rdx, rax
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        jmp     .LBB0_64
.LBB0_51:
        mov     rdx, qword ptr [rbx]
        mov     rax, qword ptr [rbx + 8]
        and     rdx, -2
        lea     rcx, [rdx - 1]
        mov     r15, qword ptr [rbx + 16]
        cmp     rax, rcx
        jne     .LBB0_52
        mov     qword ptr [rsp + 16], rdx
        mov     qword ptr [rsp + 8], r15
        mov     rdi, -9
        movabs  rax, 9223372036854775795
        cmp     rcx, rax
        jae     .LBB0_54
        lea     rax, [rcx + rcx]
        or      rax, 7
        lea     rdi, [rax + 1]
        cmp     rax, 23
        mov     eax, 26
        cmove   rdi, rax
        cmp     rcx, 12
        mov     eax, 23
        cmovb   rdi, rax
.LBB0_56:
        mov     qword ptr [rsp], rcx
        lea     rax, [rcx + 1]
        mov     qword ptr [rsp + 16], rax
        jmp     .LBB0_57
.LBB0_106:
        mov     ecx, eax
        shr     ecx
        add     eax, 2
        mov     byte ptr [rbx], al
        mov     r15, qword ptr [rsp + 24]
        jmp     .LBB0_62
.LBB0_52:
        mov     qword ptr [rsp], rax
        jmp     .LBB0_61
.LBB0_54:
        mov     qword ptr [rsp], rcx
.LBB0_57:
        mov     qword ptr [rsp + 72], rdi
        call    operator new(unsigned long)@PLT
        mov     r15, rax
        mov     rdi, rax
        mov     rsi, qword ptr [rsp + 8]
        mov     rdx, qword ptr [rsp]
        call    memmove@PLT
        mov     rsi, qword ptr [rsp + 16]
        cmp     rsi, 23
        je      .LBB0_60
        mov     rdi, qword ptr [rsp + 8]
        call    operator delete(void*, unsigned long)@PLT
.LBB0_60:
        mov     qword ptr [rbx + 16], r15
        mov     rax, qword ptr [rsp + 72]
        or      rax, 1
        mov     qword ptr [rbx], rax
.LBB0_61:
        mov     rcx, qword ptr [rsp]
        lea     rax, [rcx + 1]
        mov     qword ptr [rbx + 8], rax
.LBB0_62:
        mov     byte ptr [r15 + rcx], r13b
        mov     byte ptr [r15 + rcx + 1], 0
        jmp     .LBB0_64
.LBB0_65:
        lea     rsi, [rip + .L.str.10]
        mov     edx, 2
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rbp, qword ptr [rsp + 104]
        mov     esi, dword ptr [rbp + 48]
        lea     rdi, [rsp + 112]
        call    std::__1::to_string(int)@PLT
        lea     rdx, [rip + .L.str.12]
        lea     rdi, [rsp + 112]
        mov     ecx, 7
        xor     esi, esi
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::insert(unsigned long, char const*, unsigned long)@PLT
        mov     rcx, qword ptr [rax + 16]
        mov     qword ptr [rsp + 96], rcx
        movups  xmm0, xmmword ptr [rax]
        movaps  xmmword ptr [rsp + 80], xmm0
        xorps   xmm0, xmm0
        movups  xmmword ptr [rax], xmm0
        mov     qword ptr [rax + 16], 0
        lea     rsi, [rip + .L.str.13]
        lea     rdi, [rsp + 80]
        mov     edx, 1
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rcx, qword ptr [rax + 16]
        mov     qword ptr [rsp + 48], rcx
        movups  xmm0, xmmword ptr [rax]
        movaps  xmmword ptr [rsp + 32], xmm0
        xorps   xmm0, xmm0
        movups  xmmword ptr [rax], xmm0
        mov     qword ptr [rax + 16], 0
        movzx   eax, byte ptr [rsp + 32]
        mov     edx, eax
        shr     edx
        test    al, 1
        lea     rsi, [rsp + 33]
        cmovne  rsi, qword ptr [rsp + 48]
        cmovne  rdx, qword ptr [rsp + 40]
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        test    byte ptr [rsp + 32], 1
        jne     .LBB0_71
        test    byte ptr [rsp + 80], 1
        jne     .LBB0_73
.LBB0_74:
        test    byte ptr [rsp + 112], 1
        je      .LBB0_76
.LBB0_75:
        mov     rsi, qword ptr [rsp + 112]
        mov     rdi, qword ptr [rsp + 128]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB0_76:
        lea     rsi, [rip + .L.str.14]
        mov     edx, 17
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rax, qword ptr [rbp + 56]
        cmp     qword ptr [rbp + 64], rax
        je      .LBB0_84
        movss   xmm0, dword ptr [rax]
        cvtss2sd        xmm0, xmm0
        lea     rdx, [rip + .L.str.15]
        lea     r15, [rsp + 32]
        mov     esi, 32
        mov     rdi, r15
        mov     al, 1
        call    snprintf@PLT
        mov     rdi, r15
        call    strlen@PLT
        mov     rdi, rbx
        mov     rsi, r15
        mov     rdx, rax
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rax, qword ptr [rbp + 64]
        sub     rax, qword ptr [rbp + 56]
        cmp     rax, 5
        jb      .LBB0_84
        mov     r14d, 1
        lea     r15, [rip + .L.str.13]
        lea     r12, [rip + .L.str.15]
        lea     r13, [rsp + 32]
.LBB0_81:
        mov     edx, 1
        mov     rdi, rbx
        mov     rsi, r15
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rax, qword ptr [rbp + 56]
        movss   xmm0, dword ptr [rax + 4*r14]
        cvtss2sd        xmm0, xmm0
        mov     esi, 32
        mov     rdi, r13
        mov     rdx, r12
        mov     al, 1
        call    snprintf@PLT
        mov     rdi, r13
        call    strlen@PLT
        mov     rdi, rbx
        mov     rsi, r13
        mov     rdx, rax
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        inc     r14
        mov     rax, qword ptr [rbp + 64]
        sub     rax, qword ptr [rbp + 56]
        sar     rax, 2
        cmp     r14, rax
        jb      .LBB0_81
.LBB0_84:
        lea     rsi, [rip + .L.str.16]
        mov     edx, 1
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        lea     rsi, [rip + .L.str.17]
        mov     edx, 1
        mov     rdi, rbx
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(char const*, unsigned long)@PLT
        mov     rax, rbx
        add     rsp, 136
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB0_71:
        mov     rsi, qword ptr [rsp + 32]
        mov     rdi, qword ptr [rsp + 48]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 80], 1
        je      .LBB0_74
.LBB0_73:
        mov     rsi, qword ptr [rsp + 80]
        mov     rdi, qword ptr [rsp + 96]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 112], 1
        jne     .LBB0_75
        jmp     .LBB0_76
        jmp     .LBB0_100
        mov     r14, rax
        test    byte ptr [rsp + 32], 1
        jne     .LBB0_91
        test    byte ptr [rsp + 80], 1
        jne     .LBB0_93
.LBB0_94:
        test    byte ptr [rsp + 112], 1
        jne     .LBB0_95
.LBB0_101:
        test    byte ptr [rbx], 1
        jne     .LBB0_102
.LBB0_103:
        mov     rdi, r14
        call    _Unwind_Resume@PLT
.LBB0_91:
        mov     rsi, qword ptr [rsp + 32]
        mov     rdi, qword ptr [rsp + 48]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 80], 1
        je      .LBB0_94
        jmp     .LBB0_93
        mov     r14, rax
        test    byte ptr [rsp + 80], 1
        je      .LBB0_94
.LBB0_93:
        mov     rsi, qword ptr [rsp + 80]
        mov     rdi, qword ptr [rsp + 96]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 112], 1
        je      .LBB0_101
        jmp     .LBB0_95
        mov     r14, rax
        test    byte ptr [rsp + 112], 1
        je      .LBB0_101
.LBB0_95:
        mov     rsi, qword ptr [rsp + 112]
        mov     rdi, qword ptr [rsp + 128]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rbx], 1
        je      .LBB0_103
        jmp     .LBB0_102
        jmp     .LBB0_100
        jmp     .LBB0_100
        jmp     .LBB0_100
        jmp     .LBB0_100
        jmp     .LBB0_100
        jmp     .LBB0_100
        jmp     .LBB0_100
.LBB0_100:
        mov     r14, rax
        test    byte ptr [rbx], 1
        je      .LBB0_103
.LBB0_102:
        mov     rsi, qword ptr [rbx]
        mov     rdi, qword ptr [rbx + 16]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        mov     rdi, r14
        call    _Unwind_Resume@PLT
.LJTI0_0:
        .long   .LBB0_12-.LJTI0_0
        .long   .LBB0_16-.LJTI0_0
        .long   .LBB0_14-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_13-.LJTI0_0
        .long   .LBB0_15-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_5-.LJTI0_0
        .long   .LBB0_10-.LJTI0_0
.LJTI0_1:
        .long   .LBB0_45-.LJTI0_1
        .long   .LBB0_49-.LJTI0_1
        .long   .LBB0_47-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_46-.LJTI0_1
        .long   .LBB0_48-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_38-.LJTI0_1
        .long   .LBB0_43-.LJTI0_1

serialize_reflection(Car const&):
        push    rbx
        sub     rsp, 32
        mov     rbx, rdi
        mov     rdi, rsp
        mov     edx, 1024
        call    simdjson::simdjson_result<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>> simdjson::fallback::builder::to_json_string<Car>(Car const&, unsigned long)
        cmp     dword ptr [rsp + 24], 0
        jne     .LBB1_1
        mov     rax, qword ptr [rsp + 16]
        mov     qword ptr [rbx + 16], rax
        movups  xmm0, xmmword ptr [rsp]
        movups  xmmword ptr [rbx], xmm0
        mov     rax, rbx
        add     rsp, 32
        pop     rbx
        ret
.LBB1_1:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        mov     ecx, dword ptr [rsp + 24]
        lea     rdx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rdx
        mov     dword ptr [rax + 8], ecx
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
        mov     rbx, rax
        test    byte ptr [rsp], 1
        je      .LBB1_6
        mov     rsi, qword ptr [rsp]
        mov     rdi, qword ptr [rsp + 16]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB1_6:
        mov     rdi, rbx
        call    _Unwind_Resume@PLT

.LCPI2_0:
        .long   0x42206666
        .long   0x421f999a
        .zero   4
        .zero   4
benchmark():
        push    rbx
        sub     rsp, 144
        mov     byte ptr [rsp + 32], 12
        mov     dword ptr [rsp + 33], 1870229332
        mov     word ptr [rsp + 37], 24948
        mov     byte ptr [rsp + 39], 0
        mov     byte ptr [rsp + 56], 10
        mov     dword ptr [rsp + 57], 1919770947
        mov     word ptr [rsp + 61], 121
        mov     dword ptr [rsp + 80], 2018
        mov     edi, 8
        call    operator new(unsigned long)@PLT
        mov     qword ptr [rsp + 88], rax
        lea     rcx, [rax + 8]
        mov     qword ptr [rsp + 104], rcx
        movsd   xmm0, qword ptr [rip + .LCPI2_0]
        movsd   qword ptr [rax], xmm0
        mov     qword ptr [rsp + 96], rcx
        lea     rdi, [rsp + 8]
        lea     rsi, [rsp + 32]
        call    serialize_manual(Car const&)
        lea     rdi, [rsp + 112]
        lea     rsi, [rsp + 32]
        mov     edx, 1024
        call    simdjson::simdjson_result<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>> simdjson::fallback::builder::to_json_string<Car>(Car const&, unsigned long)
        cmp     dword ptr [rsp + 136], 0
        jne     .LBB2_3
        mov     rsi, qword ptr [rsp + 112]
        test    sil, 1
        jne     .LBB2_8
        test    byte ptr [rsp + 8], 1
        jne     .LBB2_10
.LBB2_11:
        mov     rdi, qword ptr [rsp + 88]
        test    rdi, rdi
        je      .LBB2_13
.LBB2_12:
        mov     qword ptr [rsp + 96], rdi
        mov     rsi, qword ptr [rsp + 104]
        sub     rsi, rdi
        call    operator delete(void*, unsigned long)@PLT
.LBB2_13:
        test    byte ptr [rsp + 56], 1
        jne     .LBB2_14
        test    byte ptr [rsp + 32], 1
        jne     .LBB2_16
.LBB2_17:
        add     rsp, 144
        pop     rbx
        ret
.LBB2_8:
        mov     rdi, qword ptr [rsp + 128]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 8], 1
        je      .LBB2_11
.LBB2_10:
        mov     rsi, qword ptr [rsp + 8]
        mov     rdi, qword ptr [rsp + 24]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        mov     rdi, qword ptr [rsp + 88]
        test    rdi, rdi
        jne     .LBB2_12
        jmp     .LBB2_13
.LBB2_14:
        mov     rsi, qword ptr [rsp + 56]
        mov     rdi, qword ptr [rsp + 72]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 32], 1
        je      .LBB2_17
.LBB2_16:
        mov     rsi, qword ptr [rsp + 32]
        mov     rdi, qword ptr [rsp + 48]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        add     rsp, 144
        pop     rbx
        ret
.LBB2_3:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        mov     ecx, dword ptr [rsp + 136]
        lea     rdx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rdx
        mov     dword ptr [rax + 8], ecx
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
        mov     rbx, rax
        test    byte ptr [rsp + 112], 1
        jne     .LBB2_6
        test    byte ptr [rsp + 8], 1
        jne     .LBB2_21
.LBB2_22:
        lea     rdi, [rsp + 32]
        call    Car::~Car() [base object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume@PLT
.LBB2_6:
        mov     rsi, qword ptr [rsp + 112]
        mov     rdi, qword ptr [rsp + 128]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 8], 1
        je      .LBB2_22
        jmp     .LBB2_21
        mov     rbx, rax
        test    byte ptr [rsp + 8], 1
        je      .LBB2_22
.LBB2_21:
        mov     rsi, qword ptr [rsp + 8]
        mov     rdi, qword ptr [rsp + 24]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        lea     rdi, [rsp + 32]
        call    Car::~Car() [base object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume@PLT
        mov     rbx, rax
        lea     rdi, [rsp + 32]
        call    Car::~Car() [base object destructor]
        mov     rdi, rbx
        call    _Unwind_Resume@PLT

Car::~Car() [base object destructor]:
        push    rbx
        mov     rbx, rdi
        mov     rdi, qword ptr [rdi + 56]
        test    rdi, rdi
        je      .LBB3_2
        mov     qword ptr [rbx + 64], rdi
        mov     rsi, qword ptr [rbx + 72]
        sub     rsi, rdi
        call    operator delete(void*, unsigned long)@PLT
.LBB3_2:
        test    byte ptr [rbx + 24], 1
        je      .LBB3_4
        mov     rsi, qword ptr [rbx + 24]
        mov     rdi, qword ptr [rbx + 40]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB3_4:
        test    byte ptr [rbx], 1
        jne     .LBB3_6
        pop     rbx
        ret
.LBB3_6:
        mov     rsi, qword ptr [rbx]
        mov     rdi, qword ptr [rbx + 16]
        and     rsi, -2
        pop     rbx
        jmp     operator delete(void*, unsigned long)@PLT

__clang_call_terminate:
        push    rax
        call    __cxa_begin_catch@PLT
        call    std::terminate()@PLT

void simdjson::fallback::builder::append<Car>(simdjson::fallback::builder::string_builder&, T const&):
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        push    rax
        mov     r14, rsi
        mov     rbx, rdi
        mov     r15, qword ptr [rdi + 8]
        mov     r12, qword ptr [rdi + 16]
        lea     r13, [rdi + 8]
        cmp     r12, r15
        je      .LBB9_1
.LBB9_9:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 123
        mov     r15, qword ptr [rbx + 8]
.LBB9_10:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 6
        jb      .LBB9_11
.LBB9_19:
        mov     rax, qword ptr [rbx]
        mov     word ptr [rax + r15 + 4], 8805
        mov     dword ptr [rax + r15], 1801547042
        mov     r15, qword ptr [rbx + 8]
        add     r15, 6
        mov     qword ptr [rbx + 8], r15
.LBB9_20:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB9_21
.LBB9_32:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB9_33:
        mov     rdi, rbx
        mov     rsi, r14
        call    void simdjson::fallback::builder::atom<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB9_34
.LBB9_42:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB9_43:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 7
        jb      .LBB9_44
.LBB9_52:
        mov     rax, qword ptr [rbx]
        mov     dword ptr [rax + r15 + 3], 577529188
        mov     dword ptr [rax + r15], 1685024034
        mov     r15, qword ptr [rbx + 8]
        add     r15, 7
        mov     qword ptr [rbx + 8], r15
.LBB9_53:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB9_54
.LBB9_65:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB9_66:
        lea     rsi, [r14 + 24]
        mov     rdi, rbx
        call    void simdjson::fallback::builder::atom<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB9_67
.LBB9_75:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB9_76:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 6
        jb      .LBB9_77
.LBB9_85:
        mov     rax, qword ptr [rbx]
        mov     word ptr [rax + r15 + 4], 8818
        mov     dword ptr [rax + r15], 1634040098
        mov     r15, qword ptr [rbx + 8]
        add     r15, 6
        mov     qword ptr [rbx + 8], r15
.LBB9_86:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB9_87
.LBB9_98:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB9_99:
        mov     esi, dword ptr [r14 + 48]
        mov     rdi, rbx
        call    void simdjson::fallback::builder::atom<int, void>(simdjson::fallback::builder::string_builder&, int)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB9_100
.LBB9_108:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB9_109:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 15
        jb      .LBB9_110
.LBB9_118:
        mov     rax, qword ptr [rbx]
        movabs  rcx, 2478513018711008626
        mov     qword ptr [rax + r15 + 7], rcx
        movabs  rcx, 8246195807031227426
        mov     qword ptr [rax + r15], rcx
        mov     r15, qword ptr [rbx + 8]
        add     r15, 15
        mov     qword ptr [rbx + 8], r15
.LBB9_119:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB9_120
.LBB9_131:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB9_132:
        add     r14, 56
        mov     rdi, rbx
        mov     rsi, r14
        call    void simdjson::fallback::builder::atom<std::__1::vector<float, std::__1::allocator<float>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     rax, qword ptr [rbx + 8]
        mov     r14, qword ptr [rbx + 16]
        cmp     r14, rax
        je      .LBB9_133
.LBB9_142:
        mov     rcx, qword ptr [rbx]
        lea     rdx, [rax + 1]
        mov     qword ptr [rbx + 8], rdx
        mov     byte ptr [rcx + rax], 125
.LBB9_143:
        add     rsp, 8
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB9_1:
        cmp     r12, -1
        jne     .LBB9_2
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 6
        jae     .LBB9_19
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB9_32
        jmp     .LBB9_33
.LBB9_34:
        cmp     r12, -1
        jne     .LBB9_35
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 7
        jae     .LBB9_52
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB9_65
        jmp     .LBB9_66
.LBB9_67:
        cmp     r12, -1
        jne     .LBB9_68
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 6
        jae     .LBB9_85
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB9_98
        jmp     .LBB9_99
.LBB9_100:
        cmp     r12, -1
        jne     .LBB9_101
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 15
        jae     .LBB9_118
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB9_131
        jmp     .LBB9_132
.LBB9_133:
        cmp     r14, -1
        je      .LBB9_143
        mov     rbp, r13
        lea     rax, [r14 + r14]
        lea     r15, [r14 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_140
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_136
        mov     r13, rax
        mov     r12, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r12
        mov     rdx, r14
        call    memcpy@PLT
        mov     qword ptr [rbx], r13
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB9_138
.LBB9_21:
        cmp     r15, -1
        je      .LBB9_33
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_30
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_24
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_28
.LBB9_54:
        cmp     r15, -1
        je      .LBB9_66
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_63
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_57
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_61
.LBB9_87:
        cmp     r15, -1
        je      .LBB9_99
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_96
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_90
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_94
.LBB9_120:
        cmp     r15, -1
        je      .LBB9_132
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_129
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_123
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_127
.LBB9_11:
        cmp     r15, -7
        ja      .LBB9_20
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 6]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_18
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_14
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_16
.LBB9_44:
        cmp     r15, -8
        ja      .LBB9_53
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 7]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_51
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_47
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_49
.LBB9_77:
        cmp     r15, -7
        ja      .LBB9_86
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 6]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_84
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_80
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_82
.LBB9_110:
        cmp     r15, -16
        ja      .LBB9_119
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 15]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_117
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_113
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB9_115
.LBB9_2:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_8
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_4
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB9_6
.LBB9_35:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_41
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_37
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB9_39
.LBB9_68:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_74
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_70
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB9_72
.LBB9_101:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_107
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB9_103
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB9_105
.LBB9_136:
        xorps   xmm0, xmm0
        movups  xmmword ptr [rbp], xmm0
        mov     byte ptr [rbp + 16], 0
        mov     r12, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_138:
        test    r12, r12
        je      .LBB9_140
        mov     rdi, r12
        call    operator delete[](void*)@PLT
.LBB9_140:
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB9_143
        mov     rax, qword ptr [rbp]
        jmp     .LBB9_142
.LBB9_4:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_6:
        test    r13, r13
        je      .LBB9_8
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_8:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_9
        jmp     .LBB9_10
.LBB9_37:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_39:
        test    r13, r13
        je      .LBB9_41
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_41:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_42
        jmp     .LBB9_43
.LBB9_70:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_72:
        test    r13, r13
        je      .LBB9_74
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_74:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_75
        jmp     .LBB9_76
.LBB9_103:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_105:
        test    r13, r13
        je      .LBB9_107
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_107:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_108
        jmp     .LBB9_109
.LBB9_14:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_16:
        test    r13, r13
        je      .LBB9_18
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_18:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_19
        jmp     .LBB9_20
.LBB9_47:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_49:
        test    r13, r13
        je      .LBB9_51
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_51:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_52
        jmp     .LBB9_53
.LBB9_80:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_82:
        test    r13, r13
        je      .LBB9_84
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_84:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_85
        jmp     .LBB9_86
.LBB9_113:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_115:
        test    r13, r13
        je      .LBB9_117
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_117:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB9_118
        jmp     .LBB9_119
.LBB9_24:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_28:
        test    r13, r13
        je      .LBB9_30
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_30:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB9_33
        mov     r15, qword ptr [r13]
        jmp     .LBB9_32
.LBB9_57:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_61:
        test    r13, r13
        je      .LBB9_63
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_63:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB9_66
        mov     r15, qword ptr [r13]
        jmp     .LBB9_65
.LBB9_90:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_94:
        test    r13, r13
        je      .LBB9_96
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_96:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB9_99
        mov     r15, qword ptr [r13]
        jmp     .LBB9_98
.LBB9_123:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB9_127:
        test    r13, r13
        je      .LBB9_129
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB9_129:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB9_132
        mov     r15, qword ptr [r13]
        jmp     .LBB9_131

.LCPI10_0:
        .zero   16,34
.LCPI10_1:
        .zero   16,92
.LCPI10_2:
        .zero   16,31

.L.str.1:
        .asciz  "\"make\":\""

.L.str.2:
        .asciz  "\\\""

.L.str.3:
        .asciz  "\\\\"

.L.str.4:
        .asciz  "\\b"

.L.str.5:
        .asciz  "\\f"

.L.str.6:
        .asciz  "\\n"

.L.str.7:
        .asciz  "\\r"

.L.str.8:
        .asciz  "\\t"

.L.str.9:
        .asciz  "\\u%04x"

.L.str.10:
        .asciz  "\","

.L.str.11:
        .asciz  "\"model\":\""

.L.str.12:
        .asciz  "\"year\":"

.L.str.13:
        .asciz  ","

.L.str.14:
        .asciz  "\"tire_pressure\":["

.L.str.15:
        .asciz  "%.1f"

.L.str.16:
        .asciz  "]"

.L.str.17:
        .asciz  "}"

.L.str.20:
        .asciz  "basic_string"

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)34, (char)109, (char)97, (char)107, (char)101, (char)34, (char)0>:
        .asciz  "\"make\""

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)34, (char)109, (char)111, (char)100, (char)101, (char)108, (char)34, (char)0>:
        .asciz  "\"model\""

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)34, (char)121, (char)101, (char)97, (char)114, (char)34, (char)0>:
        .asciz  "\"year\""

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)34, (char)116, (char)105, (char)114, (char)101, (char)95, (char)112, (char)114, (char)101, (char)115, (char)115, (char)117, (char)114, (char)101, (char)34, (char)0>:
        .asciz  "\"tire_pressure\""

simdjson::fallback::builder::json_quotable_character:
        .ascii  "\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001"
        .zero   163

simdjson::fallback::builder::control_chars:
        .quad   .L.str.23
        .quad   6
        .quad   .L.str.24
        .quad   6
        .quad   .L.str.25
        .quad   6
        .quad   .L.str.26
        .quad   6
        .quad   .L.str.27
        .quad   6
        .quad   .L.str.28
        .quad   6
        .quad   .L.str.29
        .quad   6
        .quad   .L.str.30
        .quad   6
        .quad   .L.str.4
        .quad   2
        .quad   .L.str.8
        .quad   2
        .quad   .L.str.6
        .quad   2
        .quad   .L.str.31
        .quad   6
        .quad   .L.str.5
        .quad   2
        .quad   .L.str.7
        .quad   2
        .quad   .L.str.32
        .quad   6
        .quad   .L.str.33
        .quad   6
        .quad   .L.str.34
        .quad   6
        .quad   .L.str.35
        .quad   6
        .quad   .L.str.36
        .quad   6
        .quad   .L.str.37
        .quad   6
        .quad   .L.str.38
        .quad   6
        .quad   .L.str.39
        .quad   6
        .quad   .L.str.40
        .quad   6
        .quad   .L.str.41
        .quad   6
        .quad   .L.str.42
        .quad   6
        .quad   .L.str.43
        .quad   6
        .quad   .L.str.44
        .quad   6
        .quad   .L.str.45
        .quad   6
        .quad   .L.str.46
        .quad   6
        .quad   .L.str.47
        .quad   6
        .quad   .L.str.48
        .quad   6
        .quad   .L.str.49
        .quad   6

.L.str.23:
        .asciz  "\\u0000"

.L.str.24:
        .asciz  "\\u0001"

.L.str.25:
        .asciz  "\\u0002"

.L.str.26:
        .asciz  "\\u0003"

.L.str.27:
        .asciz  "\\u0004"

.L.str.28:
        .asciz  "\\u0005"

.L.str.29:
        .asciz  "\\u0006"

.L.str.30:
        .asciz  "\\u0007"

.L.str.31:
        .asciz  "\\u000b"

.L.str.32:
        .asciz  "\\u000e"

.L.str.33:
        .asciz  "\\u000f"

.L.str.34:
        .asciz  "\\u0010"

.L.str.35:
        .asciz  "\\u0011"

.L.str.36:
        .asciz  "\\u0012"

.L.str.37:
        .asciz  "\\u0013"

.L.str.38:
        .asciz  "\\u0014"

.L.str.39:
        .asciz  "\\u0015"

.L.str.40:
        .asciz  "\\u0016"

.L.str.41:
        .asciz  "\\u0017"

.L.str.42:
        .asciz  "\\u0018"

.L.str.43:
        .asciz  "\\u0019"

.L.str.44:
        .asciz  "\\u001a"

.L.str.45:
        .asciz  "\\u001b"

.L.str.46:
        .asciz  "\\u001c"

.L.str.47:
        .asciz  "\\u001d"

.L.str.48:
        .asciz  "\\u001e"

.L.str.49:
        .asciz  "\\u001f"

simdjson::fallback::builder::internal::decimal_table:
        .ascii  "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"

simdjson::fallback::builder::internal::fast_digit_count(unsigned int)::table:
        .quad   4294967296
        .quad   8589934582
        .quad   8589934582
        .quad   8589934582
        .quad   12884901788
        .quad   12884901788
        .quad   12884901788
        .quad   17179868184
        .quad   17179868184
        .quad   17179868184
        .quad   21474826480
        .quad   21474826480
        .quad   21474826480
        .quad   21474826480
        .quad   25769703776
        .quad   25769703776
        .quad   25769703776
        .quad   30063771072
        .quad   30063771072
        .quad   30063771072
        .quad   34349738368
        .quad   34349738368
        .quad   34349738368
        .quad   34349738368
        .quad   38554705664
        .quad   38554705664
        .quad   38554705664
        .quad   41949672960
        .quad   41949672960
        .quad   41949672960
        .quad   42949672960
        .quad   42949672960

typeinfo for simdjson::simdjson_error:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for simdjson::simdjson_error
        .quad   typeinfo for std::exception

typeinfo name for simdjson::simdjson_error:
        .asciz  "N8simdjson14simdjson_errorE"

vtable for simdjson::simdjson_error:
        .quad   0
        .quad   typeinfo for simdjson::simdjson_error
        .quad   std::exception::~exception() [base object destructor]
        .quad   simdjson::simdjson_error::~simdjson_error() [deleting destructor]
        .quad   simdjson::simdjson_error::what() const

.Ldebug_list_header_start0:
        .short  5
        .byte   8
        .byte   0
        .long   388
.Ldebug_list_header_end0:

DW.ref.__gxx_personality_v0:
        .quad   __gxx_personality_v0