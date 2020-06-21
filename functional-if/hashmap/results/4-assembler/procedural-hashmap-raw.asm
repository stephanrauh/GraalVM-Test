Compiled method (c2)      50    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x0000000116079d90,0x000000011607a330] = 1440
 relocation     [0x0000000116079f08,0x0000000116079f18] = 16
 main code      [0x0000000116079f20,0x000000011607a0e0] = 448
 stub code      [0x000000011607a0e0,0x000000011607a0f8] = 24
 metadata       [0x000000011607a0f8,0x000000011607a100] = 8
 scopes data    [0x000000011607a100,0x000000011607a188] = 136
 scopes pcs     [0x000000011607a188,0x000000011607a318] = 400
 dependencies   [0x000000011607a318,0x000000011607a320] = 8
 nul chk table  [0x000000011607a320,0x000000011607a330] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x0000000116079f20, 0x000000011607a0f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123974a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x0000000116079f20: mov    %eax,-0x14000(%rsp)
  0x0000000116079f27: push   %rbp
  0x0000000116079f28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x0000000116079f2c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x000000011607a0c2
  0x0000000116079f30: test   %r10d,%r10d
  0x0000000116079f33: jbe    0x000000011607a0a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000116079f39: mov    %r10d,%r8d
  0x0000000116079f3c: dec    %r8d
  0x0000000116079f3f: cmp    %r10d,%r8d
  0x0000000116079f42: jae    0x000000011607a0ad
  0x0000000116079f48: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x0000000116079f4d: mov    %r10d,%edx
  0x0000000116079f50: add    $0xfffffff9,%edx
  0x0000000116079f53: mov    $0x80000000,%ecx
  0x0000000116079f58: cmp    %edx,%r8d
  0x0000000116079f5b: cmovl  %ecx,%edx
  0x0000000116079f5e: mov    $0x1,%ecx
  0x0000000116079f63: cmp    $0x1,%edx
  0x0000000116079f66: jle    0x000000011607a08d
  0x0000000116079f6c: mov    %r9d,%r11d
  0x0000000116079f6f: shl    $0x5,%r11d
  0x0000000116079f73: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000116079f76: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000116079f7b: jmp    0x0000000116079fa9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x0000000116079f7d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x0000000116079f83: mov    %r9d,%eax
  0x0000000116079f86: shl    $0x5,%eax
  0x0000000116079f89: sub    %r9d,%eax
  0x0000000116079f8c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x0000000116079f8f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000116079f91: cmp    %r10d,%ecx
  0x0000000116079f94: jge    0x000000011607a099  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000116079f9a: mov    %eax,%r9d
  0x0000000116079f9d: jmp    0x0000000116079f7d
  0x0000000116079f9f: vmovq  %xmm0,%rsi
  0x0000000116079fa4: vmovd  %xmm2,%r10d
  0x0000000116079fa9: mov    %edx,%ebp
  0x0000000116079fab: sub    %ecx,%ebp
  0x0000000116079fad: cmp    %edi,%ebp
  0x0000000116079faf: cmovg  %edi,%ebp
  0x0000000116079fb2: add    %ecx,%ebp
  0x0000000116079fb4: vmovq  %rsi,%xmm0
  0x0000000116079fb9: vmovd  %r10d,%xmm2
  0x0000000116079fbe: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000116079fc0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x0000000116079fc3: vmovq  %xmm0,%r8
  0x0000000116079fc8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x0000000116079fce: movzbl 0x17(%r8,%rsi,1),%eax
  0x0000000116079fd4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x0000000116079fda: movzbl 0x16(%r8,%rsi,1),%r10d
  0x0000000116079fe0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x0000000116079fe6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x0000000116079fec: add    %r14d,%r11d
  0x0000000116079fef: vmovq  %xmm0,%rbx
  0x0000000116079ff4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x0000000116079ff9: vmovq  %xmm0,%r14
  0x0000000116079ffe: movzbl 0x13(%r14,%rsi,1),%esi
  0x000000011607a004: mov    %r11d,%r14d
  0x000000011607a007: shl    $0x5,%r14d
  0x000000011607a00b: sub    %r11d,%r14d
  0x000000011607a00e: add    %r13d,%r14d
  0x000000011607a011: mov    %r14d,%r11d
  0x000000011607a014: shl    $0x5,%r11d
  0x000000011607a018: sub    %r14d,%r11d
  0x000000011607a01b: add    %ebx,%r11d
  0x000000011607a01e: mov    %r11d,%ebx
  0x000000011607a021: shl    $0x5,%ebx
  0x000000011607a024: sub    %r11d,%ebx
  0x000000011607a027: add    %esi,%ebx
  0x000000011607a029: mov    %ebx,%r11d
  0x000000011607a02c: shl    $0x5,%r11d
  0x000000011607a030: sub    %ebx,%r11d
  0x000000011607a033: add    %r8d,%r11d
  0x000000011607a036: mov    %r11d,%ebx
  0x000000011607a039: shl    $0x5,%ebx
  0x000000011607a03c: sub    %r11d,%ebx
  0x000000011607a03f: add    %r9d,%ebx
  0x000000011607a042: mov    %ebx,%r8d
  0x000000011607a045: shl    $0x5,%r8d
  0x000000011607a049: sub    %ebx,%r8d
  0x000000011607a04c: add    %r10d,%r8d
  0x000000011607a04f: mov    %r8d,%r9d
  0x000000011607a052: shl    $0x5,%r9d
  0x000000011607a056: sub    %r8d,%r9d
  0x000000011607a059: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000011607a05c: mov    %r9d,%r11d
  0x000000011607a05f: shl    $0x5,%r11d
  0x000000011607a063: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000011607a066: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000011607a069: cmp    %ebp,%ecx
  0x000000011607a06b: jl     0x0000000116079fc0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011607a071: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000011607a078: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000011607a07b: cmp    %edx,%ecx
  0x000000011607a07d: jl     0x0000000116079f9f
  0x000000011607a083: vmovq  %xmm0,%rsi
  0x000000011607a088: vmovd  %xmm2,%r10d
  0x000000011607a08d: cmp    %r10d,%ecx
  0x000000011607a090: jl     0x0000000116079f7d
  0x000000011607a096: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011607a099: add    $0x20,%rsp
  0x000000011607a09d: pop    %rbp
  0x000000011607a09e: mov    0x108(%r15),%r10
  0x000000011607a0a5: test   %eax,(%r10)        ;   {poll_return}
  0x000000011607a0a8: retq   
  0x000000011607a0a9: xor    %eax,%eax
  0x000000011607a0ab: jmp    0x000000011607a099
  0x000000011607a0ad: mov    %rsi,%rbp
  0x000000011607a0b0: mov    %r10d,0x4(%rsp)
  0x000000011607a0b5: mov    $0xffffff7e,%esi
  0x000000011607a0ba: nop
  0x000000011607a0bb: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011607a0c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011607a0c2: mov    $0xfffffff6,%esi
  0x000000011607a0c7: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011607a0cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x000000011607a0ce: hlt    
  0x000000011607a0cf: hlt    
  0x000000011607a0d0: hlt    
  0x000000011607a0d1: hlt    
  0x000000011607a0d2: hlt    
  0x000000011607a0d3: hlt    
  0x000000011607a0d4: hlt    
  0x000000011607a0d5: hlt    
  0x000000011607a0d6: hlt    
  0x000000011607a0d7: hlt    
  0x000000011607a0d8: hlt    
  0x000000011607a0d9: hlt    
  0x000000011607a0da: hlt    
  0x000000011607a0db: hlt    
  0x000000011607a0dc: hlt    
  0x000000011607a0dd: hlt    
  0x000000011607a0de: hlt    
  0x000000011607a0df: hlt    
[Exception Handler]
[Stub Code]
  0x000000011607a0e0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011607a0e5: callq  0x000000011607a0ea
  0x000000011607a0ea: subq   $0x5,(%rsp)
  0x000000011607a0ef: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x000000011607a0f4: hlt    
  0x000000011607a0f5: hlt    
  0x000000011607a0f6: hlt    
  0x000000011607a0f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
Compiled method (c2)      89    2             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000011607c290,0x000000011607c4c8] = 568
 relocation     [0x000000011607c408,0x000000011607c418] = 16
 main code      [0x000000011607c420,0x000000011607c460] = 64
 stub code      [0x000000011607c460,0x000000011607c478] = 24
 metadata       [0x000000011607c478,0x000000011607c488] = 16
 scopes data    [0x000000011607c488,0x000000011607c490] = 8
 scopes pcs     [0x000000011607c490,0x000000011607c4c0] = 48
 dependencies   [0x000000011607c4c0,0x000000011607c4c8] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000011607c420, 0x000000011607c478]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012381b610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000011607c420: mov    0x8(%rsi),%r10d
  0x000000011607c424: movabs $0x800000000,%r12
  0x000000011607c42e: add    %r12,%r10
  0x000000011607c431: xor    %r12,%r12
  0x000000011607c434: cmp    %r10,%rax
  0x000000011607c437: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x000000011607c43d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011607c440: sub    $0x18,%rsp
  0x000000011607c447: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000011607c44c: add    $0x10,%rsp
  0x000000011607c450: pop    %rbp
  0x000000011607c451: mov    0x108(%r15),%r10
  0x000000011607c458: test   %eax,(%r10)        ;   {poll_return}
  0x000000011607c45b: retq   
  0x000000011607c45c: hlt    
  0x000000011607c45d: hlt    
  0x000000011607c45e: hlt    
  0x000000011607c45f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011607c460: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011607c465: callq  0x000000011607c46a
  0x000000011607c46a: subq   $0x5,(%rsp)
  0x000000011607c46f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x000000011607c474: hlt    
  0x000000011607c475: hlt    
  0x000000011607c476: hlt    
  0x000000011607c477: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116082fa0, 0x0000000116082fc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123b7e188} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116082fa0: mov    0x24(%rdi),%ebx
  0x0000000116082fa3: shl    $0x3,%rbx
  0x0000000116082fa7: mov    0x10(%rbx),%rbx
  0x0000000116082fab: test   %rbx,%rbx
  0x0000000116082fae: je     0x0000000116082fb7
  0x0000000116082fb4: jmpq   *0x38(%rbx)
  0x0000000116082fb7: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116082fbc: hlt    
  0x0000000116082fbd: hlt    
  0x0000000116082fbe: hlt    
  0x0000000116082fbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000116083ba0, 0x0000000116083bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bb0818} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000116083ba0: mov    0x14(%rsi),%ebx
  0x0000000116083ba3: shl    $0x3,%rbx
  0x0000000116083ba7: mov    0x28(%rbx),%ebx
  0x0000000116083baa: shl    $0x3,%rbx
  0x0000000116083bae: mov    0x24(%rbx),%ebx
  0x0000000116083bb1: shl    $0x3,%rbx
  0x0000000116083bb5: mov    0x10(%rbx),%rbx
  0x0000000116083bb9: test   %rbx,%rbx
  0x0000000116083bbc: je     0x0000000116083bc5
  0x0000000116083bc2: jmpq   *0x38(%rbx)
  0x0000000116083bc5: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116083bca: hlt    
  0x0000000116083bcb: hlt    
  0x0000000116083bcc: hlt    
  0x0000000116083bcd: hlt    
  0x0000000116083bce: hlt    
  0x0000000116083bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116083da0, 0x0000000116083dc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bb09d0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000116083da0: mov    0x8(%rsp),%rbx
  0x0000000116083da5: cmp    (%rsi),%rax
  0x0000000116083da8: mov    0x24(%rbx),%ebx
  0x0000000116083dab: shl    $0x3,%rbx
  0x0000000116083daf: mov    0x10(%rbx),%rbx
  0x0000000116083db3: test   %rbx,%rbx
  0x0000000116083db6: je     0x0000000116083dbf
  0x0000000116083dbc: jmpq   *0x38(%rbx)
  0x0000000116083dbf: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116083dc4: hlt    
  0x0000000116083dc5: hlt    
  0x0000000116083dc6: hlt    
  0x0000000116083dc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x00000001160845a0, 0x00000001160845c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bbcdd8} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001160845a0: mov    0x24(%rsi),%ebx
  0x00000001160845a3: shl    $0x3,%rbx
  0x00000001160845a7: mov    0x10(%rbx),%rbx
  0x00000001160845ab: test   %rbx,%rbx
  0x00000001160845ae: je     0x00000001160845b7
  0x00000001160845b4: jmpq   *0x38(%rbx)
  0x00000001160845b7: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160845bc: hlt    
  0x00000001160845bd: hlt    
  0x00000001160845be: hlt    
  0x00000001160845bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x00000001160847a0, 0x00000001160847d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bbcef0} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x00000001160847a0: mov    0x14(%rsi),%ebx
  0x00000001160847a3: shl    $0x3,%rbx
  0x00000001160847a7: mov    0x28(%rbx),%ebx
  0x00000001160847aa: shl    $0x3,%rbx
  0x00000001160847ae: mov    0x24(%rbx),%ebx
  0x00000001160847b1: shl    $0x3,%rbx
  0x00000001160847b5: mov    0x10(%rbx),%rbx
  0x00000001160847b9: test   %rbx,%rbx
  0x00000001160847bc: je     0x00000001160847c5
  0x00000001160847c2: jmpq   *0x38(%rbx)
  0x00000001160847c5: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160847ca: hlt    
  0x00000001160847cb: hlt    
  0x00000001160847cc: hlt    
  0x00000001160847cd: hlt    
  0x00000001160847ce: hlt    
  0x00000001160847cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001160849a0, 0x00000001160849c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bbd008} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001160849a0: cmp    (%rsi),%rax
  0x00000001160849a3: mov    0x24(%rdx),%ebx
  0x00000001160849a6: shl    $0x3,%rbx
  0x00000001160849aa: mov    0x10(%rbx),%rbx
  0x00000001160849ae: test   %rbx,%rbx
  0x00000001160849b1: je     0x00000001160849ba
  0x00000001160849b7: jmpq   *0x38(%rbx)
  0x00000001160849ba: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160849bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116084ba0, 0x0000000116084bc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bbd3a0} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116084ba0: mov    0x24(%r8),%ebx
  0x0000000116084ba4: shl    $0x3,%rbx
  0x0000000116084ba8: mov    0x10(%rbx),%rbx
  0x0000000116084bac: test   %rbx,%rbx
  0x0000000116084baf: je     0x0000000116084bb8
  0x0000000116084bb5: jmpq   *0x38(%rbx)
  0x0000000116084bb8: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116084bbd: hlt    
  0x0000000116084bbe: hlt    
  0x0000000116084bbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116084da0, 0x0000000116084dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bbd4b8} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116084da0: mov    0x24(%rcx),%ebx
  0x0000000116084da3: shl    $0x3,%rbx
  0x0000000116084da7: mov    0x10(%rbx),%rbx
  0x0000000116084dab: test   %rbx,%rbx
  0x0000000116084dae: je     0x0000000116084db7
  0x0000000116084db4: jmpq   *0x38(%rbx)
  0x0000000116084db7: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116084dbc: hlt    
  0x0000000116084dbd: hlt    
  0x0000000116084dbe: hlt    
  0x0000000116084dbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001160851a0, 0x00000001160851c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bc5290} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001160851a0: mov    0x24(%rsi),%ebx
  0x00000001160851a3: shl    $0x3,%rbx
  0x00000001160851a7: mov    0x10(%rbx),%rbx
  0x00000001160851ab: test   %rbx,%rbx
  0x00000001160851ae: je     0x00000001160851b7
  0x00000001160851b4: jmpq   *0x38(%rbx)
  0x00000001160851b7: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160851bc: hlt    
  0x00000001160851bd: hlt    
  0x00000001160851be: hlt    
  0x00000001160851bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116085b20, 0x0000000116085b40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bd72b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116085b20: mov    0x24(%rcx),%ebx
  0x0000000116085b23: shl    $0x3,%rbx
  0x0000000116085b27: mov    0x10(%rbx),%rbx
  0x0000000116085b2b: test   %rbx,%rbx
  0x0000000116085b2e: je     0x0000000116085b37
  0x0000000116085b34: jmpq   *0x38(%rbx)
  0x0000000116085b37: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116085b3c: hlt    
  0x0000000116085b3d: hlt    
  0x0000000116085b3e: hlt    
  0x0000000116085b3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116085d20, 0x0000000116085d40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bd8bb8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116085d20: mov    0x24(%r8),%ebx
  0x0000000116085d24: shl    $0x3,%rbx
  0x0000000116085d28: mov    0x10(%rbx),%rbx
  0x0000000116085d2c: test   %rbx,%rbx
  0x0000000116085d2f: je     0x0000000116085d38
  0x0000000116085d35: jmpq   *0x38(%rbx)
  0x0000000116085d38: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116085d3d: hlt    
  0x0000000116085d3e: hlt    
  0x0000000116085d3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000116085f20, 0x0000000116085f50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bdb720} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000116085f20: mov    0x14(%rsi),%ebx
  0x0000000116085f23: shl    $0x3,%rbx
  0x0000000116085f27: mov    0x28(%rbx),%ebx
  0x0000000116085f2a: shl    $0x3,%rbx
  0x0000000116085f2e: mov    0x24(%rbx),%ebx
  0x0000000116085f31: shl    $0x3,%rbx
  0x0000000116085f35: mov    0x10(%rbx),%rbx
  0x0000000116085f39: test   %rbx,%rbx
  0x0000000116085f3c: je     0x0000000116085f45
  0x0000000116085f42: jmpq   *0x38(%rbx)
  0x0000000116085f45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116085f4a: hlt    
  0x0000000116085f4b: hlt    
  0x0000000116085f4c: hlt    
  0x0000000116085f4d: hlt    
  0x0000000116085f4e: hlt    
  0x0000000116085f4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116086120, 0x0000000116086140]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123bdb838} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116086120: cmp    (%rsi),%rax
  0x0000000116086123: mov    0x24(%r9),%ebx
  0x0000000116086127: shl    $0x3,%rbx
  0x000000011608612b: mov    0x10(%rbx),%rbx
  0x000000011608612f: test   %rbx,%rbx
  0x0000000116086132: je     0x000000011608613b
  0x0000000116086138: jmpq   *0x38(%rbx)
  0x000000011608613b: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000116088120, 0x0000000116088140]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c0f2f8} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088120: mov    0x24(%r9),%ebx
  0x0000000116088124: shl    $0x3,%rbx
  0x0000000116088128: mov    0x10(%rbx),%rbx
  0x000000011608812c: test   %rbx,%rbx
  0x000000011608812f: je     0x0000000116088138
  0x0000000116088135: jmpq   *0x38(%rbx)
  0x0000000116088138: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608813d: hlt    
  0x000000011608813e: hlt    
  0x000000011608813f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x0000000116088320, 0x0000000116088350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c0f500} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088320: mov    0x14(%rsi),%ebx
  0x0000000116088323: shl    $0x3,%rbx
  0x0000000116088327: mov    0x28(%rbx),%ebx
  0x000000011608832a: shl    $0x3,%rbx
  0x000000011608832e: mov    0x24(%rbx),%ebx
  0x0000000116088331: shl    $0x3,%rbx
  0x0000000116088335: mov    0x10(%rbx),%rbx
  0x0000000116088339: test   %rbx,%rbx
  0x000000011608833c: je     0x0000000116088345
  0x0000000116088342: jmpq   *0x38(%rbx)
  0x0000000116088345: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608834a: hlt    
  0x000000011608834b: hlt    
  0x000000011608834c: hlt    
  0x000000011608834d: hlt    
  0x000000011608834e: hlt    
  0x000000011608834f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000116088520, 0x0000000116088540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c0f618} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088520: cmp    (%rsi),%rax
  0x0000000116088523: mov    0x24(%rdi),%ebx
  0x0000000116088526: shl    $0x3,%rbx
  0x000000011608852a: mov    0x10(%rbx),%rbx
  0x000000011608852e: test   %rbx,%rbx
  0x0000000116088531: je     0x000000011608853a
  0x0000000116088537: jmpq   *0x38(%rbx)
  0x000000011608853a: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608853f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116088720, 0x0000000116088740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c10718} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088720: mov    0x24(%r9),%ebx
  0x0000000116088724: shl    $0x3,%rbx
  0x0000000116088728: mov    0x10(%rbx),%rbx
  0x000000011608872c: test   %rbx,%rbx
  0x000000011608872f: je     0x0000000116088738
  0x0000000116088735: jmpq   *0x38(%rbx)
  0x0000000116088738: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608873d: hlt    
  0x000000011608873e: hlt    
  0x000000011608873f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000116088920, 0x0000000116088950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c10ab0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088920: mov    0x14(%rsi),%ebx
  0x0000000116088923: shl    $0x3,%rbx
  0x0000000116088927: mov    0x28(%rbx),%ebx
  0x000000011608892a: shl    $0x3,%rbx
  0x000000011608892e: mov    0x24(%rbx),%ebx
  0x0000000116088931: shl    $0x3,%rbx
  0x0000000116088935: mov    0x10(%rbx),%rbx
  0x0000000116088939: test   %rbx,%rbx
  0x000000011608893c: je     0x0000000116088945
  0x0000000116088942: jmpq   *0x38(%rbx)
  0x0000000116088945: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608894a: hlt    
  0x000000011608894b: hlt    
  0x000000011608894c: hlt    
  0x000000011608894d: hlt    
  0x000000011608894e: hlt    
  0x000000011608894f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x0000000116088b20, 0x0000000116088b50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c10fd8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000116088b20: mov    0x14(%rsi),%ebx
  0x0000000116088b23: shl    $0x3,%rbx
  0x0000000116088b27: mov    0x28(%rbx),%ebx
  0x0000000116088b2a: shl    $0x3,%rbx
  0x0000000116088b2e: mov    0x24(%rbx),%ebx
  0x0000000116088b31: shl    $0x3,%rbx
  0x0000000116088b35: mov    0x10(%rbx),%rbx
  0x0000000116088b39: test   %rbx,%rbx
  0x0000000116088b3c: je     0x0000000116088b45
  0x0000000116088b42: jmpq   *0x38(%rbx)
  0x0000000116088b45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116088b4a: hlt    
  0x0000000116088b4b: hlt    
  0x0000000116088b4c: hlt    
  0x0000000116088b4d: hlt    
  0x0000000116088b4e: hlt    
  0x0000000116088b4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x0000000116088d20, 0x0000000116088d40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c110f0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116088d20: cmp    (%rsi),%rax
  0x0000000116088d23: mov    0x24(%r9),%ebx
  0x0000000116088d27: shl    $0x3,%rbx
  0x0000000116088d2b: mov    0x10(%rbx),%rbx
  0x0000000116088d2f: test   %rbx,%rbx
  0x0000000116088d32: je     0x0000000116088d3b
  0x0000000116088d38: jmpq   *0x38(%rbx)
  0x0000000116088d3b: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116088f20, 0x0000000116088f48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c14048} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000116088f20: mov    0x8(%rsp),%rbx
  0x0000000116088f25: mov    0x24(%rbx),%ebx
  0x0000000116088f28: shl    $0x3,%rbx
  0x0000000116088f2c: mov    0x10(%rbx),%rbx
  0x0000000116088f30: test   %rbx,%rbx
  0x0000000116088f33: je     0x0000000116088f3c
  0x0000000116088f39: jmpq   *0x38(%rbx)
  0x0000000116088f3c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116088f41: hlt    
  0x0000000116088f42: hlt    
  0x0000000116088f43: hlt    
  0x0000000116088f44: hlt    
  0x0000000116088f45: hlt    
  0x0000000116088f46: hlt    
  0x0000000116088f47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000116089120, 0x0000000116089150]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c141b0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x0000000116089120: mov    0x14(%rsi),%ebx
  0x0000000116089123: shl    $0x3,%rbx
  0x0000000116089127: mov    0x28(%rbx),%ebx
  0x000000011608912a: shl    $0x3,%rbx
  0x000000011608912e: mov    0x24(%rbx),%ebx
  0x0000000116089131: shl    $0x3,%rbx
  0x0000000116089135: mov    0x10(%rbx),%rbx
  0x0000000116089139: test   %rbx,%rbx
  0x000000011608913c: je     0x0000000116089145
  0x0000000116089142: jmpq   *0x38(%rbx)
  0x0000000116089145: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608914a: hlt    
  0x000000011608914b: hlt    
  0x000000011608914c: hlt    
  0x000000011608914d: hlt    
  0x000000011608914e: hlt    
  0x000000011608914f: hlt    
Compiled method (c2)     131   25             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000011608c010,0x000000011608c2b8] = 680
 relocation     [0x000000011608c188,0x000000011608c198] = 16
 main code      [0x000000011608c1a0,0x000000011608c200] = 96
 stub code      [0x000000011608c200,0x000000011608c218] = 24
 metadata       [0x000000011608c218,0x000000011608c220] = 8
 scopes data    [0x000000011608c220,0x000000011608c240] = 32
 scopes pcs     [0x000000011608c240,0x000000011608c2b0] = 112
 dependencies   [0x000000011608c2b0,0x000000011608c2b8] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000011608c1a0, 0x000000011608c218]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123825300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000011608c1a0: mov    0x8(%rsi),%r10d
  0x000000011608c1a4: movabs $0x800000000,%r12
  0x000000011608c1ae: add    %r12,%r10
  0x000000011608c1b1: xor    %r12,%r12
  0x000000011608c1b4: cmp    %r10,%rax
  0x000000011608c1b7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x000000011608c1bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011608c1c0: mov    %eax,-0x14000(%rsp)
  0x000000011608c1c7: push   %rbp
  0x000000011608c1c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000011608c1cc: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000011608c1d1: test   %r11d,%r11d
  0x000000011608c1d4: jne    0x000000011608c1eb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011608c1d6: mov    $0x1,%eax
  0x000000011608c1db: add    $0x10,%rsp
  0x000000011608c1df: pop    %rbp
  0x000000011608c1e0: mov    0x108(%r15),%r10
  0x000000011608c1e7: test   %eax,(%r10)        ;   {poll_return}
  0x000000011608c1ea: retq   
  0x000000011608c1eb: mov    $0xffffff4d,%esi
  0x000000011608c1f0: mov    %r11d,%ebp
  0x000000011608c1f3: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608c1f8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011608c1fa: hlt    
  0x000000011608c1fb: hlt    
  0x000000011608c1fc: hlt    
  0x000000011608c1fd: hlt    
  0x000000011608c1fe: hlt    
  0x000000011608c1ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000011608c200: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011608c205: callq  0x000000011608c20a
  0x000000011608c20a: subq   $0x5,(%rsp)
  0x000000011608c20f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x000000011608c214: hlt    
  0x000000011608c215: hlt    
  0x000000011608c216: hlt    
  0x000000011608c217: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011608bd20, 0x000000011608bd40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c14458} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608bd20: mov    0x24(%r9),%ebx
  0x000000011608bd24: shl    $0x3,%rbx
  0x000000011608bd28: mov    0x10(%rbx),%rbx
  0x000000011608bd2c: test   %rbx,%rbx
  0x000000011608bd2f: je     0x000000011608bd38
  0x000000011608bd35: jmpq   *0x38(%rbx)
  0x000000011608bd38: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608bd3d: hlt    
  0x000000011608bd3e: hlt    
  0x000000011608bd3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608bb20, 0x000000011608bb48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c15258} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000011608bb20: mov    0x10(%rsp),%rbx
  0x000000011608bb25: mov    0x24(%rbx),%ebx
  0x000000011608bb28: shl    $0x3,%rbx
  0x000000011608bb2c: mov    0x10(%rbx),%rbx
  0x000000011608bb30: test   %rbx,%rbx
  0x000000011608bb33: je     0x000000011608bb3c
  0x000000011608bb39: jmpq   *0x38(%rbx)
  0x000000011608bb3c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608bb41: hlt    
  0x000000011608bb42: hlt    
  0x000000011608bb43: hlt    
  0x000000011608bb44: hlt    
  0x000000011608bb45: hlt    
  0x000000011608bb46: hlt    
  0x000000011608bb47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x000000011608b920, 0x000000011608b950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c15370} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x000000011608b920: mov    0x14(%rsi),%ebx
  0x000000011608b923: shl    $0x3,%rbx
  0x000000011608b927: mov    0x28(%rbx),%ebx
  0x000000011608b92a: shl    $0x3,%rbx
  0x000000011608b92e: mov    0x24(%rbx),%ebx
  0x000000011608b931: shl    $0x3,%rbx
  0x000000011608b935: mov    0x10(%rbx),%rbx
  0x000000011608b939: test   %rbx,%rbx
  0x000000011608b93c: je     0x000000011608b945
  0x000000011608b942: jmpq   *0x38(%rbx)
  0x000000011608b945: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608b94a: hlt    
  0x000000011608b94b: hlt    
  0x000000011608b94c: hlt    
  0x000000011608b94d: hlt    
  0x000000011608b94e: hlt    
  0x000000011608b94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011608b720, 0x000000011608b740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c15488} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608b720: cmp    (%rsi),%rax
  0x000000011608b723: mov    0x24(%rdi),%ebx
  0x000000011608b726: shl    $0x3,%rbx
  0x000000011608b72a: mov    0x10(%rbx),%rbx
  0x000000011608b72e: test   %rbx,%rbx
  0x000000011608b731: je     0x000000011608b73a
  0x000000011608b737: jmpq   *0x38(%rbx)
  0x000000011608b73a: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608b73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011608b520, 0x000000011608b550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c155f0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000011608b520: mov    0x14(%rsi),%ebx
  0x000000011608b523: shl    $0x3,%rbx
  0x000000011608b527: mov    0x28(%rbx),%ebx
  0x000000011608b52a: shl    $0x3,%rbx
  0x000000011608b52e: mov    0x24(%rbx),%ebx
  0x000000011608b531: shl    $0x3,%rbx
  0x000000011608b535: mov    0x10(%rbx),%rbx
  0x000000011608b539: test   %rbx,%rbx
  0x000000011608b53c: je     0x000000011608b545
  0x000000011608b542: jmpq   *0x38(%rbx)
  0x000000011608b545: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608b54a: hlt    
  0x000000011608b54b: hlt    
  0x000000011608b54c: hlt    
  0x000000011608b54d: hlt    
  0x000000011608b54e: hlt    
  0x000000011608b54f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608b320, 0x000000011608b348]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c16590} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000011608b320: mov    0x18(%rsp),%rbx
  0x000000011608b325: mov    0x24(%rbx),%ebx
  0x000000011608b328: shl    $0x3,%rbx
  0x000000011608b32c: mov    0x10(%rbx),%rbx
  0x000000011608b330: test   %rbx,%rbx
  0x000000011608b333: je     0x000000011608b33c
  0x000000011608b339: jmpq   *0x38(%rbx)
  0x000000011608b33c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608b341: hlt    
  0x000000011608b342: hlt    
  0x000000011608b343: hlt    
  0x000000011608b344: hlt    
  0x000000011608b345: hlt    
  0x000000011608b346: hlt    
  0x000000011608b347: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000011608b120, 0x000000011608b150]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c166a8} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011608b120: mov    0x14(%rsi),%ebx
  0x000000011608b123: shl    $0x3,%rbx
  0x000000011608b127: mov    0x28(%rbx),%ebx
  0x000000011608b12a: shl    $0x3,%rbx
  0x000000011608b12e: mov    0x24(%rbx),%ebx
  0x000000011608b131: shl    $0x3,%rbx
  0x000000011608b135: mov    0x10(%rbx),%rbx
  0x000000011608b139: test   %rbx,%rbx
  0x000000011608b13c: je     0x000000011608b145
  0x000000011608b142: jmpq   *0x38(%rbx)
  0x000000011608b145: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608b14a: hlt    
  0x000000011608b14b: hlt    
  0x000000011608b14c: hlt    
  0x000000011608b14d: hlt    
  0x000000011608b14e: hlt    
  0x000000011608b14f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608af20, 0x000000011608af40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c167c0} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608af20: cmp    (%rsi),%rax
  0x000000011608af23: mov    0x24(%r8),%ebx
  0x000000011608af27: shl    $0x3,%rbx
  0x000000011608af2b: mov    0x10(%rbx),%rbx
  0x000000011608af2f: test   %rbx,%rbx
  0x000000011608af32: je     0x000000011608af3b
  0x000000011608af38: jmpq   *0x38(%rbx)
  0x000000011608af3b: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011608ad20, 0x000000011608ad50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c16928} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000011608ad20: mov    0x14(%rsi),%ebx
  0x000000011608ad23: shl    $0x3,%rbx
  0x000000011608ad27: mov    0x28(%rbx),%ebx
  0x000000011608ad2a: shl    $0x3,%rbx
  0x000000011608ad2e: mov    0x24(%rbx),%ebx
  0x000000011608ad31: shl    $0x3,%rbx
  0x000000011608ad35: mov    0x10(%rbx),%rbx
  0x000000011608ad39: test   %rbx,%rbx
  0x000000011608ad3c: je     0x000000011608ad45
  0x000000011608ad42: jmpq   *0x38(%rbx)
  0x000000011608ad45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608ad4a: hlt    
  0x000000011608ad4b: hlt    
  0x000000011608ad4c: hlt    
  0x000000011608ad4d: hlt    
  0x000000011608ad4e: hlt    
  0x000000011608ad4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000011608ab20, 0x000000011608ab40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c16c20} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608ab20: mov    0x24(%rcx),%ebx
  0x000000011608ab23: shl    $0x3,%rbx
  0x000000011608ab27: mov    0x10(%rbx),%rbx
  0x000000011608ab2b: test   %rbx,%rbx
  0x000000011608ab2e: je     0x000000011608ab37
  0x000000011608ab34: jmpq   *0x38(%rbx)
  0x000000011608ab37: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608ab3c: hlt    
  0x000000011608ab3d: hlt    
  0x000000011608ab3e: hlt    
  0x000000011608ab3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x000000011608a920, 0x000000011608a950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c16d38} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000011608a920: mov    0x14(%rsi),%ebx
  0x000000011608a923: shl    $0x3,%rbx
  0x000000011608a927: mov    0x28(%rbx),%ebx
  0x000000011608a92a: shl    $0x3,%rbx
  0x000000011608a92e: mov    0x24(%rbx),%ebx
  0x000000011608a931: shl    $0x3,%rbx
  0x000000011608a935: mov    0x10(%rbx),%rbx
  0x000000011608a939: test   %rbx,%rbx
  0x000000011608a93c: je     0x000000011608a945
  0x000000011608a942: jmpq   *0x38(%rbx)
  0x000000011608a945: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608a94a: hlt    
  0x000000011608a94b: hlt    
  0x000000011608a94c: hlt    
  0x000000011608a94d: hlt    
  0x000000011608a94e: hlt    
  0x000000011608a94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000011608a720, 0x000000011608a740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c16e50} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608a720: cmp    (%rsi),%rax
  0x000000011608a723: mov    0x24(%r8),%ebx
  0x000000011608a727: shl    $0x3,%rbx
  0x000000011608a72b: mov    0x10(%rbx),%rbx
  0x000000011608a72f: test   %rbx,%rbx
  0x000000011608a732: je     0x000000011608a73b
  0x000000011608a738: jmpq   *0x38(%rbx)
  0x000000011608a73b: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     150   38             java.lang.String::charAt (25 bytes)
 total in heap  [0x000000011608a190,0x000000011608a538] = 936
 relocation     [0x000000011608a308,0x000000011608a318] = 16
 main code      [0x000000011608a320,0x000000011608a3c0] = 160
 stub code      [0x000000011608a3c0,0x000000011608a3d8] = 24
 metadata       [0x000000011608a3d8,0x000000011608a3f0] = 24
 scopes data    [0x000000011608a3f0,0x000000011608a450] = 96
 scopes pcs     [0x000000011608a450,0x000000011608a520] = 208
 dependencies   [0x000000011608a520,0x000000011608a528] = 8
 nul chk table  [0x000000011608a528,0x000000011608a538] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x000000011608a320, 0x000000011608a3d8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001238204b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000011608a320: mov    0x8(%rsi),%r10d
  0x000000011608a324: movabs $0x800000000,%r12
  0x000000011608a32e: add    %r12,%r10
  0x000000011608a331: xor    %r12,%r12
  0x000000011608a334: cmp    %r10,%rax
  0x000000011608a337: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x000000011608a33d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011608a340: mov    %eax,-0x14000(%rsp)
  0x000000011608a347: push   %rbp
  0x000000011608a348: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000011608a34c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011608a351: test   %r10d,%r10d
  0x000000011608a354: jne    0x000000011608a37d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011608a356: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x000000011608a359: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000011608a3a6
  0x000000011608a35e: cmp    %r10d,%edx
  0x000000011608a361: jae    0x000000011608a396
  0x000000011608a363: lea    (%r12,%rbp,8),%r10
  0x000000011608a367: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011608a36d: add    $0x20,%rsp
  0x000000011608a371: pop    %rbp
  0x000000011608a372: mov    0x108(%r15),%r10
  0x000000011608a379: test   %eax,(%r10)        ;   {poll_return}
  0x000000011608a37c: retq   
  0x000000011608a37d: mov    %rsi,%rbp
  0x000000011608a380: mov    %edx,(%rsp)
  0x000000011608a383: mov    %r10d,0x4(%rsp)
  0x000000011608a388: mov    $0xffffff4d,%esi
  0x000000011608a38d: xchg   %ax,%ax
  0x000000011608a38f: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608a394: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011608a396: mov    $0xffffffe5,%esi
  0x000000011608a39b: mov    %edx,0x4(%rsp)
  0x000000011608a39f: callq  0x0000000116043900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608a3a4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011608a3a6: mov    $0xfffffff6,%esi
  0x000000011608a3ab: mov    %edx,0x4(%rsp)
  0x000000011608a3af: callq  0x0000000116043900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608a3b4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011608a3b6: hlt    
  0x000000011608a3b7: hlt    
  0x000000011608a3b8: hlt    
  0x000000011608a3b9: hlt    
  0x000000011608a3ba: hlt    
  0x000000011608a3bb: hlt    
  0x000000011608a3bc: hlt    
  0x000000011608a3bd: hlt    
  0x000000011608a3be: hlt    
  0x000000011608a3bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000011608a3c0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011608a3c5: callq  0x000000011608a3ca
  0x000000011608a3ca: subq   $0x5,(%rsp)
  0x000000011608a3cf: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x000000011608a3d4: hlt    
  0x000000011608a3d5: hlt    
  0x000000011608a3d6: hlt    
  0x000000011608a3d7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     152   39             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x0000000116089e90,0x000000011608a160] = 720
 relocation     [0x000000011608a008,0x000000011608a018] = 16
 main code      [0x000000011608a020,0x000000011608a080] = 96
 stub code      [0x000000011608a080,0x000000011608a098] = 24
 metadata       [0x000000011608a098,0x000000011608a0a0] = 8
 scopes data    [0x000000011608a0a0,0x000000011608a0c8] = 40
 scopes pcs     [0x000000011608a0c8,0x000000011608a148] = 128
 dependencies   [0x000000011608a148,0x000000011608a150] = 8
 nul chk table  [0x000000011608a150,0x000000011608a160] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x000000011608a020, 0x000000011608a098]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123973988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000011608a020: mov    %eax,-0x14000(%rsp)
  0x000000011608a027: push   %rbp
  0x000000011608a028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000011608a02c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000011608a05e
  0x000000011608a030: cmp    %r10d,%edx
  0x000000011608a033: jae    0x000000011608a04a
  0x000000011608a035: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000011608a03a: add    $0x20,%rsp
  0x000000011608a03e: pop    %rbp
  0x000000011608a03f: mov    0x108(%r15),%r10
  0x000000011608a046: test   %eax,(%r10)        ;   {poll_return}
  0x000000011608a049: retq   
  0x000000011608a04a: mov    %rsi,%rbp
  0x000000011608a04d: mov    %edx,0x4(%rsp)
  0x000000011608a051: mov    $0xffffffe5,%esi
  0x000000011608a056: nop
  0x000000011608a057: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608a05c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000011608a05e: mov    %rsi,%rbp
  0x000000011608a061: mov    %edx,0x4(%rsp)
  0x000000011608a065: mov    $0xfffffff6,%esi
  0x000000011608a06a: nop
  0x000000011608a06b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011608a070: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000011608a072: hlt    
  0x000000011608a073: hlt    
  0x000000011608a074: hlt    
  0x000000011608a075: hlt    
  0x000000011608a076: hlt    
  0x000000011608a077: hlt    
  0x000000011608a078: hlt    
  0x000000011608a079: hlt    
  0x000000011608a07a: hlt    
  0x000000011608a07b: hlt    
  0x000000011608a07c: hlt    
  0x000000011608a07d: hlt    
  0x000000011608a07e: hlt    
  0x000000011608a07f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011608a080: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011608a085: callq  0x000000011608a08a
  0x000000011608a08a: subq   $0x5,(%rsp)
  0x000000011608a08f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x000000011608a094: hlt    
  0x000000011608a095: hlt    
  0x000000011608a096: hlt    
  0x000000011608a097: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116089e20, 0x0000000116089e48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c17fa0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/invoke/MemberName'
  0x0000000116089e20: mov    0x20(%rsp),%rbx
  0x0000000116089e25: mov    0x24(%rbx),%ebx
  0x0000000116089e28: shl    $0x3,%rbx
  0x0000000116089e2c: mov    0x10(%rbx),%rbx
  0x0000000116089e30: test   %rbx,%rbx
  0x0000000116089e33: je     0x0000000116089e3c
  0x0000000116089e39: jmpq   *0x38(%rbx)
  0x0000000116089e3c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116089e41: hlt    
  0x0000000116089e42: hlt    
  0x0000000116089e43: hlt    
  0x0000000116089e44: hlt    
  0x0000000116089e45: hlt    
  0x0000000116089e46: hlt    
  0x0000000116089e47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000116089c20, 0x0000000116089c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c18108} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  0x0000000116089c20: mov    0x14(%rsi),%ebx
  0x0000000116089c23: shl    $0x3,%rbx
  0x0000000116089c27: mov    0x28(%rbx),%ebx
  0x0000000116089c2a: shl    $0x3,%rbx
  0x0000000116089c2e: mov    0x24(%rbx),%ebx
  0x0000000116089c31: shl    $0x3,%rbx
  0x0000000116089c35: mov    0x10(%rbx),%rbx
  0x0000000116089c39: test   %rbx,%rbx
  0x0000000116089c3c: je     0x0000000116089c45
  0x0000000116089c42: jmpq   *0x38(%rbx)
  0x0000000116089c45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116089c4a: hlt    
  0x0000000116089c4b: hlt    
  0x0000000116089c4c: hlt    
  0x0000000116089c4d: hlt    
  0x0000000116089c4e: hlt    
  0x0000000116089c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001160897a0, 0x00000001160897c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c19180} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/invoke/MemberName'
  0x00000001160897a0: mov    0x28(%rsp),%rbx
  0x00000001160897a5: mov    0x24(%rbx),%ebx
  0x00000001160897a8: shl    $0x3,%rbx
  0x00000001160897ac: mov    0x10(%rbx),%rbx
  0x00000001160897b0: test   %rbx,%rbx
  0x00000001160897b3: je     0x00000001160897bc
  0x00000001160897b9: jmpq   *0x38(%rbx)
  0x00000001160897bc: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160897c1: hlt    
  0x00000001160897c2: hlt    
  0x00000001160897c3: hlt    
  0x00000001160897c4: hlt    
  0x00000001160897c5: hlt    
  0x00000001160897c6: hlt    
  0x00000001160897c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001160895a0, 0x00000001160895d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c192e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  0x00000001160895a0: mov    0x14(%rsi),%ebx
  0x00000001160895a3: shl    $0x3,%rbx
  0x00000001160895a7: mov    0x28(%rbx),%ebx
  0x00000001160895aa: shl    $0x3,%rbx
  0x00000001160895ae: mov    0x24(%rbx),%ebx
  0x00000001160895b1: shl    $0x3,%rbx
  0x00000001160895b5: mov    0x10(%rbx),%rbx
  0x00000001160895b9: test   %rbx,%rbx
  0x00000001160895bc: je     0x00000001160895c5
  0x00000001160895c2: jmpq   *0x38(%rbx)
  0x00000001160895c5: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001160895ca: hlt    
  0x00000001160895cb: hlt    
  0x00000001160895cc: hlt    
  0x00000001160895cd: hlt    
  0x00000001160895ce: hlt    
  0x00000001160895cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x0000000116089320, 0x0000000116089340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c194f0} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116089320: mov    0x24(%rcx),%ebx
  0x0000000116089323: shl    $0x3,%rbx
  0x0000000116089327: mov    0x10(%rbx),%rbx
  0x000000011608932b: test   %rbx,%rbx
  0x000000011608932e: je     0x0000000116089337
  0x0000000116089334: jmpq   *0x38(%rbx)
  0x0000000116089337: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608933c: hlt    
  0x000000011608933d: hlt    
  0x000000011608933e: hlt    
  0x000000011608933f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608f120, 0x000000011608f148]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c1a9e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/invoke/MemberName'
  0x000000011608f120: mov    0x30(%rsp),%rbx
  0x000000011608f125: mov    0x24(%rbx),%ebx
  0x000000011608f128: shl    $0x3,%rbx
  0x000000011608f12c: mov    0x10(%rbx),%rbx
  0x000000011608f130: test   %rbx,%rbx
  0x000000011608f133: je     0x000000011608f13c
  0x000000011608f139: jmpq   *0x38(%rbx)
  0x000000011608f13c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608f141: hlt    
  0x000000011608f142: hlt    
  0x000000011608f143: hlt    
  0x000000011608f144: hlt    
  0x000000011608f145: hlt    
  0x000000011608f146: hlt    
  0x000000011608f147: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x000000011608ef20, 0x000000011608ef50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c1ab00} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011608ef20: mov    0x14(%rsi),%ebx
  0x000000011608ef23: shl    $0x3,%rbx
  0x000000011608ef27: mov    0x28(%rbx),%ebx
  0x000000011608ef2a: shl    $0x3,%rbx
  0x000000011608ef2e: mov    0x24(%rbx),%ebx
  0x000000011608ef31: shl    $0x3,%rbx
  0x000000011608ef35: mov    0x10(%rbx),%rbx
  0x000000011608ef39: test   %rbx,%rbx
  0x000000011608ef3c: je     0x000000011608ef45
  0x000000011608ef42: jmpq   *0x38(%rbx)
  0x000000011608ef45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608ef4a: hlt    
  0x000000011608ef4b: hlt    
  0x000000011608ef4c: hlt    
  0x000000011608ef4d: hlt    
  0x000000011608ef4e: hlt    
  0x000000011608ef4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011608ed20, 0x000000011608ed40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c1ac18} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608ed20: cmp    (%rsi),%rax
  0x000000011608ed23: mov    0x24(%r8),%ebx
  0x000000011608ed27: shl    $0x3,%rbx
  0x000000011608ed2b: mov    0x10(%rbx),%rbx
  0x000000011608ed2f: test   %rbx,%rbx
  0x000000011608ed32: je     0x000000011608ed3b
  0x000000011608ed38: jmpq   *0x38(%rbx)
  0x000000011608ed3b: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011608eb20, 0x000000011608eb50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c1ad80} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  0x000000011608eb20: mov    0x14(%rsi),%ebx
  0x000000011608eb23: shl    $0x3,%rbx
  0x000000011608eb27: mov    0x28(%rbx),%ebx
  0x000000011608eb2a: shl    $0x3,%rbx
  0x000000011608eb2e: mov    0x24(%rbx),%ebx
  0x000000011608eb31: shl    $0x3,%rbx
  0x000000011608eb35: mov    0x10(%rbx),%rbx
  0x000000011608eb39: test   %rbx,%rbx
  0x000000011608eb3c: je     0x000000011608eb45
  0x000000011608eb42: jmpq   *0x38(%rbx)
  0x000000011608eb45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608eb4a: hlt    
  0x000000011608eb4b: hlt    
  0x000000011608eb4c: hlt    
  0x000000011608eb4d: hlt    
  0x000000011608eb4e: hlt    
  0x000000011608eb4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608e920, 0x000000011608e948]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c24398} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/Object'
  # parm12:   [sp+0x30]   = 'java/lang/invoke/MemberName'
  0x000000011608e920: mov    0x38(%rsp),%rbx
  0x000000011608e925: mov    0x24(%rbx),%ebx
  0x000000011608e928: shl    $0x3,%rbx
  0x000000011608e92c: mov    0x10(%rbx),%rbx
  0x000000011608e930: test   %rbx,%rbx
  0x000000011608e933: je     0x000000011608e93c
  0x000000011608e939: jmpq   *0x38(%rbx)
  0x000000011608e93c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608e941: hlt    
  0x000000011608e942: hlt    
  0x000000011608e943: hlt    
  0x000000011608e944: hlt    
  0x000000011608e945: hlt    
  0x000000011608e946: hlt    
  0x000000011608e947: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011608e720, 0x000000011608e750]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c24500} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  # parm11:   [sp+0x30]   = 'java/lang/Object'
  0x000000011608e720: mov    0x14(%rsi),%ebx
  0x000000011608e723: shl    $0x3,%rbx
  0x000000011608e727: mov    0x28(%rbx),%ebx
  0x000000011608e72a: shl    $0x3,%rbx
  0x000000011608e72e: mov    0x24(%rbx),%ebx
  0x000000011608e731: shl    $0x3,%rbx
  0x000000011608e735: mov    0x10(%rbx),%rbx
  0x000000011608e739: test   %rbx,%rbx
  0x000000011608e73c: je     0x000000011608e745
  0x000000011608e742: jmpq   *0x38(%rbx)
  0x000000011608e745: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608e74a: hlt    
  0x000000011608e74b: hlt    
  0x000000011608e74c: hlt    
  0x000000011608e74d: hlt    
  0x000000011608e74e: hlt    
  0x000000011608e74f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608df20, 0x000000011608df48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c275d8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/Object'
  # parm12:   [sp+0x30]   = int
  # parm13:   [sp+0x38]   = 'java/lang/invoke/MemberName'
  0x000000011608df20: mov    0x40(%rsp),%rbx
  0x000000011608df25: mov    0x24(%rbx),%ebx
  0x000000011608df28: shl    $0x3,%rbx
  0x000000011608df2c: mov    0x10(%rbx),%rbx
  0x000000011608df30: test   %rbx,%rbx
  0x000000011608df33: je     0x000000011608df3c
  0x000000011608df39: jmpq   *0x38(%rbx)
  0x000000011608df3c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608df41: hlt    
  0x000000011608df42: hlt    
  0x000000011608df43: hlt    
  0x000000011608df44: hlt    
  0x000000011608df45: hlt    
  0x000000011608df46: hlt    
  0x000000011608df47: hlt    
Compiled method (c2)     187   52             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x0000000116090d10,0x0000000116091b28] = 3608
 relocation     [0x0000000116090e88,0x0000000116090eb8] = 48
 main code      [0x0000000116090ec0,0x00000001160912e0] = 1056
 stub code      [0x00000001160912e0,0x0000000116091308] = 40
 metadata       [0x0000000116091308,0x0000000116091338] = 48
 scopes data    [0x0000000116091338,0x0000000116091538] = 512
 scopes pcs     [0x0000000116091538,0x0000000116091ad8] = 1440
 dependencies   [0x0000000116091ad8,0x0000000116091ae0] = 8
 handler table  [0x0000000116091ae0,0x0000000116091af8] = 24
 nul chk table  [0x0000000116091af8,0x0000000116091b28] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x0000000116090ec0, 0x0000000116091308]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123bf2240} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x0000000116090ec0: mov    0x8(%rsi),%r10d
  0x0000000116090ec4: movabs $0x800000000,%r12
  0x0000000116090ece: add    %r12,%r10
  0x0000000116090ed1: xor    %r12,%r12
  0x0000000116090ed4: cmp    %r10,%rax
  0x0000000116090ed7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x0000000116090edd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000116090ee0: mov    %eax,-0x14000(%rsp)
  0x0000000116090ee7: push   %rbp
  0x0000000116090ee8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x0000000116090eec: mov    %rsi,%r10
  0x0000000116090eef: mov    %rdx,%r9
  0x0000000116090ef2: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x00000001160912a3
  0x0000000116090ef6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00000001160912b2
  0x0000000116090efb: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000116090eff: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000116090f02: cmp    $0xffff,%r11d
  0x0000000116090f09: jg     0x000000011609126e  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000116090f0f: mov    %rsi,%rdi
  0x0000000116090f12: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x0000000116090f16: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00000001160912be
  0x0000000116090f1b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x0000000116090f1e: mov    %r11d,%r10d
  0x0000000116090f21: add    %edx,%r10d
  0x0000000116090f24: add    $0x2,%r10d
  0x0000000116090f28: cmp    %ebx,%r10d
  0x0000000116090f2b: jg     0x0000000116091159  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116090f31: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000116090f34: mov    %r11d,%esi
  0x0000000116090f37: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x0000000116090f3a: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x0000000116090f3e: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x00000001160912ca
  0x0000000116090f43: mov    %edx,%r10d
  0x0000000116090f46: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x0000000116090f49: cmp    %ebp,%edx
  0x0000000116090f4b: jae    0x00000001160911e6
  0x0000000116090f51: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000116090f55: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x0000000116090f5a: mov    %edx,%r14d
  0x0000000116090f5d: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000116090f61: cmp    %ebp,%r10d
  0x0000000116090f64: jae    0x0000000116091212
  0x0000000116090f6a: movslq %edx,%rsi
  0x0000000116090f6d: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000116090f72: test   %r11d,%r11d
  0x0000000116090f75: jle    0x0000000116091142  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000116090f7b: test   %ecx,%ecx
  0x0000000116090f7d: jne    0x000000011609123e
  0x0000000116090f83: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000011609123e
  0x0000000116090f88: test   %r10d,%r10d
  0x0000000116090f8b: jbe    0x000000011609123e
  0x0000000116090f91: movslq %r10d,%rcx
  0x0000000116090f94: movslq %r11d,%r13
  0x0000000116090f97: mov    %r13,%r10
  0x0000000116090f9a: dec    %r10
  0x0000000116090f9d: cmp    %rcx,%r10
  0x0000000116090fa0: jae    0x000000011609123e
  0x0000000116090fa6: cmp    %ebp,%r14d
  0x0000000116090fa9: jae    0x000000011609123e
  0x0000000116090faf: movslq %ebp,%r10
  0x0000000116090fb2: movslq %r14d,%rcx
  0x0000000116090fb5: add    %r13,%rcx
  0x0000000116090fb8: dec    %rcx
  0x0000000116090fbb: cmp    %r10,%rcx
  0x0000000116090fbe: jae    0x000000011609123e
  0x0000000116090fc4: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116090fca: mov    %ecx,%ebp
  0x0000000116090fcc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116090fd0: mov    %ebp,%r10d
  0x0000000116090fd3: dec    %r10d
  0x0000000116090fd6: cmp    $0x7f,%r10d
  0x0000000116090fda: jae    0x0000000116091286  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000116090fe0: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000116090fe4: mov    %r11d,%r13d
  0x0000000116090fe7: add    $0xfffffffd,%r13d
  0x0000000116090feb: lea    (%r12,%r8,8),%rsi
  0x0000000116090fef: mov    $0x1,%ecx
  0x0000000116090ff4: mov    $0x80000000,%r8d
  0x0000000116090ffa: cmp    %r13d,%r11d
  0x0000000116090ffd: cmovl  %r8d,%r13d
  0x0000000116091001: cmp    $0x1,%r13d
  0x0000000116091005: jle    0x0000000116091262  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000011609100b: jmp    0x000000011609101c
  0x000000011609100d: vmovq  %xmm0,%r9
  0x0000000116091012: vmovq  %xmm1,%rdi
  0x0000000116091017: vmovd  %xmm3,%r11d
  0x000000011609101c: mov    %r13d,%r10d
  0x000000011609101f: sub    %ecx,%r10d
  0x0000000116091022: mov    $0xfa0,%r14d
  0x0000000116091028: cmp    %r14d,%r10d
  0x000000011609102b: cmovg  %r14d,%r10d
  0x000000011609102f: add    %ecx,%r10d
  0x0000000116091032: vmovq  %r9,%xmm0
  0x0000000116091037: vmovq  %rdi,%xmm1
  0x000000011609103c: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000116091041: mov    %ecx,%r14d
  0x0000000116091044: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000116091047: movslq %ecx,%r9
  0x000000011609104a: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091050: mov    %r8d,%ebp
  0x0000000116091053: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091057: mov    %ebp,%r11d
  0x000000011609105a: dec    %r11d
  0x000000011609105d: cmp    $0x7f,%r11d
  0x0000000116091061: jae    0x0000000116091192  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000116091067: movslq %r14d,%rdi
  0x000000011609106a: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011609106f: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091075: mov    %r11d,%ebp
  0x0000000116091078: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011609107c: mov    %ebp,%r8d
  0x000000011609107f: dec    %r8d
  0x0000000116091082: cmp    $0x7f,%r8d
  0x0000000116091086: jae    0x0000000116091198  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011609108c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000116091091: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091097: mov    %r8d,%ebp
  0x000000011609109a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011609109e: mov    %ebp,%r11d
  0x00000001160910a1: dec    %r11d
  0x00000001160910a4: cmp    $0x7f,%r11d
  0x00000001160910a8: jae    0x00000001160911a0  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001160910ae: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001160910b3: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001160910b9: mov    %r8d,%ebp
  0x00000001160910bc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001160910c0: mov    %ebp,%r11d
  0x00000001160910c3: dec    %r11d
  0x00000001160910c6: cmp    $0x7f,%r11d
  0x00000001160910ca: jae    0x00000001160911a9  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001160910d0: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001160910d5: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001160910d8: cmp    %r10d,%ecx
  0x00000001160910db: jl     0x0000000116091041  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001160910e1: mov    0x108(%r15),%r9
  0x00000001160910e8: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001160910ec: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x00000001160910ef: cmp    %r13d,%ecx
  0x00000001160910f2: jl     0x000000011609100d
  0x00000001160910f8: vmovq  %xmm0,%r9
  0x00000001160910fd: vmovq  %xmm1,%rdi
  0x0000000116091102: vmovd  %xmm3,%r11d
  0x0000000116091107: cmp    %r11d,%ecx
  0x000000011609110a: jge    0x0000000116091142  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011609110c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091112: mov    %ecx,%r14d
  0x0000000116091115: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000116091118: mov    %r8d,%ebp
  0x000000011609111b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011609111f: mov    %ebp,%r10d
  0x0000000116091122: dec    %r10d
  0x0000000116091125: cmp    $0x7f,%r10d
  0x0000000116091129: jae    0x000000011609128d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011609112f: movslq %r14d,%r10
  0x0000000116091132: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000116091137: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000116091139: cmp    %r11d,%ecx
  0x000000011609113c: jl     0x000000011609110c
  0x000000011609113e: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000116091142: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x0000000116091146: mov    %rdi,%rax
  0x0000000116091149: add    $0x40,%rsp
  0x000000011609114d: pop    %rbp
  0x000000011609114e: mov    0x108(%r15),%r10
  0x0000000116091155: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116091158: retq   
  0x0000000116091159: mov    %edx,0xc(%rsp)
  0x000000011609115d: mov    %rsi,(%rsp)
  0x0000000116091161: mov    %r9,%rbp
  0x0000000116091164: mov    %r11d,%edx
  0x0000000116091167: mov    %r11d,0x8(%rsp)
  0x000000011609116c: add    $0x2,%edx
  0x000000011609116f: callq  0x0000000116041f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x0000000116091174: mov    %rbp,%r9
  0x0000000116091177: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011609117b: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000116091180: mov    (%rsp),%rdi
  0x0000000116091184: mov    0x8(%rsp),%r11d
  0x0000000116091189: mov    0xc(%rsp),%edx
  0x000000011609118d: jmpq   0x0000000116090f31
  0x0000000116091192: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000116091196: jmp    0x00000001160911b0
  0x0000000116091198: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011609119a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011609119e: jmp    0x00000001160911b0
  0x00000001160911a0: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001160911a3: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001160911a7: jmp    0x00000001160911b0
  0x00000001160911a9: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001160911ac: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001160911b0: vmovq  %xmm0,%r9
  0x00000001160911b5: vmovq  %xmm1,%rdi
  0x00000001160911ba: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001160911bf: mov    $0xffffff45,%esi
  0x00000001160911c4: mov    %r14d,(%rsp)
  0x00000001160911c8: mov    %ecx,0x4(%rsp)
  0x00000001160911cc: mov    %rdi,0x10(%rsp)
  0x00000001160911d1: mov    %r9,0x18(%rsp)
  0x00000001160911d6: mov    %r11d,0xc(%rsp)
  0x00000001160911db: mov    %ebx,0x20(%rsp)
  0x00000001160911df: callq  0x0000000116043900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160911e4: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001160911e6: mov    $0xffffffe4,%esi
  0x00000001160911eb: mov    %edx,%ebp
  0x00000001160911ed: mov    %rdi,(%rsp)
  0x00000001160911f1: mov    %r9,0x8(%rsp)
  0x00000001160911f6: mov    %r11d,0x10(%rsp)
  0x00000001160911fb: mov    %r10d,0x14(%rsp)
  0x0000000116091200: mov    %ebx,0x1c(%rsp)
  0x0000000116091204: mov    %eax,0x20(%rsp)
  0x0000000116091208: data16 xchg %ax,%ax
  0x000000011609120b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116091210: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000116091212: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x0000000116091216: mov    $0xffffffe4,%esi
  0x000000011609121b: mov    %r14d,(%rsp)
  0x000000011609121f: mov    %rdi,0x8(%rsp)
  0x0000000116091224: mov    %r9,0x10(%rsp)
  0x0000000116091229: mov    %r11d,0x4(%rsp)
  0x000000011609122e: mov    %ebx,0x1c(%rsp)
  0x0000000116091232: mov    %r10d,0x20(%rsp)
  0x0000000116091237: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011609123c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011609123e: mov    $0xffffff7e,%esi
  0x0000000116091243: mov    %r14d,%ebp
  0x0000000116091246: mov    %rdi,(%rsp)
  0x000000011609124a: mov    %r9,0x8(%rsp)
  0x000000011609124f: mov    %ebx,0x14(%rsp)
  0x0000000116091253: mov    %r11d,0x18(%rsp)
  0x0000000116091258: data16 xchg %ax,%ax
  0x000000011609125b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116091260: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000116091262: mov    %edx,%r14d
  0x0000000116091265: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x0000000116091269: jmpq   0x0000000116091107
  0x000000011609126e: mov    $0xffffff4d,%esi
  0x0000000116091273: mov    %r10,%rbp
  0x0000000116091276: mov    %rdx,(%rsp)
  0x000000011609127a: mov    %r11d,0xc(%rsp)
  0x000000011609127f: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116091284: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000116091286: xor    %ecx,%ecx
  0x0000000116091288: jmpq   0x00000001160911bf
  0x000000011609128d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000116091291: jmpq   0x00000001160911bf  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x0000000116091296: mov    %rax,%rsi
  0x0000000116091299: add    $0x40,%rsp
  0x000000011609129d: pop    %rbp
  0x000000011609129e: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x00000001160912a3: mov    $0xfffffff6,%esi
  0x00000001160912a8: data16 xchg %ax,%ax
  0x00000001160912ab: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160912b0: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001160912b2: mov    $0xfffffff6,%esi
  0x00000001160912b7: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160912bc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001160912be: mov    $0xfffffff6,%esi
  0x00000001160912c3: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160912c8: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x00000001160912ca: mov    $0xfffffff6,%esi
  0x00000001160912cf: mov    %edx,%ebp
  0x00000001160912d1: mov    %eax,(%rsp)
  0x00000001160912d4: data16 xchg %ax,%ax
  0x00000001160912d7: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160912dc: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x00000001160912de: hlt    
  0x00000001160912df: hlt    
[Stub Code]
  0x00000001160912e0: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001160912ea: jmpq   0x00000001160912ea  ;   {runtime_call}
[Exception Handler]
  0x00000001160912ef: jmpq   0x0000000116078680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001160912f4: callq  0x00000001160912f9
  0x00000001160912f9: subq   $0x5,(%rsp)
  0x00000001160912fe: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116091303: hlt    
  0x0000000116091304: hlt    
  0x0000000116091305: hlt    
  0x0000000116091306: hlt    
  0x0000000116091307: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000011608dd20, 0x000000011608dd50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c32210} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  # parm11:   [sp+0x30]   = 'java/lang/Object'
  # parm12:   [sp+0x38]   = int
  0x000000011608dd20: mov    0x14(%rsi),%ebx
  0x000000011608dd23: shl    $0x3,%rbx
  0x000000011608dd27: mov    0x28(%rbx),%ebx
  0x000000011608dd2a: shl    $0x3,%rbx
  0x000000011608dd2e: mov    0x24(%rbx),%ebx
  0x000000011608dd31: shl    $0x3,%rbx
  0x000000011608dd35: mov    0x10(%rbx),%rbx
  0x000000011608dd39: test   %rbx,%rbx
  0x000000011608dd3c: je     0x000000011608dd45
  0x000000011608dd42: jmpq   *0x38(%rbx)
  0x000000011608dd45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608dd4a: hlt    
  0x000000011608dd4b: hlt    
  0x000000011608dd4c: hlt    
  0x000000011608dd4d: hlt    
  0x000000011608dd4e: hlt    
  0x000000011608dd4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608d820, 0x000000011608d848]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c347c0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/Object'
  # parm12:   [sp+0x30]   = int
  # parm13:   [sp+0x38]   = int
  # parm14:   [sp+0x40]   = 'java/lang/invoke/MemberName'
  0x000000011608d820: mov    0x48(%rsp),%rbx
  0x000000011608d825: mov    0x24(%rbx),%ebx
  0x000000011608d828: shl    $0x3,%rbx
  0x000000011608d82c: mov    0x10(%rbx),%rbx
  0x000000011608d830: test   %rbx,%rbx
  0x000000011608d833: je     0x000000011608d83c
  0x000000011608d839: jmpq   *0x38(%rbx)
  0x000000011608d83c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608d841: hlt    
  0x000000011608d842: hlt    
  0x000000011608d843: hlt    
  0x000000011608d844: hlt    
  0x000000011608d845: hlt    
  0x000000011608d846: hlt    
  0x000000011608d847: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000011608d620, 0x000000011608d650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c34dc8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  # parm11:   [sp+0x30]   = 'java/lang/Object'
  # parm12:   [sp+0x38]   = int
  # parm13:   [sp+0x40]   = int
  0x000000011608d620: mov    0x14(%rsi),%ebx
  0x000000011608d623: shl    $0x3,%rbx
  0x000000011608d627: mov    0x28(%rbx),%ebx
  0x000000011608d62a: shl    $0x3,%rbx
  0x000000011608d62e: mov    0x24(%rbx),%ebx
  0x000000011608d631: shl    $0x3,%rbx
  0x000000011608d635: mov    0x10(%rbx),%rbx
  0x000000011608d639: test   %rbx,%rbx
  0x000000011608d63c: je     0x000000011608d645
  0x000000011608d642: jmpq   *0x38(%rbx)
  0x000000011608d645: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608d64a: hlt    
  0x000000011608d64b: hlt    
  0x000000011608d64c: hlt    
  0x000000011608d64d: hlt    
  0x000000011608d64e: hlt    
  0x000000011608d64f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608d120, 0x000000011608d148]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c36218} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/Object'
  # parm9:    [sp+0x18]   = 'java/lang/Object'
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/Object'
  # parm12:   [sp+0x30]   = int
  # parm13:   [sp+0x38]   = int
  # parm14:   [sp+0x40]   = 'java/lang/Object'
  # parm15:   [sp+0x48]   = 'java/lang/invoke/MemberName'
  0x000000011608d120: mov    0x50(%rsp),%rbx
  0x000000011608d125: mov    0x24(%rbx),%ebx
  0x000000011608d128: shl    $0x3,%rbx
  0x000000011608d12c: mov    0x10(%rbx),%rbx
  0x000000011608d130: test   %rbx,%rbx
  0x000000011608d133: je     0x000000011608d13c
  0x000000011608d139: jmpq   *0x38(%rbx)
  0x000000011608d13c: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608d141: hlt    
  0x000000011608d142: hlt    
  0x000000011608d143: hlt    
  0x000000011608d144: hlt    
  0x000000011608d145: hlt    
  0x000000011608d146: hlt    
  0x000000011608d147: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x000000011608cf20, 0x000000011608cf50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c364e8} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x000000011608cf20: mov    0x14(%rsi),%ebx
  0x000000011608cf23: shl    $0x3,%rbx
  0x000000011608cf27: mov    0x28(%rbx),%ebx
  0x000000011608cf2a: shl    $0x3,%rbx
  0x000000011608cf2e: mov    0x24(%rbx),%ebx
  0x000000011608cf31: shl    $0x3,%rbx
  0x000000011608cf35: mov    0x10(%rbx),%rbx
  0x000000011608cf39: test   %rbx,%rbx
  0x000000011608cf3c: je     0x000000011608cf45
  0x000000011608cf42: jmpq   *0x38(%rbx)
  0x000000011608cf45: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608cf4a: hlt    
  0x000000011608cf4b: hlt    
  0x000000011608cf4c: hlt    
  0x000000011608cf4d: hlt    
  0x000000011608cf4e: hlt    
  0x000000011608cf4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011608cb20, 0x000000011608cb40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c36600} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011608cb20: cmp    (%rsi),%rax
  0x000000011608cb23: mov    0x24(%rdx),%ebx
  0x000000011608cb26: shl    $0x3,%rbx
  0x000000011608cb2a: mov    0x10(%rbx),%rbx
  0x000000011608cb2e: test   %rbx,%rbx
  0x000000011608cb31: je     0x000000011608cb3a
  0x000000011608cb37: jmpq   *0x38(%rbx)
  0x000000011608cb3a: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608cb3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000011608c920, 0x000000011608c950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c367b8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = 'java/lang/Object'
  # parm9:    [sp+0x20]   = 'java/lang/Object'
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  # parm11:   [sp+0x30]   = 'java/lang/Object'
  # parm12:   [sp+0x38]   = int
  # parm13:   [sp+0x40]   = int
  # parm14:   [sp+0x48]   = 'java/lang/Object'
  0x000000011608c920: mov    0x14(%rsi),%ebx
  0x000000011608c923: shl    $0x3,%rbx
  0x000000011608c927: mov    0x28(%rbx),%ebx
  0x000000011608c92a: shl    $0x3,%rbx
  0x000000011608c92e: mov    0x24(%rbx),%ebx
  0x000000011608c931: shl    $0x3,%rbx
  0x000000011608c935: mov    0x10(%rbx),%rbx
  0x000000011608c939: test   %rbx,%rbx
  0x000000011608c93c: je     0x000000011608c945
  0x000000011608c942: jmpq   *0x38(%rbx)
  0x000000011608c945: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608c94a: hlt    
  0x000000011608c94b: hlt    
  0x000000011608c94c: hlt    
  0x000000011608c94d: hlt    
  0x000000011608c94e: hlt    
  0x000000011608c94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x000000011608c4a0, 0x000000011608c4d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c373a0} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011608c4a0: mov    0x14(%rsi),%ebx
  0x000000011608c4a3: shl    $0x3,%rbx
  0x000000011608c4a7: mov    0x28(%rbx),%ebx
  0x000000011608c4aa: shl    $0x3,%rbx
  0x000000011608c4ae: mov    0x24(%rbx),%ebx
  0x000000011608c4b1: shl    $0x3,%rbx
  0x000000011608c4b5: mov    0x10(%rbx),%rbx
  0x000000011608c4b9: test   %rbx,%rbx
  0x000000011608c4bc: je     0x000000011608c4c5
  0x000000011608c4c2: jmpq   *0x38(%rbx)
  0x000000011608c4c5: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011608c4ca: hlt    
  0x000000011608c4cb: hlt    
  0x000000011608c4cc: hlt    
  0x000000011608c4cd: hlt    
  0x000000011608c4ce: hlt    
  0x000000011608c4cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000116090a20, 0x0000000116090a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000123c374b8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000116090a20: cmp    (%rsi),%rax
  0x0000000116090a23: mov    0x24(%rcx),%ebx
  0x0000000116090a26: shl    $0x3,%rbx
  0x0000000116090a2a: mov    0x10(%rbx),%rbx
  0x0000000116090a2e: test   %rbx,%rbx
  0x0000000116090a31: je     0x0000000116090a3a
  0x0000000116090a37: jmpq   *0x38(%rbx)
  0x0000000116090a3a: jmpq   0x000000011605b880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000116090a3f: hlt    
Time elapsed: 2.292 ms result=100
Warmup phase
Compiled method (c2)     224   62             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x0000000116095310,0x0000000116095558] = 584
 relocation     [0x0000000116095488,0x0000000116095498] = 16
 main code      [0x00000001160954a0,0x00000001160954e0] = 64
 stub code      [0x00000001160954e0,0x00000001160954f8] = 24
 metadata       [0x00000001160954f8,0x0000000116095500] = 8
 scopes data    [0x0000000116095500,0x0000000116095510] = 16
 scopes pcs     [0x0000000116095510,0x0000000116095550] = 64
 dependencies   [0x0000000116095550,0x0000000116095558] = 8
----------------------------------------------------------------------
java/lang/Integer.intValue()I  [0x00000001160954a0, 0x00000001160954f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123914e20} 'intValue' '()I' in 'java/lang/Integer'
  #           [sp+0x20]  (sp of caller)
  0x00000001160954a0: mov    0x8(%rsi),%r10d
  0x00000001160954a4: movabs $0x800000000,%r12
  0x00000001160954ae: add    %r12,%r10
  0x00000001160954b1: xor    %r12,%r12
  0x00000001160954b4: cmp    %r10,%rax
  0x00000001160954b7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x00000001160954bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001160954c0: sub    $0x18,%rsp
  0x00000001160954c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::intValue@-1 (line 1123)

  0x00000001160954cc: mov    0xc(%rsi),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)

  0x00000001160954cf: add    $0x10,%rsp
  0x00000001160954d3: pop    %rbp
  0x00000001160954d4: mov    0x108(%r15),%r10
  0x00000001160954db: test   %eax,(%r10)        ;   {poll_return}
  0x00000001160954de: retq   
  0x00000001160954df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001160954e0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001160954e5: callq  0x00000001160954ea
  0x00000001160954ea: subq   $0x5,(%rsp)
  0x00000001160954ef: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x00000001160954f4: hlt    
  0x00000001160954f5: hlt    
  0x00000001160954f6: hlt    
  0x00000001160954f7: hlt    
Compiled method (c2)     229   63             java.util.HashMap::hash (20 bytes)
 total in heap  [0x0000000116093490,0x0000000116093c80] = 2032
 relocation     [0x0000000116093608,0x0000000116093628] = 32
 main code      [0x0000000116093640,0x0000000116093880] = 576
 stub code      [0x0000000116093880,0x0000000116093898] = 24
 metadata       [0x0000000116093898,0x00000001160938c8] = 48
 scopes data    [0x00000001160938c8,0x00000001160939e0] = 280
 scopes pcs     [0x00000001160939e0,0x0000000116093c60] = 640
 dependencies   [0x0000000116093c60,0x0000000116093c68] = 8
 nul chk table  [0x0000000116093c68,0x0000000116093c80] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x0000000116093640, 0x0000000116093898]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123942940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000116093640: mov    %eax,-0x14000(%rsp)
  0x0000000116093647: push   %rbp
  0x0000000116093648: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000011609364c: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000116093856
  0x0000000116093650: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000116093657: jne    0x0000000116093676  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093659: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000011609365d: mov    %r11d,%eax
  0x0000000116093660: shr    $0x10,%eax
  0x0000000116093663: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x0000000116093666: add    $0x20,%rsp
  0x000000011609366a: pop    %rbp
  0x000000011609366b: mov    0x108(%r15),%r10
  0x0000000116093672: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116093675: retq   
  0x0000000116093676: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000011609367d: jne    0x0000000116093818  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093683: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093687: test   %r11d,%r11d
  0x000000011609368a: jne    0x000000011609365d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011609368c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011609368f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x0000000116093866
  0x0000000116093694: test   %ecx,%ecx
  0x0000000116093696: jbe    0x0000000116093810  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011609369c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160936a0: test   %ebp,%ebp
  0x00000001160936a2: jne    0x0000000116093842  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160936a8: mov    %ecx,%r11d
  0x00000001160936ab: dec    %r11d
  0x00000001160936ae: cmp    %ecx,%r11d
  0x00000001160936b1: jae    0x000000011609382a
  0x00000001160936b7: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160936bd: mov    %ecx,%r13d
  0x00000001160936c0: add    $0xfffffff9,%r13d
  0x00000001160936c4: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160936c8: mov    $0x80000000,%r9d
  0x00000001160936ce: cmp    %r13d,%r11d
  0x00000001160936d1: cmovl  %r9d,%r13d
  0x00000001160936d5: mov    $0x1,%r9d
  0x00000001160936db: cmp    $0x1,%r13d
  0x00000001160936df: jle    0x00000001160937dd
  0x00000001160936e5: mov    %r8d,%ebx
  0x00000001160936e8: shl    $0x5,%ebx
  0x00000001160936eb: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160936ee: jmp    0x00000001160936f4
  0x00000001160936f0: vmovd  %xmm0,%ecx
  0x00000001160936f4: mov    %r13d,%r14d
  0x00000001160936f7: sub    %r9d,%r14d
  0x00000001160936fa: mov    $0x1f40,%r10d
  0x0000000116093700: cmp    %r10d,%r14d
  0x0000000116093703: mov    $0x1f40,%r11d
  0x0000000116093709: cmovg  %r11d,%r14d
  0x000000011609370d: add    %r9d,%r14d
  0x0000000116093710: vmovd  %ecx,%xmm0
  0x0000000116093714: nopl   0x0(%rax,%rax,1)
  0x000000011609371c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093720: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093723: movzbl 0x10(%rax,%r11,1),%r10d
  0x0000000116093729: movzbl 0x17(%rax,%r11,1),%ecx
  0x000000011609372f: movzbl 0x11(%rax,%r11,1),%edx
  0x0000000116093735: movzbl 0x16(%rax,%r11,1),%edi
  0x000000011609373b: movzbl 0x15(%rax,%r11,1),%ebp
  0x0000000116093741: add    %r10d,%ebx
  0x0000000116093744: movzbl 0x13(%rax,%r11,1),%r10d
  0x000000011609374a: mov    %ebx,%r8d
  0x000000011609374d: shl    $0x5,%r8d
  0x0000000116093751: sub    %ebx,%r8d
  0x0000000116093754: add    %edx,%r8d
  0x0000000116093757: movzbl 0x12(%rax,%r11,1),%ebx
  0x000000011609375d: movzbl 0x14(%rax,%r11,1),%edx
  0x0000000116093763: mov    %r8d,%r11d
  0x0000000116093766: shl    $0x5,%r11d
  0x000000011609376a: sub    %r8d,%r11d
  0x000000011609376d: add    %ebx,%r11d
  0x0000000116093770: mov    %r11d,%ebx
  0x0000000116093773: shl    $0x5,%ebx
  0x0000000116093776: sub    %r11d,%ebx
  0x0000000116093779: add    %r10d,%ebx
  0x000000011609377c: mov    %ebx,%r11d
  0x000000011609377f: shl    $0x5,%r11d
  0x0000000116093783: sub    %ebx,%r11d
  0x0000000116093786: add    %edx,%r11d
  0x0000000116093789: mov    %r11d,%r8d
  0x000000011609378c: shl    $0x5,%r8d
  0x0000000116093790: sub    %r11d,%r8d
  0x0000000116093793: add    %ebp,%r8d
  0x0000000116093796: mov    %r8d,%r10d
  0x0000000116093799: shl    $0x5,%r10d
  0x000000011609379d: sub    %r8d,%r10d
  0x00000001160937a0: add    %edi,%r10d
  0x00000001160937a3: mov    %r10d,%r8d
  0x00000001160937a6: shl    $0x5,%r8d
  0x00000001160937aa: sub    %r10d,%r8d
  0x00000001160937ad: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937b0: mov    %r8d,%ebx
  0x00000001160937b3: shl    $0x5,%ebx
  0x00000001160937b6: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937b9: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937bd: cmp    %r14d,%r9d
  0x00000001160937c0: jl     0x0000000116093720  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937c6: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937cd: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x00000001160937d0: cmp    %r13d,%r9d
  0x00000001160937d3: jl     0x00000001160936f0
  0x00000001160937d9: vmovd  %xmm0,%ecx
  0x00000001160937dd: cmp    %ecx,%r9d
  0x00000001160937e0: jge    0x000000011609380b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937e2: movzbl 0x10(%rax,%r9,1),%r10d
  0x00000001160937e8: mov    %r8d,%r11d
  0x00000001160937eb: shl    $0x5,%r11d
  0x00000001160937ef: sub    %r8d,%r11d
  0x00000001160937f2: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937f5: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937f8: cmp    %ecx,%r9d
  0x00000001160937fb: jge    0x0000000116093802  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001160937fd: mov    %r11d,%r8d
  0x0000000116093800: jmp    0x00000001160937e2
  0x0000000116093802: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093806: jmpq   0x000000011609365d
  0x000000011609380b: mov    %r8d,%r11d
  0x000000011609380e: jmp    0x0000000116093802
  0x0000000116093810: xor    %r11d,%r11d
  0x0000000116093813: jmpq   0x000000011609365d
  0x0000000116093818: mov    %rsi,%rbp
  0x000000011609381b: mov    $0xffffffc6,%esi
  0x0000000116093820: data16 xchg %ax,%ax
  0x0000000116093823: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093828: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011609382a: mov    %rsi,%rbp
  0x000000011609382d: mov    %ebx,(%rsp)
  0x0000000116093830: mov    %ecx,0x8(%rsp)
  0x0000000116093834: mov    $0xffffff7e,%esi
  0x0000000116093839: xchg   %ax,%ax
  0x000000011609383b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093840: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093842: mov    %rsi,0x8(%rsp)
  0x0000000116093847: mov    $0xffffff4d,%esi
  0x000000011609384c: data16 xchg %ax,%ax
  0x000000011609384f: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093854: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093856: mov    %rsi,(%rsp)
  0x000000011609385a: mov    $0xffffff4d,%esi
  0x000000011609385f: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093864: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x0000000116093866: mov    $0xfffffff6,%esi
  0x000000011609386b: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093870: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000116093872: hlt    
  0x0000000116093873: hlt    
  0x0000000116093874: hlt    
  0x0000000116093875: hlt    
  0x0000000116093876: hlt    
  0x0000000116093877: hlt    
  0x0000000116093878: hlt    
  0x0000000116093879: hlt    
  0x000000011609387a: hlt    
  0x000000011609387b: hlt    
  0x000000011609387c: hlt    
  0x000000011609387d: hlt    
  0x000000011609387e: hlt    
  0x000000011609387f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000116093880: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000116093885: callq  0x000000011609388a
  0x000000011609388a: subq   $0x5,(%rsp)
  0x000000011609388f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116093894: hlt    
  0x0000000116093895: hlt    
  0x0000000116093896: hlt    
  0x0000000116093897: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     237   64             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x0000000116093010,0x0000000116093440] = 1072
 relocation     [0x0000000116093188,0x00000001160931a8] = 32
 main code      [0x00000001160931c0,0x00000001160932c0] = 256
 stub code      [0x00000001160932c0,0x00000001160932d8] = 24
 oops           [0x00000001160932d8,0x00000001160932e0] = 8
 metadata       [0x00000001160932e0,0x00000001160932f0] = 16
 scopes data    [0x00000001160932f0,0x0000000116093340] = 80
 scopes pcs     [0x0000000116093340,0x0000000116093420] = 224
 dependencies   [0x0000000116093420,0x0000000116093428] = 8
 handler table  [0x0000000116093428,0x0000000116093440] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x00000001160931c0, 0x00000001160932d8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123914a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001160931c0: mov    %eax,-0x14000(%rsp)
  0x00000001160931c7: push   %rbp
  0x00000001160931c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x00000001160931cc: mov    %esi,(%rsp)
  0x00000001160931cf: cmp    $0xffffff80,%esi
  0x00000001160931d2: jl     0x000000011609327e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x00000001160931d8: cmp    $0x7f,%esi
  0x00000001160931db: jle    0x000000011609323f  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x00000001160931dd: mov    0x118(%r15),%rax
  0x00000001160931e4: mov    %rax,%r10
  0x00000001160931e7: add    $0x10,%r10
  0x00000001160931eb: cmp    0x128(%r15),%r10
  0x00000001160931f2: jae    0x000000011609326a
  0x00000001160931f4: mov    %r10,0x118(%r15)
  0x00000001160931fb: prefetchnta 0xc0(%r10)
  0x0000000116093203: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000116093209: movabs $0x800000000,%r10
  0x0000000116093213: add    %r11,%r10
  0x0000000116093216: mov    0xb8(%r10),%r10
  0x000000011609321d: mov    %r10,(%rax)
  0x0000000116093220: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000116093227: mov    (%rsp),%r11d
  0x000000011609322b: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000011609322f: add    $0x20,%rsp
  0x0000000116093233: pop    %rbp
  0x0000000116093234: mov    0x108(%r15),%r10
  0x000000011609323b: test   %eax,(%r10)        ;   {poll_return}
  0x000000011609323e: retq   
  0x000000011609323f: mov    %esi,%ebp
  0x0000000116093241: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x0000000116093247: cmp    $0x100,%ebp
  0x000000011609324d: jae    0x000000011609328e
  0x000000011609324f: movslq %esi,%r10
  0x0000000116093252: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000011609325c: mov    0x210(%r11,%r10,4),%r10d
  0x0000000116093264: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x0000000116093268: jmp    0x000000011609322f
  0x000000011609326a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000116093274: mov    (%rsp),%ebp
  0x0000000116093277: callq  0x0000000116078380  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011609327c: jmp    0x0000000116093227
  0x000000011609327e: mov    $0xffffff4d,%esi
  0x0000000116093283: mov    (%rsp),%ebp
  0x0000000116093286: nop
  0x0000000116093287: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011609328c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000011609328e: mov    $0xffffffe4,%esi
  0x0000000116093293: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116093298: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000011609329a: mov    %rax,%rsi
  0x000000011609329d: add    $0x20,%rsp
  0x00000001160932a1: pop    %rbp
  0x00000001160932a2: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x00000001160932a7: hlt    
  0x00000001160932a8: hlt    
  0x00000001160932a9: hlt    
  0x00000001160932aa: hlt    
  0x00000001160932ab: hlt    
  0x00000001160932ac: hlt    
  0x00000001160932ad: hlt    
  0x00000001160932ae: hlt    
  0x00000001160932af: hlt    
  0x00000001160932b0: hlt    
  0x00000001160932b1: hlt    
  0x00000001160932b2: hlt    
  0x00000001160932b3: hlt    
  0x00000001160932b4: hlt    
  0x00000001160932b5: hlt    
  0x00000001160932b6: hlt    
  0x00000001160932b7: hlt    
  0x00000001160932b8: hlt    
  0x00000001160932b9: hlt    
  0x00000001160932ba: hlt    
  0x00000001160932bb: hlt    
  0x00000001160932bc: hlt    
  0x00000001160932bd: hlt    
  0x00000001160932be: hlt    
  0x00000001160932bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001160932c0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001160932c5: callq  0x00000001160932ca
  0x00000001160932ca: subq   $0x5,(%rsp)
  0x00000001160932cf: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x00000001160932d4: hlt    
  0x00000001160932d5: hlt    
  0x00000001160932d6: hlt    
  0x00000001160932d7: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     241   65             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x0000000116092810,0x0000000116092f90] = 1920
 relocation     [0x0000000116092988,0x00000001160929b0] = 40
 main code      [0x00000001160929c0,0x0000000116092b80] = 448
 stub code      [0x0000000116092b80,0x0000000116092b98] = 24
 metadata       [0x0000000116092b98,0x0000000116092bb8] = 32
 scopes data    [0x0000000116092bb8,0x0000000116092d30] = 376
 scopes pcs     [0x0000000116092d30,0x0000000116092f60] = 560
 dependencies   [0x0000000116092f60,0x0000000116092f68] = 8
 nul chk table  [0x0000000116092f68,0x0000000116092f90] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x00000001160929c0, 0x0000000116092b98]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123943540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00000001160929c0: mov    0x8(%rsi),%r10d
  0x00000001160929c4: movabs $0x800000000,%r12
  0x00000001160929ce: add    %r12,%r10
  0x00000001160929d1: xor    %r12,%r12
  0x00000001160929d4: cmp    %r10,%rax
  0x00000001160929d7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x00000001160929dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001160929e0: mov    %eax,-0x14000(%rsp)
  0x00000001160929e7: push   %rbp
  0x00000001160929e8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x00000001160929ec: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x00000001160929f0: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x0000000116092b1e
  0x00000001160929f5: test   %r8d,%r8d
  0x00000001160929f8: jbe    0x0000000116092a8e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x00000001160929fe: shl    $0x3,%r10
  0x0000000116092a02: dec    %r8d
  0x0000000116092a05: and    %edx,%r8d
  0x0000000116092a08: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000116092a0d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x0000000116092b36
  0x0000000116092a12: cmp    %edx,%ebp
  0x0000000116092a14: jne    0x0000000116092aaa  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000116092a1a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x0000000116092a1f: mov    %r8,%r11
  0x0000000116092a22: shl    $0x3,%r11
  0x0000000116092a26: cmp    %rcx,%r11
  0x0000000116092a29: je     0x0000000116092a5b  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x0000000116092a2b: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x0000000116092b4e
  0x0000000116092a2f: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116092a36: jne    0x0000000116092a6f  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a38: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x0000000116092b06
  0x0000000116092a3d: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116092a44: jne    0x0000000116092ae6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a4a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a4e: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a52: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a56: cmp    %ebp,%r9d
  0x0000000116092a59: jne    0x0000000116092ac6  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x0000000116092a5b: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000116092a5f: add    $0x30,%rsp
  0x0000000116092a63: pop    %rbp
  0x0000000116092a64: mov    0x108(%r15),%r10
  0x0000000116092a6b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116092a6e: retq   
  0x0000000116092a6f: mov    $0xffffffde,%esi
  0x0000000116092a74: mov    %edx,%ebp
  0x0000000116092a76: mov    %rcx,0x8(%rsp)
  0x0000000116092a7b: mov    %r10d,0x10(%rsp)
  0x0000000116092a80: mov    %r8d,0x14(%rsp)
  0x0000000116092a85: xchg   %ax,%ax
  0x0000000116092a87: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092a8c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092a8e: mov    $0xffffff4d,%esi
  0x0000000116092a93: mov    %edx,%ebp
  0x0000000116092a95: mov    %rcx,(%rsp)
  0x0000000116092a99: mov    %r10d,0x8(%rsp)
  0x0000000116092a9e: mov    %r8d,0x10(%rsp)
  0x0000000116092aa3: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092aa8: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000116092aaa: mov    $0xffffff4d,%esi
  0x0000000116092aaf: mov    %rcx,0x8(%rsp)
  0x0000000116092ab4: mov    %edx,0x4(%rsp)
  0x0000000116092ab8: mov    %r10d,0x10(%rsp)
  0x0000000116092abd: xchg   %ax,%ax
  0x0000000116092abf: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092ac4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000116092ac6: mov    $0xffffff4d,%esi
  0x0000000116092acb: mov    %edx,(%rsp)
  0x0000000116092ace: mov    %rcx,0x8(%rsp)
  0x0000000116092ad3: mov    %r10d,0x4(%rsp)
  0x0000000116092ad8: mov    %r9d,0x10(%rsp)
  0x0000000116092add: xchg   %ax,%ax
  0x0000000116092adf: callq  0x0000000116043900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092ae4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092ae6: mov    $0xffffffde,%esi
  0x0000000116092aeb: mov    %edx,%ebp
  0x0000000116092aed: mov    %rcx,0x8(%rsp)
  0x0000000116092af2: mov    %r10d,0x10(%rsp)
  0x0000000116092af7: mov    %r8d,0x18(%rsp)
  0x0000000116092afc: data16 xchg %ax,%ax
  0x0000000116092aff: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092b04: ud2    
  0x0000000116092b06: mov    $0xfffffff4,%esi
  0x0000000116092b0b: mov    %edx,%ebp
  0x0000000116092b0d: mov    %rcx,0x8(%rsp)
  0x0000000116092b12: mov    %r10d,0x10(%rsp)
  0x0000000116092b17: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092b1c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000116092b1e: mov    $0xffffff4d,%esi
  0x0000000116092b23: mov    %edx,%ebp
  0x0000000116092b25: mov    %rcx,(%rsp)
  0x0000000116092b29: mov    %r10d,0xc(%rsp)
  0x0000000116092b2e: nop
  0x0000000116092b2f: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092b34: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x0000000116092b36: mov    $0xffffff4d,%esi
  0x0000000116092b3b: mov    %edx,%ebp
  0x0000000116092b3d: mov    %rcx,(%rsp)
  0x0000000116092b41: mov    %r10d,0xc(%rsp)
  0x0000000116092b46: nop
  0x0000000116092b47: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092b4c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x0000000116092b4e: mov    $0xffffff4d,%esi
  0x0000000116092b53: mov    %edx,%ebp
  0x0000000116092b55: mov    %rcx,0x8(%rsp)
  0x0000000116092b5a: mov    %r10d,0x10(%rsp)
  0x0000000116092b5f: mov    %r8d,0x14(%rsp)
  0x0000000116092b64: data16 xchg %ax,%ax
  0x0000000116092b67: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116092b6c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x0000000116092b6e: hlt    
  0x0000000116092b6f: hlt    
  0x0000000116092b70: hlt    
  0x0000000116092b71: hlt    
  0x0000000116092b72: hlt    
  0x0000000116092b73: hlt    
  0x0000000116092b74: hlt    
  0x0000000116092b75: hlt    
  0x0000000116092b76: hlt    
  0x0000000116092b77: hlt    
  0x0000000116092b78: hlt    
  0x0000000116092b79: hlt    
  0x0000000116092b7a: hlt    
  0x0000000116092b7b: hlt    
  0x0000000116092b7c: hlt    
  0x0000000116092b7d: hlt    
  0x0000000116092b7e: hlt    
  0x0000000116092b7f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000116092b80: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000116092b85: callq  0x0000000116092b8a
  0x0000000116092b8a: subq   $0x5,(%rsp)
  0x0000000116092b8f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116092b94: hlt    
  0x0000000116092b95: hlt    
  0x0000000116092b96: hlt    
  0x0000000116092b97: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     252   66             java.util.HashMap::get (23 bytes)
 total in heap  [0x0000000116096110,0x0000000116096ea8] = 3480
 relocation     [0x0000000116096288,0x00000001160962c0] = 56
 main code      [0x00000001160962c0,0x00000001160966c0] = 1024
 stub code      [0x00000001160966c0,0x00000001160966d8] = 24
 metadata       [0x00000001160966d8,0x0000000116096728] = 80
 scopes data    [0x0000000116096728,0x0000000116096a20] = 760
 scopes pcs     [0x0000000116096a20,0x0000000116096e70] = 1104
 dependencies   [0x0000000116096e70,0x0000000116096e78] = 8
 nul chk table  [0x0000000116096e78,0x0000000116096ea8] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001160962c0, 0x00000001160966d8]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123943398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00000001160962c0: mov    0x8(%rsi),%r10d
  0x00000001160962c4: movabs $0x800000000,%r12
  0x00000001160962ce: add    %r12,%r10
  0x00000001160962d1: xor    %r12,%r12
  0x00000001160962d4: cmp    %r10,%rax
  0x00000001160962d7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x00000001160962dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001160962e0: mov    %eax,-0x14000(%rsp)
  0x00000001160962e7: push   %rbp
  0x00000001160962e8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x00000001160962ec: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x0000000116096666
  0x00000001160962f0: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x00000001160962f7: jne    0x000000011609639d
  0x00000001160962fd: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096300: mov    0xc(%r10),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096304: mov    0x24(%rsi),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096308: mov    %r11d,%edi
  0x000000011609630b: shr    $0x10,%edi
  0x000000011609630e: xor    %r11d,%edi         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096311: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000116096682
  0x0000000116096316: test   %r11d,%r11d
  0x0000000116096319: jbe    0x0000000116096576  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609631f: dec    %r11d
  0x0000000116096322: and    %edi,%r11d
  0x0000000116096325: lea    (%r12,%r8,8),%r10
  0x0000000116096329: mov    0x10(%r10,%r11,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609632e: mov    0xc(%r12,%r10,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x000000011609669a
  0x0000000116096333: cmp    %edi,%r11d
  0x0000000116096336: jne    0x0000000116096592  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609633c: mov    0x10(%r12,%r10,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096341: mov    %r11,%r8
  0x0000000116096344: shl    $0x3,%r8
  0x0000000116096348: cmp    %rdx,%r8
  0x000000011609634b: je     0x0000000116096381  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609634d: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000116096354: jne    0x0000000116096556  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609635a: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x000000011609664e
  0x000000011609635f: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116096366: jne    0x000000011609662e  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609636c: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096370: shl    $0x3,%r11          ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096374: mov    0xc(%r11),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096378: cmp    %r9d,%r8d
  0x000000011609637b: jne    0x00000001160965b2  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000116096381: mov    0x14(%r12,%r10,8),%r11d
  0x0000000116096386: mov    %r11,%rax
  0x0000000116096389: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x000000011609638d: add    $0x30,%rsp
  0x0000000116096391: pop    %rbp
  0x0000000116096392: mov    0x108(%r15),%r10
  0x0000000116096399: test   %eax,(%r10)        ;   {poll_return}
  0x000000011609639c: retq   
  0x000000011609639d: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x00000001160963a4: jne    0x00000001160965d6
  0x00000001160963aa: mov    %rdx,%rcx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963ad: mov    0x10(%rcx),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963b1: test   %r11d,%r11d
  0x00000001160963b4: jne    0x0000000116096304  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963ba: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963be: mov    0xc(%r12,%r9,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x00000001160966b2
  0x00000001160963c3: test   %ebx,%ebx
  0x00000001160963c5: jbe    0x000000011609654e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963cb: movsbl 0x14(%rcx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963cf: test   %ebp,%ebp
  0x00000001160963d1: jne    0x0000000116096612  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963d7: mov    %ebx,%r11d
  0x00000001160963da: dec    %r11d
  0x00000001160963dd: cmp    %ebx,%r11d
  0x00000001160963e0: jae    0x00000001160965ee
  0x00000001160963e6: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963ec: mov    %ebx,%r8d
  0x00000001160963ef: add    $0xfffffff9,%r8d
  0x00000001160963f3: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160963f7: mov    $0x1,%r9d
  0x00000001160963fd: cmp    $0x1,%r8d
  0x0000000116096401: jle    0x0000000116096539
  0x0000000116096407: mov    %edi,%r10d
  0x000000011609640a: shl    $0x5,%r10d
  0x000000011609640e: sub    %edi,%r10d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096411: jmp    0x0000000116096444  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096413: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000116096419: mov    %edi,%r11d
  0x000000011609641c: shl    $0x5,%r11d
  0x0000000116096420: sub    %edi,%r11d
  0x0000000116096423: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096426: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096429: cmp    %ebx,%r9d
  0x000000011609642c: jge    0x0000000116096545  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096432: mov    %r11d,%edi
  0x0000000116096435: jmp    0x0000000116096413
  0x0000000116096437: vmovq  %xmm0,%rcx
  0x000000011609643c: vmovd  %xmm1,%ebx
  0x0000000116096440: mov    (%rsp),%r8d
  0x0000000116096444: mov    %ebx,%r11d
  0x0000000116096447: sub    %r9d,%r11d
  0x000000011609644a: add    $0xfffffff9,%r11d
  0x000000011609644e: mov    $0x1f40,%edi
  0x0000000116096453: cmp    %r11d,%edi
  0x0000000116096456: cmovg  %r11d,%edi
  0x000000011609645a: add    %r9d,%edi
  0x000000011609645d: vmovq  %rcx,%xmm0
  0x0000000116096462: vmovd  %ebx,%xmm1
  0x0000000116096466: mov    %r8d,(%rsp)
  0x000000011609646a: mov    %edi,0x4(%rsp)
  0x000000011609646e: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096470: movslq %r9d,%r13          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096473: movzbl 0x10(%rax,%r13,1),%r11d
  0x0000000116096479: movzbl 0x17(%rax,%r13,1),%ecx
  0x000000011609647f: vmovd  %ecx,%xmm2
  0x0000000116096483: add    %r11d,%r10d
  0x0000000116096486: movzbl 0x16(%rax,%r13,1),%edi
  0x000000011609648c: mov    %r10d,%ebx
  0x000000011609648f: shl    $0x5,%ebx
  0x0000000116096492: sub    %r10d,%ebx
  0x0000000116096495: movzbl 0x15(%rax,%r13,1),%r8d
  0x000000011609649b: movzbl 0x14(%rax,%r13,1),%r11d
  0x00000001160964a1: movzbl 0x13(%rax,%r13,1),%ecx
  0x00000001160964a7: movzbl 0x12(%rax,%r13,1),%ebp
  0x00000001160964ad: movzbl 0x11(%rax,%r13,1),%r10d
  0x00000001160964b3: add    %r10d,%ebx
  0x00000001160964b6: mov    %ebx,%r10d
  0x00000001160964b9: shl    $0x5,%r10d
  0x00000001160964bd: sub    %ebx,%r10d
  0x00000001160964c0: add    %ebp,%r10d
  0x00000001160964c3: mov    %r10d,%ebx
  0x00000001160964c6: shl    $0x5,%ebx
  0x00000001160964c9: sub    %r10d,%ebx
  0x00000001160964cc: add    %ecx,%ebx
  0x00000001160964ce: mov    %ebx,%ecx
  0x00000001160964d0: shl    $0x5,%ecx
  0x00000001160964d3: sub    %ebx,%ecx
  0x00000001160964d5: add    %r11d,%ecx
  0x00000001160964d8: mov    %ecx,%r11d
  0x00000001160964db: shl    $0x5,%r11d
  0x00000001160964df: sub    %ecx,%r11d
  0x00000001160964e2: add    %r8d,%r11d
  0x00000001160964e5: mov    %r11d,%r10d
  0x00000001160964e8: shl    $0x5,%r10d
  0x00000001160964ec: sub    %r11d,%r10d
  0x00000001160964ef: add    %edi,%r10d
  0x00000001160964f2: mov    %r10d,%edi
  0x00000001160964f5: shl    $0x5,%edi
  0x00000001160964f8: sub    %r10d,%edi
  0x00000001160964fb: vmovd  %xmm2,%r11d
  0x0000000116096500: add    %r11d,%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096503: mov    %edi,%r10d
  0x0000000116096506: shl    $0x5,%r10d
  0x000000011609650a: sub    %edi,%r10d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011609650d: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096511: cmp    0x4(%rsp),%r9d
  0x0000000116096516: jl     0x0000000116096470  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011609651c: mov    0x108(%r15),%r11   ; ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096523: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x0000000116096526: cmp    (%rsp),%r9d
  0x000000011609652a: jl     0x0000000116096437
  0x0000000116096530: vmovq  %xmm0,%rcx
  0x0000000116096535: vmovd  %xmm1,%ebx
  0x0000000116096539: cmp    %ebx,%r9d
  0x000000011609653c: jl     0x0000000116096413
  0x0000000116096542: mov    %edi,%r11d
  0x0000000116096545: mov    %r11d,0x10(%rcx)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096549: jmpq   0x0000000116096304
  0x000000011609654e: xor    %r11d,%r11d
  0x0000000116096551: jmpq   0x0000000116096304
  0x0000000116096556: mov    $0xffffffde,%esi
  0x000000011609655b: mov    %edi,%ebp
  0x000000011609655d: mov    %r10d,0x8(%rsp)
  0x0000000116096562: mov    %rdx,0x10(%rsp)
  0x0000000116096567: mov    %r11d,0xc(%rsp)
  0x000000011609656c: data16 xchg %ax,%ax
  0x000000011609656f: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096574: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096576: mov    $0xffffff4d,%esi
  0x000000011609657b: mov    %edi,%ebp
  0x000000011609657d: mov    %rdx,(%rsp)
  0x0000000116096581: mov    %r8d,0x8(%rsp)
  0x0000000116096586: mov    %r11d,0x10(%rsp)
  0x000000011609658b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096590: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096592: mov    $0xffffff4d,%esi
  0x0000000116096597: mov    %rdx,(%rsp)
  0x000000011609659b: mov    %r10d,0x8(%rsp)
  0x00000001160965a0: mov    %r11d,0xc(%rsp)
  0x00000001160965a5: mov    %edi,0x10(%rsp)
  0x00000001160965a9: xchg   %ax,%ax
  0x00000001160965ab: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160965b0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001160965b2: mov    $0xffffff4d,%esi
  0x00000001160965b7: mov    %edi,%ebp
  0x00000001160965b9: mov    %rdx,(%rsp)
  0x00000001160965bd: mov    %r10d,0x8(%rsp)
  0x00000001160965c2: mov    %r8d,0xc(%rsp)
  0x00000001160965c7: mov    %r9d,0x10(%rsp)
  0x00000001160965cc: data16 xchg %ax,%ax
  0x00000001160965cf: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160965d4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001160965d6: mov    %rsi,(%rsp)
  0x00000001160965da: mov    %rdx,0x8(%rsp)
  0x00000001160965df: mov    $0xffffffc6,%esi
  0x00000001160965e4: data16 xchg %ax,%ax
  0x00000001160965e7: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160965ec: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160965ee: mov    %rdx,%rbp
  0x00000001160965f1: mov    %rsi,(%rsp)
  0x00000001160965f5: mov    %rcx,0x8(%rsp)
  0x00000001160965fa: mov    %r9d,0x10(%rsp)
  0x00000001160965ff: mov    %ebx,0x18(%rsp)
  0x0000000116096603: mov    $0xffffff7e,%esi
  0x0000000116096608: data16 xchg %ax,%ax
  0x000000011609660b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096610: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000116096612: mov    %rdx,(%rsp)
  0x0000000116096616: mov    %rsi,0x8(%rsp)
  0x000000011609661b: mov    %rcx,0x18(%rsp)
  0x0000000116096620: mov    $0xffffff4d,%esi
  0x0000000116096625: xchg   %ax,%ax
  0x0000000116096627: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011609662c: ud2    
  0x000000011609662e: mov    $0xffffffde,%esi
  0x0000000116096633: mov    %edi,%ebp
  0x0000000116096635: mov    %r10d,0x8(%rsp)
  0x000000011609663a: mov    %rdx,0x10(%rsp)
  0x000000011609663f: mov    %r11d,0x18(%rsp)
  0x0000000116096644: data16 xchg %ax,%ax
  0x0000000116096647: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011609664c: ud2    
  0x000000011609664e: mov    $0xfffffff4,%esi
  0x0000000116096653: mov    %edi,%ebp
  0x0000000116096655: mov    %r10d,0x8(%rsp)
  0x000000011609665a: mov    %rdx,0x10(%rsp)
  0x000000011609665f: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096664: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096666: mov    %rsi,(%rsp)
  0x000000011609666a: mov    %rdx,0x8(%rsp)
  0x000000011609666f: mov    %rdx,0x10(%rsp)
  0x0000000116096674: mov    $0xffffff4d,%esi
  0x0000000116096679: xchg   %ax,%ax
  0x000000011609667b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096680: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000116096682: mov    $0xffffff4d,%esi
  0x0000000116096687: mov    %edi,%ebp
  0x0000000116096689: mov    %rdx,(%rsp)
  0x000000011609668d: mov    %r8d,0xc(%rsp)
  0x0000000116096692: nop
  0x0000000116096693: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116096698: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011609669a: mov    $0xffffff4d,%esi
  0x000000011609669f: mov    %edi,%ebp
  0x00000001160966a1: mov    %rdx,(%rsp)
  0x00000001160966a5: mov    %r10d,0xc(%rsp)
  0x00000001160966aa: nop
  0x00000001160966ab: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160966b0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001160966b2: mov    $0xfffffff6,%esi
  0x00000001160966b7: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160966bc: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001160966be: hlt    
  0x00000001160966bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001160966c0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001160966c5: callq  0x00000001160966ca
  0x00000001160966ca: subq   $0x5,(%rsp)
  0x00000001160966cf: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x00000001160966d4: hlt    
  0x00000001160966d5: hlt    
  0x00000001160966d6: hlt    
  0x00000001160966d7: hlt    

ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }pc offsets: 611 
ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }pc offsets: 692 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 720 752 788 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 812 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }pc offsets: 876 
ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }pc offsets: 908 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 932 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 960 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 984 1008 
ImmutableOopMap{}pc offsets: 1020 Compiled method (c2)     268   67             ProceduralHashMap::max100 (42 bytes)
 total in heap  [0x0000000116098a90,0x0000000116099650] = 3008
 relocation     [0x0000000116098c08,0x0000000116098c50] = 72
 main code      [0x0000000116098c60,0x0000000116098fa0] = 832
 stub code      [0x0000000116098fa0,0x0000000116098fb8] = 24
 oops           [0x0000000116098fb8,0x0000000116098fc8] = 16
 metadata       [0x0000000116098fc8,0x0000000116099018] = 80
 scopes data    [0x0000000116099018,0x0000000116099290] = 632
 scopes pcs     [0x0000000116099290,0x0000000116099600] = 880
 dependencies   [0x0000000116099600,0x0000000116099608] = 8
 handler table  [0x0000000116099608,0x0000000116099620] = 24
 nul chk table  [0x0000000116099620,0x0000000116099650] = 48
----------------------------------------------------------------------
ProceduralHashMap.max100(I)I  [0x0000000116098c60, 0x0000000116098fb8]  856 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123c1b868} 'max100' '(I)I' in 'ProceduralHashMap'
  # this:     rsi:rsi   = 'ProceduralHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000116098c60: mov    0x8(%rsi),%r10d
  0x0000000116098c64: movabs $0x800000000,%r12
  0x0000000116098c6e: add    %r12,%r10
  0x0000000116098c71: xor    %r12,%r12
  0x0000000116098c74: cmp    %r10,%rax
  0x0000000116098c77: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x0000000116098c7d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000116098c80: mov    %eax,-0x14000(%rsp)
  0x0000000116098c87: push   %rbp
  0x0000000116098c88: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::max100@-1 (line 47)

  0x0000000116098c8c: mov    %edx,0x4(%rsp)
  0x0000000116098c90: movabs $0x70fe0efc0,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc0} = 'ProceduralHashMap')}
  0x0000000116098c9a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)

  0x0000000116098c9e: mov    %r11d,0x8(%rsp)
  0x0000000116098ca3: cmp    $0xffffff80,%edx
  0x0000000116098ca6: jl     0x0000000116098e2e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098cac: cmp    $0x7f,%edx
  0x0000000116098caf: jle    0x0000000116098dc8  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098cb5: mov    0x118(%r15),%r8
  0x0000000116098cbc: mov    %r8,%r10
  0x0000000116098cbf: add    $0x10,%r10
  0x0000000116098cc3: cmp    0x128(%r15),%r10
  0x0000000116098cca: jae    0x0000000116098dfa
  0x0000000116098cd0: mov    %r10,0x118(%r15)
  0x0000000116098cd7: prefetchnta 0xc0(%r10)
  0x0000000116098cdf: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000116098ce5: movabs $0x800000000,%r12
  0x0000000116098cef: add    %r12,%r10
  0x0000000116098cf2: xor    %r12,%r12
  0x0000000116098cf5: mov    0xb8(%r10),%r10
  0x0000000116098cfc: mov    %r10,(%r8)
  0x0000000116098cff: movl   $0x13c78,0x8(%r8)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000116098d07: mov    0x4(%rsp),%r10d
  0x0000000116098d0c: mov    %r10d,0xc(%r8)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098d10: mov    0x8(%rsp),%r11d
  0x0000000116098d15: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x0000000116098f12
  0x0000000116098d1a: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x0000000116098d21: jne    0x0000000116098e14  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d27: mov    0xc(%r8),%ecx      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d2b: lea    (%r12,%r11,8),%r10  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d2f: mov    0x24(%r10),%ebx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d33: mov    %ecx,%r10d
  0x0000000116098d36: shr    $0x10,%r10d
  0x0000000116098d3a: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d3d: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; implicit exception: dispatches to 0x0000000116098f52
  0x0000000116098d42: test   %ebp,%ebp
  0x0000000116098d44: jbe    0x0000000116098e42  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d4a: lea    (%r12,%rbx,8),%r11
  0x0000000116098d4e: dec    %ebp
  0x0000000116098d50: and    %r10d,%ebp
  0x0000000116098d53: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d58: mov    0xc(%r12,%r11,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; implicit exception: dispatches to 0x0000000116098f72
  0x0000000116098d5d: cmp    %r10d,%ebp
  0x0000000116098d60: jne    0x0000000116098e6e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d66: mov    0x10(%r12,%r11,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d6b: mov    %rbp,%r9
  0x0000000116098d6e: shl    $0x3,%r9
  0x0000000116098d72: cmp    %r8,%r9
  0x0000000116098d75: je     0x0000000116098d99  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d77: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x0000000116098f32
  0x0000000116098d7c: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116098d83: jne    0x0000000116098eda
  0x0000000116098d89: lea    (%r12,%rbp,8),%r9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d8d: mov    0xc(%r9),%ebp      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d91: cmp    %ebp,%ecx
  0x0000000116098d93: jne    0x0000000116098e9a  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d99: mov    0x14(%r12,%r11,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098d9e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000116098f22
  0x0000000116098da3: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000116098daa: jne    0x0000000116098f06
  0x0000000116098db0: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)

  0x0000000116098db4: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@38 (line 52)

  0x0000000116098db8: add    $0x30,%rsp
  0x0000000116098dbc: pop    %rbp
  0x0000000116098dbd: mov    0x108(%r15),%r10
  0x0000000116098dc4: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116098dc7: retq   
  0x0000000116098dc8: mov    %edx,%ebp
  0x0000000116098dca: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098dd0: cmp    $0x100,%ebp
  0x0000000116098dd6: jae    0x0000000116098eca
  0x0000000116098ddc: movslq %edx,%r10
  0x0000000116098ddf: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000116098de9: mov    0x210(%r11,%r10,4),%r10d
  0x0000000116098df1: lea    (%r12,%r10,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098df5: jmpq   0x0000000116098d10
  0x0000000116098dfa: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000116098e04: mov    %edx,%ebp
  0x0000000116098e06: nop
  0x0000000116098e07: callq  0x0000000116078380  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000116098e0c: mov    %rax,%r8
  0x0000000116098e0f: jmpq   0x0000000116098d07
  0x0000000116098e14: mov    $0xffffffde,%esi
  0x0000000116098e19: mov    0x4(%rsp),%ebp
  0x0000000116098e1d: mov    %r11d,(%rsp)
  0x0000000116098e21: mov    %r8,0x8(%rsp)
  0x0000000116098e26: nop
  0x0000000116098e27: callq  0x0000000116043900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098e2c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098e2e: mov    $0xffffff4d,%esi
  0x0000000116098e33: mov    %r11d,(%rsp)
  0x0000000116098e37: mov    %edx,0x8(%rsp)
  0x0000000116098e3b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098e40: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098e42: mov    $0xffffff4d,%esi
  0x0000000116098e47: mov    %rax,-0x8(%rsp)
  0x0000000116098e4c: mov    0x4(%rsp),%eax
  0x0000000116098e50: mov    %eax,(%rsp)
  0x0000000116098e53: mov    -0x8(%rsp),%rax
  0x0000000116098e58: mov    %r10d,0x4(%rsp)
  0x0000000116098e5d: mov    %r8,0x8(%rsp)
  0x0000000116098e62: mov    %ebx,0x10(%rsp)
  0x0000000116098e66: nop
  0x0000000116098e67: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098e6c: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098e6e: mov    $0xffffff4d,%esi
  0x0000000116098e73: mov    %rax,-0x8(%rsp)
  0x0000000116098e78: mov    0x4(%rsp),%eax
  0x0000000116098e7c: mov    %eax,(%rsp)
  0x0000000116098e7f: mov    -0x8(%rsp),%rax
  0x0000000116098e84: mov    %r8,0x8(%rsp)
  0x0000000116098e89: mov    %r11d,0x10(%rsp)
  0x0000000116098e8e: mov    %r10d,0x14(%rsp)
  0x0000000116098e93: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098e98: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098e9a: mov    $0xffffff4d,%esi
  0x0000000116098e9f: mov    %rax,-0x8(%rsp)
  0x0000000116098ea4: mov    0x4(%rsp),%eax
  0x0000000116098ea8: mov    %eax,(%rsp)
  0x0000000116098eab: mov    -0x8(%rsp),%rax
  0x0000000116098eb0: mov    %r10d,0x4(%rsp)
  0x0000000116098eb5: mov    %r8,0x8(%rsp)
  0x0000000116098eba: mov    %r11d,0x10(%rsp)
  0x0000000116098ebf: mov    %ecx,0x14(%rsp)
  0x0000000116098ec3: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098ec8: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098eca: mov    $0xffffffe4,%esi
  0x0000000116098ecf: mov    %edx,(%rsp)
  0x0000000116098ed2: nop
  0x0000000116098ed3: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098ed8: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098eda: mov    $0xffffffde,%esi
  0x0000000116098edf: mov    %rax,-0x8(%rsp)
  0x0000000116098ee4: mov    0x4(%rsp),%eax
  0x0000000116098ee8: mov    %eax,(%rsp)
  0x0000000116098eeb: mov    -0x8(%rsp),%rax
  0x0000000116098ef0: mov    %r10d,0x4(%rsp)
  0x0000000116098ef5: mov    %r11d,0x10(%rsp)
  0x0000000116098efa: mov    %r8,0x18(%rsp)
  0x0000000116098eff: callq  0x0000000116043900  ; ImmutableOopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f04: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098f06: mov    $0xffffffde,%esi
  0x0000000116098f0b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f10: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)

  0x0000000116098f12: mov    $0xfffffff6,%esi
  0x0000000116098f17: mov    %r8,%rbp
  0x0000000116098f1a: nop
  0x0000000116098f1b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f20: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098f22: mov    $0xfffffff4,%esi
  0x0000000116098f27: mov    0x4(%rsp),%ebp
  0x0000000116098f2b: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f30: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)

  0x0000000116098f32: mov    $0xfffffff4,%esi
  0x0000000116098f37: mov    0x4(%rsp),%ebp
  0x0000000116098f3b: mov    %r10d,(%rsp)
  0x0000000116098f3f: mov    %r11d,0x4(%rsp)
  0x0000000116098f44: mov    %r8,0x10(%rsp)
  0x0000000116098f49: xchg   %ax,%ax
  0x0000000116098f4b: callq  0x0000000116043900  ; ImmutableOopMap{[4]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f50: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098f52: mov    $0xffffff4d,%esi
  0x0000000116098f57: mov    0x4(%rsp),%ebp
  0x0000000116098f5b: mov    %r10d,(%rsp)
  0x0000000116098f5f: mov    %r8,0x8(%rsp)
  0x0000000116098f64: mov    %ebx,0x10(%rsp)
  0x0000000116098f68: data16 xchg %ax,%ax
  0x0000000116098f6b: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f70: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000116098f72: mov    $0xffffff4d,%esi
  0x0000000116098f77: mov    0x4(%rsp),%ebp
  0x0000000116098f7b: mov    %r10d,(%rsp)
  0x0000000116098f7f: mov    %r8,0x8(%rsp)
  0x0000000116098f84: mov    %r11d,0x10(%rsp)
  0x0000000116098f89: xchg   %ax,%ax
  0x0000000116098f8b: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116098f90: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000116098f92: mov    %rax,%rsi
  0x0000000116098f95: add    $0x30,%rsp
  0x0000000116098f99: pop    %rbp
  0x0000000116098f9a: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x0000000116098f9f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000116098fa0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000116098fa5: callq  0x0000000116098faa
  0x0000000116098faa: subq   $0x5,(%rsp)
  0x0000000116098faf: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116098fb4: hlt    
  0x0000000116098fb5: hlt    
  0x0000000116098fb6: hlt    
  0x0000000116098fb7: hlt    

ImmutableOopMap{[8]=NarrowOop }pc offsets: 428 
ImmutableOopMap{[0]=NarrowOop [8]=Oop }pc offsets: 460 
ImmutableOopMap{[0]=NarrowOop }pc offsets: 480 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 524 568 616 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 632 
ImmutableOopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop }pc offsets: 676 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 688 
ImmutableOopMap{rbp=Oop }pc offsets: 704 
ImmutableOopMap{}pc offsets: 720 
ImmutableOopMap{[4]=NarrowOop [16]=Oop }pc offsets: 752 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 784 816 Compiled method (c2)     278   68             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000116092510,0x0000000116092798] = 648
 relocation     [0x0000000116092688,0x0000000116092698] = 16
 main code      [0x00000001160926a0,0x00000001160926e0] = 64
 stub code      [0x00000001160926e0,0x00000001160926f8] = 24
 oops           [0x00000001160926f8,0x0000000116092700] = 8
 metadata       [0x0000000116092700,0x0000000116092718] = 24
 scopes data    [0x0000000116092718,0x0000000116092740] = 40
 scopes pcs     [0x0000000116092740,0x0000000116092790] = 80
 dependencies   [0x0000000116092790,0x0000000116092798] = 8
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x00000001160926a0, 0x00000001160926f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123c1b788} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x20]  (sp of caller)
  0x00000001160926a0: mov    0x8(%rsi),%r10d
  0x00000001160926a4: movabs $0x800000000,%r12
  0x00000001160926ae: add    %r12,%r10
  0x00000001160926b1: xor    %r12,%r12
  0x00000001160926b4: cmp    %r10,%rax
  0x00000001160926b7: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x00000001160926bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001160926c0: mov    %eax,-0x14000(%rsp)
  0x00000001160926c7: push   %rbp
  0x00000001160926c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 39)

  0x00000001160926cc: mov    %rsi,%rbp
  0x00000001160926cf: mov    $0xffffffbe,%esi
  0x00000001160926d4: data16 xchg %ax,%ax
  0x00000001160926d7: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001160926dc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)

  0x00000001160926de: hlt    
  0x00000001160926df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001160926e0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001160926e5: callq  0x00000001160926ea
  0x00000001160926ea: subq   $0x5,(%rsp)
  0x00000001160926ef: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x00000001160926f4: hlt    
  0x00000001160926f5: hlt    
  0x00000001160926f6: hlt    
  0x00000001160926f7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     284   69 %           ProceduralHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x0000000116099690,0x000000011609a390] = 3328
 relocation     [0x0000000116099808,0x0000000116099858] = 80
 main code      [0x0000000116099860,0x0000000116099c40] = 992
 stub code      [0x0000000116099c40,0x0000000116099c58] = 24
 oops           [0x0000000116099c58,0x0000000116099c68] = 16
 metadata       [0x0000000116099c68,0x0000000116099cc8] = 96
 scopes data    [0x0000000116099cc8,0x0000000116099f98] = 720
 scopes pcs     [0x0000000116099f98,0x000000011609a338] = 928
 dependencies   [0x000000011609a338,0x000000011609a340] = 8
 handler table  [0x000000011609a340,0x000000011609a358] = 24
 nul chk table  [0x000000011609a358,0x000000011609a390] = 56
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x0000000116099860, 0x0000000116099c58]  1016 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123c1b788} 'runTest' '()I' in 'ProceduralHashMap'
  0x0000000116099860: callq  0x000000010ba107f4  ;   {runtime_call os::breakpoint()}
  0x0000000116099865: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000116099870: mov    %eax,-0x14000(%rsp)
  0x0000000116099877: push   %rbp
  0x0000000116099878: sub    $0x40,%rsp
  0x000000011609987c: mov    0x10(%rsi),%r13
  0x0000000116099880: mov    0x8(%rsi),%ebp
  0x0000000116099883: mov    (%rsi),%ebx
  0x0000000116099885: mov    %rsi,%rdi
  0x0000000116099888: movabs $0x10ba91a82,%r10
  0x0000000116099892: callq  *%r10
  0x0000000116099895: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x0000000116099c0e
  0x0000000116099899: cmp    $0x60040,%r10d     ;   {metadata('ProceduralHashMap')}
  0x00000001160998a0: jne    0x0000000116099b2a  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)

  0x00000001160998a6: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x00000001160998ac: movabs $0x800000000,%rdi
  0x00000001160998b6: add    %r10,%rdi
  0x00000001160998b9: jmp    0x00000001160998eb
  0x00000001160998bb: nopl   0x0(%rax,%rax,1)   ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160998c0: mov    0x14(%r12,%r8,8),%r11d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160998c5: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x0000000116099b8e
  0x00000001160998ca: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x00000001160998d1: jne    0x0000000116099b66  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x00000001160998d7: mov    0x108(%r15),%r10
  0x00000001160998de: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 40)

  0x00000001160998e0: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160998e4: mov    0xc(%r11),%ebp     ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x00000001160998e8: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)
                                                ;   {poll}
  0x00000001160998eb: cmp    $0x3e8,%ebx
  0x00000001160998f1: jge    0x0000000116099a3c  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)

  0x00000001160998f7: movabs $0x70fe0efc0,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc0} = 'ProceduralHashMap')}
  0x0000000116099901: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099905: cmp    $0xffffff80,%ebx
  0x0000000116099908: jl     0x0000000116099aa2  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011609990e: cmp    $0x7f,%ebx
  0x0000000116099911: jle    0x0000000116099a0a
  0x0000000116099917: mov    0x118(%r15),%rax
  0x000000011609991e: mov    %rax,%r11
  0x0000000116099921: add    $0x10,%r11
  0x0000000116099925: cmp    0x128(%r15),%r11
  0x000000011609992c: jae    0x0000000116099a4e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000116099932: mov    %r11,0x118(%r15)
  0x0000000116099939: prefetchnta 0xc0(%r11)
  0x0000000116099941: mov    0xb8(%rdi),%r11
  0x0000000116099948: mov    %r11,(%rax)
  0x000000011609994b: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000116099952: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099955: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000116099b7e
  0x000000011609995a: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000116099961: jne    0x0000000116099a85  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099967: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011609996a: shl    $0x3,%r10          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011609996e: mov    0x24(%r10),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099972: mov    %ecx,%r10d
  0x0000000116099975: shr    $0x10,%r10d
  0x0000000116099979: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011609997c: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116099bc6
  0x0000000116099981: test   %r11d,%r11d
  0x0000000116099984: jbe    0x0000000116099abe  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011609998a: dec    %r11d
  0x000000011609998d: and    %r10d,%r11d
  0x0000000116099990: shl    $0x3,%r8
  0x0000000116099994: mov    0x10(%r8,%r11,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099999: mov    0xc(%r12,%r8,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116099bea
  0x000000011609999e: cmp    %r10d,%r9d
  0x00000001160999a1: jne    0x0000000116099ae6  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999a7: mov    0x10(%r12,%r8,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999ac: mov    %r9,%r11
  0x00000001160999af: shl    $0x3,%r11
  0x00000001160999b3: cmp    %rax,%r11
  0x00000001160999b6: je     0x00000001160998c0  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999bc: mov    0x8(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x0000000116099ba2
  0x00000001160999c1: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x00000001160999c7: jne    0x0000000116099b3e
  0x00000001160999cd: lea    (%r12,%r9,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999d1: mov    0xc(%r11),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999d5: cmp    %r11d,%ecx
  0x00000001160999d8: je     0x00000001160998c0  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001160999de: mov    $0xffffff4d,%esi
  0x00000001160999e3: mov    %r13,%rbp
  0x00000001160999e6: mov    %ebx,0x4(%rsp)
  0x00000001160999ea: mov    %r10d,0x8(%rsp)
  0x00000001160999ef: mov    %rax,0x10(%rsp)
  0x00000001160999f4: mov    %r8d,0xc(%rsp)
  0x00000001160999f9: mov    %ecx,0x18(%rsp)
  0x00000001160999fd: mov    %r11d,0x1c(%rsp)
  0x0000000116099a02: nop
  0x0000000116099a03: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099a08: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099a0a: mov    %ebx,%ebp
  0x0000000116099a0c: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099a12: cmp    $0x100,%ebp
  0x0000000116099a18: jae    0x0000000116099b0e
  0x0000000116099a1e: movslq %ebx,%r11
  0x0000000116099a21: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000116099a2b: mov    0x210(%r8,%r11,4),%r8d
  0x0000000116099a33: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099a37: jmpq   0x0000000116099955  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)

  0x0000000116099a3c: mov    %ebp,%eax
  0x0000000116099a3e: add    $0x40,%rsp
  0x0000000116099a42: pop    %rbp
  0x0000000116099a43: mov    0x108(%r15),%r10
  0x0000000116099a4a: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116099a4d: retq   
  0x0000000116099a4e: mov    %r10d,0x4(%rsp)
  0x0000000116099a53: mov    %rdi,0x8(%rsp)
  0x0000000116099a58: mov    %ebx,(%rsp)
  0x0000000116099a5b: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099a5e: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000116099a68: data16 xchg %ax,%ax
  0x0000000116099a6b: callq  0x0000000116078380  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000116099a70: mov    %rbp,%r13
  0x0000000116099a73: mov    (%rsp),%ebx
  0x0000000116099a76: mov    0x8(%rsp),%rdi
  0x0000000116099a7b: mov    0x4(%rsp),%r10d
  0x0000000116099a80: jmpq   0x0000000116099952
  0x0000000116099a85: mov    $0xffffffde,%esi
  0x0000000116099a8a: mov    %r13,%rbp
  0x0000000116099a8d: mov    %ebx,0x4(%rsp)
  0x0000000116099a91: mov    %r10d,0x8(%rsp)
  0x0000000116099a96: mov    %rax,0x10(%rsp)
  0x0000000116099a9b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099aa0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099aa2: mov    $0xffffff4d,%esi
  0x0000000116099aa7: mov    %r13,%rbp
  0x0000000116099aaa: mov    %ebx,0x4(%rsp)
  0x0000000116099aae: mov    %r10d,0x8(%rsp)
  0x0000000116099ab3: mov    %ebx,0xc(%rsp)
  0x0000000116099ab7: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099abc: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099abe: mov    $0xffffff4d,%esi
  0x0000000116099ac3: mov    %r13,%rbp
  0x0000000116099ac6: mov    %ebx,0x4(%rsp)
  0x0000000116099aca: mov    %r10d,0x8(%rsp)
  0x0000000116099acf: mov    %rax,0x10(%rsp)
  0x0000000116099ad4: mov    %r8d,0xc(%rsp)
  0x0000000116099ad9: mov    %r11d,0x1c(%rsp)
  0x0000000116099ade: nop
  0x0000000116099adf: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099ae4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099ae6: mov    $0xffffff4d,%esi
  0x0000000116099aeb: mov    %r13,%rbp
  0x0000000116099aee: mov    %ebx,0x4(%rsp)
  0x0000000116099af2: mov    %rax,0x10(%rsp)
  0x0000000116099af7: mov    %r8d,0xc(%rsp)
  0x0000000116099afc: mov    %r9d,0x18(%rsp)
  0x0000000116099b01: mov    %r10d,0x1c(%rsp)
  0x0000000116099b06: nop
  0x0000000116099b07: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b0c: ud2    
  0x0000000116099b0e: mov    $0xffffffe4,%esi
  0x0000000116099b13: mov    %r13,(%rsp)
  0x0000000116099b17: mov    %ebx,0xc(%rsp)
  0x0000000116099b1b: mov    %r10d,0x10(%rsp)
  0x0000000116099b20: data16 xchg %ax,%ax
  0x0000000116099b23: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b28: ud2    
  0x0000000116099b2a: mov    $0xffffff95,%esi
  0x0000000116099b2f: mov    %r13,(%rsp)
  0x0000000116099b33: mov    %ebx,0x8(%rsp)
  0x0000000116099b37: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b3c: ud2    
  0x0000000116099b3e: mov    $0xffffffde,%esi
  0x0000000116099b43: mov    %r13,%rbp
  0x0000000116099b46: mov    %ebx,0x4(%rsp)
  0x0000000116099b4a: mov    %r10d,0x8(%rsp)
  0x0000000116099b4f: mov    %r8d,0xc(%rsp)
  0x0000000116099b54: mov    %rax,0x18(%rsp)
  0x0000000116099b59: mov    %r9d,0x24(%rsp)
  0x0000000116099b5e: nop
  0x0000000116099b5f: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b64: ud2    
  0x0000000116099b66: mov    $0xffffffde,%esi
  0x0000000116099b6b: mov    %r13,%rbp
  0x0000000116099b6e: mov    %ebx,0x4(%rsp)
  0x0000000116099b72: mov    %r11d,0x8(%rsp)
  0x0000000116099b77: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b7c: ud2    
  0x0000000116099b7e: mov    $0xfffffff6,%esi
  0x0000000116099b83: mov    %rax,%rbp
  0x0000000116099b86: nop
  0x0000000116099b87: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099b8c: ud2    
  0x0000000116099b8e: mov    $0xfffffff4,%esi
  0x0000000116099b93: mov    %r13,%rbp
  0x0000000116099b96: mov    %ebx,0x4(%rsp)
  0x0000000116099b9a: nop
  0x0000000116099b9b: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099ba0: ud2    
  0x0000000116099ba2: mov    $0xfffffff4,%esi
  0x0000000116099ba7: mov    %r13,%rbp
  0x0000000116099baa: mov    %ebx,0x4(%rsp)
  0x0000000116099bae: mov    %r10d,0x8(%rsp)
  0x0000000116099bb3: mov    %r8d,0xc(%rsp)
  0x0000000116099bb8: mov    %rax,0x18(%rsp)
  0x0000000116099bbd: xchg   %ax,%ax
  0x0000000116099bbf: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099bc4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099bc6: mov    $0xffffff4d,%esi
  0x0000000116099bcb: mov    %r13,%rbp
  0x0000000116099bce: mov    %ebx,0x4(%rsp)
  0x0000000116099bd2: mov    %r10d,0x8(%rsp)
  0x0000000116099bd7: mov    %rax,0x10(%rsp)
  0x0000000116099bdc: mov    %r8d,0x18(%rsp)
  0x0000000116099be1: xchg   %ax,%ax
  0x0000000116099be3: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099be8: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099bea: mov    $0xffffff4d,%esi
  0x0000000116099bef: mov    %r13,%rbp
  0x0000000116099bf2: mov    %ebx,0x4(%rsp)
  0x0000000116099bf6: mov    %r10d,0x8(%rsp)
  0x0000000116099bfb: mov    %rax,0x10(%rsp)
  0x0000000116099c00: mov    %r8d,0x18(%rsp)
  0x0000000116099c05: xchg   %ax,%ax
  0x0000000116099c07: callq  0x0000000116043900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099c0c: ud2    
  0x0000000116099c0e: mov    $0xffffffbe,%esi
  0x0000000116099c13: mov    %ebx,(%rsp)
  0x0000000116099c16: nop
  0x0000000116099c17: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116099c1c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116099c1e: mov    %rax,%rsi
  0x0000000116099c21: add    $0x40,%rsp
  0x0000000116099c25: pop    %rbp
  0x0000000116099c26: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x0000000116099c2b: hlt    
  0x0000000116099c2c: hlt    
  0x0000000116099c2d: hlt    
  0x0000000116099c2e: hlt    
  0x0000000116099c2f: hlt    
  0x0000000116099c30: hlt    
  0x0000000116099c31: hlt    
  0x0000000116099c32: hlt    
  0x0000000116099c33: hlt    
  0x0000000116099c34: hlt    
  0x0000000116099c35: hlt    
  0x0000000116099c36: hlt    
  0x0000000116099c37: hlt    
  0x0000000116099c38: hlt    
  0x0000000116099c39: hlt    
  0x0000000116099c3a: hlt    
  0x0000000116099c3b: hlt    
  0x0000000116099c3c: hlt    
  0x0000000116099c3d: hlt    
  0x0000000116099c3e: hlt    
  0x0000000116099c3f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000116099c40: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000116099c45: callq  0x0000000116099c4a
  0x0000000116099c4a: subq   $0x5,(%rsp)
  0x0000000116099c4f: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116099c54: hlt    
  0x0000000116099c55: hlt    
  0x0000000116099c56: hlt    
  0x0000000116099c57: hlt    

ImmutableOopMap{r13=Oop }pc offsets: 136 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }pc offsets: 424 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 528 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 576 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 604 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }pc offsets: 644 684 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 712 
ImmutableOopMap{[0]=Oop }pc offsets: 732 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }pc offsets: 772 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 796 
ImmutableOopMap{rbp=Oop }pc offsets: 812 832 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }pc offsets: 868 
ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }pc offsets: 904 940 
ImmutableOopMap{}pc offsets: 956 Compiled method (c2)     304   70             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000116097810,0x0000000116098a68] = 4696
 relocation     [0x0000000116097988,0x00000001160979f8] = 112
 main code      [0x0000000116097a00,0x0000000116097fa0] = 1440
 stub code      [0x0000000116097fa0,0x0000000116097fb8] = 24
 oops           [0x0000000116097fb8,0x0000000116097fc8] = 16
 metadata       [0x0000000116097fc8,0x0000000116098020] = 88
 scopes data    [0x0000000116098020,0x00000001160982c0] = 672
 scopes pcs     [0x00000001160982c0,0x00000001160989b0] = 1776
 dependencies   [0x00000001160989b0,0x00000001160989b8] = 8
 handler table  [0x00000001160989b8,0x00000001160989e8] = 48
 nul chk table  [0x00000001160989e8,0x0000000116098a68] = 128
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x0000000116097a00, 0x0000000116097fb8]  1464 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000123c1b788} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x50]  (sp of caller)
  0x0000000116097a00: mov    0x8(%rsi),%r10d
  0x0000000116097a04: movabs $0x800000000,%r12
  0x0000000116097a0e: add    %r12,%r10
  0x0000000116097a11: xor    %r12,%r12
  0x0000000116097a14: cmp    %r10,%rax
  0x0000000116097a17: jne    0x0000000116041c80  ;   {runtime_call ic_miss_stub}
  0x0000000116097a1d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000116097a20: mov    %eax,-0x14000(%rsp)
  0x0000000116097a27: push   %rbp
  0x0000000116097a28: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 39)

  0x0000000116097a2c: mov    %rsi,0x28(%rsp)
  0x0000000116097a31: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000116097a3b: mov    0x210(%r10),%r9d   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a42: movabs $0x70fe0efc0,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc0} = 'ProceduralHashMap')}
  0x0000000116097a4c: mov    0x70(%r10),%r10d
  0x0000000116097a50: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000116097eee
  0x0000000116097a55: lea    (%r12,%r10,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a59: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000116097a60: jne    0x0000000116097df2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a66: mov    0xc(%r12,%r9,8),%ebx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a6b: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a6f: mov    %ebx,%r8d
  0x0000000116097a72: shr    $0x10,%r8d
  0x0000000116097a76: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a79: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f36
  0x0000000116097a7e: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a82: test   %r11d,%r11d
  0x0000000116097a85: jbe    0x0000000116097e12  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a8b: dec    %r11d
  0x0000000116097a8e: and    %r8d,%r11d
  0x0000000116097a91: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a96: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f5a
  0x0000000116097a9b: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097a9f: cmp    %r8d,%r11d
  0x0000000116097aa2: jne    0x0000000116097e3a  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097aa8: mov    0x10(%r12,%rcx,8),%r10d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097aad: cmp    %r9d,%r10d
  0x0000000116097ab0: je     0x0000000116097ad3  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ab2: mov    0x8(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x0000000116097f12
  0x0000000116097ab7: lea    (%r12,%r10,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097abb: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000116097ac1: jne    0x0000000116097ec6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ac7: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097acb: cmp    %edx,%ebx
  0x0000000116097acd: jne    0x0000000116097e8c  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ad3: mov    0x14(%r12,%rcx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ad8: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000116097efe
  0x0000000116097add: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000116097ae4: jne    0x0000000116097eaa  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097aea: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000116097af0: movabs $0x800000000,%rsi
  0x0000000116097afa: add    %r11,%rsi
  0x0000000116097afd: mov    $0x1,%r10d
  0x0000000116097b03: jmp    0x0000000116097b3b
  0x0000000116097b05: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097b10: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000116097b15: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000116097f01
  0x0000000116097b1a: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097b1e: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116097b25: jne    0x0000000116097eb1  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097b2b: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 40)

  0x0000000116097b2e: cmp    $0x80,%r10d
  0x0000000116097b35: jge    0x0000000116097c69  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 41)

  0x0000000116097b3b: movabs $0x70fe0efc0,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc0} = 'ProceduralHashMap')}
  0x0000000116097b45: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097b49: cmp    $0x7f,%r10d
  0x0000000116097b4d: jle    0x0000000116097c4e
  0x0000000116097b53: mov    0x118(%r15),%rax
  0x0000000116097b5a: mov    %rax,%r11
  0x0000000116097b5d: add    $0x10,%r11
  0x0000000116097b61: cmp    0x128(%r15),%r11
  0x0000000116097b68: jae    0x0000000116097dcb  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000116097b6e: mov    %r11,0x118(%r15)
  0x0000000116097b75: prefetchnta 0xc0(%r11)
  0x0000000116097b7d: mov    0xb8(%rsi),%r11
  0x0000000116097b84: mov    %r11,(%rax)
  0x0000000116097b87: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000116097b8e: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097b92: mov    %rax,%r9
  0x0000000116097b95: shr    $0x3,%r9
  0x0000000116097b99: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x0000000116097eee
  0x0000000116097b9e: lea    (%r12,%rbp,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ba2: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000116097ba9: jne    0x0000000116097df5  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097baf: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bb2: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bb6: mov    %ebx,%r8d
  0x0000000116097bb9: shr    $0x10,%r8d
  0x0000000116097bbd: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bc0: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f39
  0x0000000116097bc5: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bc9: test   %r11d,%r11d
  0x0000000116097bcc: jbe    0x0000000116097e15  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bd2: dec    %r11d
  0x0000000116097bd5: and    %r8d,%r11d
  0x0000000116097bd8: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bdd: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f5d
  0x0000000116097be2: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097be6: cmp    %r8d,%r11d
  0x0000000116097be9: jne    0x0000000116097e3d  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bef: mov    0x10(%r12,%rcx,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097bf4: mov    %r11,%rdx
  0x0000000116097bf7: shl    $0x3,%rdx
  0x0000000116097bfb: cmp    %rax,%rdx
  0x0000000116097bfe: je     0x0000000116097b10  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c04: mov    0x8(%r12,%r11,8),%edx  ; implicit exception: dispatches to 0x0000000116097f15
  0x0000000116097c09: shl    $0x3,%r11          ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c0d: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000116097c13: jne    0x0000000116097ec9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c19: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c1d: cmp    %edx,%ebx
  0x0000000116097c1f: je     0x0000000116097b10  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c25: mov    $0xffffff4d,%esi
  0x0000000116097c2a: mov    %r10d,(%rsp)
  0x0000000116097c2e: mov    %r8d,0x4(%rsp)
  0x0000000116097c33: mov    %r9d,0x8(%rsp)
  0x0000000116097c38: mov    %rdi,0x10(%rsp)
  0x0000000116097c3d: mov    %ebx,0xc(%rsp)
  0x0000000116097c41: mov    %edx,0x18(%rsp)
  0x0000000116097c45: xchg   %ax,%ax
  0x0000000116097c47: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097c4c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c4e: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000116097c58: mov    0x210(%r11,%r10,4),%r11d
  0x0000000116097c60: lea    (%r12,%r11,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c64: jmpq   0x0000000116097b92  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000116097c69: mov    0x108(%r15),%r8
  0x0000000116097c70: mov    0xc(%r11),%r11d    ; ImmutableOopMap{[40]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000116097c74: test   %eax,(%r8)         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 41)
                                                ;   {poll}
  0x0000000116097c77: movabs $0x70fe0efc0,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc0} = 'ProceduralHashMap')}
  0x0000000116097c81: mov    0x70(%r11),%ecx    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097c85: cmp    $0x7f,%r10d
  0x0000000116097c89: jle    0x0000000116097d9b
  0x0000000116097c8f: mov    0x118(%r15),%rax
  0x0000000116097c96: mov    %rax,%r11
  0x0000000116097c99: add    $0x10,%r11
  0x0000000116097c9d: cmp    0x128(%r15),%r11
  0x0000000116097ca4: jae    0x0000000116097e62  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000116097caa: mov    %r11,0x118(%r15)
  0x0000000116097cb1: prefetchnta 0xc0(%r11)
  0x0000000116097cb9: mov    0xb8(%rsi),%r11
  0x0000000116097cc0: mov    %r11,(%rax)
  0x0000000116097cc3: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000116097cca: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097cce: mov    %rax,%r9
  0x0000000116097cd1: shr    $0x3,%r9
  0x0000000116097cd5: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x0000000116097eee
  0x0000000116097cda: lea    (%r12,%rcx,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097cde: cmp    $0x19838,%ebx      ;   {metadata('java/util/HashMap')}
  0x0000000116097ce4: jne    0x0000000116097df5  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097cea: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ced: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097cf1: mov    %ebx,%r8d
  0x0000000116097cf4: shr    $0x10,%r8d
  0x0000000116097cf8: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097cfb: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f39
  0x0000000116097d00: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d04: test   %r11d,%r11d
  0x0000000116097d07: jbe    0x0000000116097e15  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d0d: dec    %r11d
  0x0000000116097d10: and    %r8d,%r11d
  0x0000000116097d13: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d18: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; implicit exception: dispatches to 0x0000000116097f5d
  0x0000000116097d1d: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d21: cmp    %r8d,%r11d
  0x0000000116097d24: jne    0x0000000116097e3d  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d2a: mov    0x10(%r12,%rcx,8),%edx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d2f: mov    %rdx,%r11
  0x0000000116097d32: shl    $0x3,%r11
  0x0000000116097d36: cmp    %rax,%r11
  0x0000000116097d39: je     0x0000000116097d5c  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d3b: mov    0x8(%r12,%rdx,8),%eax  ; implicit exception: dispatches to 0x0000000116097f15
  0x0000000116097d40: lea    (%r12,%rdx,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d44: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x0000000116097d4a: jne    0x0000000116097ec9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d50: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d54: cmp    %edx,%ebx
  0x0000000116097d56: jne    0x0000000116097c25  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d5c: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000116097d61: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000116097f01
  0x0000000116097d66: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d6a: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000116097d71: jne    0x0000000116097eb1  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d77: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 40)

  0x0000000116097d7a: cmp    $0x3e8,%r10d
  0x0000000116097d81: jl     0x0000000116097c77  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d87: mov    0xc(%r11),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@38 (line 52)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097d8b: add    $0x40,%rsp
  0x0000000116097d8f: pop    %rbp
  0x0000000116097d90: mov    0x108(%r15),%r10
  0x0000000116097d97: test   %eax,(%r10)        ;   {poll_return}
  0x0000000116097d9a: retq   
  0x0000000116097d9b: mov    %r10d,%ebp
  0x0000000116097d9e: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097da4: cmp    $0x100,%ebp
  0x0000000116097daa: jae    0x0000000116097e94
  0x0000000116097db0: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000116097dba: mov    0x210(%r11,%r10,4),%r8d
  0x0000000116097dc2: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097dc6: jmpq   0x0000000116097cce
  0x0000000116097dcb: mov    %rsi,0x8(%rsp)
  0x0000000116097dd0: mov    %r10d,(%rsp)
  0x0000000116097dd4: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000116097dde: nop
  0x0000000116097ddf: callq  0x0000000116078380  ; ImmutableOopMap{rbp=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000116097de4: mov    (%rsp),%r10d
  0x0000000116097de8: mov    0x8(%rsp),%rsi
  0x0000000116097ded: jmpq   0x0000000116097b8e
  0x0000000116097df2: xor    %r10d,%r10d
  0x0000000116097df5: mov    $0xffffffde,%esi
  0x0000000116097dfa: mov    %r10d,(%rsp)
  0x0000000116097dfe: mov    %r11,0x8(%rsp)
  0x0000000116097e03: mov    %r9d,0x4(%rsp)
  0x0000000116097e08: data16 xchg %ax,%ax
  0x0000000116097e0b: callq  0x0000000116043900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097e10: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097e12: xor    %r10d,%r10d
  0x0000000116097e15: mov    $0xffffff4d,%esi
  0x0000000116097e1a: mov    %r10d,(%rsp)
  0x0000000116097e1e: mov    %r8d,0x4(%rsp)
  0x0000000116097e23: mov    %r9d,0x8(%rsp)
  0x0000000116097e28: mov    %rcx,0x10(%rsp)
  0x0000000116097e2d: mov    %r11d,0x18(%rsp)
  0x0000000116097e32: nop
  0x0000000116097e33: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097e38: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097e3a: xor    %r10d,%r10d
  0x0000000116097e3d: mov    $0xffffff4d,%esi
  0x0000000116097e42: mov    %r10d,(%rsp)
  0x0000000116097e46: mov    %r9d,0x8(%rsp)
  0x0000000116097e4b: mov    %rdi,0x10(%rsp)
  0x0000000116097e50: mov    %r11d,0xc(%rsp)
  0x0000000116097e55: mov    %r8d,0x18(%rsp)
  0x0000000116097e5a: nop
  0x0000000116097e5b: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097e60: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097e62: mov    %ecx,0x8(%rsp)
  0x0000000116097e66: mov    %rsi,(%rsp)
  0x0000000116097e6a: mov    %r10d,%ebp
  0x0000000116097e6d: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000116097e77: callq  0x0000000116078380  ; ImmutableOopMap{[8]=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000116097e7c: mov    %ebp,%r10d
  0x0000000116097e7f: mov    (%rsp),%rsi
  0x0000000116097e83: mov    0x8(%rsp),%ecx
  0x0000000116097e87: jmpq   0x0000000116097cca
  0x0000000116097e8c: xor    %r10d,%r10d
  0x0000000116097e8f: jmpq   0x0000000116097c25
  0x0000000116097e94: mov    $0xffffffe4,%esi
  0x0000000116097e99: mov    %r10d,0x4(%rsp)
  0x0000000116097e9e: mov    %ecx,0x10(%rsp)
  0x0000000116097ea2: nop
  0x0000000116097ea3: callq  0x0000000116043900  ; ImmutableOopMap{[16]=NarrowOop [40]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097ea8: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097eaa: lea    (%r12,%r10,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097eae: xor    %r10d,%r10d
  0x0000000116097eb1: mov    $0xffffffde,%esi
  0x0000000116097eb6: mov    %r10d,(%rsp)
  0x0000000116097eba: mov    %r11,0x8(%rsp)
  0x0000000116097ebf: callq  0x0000000116043900  ; ImmutableOopMap{[8]=Oop [40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097ec4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097ec6: xor    %r10d,%r10d
  0x0000000116097ec9: mov    $0xffffffde,%esi
  0x0000000116097ece: mov    %r10d,(%rsp)
  0x0000000116097ed2: mov    %r8d,0x4(%rsp)
  0x0000000116097ed7: mov    %rdi,0x10(%rsp)
  0x0000000116097edc: mov    %r9d,0xc(%rsp)
  0x0000000116097ee1: mov    %r11,0x20(%rsp)
  0x0000000116097ee6: nop
  0x0000000116097ee7: callq  0x0000000116043900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097eec: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097eee: mov    $0xfffffff6,%esi
  0x0000000116097ef3: mov    %r9d,%ebp
  0x0000000116097ef6: nop
  0x0000000116097ef7: callq  0x0000000116043900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097efc: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097efe: xor    %r10d,%r10d
  0x0000000116097f01: mov    $0xfffffff4,%esi
  0x0000000116097f06: mov    %r10d,(%rsp)
  0x0000000116097f0a: nop
  0x0000000116097f0b: callq  0x0000000116043900  ; ImmutableOopMap{[40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097f10: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097f12: xor    %r10d,%r10d
  0x0000000116097f15: mov    $0xfffffff4,%esi
  0x0000000116097f1a: mov    %r10d,(%rsp)
  0x0000000116097f1e: mov    %r8d,0x4(%rsp)
  0x0000000116097f23: mov    %rdi,0x10(%rsp)
  0x0000000116097f28: mov    %r9d,0xc(%rsp)
  0x0000000116097f2d: xchg   %ax,%ax
  0x0000000116097f2f: callq  0x0000000116043900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097f34: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097f36: xor    %r10d,%r10d
  0x0000000116097f39: mov    $0xffffff4d,%esi
  0x0000000116097f3e: mov    %r10d,(%rsp)
  0x0000000116097f42: mov    %r8d,0x4(%rsp)
  0x0000000116097f47: mov    %r9d,0x8(%rsp)
  0x0000000116097f4c: mov    %ecx,0x10(%rsp)
  0x0000000116097f50: data16 xchg %ax,%ax
  0x0000000116097f53: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097f58: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097f5a: xor    %r10d,%r10d
  0x0000000116097f5d: mov    $0xffffff4d,%esi
  0x0000000116097f62: mov    %r10d,(%rsp)
  0x0000000116097f66: mov    %r8d,0x4(%rsp)
  0x0000000116097f6b: mov    %r9d,0x8(%rsp)
  0x0000000116097f70: mov    %ecx,0x10(%rsp)
  0x0000000116097f74: data16 xchg %ax,%ax
  0x0000000116097f77: callq  0x0000000116043900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116097f7c: ud2    
  0x0000000116097f7e: mov    %rax,%rsi
  0x0000000116097f81: jmp    0x0000000116097f86
  0x0000000116097f83: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000116097f86: add    $0x40,%rsp
  0x0000000116097f8a: pop    %rbp
  0x0000000116097f8b: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x0000000116097f90: hlt    
  0x0000000116097f91: hlt    
  0x0000000116097f92: hlt    
  0x0000000116097f93: hlt    
  0x0000000116097f94: hlt    
  0x0000000116097f95: hlt    
  0x0000000116097f96: hlt    
  0x0000000116097f97: hlt    
  0x0000000116097f98: hlt    
  0x0000000116097f99: hlt    
  0x0000000116097f9a: hlt    
  0x0000000116097f9b: hlt    
  0x0000000116097f9c: hlt    
  0x0000000116097f9d: hlt    
  0x0000000116097f9e: hlt    
  0x0000000116097f9f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000116097fa0: jmpq   0x0000000116078680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000116097fa5: callq  0x0000000116097faa
  0x0000000116097faa: subq   $0x5,(%rsp)
  0x0000000116097faf: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116097fb4: hlt    
  0x0000000116097fb5: hlt    
  0x0000000116097fb6: hlt    
  0x0000000116097fb7: hlt    

ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }pc offsets: 588 
ImmutableOopMap{[40]=Oop }pc offsets: 628 
ImmutableOopMap{rbp=NarrowOop [40]=Oop }pc offsets: 996 
ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }pc offsets: 1040 
ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }pc offsets: 1080 1120 
ImmutableOopMap{[8]=NarrowOop [40]=Oop }pc offsets: 1148 
ImmutableOopMap{[16]=NarrowOop [40]=Oop }pc offsets: 1192 
ImmutableOopMap{[8]=Oop [40]=Oop }pc offsets: 1220 
ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }pc offsets: 1260 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 1276 
ImmutableOopMap{[40]=Oop }pc offsets: 1296 
ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }pc offsets: 1332 
ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }pc offsets: 1368 1404 Compiled method (c2)     458   71 %           ProceduralHashMap::main @ 36 (72 bytes)
 total in heap  [0x0000000116095d10,0x00000001160960c8] = 952
 relocation     [0x0000000116095e88,0x0000000116095ea8] = 32
 main code      [0x0000000116095ec0,0x0000000116095f60] = 160
 stub code      [0x0000000116095f60,0x0000000116095f88] = 40
 oops           [0x0000000116095f88,0x0000000116095f90] = 8
 metadata       [0x0000000116095f90,0x0000000116095fa0] = 16
 scopes data    [0x0000000116095fa0,0x0000000116095fe8] = 72
 scopes pcs     [0x0000000116095fe8,0x0000000116096098] = 176
 dependencies   [0x0000000116096098,0x00000001160960a0] = 8
 handler table  [0x00000001160960a0,0x00000001160960b8] = 24
 nul chk table  [0x00000001160960b8,0x00000001160960c8] = 16
----------------------------------------------------------------------
ProceduralHashMap.main([Ljava/lang/String;)V  [0x0000000116095ec0, 0x0000000116095f88]  200 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000123c1b5f8} 'main' '([Ljava/lang/String;)V' in 'ProceduralHashMap'
  0x0000000116095ec0: callq  0x000000010ba107f4  ;   {runtime_call os::breakpoint()}
  0x0000000116095ec5: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000116095ed0: mov    %eax,-0x14000(%rsp)
  0x0000000116095ed7: push   %rbp
  0x0000000116095ed8: sub    $0x20,%rsp
  0x0000000116095edc: mov    0x8(%rsi),%rbx
  0x0000000116095ee0: mov    (%rsi),%ebp
  0x0000000116095ee2: mov    %rsi,%rdi
  0x0000000116095ee5: movabs $0x10ba91a82,%r10
  0x0000000116095eef: callq  *%r10
  0x0000000116095ef2: mov    0x8(%rbx),%r10d    ; implicit exception: dispatches to 0x0000000116095f4f
  0x0000000116095ef6: cmp    $0x60040,%r10d     ;   {metadata('ProceduralHashMap')}
  0x0000000116095efd: jne    0x0000000116095f32
  0x0000000116095eff: mov    %rbx,(%rsp)
  0x0000000116095f03: jmp    0x0000000116095f1e
  0x0000000116095f05: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x0000000116095f10: mov    (%rsp),%rsi
  0x0000000116095f14: data16 xchg %ax,%ax
  0x0000000116095f17: callq  0x0000000116041f00  ; ImmutableOopMap{[0]=Oop }
                                                ;*invokevirtual runTest {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {optimized virtual_call}
  0x0000000116095f1c: inc    %ebp               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x0000000116095f1e: cmp    $0x7a120,%ebp
  0x0000000116095f24: jl     0x0000000116095f10  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@39 (line 22)

  0x0000000116095f26: mov    $0xffffff4d,%esi
  0x0000000116095f2b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@39 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116095f30: ud2    
  0x0000000116095f32: mov    $0xffffff95,%esi
  0x0000000116095f37: mov    %rbx,(%rsp)
  0x0000000116095f3b: callq  0x0000000116043900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116095f40: ud2                       ;*invokevirtual runTest {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x0000000116095f42: mov    %rax,%rsi
  0x0000000116095f45: add    $0x20,%rsp
  0x0000000116095f49: pop    %rbp
  0x0000000116095f4a: jmpq   0x000000011607a600  ;   {runtime_call _rethrow_Java}
  0x0000000116095f4f: mov    $0xffffff7e,%esi
  0x0000000116095f54: data16 xchg %ax,%ax
  0x0000000116095f57: callq  0x0000000116043900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000116095f5c: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x0000000116095f5e: hlt    
  0x0000000116095f5f: hlt    
[Stub Code]
  0x0000000116095f60: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000116095f6a: jmpq   0x0000000116095f6a  ;   {runtime_call}
[Exception Handler]
  0x0000000116095f6f: jmpq   0x0000000116078680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000116095f74: callq  0x0000000116095f79
  0x0000000116095f79: subq   $0x5,(%rsp)
  0x0000000116095f7e: jmpq   0x0000000116043520  ;   {runtime_call DeoptimizationBlob}
  0x0000000116095f83: hlt    
  0x0000000116095f84: hlt    
  0x0000000116095f85: hlt    
  0x0000000116095f86: hlt    
  0x0000000116095f87: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 92 112 128 
ImmutableOopMap{}pc offsets: 156 Test phase
Time elapsed: 0.006 ms result=100

