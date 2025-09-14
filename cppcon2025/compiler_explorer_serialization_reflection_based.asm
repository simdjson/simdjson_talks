get_from():
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 296
        mov     rbx, rdi
        mov     edi, 160
        call    operator new(unsigned long)@PLT
        mov     r14, rax
        mov     qword ptr [rsp + 40], rax
        mov     qword ptr [rsp + 24], 161
        mov     qword ptr [rsp + 32], 156
        lea     rsi, [rip + .L.str]
        mov     r15d, 156
        mov     edx, 156
        mov     rdi, rax
        call    memcpy@PLT
        mov     byte ptr [r14 + 156], 0
        xor     eax, eax
        movabs  rcx, 4294977024
.LBB0_1:
        movzx   edx, byte ptr [r14 + r15 - 1]
        cmp     rdx, 32
        ja      .LBB0_4
        bt      rcx, rdx
        jae     .LBB0_4
        inc     rax
.LBB0_4:
        cmp     edx, 32
        ja      .LBB0_22
        mov     edx, edx
        bt      rcx, rdx
        jae     .LBB0_22
        movzx   edx, byte ptr [r14 + r15 - 2]
        cmp     rdx, 32
        ja      .LBB0_9
        bt      rcx, rdx
        jae     .LBB0_9
        inc     rax
.LBB0_9:
        cmp     edx, 32
        ja      .LBB0_22
        mov     edx, edx
        bt      rcx, rdx
        jae     .LBB0_22
        movzx   edx, byte ptr [r14 + r15 - 3]
        cmp     rdx, 32
        ja      .LBB0_14
        bt      rcx, rdx
        jae     .LBB0_14
        inc     rax
.LBB0_14:
        cmp     edx, 32
        ja      .LBB0_22
        mov     edx, edx
        bt      rcx, rdx
        jae     .LBB0_22
        movzx   edx, byte ptr [r14 + r15 - 4]
        cmp     rdx, 32
        ja      .LBB0_19
        bt      rcx, rdx
        jae     .LBB0_19
        inc     rax
.LBB0_19:
        cmp     edx, 32
        ja      .LBB0_22
        mov     edx, edx
        bt      rcx, rdx
        jae     .LBB0_22
        add     r15, -4
        jne     .LBB0_1
.LBB0_22:
        cmp     rax, 63
        ja      .LBB0_23
        mov     r15d, 64
        sub     r15, rax
        lea     rdi, [rsp + 24]
        mov     rsi, r15
        mov     edx, 32
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(unsigned long, char)@PLT
        movzx   eax, byte ptr [rsp + 24]
        test    al, 1
        jne     .LBB0_28
        shr     al
        movzx   eax, al
        lea     r14, [rsp + 25]
        jmp     .LBB0_29
.LBB0_23:
        mov     eax, 156
        xor     r15d, r15d
        jmp     .LBB0_29
.LBB0_28:
        mov     rax, qword ptr [rsp + 32]
        mov     r14, qword ptr [rsp + 40]
.LBB0_29:
        mov     rcx, rax
        sub     rcx, r15
        cmp     rax, rcx
        cmovbe  rax, rcx
        mov     qword ptr [rsp + 128], r14
        mov     qword ptr [rsp + 136], rcx
        mov     qword ptr [rsp + 144], rax
        cmp     byte ptr fs:[guard variable for simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF], 0
        je      .LBB0_30
        mov     rsi, qword ptr fs:[simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF]
        test    rsi, rsi
        jne     .LBB0_34
.LBB0_32:
        mov     edi, 48
        call    operator new(unsigned long)@PLT
        mov     rsi, rax
        mov     byte ptr [rax], 0
        xorps   xmm0, xmm0
        movups  xmmword ptr [rax + 8], xmm0
        mov     eax, 4294967295
        mov     qword ptr [rsi + 24], rax
        mov     qword ptr [rsi + 32], 1024
        mov     qword ptr [rsi + 40], 0
        mov     qword ptr fs:[simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF], rsi
.LBB0_34:
        mov     rax, qword ptr [rsp + 144]
        mov     qword ptr [rsp + 16], rax
        movups  xmm0, xmmword ptr [rsp + 128]
        movups  xmmword ptr [rsp], xmm0
        lea     rdi, [rsp + 224]
        call    simdjson::convert::internal::auto_parser<simdjson::fallback::ondemand::parser*>::auto_parser(simdjson::fallback::ondemand::parser&, simdjson::padded_string_view) requires std::is_pointer_v<T> [base object constructor]
        cmp     dword ptr [rsp + 288], 0
        jne     .LBB0_35
        lea     rdi, [rsp + 232]
        xorps   xmm0, xmm0
        movups  xmmword ptr [rsp + 104], xmm0
        mov     qword ptr [rsp + 120], 0
        movaps  xmmword ptr [rsp + 48], xmm0
        movaps  xmmword ptr [rsp + 64], xmm0
        movaps  xmmword ptr [rsp + 80], xmm0
        mov     dword ptr [rsp + 96], 0
        lea     rsi, [rsp + 48]
        call    simdjson::error_code simdjson::tag_invoke<Car, simdjson::fallback::ondemand::document>(simdjson::deserialize_tag, simdjson::fallback::ondemand::document&, T&)
        mov     ebp, eax
        test    eax, eax
        je      .LBB0_38
        xorps   xmm0, xmm0
        movaps  xmmword ptr [rsp + 160], xmm0
        movaps  xmmword ptr [rsp + 144], xmm0
        movaps  xmmword ptr [rsp + 128], xmm0
        mov     dword ptr [rsp + 176], 0
        mov     qword ptr [rsp + 184], 0
        mov     rdi, qword ptr [rsp + 104]
        movaps  xmmword ptr [rsp + 192], xmm0
        mov     dword ptr [rsp + 208], ebp
        test    rdi, rdi
        je      .LBB0_41
        mov     qword ptr [rsp + 112], rdi
        mov     rsi, qword ptr [rsp + 120]
        sub     rsi, rdi
        call    operator delete(void*, unsigned long)@PLT
.LBB0_41:
        xor     r14d, r14d
        xor     r15d, r15d
        xor     r12d, r12d
        xor     r13d, r13d
        test    byte ptr [rsp + 72], 1
        je      .LBB0_44
.LBB0_43:
        mov     rsi, qword ptr [rsp + 72]
        mov     rdi, qword ptr [rsp + 88]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB0_44:
        test    byte ptr [rsp + 48], 1
        jne     .LBB0_45
        test    ebp, ebp
        jne     .LBB0_47
.LBB0_50:
        mov     rax, qword ptr [rsp + 144]
        mov     qword ptr [rbx + 16], rax
        movaps  xmm0, xmmword ptr [rsp + 128]
        movups  xmmword ptr [rbx], xmm0
        movups  xmm0, xmmword ptr [rsp + 152]
        movups  xmmword ptr [rbx + 24], xmm0
        mov     rax, qword ptr [rsp + 168]
        mov     qword ptr [rbx + 40], rax
        mov     dword ptr [rbx + 48], r12d
        mov     qword ptr [rbx + 56], r13
        mov     qword ptr [rbx + 64], r15
        mov     qword ptr [rbx + 72], r14
        test    byte ptr [rsp + 24], 1
        je      .LBB0_52
        mov     rsi, qword ptr [rsp + 24]
        mov     rdi, qword ptr [rsp + 40]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB0_52:
        mov     rax, rbx
        add     rsp, 296
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB0_45:
        mov     rsi, qword ptr [rsp + 48]
        mov     rdi, qword ptr [rsp + 64]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    ebp, ebp
        je      .LBB0_50
.LBB0_47:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        lea     rcx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rcx
        mov     dword ptr [rax + 8], ebp
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
.LBB0_38:
        lea     rax, [rsp + 72]
        mov     rcx, qword ptr [rsp + 64]
        mov     qword ptr [rsp + 144], rcx
        movaps  xmm0, xmmword ptr [rsp + 48]
        movaps  xmmword ptr [rsp + 128], xmm0
        xorps   xmm1, xmm1
        movaps  xmmword ptr [rsp + 48], xmm1
        mov     qword ptr [rsp + 64], 0
        mov     rcx, qword ptr [rax + 16]
        mov     qword ptr [rsp + 168], rcx
        movups  xmm0, xmmword ptr [rax]
        movups  xmmword ptr [rsp + 152], xmm0
        movups  xmmword ptr [rax], xmm1
        mov     qword ptr [rax + 16], 0
        mov     r12d, dword ptr [rsp + 96]
        mov     dword ptr [rsp + 176], r12d
        mov     r13, qword ptr [rsp + 104]
        mov     qword ptr [rsp + 184], r13
        mov     r15, qword ptr [rsp + 112]
        mov     r14, qword ptr [rsp + 120]
        movups  xmmword ptr [rax + 32], xmm1
        mov     qword ptr [rax + 48], 0
        mov     qword ptr [rsp + 192], r15
        mov     qword ptr [rsp + 200], r14
        mov     dword ptr [rsp + 208], 0
        test    byte ptr [rsp + 72], 1
        jne     .LBB0_43
        jmp     .LBB0_44
.LBB0_30:
        mov     rax, qword ptr fs:[0]
        lea     rsi, [rax + simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF]
        lea     rdi, [rip + std::__1::unique_ptr<simdjson::fallback::ondemand::parser, std::__1::default_delete<simdjson::fallback::ondemand::parser>>::~unique_ptr[abi:ne210000]()]
        lea     rdx, [rip + __dso_handle]
        call    __cxa_thread_atexit@PLT
        mov     byte ptr fs:[guard variable for simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF], 1
        mov     rsi, qword ptr fs:[simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance@TPOFF]
        test    rsi, rsi
        jne     .LBB0_34
        jmp     .LBB0_32
.LBB0_35:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        mov     ecx, dword ptr [rsp + 288]
        lea     rdx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rdx
        mov     dword ptr [rax + 8], ecx
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rbx, rax
        lea     rdi, [rsp + 128]
        call    std::__1::pair<Car, simdjson::error_code>::~pair() [base object destructor]
        jmp     .LBB0_54
        mov     rbx, rax
.LBB0_54:
        test    byte ptr [rsp + 24], 1
        je      .LBB0_56
        mov     rsi, qword ptr [rsp + 24]
        mov     rdi, qword ptr [rsp + 40]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
.LBB0_56:
        mov     rdi, rbx
        call    _Unwind_Resume@PLT

make_string(Car const&):
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

get_standard():
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 312
        mov     edi, 160
        call    operator new(unsigned long)@PLT
        mov     rbx, rax
        mov     qword ptr [rsp + 72], rax
        mov     qword ptr [rsp + 56], 161
        mov     qword ptr [rsp + 64], 156
        lea     rsi, [rip + .L.str]
        mov     r15d, 156
        mov     edx, 156
        mov     rdi, rax
        call    memcpy@PLT
        mov     byte ptr [rbx + 156], 0
        mov     byte ptr [rsp + 8], 0
        lea     r14, [rsp + 16]
        xorps   xmm0, xmm0
        movups  xmmword ptr [rsp + 16], xmm0
        mov     eax, 4294967295
        mov     qword ptr [rsp + 32], rax
        mov     qword ptr [rsp + 40], 1024
        mov     qword ptr [rsp + 48], 0
        xor     eax, eax
        movabs  r13, 4294977024
.LBB2_1:
        movzx   ecx, byte ptr [rbx + r15 - 1]
        cmp     rcx, 32
        ja      .LBB2_4
        bt      r13, rcx
        jae     .LBB2_4
        inc     rax
.LBB2_4:
        cmp     ecx, 32
        ja      .LBB2_22
        mov     ecx, ecx
        bt      r13, rcx
        jae     .LBB2_22
        movzx   ecx, byte ptr [rbx + r15 - 2]
        cmp     rcx, 32
        ja      .LBB2_9
        bt      r13, rcx
        jae     .LBB2_9
        inc     rax
.LBB2_9:
        cmp     ecx, 32
        ja      .LBB2_22
        mov     ecx, ecx
        bt      r13, rcx
        jae     .LBB2_22
        movzx   ecx, byte ptr [rbx + r15 - 3]
        cmp     rcx, 32
        ja      .LBB2_14
        bt      r13, rcx
        jae     .LBB2_14
        inc     rax
.LBB2_14:
        cmp     ecx, 32
        ja      .LBB2_22
        mov     ecx, ecx
        bt      r13, rcx
        jae     .LBB2_22
        movzx   ecx, byte ptr [rbx + r15 - 4]
        cmp     rcx, 32
        ja      .LBB2_19
        bt      r13, rcx
        jae     .LBB2_19
        inc     rax
.LBB2_19:
        cmp     ecx, 32
        ja      .LBB2_22
        mov     ecx, ecx
        bt      r13, rcx
        jae     .LBB2_22
        add     r15, -4
        jne     .LBB2_1
.LBB2_22:
        cmp     rax, 63
        ja      .LBB2_23
        mov     r12d, 64
        sub     r12, rax
        lea     rdi, [rsp + 56]
        mov     rsi, r12
        mov     edx, 32
        call    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>::append(unsigned long, char)@PLT
        movzx   ecx, byte ptr [rsp + 56]
        mov     rax, qword ptr [rsp + 72]
        test    cl, 1
        jne     .LBB2_28
        shr     cl
        movzx   edx, cl
        mov     cl, 1
        lea     rbx, [rsp + 57]
        jmp     .LBB2_29
.LBB2_23:
        mov     edx, 156
        xor     ecx, ecx
        mov     rax, rbx
        xor     r12d, r12d
.LBB2_29:
        mov     r15, rdx
        sub     r15, r12
        xor     esi, esi
        sub     rdx, r15
        cmovae  rsi, rdx
        cmp     rsi, 63
        ja      .LBB2_34
        mov     edi, 64
        sub     rdi, rsi
        mov     ebp, 27
        mov     rdx, r15
        sub     rdx, rdi
        jb      .LBB2_51
.LBB2_31:
        movzx   esi, byte ptr [rbx + rdx]
        cmp     rsi, 32
        ja      .LBB2_51
        bt      r13, rsi
        jae     .LBB2_51
        inc     rdx
        cmp     rdx, r15
        jb      .LBB2_31
.LBB2_34:
        cmp     r15, 3
        jb      .LBB2_37
        movzx   edx, word ptr [rbx]
        xor     edx, 48111
        movzx   esi, byte ptr [rbx + 2]
        xor     esi, 191
        or      si, dx
        jne     .LBB2_37
        lea     rdx, [rsp + 60]
        add     rax, 3
        test    cl, cl
        cmovne  rax, rdx
        add     r15, -3
        mov     rbx, rax
.LBB2_37:
        mov     rax, qword ptr [rsp + 24]
        mov     r13, qword ptr [rsp + 48]
        cmp     rax, r15
        setae   cl
        test    r13, r13
        setne   dl
        test    cl, dl
        je      .LBB2_38
.LBB2_49:
        mov     rdi, qword ptr [rsp + 16]
        mov     rax, qword ptr [rdi]
        mov     rsi, rbx
        mov     rdx, r15
        xor     ecx, ecx
        call    qword ptr [rax + 8]
        test    eax, eax
        jne     .LBB2_50
        mov     rax, qword ptr [rsp + 16]
        mov     rcx, qword ptr [rsp + 48]
        mov     rax, qword ptr [rax + 16]
        mov     qword ptr [rsp + 256], rbx
        mov     qword ptr [rsp + 264], rax
        lea     rdx, [rsp + 8]
        mov     qword ptr [rsp + 272], rdx
        mov     qword ptr [rsp + 280], rcx
        movabs  rcx, 4294967296
        mov     qword ptr [rsp + 288], rcx
        mov     qword ptr [rsp + 296], rax
        mov     byte ptr [rsp + 304], 0
        xorps   xmm0, xmm0
        movups  xmmword ptr [rsp + 136], xmm0
        mov     qword ptr [rsp + 152], 0
        movaps  xmmword ptr [rsp + 80], xmm0
        movaps  xmmword ptr [rsp + 96], xmm0
        movaps  xmmword ptr [rsp + 112], xmm0
        mov     dword ptr [rsp + 128], 0
        lea     rdi, [rsp + 256]
        lea     rsi, [rsp + 80]
        call    simdjson::error_code simdjson::tag_invoke<Car, simdjson::fallback::ondemand::document>(simdjson::deserialize_tag, simdjson::fallback::ondemand::document&, T&)
        mov     ebx, eax
        test    eax, eax
        jne     .LBB2_55
        lea     rax, [rsp + 104]
        mov     rcx, qword ptr [rsp + 96]
        mov     qword ptr [rsp + 176], rcx
        movaps  xmm0, xmmword ptr [rsp + 80]
        movaps  xmmword ptr [rsp + 160], xmm0
        xorps   xmm1, xmm1
        movaps  xmmword ptr [rsp + 80], xmm1
        mov     qword ptr [rsp + 96], 0
        mov     rcx, qword ptr [rax + 16]
        mov     qword ptr [rsp + 200], rcx
        movups  xmm0, xmmword ptr [rax]
        movups  xmmword ptr [rsp + 184], xmm0
        movups  xmmword ptr [rax], xmm1
        mov     qword ptr [rax + 16], 0
        mov     ecx, dword ptr [rsp + 128]
        mov     dword ptr [rsp + 208], ecx
        movaps  xmmword ptr [rsp + 224], xmm1
        mov     r15, qword ptr [rsp + 136]
        mov     qword ptr [rsp + 216], r15
        mov     r14, qword ptr [rsp + 152]
        movups  xmmword ptr [rax + 32], xmm1
        mov     qword ptr [rax + 48], 0
        mov     dword ptr [rsp + 240], 0
        test    byte ptr [rsp + 104], 1
        je      .LBB2_59
        jmp     .LBB2_58
.LBB2_38:
        mov     ebp, 1
        cmp     r15, qword ptr [rsp + 32]
        ja      .LBB2_51
        test    r13, r13
        setne   cl
        cmp     r15, rax
        sete    al
        test    al, cl
        jne     .LBB2_49
        mov     r12, qword ptr [rsp + 40]
        mov     qword ptr [rsp + 24], 0
        lea     rax, [r15 + 4*r15]
        movabs  rcx, -6148914691236517205
        mul     rcx
        shr     rdx
        lea     rdi, [rdx + 127]
        and     rdi, -64
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        mov     qword ptr [rsp + 48], rax
        test    r13, r13
        je      .LBB2_42
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB2_42:
        mov     rdi, qword ptr [rsp + 16]
        test    rdi, rdi
        jne     .LBB2_43
        call    simdjson::get_active_implementation()@PLT
        mov     rdi, qword ptr [rax]
        mov     rax, qword ptr [rdi]
        mov     rsi, r15
        mov     rdx, r12
        mov     rcx, r14
        call    qword ptr [rax + 24]
        jmp     .LBB2_47
.LBB2_28:
        mov     rdx, qword ptr [rsp + 64]
        xor     ecx, ecx
        mov     rbx, rax
        jmp     .LBB2_29
.LBB2_55:
        xorps   xmm0, xmm0
        movaps  xmmword ptr [rsp + 192], xmm0
        movaps  xmmword ptr [rsp + 176], xmm0
        movaps  xmmword ptr [rsp + 160], xmm0
        mov     dword ptr [rsp + 208], 0
        mov     rdi, qword ptr [rsp + 136]
        mov     dword ptr [rsp + 240], ebx
        xor     r14d, r14d
        mov     r15d, 0
        test    rdi, rdi
        jne     .LBB2_56
        test    byte ptr [rsp + 104], 1
        jne     .LBB2_58
.LBB2_59:
        test    byte ptr [rsp + 80], 1
        jne     .LBB2_60
.LBB2_61:
        test    ebx, ebx
        je      .LBB2_64
.LBB2_62:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        lea     rcx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rcx
        mov     dword ptr [rax + 8], ebx
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
.LBB2_56:
        mov     qword ptr [rsp + 144], rdi
        mov     rsi, qword ptr [rsp + 152]
        sub     rsi, rdi
        call    operator delete(void*, unsigned long)@PLT
        xor     r14d, r14d
        xor     r15d, r15d
        test    byte ptr [rsp + 104], 1
        je      .LBB2_59
.LBB2_58:
        mov     rsi, qword ptr [rsp + 104]
        mov     rdi, qword ptr [rsp + 120]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 80], 1
        je      .LBB2_61
.LBB2_60:
        mov     rsi, qword ptr [rsp + 80]
        mov     rdi, qword ptr [rsp + 96]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    ebx, ebx
        jne     .LBB2_62
.LBB2_64:
        xorps   xmm0, xmm0
        movups  xmmword ptr [rsp + 216], xmm0
        mov     qword ptr [rsp + 232], 0
        movaps  xmmword ptr [rsp + 160], xmm0
        movaps  xmmword ptr [rsp + 176], xmm0
        movaps  xmmword ptr [rsp + 192], xmm0
        lea     rdi, [rsp + 160]
        call    std::__1::pair<Car, simdjson::error_code>::~pair() [base object destructor]
.LBB2_43:
        mov     rax, qword ptr [rdi]
        mov     rsi, r15
        call    qword ptr [rax + 48]
        test    eax, eax
        jne     .LBB2_50
        mov     rdi, qword ptr [rsp + 16]
        mov     rax, qword ptr [rdi]
        mov     rsi, r12
        call    qword ptr [rax + 56]
.LBB2_47:
        test    eax, eax
        jne     .LBB2_50
        mov     qword ptr [rsp + 24], r15
        mov     qword ptr [rsp + 40], r12
        jmp     .LBB2_49
.LBB2_50:
        mov     ebp, eax
.LBB2_51:
        mov     edi, 16
        call    __cxa_allocate_exception@PLT
        lea     rcx, [rip + vtable for simdjson::simdjson_error+16]
        mov     qword ptr [rax], rcx
        mov     dword ptr [rax + 8], ebp
        lea     rsi, [rip + typeinfo for simdjson::simdjson_error]
        mov     rdx, qword ptr [rip + std::exception::~exception()@GOTPCREL]
        mov     rdi, rax
        call    __cxa_throw@PLT
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rbx, rax
        test    r15, r15
        jne     .LBB2_67
        test    byte ptr [rsp + 184], 1
        jne     .LBB2_69
.LBB2_70:
        test    byte ptr [rsp + 160], 1
        jne     .LBB2_71
.LBB2_72:
        mov     rdi, qword ptr [rsp + 48]
        mov     qword ptr [rsp + 48], 0
        test    rdi, rdi
        jne     .LBB2_73
.LBB2_74:
        mov     rdi, qword ptr [rsp + 16]
        mov     qword ptr [rsp + 16], 0
        test    rdi, rdi
        jne     .LBB2_75
.LBB2_76:
        test    byte ptr [rsp + 56], 1
        jne     .LBB2_77
.LBB2_78:
        mov     rdi, rbx
        call    _Unwind_Resume@PLT
.LBB2_67:
        mov     qword ptr [rsp + 224], r15
        sub     r14, r15
        mov     rdi, r15
        mov     rsi, r14
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 184], 1
        je      .LBB2_70
.LBB2_69:
        mov     rsi, qword ptr [rsp + 184]
        mov     rdi, qword ptr [rsp + 200]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        test    byte ptr [rsp + 160], 1
        je      .LBB2_72
.LBB2_71:
        mov     rsi, qword ptr [rsp + 160]
        mov     rdi, qword ptr [rsp + 176]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        mov     rdi, qword ptr [rsp + 48]
        mov     qword ptr [rsp + 48], 0
        test    rdi, rdi
        je      .LBB2_74
        jmp     .LBB2_73
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rbx, rax
        mov     rdi, qword ptr [rsp + 48]
        mov     qword ptr [rsp + 48], 0
        test    rdi, rdi
        je      .LBB2_74
.LBB2_73:
        call    operator delete[](void*)@PLT
        mov     rdi, qword ptr [rsp + 16]
        mov     qword ptr [rsp + 16], 0
        test    rdi, rdi
        je      .LBB2_76
.LBB2_75:
        mov     rax, qword ptr [rdi]
        call    qword ptr [rax + 72]
        test    byte ptr [rsp + 56], 1
        je      .LBB2_78
.LBB2_77:
        mov     rsi, qword ptr [rsp + 56]
        mov     rdi, qword ptr [rsp + 72]
        and     rsi, -2
        call    operator delete(void*, unsigned long)@PLT
        mov     rdi, rbx
        call    _Unwind_Resume@PLT

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
        je      .LBB14_1
.LBB14_9:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 123
        mov     r15, qword ptr [rbx + 8]
.LBB14_10:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 6
        jb      .LBB14_11
.LBB14_19:
        mov     rax, qword ptr [rbx]
        mov     word ptr [rax + r15 + 4], 8805
        mov     dword ptr [rax + r15], 1801547042
        mov     r15, qword ptr [rbx + 8]
        add     r15, 6
        mov     qword ptr [rbx + 8], r15
.LBB14_20:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB14_21
.LBB14_32:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB14_33:
        mov     rdi, rbx
        mov     rsi, r14
        call    void simdjson::fallback::builder::atom<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB14_34
.LBB14_42:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB14_43:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 7
        jb      .LBB14_44
.LBB14_52:
        mov     rax, qword ptr [rbx]
        mov     dword ptr [rax + r15 + 3], 577529188
        mov     dword ptr [rax + r15], 1685024034
        mov     r15, qword ptr [rbx + 8]
        add     r15, 7
        mov     qword ptr [rbx + 8], r15
.LBB14_53:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB14_54
.LBB14_65:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB14_66:
        lea     rsi, [r14 + 24]
        mov     rdi, rbx
        call    void simdjson::fallback::builder::atom<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB14_67
.LBB14_75:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB14_76:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 6
        jb      .LBB14_77
.LBB14_85:
        mov     rax, qword ptr [rbx]
        mov     word ptr [rax + r15 + 4], 8818
        mov     dword ptr [rax + r15], 1634040098
        mov     r15, qword ptr [rbx + 8]
        add     r15, 6
        mov     qword ptr [rbx + 8], r15
.LBB14_86:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB14_87
.LBB14_98:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB14_99:
        mov     esi, dword ptr [r14 + 48]
        mov     rdi, rbx
        call    void simdjson::fallback::builder::atom<int, void>(simdjson::fallback::builder::string_builder&, int)
        mov     r15, qword ptr [rbx + 8]
        mov     r12, qword ptr [rbx + 16]
        cmp     r12, r15
        je      .LBB14_100
.LBB14_108:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 44
        mov     r15, qword ptr [rbx + 8]
.LBB14_109:
        mov     r12, qword ptr [rbx + 16]
        mov     rax, r12
        sub     rax, r15
        cmp     rax, 15
        jb      .LBB14_110
.LBB14_118:
        mov     rax, qword ptr [rbx]
        movabs  rcx, 2478513018711008626
        mov     qword ptr [rax + r15 + 7], rcx
        movabs  rcx, 8246195807031227426
        mov     qword ptr [rax + r15], rcx
        mov     r15, qword ptr [rbx + 8]
        add     r15, 15
        mov     qword ptr [rbx + 8], r15
.LBB14_119:
        cmp     qword ptr [rbx + 16], r15
        je      .LBB14_120
.LBB14_131:
        mov     rax, qword ptr [rbx]
        lea     rcx, [r15 + 1]
        mov     qword ptr [rbx + 8], rcx
        mov     byte ptr [rax + r15], 58
.LBB14_132:
        add     r14, 56
        mov     rdi, rbx
        mov     rsi, r14
        call    void simdjson::fallback::builder::atom<std::__1::vector<float, std::__1::allocator<float>>>(simdjson::fallback::builder::string_builder&, T const&)
        mov     rax, qword ptr [rbx + 8]
        mov     r14, qword ptr [rbx + 16]
        cmp     r14, rax
        je      .LBB14_133
.LBB14_142:
        mov     rcx, qword ptr [rbx]
        lea     rdx, [rax + 1]
        mov     qword ptr [rbx + 8], rdx
        mov     byte ptr [rcx + rax], 125
.LBB14_143:
        add     rsp, 8
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB14_1:
        cmp     r12, -1
        jne     .LBB14_2
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 6
        jae     .LBB14_19
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB14_32
        jmp     .LBB14_33
.LBB14_34:
        cmp     r12, -1
        jne     .LBB14_35
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 7
        jae     .LBB14_52
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB14_65
        jmp     .LBB14_66
.LBB14_67:
        cmp     r12, -1
        jne     .LBB14_68
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 6
        jae     .LBB14_85
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB14_98
        jmp     .LBB14_99
.LBB14_100:
        cmp     r12, -1
        jne     .LBB14_101
        mov     rax, qword ptr [rbx + 16]
        inc     rax
        mov     r15, -1
        cmp     rax, 15
        jae     .LBB14_118
        cmp     qword ptr [rbx + 16], -1
        jne     .LBB14_131
        jmp     .LBB14_132
.LBB14_133:
        cmp     r14, -1
        je      .LBB14_143
        mov     rbp, r13
        lea     rax, [r14 + r14]
        lea     r15, [r14 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_140
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_136
        mov     r13, rax
        mov     r12, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r12
        mov     rdx, r14
        call    memcpy@PLT
        mov     qword ptr [rbx], r13
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB14_138
.LBB14_21:
        cmp     r15, -1
        je      .LBB14_33
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_30
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_24
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_28
.LBB14_54:
        cmp     r15, -1
        je      .LBB14_66
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_63
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_57
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_61
.LBB14_87:
        cmp     r15, -1
        je      .LBB14_99
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_96
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_90
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_94
.LBB14_120:
        cmp     r15, -1
        je      .LBB14_132
        mov     qword ptr [rsp], r13
        lea     rax, [r15 + r15]
        lea     r12, [r15 + 1]
        cmp     rax, r12
        cmova   r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_129
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_123
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_127
.LBB14_11:
        cmp     r15, -7
        ja      .LBB14_20
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 6]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_18
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_14
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_16
.LBB14_44:
        cmp     r15, -8
        ja      .LBB14_53
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 7]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_51
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_47
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_49
.LBB14_77:
        cmp     r15, -7
        ja      .LBB14_86
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 6]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_84
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_80
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_82
.LBB14_110:
        cmp     r15, -16
        ja      .LBB14_119
        mov     qword ptr [rsp], r13
        add     r12, r12
        lea     rax, [r15 + 15]
        cmp     r12, rax
        cmovbe  r12, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_117
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r12
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_113
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r15
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r12
        jmp     .LBB14_115
.LBB14_2:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_8
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_4
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB14_6
.LBB14_35:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_41
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_37
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB14_39
.LBB14_68:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_74
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_70
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB14_72
.LBB14_101:
        mov     qword ptr [rsp], r13
        lea     rax, [r12 + r12]
        lea     r15, [r12 + 1]
        cmp     rax, r15
        cmova   r15, rax
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_107
        mov     rsi, qword ptr [rip + std::nothrow@GOTPCREL]
        mov     rdi, r15
        call    operator new[](unsigned long, std::nothrow_t const&)@PLT
        test    rax, rax
        je      .LBB14_103
        mov     rbp, rax
        mov     r13, qword ptr [rbx]
        mov     rdi, rax
        mov     rsi, r13
        mov     rdx, r12
        call    memcpy@PLT
        mov     qword ptr [rbx], rbp
        mov     qword ptr [rbx + 16], r15
        jmp     .LBB14_105
.LBB14_136:
        xorps   xmm0, xmm0
        movups  xmmword ptr [rbp], xmm0
        mov     byte ptr [rbp + 16], 0
        mov     r12, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_138:
        test    r12, r12
        je      .LBB14_140
        mov     rdi, r12
        call    operator delete[](void*)@PLT
.LBB14_140:
        cmp     byte ptr [rbx + 24], 1
        jne     .LBB14_143
        mov     rax, qword ptr [rbp]
        jmp     .LBB14_142
.LBB14_4:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_6:
        test    r13, r13
        je      .LBB14_8
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_8:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_9
        jmp     .LBB14_10
.LBB14_37:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_39:
        test    r13, r13
        je      .LBB14_41
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_41:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_42
        jmp     .LBB14_43
.LBB14_70:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_72:
        test    r13, r13
        je      .LBB14_74
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_74:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_75
        jmp     .LBB14_76
.LBB14_103:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_105:
        test    r13, r13
        je      .LBB14_107
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_107:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_108
        jmp     .LBB14_109
.LBB14_14:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_16:
        test    r13, r13
        je      .LBB14_18
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_18:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_19
        jmp     .LBB14_20
.LBB14_47:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_49:
        test    r13, r13
        je      .LBB14_51
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_51:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_52
        jmp     .LBB14_53
.LBB14_80:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_82:
        test    r13, r13
        je      .LBB14_84
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_84:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_85
        jmp     .LBB14_86
.LBB14_113:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_115:
        test    r13, r13
        je      .LBB14_117
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_117:
        mov     r15, qword ptr [rbx + 8]
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        je      .LBB14_118
        jmp     .LBB14_119
.LBB14_24:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_28:
        test    r13, r13
        je      .LBB14_30
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_30:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB14_33
        mov     r15, qword ptr [r13]
        jmp     .LBB14_32
.LBB14_57:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_61:
        test    r13, r13
        je      .LBB14_63
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_63:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB14_66
        mov     r15, qword ptr [r13]
        jmp     .LBB14_65
.LBB14_90:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_94:
        test    r13, r13
        je      .LBB14_96
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_96:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB14_99
        mov     r15, qword ptr [r13]
        jmp     .LBB14_98
.LBB14_123:
        xorps   xmm0, xmm0
        mov     rax, qword ptr [rsp]
        movups  xmmword ptr [rax], xmm0
        mov     byte ptr [rax + 16], 0
        mov     r13, qword ptr [rbx]
        mov     qword ptr [rbx], 0
.LBB14_127:
        test    r13, r13
        je      .LBB14_129
        mov     rdi, r13
        call    operator delete[](void*)@PLT
.LBB14_129:
        cmp     byte ptr [rbx + 24], 1
        mov     r13, qword ptr [rsp]
        jne     .LBB14_132
        mov     r15, qword ptr [r13]
        jmp     .LBB14_131

.LCPI15_0:
        .zero   16,34
.LCPI15_1:
        .zero   16,92
.LCPI15_2:
        .zero   16,31

simdjson::error_code simdjson::tag_invoke<Car, simdjson::fallback::ondemand::document>(simdjson::deserialize_tag, simdjson::fallback::ondemand::document&, T&):
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 40
        mov     qword ptr [rsp], rsi
        mov     r9, qword ptr [rdi + 8]
        mov     rbx, qword ptr [rdi + 40]
        cmp     r9, rbx
        je      .LBB19_3
        mov     rcx, qword ptr [rdi]
        mov     edx, dword ptr [rbx]
        mov     eax, 17
        cmp     byte ptr [rcx + rdx], 123
        jne     .LBB19_384
        cmp     byte ptr [rdi + 48], 0
        je      .LBB19_5
        jmp     .LBB19_16
.LBB19_3:
        mov     rcx, qword ptr [rdi]
        mov     edx, dword ptr [r9]
        mov     eax, 17
        cmp     byte ptr [rcx + rdx], 123
        jne     .LBB19_384
        add     r9, 4
        mov     qword ptr [rdi + 8], r9
        cmp     byte ptr [rdi + 48], 0
        jne     .LBB19_16
.LBB19_5:
        mov     rax, qword ptr [rdi + 16]
        mov     rax, qword ptr [rax + 8]
        mov     edx, dword ptr [rax + 8]
        lea     esi, [rdx - 1]
        mov     r8, qword ptr [rax + 16]
        mov     eax, dword ptr [r8 + 4*rsi]
        cmp     byte ptr [rcx + rax], 125
        jne     .LBB19_15
        mov     edx, dword ptr [r8 + 4*rdx]
        cmp     byte ptr [rcx + rdx], 125
        jne     .LBB19_16
        mov     r11d, dword ptr [rbx]
        cmp     r11d, eax
        ja      .LBB19_16
        lea     r8, [rbx + 4]
        xor     edx, edx
        lea     r10, [rip + .LJTI19_0]
        jmp     .LBB19_11
.LBB19_9:
        inc     edx
.LBB19_10:
        mov     r11d, dword ptr [r8]
        add     r8, 4
        cmp     r11d, eax
        ja      .LBB19_14
.LBB19_11:
        mov     esi, r11d
        movzx   r11d, byte ptr [rcx + rsi]
        add     r11d, -91
        cmp     r11d, 34
        ja      .LBB19_10
        movsxd  rsi, dword ptr [r10 + 4*r11]
        add     rsi, r10
        jmp     rsi
.LBB19_13:
        dec     edx
        jmp     .LBB19_10
.LBB19_14:
        test    edx, edx
        je      .LBB19_16
.LBB19_15:
        mov     qword ptr [rdi + 16], 0
        mov     qword ptr [rdi + 32], 28
        mov     eax, 28
        jmp     .LBB19_384
.LBB19_16:
        mov     eax, dword ptr [r9]
        cmp     byte ptr [rcx + rax], 125
        jne     .LBB19_18
        add     r9, 4
        mov     qword ptr [rdi + 8], r9
        mov     dword ptr [rdi + 36], 0
.LBB19_18:
        lea     r14, [rbx + 4]
        mov     r10b, 1
        cmp     r9, r14
        je      .LBB19_24
        mov     eax, dword ptr [rdi + 36]
        test    eax, eax
        setle   r8b
        jle     .LBB19_25
        cmp     eax, 1
        jne     .LBB19_29
        mov     rdx, r9
.LBB19_22:
        lea     r11, [rdx + 4]
        mov     qword ptr [rdi + 8], r11
        mov     eax, dword ptr [rdx]
        movzx   eax, byte ptr [rcx + rax]
        cmp     eax, 44
        je      .LBB19_33
        cmp     eax, 125
        je      .LBB19_28
        jmp     .LBB19_106
.LBB19_24:
        mov     r11, r9
        mov     r8b, 1
        mov     rdx, r14
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_38
        jmp     .LBB19_65
.LBB19_25:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_107
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     eax, dword ptr [r14]
        cmp     byte ptr [rcx + rax], 125
        jne     .LBB19_37
        lea     r11, [rbx + 8]
        mov     qword ptr [rdi + 8], r11
        mov     rdx, r9
.LBB19_28:
        mov     dword ptr [rdi + 36], 0
        xor     r10d, r10d
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_38
        jmp     .LBB19_65
.LBB19_29:
        lea     rdx, [r9 + 4]
        mov     qword ptr [rdi + 8], rdx
        mov     esi, dword ptr [r9]
        movzx   r11d, byte ptr [rcx + rsi]
        cmp     r11d, 90
        jle     .LBB19_34
        add     r11d, -91
        cmp     r11d, 34
        ja      .LBB19_97
        lea     rsi, [rip + .LJTI19_1]
        movsxd  r9, dword ptr [rsi + 4*r11]
        add     r9, rsi
        jmp     r9
.LBB19_32:
        dec     eax
        mov     dword ptr [rdi + 36], eax
        cmp     eax, 1
        jbe     .LBB19_22
        jmp     .LBB19_98
.LBB19_33:
        xor     r8d, r8d
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_38
        jmp     .LBB19_65
.LBB19_34:
        cmp     r11d, 34
        je      .LBB19_95
        cmp     r11d, 44
        je      .LBB19_98
        cmp     r11d, 58
        je      .LBB19_98
        jmp     .LBB19_97
.LBB19_37:
        mov     r11, r14
        mov     r8b, 1
        mov     rdx, r9
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        je      .LBB19_65
.LBB19_38:
        lea     rax, [rip + .LJTI19_4]
        lea     r10, [rip + .LJTI19_3]
        jmp     .LBB19_41
.LBB19_39:
        mov     dword ptr [rdi + 36], 0
        xor     ebp, ebp
.LBB19_40:
        test    bpl, bpl
        je      .LBB19_65
.LBB19_41:
        lea     rsi, [r11 + 4]
        mov     qword ptr [rdi + 8], rsi
        mov     r12d, dword ptr [r11]
        cmp     byte ptr [rcx + r12], 34
        jne     .LBB19_106
        lea     r15, [r11 + 8]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r11 + 4]
        cmp     byte ptr [rcx + rsi], 58
        jne     .LBB19_106
        mov     dword ptr [rdi + 36], 2
        cmp     byte ptr [rcx + r12 + 5], 34
        jne     .LBB19_45
        cmp     dword ptr [rcx + r12 + 1], 1701536109
        je      .LBB19_369
.LBB19_45:
        lea     r15, [r11 + 12]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r11 + 8]
        movzx   r12d, byte ptr [rcx + rsi]
        cmp     r12d, 90
        jle     .LBB19_49
        add     r12d, -91
        cmp     r12d, 34
        ja      .LBB19_62
        movsxd  rsi, dword ptr [r10 + 4*r12]
        add     rsi, r10
        jmp     rsi
.LBB19_62:
        mov     dword ptr [rdi + 36], 1
        jmp     .LBB19_63
.LBB19_49:
        cmp     r12d, 34
        je      .LBB19_52
        cmp     r12d, 44
        je      .LBB19_54
        cmp     r12d, 58
        je      .LBB19_54
        jmp     .LBB19_62
.LBB19_52:
        mov     esi, dword ptr [r15]
        cmp     byte ptr [rcx + rsi], 58
        jne     .LBB19_62
        add     r11, 16
        mov     qword ptr [rdi + 8], r11
        mov     r15, r11
.LBB19_54:
        mov     rsi, qword ptr [r9 + 8]
        mov     r11d, dword ptr [rsi + 8]
        shl     r11, 2
        add     r11, qword ptr [rsi + 16]
        cmp     r15, r11
        jae     .LBB19_94
        mov     r12d, 2
        jmp     .LBB19_58
.LBB19_56:
        inc     r12d
        mov     dword ptr [rdi + 36], r12d
.LBB19_57:
        cmp     r15, r11
        jae     .LBB19_94
.LBB19_58:
        mov     r13, r15
        add     r15, 4
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r13]
        movzx   ebp, byte ptr [rcx + rsi]
        add     ebp, -91
        cmp     ebp, 34
        ja      .LBB19_57
        movsxd  rsi, dword ptr [rax + 4*rbp]
        add     rsi, rax
        jmp     rsi
.LBB19_60:
        cmp     r12d, 3
        lea     esi, [r12 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r12d, esi
        jge     .LBB19_57
        add     r13, 4
        mov     r15, r13
.LBB19_63:
        lea     r11, [r15 + 4]
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r15]
        movzx   r15d, byte ptr [rcx + rsi]
        mov     bpl, 1
        cmp     r15d, 44
        je      .LBB19_40
        cmp     r15d, 125
        je      .LBB19_39
        jmp     .LBB19_106
.LBB19_65:
        test    r8b, r8b
        jne     .LBB19_109
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_107
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     eax, dword ptr [r14]
        cmp     byte ptr [rcx + rax], 125
        mov     r11, r14
        jne     .LBB19_69
        lea     r11, [rbx + 8]
        mov     dword ptr [rdi + 36], 0
.LBB19_69:
        lea     rax, [rip + .LJTI19_5]
.LBB19_70:
        lea     rsi, [r11 + 4]
        mov     qword ptr [rdi + 8], rsi
        mov     r10d, dword ptr [r11]
        lea     r15, [r11 + 8]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r11 + 4]
        cmp     byte ptr [rcx + rsi], 58
        jne     .LBB19_72
        mov     dword ptr [rdi + 36], 2
        mov     r8d, 2
        jmp     .LBB19_73
.LBB19_72:
        mov     dword ptr [rdi + 32], 3
        mov     r8d, 1
.LBB19_73:
        cmp     byte ptr [rcx + r10 + 5], 34
        jne     .LBB19_75
        cmp     dword ptr [rcx + r10 + 1], 1701536109
        je      .LBB19_369
.LBB19_75:
        lea     r10, [r11 + 12]
        mov     qword ptr [rdi + 8], r10
        mov     esi, dword ptr [r11 + 8]
        movzx   ebp, byte ptr [rcx + rsi]
        cmp     ebp, 57
        jle     .LBB19_79
        cmp     ebp, 58
        je      .LBB19_83
        cmp     ebp, 91
        je      .LBB19_83
        cmp     ebp, 123
        je      .LBB19_83
        jmp     .LBB19_90
.LBB19_79:
        cmp     ebp, 34
        je      .LBB19_81
        cmp     ebp, 44
        je      .LBB19_83
        jmp     .LBB19_90
.LBB19_81:
        mov     esi, dword ptr [r10]
        cmp     byte ptr [rcx + rsi], 58
        jne     .LBB19_90
        add     r11, 16
        mov     qword ptr [rdi + 8], r11
        mov     r10, r11
.LBB19_83:
        mov     rsi, qword ptr [r9 + 8]
        mov     r11d, dword ptr [rsi + 8]
        shl     r11, 2
        add     r11, qword ptr [rsi + 16]
        jmp     .LBB19_85
.LBB19_84:
        inc     r8d
        mov     dword ptr [rdi + 36], r8d
.LBB19_85:
        cmp     r10, r11
        jae     .LBB19_94
        mov     r15, r10
        add     r10, 4
        mov     qword ptr [rdi + 8], r10
        mov     esi, dword ptr [r15]
        movzx   r12d, byte ptr [rcx + rsi]
        add     r12d, -91
        cmp     r12d, 34
        ja      .LBB19_85
        movsxd  rsi, dword ptr [rax + 4*r12]
        add     rsi, rax
        jmp     rsi
.LBB19_88:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jge     .LBB19_85
        add     r15, 4
        mov     r10, r15
        jmp     .LBB19_91
.LBB19_90:
        dec     r8d
        mov     dword ptr [rdi + 36], r8d
.LBB19_91:
        cmp     r10, rdx
        je      .LBB19_109
        lea     r11, [r10 + 4]
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r10]
        cmp     byte ptr [rcx + rsi], 125
        jne     .LBB19_70
        mov     dword ptr [rdi + 36], 0
        jmp     .LBB19_70
.LBB19_94:
        mov     dword ptr [rdi + 32], 3
        mov     eax, 3
        cmp     eax, 20
        jne     .LBB19_108
        jmp     .LBB19_109
.LBB19_95:
        mov     esi, dword ptr [rdx]
        cmp     byte ptr [rcx + rsi], 58
        jne     .LBB19_97
        add     r9, 8
        mov     qword ptr [rdi + 8], r9
        mov     rdx, r9
        jmp     .LBB19_98
.LBB19_97:
        dec     eax
        mov     dword ptr [rdi + 36], eax
        cmp     eax, 2
        jb      .LBB19_22
.LBB19_98:
        mov     rsi, qword ptr [rdi + 16]
        mov     rsi, qword ptr [rsi + 8]
        mov     r9d, dword ptr [rsi + 8]
        shl     r9, 2
        add     r9, qword ptr [rsi + 16]
        cmp     rdx, r9
        jae     .LBB19_106
        lea     r11, [rip + .LJTI19_2]
        jmp     .LBB19_102
.LBB19_100:
        inc     eax
        mov     dword ptr [rdi + 36], eax
.LBB19_101:
        cmp     rdx, r9
        jae     .LBB19_106
.LBB19_102:
        mov     r15, rdx
        add     rdx, 4
        mov     qword ptr [rdi + 8], rdx
        mov     esi, dword ptr [r15]
        movzx   r12d, byte ptr [rcx + rsi]
        add     r12d, -91
        cmp     r12d, 34
        ja      .LBB19_101
        movsxd  rsi, dword ptr [r11 + 4*r12]
        add     rsi, r11
        jmp     rsi
.LBB19_104:
        cmp     eax, 3
        lea     eax, [rax - 1]
        mov     dword ptr [rdi + 36], eax
        jge     .LBB19_101
        add     r15, 4
        mov     rdx, r15
        jmp     .LBB19_22
.LBB19_106:
        mov     qword ptr [rdi + 32], 3
        mov     qword ptr [rdi + 16], 0
        mov     eax, 3
.LBB19_107:
        cmp     eax, 20
        je      .LBB19_109
.LBB19_108:
        test    eax, eax
        jne     .LBB19_200
.LBB19_109:
        mov     r9, qword ptr [rdi + 8]
        mov     r10b, 1
        cmp     r9, r14
        je      .LBB19_115
        mov     r8d, dword ptr [rdi + 36]
        test    r8d, r8d
        setle   dl
        jle     .LBB19_116
        mov     rax, qword ptr [rdi]
        cmp     r8d, 1
        jne     .LBB19_120
        mov     rcx, r9
.LBB19_113:
        lea     r15, [rcx + 4]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [rcx]
        movzx   eax, byte ptr [rax + rsi]
        cmp     eax, 44
        je      .LBB19_124
        cmp     eax, 125
        je      .LBB19_119
        jmp     .LBB19_198
.LBB19_115:
        mov     r15, r9
        mov     dl, 1
        mov     rcx, r14
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_129
        jmp     .LBB19_156
.LBB19_116:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_200
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     rax, qword ptr [rdi]
        mov     ecx, dword ptr [r14]
        cmp     byte ptr [rax + rcx], 125
        jne     .LBB19_128
        lea     r15, [rbx + 8]
        mov     qword ptr [rdi + 8], r15
        mov     rcx, r9
.LBB19_119:
        mov     dword ptr [rdi + 36], 0
        xor     r10d, r10d
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_129
        jmp     .LBB19_156
.LBB19_120:
        lea     rcx, [r9 + 4]
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r9]
        movzx   r11d, byte ptr [rax + rsi]
        cmp     r11d, 90
        jle     .LBB19_125
        add     r11d, -91
        cmp     r11d, 34
        ja      .LBB19_189
        lea     rsi, [rip + .LJTI19_6]
        movsxd  r9, dword ptr [rsi + 4*r11]
        add     r9, rsi
        jmp     r9
.LBB19_123:
        cmp     r8d, 2
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jbe     .LBB19_113
        jmp     .LBB19_190
.LBB19_124:
        xor     edx, edx
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_129
        jmp     .LBB19_156
.LBB19_125:
        cmp     r11d, 34
        je      .LBB19_187
        cmp     r11d, 44
        je      .LBB19_190
        cmp     r11d, 58
        je      .LBB19_190
        jmp     .LBB19_189
.LBB19_128:
        mov     r15, r14
        mov     dl, 1
        mov     rcx, r9
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        je      .LBB19_156
.LBB19_129:
        mov     esi, 1701080941
        lea     r10, [rip + .LJTI19_9]
        lea     r11, [rip + .LJTI19_8]
        jmp     .LBB19_131
.LBB19_130:
        test    bpl, bpl
        je      .LBB19_156
.LBB19_131:
        lea     rax, [r15 + 4]
        mov     qword ptr [rdi + 8], rax
        mov     r13d, dword ptr [r15]
        cmp     byte ptr [r8 + r13], 34
        jne     .LBB19_198
        lea     r12, [r15 + 8]
        mov     qword ptr [rdi + 8], r12
        mov     eax, dword ptr [r15 + 4]
        cmp     byte ptr [r8 + rax], 58
        jne     .LBB19_198
        mov     dword ptr [rdi + 36], 2
        cmp     byte ptr [r8 + r13 + 6], 34
        jne     .LBB19_135
        mov     eax, dword ptr [r8 + r13 + 1]
        xor     eax, esi
        movzx   ebp, byte ptr [r8 + r13 + 5]
        xor     ebp, 108
        or      ebp, eax
        je      .LBB19_385
.LBB19_135:
        lea     r12, [r15 + 12]
        mov     qword ptr [rdi + 8], r12
        mov     eax, dword ptr [r15 + 8]
        movzx   r13d, byte ptr [r8 + rax]
        cmp     r13d, 90
        jle     .LBB19_139
        add     r13d, -91
        cmp     r13d, 34
        ja      .LBB19_152
        movsxd  rax, dword ptr [r11 + 4*r13]
        add     rax, r11
        jmp     rax
.LBB19_152:
        mov     dword ptr [rdi + 36], 1
        jmp     .LBB19_153
.LBB19_139:
        cmp     r13d, 34
        je      .LBB19_142
        cmp     r13d, 44
        je      .LBB19_144
        cmp     r13d, 58
        je      .LBB19_144
        jmp     .LBB19_152
.LBB19_142:
        mov     eax, dword ptr [r12]
        cmp     byte ptr [r8 + rax], 58
        jne     .LBB19_152
        add     r15, 16
        mov     qword ptr [rdi + 8], r15
        mov     r12, r15
.LBB19_144:
        mov     rax, qword ptr [r9 + 8]
        mov     r15d, dword ptr [rax + 8]
        shl     r15, 2
        add     r15, qword ptr [rax + 16]
        cmp     r12, r15
        jae     .LBB19_186
        mov     r13d, 2
        jmp     .LBB19_148
.LBB19_146:
        inc     r13d
        mov     dword ptr [rdi + 36], r13d
.LBB19_147:
        cmp     r12, r15
        jae     .LBB19_186
.LBB19_148:
        mov     rbp, r12
        add     r12, 4
        mov     qword ptr [rdi + 8], r12
        mov     eax, dword ptr [rbp]
        movzx   eax, byte ptr [r8 + rax]
        add     eax, -91
        cmp     eax, 34
        ja      .LBB19_147
        movsxd  rax, dword ptr [r10 + 4*rax]
        add     rax, r10
        jmp     rax
.LBB19_150:
        cmp     r13d, 3
        lea     eax, [r13 - 1]
        mov     dword ptr [rdi + 36], eax
        mov     r13d, eax
        jge     .LBB19_147
        add     rbp, 4
        mov     r12, rbp
.LBB19_153:
        lea     r15, [r12 + 4]
        mov     qword ptr [rdi + 8], r15
        mov     eax, dword ptr [r12]
        movzx   r12d, byte ptr [r8 + rax]
        mov     bpl, 1
        cmp     r12d, 44
        je      .LBB19_130
        cmp     r12d, 125
        jne     .LBB19_198
        mov     dword ptr [rdi + 36], 0
        xor     ebp, ebp
        jmp     .LBB19_130
.LBB19_156:
        test    dl, dl
        je      .LBB19_158
.LBB19_157:
        mov     eax, 20
        cmp     eax, 20
        jne     .LBB19_201
        jmp     .LBB19_202
.LBB19_158:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_200
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     eax, dword ptr [r14]
        cmp     byte ptr [r8 + rax], 125
        mov     r15, r14
        jne     .LBB19_161
        lea     r15, [rbx + 8]
        mov     dword ptr [rdi + 36], 0
.LBB19_161:
        mov     eax, 1701080941
        lea     rdx, [rip + .LJTI19_10]
.LBB19_162:
        lea     rsi, [r15 + 4]
        mov     qword ptr [rdi + 8], rsi
        mov     r11d, dword ptr [r15]
        lea     r12, [r15 + 8]
        mov     qword ptr [rdi + 8], r12
        mov     esi, dword ptr [r15 + 4]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_164
        mov     dword ptr [rdi + 36], 2
        mov     r10d, 2
        jmp     .LBB19_165
.LBB19_164:
        mov     dword ptr [rdi + 32], 3
        mov     r10d, 1
.LBB19_165:
        cmp     byte ptr [r8 + r11 + 6], 34
        jne     .LBB19_167
        mov     esi, dword ptr [r8 + r11 + 1]
        xor     esi, eax
        movzx   r11d, byte ptr [r8 + r11 + 5]
        xor     r11d, 108
        or      r11d, esi
        je      .LBB19_385
.LBB19_167:
        lea     r11, [r15 + 12]
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r15 + 8]
        movzx   ebp, byte ptr [r8 + rsi]
        cmp     ebp, 57
        jle     .LBB19_171
        cmp     ebp, 58
        je      .LBB19_175
        cmp     ebp, 91
        je      .LBB19_175
        cmp     ebp, 123
        je      .LBB19_175
        jmp     .LBB19_182
.LBB19_171:
        cmp     ebp, 34
        je      .LBB19_173
        cmp     ebp, 44
        je      .LBB19_175
        jmp     .LBB19_182
.LBB19_173:
        mov     esi, dword ptr [r11]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_182
        add     r15, 16
        mov     qword ptr [rdi + 8], r15
        mov     r11, r15
.LBB19_175:
        mov     rsi, qword ptr [r9 + 8]
        mov     r15d, dword ptr [rsi + 8]
        shl     r15, 2
        add     r15, qword ptr [rsi + 16]
        jmp     .LBB19_177
.LBB19_176:
        inc     r10d
        mov     dword ptr [rdi + 36], r10d
.LBB19_177:
        cmp     r11, r15
        jae     .LBB19_186
        mov     r12, r11
        add     r11, 4
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r12]
        movzx   esi, byte ptr [r8 + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_177
        movsxd  rsi, dword ptr [rdx + 4*rsi]
        add     rsi, rdx
        jmp     rsi
.LBB19_180:
        cmp     r10d, 3
        lea     esi, [r10 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r10d, esi
        jge     .LBB19_177
        add     r12, 4
        mov     r11, r12
        jmp     .LBB19_183
.LBB19_182:
        dec     r10d
        mov     dword ptr [rdi + 36], r10d
.LBB19_183:
        cmp     r11, rcx
        je      .LBB19_157
        lea     r15, [r11 + 4]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r11]
        cmp     byte ptr [r8 + rsi], 125
        jne     .LBB19_162
        mov     dword ptr [rdi + 36], 0
        jmp     .LBB19_162
.LBB19_186:
        mov     dword ptr [rdi + 32], 3
        jmp     .LBB19_199
.LBB19_187:
        mov     esi, dword ptr [rcx]
        cmp     byte ptr [rax + rsi], 58
        jne     .LBB19_189
        add     r9, 8
        mov     qword ptr [rdi + 8], r9
        mov     rcx, r9
        jmp     .LBB19_190
.LBB19_189:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jb      .LBB19_113
.LBB19_190:
        mov     rsi, qword ptr [rdi + 16]
        mov     rsi, qword ptr [rsi + 8]
        mov     r9d, dword ptr [rsi + 8]
        shl     r9, 2
        add     r9, qword ptr [rsi + 16]
        cmp     rcx, r9
        jae     .LBB19_198
        lea     r11, [rip + .LJTI19_7]
        jmp     .LBB19_194
.LBB19_192:
        inc     r8d
        mov     dword ptr [rdi + 36], r8d
.LBB19_193:
        cmp     rcx, r9
        jae     .LBB19_198
.LBB19_194:
        mov     r15, rcx
        add     rcx, 4
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r15]
        movzx   r12d, byte ptr [rax + rsi]
        add     r12d, -91
        cmp     r12d, 34
        ja      .LBB19_193
        movsxd  rsi, dword ptr [r11 + 4*r12]
        add     rsi, r11
        jmp     rsi
.LBB19_196:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jge     .LBB19_193
        add     r15, 4
        mov     rcx, r15
        jmp     .LBB19_113
.LBB19_198:
        mov     qword ptr [rdi + 32], 3
        mov     qword ptr [rdi + 16], 0
.LBB19_199:
        mov     eax, 3
.LBB19_200:
        cmp     eax, 20
        je      .LBB19_202
.LBB19_201:
        test    eax, eax
        jne     .LBB19_251
.LBB19_202:
        mov     r9, qword ptr [rdi + 8]
        mov     r10b, 1
        cmp     r9, r14
        je      .LBB19_208
        mov     r8d, dword ptr [rdi + 36]
        test    r8d, r8d
        setle   dl
        jle     .LBB19_209
        mov     rax, qword ptr [rdi]
        cmp     r8d, 1
        jne     .LBB19_213
        mov     rcx, r9
.LBB19_206:
        lea     r15, [rcx + 4]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [rcx]
        movzx   eax, byte ptr [rax + rsi]
        cmp     eax, 44
        je      .LBB19_217
        cmp     eax, 125
        je      .LBB19_212
        jmp     .LBB19_382
.LBB19_208:
        mov     r15, r9
        mov     dl, 1
        mov     rcx, r14
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_222
        jmp     .LBB19_249
.LBB19_209:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_251
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     rax, qword ptr [rdi]
        mov     ecx, dword ptr [r14]
        cmp     byte ptr [rax + rcx], 125
        jne     .LBB19_221
        lea     r15, [rbx + 8]
        mov     qword ptr [rdi + 8], r15
        mov     rcx, r9
.LBB19_212:
        mov     dword ptr [rdi + 36], 0
        xor     r10d, r10d
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_222
        jmp     .LBB19_249
.LBB19_213:
        lea     rcx, [r9 + 4]
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r9]
        movzx   r11d, byte ptr [rax + rsi]
        cmp     r11d, 90
        jle     .LBB19_218
        add     r11d, -91
        cmp     r11d, 34
        ja      .LBB19_300
        lea     rsi, [rip + .LJTI19_11]
        movsxd  r9, dword ptr [rsi + 4*r11]
        add     r9, rsi
        jmp     r9
.LBB19_216:
        cmp     r8d, 2
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jbe     .LBB19_206
        jmp     .LBB19_301
.LBB19_217:
        xor     edx, edx
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        jne     .LBB19_222
        jmp     .LBB19_249
.LBB19_218:
        cmp     r11d, 34
        je      .LBB19_298
        cmp     r11d, 44
        je      .LBB19_301
        cmp     r11d, 58
        je      .LBB19_301
        jmp     .LBB19_300
.LBB19_221:
        mov     r15, r14
        mov     dl, 1
        mov     rcx, r9
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        je      .LBB19_249
.LBB19_222:
        lea     rax, [rip + .LJTI19_14]
        lea     r10, [rip + .LJTI19_13]
        jmp     .LBB19_224
.LBB19_223:
        test    r11b, r11b
        je      .LBB19_249
.LBB19_224:
        lea     rsi, [r15 + 4]
        mov     qword ptr [rdi + 8], rsi
        mov     r12d, dword ptr [r15]
        cmp     byte ptr [r8 + r12], 34
        jne     .LBB19_382
        lea     r11, [r15 + 8]
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r15 + 4]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_382
        mov     dword ptr [rdi + 36], 2
        cmp     byte ptr [r8 + r12 + 5], 34
        jne     .LBB19_228
        cmp     dword ptr [r8 + r12 + 1], 1918985593
        je      .LBB19_387
.LBB19_228:
        lea     r11, [r15 + 12]
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r15 + 8]
        movzx   r12d, byte ptr [r8 + rsi]
        cmp     r12d, 90
        jle     .LBB19_232
        add     r12d, -91
        cmp     r12d, 34
        ja      .LBB19_245
        movsxd  rsi, dword ptr [r10 + 4*r12]
        add     rsi, r10
        jmp     rsi
.LBB19_245:
        mov     dword ptr [rdi + 36], 1
        jmp     .LBB19_246
.LBB19_232:
        cmp     r12d, 34
        je      .LBB19_235
        cmp     r12d, 44
        je      .LBB19_237
        cmp     r12d, 58
        je      .LBB19_237
        jmp     .LBB19_245
.LBB19_235:
        mov     esi, dword ptr [r11]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_245
        add     r15, 16
        mov     qword ptr [rdi + 8], r15
        mov     r11, r15
.LBB19_237:
        mov     rsi, qword ptr [r9 + 8]
        mov     r15d, dword ptr [rsi + 8]
        shl     r15, 2
        add     r15, qword ptr [rsi + 16]
        cmp     r11, r15
        jae     .LBB19_368
        mov     r12d, 2
        jmp     .LBB19_241
.LBB19_239:
        inc     r12d
        mov     dword ptr [rdi + 36], r12d
.LBB19_240:
        cmp     r11, r15
        jae     .LBB19_368
.LBB19_241:
        mov     r13, r11
        add     r11, 4
        mov     qword ptr [rdi + 8], r11
        mov     esi, dword ptr [r13]
        movzx   esi, byte ptr [r8 + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_240
        movsxd  rsi, dword ptr [rax + 4*rsi]
        add     rsi, rax
        jmp     rsi
.LBB19_243:
        cmp     r12d, 3
        lea     esi, [r12 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r12d, esi
        jge     .LBB19_240
        add     r13, 4
        mov     r11, r13
.LBB19_246:
        lea     r15, [r11 + 4]
        mov     qword ptr [rdi + 8], r15
        mov     esi, dword ptr [r11]
        movzx   ebp, byte ptr [r8 + rsi]
        mov     r11b, 1
        cmp     ebp, 44
        je      .LBB19_223
        cmp     ebp, 125
        jne     .LBB19_382
        mov     dword ptr [rdi + 36], 0
        xor     r11d, r11d
        jmp     .LBB19_223
.LBB19_249:
        test    dl, dl
        jne     .LBB19_252
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        je      .LBB19_267
.LBB19_251:
        cmp     eax, 20
        jne     .LBB19_384
.LBB19_252:
        mov     r9, qword ptr [rdi + 8]
        mov     r10b, 1
        cmp     r9, r14
        je      .LBB19_258
        mov     r8d, dword ptr [rdi + 36]
        test    r8d, r8d
        setle   dl
        jle     .LBB19_259
        mov     rax, qword ptr [rdi]
        cmp     r8d, 1
        jne     .LBB19_263
        mov     rcx, r9
.LBB19_256:
        lea     rbp, [rcx + 4]
        mov     qword ptr [rdi + 8], rbp
        mov     esi, dword ptr [rcx]
        movzx   eax, byte ptr [rax + rsi]
        cmp     eax, 44
        je      .LBB19_294
        cmp     eax, 125
        je      .LBB19_262
        jmp     .LBB19_382
.LBB19_258:
        mov     rbp, r9
        mov     dl, 1
        mov     rcx, r14
        jmp     .LBB19_310
.LBB19_259:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_384
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     rax, qword ptr [rdi]
        mov     ecx, dword ptr [r14]
        cmp     byte ptr [rax + rcx], 125
        jne     .LBB19_309
        lea     rbp, [rbx + 8]
        mov     qword ptr [rdi + 8], rbp
        mov     rcx, r9
.LBB19_262:
        mov     dword ptr [rdi + 36], 0
        xor     r10d, r10d
        jmp     .LBB19_310
.LBB19_263:
        lea     rcx, [r9 + 4]
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r9]
        movzx   r11d, byte ptr [rax + rsi]
        cmp     r11d, 90
        jle     .LBB19_295
        add     r11d, -91
        cmp     r11d, 34
        ja      .LBB19_373
        lea     rsi, [rip + .LJTI19_16]
        movsxd  r9, dword ptr [rsi + 4*r11]
        add     r9, rsi
        jmp     r9
.LBB19_266:
        cmp     r8d, 2
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jbe     .LBB19_256
        jmp     .LBB19_374
.LBB19_267:
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     eax, dword ptr [r14]
        cmp     byte ptr [r8 + rax], 125
        mov     r15, r14
        jne     .LBB19_269
        lea     r15, [rbx + 8]
        mov     dword ptr [rdi + 36], 0
.LBB19_269:
        lea     rax, [rip + .LJTI19_15]
.LBB19_270:
        lea     rdx, [r15 + 4]
        mov     qword ptr [rdi + 8], rdx
        mov     r10d, dword ptr [r15]
        lea     r11, [r15 + 8]
        mov     qword ptr [rdi + 8], r11
        mov     edx, dword ptr [r15 + 4]
        cmp     byte ptr [r8 + rdx], 58
        jne     .LBB19_272
        mov     dword ptr [rdi + 36], 2
        mov     edx, 2
        jmp     .LBB19_273
.LBB19_272:
        mov     dword ptr [rdi + 32], 3
        mov     edx, 1
.LBB19_273:
        cmp     byte ptr [r8 + r10 + 5], 34
        jne     .LBB19_275
        cmp     dword ptr [r8 + r10 + 1], 1918985593
        je      .LBB19_387
.LBB19_275:
        lea     r10, [r15 + 12]
        mov     qword ptr [rdi + 8], r10
        mov     esi, dword ptr [r15 + 8]
        movzx   r11d, byte ptr [r8 + rsi]
        cmp     r11d, 57
        jle     .LBB19_279
        cmp     r11d, 58
        je      .LBB19_283
        cmp     r11d, 91
        je      .LBB19_283
        cmp     r11d, 123
        je      .LBB19_283
        jmp     .LBB19_290
.LBB19_279:
        cmp     r11d, 34
        je      .LBB19_281
        cmp     r11d, 44
        je      .LBB19_283
        jmp     .LBB19_290
.LBB19_281:
        mov     esi, dword ptr [r10]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_290
        add     r15, 16
        mov     qword ptr [rdi + 8], r15
        mov     r10, r15
.LBB19_283:
        mov     rsi, qword ptr [r9 + 8]
        mov     r11d, dword ptr [rsi + 8]
        shl     r11, 2
        add     r11, qword ptr [rsi + 16]
        jmp     .LBB19_285
.LBB19_284:
        inc     edx
        mov     dword ptr [rdi + 36], edx
.LBB19_285:
        cmp     r10, r11
        jae     .LBB19_368
        mov     r15, r10
        add     r10, 4
        mov     qword ptr [rdi + 8], r10
        mov     esi, dword ptr [r15]
        movzx   esi, byte ptr [r8 + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_285
        movsxd  rsi, dword ptr [rax + 4*rsi]
        add     rsi, rax
        jmp     rsi
.LBB19_288:
        cmp     edx, 3
        lea     edx, [rdx - 1]
        mov     dword ptr [rdi + 36], edx
        jge     .LBB19_285
        add     r15, 4
        mov     r10, r15
        jmp     .LBB19_291
.LBB19_290:
        dec     edx
        mov     dword ptr [rdi + 36], edx
.LBB19_291:
        cmp     r10, rcx
        je      .LBB19_252
        lea     r15, [r10 + 4]
        mov     qword ptr [rdi + 8], r15
        mov     edx, dword ptr [r10]
        cmp     byte ptr [r8 + rdx], 125
        jne     .LBB19_270
        mov     dword ptr [rdi + 36], 0
        jmp     .LBB19_270
.LBB19_294:
        xor     edx, edx
        jmp     .LBB19_310
.LBB19_295:
        cmp     r11d, 34
        je      .LBB19_371
        cmp     r11d, 44
        je      .LBB19_374
        cmp     r11d, 58
        je      .LBB19_374
        jmp     .LBB19_373
.LBB19_298:
        mov     esi, dword ptr [rcx]
        cmp     byte ptr [rax + rsi], 58
        jne     .LBB19_300
        add     r9, 8
        mov     qword ptr [rdi + 8], r9
        mov     rcx, r9
        jmp     .LBB19_301
.LBB19_300:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jb      .LBB19_206
.LBB19_301:
        mov     rsi, qword ptr [rdi + 16]
        mov     rsi, qword ptr [rsi + 8]
        mov     r9d, dword ptr [rsi + 8]
        shl     r9, 2
        add     r9, qword ptr [rsi + 16]
        cmp     rcx, r9
        jae     .LBB19_382
        lea     r11, [rip + .LJTI19_12]
        jmp     .LBB19_305
.LBB19_303:
        inc     r8d
        mov     dword ptr [rdi + 36], r8d
.LBB19_304:
        cmp     rcx, r9
        jae     .LBB19_382
.LBB19_305:
        mov     r15, rcx
        add     rcx, 4
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r15]
        movzx   esi, byte ptr [rax + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_304
        movsxd  rsi, dword ptr [r11 + 4*rsi]
        add     rsi, r11
        jmp     rsi
.LBB19_307:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jge     .LBB19_304
        add     r15, 4
        mov     rcx, r15
        jmp     .LBB19_206
.LBB19_309:
        mov     rbp, r14
        mov     dl, 1
        mov     rcx, r9
.LBB19_310:
        mov     r8, qword ptr [rdi]
        mov     r9, qword ptr [rdi + 16]
        test    r10b, r10b
        je      .LBB19_338
        movabs  r10, 7310034283893453424
        lea     r11, [rip + .LJTI19_19]
        lea     r15, [rip + .LJTI19_18]
        jmp     .LBB19_314
.LBB19_312:
        mov     dword ptr [rdi + 36], 0
        xor     eax, eax
.LBB19_313:
        test    al, al
        je      .LBB19_338
.LBB19_314:
        lea     rax, [rbp + 4]
        mov     qword ptr [rdi + 8], rax
        mov     eax, dword ptr [rbp]
        cmp     byte ptr [r8 + rax], 34
        jne     .LBB19_382
        lea     r13, [rbp + 8]
        mov     qword ptr [rdi + 8], r13
        mov     esi, dword ptr [rbp + 4]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_382
        mov     dword ptr [rdi + 36], 2
        cmp     byte ptr [r8 + rax + 14], 34
        jne     .LBB19_318
        mov     rsi, qword ptr [r8 + rax + 1]
        movabs  r12, 7310028700201937268
        xor     rsi, r12
        mov     rax, qword ptr [r8 + rax + 6]
        xor     rax, r10
        or      rax, rsi
        je      .LBB19_396
.LBB19_318:
        lea     r12, [rbp + 12]
        mov     qword ptr [rdi + 8], r12
        mov     eax, dword ptr [rbp + 8]
        movzx   eax, byte ptr [r8 + rax]
        cmp     eax, 90
        jle     .LBB19_322
        add     eax, -91
        cmp     eax, 34
        ja      .LBB19_335
        movsxd  rax, dword ptr [r15 + 4*rax]
        add     rax, r15
        jmp     rax
.LBB19_335:
        mov     dword ptr [rdi + 36], 1
        jmp     .LBB19_336
.LBB19_322:
        cmp     eax, 34
        je      .LBB19_325
        cmp     eax, 44
        je      .LBB19_327
        cmp     eax, 58
        je      .LBB19_327
        jmp     .LBB19_335
.LBB19_325:
        mov     eax, dword ptr [r12]
        cmp     byte ptr [r8 + rax], 58
        jne     .LBB19_335
        add     rbp, 16
        mov     qword ptr [rdi + 8], rbp
        mov     r12, rbp
.LBB19_327:
        mov     rsi, qword ptr [r9 + 8]
        mov     eax, dword ptr [rsi + 8]
        shl     rax, 2
        add     rax, qword ptr [rsi + 16]
        cmp     r12, rax
        jae     .LBB19_368
        mov     ebp, 2
        jmp     .LBB19_331
.LBB19_329:
        inc     ebp
        mov     dword ptr [rdi + 36], ebp
.LBB19_330:
        cmp     r12, rax
        jae     .LBB19_368
.LBB19_331:
        mov     r13, r12
        add     r12, 4
        mov     qword ptr [rdi + 8], r12
        mov     esi, dword ptr [r13]
        movzx   esi, byte ptr [r8 + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_330
        movsxd  rsi, dword ptr [r11 + 4*rsi]
        add     rsi, r11
        jmp     rsi
.LBB19_333:
        cmp     ebp, 3
        lea     esi, [rbp - 1]
        mov     dword ptr [rdi + 36], esi
        mov     ebp, esi
        jge     .LBB19_330
        add     r13, 4
        mov     r12, r13
.LBB19_336:
        lea     rbp, [r12 + 4]
        mov     qword ptr [rdi + 8], rbp
        mov     eax, dword ptr [r12]
        movzx   r12d, byte ptr [r8 + rax]
        mov     al, 1
        cmp     r12d, 44
        je      .LBB19_313
        cmp     r12d, 125
        je      .LBB19_312
        jmp     .LBB19_382
.LBB19_338:
        test    dl, dl
        je      .LBB19_340
.LBB19_339:
        mov     eax, 20
        jmp     .LBB19_384
.LBB19_340:
        mov     eax, dword ptr [rdi + 32]
        test    eax, eax
        jne     .LBB19_384
        mov     dword ptr [rdi + 36], 1
        mov     qword ptr [rdi + 8], r14
        mov     eax, dword ptr [r14]
        cmp     byte ptr [r8 + rax], 125
        jne     .LBB19_343
        add     rbx, 8
        mov     dword ptr [rdi + 36], 0
        mov     r14, rbx
.LBB19_343:
        movabs  rax, 7310028700201937268
        movabs  rdx, 7310034283893453424
        lea     r10, [rip + .LJTI19_20]
.LBB19_344:
        lea     rsi, [r14 + 4]
        mov     qword ptr [rdi + 8], rsi
        mov     ebx, dword ptr [r14]
        lea     r13, [r14 + 8]
        mov     qword ptr [rdi + 8], r13
        mov     esi, dword ptr [r14 + 4]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_346
        mov     dword ptr [rdi + 36], 2
        mov     r11d, 2
        jmp     .LBB19_347
.LBB19_346:
        mov     dword ptr [rdi + 32], 3
        mov     r11d, 1
.LBB19_347:
        cmp     byte ptr [r8 + rbx + 14], 34
        jne     .LBB19_349
        mov     rsi, qword ptr [r8 + rbx + 1]
        xor     rsi, rax
        mov     rbx, qword ptr [r8 + rbx + 6]
        xor     rbx, rdx
        or      rbx, rsi
        je      .LBB19_396
.LBB19_349:
        lea     rbx, [r14 + 12]
        mov     qword ptr [rdi + 8], rbx
        mov     esi, dword ptr [r14 + 8]
        movzx   ebp, byte ptr [r8 + rsi]
        cmp     ebp, 57
        jle     .LBB19_353
        cmp     ebp, 58
        je      .LBB19_357
        cmp     ebp, 91
        je      .LBB19_357
        cmp     ebp, 123
        je      .LBB19_357
        jmp     .LBB19_364
.LBB19_353:
        cmp     ebp, 34
        je      .LBB19_355
        cmp     ebp, 44
        je      .LBB19_357
        jmp     .LBB19_364
.LBB19_355:
        mov     esi, dword ptr [rbx]
        cmp     byte ptr [r8 + rsi], 58
        jne     .LBB19_364
        add     r14, 16
        mov     qword ptr [rdi + 8], r14
        mov     rbx, r14
.LBB19_357:
        mov     rsi, qword ptr [r9 + 8]
        mov     r14d, dword ptr [rsi + 8]
        shl     r14, 2
        add     r14, qword ptr [rsi + 16]
        jmp     .LBB19_359
.LBB19_358:
        inc     r11d
        mov     dword ptr [rdi + 36], r11d
.LBB19_359:
        cmp     rbx, r14
        jae     .LBB19_368
        mov     r15, rbx
        add     rbx, 4
        mov     qword ptr [rdi + 8], rbx
        mov     esi, dword ptr [r15]
        movzx   esi, byte ptr [r8 + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_359
        movsxd  rsi, dword ptr [r10 + 4*rsi]
        add     rsi, r10
        jmp     rsi
.LBB19_362:
        cmp     r11d, 3
        lea     esi, [r11 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r11d, esi
        jge     .LBB19_359
        add     r15, 4
        mov     rbx, r15
        jmp     .LBB19_365
.LBB19_364:
        dec     r11d
        mov     dword ptr [rdi + 36], r11d
.LBB19_365:
        cmp     rbx, rcx
        je      .LBB19_339
        lea     r14, [rbx + 4]
        mov     qword ptr [rdi + 8], r14
        mov     esi, dword ptr [rbx]
        cmp     byte ptr [r8 + rsi], 125
        jne     .LBB19_344
        mov     dword ptr [rdi + 36], 0
        jmp     .LBB19_344
.LBB19_368:
        mov     dword ptr [rdi + 32], 3
        jmp     .LBB19_383
.LBB19_369:
        mov     r12, rdi
        mov     qword ptr [rsp + 8], rdi
        mov     dword ptr [rsp + 16], 2
        mov     qword ptr [rsp + 24], r15
        mov     dword ptr [rsp + 32], 0
        lea     rdi, [rsp + 8]
        mov     rsi, qword ptr [rsp]
        call    simdjson::error_code simdjson::tag_invoke<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, simdjson::fallback::ondemand::value>(simdjson::deserialize_tag, simdjson::fallback::ondemand::value&, T&)
        mov     rdi, r12
        cmp     eax, 20
        jne     .LBB19_108
        jmp     .LBB19_109
.LBB19_371:
        mov     esi, dword ptr [rcx]
        cmp     byte ptr [rax + rsi], 58
        jne     .LBB19_373
        add     r9, 8
        mov     qword ptr [rdi + 8], r9
        mov     rcx, r9
        jmp     .LBB19_374
.LBB19_373:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jb      .LBB19_256
.LBB19_374:
        mov     rsi, qword ptr [rdi + 16]
        mov     rsi, qword ptr [rsi + 8]
        mov     r9d, dword ptr [rsi + 8]
        shl     r9, 2
        add     r9, qword ptr [rsi + 16]
        cmp     rcx, r9
        jae     .LBB19_382
        lea     r11, [rip + .LJTI19_17]
        jmp     .LBB19_378
.LBB19_376:
        inc     r8d
        mov     dword ptr [rdi + 36], r8d
.LBB19_377:
        cmp     rcx, r9
        jae     .LBB19_382
.LBB19_378:
        mov     r15, rcx
        add     rcx, 4
        mov     qword ptr [rdi + 8], rcx
        mov     esi, dword ptr [r15]
        movzx   esi, byte ptr [rax + rsi]
        add     esi, -91
        cmp     esi, 34
        ja      .LBB19_377
        movsxd  rsi, dword ptr [r11 + 4*rsi]
        add     rsi, r11
        jmp     rsi
.LBB19_380:
        cmp     r8d, 3
        lea     esi, [r8 - 1]
        mov     dword ptr [rdi + 36], esi
        mov     r8d, esi
        jge     .LBB19_377
        add     r15, 4
        mov     rcx, r15
        jmp     .LBB19_256
.LBB19_382:
        mov     qword ptr [rdi + 32], 3
        mov     qword ptr [rdi + 16], 0
.LBB19_383:
        mov     eax, 3
.LBB19_384:
        add     rsp, 40
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB19_385:
        mov     r15, rdi
        mov     qword ptr [rsp + 8], rdi
        mov     dword ptr [rsp + 16], 2
        mov     qword ptr [rsp + 24], r12
        mov     dword ptr [rsp + 32], 0
        mov     rax, qword ptr [rsp]
        lea     rsi, [rax + 24]
        lea     rdi, [rsp + 8]
        call    simdjson::error_code simdjson::tag_invoke<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, simdjson::fallback::ondemand::value>(simdjson::deserialize_tag, simdjson::fallback::ondemand::value&, T&)
        mov     rdi, r15
        cmp     eax, 20
        jne     .LBB19_201
        jmp     .LBB19_202
.LBB19_387:
        mov     rdx, qword ptr [rdi]
        mov     r9d, dword ptr [r11]
        lea     rax, [rdx + r9]
        movzx   ecx, byte ptr [rdx + r9]
        xor     r10d, r10d
        cmp     cl, 45
        sete    r10b
        movzx   r8d, byte ptr [r10 + rax]
        lea     ebp, [r8 - 48]
        mov     eax, 17
        cmp     bpl, 9
        ja      .LBB19_384
        add     r10, r9
        lea     r15, [rdx + r10]
        inc     r15
        xor     r9d, r9d
        xor     edx, edx
.LBB19_389:
        lea     rdx, [rdx + 4*rdx]
        movzx   esi, bpl
        lea     rdx, [rsi + 2*rdx]
        movzx   r10d, byte ptr [r15 + r9]
        lea     ebp, [r10 - 48]
        inc     r9
        cmp     bpl, 10
        jb      .LBB19_389
        cmp     r9, 19
        ja      .LBB19_384
        cmp     r8b, 48
        sete    sil
        cmp     r9, 2
        setae   r8b
        mov     eax, 9
        test    sil, r8b
        jne     .LBB19_384
        lea     rax, [rip + simdjson::fallback::numberparsing::(anonymous namespace)::integer_string_finisher]
        movzx   eax, byte ptr [r10 + rax]
        test    eax, eax
        jne     .LBB19_251
        movabs  rax, 9223372036854775807
        lea     rsi, [rax + 1]
        cmp     cl, 45
        cmovne  rsi, rax
        mov     eax, 17
        cmp     rdx, rsi
        ja      .LBB19_384
        mov     r8, rdx
        neg     r8
        cmp     cl, 45
        cmovne  r8, rdx
        add     r11, 4
        mov     qword ptr [rdi + 8], r11
        mov     dword ptr [rdi + 36], 1
        movsxd  rcx, r8d
        mov     eax, 18
        cmp     rcx, r8
        jne     .LBB19_384
        mov     rax, qword ptr [rsp]
        mov     dword ptr [rax + 48], r8d
        jmp     .LBB19_252
.LBB19_396:
        mov     qword ptr [rsp + 8], rdi
        mov     dword ptr [rsp + 16], 2
        mov     qword ptr [rsp + 24], r13
        mov     dword ptr [rsp + 32], 0
        mov     rsi, qword ptr [rsp]
        add     rsi, 56
        lea     rdi, [rsp + 8]
        call    simdjson::error_code simdjson::tag_invoke<std::__1::vector<float, std::__1::allocator<float>>, simdjson::fallback::ondemand::value>(simdjson::deserialize_tag, simdjson::fallback::ondemand::value&, T&)
        jmp     .LBB19_384
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rdi, rax
        call    __clang_call_terminate
        mov     rdi, rax
        call    __clang_call_terminate
.LJTI19_0:
        .long   .LBB19_9-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_13-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_9-.LJTI19_0
        .long   .LBB19_10-.LJTI19_0
        .long   .LBB19_13-.LJTI19_0
.LJTI19_1:
        .long   .LBB19_98-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_32-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_98-.LJTI19_1
        .long   .LBB19_97-.LJTI19_1
        .long   .LBB19_32-.LJTI19_1
.LJTI19_2:
        .long   .LBB19_100-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_104-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_100-.LJTI19_2
        .long   .LBB19_101-.LJTI19_2
        .long   .LBB19_104-.LJTI19_2
.LJTI19_3:
        .long   .LBB19_54-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_54-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
        .long   .LBB19_62-.LJTI19_3
.LJTI19_4:
        .long   .LBB19_56-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_60-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_56-.LJTI19_4
        .long   .LBB19_57-.LJTI19_4
        .long   .LBB19_60-.LJTI19_4
.LJTI19_5:
        .long   .LBB19_84-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_88-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_84-.LJTI19_5
        .long   .LBB19_85-.LJTI19_5
        .long   .LBB19_88-.LJTI19_5
.LJTI19_6:
        .long   .LBB19_190-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_123-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_190-.LJTI19_6
        .long   .LBB19_189-.LJTI19_6
        .long   .LBB19_123-.LJTI19_6
.LJTI19_7:
        .long   .LBB19_192-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_196-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_192-.LJTI19_7
        .long   .LBB19_193-.LJTI19_7
        .long   .LBB19_196-.LJTI19_7
.LJTI19_8:
        .long   .LBB19_144-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_144-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
        .long   .LBB19_152-.LJTI19_8
.LJTI19_9:
        .long   .LBB19_146-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_150-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_146-.LJTI19_9
        .long   .LBB19_147-.LJTI19_9
        .long   .LBB19_150-.LJTI19_9
.LJTI19_10:
        .long   .LBB19_176-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_180-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_176-.LJTI19_10
        .long   .LBB19_177-.LJTI19_10
        .long   .LBB19_180-.LJTI19_10
.LJTI19_11:
        .long   .LBB19_301-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_216-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_301-.LJTI19_11
        .long   .LBB19_300-.LJTI19_11
        .long   .LBB19_216-.LJTI19_11
.LJTI19_12:
        .long   .LBB19_303-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_307-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_303-.LJTI19_12
        .long   .LBB19_304-.LJTI19_12
        .long   .LBB19_307-.LJTI19_12
.LJTI19_13:
        .long   .LBB19_237-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_237-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
        .long   .LBB19_245-.LJTI19_13
.LJTI19_14:
        .long   .LBB19_239-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_243-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_239-.LJTI19_14
        .long   .LBB19_240-.LJTI19_14
        .long   .LBB19_243-.LJTI19_14
.LJTI19_15:
        .long   .LBB19_284-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_288-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_284-.LJTI19_15
        .long   .LBB19_285-.LJTI19_15
        .long   .LBB19_288-.LJTI19_15
.LJTI19_16:
        .long   .LBB19_374-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_266-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_374-.LJTI19_16
        .long   .LBB19_373-.LJTI19_16
        .long   .LBB19_266-.LJTI19_16
.LJTI19_17:
        .long   .LBB19_376-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_380-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_376-.LJTI19_17
        .long   .LBB19_377-.LJTI19_17
        .long   .LBB19_380-.LJTI19_17
.LJTI19_18:
        .long   .LBB19_327-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_327-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
        .long   .LBB19_335-.LJTI19_18
.LJTI19_19:
        .long   .LBB19_329-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_333-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_329-.LJTI19_19
        .long   .LBB19_330-.LJTI19_19
        .long   .LBB19_333-.LJTI19_19
.LJTI19_20:
        .long   .LBB19_358-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_362-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_358-.LJTI19_20
        .long   .LBB19_359-.LJTI19_20
        .long   .LBB19_362-.LJTI19_20

.LJTI21_0:
        .long   .LBB21_37-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_37-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
        .long   .LBB21_32-.LJTI21_0
.LJTI21_1:
        .long   .LBB21_41-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_42-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_41-.LJTI21_1
        .long   .LBB21_38-.LJTI21_1
        .long   .LBB21_42-.LJTI21_1

.LCPI22_0:
        .quad   0x8000000000000000
.LCPI22_3:
        .quad   0x7fefffffffffffff
.LCPI22_1:
        .quad   0x8000000000000000
        .quad   0x8000000000000000
.LCPI22_2:
        .quad   0x7fffffffffffffff
        .quad   0x7fffffffffffffff

.L.str:
        .asciz  " { \"make\": \"Toyota\", \n                              \"model\": \"Camry\",  \n                            \"year\": 2018,\n        \"tire_pressure\": [ 40.1, 39.9 ] } "

.L.str.1:
        .asciz  "basic_string"

simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance:
        .zero   8

guard variable for simdjson::fallback::ondemand::parser::get_threadlocal_parser_if_exists()::parser_instance:
        .quad   0

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
        .quad   .L.str.9
        .quad   6
        .quad   .L.str.10
        .quad   6
        .quad   .L.str.11
        .quad   6
        .quad   .L.str.12
        .quad   6
        .quad   .L.str.13
        .quad   6
        .quad   .L.str.14
        .quad   6
        .quad   .L.str.15
        .quad   6
        .quad   .L.str.16
        .quad   6
        .quad   .L.str.17
        .quad   2
        .quad   .L.str.18
        .quad   2
        .quad   .L.str.19
        .quad   2
        .quad   .L.str.20
        .quad   6
        .quad   .L.str.21
        .quad   2
        .quad   .L.str.22
        .quad   2
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
        .quad   .L.str.31
        .quad   6
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

.L.str.9:
        .asciz  "\\u0000"

.L.str.10:
        .asciz  "\\u0001"

.L.str.11:
        .asciz  "\\u0002"

.L.str.12:
        .asciz  "\\u0003"

.L.str.13:
        .asciz  "\\u0004"

.L.str.14:
        .asciz  "\\u0005"

.L.str.15:
        .asciz  "\\u0006"

.L.str.16:
        .asciz  "\\u0007"

.L.str.17:
        .asciz  "\\b"

.L.str.18:
        .asciz  "\\t"

.L.str.19:
        .asciz  "\\n"

.L.str.20:
        .asciz  "\\u000b"

.L.str.21:
        .asciz  "\\f"

.L.str.22:
        .asciz  "\\r"

.L.str.23:
        .asciz  "\\u000e"

.L.str.24:
        .asciz  "\\u000f"

.L.str.25:
        .asciz  "\\u0010"

.L.str.26:
        .asciz  "\\u0011"

.L.str.27:
        .asciz  "\\u0012"

.L.str.28:
        .asciz  "\\u0013"

.L.str.29:
        .asciz  "\\u0014"

.L.str.30:
        .asciz  "\\u0015"

.L.str.31:
        .asciz  "\\u0016"

.L.str.32:
        .asciz  "\\u0017"

.L.str.33:
        .asciz  "\\u0018"

.L.str.34:
        .asciz  "\\u0019"

.L.str.35:
        .asciz  "\\u001a"

.L.str.36:
        .asciz  "\\u001b"

.L.str.37:
        .asciz  "\\u001c"

.L.str.38:
        .asciz  "\\u001d"

.L.str.39:
        .asciz  "\\u001e"

.L.str.40:
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

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)109, (char)97, (char)107, (char)101, (char)0>:
        .asciz  "make"

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)109, (char)111, (char)100, (char)101, (char)108, (char)0>:
        .asciz  "model"

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)121, (char)101, (char)97, (char)114, (char)0>:
        .asciz  "year"

std::__1::meta::reflection_v2::__define_static::FixedArray<char, (char)116, (char)105, (char)114, (char)101, (char)95, (char)112, (char)114, (char)101, (char)115, (char)115, (char)117, (char)114, (char)101, (char)0>:
        .asciz  "tire_pressure"

simdjson::fallback::numberparsing::(anonymous namespace)::integer_string_finisher:
        .ascii  "\t\t\t\t\t\t\t\t\t\000\000\t\t\000\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\000\t\t\t\t\t\t\t\t\t\t\t\000\t\021\t\t\t\t\t\t\t\t\t\t\t\000\t\t\t\t\t\t\t\t\t\t\021\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\000\t\000\t\t\t\t\t\t\t\021\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\000\t\000\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

.L.str.68:
        .asciz  "vector"

.Ldebug_list_header_start0:
        .short  5
        .byte   8
        .byte   0
        .long   580
.Ldebug_list_header_end0:

DW.ref.__gxx_personality_v0:
        .quad   __gxx_personality_v0