Compiled method (c2)      51    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x000000011150ae90,0x000000011150b430] = 1440
 relocation     [0x000000011150b008,0x000000011150b018] = 16
 main code      [0x000000011150b020,0x000000011150b1e0] = 448
 stub code      [0x000000011150b1e0,0x000000011150b1f8] = 24
 metadata       [0x000000011150b1f8,0x000000011150b200] = 8
 scopes data    [0x000000011150b200,0x000000011150b288] = 136
 scopes pcs     [0x000000011150b288,0x000000011150b418] = 400
 dependencies   [0x000000011150b418,0x000000011150b420] = 8
 nul chk table  [0x000000011150b420,0x000000011150b430] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x000000011150b020, 0x000000011150b1f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e70ea98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x000000011150b020: mov    %eax,-0x14000(%rsp)
  0x000000011150b027: push   %rbp
  0x000000011150b028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x000000011150b02c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x000000011150b1c2
  0x000000011150b030: test   %r10d,%r10d
  0x000000011150b033: jbe    0x000000011150b1a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011150b039: mov    %r10d,%r8d
  0x000000011150b03c: dec    %r8d
  0x000000011150b03f: cmp    %r10d,%r8d
  0x000000011150b042: jae    0x000000011150b1ad
  0x000000011150b048: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x000000011150b04d: mov    %r10d,%edx
  0x000000011150b050: add    $0xfffffff9,%edx
  0x000000011150b053: mov    $0x80000000,%ecx
  0x000000011150b058: cmp    %edx,%r8d
  0x000000011150b05b: cmovl  %ecx,%edx
  0x000000011150b05e: mov    $0x1,%ecx
  0x000000011150b063: cmp    $0x1,%edx
  0x000000011150b066: jle    0x000000011150b18d
  0x000000011150b06c: mov    %r9d,%r11d
  0x000000011150b06f: shl    $0x5,%r11d
  0x000000011150b073: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000011150b076: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000011150b07b: jmp    0x000000011150b0a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x000000011150b07d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x000000011150b083: mov    %r9d,%eax
  0x000000011150b086: shl    $0x5,%eax
  0x000000011150b089: sub    %r9d,%eax
  0x000000011150b08c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000011150b08f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000011150b091: cmp    %r10d,%ecx
  0x000000011150b094: jge    0x000000011150b199  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011150b09a: mov    %eax,%r9d
  0x000000011150b09d: jmp    0x000000011150b07d
  0x000000011150b09f: vmovq  %xmm0,%rsi
  0x000000011150b0a4: vmovd  %xmm2,%r10d
  0x000000011150b0a9: mov    %edx,%ebp
  0x000000011150b0ab: sub    %ecx,%ebp
  0x000000011150b0ad: cmp    %edi,%ebp
  0x000000011150b0af: cmovg  %edi,%ebp
  0x000000011150b0b2: add    %ecx,%ebp
  0x000000011150b0b4: vmovq  %rsi,%xmm0
  0x000000011150b0b9: vmovd  %r10d,%xmm2
  0x000000011150b0be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000011150b0c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x000000011150b0c3: vmovq  %xmm0,%r8
  0x000000011150b0c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x000000011150b0ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x000000011150b0d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x000000011150b0da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x000000011150b0e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x000000011150b0e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x000000011150b0ec: add    %r14d,%r11d
  0x000000011150b0ef: vmovq  %xmm0,%rbx
  0x000000011150b0f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x000000011150b0f9: vmovq  %xmm0,%r14
  0x000000011150b0fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x000000011150b104: mov    %r11d,%r14d
  0x000000011150b107: shl    $0x5,%r14d
  0x000000011150b10b: sub    %r11d,%r14d
  0x000000011150b10e: add    %r13d,%r14d
  0x000000011150b111: mov    %r14d,%r11d
  0x000000011150b114: shl    $0x5,%r11d
  0x000000011150b118: sub    %r14d,%r11d
  0x000000011150b11b: add    %ebx,%r11d
  0x000000011150b11e: mov    %r11d,%ebx
  0x000000011150b121: shl    $0x5,%ebx
  0x000000011150b124: sub    %r11d,%ebx
  0x000000011150b127: add    %esi,%ebx
  0x000000011150b129: mov    %ebx,%r11d
  0x000000011150b12c: shl    $0x5,%r11d
  0x000000011150b130: sub    %ebx,%r11d
  0x000000011150b133: add    %r8d,%r11d
  0x000000011150b136: mov    %r11d,%ebx
  0x000000011150b139: shl    $0x5,%ebx
  0x000000011150b13c: sub    %r11d,%ebx
  0x000000011150b13f: add    %r9d,%ebx
  0x000000011150b142: mov    %ebx,%r8d
  0x000000011150b145: shl    $0x5,%r8d
  0x000000011150b149: sub    %ebx,%r8d
  0x000000011150b14c: add    %r10d,%r8d
  0x000000011150b14f: mov    %r8d,%r9d
  0x000000011150b152: shl    $0x5,%r9d
  0x000000011150b156: sub    %r8d,%r9d
  0x000000011150b159: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000011150b15c: mov    %r9d,%r11d
  0x000000011150b15f: shl    $0x5,%r11d
  0x000000011150b163: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000011150b166: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000011150b169: cmp    %ebp,%ecx
  0x000000011150b16b: jl     0x000000011150b0c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011150b171: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000011150b178: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000011150b17b: cmp    %edx,%ecx
  0x000000011150b17d: jl     0x000000011150b09f
  0x000000011150b183: vmovq  %xmm0,%rsi
  0x000000011150b188: vmovd  %xmm2,%r10d
  0x000000011150b18d: cmp    %r10d,%ecx
  0x000000011150b190: jl     0x000000011150b07d
  0x000000011150b196: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011150b199: add    $0x20,%rsp
  0x000000011150b19d: pop    %rbp
  0x000000011150b19e: mov    0x108(%r15),%r10
  0x000000011150b1a5: test   %eax,(%r10)        ;   {poll_return}
  0x000000011150b1a8: retq   
  0x000000011150b1a9: xor    %eax,%eax
  0x000000011150b1ab: jmp    0x000000011150b199
  0x000000011150b1ad: mov    %rsi,%rbp
  0x000000011150b1b0: mov    %r10d,0x4(%rsp)
  0x000000011150b1b5: mov    $0xffffff7e,%esi
  0x000000011150b1ba: nop
  0x000000011150b1bb: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011150b1c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011150b1c2: mov    $0xfffffff6,%esi
  0x000000011150b1c7: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011150b1cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x000000011150b1ce: hlt    
  0x000000011150b1cf: hlt    
  0x000000011150b1d0: hlt    
  0x000000011150b1d1: hlt    
  0x000000011150b1d2: hlt    
  0x000000011150b1d3: hlt    
  0x000000011150b1d4: hlt    
  0x000000011150b1d5: hlt    
  0x000000011150b1d6: hlt    
  0x000000011150b1d7: hlt    
  0x000000011150b1d8: hlt    
  0x000000011150b1d9: hlt    
  0x000000011150b1da: hlt    
  0x000000011150b1db: hlt    
  0x000000011150b1dc: hlt    
  0x000000011150b1dd: hlt    
  0x000000011150b1de: hlt    
  0x000000011150b1df: hlt    
[Exception Handler]
[Stub Code]
  0x000000011150b1e0: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011150b1e5: callq  0x000000011150b1ea
  0x000000011150b1ea: subq   $0x5,(%rsp)
  0x000000011150b1ef: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011150b1f4: hlt    
  0x000000011150b1f5: hlt    
  0x000000011150b1f6: hlt    
  0x000000011150b1f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
Compiled method (c2)      92    2             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000011150d310,0x000000011150d548] = 568
 relocation     [0x000000011150d488,0x000000011150d498] = 16
 main code      [0x000000011150d4a0,0x000000011150d4e0] = 64
 stub code      [0x000000011150d4e0,0x000000011150d4f8] = 24
 metadata       [0x000000011150d4f8,0x000000011150d508] = 16
 scopes data    [0x000000011150d508,0x000000011150d510] = 8
 scopes pcs     [0x000000011150d510,0x000000011150d540] = 48
 dependencies   [0x000000011150d540,0x000000011150d548] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000011150d4a0, 0x000000011150d4f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e5b5610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000011150d4a0: mov    0x8(%rsi),%r10d
  0x000000011150d4a4: movabs $0x800000000,%r12
  0x000000011150d4ae: add    %r12,%r10
  0x000000011150d4b1: xor    %r12,%r12
  0x000000011150d4b4: cmp    %r10,%rax
  0x000000011150d4b7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011150d4bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011150d4c0: sub    $0x18,%rsp
  0x000000011150d4c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000011150d4cc: add    $0x10,%rsp
  0x000000011150d4d0: pop    %rbp
  0x000000011150d4d1: mov    0x108(%r15),%r10
  0x000000011150d4d8: test   %eax,(%r10)        ;   {poll_return}
  0x000000011150d4db: retq   
  0x000000011150d4dc: hlt    
  0x000000011150d4dd: hlt    
  0x000000011150d4de: hlt    
  0x000000011150d4df: hlt    
[Exception Handler]
[Stub Code]
  0x000000011150d4e0: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011150d4e5: callq  0x000000011150d4ea
  0x000000011150d4ea: subq   $0x5,(%rsp)
  0x000000011150d4ef: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011150d4f4: hlt    
  0x000000011150d4f5: hlt    
  0x000000011150d4f6: hlt    
  0x000000011150d4f7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111514020, 0x0000000111514040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e918318} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111514020: mov    0x24(%rdi),%ebx
  0x0000000111514023: shl    $0x3,%rbx
  0x0000000111514027: mov    0x10(%rbx),%rbx
  0x000000011151402b: test   %rbx,%rbx
  0x000000011151402e: je     0x0000000111514037
  0x0000000111514034: jmpq   *0x38(%rbx)
  0x0000000111514037: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151403c: hlt    
  0x000000011151403d: hlt    
  0x000000011151403e: hlt    
  0x000000011151403f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000111514c20, 0x0000000111514c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e94a9a8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000111514c20: mov    0x14(%rsi),%ebx
  0x0000000111514c23: shl    $0x3,%rbx
  0x0000000111514c27: mov    0x28(%rbx),%ebx
  0x0000000111514c2a: shl    $0x3,%rbx
  0x0000000111514c2e: mov    0x24(%rbx),%ebx
  0x0000000111514c31: shl    $0x3,%rbx
  0x0000000111514c35: mov    0x10(%rbx),%rbx
  0x0000000111514c39: test   %rbx,%rbx
  0x0000000111514c3c: je     0x0000000111514c45
  0x0000000111514c42: jmpq   *0x38(%rbx)
  0x0000000111514c45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111514c4a: hlt    
  0x0000000111514c4b: hlt    
  0x0000000111514c4c: hlt    
  0x0000000111514c4d: hlt    
  0x0000000111514c4e: hlt    
  0x0000000111514c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111514e20, 0x0000000111514e48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e94ab60} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000111514e20: mov    0x8(%rsp),%rbx
  0x0000000111514e25: cmp    (%rsi),%rax
  0x0000000111514e28: mov    0x24(%rbx),%ebx
  0x0000000111514e2b: shl    $0x3,%rbx
  0x0000000111514e2f: mov    0x10(%rbx),%rbx
  0x0000000111514e33: test   %rbx,%rbx
  0x0000000111514e36: je     0x0000000111514e3f
  0x0000000111514e3c: jmpq   *0x38(%rbx)
  0x0000000111514e3f: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111514e44: hlt    
  0x0000000111514e45: hlt    
  0x0000000111514e46: hlt    
  0x0000000111514e47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x0000000111515620, 0x0000000111515640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e956f68} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111515620: mov    0x24(%rsi),%ebx
  0x0000000111515623: shl    $0x3,%rbx
  0x0000000111515627: mov    0x10(%rbx),%rbx
  0x000000011151562b: test   %rbx,%rbx
  0x000000011151562e: je     0x0000000111515637
  0x0000000111515634: jmpq   *0x38(%rbx)
  0x0000000111515637: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151563c: hlt    
  0x000000011151563d: hlt    
  0x000000011151563e: hlt    
  0x000000011151563f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x0000000111515820, 0x0000000111515850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e957080} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x0000000111515820: mov    0x14(%rsi),%ebx
  0x0000000111515823: shl    $0x3,%rbx
  0x0000000111515827: mov    0x28(%rbx),%ebx
  0x000000011151582a: shl    $0x3,%rbx
  0x000000011151582e: mov    0x24(%rbx),%ebx
  0x0000000111515831: shl    $0x3,%rbx
  0x0000000111515835: mov    0x10(%rbx),%rbx
  0x0000000111515839: test   %rbx,%rbx
  0x000000011151583c: je     0x0000000111515845
  0x0000000111515842: jmpq   *0x38(%rbx)
  0x0000000111515845: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151584a: hlt    
  0x000000011151584b: hlt    
  0x000000011151584c: hlt    
  0x000000011151584d: hlt    
  0x000000011151584e: hlt    
  0x000000011151584f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000111515a20, 0x0000000111515a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e957198} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111515a20: cmp    (%rsi),%rax
  0x0000000111515a23: mov    0x24(%rdx),%ebx
  0x0000000111515a26: shl    $0x3,%rbx
  0x0000000111515a2a: mov    0x10(%rbx),%rbx
  0x0000000111515a2e: test   %rbx,%rbx
  0x0000000111515a31: je     0x0000000111515a3a
  0x0000000111515a37: jmpq   *0x38(%rbx)
  0x0000000111515a3a: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111515a3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111515c20, 0x0000000111515c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e957530} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111515c20: mov    0x24(%r8),%ebx
  0x0000000111515c24: shl    $0x3,%rbx
  0x0000000111515c28: mov    0x10(%rbx),%rbx
  0x0000000111515c2c: test   %rbx,%rbx
  0x0000000111515c2f: je     0x0000000111515c38
  0x0000000111515c35: jmpq   *0x38(%rbx)
  0x0000000111515c38: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111515c3d: hlt    
  0x0000000111515c3e: hlt    
  0x0000000111515c3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111515e20, 0x0000000111515e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e957648} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111515e20: mov    0x24(%rcx),%ebx
  0x0000000111515e23: shl    $0x3,%rbx
  0x0000000111515e27: mov    0x10(%rbx),%rbx
  0x0000000111515e2b: test   %rbx,%rbx
  0x0000000111515e2e: je     0x0000000111515e37
  0x0000000111515e34: jmpq   *0x38(%rbx)
  0x0000000111515e37: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111515e3c: hlt    
  0x0000000111515e3d: hlt    
  0x0000000111515e3e: hlt    
  0x0000000111515e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111516220, 0x0000000111516240]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e95f420} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111516220: mov    0x24(%rsi),%ebx
  0x0000000111516223: shl    $0x3,%rbx
  0x0000000111516227: mov    0x10(%rbx),%rbx
  0x000000011151622b: test   %rbx,%rbx
  0x000000011151622e: je     0x0000000111516237
  0x0000000111516234: jmpq   *0x38(%rbx)
  0x0000000111516237: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151623c: hlt    
  0x000000011151623d: hlt    
  0x000000011151623e: hlt    
  0x000000011151623f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111516420, 0x0000000111516440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e95f808} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111516420: mov    0x24(%rdx),%ebx
  0x0000000111516423: shl    $0x3,%rbx
  0x0000000111516427: mov    0x10(%rbx),%rbx
  0x000000011151642b: test   %rbx,%rbx
  0x000000011151642e: je     0x0000000111516437
  0x0000000111516434: jmpq   *0x38(%rbx)
  0x0000000111516437: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151643c: hlt    
  0x000000011151643d: hlt    
  0x000000011151643e: hlt    
  0x000000011151643f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111516da0, 0x0000000111516dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e971560} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111516da0: mov    0x24(%rcx),%ebx
  0x0000000111516da3: shl    $0x3,%rbx
  0x0000000111516da7: mov    0x10(%rbx),%rbx
  0x0000000111516dab: test   %rbx,%rbx
  0x0000000111516dae: je     0x0000000111516db7
  0x0000000111516db4: jmpq   *0x38(%rbx)
  0x0000000111516db7: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111516dbc: hlt    
  0x0000000111516dbd: hlt    
  0x0000000111516dbe: hlt    
  0x0000000111516dbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111516fa0, 0x0000000111516fc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e972e60} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111516fa0: mov    0x24(%r8),%ebx
  0x0000000111516fa4: shl    $0x3,%rbx
  0x0000000111516fa8: mov    0x10(%rbx),%rbx
  0x0000000111516fac: test   %rbx,%rbx
  0x0000000111516faf: je     0x0000000111516fb8
  0x0000000111516fb5: jmpq   *0x38(%rbx)
  0x0000000111516fb8: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111516fbd: hlt    
  0x0000000111516fbe: hlt    
  0x0000000111516fbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x00000001115171a0, 0x00000001115171d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9759c8} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x00000001115171a0: mov    0x14(%rsi),%ebx
  0x00000001115171a3: shl    $0x3,%rbx
  0x00000001115171a7: mov    0x28(%rbx),%ebx
  0x00000001115171aa: shl    $0x3,%rbx
  0x00000001115171ae: mov    0x24(%rbx),%ebx
  0x00000001115171b1: shl    $0x3,%rbx
  0x00000001115171b5: mov    0x10(%rbx),%rbx
  0x00000001115171b9: test   %rbx,%rbx
  0x00000001115171bc: je     0x00000001115171c5
  0x00000001115171c2: jmpq   *0x38(%rbx)
  0x00000001115171c5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115171ca: hlt    
  0x00000001115171cb: hlt    
  0x00000001115171cc: hlt    
  0x00000001115171cd: hlt    
  0x00000001115171ce: hlt    
  0x00000001115171cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001115173a0, 0x00000001115173c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e975ae0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001115173a0: cmp    (%rsi),%rax
  0x00000001115173a3: mov    0x24(%r9),%ebx
  0x00000001115173a7: shl    $0x3,%rbx
  0x00000001115173ab: mov    0x10(%rbx),%rbx
  0x00000001115173af: test   %rbx,%rbx
  0x00000001115173b2: je     0x00000001115173bb
  0x00000001115173b8: jmpq   *0x38(%rbx)
  0x00000001115173bb: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000111518ea0, 0x0000000111518ec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9a95a0} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111518ea0: mov    0x24(%r9),%ebx
  0x0000000111518ea4: shl    $0x3,%rbx
  0x0000000111518ea8: mov    0x10(%rbx),%rbx
  0x0000000111518eac: test   %rbx,%rbx
  0x0000000111518eaf: je     0x0000000111518eb8
  0x0000000111518eb5: jmpq   *0x38(%rbx)
  0x0000000111518eb8: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111518ebd: hlt    
  0x0000000111518ebe: hlt    
  0x0000000111518ebf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x00000001115190a0, 0x00000001115190d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9a97a8} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001115190a0: mov    0x14(%rsi),%ebx
  0x00000001115190a3: shl    $0x3,%rbx
  0x00000001115190a7: mov    0x28(%rbx),%ebx
  0x00000001115190aa: shl    $0x3,%rbx
  0x00000001115190ae: mov    0x24(%rbx),%ebx
  0x00000001115190b1: shl    $0x3,%rbx
  0x00000001115190b5: mov    0x10(%rbx),%rbx
  0x00000001115190b9: test   %rbx,%rbx
  0x00000001115190bc: je     0x00000001115190c5
  0x00000001115190c2: jmpq   *0x38(%rbx)
  0x00000001115190c5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115190ca: hlt    
  0x00000001115190cb: hlt    
  0x00000001115190cc: hlt    
  0x00000001115190cd: hlt    
  0x00000001115190ce: hlt    
  0x00000001115190cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001115192a0, 0x00000001115192c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9a98c0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001115192a0: cmp    (%rsi),%rax
  0x00000001115192a3: mov    0x24(%rdi),%ebx
  0x00000001115192a6: shl    $0x3,%rbx
  0x00000001115192aa: mov    0x10(%rbx),%rbx
  0x00000001115192ae: test   %rbx,%rbx
  0x00000001115192b1: je     0x00000001115192ba
  0x00000001115192b7: jmpq   *0x38(%rbx)
  0x00000001115192ba: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115192bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001115194a0, 0x00000001115194c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9aa9c0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001115194a0: mov    0x24(%r9),%ebx
  0x00000001115194a4: shl    $0x3,%rbx
  0x00000001115194a8: mov    0x10(%rbx),%rbx
  0x00000001115194ac: test   %rbx,%rbx
  0x00000001115194af: je     0x00000001115194b8
  0x00000001115194b5: jmpq   *0x38(%rbx)
  0x00000001115194b8: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115194bd: hlt    
  0x00000001115194be: hlt    
  0x00000001115194bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001115196a0, 0x00000001115196d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9aad58} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001115196a0: mov    0x14(%rsi),%ebx
  0x00000001115196a3: shl    $0x3,%rbx
  0x00000001115196a7: mov    0x28(%rbx),%ebx
  0x00000001115196aa: shl    $0x3,%rbx
  0x00000001115196ae: mov    0x24(%rbx),%ebx
  0x00000001115196b1: shl    $0x3,%rbx
  0x00000001115196b5: mov    0x10(%rbx),%rbx
  0x00000001115196b9: test   %rbx,%rbx
  0x00000001115196bc: je     0x00000001115196c5
  0x00000001115196c2: jmpq   *0x38(%rbx)
  0x00000001115196c5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115196ca: hlt    
  0x00000001115196cb: hlt    
  0x00000001115196cc: hlt    
  0x00000001115196cd: hlt    
  0x00000001115196ce: hlt    
  0x00000001115196cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x00000001115198a0, 0x00000001115198d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9ab280} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x00000001115198a0: mov    0x14(%rsi),%ebx
  0x00000001115198a3: shl    $0x3,%rbx
  0x00000001115198a7: mov    0x28(%rbx),%ebx
  0x00000001115198aa: shl    $0x3,%rbx
  0x00000001115198ae: mov    0x24(%rbx),%ebx
  0x00000001115198b1: shl    $0x3,%rbx
  0x00000001115198b5: mov    0x10(%rbx),%rbx
  0x00000001115198b9: test   %rbx,%rbx
  0x00000001115198bc: je     0x00000001115198c5
  0x00000001115198c2: jmpq   *0x38(%rbx)
  0x00000001115198c5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001115198ca: hlt    
  0x00000001115198cb: hlt    
  0x00000001115198cc: hlt    
  0x00000001115198cd: hlt    
  0x00000001115198ce: hlt    
  0x00000001115198cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x0000000111519aa0, 0x0000000111519ac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9ab398} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111519aa0: cmp    (%rsi),%rax
  0x0000000111519aa3: mov    0x24(%r9),%ebx
  0x0000000111519aa7: shl    $0x3,%rbx
  0x0000000111519aab: mov    0x10(%rbx),%rbx
  0x0000000111519aaf: test   %rbx,%rbx
  0x0000000111519ab2: je     0x0000000111519abb
  0x0000000111519ab8: jmpq   *0x38(%rbx)
  0x0000000111519abb: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111519ca0, 0x0000000111519cc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9ae2f0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x0000000111519ca0: mov    0x8(%rsp),%rbx
  0x0000000111519ca5: mov    0x24(%rbx),%ebx
  0x0000000111519ca8: shl    $0x3,%rbx
  0x0000000111519cac: mov    0x10(%rbx),%rbx
  0x0000000111519cb0: test   %rbx,%rbx
  0x0000000111519cb3: je     0x0000000111519cbc
  0x0000000111519cb9: jmpq   *0x38(%rbx)
  0x0000000111519cbc: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111519cc1: hlt    
  0x0000000111519cc2: hlt    
  0x0000000111519cc3: hlt    
  0x0000000111519cc4: hlt    
  0x0000000111519cc5: hlt    
  0x0000000111519cc6: hlt    
  0x0000000111519cc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000111519ea0, 0x0000000111519ed0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9ae458} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x0000000111519ea0: mov    0x14(%rsi),%ebx
  0x0000000111519ea3: shl    $0x3,%rbx
  0x0000000111519ea7: mov    0x28(%rbx),%ebx
  0x0000000111519eaa: shl    $0x3,%rbx
  0x0000000111519eae: mov    0x24(%rbx),%ebx
  0x0000000111519eb1: shl    $0x3,%rbx
  0x0000000111519eb5: mov    0x10(%rbx),%rbx
  0x0000000111519eb9: test   %rbx,%rbx
  0x0000000111519ebc: je     0x0000000111519ec5
  0x0000000111519ec2: jmpq   *0x38(%rbx)
  0x0000000111519ec5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111519eca: hlt    
  0x0000000111519ecb: hlt    
  0x0000000111519ecc: hlt    
  0x0000000111519ecd: hlt    
  0x0000000111519ece: hlt    
  0x0000000111519ecf: hlt    
Compiled method (c2)     142   26             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000011151cd90,0x000000011151d038] = 680
 relocation     [0x000000011151cf08,0x000000011151cf18] = 16
 main code      [0x000000011151cf20,0x000000011151cf80] = 96
 stub code      [0x000000011151cf80,0x000000011151cf98] = 24
 metadata       [0x000000011151cf98,0x000000011151cfa0] = 8
 scopes data    [0x000000011151cfa0,0x000000011151cfc0] = 32
 scopes pcs     [0x000000011151cfc0,0x000000011151d030] = 112
 dependencies   [0x000000011151d030,0x000000011151d038] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000011151cf20, 0x000000011151cf98]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e5bf300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000011151cf20: mov    0x8(%rsi),%r10d
  0x000000011151cf24: movabs $0x800000000,%r12
  0x000000011151cf2e: add    %r12,%r10
  0x000000011151cf31: xor    %r12,%r12
  0x000000011151cf34: cmp    %r10,%rax
  0x000000011151cf37: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011151cf3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011151cf40: mov    %eax,-0x14000(%rsp)
  0x000000011151cf47: push   %rbp
  0x000000011151cf48: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000011151cf4c: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000011151cf51: test   %r11d,%r11d
  0x000000011151cf54: jne    0x000000011151cf6b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011151cf56: mov    $0x1,%eax
  0x000000011151cf5b: add    $0x10,%rsp
  0x000000011151cf5f: pop    %rbp
  0x000000011151cf60: mov    0x108(%r15),%r10
  0x000000011151cf67: test   %eax,(%r10)        ;   {poll_return}
  0x000000011151cf6a: retq   
  0x000000011151cf6b: mov    $0xffffff4d,%esi
  0x000000011151cf70: mov    %r11d,%ebp
  0x000000011151cf73: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151cf78: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011151cf7a: hlt    
  0x000000011151cf7b: hlt    
  0x000000011151cf7c: hlt    
  0x000000011151cf7d: hlt    
  0x000000011151cf7e: hlt    
  0x000000011151cf7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011151cf80: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011151cf85: callq  0x000000011151cf8a
  0x000000011151cf8a: subq   $0x5,(%rsp)
  0x000000011151cf8f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011151cf94: hlt    
  0x000000011151cf95: hlt    
  0x000000011151cf96: hlt    
  0x000000011151cf97: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151cd20, 0x000000011151cd48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9af3e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000011151cd20: mov    0x10(%rsp),%rbx
  0x000000011151cd25: mov    0x24(%rbx),%ebx
  0x000000011151cd28: shl    $0x3,%rbx
  0x000000011151cd2c: mov    0x10(%rbx),%rbx
  0x000000011151cd30: test   %rbx,%rbx
  0x000000011151cd33: je     0x000000011151cd3c
  0x000000011151cd39: jmpq   *0x38(%rbx)
  0x000000011151cd3c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151cd41: hlt    
  0x000000011151cd42: hlt    
  0x000000011151cd43: hlt    
  0x000000011151cd44: hlt    
  0x000000011151cd45: hlt    
  0x000000011151cd46: hlt    
  0x000000011151cd47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151cb20, 0x000000011151cb50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9af550} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000011151cb20: mov    0x14(%rsi),%ebx
  0x000000011151cb23: shl    $0x3,%rbx
  0x000000011151cb27: mov    0x28(%rbx),%ebx
  0x000000011151cb2a: shl    $0x3,%rbx
  0x000000011151cb2e: mov    0x24(%rbx),%ebx
  0x000000011151cb31: shl    $0x3,%rbx
  0x000000011151cb35: mov    0x10(%rbx),%rbx
  0x000000011151cb39: test   %rbx,%rbx
  0x000000011151cb3c: je     0x000000011151cb45
  0x000000011151cb42: jmpq   *0x38(%rbx)
  0x000000011151cb45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151cb4a: hlt    
  0x000000011151cb4b: hlt    
  0x000000011151cb4c: hlt    
  0x000000011151cb4d: hlt    
  0x000000011151cb4e: hlt    
  0x000000011151cb4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151c920, 0x000000011151c948]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b04f0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000011151c920: mov    0x18(%rsp),%rbx
  0x000000011151c925: mov    0x24(%rbx),%ebx
  0x000000011151c928: shl    $0x3,%rbx
  0x000000011151c92c: mov    0x10(%rbx),%rbx
  0x000000011151c930: test   %rbx,%rbx
  0x000000011151c933: je     0x000000011151c93c
  0x000000011151c939: jmpq   *0x38(%rbx)
  0x000000011151c93c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151c941: hlt    
  0x000000011151c942: hlt    
  0x000000011151c943: hlt    
  0x000000011151c944: hlt    
  0x000000011151c945: hlt    
  0x000000011151c946: hlt    
  0x000000011151c947: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000011151c720, 0x000000011151c750]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0608} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011151c720: mov    0x14(%rsi),%ebx
  0x000000011151c723: shl    $0x3,%rbx
  0x000000011151c727: mov    0x28(%rbx),%ebx
  0x000000011151c72a: shl    $0x3,%rbx
  0x000000011151c72e: mov    0x24(%rbx),%ebx
  0x000000011151c731: shl    $0x3,%rbx
  0x000000011151c735: mov    0x10(%rbx),%rbx
  0x000000011151c739: test   %rbx,%rbx
  0x000000011151c73c: je     0x000000011151c745
  0x000000011151c742: jmpq   *0x38(%rbx)
  0x000000011151c745: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151c74a: hlt    
  0x000000011151c74b: hlt    
  0x000000011151c74c: hlt    
  0x000000011151c74d: hlt    
  0x000000011151c74e: hlt    
  0x000000011151c74f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151c520, 0x000000011151c540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0720} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011151c520: cmp    (%rsi),%rax
  0x000000011151c523: mov    0x24(%r8),%ebx
  0x000000011151c527: shl    $0x3,%rbx
  0x000000011151c52b: mov    0x10(%rbx),%rbx
  0x000000011151c52f: test   %rbx,%rbx
  0x000000011151c532: je     0x000000011151c53b
  0x000000011151c538: jmpq   *0x38(%rbx)
  0x000000011151c53b: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151c320, 0x000000011151c350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0888} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000011151c320: mov    0x14(%rsi),%ebx
  0x000000011151c323: shl    $0x3,%rbx
  0x000000011151c327: mov    0x28(%rbx),%ebx
  0x000000011151c32a: shl    $0x3,%rbx
  0x000000011151c32e: mov    0x24(%rbx),%ebx
  0x000000011151c331: shl    $0x3,%rbx
  0x000000011151c335: mov    0x10(%rbx),%rbx
  0x000000011151c339: test   %rbx,%rbx
  0x000000011151c33c: je     0x000000011151c345
  0x000000011151c342: jmpq   *0x38(%rbx)
  0x000000011151c345: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151c34a: hlt    
  0x000000011151c34b: hlt    
  0x000000011151c34c: hlt    
  0x000000011151c34d: hlt    
  0x000000011151c34e: hlt    
  0x000000011151c34f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000011151c120, 0x000000011151c140]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0b80} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011151c120: mov    0x24(%rcx),%ebx
  0x000000011151c123: shl    $0x3,%rbx
  0x000000011151c127: mov    0x10(%rbx),%rbx
  0x000000011151c12b: test   %rbx,%rbx
  0x000000011151c12e: je     0x000000011151c137
  0x000000011151c134: jmpq   *0x38(%rbx)
  0x000000011151c137: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151c13c: hlt    
  0x000000011151c13d: hlt    
  0x000000011151c13e: hlt    
  0x000000011151c13f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x000000011151bf20, 0x000000011151bf50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0c98} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000011151bf20: mov    0x14(%rsi),%ebx
  0x000000011151bf23: shl    $0x3,%rbx
  0x000000011151bf27: mov    0x28(%rbx),%ebx
  0x000000011151bf2a: shl    $0x3,%rbx
  0x000000011151bf2e: mov    0x24(%rbx),%ebx
  0x000000011151bf31: shl    $0x3,%rbx
  0x000000011151bf35: mov    0x10(%rbx),%rbx
  0x000000011151bf39: test   %rbx,%rbx
  0x000000011151bf3c: je     0x000000011151bf45
  0x000000011151bf42: jmpq   *0x38(%rbx)
  0x000000011151bf45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151bf4a: hlt    
  0x000000011151bf4b: hlt    
  0x000000011151bf4c: hlt    
  0x000000011151bf4d: hlt    
  0x000000011151bf4e: hlt    
  0x000000011151bf4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000011151bd20, 0x000000011151bd40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b0db0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011151bd20: cmp    (%rsi),%rax
  0x000000011151bd23: mov    0x24(%r8),%ebx
  0x000000011151bd27: shl    $0x3,%rbx
  0x000000011151bd2b: mov    0x10(%rbx),%rbx
  0x000000011151bd2f: test   %rbx,%rbx
  0x000000011151bd32: je     0x000000011151bd3b
  0x000000011151bd38: jmpq   *0x38(%rbx)
  0x000000011151bd3b: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     161   36             java.lang.String::charAt (25 bytes)
 total in heap  [0x000000011151a110,0x000000011151a4b8] = 936
 relocation     [0x000000011151a288,0x000000011151a298] = 16
 main code      [0x000000011151a2a0,0x000000011151a340] = 160
 stub code      [0x000000011151a340,0x000000011151a358] = 24
 metadata       [0x000000011151a358,0x000000011151a370] = 24
 scopes data    [0x000000011151a370,0x000000011151a3d0] = 96
 scopes pcs     [0x000000011151a3d0,0x000000011151a4a0] = 208
 dependencies   [0x000000011151a4a0,0x000000011151a4a8] = 8
 nul chk table  [0x000000011151a4a8,0x000000011151a4b8] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x000000011151a2a0, 0x000000011151a358]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e5ba4b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000011151a2a0: mov    0x8(%rsi),%r10d
  0x000000011151a2a4: movabs $0x800000000,%r12
  0x000000011151a2ae: add    %r12,%r10
  0x000000011151a2b1: xor    %r12,%r12
  0x000000011151a2b4: cmp    %r10,%rax
  0x000000011151a2b7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011151a2bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011151a2c0: mov    %eax,-0x14000(%rsp)
  0x000000011151a2c7: push   %rbp
  0x000000011151a2c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000011151a2cc: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011151a2d1: test   %r10d,%r10d
  0x000000011151a2d4: jne    0x000000011151a2fd  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011151a2d6: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x000000011151a2d9: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000011151a326
  0x000000011151a2de: cmp    %r10d,%edx
  0x000000011151a2e1: jae    0x000000011151a316
  0x000000011151a2e3: lea    (%r12,%rbp,8),%r10
  0x000000011151a2e7: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011151a2ed: add    $0x20,%rsp
  0x000000011151a2f1: pop    %rbp
  0x000000011151a2f2: mov    0x108(%r15),%r10
  0x000000011151a2f9: test   %eax,(%r10)        ;   {poll_return}
  0x000000011151a2fc: retq   
  0x000000011151a2fd: mov    %rsi,%rbp
  0x000000011151a300: mov    %edx,(%rsp)
  0x000000011151a303: mov    %r10d,0x4(%rsp)
  0x000000011151a308: mov    $0xffffff4d,%esi
  0x000000011151a30d: xchg   %ax,%ax
  0x000000011151a30f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151a314: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000011151a316: mov    $0xffffffe5,%esi
  0x000000011151a31b: mov    %edx,0x4(%rsp)
  0x000000011151a31f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151a324: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011151a326: mov    $0xfffffff6,%esi
  0x000000011151a32b: mov    %edx,0x4(%rsp)
  0x000000011151a32f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151a334: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011151a336: hlt    
  0x000000011151a337: hlt    
  0x000000011151a338: hlt    
  0x000000011151a339: hlt    
  0x000000011151a33a: hlt    
  0x000000011151a33b: hlt    
  0x000000011151a33c: hlt    
  0x000000011151a33d: hlt    
  0x000000011151a33e: hlt    
  0x000000011151a33f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011151a340: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011151a345: callq  0x000000011151a34a
  0x000000011151a34a: subq   $0x5,(%rsp)
  0x000000011151a34f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011151a354: hlt    
  0x000000011151a355: hlt    
  0x000000011151a356: hlt    
  0x000000011151a357: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     164   37             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x000000011151e890,0x000000011151eb60] = 720
 relocation     [0x000000011151ea08,0x000000011151ea18] = 16
 main code      [0x000000011151ea20,0x000000011151ea80] = 96
 stub code      [0x000000011151ea80,0x000000011151ea98] = 24
 metadata       [0x000000011151ea98,0x000000011151eaa0] = 8
 scopes data    [0x000000011151eaa0,0x000000011151eac8] = 40
 scopes pcs     [0x000000011151eac8,0x000000011151eb48] = 128
 dependencies   [0x000000011151eb48,0x000000011151eb50] = 8
 nul chk table  [0x000000011151eb50,0x000000011151eb60] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x000000011151ea20, 0x000000011151ea98]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e70d988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000011151ea20: mov    %eax,-0x14000(%rsp)
  0x000000011151ea27: push   %rbp
  0x000000011151ea28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000011151ea2c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000011151ea5e
  0x000000011151ea30: cmp    %r10d,%edx
  0x000000011151ea33: jae    0x000000011151ea4a
  0x000000011151ea35: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000011151ea3a: add    $0x20,%rsp
  0x000000011151ea3e: pop    %rbp
  0x000000011151ea3f: mov    0x108(%r15),%r10
  0x000000011151ea46: test   %eax,(%r10)        ;   {poll_return}
  0x000000011151ea49: retq   
  0x000000011151ea4a: mov    %rsi,%rbp
  0x000000011151ea4d: mov    %edx,0x4(%rsp)
  0x000000011151ea51: mov    $0xffffffe5,%esi
  0x000000011151ea56: nop
  0x000000011151ea57: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151ea5c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000011151ea5e: mov    %rsi,%rbp
  0x000000011151ea61: mov    %edx,0x4(%rsp)
  0x000000011151ea65: mov    $0xfffffff6,%esi
  0x000000011151ea6a: nop
  0x000000011151ea6b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151ea70: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000011151ea72: hlt    
  0x000000011151ea73: hlt    
  0x000000011151ea74: hlt    
  0x000000011151ea75: hlt    
  0x000000011151ea76: hlt    
  0x000000011151ea77: hlt    
  0x000000011151ea78: hlt    
  0x000000011151ea79: hlt    
  0x000000011151ea7a: hlt    
  0x000000011151ea7b: hlt    
  0x000000011151ea7c: hlt    
  0x000000011151ea7d: hlt    
  0x000000011151ea7e: hlt    
  0x000000011151ea7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011151ea80: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011151ea85: callq  0x000000011151ea8a
  0x000000011151ea8a: subq   $0x5,(%rsp)
  0x000000011151ea8f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011151ea94: hlt    
  0x000000011151ea95: hlt    
  0x000000011151ea96: hlt    
  0x000000011151ea97: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151a0a0, 0x000000011151a0c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b1f00} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151a0a0: mov    0x20(%rsp),%rbx
  0x000000011151a0a5: mov    0x24(%rbx),%ebx
  0x000000011151a0a8: shl    $0x3,%rbx
  0x000000011151a0ac: mov    0x10(%rbx),%rbx
  0x000000011151a0b0: test   %rbx,%rbx
  0x000000011151a0b3: je     0x000000011151a0bc
  0x000000011151a0b9: jmpq   *0x38(%rbx)
  0x000000011151a0bc: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151a0c1: hlt    
  0x000000011151a0c2: hlt    
  0x000000011151a0c3: hlt    
  0x000000011151a0c4: hlt    
  0x000000011151a0c5: hlt    
  0x000000011151a0c6: hlt    
  0x000000011151a0c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151b8a0, 0x000000011151b8d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b2068} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151b8a0: mov    0x14(%rsi),%ebx
  0x000000011151b8a3: shl    $0x3,%rbx
  0x000000011151b8a7: mov    0x28(%rbx),%ebx
  0x000000011151b8aa: shl    $0x3,%rbx
  0x000000011151b8ae: mov    0x24(%rbx),%ebx
  0x000000011151b8b1: shl    $0x3,%rbx
  0x000000011151b8b5: mov    0x10(%rbx),%rbx
  0x000000011151b8b9: test   %rbx,%rbx
  0x000000011151b8bc: je     0x000000011151b8c5
  0x000000011151b8c2: jmpq   *0x38(%rbx)
  0x000000011151b8c5: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151b8ca: hlt    
  0x000000011151b8cb: hlt    
  0x000000011151b8cc: hlt    
  0x000000011151b8cd: hlt    
  0x000000011151b8ce: hlt    
  0x000000011151b8cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151b420, 0x000000011151b448]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b30e0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151b420: mov    0x28(%rsp),%rbx
  0x000000011151b425: mov    0x24(%rbx),%ebx
  0x000000011151b428: shl    $0x3,%rbx
  0x000000011151b42c: mov    0x10(%rbx),%rbx
  0x000000011151b430: test   %rbx,%rbx
  0x000000011151b433: je     0x000000011151b43c
  0x000000011151b439: jmpq   *0x38(%rbx)
  0x000000011151b43c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151b441: hlt    
  0x000000011151b442: hlt    
  0x000000011151b443: hlt    
  0x000000011151b444: hlt    
  0x000000011151b445: hlt    
  0x000000011151b446: hlt    
  0x000000011151b447: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151b220, 0x000000011151b250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b3248} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151b220: mov    0x14(%rsi),%ebx
  0x000000011151b223: shl    $0x3,%rbx
  0x000000011151b227: mov    0x28(%rbx),%ebx
  0x000000011151b22a: shl    $0x3,%rbx
  0x000000011151b22e: mov    0x24(%rbx),%ebx
  0x000000011151b231: shl    $0x3,%rbx
  0x000000011151b235: mov    0x10(%rbx),%rbx
  0x000000011151b239: test   %rbx,%rbx
  0x000000011151b23c: je     0x000000011151b245
  0x000000011151b242: jmpq   *0x38(%rbx)
  0x000000011151b245: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151b24a: hlt    
  0x000000011151b24b: hlt    
  0x000000011151b24c: hlt    
  0x000000011151b24d: hlt    
  0x000000011151b24e: hlt    
  0x000000011151b24f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151b020, 0x000000011151b048]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b49e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151b020: mov    0x30(%rsp),%rbx
  0x000000011151b025: mov    0x24(%rbx),%ebx
  0x000000011151b028: shl    $0x3,%rbx
  0x000000011151b02c: mov    0x10(%rbx),%rbx
  0x000000011151b030: test   %rbx,%rbx
  0x000000011151b033: je     0x000000011151b03c
  0x000000011151b039: jmpq   *0x38(%rbx)
  0x000000011151b03c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151b041: hlt    
  0x000000011151b042: hlt    
  0x000000011151b043: hlt    
  0x000000011151b044: hlt    
  0x000000011151b045: hlt    
  0x000000011151b046: hlt    
  0x000000011151b047: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151ae20, 0x000000011151ae50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9b4b50} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151ae20: mov    0x14(%rsi),%ebx
  0x000000011151ae23: shl    $0x3,%rbx
  0x000000011151ae27: mov    0x28(%rbx),%ebx
  0x000000011151ae2a: shl    $0x3,%rbx
  0x000000011151ae2e: mov    0x24(%rbx),%ebx
  0x000000011151ae31: shl    $0x3,%rbx
  0x000000011151ae35: mov    0x10(%rbx),%rbx
  0x000000011151ae39: test   %rbx,%rbx
  0x000000011151ae3c: je     0x000000011151ae45
  0x000000011151ae42: jmpq   *0x38(%rbx)
  0x000000011151ae45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151ae4a: hlt    
  0x000000011151ae4b: hlt    
  0x000000011151ae4c: hlt    
  0x000000011151ae4d: hlt    
  0x000000011151ae4e: hlt    
  0x000000011151ae4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151ac20, 0x000000011151ac48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9bdf88} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151ac20: mov    0x38(%rsp),%rbx
  0x000000011151ac25: mov    0x24(%rbx),%ebx
  0x000000011151ac28: shl    $0x3,%rbx
  0x000000011151ac2c: mov    0x10(%rbx),%rbx
  0x000000011151ac30: test   %rbx,%rbx
  0x000000011151ac33: je     0x000000011151ac3c
  0x000000011151ac39: jmpq   *0x38(%rbx)
  0x000000011151ac3c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151ac41: hlt    
  0x000000011151ac42: hlt    
  0x000000011151ac43: hlt    
  0x000000011151ac44: hlt    
  0x000000011151ac45: hlt    
  0x000000011151ac46: hlt    
  0x000000011151ac47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011151aa20, 0x000000011151aa50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9be140} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151aa20: mov    0x14(%rsi),%ebx
  0x000000011151aa23: shl    $0x3,%rbx
  0x000000011151aa27: mov    0x28(%rbx),%ebx
  0x000000011151aa2a: shl    $0x3,%rbx
  0x000000011151aa2e: mov    0x24(%rbx),%ebx
  0x000000011151aa31: shl    $0x3,%rbx
  0x000000011151aa35: mov    0x10(%rbx),%rbx
  0x000000011151aa39: test   %rbx,%rbx
  0x000000011151aa3c: je     0x000000011151aa45
  0x000000011151aa42: jmpq   *0x38(%rbx)
  0x000000011151aa45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151aa4a: hlt    
  0x000000011151aa4b: hlt    
  0x000000011151aa4c: hlt    
  0x000000011151aa4d: hlt    
  0x000000011151aa4e: hlt    
  0x000000011151aa4f: hlt    
Compiled method (c2)     190   46             java.lang.String::coder (15 bytes)
 total in heap  [0x000000011151a510,0x000000011151a758] = 584
 relocation     [0x000000011151a688,0x000000011151a698] = 16
 main code      [0x000000011151a6a0,0x000000011151a6e0] = 64
 stub code      [0x000000011151a6e0,0x000000011151a6f8] = 24
 metadata       [0x000000011151a6f8,0x000000011151a700] = 8
 scopes data    [0x000000011151a700,0x000000011151a710] = 16
 scopes pcs     [0x000000011151a710,0x000000011151a750] = 64
 dependencies   [0x000000011151a750,0x000000011151a758] = 8
----------------------------------------------------------------------
java/lang/String.coder()B  [0x000000011151a6a0, 0x000000011151a6f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e5bf1a0} 'coder' '()B' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000011151a6a0: mov    0x8(%rsi),%r10d
  0x000000011151a6a4: movabs $0x800000000,%r12
  0x000000011151a6ae: add    %r12,%r10
  0x000000011151a6b1: xor    %r12,%r12
  0x000000011151a6b4: cmp    %r10,%rax
  0x000000011151a6b7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011151a6bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011151a6c0: sub    $0x18,%rsp
  0x000000011151a6c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.String::coder@-1 (line 3258)

  0x000000011151a6cc: movsbl 0x14(%rsi),%eax    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)

  0x000000011151a6d0: add    $0x10,%rsp
  0x000000011151a6d4: pop    %rbp
  0x000000011151a6d5: mov    0x108(%r15),%r10
  0x000000011151a6dc: test   %eax,(%r10)        ;   {poll_return}
  0x000000011151a6df: retq   
[Exception Handler]
[Stub Code]
  0x000000011151a6e0: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011151a6e5: callq  0x000000011151a6ea
  0x000000011151a6ea: subq   $0x5,(%rsp)
  0x000000011151a6ef: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011151a6f4: hlt    
  0x000000011151a6f5: hlt    
  0x000000011151a6f6: hlt    
  0x000000011151a6f7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151e220, 0x000000011151e248]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9c13d8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011151e220: mov    0x40(%rsp),%rbx
  0x000000011151e225: mov    0x24(%rbx),%ebx
  0x000000011151e228: shl    $0x3,%rbx
  0x000000011151e22c: mov    0x10(%rbx),%rbx
  0x000000011151e230: test   %rbx,%rbx
  0x000000011151e233: je     0x000000011151e23c
  0x000000011151e239: jmpq   *0x38(%rbx)
  0x000000011151e23c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151e241: hlt    
  0x000000011151e242: hlt    
  0x000000011151e243: hlt    
  0x000000011151e244: hlt    
  0x000000011151e245: hlt    
  0x000000011151e246: hlt    
  0x000000011151e247: hlt    
Compiled method (c2)     200   48             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x000000011151d090,0x000000011151dea8] = 3608
 relocation     [0x000000011151d208,0x000000011151d238] = 48
 main code      [0x000000011151d240,0x000000011151d660] = 1056
 stub code      [0x000000011151d660,0x000000011151d688] = 40
 metadata       [0x000000011151d688,0x000000011151d6b8] = 48
 scopes data    [0x000000011151d6b8,0x000000011151d8b8] = 512
 scopes pcs     [0x000000011151d8b8,0x000000011151de58] = 1440
 dependencies   [0x000000011151de58,0x000000011151de60] = 8
 handler table  [0x000000011151de60,0x000000011151de78] = 24
 nul chk table  [0x000000011151de78,0x000000011151dea8] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x000000011151d240, 0x000000011151d688]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e98c4e8} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x000000011151d240: mov    0x8(%rsi),%r10d
  0x000000011151d244: movabs $0x800000000,%r12
  0x000000011151d24e: add    %r12,%r10
  0x000000011151d251: xor    %r12,%r12
  0x000000011151d254: cmp    %r10,%rax
  0x000000011151d257: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011151d25d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011151d260: mov    %eax,-0x14000(%rsp)
  0x000000011151d267: push   %rbp
  0x000000011151d268: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x000000011151d26c: mov    %rsi,%r10
  0x000000011151d26f: mov    %rdx,%r9
  0x000000011151d272: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x000000011151d623
  0x000000011151d276: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000011151d632
  0x000000011151d27b: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000011151d27f: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000011151d282: cmp    $0xffff,%r11d
  0x000000011151d289: jg     0x000000011151d5ee  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000011151d28f: mov    %rsi,%rdi
  0x000000011151d292: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x000000011151d296: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x000000011151d63e
  0x000000011151d29b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x000000011151d29e: mov    %r11d,%r10d
  0x000000011151d2a1: add    %edx,%r10d
  0x000000011151d2a4: add    $0x2,%r10d
  0x000000011151d2a8: cmp    %ebx,%r10d
  0x000000011151d2ab: jg     0x000000011151d4d9  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d2b1: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000011151d2b4: mov    %r11d,%esi
  0x000000011151d2b7: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x000000011151d2ba: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x000000011151d2be: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x000000011151d64a
  0x000000011151d2c3: mov    %edx,%r10d
  0x000000011151d2c6: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x000000011151d2c9: cmp    %ebp,%edx
  0x000000011151d2cb: jae    0x000000011151d566
  0x000000011151d2d1: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000011151d2d5: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000011151d2da: mov    %edx,%r14d
  0x000000011151d2dd: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000011151d2e1: cmp    %ebp,%r10d
  0x000000011151d2e4: jae    0x000000011151d592
  0x000000011151d2ea: movslq %edx,%rsi
  0x000000011151d2ed: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000011151d2f2: test   %r11d,%r11d
  0x000000011151d2f5: jle    0x000000011151d4c2  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011151d2fb: test   %ecx,%ecx
  0x000000011151d2fd: jne    0x000000011151d5be
  0x000000011151d303: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000011151d5be
  0x000000011151d308: test   %r10d,%r10d
  0x000000011151d30b: jbe    0x000000011151d5be
  0x000000011151d311: movslq %r10d,%rcx
  0x000000011151d314: movslq %r11d,%r13
  0x000000011151d317: mov    %r13,%r10
  0x000000011151d31a: dec    %r10
  0x000000011151d31d: cmp    %rcx,%r10
  0x000000011151d320: jae    0x000000011151d5be
  0x000000011151d326: cmp    %ebp,%r14d
  0x000000011151d329: jae    0x000000011151d5be
  0x000000011151d32f: movslq %ebp,%r10
  0x000000011151d332: movslq %r14d,%rcx
  0x000000011151d335: add    %r13,%rcx
  0x000000011151d338: dec    %rcx
  0x000000011151d33b: cmp    %r10,%rcx
  0x000000011151d33e: jae    0x000000011151d5be
  0x000000011151d344: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d34a: mov    %ecx,%ebp
  0x000000011151d34c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d350: mov    %ebp,%r10d
  0x000000011151d353: dec    %r10d
  0x000000011151d356: cmp    $0x7f,%r10d
  0x000000011151d35a: jae    0x000000011151d606  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d360: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d364: mov    %r11d,%r13d
  0x000000011151d367: add    $0xfffffffd,%r13d
  0x000000011151d36b: lea    (%r12,%r8,8),%rsi
  0x000000011151d36f: mov    $0x1,%ecx
  0x000000011151d374: mov    $0x80000000,%r8d
  0x000000011151d37a: cmp    %r13d,%r11d
  0x000000011151d37d: cmovl  %r8d,%r13d
  0x000000011151d381: cmp    $0x1,%r13d
  0x000000011151d385: jle    0x000000011151d5e2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000011151d38b: jmp    0x000000011151d39c
  0x000000011151d38d: vmovq  %xmm0,%r9
  0x000000011151d392: vmovq  %xmm1,%rdi
  0x000000011151d397: vmovd  %xmm3,%r11d
  0x000000011151d39c: mov    %r13d,%r10d
  0x000000011151d39f: sub    %ecx,%r10d
  0x000000011151d3a2: mov    $0xfa0,%r14d
  0x000000011151d3a8: cmp    %r14d,%r10d
  0x000000011151d3ab: cmovg  %r14d,%r10d
  0x000000011151d3af: add    %ecx,%r10d
  0x000000011151d3b2: vmovq  %r9,%xmm0
  0x000000011151d3b7: vmovq  %rdi,%xmm1
  0x000000011151d3bc: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d3c1: mov    %ecx,%r14d
  0x000000011151d3c4: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000011151d3c7: movslq %ecx,%r9
  0x000000011151d3ca: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d3d0: mov    %r8d,%ebp
  0x000000011151d3d3: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d3d7: mov    %ebp,%r11d
  0x000000011151d3da: dec    %r11d
  0x000000011151d3dd: cmp    $0x7f,%r11d
  0x000000011151d3e1: jae    0x000000011151d512  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d3e7: movslq %r14d,%rdi
  0x000000011151d3ea: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d3ef: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d3f5: mov    %r11d,%ebp
  0x000000011151d3f8: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d3fc: mov    %ebp,%r8d
  0x000000011151d3ff: dec    %r8d
  0x000000011151d402: cmp    $0x7f,%r8d
  0x000000011151d406: jae    0x000000011151d518  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d40c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d411: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d417: mov    %r8d,%ebp
  0x000000011151d41a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d41e: mov    %ebp,%r11d
  0x000000011151d421: dec    %r11d
  0x000000011151d424: cmp    $0x7f,%r11d
  0x000000011151d428: jae    0x000000011151d520  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d42e: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d433: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d439: mov    %r8d,%ebp
  0x000000011151d43c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d440: mov    %ebp,%r11d
  0x000000011151d443: dec    %r11d
  0x000000011151d446: cmp    $0x7f,%r11d
  0x000000011151d44a: jae    0x000000011151d529  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d450: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d455: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011151d458: cmp    %r10d,%ecx
  0x000000011151d45b: jl     0x000000011151d3c1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000011151d461: mov    0x108(%r15),%r9
  0x000000011151d468: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000011151d46c: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x000000011151d46f: cmp    %r13d,%ecx
  0x000000011151d472: jl     0x000000011151d38d
  0x000000011151d478: vmovq  %xmm0,%r9
  0x000000011151d47d: vmovq  %xmm1,%rdi
  0x000000011151d482: vmovd  %xmm3,%r11d
  0x000000011151d487: cmp    %r11d,%ecx
  0x000000011151d48a: jge    0x000000011151d4c2  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d48c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d492: mov    %ecx,%r14d
  0x000000011151d495: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000011151d498: mov    %r8d,%ebp
  0x000000011151d49b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d49f: mov    %ebp,%r10d
  0x000000011151d4a2: dec    %r10d
  0x000000011151d4a5: cmp    $0x7f,%r10d
  0x000000011151d4a9: jae    0x000000011151d60d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011151d4af: movslq %r14d,%r10
  0x000000011151d4b2: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011151d4b7: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011151d4b9: cmp    %r11d,%ecx
  0x000000011151d4bc: jl     0x000000011151d48c
  0x000000011151d4be: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011151d4c2: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x000000011151d4c6: mov    %rdi,%rax
  0x000000011151d4c9: add    $0x40,%rsp
  0x000000011151d4cd: pop    %rbp
  0x000000011151d4ce: mov    0x108(%r15),%r10
  0x000000011151d4d5: test   %eax,(%r10)        ;   {poll_return}
  0x000000011151d4d8: retq   
  0x000000011151d4d9: mov    %edx,0xc(%rsp)
  0x000000011151d4dd: mov    %rsi,(%rsp)
  0x000000011151d4e1: mov    %r9,%rbp
  0x000000011151d4e4: mov    %r11d,%edx
  0x000000011151d4e7: mov    %r11d,0x8(%rsp)
  0x000000011151d4ec: add    $0x2,%edx
  0x000000011151d4ef: callq  0x00000001114d2f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x000000011151d4f4: mov    %rbp,%r9
  0x000000011151d4f7: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d4fb: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011151d500: mov    (%rsp),%rdi
  0x000000011151d504: mov    0x8(%rsp),%r11d
  0x000000011151d509: mov    0xc(%rsp),%edx
  0x000000011151d50d: jmpq   0x000000011151d2b1
  0x000000011151d512: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d516: jmp    0x000000011151d530
  0x000000011151d518: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011151d51a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d51e: jmp    0x000000011151d530
  0x000000011151d520: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011151d523: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d527: jmp    0x000000011151d530
  0x000000011151d529: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011151d52c: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d530: vmovq  %xmm0,%r9
  0x000000011151d535: vmovq  %xmm1,%rdi
  0x000000011151d53a: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000011151d53f: mov    $0xffffff45,%esi
  0x000000011151d544: mov    %r14d,(%rsp)
  0x000000011151d548: mov    %ecx,0x4(%rsp)
  0x000000011151d54c: mov    %rdi,0x10(%rsp)
  0x000000011151d551: mov    %r9,0x18(%rsp)
  0x000000011151d556: mov    %r11d,0xc(%rsp)
  0x000000011151d55b: mov    %ebx,0x20(%rsp)
  0x000000011151d55f: callq  0x00000001114d4900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d564: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000011151d566: mov    $0xffffffe4,%esi
  0x000000011151d56b: mov    %edx,%ebp
  0x000000011151d56d: mov    %rdi,(%rsp)
  0x000000011151d571: mov    %r9,0x8(%rsp)
  0x000000011151d576: mov    %r11d,0x10(%rsp)
  0x000000011151d57b: mov    %r10d,0x14(%rsp)
  0x000000011151d580: mov    %ebx,0x1c(%rsp)
  0x000000011151d584: mov    %eax,0x20(%rsp)
  0x000000011151d588: data16 xchg %ax,%ax
  0x000000011151d58b: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d590: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000011151d592: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x000000011151d596: mov    $0xffffffe4,%esi
  0x000000011151d59b: mov    %r14d,(%rsp)
  0x000000011151d59f: mov    %rdi,0x8(%rsp)
  0x000000011151d5a4: mov    %r9,0x10(%rsp)
  0x000000011151d5a9: mov    %r11d,0x4(%rsp)
  0x000000011151d5ae: mov    %ebx,0x1c(%rsp)
  0x000000011151d5b2: mov    %r10d,0x20(%rsp)
  0x000000011151d5b7: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d5bc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011151d5be: mov    $0xffffff7e,%esi
  0x000000011151d5c3: mov    %r14d,%ebp
  0x000000011151d5c6: mov    %rdi,(%rsp)
  0x000000011151d5ca: mov    %r9,0x8(%rsp)
  0x000000011151d5cf: mov    %ebx,0x14(%rsp)
  0x000000011151d5d3: mov    %r11d,0x18(%rsp)
  0x000000011151d5d8: data16 xchg %ax,%ax
  0x000000011151d5db: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d5e0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011151d5e2: mov    %edx,%r14d
  0x000000011151d5e5: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x000000011151d5e9: jmpq   0x000000011151d487
  0x000000011151d5ee: mov    $0xffffff4d,%esi
  0x000000011151d5f3: mov    %r10,%rbp
  0x000000011151d5f6: mov    %rdx,(%rsp)
  0x000000011151d5fa: mov    %r11d,0xc(%rsp)
  0x000000011151d5ff: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d604: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000011151d606: xor    %ecx,%ecx
  0x000000011151d608: jmpq   0x000000011151d53f
  0x000000011151d60d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011151d611: jmpq   0x000000011151d53f  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x000000011151d616: mov    %rax,%rsi
  0x000000011151d619: add    $0x40,%rsp
  0x000000011151d61d: pop    %rbp
  0x000000011151d61e: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
  0x000000011151d623: mov    $0xfffffff6,%esi
  0x000000011151d628: data16 xchg %ax,%ax
  0x000000011151d62b: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d630: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000011151d632: mov    $0xfffffff6,%esi
  0x000000011151d637: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d63c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000011151d63e: mov    $0xfffffff6,%esi
  0x000000011151d643: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d648: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x000000011151d64a: mov    $0xfffffff6,%esi
  0x000000011151d64f: mov    %edx,%ebp
  0x000000011151d651: mov    %eax,(%rsp)
  0x000000011151d654: data16 xchg %ax,%ax
  0x000000011151d657: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011151d65c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000011151d65e: hlt    
  0x000000011151d65f: hlt    
[Stub Code]
  0x000000011151d660: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000011151d66a: jmpq   0x000000011151d66a  ;   {runtime_call}
[Exception Handler]
  0x000000011151d66f: jmpq   0x0000000111509680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000011151d674: callq  0x000000011151d679
  0x000000011151d679: subq   $0x5,(%rsp)
  0x000000011151d67e: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011151d683: hlt    
  0x000000011151d684: hlt    
  0x000000011151d685: hlt    
  0x000000011151d686: hlt    
  0x000000011151d687: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x0000000111521e20, 0x0000000111521e50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d2598} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000111521e20: mov    0x14(%rsi),%ebx
  0x0000000111521e23: shl    $0x3,%rbx
  0x0000000111521e27: mov    0x28(%rbx),%ebx
  0x0000000111521e2a: shl    $0x3,%rbx
  0x0000000111521e2e: mov    0x24(%rbx),%ebx
  0x0000000111521e31: shl    $0x3,%rbx
  0x0000000111521e35: mov    0x10(%rbx),%rbx
  0x0000000111521e39: test   %rbx,%rbx
  0x0000000111521e3c: je     0x0000000111521e45
  0x0000000111521e42: jmpq   *0x38(%rbx)
  0x0000000111521e45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111521e4a: hlt    
  0x0000000111521e4b: hlt    
  0x0000000111521e4c: hlt    
  0x0000000111521e4d: hlt    
  0x0000000111521e4e: hlt    
  0x0000000111521e4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111521920, 0x0000000111521948]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d4b48} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000111521920: mov    0x48(%rsp),%rbx
  0x0000000111521925: mov    0x24(%rbx),%ebx
  0x0000000111521928: shl    $0x3,%rbx
  0x000000011152192c: mov    0x10(%rbx),%rbx
  0x0000000111521930: test   %rbx,%rbx
  0x0000000111521933: je     0x000000011152193c
  0x0000000111521939: jmpq   *0x38(%rbx)
  0x000000011152193c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111521941: hlt    
  0x0000000111521942: hlt    
  0x0000000111521943: hlt    
  0x0000000111521944: hlt    
  0x0000000111521945: hlt    
  0x0000000111521946: hlt    
  0x0000000111521947: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000111521720, 0x0000000111521750]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d4cb0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000111521720: mov    0x14(%rsi),%ebx
  0x0000000111521723: shl    $0x3,%rbx
  0x0000000111521727: mov    0x28(%rbx),%ebx
  0x000000011152172a: shl    $0x3,%rbx
  0x000000011152172e: mov    0x24(%rbx),%ebx
  0x0000000111521731: shl    $0x3,%rbx
  0x0000000111521735: mov    0x10(%rbx),%rbx
  0x0000000111521739: test   %rbx,%rbx
  0x000000011152173c: je     0x0000000111521745
  0x0000000111521742: jmpq   *0x38(%rbx)
  0x0000000111521745: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011152174a: hlt    
  0x000000011152174b: hlt    
  0x000000011152174c: hlt    
  0x000000011152174d: hlt    
  0x000000011152174e: hlt    
  0x000000011152174f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111521220, 0x0000000111521248]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6100} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000111521220: mov    0x50(%rsp),%rbx
  0x0000000111521225: mov    0x24(%rbx),%ebx
  0x0000000111521228: shl    $0x3,%rbx
  0x000000011152122c: mov    0x10(%rbx),%rbx
  0x0000000111521230: test   %rbx,%rbx
  0x0000000111521233: je     0x000000011152123c
  0x0000000111521239: jmpq   *0x38(%rbx)
  0x000000011152123c: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111521241: hlt    
  0x0000000111521242: hlt    
  0x0000000111521243: hlt    
  0x0000000111521244: hlt    
  0x0000000111521245: hlt    
  0x0000000111521246: hlt    
  0x0000000111521247: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000111521020, 0x0000000111521050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6218} 'invokeBasic' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000111521020: mov    0x14(%rsi),%ebx
  0x0000000111521023: shl    $0x3,%rbx
  0x0000000111521027: mov    0x28(%rbx),%ebx
  0x000000011152102a: shl    $0x3,%rbx
  0x000000011152102e: mov    0x24(%rbx),%ebx
  0x0000000111521031: shl    $0x3,%rbx
  0x0000000111521035: mov    0x10(%rbx),%rbx
  0x0000000111521039: test   %rbx,%rbx
  0x000000011152103c: je     0x0000000111521045
  0x0000000111521042: jmpq   *0x38(%rbx)
  0x0000000111521045: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011152104a: hlt    
  0x000000011152104b: hlt    
  0x000000011152104c: hlt    
  0x000000011152104d: hlt    
  0x000000011152104e: hlt    
  0x000000011152104f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111520e20, 0x0000000111520e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6330} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111520e20: cmp    (%rsi),%rax
  0x0000000111520e23: mov    0x24(%rcx),%ebx
  0x0000000111520e26: shl    $0x3,%rbx
  0x0000000111520e2a: mov    0x10(%rbx),%rbx
  0x0000000111520e2e: test   %rbx,%rbx
  0x0000000111520e31: je     0x0000000111520e3a
  0x0000000111520e37: jmpq   *0x38(%rbx)
  0x0000000111520e3a: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111520e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x0000000111520c20, 0x0000000111520c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d64e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000111520c20: mov    0x14(%rsi),%ebx
  0x0000000111520c23: shl    $0x3,%rbx
  0x0000000111520c27: mov    0x28(%rbx),%ebx
  0x0000000111520c2a: shl    $0x3,%rbx
  0x0000000111520c2e: mov    0x24(%rbx),%ebx
  0x0000000111520c31: shl    $0x3,%rbx
  0x0000000111520c35: mov    0x10(%rbx),%rbx
  0x0000000111520c39: test   %rbx,%rbx
  0x0000000111520c3c: je     0x0000000111520c45
  0x0000000111520c42: jmpq   *0x38(%rbx)
  0x0000000111520c45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111520c4a: hlt    
  0x0000000111520c4b: hlt    
  0x0000000111520c4c: hlt    
  0x0000000111520c4d: hlt    
  0x0000000111520c4e: hlt    
  0x0000000111520c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000111520a20, 0x0000000111520a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6c30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000111520a20: mov    0x14(%rsi),%ebx
  0x0000000111520a23: shl    $0x3,%rbx
  0x0000000111520a27: mov    0x28(%rbx),%ebx
  0x0000000111520a2a: shl    $0x3,%rbx
  0x0000000111520a2e: mov    0x24(%rbx),%ebx
  0x0000000111520a31: shl    $0x3,%rbx
  0x0000000111520a35: mov    0x10(%rbx),%rbx
  0x0000000111520a39: test   %rbx,%rbx
  0x0000000111520a3c: je     0x0000000111520a45
  0x0000000111520a42: jmpq   *0x38(%rbx)
  0x0000000111520a45: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000111520a4a: hlt    
  0x0000000111520a4b: hlt    
  0x0000000111520a4c: hlt    
  0x0000000111520a4d: hlt    
  0x0000000111520a4e: hlt    
  0x0000000111520a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111520820, 0x0000000111520840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6d48} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111520820: cmp    (%rsi),%rax
  0x0000000111520823: mov    0x24(%r8),%ebx
  0x0000000111520827: shl    $0x3,%rbx
  0x000000011152082b: mov    0x10(%rbx),%rbx
  0x000000011152082f: test   %rbx,%rbx
  0x0000000111520832: je     0x000000011152083b
  0x0000000111520838: jmpq   *0x38(%rbx)
  0x000000011152083b: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x0000000111520620, 0x0000000111520650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6e60} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x0000000111520620: mov    0x14(%rsi),%ebx
  0x0000000111520623: shl    $0x3,%rbx
  0x0000000111520627: mov    0x28(%rbx),%ebx
  0x000000011152062a: shl    $0x3,%rbx
  0x000000011152062e: mov    0x24(%rbx),%ebx
  0x0000000111520631: shl    $0x3,%rbx
  0x0000000111520635: mov    0x10(%rbx),%rbx
  0x0000000111520639: test   %rbx,%rbx
  0x000000011152063c: je     0x0000000111520645
  0x0000000111520642: jmpq   *0x38(%rbx)
  0x0000000111520645: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011152064a: hlt    
  0x000000011152064b: hlt    
  0x000000011152064c: hlt    
  0x000000011152064d: hlt    
  0x000000011152064e: hlt    
  0x000000011152064f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000111520220, 0x0000000111520240]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d6f78} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000111520220: cmp    (%rsi),%rax
  0x0000000111520223: mov    0x24(%rdx),%ebx
  0x0000000111520226: shl    $0x3,%rbx
  0x000000011152022a: mov    0x10(%rbx),%rbx
  0x000000011152022e: test   %rbx,%rbx
  0x0000000111520231: je     0x000000011152023a
  0x0000000111520237: jmpq   *0x38(%rbx)
  0x000000011152023a: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011152023f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DLjava/lang/Object;)Ljava/lang/Object;  [0x0000000111520020, 0x0000000111520050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d7850} 'invokeBasic' '(DLjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000111520020: mov    0x14(%rsi),%ebx
  0x0000000111520023: shl    $0x3,%rbx
  0x0000000111520027: mov    0x28(%rbx),%ebx
  0x000000011152002a: shl    $0x3,%rbx
  0x000000011152002e: mov    0x24(%rbx),%ebx
  0x0000000111520031: shl    $0x3,%rbx
  0x0000000111520035: mov    0x10(%rbx),%rbx
  0x0000000111520039: test   %rbx,%rbx
  0x000000011152003c: je     0x0000000111520045
  0x0000000111520042: jmpq   *0x38(%rbx)
  0x0000000111520045: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011152004a: hlt    
  0x000000011152004b: hlt    
  0x000000011152004c: hlt    
  0x000000011152004d: hlt    
  0x000000011152004e: hlt    
  0x000000011152004f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011151fba0, 0x000000011151fbc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011e9d7968} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/Object'
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011151fba0: cmp    (%rsi),%rax
  0x000000011151fba3: mov    0x24(%rcx),%ebx
  0x000000011151fba6: shl    $0x3,%rbx
  0x000000011151fbaa: mov    0x10(%rbx),%rbx
  0x000000011151fbae: test   %rbx,%rbx
  0x000000011151fbb1: je     0x000000011151fbba
  0x000000011151fbb7: jmpq   *0x38(%rbx)
  0x000000011151fbba: jmpq   0x00000001114ec880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011151fbbf: hlt    
Time elapsed: 3.961 ms result=337
Warmup phase
Compiled method (c2)     251   62             java.util.HashMap::hash (20 bytes)
 total in heap  [0x0000000111526190,0x0000000111526980] = 2032
 relocation     [0x0000000111526308,0x0000000111526328] = 32
 main code      [0x0000000111526340,0x0000000111526580] = 576
 stub code      [0x0000000111526580,0x0000000111526598] = 24
 metadata       [0x0000000111526598,0x00000001115265c8] = 48
 scopes data    [0x00000001115265c8,0x00000001115266e0] = 280
 scopes pcs     [0x00000001115266e0,0x0000000111526960] = 640
 dependencies   [0x0000000111526960,0x0000000111526968] = 8
 nul chk table  [0x0000000111526968,0x0000000111526980] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x0000000111526340, 0x0000000111526598]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e6dc940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x0000000111526340: mov    %eax,-0x14000(%rsp)
  0x0000000111526347: push   %rbp
  0x0000000111526348: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000011152634c: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x0000000111526556
  0x0000000111526350: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000111526357: jne    0x0000000111526376  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526359: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000011152635d: mov    %r11d,%eax
  0x0000000111526360: shr    $0x10,%eax
  0x0000000111526363: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x0000000111526366: add    $0x20,%rsp
  0x000000011152636a: pop    %rbp
  0x000000011152636b: mov    0x108(%r15),%r10
  0x0000000111526372: test   %eax,(%r10)        ;   {poll_return}
  0x0000000111526375: retq   
  0x0000000111526376: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x000000011152637d: jne    0x0000000111526515  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526383: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526387: test   %r11d,%r11d
  0x000000011152638a: jne    0x000000011152635d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011152638c: mov    0xc(%rsi),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526390: mov    0xc(%r12,%r9,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x0000000111526566
  0x0000000111526395: test   %r8d,%r8d
  0x0000000111526398: jbe    0x000000011152650d  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000011152639e: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115263a2: test   %ebp,%ebp
  0x00000001115263a4: jne    0x0000000111526542  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115263aa: mov    %r8d,%ecx
  0x00000001115263ad: dec    %ecx
  0x00000001115263af: cmp    %r8d,%ecx
  0x00000001115263b2: jae    0x0000000111526526
  0x00000001115263b8: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115263be: mov    %r8d,%r13d
  0x00000001115263c1: add    $0xfffffff9,%r13d
  0x00000001115263c5: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115263c9: mov    $0x80000000,%r11d
  0x00000001115263cf: cmp    %r13d,%ecx
  0x00000001115263d2: cmovl  %r11d,%r13d
  0x00000001115263d6: mov    $0x1,%r9d
  0x00000001115263dc: cmp    $0x1,%r13d
  0x00000001115263e0: jle    0x00000001115264da
  0x00000001115263e6: mov    %edi,%ebx
  0x00000001115263e8: shl    $0x5,%ebx
  0x00000001115263eb: sub    %edi,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115263ed: jmp    0x00000001115263f4
  0x00000001115263ef: vmovd  %xmm1,%r8d
  0x00000001115263f4: mov    %r13d,%r14d
  0x00000001115263f7: sub    %r9d,%r14d
  0x00000001115263fa: mov    $0x1f40,%r11d
  0x0000000111526400: cmp    %r11d,%r14d
  0x0000000111526403: mov    $0x1f40,%r10d
  0x0000000111526409: cmovg  %r10d,%r14d
  0x000000011152640d: add    %r9d,%r14d
  0x0000000111526410: vmovd  %r8d,%xmm1
  0x0000000111526415: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526420: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526423: movzbl 0x10(%rax,%r11,1),%r10d
  0x0000000111526429: movzbl 0x17(%rax,%r11,1),%ecx
  0x000000011152642f: movzbl 0x11(%rax,%r11,1),%edx
  0x0000000111526435: movzbl 0x16(%rax,%r11,1),%edi
  0x000000011152643b: movzbl 0x15(%rax,%r11,1),%ebp
  0x0000000111526441: add    %r10d,%ebx
  0x0000000111526444: movzbl 0x13(%rax,%r11,1),%r10d
  0x000000011152644a: mov    %ebx,%r8d
  0x000000011152644d: shl    $0x5,%r8d
  0x0000000111526451: sub    %ebx,%r8d
  0x0000000111526454: add    %edx,%r8d
  0x0000000111526457: movzbl 0x12(%rax,%r11,1),%ebx
  0x000000011152645d: movzbl 0x14(%rax,%r11,1),%edx
  0x0000000111526463: mov    %r8d,%r11d
  0x0000000111526466: shl    $0x5,%r11d
  0x000000011152646a: sub    %r8d,%r11d
  0x000000011152646d: add    %ebx,%r11d
  0x0000000111526470: mov    %r11d,%ebx
  0x0000000111526473: shl    $0x5,%ebx
  0x0000000111526476: sub    %r11d,%ebx
  0x0000000111526479: add    %r10d,%ebx
  0x000000011152647c: mov    %ebx,%r10d
  0x000000011152647f: shl    $0x5,%r10d
  0x0000000111526483: sub    %ebx,%r10d
  0x0000000111526486: add    %edx,%r10d
  0x0000000111526489: mov    %r10d,%r11d
  0x000000011152648c: shl    $0x5,%r11d
  0x0000000111526490: sub    %r10d,%r11d
  0x0000000111526493: add    %ebp,%r11d
  0x0000000111526496: mov    %r11d,%r8d
  0x0000000111526499: shl    $0x5,%r8d
  0x000000011152649d: sub    %r11d,%r8d
  0x00000001115264a0: add    %edi,%r8d
  0x00000001115264a3: mov    %r8d,%edi
  0x00000001115264a6: shl    $0x5,%edi
  0x00000001115264a9: sub    %r8d,%edi
  0x00000001115264ac: add    %ecx,%edi          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264ae: mov    %edi,%ebx
  0x00000001115264b0: shl    $0x5,%ebx
  0x00000001115264b3: sub    %edi,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264b5: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264b9: cmp    %r14d,%r9d
  0x00000001115264bc: jl     0x0000000111526420  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264c2: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264c9: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x00000001115264cc: cmp    %r13d,%r9d
  0x00000001115264cf: jl     0x00000001115263ef
  0x00000001115264d5: vmovd  %xmm1,%r8d
  0x00000001115264da: cmp    %r8d,%r9d
  0x00000001115264dd: jge    0x0000000111526508  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264df: movzbl 0x10(%rax,%r9,1),%ecx
  0x00000001115264e5: mov    %edi,%r11d
  0x00000001115264e8: shl    $0x5,%r11d
  0x00000001115264ec: sub    %edi,%r11d
  0x00000001115264ef: add    %ecx,%r11d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264f2: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264f5: cmp    %r8d,%r9d
  0x00000001115264f8: jge    0x00000001115264ff  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001115264fa: mov    %r11d,%edi
  0x00000001115264fd: jmp    0x00000001115264df
  0x00000001115264ff: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526503: jmpq   0x000000011152635d
  0x0000000111526508: mov    %edi,%r11d
  0x000000011152650b: jmp    0x00000001115264ff
  0x000000011152650d: xor    %r11d,%r11d
  0x0000000111526510: jmpq   0x000000011152635d
  0x0000000111526515: mov    %rsi,%rbp
  0x0000000111526518: mov    $0xffffffc6,%esi
  0x000000011152651d: xchg   %ax,%ax
  0x000000011152651f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526524: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526526: mov    %rsi,%rbp
  0x0000000111526529: mov    %r8d,0x4(%rsp)
  0x000000011152652e: mov    %r9d,0x8(%rsp)
  0x0000000111526533: mov    $0xffffff7e,%esi
  0x0000000111526538: data16 xchg %ax,%ax
  0x000000011152653b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526540: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526542: mov    %rsi,0x8(%rsp)
  0x0000000111526547: mov    $0xffffff4d,%esi
  0x000000011152654c: data16 xchg %ax,%ax
  0x000000011152654f: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526554: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526556: mov    %rsi,(%rsp)
  0x000000011152655a: mov    $0xffffff4d,%esi
  0x000000011152655f: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526564: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x0000000111526566: mov    $0xfffffff6,%esi
  0x000000011152656b: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526570: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000111526572: hlt    
  0x0000000111526573: hlt    
  0x0000000111526574: hlt    
  0x0000000111526575: hlt    
  0x0000000111526576: hlt    
  0x0000000111526577: hlt    
  0x0000000111526578: hlt    
  0x0000000111526579: hlt    
  0x000000011152657a: hlt    
  0x000000011152657b: hlt    
  0x000000011152657c: hlt    
  0x000000011152657d: hlt    
  0x000000011152657e: hlt    
  0x000000011152657f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000111526580: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000111526585: callq  0x000000011152658a
  0x000000011152658a: subq   $0x5,(%rsp)
  0x000000011152658f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x0000000111526594: hlt    
  0x0000000111526595: hlt    
  0x0000000111526596: hlt    
  0x0000000111526597: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 393 
ImmutableOopMap{rbp=Oop }pc offsets: 484 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     260   63             java.lang.Number::<init> (5 bytes)
 total in heap  [0x0000000111526990,0x0000000111526bc8] = 568
 relocation     [0x0000000111526b08,0x0000000111526b18] = 16
 main code      [0x0000000111526b20,0x0000000111526b60] = 64
 stub code      [0x0000000111526b60,0x0000000111526b78] = 24
 metadata       [0x0000000111526b78,0x0000000111526b88] = 16
 scopes data    [0x0000000111526b88,0x0000000111526b90] = 8
 scopes pcs     [0x0000000111526b90,0x0000000111526bc0] = 48
 dependencies   [0x0000000111526bc0,0x0000000111526bc8] = 8
----------------------------------------------------------------------
java/lang/Number.<init>()V  [0x0000000111526b20, 0x0000000111526b78]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e6a5cf8} '<init>' '()V' in 'java/lang/Number'
  #           [sp+0x20]  (sp of caller)
  0x0000000111526b20: mov    0x8(%rsi),%r10d
  0x0000000111526b24: movabs $0x800000000,%r12
  0x0000000111526b2e: add    %r12,%r10
  0x0000000111526b31: xor    %r12,%r12
  0x0000000111526b34: cmp    %r10,%rax
  0x0000000111526b37: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x0000000111526b3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111526b40: sub    $0x18,%rsp
  0x0000000111526b47: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Number::<init>@-1 (line 55)

  0x0000000111526b4c: add    $0x10,%rsp
  0x0000000111526b50: pop    %rbp
  0x0000000111526b51: mov    0x108(%r15),%r10
  0x0000000111526b58: test   %eax,(%r10)        ;   {poll_return}
  0x0000000111526b5b: retq   
  0x0000000111526b5c: hlt    
  0x0000000111526b5d: hlt    
  0x0000000111526b5e: hlt    
  0x0000000111526b5f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000111526b60: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000111526b65: callq  0x0000000111526b6a
  0x0000000111526b6a: subq   $0x5,(%rsp)
  0x0000000111526b6f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x0000000111526b74: hlt    
  0x0000000111526b75: hlt    
  0x0000000111526b76: hlt    
  0x0000000111526b77: hlt    
Compiled method (c2)     262   64             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x0000000111526c10,0x0000000111527040] = 1072
 relocation     [0x0000000111526d88,0x0000000111526da8] = 32
 main code      [0x0000000111526dc0,0x0000000111526ec0] = 256
 stub code      [0x0000000111526ec0,0x0000000111526ed8] = 24
 oops           [0x0000000111526ed8,0x0000000111526ee0] = 8
 metadata       [0x0000000111526ee0,0x0000000111526ef0] = 16
 scopes data    [0x0000000111526ef0,0x0000000111526f40] = 80
 scopes pcs     [0x0000000111526f40,0x0000000111527020] = 224
 dependencies   [0x0000000111527020,0x0000000111527028] = 8
 handler table  [0x0000000111527028,0x0000000111527040] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x0000000111526dc0, 0x0000000111526ed8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e6aea30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000111526dc0: mov    %eax,-0x14000(%rsp)
  0x0000000111526dc7: push   %rbp
  0x0000000111526dc8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000111526dcc: mov    %esi,(%rsp)
  0x0000000111526dcf: cmp    $0xffffff80,%esi
  0x0000000111526dd2: jl     0x0000000111526e7e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000111526dd8: cmp    $0x7f,%esi
  0x0000000111526ddb: jle    0x0000000111526e3f  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x0000000111526ddd: mov    0x118(%r15),%rax
  0x0000000111526de4: mov    %rax,%r10
  0x0000000111526de7: add    $0x10,%r10
  0x0000000111526deb: cmp    0x128(%r15),%r10
  0x0000000111526df2: jae    0x0000000111526e6a
  0x0000000111526df4: mov    %r10,0x118(%r15)
  0x0000000111526dfb: prefetchnta 0xc0(%r10)
  0x0000000111526e03: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000111526e09: movabs $0x800000000,%r10
  0x0000000111526e13: add    %r11,%r10
  0x0000000111526e16: mov    0xb8(%r10),%r10
  0x0000000111526e1d: mov    %r10,(%rax)
  0x0000000111526e20: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000111526e27: mov    (%rsp),%r11d
  0x0000000111526e2b: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x0000000111526e2f: add    $0x20,%rsp
  0x0000000111526e33: pop    %rbp
  0x0000000111526e34: mov    0x108(%r15),%r10
  0x0000000111526e3b: test   %eax,(%r10)        ;   {poll_return}
  0x0000000111526e3e: retq   
  0x0000000111526e3f: mov    %esi,%ebp
  0x0000000111526e41: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x0000000111526e47: cmp    $0x100,%ebp
  0x0000000111526e4d: jae    0x0000000111526e8e
  0x0000000111526e4f: movslq %esi,%r10
  0x0000000111526e52: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x0000000111526e5c: mov    0x210(%r11,%r10,4),%r10d
  0x0000000111526e64: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x0000000111526e68: jmp    0x0000000111526e2f
  0x0000000111526e6a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000111526e74: mov    (%rsp),%ebp
  0x0000000111526e77: callq  0x0000000111509380  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000111526e7c: jmp    0x0000000111526e27
  0x0000000111526e7e: mov    $0xffffff4d,%esi
  0x0000000111526e83: mov    (%rsp),%ebp
  0x0000000111526e86: nop
  0x0000000111526e87: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526e8c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000111526e8e: mov    $0xffffffe4,%esi
  0x0000000111526e93: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111526e98: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x0000000111526e9a: mov    %rax,%rsi
  0x0000000111526e9d: add    $0x20,%rsp
  0x0000000111526ea1: pop    %rbp
  0x0000000111526ea2: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
  0x0000000111526ea7: hlt    
  0x0000000111526ea8: hlt    
  0x0000000111526ea9: hlt    
  0x0000000111526eaa: hlt    
  0x0000000111526eab: hlt    
  0x0000000111526eac: hlt    
  0x0000000111526ead: hlt    
  0x0000000111526eae: hlt    
  0x0000000111526eaf: hlt    
  0x0000000111526eb0: hlt    
  0x0000000111526eb1: hlt    
  0x0000000111526eb2: hlt    
  0x0000000111526eb3: hlt    
  0x0000000111526eb4: hlt    
  0x0000000111526eb5: hlt    
  0x0000000111526eb6: hlt    
  0x0000000111526eb7: hlt    
  0x0000000111526eb8: hlt    
  0x0000000111526eb9: hlt    
  0x0000000111526eba: hlt    
  0x0000000111526ebb: hlt    
  0x0000000111526ebc: hlt    
  0x0000000111526ebd: hlt    
  0x0000000111526ebe: hlt    
  0x0000000111526ebf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000111526ec0: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000111526ec5: callq  0x0000000111526eca
  0x0000000111526eca: subq   $0x5,(%rsp)
  0x0000000111526ecf: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x0000000111526ed4: hlt    
  0x0000000111526ed5: hlt    
  0x0000000111526ed6: hlt    
  0x0000000111526ed7: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     266   65             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x0000000111527090,0x0000000111527810] = 1920
 relocation     [0x0000000111527208,0x0000000111527230] = 40
 main code      [0x0000000111527240,0x0000000111527400] = 448
 stub code      [0x0000000111527400,0x0000000111527418] = 24
 metadata       [0x0000000111527418,0x0000000111527438] = 32
 scopes data    [0x0000000111527438,0x00000001115275b0] = 376
 scopes pcs     [0x00000001115275b0,0x00000001115277e0] = 560
 dependencies   [0x00000001115277e0,0x00000001115277e8] = 8
 nul chk table  [0x00000001115277e8,0x0000000111527810] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x0000000111527240, 0x0000000111527418]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e6dd540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000111527240: mov    0x8(%rsi),%r10d
  0x0000000111527244: movabs $0x800000000,%r12
  0x000000011152724e: add    %r12,%r10
  0x0000000111527251: xor    %r12,%r12
  0x0000000111527254: cmp    %r10,%rax
  0x0000000111527257: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011152725d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111527260: mov    %eax,-0x14000(%rsp)
  0x0000000111527267: push   %rbp
  0x0000000111527268: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x000000011152726c: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x0000000111527270: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x000000011152739e
  0x0000000111527275: test   %r8d,%r8d
  0x0000000111527278: jbe    0x000000011152730e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000011152727e: shl    $0x3,%r10
  0x0000000111527282: dec    %r8d
  0x0000000111527285: and    %edx,%r8d
  0x0000000111527288: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x000000011152728d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x00000001115273b6
  0x0000000111527292: cmp    %edx,%ebp
  0x0000000111527294: jne    0x000000011152732a  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x000000011152729a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x000000011152729f: mov    %r8,%r11
  0x00000001115272a2: shl    $0x3,%r11
  0x00000001115272a6: cmp    %rcx,%r11
  0x00000001115272a9: je     0x00000001115272db  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x00000001115272ab: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x00000001115273ce
  0x00000001115272af: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001115272b6: jne    0x00000001115272ef  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001115272b8: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x0000000111527386
  0x00000001115272bd: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001115272c4: jne    0x0000000111527366  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001115272ca: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001115272ce: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001115272d2: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001115272d6: cmp    %ebp,%r9d
  0x00000001115272d9: jne    0x0000000111527346  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x00000001115272db: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x00000001115272df: add    $0x30,%rsp
  0x00000001115272e3: pop    %rbp
  0x00000001115272e4: mov    0x108(%r15),%r10
  0x00000001115272eb: test   %eax,(%r10)        ;   {poll_return}
  0x00000001115272ee: retq   
  0x00000001115272ef: mov    $0xffffffde,%esi
  0x00000001115272f4: mov    %edx,%ebp
  0x00000001115272f6: mov    %rcx,0x8(%rsp)
  0x00000001115272fb: mov    %r10d,0x10(%rsp)
  0x0000000111527300: mov    %r8d,0x14(%rsp)
  0x0000000111527305: xchg   %ax,%ax
  0x0000000111527307: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152730c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000011152730e: mov    $0xffffff4d,%esi
  0x0000000111527313: mov    %edx,%ebp
  0x0000000111527315: mov    %rcx,(%rsp)
  0x0000000111527319: mov    %r10d,0x8(%rsp)
  0x000000011152731e: mov    %r8d,0x10(%rsp)
  0x0000000111527323: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111527328: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000011152732a: mov    $0xffffff4d,%esi
  0x000000011152732f: mov    %rcx,0x8(%rsp)
  0x0000000111527334: mov    %edx,0x4(%rsp)
  0x0000000111527338: mov    %r10d,0x10(%rsp)
  0x000000011152733d: xchg   %ax,%ax
  0x000000011152733f: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111527344: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000111527346: mov    $0xffffff4d,%esi
  0x000000011152734b: mov    %edx,(%rsp)
  0x000000011152734e: mov    %rcx,0x8(%rsp)
  0x0000000111527353: mov    %r10d,0x4(%rsp)
  0x0000000111527358: mov    %r9d,0x10(%rsp)
  0x000000011152735d: xchg   %ax,%ax
  0x000000011152735f: callq  0x00000001114d4900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111527364: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000111527366: mov    $0xffffffde,%esi
  0x000000011152736b: mov    %edx,%ebp
  0x000000011152736d: mov    %rcx,0x8(%rsp)
  0x0000000111527372: mov    %r10d,0x10(%rsp)
  0x0000000111527377: mov    %r8d,0x18(%rsp)
  0x000000011152737c: data16 xchg %ax,%ax
  0x000000011152737f: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111527384: ud2    
  0x0000000111527386: mov    $0xfffffff4,%esi
  0x000000011152738b: mov    %edx,%ebp
  0x000000011152738d: mov    %rcx,0x8(%rsp)
  0x0000000111527392: mov    %r10d,0x10(%rsp)
  0x0000000111527397: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152739c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000011152739e: mov    $0xffffff4d,%esi
  0x00000001115273a3: mov    %edx,%ebp
  0x00000001115273a5: mov    %rcx,(%rsp)
  0x00000001115273a9: mov    %r10d,0xc(%rsp)
  0x00000001115273ae: nop
  0x00000001115273af: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115273b4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x00000001115273b6: mov    $0xffffff4d,%esi
  0x00000001115273bb: mov    %edx,%ebp
  0x00000001115273bd: mov    %rcx,(%rsp)
  0x00000001115273c1: mov    %r10d,0xc(%rsp)
  0x00000001115273c6: nop
  0x00000001115273c7: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115273cc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x00000001115273ce: mov    $0xffffff4d,%esi
  0x00000001115273d3: mov    %edx,%ebp
  0x00000001115273d5: mov    %rcx,0x8(%rsp)
  0x00000001115273da: mov    %r10d,0x10(%rsp)
  0x00000001115273df: mov    %r8d,0x14(%rsp)
  0x00000001115273e4: data16 xchg %ax,%ax
  0x00000001115273e7: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115273ec: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x00000001115273ee: hlt    
  0x00000001115273ef: hlt    
  0x00000001115273f0: hlt    
  0x00000001115273f1: hlt    
  0x00000001115273f2: hlt    
  0x00000001115273f3: hlt    
  0x00000001115273f4: hlt    
  0x00000001115273f5: hlt    
  0x00000001115273f6: hlt    
  0x00000001115273f7: hlt    
  0x00000001115273f8: hlt    
  0x00000001115273f9: hlt    
  0x00000001115273fa: hlt    
  0x00000001115273fb: hlt    
  0x00000001115273fc: hlt    
  0x00000001115273fd: hlt    
  0x00000001115273fe: hlt    
  0x00000001115273ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000111527400: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000111527405: callq  0x000000011152740a
  0x000000011152740a: subq   $0x5,(%rsp)
  0x000000011152740f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x0000000111527414: hlt    
  0x0000000111527415: hlt    
  0x0000000111527416: hlt    
  0x0000000111527417: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     279   66             java.util.HashMap::get (23 bytes)
 total in heap  [0x0000000111523d10,0x0000000111524ac8] = 3512
 relocation     [0x0000000111523e88,0x0000000111523ec0] = 56
 main code      [0x0000000111523ec0,0x00000001115242e0] = 1056
 stub code      [0x00000001115242e0,0x00000001115242f8] = 24
 metadata       [0x00000001115242f8,0x0000000111524348] = 80
 scopes data    [0x0000000111524348,0x0000000111524640] = 760
 scopes pcs     [0x0000000111524640,0x0000000111524a90] = 1104
 dependencies   [0x0000000111524a90,0x0000000111524a98] = 8
 nul chk table  [0x0000000111524a98,0x0000000111524ac8] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000111523ec0, 0x00000001115242f8]  1080 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e6dd398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000111523ec0: mov    0x8(%rsi),%r10d
  0x0000000111523ec4: movabs $0x800000000,%r12
  0x0000000111523ece: add    %r12,%r10
  0x0000000111523ed1: xor    %r12,%r12
  0x0000000111523ed4: cmp    %r10,%rax
  0x0000000111523ed7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x0000000111523edd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111523ee0: mov    %eax,-0x14000(%rsp)
  0x0000000111523ee7: push   %rbp
  0x0000000111523ee8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000111523eec: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x000000011152427a
  0x0000000111523ef0: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000111523ef7: jne    0x0000000111523f9d
  0x0000000111523efd: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523f00: mov    0xc(%r10),%r8d     ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523f04: mov    0x24(%rsi),%r9d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f08: mov    %r8d,%r10d
  0x0000000111523f0b: shr    $0x10,%r10d
  0x0000000111523f0f: xor    %r8d,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523f12: mov    0xc(%r12,%r9,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x0000000111524296
  0x0000000111523f17: test   %r11d,%r11d
  0x0000000111523f1a: jbe    0x0000000111524182  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f20: dec    %r11d
  0x0000000111523f23: and    %r10d,%r11d
  0x0000000111523f26: lea    (%r12,%r9,8),%r8
  0x0000000111523f2a: mov    0x10(%r8,%r11,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f2f: mov    0xc(%r12,%r11,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x00000001115242ae
  0x0000000111523f34: cmp    %r10d,%r9d
  0x0000000111523f37: jne    0x00000001115241a2  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f3d: mov    0x10(%r12,%r11,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f42: mov    %r8,%r9
  0x0000000111523f45: shl    $0x3,%r9
  0x0000000111523f49: cmp    %rdx,%r9
  0x0000000111523f4c: je     0x0000000111523f81  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f4e: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x0000000111523f55: jne    0x0000000111524163  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f5b: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x000000011152425e
  0x0000000111523f60: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x0000000111523f67: jne    0x000000011152423e  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f6d: mov    0xc(%rdx),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f70: shl    $0x3,%r8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f74: mov    0xc(%r8),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111523f78: cmp    %r8d,%ecx
  0x0000000111523f7b: jne    0x00000001115241c2  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x0000000111523f81: mov    0x14(%r12,%r11,8),%r10d
  0x0000000111523f86: mov    %r10,%rax
  0x0000000111523f89: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x0000000111523f8d: add    $0x30,%rsp
  0x0000000111523f91: pop    %rbp
  0x0000000111523f92: mov    0x108(%r15),%r10
  0x0000000111523f99: test   %eax,(%r10)        ;   {poll_return}
  0x0000000111523f9c: retq   
  0x0000000111523f9d: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x0000000111523fa4: jne    0x00000001115241e6
  0x0000000111523faa: mov    %rdx,%rdi          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fad: mov    0x10(%rdi),%r8d    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fb1: test   %r8d,%r8d
  0x0000000111523fb4: jne    0x0000000111523f04  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fba: mov    0xc(%rdi),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fbe: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x00000001115242c6
  0x0000000111523fc3: test   %r9d,%r9d
  0x0000000111523fc6: jbe    0x000000011152415b  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fcc: movsbl 0x14(%rdi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fd0: test   %ebp,%ebp
  0x0000000111523fd2: jne    0x0000000111524222  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fd8: mov    %r9d,%ecx
  0x0000000111523fdb: dec    %ecx
  0x0000000111523fdd: cmp    %r9d,%ecx
  0x0000000111523fe0: jae    0x00000001115241fe
  0x0000000111523fe6: movzbl 0x10(%r12,%r8,8),%r10d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523fec: mov    %r9d,%eax
  0x0000000111523fef: add    $0xfffffff9,%eax
  0x0000000111523ff2: lea    (%r12,%r8,8),%rcx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111523ff6: mov    $0x1,%ebx
  0x0000000111523ffb: cmp    $0x1,%eax
  0x0000000111523ffe: jle    0x0000000111524146
  0x0000000111524004: mov    %r10d,%r8d
  0x0000000111524007: shl    $0x5,%r8d
  0x000000011152400b: sub    %r10d,%r8d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011152400e: jmp    0x0000000111524044  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524010: movzbl 0x10(%rcx,%rbx,1),%eax
  0x0000000111524015: mov    %r10d,%r8d
  0x0000000111524018: shl    $0x5,%r8d
  0x000000011152401c: sub    %r10d,%r8d
  0x000000011152401f: add    %eax,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524022: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524024: cmp    %r9d,%ebx
  0x0000000111524027: jge    0x0000000111524152  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011152402d: mov    %r8d,%r10d
  0x0000000111524030: jmp    0x0000000111524010
  0x0000000111524032: vmovq  %xmm0,%rdi
  0x0000000111524037: vmovd  %xmm1,%r9d
  0x000000011152403c: vmovq  %xmm2,%rsi
  0x0000000111524041: mov    (%rsp),%eax
  0x0000000111524044: mov    %r9d,%r10d
  0x0000000111524047: sub    %ebx,%r10d
  0x000000011152404a: add    $0xfffffff9,%r10d
  0x000000011152404e: mov    $0x1f40,%r11d
  0x0000000111524054: cmp    %r10d,%r11d
  0x0000000111524057: mov    $0x1f40,%ebp
  0x000000011152405c: cmovg  %r10d,%ebp
  0x0000000111524060: add    %ebx,%ebp
  0x0000000111524062: vmovq  %rdi,%xmm0
  0x0000000111524067: vmovd  %r9d,%xmm1
  0x000000011152406c: vmovq  %rsi,%xmm2
  0x0000000111524071: mov    %eax,(%rsp)
  0x0000000111524074: nopl   0x0(%rax,%rax,1)
  0x000000011152407c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524080: movslq %ebx,%r10          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524083: movzbl 0x10(%rcx,%r10,1),%r9d
  0x0000000111524089: movzbl 0x17(%rcx,%r10,1),%eax
  0x000000011152408f: add    %r9d,%r8d
  0x0000000111524092: movzbl 0x16(%rcx,%r10,1),%edi
  0x0000000111524098: mov    %r8d,%esi
  0x000000011152409b: shl    $0x5,%esi
  0x000000011152409e: sub    %r8d,%esi
  0x00000001115240a1: movzbl 0x15(%rcx,%r10,1),%r11d
  0x00000001115240a7: movzbl 0x14(%rcx,%r10,1),%r9d
  0x00000001115240ad: movzbl 0x13(%rcx,%r10,1),%r8d
  0x00000001115240b3: movzbl 0x12(%rcx,%r10,1),%r13d
  0x00000001115240b9: movzbl 0x11(%rcx,%r10,1),%r10d
  0x00000001115240bf: add    %r10d,%esi
  0x00000001115240c2: mov    %esi,%r10d
  0x00000001115240c5: shl    $0x5,%r10d
  0x00000001115240c9: sub    %esi,%r10d
  0x00000001115240cc: add    %r13d,%r10d
  0x00000001115240cf: mov    %r10d,%esi
  0x00000001115240d2: shl    $0x5,%esi
  0x00000001115240d5: sub    %r10d,%esi
  0x00000001115240d8: add    %r8d,%esi
  0x00000001115240db: mov    %esi,%r10d
  0x00000001115240de: shl    $0x5,%r10d
  0x00000001115240e2: sub    %esi,%r10d
  0x00000001115240e5: add    %r9d,%r10d
  0x00000001115240e8: mov    %r10d,%r9d
  0x00000001115240eb: shl    $0x5,%r9d
  0x00000001115240ef: sub    %r10d,%r9d
  0x00000001115240f2: add    %r11d,%r9d
  0x00000001115240f5: mov    %r9d,%r11d
  0x00000001115240f8: shl    $0x5,%r11d
  0x00000001115240fc: sub    %r9d,%r11d
  0x00000001115240ff: add    %edi,%r11d
  0x0000000111524102: mov    %r11d,%r10d
  0x0000000111524105: shl    $0x5,%r10d
  0x0000000111524109: sub    %r11d,%r10d
  0x000000011152410c: add    %eax,%r10d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011152410f: mov    %r10d,%r8d
  0x0000000111524112: shl    $0x5,%r8d
  0x0000000111524116: sub    %r10d,%r8d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524119: add    $0x8,%ebx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011152411c: cmp    %ebp,%ebx
  0x000000011152411e: jl     0x0000000111524080  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524124: mov    0x108(%r15),%r11   ; ImmutableOopMap{rcx=Oop rdx=Oop xmm0=Oop xmm2=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011152412b: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x000000011152412e: cmp    (%rsp),%ebx
  0x0000000111524131: jl     0x0000000111524032
  0x0000000111524137: vmovq  %xmm0,%rdi
  0x000000011152413c: vmovd  %xmm1,%r9d
  0x0000000111524141: vmovq  %xmm2,%rsi
  0x0000000111524146: cmp    %r9d,%ebx
  0x0000000111524149: jl     0x0000000111524010
  0x000000011152414f: mov    %r10d,%r8d
  0x0000000111524152: mov    %r8d,0x10(%rdi)    ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524156: jmpq   0x0000000111523f04
  0x000000011152415b: xor    %r8d,%r8d
  0x000000011152415e: jmpq   0x0000000111523f04
  0x0000000111524163: mov    $0xffffffde,%esi
  0x0000000111524168: mov    %r10d,%ebp
  0x000000011152416b: mov    %r11d,0x8(%rsp)
  0x0000000111524170: mov    %rdx,0x10(%rsp)
  0x0000000111524175: mov    %r8d,0xc(%rsp)
  0x000000011152417a: nop
  0x000000011152417b: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111524180: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111524182: mov    $0xffffff4d,%esi
  0x0000000111524187: mov    %r10d,%ebp
  0x000000011152418a: mov    %rdx,(%rsp)
  0x000000011152418e: mov    %r9d,0x8(%rsp)
  0x0000000111524193: mov    %r11d,0x10(%rsp)
  0x0000000111524198: data16 xchg %ax,%ax
  0x000000011152419b: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115241a0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001115241a2: mov    $0xffffff4d,%esi
  0x00000001115241a7: mov    %rdx,(%rsp)
  0x00000001115241ab: mov    %r11d,0x8(%rsp)
  0x00000001115241b0: mov    %r9d,0xc(%rsp)
  0x00000001115241b5: mov    %r10d,0x10(%rsp)
  0x00000001115241ba: nop
  0x00000001115241bb: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115241c0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001115241c2: mov    $0xffffff4d,%esi
  0x00000001115241c7: mov    %r10d,%ebp
  0x00000001115241ca: mov    %rdx,(%rsp)
  0x00000001115241ce: mov    %r11d,0x8(%rsp)
  0x00000001115241d3: mov    %ecx,0xc(%rsp)
  0x00000001115241d7: mov    %r8d,0x10(%rsp)
  0x00000001115241dc: data16 xchg %ax,%ax
  0x00000001115241df: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115241e4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001115241e6: mov    %rsi,(%rsp)
  0x00000001115241ea: mov    %rdx,0x8(%rsp)
  0x00000001115241ef: mov    $0xffffffc6,%esi
  0x00000001115241f4: data16 xchg %ax,%ax
  0x00000001115241f7: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115241fc: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001115241fe: mov    %rdx,%rbp
  0x0000000111524201: mov    %rsi,(%rsp)
  0x0000000111524205: mov    %rdi,0x8(%rsp)
  0x000000011152420a: mov    %r8d,0x10(%rsp)
  0x000000011152420f: mov    %r9d,0x18(%rsp)
  0x0000000111524214: mov    $0xffffff7e,%esi
  0x0000000111524219: xchg   %ax,%ax
  0x000000011152421b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111524220: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000111524222: mov    %rdx,(%rsp)
  0x0000000111524226: mov    %rsi,0x8(%rsp)
  0x000000011152422b: mov    %rdi,0x18(%rsp)
  0x0000000111524230: mov    $0xffffff4d,%esi
  0x0000000111524235: xchg   %ax,%ax
  0x0000000111524237: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152423c: ud2    
  0x000000011152423e: mov    $0xffffffde,%esi
  0x0000000111524243: mov    %r10d,%ebp
  0x0000000111524246: mov    %r11d,0x8(%rsp)
  0x000000011152424b: mov    %rdx,0x10(%rsp)
  0x0000000111524250: mov    %r8d,0x18(%rsp)
  0x0000000111524255: xchg   %ax,%ax
  0x0000000111524257: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152425c: ud2    
  0x000000011152425e: mov    $0xfffffff4,%esi
  0x0000000111524263: mov    %r10d,%ebp
  0x0000000111524266: mov    %r11d,0x8(%rsp)
  0x000000011152426b: mov    %rdx,0x10(%rsp)
  0x0000000111524270: data16 xchg %ax,%ax
  0x0000000111524273: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111524278: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011152427a: mov    %rsi,(%rsp)
  0x000000011152427e: mov    %rdx,0x8(%rsp)
  0x0000000111524283: mov    %rdx,0x10(%rsp)
  0x0000000111524288: mov    $0xffffff4d,%esi
  0x000000011152428d: xchg   %ax,%ax
  0x000000011152428f: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111524294: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000111524296: mov    $0xffffff4d,%esi
  0x000000011152429b: mov    %r10d,%ebp
  0x000000011152429e: mov    %rdx,(%rsp)
  0x00000001115242a2: mov    %r9d,0xc(%rsp)
  0x00000001115242a7: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115242ac: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001115242ae: mov    $0xffffff4d,%esi
  0x00000001115242b3: mov    %r10d,%ebp
  0x00000001115242b6: mov    %rdx,(%rsp)
  0x00000001115242ba: mov    %r11d,0xc(%rsp)
  0x00000001115242bf: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115242c4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001115242c6: mov    $0xfffffff6,%esi
  0x00000001115242cb: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115242d0: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001115242d2: hlt    
  0x00000001115242d3: hlt    
  0x00000001115242d4: hlt    
  0x00000001115242d5: hlt    
  0x00000001115242d6: hlt    
  0x00000001115242d7: hlt    
  0x00000001115242d8: hlt    
  0x00000001115242d9: hlt    
  0x00000001115242da: hlt    
  0x00000001115242db: hlt    
  0x00000001115242dc: hlt    
  0x00000001115242dd: hlt    
  0x00000001115242de: hlt    
  0x00000001115242df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001115242e0: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001115242e5: callq  0x00000001115242ea
  0x00000001115242ea: subq   $0x5,(%rsp)
  0x00000001115242ef: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x00000001115242f4: hlt    
  0x00000001115242f5: hlt    
  0x00000001115242f6: hlt    
  0x00000001115242f7: hlt    

ImmutableOopMap{rcx=Oop rdx=Oop xmm0=Oop xmm2=Oop }pc offsets: 619 
ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }pc offsets: 704 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 736 768 804 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 828 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }pc offsets: 864 
ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }pc offsets: 892 
ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }pc offsets: 924 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 952 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 980 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 1004 1028 
ImmutableOopMap{}pc offsets: 1040 Compiled method (c2)     295   67             ProceduralHashMap::max100 (61 bytes)
 total in heap  [0x0000000111523610,0x0000000111523cc8] = 1720
 relocation     [0x0000000111523788,0x00000001115237c8] = 64
 main code      [0x00000001115237e0,0x00000001115239a0] = 448
 stub code      [0x00000001115239a0,0x00000001115239c8] = 40
 oops           [0x00000001115239c8,0x00000001115239d8] = 16
 metadata       [0x00000001115239d8,0x0000000111523a00] = 40
 scopes data    [0x0000000111523a00,0x0000000111523ad8] = 216
 scopes pcs     [0x0000000111523ad8,0x0000000111523c78] = 416
 dependencies   [0x0000000111523c78,0x0000000111523c80] = 8
 handler table  [0x0000000111523c80,0x0000000111523cb0] = 48
 nul chk table  [0x0000000111523cb0,0x0000000111523cc8] = 24
----------------------------------------------------------------------
ProceduralHashMap.max100(I)Ljava/lang/String;  [0x00000001115237e0, 0x00000001115239c8]  488 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e9b5908} 'max100' '(I)Ljava/lang/String;' in 'ProceduralHashMap'
  # this:     rsi:rsi   = 'ProceduralHashMap'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001115237e0: mov    0x8(%rsi),%r10d
  0x00000001115237e4: movabs $0x800000000,%r12
  0x00000001115237ee: add    %r12,%r10
  0x00000001115237f1: xor    %r12,%r12
  0x00000001115237f4: cmp    %r10,%rax
  0x00000001115237f7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x00000001115237fd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111523800: mov    %eax,-0x14000(%rsp)
  0x0000000111523807: push   %rbp
  0x0000000111523808: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::max100@-1 (line 47)

  0x000000011152380c: mov    %edx,0x4(%rsp)
  0x0000000111523810: movabs $0x70fe0f2d8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f2d8} = 'ProceduralHashMap')}
  0x000000011152381a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)

  0x000000011152381e: mov    %r11d,0x8(%rsp)
  0x0000000111523823: cmp    $0xffffff80,%edx
  0x0000000111523826: jl     0x000000011152392e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x000000011152382c: cmp    $0x7f,%edx
  0x000000011152382f: jle    0x00000001115238cd  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000111523835: mov    0x118(%r15),%rdx
  0x000000011152383c: mov    %rdx,%r10
  0x000000011152383f: add    $0x10,%r10
  0x0000000111523843: cmp    0x128(%r15),%r10
  0x000000011152384a: jae    0x00000001115238f8
  0x0000000111523850: mov    %r10,0x118(%r15)
  0x0000000111523857: prefetchnta 0xc0(%r10)
  0x000000011152385f: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000111523865: movabs $0x800000000,%r12
  0x000000011152386f: add    %r12,%r10
  0x0000000111523872: xor    %r12,%r12
  0x0000000111523875: mov    0xb8(%r10),%r10
  0x000000011152387c: mov    %r10,(%rdx)
  0x000000011152387f: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000111523886: mov    0x4(%rsp),%r10d
  0x000000011152388b: mov    %r10d,0xc(%rdx)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x000000011152388f: mov    0x8(%rsp),%r11d
  0x0000000111523894: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x0000000111523966
  0x0000000111523899: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x00000001115238a0: jne    0x0000000111523914
  0x00000001115238a2: lea    (%r12,%r11,8),%rsi
  0x00000001115238a6: nop
  0x00000001115238a7: callq  0x00000001114d2f00  ; ImmutableOopMap{}
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {optimized virtual_call}
  0x00000001115238ac: mov    0x8(%rax),%r11d    ; implicit exception: dispatches to 0x0000000111523976
  0x00000001115238b0: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x00000001115238b7: jne    0x0000000111523952  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)

  0x00000001115238bd: add    $0x20,%rsp
  0x00000001115238c1: pop    %rbp
  0x00000001115238c2: mov    0x108(%r15),%r10
  0x00000001115238c9: test   %eax,(%r10)        ;   {poll_return}
  0x00000001115238cc: retq   
  0x00000001115238cd: mov    %edx,%ebp
  0x00000001115238cf: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x00000001115238d5: cmp    $0x100,%ebp
  0x00000001115238db: jae    0x0000000111523942
  0x00000001115238dd: movslq %edx,%r10
  0x00000001115238e0: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x00000001115238ea: mov    0x210(%r11,%r10,4),%r10d
  0x00000001115238f2: lea    (%r12,%r10,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x00000001115238f6: jmp    0x000000011152388f
  0x00000001115238f8: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000111523902: mov    0x4(%rsp),%ebp
  0x0000000111523906: nop
  0x0000000111523907: callq  0x0000000111509380  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011152390c: mov    %rax,%rdx
  0x000000011152390f: jmpq   0x0000000111523886
  0x0000000111523914: mov    $0xffffffde,%esi
  0x0000000111523919: mov    0x4(%rsp),%ebp
  0x000000011152391d: mov    %r11d,(%rsp)
  0x0000000111523921: mov    %rdx,0x8(%rsp)
  0x0000000111523926: nop
  0x0000000111523927: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152392c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x000000011152392e: mov    $0xffffff4d,%esi
  0x0000000111523933: mov    %r11d,(%rsp)
  0x0000000111523937: mov    %edx,0x8(%rsp)
  0x000000011152393b: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111523940: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000111523942: mov    $0xffffffe4,%esi
  0x0000000111523947: mov    %edx,(%rsp)
  0x000000011152394a: nop
  0x000000011152394b: callq  0x00000001114d4900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111523950: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000111523952: mov    $0xffffffde,%esi
  0x0000000111523957: mov    0x4(%rsp),%ebp
  0x000000011152395b: mov    %rax,(%rsp)
  0x000000011152395f: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111523964: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)

  0x0000000111523966: mov    $0xfffffff6,%esi
  0x000000011152396b: mov    %rdx,%rbp
  0x000000011152396e: nop
  0x000000011152396f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111523974: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x0000000111523976: mov    $0xfffffff4,%esi
  0x000000011152397b: mov    0x4(%rsp),%ebp
  0x000000011152397f: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111523984: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)

  0x0000000111523986: mov    %rax,%rsi
  0x0000000111523989: jmp    0x000000011152398e
  0x000000011152398b: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)

  0x000000011152398e: add    $0x20,%rsp
  0x0000000111523992: pop    %rbp
  0x0000000111523993: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
  0x0000000111523998: hlt    
  0x0000000111523999: hlt    
  0x000000011152399a: hlt    
  0x000000011152399b: hlt    
  0x000000011152399c: hlt    
  0x000000011152399d: hlt    
  0x000000011152399e: hlt    
  0x000000011152399f: hlt    
[Stub Code]
  0x00000001115239a0: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001115239aa: jmpq   0x00000001115239aa  ;   {runtime_call}
[Exception Handler]
  0x00000001115239af: jmpq   0x0000000111509680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001115239b4: callq  0x00000001115239b9
  0x00000001115239b9: subq   $0x5,(%rsp)
  0x00000001115239be: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x00000001115239c3: hlt    
  0x00000001115239c4: hlt    
  0x00000001115239c5: hlt    
  0x00000001115239c6: hlt    
  0x00000001115239c7: hlt    

ImmutableOopMap{}pc offsets: 204 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 300 
ImmutableOopMap{[0]=NarrowOop [8]=Oop }pc offsets: 332 
ImmutableOopMap{[0]=NarrowOop }pc offsets: 352 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 368 
ImmutableOopMap{[0]=Oop }pc offsets: 388 
ImmutableOopMap{rbp=Oop }pc offsets: 404 
ImmutableOopMap{}pc offsets: 420 Compiled method (c2)     300   68             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000111523190,0x0000000111523408] = 632
 relocation     [0x0000000111523308,0x0000000111523318] = 16
 main code      [0x0000000111523320,0x0000000111523360] = 64
 stub code      [0x0000000111523360,0x0000000111523378] = 24
 oops           [0x0000000111523378,0x0000000111523380] = 8
 metadata       [0x0000000111523380,0x0000000111523388] = 8
 scopes data    [0x0000000111523388,0x00000001115233b0] = 40
 scopes pcs     [0x00000001115233b0,0x0000000111523400] = 80
 dependencies   [0x0000000111523400,0x0000000111523408] = 8
----------------------------------------------------------------------
ProceduralHashMap.runTest()Ljava/lang/String;  [0x0000000111523320, 0x0000000111523378]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e9b5818} 'runTest' '()Ljava/lang/String;' in 'ProceduralHashMap'
  #           [sp+0x20]  (sp of caller)
  0x0000000111523320: mov    0x8(%rsi),%r10d
  0x0000000111523324: movabs $0x800000000,%r12
  0x000000011152332e: add    %r12,%r10
  0x0000000111523331: xor    %r12,%r12
  0x0000000111523334: cmp    %r10,%rax
  0x0000000111523337: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x000000011152333d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111523340: mov    %eax,-0x14000(%rsp)
  0x0000000111523347: push   %rbp
  0x0000000111523348: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 39)

  0x000000011152334c: mov    %rsi,%rbp
  0x000000011152334f: mov    $0xffffffbe,%esi
  0x0000000111523354: data16 xchg %ax,%ax
  0x0000000111523357: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152335c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)

  0x000000011152335e: hlt    
  0x000000011152335f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000111523360: jmpq   0x0000000111509680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000111523365: callq  0x000000011152336a
  0x000000011152336a: subq   $0x5,(%rsp)
  0x000000011152336f: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x0000000111523374: hlt    
  0x0000000111523375: hlt    
  0x0000000111523376: hlt    
  0x0000000111523377: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     304   69 %           ProceduralHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x0000000111529410,0x0000000111529cc8] = 2232
 relocation     [0x0000000111529588,0x00000001115295d8] = 80
 main code      [0x00000001115295e0,0x0000000111529880] = 672
 stub code      [0x0000000111529880,0x00000001115298a8] = 40
 oops           [0x00000001115298a8,0x00000001115298b8] = 16
 metadata       [0x00000001115298b8,0x00000001115298f0] = 56
 scopes data    [0x00000001115298f0,0x0000000111529a48] = 344
 scopes pcs     [0x0000000111529a48,0x0000000111529c78] = 560
 dependencies   [0x0000000111529c78,0x0000000111529c80] = 8
 handler table  [0x0000000111529c80,0x0000000111529cb0] = 48
 nul chk table  [0x0000000111529cb0,0x0000000111529cc8] = 24
----------------------------------------------------------------------
ProceduralHashMap.runTest()Ljava/lang/String;  [0x00000001115295e0, 0x00000001115298a8]  712 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e9b5818} 'runTest' '()Ljava/lang/String;' in 'ProceduralHashMap'
  0x00000001115295e0: callq  0x0000000106c107f4  ;   {runtime_call os::breakpoint()}
  0x00000001115295e5: data16 data16 nopw 0x0(%rax,%rax,1)
  0x00000001115295f0: mov    %eax,-0x14000(%rsp)
  0x00000001115295f7: push   %rbp
  0x00000001115295f8: sub    $0x30,%rsp
  0x00000001115295fc: mov    0x10(%rsi),%r13
  0x0000000111529600: mov    0x8(%rsi),%r14
  0x0000000111529604: mov    (%rsi),%ebx
  0x0000000111529606: mov    %rsi,%rdi
  0x0000000111529609: movabs $0x106c91a82,%r10
  0x0000000111529613: callq  *%r10
  0x0000000111529616: test   %r13,%r13
  0x0000000111529619: je     0x00000001115297c6
  0x000000011152961f: mov    0x8(%r13),%r10d
  0x0000000111529623: cmp    $0x60040,%r10d     ;   {metadata('ProceduralHashMap')}
  0x000000011152962a: jne    0x0000000111529826
  0x0000000111529630: mov    %r13,%r11
  0x0000000111529633: test   %r14,%r14
  0x0000000111529636: je     0x00000001115297ce
  0x000000011152963c: mov    0x8(%r14),%r8d
  0x0000000111529640: cmp    $0x1808,%r8d       ;   {metadata('java/lang/String')}
  0x0000000111529647: jne    0x0000000111529826  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)

  0x000000011152964d: test   %r11,%r11
  0x0000000111529650: je     0x000000011152980e
  0x0000000111529656: mov    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000011152965c: movabs $0x800000000,%r9
  0x0000000111529666: add    %r8,%r9
  0x0000000111529669: jmpq   0x00000001115296e7
  0x000000011152966e: xchg   %ax,%ax            ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x0000000111529670: mov    %r8,0x118(%r15)
  0x0000000111529677: prefetchnta 0xc0(%r8)
  0x000000011152967f: mov    0xb8(%r9),%r8
  0x0000000111529686: mov    %r8,(%rdx)
  0x0000000111529689: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000111529690: mov    %ebx,0xc(%rdx)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529693: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x0000000111529852
  0x0000000111529698: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000011152969f: jne    0x00000001115297a9  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001115296a5: mov    %r9,0x8(%rsp)
  0x00000001115296aa: mov    %r11,%rbp
  0x00000001115296ad: mov    %ebx,(%rsp)        ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001115296b0: lea    (%r12,%r10,8),%rsi
  0x00000001115296b4: data16 xchg %ax,%ax
  0x00000001115296b7: callq  0x00000001114d2f00  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {optimized virtual_call}
  0x00000001115296bc: mov    %rax,%r14
  0x00000001115296bf: mov    0x8(%rax),%r11d    ; implicit exception: dispatches to 0x0000000111529862
  0x00000001115296c3: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x00000001115296ca: jne    0x000000011152983e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x00000001115296d0: mov    0x108(%r15),%r10
  0x00000001115296d7: mov    (%rsp),%ebx
  0x00000001115296da: inc    %ebx               ; ImmutableOopMap{rbp=Oop r14=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x00000001115296dc: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)
                                                ;   {poll}
  0x00000001115296df: mov    %rbp,%r11
  0x00000001115296e2: mov    0x8(%rsp),%r9      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)

  0x00000001115296e7: cmp    $0x3e8,%ebx
  0x00000001115296ed: jge    0x0000000111529796  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)

  0x00000001115296f3: movabs $0x70fe0f2d8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f2d8} = 'ProceduralHashMap')}
  0x00000001115296fd: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529701: cmp    $0xffffff80,%ebx
  0x0000000111529704: jl     0x00000001115297d6  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152970a: cmp    $0x7f,%ebx
  0x000000011152970d: jle    0x0000000111529764
  0x000000011152970f: mov    0x118(%r15),%rdx
  0x0000000111529716: mov    %rdx,%r8
  0x0000000111529719: add    $0x10,%r8          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)

  0x000000011152971d: cmp    0x128(%r15),%r8
  0x0000000111529724: jb     0x0000000111529670
  0x000000011152972a: mov    %r10d,0x10(%rsp)
  0x000000011152972f: mov    %r9,0x8(%rsp)
  0x0000000111529734: mov    %r11,(%rsp)
  0x0000000111529738: mov    %ebx,%ebp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152973a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000111529744: data16 xchg %ax,%ax
  0x0000000111529747: callq  0x0000000111509380  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011152974c: mov    %rax,%rdx
  0x000000011152974f: mov    %ebp,%ebx
  0x0000000111529751: mov    (%rsp),%r11
  0x0000000111529755: mov    0x8(%rsp),%r9
  0x000000011152975a: mov    0x10(%rsp),%r10d
  0x000000011152975f: jmpq   0x0000000111529690
  0x0000000111529764: mov    %ebx,%ebp
  0x0000000111529766: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152976c: cmp    $0x100,%ebp
  0x0000000111529772: jae    0x00000001115297f2
  0x0000000111529778: movslq %ebx,%r8
  0x000000011152977b: movabs $0x70ff1e8c8,%rcx  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x0000000111529785: mov    0x210(%rcx,%r8,4),%r8d
  0x000000011152978d: lea    (%r12,%r8,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529791: jmpq   0x0000000111529693
  0x0000000111529796: mov    %r14,%rax
  0x0000000111529799: add    $0x30,%rsp
  0x000000011152979d: pop    %rbp
  0x000000011152979e: mov    0x108(%r15),%r10
  0x00000001115297a5: test   %eax,(%r10)        ;   {poll_return}
  0x00000001115297a8: retq   
  0x00000001115297a9: mov    $0xffffffde,%esi
  0x00000001115297ae: mov    %r11,%rbp
  0x00000001115297b1: mov    %ebx,0x4(%rsp)
  0x00000001115297b5: mov    %r10d,0x8(%rsp)
  0x00000001115297ba: mov    %rdx,0x10(%rsp)
  0x00000001115297bf: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115297c4: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001115297c6: xor    %r11d,%r11d
  0x00000001115297c9: jmpq   0x0000000111529633
  0x00000001115297ce: xor    %r14d,%r14d
  0x00000001115297d1: jmpq   0x000000011152964d  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x00000001115297d6: mov    $0xffffff4d,%esi
  0x00000001115297db: mov    %r11,%rbp
  0x00000001115297de: mov    %ebx,0x4(%rsp)
  0x00000001115297e2: mov    %r10d,0x8(%rsp)
  0x00000001115297e7: mov    %ebx,0xc(%rsp)
  0x00000001115297eb: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001115297f0: ud2    
  0x00000001115297f2: mov    $0xffffffe4,%esi
  0x00000001115297f7: mov    %r11,(%rsp)
  0x00000001115297fb: mov    %ebx,0xc(%rsp)
  0x00000001115297ff: mov    %r10d,0x10(%rsp)
  0x0000000111529804: data16 xchg %ax,%ax
  0x0000000111529807: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152980c: ud2    
  0x000000011152980e: mov    $0xffffffbe,%esi
  0x0000000111529813: mov    %r11,%rbp
  0x0000000111529816: mov    %r14,(%rsp)
  0x000000011152981a: mov    %ebx,0x8(%rsp)
  0x000000011152981e: nop
  0x000000011152981f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111529824: ud2    
  0x0000000111529826: mov    $0xffffff95,%esi
  0x000000011152982b: mov    %r14,%rbp
  0x000000011152982e: mov    %ebx,(%rsp)
  0x0000000111529831: mov    %r13,0x8(%rsp)
  0x0000000111529836: nop
  0x0000000111529837: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152983c: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 40)

  0x000000011152983e: mov    $0xffffffde,%esi
  0x0000000111529843: mov    %rax,0x8(%rsp)
  0x0000000111529848: data16 xchg %ax,%ax
  0x000000011152984b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111529850: ud2    
  0x0000000111529852: mov    $0xfffffff6,%esi
  0x0000000111529857: mov    %rdx,%rbp
  0x000000011152985a: nop
  0x000000011152985b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000111529860: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529862: mov    $0xfffffff4,%esi
  0x0000000111529867: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152986c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152986e: mov    %rax,%rsi
  0x0000000111529871: jmp    0x0000000111529876
  0x0000000111529873: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529876: add    $0x30,%rsp
  0x000000011152987a: pop    %rbp
  0x000000011152987b: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
[Stub Code]
  0x0000000111529880: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000011152988a: jmpq   0x000000011152988a  ;   {runtime_call}
[Exception Handler]
  0x000000011152988f: jmpq   0x0000000111509680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000111529894: callq  0x0000000111529899
  0x0000000111529899: subq   $0x5,(%rsp)
  0x000000011152989e: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x00000001115298a3: hlt    
  0x00000001115298a4: hlt    
  0x00000001115298a5: hlt    
  0x00000001115298a6: hlt    
  0x00000001115298a7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 220 
ImmutableOopMap{rbp=Oop r14=Oop }pc offsets: 252 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 364 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 484 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 528 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 580 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 604 624 
ImmutableOopMap{rbp=Oop }pc offsets: 640 652 Compiled method (c2)     314   70             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x0000000111529d10,0x000000011152a480] = 1904
 relocation     [0x0000000111529e88,0x0000000111529ec8] = 64
 main code      [0x0000000111529ee0,0x000000011152a100] = 544
 stub code      [0x000000011152a100,0x000000011152a128] = 40
 oops           [0x000000011152a128,0x000000011152a138] = 16
 metadata       [0x000000011152a138,0x000000011152a168] = 48
 scopes data    [0x000000011152a168,0x000000011152a280] = 280
 scopes pcs     [0x000000011152a280,0x000000011152a430] = 432
 dependencies   [0x000000011152a430,0x000000011152a438] = 8
 handler table  [0x000000011152a438,0x000000011152a468] = 48
 nul chk table  [0x000000011152a468,0x000000011152a480] = 24
----------------------------------------------------------------------
ProceduralHashMap.runTest()Ljava/lang/String;  [0x0000000111529ee0, 0x000000011152a128]  584 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011e9b5818} 'runTest' '()Ljava/lang/String;' in 'ProceduralHashMap'
  #           [sp+0x40]  (sp of caller)
  0x0000000111529ee0: mov    0x8(%rsi),%r10d
  0x0000000111529ee4: movabs $0x800000000,%r12
  0x0000000111529eee: add    %r12,%r10
  0x0000000111529ef1: xor    %r12,%r12
  0x0000000111529ef4: cmp    %r10,%rax
  0x0000000111529ef7: jne    0x00000001114d2c80  ;   {runtime_call ic_miss_stub}
  0x0000000111529efd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000111529f00: mov    %eax,-0x14000(%rsp)
  0x0000000111529f07: push   %rbp
  0x0000000111529f08: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 39)

  0x0000000111529f0c: mov    %rsi,(%rsp)
  0x0000000111529f10: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000111529f16: movabs $0x800000000,%rcx
  0x0000000111529f20: add    %r11,%rcx
  0x0000000111529f23: xor    %r10d,%r10d
  0x0000000111529f26: jmpq   0x0000000111529fa1
  0x0000000111529f2b: nopl   0x0(%rax,%rax,1)
  0x0000000111529f30: mov    %r11,0x118(%r15)
  0x0000000111529f37: prefetchnta 0xc0(%r11)
  0x0000000111529f3f: mov    0xb8(%rcx),%r11
  0x0000000111529f46: mov    %r11,(%rdx)
  0x0000000111529f49: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000111529f50: mov    %r10d,0xc(%rdx)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529f54: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x000000011152a09e
  0x0000000111529f59: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x0000000111529f60: jne    0x000000011152a03d
  0x0000000111529f66: mov    %r10d,0x8(%rsp)
  0x0000000111529f6b: mov    %rcx,%rbp
  0x0000000111529f6e: lea    (%r12,%r9,8),%rsi
  0x0000000111529f72: nop
  0x0000000111529f73: callq  0x00000001114d2f00  ; ImmutableOopMap{[0]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {optimized virtual_call}
  0x0000000111529f78: mov    0x8(%rax),%r10d    ; implicit exception: dispatches to 0x000000011152a0ae
  0x0000000111529f7c: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x0000000111529f83: jne    0x000000011152a076  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529f89: mov    0x8(%rsp),%r10d
  0x0000000111529f8e: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 40)

  0x0000000111529f91: cmp    $0x3e8,%r10d
  0x0000000111529f98: jge    0x000000011152a02d  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)

  0x0000000111529f9e: mov    %rbp,%rcx          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 41)

  0x0000000111529fa1: movabs $0x70fe0f2d8,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f2d8} = 'ProceduralHashMap')}
  0x0000000111529fab: mov    0x70(%r11),%r9d    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529faf: cmp    $0x7f,%r10d
  0x0000000111529fb3: jle    0x000000011152a001  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x0000000111529fb5: mov    0x118(%r15),%rdx
  0x0000000111529fbc: mov    %rdx,%r11
  0x0000000111529fbf: add    $0x10,%r11
  0x0000000111529fc3: cmp    0x128(%r15),%r11
  0x0000000111529fca: jb     0x0000000111529f30
  0x0000000111529fd0: mov    %r9d,0xc(%rsp)
  0x0000000111529fd5: mov    %r10d,0x8(%rsp)
  0x0000000111529fda: mov    %rcx,%rbp
  0x0000000111529fdd: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000111529fe7: callq  0x0000000111509380  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000111529fec: mov    %rax,%rdx
  0x0000000111529fef: mov    %rbp,%rcx
  0x0000000111529ff2: mov    0x8(%rsp),%r10d
  0x0000000111529ff7: mov    0xc(%rsp),%r9d
  0x0000000111529ffc: jmpq   0x0000000111529f50
  0x000000011152a001: mov    %r10d,%ebp
  0x000000011152a004: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a00a: cmp    $0x100,%ebp
  0x000000011152a010: jae    0x000000011152a05e
  0x000000011152a012: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x000000011152a01c: mov    0x210(%r11,%r10,4),%r11d
  0x000000011152a024: lea    (%r12,%r11,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a028: jmpq   0x0000000111529f54  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a02d: add    $0x30,%rsp
  0x000000011152a031: pop    %rbp
  0x000000011152a032: mov    0x108(%r15),%r10
  0x000000011152a039: test   %eax,(%r10)        ;   {poll_return}
  0x000000011152a03c: retq   
  0x000000011152a03d: mov    $0xffffffde,%esi
  0x000000011152a042: mov    (%rsp),%rbp
  0x000000011152a046: mov    %r10d,0x4(%rsp)
  0x000000011152a04b: mov    %r9d,0x8(%rsp)
  0x000000011152a050: mov    %rdx,0x10(%rsp)
  0x000000011152a055: xchg   %ax,%ax
  0x000000011152a057: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a05c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a05e: mov    $0xffffffe4,%esi
  0x000000011152a063: mov    %r10d,0xc(%rsp)
  0x000000011152a068: mov    %r9d,0x10(%rsp)
  0x000000011152a06d: xchg   %ax,%ax
  0x000000011152a06f: callq  0x00000001114d4900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a074: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a076: mov    $0xffffffde,%esi
  0x000000011152a07b: mov    (%rsp),%rbp
  0x000000011152a07f: mov    %rax,-0x8(%rsp)
  0x000000011152a084: mov    0x8(%rsp),%eax
  0x000000011152a088: mov    %eax,(%rsp)
  0x000000011152a08b: mov    -0x8(%rsp),%rax
  0x000000011152a090: mov    %rax,0x8(%rsp)
  0x000000011152a095: xchg   %ax,%ax
  0x000000011152a097: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a09c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a09e: mov    $0xfffffff6,%esi
  0x000000011152a0a3: mov    %rdx,%rbp
  0x000000011152a0a6: nop
  0x000000011152a0a7: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a0ac: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a0ae: mov    $0xfffffff4,%esi
  0x000000011152a0b3: mov    (%rsp),%rbp
  0x000000011152a0b7: mov    %rax,-0x8(%rsp)
  0x000000011152a0bc: mov    0x8(%rsp),%eax
  0x000000011152a0c0: mov    %eax,(%rsp)
  0x000000011152a0c3: mov    -0x8(%rsp),%rax
  0x000000011152a0c8: data16 xchg %ax,%ax
  0x000000011152a0cb: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a0d0: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)

  0x000000011152a0d2: mov    %rax,%rsi
  0x000000011152a0d5: jmp    0x000000011152a0da
  0x000000011152a0d7: mov    %rax,%rsi          ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 39)

  0x000000011152a0da: add    $0x30,%rsp
  0x000000011152a0de: pop    %rbp
  0x000000011152a0df: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
  0x000000011152a0e4: hlt    
  0x000000011152a0e5: hlt    
  0x000000011152a0e6: hlt    
  0x000000011152a0e7: hlt    
  0x000000011152a0e8: hlt    
  0x000000011152a0e9: hlt    
  0x000000011152a0ea: hlt    
  0x000000011152a0eb: hlt    
  0x000000011152a0ec: hlt    
  0x000000011152a0ed: hlt    
  0x000000011152a0ee: hlt    
  0x000000011152a0ef: hlt    
  0x000000011152a0f0: hlt    
  0x000000011152a0f1: hlt    
  0x000000011152a0f2: hlt    
  0x000000011152a0f3: hlt    
  0x000000011152a0f4: hlt    
  0x000000011152a0f5: hlt    
  0x000000011152a0f6: hlt    
  0x000000011152a0f7: hlt    
  0x000000011152a0f8: hlt    
  0x000000011152a0f9: hlt    
  0x000000011152a0fa: hlt    
  0x000000011152a0fb: hlt    
  0x000000011152a0fc: hlt    
  0x000000011152a0fd: hlt    
  0x000000011152a0fe: hlt    
  0x000000011152a0ff: hlt    
[Stub Code]
  0x000000011152a100: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000011152a10a: jmpq   0x000000011152a10a  ;   {runtime_call}
[Exception Handler]
  0x000000011152a10f: jmpq   0x0000000111509680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000011152a114: callq  0x000000011152a119
  0x000000011152a119: subq   $0x5,(%rsp)
  0x000000011152a11e: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011152a123: hlt    
  0x000000011152a124: hlt    
  0x000000011152a125: hlt    
  0x000000011152a126: hlt    
  0x000000011152a127: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 152 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 268 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 380 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 404 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 444 
ImmutableOopMap{rbp=Oop }pc offsets: 460 496 Compiled method (c2)     492   71 %           ProceduralHashMap::main @ 36 (72 bytes)
 total in heap  [0x000000011152a490,0x000000011152adc0] = 2352
 relocation     [0x000000011152a608,0x000000011152a650] = 72
 main code      [0x000000011152a660,0x000000011152a8e0] = 640
 stub code      [0x000000011152a8e0,0x000000011152a908] = 40
 oops           [0x000000011152a908,0x000000011152a918] = 16
 metadata       [0x000000011152a918,0x000000011152a958] = 64
 scopes data    [0x000000011152a958,0x000000011152ab08] = 432
 scopes pcs     [0x000000011152ab08,0x000000011152ad68] = 608
 dependencies   [0x000000011152ad68,0x000000011152ad70] = 8
 handler table  [0x000000011152ad70,0x000000011152ada0] = 48
 nul chk table  [0x000000011152ada0,0x000000011152adc0] = 32
----------------------------------------------------------------------
ProceduralHashMap.main([Ljava/lang/String;)V  [0x000000011152a660, 0x000000011152a908]  680 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011e9b5688} 'main' '([Ljava/lang/String;)V' in 'ProceduralHashMap'
  0x000000011152a660: callq  0x0000000106c107f4  ;   {runtime_call os::breakpoint()}
  0x000000011152a665: data16 data16 nopw 0x0(%rax,%rax,1)
  0x000000011152a670: mov    %eax,-0x14000(%rsp)
  0x000000011152a677: push   %rbp
  0x000000011152a678: sub    $0x40,%rsp
  0x000000011152a67c: mov    0x8(%rsi),%r13
  0x000000011152a680: mov    (%rsi),%ebx
  0x000000011152a682: mov    %rsi,%rdi
  0x000000011152a685: movabs $0x106c91a82,%r10
  0x000000011152a68f: callq  *%r10
  0x000000011152a692: mov    0x8(%r13),%r11d    ; implicit exception: dispatches to 0x000000011152a8c4
  0x000000011152a696: cmp    $0x60040,%r11d     ;   {metadata('ProceduralHashMap')}
  0x000000011152a69d: jne    0x000000011152a862  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x000000011152a6a3: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000011152a6a9: movabs $0x800000000,%r9
  0x000000011152a6b3: add    %r11,%r9
  0x000000011152a6b6: jmp    0x000000011152a6d1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a6b8: mov    0x108(%r15),%r10
  0x000000011152a6bf: mov    (%rsp),%ebx
  0x000000011152a6c2: inc    %ebx               ; ImmutableOopMap{[8]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@50 (line 22)

  0x000000011152a6c4: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@50 (line 22)
                                                ;   {poll}
  0x000000011152a6c7: mov    0x8(%rsp),%r13
  0x000000011152a6cc: mov    0x10(%rsp),%r9     ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x000000011152a6d1: cmp    $0x7a120,%ebx
  0x000000011152a6d7: jge    0x000000011152a84e  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@39 (line 22)

  0x000000011152a6dd: xor    %r10d,%r10d
  0x000000011152a6e0: jmpq   0x000000011152a777
  0x000000011152a6e5: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a6f0: mov    %r11,0x118(%r15)
  0x000000011152a6f7: prefetchnta 0xc0(%r11)
  0x000000011152a6ff: mov    0xb8(%r9),%r11
  0x000000011152a706: mov    %r11,(%rax)
  0x000000011152a709: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {metadata('java/lang/Integer')}
  0x000000011152a710: mov    %r10d,0xc(%rax)
  0x000000011152a714: mov    %rax,%rdx          ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a717: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x000000011152a88e
  0x000000011152a71c: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000011152a723: jne    0x000000011152a80d  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a729: mov    %r10d,0x4(%rsp)
  0x000000011152a72e: mov    %r9,0x10(%rsp)
  0x000000011152a733: mov    %ebx,(%rsp)
  0x000000011152a736: mov    %r13,0x8(%rsp)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a73b: lea    (%r12,%rbp,8),%rsi
  0x000000011152a73f: callq  0x00000001114d2f00  ; ImmutableOopMap{[8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {optimized virtual_call}
  0x000000011152a744: mov    0x8(%rax),%r10d    ; implicit exception: dispatches to 0x000000011152a89e
  0x000000011152a748: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000011152a74f: jne    0x000000011152a876  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a755: mov    0x4(%rsp),%r10d
  0x000000011152a75a: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 40)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a75d: cmp    $0x3e8,%r10d
  0x000000011152a764: jge    0x000000011152a6b8  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 40)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a76a: mov    0x8(%rsp),%r13
  0x000000011152a76f: mov    (%rsp),%ebx
  0x000000011152a772: mov    0x10(%rsp),%r9     ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a777: movabs $0x7066060a8,%r11  ;   {oop(a 'java/lang/Class'{0x00000007066060a8} = 'ProceduralHashMap')}
  0x000000011152a781: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a785: cmp    $0x7f,%r10d
  0x000000011152a789: jle    0x000000011152a7df
  0x000000011152a78b: mov    0x118(%r15),%rax
  0x000000011152a792: mov    %rax,%r11
  0x000000011152a795: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 40)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a799: cmp    0x128(%r15),%r11
  0x000000011152a7a0: jb     0x000000011152a6f0
  0x000000011152a7a6: mov    %r10d,0xc(%rsp)
  0x000000011152a7ab: mov    %r9,0x10(%rsp)
  0x000000011152a7b0: mov    %ebx,0x8(%rsp)
  0x000000011152a7b4: mov    %r13,(%rsp)        ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a7b8: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000011152a7c2: nop
  0x000000011152a7c3: callq  0x0000000111509380  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011152a7c8: mov    (%rsp),%r13
  0x000000011152a7cc: mov    0x8(%rsp),%ebx
  0x000000011152a7d0: mov    0x10(%rsp),%r9
  0x000000011152a7d5: mov    0xc(%rsp),%r10d
  0x000000011152a7da: jmpq   0x000000011152a710
  0x000000011152a7df: mov    %r10d,%r8d
  0x000000011152a7e2: add    $0x80,%r8d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a7e9: cmp    $0x100,%r8d
  0x000000011152a7f0: jae    0x000000011152a82e
  0x000000011152a7f2: movabs $0x706606120,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x0000000706606120})}
  0x000000011152a7fc: mov    0x210(%r11,%r10,4),%r8d
  0x000000011152a804: lea    (%r12,%r8,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a808: jmpq   0x000000011152a717
  0x000000011152a80d: mov    $0xffffffde,%esi
  0x000000011152a812: mov    %ebx,0x8(%rsp)
  0x000000011152a816: mov    %r13,0x10(%rsp)
  0x000000011152a81b: mov    %r10d,0x18(%rsp)
  0x000000011152a820: mov    %rdx,0x20(%rsp)
  0x000000011152a825: xchg   %ax,%ax
  0x000000011152a827: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=NarrowOop [16]=Oop [32]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a82c: ud2    
  0x000000011152a82e: mov    $0xffffffe4,%esi
  0x000000011152a833: mov    %ebx,0x8(%rsp)
  0x000000011152a837: mov    %r13,0x10(%rsp)
  0x000000011152a83c: mov    %r10d,0x18(%rsp)
  0x000000011152a841: mov    %r8d,0x1c(%rsp)
  0x000000011152a846: nop
  0x000000011152a847: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=NarrowOop [16]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a84c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@39 (line 22)

  0x000000011152a84e: mov    $0xffffff4d,%esi
  0x000000011152a853: mov    %r13,%rbp
  0x000000011152a856: mov    %ebx,0x4(%rsp)
  0x000000011152a85a: nop
  0x000000011152a85b: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@39 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a860: ud2    
  0x000000011152a862: mov    $0xffffff95,%esi
  0x000000011152a867: mov    %r13,%rbp
  0x000000011152a86a: mov    %ebx,(%rsp)
  0x000000011152a86d: xchg   %ax,%ax
  0x000000011152a86f: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a874: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x000000011152a876: mov    $0xffffffde,%esi
  0x000000011152a87b: mov    0x8(%rsp),%rbp
  0x000000011152a880: mov    %rax,0x18(%rsp)
  0x000000011152a885: xchg   %ax,%ax
  0x000000011152a887: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a88c: ud2    
  0x000000011152a88e: mov    $0xfffffff6,%esi
  0x000000011152a893: mov    %rdx,%rbp
  0x000000011152a896: nop
  0x000000011152a897: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a89c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a89e: mov    $0xfffffff4,%esi
  0x000000011152a8a3: mov    0x8(%rsp),%rbp
  0x000000011152a8a8: data16 xchg %ax,%ax
  0x000000011152a8ab: callq  0x00000001114d4900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a8b0: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a8b2: mov    %rax,%rsi
  0x000000011152a8b5: jmp    0x000000011152a8ba
  0x000000011152a8b7: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 47)
                                                ; - ProceduralHashMap::runTest@13 (line 41)
                                                ; - ProceduralHashMap::main@43 (line 23)

  0x000000011152a8ba: add    $0x40,%rsp
  0x000000011152a8be: pop    %rbp
  0x000000011152a8bf: jmpq   0x000000011150b700  ;   {runtime_call _rethrow_Java}
  0x000000011152a8c4: mov    $0xffffff7e,%esi
  0x000000011152a8c9: mov    %ebx,%ebp
  0x000000011152a8cb: callq  0x00000001114d4900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011152a8d0: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::main@36 (line 22)

  0x000000011152a8d2: hlt    
  0x000000011152a8d3: hlt    
  0x000000011152a8d4: hlt    
  0x000000011152a8d5: hlt    
  0x000000011152a8d6: hlt    
  0x000000011152a8d7: hlt    
  0x000000011152a8d8: hlt    
  0x000000011152a8d9: hlt    
  0x000000011152a8da: hlt    
  0x000000011152a8db: hlt    
  0x000000011152a8dc: hlt    
  0x000000011152a8dd: hlt    
  0x000000011152a8de: hlt    
  0x000000011152a8df: hlt    
[Stub Code]
  0x000000011152a8e0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000011152a8ea: jmpq   0x000000011152a8ea  ;   {runtime_call}
[Exception Handler]
  0x000000011152a8ef: jmpq   0x0000000111509680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000011152a8f4: callq  0x000000011152a8f9
  0x000000011152a8f9: subq   $0x5,(%rsp)
  0x000000011152a8fe: jmpq   0x00000001114d4520  ;   {runtime_call DeoptimizationBlob}
  0x000000011152a903: hlt    
  0x000000011152a904: hlt    
  0x000000011152a905: hlt    
  0x000000011152a906: hlt    
  0x000000011152a907: hlt    

ImmutableOopMap{[8]=Oop }pc offsets: 100 228 
ImmutableOopMap{rbp=NarrowOop [0]=Oop }pc offsets: 360 
ImmutableOopMap{rbp=NarrowOop [16]=Oop [32]=Oop }pc offsets: 460 
ImmutableOopMap{rbp=NarrowOop [16]=Oop }pc offsets: 492 
ImmutableOopMap{rbp=Oop }pc offsets: 512 532 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop }pc offsets: 572 592 
ImmutableOopMap{}pc offsets: 624 Test phase
Time elapsed: 0.007 ms result=337

