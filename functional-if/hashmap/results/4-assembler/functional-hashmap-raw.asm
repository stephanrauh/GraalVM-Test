Compiled method (c2)      48    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x0000000115c8c290,0x0000000115c8c830] = 1440
 relocation     [0x0000000115c8c408,0x0000000115c8c418] = 16
 main code      [0x0000000115c8c420,0x0000000115c8c5e0] = 448
 stub code      [0x0000000115c8c5e0,0x0000000115c8c5f8] = 24
 metadata       [0x0000000115c8c5f8,0x0000000115c8c600] = 8
 scopes data    [0x0000000115c8c600,0x0000000115c8c688] = 136
 scopes pcs     [0x0000000115c8c688,0x0000000115c8c818] = 400
 dependencies   [0x0000000115c8c818,0x0000000115c8c820] = 8
 nul chk table  [0x0000000115c8c820,0x0000000115c8c830] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x0000000115c8c420, 0x0000000115c8c5f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000124586a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x0000000115c8c420: mov    %eax,-0x14000(%rsp)
  0x0000000115c8c427: push   %rbp
  0x0000000115c8c428: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x0000000115c8c42c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x0000000115c8c5c2
  0x0000000115c8c430: test   %r10d,%r10d
  0x0000000115c8c433: jbe    0x0000000115c8c5a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000115c8c439: mov    %r10d,%r8d
  0x0000000115c8c43c: dec    %r8d
  0x0000000115c8c43f: cmp    %r10d,%r8d
  0x0000000115c8c442: jae    0x0000000115c8c5ad
  0x0000000115c8c448: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x0000000115c8c44d: mov    %r10d,%edx
  0x0000000115c8c450: add    $0xfffffff9,%edx
  0x0000000115c8c453: mov    $0x80000000,%ecx
  0x0000000115c8c458: cmp    %edx,%r8d
  0x0000000115c8c45b: cmovl  %ecx,%edx
  0x0000000115c8c45e: mov    $0x1,%ecx
  0x0000000115c8c463: cmp    $0x1,%edx
  0x0000000115c8c466: jle    0x0000000115c8c58d
  0x0000000115c8c46c: mov    %r9d,%r11d
  0x0000000115c8c46f: shl    $0x5,%r11d
  0x0000000115c8c473: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000115c8c476: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000115c8c47b: jmp    0x0000000115c8c4a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x0000000115c8c47d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x0000000115c8c483: mov    %r9d,%eax
  0x0000000115c8c486: shl    $0x5,%eax
  0x0000000115c8c489: sub    %r9d,%eax
  0x0000000115c8c48c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x0000000115c8c48f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000115c8c491: cmp    %r10d,%ecx
  0x0000000115c8c494: jge    0x0000000115c8c599  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000115c8c49a: mov    %eax,%r9d
  0x0000000115c8c49d: jmp    0x0000000115c8c47d
  0x0000000115c8c49f: vmovq  %xmm0,%rsi
  0x0000000115c8c4a4: vmovd  %xmm2,%r10d
  0x0000000115c8c4a9: mov    %edx,%ebp
  0x0000000115c8c4ab: sub    %ecx,%ebp
  0x0000000115c8c4ad: cmp    %edi,%ebp
  0x0000000115c8c4af: cmovg  %edi,%ebp
  0x0000000115c8c4b2: add    %ecx,%ebp
  0x0000000115c8c4b4: vmovq  %rsi,%xmm0
  0x0000000115c8c4b9: vmovd  %r10d,%xmm2
  0x0000000115c8c4be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000115c8c4c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x0000000115c8c4c3: vmovq  %xmm0,%r8
  0x0000000115c8c4c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x0000000115c8c4ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x0000000115c8c4d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x0000000115c8c4da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x0000000115c8c4e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x0000000115c8c4e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x0000000115c8c4ec: add    %r14d,%r11d
  0x0000000115c8c4ef: vmovq  %xmm0,%rbx
  0x0000000115c8c4f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x0000000115c8c4f9: vmovq  %xmm0,%r14
  0x0000000115c8c4fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x0000000115c8c504: mov    %r11d,%r14d
  0x0000000115c8c507: shl    $0x5,%r14d
  0x0000000115c8c50b: sub    %r11d,%r14d
  0x0000000115c8c50e: add    %r13d,%r14d
  0x0000000115c8c511: mov    %r14d,%r11d
  0x0000000115c8c514: shl    $0x5,%r11d
  0x0000000115c8c518: sub    %r14d,%r11d
  0x0000000115c8c51b: add    %ebx,%r11d
  0x0000000115c8c51e: mov    %r11d,%ebx
  0x0000000115c8c521: shl    $0x5,%ebx
  0x0000000115c8c524: sub    %r11d,%ebx
  0x0000000115c8c527: add    %esi,%ebx
  0x0000000115c8c529: mov    %ebx,%r11d
  0x0000000115c8c52c: shl    $0x5,%r11d
  0x0000000115c8c530: sub    %ebx,%r11d
  0x0000000115c8c533: add    %r8d,%r11d
  0x0000000115c8c536: mov    %r11d,%ebx
  0x0000000115c8c539: shl    $0x5,%ebx
  0x0000000115c8c53c: sub    %r11d,%ebx
  0x0000000115c8c53f: add    %r9d,%ebx
  0x0000000115c8c542: mov    %ebx,%r8d
  0x0000000115c8c545: shl    $0x5,%r8d
  0x0000000115c8c549: sub    %ebx,%r8d
  0x0000000115c8c54c: add    %r10d,%r8d
  0x0000000115c8c54f: mov    %r8d,%r9d
  0x0000000115c8c552: shl    $0x5,%r9d
  0x0000000115c8c556: sub    %r8d,%r9d
  0x0000000115c8c559: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x0000000115c8c55c: mov    %r9d,%r11d
  0x0000000115c8c55f: shl    $0x5,%r11d
  0x0000000115c8c563: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000115c8c566: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000115c8c569: cmp    %ebp,%ecx
  0x0000000115c8c56b: jl     0x0000000115c8c4c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000115c8c571: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000115c8c578: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x0000000115c8c57b: cmp    %edx,%ecx
  0x0000000115c8c57d: jl     0x0000000115c8c49f
  0x0000000115c8c583: vmovq  %xmm0,%rsi
  0x0000000115c8c588: vmovd  %xmm2,%r10d
  0x0000000115c8c58d: cmp    %r10d,%ecx
  0x0000000115c8c590: jl     0x0000000115c8c47d
  0x0000000115c8c596: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000115c8c599: add    $0x20,%rsp
  0x0000000115c8c59d: pop    %rbp
  0x0000000115c8c59e: mov    0x108(%r15),%r10
  0x0000000115c8c5a5: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115c8c5a8: retq   
  0x0000000115c8c5a9: xor    %eax,%eax
  0x0000000115c8c5ab: jmp    0x0000000115c8c599
  0x0000000115c8c5ad: mov    %rsi,%rbp
  0x0000000115c8c5b0: mov    %r10d,0x4(%rsp)
  0x0000000115c8c5b5: mov    $0xffffff7e,%esi
  0x0000000115c8c5ba: nop
  0x0000000115c8c5bb: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c8c5c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000115c8c5c2: mov    $0xfffffff6,%esi
  0x0000000115c8c5c7: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c8c5cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x0000000115c8c5ce: hlt    
  0x0000000115c8c5cf: hlt    
  0x0000000115c8c5d0: hlt    
  0x0000000115c8c5d1: hlt    
  0x0000000115c8c5d2: hlt    
  0x0000000115c8c5d3: hlt    
  0x0000000115c8c5d4: hlt    
  0x0000000115c8c5d5: hlt    
  0x0000000115c8c5d6: hlt    
  0x0000000115c8c5d7: hlt    
  0x0000000115c8c5d8: hlt    
  0x0000000115c8c5d9: hlt    
  0x0000000115c8c5da: hlt    
  0x0000000115c8c5db: hlt    
  0x0000000115c8c5dc: hlt    
  0x0000000115c8c5dd: hlt    
  0x0000000115c8c5de: hlt    
  0x0000000115c8c5df: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115c8c5e0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115c8c5e5: callq  0x0000000115c8c5ea
  0x0000000115c8c5ea: subq   $0x5,(%rsp)
  0x0000000115c8c5ef: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115c8c5f4: hlt    
  0x0000000115c8c5f5: hlt    
  0x0000000115c8c5f6: hlt    
  0x0000000115c8c5f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c94c20, 0x0000000115c94c48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012478d148} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000115c94c20: mov    0x8(%rsp),%rbx
  0x0000000115c94c25: mov    0x24(%rbx),%ebx
  0x0000000115c94c28: shl    $0x3,%rbx
  0x0000000115c94c2c: mov    0x10(%rbx),%rbx
  0x0000000115c94c30: test   %rbx,%rbx
  0x0000000115c94c33: je     0x0000000115c94c3c
  0x0000000115c94c39: jmpq   *0x38(%rbx)
  0x0000000115c94c3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c94c41: hlt    
  0x0000000115c94c42: hlt    
  0x0000000115c94c43: hlt    
  0x0000000115c94c44: hlt    
  0x0000000115c94c45: hlt    
  0x0000000115c94c46: hlt    
  0x0000000115c94c47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c955a0, 0x0000000115c955c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247a6db8} 'linkToStatic' '(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c955a0: mov    0x24(%rdx),%ebx
  0x0000000115c955a3: shl    $0x3,%rbx
  0x0000000115c955a7: mov    0x10(%rbx),%rbx
  0x0000000115c955ab: test   %rbx,%rbx
  0x0000000115c955ae: je     0x0000000115c955b7
  0x0000000115c955b4: jmpq   *0x38(%rbx)
  0x0000000115c955b7: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c955bc: hlt    
  0x0000000115c955bd: hlt    
  0x0000000115c955be: hlt    
  0x0000000115c955bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c957a0, 0x0000000115c957d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247af990} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x0000000115c957a0: mov    0x14(%rsi),%ebx
  0x0000000115c957a3: shl    $0x3,%rbx
  0x0000000115c957a7: mov    0x28(%rbx),%ebx
  0x0000000115c957aa: shl    $0x3,%rbx
  0x0000000115c957ae: mov    0x24(%rbx),%ebx
  0x0000000115c957b1: shl    $0x3,%rbx
  0x0000000115c957b5: mov    0x10(%rbx),%rbx
  0x0000000115c957b9: test   %rbx,%rbx
  0x0000000115c957bc: je     0x0000000115c957c5
  0x0000000115c957c2: jmpq   *0x38(%rbx)
  0x0000000115c957c5: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c957ca: hlt    
  0x0000000115c957cb: hlt    
  0x0000000115c957cc: hlt    
  0x0000000115c957cd: hlt    
  0x0000000115c957ce: hlt    
  0x0000000115c957cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c959a0, 0x0000000115c959c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247afb48} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x0000000115c959a0: mov    0x10(%rsp),%rbx
  0x0000000115c959a5: cmp    (%rsi),%rax
  0x0000000115c959a8: mov    0x24(%rbx),%ebx
  0x0000000115c959ab: shl    $0x3,%rbx
  0x0000000115c959af: mov    0x10(%rbx),%rbx
  0x0000000115c959b3: test   %rbx,%rbx
  0x0000000115c959b6: je     0x0000000115c959bf
  0x0000000115c959bc: jmpq   *0x38(%rbx)
  0x0000000115c959bf: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c959c4: hlt    
  0x0000000115c959c5: hlt    
  0x0000000115c959c6: hlt    
  0x0000000115c959c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(I)Ljava/lang/Object;  [0x0000000115c97220, 0x0000000115c97250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247e6e60} 'invokeBasic' '(I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97220: mov    0x14(%rsi),%ebx
  0x0000000115c97223: shl    $0x3,%rbx
  0x0000000115c97227: mov    0x28(%rbx),%ebx
  0x0000000115c9722a: shl    $0x3,%rbx
  0x0000000115c9722e: mov    0x24(%rbx),%ebx
  0x0000000115c97231: shl    $0x3,%rbx
  0x0000000115c97235: mov    0x10(%rbx),%rbx
  0x0000000115c97239: test   %rbx,%rbx
  0x0000000115c9723c: je     0x0000000115c97245
  0x0000000115c97242: jmpq   *0x38(%rbx)
  0x0000000115c97245: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9724a: hlt    
  0x0000000115c9724b: hlt    
  0x0000000115c9724c: hlt    
  0x0000000115c9724d: hlt    
  0x0000000115c9724e: hlt    
  0x0000000115c9724f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c97420, 0x0000000115c97440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247e6f78} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97420: cmp    (%rsi),%rax
  0x0000000115c97423: mov    0x24(%rcx),%ebx
  0x0000000115c97426: shl    $0x3,%rbx
  0x0000000115c9742a: mov    0x10(%rbx),%rbx
  0x0000000115c9742e: test   %rbx,%rbx
  0x0000000115c97431: je     0x0000000115c9743a
  0x0000000115c97437: jmpq   *0x38(%rbx)
  0x0000000115c9743a: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9743f: hlt    
Compiled method (c2)      99    8             java.lang.Object::<init> (1 bytes)
 total in heap  [0x0000000115c9a290,0x0000000115c9a4c8] = 568
 relocation     [0x0000000115c9a408,0x0000000115c9a418] = 16
 main code      [0x0000000115c9a420,0x0000000115c9a460] = 64
 stub code      [0x0000000115c9a460,0x0000000115c9a478] = 24
 metadata       [0x0000000115c9a478,0x0000000115c9a488] = 16
 scopes data    [0x0000000115c9a488,0x0000000115c9a490] = 8
 scopes pcs     [0x0000000115c9a490,0x0000000115c9a4c0] = 48
 dependencies   [0x0000000115c9a4c0,0x0000000115c9a4c8] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x0000000115c9a420, 0x0000000115c9a478]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012442d610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x0000000115c9a420: mov    0x8(%rsi),%r10d
  0x0000000115c9a424: movabs $0x800000000,%r12
  0x0000000115c9a42e: add    %r12,%r10
  0x0000000115c9a431: xor    %r12,%r12
  0x0000000115c9a434: cmp    %r10,%rax
  0x0000000115c9a437: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115c9a43d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115c9a440: sub    $0x18,%rsp
  0x0000000115c9a447: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x0000000115c9a44c: add    $0x10,%rsp
  0x0000000115c9a450: pop    %rbp
  0x0000000115c9a451: mov    0x108(%r15),%r10
  0x0000000115c9a458: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115c9a45b: retq   
  0x0000000115c9a45c: hlt    
  0x0000000115c9a45d: hlt    
  0x0000000115c9a45e: hlt    
  0x0000000115c9a45f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115c9a460: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115c9a465: callq  0x0000000115c9a46a
  0x0000000115c9a46a: subq   $0x5,(%rsp)
  0x0000000115c9a46f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115c9a474: hlt    
  0x0000000115c9a475: hlt    
  0x0000000115c9a476: hlt    
  0x0000000115c9a477: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9a220, 0x0000000115c9a240]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247eb070} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9a220: mov    0x24(%rdi),%ebx
  0x0000000115c9a223: shl    $0x3,%rbx
  0x0000000115c9a227: mov    0x10(%rbx),%rbx
  0x0000000115c9a22b: test   %rbx,%rbx
  0x0000000115c9a22e: je     0x0000000115c9a237
  0x0000000115c9a234: jmpq   *0x38(%rbx)
  0x0000000115c9a237: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9a23c: hlt    
  0x0000000115c9a23d: hlt    
  0x0000000115c9a23e: hlt    
  0x0000000115c9a23f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c99da0, 0x0000000115c99dd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247fbae8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c99da0: mov    0x14(%rsi),%ebx
  0x0000000115c99da3: shl    $0x3,%rbx
  0x0000000115c99da7: mov    0x28(%rbx),%ebx
  0x0000000115c99daa: shl    $0x3,%rbx
  0x0000000115c99dae: mov    0x24(%rbx),%ebx
  0x0000000115c99db1: shl    $0x3,%rbx
  0x0000000115c99db5: mov    0x10(%rbx),%rbx
  0x0000000115c99db9: test   %rbx,%rbx
  0x0000000115c99dbc: je     0x0000000115c99dc5
  0x0000000115c99dc2: jmpq   *0x38(%rbx)
  0x0000000115c99dc5: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c99dca: hlt    
  0x0000000115c99dcb: hlt    
  0x0000000115c99dcc: hlt    
  0x0000000115c99dcd: hlt    
  0x0000000115c99dce: hlt    
  0x0000000115c99dcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c99ba0, 0x0000000115c99bc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001247fbc00} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000115c99ba0: mov    0x8(%rsp),%rbx
  0x0000000115c99ba5: cmp    (%rsi),%rax
  0x0000000115c99ba8: mov    0x24(%rbx),%ebx
  0x0000000115c99bab: shl    $0x3,%rbx
  0x0000000115c99baf: mov    0x10(%rbx),%rbx
  0x0000000115c99bb3: test   %rbx,%rbx
  0x0000000115c99bb6: je     0x0000000115c99bbf
  0x0000000115c99bbc: jmpq   *0x38(%rbx)
  0x0000000115c99bbf: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c99bc4: hlt    
  0x0000000115c99bc5: hlt    
  0x0000000115c99bc6: hlt    
  0x0000000115c99bc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x0000000115c993a0, 0x0000000115c993c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124803fa8} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c993a0: mov    0x24(%rsi),%ebx
  0x0000000115c993a3: shl    $0x3,%rbx
  0x0000000115c993a7: mov    0x10(%rbx),%rbx
  0x0000000115c993ab: test   %rbx,%rbx
  0x0000000115c993ae: je     0x0000000115c993b7
  0x0000000115c993b4: jmpq   *0x38(%rbx)
  0x0000000115c993b7: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c993bc: hlt    
  0x0000000115c993bd: hlt    
  0x0000000115c993be: hlt    
  0x0000000115c993bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x0000000115c991a0, 0x0000000115c991d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248040c0} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c991a0: mov    0x14(%rsi),%ebx
  0x0000000115c991a3: shl    $0x3,%rbx
  0x0000000115c991a7: mov    0x28(%rbx),%ebx
  0x0000000115c991aa: shl    $0x3,%rbx
  0x0000000115c991ae: mov    0x24(%rbx),%ebx
  0x0000000115c991b1: shl    $0x3,%rbx
  0x0000000115c991b5: mov    0x10(%rbx),%rbx
  0x0000000115c991b9: test   %rbx,%rbx
  0x0000000115c991bc: je     0x0000000115c991c5
  0x0000000115c991c2: jmpq   *0x38(%rbx)
  0x0000000115c991c5: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c991ca: hlt    
  0x0000000115c991cb: hlt    
  0x0000000115c991cc: hlt    
  0x0000000115c991cd: hlt    
  0x0000000115c991ce: hlt    
  0x0000000115c991cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000115c98fa0, 0x0000000115c98fc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248041d8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c98fa0: cmp    (%rsi),%rax
  0x0000000115c98fa3: mov    0x24(%rdx),%ebx
  0x0000000115c98fa6: shl    $0x3,%rbx
  0x0000000115c98faa: mov    0x10(%rbx),%rbx
  0x0000000115c98fae: test   %rbx,%rbx
  0x0000000115c98fb1: je     0x0000000115c98fba
  0x0000000115c98fb7: jmpq   *0x38(%rbx)
  0x0000000115c98fba: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c98fbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c98da0, 0x0000000115c98dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124804480} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c98da0: mov    0x24(%r8),%ebx
  0x0000000115c98da4: shl    $0x3,%rbx
  0x0000000115c98da8: mov    0x10(%rbx),%rbx
  0x0000000115c98dac: test   %rbx,%rbx
  0x0000000115c98daf: je     0x0000000115c98db8
  0x0000000115c98db5: jmpq   *0x38(%rbx)
  0x0000000115c98db8: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c98dbd: hlt    
  0x0000000115c98dbe: hlt    
  0x0000000115c98dbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c98ba0, 0x0000000115c98bc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124804598} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c98ba0: mov    0x24(%rcx),%ebx
  0x0000000115c98ba3: shl    $0x3,%rbx
  0x0000000115c98ba7: mov    0x10(%rbx),%rbx
  0x0000000115c98bab: test   %rbx,%rbx
  0x0000000115c98bae: je     0x0000000115c98bb7
  0x0000000115c98bb4: jmpq   *0x38(%rbx)
  0x0000000115c98bb7: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c98bbc: hlt    
  0x0000000115c98bbd: hlt    
  0x0000000115c98bbe: hlt    
  0x0000000115c98bbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c987a0, 0x0000000115c987c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012480c2d0} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c987a0: mov    0x24(%rsi),%ebx
  0x0000000115c987a3: shl    $0x3,%rbx
  0x0000000115c987a7: mov    0x10(%rbx),%rbx
  0x0000000115c987ab: test   %rbx,%rbx
  0x0000000115c987ae: je     0x0000000115c987b7
  0x0000000115c987b4: jmpq   *0x38(%rbx)
  0x0000000115c987b7: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c987bc: hlt    
  0x0000000115c987bd: hlt    
  0x0000000115c987be: hlt    
  0x0000000115c987bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c97e20, 0x0000000115c97e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012481e208} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97e20: mov    0x24(%rcx),%ebx
  0x0000000115c97e23: shl    $0x3,%rbx
  0x0000000115c97e27: mov    0x10(%rbx),%rbx
  0x0000000115c97e2b: test   %rbx,%rbx
  0x0000000115c97e2e: je     0x0000000115c97e37
  0x0000000115c97e34: jmpq   *0x38(%rbx)
  0x0000000115c97e37: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c97e3c: hlt    
  0x0000000115c97e3d: hlt    
  0x0000000115c97e3e: hlt    
  0x0000000115c97e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c97c20, 0x0000000115c97c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012481fb08} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97c20: mov    0x24(%r8),%ebx
  0x0000000115c97c24: shl    $0x3,%rbx
  0x0000000115c97c28: mov    0x10(%rbx),%rbx
  0x0000000115c97c2c: test   %rbx,%rbx
  0x0000000115c97c2f: je     0x0000000115c97c38
  0x0000000115c97c35: jmpq   *0x38(%rbx)
  0x0000000115c97c38: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c97c3d: hlt    
  0x0000000115c97c3e: hlt    
  0x0000000115c97c3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000115c97a20, 0x0000000115c97a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124822670} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97a20: mov    0x14(%rsi),%ebx
  0x0000000115c97a23: shl    $0x3,%rbx
  0x0000000115c97a27: mov    0x28(%rbx),%ebx
  0x0000000115c97a2a: shl    $0x3,%rbx
  0x0000000115c97a2e: mov    0x24(%rbx),%ebx
  0x0000000115c97a31: shl    $0x3,%rbx
  0x0000000115c97a35: mov    0x10(%rbx),%rbx
  0x0000000115c97a39: test   %rbx,%rbx
  0x0000000115c97a3c: je     0x0000000115c97a45
  0x0000000115c97a42: jmpq   *0x38(%rbx)
  0x0000000115c97a45: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c97a4a: hlt    
  0x0000000115c97a4b: hlt    
  0x0000000115c97a4c: hlt    
  0x0000000115c97a4d: hlt    
  0x0000000115c97a4e: hlt    
  0x0000000115c97a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c97820, 0x0000000115c97840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124822788} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97820: cmp    (%rsi),%rax
  0x0000000115c97823: mov    0x24(%r9),%ebx
  0x0000000115c97827: shl    $0x3,%rbx
  0x0000000115c9782b: mov    0x10(%rbx),%rbx
  0x0000000115c9782f: test   %rbx,%rbx
  0x0000000115c97832: je     0x0000000115c9783b
  0x0000000115c97838: jmpq   *0x38(%rbx)
  0x0000000115c9783b: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000115c97620, 0x0000000115c97640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124841450} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c97620: mov    0x24(%r9),%ebx
  0x0000000115c97624: shl    $0x3,%rbx
  0x0000000115c97628: mov    0x10(%rbx),%rbx
  0x0000000115c9762c: test   %rbx,%rbx
  0x0000000115c9762f: je     0x0000000115c97638
  0x0000000115c97635: jmpq   *0x38(%rbx)
  0x0000000115c97638: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9763d: hlt    
  0x0000000115c9763e: hlt    
  0x0000000115c9763f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x0000000115c9b320, 0x0000000115c9b350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124841658} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9b320: mov    0x14(%rsi),%ebx
  0x0000000115c9b323: shl    $0x3,%rbx
  0x0000000115c9b327: mov    0x28(%rbx),%ebx
  0x0000000115c9b32a: shl    $0x3,%rbx
  0x0000000115c9b32e: mov    0x24(%rbx),%ebx
  0x0000000115c9b331: shl    $0x3,%rbx
  0x0000000115c9b335: mov    0x10(%rbx),%rbx
  0x0000000115c9b339: test   %rbx,%rbx
  0x0000000115c9b33c: je     0x0000000115c9b345
  0x0000000115c9b342: jmpq   *0x38(%rbx)
  0x0000000115c9b345: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9b34a: hlt    
  0x0000000115c9b34b: hlt    
  0x0000000115c9b34c: hlt    
  0x0000000115c9b34d: hlt    
  0x0000000115c9b34e: hlt    
  0x0000000115c9b34f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000115c9b520, 0x0000000115c9b540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124841770} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9b520: cmp    (%rsi),%rax
  0x0000000115c9b523: mov    0x24(%rdi),%ebx
  0x0000000115c9b526: shl    $0x3,%rbx
  0x0000000115c9b52a: mov    0x10(%rbx),%rbx
  0x0000000115c9b52e: test   %rbx,%rbx
  0x0000000115c9b531: je     0x0000000115c9b53a
  0x0000000115c9b537: jmpq   *0x38(%rbx)
  0x0000000115c9b53a: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9b53f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9b720, 0x0000000115c9b740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124842870} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9b720: mov    0x24(%r9),%ebx
  0x0000000115c9b724: shl    $0x3,%rbx
  0x0000000115c9b728: mov    0x10(%rbx),%rbx
  0x0000000115c9b72c: test   %rbx,%rbx
  0x0000000115c9b72f: je     0x0000000115c9b738
  0x0000000115c9b735: jmpq   *0x38(%rbx)
  0x0000000115c9b738: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9b73d: hlt    
  0x0000000115c9b73e: hlt    
  0x0000000115c9b73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9b920, 0x0000000115c9b950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124842c08} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9b920: mov    0x14(%rsi),%ebx
  0x0000000115c9b923: shl    $0x3,%rbx
  0x0000000115c9b927: mov    0x28(%rbx),%ebx
  0x0000000115c9b92a: shl    $0x3,%rbx
  0x0000000115c9b92e: mov    0x24(%rbx),%ebx
  0x0000000115c9b931: shl    $0x3,%rbx
  0x0000000115c9b935: mov    0x10(%rbx),%rbx
  0x0000000115c9b939: test   %rbx,%rbx
  0x0000000115c9b93c: je     0x0000000115c9b945
  0x0000000115c9b942: jmpq   *0x38(%rbx)
  0x0000000115c9b945: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9b94a: hlt    
  0x0000000115c9b94b: hlt    
  0x0000000115c9b94c: hlt    
  0x0000000115c9b94d: hlt    
  0x0000000115c9b94e: hlt    
  0x0000000115c9b94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x0000000115c9bb20, 0x0000000115c9bb50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248434f8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9bb20: mov    0x14(%rsi),%ebx
  0x0000000115c9bb23: shl    $0x3,%rbx
  0x0000000115c9bb27: mov    0x28(%rbx),%ebx
  0x0000000115c9bb2a: shl    $0x3,%rbx
  0x0000000115c9bb2e: mov    0x24(%rbx),%ebx
  0x0000000115c9bb31: shl    $0x3,%rbx
  0x0000000115c9bb35: mov    0x10(%rbx),%rbx
  0x0000000115c9bb39: test   %rbx,%rbx
  0x0000000115c9bb3c: je     0x0000000115c9bb45
  0x0000000115c9bb42: jmpq   *0x38(%rbx)
  0x0000000115c9bb45: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9bb4a: hlt    
  0x0000000115c9bb4b: hlt    
  0x0000000115c9bb4c: hlt    
  0x0000000115c9bb4d: hlt    
  0x0000000115c9bb4e: hlt    
  0x0000000115c9bb4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x0000000115c9bd20, 0x0000000115c9bd40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124843610} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9bd20: cmp    (%rsi),%rax
  0x0000000115c9bd23: mov    0x24(%r9),%ebx
  0x0000000115c9bd27: shl    $0x3,%rbx
  0x0000000115c9bd2b: mov    0x10(%rbx),%rbx
  0x0000000115c9bd2f: test   %rbx,%rbx
  0x0000000115c9bd32: je     0x0000000115c9bd3b
  0x0000000115c9bd38: jmpq   *0x38(%rbx)
  0x0000000115c9bd3b: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     131   29             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x0000000115c9ec10,0x0000000115c9eeb8] = 680
 relocation     [0x0000000115c9ed88,0x0000000115c9ed98] = 16
 main code      [0x0000000115c9eda0,0x0000000115c9ee00] = 96
 stub code      [0x0000000115c9ee00,0x0000000115c9ee18] = 24
 metadata       [0x0000000115c9ee18,0x0000000115c9ee20] = 8
 scopes data    [0x0000000115c9ee20,0x0000000115c9ee40] = 32
 scopes pcs     [0x0000000115c9ee40,0x0000000115c9eeb0] = 112
 dependencies   [0x0000000115c9eeb0,0x0000000115c9eeb8] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x0000000115c9eda0, 0x0000000115c9ee18]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000124437300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x0000000115c9eda0: mov    0x8(%rsi),%r10d
  0x0000000115c9eda4: movabs $0x800000000,%r12
  0x0000000115c9edae: add    %r12,%r10
  0x0000000115c9edb1: xor    %r12,%r12
  0x0000000115c9edb4: cmp    %r10,%rax
  0x0000000115c9edb7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115c9edbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115c9edc0: mov    %eax,-0x14000(%rsp)
  0x0000000115c9edc7: push   %rbp
  0x0000000115c9edc8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x0000000115c9edcc: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x0000000115c9edd1: test   %r11d,%r11d
  0x0000000115c9edd4: jne    0x0000000115c9edeb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x0000000115c9edd6: mov    $0x1,%eax
  0x0000000115c9eddb: add    $0x10,%rsp
  0x0000000115c9eddf: pop    %rbp
  0x0000000115c9ede0: mov    0x108(%r15),%r10
  0x0000000115c9ede7: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115c9edea: retq   
  0x0000000115c9edeb: mov    $0xffffff4d,%esi
  0x0000000115c9edf0: mov    %r11d,%ebp
  0x0000000115c9edf3: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9edf8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x0000000115c9edfa: hlt    
  0x0000000115c9edfb: hlt    
  0x0000000115c9edfc: hlt    
  0x0000000115c9edfd: hlt    
  0x0000000115c9edfe: hlt    
  0x0000000115c9edff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115c9ee00: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115c9ee05: callq  0x0000000115c9ee0a
  0x0000000115c9ee0a: subq   $0x5,(%rsp)
  0x0000000115c9ee0f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115c9ee14: hlt    
  0x0000000115c9ee15: hlt    
  0x0000000115c9ee16: hlt    
  0x0000000115c9ee17: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000115c9e920, 0x0000000115c9e940]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124846180} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9e920: mov    0x24(%r9),%ebx
  0x0000000115c9e924: shl    $0x3,%rbx
  0x0000000115c9e928: mov    0x10(%rbx),%rbx
  0x0000000115c9e92c: test   %rbx,%rbx
  0x0000000115c9e92f: je     0x0000000115c9e938
  0x0000000115c9e935: jmpq   *0x38(%rbx)
  0x0000000115c9e938: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9e93d: hlt    
  0x0000000115c9e93e: hlt    
  0x0000000115c9e93f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9e720, 0x0000000115c9e748]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124846f80} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x0000000115c9e720: mov    0x10(%rsp),%rbx
  0x0000000115c9e725: mov    0x24(%rbx),%ebx
  0x0000000115c9e728: shl    $0x3,%rbx
  0x0000000115c9e72c: mov    0x10(%rbx),%rbx
  0x0000000115c9e730: test   %rbx,%rbx
  0x0000000115c9e733: je     0x0000000115c9e73c
  0x0000000115c9e739: jmpq   *0x38(%rbx)
  0x0000000115c9e73c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9e741: hlt    
  0x0000000115c9e742: hlt    
  0x0000000115c9e743: hlt    
  0x0000000115c9e744: hlt    
  0x0000000115c9e745: hlt    
  0x0000000115c9e746: hlt    
  0x0000000115c9e747: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x0000000115c9e520, 0x0000000115c9e550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124847098} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9e520: mov    0x14(%rsi),%ebx
  0x0000000115c9e523: shl    $0x3,%rbx
  0x0000000115c9e527: mov    0x28(%rbx),%ebx
  0x0000000115c9e52a: shl    $0x3,%rbx
  0x0000000115c9e52e: mov    0x24(%rbx),%ebx
  0x0000000115c9e531: shl    $0x3,%rbx
  0x0000000115c9e535: mov    0x10(%rbx),%rbx
  0x0000000115c9e539: test   %rbx,%rbx
  0x0000000115c9e53c: je     0x0000000115c9e545
  0x0000000115c9e542: jmpq   *0x38(%rbx)
  0x0000000115c9e545: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9e54a: hlt    
  0x0000000115c9e54b: hlt    
  0x0000000115c9e54c: hlt    
  0x0000000115c9e54d: hlt    
  0x0000000115c9e54e: hlt    
  0x0000000115c9e54f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000115c9e320, 0x0000000115c9e340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248471b0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9e320: cmp    (%rsi),%rax
  0x0000000115c9e323: mov    0x24(%rdi),%ebx
  0x0000000115c9e326: shl    $0x3,%rbx
  0x0000000115c9e32a: mov    0x10(%rbx),%rbx
  0x0000000115c9e32e: test   %rbx,%rbx
  0x0000000115c9e331: je     0x0000000115c9e33a
  0x0000000115c9e337: jmpq   *0x38(%rbx)
  0x0000000115c9e33a: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9e33f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9e120, 0x0000000115c9e150]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124847318} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x0000000115c9e120: mov    0x14(%rsi),%ebx
  0x0000000115c9e123: shl    $0x3,%rbx
  0x0000000115c9e127: mov    0x28(%rbx),%ebx
  0x0000000115c9e12a: shl    $0x3,%rbx
  0x0000000115c9e12e: mov    0x24(%rbx),%ebx
  0x0000000115c9e131: shl    $0x3,%rbx
  0x0000000115c9e135: mov    0x10(%rbx),%rbx
  0x0000000115c9e139: test   %rbx,%rbx
  0x0000000115c9e13c: je     0x0000000115c9e145
  0x0000000115c9e142: jmpq   *0x38(%rbx)
  0x0000000115c9e145: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9e14a: hlt    
  0x0000000115c9e14b: hlt    
  0x0000000115c9e14c: hlt    
  0x0000000115c9e14d: hlt    
  0x0000000115c9e14e: hlt    
  0x0000000115c9e14f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9df20, 0x0000000115c9df48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248482b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x0000000115c9df20: mov    0x18(%rsp),%rbx
  0x0000000115c9df25: mov    0x24(%rbx),%ebx
  0x0000000115c9df28: shl    $0x3,%rbx
  0x0000000115c9df2c: mov    0x10(%rbx),%rbx
  0x0000000115c9df30: test   %rbx,%rbx
  0x0000000115c9df33: je     0x0000000115c9df3c
  0x0000000115c9df39: jmpq   *0x38(%rbx)
  0x0000000115c9df3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9df41: hlt    
  0x0000000115c9df42: hlt    
  0x0000000115c9df43: hlt    
  0x0000000115c9df44: hlt    
  0x0000000115c9df45: hlt    
  0x0000000115c9df46: hlt    
  0x0000000115c9df47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x0000000115c9dd20, 0x0000000115c9dd50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248483d0} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9dd20: mov    0x14(%rsi),%ebx
  0x0000000115c9dd23: shl    $0x3,%rbx
  0x0000000115c9dd27: mov    0x28(%rbx),%ebx
  0x0000000115c9dd2a: shl    $0x3,%rbx
  0x0000000115c9dd2e: mov    0x24(%rbx),%ebx
  0x0000000115c9dd31: shl    $0x3,%rbx
  0x0000000115c9dd35: mov    0x10(%rbx),%rbx
  0x0000000115c9dd39: test   %rbx,%rbx
  0x0000000115c9dd3c: je     0x0000000115c9dd45
  0x0000000115c9dd42: jmpq   *0x38(%rbx)
  0x0000000115c9dd45: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9dd4a: hlt    
  0x0000000115c9dd4b: hlt    
  0x0000000115c9dd4c: hlt    
  0x0000000115c9dd4d: hlt    
  0x0000000115c9dd4e: hlt    
  0x0000000115c9dd4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9db20, 0x0000000115c9db40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248484e8} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9db20: cmp    (%rsi),%rax
  0x0000000115c9db23: mov    0x24(%r8),%ebx
  0x0000000115c9db27: shl    $0x3,%rbx
  0x0000000115c9db2b: mov    0x10(%rbx),%rbx
  0x0000000115c9db2f: test   %rbx,%rbx
  0x0000000115c9db32: je     0x0000000115c9db3b
  0x0000000115c9db38: jmpq   *0x38(%rbx)
  0x0000000115c9db3b: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9d920, 0x0000000115c9d950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124848650} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x0000000115c9d920: mov    0x14(%rsi),%ebx
  0x0000000115c9d923: shl    $0x3,%rbx
  0x0000000115c9d927: mov    0x28(%rbx),%ebx
  0x0000000115c9d92a: shl    $0x3,%rbx
  0x0000000115c9d92e: mov    0x24(%rbx),%ebx
  0x0000000115c9d931: shl    $0x3,%rbx
  0x0000000115c9d935: mov    0x10(%rbx),%rbx
  0x0000000115c9d939: test   %rbx,%rbx
  0x0000000115c9d93c: je     0x0000000115c9d945
  0x0000000115c9d942: jmpq   *0x38(%rbx)
  0x0000000115c9d945: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9d94a: hlt    
  0x0000000115c9d94b: hlt    
  0x0000000115c9d94c: hlt    
  0x0000000115c9d94d: hlt    
  0x0000000115c9d94e: hlt    
  0x0000000115c9d94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000115c9d720, 0x0000000115c9d740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124848948} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9d720: mov    0x24(%rcx),%ebx
  0x0000000115c9d723: shl    $0x3,%rbx
  0x0000000115c9d727: mov    0x10(%rbx),%rbx
  0x0000000115c9d72b: test   %rbx,%rbx
  0x0000000115c9d72e: je     0x0000000115c9d737
  0x0000000115c9d734: jmpq   *0x38(%rbx)
  0x0000000115c9d737: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9d73c: hlt    
  0x0000000115c9d73d: hlt    
  0x0000000115c9d73e: hlt    
  0x0000000115c9d73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x0000000115c9d520, 0x0000000115c9d550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124848a60} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9d520: mov    0x14(%rsi),%ebx
  0x0000000115c9d523: shl    $0x3,%rbx
  0x0000000115c9d527: mov    0x28(%rbx),%ebx
  0x0000000115c9d52a: shl    $0x3,%rbx
  0x0000000115c9d52e: mov    0x24(%rbx),%ebx
  0x0000000115c9d531: shl    $0x3,%rbx
  0x0000000115c9d535: mov    0x10(%rbx),%rbx
  0x0000000115c9d539: test   %rbx,%rbx
  0x0000000115c9d53c: je     0x0000000115c9d545
  0x0000000115c9d542: jmpq   *0x38(%rbx)
  0x0000000115c9d545: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9d54a: hlt    
  0x0000000115c9d54b: hlt    
  0x0000000115c9d54c: hlt    
  0x0000000115c9d54d: hlt    
  0x0000000115c9d54e: hlt    
  0x0000000115c9d54f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000115c9d320, 0x0000000115c9d340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124848b78} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9d320: cmp    (%rsi),%rax
  0x0000000115c9d323: mov    0x24(%r8),%ebx
  0x0000000115c9d327: shl    $0x3,%rbx
  0x0000000115c9d32b: mov    0x10(%rbx),%rbx
  0x0000000115c9d32f: test   %rbx,%rbx
  0x0000000115c9d332: je     0x0000000115c9d33b
  0x0000000115c9d338: jmpq   *0x38(%rbx)
  0x0000000115c9d33b: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     149   42             java.lang.String::charAt (25 bytes)
 total in heap  [0x0000000115c9cd90,0x0000000115c9d138] = 936
 relocation     [0x0000000115c9cf08,0x0000000115c9cf18] = 16
 main code      [0x0000000115c9cf20,0x0000000115c9cfc0] = 160
 stub code      [0x0000000115c9cfc0,0x0000000115c9cfd8] = 24
 metadata       [0x0000000115c9cfd8,0x0000000115c9cff0] = 24
 scopes data    [0x0000000115c9cff0,0x0000000115c9d050] = 96
 scopes pcs     [0x0000000115c9d050,0x0000000115c9d120] = 208
 dependencies   [0x0000000115c9d120,0x0000000115c9d128] = 8
 nul chk table  [0x0000000115c9d128,0x0000000115c9d138] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x0000000115c9cf20, 0x0000000115c9cfd8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001244324b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000115c9cf20: mov    0x8(%rsi),%r10d
  0x0000000115c9cf24: movabs $0x800000000,%r12
  0x0000000115c9cf2e: add    %r12,%r10
  0x0000000115c9cf31: xor    %r12,%r12
  0x0000000115c9cf34: cmp    %r10,%rax
  0x0000000115c9cf37: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115c9cf3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115c9cf40: mov    %eax,-0x14000(%rsp)
  0x0000000115c9cf47: push   %rbp
  0x0000000115c9cf48: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x0000000115c9cf4c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000115c9cf51: test   %r10d,%r10d
  0x0000000115c9cf54: jne    0x0000000115c9cf7d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000115c9cf56: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x0000000115c9cf59: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000115c9cfa6
  0x0000000115c9cf5e: cmp    %r10d,%edx
  0x0000000115c9cf61: jae    0x0000000115c9cf96
  0x0000000115c9cf63: lea    (%r12,%rbp,8),%r10
  0x0000000115c9cf67: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000115c9cf6d: add    $0x20,%rsp
  0x0000000115c9cf71: pop    %rbp
  0x0000000115c9cf72: mov    0x108(%r15),%r10
  0x0000000115c9cf79: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115c9cf7c: retq   
  0x0000000115c9cf7d: mov    %rsi,%rbp
  0x0000000115c9cf80: mov    %edx,(%rsp)
  0x0000000115c9cf83: mov    %r10d,0x4(%rsp)
  0x0000000115c9cf88: mov    $0xffffff4d,%esi
  0x0000000115c9cf8d: xchg   %ax,%ax
  0x0000000115c9cf8f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9cf94: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000115c9cf96: mov    $0xffffffe5,%esi
  0x0000000115c9cf9b: mov    %edx,0x4(%rsp)
  0x0000000115c9cf9f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9cfa4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000115c9cfa6: mov    $0xfffffff6,%esi
  0x0000000115c9cfab: mov    %edx,0x4(%rsp)
  0x0000000115c9cfaf: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9cfb4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x0000000115c9cfb6: hlt    
  0x0000000115c9cfb7: hlt    
  0x0000000115c9cfb8: hlt    
  0x0000000115c9cfb9: hlt    
  0x0000000115c9cfba: hlt    
  0x0000000115c9cfbb: hlt    
  0x0000000115c9cfbc: hlt    
  0x0000000115c9cfbd: hlt    
  0x0000000115c9cfbe: hlt    
  0x0000000115c9cfbf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115c9cfc0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115c9cfc5: callq  0x0000000115c9cfca
  0x0000000115c9cfca: subq   $0x5,(%rsp)
  0x0000000115c9cfcf: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115c9cfd4: hlt    
  0x0000000115c9cfd5: hlt    
  0x0000000115c9cfd6: hlt    
  0x0000000115c9cfd7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     151   43             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x0000000115c9ca90,0x0000000115c9cd60] = 720
 relocation     [0x0000000115c9cc08,0x0000000115c9cc18] = 16
 main code      [0x0000000115c9cc20,0x0000000115c9cc80] = 96
 stub code      [0x0000000115c9cc80,0x0000000115c9cc98] = 24
 metadata       [0x0000000115c9cc98,0x0000000115c9cca0] = 8
 scopes data    [0x0000000115c9cca0,0x0000000115c9ccc8] = 40
 scopes pcs     [0x0000000115c9ccc8,0x0000000115c9cd48] = 128
 dependencies   [0x0000000115c9cd48,0x0000000115c9cd50] = 8
 nul chk table  [0x0000000115c9cd50,0x0000000115c9cd60] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x0000000115c9cc20, 0x0000000115c9cc98]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000124585988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000115c9cc20: mov    %eax,-0x14000(%rsp)
  0x0000000115c9cc27: push   %rbp
  0x0000000115c9cc28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x0000000115c9cc2c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000115c9cc5e
  0x0000000115c9cc30: cmp    %r10d,%edx
  0x0000000115c9cc33: jae    0x0000000115c9cc4a
  0x0000000115c9cc35: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x0000000115c9cc3a: add    $0x20,%rsp
  0x0000000115c9cc3e: pop    %rbp
  0x0000000115c9cc3f: mov    0x108(%r15),%r10
  0x0000000115c9cc46: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115c9cc49: retq   
  0x0000000115c9cc4a: mov    %rsi,%rbp
  0x0000000115c9cc4d: mov    %edx,0x4(%rsp)
  0x0000000115c9cc51: mov    $0xffffffe5,%esi
  0x0000000115c9cc56: nop
  0x0000000115c9cc57: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9cc5c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x0000000115c9cc5e: mov    %rsi,%rbp
  0x0000000115c9cc61: mov    %edx,0x4(%rsp)
  0x0000000115c9cc65: mov    $0xfffffff6,%esi
  0x0000000115c9cc6a: nop
  0x0000000115c9cc6b: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115c9cc70: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x0000000115c9cc72: hlt    
  0x0000000115c9cc73: hlt    
  0x0000000115c9cc74: hlt    
  0x0000000115c9cc75: hlt    
  0x0000000115c9cc76: hlt    
  0x0000000115c9cc77: hlt    
  0x0000000115c9cc78: hlt    
  0x0000000115c9cc79: hlt    
  0x0000000115c9cc7a: hlt    
  0x0000000115c9cc7b: hlt    
  0x0000000115c9cc7c: hlt    
  0x0000000115c9cc7d: hlt    
  0x0000000115c9cc7e: hlt    
  0x0000000115c9cc7f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115c9cc80: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115c9cc85: callq  0x0000000115c9cc8a
  0x0000000115c9cc8a: subq   $0x5,(%rsp)
  0x0000000115c9cc8f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115c9cc94: hlt    
  0x0000000115c9cc95: hlt    
  0x0000000115c9cc96: hlt    
  0x0000000115c9cc97: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9ca20, 0x0000000115c9ca48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124849cc8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9ca20: mov    0x20(%rsp),%rbx
  0x0000000115c9ca25: mov    0x24(%rbx),%ebx
  0x0000000115c9ca28: shl    $0x3,%rbx
  0x0000000115c9ca2c: mov    0x10(%rbx),%rbx
  0x0000000115c9ca30: test   %rbx,%rbx
  0x0000000115c9ca33: je     0x0000000115c9ca3c
  0x0000000115c9ca39: jmpq   *0x38(%rbx)
  0x0000000115c9ca3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9ca41: hlt    
  0x0000000115c9ca42: hlt    
  0x0000000115c9ca43: hlt    
  0x0000000115c9ca44: hlt    
  0x0000000115c9ca45: hlt    
  0x0000000115c9ca46: hlt    
  0x0000000115c9ca47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9c820, 0x0000000115c9c850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124849e30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9c820: mov    0x14(%rsi),%ebx
  0x0000000115c9c823: shl    $0x3,%rbx
  0x0000000115c9c827: mov    0x28(%rbx),%ebx
  0x0000000115c9c82a: shl    $0x3,%rbx
  0x0000000115c9c82e: mov    0x24(%rbx),%ebx
  0x0000000115c9c831: shl    $0x3,%rbx
  0x0000000115c9c835: mov    0x10(%rbx),%rbx
  0x0000000115c9c839: test   %rbx,%rbx
  0x0000000115c9c83c: je     0x0000000115c9c845
  0x0000000115c9c842: jmpq   *0x38(%rbx)
  0x0000000115c9c845: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9c84a: hlt    
  0x0000000115c9c84b: hlt    
  0x0000000115c9c84c: hlt    
  0x0000000115c9c84d: hlt    
  0x0000000115c9c84e: hlt    
  0x0000000115c9c84f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9c3a0, 0x0000000115c9c3c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484aea8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9c3a0: mov    0x28(%rsp),%rbx
  0x0000000115c9c3a5: mov    0x24(%rbx),%ebx
  0x0000000115c9c3a8: shl    $0x3,%rbx
  0x0000000115c9c3ac: mov    0x10(%rbx),%rbx
  0x0000000115c9c3b0: test   %rbx,%rbx
  0x0000000115c9c3b3: je     0x0000000115c9c3bc
  0x0000000115c9c3b9: jmpq   *0x38(%rbx)
  0x0000000115c9c3bc: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9c3c1: hlt    
  0x0000000115c9c3c2: hlt    
  0x0000000115c9c3c3: hlt    
  0x0000000115c9c3c4: hlt    
  0x0000000115c9c3c5: hlt    
  0x0000000115c9c3c6: hlt    
  0x0000000115c9c3c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9c1a0, 0x0000000115c9c1d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484b010} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9c1a0: mov    0x14(%rsi),%ebx
  0x0000000115c9c1a3: shl    $0x3,%rbx
  0x0000000115c9c1a7: mov    0x28(%rbx),%ebx
  0x0000000115c9c1aa: shl    $0x3,%rbx
  0x0000000115c9c1ae: mov    0x24(%rbx),%ebx
  0x0000000115c9c1b1: shl    $0x3,%rbx
  0x0000000115c9c1b5: mov    0x10(%rbx),%rbx
  0x0000000115c9c1b9: test   %rbx,%rbx
  0x0000000115c9c1bc: je     0x0000000115c9c1c5
  0x0000000115c9c1c2: jmpq   *0x38(%rbx)
  0x0000000115c9c1c5: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9c1ca: hlt    
  0x0000000115c9c1cb: hlt    
  0x0000000115c9c1cc: hlt    
  0x0000000115c9c1cd: hlt    
  0x0000000115c9c1ce: hlt    
  0x0000000115c9c1cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x0000000115c9bf20, 0x0000000115c9bf40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484b218} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9bf20: mov    0x24(%rcx),%ebx
  0x0000000115c9bf23: shl    $0x3,%rbx
  0x0000000115c9bf27: mov    0x10(%rbx),%rbx
  0x0000000115c9bf2b: test   %rbx,%rbx
  0x0000000115c9bf2e: je     0x0000000115c9bf37
  0x0000000115c9bf34: jmpq   *0x38(%rbx)
  0x0000000115c9bf37: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9bf3c: hlt    
  0x0000000115c9bf3d: hlt    
  0x0000000115c9bf3e: hlt    
  0x0000000115c9bf3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115ca1d20, 0x0000000115ca1d48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484c938} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca1d20: mov    0x30(%rsp),%rbx
  0x0000000115ca1d25: mov    0x24(%rbx),%ebx
  0x0000000115ca1d28: shl    $0x3,%rbx
  0x0000000115ca1d2c: mov    0x10(%rbx),%rbx
  0x0000000115ca1d30: test   %rbx,%rbx
  0x0000000115ca1d33: je     0x0000000115ca1d3c
  0x0000000115ca1d39: jmpq   *0x38(%rbx)
  0x0000000115ca1d3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca1d41: hlt    
  0x0000000115ca1d42: hlt    
  0x0000000115ca1d43: hlt    
  0x0000000115ca1d44: hlt    
  0x0000000115ca1d45: hlt    
  0x0000000115ca1d46: hlt    
  0x0000000115ca1d47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x0000000115ca1b20, 0x0000000115ca1b50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484ca50} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115ca1b20: mov    0x14(%rsi),%ebx
  0x0000000115ca1b23: shl    $0x3,%rbx
  0x0000000115ca1b27: mov    0x28(%rbx),%ebx
  0x0000000115ca1b2a: shl    $0x3,%rbx
  0x0000000115ca1b2e: mov    0x24(%rbx),%ebx
  0x0000000115ca1b31: shl    $0x3,%rbx
  0x0000000115ca1b35: mov    0x10(%rbx),%rbx
  0x0000000115ca1b39: test   %rbx,%rbx
  0x0000000115ca1b3c: je     0x0000000115ca1b45
  0x0000000115ca1b42: jmpq   *0x38(%rbx)
  0x0000000115ca1b45: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca1b4a: hlt    
  0x0000000115ca1b4b: hlt    
  0x0000000115ca1b4c: hlt    
  0x0000000115ca1b4d: hlt    
  0x0000000115ca1b4e: hlt    
  0x0000000115ca1b4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x0000000115ca1920, 0x0000000115ca1940]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484cb68} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115ca1920: cmp    (%rsi),%rax
  0x0000000115ca1923: mov    0x24(%r8),%ebx
  0x0000000115ca1927: shl    $0x3,%rbx
  0x0000000115ca192b: mov    0x10(%rbx),%rbx
  0x0000000115ca192f: test   %rbx,%rbx
  0x0000000115ca1932: je     0x0000000115ca193b
  0x0000000115ca1938: jmpq   *0x38(%rbx)
  0x0000000115ca193b: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca1720, 0x0000000115ca1750]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484ccd0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca1720: mov    0x14(%rsi),%ebx
  0x0000000115ca1723: shl    $0x3,%rbx
  0x0000000115ca1727: mov    0x28(%rbx),%ebx
  0x0000000115ca172a: shl    $0x3,%rbx
  0x0000000115ca172e: mov    0x24(%rbx),%ebx
  0x0000000115ca1731: shl    $0x3,%rbx
  0x0000000115ca1735: mov    0x10(%rbx),%rbx
  0x0000000115ca1739: test   %rbx,%rbx
  0x0000000115ca173c: je     0x0000000115ca1745
  0x0000000115ca1742: jmpq   *0x38(%rbx)
  0x0000000115ca1745: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca174a: hlt    
  0x0000000115ca174b: hlt    
  0x0000000115ca174c: hlt    
  0x0000000115ca174d: hlt    
  0x0000000115ca174e: hlt    
  0x0000000115ca174f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115ca1520, 0x0000000115ca1548]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484de28} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca1520: mov    0x38(%rsp),%rbx
  0x0000000115ca1525: mov    0x24(%rbx),%ebx
  0x0000000115ca1528: shl    $0x3,%rbx
  0x0000000115ca152c: mov    0x10(%rbx),%rbx
  0x0000000115ca1530: test   %rbx,%rbx
  0x0000000115ca1533: je     0x0000000115ca153c
  0x0000000115ca1539: jmpq   *0x38(%rbx)
  0x0000000115ca153c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca1541: hlt    
  0x0000000115ca1542: hlt    
  0x0000000115ca1543: hlt    
  0x0000000115ca1544: hlt    
  0x0000000115ca1545: hlt    
  0x0000000115ca1546: hlt    
  0x0000000115ca1547: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca1320, 0x0000000115ca1350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484df90} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca1320: mov    0x14(%rsi),%ebx
  0x0000000115ca1323: shl    $0x3,%rbx
  0x0000000115ca1327: mov    0x28(%rbx),%ebx
  0x0000000115ca132a: shl    $0x3,%rbx
  0x0000000115ca132e: mov    0x24(%rbx),%ebx
  0x0000000115ca1331: shl    $0x3,%rbx
  0x0000000115ca1335: mov    0x10(%rbx),%rbx
  0x0000000115ca1339: test   %rbx,%rbx
  0x0000000115ca133c: je     0x0000000115ca1345
  0x0000000115ca1342: jmpq   *0x38(%rbx)
  0x0000000115ca1345: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca134a: hlt    
  0x0000000115ca134b: hlt    
  0x0000000115ca134c: hlt    
  0x0000000115ca134d: hlt    
  0x0000000115ca134e: hlt    
  0x0000000115ca134f: hlt    
Compiled method (c2)     183   55             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x0000000115ca3910,0x0000000115ca4728] = 3608
 relocation     [0x0000000115ca3a88,0x0000000115ca3ab8] = 48
 main code      [0x0000000115ca3ac0,0x0000000115ca3ee0] = 1056
 stub code      [0x0000000115ca3ee0,0x0000000115ca3f08] = 40
 metadata       [0x0000000115ca3f08,0x0000000115ca3f38] = 48
 scopes data    [0x0000000115ca3f38,0x0000000115ca4138] = 512
 scopes pcs     [0x0000000115ca4138,0x0000000115ca46d8] = 1440
 dependencies   [0x0000000115ca46d8,0x0000000115ca46e0] = 8
 handler table  [0x0000000115ca46e0,0x0000000115ca46f8] = 24
 nul chk table  [0x0000000115ca46f8,0x0000000115ca4728] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x0000000115ca3ac0, 0x0000000115ca3f08]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001247ca6f0} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x0000000115ca3ac0: mov    0x8(%rsi),%r10d
  0x0000000115ca3ac4: movabs $0x800000000,%r12
  0x0000000115ca3ace: add    %r12,%r10
  0x0000000115ca3ad1: xor    %r12,%r12
  0x0000000115ca3ad4: cmp    %r10,%rax
  0x0000000115ca3ad7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115ca3add: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115ca3ae0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca3ae7: push   %rbp
  0x0000000115ca3ae8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x0000000115ca3aec: mov    %rsi,%r10
  0x0000000115ca3aef: mov    %rdx,%r9
  0x0000000115ca3af2: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x0000000115ca3ea3
  0x0000000115ca3af6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x0000000115ca3eb2
  0x0000000115ca3afb: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000115ca3aff: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000115ca3b02: cmp    $0xffff,%r11d
  0x0000000115ca3b09: jg     0x0000000115ca3e6e  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000115ca3b0f: mov    %rsi,%rdi
  0x0000000115ca3b12: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x0000000115ca3b16: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x0000000115ca3ebe
  0x0000000115ca3b1b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x0000000115ca3b1e: mov    %r11d,%r10d
  0x0000000115ca3b21: add    %edx,%r10d
  0x0000000115ca3b24: add    $0x2,%r10d
  0x0000000115ca3b28: cmp    %ebx,%r10d
  0x0000000115ca3b2b: jg     0x0000000115ca3d59  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3b31: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000115ca3b34: mov    %r11d,%esi
  0x0000000115ca3b37: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x0000000115ca3b3a: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x0000000115ca3b3e: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x0000000115ca3eca
  0x0000000115ca3b43: mov    %edx,%r10d
  0x0000000115ca3b46: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x0000000115ca3b49: cmp    %ebp,%edx
  0x0000000115ca3b4b: jae    0x0000000115ca3de6
  0x0000000115ca3b51: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000115ca3b55: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x0000000115ca3b5a: mov    %edx,%r14d
  0x0000000115ca3b5d: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000115ca3b61: cmp    %ebp,%r10d
  0x0000000115ca3b64: jae    0x0000000115ca3e12
  0x0000000115ca3b6a: movslq %edx,%rsi
  0x0000000115ca3b6d: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000115ca3b72: test   %r11d,%r11d
  0x0000000115ca3b75: jle    0x0000000115ca3d42  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000115ca3b7b: test   %ecx,%ecx
  0x0000000115ca3b7d: jne    0x0000000115ca3e3e
  0x0000000115ca3b83: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x0000000115ca3e3e
  0x0000000115ca3b88: test   %r10d,%r10d
  0x0000000115ca3b8b: jbe    0x0000000115ca3e3e
  0x0000000115ca3b91: movslq %r10d,%rcx
  0x0000000115ca3b94: movslq %r11d,%r13
  0x0000000115ca3b97: mov    %r13,%r10
  0x0000000115ca3b9a: dec    %r10
  0x0000000115ca3b9d: cmp    %rcx,%r10
  0x0000000115ca3ba0: jae    0x0000000115ca3e3e
  0x0000000115ca3ba6: cmp    %ebp,%r14d
  0x0000000115ca3ba9: jae    0x0000000115ca3e3e
  0x0000000115ca3baf: movslq %ebp,%r10
  0x0000000115ca3bb2: movslq %r14d,%rcx
  0x0000000115ca3bb5: add    %r13,%rcx
  0x0000000115ca3bb8: dec    %rcx
  0x0000000115ca3bbb: cmp    %r10,%rcx
  0x0000000115ca3bbe: jae    0x0000000115ca3e3e
  0x0000000115ca3bc4: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3bca: mov    %ecx,%ebp
  0x0000000115ca3bcc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3bd0: mov    %ebp,%r10d
  0x0000000115ca3bd3: dec    %r10d
  0x0000000115ca3bd6: cmp    $0x7f,%r10d
  0x0000000115ca3bda: jae    0x0000000115ca3e86  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3be0: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3be4: mov    %r11d,%r13d
  0x0000000115ca3be7: add    $0xfffffffd,%r13d
  0x0000000115ca3beb: lea    (%r12,%r8,8),%rsi
  0x0000000115ca3bef: mov    $0x1,%ecx
  0x0000000115ca3bf4: mov    $0x80000000,%r8d
  0x0000000115ca3bfa: cmp    %r13d,%r11d
  0x0000000115ca3bfd: cmovl  %r8d,%r13d
  0x0000000115ca3c01: cmp    $0x1,%r13d
  0x0000000115ca3c05: jle    0x0000000115ca3e62  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000115ca3c0b: jmp    0x0000000115ca3c1c
  0x0000000115ca3c0d: vmovq  %xmm0,%r9
  0x0000000115ca3c12: vmovq  %xmm1,%rdi
  0x0000000115ca3c17: vmovd  %xmm3,%r11d
  0x0000000115ca3c1c: mov    %r13d,%r10d
  0x0000000115ca3c1f: sub    %ecx,%r10d
  0x0000000115ca3c22: mov    $0xfa0,%r14d
  0x0000000115ca3c28: cmp    %r14d,%r10d
  0x0000000115ca3c2b: cmovg  %r14d,%r10d
  0x0000000115ca3c2f: add    %ecx,%r10d
  0x0000000115ca3c32: vmovq  %r9,%xmm0
  0x0000000115ca3c37: vmovq  %rdi,%xmm1
  0x0000000115ca3c3c: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3c41: mov    %ecx,%r14d
  0x0000000115ca3c44: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000115ca3c47: movslq %ecx,%r9
  0x0000000115ca3c4a: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c50: mov    %r8d,%ebp
  0x0000000115ca3c53: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c57: mov    %ebp,%r11d
  0x0000000115ca3c5a: dec    %r11d
  0x0000000115ca3c5d: cmp    $0x7f,%r11d
  0x0000000115ca3c61: jae    0x0000000115ca3d92  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3c67: movslq %r14d,%rdi
  0x0000000115ca3c6a: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3c6f: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c75: mov    %r11d,%ebp
  0x0000000115ca3c78: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c7c: mov    %ebp,%r8d
  0x0000000115ca3c7f: dec    %r8d
  0x0000000115ca3c82: cmp    $0x7f,%r8d
  0x0000000115ca3c86: jae    0x0000000115ca3d98  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3c8c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3c91: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c97: mov    %r8d,%ebp
  0x0000000115ca3c9a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3c9e: mov    %ebp,%r11d
  0x0000000115ca3ca1: dec    %r11d
  0x0000000115ca3ca4: cmp    $0x7f,%r11d
  0x0000000115ca3ca8: jae    0x0000000115ca3da0  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3cae: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3cb3: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3cb9: mov    %r8d,%ebp
  0x0000000115ca3cbc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3cc0: mov    %ebp,%r11d
  0x0000000115ca3cc3: dec    %r11d
  0x0000000115ca3cc6: cmp    $0x7f,%r11d
  0x0000000115ca3cca: jae    0x0000000115ca3da9  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3cd0: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3cd5: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000115ca3cd8: cmp    %r10d,%ecx
  0x0000000115ca3cdb: jl     0x0000000115ca3c41  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000115ca3ce1: mov    0x108(%r15),%r9
  0x0000000115ca3ce8: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x0000000115ca3cec: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x0000000115ca3cef: cmp    %r13d,%ecx
  0x0000000115ca3cf2: jl     0x0000000115ca3c0d
  0x0000000115ca3cf8: vmovq  %xmm0,%r9
  0x0000000115ca3cfd: vmovq  %xmm1,%rdi
  0x0000000115ca3d02: vmovd  %xmm3,%r11d
  0x0000000115ca3d07: cmp    %r11d,%ecx
  0x0000000115ca3d0a: jge    0x0000000115ca3d42  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3d0c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3d12: mov    %ecx,%r14d
  0x0000000115ca3d15: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000115ca3d18: mov    %r8d,%ebp
  0x0000000115ca3d1b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3d1f: mov    %ebp,%r10d
  0x0000000115ca3d22: dec    %r10d
  0x0000000115ca3d25: cmp    $0x7f,%r10d
  0x0000000115ca3d29: jae    0x0000000115ca3e8d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000115ca3d2f: movslq %r14d,%r10
  0x0000000115ca3d32: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000115ca3d37: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000115ca3d39: cmp    %r11d,%ecx
  0x0000000115ca3d3c: jl     0x0000000115ca3d0c
  0x0000000115ca3d3e: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000115ca3d42: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x0000000115ca3d46: mov    %rdi,%rax
  0x0000000115ca3d49: add    $0x40,%rsp
  0x0000000115ca3d4d: pop    %rbp
  0x0000000115ca3d4e: mov    0x108(%r15),%r10
  0x0000000115ca3d55: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca3d58: retq   
  0x0000000115ca3d59: mov    %edx,0xc(%rsp)
  0x0000000115ca3d5d: mov    %rsi,(%rsp)
  0x0000000115ca3d61: mov    %r9,%rbp
  0x0000000115ca3d64: mov    %r11d,%edx
  0x0000000115ca3d67: mov    %r11d,0x8(%rsp)
  0x0000000115ca3d6c: add    $0x2,%edx
  0x0000000115ca3d6f: callq  0x0000000115c53f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x0000000115ca3d74: mov    %rbp,%r9
  0x0000000115ca3d77: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3d7b: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000115ca3d80: mov    (%rsp),%rdi
  0x0000000115ca3d84: mov    0x8(%rsp),%r11d
  0x0000000115ca3d89: mov    0xc(%rsp),%edx
  0x0000000115ca3d8d: jmpq   0x0000000115ca3b31
  0x0000000115ca3d92: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3d96: jmp    0x0000000115ca3db0
  0x0000000115ca3d98: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000115ca3d9a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3d9e: jmp    0x0000000115ca3db0
  0x0000000115ca3da0: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000115ca3da3: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3da7: jmp    0x0000000115ca3db0
  0x0000000115ca3da9: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000115ca3dac: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3db0: vmovq  %xmm0,%r9
  0x0000000115ca3db5: vmovq  %xmm1,%rdi
  0x0000000115ca3dba: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x0000000115ca3dbf: mov    $0xffffff45,%esi
  0x0000000115ca3dc4: mov    %r14d,(%rsp)
  0x0000000115ca3dc8: mov    %ecx,0x4(%rsp)
  0x0000000115ca3dcc: mov    %rdi,0x10(%rsp)
  0x0000000115ca3dd1: mov    %r9,0x18(%rsp)
  0x0000000115ca3dd6: mov    %r11d,0xc(%rsp)
  0x0000000115ca3ddb: mov    %ebx,0x20(%rsp)
  0x0000000115ca3ddf: callq  0x0000000115c55900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3de4: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x0000000115ca3de6: mov    $0xffffffe4,%esi
  0x0000000115ca3deb: mov    %edx,%ebp
  0x0000000115ca3ded: mov    %rdi,(%rsp)
  0x0000000115ca3df1: mov    %r9,0x8(%rsp)
  0x0000000115ca3df6: mov    %r11d,0x10(%rsp)
  0x0000000115ca3dfb: mov    %r10d,0x14(%rsp)
  0x0000000115ca3e00: mov    %ebx,0x1c(%rsp)
  0x0000000115ca3e04: mov    %eax,0x20(%rsp)
  0x0000000115ca3e08: data16 xchg %ax,%ax
  0x0000000115ca3e0b: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3e10: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000115ca3e12: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x0000000115ca3e16: mov    $0xffffffe4,%esi
  0x0000000115ca3e1b: mov    %r14d,(%rsp)
  0x0000000115ca3e1f: mov    %rdi,0x8(%rsp)
  0x0000000115ca3e24: mov    %r9,0x10(%rsp)
  0x0000000115ca3e29: mov    %r11d,0x4(%rsp)
  0x0000000115ca3e2e: mov    %ebx,0x1c(%rsp)
  0x0000000115ca3e32: mov    %r10d,0x20(%rsp)
  0x0000000115ca3e37: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3e3c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000115ca3e3e: mov    $0xffffff7e,%esi
  0x0000000115ca3e43: mov    %r14d,%ebp
  0x0000000115ca3e46: mov    %rdi,(%rsp)
  0x0000000115ca3e4a: mov    %r9,0x8(%rsp)
  0x0000000115ca3e4f: mov    %ebx,0x14(%rsp)
  0x0000000115ca3e53: mov    %r11d,0x18(%rsp)
  0x0000000115ca3e58: data16 xchg %ax,%ax
  0x0000000115ca3e5b: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3e60: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000115ca3e62: mov    %edx,%r14d
  0x0000000115ca3e65: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x0000000115ca3e69: jmpq   0x0000000115ca3d07
  0x0000000115ca3e6e: mov    $0xffffff4d,%esi
  0x0000000115ca3e73: mov    %r10,%rbp
  0x0000000115ca3e76: mov    %rdx,(%rsp)
  0x0000000115ca3e7a: mov    %r11d,0xc(%rsp)
  0x0000000115ca3e7f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3e84: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000115ca3e86: xor    %ecx,%ecx
  0x0000000115ca3e88: jmpq   0x0000000115ca3dbf
  0x0000000115ca3e8d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000115ca3e91: jmpq   0x0000000115ca3dbf  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x0000000115ca3e96: mov    %rax,%rsi
  0x0000000115ca3e99: add    $0x40,%rsp
  0x0000000115ca3e9d: pop    %rbp
  0x0000000115ca3e9e: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115ca3ea3: mov    $0xfffffff6,%esi
  0x0000000115ca3ea8: data16 xchg %ax,%ax
  0x0000000115ca3eab: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3eb0: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000115ca3eb2: mov    $0xfffffff6,%esi
  0x0000000115ca3eb7: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3ebc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000115ca3ebe: mov    $0xfffffff6,%esi
  0x0000000115ca3ec3: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3ec8: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x0000000115ca3eca: mov    $0xfffffff6,%esi
  0x0000000115ca3ecf: mov    %edx,%ebp
  0x0000000115ca3ed1: mov    %eax,(%rsp)
  0x0000000115ca3ed4: data16 xchg %ax,%ax
  0x0000000115ca3ed7: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca3edc: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x0000000115ca3ede: hlt    
  0x0000000115ca3edf: hlt    
[Stub Code]
  0x0000000115ca3ee0: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000115ca3eea: jmpq   0x0000000115ca3eea  ;   {runtime_call}
[Exception Handler]
  0x0000000115ca3eef: jmpq   0x0000000115c8a680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000115ca3ef4: callq  0x0000000115ca3ef9
  0x0000000115ca3ef9: subq   $0x5,(%rsp)
  0x0000000115ca3efe: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca3f03: hlt    
  0x0000000115ca3f04: hlt    
  0x0000000115ca3f05: hlt    
  0x0000000115ca3f06: hlt    
  0x0000000115ca3f07: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115ca0b20, 0x0000000115ca0b48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012484fef8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca0b20: mov    0x40(%rsp),%rbx
  0x0000000115ca0b25: mov    0x24(%rbx),%ebx
  0x0000000115ca0b28: shl    $0x3,%rbx
  0x0000000115ca0b2c: mov    0x10(%rbx),%rbx
  0x0000000115ca0b30: test   %rbx,%rbx
  0x0000000115ca0b33: je     0x0000000115ca0b3c
  0x0000000115ca0b39: jmpq   *0x38(%rbx)
  0x0000000115ca0b3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca0b41: hlt    
  0x0000000115ca0b42: hlt    
  0x0000000115ca0b43: hlt    
  0x0000000115ca0b44: hlt    
  0x0000000115ca0b45: hlt    
  0x0000000115ca0b46: hlt    
  0x0000000115ca0b47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x0000000115ca0920, 0x0000000115ca0950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124852b30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca0920: mov    0x14(%rsi),%ebx
  0x0000000115ca0923: shl    $0x3,%rbx
  0x0000000115ca0927: mov    0x28(%rbx),%ebx
  0x0000000115ca092a: shl    $0x3,%rbx
  0x0000000115ca092e: mov    0x24(%rbx),%ebx
  0x0000000115ca0931: shl    $0x3,%rbx
  0x0000000115ca0935: mov    0x10(%rbx),%rbx
  0x0000000115ca0939: test   %rbx,%rbx
  0x0000000115ca093c: je     0x0000000115ca0945
  0x0000000115ca0942: jmpq   *0x38(%rbx)
  0x0000000115ca0945: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca094a: hlt    
  0x0000000115ca094b: hlt    
  0x0000000115ca094c: hlt    
  0x0000000115ca094d: hlt    
  0x0000000115ca094e: hlt    
  0x0000000115ca094f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115ca0420, 0x0000000115ca0448]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248550e0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca0420: mov    0x48(%rsp),%rbx
  0x0000000115ca0425: mov    0x24(%rbx),%ebx
  0x0000000115ca0428: shl    $0x3,%rbx
  0x0000000115ca042c: mov    0x10(%rbx),%rbx
  0x0000000115ca0430: test   %rbx,%rbx
  0x0000000115ca0433: je     0x0000000115ca043c
  0x0000000115ca0439: jmpq   *0x38(%rbx)
  0x0000000115ca043c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca0441: hlt    
  0x0000000115ca0442: hlt    
  0x0000000115ca0443: hlt    
  0x0000000115ca0444: hlt    
  0x0000000115ca0445: hlt    
  0x0000000115ca0446: hlt    
  0x0000000115ca0447: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000115ca0220, 0x0000000115ca0250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248556e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115ca0220: mov    0x14(%rsi),%ebx
  0x0000000115ca0223: shl    $0x3,%rbx
  0x0000000115ca0227: mov    0x28(%rbx),%ebx
  0x0000000115ca022a: shl    $0x3,%rbx
  0x0000000115ca022e: mov    0x24(%rbx),%ebx
  0x0000000115ca0231: shl    $0x3,%rbx
  0x0000000115ca0235: mov    0x10(%rbx),%rbx
  0x0000000115ca0239: test   %rbx,%rbx
  0x0000000115ca023c: je     0x0000000115ca0245
  0x0000000115ca0242: jmpq   *0x38(%rbx)
  0x0000000115ca0245: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca024a: hlt    
  0x0000000115ca024b: hlt    
  0x0000000115ca024c: hlt    
  0x0000000115ca024d: hlt    
  0x0000000115ca024e: hlt    
  0x0000000115ca024f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9fd20, 0x0000000115c9fd48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124856cf0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9fd20: mov    0x50(%rsp),%rbx
  0x0000000115c9fd25: mov    0x24(%rbx),%ebx
  0x0000000115c9fd28: shl    $0x3,%rbx
  0x0000000115c9fd2c: mov    0x10(%rbx),%rbx
  0x0000000115c9fd30: test   %rbx,%rbx
  0x0000000115c9fd33: je     0x0000000115c9fd3c
  0x0000000115c9fd39: jmpq   *0x38(%rbx)
  0x0000000115c9fd3c: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9fd41: hlt    
  0x0000000115c9fd42: hlt    
  0x0000000115c9fd43: hlt    
  0x0000000115c9fd44: hlt    
  0x0000000115c9fd45: hlt    
  0x0000000115c9fd46: hlt    
  0x0000000115c9fd47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x0000000115c9fb20, 0x0000000115c9fb50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124856e08} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9fb20: mov    0x14(%rsi),%ebx
  0x0000000115c9fb23: shl    $0x3,%rbx
  0x0000000115c9fb27: mov    0x28(%rbx),%ebx
  0x0000000115c9fb2a: shl    $0x3,%rbx
  0x0000000115c9fb2e: mov    0x24(%rbx),%ebx
  0x0000000115c9fb31: shl    $0x3,%rbx
  0x0000000115c9fb35: mov    0x10(%rbx),%rbx
  0x0000000115c9fb39: test   %rbx,%rbx
  0x0000000115c9fb3c: je     0x0000000115c9fb45
  0x0000000115c9fb42: jmpq   *0x38(%rbx)
  0x0000000115c9fb45: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9fb4a: hlt    
  0x0000000115c9fb4b: hlt    
  0x0000000115c9fb4c: hlt    
  0x0000000115c9fb4d: hlt    
  0x0000000115c9fb4e: hlt    
  0x0000000115c9fb4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115c9f720, 0x0000000115c9f740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000124856f20} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9f720: cmp    (%rsi),%rax
  0x0000000115c9f723: mov    0x24(%rdx),%ebx
  0x0000000115c9f726: shl    $0x3,%rbx
  0x0000000115c9f72a: mov    0x10(%rbx),%rbx
  0x0000000115c9f72e: test   %rbx,%rbx
  0x0000000115c9f731: je     0x0000000115c9f73a
  0x0000000115c9f737: jmpq   *0x38(%rbx)
  0x0000000115c9f73a: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9f73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x0000000115c9f520, 0x0000000115c9f550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248570d8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000115c9f520: mov    0x14(%rsi),%ebx
  0x0000000115c9f523: shl    $0x3,%rbx
  0x0000000115c9f527: mov    0x28(%rbx),%ebx
  0x0000000115c9f52a: shl    $0x3,%rbx
  0x0000000115c9f52e: mov    0x24(%rbx),%ebx
  0x0000000115c9f531: shl    $0x3,%rbx
  0x0000000115c9f535: mov    0x10(%rbx),%rbx
  0x0000000115c9f539: test   %rbx,%rbx
  0x0000000115c9f53c: je     0x0000000115c9f545
  0x0000000115c9f542: jmpq   *0x38(%rbx)
  0x0000000115c9f545: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9f54a: hlt    
  0x0000000115c9f54b: hlt    
  0x0000000115c9f54c: hlt    
  0x0000000115c9f54d: hlt    
  0x0000000115c9f54e: hlt    
  0x0000000115c9f54f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x0000000115c9f0a0, 0x0000000115c9f0d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248577d0} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x0000000115c9f0a0: mov    0x14(%rsi),%ebx
  0x0000000115c9f0a3: shl    $0x3,%rbx
  0x0000000115c9f0a7: mov    0x28(%rbx),%ebx
  0x0000000115c9f0aa: shl    $0x3,%rbx
  0x0000000115c9f0ae: mov    0x24(%rbx),%ebx
  0x0000000115c9f0b1: shl    $0x3,%rbx
  0x0000000115c9f0b5: mov    0x10(%rbx),%rbx
  0x0000000115c9f0b9: test   %rbx,%rbx
  0x0000000115c9f0bc: je     0x0000000115c9f0c5
  0x0000000115c9f0c2: jmpq   *0x38(%rbx)
  0x0000000115c9f0c5: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115c9f0ca: hlt    
  0x0000000115c9f0cb: hlt    
  0x0000000115c9f0cc: hlt    
  0x0000000115c9f0cd: hlt    
  0x0000000115c9f0ce: hlt    
  0x0000000115c9f0cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000115ca3620, 0x0000000115ca3640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001248578e8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000115ca3620: cmp    (%rsi),%rax
  0x0000000115ca3623: mov    0x24(%rcx),%ebx
  0x0000000115ca3626: shl    $0x3,%rbx
  0x0000000115ca362a: mov    0x10(%rbx),%rbx
  0x0000000115ca362e: test   %rbx,%rbx
  0x0000000115ca3631: je     0x0000000115ca363a
  0x0000000115ca3637: jmpq   *0x38(%rbx)
  0x0000000115ca363a: jmpq   0x0000000115c6d880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000115ca363f: hlt    
Time elapsed: 19.217 ms result=100
Warmup phase
Compiled method (c2)     226   66             java.util.Objects::requireNonNull (14 bytes)
 total in heap  [0x0000000115ca7f10,0x0000000115ca8180] = 624
 relocation     [0x0000000115ca8088,0x0000000115ca8098] = 16
 main code      [0x0000000115ca80a0,0x0000000115ca80e0] = 64
 stub code      [0x0000000115ca80e0,0x0000000115ca80f8] = 24
 metadata       [0x0000000115ca80f8,0x0000000115ca8100] = 8
 scopes data    [0x0000000115ca8100,0x0000000115ca8118] = 24
 scopes pcs     [0x0000000115ca8118,0x0000000115ca8178] = 96
 dependencies   [0x0000000115ca8178,0x0000000115ca8180] = 8
----------------------------------------------------------------------
java/util/Objects.requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca80a0, 0x0000000115ca80f8]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012454c640} 'requireNonNull' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/Objects'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca80a0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca80a7: push   %rbp
  0x0000000115ca80a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Objects::requireNonNull@-1 (line 220)

  0x0000000115ca80ac: mov    %rsi,%rax
  0x0000000115ca80af: test   %rsi,%rsi
  0x0000000115ca80b2: je     0x0000000115ca80c4  ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x0000000115ca80b4: add    $0x20,%rsp
  0x0000000115ca80b8: pop    %rbp
  0x0000000115ca80b9: mov    0x108(%r15),%r10
  0x0000000115ca80c0: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca80c3: retq   
  0x0000000115ca80c4: mov    $0xffffff4d,%esi
  0x0000000115ca80c9: mov    %rax,(%rsp)
  0x0000000115ca80cd: xchg   %ax,%ax
  0x0000000115ca80cf: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca80d4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x0000000115ca80d6: hlt    
  0x0000000115ca80d7: hlt    
  0x0000000115ca80d8: hlt    
  0x0000000115ca80d9: hlt    
  0x0000000115ca80da: hlt    
  0x0000000115ca80db: hlt    
  0x0000000115ca80dc: hlt    
  0x0000000115ca80dd: hlt    
  0x0000000115ca80de: hlt    
  0x0000000115ca80df: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca80e0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca80e5: callq  0x0000000115ca80ea
  0x0000000115ca80ea: subq   $0x5,(%rsp)
  0x0000000115ca80ef: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca80f4: hlt    
  0x0000000115ca80f5: hlt    
  0x0000000115ca80f6: hlt    
  0x0000000115ca80f7: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 52 Compiled method (c2)     229   67             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x0000000115ca8190,0x0000000115ca83d8] = 584
 relocation     [0x0000000115ca8308,0x0000000115ca8318] = 16
 main code      [0x0000000115ca8320,0x0000000115ca8360] = 64
 stub code      [0x0000000115ca8360,0x0000000115ca8378] = 24
 metadata       [0x0000000115ca8378,0x0000000115ca8380] = 8
 scopes data    [0x0000000115ca8380,0x0000000115ca8390] = 16
 scopes pcs     [0x0000000115ca8390,0x0000000115ca83d0] = 64
 dependencies   [0x0000000115ca83d0,0x0000000115ca83d8] = 8
----------------------------------------------------------------------
java/lang/Integer.intValue()I  [0x0000000115ca8320, 0x0000000115ca8378]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000124526e20} 'intValue' '()I' in 'java/lang/Integer'
  #           [sp+0x20]  (sp of caller)
  0x0000000115ca8320: mov    0x8(%rsi),%r10d
  0x0000000115ca8324: movabs $0x800000000,%r12
  0x0000000115ca832e: add    %r12,%r10
  0x0000000115ca8331: xor    %r12,%r12
  0x0000000115ca8334: cmp    %r10,%rax
  0x0000000115ca8337: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115ca833d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115ca8340: sub    $0x18,%rsp
  0x0000000115ca8347: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::intValue@-1 (line 1123)

  0x0000000115ca834c: mov    0xc(%rsi),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)

  0x0000000115ca834f: add    $0x10,%rsp
  0x0000000115ca8353: pop    %rbp
  0x0000000115ca8354: mov    0x108(%r15),%r10
  0x0000000115ca835b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca835e: retq   
  0x0000000115ca835f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca8360: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca8365: callq  0x0000000115ca836a
  0x0000000115ca836a: subq   $0x5,(%rsp)
  0x0000000115ca836f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca8374: hlt    
  0x0000000115ca8375: hlt    
  0x0000000115ca8376: hlt    
  0x0000000115ca8377: hlt    
Compiled method (c2)     234   68             java.util.HashMap::hash (20 bytes)
 total in heap  [0x0000000115ca6090,0x0000000115ca6880] = 2032
 relocation     [0x0000000115ca6208,0x0000000115ca6228] = 32
 main code      [0x0000000115ca6240,0x0000000115ca6480] = 576
 stub code      [0x0000000115ca6480,0x0000000115ca6498] = 24
 metadata       [0x0000000115ca6498,0x0000000115ca64c8] = 48
 scopes data    [0x0000000115ca64c8,0x0000000115ca65e0] = 280
 scopes pcs     [0x0000000115ca65e0,0x0000000115ca6860] = 640
 dependencies   [0x0000000115ca6860,0x0000000115ca6868] = 8
 nul chk table  [0x0000000115ca6868,0x0000000115ca6880] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x0000000115ca6240, 0x0000000115ca6498]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000124554940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca6240: mov    %eax,-0x14000(%rsp)
  0x0000000115ca6247: push   %rbp
  0x0000000115ca6248: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x0000000115ca624c: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000115ca6456
  0x0000000115ca6250: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000115ca6257: jne    0x0000000115ca6276  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6259: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x0000000115ca625d: mov    %r11d,%eax
  0x0000000115ca6260: shr    $0x10,%eax
  0x0000000115ca6263: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x0000000115ca6266: add    $0x20,%rsp
  0x0000000115ca626a: pop    %rbp
  0x0000000115ca626b: mov    0x108(%r15),%r10
  0x0000000115ca6272: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca6275: retq   
  0x0000000115ca6276: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x0000000115ca627d: jne    0x0000000115ca6418  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6283: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6287: test   %r11d,%r11d
  0x0000000115ca628a: jne    0x0000000115ca625d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca628c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca628f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x0000000115ca6466
  0x0000000115ca6294: test   %ecx,%ecx
  0x0000000115ca6296: jbe    0x0000000115ca6410  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca629c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca62a0: test   %ebp,%ebp
  0x0000000115ca62a2: jne    0x0000000115ca6442  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca62a8: mov    %ecx,%r11d
  0x0000000115ca62ab: dec    %r11d
  0x0000000115ca62ae: cmp    %ecx,%r11d
  0x0000000115ca62b1: jae    0x0000000115ca642a
  0x0000000115ca62b7: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca62bd: mov    %ecx,%r13d
  0x0000000115ca62c0: add    $0xfffffff9,%r13d
  0x0000000115ca62c4: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca62c8: mov    $0x80000000,%r9d
  0x0000000115ca62ce: cmp    %r13d,%r11d
  0x0000000115ca62d1: cmovl  %r9d,%r13d
  0x0000000115ca62d5: mov    $0x1,%r9d
  0x0000000115ca62db: cmp    $0x1,%r13d
  0x0000000115ca62df: jle    0x0000000115ca63dd
  0x0000000115ca62e5: mov    %r8d,%ebx
  0x0000000115ca62e8: shl    $0x5,%ebx
  0x0000000115ca62eb: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca62ee: jmp    0x0000000115ca62f4
  0x0000000115ca62f0: vmovd  %xmm0,%ecx
  0x0000000115ca62f4: mov    %r13d,%r14d
  0x0000000115ca62f7: sub    %r9d,%r14d
  0x0000000115ca62fa: mov    $0x1f40,%r10d
  0x0000000115ca6300: cmp    %r10d,%r14d
  0x0000000115ca6303: mov    $0x1f40,%r11d
  0x0000000115ca6309: cmovg  %r11d,%r14d
  0x0000000115ca630d: add    %r9d,%r14d
  0x0000000115ca6310: vmovd  %ecx,%xmm0
  0x0000000115ca6314: nopl   0x0(%rax,%rax,1)
  0x0000000115ca631c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6320: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6323: movzbl 0x10(%rax,%r11,1),%r10d
  0x0000000115ca6329: movzbl 0x17(%rax,%r11,1),%ecx
  0x0000000115ca632f: movzbl 0x11(%rax,%r11,1),%edx
  0x0000000115ca6335: movzbl 0x16(%rax,%r11,1),%edi
  0x0000000115ca633b: movzbl 0x15(%rax,%r11,1),%ebp
  0x0000000115ca6341: add    %r10d,%ebx
  0x0000000115ca6344: movzbl 0x13(%rax,%r11,1),%r10d
  0x0000000115ca634a: mov    %ebx,%r8d
  0x0000000115ca634d: shl    $0x5,%r8d
  0x0000000115ca6351: sub    %ebx,%r8d
  0x0000000115ca6354: add    %edx,%r8d
  0x0000000115ca6357: movzbl 0x12(%rax,%r11,1),%ebx
  0x0000000115ca635d: movzbl 0x14(%rax,%r11,1),%edx
  0x0000000115ca6363: mov    %r8d,%r11d
  0x0000000115ca6366: shl    $0x5,%r11d
  0x0000000115ca636a: sub    %r8d,%r11d
  0x0000000115ca636d: add    %ebx,%r11d
  0x0000000115ca6370: mov    %r11d,%ebx
  0x0000000115ca6373: shl    $0x5,%ebx
  0x0000000115ca6376: sub    %r11d,%ebx
  0x0000000115ca6379: add    %r10d,%ebx
  0x0000000115ca637c: mov    %ebx,%r11d
  0x0000000115ca637f: shl    $0x5,%r11d
  0x0000000115ca6383: sub    %ebx,%r11d
  0x0000000115ca6386: add    %edx,%r11d
  0x0000000115ca6389: mov    %r11d,%r8d
  0x0000000115ca638c: shl    $0x5,%r8d
  0x0000000115ca6390: sub    %r11d,%r8d
  0x0000000115ca6393: add    %ebp,%r8d
  0x0000000115ca6396: mov    %r8d,%r10d
  0x0000000115ca6399: shl    $0x5,%r10d
  0x0000000115ca639d: sub    %r8d,%r10d
  0x0000000115ca63a0: add    %edi,%r10d
  0x0000000115ca63a3: mov    %r10d,%r8d
  0x0000000115ca63a6: shl    $0x5,%r8d
  0x0000000115ca63aa: sub    %r10d,%r8d
  0x0000000115ca63ad: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63b0: mov    %r8d,%ebx
  0x0000000115ca63b3: shl    $0x5,%ebx
  0x0000000115ca63b6: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63b9: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63bd: cmp    %r14d,%r9d
  0x0000000115ca63c0: jl     0x0000000115ca6320  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63c6: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63cd: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x0000000115ca63d0: cmp    %r13d,%r9d
  0x0000000115ca63d3: jl     0x0000000115ca62f0
  0x0000000115ca63d9: vmovd  %xmm0,%ecx
  0x0000000115ca63dd: cmp    %ecx,%r9d
  0x0000000115ca63e0: jge    0x0000000115ca640b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63e2: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000115ca63e8: mov    %r8d,%r11d
  0x0000000115ca63eb: shl    $0x5,%r11d
  0x0000000115ca63ef: sub    %r8d,%r11d
  0x0000000115ca63f2: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63f5: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63f8: cmp    %ecx,%r9d
  0x0000000115ca63fb: jge    0x0000000115ca6402  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca63fd: mov    %r11d,%r8d
  0x0000000115ca6400: jmp    0x0000000115ca63e2
  0x0000000115ca6402: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6406: jmpq   0x0000000115ca625d
  0x0000000115ca640b: mov    %r8d,%r11d
  0x0000000115ca640e: jmp    0x0000000115ca6402
  0x0000000115ca6410: xor    %r11d,%r11d
  0x0000000115ca6413: jmpq   0x0000000115ca625d
  0x0000000115ca6418: mov    %rsi,%rbp
  0x0000000115ca641b: mov    $0xffffffc6,%esi
  0x0000000115ca6420: data16 xchg %ax,%ax
  0x0000000115ca6423: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca6428: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca642a: mov    %rsi,%rbp
  0x0000000115ca642d: mov    %ebx,(%rsp)
  0x0000000115ca6430: mov    %ecx,0x8(%rsp)
  0x0000000115ca6434: mov    $0xffffff7e,%esi
  0x0000000115ca6439: xchg   %ax,%ax
  0x0000000115ca643b: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca6440: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6442: mov    %rsi,0x8(%rsp)
  0x0000000115ca6447: mov    $0xffffff4d,%esi
  0x0000000115ca644c: data16 xchg %ax,%ax
  0x0000000115ca644f: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca6454: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6456: mov    %rsi,(%rsp)
  0x0000000115ca645a: mov    $0xffffff4d,%esi
  0x0000000115ca645f: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca6464: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x0000000115ca6466: mov    $0xfffffff6,%esi
  0x0000000115ca646b: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca6470: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000115ca6472: hlt    
  0x0000000115ca6473: hlt    
  0x0000000115ca6474: hlt    
  0x0000000115ca6475: hlt    
  0x0000000115ca6476: hlt    
  0x0000000115ca6477: hlt    
  0x0000000115ca6478: hlt    
  0x0000000115ca6479: hlt    
  0x0000000115ca647a: hlt    
  0x0000000115ca647b: hlt    
  0x0000000115ca647c: hlt    
  0x0000000115ca647d: hlt    
  0x0000000115ca647e: hlt    
  0x0000000115ca647f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca6480: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca6485: callq  0x0000000115ca648a
  0x0000000115ca648a: subq   $0x5,(%rsp)
  0x0000000115ca648f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca6494: hlt    
  0x0000000115ca6495: hlt    
  0x0000000115ca6496: hlt    
  0x0000000115ca6497: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     243   69             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x0000000115ca5c10,0x0000000115ca6040] = 1072
 relocation     [0x0000000115ca5d88,0x0000000115ca5da8] = 32
 main code      [0x0000000115ca5dc0,0x0000000115ca5ec0] = 256
 stub code      [0x0000000115ca5ec0,0x0000000115ca5ed8] = 24
 oops           [0x0000000115ca5ed8,0x0000000115ca5ee0] = 8
 metadata       [0x0000000115ca5ee0,0x0000000115ca5ef0] = 16
 scopes data    [0x0000000115ca5ef0,0x0000000115ca5f40] = 80
 scopes pcs     [0x0000000115ca5f40,0x0000000115ca6020] = 224
 dependencies   [0x0000000115ca6020,0x0000000115ca6028] = 8
 handler table  [0x0000000115ca6028,0x0000000115ca6040] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x0000000115ca5dc0, 0x0000000115ca5ed8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000124526a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca5dc0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca5dc7: push   %rbp
  0x0000000115ca5dc8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000115ca5dcc: mov    %esi,(%rsp)
  0x0000000115ca5dcf: cmp    $0xffffff80,%esi
  0x0000000115ca5dd2: jl     0x0000000115ca5e7e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000115ca5dd8: cmp    $0x7f,%esi
  0x0000000115ca5ddb: jle    0x0000000115ca5e3f  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x0000000115ca5ddd: mov    0x118(%r15),%rax
  0x0000000115ca5de4: mov    %rax,%r10
  0x0000000115ca5de7: add    $0x10,%r10
  0x0000000115ca5deb: cmp    0x128(%r15),%r10
  0x0000000115ca5df2: jae    0x0000000115ca5e6a
  0x0000000115ca5df4: mov    %r10,0x118(%r15)
  0x0000000115ca5dfb: prefetchnta 0xc0(%r10)
  0x0000000115ca5e03: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000115ca5e09: movabs $0x800000000,%r10
  0x0000000115ca5e13: add    %r11,%r10
  0x0000000115ca5e16: mov    0xb8(%r10),%r10
  0x0000000115ca5e1d: mov    %r10,(%rax)
  0x0000000115ca5e20: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000115ca5e27: mov    (%rsp),%r11d
  0x0000000115ca5e2b: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000115ca5e2f: add    $0x20,%rsp
  0x0000000115ca5e33: pop    %rbp
  0x0000000115ca5e34: mov    0x108(%r15),%r10
  0x0000000115ca5e3b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca5e3e: retq   
  0x0000000115ca5e3f: mov    %esi,%ebp
  0x0000000115ca5e41: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x0000000115ca5e47: cmp    $0x100,%ebp
  0x0000000115ca5e4d: jae    0x0000000115ca5e8e
  0x0000000115ca5e4f: movslq %esi,%r10
  0x0000000115ca5e52: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115ca5e5c: mov    0x210(%r11,%r10,4),%r10d
  0x0000000115ca5e64: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x0000000115ca5e68: jmp    0x0000000115ca5e2f
  0x0000000115ca5e6a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000115ca5e74: mov    (%rsp),%ebp
  0x0000000115ca5e77: callq  0x0000000115c8d700  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115ca5e7c: jmp    0x0000000115ca5e27
  0x0000000115ca5e7e: mov    $0xffffff4d,%esi
  0x0000000115ca5e83: mov    (%rsp),%ebp
  0x0000000115ca5e86: nop
  0x0000000115ca5e87: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca5e8c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000115ca5e8e: mov    $0xffffffe4,%esi
  0x0000000115ca5e93: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca5e98: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x0000000115ca5e9a: mov    %rax,%rsi
  0x0000000115ca5e9d: add    $0x20,%rsp
  0x0000000115ca5ea1: pop    %rbp
  0x0000000115ca5ea2: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115ca5ea7: hlt    
  0x0000000115ca5ea8: hlt    
  0x0000000115ca5ea9: hlt    
  0x0000000115ca5eaa: hlt    
  0x0000000115ca5eab: hlt    
  0x0000000115ca5eac: hlt    
  0x0000000115ca5ead: hlt    
  0x0000000115ca5eae: hlt    
  0x0000000115ca5eaf: hlt    
  0x0000000115ca5eb0: hlt    
  0x0000000115ca5eb1: hlt    
  0x0000000115ca5eb2: hlt    
  0x0000000115ca5eb3: hlt    
  0x0000000115ca5eb4: hlt    
  0x0000000115ca5eb5: hlt    
  0x0000000115ca5eb6: hlt    
  0x0000000115ca5eb7: hlt    
  0x0000000115ca5eb8: hlt    
  0x0000000115ca5eb9: hlt    
  0x0000000115ca5eba: hlt    
  0x0000000115ca5ebb: hlt    
  0x0000000115ca5ebc: hlt    
  0x0000000115ca5ebd: hlt    
  0x0000000115ca5ebe: hlt    
  0x0000000115ca5ebf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca5ec0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca5ec5: callq  0x0000000115ca5eca
  0x0000000115ca5eca: subq   $0x5,(%rsp)
  0x0000000115ca5ecf: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca5ed4: hlt    
  0x0000000115ca5ed5: hlt    
  0x0000000115ca5ed6: hlt    
  0x0000000115ca5ed7: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     248   70             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x0000000115ca5410,0x0000000115ca5b90] = 1920
 relocation     [0x0000000115ca5588,0x0000000115ca55b0] = 40
 main code      [0x0000000115ca55c0,0x0000000115ca5780] = 448
 stub code      [0x0000000115ca5780,0x0000000115ca5798] = 24
 metadata       [0x0000000115ca5798,0x0000000115ca57b8] = 32
 scopes data    [0x0000000115ca57b8,0x0000000115ca5930] = 376
 scopes pcs     [0x0000000115ca5930,0x0000000115ca5b60] = 560
 dependencies   [0x0000000115ca5b60,0x0000000115ca5b68] = 8
 nul chk table  [0x0000000115ca5b68,0x0000000115ca5b90] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x0000000115ca55c0, 0x0000000115ca5798]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000124555540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000115ca55c0: mov    0x8(%rsi),%r10d
  0x0000000115ca55c4: movabs $0x800000000,%r12
  0x0000000115ca55ce: add    %r12,%r10
  0x0000000115ca55d1: xor    %r12,%r12
  0x0000000115ca55d4: cmp    %r10,%rax
  0x0000000115ca55d7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115ca55dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115ca55e0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca55e7: push   %rbp
  0x0000000115ca55e8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x0000000115ca55ec: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x0000000115ca55f0: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x0000000115ca571e
  0x0000000115ca55f5: test   %r8d,%r8d
  0x0000000115ca55f8: jbe    0x0000000115ca568e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000115ca55fe: shl    $0x3,%r10
  0x0000000115ca5602: dec    %r8d
  0x0000000115ca5605: and    %edx,%r8d
  0x0000000115ca5608: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000115ca560d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x0000000115ca5736
  0x0000000115ca5612: cmp    %edx,%ebp
  0x0000000115ca5614: jne    0x0000000115ca56aa  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000115ca561a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x0000000115ca561f: mov    %r8,%r11
  0x0000000115ca5622: shl    $0x3,%r11
  0x0000000115ca5626: cmp    %rcx,%r11
  0x0000000115ca5629: je     0x0000000115ca565b  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x0000000115ca562b: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x0000000115ca574e
  0x0000000115ca562f: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000115ca5636: jne    0x0000000115ca566f  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca5638: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x0000000115ca5706
  0x0000000115ca563d: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000115ca5644: jne    0x0000000115ca56e6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca564a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca564e: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca5652: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca5656: cmp    %ebp,%r9d
  0x0000000115ca5659: jne    0x0000000115ca56c6  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x0000000115ca565b: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000115ca565f: add    $0x30,%rsp
  0x0000000115ca5663: pop    %rbp
  0x0000000115ca5664: mov    0x108(%r15),%r10
  0x0000000115ca566b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca566e: retq   
  0x0000000115ca566f: mov    $0xffffffde,%esi
  0x0000000115ca5674: mov    %edx,%ebp
  0x0000000115ca5676: mov    %rcx,0x8(%rsp)
  0x0000000115ca567b: mov    %r10d,0x10(%rsp)
  0x0000000115ca5680: mov    %r8d,0x14(%rsp)
  0x0000000115ca5685: xchg   %ax,%ax
  0x0000000115ca5687: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca568c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca568e: mov    $0xffffff4d,%esi
  0x0000000115ca5693: mov    %edx,%ebp
  0x0000000115ca5695: mov    %rcx,(%rsp)
  0x0000000115ca5699: mov    %r10d,0x8(%rsp)
  0x0000000115ca569e: mov    %r8d,0x10(%rsp)
  0x0000000115ca56a3: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca56a8: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000115ca56aa: mov    $0xffffff4d,%esi
  0x0000000115ca56af: mov    %rcx,0x8(%rsp)
  0x0000000115ca56b4: mov    %edx,0x4(%rsp)
  0x0000000115ca56b8: mov    %r10d,0x10(%rsp)
  0x0000000115ca56bd: xchg   %ax,%ax
  0x0000000115ca56bf: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca56c4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000115ca56c6: mov    $0xffffff4d,%esi
  0x0000000115ca56cb: mov    %edx,(%rsp)
  0x0000000115ca56ce: mov    %rcx,0x8(%rsp)
  0x0000000115ca56d3: mov    %r10d,0x4(%rsp)
  0x0000000115ca56d8: mov    %r9d,0x10(%rsp)
  0x0000000115ca56dd: xchg   %ax,%ax
  0x0000000115ca56df: callq  0x0000000115c55900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca56e4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca56e6: mov    $0xffffffde,%esi
  0x0000000115ca56eb: mov    %edx,%ebp
  0x0000000115ca56ed: mov    %rcx,0x8(%rsp)
  0x0000000115ca56f2: mov    %r10d,0x10(%rsp)
  0x0000000115ca56f7: mov    %r8d,0x18(%rsp)
  0x0000000115ca56fc: data16 xchg %ax,%ax
  0x0000000115ca56ff: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca5704: ud2    
  0x0000000115ca5706: mov    $0xfffffff4,%esi
  0x0000000115ca570b: mov    %edx,%ebp
  0x0000000115ca570d: mov    %rcx,0x8(%rsp)
  0x0000000115ca5712: mov    %r10d,0x10(%rsp)
  0x0000000115ca5717: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca571c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000115ca571e: mov    $0xffffff4d,%esi
  0x0000000115ca5723: mov    %edx,%ebp
  0x0000000115ca5725: mov    %rcx,(%rsp)
  0x0000000115ca5729: mov    %r10d,0xc(%rsp)
  0x0000000115ca572e: nop
  0x0000000115ca572f: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca5734: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x0000000115ca5736: mov    $0xffffff4d,%esi
  0x0000000115ca573b: mov    %edx,%ebp
  0x0000000115ca573d: mov    %rcx,(%rsp)
  0x0000000115ca5741: mov    %r10d,0xc(%rsp)
  0x0000000115ca5746: nop
  0x0000000115ca5747: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca574c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x0000000115ca574e: mov    $0xffffff4d,%esi
  0x0000000115ca5753: mov    %edx,%ebp
  0x0000000115ca5755: mov    %rcx,0x8(%rsp)
  0x0000000115ca575a: mov    %r10d,0x10(%rsp)
  0x0000000115ca575f: mov    %r8d,0x14(%rsp)
  0x0000000115ca5764: data16 xchg %ax,%ax
  0x0000000115ca5767: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca576c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x0000000115ca576e: hlt    
  0x0000000115ca576f: hlt    
  0x0000000115ca5770: hlt    
  0x0000000115ca5771: hlt    
  0x0000000115ca5772: hlt    
  0x0000000115ca5773: hlt    
  0x0000000115ca5774: hlt    
  0x0000000115ca5775: hlt    
  0x0000000115ca5776: hlt    
  0x0000000115ca5777: hlt    
  0x0000000115ca5778: hlt    
  0x0000000115ca5779: hlt    
  0x0000000115ca577a: hlt    
  0x0000000115ca577b: hlt    
  0x0000000115ca577c: hlt    
  0x0000000115ca577d: hlt    
  0x0000000115ca577e: hlt    
  0x0000000115ca577f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca5780: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca5785: callq  0x0000000115ca578a
  0x0000000115ca578a: subq   $0x5,(%rsp)
  0x0000000115ca578f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca5794: hlt    
  0x0000000115ca5795: hlt    
  0x0000000115ca5796: hlt    
  0x0000000115ca5797: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     258   71             java.util.HashMap::get (23 bytes)
 total in heap  [0x0000000115ca8f90,0x0000000115ca9d28] = 3480
 relocation     [0x0000000115ca9108,0x0000000115ca9140] = 56
 main code      [0x0000000115ca9140,0x0000000115ca9540] = 1024
 stub code      [0x0000000115ca9540,0x0000000115ca9558] = 24
 metadata       [0x0000000115ca9558,0x0000000115ca95a8] = 80
 scopes data    [0x0000000115ca95a8,0x0000000115ca98a0] = 760
 scopes pcs     [0x0000000115ca98a0,0x0000000115ca9cf0] = 1104
 dependencies   [0x0000000115ca9cf0,0x0000000115ca9cf8] = 8
 nul chk table  [0x0000000115ca9cf8,0x0000000115ca9d28] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca9140, 0x0000000115ca9558]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000124555398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000115ca9140: mov    0x8(%rsi),%r10d
  0x0000000115ca9144: movabs $0x800000000,%r12
  0x0000000115ca914e: add    %r12,%r10
  0x0000000115ca9151: xor    %r12,%r12
  0x0000000115ca9154: cmp    %r10,%rax
  0x0000000115ca9157: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115ca915d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115ca9160: mov    %eax,-0x14000(%rsp)
  0x0000000115ca9167: push   %rbp
  0x0000000115ca9168: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000115ca916c: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x0000000115ca94de
  0x0000000115ca9170: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000115ca9177: jne    0x0000000115ca921c
  0x0000000115ca917d: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9180: mov    0xc(%r10),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9184: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca9188: mov    %r11d,%edi
  0x0000000115ca918b: shr    $0x10,%edi
  0x0000000115ca918e: xor    %r11d,%edi         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9191: mov    0xc(%r12,%r10,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000115ca94fa
  0x0000000115ca9196: test   %r11d,%r11d
  0x0000000115ca9199: jbe    0x0000000115ca93f2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca919f: dec    %r11d
  0x0000000115ca91a2: and    %edi,%r11d
  0x0000000115ca91a5: shl    $0x3,%r10
  0x0000000115ca91a9: mov    0x10(%r10,%r11,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91ae: mov    0xc(%r12,%r11,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000115ca9512
  0x0000000115ca91b3: cmp    %edi,%r8d
  0x0000000115ca91b6: jne    0x0000000115ca940e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91bc: mov    0x10(%r12,%r11,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91c1: mov    %r8,%r10
  0x0000000115ca91c4: shl    $0x3,%r10
  0x0000000115ca91c8: cmp    %rdx,%r10
  0x0000000115ca91cb: je     0x0000000115ca9200  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91cd: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000115ca91d4: jne    0x0000000115ca93d2  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91da: mov    0x8(%r12,%r8,8),%r10d  ; implicit exception: dispatches to 0x0000000115ca94c6
  0x0000000115ca91df: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000115ca91e6: jne    0x0000000115ca94a6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91ec: mov    0xc(%rdx),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91ef: lea    (%r12,%r8,8),%r10  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91f3: mov    0xc(%r10),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca91f7: cmp    %r10d,%ecx
  0x0000000115ca91fa: jne    0x0000000115ca942e  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000115ca9200: mov    0x14(%r12,%r11,8),%r10d
  0x0000000115ca9205: mov    %r10,%rax
  0x0000000115ca9208: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x0000000115ca920c: add    $0x30,%rsp
  0x0000000115ca9210: pop    %rbp
  0x0000000115ca9211: mov    0x108(%r15),%r10
  0x0000000115ca9218: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca921b: retq   
  0x0000000115ca921c: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x0000000115ca9223: jne    0x0000000115ca944e
  0x0000000115ca9229: mov    %rdx,%rcx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca922c: mov    0x10(%rcx),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9230: test   %r11d,%r11d
  0x0000000115ca9233: jne    0x0000000115ca9184  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9239: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca923d: mov    0xc(%r12,%r9,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x0000000115ca952a
  0x0000000115ca9242: test   %ebx,%ebx
  0x0000000115ca9244: jbe    0x0000000115ca93ca  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca924a: movsbl 0x14(%rcx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca924e: test   %ebp,%ebp
  0x0000000115ca9250: jne    0x0000000115ca948a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9256: mov    %ebx,%r8d
  0x0000000115ca9259: dec    %r8d
  0x0000000115ca925c: cmp    %ebx,%r8d
  0x0000000115ca925f: jae    0x0000000115ca9466
  0x0000000115ca9265: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca926b: mov    %ebx,%r8d
  0x0000000115ca926e: add    $0xfffffff9,%r8d
  0x0000000115ca9272: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9276: mov    $0x1,%r9d
  0x0000000115ca927c: cmp    $0x1,%r8d
  0x0000000115ca9280: jle    0x0000000115ca93b5
  0x0000000115ca9286: mov    %edi,%r10d
  0x0000000115ca9289: shl    $0x5,%r10d
  0x0000000115ca928d: sub    %edi,%r10d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9290: jmp    0x0000000115ca92c4  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9292: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000115ca9298: mov    %edi,%r11d
  0x0000000115ca929b: shl    $0x5,%r11d
  0x0000000115ca929f: sub    %edi,%r11d
  0x0000000115ca92a2: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca92a5: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca92a8: cmp    %ebx,%r9d
  0x0000000115ca92ab: jge    0x0000000115ca93c1  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca92b1: mov    %r11d,%edi
  0x0000000115ca92b4: jmp    0x0000000115ca9292
  0x0000000115ca92b6: vmovq  %xmm0,%rcx
  0x0000000115ca92bb: vmovd  %xmm2,%ebx
  0x0000000115ca92bf: mov    0x4(%rsp),%r8d
  0x0000000115ca92c4: mov    %ebx,%r11d
  0x0000000115ca92c7: sub    %r9d,%r11d
  0x0000000115ca92ca: add    $0xfffffff9,%r11d
  0x0000000115ca92ce: mov    $0x1f40,%edi
  0x0000000115ca92d3: cmp    %r11d,%edi
  0x0000000115ca92d6: cmovg  %r11d,%edi
  0x0000000115ca92da: add    %r9d,%edi
  0x0000000115ca92dd: vmovq  %rcx,%xmm0
  0x0000000115ca92e2: vmovd  %ebx,%xmm2
  0x0000000115ca92e6: mov    %r8d,0x4(%rsp)
  0x0000000115ca92eb: mov    %edi,0x8(%rsp)
  0x0000000115ca92ef: nop                       ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca92f0: movslq %r9d,%r13          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca92f3: movzbl 0x10(%rax,%r13,1),%r8d
  0x0000000115ca92f9: movzbl 0x17(%rax,%r13,1),%r11d
  0x0000000115ca92ff: mov    %r11d,(%rsp)
  0x0000000115ca9303: add    %r8d,%r10d
  0x0000000115ca9306: movzbl 0x16(%rax,%r13,1),%edi
  0x0000000115ca930c: mov    %r10d,%ebx
  0x0000000115ca930f: shl    $0x5,%ebx
  0x0000000115ca9312: sub    %r10d,%ebx
  0x0000000115ca9315: movzbl 0x15(%rax,%r13,1),%r8d
  0x0000000115ca931b: movzbl 0x14(%rax,%r13,1),%r11d
  0x0000000115ca9321: movzbl 0x13(%rax,%r13,1),%ecx
  0x0000000115ca9327: movzbl 0x12(%rax,%r13,1),%ebp
  0x0000000115ca932d: movzbl 0x11(%rax,%r13,1),%r10d
  0x0000000115ca9333: add    %r10d,%ebx
  0x0000000115ca9336: mov    %ebx,%r10d
  0x0000000115ca9339: shl    $0x5,%r10d
  0x0000000115ca933d: sub    %ebx,%r10d
  0x0000000115ca9340: add    %ebp,%r10d
  0x0000000115ca9343: mov    %r10d,%ebx
  0x0000000115ca9346: shl    $0x5,%ebx
  0x0000000115ca9349: sub    %r10d,%ebx
  0x0000000115ca934c: add    %ecx,%ebx
  0x0000000115ca934e: mov    %ebx,%ecx
  0x0000000115ca9350: shl    $0x5,%ecx
  0x0000000115ca9353: sub    %ebx,%ecx
  0x0000000115ca9355: add    %r11d,%ecx
  0x0000000115ca9358: mov    %ecx,%r11d
  0x0000000115ca935b: shl    $0x5,%r11d
  0x0000000115ca935f: sub    %ecx,%r11d
  0x0000000115ca9362: add    %r8d,%r11d
  0x0000000115ca9365: mov    %r11d,%r10d
  0x0000000115ca9368: shl    $0x5,%r10d
  0x0000000115ca936c: sub    %r11d,%r10d
  0x0000000115ca936f: add    %edi,%r10d
  0x0000000115ca9372: mov    %r10d,%edi
  0x0000000115ca9375: shl    $0x5,%edi
  0x0000000115ca9378: sub    %r10d,%edi
  0x0000000115ca937b: add    (%rsp),%edi        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca937e: mov    %edi,%r10d
  0x0000000115ca9381: shl    $0x5,%r10d
  0x0000000115ca9385: sub    %edi,%r10d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9388: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca938c: cmp    0x8(%rsp),%r9d
  0x0000000115ca9391: jl     0x0000000115ca92f0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9397: mov    0x108(%r15),%r11   ; ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca939e: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x0000000115ca93a1: cmp    0x4(%rsp),%r9d
  0x0000000115ca93a6: jl     0x0000000115ca92b6
  0x0000000115ca93ac: vmovq  %xmm0,%rcx
  0x0000000115ca93b1: vmovd  %xmm2,%ebx
  0x0000000115ca93b5: cmp    %ebx,%r9d
  0x0000000115ca93b8: jl     0x0000000115ca9292
  0x0000000115ca93be: mov    %edi,%r11d
  0x0000000115ca93c1: mov    %r11d,0x10(%rcx)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca93c5: jmpq   0x0000000115ca9184
  0x0000000115ca93ca: xor    %r11d,%r11d
  0x0000000115ca93cd: jmpq   0x0000000115ca9184
  0x0000000115ca93d2: mov    $0xffffffde,%esi
  0x0000000115ca93d7: mov    %edi,%ebp
  0x0000000115ca93d9: mov    %r11d,0x8(%rsp)
  0x0000000115ca93de: mov    %rdx,0x10(%rsp)
  0x0000000115ca93e3: mov    %r8d,0xc(%rsp)
  0x0000000115ca93e8: data16 xchg %ax,%ax
  0x0000000115ca93eb: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca93f0: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca93f2: mov    $0xffffff4d,%esi
  0x0000000115ca93f7: mov    %edi,%ebp
  0x0000000115ca93f9: mov    %rdx,(%rsp)
  0x0000000115ca93fd: mov    %r10d,0x8(%rsp)
  0x0000000115ca9402: mov    %r11d,0x10(%rsp)
  0x0000000115ca9407: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca940c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca940e: mov    $0xffffff4d,%esi
  0x0000000115ca9413: mov    %rdx,(%rsp)
  0x0000000115ca9417: mov    %r11d,0x8(%rsp)
  0x0000000115ca941c: mov    %r8d,0xc(%rsp)
  0x0000000115ca9421: mov    %edi,0x10(%rsp)
  0x0000000115ca9425: xchg   %ax,%ax
  0x0000000115ca9427: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca942c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca942e: mov    $0xffffff4d,%esi
  0x0000000115ca9433: mov    %edi,%ebp
  0x0000000115ca9435: mov    %rdx,(%rsp)
  0x0000000115ca9439: mov    %r11d,0x8(%rsp)
  0x0000000115ca943e: mov    %ecx,0xc(%rsp)
  0x0000000115ca9442: mov    %r10d,0x10(%rsp)
  0x0000000115ca9447: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca944c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca944e: mov    %rsi,(%rsp)
  0x0000000115ca9452: mov    %rdx,0x8(%rsp)
  0x0000000115ca9457: mov    $0xffffffc6,%esi
  0x0000000115ca945c: data16 xchg %ax,%ax
  0x0000000115ca945f: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca9464: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9466: mov    %rdx,%rbp
  0x0000000115ca9469: mov    %rsi,(%rsp)
  0x0000000115ca946d: mov    %rcx,0x8(%rsp)
  0x0000000115ca9472: mov    %ebx,0x14(%rsp)
  0x0000000115ca9476: mov    %r9d,0x18(%rsp)
  0x0000000115ca947b: mov    $0xffffff7e,%esi
  0x0000000115ca9480: data16 xchg %ax,%ax
  0x0000000115ca9483: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [24]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca9488: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca948a: mov    %rdx,(%rsp)
  0x0000000115ca948e: mov    %rsi,0x8(%rsp)
  0x0000000115ca9493: mov    %rcx,0x18(%rsp)
  0x0000000115ca9498: mov    $0xffffff4d,%esi
  0x0000000115ca949d: xchg   %ax,%ax
  0x0000000115ca949f: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca94a4: ud2    
  0x0000000115ca94a6: mov    $0xffffffde,%esi
  0x0000000115ca94ab: mov    %edi,%ebp
  0x0000000115ca94ad: mov    %r11d,0x8(%rsp)
  0x0000000115ca94b2: mov    %rdx,0x10(%rsp)
  0x0000000115ca94b7: mov    %r8d,0x18(%rsp)
  0x0000000115ca94bc: data16 xchg %ax,%ax
  0x0000000115ca94bf: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca94c4: ud2    
  0x0000000115ca94c6: mov    $0xfffffff4,%esi
  0x0000000115ca94cb: mov    %edi,%ebp
  0x0000000115ca94cd: mov    %r11d,0x8(%rsp)
  0x0000000115ca94d2: mov    %rdx,0x10(%rsp)
  0x0000000115ca94d7: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca94dc: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca94de: mov    %rsi,(%rsp)
  0x0000000115ca94e2: mov    %rdx,0x8(%rsp)
  0x0000000115ca94e7: mov    %rdx,0x10(%rsp)
  0x0000000115ca94ec: mov    $0xffffff4d,%esi
  0x0000000115ca94f1: xchg   %ax,%ax
  0x0000000115ca94f3: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca94f8: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca94fa: mov    $0xffffff4d,%esi
  0x0000000115ca94ff: mov    %edi,%ebp
  0x0000000115ca9501: mov    %rdx,(%rsp)
  0x0000000115ca9505: mov    %r10d,0xc(%rsp)
  0x0000000115ca950a: nop
  0x0000000115ca950b: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca9510: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca9512: mov    $0xffffff4d,%esi
  0x0000000115ca9517: mov    %edi,%ebp
  0x0000000115ca9519: mov    %rdx,(%rsp)
  0x0000000115ca951d: mov    %r11d,0xc(%rsp)
  0x0000000115ca9522: nop
  0x0000000115ca9523: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca9528: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000115ca952a: mov    $0xfffffff6,%esi
  0x0000000115ca952f: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca9534: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000115ca9536: hlt    
  0x0000000115ca9537: hlt    
  0x0000000115ca9538: hlt    
  0x0000000115ca9539: hlt    
  0x0000000115ca953a: hlt    
  0x0000000115ca953b: hlt    
  0x0000000115ca953c: hlt    
  0x0000000115ca953d: hlt    
  0x0000000115ca953e: hlt    
  0x0000000115ca953f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca9540: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca9545: callq  0x0000000115ca954a
  0x0000000115ca954a: subq   $0x5,(%rsp)
  0x0000000115ca954f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca9554: hlt    
  0x0000000115ca9555: hlt    
  0x0000000115ca9556: hlt    
  0x0000000115ca9557: hlt    

ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }pc offsets: 606 
ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }pc offsets: 688 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 716 748 780 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 804 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [24]=NarrowOop }pc offsets: 840 
ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }pc offsets: 868 
ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }pc offsets: 900 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 924 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 952 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 976 1000 
ImmutableOopMap{}pc offsets: 1012 Compiled method (c2)     272   72             java.util.Optional::ofNullable (15 bytes)
 total in heap  [0x0000000115ca8b90,0x0000000115ca8f78] = 1000
 relocation     [0x0000000115ca8d08,0x0000000115ca8d20] = 24
 main code      [0x0000000115ca8d20,0x0000000115ca8e40] = 288
 stub code      [0x0000000115ca8e40,0x0000000115ca8e58] = 24
 metadata       [0x0000000115ca8e58,0x0000000115ca8e78] = 32
 scopes data    [0x0000000115ca8e78,0x0000000115ca8eb8] = 64
 scopes pcs     [0x0000000115ca8eb8,0x0000000115ca8f58] = 160
 dependencies   [0x0000000115ca8f58,0x0000000115ca8f60] = 8
 handler table  [0x0000000115ca8f60,0x0000000115ca8f78] = 24
----------------------------------------------------------------------
java/util/Optional.ofNullable(Ljava/lang/Object;)Ljava/util/Optional;  [0x0000000115ca8d20, 0x0000000115ca8e58]  312 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000124678bb0} 'ofNullable' '(Ljava/lang/Object;)Ljava/util/Optional;' in 'java/util/Optional'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca8d20: mov    %eax,-0x14000(%rsp)
  0x0000000115ca8d27: push   %rbp
  0x0000000115ca8d28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::ofNullable@-1 (line 133)

  0x0000000115ca8d2c: mov    %rsi,%rbp
  0x0000000115ca8d2f: test   %rsi,%rsi
  0x0000000115ca8d32: je     0x0000000115ca8e24
  0x0000000115ca8d38: mov    0x118(%r15),%rbx
  0x0000000115ca8d3f: mov    %rbx,%r10
  0x0000000115ca8d42: add    $0x10,%r10
  0x0000000115ca8d46: cmp    0x128(%r15),%r10
  0x0000000115ca8d4d: jae    0x0000000115ca8e0c  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000115ca8d53: mov    %r10,0x118(%r15)
  0x0000000115ca8d5a: prefetchnta 0xc0(%r10)
  0x0000000115ca8d62: mov    $0x34bd8,%r10d     ;   {metadata('java/util/Optional')}
  0x0000000115ca8d68: movabs $0x800000000,%r12
  0x0000000115ca8d72: add    %r12,%r10
  0x0000000115ca8d75: xor    %r12,%r12
  0x0000000115ca8d78: mov    0xb8(%r10),%r10
  0x0000000115ca8d7f: mov    %r10,(%rbx)
  0x0000000115ca8d82: movl   $0x34bd8,0x8(%rbx)  ;   {metadata('java/util/Optional')}
  0x0000000115ca8d89: mov    %rbp,%r10
  0x0000000115ca8d8c: shr    $0x3,%r10
  0x0000000115ca8d90: mov    %r10d,0xc(%rbx)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000115ca8d94: mov    %rbp,%r10
  0x0000000115ca8d97: mov    %rbx,%r11
  0x0000000115ca8d9a: xor    %r11,%r10
  0x0000000115ca8d9d: shr    $0x14,%r10
  0x0000000115ca8da1: test   %r10,%r10
  0x0000000115ca8da4: je     0x0000000115ca8df9
  0x0000000115ca8da6: shr    $0x9,%r11
  0x0000000115ca8daa: movabs $0x115c2d000,%rdi
  0x0000000115ca8db4: add    %r11,%rdi
  0x0000000115ca8db7: cmpb   $0x20,(%rdi)
  0x0000000115ca8dba: je     0x0000000115ca8df9
  0x0000000115ca8dbc: mov    0x70(%r15),%r10
  0x0000000115ca8dc0: mov    0x80(%r15),%r11
  0x0000000115ca8dc7: lock addl $0x0,-0x40(%rsp)
  0x0000000115ca8dcd: cmpb   $0x0,(%rdi)
  0x0000000115ca8dd0: je     0x0000000115ca8df9
  0x0000000115ca8dd2: movb   $0x0,(%rdi)
  0x0000000115ca8dd5: test   %r10,%r10
  0x0000000115ca8dd8: jne    0x0000000115ca8dec
  0x0000000115ca8dda: mov    %r15,%rsi
  0x0000000115ca8ddd: movabs $0x10c5038ce,%r10
  0x0000000115ca8de7: callq  *%r10
  0x0000000115ca8dea: jmp    0x0000000115ca8df9
  0x0000000115ca8dec: mov    %rdi,-0x8(%r11,%r10,1)
  0x0000000115ca8df1: add    $0xfffffffffffffff8,%r10
  0x0000000115ca8df5: mov    %r10,0x70(%r15)    ;*synchronization entry
                                                ; - java.util.Optional::of@-1 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000115ca8df9: mov    %rbx,%rax
  0x0000000115ca8dfc: add    $0x20,%rsp
  0x0000000115ca8e00: pop    %rbp
  0x0000000115ca8e01: mov    0x108(%r15),%r10
  0x0000000115ca8e08: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca8e0b: retq   
  0x0000000115ca8e0c: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000115ca8e16: nop
  0x0000000115ca8e17: callq  0x0000000115c8d700  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115ca8e1c: mov    %rax,%rbx
  0x0000000115ca8e1f: jmpq   0x0000000115ca8d89
  0x0000000115ca8e24: mov    $0xffffff4d,%esi
  0x0000000115ca8e29: xchg   %ax,%ax
  0x0000000115ca8e2b: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@1 (line 133)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca8e30: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000115ca8e32: mov    %rax,%rsi
  0x0000000115ca8e35: add    $0x20,%rsp
  0x0000000115ca8e39: pop    %rbp
  0x0000000115ca8e3a: jmpq   0x0000000115c8cb00  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _rethrow_Java}
  0x0000000115ca8e3f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca8e40: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca8e45: callq  0x0000000115ca8e4a
  0x0000000115ca8e4a: subq   $0x5,(%rsp)
  0x0000000115ca8e4f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca8e54: hlt    
  0x0000000115ca8e55: hlt    
  0x0000000115ca8e56: hlt    
  0x0000000115ca8e57: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 252 272 Compiled method (c2)     275   73             java.lang.invoke.DirectMethodHandle::internalMemberName (8 bytes)
 total in heap  [0x0000000115ca5110,0x0000000115ca53f0] = 736
 relocation     [0x0000000115ca5288,0x0000000115ca5298] = 16
 main code      [0x0000000115ca52a0,0x0000000115ca5300] = 96
 stub code      [0x0000000115ca5300,0x0000000115ca5318] = 24
 metadata       [0x0000000115ca5318,0x0000000115ca5328] = 16
 scopes data    [0x0000000115ca5328,0x0000000115ca5358] = 48
 scopes pcs     [0x0000000115ca5358,0x0000000115ca53d8] = 128
 dependencies   [0x0000000115ca53d8,0x0000000115ca53e0] = 8
 nul chk table  [0x0000000115ca53e0,0x0000000115ca53f0] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle.internalMemberName(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca52a0, 0x0000000115ca5318]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001244a03f8} 'internalMemberName' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x0000000115ca52a0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca52a7: push   %rbp
  0x0000000115ca52a8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@-1 (line 310)

  0x0000000115ca52ac: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x0000000115ca52e6
  0x0000000115ca52b0: cmp    $0xc0e0,%r11d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x0000000115ca52b7: jne    0x0000000115ca52d4  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x0000000115ca52b9: mov    0x1c(%rsi),%r11d
  0x0000000115ca52bd: mov    %r11,%rax
  0x0000000115ca52c0: shl    $0x3,%rax          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)

  0x0000000115ca52c4: add    $0x10,%rsp
  0x0000000115ca52c8: pop    %rbp
  0x0000000115ca52c9: mov    0x108(%r15),%r10
  0x0000000115ca52d0: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca52d3: retq   
  0x0000000115ca52d4: mov    %rsi,%rbp
  0x0000000115ca52d7: mov    $0xffffffde,%esi
  0x0000000115ca52dc: data16 xchg %ax,%ax
  0x0000000115ca52df: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca52e4: ud2    
  0x0000000115ca52e6: mov    $0xfffffff4,%esi
  0x0000000115ca52eb: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca52f0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x0000000115ca52f2: hlt    
  0x0000000115ca52f3: hlt    
  0x0000000115ca52f4: hlt    
  0x0000000115ca52f5: hlt    
  0x0000000115ca52f6: hlt    
  0x0000000115ca52f7: hlt    
  0x0000000115ca52f8: hlt    
  0x0000000115ca52f9: hlt    
  0x0000000115ca52fa: hlt    
  0x0000000115ca52fb: hlt    
  0x0000000115ca52fc: hlt    
  0x0000000115ca52fd: hlt    
  0x0000000115ca52fe: hlt    
  0x0000000115ca52ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca5300: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca5305: callq  0x0000000115ca530a
  0x0000000115ca530a: subq   $0x5,(%rsp)
  0x0000000115ca530f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca5314: hlt    
  0x0000000115ca5315: hlt    
  0x0000000115ca5316: hlt    
  0x0000000115ca5317: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 68 
ImmutableOopMap{}pc offsets: 80 Compiled method (c2)     279   74             FunctionalHashMap::max100 (32 bytes)
 total in heap  [0x0000000115cab910,0x0000000115cac518] = 3080
 relocation     [0x0000000115caba88,0x0000000115cabad0] = 72
 main code      [0x0000000115cabae0,0x0000000115cabe20] = 832
 stub code      [0x0000000115cabe20,0x0000000115cabe38] = 24
 oops           [0x0000000115cabe38,0x0000000115cabe50] = 24
 metadata       [0x0000000115cabe50,0x0000000115cabeb8] = 104
 scopes data    [0x0000000115cabeb8,0x0000000115cac148] = 656
 scopes pcs     [0x0000000115cac148,0x0000000115cac4c8] = 896
 dependencies   [0x0000000115cac4c8,0x0000000115cac4d0] = 8
 handler table  [0x0000000115cac4d0,0x0000000115cac4e8] = 24
 nul chk table  [0x0000000115cac4e8,0x0000000115cac518] = 48
----------------------------------------------------------------------
FunctionalHashMap.max100(I)I  [0x0000000115cabae0, 0x0000000115cabe38]  856 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012482d970} 'max100' '(I)I' in 'FunctionalHashMap'
  # this:     rsi:rsi   = 'FunctionalHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000115cabae0: mov    0x8(%rsi),%r10d
  0x0000000115cabae4: movabs $0x800000000,%r12
  0x0000000115cabaee: add    %r12,%r10
  0x0000000115cabaf1: xor    %r12,%r12
  0x0000000115cabaf4: cmp    %r10,%rax
  0x0000000115cabaf7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115cabafd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115cabb00: mov    %eax,-0x14000(%rsp)
  0x0000000115cabb07: push   %rbp
  0x0000000115cabb08: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::max100@-1 (line 49)

  0x0000000115cabb0c: mov    %edx,0x4(%rsp)
  0x0000000115cabb10: movabs $0x70fe0f588,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f588} = 'FunctionalHashMap')}
  0x0000000115cabb1a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)

  0x0000000115cabb1e: mov    %r11d,0x8(%rsp)
  0x0000000115cabb23: cmp    $0xffffff80,%edx
  0x0000000115cabb26: jl     0x0000000115cabcae  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabb2c: cmp    $0x7f,%edx
  0x0000000115cabb2f: jle    0x0000000115cabc48  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabb35: mov    0x118(%r15),%r8
  0x0000000115cabb3c: mov    %r8,%r10
  0x0000000115cabb3f: add    $0x10,%r10
  0x0000000115cabb43: cmp    0x128(%r15),%r10
  0x0000000115cabb4a: jae    0x0000000115cabc7a
  0x0000000115cabb50: mov    %r10,0x118(%r15)
  0x0000000115cabb57: prefetchnta 0xc0(%r10)
  0x0000000115cabb5f: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000115cabb65: movabs $0x800000000,%r12
  0x0000000115cabb6f: add    %r12,%r10
  0x0000000115cabb72: xor    %r12,%r12
  0x0000000115cabb75: mov    0xb8(%r10),%r10
  0x0000000115cabb7c: mov    %r10,(%r8)
  0x0000000115cabb7f: movl   $0x13c78,0x8(%r8)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000115cabb87: mov    0x4(%rsp),%r10d
  0x0000000115cabb8c: mov    %r10d,0xc(%r8)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabb90: mov    0x8(%rsp),%r11d
  0x0000000115cabb95: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x0000000115cabd92
  0x0000000115cabb9a: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x0000000115cabba1: jne    0x0000000115cabc94  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabba7: mov    0xc(%r8),%ecx      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbab: lea    (%r12,%r11,8),%r10  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbaf: mov    0x24(%r10),%ebx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbb3: mov    %ecx,%r10d
  0x0000000115cabbb6: shr    $0x10,%r10d
  0x0000000115cabbba: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbbd: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; implicit exception: dispatches to 0x0000000115cabdd2
  0x0000000115cabbc2: test   %ebp,%ebp
  0x0000000115cabbc4: jbe    0x0000000115cabcc2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbca: lea    (%r12,%rbx,8),%r11
  0x0000000115cabbce: dec    %ebp
  0x0000000115cabbd0: and    %r10d,%ebp
  0x0000000115cabbd3: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbd8: mov    0xc(%r12,%r11,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; implicit exception: dispatches to 0x0000000115cabdf2
  0x0000000115cabbdd: cmp    %r10d,%ebp
  0x0000000115cabbe0: jne    0x0000000115cabcee  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbe6: mov    0x10(%r12,%r11,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbeb: mov    %rbp,%r9
  0x0000000115cabbee: shl    $0x3,%r9
  0x0000000115cabbf2: cmp    %r8,%r9
  0x0000000115cabbf5: je     0x0000000115cabc19  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabbf7: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x0000000115cabdb2
  0x0000000115cabbfc: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000115cabc03: jne    0x0000000115cabd5a
  0x0000000115cabc09: lea    (%r12,%rbp,8),%r9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabc0d: mov    0xc(%r9),%ebp      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabc11: cmp    %ebp,%ecx
  0x0000000115cabc13: jne    0x0000000115cabd1a  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabc19: mov    0x14(%r12,%r11,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabc1e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000115cabda2
  0x0000000115cabc23: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000115cabc2a: jne    0x0000000115cabd86  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)

  0x0000000115cabc30: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x0000000115cabc34: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@28 (line 50)

  0x0000000115cabc38: add    $0x30,%rsp
  0x0000000115cabc3c: pop    %rbp
  0x0000000115cabc3d: mov    0x108(%r15),%r10
  0x0000000115cabc44: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115cabc47: retq   
  0x0000000115cabc48: mov    %edx,%ebp
  0x0000000115cabc4a: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabc50: cmp    $0x100,%ebp
  0x0000000115cabc56: jae    0x0000000115cabd4a
  0x0000000115cabc5c: movslq %edx,%r10
  0x0000000115cabc5f: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115cabc69: mov    0x210(%r11,%r10,4),%r10d
  0x0000000115cabc71: lea    (%r12,%r10,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabc75: jmpq   0x0000000115cabb90
  0x0000000115cabc7a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000115cabc84: mov    %edx,%ebp
  0x0000000115cabc86: nop
  0x0000000115cabc87: callq  0x0000000115c8d700  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115cabc8c: mov    %rax,%r8
  0x0000000115cabc8f: jmpq   0x0000000115cabb87
  0x0000000115cabc94: mov    $0xffffffde,%esi
  0x0000000115cabc99: mov    0x4(%rsp),%ebp
  0x0000000115cabc9d: mov    %r11d,(%rsp)
  0x0000000115cabca1: mov    %r8,0x8(%rsp)
  0x0000000115cabca6: nop
  0x0000000115cabca7: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabcac: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabcae: mov    $0xffffff4d,%esi
  0x0000000115cabcb3: mov    %r11d,(%rsp)
  0x0000000115cabcb7: mov    %edx,0x8(%rsp)
  0x0000000115cabcbb: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabcc0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabcc2: mov    $0xffffff4d,%esi
  0x0000000115cabcc7: mov    %rax,-0x8(%rsp)
  0x0000000115cabccc: mov    0x4(%rsp),%eax
  0x0000000115cabcd0: mov    %eax,(%rsp)
  0x0000000115cabcd3: mov    -0x8(%rsp),%rax
  0x0000000115cabcd8: mov    %r10d,0x4(%rsp)
  0x0000000115cabcdd: mov    %r8,0x8(%rsp)
  0x0000000115cabce2: mov    %ebx,0x10(%rsp)
  0x0000000115cabce6: nop
  0x0000000115cabce7: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabcec: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabcee: mov    $0xffffff4d,%esi
  0x0000000115cabcf3: mov    %rax,-0x8(%rsp)
  0x0000000115cabcf8: mov    0x4(%rsp),%eax
  0x0000000115cabcfc: mov    %eax,(%rsp)
  0x0000000115cabcff: mov    -0x8(%rsp),%rax
  0x0000000115cabd04: mov    %r8,0x8(%rsp)
  0x0000000115cabd09: mov    %r11d,0x10(%rsp)
  0x0000000115cabd0e: mov    %r10d,0x14(%rsp)
  0x0000000115cabd13: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabd18: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabd1a: mov    $0xffffff4d,%esi
  0x0000000115cabd1f: mov    %rax,-0x8(%rsp)
  0x0000000115cabd24: mov    0x4(%rsp),%eax
  0x0000000115cabd28: mov    %eax,(%rsp)
  0x0000000115cabd2b: mov    -0x8(%rsp),%rax
  0x0000000115cabd30: mov    %r10d,0x4(%rsp)
  0x0000000115cabd35: mov    %r8,0x8(%rsp)
  0x0000000115cabd3a: mov    %r11d,0x10(%rsp)
  0x0000000115cabd3f: mov    %ecx,0x14(%rsp)
  0x0000000115cabd43: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabd48: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabd4a: mov    $0xffffffe4,%esi
  0x0000000115cabd4f: mov    %edx,(%rsp)
  0x0000000115cabd52: nop
  0x0000000115cabd53: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabd58: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabd5a: mov    $0xffffffde,%esi
  0x0000000115cabd5f: mov    %rax,-0x8(%rsp)
  0x0000000115cabd64: mov    0x4(%rsp),%eax
  0x0000000115cabd68: mov    %eax,(%rsp)
  0x0000000115cabd6b: mov    -0x8(%rsp),%rax
  0x0000000115cabd70: mov    %r10d,0x4(%rsp)
  0x0000000115cabd75: mov    %r11d,0x10(%rsp)
  0x0000000115cabd7a: mov    %r8,0x18(%rsp)
  0x0000000115cabd7f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabd84: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabd86: mov    $0xffffffde,%esi
  0x0000000115cabd8b: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabd90: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x0000000115cabd92: mov    $0xfffffff6,%esi
  0x0000000115cabd97: mov    %r8,%rbp
  0x0000000115cabd9a: nop
  0x0000000115cabd9b: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabda0: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabda2: mov    $0xfffffff4,%esi
  0x0000000115cabda7: mov    0x4(%rsp),%ebp
  0x0000000115cabdab: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabdb0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x0000000115cabdb2: mov    $0xfffffff4,%esi
  0x0000000115cabdb7: mov    0x4(%rsp),%ebp
  0x0000000115cabdbb: mov    %r10d,(%rsp)
  0x0000000115cabdbf: mov    %r11d,0x4(%rsp)
  0x0000000115cabdc4: mov    %r8,0x10(%rsp)
  0x0000000115cabdc9: xchg   %ax,%ax
  0x0000000115cabdcb: callq  0x0000000115c55900  ; ImmutableOopMap{[4]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabdd0: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabdd2: mov    $0xffffff4d,%esi
  0x0000000115cabdd7: mov    0x4(%rsp),%ebp
  0x0000000115cabddb: mov    %r10d,(%rsp)
  0x0000000115cabddf: mov    %r8,0x8(%rsp)
  0x0000000115cabde4: mov    %ebx,0x10(%rsp)
  0x0000000115cabde8: data16 xchg %ax,%ax
  0x0000000115cabdeb: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabdf0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000115cabdf2: mov    $0xffffff4d,%esi
  0x0000000115cabdf7: mov    0x4(%rsp),%ebp
  0x0000000115cabdfb: mov    %r10d,(%rsp)
  0x0000000115cabdff: mov    %r8,0x8(%rsp)
  0x0000000115cabe04: mov    %r11d,0x10(%rsp)
  0x0000000115cabe09: xchg   %ax,%ax
  0x0000000115cabe0b: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cabe10: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000115cabe12: mov    %rax,%rsi
  0x0000000115cabe15: add    $0x30,%rsp
  0x0000000115cabe19: pop    %rbp
  0x0000000115cabe1a: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115cabe1f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115cabe20: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115cabe25: callq  0x0000000115cabe2a
  0x0000000115cabe2a: subq   $0x5,(%rsp)
  0x0000000115cabe2f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115cabe34: hlt    
  0x0000000115cabe35: hlt    
  0x0000000115cabe36: hlt    
  0x0000000115cabe37: hlt    

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
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 784 816 Compiled method (c2)     289   75             java.lang.invoke.Invokers$Holder::linkToTargetMethod (9 bytes)
 total in heap  [0x0000000115ca8810,0x0000000115ca8b80] = 880
 relocation     [0x0000000115ca8988,0x0000000115ca89a8] = 32
 main code      [0x0000000115ca89c0,0x0000000115ca8a40] = 128
 stub code      [0x0000000115ca8a40,0x0000000115ca8a78] = 56
 metadata       [0x0000000115ca8a78,0x0000000115ca8a88] = 16
 scopes data    [0x0000000115ca8a88,0x0000000115ca8ac0] = 56
 scopes pcs     [0x0000000115ca8ac0,0x0000000115ca8b50] = 144
 dependencies   [0x0000000115ca8b50,0x0000000115ca8b58] = 8
 handler table  [0x0000000115ca8b58,0x0000000115ca8b70] = 24
 nul chk table  [0x0000000115ca8b70,0x0000000115ca8b80] = 16
----------------------------------------------------------------------
java/lang/invoke/Invokers$Holder.linkToTargetMethod(ILjava/lang/Object;)Ljava/lang/Object;  [0x0000000115ca89c0, 0x0000000115ca8a78]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001247ae6f8} 'linkToTargetMethod' '(ILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/Invokers$Holder'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca89c0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca89c7: push   %rbp
  0x0000000115ca89c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@-1

  0x0000000115ca89cc: mov    %esi,%r11d
  0x0000000115ca89cf: mov    0x8(%rdx),%r10d    ; implicit exception: dispatches to 0x0000000115ca8a1b
  0x0000000115ca89d3: cmp    $0xc0e0,%r10d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x0000000115ca89da: jne    0x0000000115ca89f8
  0x0000000115ca89dc: mov    %rdx,%rsi          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x0000000115ca89df: mov    %r11d,%edx
  0x0000000115ca89e2: nop
  0x0000000115ca89e3: callq  0x0000000115c53f00  ; ImmutableOopMap{}
                                                ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ;   {optimized virtual_call}
  0x0000000115ca89e8: add    $0x20,%rsp
  0x0000000115ca89ec: pop    %rbp
  0x0000000115ca89ed: mov    0x108(%r15),%r10
  0x0000000115ca89f4: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca89f7: retq   
  0x0000000115ca89f8: mov    $0xffffff6e,%esi
  0x0000000115ca89fd: mov    %r11d,%ebp
  0x0000000115ca8a00: mov    %rdx,(%rsp)
  0x0000000115ca8a04: data16 xchg %ax,%ax
  0x0000000115ca8a07: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca8a0c: ud2                       ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5

  0x0000000115ca8a0e: mov    %rax,%rsi
  0x0000000115ca8a11: add    $0x20,%rsp
  0x0000000115ca8a15: pop    %rbp
  0x0000000115ca8a16: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115ca8a1b: mov    $0xffffff64,%esi
  0x0000000115ca8a20: mov    %r11d,%ebp
  0x0000000115ca8a23: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca8a28: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x0000000115ca8a2a: hlt    
  0x0000000115ca8a2b: hlt    
  0x0000000115ca8a2c: hlt    
  0x0000000115ca8a2d: hlt    
  0x0000000115ca8a2e: hlt    
  0x0000000115ca8a2f: hlt    
  0x0000000115ca8a30: hlt    
  0x0000000115ca8a31: hlt    
  0x0000000115ca8a32: hlt    
  0x0000000115ca8a33: hlt    
  0x0000000115ca8a34: hlt    
  0x0000000115ca8a35: hlt    
  0x0000000115ca8a36: hlt    
  0x0000000115ca8a37: hlt    
  0x0000000115ca8a38: hlt    
  0x0000000115ca8a39: hlt    
  0x0000000115ca8a3a: hlt    
  0x0000000115ca8a3b: hlt    
  0x0000000115ca8a3c: hlt    
  0x0000000115ca8a3d: hlt    
  0x0000000115ca8a3e: hlt    
  0x0000000115ca8a3f: hlt    
[Stub Code]
  0x0000000115ca8a40: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000115ca8a4a: jmpq   0x0000000115ca8a4a  ;   {runtime_call}
[Exception Handler]
  0x0000000115ca8a4f: jmpq   0x0000000115c8a680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000115ca8a54: callq  0x0000000115ca8a59
  0x0000000115ca8a59: subq   $0x5,(%rsp)
  0x0000000115ca8a5e: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
[Deopt MH Handler Code]
  0x0000000115ca8a63: callq  0x0000000115ca8a68
  0x0000000115ca8a68: subq   $0x5,(%rsp)
  0x0000000115ca8a6d: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca8a72: hlt    
  0x0000000115ca8a73: hlt    
  0x0000000115ca8a74: hlt    
  0x0000000115ca8a75: hlt    
  0x0000000115ca8a76: hlt    
  0x0000000115ca8a77: hlt    

ImmutableOopMap{}pc offsets: 40 
ImmutableOopMap{[0]=Oop }pc offsets: 76 
ImmutableOopMap{}pc offsets: 104 Compiled method (c2)     292   76             java.lang.invoke.DirectMethodHandle$Holder::invokeStatic (14 bytes)
 total in heap  [0x0000000115ca8410,0x0000000115ca87a0] = 912
 relocation     [0x0000000115ca8588,0x0000000115ca85a8] = 32
 main code      [0x0000000115ca85c0,0x0000000115ca8640] = 128
 stub code      [0x0000000115ca8640,0x0000000115ca8668] = 40
 metadata       [0x0000000115ca8668,0x0000000115ca8680] = 24
 scopes data    [0x0000000115ca8680,0x0000000115ca86d0] = 80
 scopes pcs     [0x0000000115ca86d0,0x0000000115ca8770] = 160
 dependencies   [0x0000000115ca8770,0x0000000115ca8778] = 8
 handler table  [0x0000000115ca8778,0x0000000115ca8790] = 24
 nul chk table  [0x0000000115ca8790,0x0000000115ca87a0] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle$Holder.invokeStatic(Ljava/lang/Object;I)Ljava/lang/Object;  [0x0000000115ca85c0, 0x0000000115ca8668]  168 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012476d070} 'invokeStatic' '(Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000115ca85c0: mov    %eax,-0x14000(%rsp)
  0x0000000115ca85c7: push   %rbp
  0x0000000115ca85c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@-1

  0x0000000115ca85cc: mov    %edx,%r10d
  0x0000000115ca85cf: mov    0x8(%rsi),%r8d     ; implicit exception: dispatches to 0x0000000115ca861f
  0x0000000115ca85d3: cmp    $0xc0e0,%r8d       ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x0000000115ca85da: jne    0x0000000115ca8600  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x0000000115ca85dc: mov    0x1c(%rsi),%r8d
  0x0000000115ca85e0: mov    %r8,%rdx
  0x0000000115ca85e3: shl    $0x3,%rdx          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x0000000115ca85e7: mov    %r10d,%esi
  0x0000000115ca85ea: nop
  0x0000000115ca85eb: callq  0x0000000115c54400  ; ImmutableOopMap{}
                                                ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ;   {static_call}
  0x0000000115ca85f0: add    $0x20,%rsp
  0x0000000115ca85f4: pop    %rbp
  0x0000000115ca85f5: mov    0x108(%r15),%r10
  0x0000000115ca85fc: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca85ff: retq   
  0x0000000115ca8600: mov    %edx,%ebp
  0x0000000115ca8602: mov    %rsi,(%rsp)
  0x0000000115ca8606: mov    $0xffffff6e,%esi
  0x0000000115ca860b: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca8610: ud2                       ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10

  0x0000000115ca8612: mov    %rax,%rsi
  0x0000000115ca8615: add    $0x20,%rsp
  0x0000000115ca8619: pop    %rbp
  0x0000000115ca861a: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115ca861f: mov    $0xffffff64,%esi
  0x0000000115ca8624: mov    %edx,%ebp
  0x0000000115ca8626: nop
  0x0000000115ca8627: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115ca862c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x0000000115ca862e: hlt    
  0x0000000115ca862f: hlt    
  0x0000000115ca8630: hlt    
  0x0000000115ca8631: hlt    
  0x0000000115ca8632: hlt    
  0x0000000115ca8633: hlt    
  0x0000000115ca8634: hlt    
  0x0000000115ca8635: hlt    
  0x0000000115ca8636: hlt    
  0x0000000115ca8637: hlt    
  0x0000000115ca8638: hlt    
  0x0000000115ca8639: hlt    
  0x0000000115ca863a: hlt    
  0x0000000115ca863b: hlt    
  0x0000000115ca863c: hlt    
  0x0000000115ca863d: hlt    
  0x0000000115ca863e: hlt    
  0x0000000115ca863f: hlt    
[Stub Code]
  0x0000000115ca8640: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000115ca864a: jmpq   0x0000000115ca864a  ;   {runtime_call}
[Exception Handler]
  0x0000000115ca864f: jmpq   0x0000000115c8a680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000115ca8654: callq  0x0000000115ca8659
  0x0000000115ca8659: subq   $0x5,(%rsp)
  0x0000000115ca865e: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca8663: hlt    
  0x0000000115ca8664: hlt    
  0x0000000115ca8665: hlt    
  0x0000000115ca8666: hlt    
  0x0000000115ca8667: hlt    

ImmutableOopMap{}pc offsets: 48 
ImmutableOopMap{[0]=Oop }pc offsets: 80 
ImmutableOopMap{}pc offsets: 108 Compiled method (c2)     294   77             FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda (9 bytes)
 total in heap  [0x0000000115ca9d90,0x0000000115caa098] = 776
 relocation     [0x0000000115ca9f08,0x0000000115ca9f20] = 24
 main code      [0x0000000115ca9f20,0x0000000115ca9fc0] = 160
 stub code      [0x0000000115ca9fc0,0x0000000115ca9fd8] = 24
 oops           [0x0000000115ca9fd8,0x0000000115ca9fe0] = 8
 metadata       [0x0000000115ca9fe0,0x0000000115ca9ff0] = 16
 scopes data    [0x0000000115ca9ff0,0x0000000115caa008] = 24
 scopes pcs     [0x0000000115caa008,0x0000000115caa078] = 112
 dependencies   [0x0000000115caa078,0x0000000115caa080] = 8
 handler table  [0x0000000115caa080,0x0000000115caa098] = 24
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.get$Lambda(I)Ljava/util/function/Supplier;  [0x0000000115ca9f20, 0x0000000115ca9fd8]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012482f300} 'get$Lambda' '(I)Ljava/util/function/Supplier;' in 'FunctionalHashMap$$Lambda$1'
  # parm0:    rsi       = int
  #           [sp+0x20]  (sp of caller)
  0x0000000115ca9f20: mov    %eax,-0x14000(%rsp)
  0x0000000115ca9f27: push   %rbp
  0x0000000115ca9f28: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x0000000115ca9f2c: mov    %esi,%ebp
  0x0000000115ca9f2e: mov    0x118(%r15),%rax
  0x0000000115ca9f35: mov    %rax,%r10
  0x0000000115ca9f38: add    $0x10,%r10
  0x0000000115ca9f3c: cmp    0x128(%r15),%r10
  0x0000000115ca9f43: jae    0x0000000115ca9f8e
  0x0000000115ca9f45: mov    %r10,0x118(%r15)
  0x0000000115ca9f4c: prefetchnta 0xc0(%r10)
  0x0000000115ca9f54: mov    $0x60840,%r10d     ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x0000000115ca9f5a: movabs $0x800000000,%r12
  0x0000000115ca9f64: add    %r12,%r10
  0x0000000115ca9f67: xor    %r12,%r12
  0x0000000115ca9f6a: mov    0xb8(%r10),%r10
  0x0000000115ca9f71: mov    %r10,(%rax)
  0x0000000115ca9f74: movl   $0x60840,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x0000000115ca9f7b: mov    %ebp,0xc(%rax)     ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x0000000115ca9f7e: add    $0x10,%rsp
  0x0000000115ca9f82: pop    %rbp
  0x0000000115ca9f83: mov    0x108(%r15),%r10
  0x0000000115ca9f8a: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115ca9f8d: retq   
  0x0000000115ca9f8e: movabs $0x800060840,%rsi  ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x0000000115ca9f98: data16 xchg %ax,%ax
  0x0000000115ca9f9b: callq  0x0000000115c8d700  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115ca9fa0: jmp    0x0000000115ca9f7b  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0

  0x0000000115ca9fa2: mov    %rax,%rsi
  0x0000000115ca9fa5: add    $0x10,%rsp
  0x0000000115ca9fa9: pop    %rbp
  0x0000000115ca9faa: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115ca9faf: hlt    
  0x0000000115ca9fb0: hlt    
  0x0000000115ca9fb1: hlt    
  0x0000000115ca9fb2: hlt    
  0x0000000115ca9fb3: hlt    
  0x0000000115ca9fb4: hlt    
  0x0000000115ca9fb5: hlt    
  0x0000000115ca9fb6: hlt    
  0x0000000115ca9fb7: hlt    
  0x0000000115ca9fb8: hlt    
  0x0000000115ca9fb9: hlt    
  0x0000000115ca9fba: hlt    
  0x0000000115ca9fbb: hlt    
  0x0000000115ca9fbc: hlt    
  0x0000000115ca9fbd: hlt    
  0x0000000115ca9fbe: hlt    
  0x0000000115ca9fbf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115ca9fc0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115ca9fc5: callq  0x0000000115ca9fca
  0x0000000115ca9fca: subq   $0x5,(%rsp)
  0x0000000115ca9fcf: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115ca9fd4: hlt    
  0x0000000115ca9fd5: hlt    
  0x0000000115ca9fd6: hlt    
  0x0000000115ca9fd7: hlt    

ImmutableOopMap{}pc offsets: 128 Compiled method (c2)     296   78             FunctionalHashMap$$Lambda$1/0x0000000800060840::<init> (10 bytes)
 total in heap  [0x0000000115cac590,0x0000000115cac7e0] = 592
 relocation     [0x0000000115cac708,0x0000000115cac718] = 16
 main code      [0x0000000115cac720,0x0000000115cac760] = 64
 stub code      [0x0000000115cac760,0x0000000115cac778] = 24
 oops           [0x0000000115cac778,0x0000000115cac780] = 8
 metadata       [0x0000000115cac780,0x0000000115cac788] = 8
 scopes data    [0x0000000115cac788,0x0000000115cac798] = 16
 scopes pcs     [0x0000000115cac798,0x0000000115cac7d8] = 64
 dependencies   [0x0000000115cac7d8,0x0000000115cac7e0] = 8
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.<init>(I)V  [0x0000000115cac720, 0x0000000115cac778]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012482f260} '<init>' '(I)V' in 'FunctionalHashMap$$Lambda$1'
  # this:     rsi:rsi   = 'FunctionalHashMap$$Lambda$1'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x0000000115cac720: mov    0x8(%rsi),%r10d
  0x0000000115cac724: movabs $0x800000000,%r12
  0x0000000115cac72e: add    %r12,%r10
  0x0000000115cac731: xor    %r12,%r12
  0x0000000115cac734: cmp    %r10,%rax
  0x0000000115cac737: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115cac73d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115cac740: sub    $0x18,%rsp
  0x0000000115cac747: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@-1

  0x0000000115cac74c: mov    %edx,0xc(%rsi)     ;*putfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@6

  0x0000000115cac74f: add    $0x10,%rsp
  0x0000000115cac753: pop    %rbp
  0x0000000115cac754: mov    0x108(%r15),%r10
  0x0000000115cac75b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115cac75e: retq   
  0x0000000115cac75f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115cac760: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115cac765: callq  0x0000000115cac76a
  0x0000000115cac76a: subq   $0x5,(%rsp)
  0x0000000115cac76f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115cac774: hlt    
  0x0000000115cac775: hlt    
  0x0000000115cac776: hlt    
  0x0000000115cac777: hlt    
Compiled method (c2)     297   79             java.util.Optional::orElseGet (21 bytes)
 total in heap  [0x0000000115cac810,0x0000000115cacaf0] = 736
 relocation     [0x0000000115cac988,0x0000000115cac998] = 16
 main code      [0x0000000115cac9a0,0x0000000115caca20] = 128
 stub code      [0x0000000115caca20,0x0000000115caca38] = 24
 metadata       [0x0000000115caca38,0x0000000115caca40] = 8
 scopes data    [0x0000000115caca40,0x0000000115caca68] = 40
 scopes pcs     [0x0000000115caca68,0x0000000115cacae8] = 128
 dependencies   [0x0000000115cacae8,0x0000000115cacaf0] = 8
----------------------------------------------------------------------
java/util/Optional.orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;  [0x0000000115cac9a0, 0x0000000115caca38]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000124679548} 'orElseGet' '(Ljava/util/function/Supplier;)Ljava/lang/Object;' in 'java/util/Optional'
  # this:     rsi:rsi   = 'java/util/Optional'
  # parm0:    rdx:rdx   = 'java/util/function/Supplier'
  #           [sp+0x30]  (sp of caller)
  0x0000000115cac9a0: mov    0x8(%rsi),%r10d
  0x0000000115cac9a4: movabs $0x800000000,%r12
  0x0000000115cac9ae: add    %r12,%r10
  0x0000000115cac9b1: xor    %r12,%r12
  0x0000000115cac9b4: cmp    %r10,%rax
  0x0000000115cac9b7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115cac9bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115cac9c0: mov    %eax,-0x14000(%rsp)
  0x0000000115cac9c7: push   %rbp
  0x0000000115cac9c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::orElseGet@-1 (line 369)

  0x0000000115cac9cc: mov    0xc(%rsi),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x0000000115cac9d0: test   %r11d,%r11d
  0x0000000115cac9d3: je     0x0000000115cac9ec  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x0000000115cac9d5: mov    %r11,%rax
  0x0000000115cac9d8: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x0000000115cac9dc: add    $0x20,%rsp
  0x0000000115cac9e0: pop    %rbp
  0x0000000115cac9e1: mov    0x108(%r15),%r10
  0x0000000115cac9e8: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115cac9eb: retq   
  0x0000000115cac9ec: mov    %rsi,%rbp
  0x0000000115cac9ef: mov    %rdx,(%rsp)
  0x0000000115cac9f3: mov    %r11d,0x8(%rsp)
  0x0000000115cac9f8: mov    $0xffffff4d,%esi
  0x0000000115cac9fd: xchg   %ax,%ax
  0x0000000115cac9ff: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caca04: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x0000000115caca06: hlt    
  0x0000000115caca07: hlt    
  0x0000000115caca08: hlt    
  0x0000000115caca09: hlt    
  0x0000000115caca0a: hlt    
  0x0000000115caca0b: hlt    
  0x0000000115caca0c: hlt    
  0x0000000115caca0d: hlt    
  0x0000000115caca0e: hlt    
  0x0000000115caca0f: hlt    
  0x0000000115caca10: hlt    
  0x0000000115caca11: hlt    
  0x0000000115caca12: hlt    
  0x0000000115caca13: hlt    
  0x0000000115caca14: hlt    
  0x0000000115caca15: hlt    
  0x0000000115caca16: hlt    
  0x0000000115caca17: hlt    
  0x0000000115caca18: hlt    
  0x0000000115caca19: hlt    
  0x0000000115caca1a: hlt    
  0x0000000115caca1b: hlt    
  0x0000000115caca1c: hlt    
  0x0000000115caca1d: hlt    
  0x0000000115caca1e: hlt    
  0x0000000115caca1f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115caca20: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115caca25: callq  0x0000000115caca2a
  0x0000000115caca2a: subq   $0x5,(%rsp)
  0x0000000115caca2f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115caca34: hlt    
  0x0000000115caca35: hlt    
  0x0000000115caca36: hlt    
  0x0000000115caca37: hlt    

ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 100 Compiled method (c2)     301   80             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x0000000115cacb10,0x0000000115cacd98] = 648
 relocation     [0x0000000115cacc88,0x0000000115cacc98] = 16
 main code      [0x0000000115cacca0,0x0000000115cacce0] = 64
 stub code      [0x0000000115cacce0,0x0000000115caccf8] = 24
 oops           [0x0000000115caccf8,0x0000000115cacd00] = 8
 metadata       [0x0000000115cacd00,0x0000000115cacd18] = 24
 scopes data    [0x0000000115cacd18,0x0000000115cacd40] = 40
 scopes pcs     [0x0000000115cacd40,0x0000000115cacd90] = 80
 dependencies   [0x0000000115cacd90,0x0000000115cacd98] = 8
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x0000000115cacca0, 0x0000000115caccf8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012482d8a0} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x20]  (sp of caller)
  0x0000000115cacca0: mov    0x8(%rsi),%r10d
  0x0000000115cacca4: movabs $0x800000000,%r12
  0x0000000115caccae: add    %r12,%r10
  0x0000000115caccb1: xor    %r12,%r12
  0x0000000115caccb4: cmp    %r10,%rax
  0x0000000115caccb7: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115caccbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115caccc0: mov    %eax,-0x14000(%rsp)
  0x0000000115caccc7: push   %rbp
  0x0000000115caccc8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x0000000115cacccc: mov    %rsi,%rbp
  0x0000000115cacccf: mov    $0xffffffbe,%esi
  0x0000000115caccd4: data16 xchg %ax,%ax
  0x0000000115caccd7: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caccdc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x0000000115caccde: hlt    
  0x0000000115caccdf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115cacce0: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115cacce5: callq  0x0000000115caccea
  0x0000000115caccea: subq   $0x5,(%rsp)
  0x0000000115caccef: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115caccf4: hlt    
  0x0000000115caccf5: hlt    
  0x0000000115caccf6: hlt    
  0x0000000115caccf7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     308   81 %           FunctionalHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x0000000115caab90,0x0000000115cab888] = 3320
 relocation     [0x0000000115caad08,0x0000000115caad58] = 80
 main code      [0x0000000115caad60,0x0000000115cab140] = 992
 stub code      [0x0000000115cab140,0x0000000115cab158] = 24
 oops           [0x0000000115cab158,0x0000000115cab168] = 16
 metadata       [0x0000000115cab168,0x0000000115cab1c8] = 96
 scopes data    [0x0000000115cab1c8,0x0000000115cab490] = 712
 scopes pcs     [0x0000000115cab490,0x0000000115cab830] = 928
 dependencies   [0x0000000115cab830,0x0000000115cab838] = 8
 handler table  [0x0000000115cab838,0x0000000115cab850] = 24
 nul chk table  [0x0000000115cab850,0x0000000115cab888] = 56
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x0000000115caad60, 0x0000000115cab158]  1016 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012482d8a0} 'runTest' '()I' in 'FunctionalHashMap'
  0x0000000115caad60: callq  0x000000010c8107f4  ;   {runtime_call _ZN2os10breakpointEv}
  0x0000000115caad65: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000115caad70: mov    %eax,-0x14000(%rsp)
  0x0000000115caad77: push   %rbp
  0x0000000115caad78: sub    $0x40,%rsp
  0x0000000115caad7c: mov    0x10(%rsi),%r13
  0x0000000115caad80: mov    0x8(%rsi),%ebp
  0x0000000115caad83: mov    (%rsi),%ebx
  0x0000000115caad85: mov    %rsi,%rdi
  0x0000000115caad88: movabs $0x10c891a82,%r10
  0x0000000115caad92: callq  *%r10
  0x0000000115caad95: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x0000000115cab106
  0x0000000115caad99: cmp    $0x60040,%r10d     ;   {metadata('FunctionalHashMap')}
  0x0000000115caada0: jne    0x0000000115cab022  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x0000000115caada6: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000115caadac: movabs $0x800000000,%rdi
  0x0000000115caadb6: add    %r10,%rdi
  0x0000000115caadb9: jmpq   0x0000000115caae93
  0x0000000115caadbe: xchg   %ax,%ax            ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115caadc0: mov    %r11,0x118(%r15)
  0x0000000115caadc7: prefetchnta 0xc0(%r11)
  0x0000000115caadcf: mov    0xb8(%rdi),%r11
  0x0000000115caadd6: mov    %r11,(%rax)
  0x0000000115caadd9: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000115caade0: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caade3: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000115cab076
  0x0000000115caade8: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000115caadef: jne    0x0000000115caaf51  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caadf5: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caadf8: shl    $0x3,%r10          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caadfc: mov    0x24(%r10),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae00: mov    %ecx,%r10d
  0x0000000115caae03: shr    $0x10,%r10d
  0x0000000115caae07: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae0a: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cab0be
  0x0000000115caae0f: test   %r11d,%r11d
  0x0000000115caae12: jbe    0x0000000115caaf8a  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae18: dec    %r11d
  0x0000000115caae1b: and    %r10d,%r11d
  0x0000000115caae1e: shl    $0x3,%r8
  0x0000000115caae22: mov    0x10(%r8,%r11,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae27: mov    0xc(%r12,%r8,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cab0e2
  0x0000000115caae2c: cmp    %r10d,%r9d
  0x0000000115caae2f: jne    0x0000000115caafb2  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae35: mov    0x10(%r12,%r8,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae3a: mov    %r9,%r11
  0x0000000115caae3d: shl    $0x3,%r11
  0x0000000115caae41: cmp    %rax,%r11
  0x0000000115caae44: je     0x0000000115caae68  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae46: mov    0x8(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x0000000115cab09a
  0x0000000115caae4b: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000115caae51: jne    0x0000000115cab036
  0x0000000115caae57: lea    (%r12,%r9,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae5b: mov    0xc(%r11),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae5f: cmp    %r11d,%ecx
  0x0000000115caae62: jne    0x0000000115caafda  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae68: mov    0x14(%r12,%r8,8),%r11d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae6d: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x0000000115cab086
  0x0000000115caae72: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000115caae79: jne    0x0000000115cab05e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115caae7f: mov    0x108(%r15),%r10
  0x0000000115caae86: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x0000000115caae88: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caae8c: mov    0xc(%r11),%ebp     ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115caae90: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {poll}
  0x0000000115caae93: cmp    $0x3e8,%ebx
  0x0000000115caae99: jge    0x0000000115caaf3f  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x0000000115caae9f: movabs $0x70fe0f588,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f588} = 'FunctionalHashMap')}
  0x0000000115caaea9: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaead: cmp    $0xffffff80,%ebx
  0x0000000115caaeb0: jl     0x0000000115caaf6e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaeb6: cmp    $0x7f,%ebx
  0x0000000115caaeb9: jle    0x0000000115caaf0d
  0x0000000115caaebb: mov    0x118(%r15),%rax
  0x0000000115caaec2: mov    %rax,%r11
  0x0000000115caaec5: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115caaec9: cmp    0x128(%r15),%r11
  0x0000000115caaed0: jb     0x0000000115caadc0
  0x0000000115caaed6: mov    %r10d,0x4(%rsp)
  0x0000000115caaedb: mov    %rdi,0x8(%rsp)
  0x0000000115caaee0: mov    %ebx,(%rsp)
  0x0000000115caaee3: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaee6: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000115caaef0: data16 xchg %ax,%ax
  0x0000000115caaef3: callq  0x0000000115c8d700  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115caaef8: mov    %rbp,%r13
  0x0000000115caaefb: mov    (%rsp),%ebx
  0x0000000115caaefe: mov    0x8(%rsp),%rdi
  0x0000000115caaf03: mov    0x4(%rsp),%r10d
  0x0000000115caaf08: jmpq   0x0000000115caade0
  0x0000000115caaf0d: mov    %ebx,%ebp
  0x0000000115caaf0f: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaf15: cmp    $0x100,%ebp
  0x0000000115caaf1b: jae    0x0000000115cab006
  0x0000000115caaf21: movslq %ebx,%r11
  0x0000000115caaf24: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115caaf2e: mov    0x210(%r8,%r11,4),%r8d
  0x0000000115caaf36: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaf3a: jmpq   0x0000000115caade3  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x0000000115caaf3f: mov    %ebp,%eax
  0x0000000115caaf41: add    $0x40,%rsp
  0x0000000115caaf45: pop    %rbp
  0x0000000115caaf46: mov    0x108(%r15),%r10
  0x0000000115caaf4d: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115caaf50: retq   
  0x0000000115caaf51: mov    $0xffffffde,%esi
  0x0000000115caaf56: mov    %r13,%rbp
  0x0000000115caaf59: mov    %ebx,0x4(%rsp)
  0x0000000115caaf5d: mov    %r10d,0x8(%rsp)
  0x0000000115caaf62: mov    %rax,0x10(%rsp)
  0x0000000115caaf67: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caaf6c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaf6e: mov    $0xffffff4d,%esi
  0x0000000115caaf73: mov    %r13,%rbp
  0x0000000115caaf76: mov    %ebx,0x4(%rsp)
  0x0000000115caaf7a: mov    %r10d,0x8(%rsp)
  0x0000000115caaf7f: mov    %ebx,0xc(%rsp)
  0x0000000115caaf83: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caaf88: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caaf8a: mov    $0xffffff4d,%esi
  0x0000000115caaf8f: mov    %r13,%rbp
  0x0000000115caaf92: mov    %ebx,0x4(%rsp)
  0x0000000115caaf96: mov    %r10d,0x8(%rsp)
  0x0000000115caaf9b: mov    %rax,0x10(%rsp)
  0x0000000115caafa0: mov    %r8d,0xc(%rsp)
  0x0000000115caafa5: mov    %r11d,0x1c(%rsp)
  0x0000000115caafaa: nop
  0x0000000115caafab: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caafb0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caafb2: mov    $0xffffff4d,%esi
  0x0000000115caafb7: mov    %r13,%rbp
  0x0000000115caafba: mov    %ebx,0x4(%rsp)
  0x0000000115caafbe: mov    %rax,0x10(%rsp)
  0x0000000115caafc3: mov    %r8d,0xc(%rsp)
  0x0000000115caafc8: mov    %r9d,0x18(%rsp)
  0x0000000115caafcd: mov    %r10d,0x1c(%rsp)
  0x0000000115caafd2: nop
  0x0000000115caafd3: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caafd8: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caafda: mov    $0xffffff4d,%esi
  0x0000000115caafdf: mov    %r13,%rbp
  0x0000000115caafe2: mov    %ebx,0x4(%rsp)
  0x0000000115caafe6: mov    %r10d,0x8(%rsp)
  0x0000000115caafeb: mov    %rax,0x10(%rsp)
  0x0000000115caaff0: mov    %r8d,0xc(%rsp)
  0x0000000115caaff5: mov    %ecx,0x18(%rsp)
  0x0000000115caaff9: mov    %r11d,0x1c(%rsp)
  0x0000000115caaffe: nop
  0x0000000115caafff: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab004: ud2    
  0x0000000115cab006: mov    $0xffffffe4,%esi
  0x0000000115cab00b: mov    %r13,(%rsp)
  0x0000000115cab00f: mov    %ebx,0xc(%rsp)
  0x0000000115cab013: mov    %r10d,0x10(%rsp)
  0x0000000115cab018: data16 xchg %ax,%ax
  0x0000000115cab01b: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab020: ud2    
  0x0000000115cab022: mov    $0xffffff95,%esi
  0x0000000115cab027: mov    %r13,(%rsp)
  0x0000000115cab02b: mov    %ebx,0x8(%rsp)
  0x0000000115cab02f: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab034: ud2    
  0x0000000115cab036: mov    $0xffffffde,%esi
  0x0000000115cab03b: mov    %r13,%rbp
  0x0000000115cab03e: mov    %ebx,0x4(%rsp)
  0x0000000115cab042: mov    %r10d,0x8(%rsp)
  0x0000000115cab047: mov    %r8d,0xc(%rsp)
  0x0000000115cab04c: mov    %rax,0x18(%rsp)
  0x0000000115cab051: mov    %r9d,0x24(%rsp)
  0x0000000115cab056: nop
  0x0000000115cab057: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab05c: ud2    
  0x0000000115cab05e: mov    $0xffffffde,%esi
  0x0000000115cab063: mov    %r13,%rbp
  0x0000000115cab066: mov    %ebx,0x4(%rsp)
  0x0000000115cab06a: mov    %r11d,0x8(%rsp)
  0x0000000115cab06f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab074: ud2    
  0x0000000115cab076: mov    $0xfffffff6,%esi
  0x0000000115cab07b: mov    %rax,%rbp
  0x0000000115cab07e: nop
  0x0000000115cab07f: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab084: ud2    
  0x0000000115cab086: mov    $0xfffffff4,%esi
  0x0000000115cab08b: mov    %r13,%rbp
  0x0000000115cab08e: mov    %ebx,0x4(%rsp)
  0x0000000115cab092: nop
  0x0000000115cab093: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab098: ud2    
  0x0000000115cab09a: mov    $0xfffffff4,%esi
  0x0000000115cab09f: mov    %r13,%rbp
  0x0000000115cab0a2: mov    %ebx,0x4(%rsp)
  0x0000000115cab0a6: mov    %r10d,0x8(%rsp)
  0x0000000115cab0ab: mov    %r8d,0xc(%rsp)
  0x0000000115cab0b0: mov    %rax,0x18(%rsp)
  0x0000000115cab0b5: xchg   %ax,%ax
  0x0000000115cab0b7: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab0bc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cab0be: mov    $0xffffff4d,%esi
  0x0000000115cab0c3: mov    %r13,%rbp
  0x0000000115cab0c6: mov    %ebx,0x4(%rsp)
  0x0000000115cab0ca: mov    %r10d,0x8(%rsp)
  0x0000000115cab0cf: mov    %rax,0x10(%rsp)
  0x0000000115cab0d4: mov    %r8d,0x18(%rsp)
  0x0000000115cab0d9: xchg   %ax,%ax
  0x0000000115cab0db: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab0e0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cab0e2: mov    $0xffffff4d,%esi
  0x0000000115cab0e7: mov    %r13,%rbp
  0x0000000115cab0ea: mov    %ebx,0x4(%rsp)
  0x0000000115cab0ee: mov    %r10d,0x8(%rsp)
  0x0000000115cab0f3: mov    %rax,0x10(%rsp)
  0x0000000115cab0f8: mov    %r8d,0x18(%rsp)
  0x0000000115cab0fd: xchg   %ax,%ax
  0x0000000115cab0ff: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab104: ud2    
  0x0000000115cab106: mov    $0xffffffbe,%esi
  0x0000000115cab10b: mov    %ebx,(%rsp)
  0x0000000115cab10e: nop
  0x0000000115cab10f: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cab114: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cab116: mov    %rax,%rsi
  0x0000000115cab119: add    $0x40,%rsp
  0x0000000115cab11d: pop    %rbp
  0x0000000115cab11e: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115cab123: hlt    
  0x0000000115cab124: hlt    
  0x0000000115cab125: hlt    
  0x0000000115cab126: hlt    
  0x0000000115cab127: hlt    
  0x0000000115cab128: hlt    
  0x0000000115cab129: hlt    
  0x0000000115cab12a: hlt    
  0x0000000115cab12b: hlt    
  0x0000000115cab12c: hlt    
  0x0000000115cab12d: hlt    
  0x0000000115cab12e: hlt    
  0x0000000115cab12f: hlt    
  0x0000000115cab130: hlt    
  0x0000000115cab131: hlt    
  0x0000000115cab132: hlt    
  0x0000000115cab133: hlt    
  0x0000000115cab134: hlt    
  0x0000000115cab135: hlt    
  0x0000000115cab136: hlt    
  0x0000000115cab137: hlt    
  0x0000000115cab138: hlt    
  0x0000000115cab139: hlt    
  0x0000000115cab13a: hlt    
  0x0000000115cab13b: hlt    
  0x0000000115cab13c: hlt    
  0x0000000115cab13d: hlt    
  0x0000000115cab13e: hlt    
  0x0000000115cab13f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000115cab140: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115cab145: callq  0x0000000115cab14a
  0x0000000115cab14a: subq   $0x5,(%rsp)
  0x0000000115cab14f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115cab154: hlt    
  0x0000000115cab155: hlt    
  0x0000000115cab156: hlt    
  0x0000000115cab157: hlt    

ImmutableOopMap{r13=Oop }pc offsets: 304 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 408 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 524 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 552 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }pc offsets: 592 632 676 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 704 
ImmutableOopMap{[0]=Oop }pc offsets: 724 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }pc offsets: 764 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 788 
ImmutableOopMap{rbp=Oop }pc offsets: 804 824 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }pc offsets: 860 
ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }pc offsets: 896 932 
ImmutableOopMap{}pc offsets: 948 Compiled method (c2)     328   82             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x0000000115cad710,0x0000000115cae980] = 4720
 relocation     [0x0000000115cad888,0x0000000115cad8f8] = 112
 main code      [0x0000000115cad900,0x0000000115cade80] = 1408
 stub code      [0x0000000115cade80,0x0000000115cade98] = 24
 oops           [0x0000000115cade98,0x0000000115cadeb0] = 24
 metadata       [0x0000000115cadeb0,0x0000000115cadf20] = 112
 scopes data    [0x0000000115cadf20,0x0000000115cae1d8] = 696
 scopes pcs     [0x0000000115cae1d8,0x0000000115cae8c8] = 1776
 dependencies   [0x0000000115cae8c8,0x0000000115cae8d0] = 8
 handler table  [0x0000000115cae8d0,0x0000000115cae900] = 48
 nul chk table  [0x0000000115cae900,0x0000000115cae980] = 128
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x0000000115cad900, 0x0000000115cade98]  1432 bytes
[Entry Point]
[Constants]
  # {method} {0x000000012482d8a0} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x50]  (sp of caller)
  0x0000000115cad900: mov    0x8(%rsi),%r10d
  0x0000000115cad904: movabs $0x800000000,%r12
  0x0000000115cad90e: add    %r12,%r10
  0x0000000115cad911: xor    %r12,%r12
  0x0000000115cad914: cmp    %r10,%rax
  0x0000000115cad917: jne    0x0000000115c53c80  ;   {runtime_call ic_miss_stub}
  0x0000000115cad91d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000115cad920: mov    %eax,-0x14000(%rsp)
  0x0000000115cad927: push   %rbp
  0x0000000115cad928: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x0000000115cad92c: mov    %rsi,0x28(%rsp)
  0x0000000115cad931: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115cad93b: mov    0x210(%r10),%r9d   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad942: movabs $0x70fe0f588,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f588} = 'FunctionalHashMap')}
  0x0000000115cad94c: mov    0x70(%r10),%r10d
  0x0000000115cad950: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000115caddde
  0x0000000115cad955: lea    (%r12,%r10,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad959: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000115cad960: jne    0x0000000115cadcbf  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad966: mov    0xc(%r12,%r9,8),%ebx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad96b: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad96f: mov    %ebx,%r8d
  0x0000000115cad972: shr    $0x10,%r8d
  0x0000000115cad976: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad979: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade26
  0x0000000115cad97e: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad982: test   %r11d,%r11d
  0x0000000115cad985: jbe    0x0000000115cadcde  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad98b: dec    %r11d
  0x0000000115cad98e: and    %r8d,%r11d
  0x0000000115cad991: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad996: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade4a
  0x0000000115cad99b: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad99f: cmp    %r8d,%r11d
  0x0000000115cad9a2: jne    0x0000000115cadd06  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9a8: mov    0x10(%r12,%rcx,8),%r10d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9ad: cmp    %r9d,%r10d
  0x0000000115cad9b0: je     0x0000000115cad9d3  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9b2: mov    0x8(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x0000000115cade02
  0x0000000115cad9b7: lea    (%r12,%r10,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9bb: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000115cad9c1: jne    0x0000000115caddb6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9c7: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9cb: cmp    %edx,%ebx
  0x0000000115cad9cd: jne    0x0000000115cadd2e  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9d3: mov    0x14(%r12,%rcx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9d8: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000115caddee
  0x0000000115cad9dd: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000115cad9e4: jne    0x0000000115cadd9a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cad9ea: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000115cad9f0: movabs $0x800000000,%rsi
  0x0000000115cad9fa: add    %r11,%rsi
  0x0000000115cad9fd: mov    $0x1,%r10d
  0x0000000115cada03: jmpq   0x0000000115cadaea
  0x0000000115cada08: nopl   0x0(%rax,%rax,1)   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115cada10: mov    %r11,0x118(%r15)
  0x0000000115cada17: prefetchnta 0xc0(%r11)
  0x0000000115cada1f: mov    0xb8(%rsi),%r11
  0x0000000115cada26: mov    %r11,(%rax)
  0x0000000115cada29: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000115cada30: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada34: mov    %rax,%r9
  0x0000000115cada37: shr    $0x3,%r9
  0x0000000115cada3b: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x0000000115caddde
  0x0000000115cada40: lea    (%r12,%rbp,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada44: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000115cada4b: jne    0x0000000115cadcc2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada51: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada54: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada58: mov    %ebx,%r8d
  0x0000000115cada5b: shr    $0x10,%r8d
  0x0000000115cada5f: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada62: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade29
  0x0000000115cada67: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada6b: test   %r11d,%r11d
  0x0000000115cada6e: jbe    0x0000000115cadce1  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada74: dec    %r11d
  0x0000000115cada77: and    %r8d,%r11d
  0x0000000115cada7a: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada7f: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade4d
  0x0000000115cada84: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada88: cmp    %r8d,%r11d
  0x0000000115cada8b: jne    0x0000000115cadd09  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada91: mov    0x10(%r12,%rcx,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cada96: mov    %r11,%rdx
  0x0000000115cada99: shl    $0x3,%rdx
  0x0000000115cada9d: cmp    %rax,%rdx
  0x0000000115cadaa0: je     0x0000000115cadac3  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadaa2: mov    0x8(%r12,%r11,8),%edx  ; implicit exception: dispatches to 0x0000000115cade05
  0x0000000115cadaa7: shl    $0x3,%r11          ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadaab: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000115cadab1: jne    0x0000000115caddb9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadab7: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadabb: cmp    %edx,%ebx
  0x0000000115cadabd: jne    0x0000000115cadd31  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadac3: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000115cadac8: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000115caddf1
  0x0000000115cadacd: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadad1: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000115cadad8: jne    0x0000000115cadda1  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadade: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x0000000115cadae1: cmp    $0x80,%r10d
  0x0000000115cadae8: jge    0x0000000115cadb5d  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)

  0x0000000115cadaea: movabs $0x70fe0f588,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f588} = 'FunctionalHashMap')}
  0x0000000115cadaf4: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadaf8: cmp    $0x7f,%r10d
  0x0000000115cadafc: jle    0x0000000115cadb42
  0x0000000115cadafe: mov    0x118(%r15),%rax
  0x0000000115cadb05: mov    %rax,%r11
  0x0000000115cadb08: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115cadb0c: cmp    0x128(%r15),%r11
  0x0000000115cadb13: jb     0x0000000115cada10
  0x0000000115cadb19: mov    %rsi,0x8(%rsp)
  0x0000000115cadb1e: mov    %r10d,(%rsp)
  0x0000000115cadb22: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000115cadb2c: data16 xchg %ax,%ax
  0x0000000115cadb2f: callq  0x0000000115c8d700  ; ImmutableOopMap{rbp=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115cadb34: mov    (%rsp),%r10d
  0x0000000115cadb38: mov    0x8(%rsp),%rsi
  0x0000000115cadb3d: jmpq   0x0000000115cada30
  0x0000000115cadb42: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115cadb4c: mov    0x210(%r11,%r10,4),%r11d
  0x0000000115cadb54: lea    (%r12,%r11,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadb58: jmpq   0x0000000115cada34  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115cadb5d: mov    0x108(%r15),%r8
  0x0000000115cadb64: mov    0xc(%r11),%r11d    ; ImmutableOopMap{[40]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115cadb68: test   %eax,(%r8)         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)
                                                ;   {poll}
  0x0000000115cadb6b: movabs $0x70fe0f588,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f588} = 'FunctionalHashMap')}
  0x0000000115cadb75: mov    0x70(%r11),%ecx    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadb79: cmp    $0x7f,%r10d
  0x0000000115cadb7d: jle    0x0000000115cadc8f
  0x0000000115cadb83: mov    0x118(%r15),%rax
  0x0000000115cadb8a: mov    %rax,%r11
  0x0000000115cadb8d: add    $0x10,%r11
  0x0000000115cadb91: cmp    0x128(%r15),%r11
  0x0000000115cadb98: jae    0x0000000115cadd5a  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000115cadb9e: mov    %r11,0x118(%r15)
  0x0000000115cadba5: prefetchnta 0xc0(%r11)
  0x0000000115cadbad: mov    0xb8(%rsi),%r11
  0x0000000115cadbb4: mov    %r11,(%rax)
  0x0000000115cadbb7: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000115cadbbe: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbc2: mov    %rax,%r9
  0x0000000115cadbc5: shr    $0x3,%r9
  0x0000000115cadbc9: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x0000000115caddde
  0x0000000115cadbce: lea    (%r12,%rcx,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbd2: cmp    $0x19838,%ebx      ;   {metadata('java/util/HashMap')}
  0x0000000115cadbd8: jne    0x0000000115cadcc2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbde: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbe1: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbe5: mov    %ebx,%r8d
  0x0000000115cadbe8: shr    $0x10,%r8d
  0x0000000115cadbec: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbef: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade29
  0x0000000115cadbf4: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadbf8: test   %r11d,%r11d
  0x0000000115cadbfb: jbe    0x0000000115cadce1  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc01: dec    %r11d
  0x0000000115cadc04: and    %r8d,%r11d
  0x0000000115cadc07: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc0c: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000115cade4d
  0x0000000115cadc11: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc15: cmp    %r8d,%r11d
  0x0000000115cadc18: jne    0x0000000115cadd09  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc1e: mov    0x10(%r12,%rcx,8),%edx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc23: mov    %rdx,%r11
  0x0000000115cadc26: shl    $0x3,%r11
  0x0000000115cadc2a: cmp    %rax,%r11
  0x0000000115cadc2d: je     0x0000000115cadc50  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc2f: mov    0x8(%r12,%rdx,8),%eax  ; implicit exception: dispatches to 0x0000000115cade05
  0x0000000115cadc34: lea    (%r12,%rdx,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc38: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x0000000115cadc3e: jne    0x0000000115caddb9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc44: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc48: cmp    %edx,%ebx
  0x0000000115cadc4a: jne    0x0000000115cadd31  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc50: mov    0x14(%r12,%rcx,8),%r11d
  0x0000000115cadc55: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x0000000115caddf1
  0x0000000115cadc5a: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc5e: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000115cadc65: jne    0x0000000115cadda1  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc6b: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x0000000115cadc6e: cmp    $0x3e8,%r10d
  0x0000000115cadc75: jl     0x0000000115cadb6b  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc7b: mov    0xc(%r11),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@28 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc7f: add    $0x40,%rsp
  0x0000000115cadc83: pop    %rbp
  0x0000000115cadc84: mov    0x108(%r15),%r10
  0x0000000115cadc8b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000115cadc8e: retq   
  0x0000000115cadc8f: mov    %r10d,%ebp
  0x0000000115cadc92: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadc98: cmp    $0x100,%ebp
  0x0000000115cadc9e: jae    0x0000000115cadd84
  0x0000000115cadca4: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000115cadcae: mov    0x210(%r11,%r10,4),%r8d
  0x0000000115cadcb6: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadcba: jmpq   0x0000000115cadbc2
  0x0000000115cadcbf: xor    %r10d,%r10d
  0x0000000115cadcc2: mov    $0xffffffde,%esi
  0x0000000115cadcc7: mov    %r10d,(%rsp)
  0x0000000115cadccb: mov    %r11,0x8(%rsp)
  0x0000000115cadcd0: mov    %r9d,0x4(%rsp)
  0x0000000115cadcd5: xchg   %ax,%ax
  0x0000000115cadcd7: callq  0x0000000115c55900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadcdc: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadcde: xor    %r10d,%r10d
  0x0000000115cadce1: mov    $0xffffff4d,%esi
  0x0000000115cadce6: mov    %r10d,(%rsp)
  0x0000000115cadcea: mov    %r8d,0x4(%rsp)
  0x0000000115cadcef: mov    %r9d,0x8(%rsp)
  0x0000000115cadcf4: mov    %rcx,0x10(%rsp)
  0x0000000115cadcf9: mov    %r11d,0x18(%rsp)
  0x0000000115cadcfe: nop
  0x0000000115cadcff: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadd04: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadd06: xor    %r10d,%r10d
  0x0000000115cadd09: mov    $0xffffff4d,%esi
  0x0000000115cadd0e: mov    %r10d,(%rsp)
  0x0000000115cadd12: mov    %r9d,0x8(%rsp)
  0x0000000115cadd17: mov    %rdi,0x10(%rsp)
  0x0000000115cadd1c: mov    %r11d,0xc(%rsp)
  0x0000000115cadd21: mov    %r8d,0x18(%rsp)
  0x0000000115cadd26: nop
  0x0000000115cadd27: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadd2c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadd2e: xor    %r10d,%r10d
  0x0000000115cadd31: mov    $0xffffff4d,%esi
  0x0000000115cadd36: mov    %r10d,(%rsp)
  0x0000000115cadd3a: mov    %r8d,0x4(%rsp)
  0x0000000115cadd3f: mov    %r9d,0x8(%rsp)
  0x0000000115cadd44: mov    %rdi,0x10(%rsp)
  0x0000000115cadd49: mov    %ebx,0xc(%rsp)
  0x0000000115cadd4d: mov    %edx,0x18(%rsp)
  0x0000000115cadd51: xchg   %ax,%ax
  0x0000000115cadd53: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadd58: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadd5a: mov    %ecx,0x8(%rsp)
  0x0000000115cadd5e: mov    %rsi,(%rsp)
  0x0000000115cadd62: mov    %r10d,%ebp
  0x0000000115cadd65: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000115cadd6f: callq  0x0000000115c8d700  ; ImmutableOopMap{[8]=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000115cadd74: mov    %ebp,%r10d
  0x0000000115cadd77: mov    (%rsp),%rsi
  0x0000000115cadd7b: mov    0x8(%rsp),%ecx
  0x0000000115cadd7f: jmpq   0x0000000115cadbbe
  0x0000000115cadd84: mov    $0xffffffe4,%esi
  0x0000000115cadd89: mov    %r10d,0x4(%rsp)
  0x0000000115cadd8e: mov    %ecx,0x10(%rsp)
  0x0000000115cadd92: nop
  0x0000000115cadd93: callq  0x0000000115c55900  ; ImmutableOopMap{[16]=NarrowOop [40]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadd98: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadd9a: lea    (%r12,%r10,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cadd9e: xor    %r10d,%r10d
  0x0000000115cadda1: mov    $0xffffffde,%esi
  0x0000000115cadda6: mov    %r10d,(%rsp)
  0x0000000115caddaa: mov    %r11,0x8(%rsp)
  0x0000000115caddaf: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=Oop [40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caddb4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caddb6: xor    %r10d,%r10d
  0x0000000115caddb9: mov    $0xffffffde,%esi
  0x0000000115caddbe: mov    %r10d,(%rsp)
  0x0000000115caddc2: mov    %r8d,0x4(%rsp)
  0x0000000115caddc7: mov    %rdi,0x10(%rsp)
  0x0000000115caddcc: mov    %r9d,0xc(%rsp)
  0x0000000115caddd1: mov    %r11,0x20(%rsp)
  0x0000000115caddd6: nop
  0x0000000115caddd7: callq  0x0000000115c55900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cadddc: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caddde: mov    $0xfffffff6,%esi
  0x0000000115cadde3: mov    %r9d,%ebp
  0x0000000115cadde6: nop
  0x0000000115cadde7: callq  0x0000000115c55900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caddec: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115caddee: xor    %r10d,%r10d
  0x0000000115caddf1: mov    $0xfffffff4,%esi
  0x0000000115caddf6: mov    %r10d,(%rsp)
  0x0000000115caddfa: nop
  0x0000000115caddfb: callq  0x0000000115c55900  ; ImmutableOopMap{[40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cade00: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cade02: xor    %r10d,%r10d
  0x0000000115cade05: mov    $0xfffffff4,%esi
  0x0000000115cade0a: mov    %r10d,(%rsp)
  0x0000000115cade0e: mov    %r8d,0x4(%rsp)
  0x0000000115cade13: mov    %rdi,0x10(%rsp)
  0x0000000115cade18: mov    %r9d,0xc(%rsp)
  0x0000000115cade1d: xchg   %ax,%ax
  0x0000000115cade1f: callq  0x0000000115c55900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cade24: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cade26: xor    %r10d,%r10d
  0x0000000115cade29: mov    $0xffffff4d,%esi
  0x0000000115cade2e: mov    %r10d,(%rsp)
  0x0000000115cade32: mov    %r8d,0x4(%rsp)
  0x0000000115cade37: mov    %r9d,0x8(%rsp)
  0x0000000115cade3c: mov    %ecx,0x10(%rsp)
  0x0000000115cade40: data16 xchg %ax,%ax
  0x0000000115cade43: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cade48: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cade4a: xor    %r10d,%r10d
  0x0000000115cade4d: mov    $0xffffff4d,%esi
  0x0000000115cade52: mov    %r10d,(%rsp)
  0x0000000115cade56: mov    %r8d,0x4(%rsp)
  0x0000000115cade5b: mov    %r9d,0x8(%rsp)
  0x0000000115cade60: mov    %ecx,0x10(%rsp)
  0x0000000115cade64: data16 xchg %ax,%ax
  0x0000000115cade67: callq  0x0000000115c55900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115cade6c: ud2    
  0x0000000115cade6e: mov    %rax,%rsi
  0x0000000115cade71: jmp    0x0000000115cade76
  0x0000000115cade73: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000115cade76: add    $0x40,%rsp
  0x0000000115cade7a: pop    %rbp
  0x0000000115cade7b: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
[Exception Handler]
[Stub Code]
  0x0000000115cade80: jmpq   0x0000000115c8a680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000115cade85: callq  0x0000000115cade8a
  0x0000000115cade8a: subq   $0x5,(%rsp)
  0x0000000115cade8f: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115cade94: hlt    
  0x0000000115cade95: hlt    
  0x0000000115cade96: hlt    
  0x0000000115cade97: hlt    

ImmutableOopMap{rbp=NarrowOop [40]=Oop }pc offsets: 564 
ImmutableOopMap{[40]=Oop }pc offsets: 616 
ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }pc offsets: 988 
ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }pc offsets: 1028 1068 1112 
ImmutableOopMap{[8]=NarrowOop [40]=Oop }pc offsets: 1140 
ImmutableOopMap{[16]=NarrowOop [40]=Oop }pc offsets: 1176 
ImmutableOopMap{[8]=Oop [40]=Oop }pc offsets: 1204 
ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }pc offsets: 1244 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 1260 
ImmutableOopMap{[40]=Oop }pc offsets: 1280 
ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }pc offsets: 1316 
ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }pc offsets: 1352 1388 Compiled method (c2)     478   83 %           FunctionalHashMap::main @ 36 (72 bytes)
 total in heap  [0x0000000115caa790,0x0000000115caab48] = 952
 relocation     [0x0000000115caa908,0x0000000115caa928] = 32
 main code      [0x0000000115caa940,0x0000000115caa9e0] = 160
 stub code      [0x0000000115caa9e0,0x0000000115caaa08] = 40
 oops           [0x0000000115caaa08,0x0000000115caaa10] = 8
 metadata       [0x0000000115caaa10,0x0000000115caaa20] = 16
 scopes data    [0x0000000115caaa20,0x0000000115caaa68] = 72
 scopes pcs     [0x0000000115caaa68,0x0000000115caab18] = 176
 dependencies   [0x0000000115caab18,0x0000000115caab20] = 8
 handler table  [0x0000000115caab20,0x0000000115caab38] = 24
 nul chk table  [0x0000000115caab38,0x0000000115caab48] = 16
----------------------------------------------------------------------
FunctionalHashMap.main([Ljava/lang/String;)V  [0x0000000115caa940, 0x0000000115caaa08]  200 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012482d710} 'main' '([Ljava/lang/String;)V' in 'FunctionalHashMap'
  0x0000000115caa940: callq  0x000000010c8107f4  ;   {runtime_call _ZN2os10breakpointEv}
  0x0000000115caa945: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000115caa950: mov    %eax,-0x14000(%rsp)
  0x0000000115caa957: push   %rbp
  0x0000000115caa958: sub    $0x20,%rsp
  0x0000000115caa95c: mov    0x8(%rsi),%rbx
  0x0000000115caa960: mov    (%rsi),%ebp
  0x0000000115caa962: mov    %rsi,%rdi
  0x0000000115caa965: movabs $0x10c891a82,%r10
  0x0000000115caa96f: callq  *%r10
  0x0000000115caa972: mov    0x8(%rbx),%r10d    ; implicit exception: dispatches to 0x0000000115caa9cf
  0x0000000115caa976: cmp    $0x60040,%r10d     ;   {metadata('FunctionalHashMap')}
  0x0000000115caa97d: jne    0x0000000115caa9b2
  0x0000000115caa97f: mov    %rbx,(%rsp)
  0x0000000115caa983: jmp    0x0000000115caa99e
  0x0000000115caa985: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x0000000115caa990: mov    (%rsp),%rsi
  0x0000000115caa994: data16 xchg %ax,%ax
  0x0000000115caa997: callq  0x0000000115c53f00  ; ImmutableOopMap{[0]=Oop }
                                                ;*invokevirtual runTest {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {optimized virtual_call}
  0x0000000115caa99c: inc    %ebp               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x0000000115caa99e: cmp    $0x7a120,%ebp
  0x0000000115caa9a4: jl     0x0000000115caa990  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@39 (line 24)

  0x0000000115caa9a6: mov    $0xffffff4d,%esi
  0x0000000115caa9ab: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@39 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caa9b0: ud2    
  0x0000000115caa9b2: mov    $0xffffff95,%esi
  0x0000000115caa9b7: mov    %rbx,(%rsp)
  0x0000000115caa9bb: callq  0x0000000115c55900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caa9c0: ud2                       ;*invokevirtual runTest {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x0000000115caa9c2: mov    %rax,%rsi
  0x0000000115caa9c5: add    $0x20,%rsp
  0x0000000115caa9c9: pop    %rbp
  0x0000000115caa9ca: jmpq   0x0000000115c8cb00  ;   {runtime_call _rethrow_Java}
  0x0000000115caa9cf: mov    $0xffffff7e,%esi
  0x0000000115caa9d4: data16 xchg %ax,%ax
  0x0000000115caa9d7: callq  0x0000000115c55900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000115caa9dc: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x0000000115caa9de: hlt    
  0x0000000115caa9df: hlt    
[Stub Code]
  0x0000000115caa9e0: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000115caa9ea: jmpq   0x0000000115caa9ea  ;   {runtime_call}
[Exception Handler]
  0x0000000115caa9ef: jmpq   0x0000000115c8a680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000115caa9f4: callq  0x0000000115caa9f9
  0x0000000115caa9f9: subq   $0x5,(%rsp)
  0x0000000115caa9fe: jmpq   0x0000000115c55520  ;   {runtime_call DeoptimizationBlob}
  0x0000000115caaa03: hlt    
  0x0000000115caaa04: hlt    
  0x0000000115caaa05: hlt    
  0x0000000115caaa06: hlt    
  0x0000000115caaa07: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 92 112 128 
ImmutableOopMap{}pc offsets: 156 Test phase
Time elapsed: 0.006 ms result=100

