Compiled method (c2)      49    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x0000000102bb1e90,0x0000000102bb2430] = 1440
 relocation     [0x0000000102bb2008,0x0000000102bb2018] = 16
 main code      [0x0000000102bb2020,0x0000000102bb21e0] = 448
 stub code      [0x0000000102bb21e0,0x0000000102bb21f8] = 24
 metadata       [0x0000000102bb21f8,0x0000000102bb2200] = 8
 scopes data    [0x0000000102bb2200,0x0000000102bb2288] = 136
 scopes pcs     [0x0000000102bb2288,0x0000000102bb2418] = 400
 dependencies   [0x0000000102bb2418,0x0000000102bb2420] = 8
 nul chk table  [0x0000000102bb2420,0x0000000102bb2430] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x0000000102bb2020, 0x0000000102bb21f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000119df8a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x0000000102bb2020: mov    %eax,-0x14000(%rsp)
  0x0000000102bb2027: push   %rbp
  0x0000000102bb2028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x0000000102bb202c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x0000000102bb21c2
  0x0000000102bb2030: test   %r10d,%r10d
  0x0000000102bb2033: jbe    0x0000000102bb21a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000102bb2039: mov    %r10d,%r8d
  0x0000000102bb203c: dec    %r8d
  0x0000000102bb203f: cmp    %r10d,%r8d
  0x0000000102bb2042: jae    0x0000000102bb21ad
  0x0000000102bb2048: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x0000000102bb204d: mov    %r10d,%edx
  0x0000000102bb2050: add    $0xfffffff9,%edx
  0x0000000102bb2053: mov    $0x80000000,%ecx
  0x0000000102bb2058: cmp    %edx,%r8d
  0x0000000102bb205b: cmovl  %ecx,%edx
  0x0000000102bb205e: mov    $0x1,%ecx
  0x0000000102bb2063: cmp    $0x1,%edx
  0x0000000102bb2066: jle    0x0000000102bb218d
  0x0000000102bb206c: mov    %r9d,%r11d
  0x0000000102bb206f: shl    $0x5,%r11d
  0x0000000102bb2073: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000102bb2076: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000102bb207b: jmp    0x0000000102bb20a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x0000000102bb207d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x0000000102bb2083: mov    %r9d,%eax
  0x0000000102bb2086: shl    $0x5,%eax
  0x0000000102bb2089: sub    %r9d,%eax
  0x0000000102bb208c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x0000000102bb208f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000102bb2091: cmp    %r10d,%ecx
  0x0000000102bb2094: jge    0x0000000102bb2199  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000102bb209a: mov    %eax,%r9d
  0x0000000102bb209d: jmp    0x0000000102bb207d
  0x0000000102bb209f: vmovq  %xmm0,%rsi
  0x0000000102bb20a4: vmovd  %xmm2,%r10d
  0x0000000102bb20a9: mov    %edx,%ebp
  0x0000000102bb20ab: sub    %ecx,%ebp
  0x0000000102bb20ad: cmp    %edi,%ebp
  0x0000000102bb20af: cmovg  %edi,%ebp
  0x0000000102bb20b2: add    %ecx,%ebp
  0x0000000102bb20b4: vmovq  %rsi,%xmm0
  0x0000000102bb20b9: vmovd  %r10d,%xmm2
  0x0000000102bb20be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000102bb20c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x0000000102bb20c3: vmovq  %xmm0,%r8
  0x0000000102bb20c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x0000000102bb20ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x0000000102bb20d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x0000000102bb20da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x0000000102bb20e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x0000000102bb20e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x0000000102bb20ec: add    %r14d,%r11d
  0x0000000102bb20ef: vmovq  %xmm0,%rbx
  0x0000000102bb20f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x0000000102bb20f9: vmovq  %xmm0,%r14
  0x0000000102bb20fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x0000000102bb2104: mov    %r11d,%r14d
  0x0000000102bb2107: shl    $0x5,%r14d
  0x0000000102bb210b: sub    %r11d,%r14d
  0x0000000102bb210e: add    %r13d,%r14d
  0x0000000102bb2111: mov    %r14d,%r11d
  0x0000000102bb2114: shl    $0x5,%r11d
  0x0000000102bb2118: sub    %r14d,%r11d
  0x0000000102bb211b: add    %ebx,%r11d
  0x0000000102bb211e: mov    %r11d,%ebx
  0x0000000102bb2121: shl    $0x5,%ebx
  0x0000000102bb2124: sub    %r11d,%ebx
  0x0000000102bb2127: add    %esi,%ebx
  0x0000000102bb2129: mov    %ebx,%r11d
  0x0000000102bb212c: shl    $0x5,%r11d
  0x0000000102bb2130: sub    %ebx,%r11d
  0x0000000102bb2133: add    %r8d,%r11d
  0x0000000102bb2136: mov    %r11d,%ebx
  0x0000000102bb2139: shl    $0x5,%ebx
  0x0000000102bb213c: sub    %r11d,%ebx
  0x0000000102bb213f: add    %r9d,%ebx
  0x0000000102bb2142: mov    %ebx,%r8d
  0x0000000102bb2145: shl    $0x5,%r8d
  0x0000000102bb2149: sub    %ebx,%r8d
  0x0000000102bb214c: add    %r10d,%r8d
  0x0000000102bb214f: mov    %r8d,%r9d
  0x0000000102bb2152: shl    $0x5,%r9d
  0x0000000102bb2156: sub    %r8d,%r9d
  0x0000000102bb2159: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x0000000102bb215c: mov    %r9d,%r11d
  0x0000000102bb215f: shl    $0x5,%r11d
  0x0000000102bb2163: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000102bb2166: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000102bb2169: cmp    %ebp,%ecx
  0x0000000102bb216b: jl     0x0000000102bb20c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000102bb2171: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000102bb2178: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x0000000102bb217b: cmp    %edx,%ecx
  0x0000000102bb217d: jl     0x0000000102bb209f
  0x0000000102bb2183: vmovq  %xmm0,%rsi
  0x0000000102bb2188: vmovd  %xmm2,%r10d
  0x0000000102bb218d: cmp    %r10d,%ecx
  0x0000000102bb2190: jl     0x0000000102bb207d
  0x0000000102bb2196: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000102bb2199: add    $0x20,%rsp
  0x0000000102bb219d: pop    %rbp
  0x0000000102bb219e: mov    0x108(%r15),%r10
  0x0000000102bb21a5: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bb21a8: retq   
  0x0000000102bb21a9: xor    %eax,%eax
  0x0000000102bb21ab: jmp    0x0000000102bb2199
  0x0000000102bb21ad: mov    %rsi,%rbp
  0x0000000102bb21b0: mov    %r10d,0x4(%rsp)
  0x0000000102bb21b5: mov    $0xffffff7e,%esi
  0x0000000102bb21ba: nop
  0x0000000102bb21bb: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bb21c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000102bb21c2: mov    $0xfffffff6,%esi
  0x0000000102bb21c7: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bb21cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x0000000102bb21ce: hlt    
  0x0000000102bb21cf: hlt    
  0x0000000102bb21d0: hlt    
  0x0000000102bb21d1: hlt    
  0x0000000102bb21d2: hlt    
  0x0000000102bb21d3: hlt    
  0x0000000102bb21d4: hlt    
  0x0000000102bb21d5: hlt    
  0x0000000102bb21d6: hlt    
  0x0000000102bb21d7: hlt    
  0x0000000102bb21d8: hlt    
  0x0000000102bb21d9: hlt    
  0x0000000102bb21da: hlt    
  0x0000000102bb21db: hlt    
  0x0000000102bb21dc: hlt    
  0x0000000102bb21dd: hlt    
  0x0000000102bb21de: hlt    
  0x0000000102bb21df: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bb21e0: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bb21e5: callq  0x0000000102bb21ea
  0x0000000102bb21ea: subq   $0x5,(%rsp)
  0x0000000102bb21ef: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bb21f4: hlt    
  0x0000000102bb21f5: hlt    
  0x0000000102bb21f6: hlt    
  0x0000000102bb21f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
Compiled method (c2)      86    2             java.lang.Object::<init> (1 bytes)
 total in heap  [0x0000000102bb4310,0x0000000102bb4548] = 568
 relocation     [0x0000000102bb4488,0x0000000102bb4498] = 16
 main code      [0x0000000102bb44a0,0x0000000102bb44e0] = 64
 stub code      [0x0000000102bb44e0,0x0000000102bb44f8] = 24
 metadata       [0x0000000102bb44f8,0x0000000102bb4508] = 16
 scopes data    [0x0000000102bb4508,0x0000000102bb4510] = 8
 scopes pcs     [0x0000000102bb4510,0x0000000102bb4540] = 48
 dependencies   [0x0000000102bb4540,0x0000000102bb4548] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x0000000102bb44a0, 0x0000000102bb44f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119c9f610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x0000000102bb44a0: mov    0x8(%rsi),%r10d
  0x0000000102bb44a4: movabs $0x800000000,%r12
  0x0000000102bb44ae: add    %r12,%r10
  0x0000000102bb44b1: xor    %r12,%r12
  0x0000000102bb44b4: cmp    %r10,%rax
  0x0000000102bb44b7: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bb44bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bb44c0: sub    $0x18,%rsp
  0x0000000102bb44c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x0000000102bb44cc: add    $0x10,%rsp
  0x0000000102bb44d0: pop    %rbp
  0x0000000102bb44d1: mov    0x108(%r15),%r10
  0x0000000102bb44d8: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bb44db: retq   
  0x0000000102bb44dc: hlt    
  0x0000000102bb44dd: hlt    
  0x0000000102bb44de: hlt    
  0x0000000102bb44df: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bb44e0: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bb44e5: callq  0x0000000102bb44ea
  0x0000000102bb44ea: subq   $0x5,(%rsp)
  0x0000000102bb44ef: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bb44f4: hlt    
  0x0000000102bb44f5: hlt    
  0x0000000102bb44f6: hlt    
  0x0000000102bb44f7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbb020, 0x0000000102bbb040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a002188} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbb020: mov    0x24(%rdi),%ebx
  0x0000000102bbb023: shl    $0x3,%rbx
  0x0000000102bbb027: mov    0x10(%rbx),%rbx
  0x0000000102bbb02b: test   %rbx,%rbx
  0x0000000102bbb02e: je     0x0000000102bbb037
  0x0000000102bbb034: jmpq   *0x38(%rbx)
  0x0000000102bbb037: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbb03c: hlt    
  0x0000000102bbb03d: hlt    
  0x0000000102bbb03e: hlt    
  0x0000000102bbb03f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bbbc20, 0x0000000102bbbc50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a034818} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbbc20: mov    0x14(%rsi),%ebx
  0x0000000102bbbc23: shl    $0x3,%rbx
  0x0000000102bbbc27: mov    0x28(%rbx),%ebx
  0x0000000102bbbc2a: shl    $0x3,%rbx
  0x0000000102bbbc2e: mov    0x24(%rbx),%ebx
  0x0000000102bbbc31: shl    $0x3,%rbx
  0x0000000102bbbc35: mov    0x10(%rbx),%rbx
  0x0000000102bbbc39: test   %rbx,%rbx
  0x0000000102bbbc3c: je     0x0000000102bbbc45
  0x0000000102bbbc42: jmpq   *0x38(%rbx)
  0x0000000102bbbc45: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbbc4a: hlt    
  0x0000000102bbbc4b: hlt    
  0x0000000102bbbc4c: hlt    
  0x0000000102bbbc4d: hlt    
  0x0000000102bbbc4e: hlt    
  0x0000000102bbbc4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbbe20, 0x0000000102bbbe48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0349d0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000102bbbe20: mov    0x8(%rsp),%rbx
  0x0000000102bbbe25: cmp    (%rsi),%rax
  0x0000000102bbbe28: mov    0x24(%rbx),%ebx
  0x0000000102bbbe2b: shl    $0x3,%rbx
  0x0000000102bbbe2f: mov    0x10(%rbx),%rbx
  0x0000000102bbbe33: test   %rbx,%rbx
  0x0000000102bbbe36: je     0x0000000102bbbe3f
  0x0000000102bbbe3c: jmpq   *0x38(%rbx)
  0x0000000102bbbe3f: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbbe44: hlt    
  0x0000000102bbbe45: hlt    
  0x0000000102bbbe46: hlt    
  0x0000000102bbbe47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x0000000102bbc620, 0x0000000102bbc640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a040dd8} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbc620: mov    0x24(%rsi),%ebx
  0x0000000102bbc623: shl    $0x3,%rbx
  0x0000000102bbc627: mov    0x10(%rbx),%rbx
  0x0000000102bbc62b: test   %rbx,%rbx
  0x0000000102bbc62e: je     0x0000000102bbc637
  0x0000000102bbc634: jmpq   *0x38(%rbx)
  0x0000000102bbc637: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbc63c: hlt    
  0x0000000102bbc63d: hlt    
  0x0000000102bbc63e: hlt    
  0x0000000102bbc63f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x0000000102bbc820, 0x0000000102bbc850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a040ef0} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbc820: mov    0x14(%rsi),%ebx
  0x0000000102bbc823: shl    $0x3,%rbx
  0x0000000102bbc827: mov    0x28(%rbx),%ebx
  0x0000000102bbc82a: shl    $0x3,%rbx
  0x0000000102bbc82e: mov    0x24(%rbx),%ebx
  0x0000000102bbc831: shl    $0x3,%rbx
  0x0000000102bbc835: mov    0x10(%rbx),%rbx
  0x0000000102bbc839: test   %rbx,%rbx
  0x0000000102bbc83c: je     0x0000000102bbc845
  0x0000000102bbc842: jmpq   *0x38(%rbx)
  0x0000000102bbc845: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbc84a: hlt    
  0x0000000102bbc84b: hlt    
  0x0000000102bbc84c: hlt    
  0x0000000102bbc84d: hlt    
  0x0000000102bbc84e: hlt    
  0x0000000102bbc84f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000102bbca20, 0x0000000102bbca40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a041008} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbca20: cmp    (%rsi),%rax
  0x0000000102bbca23: mov    0x24(%rdx),%ebx
  0x0000000102bbca26: shl    $0x3,%rbx
  0x0000000102bbca2a: mov    0x10(%rbx),%rbx
  0x0000000102bbca2e: test   %rbx,%rbx
  0x0000000102bbca31: je     0x0000000102bbca3a
  0x0000000102bbca37: jmpq   *0x38(%rbx)
  0x0000000102bbca3a: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbca3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbcc20, 0x0000000102bbcc40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0413a0} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbcc20: mov    0x24(%r8),%ebx
  0x0000000102bbcc24: shl    $0x3,%rbx
  0x0000000102bbcc28: mov    0x10(%rbx),%rbx
  0x0000000102bbcc2c: test   %rbx,%rbx
  0x0000000102bbcc2f: je     0x0000000102bbcc38
  0x0000000102bbcc35: jmpq   *0x38(%rbx)
  0x0000000102bbcc38: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbcc3d: hlt    
  0x0000000102bbcc3e: hlt    
  0x0000000102bbcc3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbce20, 0x0000000102bbce40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0414b8} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbce20: mov    0x24(%rcx),%ebx
  0x0000000102bbce23: shl    $0x3,%rbx
  0x0000000102bbce27: mov    0x10(%rbx),%rbx
  0x0000000102bbce2b: test   %rbx,%rbx
  0x0000000102bbce2e: je     0x0000000102bbce37
  0x0000000102bbce34: jmpq   *0x38(%rbx)
  0x0000000102bbce37: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbce3c: hlt    
  0x0000000102bbce3d: hlt    
  0x0000000102bbce3e: hlt    
  0x0000000102bbce3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbd220, 0x0000000102bbd240]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a049290} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbd220: mov    0x24(%rsi),%ebx
  0x0000000102bbd223: shl    $0x3,%rbx
  0x0000000102bbd227: mov    0x10(%rbx),%rbx
  0x0000000102bbd22b: test   %rbx,%rbx
  0x0000000102bbd22e: je     0x0000000102bbd237
  0x0000000102bbd234: jmpq   *0x38(%rbx)
  0x0000000102bbd237: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbd23c: hlt    
  0x0000000102bbd23d: hlt    
  0x0000000102bbd23e: hlt    
  0x0000000102bbd23f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbdba0, 0x0000000102bbdbc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a05b2b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbdba0: mov    0x24(%rcx),%ebx
  0x0000000102bbdba3: shl    $0x3,%rbx
  0x0000000102bbdba7: mov    0x10(%rbx),%rbx
  0x0000000102bbdbab: test   %rbx,%rbx
  0x0000000102bbdbae: je     0x0000000102bbdbb7
  0x0000000102bbdbb4: jmpq   *0x38(%rbx)
  0x0000000102bbdbb7: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbdbbc: hlt    
  0x0000000102bbdbbd: hlt    
  0x0000000102bbdbbe: hlt    
  0x0000000102bbdbbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbdda0, 0x0000000102bbddc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a05cbb8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbdda0: mov    0x24(%r8),%ebx
  0x0000000102bbdda4: shl    $0x3,%rbx
  0x0000000102bbdda8: mov    0x10(%rbx),%rbx
  0x0000000102bbddac: test   %rbx,%rbx
  0x0000000102bbddaf: je     0x0000000102bbddb8
  0x0000000102bbddb5: jmpq   *0x38(%rbx)
  0x0000000102bbddb8: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbddbd: hlt    
  0x0000000102bbddbe: hlt    
  0x0000000102bbddbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000102bbdfa0, 0x0000000102bbdfd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a05f720} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbdfa0: mov    0x14(%rsi),%ebx
  0x0000000102bbdfa3: shl    $0x3,%rbx
  0x0000000102bbdfa7: mov    0x28(%rbx),%ebx
  0x0000000102bbdfaa: shl    $0x3,%rbx
  0x0000000102bbdfae: mov    0x24(%rbx),%ebx
  0x0000000102bbdfb1: shl    $0x3,%rbx
  0x0000000102bbdfb5: mov    0x10(%rbx),%rbx
  0x0000000102bbdfb9: test   %rbx,%rbx
  0x0000000102bbdfbc: je     0x0000000102bbdfc5
  0x0000000102bbdfc2: jmpq   *0x38(%rbx)
  0x0000000102bbdfc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bbdfca: hlt    
  0x0000000102bbdfcb: hlt    
  0x0000000102bbdfcc: hlt    
  0x0000000102bbdfcd: hlt    
  0x0000000102bbdfce: hlt    
  0x0000000102bbdfcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bbe1a0, 0x0000000102bbe1c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a05f838} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bbe1a0: cmp    (%rsi),%rax
  0x0000000102bbe1a3: mov    0x24(%r9),%ebx
  0x0000000102bbe1a7: shl    $0x3,%rbx
  0x0000000102bbe1ab: mov    0x10(%rbx),%rbx
  0x0000000102bbe1af: test   %rbx,%rbx
  0x0000000102bbe1b2: je     0x0000000102bbe1bb
  0x0000000102bbe1b8: jmpq   *0x38(%rbx)
  0x0000000102bbe1bb: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000102bc01a0, 0x0000000102bc01c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0932f8} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc01a0: mov    0x24(%r9),%ebx
  0x0000000102bc01a4: shl    $0x3,%rbx
  0x0000000102bc01a8: mov    0x10(%rbx),%rbx
  0x0000000102bc01ac: test   %rbx,%rbx
  0x0000000102bc01af: je     0x0000000102bc01b8
  0x0000000102bc01b5: jmpq   *0x38(%rbx)
  0x0000000102bc01b8: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc01bd: hlt    
  0x0000000102bc01be: hlt    
  0x0000000102bc01bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x0000000102bc03a0, 0x0000000102bc03d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a093500} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc03a0: mov    0x14(%rsi),%ebx
  0x0000000102bc03a3: shl    $0x3,%rbx
  0x0000000102bc03a7: mov    0x28(%rbx),%ebx
  0x0000000102bc03aa: shl    $0x3,%rbx
  0x0000000102bc03ae: mov    0x24(%rbx),%ebx
  0x0000000102bc03b1: shl    $0x3,%rbx
  0x0000000102bc03b5: mov    0x10(%rbx),%rbx
  0x0000000102bc03b9: test   %rbx,%rbx
  0x0000000102bc03bc: je     0x0000000102bc03c5
  0x0000000102bc03c2: jmpq   *0x38(%rbx)
  0x0000000102bc03c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc03ca: hlt    
  0x0000000102bc03cb: hlt    
  0x0000000102bc03cc: hlt    
  0x0000000102bc03cd: hlt    
  0x0000000102bc03ce: hlt    
  0x0000000102bc03cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000102bc05a0, 0x0000000102bc05c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a093618} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc05a0: cmp    (%rsi),%rax
  0x0000000102bc05a3: mov    0x24(%rdi),%ebx
  0x0000000102bc05a6: shl    $0x3,%rbx
  0x0000000102bc05aa: mov    0x10(%rbx),%rbx
  0x0000000102bc05ae: test   %rbx,%rbx
  0x0000000102bc05b1: je     0x0000000102bc05ba
  0x0000000102bc05b7: jmpq   *0x38(%rbx)
  0x0000000102bc05ba: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc05bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc07a0, 0x0000000102bc07c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a094718} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc07a0: mov    0x24(%r9),%ebx
  0x0000000102bc07a4: shl    $0x3,%rbx
  0x0000000102bc07a8: mov    0x10(%rbx),%rbx
  0x0000000102bc07ac: test   %rbx,%rbx
  0x0000000102bc07af: je     0x0000000102bc07b8
  0x0000000102bc07b5: jmpq   *0x38(%rbx)
  0x0000000102bc07b8: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc07bd: hlt    
  0x0000000102bc07be: hlt    
  0x0000000102bc07bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc09a0, 0x0000000102bc09d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a094ab0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc09a0: mov    0x14(%rsi),%ebx
  0x0000000102bc09a3: shl    $0x3,%rbx
  0x0000000102bc09a7: mov    0x28(%rbx),%ebx
  0x0000000102bc09aa: shl    $0x3,%rbx
  0x0000000102bc09ae: mov    0x24(%rbx),%ebx
  0x0000000102bc09b1: shl    $0x3,%rbx
  0x0000000102bc09b5: mov    0x10(%rbx),%rbx
  0x0000000102bc09b9: test   %rbx,%rbx
  0x0000000102bc09bc: je     0x0000000102bc09c5
  0x0000000102bc09c2: jmpq   *0x38(%rbx)
  0x0000000102bc09c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc09ca: hlt    
  0x0000000102bc09cb: hlt    
  0x0000000102bc09cc: hlt    
  0x0000000102bc09cd: hlt    
  0x0000000102bc09ce: hlt    
  0x0000000102bc09cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x0000000102bc0ba0, 0x0000000102bc0bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a094fd8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc0ba0: mov    0x14(%rsi),%ebx
  0x0000000102bc0ba3: shl    $0x3,%rbx
  0x0000000102bc0ba7: mov    0x28(%rbx),%ebx
  0x0000000102bc0baa: shl    $0x3,%rbx
  0x0000000102bc0bae: mov    0x24(%rbx),%ebx
  0x0000000102bc0bb1: shl    $0x3,%rbx
  0x0000000102bc0bb5: mov    0x10(%rbx),%rbx
  0x0000000102bc0bb9: test   %rbx,%rbx
  0x0000000102bc0bbc: je     0x0000000102bc0bc5
  0x0000000102bc0bc2: jmpq   *0x38(%rbx)
  0x0000000102bc0bc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc0bca: hlt    
  0x0000000102bc0bcb: hlt    
  0x0000000102bc0bcc: hlt    
  0x0000000102bc0bcd: hlt    
  0x0000000102bc0bce: hlt    
  0x0000000102bc0bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x0000000102bc0da0, 0x0000000102bc0dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0950f0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc0da0: cmp    (%rsi),%rax
  0x0000000102bc0da3: mov    0x24(%r9),%ebx
  0x0000000102bc0da7: shl    $0x3,%rbx
  0x0000000102bc0dab: mov    0x10(%rbx),%rbx
  0x0000000102bc0daf: test   %rbx,%rbx
  0x0000000102bc0db2: je     0x0000000102bc0dbb
  0x0000000102bc0db8: jmpq   *0x38(%rbx)
  0x0000000102bc0dbb: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc0fa0, 0x0000000102bc0fc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a098048} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000102bc0fa0: mov    0x8(%rsp),%rbx
  0x0000000102bc0fa5: mov    0x24(%rbx),%ebx
  0x0000000102bc0fa8: shl    $0x3,%rbx
  0x0000000102bc0fac: mov    0x10(%rbx),%rbx
  0x0000000102bc0fb0: test   %rbx,%rbx
  0x0000000102bc0fb3: je     0x0000000102bc0fbc
  0x0000000102bc0fb9: jmpq   *0x38(%rbx)
  0x0000000102bc0fbc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc0fc1: hlt    
  0x0000000102bc0fc2: hlt    
  0x0000000102bc0fc3: hlt    
  0x0000000102bc0fc4: hlt    
  0x0000000102bc0fc5: hlt    
  0x0000000102bc0fc6: hlt    
  0x0000000102bc0fc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc11a0, 0x0000000102bc11d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0981b0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x0000000102bc11a0: mov    0x14(%rsi),%ebx
  0x0000000102bc11a3: shl    $0x3,%rbx
  0x0000000102bc11a7: mov    0x28(%rbx),%ebx
  0x0000000102bc11aa: shl    $0x3,%rbx
  0x0000000102bc11ae: mov    0x24(%rbx),%ebx
  0x0000000102bc11b1: shl    $0x3,%rbx
  0x0000000102bc11b5: mov    0x10(%rbx),%rbx
  0x0000000102bc11b9: test   %rbx,%rbx
  0x0000000102bc11bc: je     0x0000000102bc11c5
  0x0000000102bc11c2: jmpq   *0x38(%rbx)
  0x0000000102bc11c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc11ca: hlt    
  0x0000000102bc11cb: hlt    
  0x0000000102bc11cc: hlt    
  0x0000000102bc11cd: hlt    
  0x0000000102bc11ce: hlt    
  0x0000000102bc11cf: hlt    
Compiled method (c2)     129   25             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x0000000102bc4090,0x0000000102bc4338] = 680
 relocation     [0x0000000102bc4208,0x0000000102bc4218] = 16
 main code      [0x0000000102bc4220,0x0000000102bc4280] = 96
 stub code      [0x0000000102bc4280,0x0000000102bc4298] = 24
 metadata       [0x0000000102bc4298,0x0000000102bc42a0] = 8
 scopes data    [0x0000000102bc42a0,0x0000000102bc42c0] = 32
 scopes pcs     [0x0000000102bc42c0,0x0000000102bc4330] = 112
 dependencies   [0x0000000102bc4330,0x0000000102bc4338] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x0000000102bc4220, 0x0000000102bc4298]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119ca9300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x0000000102bc4220: mov    0x8(%rsi),%r10d
  0x0000000102bc4224: movabs $0x800000000,%r12
  0x0000000102bc422e: add    %r12,%r10
  0x0000000102bc4231: xor    %r12,%r12
  0x0000000102bc4234: cmp    %r10,%rax
  0x0000000102bc4237: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bc423d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bc4240: mov    %eax,-0x14000(%rsp)
  0x0000000102bc4247: push   %rbp
  0x0000000102bc4248: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x0000000102bc424c: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x0000000102bc4251: test   %r11d,%r11d
  0x0000000102bc4254: jne    0x0000000102bc426b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x0000000102bc4256: mov    $0x1,%eax
  0x0000000102bc425b: add    $0x10,%rsp
  0x0000000102bc425f: pop    %rbp
  0x0000000102bc4260: mov    0x108(%r15),%r10
  0x0000000102bc4267: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bc426a: retq   
  0x0000000102bc426b: mov    $0xffffff4d,%esi
  0x0000000102bc4270: mov    %r11d,%ebp
  0x0000000102bc4273: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc4278: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x0000000102bc427a: hlt    
  0x0000000102bc427b: hlt    
  0x0000000102bc427c: hlt    
  0x0000000102bc427d: hlt    
  0x0000000102bc427e: hlt    
  0x0000000102bc427f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bc4280: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bc4285: callq  0x0000000102bc428a
  0x0000000102bc428a: subq   $0x5,(%rsp)
  0x0000000102bc428f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bc4294: hlt    
  0x0000000102bc4295: hlt    
  0x0000000102bc4296: hlt    
  0x0000000102bc4297: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000102bc3da0, 0x0000000102bc3dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a098458} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc3da0: mov    0x24(%r9),%ebx
  0x0000000102bc3da4: shl    $0x3,%rbx
  0x0000000102bc3da8: mov    0x10(%rbx),%rbx
  0x0000000102bc3dac: test   %rbx,%rbx
  0x0000000102bc3daf: je     0x0000000102bc3db8
  0x0000000102bc3db5: jmpq   *0x38(%rbx)
  0x0000000102bc3db8: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc3dbd: hlt    
  0x0000000102bc3dbe: hlt    
  0x0000000102bc3dbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc3ba0, 0x0000000102bc3bc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a099258} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x0000000102bc3ba0: mov    0x10(%rsp),%rbx
  0x0000000102bc3ba5: mov    0x24(%rbx),%ebx
  0x0000000102bc3ba8: shl    $0x3,%rbx
  0x0000000102bc3bac: mov    0x10(%rbx),%rbx
  0x0000000102bc3bb0: test   %rbx,%rbx
  0x0000000102bc3bb3: je     0x0000000102bc3bbc
  0x0000000102bc3bb9: jmpq   *0x38(%rbx)
  0x0000000102bc3bbc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc3bc1: hlt    
  0x0000000102bc3bc2: hlt    
  0x0000000102bc3bc3: hlt    
  0x0000000102bc3bc4: hlt    
  0x0000000102bc3bc5: hlt    
  0x0000000102bc3bc6: hlt    
  0x0000000102bc3bc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x0000000102bc39a0, 0x0000000102bc39d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a099370} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc39a0: mov    0x14(%rsi),%ebx
  0x0000000102bc39a3: shl    $0x3,%rbx
  0x0000000102bc39a7: mov    0x28(%rbx),%ebx
  0x0000000102bc39aa: shl    $0x3,%rbx
  0x0000000102bc39ae: mov    0x24(%rbx),%ebx
  0x0000000102bc39b1: shl    $0x3,%rbx
  0x0000000102bc39b5: mov    0x10(%rbx),%rbx
  0x0000000102bc39b9: test   %rbx,%rbx
  0x0000000102bc39bc: je     0x0000000102bc39c5
  0x0000000102bc39c2: jmpq   *0x38(%rbx)
  0x0000000102bc39c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc39ca: hlt    
  0x0000000102bc39cb: hlt    
  0x0000000102bc39cc: hlt    
  0x0000000102bc39cd: hlt    
  0x0000000102bc39ce: hlt    
  0x0000000102bc39cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000102bc37a0, 0x0000000102bc37c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a099488} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc37a0: cmp    (%rsi),%rax
  0x0000000102bc37a3: mov    0x24(%rdi),%ebx
  0x0000000102bc37a6: shl    $0x3,%rbx
  0x0000000102bc37aa: mov    0x10(%rbx),%rbx
  0x0000000102bc37ae: test   %rbx,%rbx
  0x0000000102bc37b1: je     0x0000000102bc37ba
  0x0000000102bc37b7: jmpq   *0x38(%rbx)
  0x0000000102bc37ba: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc37bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc35a0, 0x0000000102bc35d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0995f0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x0000000102bc35a0: mov    0x14(%rsi),%ebx
  0x0000000102bc35a3: shl    $0x3,%rbx
  0x0000000102bc35a7: mov    0x28(%rbx),%ebx
  0x0000000102bc35aa: shl    $0x3,%rbx
  0x0000000102bc35ae: mov    0x24(%rbx),%ebx
  0x0000000102bc35b1: shl    $0x3,%rbx
  0x0000000102bc35b5: mov    0x10(%rbx),%rbx
  0x0000000102bc35b9: test   %rbx,%rbx
  0x0000000102bc35bc: je     0x0000000102bc35c5
  0x0000000102bc35c2: jmpq   *0x38(%rbx)
  0x0000000102bc35c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc35ca: hlt    
  0x0000000102bc35cb: hlt    
  0x0000000102bc35cc: hlt    
  0x0000000102bc35cd: hlt    
  0x0000000102bc35ce: hlt    
  0x0000000102bc35cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc33a0, 0x0000000102bc33c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09a590} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x0000000102bc33a0: mov    0x18(%rsp),%rbx
  0x0000000102bc33a5: mov    0x24(%rbx),%ebx
  0x0000000102bc33a8: shl    $0x3,%rbx
  0x0000000102bc33ac: mov    0x10(%rbx),%rbx
  0x0000000102bc33b0: test   %rbx,%rbx
  0x0000000102bc33b3: je     0x0000000102bc33bc
  0x0000000102bc33b9: jmpq   *0x38(%rbx)
  0x0000000102bc33bc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc33c1: hlt    
  0x0000000102bc33c2: hlt    
  0x0000000102bc33c3: hlt    
  0x0000000102bc33c4: hlt    
  0x0000000102bc33c5: hlt    
  0x0000000102bc33c6: hlt    
  0x0000000102bc33c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x0000000102bc31a0, 0x0000000102bc31d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09a6a8} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc31a0: mov    0x14(%rsi),%ebx
  0x0000000102bc31a3: shl    $0x3,%rbx
  0x0000000102bc31a7: mov    0x28(%rbx),%ebx
  0x0000000102bc31aa: shl    $0x3,%rbx
  0x0000000102bc31ae: mov    0x24(%rbx),%ebx
  0x0000000102bc31b1: shl    $0x3,%rbx
  0x0000000102bc31b5: mov    0x10(%rbx),%rbx
  0x0000000102bc31b9: test   %rbx,%rbx
  0x0000000102bc31bc: je     0x0000000102bc31c5
  0x0000000102bc31c2: jmpq   *0x38(%rbx)
  0x0000000102bc31c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc31ca: hlt    
  0x0000000102bc31cb: hlt    
  0x0000000102bc31cc: hlt    
  0x0000000102bc31cd: hlt    
  0x0000000102bc31ce: hlt    
  0x0000000102bc31cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc2fa0, 0x0000000102bc2fc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09a7c0} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc2fa0: cmp    (%rsi),%rax
  0x0000000102bc2fa3: mov    0x24(%r8),%ebx
  0x0000000102bc2fa7: shl    $0x3,%rbx
  0x0000000102bc2fab: mov    0x10(%rbx),%rbx
  0x0000000102bc2faf: test   %rbx,%rbx
  0x0000000102bc2fb2: je     0x0000000102bc2fbb
  0x0000000102bc2fb8: jmpq   *0x38(%rbx)
  0x0000000102bc2fbb: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc2da0, 0x0000000102bc2dd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09a928} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x0000000102bc2da0: mov    0x14(%rsi),%ebx
  0x0000000102bc2da3: shl    $0x3,%rbx
  0x0000000102bc2da7: mov    0x28(%rbx),%ebx
  0x0000000102bc2daa: shl    $0x3,%rbx
  0x0000000102bc2dae: mov    0x24(%rbx),%ebx
  0x0000000102bc2db1: shl    $0x3,%rbx
  0x0000000102bc2db5: mov    0x10(%rbx),%rbx
  0x0000000102bc2db9: test   %rbx,%rbx
  0x0000000102bc2dbc: je     0x0000000102bc2dc5
  0x0000000102bc2dc2: jmpq   *0x38(%rbx)
  0x0000000102bc2dc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc2dca: hlt    
  0x0000000102bc2dcb: hlt    
  0x0000000102bc2dcc: hlt    
  0x0000000102bc2dcd: hlt    
  0x0000000102bc2dce: hlt    
  0x0000000102bc2dcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000102bc2ba0, 0x0000000102bc2bc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09ac20} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc2ba0: mov    0x24(%rcx),%ebx
  0x0000000102bc2ba3: shl    $0x3,%rbx
  0x0000000102bc2ba7: mov    0x10(%rbx),%rbx
  0x0000000102bc2bab: test   %rbx,%rbx
  0x0000000102bc2bae: je     0x0000000102bc2bb7
  0x0000000102bc2bb4: jmpq   *0x38(%rbx)
  0x0000000102bc2bb7: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc2bbc: hlt    
  0x0000000102bc2bbd: hlt    
  0x0000000102bc2bbe: hlt    
  0x0000000102bc2bbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x0000000102bc29a0, 0x0000000102bc29d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09ad38} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc29a0: mov    0x14(%rsi),%ebx
  0x0000000102bc29a3: shl    $0x3,%rbx
  0x0000000102bc29a7: mov    0x28(%rbx),%ebx
  0x0000000102bc29aa: shl    $0x3,%rbx
  0x0000000102bc29ae: mov    0x24(%rbx),%ebx
  0x0000000102bc29b1: shl    $0x3,%rbx
  0x0000000102bc29b5: mov    0x10(%rbx),%rbx
  0x0000000102bc29b9: test   %rbx,%rbx
  0x0000000102bc29bc: je     0x0000000102bc29c5
  0x0000000102bc29c2: jmpq   *0x38(%rbx)
  0x0000000102bc29c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc29ca: hlt    
  0x0000000102bc29cb: hlt    
  0x0000000102bc29cc: hlt    
  0x0000000102bc29cd: hlt    
  0x0000000102bc29ce: hlt    
  0x0000000102bc29cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000102bc27a0, 0x0000000102bc27c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09ae50} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc27a0: cmp    (%rsi),%rax
  0x0000000102bc27a3: mov    0x24(%r8),%ebx
  0x0000000102bc27a7: shl    $0x3,%rbx
  0x0000000102bc27ab: mov    0x10(%rbx),%rbx
  0x0000000102bc27af: test   %rbx,%rbx
  0x0000000102bc27b2: je     0x0000000102bc27bb
  0x0000000102bc27b8: jmpq   *0x38(%rbx)
  0x0000000102bc27bb: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     149   38             java.lang.String::charAt (25 bytes)
 total in heap  [0x0000000102bc2210,0x0000000102bc25b8] = 936
 relocation     [0x0000000102bc2388,0x0000000102bc2398] = 16
 main code      [0x0000000102bc23a0,0x0000000102bc2440] = 160
 stub code      [0x0000000102bc2440,0x0000000102bc2458] = 24
 metadata       [0x0000000102bc2458,0x0000000102bc2470] = 24
 scopes data    [0x0000000102bc2470,0x0000000102bc24d0] = 96
 scopes pcs     [0x0000000102bc24d0,0x0000000102bc25a0] = 208
 dependencies   [0x0000000102bc25a0,0x0000000102bc25a8] = 8
 nul chk table  [0x0000000102bc25a8,0x0000000102bc25b8] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x0000000102bc23a0, 0x0000000102bc2458]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119ca44b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000102bc23a0: mov    0x8(%rsi),%r10d
  0x0000000102bc23a4: movabs $0x800000000,%r12
  0x0000000102bc23ae: add    %r12,%r10
  0x0000000102bc23b1: xor    %r12,%r12
  0x0000000102bc23b4: cmp    %r10,%rax
  0x0000000102bc23b7: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bc23bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bc23c0: mov    %eax,-0x14000(%rsp)
  0x0000000102bc23c7: push   %rbp
  0x0000000102bc23c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x0000000102bc23cc: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000102bc23d1: test   %r10d,%r10d
  0x0000000102bc23d4: jne    0x0000000102bc23fd  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000102bc23d6: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x0000000102bc23d9: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000102bc2426
  0x0000000102bc23de: cmp    %r10d,%edx
  0x0000000102bc23e1: jae    0x0000000102bc2416
  0x0000000102bc23e3: lea    (%r12,%rbp,8),%r10
  0x0000000102bc23e7: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000102bc23ed: add    $0x20,%rsp
  0x0000000102bc23f1: pop    %rbp
  0x0000000102bc23f2: mov    0x108(%r15),%r10
  0x0000000102bc23f9: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bc23fc: retq   
  0x0000000102bc23fd: mov    %rsi,%rbp
  0x0000000102bc2400: mov    %edx,(%rsp)
  0x0000000102bc2403: mov    %r10d,0x4(%rsp)
  0x0000000102bc2408: mov    $0xffffff4d,%esi
  0x0000000102bc240d: xchg   %ax,%ax
  0x0000000102bc240f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc2414: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000102bc2416: mov    $0xffffffe5,%esi
  0x0000000102bc241b: mov    %edx,0x4(%rsp)
  0x0000000102bc241f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc2424: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000102bc2426: mov    $0xfffffff6,%esi
  0x0000000102bc242b: mov    %edx,0x4(%rsp)
  0x0000000102bc242f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc2434: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000102bc2436: hlt    
  0x0000000102bc2437: hlt    
  0x0000000102bc2438: hlt    
  0x0000000102bc2439: hlt    
  0x0000000102bc243a: hlt    
  0x0000000102bc243b: hlt    
  0x0000000102bc243c: hlt    
  0x0000000102bc243d: hlt    
  0x0000000102bc243e: hlt    
  0x0000000102bc243f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bc2440: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bc2445: callq  0x0000000102bc244a
  0x0000000102bc244a: subq   $0x5,(%rsp)
  0x0000000102bc244f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bc2454: hlt    
  0x0000000102bc2455: hlt    
  0x0000000102bc2456: hlt    
  0x0000000102bc2457: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     151   39             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x0000000102bc1f10,0x0000000102bc21e0] = 720
 relocation     [0x0000000102bc2088,0x0000000102bc2098] = 16
 main code      [0x0000000102bc20a0,0x0000000102bc2100] = 96
 stub code      [0x0000000102bc2100,0x0000000102bc2118] = 24
 metadata       [0x0000000102bc2118,0x0000000102bc2120] = 8
 scopes data    [0x0000000102bc2120,0x0000000102bc2148] = 40
 scopes pcs     [0x0000000102bc2148,0x0000000102bc21c8] = 128
 dependencies   [0x0000000102bc21c8,0x0000000102bc21d0] = 8
 nul chk table  [0x0000000102bc21d0,0x0000000102bc21e0] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x0000000102bc20a0, 0x0000000102bc2118]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000119df7988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000102bc20a0: mov    %eax,-0x14000(%rsp)
  0x0000000102bc20a7: push   %rbp
  0x0000000102bc20a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x0000000102bc20ac: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000102bc20de
  0x0000000102bc20b0: cmp    %r10d,%edx
  0x0000000102bc20b3: jae    0x0000000102bc20ca
  0x0000000102bc20b5: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x0000000102bc20ba: add    $0x20,%rsp
  0x0000000102bc20be: pop    %rbp
  0x0000000102bc20bf: mov    0x108(%r15),%r10
  0x0000000102bc20c6: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bc20c9: retq   
  0x0000000102bc20ca: mov    %rsi,%rbp
  0x0000000102bc20cd: mov    %edx,0x4(%rsp)
  0x0000000102bc20d1: mov    $0xffffffe5,%esi
  0x0000000102bc20d6: nop
  0x0000000102bc20d7: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc20dc: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x0000000102bc20de: mov    %rsi,%rbp
  0x0000000102bc20e1: mov    %edx,0x4(%rsp)
  0x0000000102bc20e5: mov    $0xfffffff6,%esi
  0x0000000102bc20ea: nop
  0x0000000102bc20eb: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc20f0: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x0000000102bc20f2: hlt    
  0x0000000102bc20f3: hlt    
  0x0000000102bc20f4: hlt    
  0x0000000102bc20f5: hlt    
  0x0000000102bc20f6: hlt    
  0x0000000102bc20f7: hlt    
  0x0000000102bc20f8: hlt    
  0x0000000102bc20f9: hlt    
  0x0000000102bc20fa: hlt    
  0x0000000102bc20fb: hlt    
  0x0000000102bc20fc: hlt    
  0x0000000102bc20fd: hlt    
  0x0000000102bc20fe: hlt    
  0x0000000102bc20ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bc2100: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bc2105: callq  0x0000000102bc210a
  0x0000000102bc210a: subq   $0x5,(%rsp)
  0x0000000102bc210f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bc2114: hlt    
  0x0000000102bc2115: hlt    
  0x0000000102bc2116: hlt    
  0x0000000102bc2117: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc1ea0, 0x0000000102bc1ec8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09bfa0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc1ea0: mov    0x20(%rsp),%rbx
  0x0000000102bc1ea5: mov    0x24(%rbx),%ebx
  0x0000000102bc1ea8: shl    $0x3,%rbx
  0x0000000102bc1eac: mov    0x10(%rbx),%rbx
  0x0000000102bc1eb0: test   %rbx,%rbx
  0x0000000102bc1eb3: je     0x0000000102bc1ebc
  0x0000000102bc1eb9: jmpq   *0x38(%rbx)
  0x0000000102bc1ebc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc1ec1: hlt    
  0x0000000102bc1ec2: hlt    
  0x0000000102bc1ec3: hlt    
  0x0000000102bc1ec4: hlt    
  0x0000000102bc1ec5: hlt    
  0x0000000102bc1ec6: hlt    
  0x0000000102bc1ec7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc1ca0, 0x0000000102bc1cd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09c108} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc1ca0: mov    0x14(%rsi),%ebx
  0x0000000102bc1ca3: shl    $0x3,%rbx
  0x0000000102bc1ca7: mov    0x28(%rbx),%ebx
  0x0000000102bc1caa: shl    $0x3,%rbx
  0x0000000102bc1cae: mov    0x24(%rbx),%ebx
  0x0000000102bc1cb1: shl    $0x3,%rbx
  0x0000000102bc1cb5: mov    0x10(%rbx),%rbx
  0x0000000102bc1cb9: test   %rbx,%rbx
  0x0000000102bc1cbc: je     0x0000000102bc1cc5
  0x0000000102bc1cc2: jmpq   *0x38(%rbx)
  0x0000000102bc1cc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc1cca: hlt    
  0x0000000102bc1ccb: hlt    
  0x0000000102bc1ccc: hlt    
  0x0000000102bc1ccd: hlt    
  0x0000000102bc1cce: hlt    
  0x0000000102bc1ccf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc1820, 0x0000000102bc1848]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09d180} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc1820: mov    0x28(%rsp),%rbx
  0x0000000102bc1825: mov    0x24(%rbx),%ebx
  0x0000000102bc1828: shl    $0x3,%rbx
  0x0000000102bc182c: mov    0x10(%rbx),%rbx
  0x0000000102bc1830: test   %rbx,%rbx
  0x0000000102bc1833: je     0x0000000102bc183c
  0x0000000102bc1839: jmpq   *0x38(%rbx)
  0x0000000102bc183c: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc1841: hlt    
  0x0000000102bc1842: hlt    
  0x0000000102bc1843: hlt    
  0x0000000102bc1844: hlt    
  0x0000000102bc1845: hlt    
  0x0000000102bc1846: hlt    
  0x0000000102bc1847: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc1620, 0x0000000102bc1650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09d2e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc1620: mov    0x14(%rsi),%ebx
  0x0000000102bc1623: shl    $0x3,%rbx
  0x0000000102bc1627: mov    0x28(%rbx),%ebx
  0x0000000102bc162a: shl    $0x3,%rbx
  0x0000000102bc162e: mov    0x24(%rbx),%ebx
  0x0000000102bc1631: shl    $0x3,%rbx
  0x0000000102bc1635: mov    0x10(%rbx),%rbx
  0x0000000102bc1639: test   %rbx,%rbx
  0x0000000102bc163c: je     0x0000000102bc1645
  0x0000000102bc1642: jmpq   *0x38(%rbx)
  0x0000000102bc1645: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc164a: hlt    
  0x0000000102bc164b: hlt    
  0x0000000102bc164c: hlt    
  0x0000000102bc164d: hlt    
  0x0000000102bc164e: hlt    
  0x0000000102bc164f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x0000000102bc13a0, 0x0000000102bc13c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09d4f0} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc13a0: mov    0x24(%rcx),%ebx
  0x0000000102bc13a3: shl    $0x3,%rbx
  0x0000000102bc13a7: mov    0x10(%rbx),%rbx
  0x0000000102bc13ab: test   %rbx,%rbx
  0x0000000102bc13ae: je     0x0000000102bc13b7
  0x0000000102bc13b4: jmpq   *0x38(%rbx)
  0x0000000102bc13b7: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc13bc: hlt    
  0x0000000102bc13bd: hlt    
  0x0000000102bc13be: hlt    
  0x0000000102bc13bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc71a0, 0x0000000102bc71c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09e9e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc71a0: mov    0x30(%rsp),%rbx
  0x0000000102bc71a5: mov    0x24(%rbx),%ebx
  0x0000000102bc71a8: shl    $0x3,%rbx
  0x0000000102bc71ac: mov    0x10(%rbx),%rbx
  0x0000000102bc71b0: test   %rbx,%rbx
  0x0000000102bc71b3: je     0x0000000102bc71bc
  0x0000000102bc71b9: jmpq   *0x38(%rbx)
  0x0000000102bc71bc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc71c1: hlt    
  0x0000000102bc71c2: hlt    
  0x0000000102bc71c3: hlt    
  0x0000000102bc71c4: hlt    
  0x0000000102bc71c5: hlt    
  0x0000000102bc71c6: hlt    
  0x0000000102bc71c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x0000000102bc6fa0, 0x0000000102bc6fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09eb00} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc6fa0: mov    0x14(%rsi),%ebx
  0x0000000102bc6fa3: shl    $0x3,%rbx
  0x0000000102bc6fa7: mov    0x28(%rbx),%ebx
  0x0000000102bc6faa: shl    $0x3,%rbx
  0x0000000102bc6fae: mov    0x24(%rbx),%ebx
  0x0000000102bc6fb1: shl    $0x3,%rbx
  0x0000000102bc6fb5: mov    0x10(%rbx),%rbx
  0x0000000102bc6fb9: test   %rbx,%rbx
  0x0000000102bc6fbc: je     0x0000000102bc6fc5
  0x0000000102bc6fc2: jmpq   *0x38(%rbx)
  0x0000000102bc6fc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc6fca: hlt    
  0x0000000102bc6fcb: hlt    
  0x0000000102bc6fcc: hlt    
  0x0000000102bc6fcd: hlt    
  0x0000000102bc6fce: hlt    
  0x0000000102bc6fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000102bc6da0, 0x0000000102bc6dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09ec18} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc6da0: cmp    (%rsi),%rax
  0x0000000102bc6da3: mov    0x24(%r8),%ebx
  0x0000000102bc6da7: shl    $0x3,%rbx
  0x0000000102bc6dab: mov    0x10(%rbx),%rbx
  0x0000000102bc6daf: test   %rbx,%rbx
  0x0000000102bc6db2: je     0x0000000102bc6dbb
  0x0000000102bc6db8: jmpq   *0x38(%rbx)
  0x0000000102bc6dbb: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc6ba0, 0x0000000102bc6bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a09ed80} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc6ba0: mov    0x14(%rsi),%ebx
  0x0000000102bc6ba3: shl    $0x3,%rbx
  0x0000000102bc6ba7: mov    0x28(%rbx),%ebx
  0x0000000102bc6baa: shl    $0x3,%rbx
  0x0000000102bc6bae: mov    0x24(%rbx),%ebx
  0x0000000102bc6bb1: shl    $0x3,%rbx
  0x0000000102bc6bb5: mov    0x10(%rbx),%rbx
  0x0000000102bc6bb9: test   %rbx,%rbx
  0x0000000102bc6bbc: je     0x0000000102bc6bc5
  0x0000000102bc6bc2: jmpq   *0x38(%rbx)
  0x0000000102bc6bc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc6bca: hlt    
  0x0000000102bc6bcb: hlt    
  0x0000000102bc6bcc: hlt    
  0x0000000102bc6bcd: hlt    
  0x0000000102bc6bce: hlt    
  0x0000000102bc6bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc69a0, 0x0000000102bc69c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0a8398} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc69a0: mov    0x38(%rsp),%rbx
  0x0000000102bc69a5: mov    0x24(%rbx),%ebx
  0x0000000102bc69a8: shl    $0x3,%rbx
  0x0000000102bc69ac: mov    0x10(%rbx),%rbx
  0x0000000102bc69b0: test   %rbx,%rbx
  0x0000000102bc69b3: je     0x0000000102bc69bc
  0x0000000102bc69b9: jmpq   *0x38(%rbx)
  0x0000000102bc69bc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc69c1: hlt    
  0x0000000102bc69c2: hlt    
  0x0000000102bc69c3: hlt    
  0x0000000102bc69c4: hlt    
  0x0000000102bc69c5: hlt    
  0x0000000102bc69c6: hlt    
  0x0000000102bc69c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc67a0, 0x0000000102bc67d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0a8500} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc67a0: mov    0x14(%rsi),%ebx
  0x0000000102bc67a3: shl    $0x3,%rbx
  0x0000000102bc67a7: mov    0x28(%rbx),%ebx
  0x0000000102bc67aa: shl    $0x3,%rbx
  0x0000000102bc67ae: mov    0x24(%rbx),%ebx
  0x0000000102bc67b1: shl    $0x3,%rbx
  0x0000000102bc67b5: mov    0x10(%rbx),%rbx
  0x0000000102bc67b9: test   %rbx,%rbx
  0x0000000102bc67bc: je     0x0000000102bc67c5
  0x0000000102bc67c2: jmpq   *0x38(%rbx)
  0x0000000102bc67c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc67ca: hlt    
  0x0000000102bc67cb: hlt    
  0x0000000102bc67cc: hlt    
  0x0000000102bc67cd: hlt    
  0x0000000102bc67ce: hlt    
  0x0000000102bc67cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc5fa0, 0x0000000102bc5fc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0ab5d8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc5fa0: mov    0x40(%rsp),%rbx
  0x0000000102bc5fa5: mov    0x24(%rbx),%ebx
  0x0000000102bc5fa8: shl    $0x3,%rbx
  0x0000000102bc5fac: mov    0x10(%rbx),%rbx
  0x0000000102bc5fb0: test   %rbx,%rbx
  0x0000000102bc5fb3: je     0x0000000102bc5fbc
  0x0000000102bc5fb9: jmpq   *0x38(%rbx)
  0x0000000102bc5fbc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc5fc1: hlt    
  0x0000000102bc5fc2: hlt    
  0x0000000102bc5fc3: hlt    
  0x0000000102bc5fc4: hlt    
  0x0000000102bc5fc5: hlt    
  0x0000000102bc5fc6: hlt    
  0x0000000102bc5fc7: hlt    
Compiled method (c2)     186   52             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x0000000102bc8d90,0x0000000102bc9ba8] = 3608
 relocation     [0x0000000102bc8f08,0x0000000102bc8f38] = 48
 main code      [0x0000000102bc8f40,0x0000000102bc9360] = 1056
 stub code      [0x0000000102bc9360,0x0000000102bc9388] = 40
 metadata       [0x0000000102bc9388,0x0000000102bc93b8] = 48
 scopes data    [0x0000000102bc93b8,0x0000000102bc95b8] = 512
 scopes pcs     [0x0000000102bc95b8,0x0000000102bc9b58] = 1440
 dependencies   [0x0000000102bc9b58,0x0000000102bc9b60] = 8
 handler table  [0x0000000102bc9b60,0x0000000102bc9b78] = 24
 nul chk table  [0x0000000102bc9b78,0x0000000102bc9ba8] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x0000000102bc8f40, 0x0000000102bc9388]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011a076240} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x0000000102bc8f40: mov    0x8(%rsi),%r10d
  0x0000000102bc8f44: movabs $0x800000000,%r12
  0x0000000102bc8f4e: add    %r12,%r10
  0x0000000102bc8f51: xor    %r12,%r12
  0x0000000102bc8f54: cmp    %r10,%rax
  0x0000000102bc8f57: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bc8f5d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bc8f60: mov    %eax,-0x14000(%rsp)
  0x0000000102bc8f67: push   %rbp
  0x0000000102bc8f68: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x0000000102bc8f6c: mov    %rsi,%r10
  0x0000000102bc8f6f: mov    %rdx,%r9
  0x0000000102bc8f72: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x0000000102bc9323
  0x0000000102bc8f76: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x0000000102bc9332
  0x0000000102bc8f7b: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000102bc8f7f: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000102bc8f82: cmp    $0xffff,%r11d
  0x0000000102bc8f89: jg     0x0000000102bc92ee  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000102bc8f8f: mov    %rsi,%rdi
  0x0000000102bc8f92: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x0000000102bc8f96: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x0000000102bc933e
  0x0000000102bc8f9b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x0000000102bc8f9e: mov    %r11d,%r10d
  0x0000000102bc8fa1: add    %edx,%r10d
  0x0000000102bc8fa4: add    $0x2,%r10d
  0x0000000102bc8fa8: cmp    %ebx,%r10d
  0x0000000102bc8fab: jg     0x0000000102bc91d9  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc8fb1: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000102bc8fb4: mov    %r11d,%esi
  0x0000000102bc8fb7: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x0000000102bc8fba: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x0000000102bc8fbe: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x0000000102bc934a
  0x0000000102bc8fc3: mov    %edx,%r10d
  0x0000000102bc8fc6: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x0000000102bc8fc9: cmp    %ebp,%edx
  0x0000000102bc8fcb: jae    0x0000000102bc9266
  0x0000000102bc8fd1: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000102bc8fd5: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x0000000102bc8fda: mov    %edx,%r14d
  0x0000000102bc8fdd: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000102bc8fe1: cmp    %ebp,%r10d
  0x0000000102bc8fe4: jae    0x0000000102bc9292
  0x0000000102bc8fea: movslq %edx,%rsi
  0x0000000102bc8fed: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000102bc8ff2: test   %r11d,%r11d
  0x0000000102bc8ff5: jle    0x0000000102bc91c2  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000102bc8ffb: test   %ecx,%ecx
  0x0000000102bc8ffd: jne    0x0000000102bc92be
  0x0000000102bc9003: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x0000000102bc92be
  0x0000000102bc9008: test   %r10d,%r10d
  0x0000000102bc900b: jbe    0x0000000102bc92be
  0x0000000102bc9011: movslq %r10d,%rcx
  0x0000000102bc9014: movslq %r11d,%r13
  0x0000000102bc9017: mov    %r13,%r10
  0x0000000102bc901a: dec    %r10
  0x0000000102bc901d: cmp    %rcx,%r10
  0x0000000102bc9020: jae    0x0000000102bc92be
  0x0000000102bc9026: cmp    %ebp,%r14d
  0x0000000102bc9029: jae    0x0000000102bc92be
  0x0000000102bc902f: movslq %ebp,%r10
  0x0000000102bc9032: movslq %r14d,%rcx
  0x0000000102bc9035: add    %r13,%rcx
  0x0000000102bc9038: dec    %rcx
  0x0000000102bc903b: cmp    %r10,%rcx
  0x0000000102bc903e: jae    0x0000000102bc92be
  0x0000000102bc9044: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc904a: mov    %ecx,%ebp
  0x0000000102bc904c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9050: mov    %ebp,%r10d
  0x0000000102bc9053: dec    %r10d
  0x0000000102bc9056: cmp    $0x7f,%r10d
  0x0000000102bc905a: jae    0x0000000102bc9306  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc9060: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc9064: mov    %r11d,%r13d
  0x0000000102bc9067: add    $0xfffffffd,%r13d
  0x0000000102bc906b: lea    (%r12,%r8,8),%rsi
  0x0000000102bc906f: mov    $0x1,%ecx
  0x0000000102bc9074: mov    $0x80000000,%r8d
  0x0000000102bc907a: cmp    %r13d,%r11d
  0x0000000102bc907d: cmovl  %r8d,%r13d
  0x0000000102bc9081: cmp    $0x1,%r13d
  0x0000000102bc9085: jle    0x0000000102bc92e2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000102bc908b: jmp    0x0000000102bc909c
  0x0000000102bc908d: vmovq  %xmm0,%r9
  0x0000000102bc9092: vmovq  %xmm1,%rdi
  0x0000000102bc9097: vmovd  %xmm3,%r11d
  0x0000000102bc909c: mov    %r13d,%r10d
  0x0000000102bc909f: sub    %ecx,%r10d
  0x0000000102bc90a2: mov    $0xfa0,%r14d
  0x0000000102bc90a8: cmp    %r14d,%r10d
  0x0000000102bc90ab: cmovg  %r14d,%r10d
  0x0000000102bc90af: add    %ecx,%r10d
  0x0000000102bc90b2: vmovq  %r9,%xmm0
  0x0000000102bc90b7: vmovq  %rdi,%xmm1
  0x0000000102bc90bc: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc90c1: mov    %ecx,%r14d
  0x0000000102bc90c4: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000102bc90c7: movslq %ecx,%r9
  0x0000000102bc90ca: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc90d0: mov    %r8d,%ebp
  0x0000000102bc90d3: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc90d7: mov    %ebp,%r11d
  0x0000000102bc90da: dec    %r11d
  0x0000000102bc90dd: cmp    $0x7f,%r11d
  0x0000000102bc90e1: jae    0x0000000102bc9212  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc90e7: movslq %r14d,%rdi
  0x0000000102bc90ea: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc90ef: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc90f5: mov    %r11d,%ebp
  0x0000000102bc90f8: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc90fc: mov    %ebp,%r8d
  0x0000000102bc90ff: dec    %r8d
  0x0000000102bc9102: cmp    $0x7f,%r8d
  0x0000000102bc9106: jae    0x0000000102bc9218  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc910c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc9111: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9117: mov    %r8d,%ebp
  0x0000000102bc911a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc911e: mov    %ebp,%r11d
  0x0000000102bc9121: dec    %r11d
  0x0000000102bc9124: cmp    $0x7f,%r11d
  0x0000000102bc9128: jae    0x0000000102bc9220  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc912e: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc9133: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9139: mov    %r8d,%ebp
  0x0000000102bc913c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9140: mov    %ebp,%r11d
  0x0000000102bc9143: dec    %r11d
  0x0000000102bc9146: cmp    $0x7f,%r11d
  0x0000000102bc914a: jae    0x0000000102bc9229  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc9150: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc9155: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000102bc9158: cmp    %r10d,%ecx
  0x0000000102bc915b: jl     0x0000000102bc90c1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000102bc9161: mov    0x108(%r15),%r9
  0x0000000102bc9168: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000102bc916c: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x0000000102bc916f: cmp    %r13d,%ecx
  0x0000000102bc9172: jl     0x0000000102bc908d
  0x0000000102bc9178: vmovq  %xmm0,%r9
  0x0000000102bc917d: vmovq  %xmm1,%rdi
  0x0000000102bc9182: vmovd  %xmm3,%r11d
  0x0000000102bc9187: cmp    %r11d,%ecx
  0x0000000102bc918a: jge    0x0000000102bc91c2  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc918c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9192: mov    %ecx,%r14d
  0x0000000102bc9195: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000102bc9198: mov    %r8d,%ebp
  0x0000000102bc919b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc919f: mov    %ebp,%r10d
  0x0000000102bc91a2: dec    %r10d
  0x0000000102bc91a5: cmp    $0x7f,%r10d
  0x0000000102bc91a9: jae    0x0000000102bc930d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000102bc91af: movslq %r14d,%r10
  0x0000000102bc91b2: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000102bc91b7: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000102bc91b9: cmp    %r11d,%ecx
  0x0000000102bc91bc: jl     0x0000000102bc918c
  0x0000000102bc91be: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000102bc91c2: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x0000000102bc91c6: mov    %rdi,%rax
  0x0000000102bc91c9: add    $0x40,%rsp
  0x0000000102bc91cd: pop    %rbp
  0x0000000102bc91ce: mov    0x108(%r15),%r10
  0x0000000102bc91d5: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bc91d8: retq   
  0x0000000102bc91d9: mov    %edx,0xc(%rsp)
  0x0000000102bc91dd: mov    %rsi,(%rsp)
  0x0000000102bc91e1: mov    %r9,%rbp
  0x0000000102bc91e4: mov    %r11d,%edx
  0x0000000102bc91e7: mov    %r11d,0x8(%rsp)
  0x0000000102bc91ec: add    $0x2,%edx
  0x0000000102bc91ef: callq  0x0000000102b79f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x0000000102bc91f4: mov    %rbp,%r9
  0x0000000102bc91f7: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc91fb: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000102bc9200: mov    (%rsp),%rdi
  0x0000000102bc9204: mov    0x8(%rsp),%r11d
  0x0000000102bc9209: mov    0xc(%rsp),%edx
  0x0000000102bc920d: jmpq   0x0000000102bc8fb1
  0x0000000102bc9212: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc9216: jmp    0x0000000102bc9230
  0x0000000102bc9218: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000102bc921a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc921e: jmp    0x0000000102bc9230
  0x0000000102bc9220: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000102bc9223: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc9227: jmp    0x0000000102bc9230
  0x0000000102bc9229: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000102bc922c: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc9230: vmovq  %xmm0,%r9
  0x0000000102bc9235: vmovq  %xmm1,%rdi
  0x0000000102bc923a: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x0000000102bc923f: mov    $0xffffff45,%esi
  0x0000000102bc9244: mov    %r14d,(%rsp)
  0x0000000102bc9248: mov    %ecx,0x4(%rsp)
  0x0000000102bc924c: mov    %rdi,0x10(%rsp)
  0x0000000102bc9251: mov    %r9,0x18(%rsp)
  0x0000000102bc9256: mov    %r11d,0xc(%rsp)
  0x0000000102bc925b: mov    %ebx,0x20(%rsp)
  0x0000000102bc925f: callq  0x0000000102b7b900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc9264: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x0000000102bc9266: mov    $0xffffffe4,%esi
  0x0000000102bc926b: mov    %edx,%ebp
  0x0000000102bc926d: mov    %rdi,(%rsp)
  0x0000000102bc9271: mov    %r9,0x8(%rsp)
  0x0000000102bc9276: mov    %r11d,0x10(%rsp)
  0x0000000102bc927b: mov    %r10d,0x14(%rsp)
  0x0000000102bc9280: mov    %ebx,0x1c(%rsp)
  0x0000000102bc9284: mov    %eax,0x20(%rsp)
  0x0000000102bc9288: data16 xchg %ax,%ax
  0x0000000102bc928b: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc9290: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000102bc9292: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x0000000102bc9296: mov    $0xffffffe4,%esi
  0x0000000102bc929b: mov    %r14d,(%rsp)
  0x0000000102bc929f: mov    %rdi,0x8(%rsp)
  0x0000000102bc92a4: mov    %r9,0x10(%rsp)
  0x0000000102bc92a9: mov    %r11d,0x4(%rsp)
  0x0000000102bc92ae: mov    %ebx,0x1c(%rsp)
  0x0000000102bc92b2: mov    %r10d,0x20(%rsp)
  0x0000000102bc92b7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc92bc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000102bc92be: mov    $0xffffff7e,%esi
  0x0000000102bc92c3: mov    %r14d,%ebp
  0x0000000102bc92c6: mov    %rdi,(%rsp)
  0x0000000102bc92ca: mov    %r9,0x8(%rsp)
  0x0000000102bc92cf: mov    %ebx,0x14(%rsp)
  0x0000000102bc92d3: mov    %r11d,0x18(%rsp)
  0x0000000102bc92d8: data16 xchg %ax,%ax
  0x0000000102bc92db: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc92e0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000102bc92e2: mov    %edx,%r14d
  0x0000000102bc92e5: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x0000000102bc92e9: jmpq   0x0000000102bc9187
  0x0000000102bc92ee: mov    $0xffffff4d,%esi
  0x0000000102bc92f3: mov    %r10,%rbp
  0x0000000102bc92f6: mov    %rdx,(%rsp)
  0x0000000102bc92fa: mov    %r11d,0xc(%rsp)
  0x0000000102bc92ff: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc9304: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000102bc9306: xor    %ecx,%ecx
  0x0000000102bc9308: jmpq   0x0000000102bc923f
  0x0000000102bc930d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000102bc9311: jmpq   0x0000000102bc923f  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x0000000102bc9316: mov    %rax,%rsi
  0x0000000102bc9319: add    $0x40,%rsp
  0x0000000102bc931d: pop    %rbp
  0x0000000102bc931e: jmpq   0x0000000102bb2c00  ;   {runtime_call _rethrow_Java}
  0x0000000102bc9323: mov    $0xfffffff6,%esi
  0x0000000102bc9328: data16 xchg %ax,%ax
  0x0000000102bc932b: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc9330: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000102bc9332: mov    $0xfffffff6,%esi
  0x0000000102bc9337: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc933c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000102bc933e: mov    $0xfffffff6,%esi
  0x0000000102bc9343: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc9348: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x0000000102bc934a: mov    $0xfffffff6,%esi
  0x0000000102bc934f: mov    %edx,%ebp
  0x0000000102bc9351: mov    %eax,(%rsp)
  0x0000000102bc9354: data16 xchg %ax,%ax
  0x0000000102bc9357: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bc935c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x0000000102bc935e: hlt    
  0x0000000102bc935f: hlt    
[Stub Code]
  0x0000000102bc9360: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000102bc936a: jmpq   0x0000000102bc936a  ;   {runtime_call}
[Exception Handler]
  0x0000000102bc936f: jmpq   0x0000000102bb0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000102bc9374: callq  0x0000000102bc9379
  0x0000000102bc9379: subq   $0x5,(%rsp)
  0x0000000102bc937e: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bc9383: hlt    
  0x0000000102bc9384: hlt    
  0x0000000102bc9385: hlt    
  0x0000000102bc9386: hlt    
  0x0000000102bc9387: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x0000000102bc5da0, 0x0000000102bc5dd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b2210} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc5da0: mov    0x14(%rsi),%ebx
  0x0000000102bc5da3: shl    $0x3,%rbx
  0x0000000102bc5da7: mov    0x28(%rbx),%ebx
  0x0000000102bc5daa: shl    $0x3,%rbx
  0x0000000102bc5dae: mov    0x24(%rbx),%ebx
  0x0000000102bc5db1: shl    $0x3,%rbx
  0x0000000102bc5db5: mov    0x10(%rbx),%rbx
  0x0000000102bc5db9: test   %rbx,%rbx
  0x0000000102bc5dbc: je     0x0000000102bc5dc5
  0x0000000102bc5dc2: jmpq   *0x38(%rbx)
  0x0000000102bc5dc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc5dca: hlt    
  0x0000000102bc5dcb: hlt    
  0x0000000102bc5dcc: hlt    
  0x0000000102bc5dcd: hlt    
  0x0000000102bc5dce: hlt    
  0x0000000102bc5dcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc58a0, 0x0000000102bc58c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b47c0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc58a0: mov    0x48(%rsp),%rbx
  0x0000000102bc58a5: mov    0x24(%rbx),%ebx
  0x0000000102bc58a8: shl    $0x3,%rbx
  0x0000000102bc58ac: mov    0x10(%rbx),%rbx
  0x0000000102bc58b0: test   %rbx,%rbx
  0x0000000102bc58b3: je     0x0000000102bc58bc
  0x0000000102bc58b9: jmpq   *0x38(%rbx)
  0x0000000102bc58bc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc58c1: hlt    
  0x0000000102bc58c2: hlt    
  0x0000000102bc58c3: hlt    
  0x0000000102bc58c4: hlt    
  0x0000000102bc58c5: hlt    
  0x0000000102bc58c6: hlt    
  0x0000000102bc58c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000102bc56a0, 0x0000000102bc56d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b4dc8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc56a0: mov    0x14(%rsi),%ebx
  0x0000000102bc56a3: shl    $0x3,%rbx
  0x0000000102bc56a7: mov    0x28(%rbx),%ebx
  0x0000000102bc56aa: shl    $0x3,%rbx
  0x0000000102bc56ae: mov    0x24(%rbx),%ebx
  0x0000000102bc56b1: shl    $0x3,%rbx
  0x0000000102bc56b5: mov    0x10(%rbx),%rbx
  0x0000000102bc56b9: test   %rbx,%rbx
  0x0000000102bc56bc: je     0x0000000102bc56c5
  0x0000000102bc56c2: jmpq   *0x38(%rbx)
  0x0000000102bc56c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc56ca: hlt    
  0x0000000102bc56cb: hlt    
  0x0000000102bc56cc: hlt    
  0x0000000102bc56cd: hlt    
  0x0000000102bc56ce: hlt    
  0x0000000102bc56cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc51a0, 0x0000000102bc51c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b6218} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc51a0: mov    0x50(%rsp),%rbx
  0x0000000102bc51a5: mov    0x24(%rbx),%ebx
  0x0000000102bc51a8: shl    $0x3,%rbx
  0x0000000102bc51ac: mov    0x10(%rbx),%rbx
  0x0000000102bc51b0: test   %rbx,%rbx
  0x0000000102bc51b3: je     0x0000000102bc51bc
  0x0000000102bc51b9: jmpq   *0x38(%rbx)
  0x0000000102bc51bc: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc51c1: hlt    
  0x0000000102bc51c2: hlt    
  0x0000000102bc51c3: hlt    
  0x0000000102bc51c4: hlt    
  0x0000000102bc51c5: hlt    
  0x0000000102bc51c6: hlt    
  0x0000000102bc51c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x0000000102bc4fa0, 0x0000000102bc4fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b64e8} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc4fa0: mov    0x14(%rsi),%ebx
  0x0000000102bc4fa3: shl    $0x3,%rbx
  0x0000000102bc4fa7: mov    0x28(%rbx),%ebx
  0x0000000102bc4faa: shl    $0x3,%rbx
  0x0000000102bc4fae: mov    0x24(%rbx),%ebx
  0x0000000102bc4fb1: shl    $0x3,%rbx
  0x0000000102bc4fb5: mov    0x10(%rbx),%rbx
  0x0000000102bc4fb9: test   %rbx,%rbx
  0x0000000102bc4fbc: je     0x0000000102bc4fc5
  0x0000000102bc4fc2: jmpq   *0x38(%rbx)
  0x0000000102bc4fc5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc4fca: hlt    
  0x0000000102bc4fcb: hlt    
  0x0000000102bc4fcc: hlt    
  0x0000000102bc4fcd: hlt    
  0x0000000102bc4fce: hlt    
  0x0000000102bc4fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc4ba0, 0x0000000102bc4bc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b6600} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc4ba0: cmp    (%rsi),%rax
  0x0000000102bc4ba3: mov    0x24(%rdx),%ebx
  0x0000000102bc4ba6: shl    $0x3,%rbx
  0x0000000102bc4baa: mov    0x10(%rbx),%rbx
  0x0000000102bc4bae: test   %rbx,%rbx
  0x0000000102bc4bb1: je     0x0000000102bc4bba
  0x0000000102bc4bb7: jmpq   *0x38(%rbx)
  0x0000000102bc4bba: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc4bbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x0000000102bc49a0, 0x0000000102bc49d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b67b8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000102bc49a0: mov    0x14(%rsi),%ebx
  0x0000000102bc49a3: shl    $0x3,%rbx
  0x0000000102bc49a7: mov    0x28(%rbx),%ebx
  0x0000000102bc49aa: shl    $0x3,%rbx
  0x0000000102bc49ae: mov    0x24(%rbx),%ebx
  0x0000000102bc49b1: shl    $0x3,%rbx
  0x0000000102bc49b5: mov    0x10(%rbx),%rbx
  0x0000000102bc49b9: test   %rbx,%rbx
  0x0000000102bc49bc: je     0x0000000102bc49c5
  0x0000000102bc49c2: jmpq   *0x38(%rbx)
  0x0000000102bc49c5: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc49ca: hlt    
  0x0000000102bc49cb: hlt    
  0x0000000102bc49cc: hlt    
  0x0000000102bc49cd: hlt    
  0x0000000102bc49ce: hlt    
  0x0000000102bc49cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x0000000102bc4520, 0x0000000102bc4550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b73a0} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc4520: mov    0x14(%rsi),%ebx
  0x0000000102bc4523: shl    $0x3,%rbx
  0x0000000102bc4527: mov    0x28(%rbx),%ebx
  0x0000000102bc452a: shl    $0x3,%rbx
  0x0000000102bc452e: mov    0x24(%rbx),%ebx
  0x0000000102bc4531: shl    $0x3,%rbx
  0x0000000102bc4535: mov    0x10(%rbx),%rbx
  0x0000000102bc4539: test   %rbx,%rbx
  0x0000000102bc453c: je     0x0000000102bc4545
  0x0000000102bc4542: jmpq   *0x38(%rbx)
  0x0000000102bc4545: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc454a: hlt    
  0x0000000102bc454b: hlt    
  0x0000000102bc454c: hlt    
  0x0000000102bc454d: hlt    
  0x0000000102bc454e: hlt    
  0x0000000102bc454f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000102bc8aa0, 0x0000000102bc8ac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011a0b74b8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000102bc8aa0: cmp    (%rsi),%rax
  0x0000000102bc8aa3: mov    0x24(%rcx),%ebx
  0x0000000102bc8aa6: shl    $0x3,%rbx
  0x0000000102bc8aaa: mov    0x10(%rbx),%rbx
  0x0000000102bc8aae: test   %rbx,%rbx
  0x0000000102bc8ab1: je     0x0000000102bc8aba
  0x0000000102bc8ab7: jmpq   *0x38(%rbx)
  0x0000000102bc8aba: jmpq   0x0000000102b93880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000102bc8abf: hlt    
Time elapsed: 2.211 ms result=100
Warmup phase
Compiled method (c2)     226   62             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x0000000102bcd390,0x0000000102bcd5d8] = 584
 relocation     [0x0000000102bcd508,0x0000000102bcd518] = 16
 main code      [0x0000000102bcd520,0x0000000102bcd560] = 64
 stub code      [0x0000000102bcd560,0x0000000102bcd578] = 24
 metadata       [0x0000000102bcd578,0x0000000102bcd580] = 8
 scopes data    [0x0000000102bcd580,0x0000000102bcd590] = 16
 scopes pcs     [0x0000000102bcd590,0x0000000102bcd5d0] = 64
 dependencies   [0x0000000102bcd5d0,0x0000000102bcd5d8] = 8
----------------------------------------------------------------------
java/lang/Integer.intValue()I  [0x0000000102bcd520, 0x0000000102bcd578]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119d98e20} 'intValue' '()I' in 'java/lang/Integer'
  #           [sp+0x20]  (sp of caller)
  0x0000000102bcd520: mov    0x8(%rsi),%r10d
  0x0000000102bcd524: movabs $0x800000000,%r12
  0x0000000102bcd52e: add    %r12,%r10
  0x0000000102bcd531: xor    %r12,%r12
  0x0000000102bcd534: cmp    %r10,%rax
  0x0000000102bcd537: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bcd53d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bcd540: sub    $0x18,%rsp
  0x0000000102bcd547: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::intValue@-1 (line 1123)

  0x0000000102bcd54c: mov    0xc(%rsi),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)

  0x0000000102bcd54f: add    $0x10,%rsp
  0x0000000102bcd553: pop    %rbp
  0x0000000102bcd554: mov    0x108(%r15),%r10
  0x0000000102bcd55b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bcd55e: retq   
  0x0000000102bcd55f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bcd560: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bcd565: callq  0x0000000102bcd56a
  0x0000000102bcd56a: subq   $0x5,(%rsp)
  0x0000000102bcd56f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bcd574: hlt    
  0x0000000102bcd575: hlt    
  0x0000000102bcd576: hlt    
  0x0000000102bcd577: hlt    
Compiled method (c2)     230   63             java.util.HashMap::hash (20 bytes)
 total in heap  [0x0000000102bcb510,0x0000000102bcbd00] = 2032
 relocation     [0x0000000102bcb688,0x0000000102bcb6a8] = 32
 main code      [0x0000000102bcb6c0,0x0000000102bcb900] = 576
 stub code      [0x0000000102bcb900,0x0000000102bcb918] = 24
 metadata       [0x0000000102bcb918,0x0000000102bcb948] = 48
 scopes data    [0x0000000102bcb948,0x0000000102bcba60] = 280
 scopes pcs     [0x0000000102bcba60,0x0000000102bcbce0] = 640
 dependencies   [0x0000000102bcbce0,0x0000000102bcbce8] = 8
 nul chk table  [0x0000000102bcbce8,0x0000000102bcbd00] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x0000000102bcb6c0, 0x0000000102bcb918]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000119dc6940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000102bcb6c0: mov    %eax,-0x14000(%rsp)
  0x0000000102bcb6c7: push   %rbp
  0x0000000102bcb6c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x0000000102bcb6cc: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000102bcb8d6
  0x0000000102bcb6d0: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000102bcb6d7: jne    0x0000000102bcb6f6  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb6d9: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x0000000102bcb6dd: mov    %r11d,%eax
  0x0000000102bcb6e0: shr    $0x10,%eax
  0x0000000102bcb6e3: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x0000000102bcb6e6: add    $0x20,%rsp
  0x0000000102bcb6ea: pop    %rbp
  0x0000000102bcb6eb: mov    0x108(%r15),%r10
  0x0000000102bcb6f2: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bcb6f5: retq   
  0x0000000102bcb6f6: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x0000000102bcb6fd: jne    0x0000000102bcb898  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb703: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb707: test   %r11d,%r11d
  0x0000000102bcb70a: jne    0x0000000102bcb6dd  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb70c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb70f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x0000000102bcb8e6
  0x0000000102bcb714: test   %ecx,%ecx
  0x0000000102bcb716: jbe    0x0000000102bcb890  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb71c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb720: test   %ebp,%ebp
  0x0000000102bcb722: jne    0x0000000102bcb8c2  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb728: mov    %ecx,%r11d
  0x0000000102bcb72b: dec    %r11d
  0x0000000102bcb72e: cmp    %ecx,%r11d
  0x0000000102bcb731: jae    0x0000000102bcb8aa
  0x0000000102bcb737: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb73d: mov    %ecx,%r13d
  0x0000000102bcb740: add    $0xfffffff9,%r13d
  0x0000000102bcb744: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb748: mov    $0x80000000,%r9d
  0x0000000102bcb74e: cmp    %r13d,%r11d
  0x0000000102bcb751: cmovl  %r9d,%r13d
  0x0000000102bcb755: mov    $0x1,%r9d
  0x0000000102bcb75b: cmp    $0x1,%r13d
  0x0000000102bcb75f: jle    0x0000000102bcb85d
  0x0000000102bcb765: mov    %r8d,%ebx
  0x0000000102bcb768: shl    $0x5,%ebx
  0x0000000102bcb76b: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb76e: jmp    0x0000000102bcb774
  0x0000000102bcb770: vmovd  %xmm0,%ecx
  0x0000000102bcb774: mov    %r13d,%r14d
  0x0000000102bcb777: sub    %r9d,%r14d
  0x0000000102bcb77a: mov    $0x1f40,%r10d
  0x0000000102bcb780: cmp    %r10d,%r14d
  0x0000000102bcb783: mov    $0x1f40,%r11d
  0x0000000102bcb789: cmovg  %r11d,%r14d
  0x0000000102bcb78d: add    %r9d,%r14d
  0x0000000102bcb790: vmovd  %ecx,%xmm0
  0x0000000102bcb794: nopl   0x0(%rax,%rax,1)
  0x0000000102bcb79c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb7a0: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb7a3: movzbl 0x10(%rax,%r11,1),%r10d
  0x0000000102bcb7a9: movzbl 0x17(%rax,%r11,1),%ecx
  0x0000000102bcb7af: movzbl 0x11(%rax,%r11,1),%edx
  0x0000000102bcb7b5: movzbl 0x16(%rax,%r11,1),%edi
  0x0000000102bcb7bb: movzbl 0x15(%rax,%r11,1),%ebp
  0x0000000102bcb7c1: add    %r10d,%ebx
  0x0000000102bcb7c4: movzbl 0x13(%rax,%r11,1),%r10d
  0x0000000102bcb7ca: mov    %ebx,%r8d
  0x0000000102bcb7cd: shl    $0x5,%r8d
  0x0000000102bcb7d1: sub    %ebx,%r8d
  0x0000000102bcb7d4: add    %edx,%r8d
  0x0000000102bcb7d7: movzbl 0x12(%rax,%r11,1),%ebx
  0x0000000102bcb7dd: movzbl 0x14(%rax,%r11,1),%edx
  0x0000000102bcb7e3: mov    %r8d,%r11d
  0x0000000102bcb7e6: shl    $0x5,%r11d
  0x0000000102bcb7ea: sub    %r8d,%r11d
  0x0000000102bcb7ed: add    %ebx,%r11d
  0x0000000102bcb7f0: mov    %r11d,%ebx
  0x0000000102bcb7f3: shl    $0x5,%ebx
  0x0000000102bcb7f6: sub    %r11d,%ebx
  0x0000000102bcb7f9: add    %r10d,%ebx
  0x0000000102bcb7fc: mov    %ebx,%r11d
  0x0000000102bcb7ff: shl    $0x5,%r11d
  0x0000000102bcb803: sub    %ebx,%r11d
  0x0000000102bcb806: add    %edx,%r11d
  0x0000000102bcb809: mov    %r11d,%r8d
  0x0000000102bcb80c: shl    $0x5,%r8d
  0x0000000102bcb810: sub    %r11d,%r8d
  0x0000000102bcb813: add    %ebp,%r8d
  0x0000000102bcb816: mov    %r8d,%r10d
  0x0000000102bcb819: shl    $0x5,%r10d
  0x0000000102bcb81d: sub    %r8d,%r10d
  0x0000000102bcb820: add    %edi,%r10d
  0x0000000102bcb823: mov    %r10d,%r8d
  0x0000000102bcb826: shl    $0x5,%r8d
  0x0000000102bcb82a: sub    %r10d,%r8d
  0x0000000102bcb82d: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb830: mov    %r8d,%ebx
  0x0000000102bcb833: shl    $0x5,%ebx
  0x0000000102bcb836: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb839: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb83d: cmp    %r14d,%r9d
  0x0000000102bcb840: jl     0x0000000102bcb7a0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb846: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb84d: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x0000000102bcb850: cmp    %r13d,%r9d
  0x0000000102bcb853: jl     0x0000000102bcb770
  0x0000000102bcb859: vmovd  %xmm0,%ecx
  0x0000000102bcb85d: cmp    %ecx,%r9d
  0x0000000102bcb860: jge    0x0000000102bcb88b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb862: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000102bcb868: mov    %r8d,%r11d
  0x0000000102bcb86b: shl    $0x5,%r11d
  0x0000000102bcb86f: sub    %r8d,%r11d
  0x0000000102bcb872: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb875: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb878: cmp    %ecx,%r9d
  0x0000000102bcb87b: jge    0x0000000102bcb882  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb87d: mov    %r11d,%r8d
  0x0000000102bcb880: jmp    0x0000000102bcb862
  0x0000000102bcb882: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb886: jmpq   0x0000000102bcb6dd
  0x0000000102bcb88b: mov    %r8d,%r11d
  0x0000000102bcb88e: jmp    0x0000000102bcb882
  0x0000000102bcb890: xor    %r11d,%r11d
  0x0000000102bcb893: jmpq   0x0000000102bcb6dd
  0x0000000102bcb898: mov    %rsi,%rbp
  0x0000000102bcb89b: mov    $0xffffffc6,%esi
  0x0000000102bcb8a0: data16 xchg %ax,%ax
  0x0000000102bcb8a3: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb8a8: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb8aa: mov    %rsi,%rbp
  0x0000000102bcb8ad: mov    %ebx,(%rsp)
  0x0000000102bcb8b0: mov    %ecx,0x8(%rsp)
  0x0000000102bcb8b4: mov    $0xffffff7e,%esi
  0x0000000102bcb8b9: xchg   %ax,%ax
  0x0000000102bcb8bb: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb8c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb8c2: mov    %rsi,0x8(%rsp)
  0x0000000102bcb8c7: mov    $0xffffff4d,%esi
  0x0000000102bcb8cc: data16 xchg %ax,%ax
  0x0000000102bcb8cf: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb8d4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb8d6: mov    %rsi,(%rsp)
  0x0000000102bcb8da: mov    $0xffffff4d,%esi
  0x0000000102bcb8df: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb8e4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x0000000102bcb8e6: mov    $0xfffffff6,%esi
  0x0000000102bcb8eb: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb8f0: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000102bcb8f2: hlt    
  0x0000000102bcb8f3: hlt    
  0x0000000102bcb8f4: hlt    
  0x0000000102bcb8f5: hlt    
  0x0000000102bcb8f6: hlt    
  0x0000000102bcb8f7: hlt    
  0x0000000102bcb8f8: hlt    
  0x0000000102bcb8f9: hlt    
  0x0000000102bcb8fa: hlt    
  0x0000000102bcb8fb: hlt    
  0x0000000102bcb8fc: hlt    
  0x0000000102bcb8fd: hlt    
  0x0000000102bcb8fe: hlt    
  0x0000000102bcb8ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bcb900: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bcb905: callq  0x0000000102bcb90a
  0x0000000102bcb90a: subq   $0x5,(%rsp)
  0x0000000102bcb90f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bcb914: hlt    
  0x0000000102bcb915: hlt    
  0x0000000102bcb916: hlt    
  0x0000000102bcb917: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     239   64             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x0000000102bcb090,0x0000000102bcb4c0] = 1072
 relocation     [0x0000000102bcb208,0x0000000102bcb228] = 32
 main code      [0x0000000102bcb240,0x0000000102bcb340] = 256
 stub code      [0x0000000102bcb340,0x0000000102bcb358] = 24
 oops           [0x0000000102bcb358,0x0000000102bcb360] = 8
 metadata       [0x0000000102bcb360,0x0000000102bcb370] = 16
 scopes data    [0x0000000102bcb370,0x0000000102bcb3c0] = 80
 scopes pcs     [0x0000000102bcb3c0,0x0000000102bcb4a0] = 224
 dependencies   [0x0000000102bcb4a0,0x0000000102bcb4a8] = 8
 handler table  [0x0000000102bcb4a8,0x0000000102bcb4c0] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x0000000102bcb240, 0x0000000102bcb358]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000119d98a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000102bcb240: mov    %eax,-0x14000(%rsp)
  0x0000000102bcb247: push   %rbp
  0x0000000102bcb248: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000102bcb24c: mov    %esi,(%rsp)
  0x0000000102bcb24f: cmp    $0xffffff80,%esi
  0x0000000102bcb252: jl     0x0000000102bcb2fe  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000102bcb258: cmp    $0x7f,%esi
  0x0000000102bcb25b: jle    0x0000000102bcb2bf  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x0000000102bcb25d: mov    0x118(%r15),%rax
  0x0000000102bcb264: mov    %rax,%r10
  0x0000000102bcb267: add    $0x10,%r10
  0x0000000102bcb26b: cmp    0x128(%r15),%r10
  0x0000000102bcb272: jae    0x0000000102bcb2ea
  0x0000000102bcb274: mov    %r10,0x118(%r15)
  0x0000000102bcb27b: prefetchnta 0xc0(%r10)
  0x0000000102bcb283: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000102bcb289: movabs $0x800000000,%r10
  0x0000000102bcb293: add    %r11,%r10
  0x0000000102bcb296: mov    0xb8(%r10),%r10
  0x0000000102bcb29d: mov    %r10,(%rax)
  0x0000000102bcb2a0: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000102bcb2a7: mov    (%rsp),%r11d
  0x0000000102bcb2ab: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000102bcb2af: add    $0x20,%rsp
  0x0000000102bcb2b3: pop    %rbp
  0x0000000102bcb2b4: mov    0x108(%r15),%r10
  0x0000000102bcb2bb: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bcb2be: retq   
  0x0000000102bcb2bf: mov    %esi,%ebp
  0x0000000102bcb2c1: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x0000000102bcb2c7: cmp    $0x100,%ebp
  0x0000000102bcb2cd: jae    0x0000000102bcb30e
  0x0000000102bcb2cf: movslq %esi,%r10
  0x0000000102bcb2d2: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bcb2dc: mov    0x210(%r11,%r10,4),%r10d
  0x0000000102bcb2e4: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x0000000102bcb2e8: jmp    0x0000000102bcb2af
  0x0000000102bcb2ea: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000102bcb2f4: mov    (%rsp),%ebp
  0x0000000102bcb2f7: callq  0x0000000102bb0380  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000102bcb2fc: jmp    0x0000000102bcb2a7
  0x0000000102bcb2fe: mov    $0xffffff4d,%esi
  0x0000000102bcb303: mov    (%rsp),%ebp
  0x0000000102bcb306: nop
  0x0000000102bcb307: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb30c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000102bcb30e: mov    $0xffffffe4,%esi
  0x0000000102bcb313: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcb318: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x0000000102bcb31a: mov    %rax,%rsi
  0x0000000102bcb31d: add    $0x20,%rsp
  0x0000000102bcb321: pop    %rbp
  0x0000000102bcb322: jmpq   0x0000000102bb2c00  ;   {runtime_call _rethrow_Java}
  0x0000000102bcb327: hlt    
  0x0000000102bcb328: hlt    
  0x0000000102bcb329: hlt    
  0x0000000102bcb32a: hlt    
  0x0000000102bcb32b: hlt    
  0x0000000102bcb32c: hlt    
  0x0000000102bcb32d: hlt    
  0x0000000102bcb32e: hlt    
  0x0000000102bcb32f: hlt    
  0x0000000102bcb330: hlt    
  0x0000000102bcb331: hlt    
  0x0000000102bcb332: hlt    
  0x0000000102bcb333: hlt    
  0x0000000102bcb334: hlt    
  0x0000000102bcb335: hlt    
  0x0000000102bcb336: hlt    
  0x0000000102bcb337: hlt    
  0x0000000102bcb338: hlt    
  0x0000000102bcb339: hlt    
  0x0000000102bcb33a: hlt    
  0x0000000102bcb33b: hlt    
  0x0000000102bcb33c: hlt    
  0x0000000102bcb33d: hlt    
  0x0000000102bcb33e: hlt    
  0x0000000102bcb33f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bcb340: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bcb345: callq  0x0000000102bcb34a
  0x0000000102bcb34a: subq   $0x5,(%rsp)
  0x0000000102bcb34f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bcb354: hlt    
  0x0000000102bcb355: hlt    
  0x0000000102bcb356: hlt    
  0x0000000102bcb357: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     244   65             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x0000000102bca890,0x0000000102bcb010] = 1920
 relocation     [0x0000000102bcaa08,0x0000000102bcaa30] = 40
 main code      [0x0000000102bcaa40,0x0000000102bcac00] = 448
 stub code      [0x0000000102bcac00,0x0000000102bcac18] = 24
 metadata       [0x0000000102bcac18,0x0000000102bcac38] = 32
 scopes data    [0x0000000102bcac38,0x0000000102bcadb0] = 376
 scopes pcs     [0x0000000102bcadb0,0x0000000102bcafe0] = 560
 dependencies   [0x0000000102bcafe0,0x0000000102bcafe8] = 8
 nul chk table  [0x0000000102bcafe8,0x0000000102bcb010] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x0000000102bcaa40, 0x0000000102bcac18]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119dc7540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000102bcaa40: mov    0x8(%rsi),%r10d
  0x0000000102bcaa44: movabs $0x800000000,%r12
  0x0000000102bcaa4e: add    %r12,%r10
  0x0000000102bcaa51: xor    %r12,%r12
  0x0000000102bcaa54: cmp    %r10,%rax
  0x0000000102bcaa57: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bcaa5d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bcaa60: mov    %eax,-0x14000(%rsp)
  0x0000000102bcaa67: push   %rbp
  0x0000000102bcaa68: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x0000000102bcaa6c: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x0000000102bcaa70: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x0000000102bcab9e
  0x0000000102bcaa75: test   %r8d,%r8d
  0x0000000102bcaa78: jbe    0x0000000102bcab0e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000102bcaa7e: shl    $0x3,%r10
  0x0000000102bcaa82: dec    %r8d
  0x0000000102bcaa85: and    %edx,%r8d
  0x0000000102bcaa88: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000102bcaa8d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x0000000102bcabb6
  0x0000000102bcaa92: cmp    %edx,%ebp
  0x0000000102bcaa94: jne    0x0000000102bcab2a  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000102bcaa9a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x0000000102bcaa9f: mov    %r8,%r11
  0x0000000102bcaaa2: shl    $0x3,%r11
  0x0000000102bcaaa6: cmp    %rcx,%r11
  0x0000000102bcaaa9: je     0x0000000102bcaadb  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x0000000102bcaaab: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x0000000102bcabce
  0x0000000102bcaaaf: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bcaab6: jne    0x0000000102bcaaef  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcaab8: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x0000000102bcab86
  0x0000000102bcaabd: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bcaac4: jne    0x0000000102bcab66  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcaaca: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcaace: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcaad2: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcaad6: cmp    %ebp,%r9d
  0x0000000102bcaad9: jne    0x0000000102bcab46  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x0000000102bcaadb: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000102bcaadf: add    $0x30,%rsp
  0x0000000102bcaae3: pop    %rbp
  0x0000000102bcaae4: mov    0x108(%r15),%r10
  0x0000000102bcaaeb: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bcaaee: retq   
  0x0000000102bcaaef: mov    $0xffffffde,%esi
  0x0000000102bcaaf4: mov    %edx,%ebp
  0x0000000102bcaaf6: mov    %rcx,0x8(%rsp)
  0x0000000102bcaafb: mov    %r10d,0x10(%rsp)
  0x0000000102bcab00: mov    %r8d,0x14(%rsp)
  0x0000000102bcab05: xchg   %ax,%ax
  0x0000000102bcab07: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab0c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcab0e: mov    $0xffffff4d,%esi
  0x0000000102bcab13: mov    %edx,%ebp
  0x0000000102bcab15: mov    %rcx,(%rsp)
  0x0000000102bcab19: mov    %r10d,0x8(%rsp)
  0x0000000102bcab1e: mov    %r8d,0x10(%rsp)
  0x0000000102bcab23: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab28: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000102bcab2a: mov    $0xffffff4d,%esi
  0x0000000102bcab2f: mov    %rcx,0x8(%rsp)
  0x0000000102bcab34: mov    %edx,0x4(%rsp)
  0x0000000102bcab38: mov    %r10d,0x10(%rsp)
  0x0000000102bcab3d: xchg   %ax,%ax
  0x0000000102bcab3f: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab44: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000102bcab46: mov    $0xffffff4d,%esi
  0x0000000102bcab4b: mov    %edx,(%rsp)
  0x0000000102bcab4e: mov    %rcx,0x8(%rsp)
  0x0000000102bcab53: mov    %r10d,0x4(%rsp)
  0x0000000102bcab58: mov    %r9d,0x10(%rsp)
  0x0000000102bcab5d: xchg   %ax,%ax
  0x0000000102bcab5f: callq  0x0000000102b7b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab64: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcab66: mov    $0xffffffde,%esi
  0x0000000102bcab6b: mov    %edx,%ebp
  0x0000000102bcab6d: mov    %rcx,0x8(%rsp)
  0x0000000102bcab72: mov    %r10d,0x10(%rsp)
  0x0000000102bcab77: mov    %r8d,0x18(%rsp)
  0x0000000102bcab7c: data16 xchg %ax,%ax
  0x0000000102bcab7f: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab84: ud2    
  0x0000000102bcab86: mov    $0xfffffff4,%esi
  0x0000000102bcab8b: mov    %edx,%ebp
  0x0000000102bcab8d: mov    %rcx,0x8(%rsp)
  0x0000000102bcab92: mov    %r10d,0x10(%rsp)
  0x0000000102bcab97: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcab9c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000102bcab9e: mov    $0xffffff4d,%esi
  0x0000000102bcaba3: mov    %edx,%ebp
  0x0000000102bcaba5: mov    %rcx,(%rsp)
  0x0000000102bcaba9: mov    %r10d,0xc(%rsp)
  0x0000000102bcabae: nop
  0x0000000102bcabaf: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcabb4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x0000000102bcabb6: mov    $0xffffff4d,%esi
  0x0000000102bcabbb: mov    %edx,%ebp
  0x0000000102bcabbd: mov    %rcx,(%rsp)
  0x0000000102bcabc1: mov    %r10d,0xc(%rsp)
  0x0000000102bcabc6: nop
  0x0000000102bcabc7: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcabcc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x0000000102bcabce: mov    $0xffffff4d,%esi
  0x0000000102bcabd3: mov    %edx,%ebp
  0x0000000102bcabd5: mov    %rcx,0x8(%rsp)
  0x0000000102bcabda: mov    %r10d,0x10(%rsp)
  0x0000000102bcabdf: mov    %r8d,0x14(%rsp)
  0x0000000102bcabe4: data16 xchg %ax,%ax
  0x0000000102bcabe7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcabec: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x0000000102bcabee: hlt    
  0x0000000102bcabef: hlt    
  0x0000000102bcabf0: hlt    
  0x0000000102bcabf1: hlt    
  0x0000000102bcabf2: hlt    
  0x0000000102bcabf3: hlt    
  0x0000000102bcabf4: hlt    
  0x0000000102bcabf5: hlt    
  0x0000000102bcabf6: hlt    
  0x0000000102bcabf7: hlt    
  0x0000000102bcabf8: hlt    
  0x0000000102bcabf9: hlt    
  0x0000000102bcabfa: hlt    
  0x0000000102bcabfb: hlt    
  0x0000000102bcabfc: hlt    
  0x0000000102bcabfd: hlt    
  0x0000000102bcabfe: hlt    
  0x0000000102bcabff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bcac00: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bcac05: callq  0x0000000102bcac0a
  0x0000000102bcac0a: subq   $0x5,(%rsp)
  0x0000000102bcac0f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bcac14: hlt    
  0x0000000102bcac15: hlt    
  0x0000000102bcac16: hlt    
  0x0000000102bcac17: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     257   66             java.util.HashMap::get (23 bytes)
 total in heap  [0x0000000102bce190,0x0000000102bcef28] = 3480
 relocation     [0x0000000102bce308,0x0000000102bce340] = 56
 main code      [0x0000000102bce340,0x0000000102bce740] = 1024
 stub code      [0x0000000102bce740,0x0000000102bce758] = 24
 metadata       [0x0000000102bce758,0x0000000102bce7a8] = 80
 scopes data    [0x0000000102bce7a8,0x0000000102bceaa0] = 760
 scopes pcs     [0x0000000102bceaa0,0x0000000102bceef0] = 1104
 dependencies   [0x0000000102bceef0,0x0000000102bceef8] = 8
 nul chk table  [0x0000000102bceef8,0x0000000102bcef28] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000102bce340, 0x0000000102bce758]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000119dc7398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000102bce340: mov    0x8(%rsi),%r10d
  0x0000000102bce344: movabs $0x800000000,%r12
  0x0000000102bce34e: add    %r12,%r10
  0x0000000102bce351: xor    %r12,%r12
  0x0000000102bce354: cmp    %r10,%rax
  0x0000000102bce357: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bce35d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bce360: mov    %eax,-0x14000(%rsp)
  0x0000000102bce367: push   %rbp
  0x0000000102bce368: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000102bce36c: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x0000000102bce6e6
  0x0000000102bce370: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000102bce377: jne    0x0000000102bce41d
  0x0000000102bce37d: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce380: mov    0xc(%r10),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce384: mov    0x24(%rsi),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce388: mov    %r11d,%edi
  0x0000000102bce38b: shr    $0x10,%edi
  0x0000000102bce38e: xor    %r11d,%edi         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce391: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000102bce702
  0x0000000102bce396: test   %r11d,%r11d
  0x0000000102bce399: jbe    0x0000000102bce5f6  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce39f: dec    %r11d
  0x0000000102bce3a2: and    %edi,%r11d
  0x0000000102bce3a5: lea    (%r12,%r8,8),%r10
  0x0000000102bce3a9: mov    0x10(%r10,%r11,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3ae: mov    0xc(%r12,%r10,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000102bce71a
  0x0000000102bce3b3: cmp    %edi,%r11d
  0x0000000102bce3b6: jne    0x0000000102bce612  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3bc: mov    0x10(%r12,%r10,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3c1: mov    %r11,%r8
  0x0000000102bce3c4: shl    $0x3,%r8
  0x0000000102bce3c8: cmp    %rdx,%r8
  0x0000000102bce3cb: je     0x0000000102bce401  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3cd: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000102bce3d4: jne    0x0000000102bce5d6  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3da: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000102bce6ce
  0x0000000102bce3df: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bce3e6: jne    0x0000000102bce6ae  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3ec: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3f0: shl    $0x3,%r11          ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3f4: mov    0xc(%r11),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce3f8: cmp    %r9d,%r8d
  0x0000000102bce3fb: jne    0x0000000102bce632  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000102bce401: mov    0x14(%r12,%r10,8),%r11d
  0x0000000102bce406: mov    %r11,%rax
  0x0000000102bce409: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x0000000102bce40d: add    $0x30,%rsp
  0x0000000102bce411: pop    %rbp
  0x0000000102bce412: mov    0x108(%r15),%r10
  0x0000000102bce419: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bce41c: retq   
  0x0000000102bce41d: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x0000000102bce424: jne    0x0000000102bce656
  0x0000000102bce42a: mov    %rdx,%rcx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce42d: mov    0x10(%rcx),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce431: test   %r11d,%r11d
  0x0000000102bce434: jne    0x0000000102bce384  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce43a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce43e: mov    0xc(%r12,%r9,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x0000000102bce732
  0x0000000102bce443: test   %ebx,%ebx
  0x0000000102bce445: jbe    0x0000000102bce5ce  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce44b: movsbl 0x14(%rcx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce44f: test   %ebp,%ebp
  0x0000000102bce451: jne    0x0000000102bce692  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce457: mov    %ebx,%r11d
  0x0000000102bce45a: dec    %r11d
  0x0000000102bce45d: cmp    %ebx,%r11d
  0x0000000102bce460: jae    0x0000000102bce66e
  0x0000000102bce466: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce46c: mov    %ebx,%r8d
  0x0000000102bce46f: add    $0xfffffff9,%r8d
  0x0000000102bce473: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce477: mov    $0x1,%r9d
  0x0000000102bce47d: cmp    $0x1,%r8d
  0x0000000102bce481: jle    0x0000000102bce5b9
  0x0000000102bce487: mov    %edi,%r10d
  0x0000000102bce48a: shl    $0x5,%r10d
  0x0000000102bce48e: sub    %edi,%r10d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce491: jmp    0x0000000102bce4c4  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce493: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000102bce499: mov    %edi,%r11d
  0x0000000102bce49c: shl    $0x5,%r11d
  0x0000000102bce4a0: sub    %edi,%r11d
  0x0000000102bce4a3: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce4a6: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce4a9: cmp    %ebx,%r9d
  0x0000000102bce4ac: jge    0x0000000102bce5c5  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce4b2: mov    %r11d,%edi
  0x0000000102bce4b5: jmp    0x0000000102bce493
  0x0000000102bce4b7: vmovq  %xmm0,%rcx
  0x0000000102bce4bc: vmovd  %xmm1,%ebx
  0x0000000102bce4c0: mov    (%rsp),%r8d
  0x0000000102bce4c4: mov    %ebx,%r11d
  0x0000000102bce4c7: sub    %r9d,%r11d
  0x0000000102bce4ca: add    $0xfffffff9,%r11d
  0x0000000102bce4ce: mov    $0x1f40,%edi
  0x0000000102bce4d3: cmp    %r11d,%edi
  0x0000000102bce4d6: cmovg  %r11d,%edi
  0x0000000102bce4da: add    %r9d,%edi
  0x0000000102bce4dd: vmovq  %rcx,%xmm0
  0x0000000102bce4e2: vmovd  %ebx,%xmm1
  0x0000000102bce4e6: mov    %r8d,(%rsp)
  0x0000000102bce4ea: mov    %edi,0x4(%rsp)
  0x0000000102bce4ee: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce4f0: movslq %r9d,%r13          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce4f3: movzbl 0x10(%rax,%r13,1),%r11d
  0x0000000102bce4f9: movzbl 0x17(%rax,%r13,1),%ecx
  0x0000000102bce4ff: vmovd  %ecx,%xmm2
  0x0000000102bce503: add    %r11d,%r10d
  0x0000000102bce506: movzbl 0x16(%rax,%r13,1),%edi
  0x0000000102bce50c: mov    %r10d,%ebx
  0x0000000102bce50f: shl    $0x5,%ebx
  0x0000000102bce512: sub    %r10d,%ebx
  0x0000000102bce515: movzbl 0x15(%rax,%r13,1),%r8d
  0x0000000102bce51b: movzbl 0x14(%rax,%r13,1),%r11d
  0x0000000102bce521: movzbl 0x13(%rax,%r13,1),%ecx
  0x0000000102bce527: movzbl 0x12(%rax,%r13,1),%ebp
  0x0000000102bce52d: movzbl 0x11(%rax,%r13,1),%r10d
  0x0000000102bce533: add    %r10d,%ebx
  0x0000000102bce536: mov    %ebx,%r10d
  0x0000000102bce539: shl    $0x5,%r10d
  0x0000000102bce53d: sub    %ebx,%r10d
  0x0000000102bce540: add    %ebp,%r10d
  0x0000000102bce543: mov    %r10d,%ebx
  0x0000000102bce546: shl    $0x5,%ebx
  0x0000000102bce549: sub    %r10d,%ebx
  0x0000000102bce54c: add    %ecx,%ebx
  0x0000000102bce54e: mov    %ebx,%ecx
  0x0000000102bce550: shl    $0x5,%ecx
  0x0000000102bce553: sub    %ebx,%ecx
  0x0000000102bce555: add    %r11d,%ecx
  0x0000000102bce558: mov    %ecx,%r11d
  0x0000000102bce55b: shl    $0x5,%r11d
  0x0000000102bce55f: sub    %ecx,%r11d
  0x0000000102bce562: add    %r8d,%r11d
  0x0000000102bce565: mov    %r11d,%r10d
  0x0000000102bce568: shl    $0x5,%r10d
  0x0000000102bce56c: sub    %r11d,%r10d
  0x0000000102bce56f: add    %edi,%r10d
  0x0000000102bce572: mov    %r10d,%edi
  0x0000000102bce575: shl    $0x5,%edi
  0x0000000102bce578: sub    %r10d,%edi
  0x0000000102bce57b: vmovd  %xmm2,%r11d
  0x0000000102bce580: add    %r11d,%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce583: mov    %edi,%r10d
  0x0000000102bce586: shl    $0x5,%r10d
  0x0000000102bce58a: sub    %edi,%r10d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce58d: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce591: cmp    0x4(%rsp),%r9d
  0x0000000102bce596: jl     0x0000000102bce4f0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce59c: mov    0x108(%r15),%r11   ; ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce5a3: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x0000000102bce5a6: cmp    (%rsp),%r9d
  0x0000000102bce5aa: jl     0x0000000102bce4b7
  0x0000000102bce5b0: vmovq  %xmm0,%rcx
  0x0000000102bce5b5: vmovd  %xmm1,%ebx
  0x0000000102bce5b9: cmp    %ebx,%r9d
  0x0000000102bce5bc: jl     0x0000000102bce493
  0x0000000102bce5c2: mov    %edi,%r11d
  0x0000000102bce5c5: mov    %r11d,0x10(%rcx)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce5c9: jmpq   0x0000000102bce384
  0x0000000102bce5ce: xor    %r11d,%r11d
  0x0000000102bce5d1: jmpq   0x0000000102bce384
  0x0000000102bce5d6: mov    $0xffffffde,%esi
  0x0000000102bce5db: mov    %edi,%ebp
  0x0000000102bce5dd: mov    %r10d,0x8(%rsp)
  0x0000000102bce5e2: mov    %rdx,0x10(%rsp)
  0x0000000102bce5e7: mov    %r11d,0xc(%rsp)
  0x0000000102bce5ec: data16 xchg %ax,%ax
  0x0000000102bce5ef: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce5f4: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce5f6: mov    $0xffffff4d,%esi
  0x0000000102bce5fb: mov    %edi,%ebp
  0x0000000102bce5fd: mov    %rdx,(%rsp)
  0x0000000102bce601: mov    %r8d,0x8(%rsp)
  0x0000000102bce606: mov    %r11d,0x10(%rsp)
  0x0000000102bce60b: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce610: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce612: mov    $0xffffff4d,%esi
  0x0000000102bce617: mov    %rdx,(%rsp)
  0x0000000102bce61b: mov    %r10d,0x8(%rsp)
  0x0000000102bce620: mov    %r11d,0xc(%rsp)
  0x0000000102bce625: mov    %edi,0x10(%rsp)
  0x0000000102bce629: xchg   %ax,%ax
  0x0000000102bce62b: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce630: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce632: mov    $0xffffff4d,%esi
  0x0000000102bce637: mov    %edi,%ebp
  0x0000000102bce639: mov    %rdx,(%rsp)
  0x0000000102bce63d: mov    %r10d,0x8(%rsp)
  0x0000000102bce642: mov    %r8d,0xc(%rsp)
  0x0000000102bce647: mov    %r9d,0x10(%rsp)
  0x0000000102bce64c: data16 xchg %ax,%ax
  0x0000000102bce64f: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce654: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce656: mov    %rsi,(%rsp)
  0x0000000102bce65a: mov    %rdx,0x8(%rsp)
  0x0000000102bce65f: mov    $0xffffffc6,%esi
  0x0000000102bce664: data16 xchg %ax,%ax
  0x0000000102bce667: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce66c: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce66e: mov    %rdx,%rbp
  0x0000000102bce671: mov    %rsi,(%rsp)
  0x0000000102bce675: mov    %rcx,0x8(%rsp)
  0x0000000102bce67a: mov    %r9d,0x10(%rsp)
  0x0000000102bce67f: mov    %ebx,0x18(%rsp)
  0x0000000102bce683: mov    $0xffffff7e,%esi
  0x0000000102bce688: data16 xchg %ax,%ax
  0x0000000102bce68b: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce690: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce692: mov    %rdx,(%rsp)
  0x0000000102bce696: mov    %rsi,0x8(%rsp)
  0x0000000102bce69b: mov    %rcx,0x18(%rsp)
  0x0000000102bce6a0: mov    $0xffffff4d,%esi
  0x0000000102bce6a5: xchg   %ax,%ax
  0x0000000102bce6a7: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce6ac: ud2    
  0x0000000102bce6ae: mov    $0xffffffde,%esi
  0x0000000102bce6b3: mov    %edi,%ebp
  0x0000000102bce6b5: mov    %r10d,0x8(%rsp)
  0x0000000102bce6ba: mov    %rdx,0x10(%rsp)
  0x0000000102bce6bf: mov    %r11d,0x18(%rsp)
  0x0000000102bce6c4: data16 xchg %ax,%ax
  0x0000000102bce6c7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce6cc: ud2    
  0x0000000102bce6ce: mov    $0xfffffff4,%esi
  0x0000000102bce6d3: mov    %edi,%ebp
  0x0000000102bce6d5: mov    %r10d,0x8(%rsp)
  0x0000000102bce6da: mov    %rdx,0x10(%rsp)
  0x0000000102bce6df: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce6e4: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce6e6: mov    %rsi,(%rsp)
  0x0000000102bce6ea: mov    %rdx,0x8(%rsp)
  0x0000000102bce6ef: mov    %rdx,0x10(%rsp)
  0x0000000102bce6f4: mov    $0xffffff4d,%esi
  0x0000000102bce6f9: xchg   %ax,%ax
  0x0000000102bce6fb: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce700: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce702: mov    $0xffffff4d,%esi
  0x0000000102bce707: mov    %edi,%ebp
  0x0000000102bce709: mov    %rdx,(%rsp)
  0x0000000102bce70d: mov    %r8d,0xc(%rsp)
  0x0000000102bce712: nop
  0x0000000102bce713: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce718: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce71a: mov    $0xffffff4d,%esi
  0x0000000102bce71f: mov    %edi,%ebp
  0x0000000102bce721: mov    %rdx,(%rsp)
  0x0000000102bce725: mov    %r10d,0xc(%rsp)
  0x0000000102bce72a: nop
  0x0000000102bce72b: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce730: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000102bce732: mov    $0xfffffff6,%esi
  0x0000000102bce737: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bce73c: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000102bce73e: hlt    
  0x0000000102bce73f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bce740: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bce745: callq  0x0000000102bce74a
  0x0000000102bce74a: subq   $0x5,(%rsp)
  0x0000000102bce74f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bce754: hlt    
  0x0000000102bce755: hlt    
  0x0000000102bce756: hlt    
  0x0000000102bce757: hlt    

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
ImmutableOopMap{}pc offsets: 1020 Compiled method (c2)     272   67             ProceduralHashMap::max100 (42 bytes)
 total in heap  [0x0000000102bd0b10,0x0000000102bd16d0] = 3008
 relocation     [0x0000000102bd0c88,0x0000000102bd0cd0] = 72
 main code      [0x0000000102bd0ce0,0x0000000102bd1020] = 832
 stub code      [0x0000000102bd1020,0x0000000102bd1038] = 24
 oops           [0x0000000102bd1038,0x0000000102bd1048] = 16
 metadata       [0x0000000102bd1048,0x0000000102bd1098] = 80
 scopes data    [0x0000000102bd1098,0x0000000102bd1310] = 632
 scopes pcs     [0x0000000102bd1310,0x0000000102bd1680] = 880
 dependencies   [0x0000000102bd1680,0x0000000102bd1688] = 8
 handler table  [0x0000000102bd1688,0x0000000102bd16a0] = 24
 nul chk table  [0x0000000102bd16a0,0x0000000102bd16d0] = 48
----------------------------------------------------------------------
ProceduralHashMap.max100(I)I  [0x0000000102bd0ce0, 0x0000000102bd1038]  856 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011a09f860} 'max100' '(I)I' in 'ProceduralHashMap'
  # this:     rsi:rsi   = 'ProceduralHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000102bd0ce0: mov    0x8(%rsi),%r10d
  0x0000000102bd0ce4: movabs $0x800000000,%r12
  0x0000000102bd0cee: add    %r12,%r10
  0x0000000102bd0cf1: xor    %r12,%r12
  0x0000000102bd0cf4: cmp    %r10,%rax
  0x0000000102bd0cf7: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bd0cfd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bd0d00: mov    %eax,-0x14000(%rsp)
  0x0000000102bd0d07: push   %rbp
  0x0000000102bd0d08: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::max100@-1 (line 48)

  0x0000000102bd0d0c: mov    %edx,0x4(%rsp)
  0x0000000102bd0d10: movabs $0x70fe0f280,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f280} = 'ProceduralHashMap')}
  0x0000000102bd0d1a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)

  0x0000000102bd0d1e: mov    %r11d,0x8(%rsp)
  0x0000000102bd0d23: cmp    $0xffffff80,%edx
  0x0000000102bd0d26: jl     0x0000000102bd0eae  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0d2c: cmp    $0x7f,%edx
  0x0000000102bd0d2f: jle    0x0000000102bd0e48  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0d35: mov    0x118(%r15),%r8
  0x0000000102bd0d3c: mov    %r8,%r10
  0x0000000102bd0d3f: add    $0x10,%r10
  0x0000000102bd0d43: cmp    0x128(%r15),%r10
  0x0000000102bd0d4a: jae    0x0000000102bd0e7a
  0x0000000102bd0d50: mov    %r10,0x118(%r15)
  0x0000000102bd0d57: prefetchnta 0xc0(%r10)
  0x0000000102bd0d5f: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000102bd0d65: movabs $0x800000000,%r12
  0x0000000102bd0d6f: add    %r12,%r10
  0x0000000102bd0d72: xor    %r12,%r12
  0x0000000102bd0d75: mov    0xb8(%r10),%r10
  0x0000000102bd0d7c: mov    %r10,(%r8)
  0x0000000102bd0d7f: movl   $0x13c78,0x8(%r8)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000102bd0d87: mov    0x4(%rsp),%r10d
  0x0000000102bd0d8c: mov    %r10d,0xc(%r8)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0d90: mov    0x8(%rsp),%r11d
  0x0000000102bd0d95: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x0000000102bd0f92
  0x0000000102bd0d9a: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x0000000102bd0da1: jne    0x0000000102bd0e94  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0da7: mov    0xc(%r8),%ecx      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0dab: lea    (%r12,%r11,8),%r10  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0daf: mov    0x24(%r10),%ebx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0db3: mov    %ecx,%r10d
  0x0000000102bd0db6: shr    $0x10,%r10d
  0x0000000102bd0dba: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0dbd: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; implicit exception: dispatches to 0x0000000102bd0fd2
  0x0000000102bd0dc2: test   %ebp,%ebp
  0x0000000102bd0dc4: jbe    0x0000000102bd0ec2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0dca: lea    (%r12,%rbx,8),%r11
  0x0000000102bd0dce: dec    %ebp
  0x0000000102bd0dd0: and    %r10d,%ebp
  0x0000000102bd0dd3: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0dd8: mov    0xc(%r12,%r11,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; implicit exception: dispatches to 0x0000000102bd0ff2
  0x0000000102bd0ddd: cmp    %r10d,%ebp
  0x0000000102bd0de0: jne    0x0000000102bd0eee  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0de6: mov    0x10(%r12,%r11,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0deb: mov    %rbp,%r9
  0x0000000102bd0dee: shl    $0x3,%r9
  0x0000000102bd0df2: cmp    %r8,%r9
  0x0000000102bd0df5: je     0x0000000102bd0e19  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0df7: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x0000000102bd0fb2
  0x0000000102bd0dfc: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bd0e03: jne    0x0000000102bd0f5a
  0x0000000102bd0e09: lea    (%r12,%rbp,8),%r9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0e0d: mov    0xc(%r9),%ebp      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0e11: cmp    %ebp,%ecx
  0x0000000102bd0e13: jne    0x0000000102bd0f1a  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0e19: mov    0x14(%r12,%r11,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0e1e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000102bd0fa2
  0x0000000102bd0e23: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000102bd0e2a: jne    0x0000000102bd0f86
  0x0000000102bd0e30: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x0000000102bd0e34: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@38 (line 53)

  0x0000000102bd0e38: add    $0x30,%rsp
  0x0000000102bd0e3c: pop    %rbp
  0x0000000102bd0e3d: mov    0x108(%r15),%r10
  0x0000000102bd0e44: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bd0e47: retq   
  0x0000000102bd0e48: mov    %edx,%ebp
  0x0000000102bd0e4a: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0e50: cmp    $0x100,%ebp
  0x0000000102bd0e56: jae    0x0000000102bd0f4a
  0x0000000102bd0e5c: movslq %edx,%r10
  0x0000000102bd0e5f: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bd0e69: mov    0x210(%r11,%r10,4),%r10d
  0x0000000102bd0e71: lea    (%r12,%r10,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0e75: jmpq   0x0000000102bd0d90
  0x0000000102bd0e7a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000102bd0e84: mov    %edx,%ebp
  0x0000000102bd0e86: nop
  0x0000000102bd0e87: callq  0x0000000102bb0380  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000102bd0e8c: mov    %rax,%r8
  0x0000000102bd0e8f: jmpq   0x0000000102bd0d87
  0x0000000102bd0e94: mov    $0xffffffde,%esi
  0x0000000102bd0e99: mov    0x4(%rsp),%ebp
  0x0000000102bd0e9d: mov    %r11d,(%rsp)
  0x0000000102bd0ea1: mov    %r8,0x8(%rsp)
  0x0000000102bd0ea6: nop
  0x0000000102bd0ea7: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0eac: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0eae: mov    $0xffffff4d,%esi
  0x0000000102bd0eb3: mov    %r11d,(%rsp)
  0x0000000102bd0eb7: mov    %edx,0x8(%rsp)
  0x0000000102bd0ebb: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0ec0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0ec2: mov    $0xffffff4d,%esi
  0x0000000102bd0ec7: mov    %rax,-0x8(%rsp)
  0x0000000102bd0ecc: mov    0x4(%rsp),%eax
  0x0000000102bd0ed0: mov    %eax,(%rsp)
  0x0000000102bd0ed3: mov    -0x8(%rsp),%rax
  0x0000000102bd0ed8: mov    %r10d,0x4(%rsp)
  0x0000000102bd0edd: mov    %r8,0x8(%rsp)
  0x0000000102bd0ee2: mov    %ebx,0x10(%rsp)
  0x0000000102bd0ee6: nop
  0x0000000102bd0ee7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0eec: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0eee: mov    $0xffffff4d,%esi
  0x0000000102bd0ef3: mov    %rax,-0x8(%rsp)
  0x0000000102bd0ef8: mov    0x4(%rsp),%eax
  0x0000000102bd0efc: mov    %eax,(%rsp)
  0x0000000102bd0eff: mov    -0x8(%rsp),%rax
  0x0000000102bd0f04: mov    %r8,0x8(%rsp)
  0x0000000102bd0f09: mov    %r11d,0x10(%rsp)
  0x0000000102bd0f0e: mov    %r10d,0x14(%rsp)
  0x0000000102bd0f13: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0f18: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0f1a: mov    $0xffffff4d,%esi
  0x0000000102bd0f1f: mov    %rax,-0x8(%rsp)
  0x0000000102bd0f24: mov    0x4(%rsp),%eax
  0x0000000102bd0f28: mov    %eax,(%rsp)
  0x0000000102bd0f2b: mov    -0x8(%rsp),%rax
  0x0000000102bd0f30: mov    %r10d,0x4(%rsp)
  0x0000000102bd0f35: mov    %r8,0x8(%rsp)
  0x0000000102bd0f3a: mov    %r11d,0x10(%rsp)
  0x0000000102bd0f3f: mov    %ecx,0x14(%rsp)
  0x0000000102bd0f43: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0f48: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0f4a: mov    $0xffffffe4,%esi
  0x0000000102bd0f4f: mov    %edx,(%rsp)
  0x0000000102bd0f52: nop
  0x0000000102bd0f53: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0f58: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd0f5a: mov    $0xffffffde,%esi
  0x0000000102bd0f5f: mov    %rax,-0x8(%rsp)
  0x0000000102bd0f64: mov    0x4(%rsp),%eax
  0x0000000102bd0f68: mov    %eax,(%rsp)
  0x0000000102bd0f6b: mov    -0x8(%rsp),%rax
  0x0000000102bd0f70: mov    %r10d,0x4(%rsp)
  0x0000000102bd0f75: mov    %r11d,0x10(%rsp)
  0x0000000102bd0f7a: mov    %r8,0x18(%rsp)
  0x0000000102bd0f7f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0f84: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0f86: mov    $0xffffffde,%esi
  0x0000000102bd0f8b: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0f90: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x0000000102bd0f92: mov    $0xfffffff6,%esi
  0x0000000102bd0f97: mov    %r8,%rbp
  0x0000000102bd0f9a: nop
  0x0000000102bd0f9b: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0fa0: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0fa2: mov    $0xfffffff4,%esi
  0x0000000102bd0fa7: mov    0x4(%rsp),%ebp
  0x0000000102bd0fab: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0fb0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x0000000102bd0fb2: mov    $0xfffffff4,%esi
  0x0000000102bd0fb7: mov    0x4(%rsp),%ebp
  0x0000000102bd0fbb: mov    %r10d,(%rsp)
  0x0000000102bd0fbf: mov    %r11d,0x4(%rsp)
  0x0000000102bd0fc4: mov    %r8,0x10(%rsp)
  0x0000000102bd0fc9: xchg   %ax,%ax
  0x0000000102bd0fcb: callq  0x0000000102b7b900  ; ImmutableOopMap{[4]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0fd0: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0fd2: mov    $0xffffff4d,%esi
  0x0000000102bd0fd7: mov    0x4(%rsp),%ebp
  0x0000000102bd0fdb: mov    %r10d,(%rsp)
  0x0000000102bd0fdf: mov    %r8,0x8(%rsp)
  0x0000000102bd0fe4: mov    %ebx,0x10(%rsp)
  0x0000000102bd0fe8: data16 xchg %ax,%ax
  0x0000000102bd0feb: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd0ff0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x0000000102bd0ff2: mov    $0xffffff4d,%esi
  0x0000000102bd0ff7: mov    0x4(%rsp),%ebp
  0x0000000102bd0ffb: mov    %r10d,(%rsp)
  0x0000000102bd0fff: mov    %r8,0x8(%rsp)
  0x0000000102bd1004: mov    %r11d,0x10(%rsp)
  0x0000000102bd1009: xchg   %ax,%ax
  0x0000000102bd100b: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1010: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x0000000102bd1012: mov    %rax,%rsi
  0x0000000102bd1015: add    $0x30,%rsp
  0x0000000102bd1019: pop    %rbp
  0x0000000102bd101a: jmpq   0x0000000102bb2c00  ;   {runtime_call _rethrow_Java}
  0x0000000102bd101f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bd1020: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bd1025: callq  0x0000000102bd102a
  0x0000000102bd102a: subq   $0x5,(%rsp)
  0x0000000102bd102f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bd1034: hlt    
  0x0000000102bd1035: hlt    
  0x0000000102bd1036: hlt    
  0x0000000102bd1037: hlt    

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
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 784 816 Compiled method (c2)     284   68             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000102bca590,0x0000000102bca818] = 648
 relocation     [0x0000000102bca708,0x0000000102bca718] = 16
 main code      [0x0000000102bca720,0x0000000102bca760] = 64
 stub code      [0x0000000102bca760,0x0000000102bca778] = 24
 oops           [0x0000000102bca778,0x0000000102bca780] = 8
 metadata       [0x0000000102bca780,0x0000000102bca798] = 24
 scopes data    [0x0000000102bca798,0x0000000102bca7c0] = 40
 scopes pcs     [0x0000000102bca7c0,0x0000000102bca810] = 80
 dependencies   [0x0000000102bca810,0x0000000102bca818] = 8
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x0000000102bca720, 0x0000000102bca778]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011a09f780} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x20]  (sp of caller)
  0x0000000102bca720: mov    0x8(%rsi),%r10d
  0x0000000102bca724: movabs $0x800000000,%r12
  0x0000000102bca72e: add    %r12,%r10
  0x0000000102bca731: xor    %r12,%r12
  0x0000000102bca734: cmp    %r10,%rax
  0x0000000102bca737: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bca73d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bca740: mov    %eax,-0x14000(%rsp)
  0x0000000102bca747: push   %rbp
  0x0000000102bca748: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 40)

  0x0000000102bca74c: mov    %rsi,%rbp
  0x0000000102bca74f: mov    $0xffffffbe,%esi
  0x0000000102bca754: data16 xchg %ax,%ax
  0x0000000102bca757: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bca75c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)

  0x0000000102bca75e: hlt    
  0x0000000102bca75f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bca760: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bca765: callq  0x0000000102bca76a
  0x0000000102bca76a: subq   $0x5,(%rsp)
  0x0000000102bca76f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bca774: hlt    
  0x0000000102bca775: hlt    
  0x0000000102bca776: hlt    
  0x0000000102bca777: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     289   69 %           ProceduralHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x0000000102bd1710,0x0000000102bd2410] = 3328
 relocation     [0x0000000102bd1888,0x0000000102bd18d8] = 80
 main code      [0x0000000102bd18e0,0x0000000102bd1cc0] = 992
 stub code      [0x0000000102bd1cc0,0x0000000102bd1cd8] = 24
 oops           [0x0000000102bd1cd8,0x0000000102bd1ce8] = 16
 metadata       [0x0000000102bd1ce8,0x0000000102bd1d48] = 96
 scopes data    [0x0000000102bd1d48,0x0000000102bd2018] = 720
 scopes pcs     [0x0000000102bd2018,0x0000000102bd23b8] = 928
 dependencies   [0x0000000102bd23b8,0x0000000102bd23c0] = 8
 handler table  [0x0000000102bd23c0,0x0000000102bd23d8] = 24
 nul chk table  [0x0000000102bd23d8,0x0000000102bd2410] = 56
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x0000000102bd18e0, 0x0000000102bd1cd8]  1016 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011a09f780} 'runTest' '()I' in 'ProceduralHashMap'
  0x0000000102bd18e0: callq  0x00000001022107f4  ;   {runtime_call os::breakpoint()}
  0x0000000102bd18e5: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000102bd18f0: mov    %eax,-0x14000(%rsp)
  0x0000000102bd18f7: push   %rbp
  0x0000000102bd18f8: sub    $0x40,%rsp
  0x0000000102bd18fc: mov    0x10(%rsi),%r13
  0x0000000102bd1900: mov    0x8(%rsi),%ebp
  0x0000000102bd1903: mov    (%rsi),%ebx
  0x0000000102bd1905: mov    %rsi,%rdi
  0x0000000102bd1908: movabs $0x102291a82,%r10
  0x0000000102bd1912: callq  *%r10
  0x0000000102bd1915: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x0000000102bd1c8e
  0x0000000102bd1919: cmp    $0x60040,%r10d     ;   {metadata('ProceduralHashMap')}
  0x0000000102bd1920: jne    0x0000000102bd1baa  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)

  0x0000000102bd1926: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000102bd192c: movabs $0x800000000,%rdi
  0x0000000102bd1936: add    %r10,%rdi
  0x0000000102bd1939: jmp    0x0000000102bd196b
  0x0000000102bd193b: nopl   0x0(%rax,%rax,1)   ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1940: mov    0x14(%r12,%r8,8),%r11d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1945: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x0000000102bd1c0e
  0x0000000102bd194a: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000102bd1951: jne    0x0000000102bd1be6  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bd1957: mov    0x108(%r15),%r10
  0x0000000102bd195e: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 41)

  0x0000000102bd1960: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1964: mov    0xc(%r11),%ebp     ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bd1968: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {poll}
  0x0000000102bd196b: cmp    $0x3e8,%ebx
  0x0000000102bd1971: jge    0x0000000102bd1abc  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)

  0x0000000102bd1977: movabs $0x70fe0f280,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f280} = 'ProceduralHashMap')}
  0x0000000102bd1981: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1985: cmp    $0xffffff80,%ebx
  0x0000000102bd1988: jl     0x0000000102bd1b22  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd198e: cmp    $0x7f,%ebx
  0x0000000102bd1991: jle    0x0000000102bd1a8a
  0x0000000102bd1997: mov    0x118(%r15),%rax
  0x0000000102bd199e: mov    %rax,%r11
  0x0000000102bd19a1: add    $0x10,%r11
  0x0000000102bd19a5: cmp    0x128(%r15),%r11
  0x0000000102bd19ac: jae    0x0000000102bd1ace  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bd19b2: mov    %r11,0x118(%r15)
  0x0000000102bd19b9: prefetchnta 0xc0(%r11)
  0x0000000102bd19c1: mov    0xb8(%rdi),%r11
  0x0000000102bd19c8: mov    %r11,(%rax)
  0x0000000102bd19cb: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000102bd19d2: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19d5: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000102bd1bfe
  0x0000000102bd19da: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000102bd19e1: jne    0x0000000102bd1b05  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19e7: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19ea: shl    $0x3,%r10          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19ee: mov    0x24(%r10),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19f2: mov    %ecx,%r10d
  0x0000000102bd19f5: shr    $0x10,%r10d
  0x0000000102bd19f9: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd19fc: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bd1c46
  0x0000000102bd1a01: test   %r11d,%r11d
  0x0000000102bd1a04: jbe    0x0000000102bd1b3e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a0a: dec    %r11d
  0x0000000102bd1a0d: and    %r10d,%r11d
  0x0000000102bd1a10: shl    $0x3,%r8
  0x0000000102bd1a14: mov    0x10(%r8,%r11,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a19: mov    0xc(%r12,%r8,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bd1c6a
  0x0000000102bd1a1e: cmp    %r10d,%r9d
  0x0000000102bd1a21: jne    0x0000000102bd1b66  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a27: mov    0x10(%r12,%r8,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a2c: mov    %r9,%r11
  0x0000000102bd1a2f: shl    $0x3,%r11
  0x0000000102bd1a33: cmp    %rax,%r11
  0x0000000102bd1a36: je     0x0000000102bd1940  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a3c: mov    0x8(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x0000000102bd1c22
  0x0000000102bd1a41: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000102bd1a47: jne    0x0000000102bd1bbe
  0x0000000102bd1a4d: lea    (%r12,%r9,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a51: mov    0xc(%r11),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a55: cmp    %r11d,%ecx
  0x0000000102bd1a58: je     0x0000000102bd1940  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a5e: mov    $0xffffff4d,%esi
  0x0000000102bd1a63: mov    %r13,%rbp
  0x0000000102bd1a66: mov    %ebx,0x4(%rsp)
  0x0000000102bd1a6a: mov    %r10d,0x8(%rsp)
  0x0000000102bd1a6f: mov    %rax,0x10(%rsp)
  0x0000000102bd1a74: mov    %r8d,0xc(%rsp)
  0x0000000102bd1a79: mov    %ecx,0x18(%rsp)
  0x0000000102bd1a7d: mov    %r11d,0x1c(%rsp)
  0x0000000102bd1a82: nop
  0x0000000102bd1a83: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1a88: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a8a: mov    %ebx,%ebp
  0x0000000102bd1a8c: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1a92: cmp    $0x100,%ebp
  0x0000000102bd1a98: jae    0x0000000102bd1b8e
  0x0000000102bd1a9e: movslq %ebx,%r11
  0x0000000102bd1aa1: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bd1aab: mov    0x210(%r8,%r11,4),%r8d
  0x0000000102bd1ab3: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1ab7: jmpq   0x0000000102bd19d5  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)

  0x0000000102bd1abc: mov    %ebp,%eax
  0x0000000102bd1abe: add    $0x40,%rsp
  0x0000000102bd1ac2: pop    %rbp
  0x0000000102bd1ac3: mov    0x108(%r15),%r10
  0x0000000102bd1aca: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bd1acd: retq   
  0x0000000102bd1ace: mov    %r10d,0x4(%rsp)
  0x0000000102bd1ad3: mov    %rdi,0x8(%rsp)
  0x0000000102bd1ad8: mov    %ebx,(%rsp)
  0x0000000102bd1adb: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1ade: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000102bd1ae8: data16 xchg %ax,%ax
  0x0000000102bd1aeb: callq  0x0000000102bb0380  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000102bd1af0: mov    %rbp,%r13
  0x0000000102bd1af3: mov    (%rsp),%ebx
  0x0000000102bd1af6: mov    0x8(%rsp),%rdi
  0x0000000102bd1afb: mov    0x4(%rsp),%r10d
  0x0000000102bd1b00: jmpq   0x0000000102bd19d2
  0x0000000102bd1b05: mov    $0xffffffde,%esi
  0x0000000102bd1b0a: mov    %r13,%rbp
  0x0000000102bd1b0d: mov    %ebx,0x4(%rsp)
  0x0000000102bd1b11: mov    %r10d,0x8(%rsp)
  0x0000000102bd1b16: mov    %rax,0x10(%rsp)
  0x0000000102bd1b1b: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1b20: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1b22: mov    $0xffffff4d,%esi
  0x0000000102bd1b27: mov    %r13,%rbp
  0x0000000102bd1b2a: mov    %ebx,0x4(%rsp)
  0x0000000102bd1b2e: mov    %r10d,0x8(%rsp)
  0x0000000102bd1b33: mov    %ebx,0xc(%rsp)
  0x0000000102bd1b37: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1b3c: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1b3e: mov    $0xffffff4d,%esi
  0x0000000102bd1b43: mov    %r13,%rbp
  0x0000000102bd1b46: mov    %ebx,0x4(%rsp)
  0x0000000102bd1b4a: mov    %r10d,0x8(%rsp)
  0x0000000102bd1b4f: mov    %rax,0x10(%rsp)
  0x0000000102bd1b54: mov    %r8d,0xc(%rsp)
  0x0000000102bd1b59: mov    %r11d,0x1c(%rsp)
  0x0000000102bd1b5e: nop
  0x0000000102bd1b5f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1b64: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1b66: mov    $0xffffff4d,%esi
  0x0000000102bd1b6b: mov    %r13,%rbp
  0x0000000102bd1b6e: mov    %ebx,0x4(%rsp)
  0x0000000102bd1b72: mov    %rax,0x10(%rsp)
  0x0000000102bd1b77: mov    %r8d,0xc(%rsp)
  0x0000000102bd1b7c: mov    %r9d,0x18(%rsp)
  0x0000000102bd1b81: mov    %r10d,0x1c(%rsp)
  0x0000000102bd1b86: nop
  0x0000000102bd1b87: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1b8c: ud2    
  0x0000000102bd1b8e: mov    $0xffffffe4,%esi
  0x0000000102bd1b93: mov    %r13,(%rsp)
  0x0000000102bd1b97: mov    %ebx,0xc(%rsp)
  0x0000000102bd1b9b: mov    %r10d,0x10(%rsp)
  0x0000000102bd1ba0: data16 xchg %ax,%ax
  0x0000000102bd1ba3: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1ba8: ud2    
  0x0000000102bd1baa: mov    $0xffffff95,%esi
  0x0000000102bd1baf: mov    %r13,(%rsp)
  0x0000000102bd1bb3: mov    %ebx,0x8(%rsp)
  0x0000000102bd1bb7: callq  0x0000000102b7b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1bbc: ud2    
  0x0000000102bd1bbe: mov    $0xffffffde,%esi
  0x0000000102bd1bc3: mov    %r13,%rbp
  0x0000000102bd1bc6: mov    %ebx,0x4(%rsp)
  0x0000000102bd1bca: mov    %r10d,0x8(%rsp)
  0x0000000102bd1bcf: mov    %r8d,0xc(%rsp)
  0x0000000102bd1bd4: mov    %rax,0x18(%rsp)
  0x0000000102bd1bd9: mov    %r9d,0x24(%rsp)
  0x0000000102bd1bde: nop
  0x0000000102bd1bdf: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1be4: ud2    
  0x0000000102bd1be6: mov    $0xffffffde,%esi
  0x0000000102bd1beb: mov    %r13,%rbp
  0x0000000102bd1bee: mov    %ebx,0x4(%rsp)
  0x0000000102bd1bf2: mov    %r11d,0x8(%rsp)
  0x0000000102bd1bf7: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1bfc: ud2    
  0x0000000102bd1bfe: mov    $0xfffffff6,%esi
  0x0000000102bd1c03: mov    %rax,%rbp
  0x0000000102bd1c06: nop
  0x0000000102bd1c07: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c0c: ud2    
  0x0000000102bd1c0e: mov    $0xfffffff4,%esi
  0x0000000102bd1c13: mov    %r13,%rbp
  0x0000000102bd1c16: mov    %ebx,0x4(%rsp)
  0x0000000102bd1c1a: nop
  0x0000000102bd1c1b: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c20: ud2    
  0x0000000102bd1c22: mov    $0xfffffff4,%esi
  0x0000000102bd1c27: mov    %r13,%rbp
  0x0000000102bd1c2a: mov    %ebx,0x4(%rsp)
  0x0000000102bd1c2e: mov    %r10d,0x8(%rsp)
  0x0000000102bd1c33: mov    %r8d,0xc(%rsp)
  0x0000000102bd1c38: mov    %rax,0x18(%rsp)
  0x0000000102bd1c3d: xchg   %ax,%ax
  0x0000000102bd1c3f: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c44: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1c46: mov    $0xffffff4d,%esi
  0x0000000102bd1c4b: mov    %r13,%rbp
  0x0000000102bd1c4e: mov    %ebx,0x4(%rsp)
  0x0000000102bd1c52: mov    %r10d,0x8(%rsp)
  0x0000000102bd1c57: mov    %rax,0x10(%rsp)
  0x0000000102bd1c5c: mov    %r8d,0x18(%rsp)
  0x0000000102bd1c61: xchg   %ax,%ax
  0x0000000102bd1c63: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c68: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1c6a: mov    $0xffffff4d,%esi
  0x0000000102bd1c6f: mov    %r13,%rbp
  0x0000000102bd1c72: mov    %ebx,0x4(%rsp)
  0x0000000102bd1c76: mov    %r10d,0x8(%rsp)
  0x0000000102bd1c7b: mov    %rax,0x10(%rsp)
  0x0000000102bd1c80: mov    %r8d,0x18(%rsp)
  0x0000000102bd1c85: xchg   %ax,%ax
  0x0000000102bd1c87: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c8c: ud2    
  0x0000000102bd1c8e: mov    $0xffffffbe,%esi
  0x0000000102bd1c93: mov    %ebx,(%rsp)
  0x0000000102bd1c96: nop
  0x0000000102bd1c97: callq  0x0000000102b7b900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bd1c9c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd1c9e: mov    %rax,%rsi
  0x0000000102bd1ca1: add    $0x40,%rsp
  0x0000000102bd1ca5: pop    %rbp
  0x0000000102bd1ca6: jmpq   0x0000000102bb2c00  ;   {runtime_call _rethrow_Java}
  0x0000000102bd1cab: hlt    
  0x0000000102bd1cac: hlt    
  0x0000000102bd1cad: hlt    
  0x0000000102bd1cae: hlt    
  0x0000000102bd1caf: hlt    
  0x0000000102bd1cb0: hlt    
  0x0000000102bd1cb1: hlt    
  0x0000000102bd1cb2: hlt    
  0x0000000102bd1cb3: hlt    
  0x0000000102bd1cb4: hlt    
  0x0000000102bd1cb5: hlt    
  0x0000000102bd1cb6: hlt    
  0x0000000102bd1cb7: hlt    
  0x0000000102bd1cb8: hlt    
  0x0000000102bd1cb9: hlt    
  0x0000000102bd1cba: hlt    
  0x0000000102bd1cbb: hlt    
  0x0000000102bd1cbc: hlt    
  0x0000000102bd1cbd: hlt    
  0x0000000102bd1cbe: hlt    
  0x0000000102bd1cbf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bd1cc0: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bd1cc5: callq  0x0000000102bd1cca
  0x0000000102bd1cca: subq   $0x5,(%rsp)
  0x0000000102bd1ccf: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bd1cd4: hlt    
  0x0000000102bd1cd5: hlt    
  0x0000000102bd1cd6: hlt    
  0x0000000102bd1cd7: hlt    

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
ImmutableOopMap{}pc offsets: 956 Compiled method (c2)     310   70             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000102bcf890,0x0000000102bd0ae8] = 4696
 relocation     [0x0000000102bcfa08,0x0000000102bcfa78] = 112
 main code      [0x0000000102bcfa80,0x0000000102bd0020] = 1440
 stub code      [0x0000000102bd0020,0x0000000102bd0038] = 24
 oops           [0x0000000102bd0038,0x0000000102bd0048] = 16
 metadata       [0x0000000102bd0048,0x0000000102bd00a0] = 88
 scopes data    [0x0000000102bd00a0,0x0000000102bd0340] = 672
 scopes pcs     [0x0000000102bd0340,0x0000000102bd0a30] = 1776
 dependencies   [0x0000000102bd0a30,0x0000000102bd0a38] = 8
 handler table  [0x0000000102bd0a38,0x0000000102bd0a68] = 48
 nul chk table  [0x0000000102bd0a68,0x0000000102bd0ae8] = 128
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x0000000102bcfa80, 0x0000000102bd0038]  1464 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011a09f780} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x50]  (sp of caller)
  0x0000000102bcfa80: mov    0x8(%rsi),%r10d
  0x0000000102bcfa84: movabs $0x800000000,%r12
  0x0000000102bcfa8e: add    %r12,%r10
  0x0000000102bcfa91: xor    %r12,%r12
  0x0000000102bcfa94: cmp    %r10,%rax
  0x0000000102bcfa97: jne    0x0000000102b79c80  ;   {runtime_call ic_miss_stub}
  0x0000000102bcfa9d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000102bcfaa0: mov    %eax,-0x14000(%rsp)
  0x0000000102bcfaa7: push   %rbp
  0x0000000102bcfaa8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 40)

  0x0000000102bcfaac: mov    %rsi,0x28(%rsp)
  0x0000000102bcfab1: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bcfabb: mov    0x210(%r10),%r9d   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfac2: movabs $0x70fe0f280,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f280} = 'ProceduralHashMap')}
  0x0000000102bcfacc: mov    0x70(%r10),%r10d
  0x0000000102bcfad0: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000102bcff6e
  0x0000000102bcfad5: lea    (%r12,%r10,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfad9: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000102bcfae0: jne    0x0000000102bcfe72  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfae6: mov    0xc(%r12,%r9,8),%ebx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfaeb: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfaef: mov    %ebx,%r8d
  0x0000000102bcfaf2: shr    $0x10,%r8d
  0x0000000102bcfaf6: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfaf9: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffb6
  0x0000000102bcfafe: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb02: test   %r11d,%r11d
  0x0000000102bcfb05: jbe    0x0000000102bcfe92  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb0b: dec    %r11d
  0x0000000102bcfb0e: and    %r8d,%r11d
  0x0000000102bcfb11: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb16: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffda
  0x0000000102bcfb1b: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb1f: cmp    %r8d,%r11d
  0x0000000102bcfb22: jne    0x0000000102bcfeba  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb28: mov    0x10(%r12,%rcx,8),%r10d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb2d: cmp    %r9d,%r10d
  0x0000000102bcfb30: je     0x0000000102bcfb53  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb32: mov    0x8(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x0000000102bcff92
  0x0000000102bcfb37: lea    (%r12,%r10,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb3b: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfb41: jne    0x0000000102bcff46  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb47: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb4b: cmp    %edx,%ebx
  0x0000000102bcfb4d: jne    0x0000000102bcff0c  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb53: mov    0x14(%r12,%rcx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb58: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000102bcff7e
  0x0000000102bcfb5d: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfb64: jne    0x0000000102bcff2a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb6a: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000102bcfb70: movabs $0x800000000,%rsi
  0x0000000102bcfb7a: add    %r11,%rsi
  0x0000000102bcfb7d: mov    $0x1,%r10d
  0x0000000102bcfb83: jmp    0x0000000102bcfbbb
  0x0000000102bcfb85: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb90: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000102bcfb95: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000102bcff81
  0x0000000102bcfb9a: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfb9e: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfba5: jne    0x0000000102bcff31  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfbab: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 41)

  0x0000000102bcfbae: cmp    $0x80,%r10d
  0x0000000102bcfbb5: jge    0x0000000102bcfce9  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 42)

  0x0000000102bcfbbb: movabs $0x70fe0f280,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f280} = 'ProceduralHashMap')}
  0x0000000102bcfbc5: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfbc9: cmp    $0x7f,%r10d
  0x0000000102bcfbcd: jle    0x0000000102bcfcce
  0x0000000102bcfbd3: mov    0x118(%r15),%rax
  0x0000000102bcfbda: mov    %rax,%r11
  0x0000000102bcfbdd: add    $0x10,%r11
  0x0000000102bcfbe1: cmp    0x128(%r15),%r11
  0x0000000102bcfbe8: jae    0x0000000102bcfe4b  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bcfbee: mov    %r11,0x118(%r15)
  0x0000000102bcfbf5: prefetchnta 0xc0(%r11)
  0x0000000102bcfbfd: mov    0xb8(%rsi),%r11
  0x0000000102bcfc04: mov    %r11,(%rax)
  0x0000000102bcfc07: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000102bcfc0e: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc12: mov    %rax,%r9
  0x0000000102bcfc15: shr    $0x3,%r9
  0x0000000102bcfc19: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x0000000102bcff6e
  0x0000000102bcfc1e: lea    (%r12,%rbp,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc22: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000102bcfc29: jne    0x0000000102bcfe75  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc2f: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc32: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc36: mov    %ebx,%r8d
  0x0000000102bcfc39: shr    $0x10,%r8d
  0x0000000102bcfc3d: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc40: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffb9
  0x0000000102bcfc45: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc49: test   %r11d,%r11d
  0x0000000102bcfc4c: jbe    0x0000000102bcfe95  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc52: dec    %r11d
  0x0000000102bcfc55: and    %r8d,%r11d
  0x0000000102bcfc58: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc5d: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffdd
  0x0000000102bcfc62: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc66: cmp    %r8d,%r11d
  0x0000000102bcfc69: jne    0x0000000102bcfebd  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc6f: mov    0x10(%r12,%rcx,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc74: mov    %r11,%rdx
  0x0000000102bcfc77: shl    $0x3,%rdx
  0x0000000102bcfc7b: cmp    %rax,%rdx
  0x0000000102bcfc7e: je     0x0000000102bcfb90  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc84: mov    0x8(%r12,%r11,8),%edx  ; implicit exception: dispatches to 0x0000000102bcff95
  0x0000000102bcfc89: shl    $0x3,%r11          ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc8d: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfc93: jne    0x0000000102bcff49  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc99: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfc9d: cmp    %edx,%ebx
  0x0000000102bcfc9f: je     0x0000000102bcfb90  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfca5: mov    $0xffffff4d,%esi
  0x0000000102bcfcaa: mov    %r10d,(%rsp)
  0x0000000102bcfcae: mov    %r8d,0x4(%rsp)
  0x0000000102bcfcb3: mov    %r9d,0x8(%rsp)
  0x0000000102bcfcb8: mov    %rdi,0x10(%rsp)
  0x0000000102bcfcbd: mov    %ebx,0xc(%rsp)
  0x0000000102bcfcc1: mov    %edx,0x18(%rsp)
  0x0000000102bcfcc5: xchg   %ax,%ax
  0x0000000102bcfcc7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcfccc: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfcce: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bcfcd8: mov    0x210(%r11,%r10,4),%r11d
  0x0000000102bcfce0: lea    (%r12,%r11,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfce4: jmpq   0x0000000102bcfc12  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bcfce9: mov    0x108(%r15),%r8
  0x0000000102bcfcf0: mov    0xc(%r11),%r11d    ; ImmutableOopMap{[40]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bcfcf4: test   %eax,(%r8)         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 42)
                                                ;   {poll}
  0x0000000102bcfcf7: movabs $0x70fe0f280,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f280} = 'ProceduralHashMap')}
  0x0000000102bcfd01: mov    0x70(%r11),%ecx    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd05: cmp    $0x7f,%r10d
  0x0000000102bcfd09: jle    0x0000000102bcfe1b
  0x0000000102bcfd0f: mov    0x118(%r15),%rax
  0x0000000102bcfd16: mov    %rax,%r11
  0x0000000102bcfd19: add    $0x10,%r11
  0x0000000102bcfd1d: cmp    0x128(%r15),%r11
  0x0000000102bcfd24: jae    0x0000000102bcfee2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x0000000102bcfd2a: mov    %r11,0x118(%r15)
  0x0000000102bcfd31: prefetchnta 0xc0(%r11)
  0x0000000102bcfd39: mov    0xb8(%rsi),%r11
  0x0000000102bcfd40: mov    %r11,(%rax)
  0x0000000102bcfd43: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000102bcfd4a: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd4e: mov    %rax,%r9
  0x0000000102bcfd51: shr    $0x3,%r9
  0x0000000102bcfd55: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x0000000102bcff6e
  0x0000000102bcfd5a: lea    (%r12,%rcx,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd5e: cmp    $0x19838,%ebx      ;   {metadata('java/util/HashMap')}
  0x0000000102bcfd64: jne    0x0000000102bcfe75  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd6a: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd6d: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd71: mov    %ebx,%r8d
  0x0000000102bcfd74: shr    $0x10,%r8d
  0x0000000102bcfd78: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd7b: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffb9
  0x0000000102bcfd80: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd84: test   %r11d,%r11d
  0x0000000102bcfd87: jbe    0x0000000102bcfe95  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd8d: dec    %r11d
  0x0000000102bcfd90: and    %r8d,%r11d
  0x0000000102bcfd93: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfd98: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x0000000102bcffdd
  0x0000000102bcfd9d: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfda1: cmp    %r8d,%r11d
  0x0000000102bcfda4: jne    0x0000000102bcfebd  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdaa: mov    0x10(%r12,%rcx,8),%edx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdaf: mov    %rdx,%r11
  0x0000000102bcfdb2: shl    $0x3,%r11
  0x0000000102bcfdb6: cmp    %rax,%r11
  0x0000000102bcfdb9: je     0x0000000102bcfddc  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdbb: mov    0x8(%r12,%rdx,8),%eax  ; implicit exception: dispatches to 0x0000000102bcff95
  0x0000000102bcfdc0: lea    (%r12,%rdx,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdc4: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfdca: jne    0x0000000102bcff49  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdd0: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdd4: cmp    %edx,%ebx
  0x0000000102bcfdd6: jne    0x0000000102bcfca5  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfddc: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000102bcfde1: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000102bcff81
  0x0000000102bcfde6: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdea: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000102bcfdf1: jne    0x0000000102bcff31  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfdf7: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 41)

  0x0000000102bcfdfa: cmp    $0x3e8,%r10d
  0x0000000102bcfe01: jl     0x0000000102bcfcf7  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfe07: mov    0xc(%r11),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@38 (line 53)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfe0b: add    $0x40,%rsp
  0x0000000102bcfe0f: pop    %rbp
  0x0000000102bcfe10: mov    0x108(%r15),%r10
  0x0000000102bcfe17: test   %eax,(%r10)        ;   {poll_return}
  0x0000000102bcfe1a: retq   
  0x0000000102bcfe1b: mov    %r10d,%ebp
  0x0000000102bcfe1e: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfe24: cmp    $0x100,%ebp
  0x0000000102bcfe2a: jae    0x0000000102bcff14
  0x0000000102bcfe30: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000102bcfe3a: mov    0x210(%r11,%r10,4),%r8d
  0x0000000102bcfe42: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfe46: jmpq   0x0000000102bcfd4e
  0x0000000102bcfe4b: mov    %rsi,0x8(%rsp)
  0x0000000102bcfe50: mov    %r10d,(%rsp)
  0x0000000102bcfe54: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000102bcfe5e: nop
  0x0000000102bcfe5f: callq  0x0000000102bb0380  ; ImmutableOopMap{rbp=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000102bcfe64: mov    (%rsp),%r10d
  0x0000000102bcfe68: mov    0x8(%rsp),%rsi
  0x0000000102bcfe6d: jmpq   0x0000000102bcfc0e
  0x0000000102bcfe72: xor    %r10d,%r10d
  0x0000000102bcfe75: mov    $0xffffffde,%esi
  0x0000000102bcfe7a: mov    %r10d,(%rsp)
  0x0000000102bcfe7e: mov    %r11,0x8(%rsp)
  0x0000000102bcfe83: mov    %r9d,0x4(%rsp)
  0x0000000102bcfe88: data16 xchg %ax,%ax
  0x0000000102bcfe8b: callq  0x0000000102b7b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcfe90: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfe92: xor    %r10d,%r10d
  0x0000000102bcfe95: mov    $0xffffff4d,%esi
  0x0000000102bcfe9a: mov    %r10d,(%rsp)
  0x0000000102bcfe9e: mov    %r8d,0x4(%rsp)
  0x0000000102bcfea3: mov    %r9d,0x8(%rsp)
  0x0000000102bcfea8: mov    %rcx,0x10(%rsp)
  0x0000000102bcfead: mov    %r11d,0x18(%rsp)
  0x0000000102bcfeb2: nop
  0x0000000102bcfeb3: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcfeb8: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfeba: xor    %r10d,%r10d
  0x0000000102bcfebd: mov    $0xffffff4d,%esi
  0x0000000102bcfec2: mov    %r10d,(%rsp)
  0x0000000102bcfec6: mov    %r9d,0x8(%rsp)
  0x0000000102bcfecb: mov    %rdi,0x10(%rsp)
  0x0000000102bcfed0: mov    %r11d,0xc(%rsp)
  0x0000000102bcfed5: mov    %r8d,0x18(%rsp)
  0x0000000102bcfeda: nop
  0x0000000102bcfedb: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcfee0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcfee2: mov    %ecx,0x8(%rsp)
  0x0000000102bcfee6: mov    %rsi,(%rsp)
  0x0000000102bcfeea: mov    %r10d,%ebp
  0x0000000102bcfeed: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000102bcfef7: callq  0x0000000102bb0380  ; ImmutableOopMap{[8]=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000102bcfefc: mov    %ebp,%r10d
  0x0000000102bcfeff: mov    (%rsp),%rsi
  0x0000000102bcff03: mov    0x8(%rsp),%ecx
  0x0000000102bcff07: jmpq   0x0000000102bcfd4a
  0x0000000102bcff0c: xor    %r10d,%r10d
  0x0000000102bcff0f: jmpq   0x0000000102bcfca5
  0x0000000102bcff14: mov    $0xffffffe4,%esi
  0x0000000102bcff19: mov    %r10d,0x4(%rsp)
  0x0000000102bcff1e: mov    %ecx,0x10(%rsp)
  0x0000000102bcff22: nop
  0x0000000102bcff23: callq  0x0000000102b7b900  ; ImmutableOopMap{[16]=NarrowOop [40]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcff28: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff2a: lea    (%r12,%r10,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff2e: xor    %r10d,%r10d
  0x0000000102bcff31: mov    $0xffffffde,%esi
  0x0000000102bcff36: mov    %r10d,(%rsp)
  0x0000000102bcff3a: mov    %r11,0x8(%rsp)
  0x0000000102bcff3f: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=Oop [40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcff44: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff46: xor    %r10d,%r10d
  0x0000000102bcff49: mov    $0xffffffde,%esi
  0x0000000102bcff4e: mov    %r10d,(%rsp)
  0x0000000102bcff52: mov    %r8d,0x4(%rsp)
  0x0000000102bcff57: mov    %rdi,0x10(%rsp)
  0x0000000102bcff5c: mov    %r9d,0xc(%rsp)
  0x0000000102bcff61: mov    %r11,0x20(%rsp)
  0x0000000102bcff66: nop
  0x0000000102bcff67: callq  0x0000000102b7b900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcff6c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff6e: mov    $0xfffffff6,%esi
  0x0000000102bcff73: mov    %r9d,%ebp
  0x0000000102bcff76: nop
  0x0000000102bcff77: callq  0x0000000102b7b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcff7c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff7e: xor    %r10d,%r10d
  0x0000000102bcff81: mov    $0xfffffff4,%esi
  0x0000000102bcff86: mov    %r10d,(%rsp)
  0x0000000102bcff8a: nop
  0x0000000102bcff8b: callq  0x0000000102b7b900  ; ImmutableOopMap{[40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcff90: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcff92: xor    %r10d,%r10d
  0x0000000102bcff95: mov    $0xfffffff4,%esi
  0x0000000102bcff9a: mov    %r10d,(%rsp)
  0x0000000102bcff9e: mov    %r8d,0x4(%rsp)
  0x0000000102bcffa3: mov    %rdi,0x10(%rsp)
  0x0000000102bcffa8: mov    %r9d,0xc(%rsp)
  0x0000000102bcffad: xchg   %ax,%ax
  0x0000000102bcffaf: callq  0x0000000102b7b900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcffb4: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcffb6: xor    %r10d,%r10d
  0x0000000102bcffb9: mov    $0xffffff4d,%esi
  0x0000000102bcffbe: mov    %r10d,(%rsp)
  0x0000000102bcffc2: mov    %r8d,0x4(%rsp)
  0x0000000102bcffc7: mov    %r9d,0x8(%rsp)
  0x0000000102bcffcc: mov    %ecx,0x10(%rsp)
  0x0000000102bcffd0: data16 xchg %ax,%ax
  0x0000000102bcffd3: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcffd8: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bcffda: xor    %r10d,%r10d
  0x0000000102bcffdd: mov    $0xffffff4d,%esi
  0x0000000102bcffe2: mov    %r10d,(%rsp)
  0x0000000102bcffe6: mov    %r8d,0x4(%rsp)
  0x0000000102bcffeb: mov    %r9d,0x8(%rsp)
  0x0000000102bcfff0: mov    %ecx,0x10(%rsp)
  0x0000000102bcfff4: data16 xchg %ax,%ax
  0x0000000102bcfff7: callq  0x0000000102b7b900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000102bcfffc: ud2    
  0x0000000102bcfffe: mov    %rax,%rsi
  0x0000000102bd0001: jmp    0x0000000102bd0006
  0x0000000102bd0003: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x0000000102bd0006: add    $0x40,%rsp
  0x0000000102bd000a: pop    %rbp
  0x0000000102bd000b: jmpq   0x0000000102bb2c00  ;   {runtime_call _rethrow_Java}
  0x0000000102bd0010: hlt    
  0x0000000102bd0011: hlt    
  0x0000000102bd0012: hlt    
  0x0000000102bd0013: hlt    
  0x0000000102bd0014: hlt    
  0x0000000102bd0015: hlt    
  0x0000000102bd0016: hlt    
  0x0000000102bd0017: hlt    
  0x0000000102bd0018: hlt    
  0x0000000102bd0019: hlt    
  0x0000000102bd001a: hlt    
  0x0000000102bd001b: hlt    
  0x0000000102bd001c: hlt    
  0x0000000102bd001d: hlt    
  0x0000000102bd001e: hlt    
  0x0000000102bd001f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000102bd0020: jmpq   0x0000000102bb0680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000102bd0025: callq  0x0000000102bd002a
  0x0000000102bd002a: subq   $0x5,(%rsp)
  0x0000000102bd002f: jmpq   0x0000000102b7b520  ;   {runtime_call DeoptimizationBlob}
  0x0000000102bd0034: hlt    
  0x0000000102bd0035: hlt    
  0x0000000102bd0036: hlt    
  0x0000000102bd0037: hlt    

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
ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }pc offsets: 1368 1404 Test phase
Time elapsed: 0.01 ms result=100

