Compiled method (c2)      51    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x000000010e3e9e90,0x000000010e3ea430] = 1440
 relocation     [0x000000010e3ea008,0x000000010e3ea018] = 16
 main code      [0x000000010e3ea020,0x000000010e3ea1e0] = 448
 stub code      [0x000000010e3ea1e0,0x000000010e3ea1f8] = 24
 metadata       [0x000000010e3ea1f8,0x000000010e3ea200] = 8
 scopes data    [0x000000010e3ea200,0x000000010e3ea288] = 136
 scopes pcs     [0x000000010e3ea288,0x000000010e3ea418] = 400
 dependencies   [0x000000010e3ea418,0x000000010e3ea420] = 8
 nul chk table  [0x000000010e3ea420,0x000000010e3ea430] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x000000010e3ea020, 0x000000010e3ea1f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cce4a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x000000010e3ea020: mov    %eax,-0x14000(%rsp)
  0x000000010e3ea027: push   %rbp
  0x000000010e3ea028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x000000010e3ea02c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x000000010e3ea1c2
  0x000000010e3ea030: test   %r10d,%r10d
  0x000000010e3ea033: jbe    0x000000010e3ea1a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e3ea039: mov    %r10d,%r8d
  0x000000010e3ea03c: dec    %r8d
  0x000000010e3ea03f: cmp    %r10d,%r8d
  0x000000010e3ea042: jae    0x000000010e3ea1ad
  0x000000010e3ea048: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x000000010e3ea04d: mov    %r10d,%edx
  0x000000010e3ea050: add    $0xfffffff9,%edx
  0x000000010e3ea053: mov    $0x80000000,%ecx
  0x000000010e3ea058: cmp    %edx,%r8d
  0x000000010e3ea05b: cmovl  %ecx,%edx
  0x000000010e3ea05e: mov    $0x1,%ecx
  0x000000010e3ea063: cmp    $0x1,%edx
  0x000000010e3ea066: jle    0x000000010e3ea18d
  0x000000010e3ea06c: mov    %r9d,%r11d
  0x000000010e3ea06f: shl    $0x5,%r11d
  0x000000010e3ea073: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e3ea076: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010e3ea07b: jmp    0x000000010e3ea0a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x000000010e3ea07d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x000000010e3ea083: mov    %r9d,%eax
  0x000000010e3ea086: shl    $0x5,%eax
  0x000000010e3ea089: sub    %r9d,%eax
  0x000000010e3ea08c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010e3ea08f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010e3ea091: cmp    %r10d,%ecx
  0x000000010e3ea094: jge    0x000000010e3ea199  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e3ea09a: mov    %eax,%r9d
  0x000000010e3ea09d: jmp    0x000000010e3ea07d
  0x000000010e3ea09f: vmovq  %xmm0,%rsi
  0x000000010e3ea0a4: vmovd  %xmm2,%r10d
  0x000000010e3ea0a9: mov    %edx,%ebp
  0x000000010e3ea0ab: sub    %ecx,%ebp
  0x000000010e3ea0ad: cmp    %edi,%ebp
  0x000000010e3ea0af: cmovg  %edi,%ebp
  0x000000010e3ea0b2: add    %ecx,%ebp
  0x000000010e3ea0b4: vmovq  %rsi,%xmm0
  0x000000010e3ea0b9: vmovd  %r10d,%xmm2
  0x000000010e3ea0be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e3ea0c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x000000010e3ea0c3: vmovq  %xmm0,%r8
  0x000000010e3ea0c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x000000010e3ea0ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x000000010e3ea0d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x000000010e3ea0da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x000000010e3ea0e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x000000010e3ea0e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x000000010e3ea0ec: add    %r14d,%r11d
  0x000000010e3ea0ef: vmovq  %xmm0,%rbx
  0x000000010e3ea0f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x000000010e3ea0f9: vmovq  %xmm0,%r14
  0x000000010e3ea0fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x000000010e3ea104: mov    %r11d,%r14d
  0x000000010e3ea107: shl    $0x5,%r14d
  0x000000010e3ea10b: sub    %r11d,%r14d
  0x000000010e3ea10e: add    %r13d,%r14d
  0x000000010e3ea111: mov    %r14d,%r11d
  0x000000010e3ea114: shl    $0x5,%r11d
  0x000000010e3ea118: sub    %r14d,%r11d
  0x000000010e3ea11b: add    %ebx,%r11d
  0x000000010e3ea11e: mov    %r11d,%ebx
  0x000000010e3ea121: shl    $0x5,%ebx
  0x000000010e3ea124: sub    %r11d,%ebx
  0x000000010e3ea127: add    %esi,%ebx
  0x000000010e3ea129: mov    %ebx,%r11d
  0x000000010e3ea12c: shl    $0x5,%r11d
  0x000000010e3ea130: sub    %ebx,%r11d
  0x000000010e3ea133: add    %r8d,%r11d
  0x000000010e3ea136: mov    %r11d,%ebx
  0x000000010e3ea139: shl    $0x5,%ebx
  0x000000010e3ea13c: sub    %r11d,%ebx
  0x000000010e3ea13f: add    %r9d,%ebx
  0x000000010e3ea142: mov    %ebx,%r8d
  0x000000010e3ea145: shl    $0x5,%r8d
  0x000000010e3ea149: sub    %ebx,%r8d
  0x000000010e3ea14c: add    %r10d,%r8d
  0x000000010e3ea14f: mov    %r8d,%r9d
  0x000000010e3ea152: shl    $0x5,%r9d
  0x000000010e3ea156: sub    %r8d,%r9d
  0x000000010e3ea159: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010e3ea15c: mov    %r9d,%r11d
  0x000000010e3ea15f: shl    $0x5,%r11d
  0x000000010e3ea163: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e3ea166: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010e3ea169: cmp    %ebp,%ecx
  0x000000010e3ea16b: jl     0x000000010e3ea0c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e3ea171: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010e3ea178: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000010e3ea17b: cmp    %edx,%ecx
  0x000000010e3ea17d: jl     0x000000010e3ea09f
  0x000000010e3ea183: vmovq  %xmm0,%rsi
  0x000000010e3ea188: vmovd  %xmm2,%r10d
  0x000000010e3ea18d: cmp    %r10d,%ecx
  0x000000010e3ea190: jl     0x000000010e3ea07d
  0x000000010e3ea196: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e3ea199: add    $0x20,%rsp
  0x000000010e3ea19d: pop    %rbp
  0x000000010e3ea19e: mov    0x108(%r15),%r10
  0x000000010e3ea1a5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3ea1a8: retq   
  0x000000010e3ea1a9: xor    %eax,%eax
  0x000000010e3ea1ab: jmp    0x000000010e3ea199
  0x000000010e3ea1ad: mov    %rsi,%rbp
  0x000000010e3ea1b0: mov    %r10d,0x4(%rsp)
  0x000000010e3ea1b5: mov    $0xffffff7e,%esi
  0x000000010e3ea1ba: nop
  0x000000010e3ea1bb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ea1c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e3ea1c2: mov    $0xfffffff6,%esi
  0x000000010e3ea1c7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ea1cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x000000010e3ea1ce: hlt    
  0x000000010e3ea1cf: hlt    
  0x000000010e3ea1d0: hlt    
  0x000000010e3ea1d1: hlt    
  0x000000010e3ea1d2: hlt    
  0x000000010e3ea1d3: hlt    
  0x000000010e3ea1d4: hlt    
  0x000000010e3ea1d5: hlt    
  0x000000010e3ea1d6: hlt    
  0x000000010e3ea1d7: hlt    
  0x000000010e3ea1d8: hlt    
  0x000000010e3ea1d9: hlt    
  0x000000010e3ea1da: hlt    
  0x000000010e3ea1db: hlt    
  0x000000010e3ea1dc: hlt    
  0x000000010e3ea1dd: hlt    
  0x000000010e3ea1de: hlt    
  0x000000010e3ea1df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3ea1e0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3ea1e5: callq  0x000000010e3ea1ea
  0x000000010e3ea1ea: subq   $0x5,(%rsp)
  0x000000010e3ea1ef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3ea1f4: hlt    
  0x000000010e3ea1f5: hlt    
  0x000000010e3ea1f6: hlt    
  0x000000010e3ea1f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f2d20, 0x000000010e3f2d40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cee3b40} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f2d20: mov    0x24(%rdi),%ebx
  0x000000010e3f2d23: shl    $0x3,%rbx
  0x000000010e3f2d27: mov    0x10(%rbx),%rbx
  0x000000010e3f2d2b: test   %rbx,%rbx
  0x000000010e3f2d2e: je     0x000000010e3f2d37
  0x000000010e3f2d34: jmpq   *0x38(%rbx)
  0x000000010e3f2d37: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f2d3c: hlt    
  0x000000010e3f2d3d: hlt    
  0x000000010e3f2d3e: hlt    
  0x000000010e3f2d3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3f3920, 0x000000010e3f3950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf161d0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f3920: mov    0x14(%rsi),%ebx
  0x000000010e3f3923: shl    $0x3,%rbx
  0x000000010e3f3927: mov    0x28(%rbx),%ebx
  0x000000010e3f392a: shl    $0x3,%rbx
  0x000000010e3f392e: mov    0x24(%rbx),%ebx
  0x000000010e3f3931: shl    $0x3,%rbx
  0x000000010e3f3935: mov    0x10(%rbx),%rbx
  0x000000010e3f3939: test   %rbx,%rbx
  0x000000010e3f393c: je     0x000000010e3f3945
  0x000000010e3f3942: jmpq   *0x38(%rbx)
  0x000000010e3f3945: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f394a: hlt    
  0x000000010e3f394b: hlt    
  0x000000010e3f394c: hlt    
  0x000000010e3f394d: hlt    
  0x000000010e3f394e: hlt    
  0x000000010e3f394f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f3b20, 0x000000010e3f3b48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf16388} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010e3f3b20: mov    0x8(%rsp),%rbx
  0x000000010e3f3b25: cmp    (%rsi),%rax
  0x000000010e3f3b28: mov    0x24(%rbx),%ebx
  0x000000010e3f3b2b: shl    $0x3,%rbx
  0x000000010e3f3b2f: mov    0x10(%rbx),%rbx
  0x000000010e3f3b33: test   %rbx,%rbx
  0x000000010e3f3b36: je     0x000000010e3f3b3f
  0x000000010e3f3b3c: jmpq   *0x38(%rbx)
  0x000000010e3f3b3f: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f3b44: hlt    
  0x000000010e3f3b45: hlt    
  0x000000010e3f3b46: hlt    
  0x000000010e3f3b47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x000000010e3f4320, 0x000000010e3f4340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf22740} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4320: mov    0x24(%rsi),%ebx
  0x000000010e3f4323: shl    $0x3,%rbx
  0x000000010e3f4327: mov    0x10(%rbx),%rbx
  0x000000010e3f432b: test   %rbx,%rbx
  0x000000010e3f432e: je     0x000000010e3f4337
  0x000000010e3f4334: jmpq   *0x38(%rbx)
  0x000000010e3f4337: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f433c: hlt    
  0x000000010e3f433d: hlt    
  0x000000010e3f433e: hlt    
  0x000000010e3f433f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x000000010e3f4520, 0x000000010e3f4550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf22858} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4520: mov    0x14(%rsi),%ebx
  0x000000010e3f4523: shl    $0x3,%rbx
  0x000000010e3f4527: mov    0x28(%rbx),%ebx
  0x000000010e3f452a: shl    $0x3,%rbx
  0x000000010e3f452e: mov    0x24(%rbx),%ebx
  0x000000010e3f4531: shl    $0x3,%rbx
  0x000000010e3f4535: mov    0x10(%rbx),%rbx
  0x000000010e3f4539: test   %rbx,%rbx
  0x000000010e3f453c: je     0x000000010e3f4545
  0x000000010e3f4542: jmpq   *0x38(%rbx)
  0x000000010e3f4545: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f454a: hlt    
  0x000000010e3f454b: hlt    
  0x000000010e3f454c: hlt    
  0x000000010e3f454d: hlt    
  0x000000010e3f454e: hlt    
  0x000000010e3f454f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e3f4720, 0x000000010e3f4740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf22970} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4720: cmp    (%rsi),%rax
  0x000000010e3f4723: mov    0x24(%rdx),%ebx
  0x000000010e3f4726: shl    $0x3,%rbx
  0x000000010e3f472a: mov    0x10(%rbx),%rbx
  0x000000010e3f472e: test   %rbx,%rbx
  0x000000010e3f4731: je     0x000000010e3f473a
  0x000000010e3f4737: jmpq   *0x38(%rbx)
  0x000000010e3f473a: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f473f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f4920, 0x000000010e3f4940]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf22d08} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4920: mov    0x24(%r8),%ebx
  0x000000010e3f4924: shl    $0x3,%rbx
  0x000000010e3f4928: mov    0x10(%rbx),%rbx
  0x000000010e3f492c: test   %rbx,%rbx
  0x000000010e3f492f: je     0x000000010e3f4938
  0x000000010e3f4935: jmpq   *0x38(%rbx)
  0x000000010e3f4938: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f493d: hlt    
  0x000000010e3f493e: hlt    
  0x000000010e3f493f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f4b20, 0x000000010e3f4b40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf22e20} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4b20: mov    0x24(%rcx),%ebx
  0x000000010e3f4b23: shl    $0x3,%rbx
  0x000000010e3f4b27: mov    0x10(%rbx),%rbx
  0x000000010e3f4b2b: test   %rbx,%rbx
  0x000000010e3f4b2e: je     0x000000010e3f4b37
  0x000000010e3f4b34: jmpq   *0x38(%rbx)
  0x000000010e3f4b37: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f4b3c: hlt    
  0x000000010e3f4b3d: hlt    
  0x000000010e3f4b3e: hlt    
  0x000000010e3f4b3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f4d20, 0x000000010e3f4d40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf2abf8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f4d20: mov    0x24(%rdx),%ebx
  0x000000010e3f4d23: shl    $0x3,%rbx
  0x000000010e3f4d27: mov    0x10(%rbx),%rbx
  0x000000010e3f4d2b: test   %rbx,%rbx
  0x000000010e3f4d2e: je     0x000000010e3f4d37
  0x000000010e3f4d34: jmpq   *0x38(%rbx)
  0x000000010e3f4d37: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f4d3c: hlt    
  0x000000010e3f4d3d: hlt    
  0x000000010e3f4d3e: hlt    
  0x000000010e3f4d3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f56a0, 0x000000010e3f56c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf3cc70} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f56a0: mov    0x24(%rcx),%ebx
  0x000000010e3f56a3: shl    $0x3,%rbx
  0x000000010e3f56a7: mov    0x10(%rbx),%rbx
  0x000000010e3f56ab: test   %rbx,%rbx
  0x000000010e3f56ae: je     0x000000010e3f56b7
  0x000000010e3f56b4: jmpq   *0x38(%rbx)
  0x000000010e3f56b7: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f56bc: hlt    
  0x000000010e3f56bd: hlt    
  0x000000010e3f56be: hlt    
  0x000000010e3f56bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f58a0, 0x000000010e3f58c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf3e570} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f58a0: mov    0x24(%r8),%ebx
  0x000000010e3f58a4: shl    $0x3,%rbx
  0x000000010e3f58a8: mov    0x10(%rbx),%rbx
  0x000000010e3f58ac: test   %rbx,%rbx
  0x000000010e3f58af: je     0x000000010e3f58b8
  0x000000010e3f58b5: jmpq   *0x38(%rbx)
  0x000000010e3f58b8: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f58bd: hlt    
  0x000000010e3f58be: hlt    
  0x000000010e3f58bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010e3f5aa0, 0x000000010e3f5ad0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf410d8} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f5aa0: mov    0x14(%rsi),%ebx
  0x000000010e3f5aa3: shl    $0x3,%rbx
  0x000000010e3f5aa7: mov    0x28(%rbx),%ebx
  0x000000010e3f5aaa: shl    $0x3,%rbx
  0x000000010e3f5aae: mov    0x24(%rbx),%ebx
  0x000000010e3f5ab1: shl    $0x3,%rbx
  0x000000010e3f5ab5: mov    0x10(%rbx),%rbx
  0x000000010e3f5ab9: test   %rbx,%rbx
  0x000000010e3f5abc: je     0x000000010e3f5ac5
  0x000000010e3f5ac2: jmpq   *0x38(%rbx)
  0x000000010e3f5ac5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f5aca: hlt    
  0x000000010e3f5acb: hlt    
  0x000000010e3f5acc: hlt    
  0x000000010e3f5acd: hlt    
  0x000000010e3f5ace: hlt    
  0x000000010e3f5acf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f5ca0, 0x000000010e3f5cc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf411f0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f5ca0: cmp    (%rsi),%rax
  0x000000010e3f5ca3: mov    0x24(%r9),%ebx
  0x000000010e3f5ca7: shl    $0x3,%rbx
  0x000000010e3f5cab: mov    0x10(%rbx),%rbx
  0x000000010e3f5caf: test   %rbx,%rbx
  0x000000010e3f5cb2: je     0x000000010e3f5cbb
  0x000000010e3f5cb8: jmpq   *0x38(%rbx)
  0x000000010e3f5cbb: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e3f77a0, 0x000000010e3f77c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf74d00} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f77a0: mov    0x24(%r9),%ebx
  0x000000010e3f77a4: shl    $0x3,%rbx
  0x000000010e3f77a8: mov    0x10(%rbx),%rbx
  0x000000010e3f77ac: test   %rbx,%rbx
  0x000000010e3f77af: je     0x000000010e3f77b8
  0x000000010e3f77b5: jmpq   *0x38(%rbx)
  0x000000010e3f77b8: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f77bd: hlt    
  0x000000010e3f77be: hlt    
  0x000000010e3f77bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f79a0, 0x000000010e3f79c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf75e00} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f79a0: mov    0x24(%r9),%ebx
  0x000000010e3f79a4: shl    $0x3,%rbx
  0x000000010e3f79a8: mov    0x10(%rbx),%rbx
  0x000000010e3f79ac: test   %rbx,%rbx
  0x000000010e3f79af: je     0x000000010e3f79b8
  0x000000010e3f79b5: jmpq   *0x38(%rbx)
  0x000000010e3f79b8: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f79bd: hlt    
  0x000000010e3f79be: hlt    
  0x000000010e3f79bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x000000010e3f7ba0, 0x000000010e3f7bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf760a8} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f7ba0: mov    0x14(%rsi),%ebx
  0x000000010e3f7ba3: shl    $0x3,%rbx
  0x000000010e3f7ba7: mov    0x28(%rbx),%ebx
  0x000000010e3f7baa: shl    $0x3,%rbx
  0x000000010e3f7bae: mov    0x24(%rbx),%ebx
  0x000000010e3f7bb1: shl    $0x3,%rbx
  0x000000010e3f7bb5: mov    0x10(%rbx),%rbx
  0x000000010e3f7bb9: test   %rbx,%rbx
  0x000000010e3f7bbc: je     0x000000010e3f7bc5
  0x000000010e3f7bc2: jmpq   *0x38(%rbx)
  0x000000010e3f7bc5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f7bca: hlt    
  0x000000010e3f7bcb: hlt    
  0x000000010e3f7bcc: hlt    
  0x000000010e3f7bcd: hlt    
  0x000000010e3f7bce: hlt    
  0x000000010e3f7bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e3f7da0, 0x000000010e3f7dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf761c0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f7da0: cmp    (%rsi),%rax
  0x000000010e3f7da3: mov    0x24(%rdi),%ebx
  0x000000010e3f7da6: shl    $0x3,%rbx
  0x000000010e3f7daa: mov    0x10(%rbx),%rbx
  0x000000010e3f7dae: test   %rbx,%rbx
  0x000000010e3f7db1: je     0x000000010e3f7dba
  0x000000010e3f7db7: jmpq   *0x38(%rbx)
  0x000000010e3f7dba: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f7dbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3f7fa0, 0x000000010e3f7fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf765a8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f7fa0: mov    0x14(%rsi),%ebx
  0x000000010e3f7fa3: shl    $0x3,%rbx
  0x000000010e3f7fa7: mov    0x28(%rbx),%ebx
  0x000000010e3f7faa: shl    $0x3,%rbx
  0x000000010e3f7fae: mov    0x24(%rbx),%ebx
  0x000000010e3f7fb1: shl    $0x3,%rbx
  0x000000010e3f7fb5: mov    0x10(%rbx),%rbx
  0x000000010e3f7fb9: test   %rbx,%rbx
  0x000000010e3f7fbc: je     0x000000010e3f7fc5
  0x000000010e3f7fc2: jmpq   *0x38(%rbx)
  0x000000010e3f7fc5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f7fca: hlt    
  0x000000010e3f7fcb: hlt    
  0x000000010e3f7fcc: hlt    
  0x000000010e3f7fcd: hlt    
  0x000000010e3f7fce: hlt    
  0x000000010e3f7fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x000000010e3f81a0, 0x000000010e3f81d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf77fe8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f81a0: mov    0x14(%rsi),%ebx
  0x000000010e3f81a3: shl    $0x3,%rbx
  0x000000010e3f81a7: mov    0x28(%rbx),%ebx
  0x000000010e3f81aa: shl    $0x3,%rbx
  0x000000010e3f81ae: mov    0x24(%rbx),%ebx
  0x000000010e3f81b1: shl    $0x3,%rbx
  0x000000010e3f81b5: mov    0x10(%rbx),%rbx
  0x000000010e3f81b9: test   %rbx,%rbx
  0x000000010e3f81bc: je     0x000000010e3f81c5
  0x000000010e3f81c2: jmpq   *0x38(%rbx)
  0x000000010e3f81c5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f81ca: hlt    
  0x000000010e3f81cb: hlt    
  0x000000010e3f81cc: hlt    
  0x000000010e3f81cd: hlt    
  0x000000010e3f81ce: hlt    
  0x000000010e3f81cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x000000010e3f83a0, 0x000000010e3f83c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf78100} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f83a0: cmp    (%rsi),%rax
  0x000000010e3f83a3: mov    0x24(%r9),%ebx
  0x000000010e3f83a7: shl    $0x3,%rbx
  0x000000010e3f83ab: mov    0x10(%rbx),%rbx
  0x000000010e3f83af: test   %rbx,%rbx
  0x000000010e3f83b2: je     0x000000010e3f83bb
  0x000000010e3f83b8: jmpq   *0x38(%rbx)
  0x000000010e3f83bb: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f85a0, 0x000000010e3f85c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf79358} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010e3f85a0: mov    0x8(%rsp),%rbx
  0x000000010e3f85a5: mov    0x24(%rbx),%ebx
  0x000000010e3f85a8: shl    $0x3,%rbx
  0x000000010e3f85ac: mov    0x10(%rbx),%rbx
  0x000000010e3f85b0: test   %rbx,%rbx
  0x000000010e3f85b3: je     0x000000010e3f85bc
  0x000000010e3f85b9: jmpq   *0x38(%rbx)
  0x000000010e3f85bc: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f85c1: hlt    
  0x000000010e3f85c2: hlt    
  0x000000010e3f85c3: hlt    
  0x000000010e3f85c4: hlt    
  0x000000010e3f85c5: hlt    
  0x000000010e3f85c6: hlt    
  0x000000010e3f85c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000010e3f87a0, 0x000000010e3f87d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf79470} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f87a0: mov    0x14(%rsi),%ebx
  0x000000010e3f87a3: shl    $0x3,%rbx
  0x000000010e3f87a7: mov    0x28(%rbx),%ebx
  0x000000010e3f87aa: shl    $0x3,%rbx
  0x000000010e3f87ae: mov    0x24(%rbx),%ebx
  0x000000010e3f87b1: shl    $0x3,%rbx
  0x000000010e3f87b5: mov    0x10(%rbx),%rbx
  0x000000010e3f87b9: test   %rbx,%rbx
  0x000000010e3f87bc: je     0x000000010e3f87c5
  0x000000010e3f87c2: jmpq   *0x38(%rbx)
  0x000000010e3f87c5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f87ca: hlt    
  0x000000010e3f87cb: hlt    
  0x000000010e3f87cc: hlt    
  0x000000010e3f87cd: hlt    
  0x000000010e3f87ce: hlt    
  0x000000010e3f87cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f89a0, 0x000000010e3f89c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf79588} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f89a0: cmp    (%rsi),%rax
  0x000000010e3f89a3: mov    0x24(%r8),%ebx
  0x000000010e3f89a7: shl    $0x3,%rbx
  0x000000010e3f89ab: mov    0x10(%rbx),%rbx
  0x000000010e3f89af: test   %rbx,%rbx
  0x000000010e3f89b2: je     0x000000010e3f89bb
  0x000000010e3f89b8: jmpq   *0x38(%rbx)
  0x000000010e3f89bb: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3f8ba0, 0x000000010e3f8bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf796f0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x000000010e3f8ba0: mov    0x14(%rsi),%ebx
  0x000000010e3f8ba3: shl    $0x3,%rbx
  0x000000010e3f8ba7: mov    0x28(%rbx),%ebx
  0x000000010e3f8baa: shl    $0x3,%rbx
  0x000000010e3f8bae: mov    0x24(%rbx),%ebx
  0x000000010e3f8bb1: shl    $0x3,%rbx
  0x000000010e3f8bb5: mov    0x10(%rbx),%rbx
  0x000000010e3f8bb9: test   %rbx,%rbx
  0x000000010e3f8bbc: je     0x000000010e3f8bc5
  0x000000010e3f8bc2: jmpq   *0x38(%rbx)
  0x000000010e3f8bc5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f8bca: hlt    
  0x000000010e3f8bcb: hlt    
  0x000000010e3f8bcc: hlt    
  0x000000010e3f8bcd: hlt    
  0x000000010e3f8bce: hlt    
  0x000000010e3f8bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e3f8da0, 0x000000010e3f8dc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf79fa0} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f8da0: mov    0x24(%rcx),%ebx
  0x000000010e3f8da3: shl    $0x3,%rbx
  0x000000010e3f8da7: mov    0x10(%rbx),%rbx
  0x000000010e3f8dab: test   %rbx,%rbx
  0x000000010e3f8dae: je     0x000000010e3f8db7
  0x000000010e3f8db4: jmpq   *0x38(%rbx)
  0x000000010e3f8db7: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f8dbc: hlt    
  0x000000010e3f8dbd: hlt    
  0x000000010e3f8dbe: hlt    
  0x000000010e3f8dbf: hlt    
Compiled method (c2)     127   27             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000010e3fbc10,0x000000010e3fbe48] = 568
 relocation     [0x000000010e3fbd88,0x000000010e3fbd98] = 16
 main code      [0x000000010e3fbda0,0x000000010e3fbde0] = 64
 stub code      [0x000000010e3fbde0,0x000000010e3fbdf8] = 24
 metadata       [0x000000010e3fbdf8,0x000000010e3fbe08] = 16
 scopes data    [0x000000010e3fbe08,0x000000010e3fbe10] = 8
 scopes pcs     [0x000000010e3fbe10,0x000000010e3fbe40] = 48
 dependencies   [0x000000010e3fbe40,0x000000010e3fbe48] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000010e3fbda0, 0x000000010e3fbdf8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb8b610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fbda0: mov    0x8(%rsi),%r10d
  0x000000010e3fbda4: movabs $0x800000000,%r12
  0x000000010e3fbdae: add    %r12,%r10
  0x000000010e3fbdb1: xor    %r12,%r12
  0x000000010e3fbdb4: cmp    %r10,%rax
  0x000000010e3fbdb7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fbdbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3fbdc0: sub    $0x18,%rsp
  0x000000010e3fbdc7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000010e3fbdcc: add    $0x10,%rsp
  0x000000010e3fbdd0: pop    %rbp
  0x000000010e3fbdd1: mov    0x108(%r15),%r10
  0x000000010e3fbdd8: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fbddb: retq   
  0x000000010e3fbddc: hlt    
  0x000000010e3fbddd: hlt    
  0x000000010e3fbdde: hlt    
  0x000000010e3fbddf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fbde0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fbde5: callq  0x000000010e3fbdea
  0x000000010e3fbdea: subq   $0x5,(%rsp)
  0x000000010e3fbdef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fbdf4: hlt    
  0x000000010e3fbdf5: hlt    
  0x000000010e3fbdf6: hlt    
  0x000000010e3fbdf7: hlt    
Compiled method (c2)     129   28             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000010e3fa290,0x000000010e3fa538] = 680
 relocation     [0x000000010e3fa408,0x000000010e3fa418] = 16
 main code      [0x000000010e3fa420,0x000000010e3fa480] = 96
 stub code      [0x000000010e3fa480,0x000000010e3fa498] = 24
 metadata       [0x000000010e3fa498,0x000000010e3fa4a0] = 8
 scopes data    [0x000000010e3fa4a0,0x000000010e3fa4c0] = 32
 scopes pcs     [0x000000010e3fa4c0,0x000000010e3fa530] = 112
 dependencies   [0x000000010e3fa530,0x000000010e3fa538] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000010e3fa420, 0x000000010e3fa498]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb95300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fa420: mov    0x8(%rsi),%r10d
  0x000000010e3fa424: movabs $0x800000000,%r12
  0x000000010e3fa42e: add    %r12,%r10
  0x000000010e3fa431: xor    %r12,%r12
  0x000000010e3fa434: cmp    %r10,%rax
  0x000000010e3fa437: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fa43d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3fa440: mov    %eax,-0x14000(%rsp)
  0x000000010e3fa447: push   %rbp
  0x000000010e3fa448: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000010e3fa44c: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000010e3fa451: test   %r11d,%r11d
  0x000000010e3fa454: jne    0x000000010e3fa46b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010e3fa456: mov    $0x1,%eax
  0x000000010e3fa45b: add    $0x10,%rsp
  0x000000010e3fa45f: pop    %rbp
  0x000000010e3fa460: mov    0x108(%r15),%r10
  0x000000010e3fa467: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fa46a: retq   
  0x000000010e3fa46b: mov    $0xffffff4d,%esi
  0x000000010e3fa470: mov    %r11d,%ebp
  0x000000010e3fa473: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fa478: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010e3fa47a: hlt    
  0x000000010e3fa47b: hlt    
  0x000000010e3fa47c: hlt    
  0x000000010e3fa47d: hlt    
  0x000000010e3fa47e: hlt    
  0x000000010e3fa47f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fa480: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fa485: callq  0x000000010e3fa48a
  0x000000010e3fa48a: subq   $0x5,(%rsp)
  0x000000010e3fa48f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fa494: hlt    
  0x000000010e3fa495: hlt    
  0x000000010e3fa496: hlt    
  0x000000010e3fa497: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f9fa0, 0x000000010e3f9fc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7af30} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000010e3f9fa0: mov    0x10(%rsp),%rbx
  0x000000010e3f9fa5: mov    0x24(%rbx),%ebx
  0x000000010e3f9fa8: shl    $0x3,%rbx
  0x000000010e3f9fac: mov    0x10(%rbx),%rbx
  0x000000010e3f9fb0: test   %rbx,%rbx
  0x000000010e3f9fb3: je     0x000000010e3f9fbc
  0x000000010e3f9fb9: jmpq   *0x38(%rbx)
  0x000000010e3f9fbc: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f9fc1: hlt    
  0x000000010e3f9fc2: hlt    
  0x000000010e3f9fc3: hlt    
  0x000000010e3f9fc4: hlt    
  0x000000010e3f9fc5: hlt    
  0x000000010e3f9fc6: hlt    
  0x000000010e3f9fc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x000000010e3f9da0, 0x000000010e3f9dd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7b048} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f9da0: mov    0x14(%rsi),%ebx
  0x000000010e3f9da3: shl    $0x3,%rbx
  0x000000010e3f9da7: mov    0x28(%rbx),%ebx
  0x000000010e3f9daa: shl    $0x3,%rbx
  0x000000010e3f9dae: mov    0x24(%rbx),%ebx
  0x000000010e3f9db1: shl    $0x3,%rbx
  0x000000010e3f9db5: mov    0x10(%rbx),%rbx
  0x000000010e3f9db9: test   %rbx,%rbx
  0x000000010e3f9dbc: je     0x000000010e3f9dc5
  0x000000010e3f9dc2: jmpq   *0x38(%rbx)
  0x000000010e3f9dc5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f9dca: hlt    
  0x000000010e3f9dcb: hlt    
  0x000000010e3f9dcc: hlt    
  0x000000010e3f9dcd: hlt    
  0x000000010e3f9dce: hlt    
  0x000000010e3f9dcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e3f9ba0, 0x000000010e3f9bc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7b160} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3f9ba0: cmp    (%rsi),%rax
  0x000000010e3f9ba3: mov    0x24(%r8),%ebx
  0x000000010e3f9ba7: shl    $0x3,%rbx
  0x000000010e3f9bab: mov    0x10(%rbx),%rbx
  0x000000010e3f9baf: test   %rbx,%rbx
  0x000000010e3f9bb2: je     0x000000010e3f9bbb
  0x000000010e3f9bb8: jmpq   *0x38(%rbx)
  0x000000010e3f9bbb: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3f99a0, 0x000000010e3f99d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7b2c8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000010e3f99a0: mov    0x14(%rsi),%ebx
  0x000000010e3f99a3: shl    $0x3,%rbx
  0x000000010e3f99a7: mov    0x28(%rbx),%ebx
  0x000000010e3f99aa: shl    $0x3,%rbx
  0x000000010e3f99ae: mov    0x24(%rbx),%ebx
  0x000000010e3f99b1: shl    $0x3,%rbx
  0x000000010e3f99b5: mov    0x10(%rbx),%rbx
  0x000000010e3f99b9: test   %rbx,%rbx
  0x000000010e3f99bc: je     0x000000010e3f99c5
  0x000000010e3f99c2: jmpq   *0x38(%rbx)
  0x000000010e3f99c5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f99ca: hlt    
  0x000000010e3f99cb: hlt    
  0x000000010e3f99cc: hlt    
  0x000000010e3f99cd: hlt    
  0x000000010e3f99ce: hlt    
  0x000000010e3f99cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3f9520, 0x000000010e3f9548]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7c268} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000010e3f9520: mov    0x18(%rsp),%rbx
  0x000000010e3f9525: mov    0x24(%rbx),%ebx
  0x000000010e3f9528: shl    $0x3,%rbx
  0x000000010e3f952c: mov    0x10(%rbx),%rbx
  0x000000010e3f9530: test   %rbx,%rbx
  0x000000010e3f9533: je     0x000000010e3f953c
  0x000000010e3f9539: jmpq   *0x38(%rbx)
  0x000000010e3f953c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f9541: hlt    
  0x000000010e3f9542: hlt    
  0x000000010e3f9543: hlt    
  0x000000010e3f9544: hlt    
  0x000000010e3f9545: hlt    
  0x000000010e3f9546: hlt    
  0x000000010e3f9547: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3f9320, 0x000000010e3f9350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7c3d0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000010e3f9320: mov    0x14(%rsi),%ebx
  0x000000010e3f9323: shl    $0x3,%rbx
  0x000000010e3f9327: mov    0x28(%rbx),%ebx
  0x000000010e3f932a: shl    $0x3,%rbx
  0x000000010e3f932e: mov    0x24(%rbx),%ebx
  0x000000010e3f9331: shl    $0x3,%rbx
  0x000000010e3f9335: mov    0x10(%rbx),%rbx
  0x000000010e3f9339: test   %rbx,%rbx
  0x000000010e3f933c: je     0x000000010e3f9345
  0x000000010e3f9342: jmpq   *0x38(%rbx)
  0x000000010e3f9345: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3f934a: hlt    
  0x000000010e3f934b: hlt    
  0x000000010e3f934c: hlt    
  0x000000010e3f934d: hlt    
  0x000000010e3f934e: hlt    
  0x000000010e3f934f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3fb920, 0x000000010e3fb948]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7e0b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = int
  # parm9:    [sp+0x18]   = 'java/lang/invoke/MemberName'
  0x000000010e3fb920: mov    0x20(%rsp),%rbx
  0x000000010e3fb925: mov    0x24(%rbx),%ebx
  0x000000010e3fb928: shl    $0x3,%rbx
  0x000000010e3fb92c: mov    0x10(%rbx),%rbx
  0x000000010e3fb930: test   %rbx,%rbx
  0x000000010e3fb933: je     0x000000010e3fb93c
  0x000000010e3fb939: jmpq   *0x38(%rbx)
  0x000000010e3fb93c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fb941: hlt    
  0x000000010e3fb942: hlt    
  0x000000010e3fb943: hlt    
  0x000000010e3fb944: hlt    
  0x000000010e3fb945: hlt    
  0x000000010e3fb946: hlt    
  0x000000010e3fb947: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000010e3fb720, 0x000000010e3fb750]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf7e220} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = int
  0x000000010e3fb720: mov    0x14(%rsi),%ebx
  0x000000010e3fb723: shl    $0x3,%rbx
  0x000000010e3fb727: mov    0x28(%rbx),%ebx
  0x000000010e3fb72a: shl    $0x3,%rbx
  0x000000010e3fb72e: mov    0x24(%rbx),%ebx
  0x000000010e3fb731: shl    $0x3,%rbx
  0x000000010e3fb735: mov    0x10(%rbx),%rbx
  0x000000010e3fb739: test   %rbx,%rbx
  0x000000010e3fb73c: je     0x000000010e3fb745
  0x000000010e3fb742: jmpq   *0x38(%rbx)
  0x000000010e3fb745: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fb74a: hlt    
  0x000000010e3fb74b: hlt    
  0x000000010e3fb74c: hlt    
  0x000000010e3fb74d: hlt    
  0x000000010e3fb74e: hlt    
  0x000000010e3fb74f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3fb020, 0x000000010e3fb048]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf80668} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = int
  # parm9:    [sp+0x18]   = int
  # parm10:   [sp+0x20]   = 'java/lang/invoke/MemberName'
  0x000000010e3fb020: mov    0x28(%rsp),%rbx
  0x000000010e3fb025: mov    0x24(%rbx),%ebx
  0x000000010e3fb028: shl    $0x3,%rbx
  0x000000010e3fb02c: mov    0x10(%rbx),%rbx
  0x000000010e3fb030: test   %rbx,%rbx
  0x000000010e3fb033: je     0x000000010e3fb03c
  0x000000010e3fb039: jmpq   *0x38(%rbx)
  0x000000010e3fb03c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fb041: hlt    
  0x000000010e3fb042: hlt    
  0x000000010e3fb043: hlt    
  0x000000010e3fb044: hlt    
  0x000000010e3fb045: hlt    
  0x000000010e3fb046: hlt    
  0x000000010e3fb047: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010e3fae20, 0x000000010e3fae50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf807d0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = int
  # parm9:    [sp+0x20]   = int
  0x000000010e3fae20: mov    0x14(%rsi),%ebx
  0x000000010e3fae23: shl    $0x3,%rbx
  0x000000010e3fae27: mov    0x28(%rbx),%ebx
  0x000000010e3fae2a: shl    $0x3,%rbx
  0x000000010e3fae2e: mov    0x24(%rbx),%ebx
  0x000000010e3fae31: shl    $0x3,%rbx
  0x000000010e3fae35: mov    0x10(%rbx),%rbx
  0x000000010e3fae39: test   %rbx,%rbx
  0x000000010e3fae3c: je     0x000000010e3fae45
  0x000000010e3fae42: jmpq   *0x38(%rbx)
  0x000000010e3fae45: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fae4a: hlt    
  0x000000010e3fae4b: hlt    
  0x000000010e3fae4c: hlt    
  0x000000010e3fae4d: hlt    
  0x000000010e3fae4e: hlt    
  0x000000010e3fae4f: hlt    
Compiled method (c2)     151   39             java.lang.String::charAt (25 bytes)
 total in heap  [0x000000010e3fa890,0x000000010e3fac38] = 936
 relocation     [0x000000010e3faa08,0x000000010e3faa18] = 16
 main code      [0x000000010e3faa20,0x000000010e3faac0] = 160
 stub code      [0x000000010e3faac0,0x000000010e3faad8] = 24
 metadata       [0x000000010e3faad8,0x000000010e3faaf0] = 24
 scopes data    [0x000000010e3faaf0,0x000000010e3fab50] = 96
 scopes pcs     [0x000000010e3fab50,0x000000010e3fac20] = 208
 dependencies   [0x000000010e3fac20,0x000000010e3fac28] = 8
 nul chk table  [0x000000010e3fac28,0x000000010e3fac38] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x000000010e3faa20, 0x000000010e3faad8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb904b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e3faa20: mov    0x8(%rsi),%r10d
  0x000000010e3faa24: movabs $0x800000000,%r12
  0x000000010e3faa2e: add    %r12,%r10
  0x000000010e3faa31: xor    %r12,%r12
  0x000000010e3faa34: cmp    %r10,%rax
  0x000000010e3faa37: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3faa3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3faa40: mov    %eax,-0x14000(%rsp)
  0x000000010e3faa47: push   %rbp
  0x000000010e3faa48: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000010e3faa4c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e3faa51: test   %r10d,%r10d
  0x000000010e3faa54: jne    0x000000010e3faa7d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e3faa56: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x000000010e3faa59: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000010e3faaa6
  0x000000010e3faa5e: cmp    %r10d,%edx
  0x000000010e3faa61: jae    0x000000010e3faa96
  0x000000010e3faa63: lea    (%r12,%rbp,8),%r10
  0x000000010e3faa67: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e3faa6d: add    $0x20,%rsp
  0x000000010e3faa71: pop    %rbp
  0x000000010e3faa72: mov    0x108(%r15),%r10
  0x000000010e3faa79: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3faa7c: retq   
  0x000000010e3faa7d: mov    %rsi,%rbp
  0x000000010e3faa80: mov    %edx,(%rsp)
  0x000000010e3faa83: mov    %r10d,0x4(%rsp)
  0x000000010e3faa88: mov    $0xffffff4d,%esi
  0x000000010e3faa8d: xchg   %ax,%ax
  0x000000010e3faa8f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3faa94: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e3faa96: mov    $0xffffffe5,%esi
  0x000000010e3faa9b: mov    %edx,0x4(%rsp)
  0x000000010e3faa9f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3faaa4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e3faaa6: mov    $0xfffffff6,%esi
  0x000000010e3faaab: mov    %edx,0x4(%rsp)
  0x000000010e3faaaf: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3faab4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e3faab6: hlt    
  0x000000010e3faab7: hlt    
  0x000000010e3faab8: hlt    
  0x000000010e3faab9: hlt    
  0x000000010e3faaba: hlt    
  0x000000010e3faabb: hlt    
  0x000000010e3faabc: hlt    
  0x000000010e3faabd: hlt    
  0x000000010e3faabe: hlt    
  0x000000010e3faabf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3faac0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3faac5: callq  0x000000010e3faaca
  0x000000010e3faaca: subq   $0x5,(%rsp)
  0x000000010e3faacf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3faad4: hlt    
  0x000000010e3faad5: hlt    
  0x000000010e3faad6: hlt    
  0x000000010e3faad7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     153   40             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x000000010e3fa590,0x000000010e3fa860] = 720
 relocation     [0x000000010e3fa708,0x000000010e3fa718] = 16
 main code      [0x000000010e3fa720,0x000000010e3fa780] = 96
 stub code      [0x000000010e3fa780,0x000000010e3fa798] = 24
 metadata       [0x000000010e3fa798,0x000000010e3fa7a0] = 8
 scopes data    [0x000000010e3fa7a0,0x000000010e3fa7c8] = 40
 scopes pcs     [0x000000010e3fa7c8,0x000000010e3fa848] = 128
 dependencies   [0x000000010e3fa848,0x000000010e3fa850] = 8
 nul chk table  [0x000000010e3fa850,0x000000010e3fa860] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x000000010e3fa720, 0x000000010e3fa798]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cce3988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e3fa720: mov    %eax,-0x14000(%rsp)
  0x000000010e3fa727: push   %rbp
  0x000000010e3fa728: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000010e3fa72c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000010e3fa75e
  0x000000010e3fa730: cmp    %r10d,%edx
  0x000000010e3fa733: jae    0x000000010e3fa74a
  0x000000010e3fa735: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000010e3fa73a: add    $0x20,%rsp
  0x000000010e3fa73e: pop    %rbp
  0x000000010e3fa73f: mov    0x108(%r15),%r10
  0x000000010e3fa746: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fa749: retq   
  0x000000010e3fa74a: mov    %rsi,%rbp
  0x000000010e3fa74d: mov    %edx,0x4(%rsp)
  0x000000010e3fa751: mov    $0xffffffe5,%esi
  0x000000010e3fa756: nop
  0x000000010e3fa757: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fa75c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010e3fa75e: mov    %rsi,%rbp
  0x000000010e3fa761: mov    %edx,0x4(%rsp)
  0x000000010e3fa765: mov    $0xfffffff6,%esi
  0x000000010e3fa76a: nop
  0x000000010e3fa76b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fa770: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010e3fa772: hlt    
  0x000000010e3fa773: hlt    
  0x000000010e3fa774: hlt    
  0x000000010e3fa775: hlt    
  0x000000010e3fa776: hlt    
  0x000000010e3fa777: hlt    
  0x000000010e3fa778: hlt    
  0x000000010e3fa779: hlt    
  0x000000010e3fa77a: hlt    
  0x000000010e3fa77b: hlt    
  0x000000010e3fa77c: hlt    
  0x000000010e3fa77d: hlt    
  0x000000010e3fa77e: hlt    
  0x000000010e3fa77f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fa780: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fa785: callq  0x000000010e3fa78a
  0x000000010e3fa78a: subq   $0x5,(%rsp)
  0x000000010e3fa78f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fa794: hlt    
  0x000000010e3fa795: hlt    
  0x000000010e3fa796: hlt    
  0x000000010e3fa797: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3feb20, 0x000000010e3feb48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf81ab0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = int
  # parm9:    [sp+0x18]   = int
  # parm10:   [sp+0x20]   = 'java/lang/Object'
  # parm11:   [sp+0x28]   = 'java/lang/invoke/MemberName'
  0x000000010e3feb20: mov    0x30(%rsp),%rbx
  0x000000010e3feb25: mov    0x24(%rbx),%ebx
  0x000000010e3feb28: shl    $0x3,%rbx
  0x000000010e3feb2c: mov    0x10(%rbx),%rbx
  0x000000010e3feb30: test   %rbx,%rbx
  0x000000010e3feb33: je     0x000000010e3feb3c
  0x000000010e3feb39: jmpq   *0x38(%rbx)
  0x000000010e3feb3c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3feb41: hlt    
  0x000000010e3feb42: hlt    
  0x000000010e3feb43: hlt    
  0x000000010e3feb44: hlt    
  0x000000010e3feb45: hlt    
  0x000000010e3feb46: hlt    
  0x000000010e3feb47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3fe920, 0x000000010e3fe950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf81bc8} 'invokeBasic' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3fe920: mov    0x14(%rsi),%ebx
  0x000000010e3fe923: shl    $0x3,%rbx
  0x000000010e3fe927: mov    0x28(%rbx),%ebx
  0x000000010e3fe92a: shl    $0x3,%rbx
  0x000000010e3fe92e: mov    0x24(%rbx),%ebx
  0x000000010e3fe931: shl    $0x3,%rbx
  0x000000010e3fe935: mov    0x10(%rbx),%rbx
  0x000000010e3fe939: test   %rbx,%rbx
  0x000000010e3fe93c: je     0x000000010e3fe945
  0x000000010e3fe942: jmpq   *0x38(%rbx)
  0x000000010e3fe945: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fe94a: hlt    
  0x000000010e3fe94b: hlt    
  0x000000010e3fe94c: hlt    
  0x000000010e3fe94d: hlt    
  0x000000010e3fe94e: hlt    
  0x000000010e3fe94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e3fe720, 0x000000010e3fe740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf81ce0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e3fe720: cmp    (%rsi),%rax
  0x000000010e3fe723: mov    0x24(%rcx),%ebx
  0x000000010e3fe726: shl    $0x3,%rbx
  0x000000010e3fe72a: mov    0x10(%rbx),%rbx
  0x000000010e3fe72e: test   %rbx,%rbx
  0x000000010e3fe731: je     0x000000010e3fe73a
  0x000000010e3fe737: jmpq   *0x38(%rbx)
  0x000000010e3fe73a: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fe73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000010e3fe520, 0x000000010e3fe550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cf81e98} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  # parm8:    [sp+0x18]   = int
  # parm9:    [sp+0x20]   = int
  # parm10:   [sp+0x28]   = 'java/lang/Object'
  0x000000010e3fe520: mov    0x14(%rsi),%ebx
  0x000000010e3fe523: shl    $0x3,%rbx
  0x000000010e3fe527: mov    0x28(%rbx),%ebx
  0x000000010e3fe52a: shl    $0x3,%rbx
  0x000000010e3fe52e: mov    0x24(%rbx),%ebx
  0x000000010e3fe531: shl    $0x3,%rbx
  0x000000010e3fe535: mov    0x10(%rbx),%rbx
  0x000000010e3fe539: test   %rbx,%rbx
  0x000000010e3fe53c: je     0x000000010e3fe545
  0x000000010e3fe542: jmpq   *0x38(%rbx)
  0x000000010e3fe545: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e3fe54a: hlt    
  0x000000010e3fe54b: hlt    
  0x000000010e3fe54c: hlt    
  0x000000010e3fe54d: hlt    
  0x000000010e3fe54e: hlt    
  0x000000010e3fe54f: hlt    
Compiled method (c2)     164   45             java.lang.String::coder (15 bytes)
 total in heap  [0x000000010e3fca90,0x000000010e3fccd8] = 584
 relocation     [0x000000010e3fcc08,0x000000010e3fcc18] = 16
 main code      [0x000000010e3fcc20,0x000000010e3fcc60] = 64
 stub code      [0x000000010e3fcc60,0x000000010e3fcc78] = 24
 metadata       [0x000000010e3fcc78,0x000000010e3fcc80] = 8
 scopes data    [0x000000010e3fcc80,0x000000010e3fcc90] = 16
 scopes pcs     [0x000000010e3fcc90,0x000000010e3fccd0] = 64
 dependencies   [0x000000010e3fccd0,0x000000010e3fccd8] = 8
----------------------------------------------------------------------
java/lang/String.coder()B  [0x000000010e3fcc20, 0x000000010e3fcc78]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb951a0} 'coder' '()B' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fcc20: mov    0x8(%rsi),%r10d
  0x000000010e3fcc24: movabs $0x800000000,%r12
  0x000000010e3fcc2e: add    %r12,%r10
  0x000000010e3fcc31: xor    %r12,%r12
  0x000000010e3fcc34: cmp    %r10,%rax
  0x000000010e3fcc37: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fcc3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3fcc40: sub    $0x18,%rsp
  0x000000010e3fcc47: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.String::coder@-1 (line 3258)

  0x000000010e3fcc4c: movsbl 0x14(%rsi),%eax    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)

  0x000000010e3fcc50: add    $0x10,%rsp
  0x000000010e3fcc54: pop    %rbp
  0x000000010e3fcc55: mov    0x108(%r15),%r10
  0x000000010e3fcc5c: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fcc5f: retq   
[Exception Handler]
[Stub Code]
  0x000000010e3fcc60: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fcc65: callq  0x000000010e3fcc6a
  0x000000010e3fcc6a: subq   $0x5,(%rsp)
  0x000000010e3fcc6f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fcc74: hlt    
  0x000000010e3fcc75: hlt    
  0x000000010e3fcc76: hlt    
  0x000000010e3fcc77: hlt    
Compiled method (c2)     172   46             java.lang.invoke.DirectMethodHandle::internalMemberName (8 bytes)
 total in heap  [0x000000010e3fc790,0x000000010e3fca70] = 736
 relocation     [0x000000010e3fc908,0x000000010e3fc918] = 16
 main code      [0x000000010e3fc920,0x000000010e3fc980] = 96
 stub code      [0x000000010e3fc980,0x000000010e3fc998] = 24
 metadata       [0x000000010e3fc998,0x000000010e3fc9a8] = 16
 scopes data    [0x000000010e3fc9a8,0x000000010e3fc9d8] = 48
 scopes pcs     [0x000000010e3fc9d8,0x000000010e3fca58] = 128
 dependencies   [0x000000010e3fca58,0x000000010e3fca60] = 8
 nul chk table  [0x000000010e3fca60,0x000000010e3fca70] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle.internalMemberName(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e3fc920, 0x000000010e3fc998]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cbfe3f8} 'internalMemberName' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fc920: mov    %eax,-0x14000(%rsp)
  0x000000010e3fc927: push   %rbp
  0x000000010e3fc928: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@-1 (line 310)

  0x000000010e3fc92c: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x000000010e3fc966
  0x000000010e3fc930: cmp    $0xc0e0,%r11d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e3fc937: jne    0x000000010e3fc954  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x000000010e3fc939: mov    0x1c(%rsi),%r11d
  0x000000010e3fc93d: mov    %r11,%rax
  0x000000010e3fc940: shl    $0x3,%rax          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)

  0x000000010e3fc944: add    $0x10,%rsp
  0x000000010e3fc948: pop    %rbp
  0x000000010e3fc949: mov    0x108(%r15),%r10
  0x000000010e3fc950: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fc953: retq   
  0x000000010e3fc954: mov    %rsi,%rbp
  0x000000010e3fc957: mov    $0xffffffde,%esi
  0x000000010e3fc95c: data16 xchg %ax,%ax
  0x000000010e3fc95f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fc964: ud2    
  0x000000010e3fc966: mov    $0xfffffff4,%esi
  0x000000010e3fc96b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fc970: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x000000010e3fc972: hlt    
  0x000000010e3fc973: hlt    
  0x000000010e3fc974: hlt    
  0x000000010e3fc975: hlt    
  0x000000010e3fc976: hlt    
  0x000000010e3fc977: hlt    
  0x000000010e3fc978: hlt    
  0x000000010e3fc979: hlt    
  0x000000010e3fc97a: hlt    
  0x000000010e3fc97b: hlt    
  0x000000010e3fc97c: hlt    
  0x000000010e3fc97d: hlt    
  0x000000010e3fc97e: hlt    
  0x000000010e3fc97f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fc980: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fc985: callq  0x000000010e3fc98a
  0x000000010e3fc98a: subq   $0x5,(%rsp)
  0x000000010e3fc98f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fc994: hlt    
  0x000000010e3fc995: hlt    
  0x000000010e3fc996: hlt    
  0x000000010e3fc997: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 68 
ImmutableOopMap{}pc offsets: 80 Compiled method (c2)     176   47             java.lang.String::length (11 bytes)
 total in heap  [0x000000010e3fc490,0x000000010e3fc750] = 704
 relocation     [0x000000010e3fc608,0x000000010e3fc618] = 16
 main code      [0x000000010e3fc620,0x000000010e3fc680] = 96
 stub code      [0x000000010e3fc680,0x000000010e3fc698] = 24
 metadata       [0x000000010e3fc698,0x000000010e3fc6a0] = 8
 scopes data    [0x000000010e3fc6a0,0x000000010e3fc6c8] = 40
 scopes pcs     [0x000000010e3fc6c8,0x000000010e3fc738] = 112
 dependencies   [0x000000010e3fc738,0x000000010e3fc740] = 8
 nul chk table  [0x000000010e3fc740,0x000000010e3fc750] = 16
----------------------------------------------------------------------
java/lang/String.length()I  [0x000000010e3fc620, 0x000000010e3fc698]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb90330} 'length' '()I' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fc620: mov    0x8(%rsi),%r10d
  0x000000010e3fc624: movabs $0x800000000,%r12
  0x000000010e3fc62e: add    %r12,%r10
  0x000000010e3fc631: xor    %r12,%r12
  0x000000010e3fc634: cmp    %r10,%rax
  0x000000010e3fc637: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fc63d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3fc640: mov    %eax,-0x14000(%rsp)
  0x000000010e3fc647: push   %rbp
  0x000000010e3fc648: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)

  0x000000010e3fc64c: mov    0xc(%rsi),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)

  0x000000010e3fc650: mov    0xc(%r12,%r11,8),%eax  ; implicit exception: dispatches to 0x000000010e3fc66b
  0x000000010e3fc655: movsbl 0x14(%rsi),%ecx
  0x000000010e3fc659: sar    %cl,%eax           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)

  0x000000010e3fc65b: add    $0x10,%rsp
  0x000000010e3fc65f: pop    %rbp
  0x000000010e3fc660: mov    0x108(%r15),%r10
  0x000000010e3fc667: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fc66a: retq   
  0x000000010e3fc66b: mov    $0xfffffff6,%esi
  0x000000010e3fc670: data16 xchg %ax,%ax
  0x000000010e3fc673: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fc678: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)

  0x000000010e3fc67a: hlt    
  0x000000010e3fc67b: hlt    
  0x000000010e3fc67c: hlt    
  0x000000010e3fc67d: hlt    
  0x000000010e3fc67e: hlt    
  0x000000010e3fc67f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fc680: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fc685: callq  0x000000010e3fc68a
  0x000000010e3fc68a: subq   $0x5,(%rsp)
  0x000000010e3fc68f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fc694: hlt    
  0x000000010e3fc695: hlt    
  0x000000010e3fc696: hlt    
  0x000000010e3fc697: hlt    

ImmutableOopMap{}pc offsets: 88 Compiled method (c2)     179   48             java.lang.Integer::stringSize (47 bytes)
 total in heap  [0x000000010e3fc090,0x000000010e3fc408] = 888
 relocation     [0x000000010e3fc208,0x000000010e3fc218] = 16
 main code      [0x000000010e3fc220,0x000000010e3fc2e0] = 192
 stub code      [0x000000010e3fc2e0,0x000000010e3fc2f8] = 24
 metadata       [0x000000010e3fc2f8,0x000000010e3fc300] = 8
 scopes data    [0x000000010e3fc300,0x000000010e3fc350] = 80
 scopes pcs     [0x000000010e3fc350,0x000000010e3fc400] = 176
 dependencies   [0x000000010e3fc400,0x000000010e3fc408] = 8
----------------------------------------------------------------------
java/lang/Integer.stringSize(I)I  [0x000000010e3fc220, 0x000000010e3fc2f8]  216 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cc83ea8} 'stringSize' '(I)I' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e3fc220: mov    %eax,-0x14000(%rsp)
  0x000000010e3fc227: push   %rbp
  0x000000010e3fc228: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::stringSize@-1 (line 535)

  0x000000010e3fc22c: test   %esi,%esi
  0x000000010e3fc22e: jl     0x000000010e3fc2a1  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@3 (line 536)

  0x000000010e3fc230: neg    %esi               ;*ineg {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@9 (line 538)

  0x000000010e3fc232: cmp    $0xfffffff6,%esi
  0x000000010e3fc235: jle    0x000000010e3fc23e
  0x000000010e3fc237: mov    $0x1,%eax
  0x000000010e3fc23c: jmp    0x000000010e3fc291
  0x000000010e3fc23e: mov    $0x2,%eax
  0x000000010e3fc243: cmp    $0xffffff9c,%esi
  0x000000010e3fc246: jg     0x000000010e3fc291
  0x000000010e3fc248: cmp    $0xfffffc18,%esi
  0x000000010e3fc24e: jg     0x000000010e3fc28f
  0x000000010e3fc250: mov    $0x4,%eax
  0x000000010e3fc255: cmp    $0xffffd8f0,%esi
  0x000000010e3fc25b: jg     0x000000010e3fc291
  0x000000010e3fc25d: cmp    $0xfffe7960,%esi
  0x000000010e3fc263: jg     0x000000010e3fc28f
  0x000000010e3fc265: mov    $0x6,%eax
  0x000000010e3fc26a: cmp    $0xfff0bdc0,%esi
  0x000000010e3fc270: jg     0x000000010e3fc291
  0x000000010e3fc272: cmp    $0xff676980,%esi
  0x000000010e3fc278: jg     0x000000010e3fc28f
  0x000000010e3fc27a: mov    $0x8,%eax
  0x000000010e3fc27f: cmp    $0xfa0a1f00,%esi
  0x000000010e3fc285: jg     0x000000010e3fc291
  0x000000010e3fc287: cmp    $0xc4653600,%esi
  0x000000010e3fc28d: jle    0x000000010e3fc2b2  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@24 (line 542)

  0x000000010e3fc28f: inc    %eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@36 (line 541)

  0x000000010e3fc291: add    $0x20,%rsp
  0x000000010e3fc295: pop    %rbp
  0x000000010e3fc296: mov    0x108(%r15),%r10
  0x000000010e3fc29d: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fc2a0: retq   
  0x000000010e3fc2a1: mov    %esi,(%rsp)
  0x000000010e3fc2a4: mov    $0xffffff4d,%esi
  0x000000010e3fc2a9: xchg   %ax,%ax
  0x000000010e3fc2ab: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@3 (line 536)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fc2b0: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@3 (line 536)

  0x000000010e3fc2b2: mov    %esi,%ebp
  0x000000010e3fc2b4: mov    $0xffffff4d,%esi
  0x000000010e3fc2b9: xchg   %ax,%ax
  0x000000010e3fc2bb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@19 (line 541)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fc2c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::stringSize@19 (line 541)

  0x000000010e3fc2c2: hlt    
  0x000000010e3fc2c3: hlt    
  0x000000010e3fc2c4: hlt    
  0x000000010e3fc2c5: hlt    
  0x000000010e3fc2c6: hlt    
  0x000000010e3fc2c7: hlt    
  0x000000010e3fc2c8: hlt    
  0x000000010e3fc2c9: hlt    
  0x000000010e3fc2ca: hlt    
  0x000000010e3fc2cb: hlt    
  0x000000010e3fc2cc: hlt    
  0x000000010e3fc2cd: hlt    
  0x000000010e3fc2ce: hlt    
  0x000000010e3fc2cf: hlt    
  0x000000010e3fc2d0: hlt    
  0x000000010e3fc2d1: hlt    
  0x000000010e3fc2d2: hlt    
  0x000000010e3fc2d3: hlt    
  0x000000010e3fc2d4: hlt    
  0x000000010e3fc2d5: hlt    
  0x000000010e3fc2d6: hlt    
  0x000000010e3fc2d7: hlt    
  0x000000010e3fc2d8: hlt    
  0x000000010e3fc2d9: hlt    
  0x000000010e3fc2da: hlt    
  0x000000010e3fc2db: hlt    
  0x000000010e3fc2dc: hlt    
  0x000000010e3fc2dd: hlt    
  0x000000010e3fc2de: hlt    
  0x000000010e3fc2df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fc2e0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fc2e5: callq  0x000000010e3fc2ea
  0x000000010e3fc2ea: subq   $0x5,(%rsp)
  0x000000010e3fc2ef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fc2f4: hlt    
  0x000000010e3fc2f5: hlt    
  0x000000010e3fc2f6: hlt    
  0x000000010e3fc2f7: hlt    

ImmutableOopMap{}pc offsets: 144 160 ----------------------------------------------------------------------
java/lang/System.arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V  [0x000000010e3fe140, 0x000000010e3fe350]  528 bytes
[Entry Point]
  # {method} {0x000000011cbae1c8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x60]  (sp of caller)
  0x000000010e3fe140: mov    0x8(%rsi),%r10d
  0x000000010e3fe144: movabs $0x800000000,%r12
  0x000000010e3fe14e: add    %r12,%r10
  0x000000010e3fe151: xor    %r12,%r12
  0x000000010e3fe154: cmp    %r10,%rax
  0x000000010e3fe157: je     0x000000010e3fe168
  0x000000010e3fe15d: jmpq   0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fe162: nopw   0x0(%rax,%rax,1)
[Verified Entry Point]
  0x000000010e3fe168: mov    %eax,-0x14000(%rsp)
  0x000000010e3fe16f: push   %rbp
  0x000000010e3fe170: mov    %rsp,%rbp
  0x000000010e3fe173: sub    $0x50,%rsp
  0x000000010e3fe177: mov    %r9,(%rsp)
  0x000000010e3fe17b: mov    %r8,%r9
  0x000000010e3fe17e: mov    %rcx,0x18(%rsp)
  0x000000010e3fe183: cmp    $0x0,%rcx
  0x000000010e3fe187: lea    0x18(%rsp),%r8
  0x000000010e3fe18c: cmove  0x18(%rsp),%r8
  0x000000010e3fe192: mov    %rdx,%rcx
  0x000000010e3fe195: mov    %rsi,0x8(%rsp)
  0x000000010e3fe19a: cmp    $0x0,%rsi
  0x000000010e3fe19e: lea    0x8(%rsp),%rdx
  0x000000010e3fe1a3: cmove  0x8(%rsp),%rdx
  0x000000010e3fe1a9: movabs $0x70ff00d60,%r14  ;   {oop(a 'java/lang/Class'{0x000000070ff00d60} = 'java/lang/System')}
  0x000000010e3fe1b3: mov    %r14,0x38(%rsp)
  0x000000010e3fe1b8: lea    0x38(%rsp),%r14
  0x000000010e3fe1bd: mov    %r14,%rsi          ; ImmutableOopMap{[24]=Oop [8]=Oop [56]=Oop }
  0x000000010e3fe1c0: vzeroupper 
  0x000000010e3fe1c3: movabs $0x10e3fe1c0,%r10  ;   {internal_word}
  0x000000010e3fe1cd: mov    %r10,0x328(%r15)
  0x000000010e3fe1d4: mov    %rsp,0x320(%r15)
  0x000000010e3fe1db: cmpb   $0x0,-0x90aca90(%rip)        # 0x0000000105351752
                                                ;   {external_word}
  0x000000010e3fe1e2: je     0x000000010e3fe226
  0x000000010e3fe1e8: push   %rsi
  0x000000010e3fe1e9: push   %rdx
  0x000000010e3fe1ea: push   %rcx
  0x000000010e3fe1eb: push   %r8
  0x000000010e3fe1ed: push   %r9
  0x000000010e3fe1ef: movabs $0x11cbae1c8,%rsi  ;   {metadata({method} {0x000000011cbae1c8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x000000010e3fe1f9: mov    %r15,%rdi
  0x000000010e3fe1fc: test   $0xf,%esp
  0x000000010e3fe202: je     0x000000010e3fe21a
  0x000000010e3fe208: sub    $0x8,%rsp
  0x000000010e3fe20c: callq  0x0000000104e8ea6a  ;   {runtime_call SharedRuntime::dtrace_method_entry(JavaThread*, Method*)}
  0x000000010e3fe211: add    $0x8,%rsp
  0x000000010e3fe215: jmpq   0x000000010e3fe21f
  0x000000010e3fe21a: callq  0x0000000104e8ea6a  ;   {runtime_call SharedRuntime::dtrace_method_entry(JavaThread*, Method*)}
  0x000000010e3fe21f: pop    %r9
  0x000000010e3fe221: pop    %r8
  0x000000010e3fe223: pop    %rcx
  0x000000010e3fe224: pop    %rdx
  0x000000010e3fe225: pop    %rsi
  0x000000010e3fe226: lea    0x340(%r15),%rdi
  0x000000010e3fe22d: movl   $0x4,0x3b8(%r15)
  0x000000010e3fe238: callq  0x0000000104c2d4cf  ;   {runtime_call JVM_ArrayCopy}
  0x000000010e3fe23d: vzeroupper 
  0x000000010e3fe240: movl   $0x5,0x3b8(%r15)
  0x000000010e3fe24b: lock addl $0x0,-0x40(%rsp)
  0x000000010e3fe251: testb  $0x8,0x108(%r15)
  0x000000010e3fe259: jne    0x000000010e3fe270
  0x000000010e3fe25f: cmpl   $0x0,0xd8(%r15)
  0x000000010e3fe26a: je     0x000000010e3fe28c
  0x000000010e3fe270: vzeroupper 
  0x000000010e3fe273: mov    %r15,%rdi
  0x000000010e3fe276: mov    %rsp,%r12
  0x000000010e3fe279: sub    $0x0,%rsp
  0x000000010e3fe27d: and    $0xfffffffffffffff0,%rsp
  0x000000010e3fe281: callq  0x0000000104f1ef18  ;   {runtime_call JavaThread::check_special_condition_for_native_trans(JavaThread*)}
  0x000000010e3fe286: mov    %r12,%rsp
  0x000000010e3fe289: xor    %r12,%r12
  0x000000010e3fe28c: movl   $0x8,0x3b8(%r15)
  0x000000010e3fe297: cmpl   $0x2,0x408(%r15)
  0x000000010e3fe2a2: je     0x000000010e3fe330
  0x000000010e3fe2a8: cmpb   $0x0,-0x90acb5d(%rip)        # 0x0000000105351752
                                                ;   {external_word}
  0x000000010e3fe2af: je     0x000000010e3fe2e5
  0x000000010e3fe2b5: movabs $0x11cbae1c8,%rsi  ;   {metadata({method} {0x000000011cbae1c8} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x000000010e3fe2bf: mov    %r15,%rdi
  0x000000010e3fe2c2: test   $0xf,%esp
  0x000000010e3fe2c8: je     0x000000010e3fe2e0
  0x000000010e3fe2ce: sub    $0x8,%rsp
  0x000000010e3fe2d2: callq  0x0000000104e8eae4  ;   {runtime_call SharedRuntime::dtrace_method_exit(JavaThread*, Method*)}
  0x000000010e3fe2d7: add    $0x8,%rsp
  0x000000010e3fe2db: jmpq   0x000000010e3fe2e5
  0x000000010e3fe2e0: callq  0x0000000104e8eae4  ;   {runtime_call SharedRuntime::dtrace_method_exit(JavaThread*, Method*)}
  0x000000010e3fe2e5: movabs $0x0,%r10
  0x000000010e3fe2ef: mov    %r10,0x320(%r15)
  0x000000010e3fe2f6: movabs $0x0,%r10
  0x000000010e3fe300: mov    %r10,0x328(%r15)
  0x000000010e3fe307: vzeroupper 
  0x000000010e3fe30a: mov    0xe0(%r15),%rcx
  0x000000010e3fe311: movl   $0x0,0x100(%rcx)
  0x000000010e3fe31b: leaveq 
  0x000000010e3fe31c: cmpq   $0x0,0x8(%r15)
  0x000000010e3fe324: jne    0x000000010e3fe32b
  0x000000010e3fe32a: retq   
  0x000000010e3fe32b: jmpq   Stub::forward exception  ;   {runtime_call StubRoutines (1)}
  0x000000010e3fe330: vzeroupper 
  0x000000010e3fe333: mov    %rsp,%r12
  0x000000010e3fe336: sub    $0x0,%rsp
  0x000000010e3fe33a: and    $0xfffffffffffffff0,%rsp
  0x000000010e3fe33e: callq  0x0000000104e9098a  ;   {runtime_call SharedRuntime::reguard_yellow_pages()}
  0x000000010e3fe343: mov    %r12,%rsp
  0x000000010e3fe346: xor    %r12,%r12
  0x000000010e3fe349: jmpq   0x000000010e3fe2a8
  0x000000010e3fe34e: hlt    
  0x000000010e3fe34f: hlt    
Compiled method (c2)     189   50             java.lang.String::<init> (15 bytes)
 total in heap  [0x000000010e3fdc10,0x000000010e3fdf38] = 808
 relocation     [0x000000010e3fdd88,0x000000010e3fdd98] = 16
 main code      [0x000000010e3fdda0,0x000000010e3fdec0] = 288
 stub code      [0x000000010e3fdec0,0x000000010e3fded8] = 24
 metadata       [0x000000010e3fded8,0x000000010e3fdee0] = 8
 scopes data    [0x000000010e3fdee0,0x000000010e3fdef0] = 16
 scopes pcs     [0x000000010e3fdef0,0x000000010e3fdf30] = 64
 dependencies   [0x000000010e3fdf30,0x000000010e3fdf38] = 8
----------------------------------------------------------------------
java/lang/String.<init>([BB)V  [0x000000010e3fdda0, 0x000000010e3fded8]  312 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb950e8} '<init>' '([BB)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = '[B'
  # parm1:    rcx       = byte
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fdda0: mov    0x8(%rsi),%r10d
  0x000000010e3fdda4: movabs $0x800000000,%r12
  0x000000010e3fddae: add    %r12,%r10
  0x000000010e3fddb1: xor    %r12,%r12
  0x000000010e3fddb4: cmp    %r10,%rax
  0x000000010e3fddb7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3fddbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3fddc0: sub    $0x18,%rsp
  0x000000010e3fddc7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.String::<init>@-1 (line 3252)

  0x000000010e3fddcc: mov    %ecx,%ebp
  0x000000010e3fddce: mov    %rdx,%rbx
  0x000000010e3fddd1: cmpb   $0x0,0x30(%r15)
  0x000000010e3fddd6: jne    0x000000010e3fde68
  0x000000010e3fdddc: mov    %rsi,%r13
  0x000000010e3fdddf: mov    %r13,%r10
  0x000000010e3fdde2: mov    %rbx,%r8
  0x000000010e3fdde5: shr    $0x3,%r8
  0x000000010e3fdde9: mov    %r8d,0xc(%r13)
  0x000000010e3fdded: mov    %rbx,%r11
  0x000000010e3fddf0: xor    %r10,%r11
  0x000000010e3fddf3: shr    $0x14,%r11
  0x000000010e3fddf7: test   %r11,%r11
  0x000000010e3fddfa: je     0x000000010e3fde54
  0x000000010e3fddfc: test   %rbx,%rbx
  0x000000010e3fddff: je     0x000000010e3fde54
  0x000000010e3fde01: shr    $0x9,%r10
  0x000000010e3fde05: movabs $0x10e38b000,%rdi
  0x000000010e3fde0f: add    %r10,%rdi
  0x000000010e3fde12: cmpb   $0x20,(%rdi)
  0x000000010e3fde15: je     0x000000010e3fde54
  0x000000010e3fde17: mov    0x70(%r15),%r10
  0x000000010e3fde1b: mov    0x80(%r15),%r11
  0x000000010e3fde22: lock addl $0x0,-0x40(%rsp)
  0x000000010e3fde28: cmpb   $0x0,(%rdi)
  0x000000010e3fde2b: je     0x000000010e3fde54
  0x000000010e3fde2d: movb   $0x0,(%rdi)
  0x000000010e3fde30: test   %r10,%r10
  0x000000010e3fde33: jne    0x000000010e3fde47
  0x000000010e3fde35: mov    %r15,%rsi
  0x000000010e3fde38: movabs $0x104b038ce,%r10
  0x000000010e3fde42: callq  *%r10
  0x000000010e3fde45: jmp    0x000000010e3fde54
  0x000000010e3fde47: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e3fde4c: add    $0xfffffffffffffff8,%r10
  0x000000010e3fde50: mov    %r10,0x70(%r15)
  0x000000010e3fde54: mov    %bpl,0x14(%r13)
  0x000000010e3fde58: add    $0x10,%rsp
  0x000000010e3fde5c: pop    %rbp
  0x000000010e3fde5d: mov    0x108(%r15),%r10
  0x000000010e3fde64: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fde67: retq   
  0x000000010e3fde68: mov    %rsi,%r13
  0x000000010e3fde6b: mov    0xc(%rsi),%r10d
  0x000000010e3fde6f: test   %r10d,%r10d
  0x000000010e3fde72: je     0x000000010e3fdddf
  0x000000010e3fde78: mov    0x38(%r15),%r11
  0x000000010e3fde7c: mov    %r10,%rdi
  0x000000010e3fde7f: shl    $0x3,%rdi
  0x000000010e3fde83: test   %r11,%r11
  0x000000010e3fde86: je     0x000000010e3fde9e
  0x000000010e3fde88: mov    0x48(%r15),%r10
  0x000000010e3fde8c: mov    %rdi,-0x8(%r10,%r11,1)
  0x000000010e3fde91: add    $0xfffffffffffffff8,%r11
  0x000000010e3fde95: mov    %r11,0x38(%r15)
  0x000000010e3fde99: jmpq   0x000000010e3fdddf
  0x000000010e3fde9e: mov    %r15,%rsi
  0x000000010e3fdea1: movabs $0x104b038aa,%r10
  0x000000010e3fdeab: callq  *%r10
  0x000000010e3fdeae: jmpq   0x000000010e3fdddf  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)

  0x000000010e3fdeb3: hlt    
  0x000000010e3fdeb4: hlt    
  0x000000010e3fdeb5: hlt    
  0x000000010e3fdeb6: hlt    
  0x000000010e3fdeb7: hlt    
  0x000000010e3fdeb8: hlt    
  0x000000010e3fdeb9: hlt    
  0x000000010e3fdeba: hlt    
  0x000000010e3fdebb: hlt    
  0x000000010e3fdebc: hlt    
  0x000000010e3fdebd: hlt    
  0x000000010e3fdebe: hlt    
  0x000000010e3fdebf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fdec0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fdec5: callq  0x000000010e3fdeca
  0x000000010e3fdeca: subq   $0x5,(%rsp)
  0x000000010e3fdecf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fded4: hlt    
  0x000000010e3fded5: hlt    
  0x000000010e3fded6: hlt    
  0x000000010e3fded7: hlt    
Compiled method (c2)     199   51             java.lang.Integer::getChars (131 bytes)
 total in heap  [0x000000010e3fd010,0x000000010e3fdbd8] = 3016
 relocation     [0x000000010e3fd188,0x000000010e3fd1a8] = 32
 main code      [0x000000010e3fd1c0,0x000000010e3fd560] = 928
 stub code      [0x000000010e3fd560,0x000000010e3fd578] = 24
 oops           [0x000000010e3fd578,0x000000010e3fd580] = 8
 metadata       [0x000000010e3fd580,0x000000010e3fd588] = 8
 scopes data    [0x000000010e3fd588,0x000000010e3fd708] = 384
 scopes pcs     [0x000000010e3fd708,0x000000010e3fdbb8] = 1200
 dependencies   [0x000000010e3fdbb8,0x000000010e3fdbc0] = 8
 nul chk table  [0x000000010e3fdbc0,0x000000010e3fdbd8] = 24
----------------------------------------------------------------------
java/lang/Integer.getChars(II[B)I  [0x000000010e3fd1c0, 0x000000010e3fd578]  952 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cc83da0} 'getChars' '(II[B)I' in 'java/lang/Integer'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = '[B'
  #           [sp+0x40]  (sp of caller)
  0x000000010e3fd1c0: mov    %eax,-0x14000(%rsp)
  0x000000010e3fd1c7: push   %rbp
  0x000000010e3fd1c8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::getChars@-1 (line 487)

  0x000000010e3fd1cc: mov    %edx,%eax
  0x000000010e3fd1ce: mov    %rcx,%r10
  0x000000010e3fd1d1: mov    %esi,%edx
  0x000000010e3fd1d3: test   %esi,%esi
  0x000000010e3fd1d5: jl     0x000000010e3fd4fa  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@4 (line 489)

  0x000000010e3fd1db: mov    %eax,%ebx
  0x000000010e3fd1dd: dec    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@44 (line 499)

  0x000000010e3fd1df: neg    %edx               ;*ineg {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@20 (line 491)

  0x000000010e3fd1e1: mov    %edx,%ecx
  0x000000010e3fd1e3: sar    $0x1f,%ecx         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd1e6: cmp    $0xffffff9c,%edx
  0x000000010e3fd1e9: jle    0x000000010e3fd1f3  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@25 (line 495)

  0x000000010e3fd1eb: mov    %r10,%r9
  0x000000010e3fd1ee: jmpq   0x000000010e3fd29f
  0x000000010e3fd1f3: mov    %r10,%r9
  0x000000010e3fd1f6: mov    0xc(%r10),%r10d    ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)
                                                ; implicit exception: dispatches to 0x000000010e3fd52e
  0x000000010e3fd1fa: movslq %edx,%r11
  0x000000010e3fd1fd: imul   $0x51eb851f,%r11,%r11
  0x000000010e3fd204: sar    $0x25,%r11
  0x000000010e3fd208: mov    %r11d,%edi
  0x000000010e3fd20b: sub    %ecx,%edi          ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd20d: imul   $0x64,%edi,%r8d
  0x000000010e3fd211: sub    %edx,%r8d          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@38 (line 497)

  0x000000010e3fd214: cmp    $0x64,%r8d
  0x000000010e3fd218: jae    0x000000010e3fd4b8
  0x000000010e3fd21e: movslq %r8d,%rdx
  0x000000010e3fd221: movabs $0x70ff08080,%r13  ;   {oop([B{0x000000070ff08080})}
  0x000000010e3fd22b: movsbl 0x10(%r13,%rdx,1),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)

  0x000000010e3fd231: cmp    %r10d,%ebx
  0x000000010e3fd234: jae    0x000000010e3fd4d8
  0x000000010e3fd23a: mov    %eax,%r11d
  0x000000010e3fd23d: mov    %cl,0xf(%r9,%r11,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)

  0x000000010e3fd242: mov    %r11d,%ebp
  0x000000010e3fd245: add    $0xfffffffe,%ebp   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@57 (line 500)

  0x000000010e3fd248: movabs $0x70ff08008,%rsi  ;   {oop([B{0x000000070ff08008})}
  0x000000010e3fd252: movsbl 0x10(%rsi,%rdx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@67 (line 500)

  0x000000010e3fd258: test   %ebp,%ebp
  0x000000010e3fd25a: jl     0x000000010e3fd45d
  0x000000010e3fd260: add    $0xfffffffc,%r11d
  0x000000010e3fd264: mov    %r10d,%ebx
  0x000000010e3fd267: dec    %ebx
  0x000000010e3fd269: cmp    %ebx,%r11d
  0x000000010e3fd26c: cmovg  %ebx,%r11d
  0x000000010e3fd270: mov    $0xffffffff,%ecx
  0x000000010e3fd275: cmp    %ecx,%r11d
  0x000000010e3fd278: cmovl  %ecx,%r11d         ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd27c: cmp    %r10d,%ebp
  0x000000010e3fd27f: jae    0x000000010e3fd461
  0x000000010e3fd285: movslq %ebp,%rax
  0x000000010e3fd288: mov    %r8b,0x10(%r9,%rax,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@68 (line 500)

  0x000000010e3fd28d: mov    %edi,%ecx
  0x000000010e3fd28f: sar    $0x1f,%ecx         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd292: mov    %ebp,%ebx
  0x000000010e3fd294: dec    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@44 (line 499)

  0x000000010e3fd296: cmp    $0xffffff9c,%edi
  0x000000010e3fd299: jle    0x000000010e3fd311
  0x000000010e3fd29b: mov    %edi,%edx
  0x000000010e3fd29d: mov    %ebp,%eax          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@25 (line 495)

  0x000000010e3fd29f: movslq %edx,%r10
  0x000000010e3fd2a2: imul   $0x66666667,%r10,%r10
  0x000000010e3fd2a9: sar    $0x22,%r10
  0x000000010e3fd2ad: mov    %r10d,%edi
  0x000000010e3fd2b0: sub    %ecx,%edi          ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@75 (line 504)

  0x000000010e3fd2b2: mov    %edi,%r11d
  0x000000010e3fd2b5: shl    $0x3,%r11d
  0x000000010e3fd2b9: mov    %edi,%r8d
  0x000000010e3fd2bc: shl    %r8d
  0x000000010e3fd2bf: add    %r11d,%r8d
  0x000000010e3fd2c2: sub    %edx,%r8d
  0x000000010e3fd2c5: add    $0x30,%r8d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@95 (line 506)

  0x000000010e3fd2c9: movsbl %r8b,%ebp          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@96 (line 506)

  0x000000010e3fd2cd: mov    0xc(%r9),%r10d     ; implicit exception: dispatches to 0x000000010e3fd51e
  0x000000010e3fd2d1: cmp    %r10d,%ebx
  0x000000010e3fd2d4: jae    0x000000010e3fd47a
  0x000000010e3fd2da: mov    %r8b,0x10(%r9,%rbx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@97 (line 506)

  0x000000010e3fd2df: test   %edi,%edi
  0x000000010e3fd2e1: jl     0x000000010e3fd2e7  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@99 (line 509)

  0x000000010e3fd2e3: mov    %ebx,%eax
  0x000000010e3fd2e5: jmp    0x000000010e3fd301
  0x000000010e3fd2e7: add    $0xfffffffe,%eax   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@103 (line 510)

  0x000000010e3fd2ea: mov    $0x30,%r8d
  0x000000010e3fd2f0: sub    %edi,%r8d          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@111 (line 510)

  0x000000010e3fd2f3: cmp    %r10d,%eax
  0x000000010e3fd2f6: jae    0x000000010e3fd496
  0x000000010e3fd2fc: mov    %r8b,0x10(%r9,%rax,1)  ;*synchronization entry
                                                ; - java.lang.Integer::getChars@-1 (line 487)

  0x000000010e3fd301: add    $0x30,%rsp
  0x000000010e3fd305: pop    %rbp
  0x000000010e3fd306: mov    0x108(%r15),%r10
  0x000000010e3fd30d: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fd310: retq                      ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd311: movslq %edi,%r8
  0x000000010e3fd314: imul   $0x51eb851f,%r8,%r8
  0x000000010e3fd31b: sar    $0x25,%r8
  0x000000010e3fd31f: mov    %r8d,%edx
  0x000000010e3fd322: sub    %ecx,%edx          ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd324: imul   $0x64,%edx,%r8d
  0x000000010e3fd328: sub    %edi,%r8d          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@38 (line 497)

  0x000000010e3fd32b: cmp    $0x64,%r8d
  0x000000010e3fd32f: jae    0x000000010e3fd4b2
  0x000000010e3fd335: movslq %r8d,%rdi
  0x000000010e3fd338: movsbl 0x10(%r13,%rdi,1),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)

  0x000000010e3fd33e: cmp    %r10d,%ebx
  0x000000010e3fd341: jae    0x000000010e3fd4d6
  0x000000010e3fd347: mov    %cl,0xf(%r9,%rax,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)

  0x000000010e3fd34c: movsbl 0x10(%rsi,%rdi,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@67 (line 500)

  0x000000010e3fd352: mov    %ebp,%eax
  0x000000010e3fd354: add    $0xfffffffe,%eax   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@57 (line 500)

  0x000000010e3fd357: cmp    %r11d,%eax
  0x000000010e3fd35a: jle    0x000000010e3fd376
  0x000000010e3fd35c: mov    %edx,%edi
  0x000000010e3fd35e: mov    %eax,%ebp
  0x000000010e3fd360: jmpq   0x000000010e3fd27c
  0x000000010e3fd365: data16 xchg %ax,%ax
  0x000000010e3fd368: mov    %edx,%edi
  0x000000010e3fd36a: jmpq   0x000000010e3fd3ea
  0x000000010e3fd36f: nop
  0x000000010e3fd370: mov    %edi,%edx
  0x000000010e3fd372: mov    %ebp,%eax
  0x000000010e3fd374: jmp    0x000000010e3fd37a
  0x000000010e3fd376: test   %eax,%eax
  0x000000010e3fd378: jle    0x000000010e3fd3d7  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd37a: mov    %eax,%ebx
  0x000000010e3fd37c: dec    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@44 (line 499)

  0x000000010e3fd37e: mov    %edx,%ecx
  0x000000010e3fd380: sar    $0x1f,%ecx         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd383: movslq %eax,%rbp
  0x000000010e3fd386: mov    %r8b,0x10(%r9,%rbp,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@68 (line 500)

  0x000000010e3fd38b: cmp    $0xffffff9c,%edx
  0x000000010e3fd38e: jg     0x000000010e3fd29f  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd394: movslq %edx,%r11
  0x000000010e3fd397: imul   $0x51eb851f,%r11,%r11
  0x000000010e3fd39e: sar    $0x25,%r11
  0x000000010e3fd3a2: mov    %r11d,%edi
  0x000000010e3fd3a5: sub    %ecx,%edi          ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd3a7: imul   $0x64,%edi,%r8d
  0x000000010e3fd3ab: sub    %edx,%r8d          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@38 (line 497)

  0x000000010e3fd3ae: cmp    $0x64,%r8d
  0x000000010e3fd3b2: jae    0x000000010e3fd4b4
  0x000000010e3fd3b8: movslq %r8d,%r8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)

  0x000000010e3fd3bb: movsbl 0x10(%r13,%r8,1),%r11d
  0x000000010e3fd3c1: mov    %r11b,0xf(%r9,%rbp,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)

  0x000000010e3fd3c6: movsbl 0x10(%rsi,%r8,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@67 (line 500)

  0x000000010e3fd3cc: mov    %eax,%ebp
  0x000000010e3fd3ce: add    $0xfffffffe,%ebp   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@57 (line 500)

  0x000000010e3fd3d1: test   %ebp,%ebp
  0x000000010e3fd3d3: jg     0x000000010e3fd370
  0x000000010e3fd3d5: jmp    0x000000010e3fd3e1
  0x000000010e3fd3d7: mov    %edx,%ebx
  0x000000010e3fd3d9: mov    %ebp,%edx
  0x000000010e3fd3db: mov    %ebx,%edi
  0x000000010e3fd3dd: mov    %eax,%ebp
  0x000000010e3fd3df: mov    %edx,%eax
  0x000000010e3fd3e1: cmp    $0xffffffff,%ebp
  0x000000010e3fd3e4: jle    0x000000010e3fd512  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd3ea: cmp    %r10d,%ebp
  0x000000010e3fd3ed: jae    0x000000010e3fd461
  0x000000010e3fd3ef: movslq %ebp,%r11
  0x000000010e3fd3f2: mov    %r8b,0x10(%r9,%r11,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@68 (line 500)

  0x000000010e3fd3f7: mov    %edi,%ecx
  0x000000010e3fd3f9: sar    $0x1f,%ecx         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd3fc: mov    %ebp,%ebx
  0x000000010e3fd3fe: dec    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@44 (line 499)

  0x000000010e3fd400: cmp    $0xffffff9c,%edi
  0x000000010e3fd403: jle    0x000000010e3fd40e  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@25 (line 495)

  0x000000010e3fd405: mov    %edi,%edx
  0x000000010e3fd407: mov    %ebp,%eax
  0x000000010e3fd409: jmpq   0x000000010e3fd29f  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@28 (line 496)

  0x000000010e3fd40e: movslq %edi,%r8
  0x000000010e3fd411: imul   $0x51eb851f,%r8,%r8
  0x000000010e3fd418: sar    $0x25,%r8
  0x000000010e3fd41c: mov    %r8d,%edx
  0x000000010e3fd41f: sub    %ecx,%edx          ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@31 (line 496)

  0x000000010e3fd421: imul   $0x64,%edx,%r8d
  0x000000010e3fd425: sub    %edi,%r8d          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@38 (line 497)

  0x000000010e3fd428: cmp    $0x64,%r8d
  0x000000010e3fd42c: jae    0x000000010e3fd4b6
  0x000000010e3fd432: movslq %r8d,%rdi
  0x000000010e3fd435: movsbl 0x10(%r13,%rdi,1),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)

  0x000000010e3fd43b: cmp    %r10d,%ebx
  0x000000010e3fd43e: jae    0x000000010e3fd4d6
  0x000000010e3fd444: mov    %cl,0xf(%r9,%r11,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)

  0x000000010e3fd449: movsbl 0x10(%rsi,%rdi,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@67 (line 500)

  0x000000010e3fd44f: add    $0xfffffffe,%ebp   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@57 (line 500)

  0x000000010e3fd452: cmp    $0xffffffff,%ebp
  0x000000010e3fd455: jg     0x000000010e3fd368
  0x000000010e3fd45b: jmp    0x000000010e3fd45f
  0x000000010e3fd45d: mov    %edi,%edx
  0x000000010e3fd45f: mov    %edx,%edi
  0x000000010e3fd461: mov    $0xffffffe4,%esi
  0x000000010e3fd466: mov    %edi,(%rsp)
  0x000000010e3fd469: mov    %r9,0x10(%rsp)
  0x000000010e3fd46e: mov    %r8d,0x18(%rsp)
  0x000000010e3fd473: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@68 (line 500)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd478: ud2    
  0x000000010e3fd47a: mov    $0xffffffe4,%esi
  0x000000010e3fd47f: mov    %edi,0x8(%rsp)
  0x000000010e3fd483: mov    %r9,0x10(%rsp)
  0x000000010e3fd488: mov    %ebx,0x18(%rsp)
  0x000000010e3fd48c: data16 xchg %ax,%ax
  0x000000010e3fd48f: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@97 (line 506)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd494: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@113 (line 510)

  0x000000010e3fd496: movsbl %r8b,%ebp          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@112 (line 510)

  0x000000010e3fd49a: mov    $0xffffffe4,%esi
  0x000000010e3fd49f: mov    %r9,0x10(%rsp)
  0x000000010e3fd4a4: mov    %eax,0xc(%rsp)
  0x000000010e3fd4a8: data16 xchg %ax,%ax
  0x000000010e3fd4ab: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@113 (line 510)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd4b0: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@113 (line 510)

  0x000000010e3fd4b2: mov    %edx,%edi
  0x000000010e3fd4b4: mov    %edi,%edx
  0x000000010e3fd4b6: mov    %edx,%edi
  0x000000010e3fd4b8: mov    $0xffffffe4,%esi
  0x000000010e3fd4bd: mov    %edi,%ebp
  0x000000010e3fd4bf: mov    %r9,0x10(%rsp)
  0x000000010e3fd4c4: mov    %ebx,0x18(%rsp)
  0x000000010e3fd4c8: mov    %r8d,0x1c(%rsp)
  0x000000010e3fd4cd: xchg   %ax,%ax
  0x000000010e3fd4cf: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd4d4: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@54 (line 499)

  0x000000010e3fd4d6: mov    %edx,%edi
  0x000000010e3fd4d8: mov    $0xffffffe4,%esi
  0x000000010e3fd4dd: mov    %edi,%ebp
  0x000000010e3fd4df: mov    %r8d,0x8(%rsp)
  0x000000010e3fd4e4: mov    %r9,0x10(%rsp)
  0x000000010e3fd4e9: mov    %ebx,0x18(%rsp)
  0x000000010e3fd4ed: mov    %ecx,0x1c(%rsp)
  0x000000010e3fd4f1: xchg   %ax,%ax
  0x000000010e3fd4f3: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd4f8: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@55 (line 499)

  0x000000010e3fd4fa: mov    $0xffffff4d,%esi
  0x000000010e3fd4ff: mov    %rcx,(%rsp)
  0x000000010e3fd503: mov    %eax,0x8(%rsp)
  0x000000010e3fd507: mov    %edx,0xc(%rsp)
  0x000000010e3fd50b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@4 (line 489)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd510: ud2                       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@4 (line 489)

  0x000000010e3fd512: mov    %eax,%ebp
  0x000000010e3fd514: add    $0xfffffffe,%ebp   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@57 (line 500)

  0x000000010e3fd517: mov    %edi,%edx
  0x000000010e3fd519: jmpq   0x000000010e3fd45f
  0x000000010e3fd51e: mov    $0xfffffff6,%esi
  0x000000010e3fd523: mov    %ebx,(%rsp)
  0x000000010e3fd526: nop
  0x000000010e3fd527: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@97 (line 506)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd52c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@97 (line 506)

  0x000000010e3fd52e: mov    $0xffffff7e,%esi
  0x000000010e3fd533: mov    %r9,(%rsp)
  0x000000010e3fd537: mov    %eax,0x8(%rsp)
  0x000000010e3fd53b: mov    %edx,0xc(%rsp)
  0x000000010e3fd53f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@25 (line 495)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fd544: ud2                       ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::getChars@75 (line 504)

  0x000000010e3fd546: hlt    
  0x000000010e3fd547: hlt    
  0x000000010e3fd548: hlt    
  0x000000010e3fd549: hlt    
  0x000000010e3fd54a: hlt    
  0x000000010e3fd54b: hlt    
  0x000000010e3fd54c: hlt    
  0x000000010e3fd54d: hlt    
  0x000000010e3fd54e: hlt    
  0x000000010e3fd54f: hlt    
  0x000000010e3fd550: hlt    
  0x000000010e3fd551: hlt    
  0x000000010e3fd552: hlt    
  0x000000010e3fd553: hlt    
  0x000000010e3fd554: hlt    
  0x000000010e3fd555: hlt    
  0x000000010e3fd556: hlt    
  0x000000010e3fd557: hlt    
  0x000000010e3fd558: hlt    
  0x000000010e3fd559: hlt    
  0x000000010e3fd55a: hlt    
  0x000000010e3fd55b: hlt    
  0x000000010e3fd55c: hlt    
  0x000000010e3fd55d: hlt    
  0x000000010e3fd55e: hlt    
  0x000000010e3fd55f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fd560: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fd565: callq  0x000000010e3fd56a
  0x000000010e3fd56a: subq   $0x5,(%rsp)
  0x000000010e3fd56f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fd574: hlt    
  0x000000010e3fd575: hlt    
  0x000000010e3fd576: hlt    
  0x000000010e3fd577: hlt    

ImmutableOopMap{[16]=Oop }pc offsets: 696 724 752 788 824 
ImmutableOopMap{[0]=Oop }pc offsets: 848 
ImmutableOopMap{}pc offsets: 876 
ImmutableOopMap{[0]=Oop }pc offsets: 900 Compiled method (c2)     214   52             java.lang.String::getBytes (44 bytes)
 total in heap  [0x000000010e400510,0x000000010e400990] = 1152
 relocation     [0x000000010e400688,0x000000010e4006a0] = 24
 main code      [0x000000010e4006a0,0x000000010e4007a0] = 256
 stub code      [0x000000010e4007a0,0x000000010e4007b8] = 24
 metadata       [0x000000010e4007b8,0x000000010e4007c8] = 16
 scopes data    [0x000000010e4007c8,0x000000010e400850] = 136
 scopes pcs     [0x000000010e400850,0x000000010e400970] = 288
 dependencies   [0x000000010e400970,0x000000010e400978] = 8
 nul chk table  [0x000000010e400978,0x000000010e400990] = 24
----------------------------------------------------------------------
java/lang/String.getBytes([BIB)V  [0x000000010e4006a0, 0x000000010e4007b8]  280 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb94d90} 'getBytes' '([BIB)V' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = '[B'
  # parm1:    rcx       = int
  # parm2:    r8        = byte
  #           [sp+0x40]  (sp of caller)
  0x000000010e4006a0: mov    0x8(%rsi),%r10d
  0x000000010e4006a4: movabs $0x800000000,%r12
  0x000000010e4006ae: add    %r12,%r10
  0x000000010e4006b1: xor    %r12,%r12
  0x000000010e4006b4: cmp    %r10,%rax
  0x000000010e4006b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4006bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4006c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4006c7: push   %rbp
  0x000000010e4006c8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.lang.String::getBytes@-1 (line 3191)

  0x000000010e4006cc: mov    %ecx,%r10d
  0x000000010e4006cf: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::getBytes@1 (line 3191)

  0x000000010e4006d4: cmp    %r8d,%r11d
  0x000000010e4006d7: jne    0x000000010e400752  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)

  0x000000010e4006d9: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@9 (line 3192)

  0x000000010e4006dc: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@21 (line 3192)
                                                ; implicit exception: dispatches to 0x000000010e400776
  0x000000010e4006e1: mov    %r8d,%ecx
  0x000000010e4006e4: shl    %cl,%r10d          ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@16 (line 3192)

  0x000000010e4006e7: mov    0xc(%rdx),%r11d    ; implicit exception: dispatches to 0x000000010e400786
  0x000000010e4006eb: test   %r10d,%r10d
  0x000000010e4006ee: jl     0x000000010e400733
  0x000000010e4006f0: mov    %r10d,%r8d
  0x000000010e4006f3: add    %ebp,%r8d
  0x000000010e4006f6: cmp    %r8d,%r11d
  0x000000010e4006f9: jb     0x000000010e400733  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)

  0x000000010e4006fb: test   %ebp,%ebp
  0x000000010e4006fd: jbe    0x000000010e400720
  0x000000010e4006ff: lea    0x10(%rdx,%r10,1),%rsi
  0x000000010e400704: lea    (%r12,%rbx,8),%r10  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@9 (line 3192)

  0x000000010e400708: lea    0x10(%r12,%rbx,8),%rdi
  0x000000010e40070d: movslq %ebp,%rdx
  0x000000010e400710: vzeroupper 
  0x000000010e400713: movabs $0x10e3c0cc0,%r10
  0x000000010e40071d: callq  *%r10
  0x000000010e400720: vzeroupper 
  0x000000010e400723: add    $0x30,%rsp
  0x000000010e400727: pop    %rbp
  0x000000010e400728: mov    0x108(%r15),%r10
  0x000000010e40072f: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e400732: retq   
  0x000000010e400733: mov    $0xffffffcc,%esi
  0x000000010e400738: mov    %rdx,(%rsp)
  0x000000010e40073c: mov    %r10d,0x8(%rsp)
  0x000000010e400741: mov    %ebx,0xc(%rsp)
  0x000000010e400745: data16 xchg %ax,%ax
  0x000000010e400748: vzeroupper 
  0x000000010e40074b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400750: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)

  0x000000010e400752: mov    %rsi,%rbp
  0x000000010e400755: mov    %rdx,(%rsp)
  0x000000010e400759: mov    %ecx,0x8(%rsp)
  0x000000010e40075d: mov    %r11d,0x10(%rsp)
  0x000000010e400762: mov    %r8d,0x14(%rsp)
  0x000000010e400767: mov    $0xffffff4d,%esi
  0x000000010e40076c: vzeroupper 
  0x000000010e40076f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400774: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)

  0x000000010e400776: mov    $0xfffffff6,%esi
  0x000000010e40077b: nop
  0x000000010e40077c: vzeroupper 
  0x000000010e40077f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@21 (line 3192)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400784: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@21 (line 3192)

  0x000000010e400786: mov    $0xfffffff6,%esi
  0x000000010e40078b: mov    %r10d,(%rsp)
  0x000000010e40078f: mov    %ebx,0x4(%rsp)
  0x000000010e400793: nop
  0x000000010e400794: vzeroupper 
  0x000000010e400797: callq  0x000000010e3b3900  ; ImmutableOopMap{[4]=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40079c: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)

  0x000000010e40079e: hlt    
  0x000000010e40079f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e4007a0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e4007a5: callq  0x000000010e4007aa
  0x000000010e4007aa: subq   $0x5,(%rsp)
  0x000000010e4007af: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4007b4: hlt    
  0x000000010e4007b5: hlt    
  0x000000010e4007b6: hlt    
  0x000000010e4007b7: hlt    

ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 176 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 212 
ImmutableOopMap{}pc offsets: 228 
ImmutableOopMap{[4]=NarrowOop }pc offsets: 252 Compiled method (c2)     218   53             java.util.ArrayList::add (25 bytes)
 total in heap  [0x000000010e401a90,0x000000010e402000] = 1392
 relocation     [0x000000010e401c08,0x000000010e401c20] = 24
 main code      [0x000000010e401c20,0x000000010e401de0] = 448
 stub code      [0x000000010e401de0,0x000000010e401df8] = 24
 metadata       [0x000000010e401df8,0x000000010e401e10] = 24
 scopes data    [0x000000010e401e10,0x000000010e401e98] = 136
 scopes pcs     [0x000000010e401e98,0x000000010e401fe8] = 336
 dependencies   [0x000000010e401fe8,0x000000010e401ff0] = 8
 nul chk table  [0x000000010e401ff0,0x000000010e402000] = 16
----------------------------------------------------------------------
java/util/ArrayList.add(Ljava/lang/Object;)Z  [0x000000010e401c20, 0x000000010e401df8]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cdbfc68} 'add' '(Ljava/lang/Object;)Z' in 'java/util/ArrayList'
  # this:     rsi:rsi   = 'java/util/ArrayList'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010e401c20: mov    0x8(%rsi),%r10d
  0x000000010e401c24: movabs $0x800000000,%r12
  0x000000010e401c2e: add    %r12,%r10
  0x000000010e401c31: xor    %r12,%r12
  0x000000010e401c34: cmp    %r10,%rax
  0x000000010e401c37: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e401c3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e401c40: mov    %eax,-0x14000(%rsp)
  0x000000010e401c47: push   %rbp
  0x000000010e401c48: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList::add@-1 (line 497)

  0x000000010e401c4c: mov    %rdx,%rbx
  0x000000010e401c4f: mov    %rsi,%r13
  0x000000010e401c52: mov    0x14(%rsi),%r11d   ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@13 (line 498)

  0x000000010e401c56: incl   0xc(%rsi)          ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@7 (line 497)

  0x000000010e401c59: mov    0xc(%r12,%r11,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@2 (line 484)
                                                ; - java.util.ArrayList::add@20 (line 498)
                                                ; implicit exception: dispatches to 0x000000010e401dc6
  0x000000010e401c5e: mov    0x10(%rsi),%ebp    ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@17 (line 498)

  0x000000010e401c61: cmp    %r8d,%ebp
  0x000000010e401c64: je     0x000000010e401da7  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401c6a: cmp    %r8d,%ebp
  0x000000010e401c6d: jae    0x000000010e401d5a
  0x000000010e401c73: mov    0x8(%r12,%r11,8),%r10d
  0x000000010e401c78: cmp    $0x14118,%r10d     ;   {metadata('java/lang/Object'[])}
  0x000000010e401c7f: jne    0x000000010e401d76  ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401c85: lea    (%r12,%r11,8),%r10  ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@13 (line 498)

  0x000000010e401c89: lea    0x10(%r10,%rbp,4),%r14
  0x000000010e401c8e: cmpb   $0x0,0x30(%r15)
  0x000000010e401c93: jne    0x000000010e401d28
  0x000000010e401c99: mov    %r14,%r10
  0x000000010e401c9c: mov    %rbx,%r8
  0x000000010e401c9f: shr    $0x3,%r8
  0x000000010e401ca3: mov    %r8d,(%r14)
  0x000000010e401ca6: mov    %rbx,%r11
  0x000000010e401ca9: xor    %r10,%r11
  0x000000010e401cac: shr    $0x14,%r11
  0x000000010e401cb0: test   %r11,%r11
  0x000000010e401cb3: je     0x000000010e401d0d
  0x000000010e401cb5: test   %rbx,%rbx
  0x000000010e401cb8: je     0x000000010e401d0d
  0x000000010e401cba: shr    $0x9,%r10
  0x000000010e401cbe: movabs $0x10e38b000,%rdi
  0x000000010e401cc8: add    %r10,%rdi
  0x000000010e401ccb: cmpb   $0x20,(%rdi)
  0x000000010e401cce: je     0x000000010e401d0d
  0x000000010e401cd0: mov    0x70(%r15),%r10
  0x000000010e401cd4: mov    0x80(%r15),%r11
  0x000000010e401cdb: lock addl $0x0,-0x40(%rsp)
  0x000000010e401ce1: cmpb   $0x0,(%rdi)
  0x000000010e401ce4: je     0x000000010e401d0d
  0x000000010e401ce6: movb   $0x0,(%rdi)
  0x000000010e401ce9: test   %r10,%r10
  0x000000010e401cec: jne    0x000000010e401d00
  0x000000010e401cee: mov    %r15,%rsi
  0x000000010e401cf1: movabs $0x104b038ce,%r10
  0x000000010e401cfb: callq  *%r10
  0x000000010e401cfe: jmp    0x000000010e401d0d
  0x000000010e401d00: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e401d05: add    $0xfffffffffffffff8,%r10
  0x000000010e401d09: mov    %r10,0x70(%r15)    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401d0d: inc    %ebp
  0x000000010e401d0f: mov    %ebp,0x10(%r13)    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@7 (line 497)

  0x000000010e401d13: mov    $0x1,%eax
  0x000000010e401d18: add    $0x30,%rsp
  0x000000010e401d1c: pop    %rbp
  0x000000010e401d1d: mov    0x108(%r15),%r10
  0x000000010e401d24: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e401d27: retq   
  0x000000010e401d28: mov    (%r14),%r10d
  0x000000010e401d2b: test   %r10d,%r10d
  0x000000010e401d2e: je     0x000000010e401c99
  0x000000010e401d34: mov    0x38(%r15),%r11
  0x000000010e401d38: mov    %r10,%rdi
  0x000000010e401d3b: shl    $0x3,%rdi
  0x000000010e401d3f: test   %r11,%r11
  0x000000010e401d42: je     0x000000010e401d92
  0x000000010e401d44: mov    0x48(%r15),%r10
  0x000000010e401d48: mov    %rdi,-0x8(%r10,%r11,1)
  0x000000010e401d4d: add    $0xfffffffffffffff8,%r11
  0x000000010e401d51: mov    %r11,0x38(%r15)
  0x000000010e401d55: jmpq   0x000000010e401c99  ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401d5a: mov    $0xffffffe4,%esi
  0x000000010e401d5f: mov    %r13,(%rsp)
  0x000000010e401d63: mov    %r11d,0x8(%rsp)
  0x000000010e401d68: mov    %rdx,0x10(%rsp)
  0x000000010e401d6d: xchg   %ax,%ax
  0x000000010e401d6f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop [16]=Oop }
                                                ;*aastore {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e401d74: ud2                       ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401d76: mov    $0xffffffd6,%esi
  0x000000010e401d7b: mov    %r13,(%rsp)
  0x000000010e401d7f: mov    %r11d,0x8(%rsp)
  0x000000010e401d84: mov    %rdx,0x10(%rsp)
  0x000000010e401d89: xchg   %ax,%ax
  0x000000010e401d8b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop [16]=Oop }
                                                ;*aastore {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e401d90: ud2    
  0x000000010e401d92: mov    %r15,%rsi
  0x000000010e401d95: movabs $0x104b038aa,%r10
  0x000000010e401d9f: callq  *%r10              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401da2: jmpq   0x000000010e401c99  ;*synchronization entry
                                                ; - java.util.ArrayList::add@-1 (line 484)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401da7: mov    $0xffffff4d,%esi
  0x000000010e401dac: mov    %r13,(%rsp)
  0x000000010e401db0: mov    %rdx,0x8(%rsp)
  0x000000010e401db5: mov    %r11d,0x10(%rsp)
  0x000000010e401dba: mov    %r8d,0x14(%rsp)
  0x000000010e401dbf: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)
                                                ; - java.util.ArrayList::add@20 (line 498)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e401dc4: ud2    
  0x000000010e401dc6: mov    $0xfffffff6,%esi
  0x000000010e401dcb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@2 (line 484)
                                                ; - java.util.ArrayList::add@20 (line 498)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e401dd0: ud2                       ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ; - java.util.ArrayList::add@20 (line 498)

  0x000000010e401dd2: hlt    
  0x000000010e401dd3: hlt    
  0x000000010e401dd4: hlt    
  0x000000010e401dd5: hlt    
  0x000000010e401dd6: hlt    
  0x000000010e401dd7: hlt    
  0x000000010e401dd8: hlt    
  0x000000010e401dd9: hlt    
  0x000000010e401dda: hlt    
  0x000000010e401ddb: hlt    
  0x000000010e401ddc: hlt    
  0x000000010e401ddd: hlt    
  0x000000010e401dde: hlt    
  0x000000010e401ddf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e401de0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e401de5: callq  0x000000010e401dea
  0x000000010e401dea: subq   $0x5,(%rsp)
  0x000000010e401def: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e401df4: hlt    
  0x000000010e401df5: hlt    
  0x000000010e401df6: hlt    
  0x000000010e401df7: hlt    

ImmutableOopMap{[0]=Oop [8]=NarrowOop [16]=Oop }pc offsets: 340 368 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=NarrowOop }pc offsets: 420 
ImmutableOopMap{}pc offsets: 432 Compiled method (c2)     224   54             java.util.ArrayList::add (23 bytes)
 total in heap  [0x000000010e401590,0x000000010e401a60] = 1232
 relocation     [0x000000010e401708,0x000000010e401720] = 24
 main code      [0x000000010e401720,0x000000010e4018c0] = 416
 stub code      [0x000000010e4018c0,0x000000010e4018d8] = 24
 metadata       [0x000000010e4018d8,0x000000010e4018e8] = 16
 scopes data    [0x000000010e4018e8,0x000000010e401948] = 96
 scopes pcs     [0x000000010e401948,0x000000010e401a48] = 256
 dependencies   [0x000000010e401a48,0x000000010e401a50] = 8
 nul chk table  [0x000000010e401a50,0x000000010e401a60] = 16
----------------------------------------------------------------------
java/util/ArrayList.add(Ljava/lang/Object;[Ljava/lang/Object;I)V  [0x000000010e401720, 0x000000010e4018d8]  440 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cdbfb98} 'add' '(Ljava/lang/Object;[Ljava/lang/Object;I)V' in 'java/util/ArrayList'
  # this:     rsi:rsi   = 'java/util/ArrayList'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = '[Ljava/lang/Object;'
  # parm2:    r8        = int
  #           [sp+0x40]  (sp of caller)
  0x000000010e401720: mov    0x8(%rsi),%r10d
  0x000000010e401724: movabs $0x800000000,%r12
  0x000000010e40172e: add    %r12,%r10
  0x000000010e401731: xor    %r12,%r12
  0x000000010e401734: cmp    %r10,%rax
  0x000000010e401737: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40173d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e401740: mov    %eax,-0x14000(%rsp)
  0x000000010e401747: push   %rbp
  0x000000010e401748: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList::add@-1 (line 484)

  0x000000010e40174c: mov    %rdx,%r13
  0x000000010e40174f: mov    %rsi,%rbp
  0x000000010e401752: mov    0xc(%rcx),%r11d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@2 (line 484)
                                                ; implicit exception: dispatches to 0x000000010e4018b2
  0x000000010e401756: mov    %r8d,%ebx
  0x000000010e401759: cmp    %r11d,%r8d
  0x000000010e40175c: je     0x000000010e401893  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)

  0x000000010e401762: cmp    %r11d,%r8d
  0x000000010e401765: jae    0x000000010e401847
  0x000000010e40176b: mov    0x8(%rcx),%r10d
  0x000000010e40176f: cmp    $0x14118,%r10d     ;   {metadata('java/lang/Object'[])}
  0x000000010e401776: jne    0x000000010e401862
  0x000000010e40177c: lea    0x10(%rcx,%r8,4),%r14
  0x000000010e401781: cmpb   $0x0,0x30(%r15)
  0x000000010e401786: jne    0x000000010e401815
  0x000000010e40178c: mov    %r14,%r10
  0x000000010e40178f: mov    %r13,%r11
  0x000000010e401792: shr    $0x3,%r11
  0x000000010e401796: mov    %r11d,(%r14)
  0x000000010e401799: mov    %r13,%r11
  0x000000010e40179c: xor    %r10,%r11
  0x000000010e40179f: shr    $0x14,%r11
  0x000000010e4017a3: test   %r11,%r11
  0x000000010e4017a6: je     0x000000010e401800
  0x000000010e4017a8: test   %r13,%r13
  0x000000010e4017ab: je     0x000000010e401800
  0x000000010e4017ad: shr    $0x9,%r10
  0x000000010e4017b1: movabs $0x10e38b000,%rdi
  0x000000010e4017bb: add    %r10,%rdi
  0x000000010e4017be: cmpb   $0x20,(%rdi)
  0x000000010e4017c1: je     0x000000010e401800
  0x000000010e4017c3: mov    0x70(%r15),%r10
  0x000000010e4017c7: mov    0x80(%r15),%r11
  0x000000010e4017ce: lock addl $0x0,-0x40(%rsp)
  0x000000010e4017d4: cmpb   $0x0,(%rdi)
  0x000000010e4017d7: je     0x000000010e401800
  0x000000010e4017d9: movb   $0x0,(%rdi)
  0x000000010e4017dc: test   %r10,%r10
  0x000000010e4017df: jne    0x000000010e4017f3
  0x000000010e4017e1: mov    %r15,%rsi
  0x000000010e4017e4: movabs $0x104b038ce,%r10
  0x000000010e4017ee: callq  *%r10
  0x000000010e4017f1: jmp    0x000000010e401800
  0x000000010e4017f3: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e4017f8: add    $0xfffffffffffffff8,%r10
  0x000000010e4017fc: mov    %r10,0x70(%r15)    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)

  0x000000010e401800: inc    %ebx
  0x000000010e401802: mov    %ebx,0x10(%rbp)    ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)

  0x000000010e401805: add    $0x30,%rsp
  0x000000010e401809: pop    %rbp
  0x000000010e40180a: mov    0x108(%r15),%r10
  0x000000010e401811: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e401814: retq   
  0x000000010e401815: mov    (%r14),%r11d
  0x000000010e401818: test   %r11d,%r11d
  0x000000010e40181b: je     0x000000010e40178c
  0x000000010e401821: mov    0x38(%r15),%r10
  0x000000010e401825: mov    %r11,%rdi
  0x000000010e401828: shl    $0x3,%rdi
  0x000000010e40182c: test   %r10,%r10
  0x000000010e40182f: je     0x000000010e40187e
  0x000000010e401831: mov    0x48(%r15),%r11
  0x000000010e401835: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e40183a: add    $0xfffffffffffffff8,%r10
  0x000000010e40183e: mov    %r10,0x38(%r15)    ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)

  0x000000010e401842: jmpq   0x000000010e40178c
  0x000000010e401847: mov    $0xffffffe4,%esi
  0x000000010e40184c: mov    %rcx,0x8(%rsp)
  0x000000010e401851: mov    %r8d,0x4(%rsp)
  0x000000010e401856: mov    %rdx,0x10(%rsp)
  0x000000010e40185b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }
                                                ;*aastore {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e401860: ud2                       ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)

  0x000000010e401862: mov    $0xffffffd6,%esi
  0x000000010e401867: mov    %rcx,0x8(%rsp)
  0x000000010e40186c: mov    %r8d,0x4(%rsp)
  0x000000010e401871: mov    %rdx,0x10(%rsp)
  0x000000010e401876: nop
  0x000000010e401877: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }
                                                ;*aastore {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40187c: ud2    
  0x000000010e40187e: mov    %r15,%rsi
  0x000000010e401881: movabs $0x104b038aa,%r10
  0x000000010e40188b: callq  *%r10              ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)

  0x000000010e40188e: jmpq   0x000000010e40178c
  0x000000010e401893: mov    $0xffffff4d,%esi
  0x000000010e401898: mov    %rdx,(%rsp)
  0x000000010e40189c: mov    %rcx,0x8(%rsp)
  0x000000010e4018a1: mov    %r8d,0x14(%rsp)
  0x000000010e4018a6: mov    %r11d,0x18(%rsp)
  0x000000010e4018ab: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4018b0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@3 (line 484)

  0x000000010e4018b2: mov    $0xfffffff6,%esi
  0x000000010e4018b7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@2 (line 484)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4018bc: ud2                       ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::add@14 (line 486)

  0x000000010e4018be: hlt    
  0x000000010e4018bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e4018c0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e4018c5: callq  0x000000010e4018ca
  0x000000010e4018ca: subq   $0x5,(%rsp)
  0x000000010e4018cf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4018d4: hlt    
  0x000000010e4018d5: hlt    
  0x000000010e4018d6: hlt    
  0x000000010e4018d7: hlt    

ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }pc offsets: 320 348 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop }pc offsets: 400 
ImmutableOopMap{}pc offsets: 412 Compiled method (c2)     228   55             java.lang.invoke.DirectMethodHandle$Holder::invokeStatic (15 bytes)
 total in heap  [0x000000010e401190,0x000000010e401528] = 920
 relocation     [0x000000010e401308,0x000000010e401328] = 32
 main code      [0x000000010e401340,0x000000010e4013c0] = 128
 stub code      [0x000000010e4013c0,0x000000010e4013e8] = 40
 metadata       [0x000000010e4013e8,0x000000010e401400] = 24
 scopes data    [0x000000010e401400,0x000000010e401458] = 88
 scopes pcs     [0x000000010e401458,0x000000010e4014f8] = 160
 dependencies   [0x000000010e4014f8,0x000000010e401500] = 8
 handler table  [0x000000010e401500,0x000000010e401518] = 24
 nul chk table  [0x000000010e401518,0x000000010e401528] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle$Holder.invokeStatic(Ljava/lang/Object;ILjava/lang/Object;)I  [0x000000010e401340, 0x000000010e4013e8]  168 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cec2f20} 'invokeStatic' '(Ljava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/DirectMethodHandle$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010e401340: mov    %eax,-0x14000(%rsp)
  0x000000010e401347: push   %rbp
  0x000000010e401348: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@-1

  0x000000010e40134c: mov    %rcx,%r10
  0x000000010e40134f: mov    0x8(%rsi),%r8d     ; implicit exception: dispatches to 0x000000010e4013ab
  0x000000010e401353: cmp    $0xc0e0,%r8d       ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e40135a: jne    0x000000010e401384  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e40135c: mov    0x1c(%rsi),%r8d
  0x000000010e401360: mov    %r8,%rcx
  0x000000010e401363: shl    $0x3,%rcx          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e401367: mov    %edx,%esi
  0x000000010e401369: mov    %r10,%rdx
  0x000000010e40136c: data16 xchg %ax,%ax
  0x000000010e40136f: callq  0x000000010e3b2400  ; ImmutableOopMap{}
                                                ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@11
                                                ;   {static_call}
  0x000000010e401374: add    $0x20,%rsp
  0x000000010e401378: pop    %rbp
  0x000000010e401379: mov    0x108(%r15),%r10
  0x000000010e401380: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e401383: retq   
  0x000000010e401384: mov    %edx,%ebp
  0x000000010e401386: mov    %rcx,(%rsp)
  0x000000010e40138a: mov    %rsi,0x8(%rsp)
  0x000000010e40138f: mov    $0xffffff6e,%esi
  0x000000010e401394: data16 xchg %ax,%ax
  0x000000010e401397: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40139c: ud2                       ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@11

  0x000000010e40139e: mov    %rax,%rsi
  0x000000010e4013a1: add    $0x20,%rsp
  0x000000010e4013a5: pop    %rbp
  0x000000010e4013a6: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e4013ab: mov    $0xffffff64,%esi
  0x000000010e4013b0: mov    %edx,%ebp
  0x000000010e4013b2: mov    %rcx,(%rsp)
  0x000000010e4013b6: nop
  0x000000010e4013b7: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4013bc: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e4013be: hlt    
  0x000000010e4013bf: hlt    
[Stub Code]
  0x000000010e4013c0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e4013ca: jmpq   0x000000010e4013ca  ;   {runtime_call}
[Exception Handler]
  0x000000010e4013cf: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e4013d4: callq  0x000000010e4013d9
  0x000000010e4013d9: subq   $0x5,(%rsp)
  0x000000010e4013de: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4013e3: hlt    
  0x000000010e4013e4: hlt    
  0x000000010e4013e5: hlt    
  0x000000010e4013e6: hlt    
  0x000000010e4013e7: hlt    

ImmutableOopMap{}pc offsets: 52 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 92 
ImmutableOopMap{[0]=Oop }pc offsets: 124 Compiled method (c2)     230   56             java.lang.invoke.DirectMethodHandle$Holder::invokeStatic (20 bytes)
 total in heap  [0x000000010e400d90,0x000000010e401150] = 960
 relocation     [0x000000010e400f08,0x000000010e400f28] = 32
 main code      [0x000000010e400f40,0x000000010e400fe0] = 160
 stub code      [0x000000010e400fe0,0x000000010e401008] = 40
 metadata       [0x000000010e401008,0x000000010e401020] = 24
 scopes data    [0x000000010e401020,0x000000010e401080] = 96
 scopes pcs     [0x000000010e401080,0x000000010e401120] = 160
 dependencies   [0x000000010e401120,0x000000010e401128] = 8
 handler table  [0x000000010e401128,0x000000010e401140] = 24
 nul chk table  [0x000000010e401140,0x000000010e401150] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle$Holder.invokeStatic(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)I  [0x000000010e400f40, 0x000000010e401008]  200 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cec2e60} 'invokeStatic' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/DirectMethodHandle$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010e400f40: mov    %eax,-0x14000(%rsp)
  0x000000010e400f47: push   %rbp
  0x000000010e400f48: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@-1

  0x000000010e400f4c: mov    %r9,%r10
  0x000000010e400f4f: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x000000010e400fb7
  0x000000010e400f53: cmp    $0xc0e0,%r11d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e400f5a: jne    0x000000010e400f88  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e400f5c: mov    0x1c(%rsi),%r11d
  0x000000010e400f60: mov    %r11,%r9
  0x000000010e400f63: shl    $0x3,%r9           ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e400f67: mov    %edx,%esi
  0x000000010e400f69: mov    %rcx,%rdx
  0x000000010e400f6c: mov    %r8d,%ecx
  0x000000010e400f6f: mov    %r10,%r8
  0x000000010e400f72: nop
  0x000000010e400f73: callq  0x000000010e3b2400  ; ImmutableOopMap{}
                                                ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@16
                                                ;   {static_call}
  0x000000010e400f78: add    $0x30,%rsp
  0x000000010e400f7c: pop    %rbp
  0x000000010e400f7d: mov    0x108(%r15),%r10
  0x000000010e400f84: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e400f87: retq   
  0x000000010e400f88: mov    %edx,%ebp
  0x000000010e400f8a: mov    %rcx,(%rsp)
  0x000000010e400f8e: mov    %r8d,0x8(%rsp)
  0x000000010e400f93: mov    %r9,0x10(%rsp)
  0x000000010e400f98: mov    %rsi,0x18(%rsp)
  0x000000010e400f9d: mov    $0xffffff6e,%esi
  0x000000010e400fa2: nop
  0x000000010e400fa3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400fa8: ud2                       ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@16

  0x000000010e400faa: mov    %rax,%rsi
  0x000000010e400fad: add    $0x30,%rsp
  0x000000010e400fb1: pop    %rbp
  0x000000010e400fb2: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e400fb7: mov    $0xffffff64,%esi
  0x000000010e400fbc: mov    %edx,%ebp
  0x000000010e400fbe: mov    %rcx,(%rsp)
  0x000000010e400fc2: mov    %r8d,0x8(%rsp)
  0x000000010e400fc7: mov    %r9,0x10(%rsp)
  0x000000010e400fcc: data16 xchg %ax,%ax
  0x000000010e400fcf: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400fd4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e400fd6: hlt    
  0x000000010e400fd7: hlt    
  0x000000010e400fd8: hlt    
  0x000000010e400fd9: hlt    
  0x000000010e400fda: hlt    
  0x000000010e400fdb: hlt    
  0x000000010e400fdc: hlt    
  0x000000010e400fdd: hlt    
  0x000000010e400fde: hlt    
  0x000000010e400fdf: hlt    
[Stub Code]
  0x000000010e400fe0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e400fea: jmpq   0x000000010e400fea  ;   {runtime_call}
[Exception Handler]
  0x000000010e400fef: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e400ff4: callq  0x000000010e400ff9
  0x000000010e400ff9: subq   $0x5,(%rsp)
  0x000000010e400ffe: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e401003: hlt    
  0x000000010e401004: hlt    
  0x000000010e401005: hlt    
  0x000000010e401006: hlt    
  0x000000010e401007: hlt    

ImmutableOopMap{}pc offsets: 56 
ImmutableOopMap{[0]=Oop [16]=Oop [24]=Oop }pc offsets: 104 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 148 Compiled method (c2)     234   57             java.lang.StringConcatHelper::prepend (16 bytes)
 total in heap  [0x000000010e403910,0x000000010e403e18] = 1288
 relocation     [0x000000010e403a88,0x000000010e403aa0] = 24
 main code      [0x000000010e403aa0,0x000000010e403ba0] = 256
 stub code      [0x000000010e403ba0,0x000000010e403bb8] = 24
 metadata       [0x000000010e403bb8,0x000000010e403bd8] = 32
 scopes data    [0x000000010e403bd8,0x000000010e403ca0] = 200
 scopes pcs     [0x000000010e403ca0,0x000000010e403df0] = 336
 dependencies   [0x000000010e403df0,0x000000010e403df8] = 8
 nul chk table  [0x000000010e403df8,0x000000010e403e18] = 32
----------------------------------------------------------------------
java/lang/StringConcatHelper.prepend(I[BBLjava/lang/String;)I  [0x000000010e403aa0, 0x000000010e403bb8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cf21fa0} 'prepend' '(I[BBLjava/lang/String;)I' in 'java/lang/StringConcatHelper'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = '[B'
  # parm2:    rcx       = byte
  # parm3:    r8:r8     = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x000000010e403aa0: mov    %eax,-0x14000(%rsp)
  0x000000010e403aa7: push   %rbp
  0x000000010e403aa8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.lang.StringConcatHelper::prepend@-1 (line 331)

  0x000000010e403aac: mov    %ecx,%r9d
  0x000000010e403aaf: mov    0xc(%r8),%r11d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)
                                                ; implicit exception: dispatches to 0x000000010e403b66
  0x000000010e403ab3: mov    0xc(%r12,%r11,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)
                                                ; implicit exception: dispatches to 0x000000010e403b76
  0x000000010e403ab8: movsbl 0x14(%r8),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)

  0x000000010e403abd: mov    %r10d,%eax
  0x000000010e403ac0: sar    %cl,%eax
  0x000000010e403ac2: mov    %esi,%ebx
  0x000000010e403ac4: sub    %eax,%ebx          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringConcatHelper::prepend@5 (line 331)

  0x000000010e403ac6: cmp    %r9d,%ecx
  0x000000010e403ac9: jne    0x000000010e403b42  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403acb: mov    %ebx,%ebp
  0x000000010e403acd: mov    %r9d,%ecx
  0x000000010e403ad0: shl    %cl,%ebp           ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@16 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403ad2: mov    0xc(%rdx),%r8d     ; implicit exception: dispatches to 0x000000010e403b86
  0x000000010e403ad6: test   %ebp,%ebp
  0x000000010e403ad8: jl     0x000000010e403b20
  0x000000010e403ada: mov    %ebp,%r9d
  0x000000010e403add: add    %r10d,%r9d
  0x000000010e403ae0: cmp    %r9d,%r8d
  0x000000010e403ae3: jb     0x000000010e403b20  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403ae5: test   %r10d,%r10d
  0x000000010e403ae8: jbe    0x000000010e403b0b
  0x000000010e403aea: lea    0x10(%rdx,%rbp,1),%rsi
  0x000000010e403aef: lea    (%r12,%r11,8),%r8  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)

  0x000000010e403af3: lea    0x10(%r12,%r11,8),%rdi
  0x000000010e403af8: movslq %r10d,%rdx
  0x000000010e403afb: vzeroupper 
  0x000000010e403afe: movabs $0x10e3c0cc0,%r10
  0x000000010e403b08: callq  *%r10
  0x000000010e403b0b: mov    %ebx,%eax
  0x000000010e403b0d: vzeroupper 
  0x000000010e403b10: add    $0x30,%rsp
  0x000000010e403b14: pop    %rbp
  0x000000010e403b15: mov    0x108(%r15),%r10
  0x000000010e403b1c: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e403b1f: retq   
  0x000000010e403b20: mov    $0xffffffcc,%esi
  0x000000010e403b25: mov    %r11d,(%rsp)
  0x000000010e403b29: mov    %rdx,0x8(%rsp)
  0x000000010e403b2e: mov    %ebx,0x4(%rsp)
  0x000000010e403b32: mov    %r10d,0x10(%rsp)
  0x000000010e403b37: nop
  0x000000010e403b38: vzeroupper 
  0x000000010e403b3b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403b40: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403b42: mov    $0xffffff4d,%esi
  0x000000010e403b47: mov    %r8,%rbp
  0x000000010e403b4a: mov    %rdx,(%rsp)
  0x000000010e403b4e: mov    %r9d,0xc(%rsp)
  0x000000010e403b53: mov    %ebx,0x14(%rsp)
  0x000000010e403b57: mov    %ecx,0x18(%rsp)
  0x000000010e403b5b: nop
  0x000000010e403b5c: vzeroupper 
  0x000000010e403b5f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403b64: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403b66: mov    $0xfffffff6,%esi
  0x000000010e403b6b: nop
  0x000000010e403b6c: vzeroupper 
  0x000000010e403b6f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403b74: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)

  0x000000010e403b76: mov    $0xfffffff6,%esi
  0x000000010e403b7b: nop
  0x000000010e403b7c: vzeroupper 
  0x000000010e403b7f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403b84: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.StringConcatHelper::prepend@2 (line 331)

  0x000000010e403b86: mov    $0xfffffff6,%esi
  0x000000010e403b8b: mov    %r11d,(%rsp)
  0x000000010e403b8f: mov    %r10d,0x4(%rsp)
  0x000000010e403b94: vzeroupper 
  0x000000010e403b97: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403b9c: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.StringConcatHelper::prepend@11 (line 332)

  0x000000010e403b9e: hlt    
  0x000000010e403b9f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e403ba0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e403ba5: callq  0x000000010e403baa
  0x000000010e403baa: subq   $0x5,(%rsp)
  0x000000010e403baf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e403bb4: hlt    
  0x000000010e403bb5: hlt    
  0x000000010e403bb6: hlt    
  0x000000010e403bb7: hlt    

ImmutableOopMap{[0]=NarrowOop [8]=Oop }pc offsets: 160 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 196 
ImmutableOopMap{}pc offsets: 212 228 
ImmutableOopMap{[0]=NarrowOop }pc offsets: 252 
Running the benchmark with a cold JVM
Compiled method (c2)     243   58             java.lang.StringLatin1::canEncode (13 bytes)
 total in heap  [0x000000010e3fcd10,0x000000010e3fcf98] = 648
 relocation     [0x000000010e3fce88,0x000000010e3fce98] = 16
 main code      [0x000000010e3fcea0,0x000000010e3fcee0] = 64
 stub code      [0x000000010e3fcee0,0x000000010e3fcef8] = 24
 metadata       [0x000000010e3fcef8,0x000000010e3fcf00] = 8
 scopes data    [0x000000010e3fcf00,0x000000010e3fcf20] = 32
 scopes pcs     [0x000000010e3fcf20,0x000000010e3fcf90] = 112
 dependencies   [0x000000010e3fcf90,0x000000010e3fcf98] = 8
----------------------------------------------------------------------
java/lang/StringLatin1.canEncode(I)Z  [0x000000010e3fcea0, 0x000000010e3fcef8]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cce3a38} 'canEncode' '(I)Z' in 'java/lang/StringLatin1'
  # parm0:    rsi       = int
  #           [sp+0x20]  (sp of caller)
  0x000000010e3fcea0: mov    %eax,-0x14000(%rsp)
  0x000000010e3fcea7: push   %rbp
  0x000000010e3fcea8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::canEncode@-1 (line 53)

  0x000000010e3fceac: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::canEncode@3 (line 53)

  0x000000010e3fceaf: test   %esi,%esi
  0x000000010e3fceb1: jne    0x000000010e3fcec8  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::canEncode@4 (line 53)

  0x000000010e3fceb3: mov    $0x1,%eax
  0x000000010e3fceb8: add    $0x10,%rsp
  0x000000010e3fcebc: pop    %rbp
  0x000000010e3fcebd: mov    0x108(%r15),%r10
  0x000000010e3fcec4: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3fcec7: retq   
  0x000000010e3fcec8: mov    %esi,%ebp
  0x000000010e3fceca: mov    $0xffffff4d,%esi
  0x000000010e3fcecf: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::canEncode@4 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3fced4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::canEncode@4 (line 53)

  0x000000010e3fced6: hlt    
  0x000000010e3fced7: hlt    
  0x000000010e3fced8: hlt    
  0x000000010e3fced9: hlt    
  0x000000010e3fceda: hlt    
  0x000000010e3fcedb: hlt    
  0x000000010e3fcedc: hlt    
  0x000000010e3fcedd: hlt    
  0x000000010e3fcede: hlt    
  0x000000010e3fcedf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e3fcee0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e3fcee5: callq  0x000000010e3fceea
  0x000000010e3fceea: subq   $0x5,(%rsp)
  0x000000010e3fceef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3fcef4: hlt    
  0x000000010e3fcef5: hlt    
  0x000000010e3fcef6: hlt    
  0x000000010e3fcef7: hlt    

ImmutableOopMap{}pc offsets: 52 Compiled method (c2)     251   59             java.lang.StringLatin1::indexOf (121 bytes)
 total in heap  [0x000000010e402a90,0x000000010e403898] = 3592
 relocation     [0x000000010e402c08,0x000000010e402c30] = 40
 main code      [0x000000010e402c40,0x000000010e403100] = 1216
 stub code      [0x000000010e403100,0x000000010e403118] = 24
 metadata       [0x000000010e403118,0x000000010e403120] = 8
 scopes data    [0x000000010e403120,0x000000010e403388] = 616
 scopes pcs     [0x000000010e403388,0x000000010e403878] = 1264
 dependencies   [0x000000010e403878,0x000000010e403880] = 8
 nul chk table  [0x000000010e403880,0x000000010e403898] = 24
----------------------------------------------------------------------
java/lang/StringLatin1.indexOf([BI[BII)I  [0x000000010e402c40, 0x000000010e403118]  1240 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cce4e68} 'indexOf' '([BI[BII)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = '[B'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x50]  (sp of caller)
  0x000000010e402c40: mov    %eax,-0x14000(%rsp)
  0x000000010e402c47: push   %rbp
  0x000000010e402c48: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::indexOf@-1 (line 234)

  0x000000010e402c4c: mov    %r9d,%r11d
  0x000000010e402c4f: mov    %r8d,%r13d
  0x000000010e402c52: mov    0xc(%rcx),%r8d     ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)
                                                ; implicit exception: dispatches to 0x000000010e4030cd
  0x000000010e402c56: mov    %r8d,0x8(%rsp)
  0x000000010e402c5b: test   %r8d,%r8d
  0x000000010e402c5e: jbe    0x000000010e402f36
  0x000000010e402c64: mov    %edx,%r9d
  0x000000010e402c67: sub    %r13d,%r9d         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@7 (line 235)

  0x000000010e402c6a: movsbl 0x10(%rcx),%r14d   ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)

  0x000000010e402c6f: mov    %r11d,%r10d
  0x000000010e402c72: cmp    %r9d,%r10d
  0x000000010e402c75: jg     0x000000010e403022  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@18 (line 236)

  0x000000010e402c7b: mov    0xc(%rsi),%edi     ; implicit exception: dispatches to 0x000000010e4030da
  0x000000010e402c7e: cmp    %edi,%r10d
  0x000000010e402c81: jae    0x000000010e402eba
  0x000000010e402c87: movsbl 0x10(%rsi,%r10,1),%ebp  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@24 (line 238)

  0x000000010e402c8d: cmp    %r14d,%ebp
  0x000000010e402c90: je     0x000000010e40304a  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@27 (line 238)

  0x000000010e402c96: mov    %r10d,%eax
  0x000000010e402c99: inc    %eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402c9b: cmp    %r9d,%eax
  0x000000010e402c9e: jg     0x000000010e403076  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402ca4: cmp    %edi,%eax
  0x000000010e402ca6: jae    0x000000010e402ee6
  0x000000010e402cac: movslq %edi,%r11
  0x000000010e402caf: mov    %r11,(%rsp)
  0x000000010e402cb3: mov    %r9d,%edx
  0x000000010e402cb6: inc    %edx
  0x000000010e402cb8: movslq %edx,%r11
  0x000000010e402cbb: dec    %r11
  0x000000010e402cbe: cmp    (%rsp),%r11
  0x000000010e402cc2: jae    0x000000010e402ee6
  0x000000010e402cc8: cmp    $0x7ffffffe,%r9d
  0x000000010e402ccf: jg     0x000000010e402f0e
  0x000000010e402cd5: add    $0x2,%r10d         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@40 (line 239)

  0x000000010e402cd9: movsbl 0x10(%rsi,%rax,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402cdf: mov    %eax,%ebx
  0x000000010e402ce1: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402ce3: cmp    %r14d,%r11d
  0x000000010e402ce6: je     0x000000010e402dcf  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402cec: cmp    %r10d,%ebx
  0x000000010e402cef: jge    0x000000010e402cf5  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402cf1: mov    %ebx,%eax
  0x000000010e402cf3: jmp    0x000000010e402cd9
  0x000000010e402cf5: mov    %r9d,%r10d
  0x000000010e402cf8: add    $0xfffffffe,%r10d
  0x000000010e402cfc: mov    $0x80000000,%r8d
  0x000000010e402d02: cmp    %r10d,%edx
  0x000000010e402d05: cmovl  %r8d,%r10d
  0x000000010e402d09: cmp    %r10d,%ebx
  0x000000010e402d0c: jge    0x000000010e402fa4
  0x000000010e402d12: mov    $0xfa0,%r11d
  0x000000010e402d18: mov    %r10d,%r8d
  0x000000010e402d1b: sub    %ebx,%r8d
  0x000000010e402d1e: cmp    %r11d,%r8d
  0x000000010e402d21: cmovg  %r11d,%r8d
  0x000000010e402d25: add    %ebx,%r8d
  0x000000010e402d28: vmovq  %rcx,%xmm2
  0x000000010e402d2d: jmp    0x000000010e402d35
  0x000000010e402d2f: nop
  0x000000010e402d30: vmovd  %xmm0,%r9d         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@40 (line 239)

  0x000000010e402d35: movsbl 0x10(%rsi,%rbx,1),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402d3a: vmovq  %rsi,%xmm1
  0x000000010e402d3f: mov    %ebx,%eax
  0x000000010e402d41: inc    %eax               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402d43: cmp    %r14d,%ecx
  0x000000010e402d46: je     0x000000010e402daa  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402d48: vmovd  %r9d,%xmm0
  0x000000010e402d4d: mov    %ebx,%ecx
  0x000000010e402d4f: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402d52: movslq %ebx,%r9
  0x000000010e402d55: movsbl 0x11(%rsi,%r9,1),%esi  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402d5b: cmp    %r14d,%esi
  0x000000010e402d5e: je     0x000000010e402dbe  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402d60: vmovq  %xmm1,%rsi
  0x000000010e402d65: movsbl 0x12(%rsi,%r9,1),%ebp  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402d6b: mov    %ebx,%eax
  0x000000010e402d6d: add    $0x3,%eax          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402d70: cmp    %r14d,%ebp
  0x000000010e402d73: je     0x000000010e402dae  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402d75: movsbl 0x13(%rsi,%r9,1),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402d7b: add    $0x4,%ebx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402d7e: cmp    %r14d,%ecx
  0x000000010e402d81: je     0x000000010e402dc5  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402d83: cmp    %r8d,%ebx
  0x000000010e402d86: jl     0x000000010e402d30  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402d88: mov    0x108(%r15),%r8    ; ImmutableOopMap{rsi=Oop xmm2=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@49 (line 239)

  0x000000010e402d8f: test   %eax,(%r8)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@49 (line 239)
                                                ;   {poll}
  0x000000010e402d92: cmp    %r10d,%ebx
  0x000000010e402d95: jge    0x000000010e402f9a
  0x000000010e402d9b: vmovd  %xmm0,%r9d
  0x000000010e402da0: vmovq  %xmm2,%rcx
  0x000000010e402da5: jmpq   0x000000010e402d18
  0x000000010e402daa: mov    %ebx,%ecx
  0x000000010e402dac: jmp    0x000000010e402db3
  0x000000010e402dae: vmovd  %xmm0,%r9d
  0x000000010e402db3: mov    %eax,%ebx
  0x000000010e402db5: mov    %ecx,%eax
  0x000000010e402db7: vmovq  %xmm1,%rsi
  0x000000010e402dbc: jmp    0x000000010e402dca
  0x000000010e402dbe: mov    %ecx,%ebx
  0x000000010e402dc0: vmovq  %xmm1,%rsi
  0x000000010e402dc5: vmovd  %xmm0,%r9d
  0x000000010e402dca: vmovq  %xmm2,%rcx
  0x000000010e402dcf: cmp    %r9d,%eax
  0x000000010e402dd2: jg     0x000000010e40309e  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@56 (line 242)

  0x000000010e402dd8: mov    %r13d,%ebp
  0x000000010e402ddb: add    %eax,%ebp          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402ddd: cmp    %ebp,%ebx
  0x000000010e402ddf: jl     0x000000010e402df9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@80 (line 245)

  0x000000010e402de1: cmp    %ebp,%ebx
  0x000000010e402de3: jne    0x000000010e402e8d  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@107 (line 246)

  0x000000010e402de9: add    $0x40,%rsp
  0x000000010e402ded: pop    %rbp
  0x000000010e402dee: mov    0x108(%r15),%r10
  0x000000010e402df5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e402df8: retq   
  0x000000010e402df9: cmp    %edi,%ebx
  0x000000010e402dfb: jae    0x000000010e402ff3
  0x000000010e402e01: movslq %ebp,%r11
  0x000000010e402e04: mov    %r11,%r10
  0x000000010e402e07: dec    %r10
  0x000000010e402e0a: cmp    (%rsp),%r10
  0x000000010e402e0e: jae    0x000000010e402ff3
  0x000000010e402e14: mov    %eax,%r10d
  0x000000010e402e17: neg    %r10d
  0x000000010e402e1a: movslq 0x8(%rsp),%r8
  0x000000010e402e1f: movslq %r10d,%r10
  0x000000010e402e22: movslq %ebx,%rdi
  0x000000010e402e25: add    %r10,%rdi
  0x000000010e402e28: cmp    %r8,%rdi
  0x000000010e402e2b: jae    0x000000010e402ff3
  0x000000010e402e31: add    %r10,%r11
  0x000000010e402e34: dec    %r11
  0x000000010e402e37: cmp    %r8,%r11
  0x000000010e402e3a: jae    0x000000010e402ff3
  0x000000010e402e40: mov    $0x3e8,%edi
  0x000000010e402e45: mov    %ebp,%r10d
  0x000000010e402e48: sub    %ebx,%r10d
  0x000000010e402e4b: cmp    %edi,%r10d
  0x000000010e402e4e: cmovg  %edi,%r10d
  0x000000010e402e52: add    %ebx,%r10d         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@83 (line 245)

  0x000000010e402e55: movsbl 0x10(%rsi,%rbx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@86 (line 245)

  0x000000010e402e5b: mov    %ebx,%edx
  0x000000010e402e5d: sub    %eax,%edx          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@83 (line 245)

  0x000000010e402e5f: movsbl 0x10(%rcx,%rdx,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@90 (line 245)

  0x000000010e402e65: cmp    %r11d,%r8d
  0x000000010e402e68: jne    0x000000010e402f5e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@91 (line 245)

  0x000000010e402e6e: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@94 (line 245)

  0x000000010e402e70: cmp    %r10d,%ebx
  0x000000010e402e73: jl     0x000000010e402e55  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@80 (line 245)

  0x000000010e402e75: mov    0x108(%r15),%r10
  0x000000010e402e7c: inc    %edx               ; ImmutableOopMap{rcx=Oop rsi=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@100 (line 245)

  0x000000010e402e7e: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@100 (line 245)
                                                ;   {poll}
  0x000000010e402e81: cmp    %ebp,%ebx
  0x000000010e402e83: jl     0x000000010e402e45
  0x000000010e402e85: cmp    %ebp,%ebx
  0x000000010e402e87: je     0x000000010e402de9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@80 (line 245)

  0x000000010e402e8d: mov    %rsi,(%rsp)
  0x000000010e402e91: mov    %rcx,0x8(%rsp)
  0x000000010e402e96: mov    %r14d,0x10(%rsp)
  0x000000010e402e9b: mov    %eax,0x14(%rsp)
  0x000000010e402e9f: mov    %ebx,0x18(%rsp)
  0x000000010e402ea3: mov    %r13d,0x1c(%rsp)
  0x000000010e402ea8: mov    %r9d,0x20(%rsp)
  0x000000010e402ead: mov    $0xffffff4d,%esi
  0x000000010e402eb2: nop
  0x000000010e402eb3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@107 (line 246)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402eb8: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@107 (line 246)

  0x000000010e402eba: mov    %rcx,(%rsp)
  0x000000010e402ebe: mov    %r14d,0x8(%rsp)
  0x000000010e402ec3: mov    %rsi,0x10(%rsp)
  0x000000010e402ec8: mov    %r13d,%r8d
  0x000000010e402ecb: mov    %r8d,0xc(%rsp)
  0x000000010e402ed0: mov    %r9d,0x18(%rsp)
  0x000000010e402ed5: mov    %r10d,0x20(%rsp)
  0x000000010e402eda: mov    $0xffffffe4,%esi
  0x000000010e402edf: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@24 (line 238)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402ee4: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@24 (line 238)

  0x000000010e402ee6: mov    %rsi,%rbp
  0x000000010e402ee9: mov    %rcx,(%rsp)
  0x000000010e402eed: mov    %r14d,0x8(%rsp)
  0x000000010e402ef2: mov    %eax,0x10(%rsp)
  0x000000010e402ef6: mov    %r13d,0x14(%rsp)
  0x000000010e402efb: mov    %r9d,0x1c(%rsp)
  0x000000010e402f00: mov    $0xffffff7e,%esi
  0x000000010e402f05: xchg   %ax,%ax
  0x000000010e402f07: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402f0c: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402f0e: mov    %rsi,%rbp
  0x000000010e402f11: mov    %rcx,(%rsp)
  0x000000010e402f15: mov    %r14d,0x8(%rsp)
  0x000000010e402f1a: mov    %eax,0x10(%rsp)
  0x000000010e402f1e: mov    %r13d,0x14(%rsp)
  0x000000010e402f23: mov    %r9d,0x1c(%rsp)
  0x000000010e402f28: mov    $0xffffff76,%esi
  0x000000010e402f2d: xchg   %ax,%ax
  0x000000010e402f2f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402f34: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402f36: mov    %rsi,%rbp
  0x000000010e402f39: mov    %rcx,0x8(%rsp)
  0x000000010e402f3e: mov    %edx,0x10(%rsp)
  0x000000010e402f42: mov    %r13d,%r8d
  0x000000010e402f45: mov    %r8d,0x14(%rsp)
  0x000000010e402f4a: mov    %r9d,0x18(%rsp)
  0x000000010e402f4f: mov    $0xffffffe4,%esi
  0x000000010e402f54: data16 xchg %ax,%ax
  0x000000010e402f57: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402f5c: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)

  0x000000010e402f5e: mov    %rsi,(%rsp)
  0x000000010e402f62: mov    %rcx,0x8(%rsp)
  0x000000010e402f67: mov    %r14d,0x10(%rsp)
  0x000000010e402f6c: mov    %eax,0x14(%rsp)
  0x000000010e402f70: mov    %ebx,0x18(%rsp)
  0x000000010e402f74: mov    %edx,0x1c(%rsp)
  0x000000010e402f78: mov    %r8d,0x20(%rsp)
  0x000000010e402f7d: mov    %r11d,0x24(%rsp)
  0x000000010e402f82: mov    %r13d,0x28(%rsp)
  0x000000010e402f87: mov    %r9d,0x2c(%rsp)
  0x000000010e402f8c: mov    $0xffffff4d,%esi
  0x000000010e402f91: xchg   %ax,%ax
  0x000000010e402f93: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@91 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402f98: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@91 (line 245)

  0x000000010e402f9a: vmovd  %xmm0,%r9d
  0x000000010e402f9f: vmovq  %xmm2,%rcx
  0x000000010e402fa4: cmp    %edx,%ebx
  0x000000010e402fa6: jge    0x000000010e4030c6
  0x000000010e402fac: jmp    0x000000010e402fb2
  0x000000010e402fae: xchg   %ax,%ax
  0x000000010e402fb0: mov    %ebp,%ebx          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@40 (line 239)

  0x000000010e402fb2: movsbl 0x10(%rsi,%rbx,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@43 (line 239)

  0x000000010e402fb8: mov    %ebx,%ebp
  0x000000010e402fba: inc    %ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@30 (line 239)

  0x000000010e402fbc: cmp    %r14d,%r11d
  0x000000010e402fbf: je     0x000000010e402fea  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@46 (line 239)

  0x000000010e402fc1: cmp    %edx,%ebp
  0x000000010e402fc3: jl     0x000000010e402fb0  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402fc5: mov    %rsi,(%rsp)
  0x000000010e402fc9: mov    %rcx,0x8(%rsp)
  0x000000010e402fce: mov    %r14d,0x10(%rsp)
  0x000000010e402fd3: mov    %r13d,0x14(%rsp)
  0x000000010e402fd8: mov    %r9d,0x1c(%rsp)
  0x000000010e402fdd: mov    $0xffffff4d,%esi
  0x000000010e402fe2: nop
  0x000000010e402fe3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e402fe8: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e402fea: mov    %ebx,%eax
  0x000000010e402fec: mov    %ebp,%ebx
  0x000000010e402fee: jmpq   0x000000010e402dcf
  0x000000010e402ff3: mov    %rsi,(%rsp)
  0x000000010e402ff7: mov    %rcx,0x8(%rsp)
  0x000000010e402ffc: mov    %r14d,0x10(%rsp)
  0x000000010e403001: mov    %eax,0x14(%rsp)
  0x000000010e403005: mov    %ebx,0x1c(%rsp)
  0x000000010e403009: mov    %r13d,0x20(%rsp)
  0x000000010e40300e: mov    %r9d,0x24(%rsp)
  0x000000010e403013: mov    $0xffffff7e,%esi
  0x000000010e403018: data16 xchg %ax,%ax
  0x000000010e40301b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@80 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403020: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@80 (line 245)

  0x000000010e403022: mov    %rsi,%rbp
  0x000000010e403025: mov    %rcx,(%rsp)
  0x000000010e403029: mov    %r14d,0x8(%rsp)
  0x000000010e40302e: mov    %r13d,0xc(%rsp)
  0x000000010e403033: mov    %r10d,0x18(%rsp)
  0x000000010e403038: mov    %r9d,0x1c(%rsp)
  0x000000010e40303d: mov    $0xffffff4d,%esi
  0x000000010e403042: nop
  0x000000010e403043: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@18 (line 236)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403048: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@18 (line 236)

  0x000000010e40304a: mov    %rsi,(%rsp)
  0x000000010e40304e: mov    %rcx,0x8(%rsp)
  0x000000010e403053: mov    %r14d,0x14(%rsp)
  0x000000010e403058: mov    %r13d,0x18(%rsp)
  0x000000010e40305d: mov    %r9d,0x1c(%rsp)
  0x000000010e403062: mov    %r10d,0x20(%rsp)
  0x000000010e403067: mov    $0xffffff4d,%esi
  0x000000010e40306c: data16 xchg %ax,%ax
  0x000000010e40306f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@27 (line 238)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e403074: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@27 (line 238)

  0x000000010e403076: mov    %rsi,%rbp
  0x000000010e403079: mov    %rcx,(%rsp)
  0x000000010e40307d: mov    %r14d,0x8(%rsp)
  0x000000010e403082: mov    %eax,0x10(%rsp)
  0x000000010e403086: mov    %r13d,0x14(%rsp)
  0x000000010e40308b: mov    %r9d,0x1c(%rsp)
  0x000000010e403090: mov    $0xffffff4d,%esi
  0x000000010e403095: xchg   %ax,%ax
  0x000000010e403097: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40309c: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@37 (line 239)

  0x000000010e40309e: mov    %rsi,%rbp
  0x000000010e4030a1: mov    %rcx,(%rsp)
  0x000000010e4030a5: mov    %r14d,0x8(%rsp)
  0x000000010e4030aa: mov    %eax,0x10(%rsp)
  0x000000010e4030ae: mov    %r13d,0x14(%rsp)
  0x000000010e4030b3: mov    %r9d,0x1c(%rsp)
  0x000000010e4030b8: mov    $0xffffff4d,%esi
  0x000000010e4030bd: xchg   %ax,%ax
  0x000000010e4030bf: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@56 (line 242)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4030c4: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@56 (line 242)

  0x000000010e4030c6: mov    %ebx,%ebp
  0x000000010e4030c8: jmpq   0x000000010e402fc5
  0x000000010e4030cd: mov    $0xfffffff6,%esi
  0x000000010e4030d2: nop
  0x000000010e4030d3: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4030d8: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@2 (line 234)

  0x000000010e4030da: mov    $0xfffffff6,%esi
  0x000000010e4030df: mov    %r10d,%ebp
  0x000000010e4030e2: nop
  0x000000010e4030e3: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@24 (line 238)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4030e8: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::indexOf@24 (line 238)

  0x000000010e4030ea: hlt    
  0x000000010e4030eb: hlt    
  0x000000010e4030ec: hlt    
  0x000000010e4030ed: hlt    
  0x000000010e4030ee: hlt    
  0x000000010e4030ef: hlt    
  0x000000010e4030f0: hlt    
  0x000000010e4030f1: hlt    
  0x000000010e4030f2: hlt    
  0x000000010e4030f3: hlt    
  0x000000010e4030f4: hlt    
  0x000000010e4030f5: hlt    
  0x000000010e4030f6: hlt    
  0x000000010e4030f7: hlt    
  0x000000010e4030f8: hlt    
  0x000000010e4030f9: hlt    
  0x000000010e4030fa: hlt    
  0x000000010e4030fb: hlt    
  0x000000010e4030fc: hlt    
  0x000000010e4030fd: hlt    
  0x000000010e4030fe: hlt    
  0x000000010e4030ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e403100: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e403105: callq  0x000000010e40310a
  0x000000010e40310a: subq   $0x5,(%rsp)
  0x000000010e40310f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e403114: hlt    
  0x000000010e403115: hlt    
  0x000000010e403116: hlt    
  0x000000010e403117: hlt    

ImmutableOopMap{rsi=Oop xmm2=Oop }pc offsets: 335 
ImmutableOopMap{rcx=Oop rsi=Oop }pc offsets: 574 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 632 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 676 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 716 756 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 796 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 856 936 992 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 1032 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 1076 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 1116 1156 
ImmutableOopMap{}pc offsets: 1176 1192 Compiled method (c2)     265   60             java.lang.AbstractStringBuilder::appendChars (133 bytes)
 total in heap  [0x000000010e402310,0x000000010e402a28] = 1816
 relocation     [0x000000010e402488,0x000000010e4024a0] = 24
 main code      [0x000000010e4024a0,0x000000010e4026e0] = 576
 stub code      [0x000000010e4026e0,0x000000010e4026f8] = 24
 metadata       [0x000000010e4026f8,0x000000010e402720] = 40
 scopes data    [0x000000010e402720,0x000000010e4027e0] = 192
 scopes pcs     [0x000000010e4027e0,0x000000010e402a00] = 544
 dependencies   [0x000000010e402a00,0x000000010e402a08] = 8
 nul chk table  [0x000000010e402a08,0x000000010e402a28] = 32
----------------------------------------------------------------------
java/lang/AbstractStringBuilder.appendChars(Ljava/lang/CharSequence;II)V  [0x000000010e4024a0, 0x000000010e4026f8]  600 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cc31a80} 'appendChars' '(Ljava/lang/CharSequence;II)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/CharSequence'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x50]  (sp of caller)
  0x000000010e4024a0: mov    0x8(%rsi),%r10d
  0x000000010e4024a4: movabs $0x800000000,%r12
  0x000000010e4024ae: add    %r12,%r10
  0x000000010e4024b1: xor    %r12,%r12
  0x000000010e4024b4: cmp    %r10,%rax
  0x000000010e4024b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4024bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4024c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4024c7: push   %rbp
  0x000000010e4024c8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::appendChars@-1 (line 1693)

  0x000000010e4024cc: movsbl 0x10(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)

  0x000000010e4024d1: test   %r10d,%r10d
  0x000000010e4024d4: jne    0x000000010e4026ae  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@4 (line 1693)

  0x000000010e4024da: mov    0xc(%rsi),%ebx     ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)

  0x000000010e4024dd: cmp    %r8d,%ecx
  0x000000010e4024e0: jge    0x000000010e40266c  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)

  0x000000010e4024e6: mov    0x14(%rsi),%ebp    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@8 (line 1694)

  0x000000010e4024e9: mov    %rdx,%r10
  0x000000010e4024ec: mov    0x8(%rdx),%r9d     ; implicit exception: dispatches to 0x000000010e402686
  0x000000010e4024f0: cmp    $0x1808,%r9d       ;   {metadata('java/lang/String')}
  0x000000010e4024f7: jne    0x000000010e402686
  0x000000010e4024fd: mov    %rdx,%r14          ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)

  0x000000010e402500: cmpb   $0x0,0x14(%r14)
  0x000000010e402505: jne    0x000000010e402686
  0x000000010e40250b: mov    0xc(%r14),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)

  0x000000010e40250f: mov    0xc(%r12,%r9,8),%edi  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; implicit exception: dispatches to 0x000000010e402686
  0x000000010e402514: cmp    %edi,%ecx
  0x000000010e402516: jae    0x000000010e402686
  0x000000010e40251c: movslq %r8d,%rdx
  0x000000010e40251f: movslq %edi,%r11
  0x000000010e402522: mov    %rdx,%rdi
  0x000000010e402525: dec    %rdi
  0x000000010e402528: cmp    %r11,%rdi
  0x000000010e40252b: jae    0x000000010e402686
  0x000000010e402531: mov    0xc(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x000000010e402686
  0x000000010e402536: mov    %ebx,%r13d
  0x000000010e402539: sub    %ecx,%r13d         ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)

  0x000000010e40253c: movslq %r11d,%r11
  0x000000010e40253f: movslq %r13d,%rdi
  0x000000010e402542: movslq %ecx,%rax
  0x000000010e402545: add    %rdi,%rax
  0x000000010e402548: cmp    %r11,%rax
  0x000000010e40254b: jae    0x000000010e402686
  0x000000010e402551: add    %rdi,%rdx
  0x000000010e402554: dec    %rdx
  0x000000010e402557: cmp    %r11,%rdx
  0x000000010e40255a: jae    0x000000010e402686
  0x000000010e402560: lea    (%r12,%r9,8),%rdi
  0x000000010e402564: lea    (%r12,%rbp,8),%r10  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@8 (line 1694)

  0x000000010e402568: mov    %ecx,%r9d
  0x000000010e40256b: inc    %r9d
  0x000000010e40256e: mov    %ecx,%ebp          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)

  0x000000010e402570: movsbl 0x10(%rdi,%rbp,1),%r11d
  0x000000010e402576: mov    %ebp,%edx
  0x000000010e402578: add    %r13d,%edx
  0x000000010e40257b: mov    %r11b,0x10(%r10,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)

  0x000000010e402580: inc    %ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)

  0x000000010e402582: cmp    %r9d,%ebp
  0x000000010e402585: jl     0x000000010e402570  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)

  0x000000010e402587: mov    %r8d,%r9d
  0x000000010e40258a: add    $0xfffffffd,%r9d
  0x000000010e40258e: mov    $0x80000000,%r11d
  0x000000010e402594: cmp    %r9d,%r8d
  0x000000010e402597: cmovl  %r11d,%r9d
  0x000000010e40259b: cmp    %r9d,%ebp
  0x000000010e40259e: jge    0x000000010e40264e
  0x000000010e4025a4: mov    $0xfa0,%eax        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)

  0x000000010e4025a9: jmp    0x000000010e4025bd
  0x000000010e4025ab: vmovd  %xmm0,%ebx
  0x000000010e4025af: vmovq  %xmm1,%rsi
  0x000000010e4025b4: vmovd  %xmm2,%ecx
  0x000000010e4025b8: vmovd  %xmm4,%r8d
  0x000000010e4025bd: mov    %r9d,%edx
  0x000000010e4025c0: sub    %ebp,%edx
  0x000000010e4025c2: cmp    %eax,%edx
  0x000000010e4025c4: cmovg  %eax,%edx
  0x000000010e4025c7: add    %ebp,%edx
  0x000000010e4025c9: vmovd  %ebx,%xmm0
  0x000000010e4025cd: vmovq  %rsi,%xmm1
  0x000000010e4025d2: vmovd  %ecx,%xmm2
  0x000000010e4025d6: vmovd  %r8d,%xmm4
  0x000000010e4025db: nopl   0x0(%rax,%rax,1)
  0x000000010e4025e0: movsbl 0x10(%rdi,%rbp,1),%ebx
  0x000000010e4025e5: mov    %ebp,%ecx
  0x000000010e4025e7: add    %r13d,%ecx
  0x000000010e4025ea: movslq %ebp,%r11
  0x000000010e4025ed: movslq %ecx,%rsi
  0x000000010e4025f0: mov    %ebp,%r8d
  0x000000010e4025f3: add    %r13d,%r8d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)

  0x000000010e4025f6: mov    %bl,0x10(%r10,%r8,1)
  0x000000010e4025fb: movslq %r8d,%r8
  0x000000010e4025fe: movsbl 0x11(%rdi,%r11,1),%ebx
  0x000000010e402604: mov    %bl,0x11(%r10,%r8,1)
  0x000000010e402609: movsbl 0x12(%rdi,%r11,1),%ebx
  0x000000010e40260f: mov    %bl,0x12(%r10,%rsi,1)
  0x000000010e402614: movsbl 0x13(%rdi,%r11,1),%r11d
  0x000000010e40261a: mov    %r11b,0x13(%r10,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)

  0x000000010e40261f: add    $0x4,%ebp          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)

  0x000000010e402622: cmp    %edx,%ebp
  0x000000010e402624: jl     0x000000010e4025e0  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)

  0x000000010e402626: mov    0x108(%r15),%r11
  0x000000010e40262d: add    $0x4,%ecx          ; ImmutableOopMap{r10=Oop rdi=Oop r14=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)

  0x000000010e402630: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)
                                                ;   {poll}
  0x000000010e402633: cmp    %r9d,%ebp
  0x000000010e402636: jl     0x000000010e4025ab
  0x000000010e40263c: vmovd  %xmm0,%ebx
  0x000000010e402640: vmovq  %xmm1,%rsi
  0x000000010e402645: vmovd  %xmm2,%ecx
  0x000000010e402649: vmovd  %xmm4,%r8d
  0x000000010e40264e: cmp    %r8d,%ebp
  0x000000010e402651: jge    0x000000010e40266c
  0x000000010e402653: nop                       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)

  0x000000010e402654: movsbl 0x10(%rdi,%rbp,1),%r9d
  0x000000010e40265a: mov    %ebp,%r11d
  0x000000010e40265d: add    %r13d,%r11d
  0x000000010e402660: mov    %r9b,0x10(%r10,%r11,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)

  0x000000010e402665: inc    %ebp               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)

  0x000000010e402667: cmp    %r8d,%ebp
  0x000000010e40266a: jl     0x000000010e402654  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)

  0x000000010e40266c: sub    %ecx,%r8d
  0x000000010e40266f: add    %ebx,%r8d
  0x000000010e402672: mov    %r8d,0xc(%rsi)     ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::appendChars@-1 (line 1693)

  0x000000010e402676: add    $0x40,%rsp
  0x000000010e40267a: pop    %rbp
  0x000000010e40267b: mov    0x108(%r15),%r10
  0x000000010e402682: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e402685: retq   
  0x000000010e402686: mov    %rsi,(%rsp)
  0x000000010e40268a: mov    %ecx,0x10(%rsp)
  0x000000010e40268e: mov    %ecx,0x14(%rsp)
  0x000000010e402692: mov    %r8d,0x18(%rsp)
  0x000000010e402697: mov    %r10,0x20(%rsp)
  0x000000010e40269c: mov    %ebx,0x1c(%rsp)
  0x000000010e4026a0: mov    $0xffffff7e,%esi
  0x000000010e4026a5: xchg   %ax,%ax
  0x000000010e4026a7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop [32]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4026ac: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)

  0x000000010e4026ae: test   %r10d,%r10d
  0x000000010e4026b1: setne  %bpl
  0x000000010e4026b5: movzbl %bpl,%ebp
  0x000000010e4026b9: xor    $0x1,%ebp          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@18 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)

  0x000000010e4026bc: mov    %rsi,(%rsp)
  0x000000010e4026c0: mov    %ecx,0x8(%rsp)
  0x000000010e4026c4: mov    %r8d,0xc(%rsp)
  0x000000010e4026c9: mov    %rdx,0x10(%rsp)
  0x000000010e4026ce: mov    $0xffffff4d,%esi
  0x000000010e4026d3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@4 (line 1693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4026d8: ud2                       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)

  0x000000010e4026da: hlt    
  0x000000010e4026db: hlt    
  0x000000010e4026dc: hlt    
  0x000000010e4026dd: hlt    
  0x000000010e4026de: hlt    
  0x000000010e4026df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e4026e0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e4026e5: callq  0x000000010e4026ea
  0x000000010e4026ea: subq   $0x5,(%rsp)
  0x000000010e4026ef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4026f4: hlt    
  0x000000010e4026f5: hlt    
  0x000000010e4026f6: hlt    
  0x000000010e4026f7: hlt    

ImmutableOopMap{r10=Oop rdi=Oop r14=Oop xmm1=Oop }pc offsets: 400 
ImmutableOopMap{rbp=NarrowOop [0]=Oop [32]=Oop }pc offsets: 524 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 568 Compiled method (c2)     279   61             java.lang.CharacterData::of (120 bytes)
 total in heap  [0x000000010e400a10,0x000000010e400cc8] = 696
 relocation     [0x000000010e400b88,0x000000010e400b98] = 16
 main code      [0x000000010e400ba0,0x000000010e400c00] = 96
 stub code      [0x000000010e400c00,0x000000010e400c18] = 24
 metadata       [0x000000010e400c18,0x000000010e400c30] = 24
 scopes data    [0x000000010e400c30,0x000000010e400c50] = 32
 scopes pcs     [0x000000010e400c50,0x000000010e400cc0] = 112
 dependencies   [0x000000010e400cc0,0x000000010e400cc8] = 8
----------------------------------------------------------------------
java/lang/CharacterData.of(I)Ljava/lang/CharacterData;  [0x000000010e400ba0, 0x000000010e400c18]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cd6b440} 'of' '(I)Ljava/lang/CharacterData;' in 'java/lang/CharacterData'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e400ba0: mov    %eax,-0x14000(%rsp)
  0x000000010e400ba7: push   %rbp
  0x000000010e400ba8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.CharacterData::of@-1 (line 80)

  0x000000010e400bac: mov    %esi,%r11d
  0x000000010e400baf: shr    $0x8,%r11d         ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)

  0x000000010e400bb3: test   %r11d,%r11d
  0x000000010e400bb6: jne    0x000000010e400bd2  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)

  0x000000010e400bb8: movabs $0x70ff20f50,%rax  ;   {oop(a 'java/lang/CharacterDataLatin1'{0x000000070ff20f50})}
  0x000000010e400bc2: add    $0x20,%rsp
  0x000000010e400bc6: pop    %rbp
  0x000000010e400bc7: mov    0x108(%r15),%r10
  0x000000010e400bce: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e400bd1: retq   
  0x000000010e400bd2: mov    %esi,%ebp
  0x000000010e400bd4: mov    %r11d,(%rsp)
  0x000000010e400bd8: mov    $0xffffff4d,%esi
  0x000000010e400bdd: xchg   %ax,%ax
  0x000000010e400bdf: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e400be4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)

  0x000000010e400be6: hlt    
  0x000000010e400be7: hlt    
  0x000000010e400be8: hlt    
  0x000000010e400be9: hlt    
  0x000000010e400bea: hlt    
  0x000000010e400beb: hlt    
  0x000000010e400bec: hlt    
  0x000000010e400bed: hlt    
  0x000000010e400bee: hlt    
  0x000000010e400bef: hlt    
  0x000000010e400bf0: hlt    
  0x000000010e400bf1: hlt    
  0x000000010e400bf2: hlt    
  0x000000010e400bf3: hlt    
  0x000000010e400bf4: hlt    
  0x000000010e400bf5: hlt    
  0x000000010e400bf6: hlt    
  0x000000010e400bf7: hlt    
  0x000000010e400bf8: hlt    
  0x000000010e400bf9: hlt    
  0x000000010e400bfa: hlt    
  0x000000010e400bfb: hlt    
  0x000000010e400bfc: hlt    
  0x000000010e400bfd: hlt    
  0x000000010e400bfe: hlt    
  0x000000010e400bff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e400c00: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e400c05: callq  0x000000010e400c0a
  0x000000010e400c0a: subq   $0x5,(%rsp)
  0x000000010e400c0f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e400c14: hlt    
  0x000000010e400c15: hlt    
  0x000000010e400c16: hlt    
  0x000000010e400c17: hlt    

ImmutableOopMap{}pc offsets: 68 Compiled method (c2)     281   62             java.lang.Character::isDigit (5 bytes)
 total in heap  [0x000000010e403e90,0x000000010e404218] = 904
 relocation     [0x000000010e404008,0x000000010e404018] = 16
 main code      [0x000000010e404020,0x000000010e4040a0] = 128
 stub code      [0x000000010e4040a0,0x000000010e4040b8] = 24
 metadata       [0x000000010e4040b8,0x000000010e4040e8] = 48
 scopes data    [0x000000010e4040e8,0x000000010e404150] = 104
 scopes pcs     [0x000000010e404150,0x000000010e404210] = 192
 dependencies   [0x000000010e404210,0x000000010e404218] = 8
----------------------------------------------------------------------
java/lang/Character.isDigit(C)Z  [0x000000010e404020, 0x000000010e4040b8]  152 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cc77058} 'isDigit' '(C)Z' in 'java/lang/Character'
  # parm0:    rsi       = char
  #           [sp+0x30]  (sp of caller)
  0x000000010e404020: mov    %eax,-0x14000(%rsp)
  0x000000010e404027: push   %rbp
  0x000000010e404028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9036)

  0x000000010e40402c: mov    %esi,%r10d
  0x000000010e40402f: shr    $0x8,%r10d         ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404033: test   %r10d,%r10d
  0x000000010e404036: jne    0x000000010e40405b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404038: cmp    $0x30,%esi
  0x000000010e40403b: jl     0x000000010e404072  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e40403d: cmp    $0x39,%esi
  0x000000010e404040: jg     0x000000010e404057  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404042: mov    $0x1,%eax          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@17 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404047: add    $0x20,%rsp
  0x000000010e40404b: pop    %rbp
  0x000000010e40404c: mov    0x108(%r15),%r10
  0x000000010e404053: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e404056: retq   
  0x000000010e404057: xor    %eax,%eax
  0x000000010e404059: jmp    0x000000010e404047
  0x000000010e40405b: mov    %esi,(%rsp)
  0x000000010e40405e: mov    %r10d,0x4(%rsp)
  0x000000010e404063: mov    $0xffffff4d,%esi
  0x000000010e404068: data16 xchg %ax,%ax
  0x000000010e40406b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e404070: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404072: mov    %esi,(%rsp)
  0x000000010e404075: mov    $0xffffff4d,%esi
  0x000000010e40407a: nop
  0x000000010e40407b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e404080: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)

  0x000000010e404082: hlt    
  0x000000010e404083: hlt    
  0x000000010e404084: hlt    
  0x000000010e404085: hlt    
  0x000000010e404086: hlt    
  0x000000010e404087: hlt    
  0x000000010e404088: hlt    
  0x000000010e404089: hlt    
  0x000000010e40408a: hlt    
  0x000000010e40408b: hlt    
  0x000000010e40408c: hlt    
  0x000000010e40408d: hlt    
  0x000000010e40408e: hlt    
  0x000000010e40408f: hlt    
  0x000000010e404090: hlt    
  0x000000010e404091: hlt    
  0x000000010e404092: hlt    
  0x000000010e404093: hlt    
  0x000000010e404094: hlt    
  0x000000010e404095: hlt    
  0x000000010e404096: hlt    
  0x000000010e404097: hlt    
  0x000000010e404098: hlt    
  0x000000010e404099: hlt    
  0x000000010e40409a: hlt    
  0x000000010e40409b: hlt    
  0x000000010e40409c: hlt    
  0x000000010e40409d: hlt    
  0x000000010e40409e: hlt    
  0x000000010e40409f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e4040a0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e4040a5: callq  0x000000010e4040aa
  0x000000010e4040aa: subq   $0x5,(%rsp)
  0x000000010e4040af: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4040b4: hlt    
  0x000000010e4040b5: hlt    
  0x000000010e4040b6: hlt    
  0x000000010e4040b7: hlt    

ImmutableOopMap{}pc offsets: 80 96 Compiled method (c2)     283   63             java.lang.Character::isDigit (9 bytes)
 total in heap  [0x000000010e405a90,0x000000010e405e08] = 888
 relocation     [0x000000010e405c08,0x000000010e405c18] = 16
 main code      [0x000000010e405c20,0x000000010e405ca0] = 128
 stub code      [0x000000010e405ca0,0x000000010e405cb8] = 24
 metadata       [0x000000010e405cb8,0x000000010e405ce0] = 40
 scopes data    [0x000000010e405ce0,0x000000010e405d40] = 96
 scopes pcs     [0x000000010e405d40,0x000000010e405e00] = 192
 dependencies   [0x000000010e405e00,0x000000010e405e08] = 8
----------------------------------------------------------------------
java/lang/Character.isDigit(I)Z  [0x000000010e405c20, 0x000000010e405cb8]  152 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cc77108} 'isDigit' '(I)Z' in 'java/lang/Character'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e405c20: mov    %eax,-0x14000(%rsp)
  0x000000010e405c27: push   %rbp
  0x000000010e405c28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9070)

  0x000000010e405c2c: mov    %esi,%r10d
  0x000000010e405c2f: shr    $0x8,%r10d         ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)

  0x000000010e405c33: test   %r10d,%r10d
  0x000000010e405c36: jne    0x000000010e405c5b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)

  0x000000010e405c38: cmp    $0x30,%esi
  0x000000010e405c3b: jl     0x000000010e405c72  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)

  0x000000010e405c3d: cmp    $0x39,%esi
  0x000000010e405c40: jg     0x000000010e405c57  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)

  0x000000010e405c42: mov    $0x1,%eax          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@17 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)

  0x000000010e405c47: add    $0x20,%rsp
  0x000000010e405c4b: pop    %rbp
  0x000000010e405c4c: mov    0x108(%r15),%r10
  0x000000010e405c53: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e405c56: retq   
  0x000000010e405c57: xor    %eax,%eax
  0x000000010e405c59: jmp    0x000000010e405c47
  0x000000010e405c5b: mov    %esi,(%rsp)
  0x000000010e405c5e: mov    %r10d,0x4(%rsp)
  0x000000010e405c63: mov    $0xffffff4d,%esi
  0x000000010e405c68: data16 xchg %ax,%ax
  0x000000010e405c6b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e405c70: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)

  0x000000010e405c72: mov    %esi,(%rsp)
  0x000000010e405c75: mov    $0xffffff4d,%esi
  0x000000010e405c7a: nop
  0x000000010e405c7b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e405c80: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)

  0x000000010e405c82: hlt    
  0x000000010e405c83: hlt    
  0x000000010e405c84: hlt    
  0x000000010e405c85: hlt    
  0x000000010e405c86: hlt    
  0x000000010e405c87: hlt    
  0x000000010e405c88: hlt    
  0x000000010e405c89: hlt    
  0x000000010e405c8a: hlt    
  0x000000010e405c8b: hlt    
  0x000000010e405c8c: hlt    
  0x000000010e405c8d: hlt    
  0x000000010e405c8e: hlt    
  0x000000010e405c8f: hlt    
  0x000000010e405c90: hlt    
  0x000000010e405c91: hlt    
  0x000000010e405c92: hlt    
  0x000000010e405c93: hlt    
  0x000000010e405c94: hlt    
  0x000000010e405c95: hlt    
  0x000000010e405c96: hlt    
  0x000000010e405c97: hlt    
  0x000000010e405c98: hlt    
  0x000000010e405c99: hlt    
  0x000000010e405c9a: hlt    
  0x000000010e405c9b: hlt    
  0x000000010e405c9c: hlt    
  0x000000010e405c9d: hlt    
  0x000000010e405c9e: hlt    
  0x000000010e405c9f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e405ca0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e405ca5: callq  0x000000010e405caa
  0x000000010e405caa: subq   $0x5,(%rsp)
  0x000000010e405caf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e405cb4: hlt    
  0x000000010e405cb5: hlt    
  0x000000010e405cb6: hlt    
  0x000000010e405cb7: hlt    

ImmutableOopMap{}pc offsets: 80 96 Compiled method (c2)     286   64             java.lang.CharacterDataLatin1::isDigit (18 bytes)
 total in heap  [0x000000010e402010,0x000000010e4022d8] = 712
 relocation     [0x000000010e402188,0x000000010e402198] = 16
 main code      [0x000000010e4021a0,0x000000010e402200] = 96
 stub code      [0x000000010e402200,0x000000010e402218] = 24
 metadata       [0x000000010e402218,0x000000010e402220] = 8
 scopes data    [0x000000010e402220,0x000000010e402250] = 48
 scopes pcs     [0x000000010e402250,0x000000010e4022d0] = 128
 dependencies   [0x000000010e4022d0,0x000000010e4022d8] = 8
----------------------------------------------------------------------
java/lang/CharacterDataLatin1.isDigit(I)Z  [0x000000010e4021a0, 0x000000010e402218]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cd6be80} 'isDigit' '(I)Z' in 'java/lang/CharacterDataLatin1'
  # this:     rsi:rsi   = 'java/lang/CharacterDataLatin1'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e4021a0: mov    0x8(%rsi),%r10d
  0x000000010e4021a4: movabs $0x800000000,%r12
  0x000000010e4021ae: add    %r12,%r10
  0x000000010e4021b1: xor    %r12,%r12
  0x000000010e4021b4: cmp    %r10,%rax
  0x000000010e4021b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4021bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4021c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4021c7: push   %rbp
  0x000000010e4021c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.CharacterDataLatin1::isDigit@-1 (line 86)

  0x000000010e4021cc: cmp    $0x30,%edx
  0x000000010e4021cf: jl     0x000000010e4021ef  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)

  0x000000010e4021d1: cmp    $0x39,%edx
  0x000000010e4021d4: jg     0x000000010e4021eb  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)

  0x000000010e4021d6: mov    $0x1,%eax          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@17 (line 86)

  0x000000010e4021db: add    $0x20,%rsp
  0x000000010e4021df: pop    %rbp
  0x000000010e4021e0: mov    0x108(%r15),%r10
  0x000000010e4021e7: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4021ea: retq   
  0x000000010e4021eb: xor    %eax,%eax
  0x000000010e4021ed: jmp    0x000000010e4021db
  0x000000010e4021ef: mov    $0xffffff4d,%esi
  0x000000010e4021f4: mov    %edx,(%rsp)
  0x000000010e4021f7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4021fc: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)

  0x000000010e4021fe: hlt    
  0x000000010e4021ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e402200: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e402205: callq  0x000000010e40220a
  0x000000010e40220a: subq   $0x5,(%rsp)
  0x000000010e40220f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e402214: hlt    
  0x000000010e402215: hlt    
  0x000000010e402216: hlt    
  0x000000010e402217: hlt    

ImmutableOopMap{}pc offsets: 92 Compiled method (c2)     292   65             java.lang.String::toString (2 bytes)
 total in heap  [0x000000010e405e90,0x000000010e4060c0] = 560
 relocation     [0x000000010e406008,0x000000010e406018] = 16
 main code      [0x000000010e406020,0x000000010e406060] = 64
 stub code      [0x000000010e406060,0x000000010e406078] = 24
 metadata       [0x000000010e406078,0x000000010e406080] = 8
 scopes data    [0x000000010e406080,0x000000010e406088] = 8
 scopes pcs     [0x000000010e406088,0x000000010e4060b8] = 48
 dependencies   [0x000000010e4060b8,0x000000010e4060c0] = 8
----------------------------------------------------------------------
java/lang/String.toString()Ljava/lang/String;  [0x000000010e406020, 0x000000010e406078]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb93e50} 'toString' '()Ljava/lang/String;' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010e406020: mov    0x8(%rsi),%r10d
  0x000000010e406024: movabs $0x800000000,%r12
  0x000000010e40602e: add    %r12,%r10
  0x000000010e406031: xor    %r12,%r12
  0x000000010e406034: cmp    %r10,%rax
  0x000000010e406037: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40603d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e406040: sub    $0x18,%rsp
  0x000000010e406047: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.String::toString@-1 (line 2807)

  0x000000010e40604c: mov    %rsi,%rax
  0x000000010e40604f: add    $0x10,%rsp
  0x000000010e406053: pop    %rbp
  0x000000010e406054: mov    0x108(%r15),%r10
  0x000000010e40605b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e40605e: retq   
  0x000000010e40605f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e406060: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e406065: callq  0x000000010e40606a
  0x000000010e40606a: subq   $0x5,(%rsp)
  0x000000010e40606f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e406074: hlt    
  0x000000010e406075: hlt    
  0x000000010e406076: hlt    
  0x000000010e406077: hlt    
Compiled method (c2)     296   66             java.lang.AbstractStringBuilder::ensureCapacityInternal (39 bytes)
 total in heap  [0x000000010e406110,0x000000010e406438] = 808
 relocation     [0x000000010e406288,0x000000010e406298] = 16
 main code      [0x000000010e4062a0,0x000000010e406320] = 128
 stub code      [0x000000010e406320,0x000000010e406338] = 24
 metadata       [0x000000010e406338,0x000000010e406340] = 8
 scopes data    [0x000000010e406340,0x000000010e406380] = 64
 scopes pcs     [0x000000010e406380,0x000000010e406420] = 160
 dependencies   [0x000000010e406420,0x000000010e406428] = 8
 nul chk table  [0x000000010e406428,0x000000010e406438] = 16
----------------------------------------------------------------------
java/lang/AbstractStringBuilder.ensureCapacityInternal(I)V  [0x000000010e4062a0, 0x000000010e406338]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cc2dce8} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e4062a0: mov    0x8(%rsi),%r10d
  0x000000010e4062a4: movabs $0x800000000,%r12
  0x000000010e4062ae: add    %r12,%r10
  0x000000010e4062b1: xor    %r12,%r12
  0x000000010e4062b4: cmp    %r10,%rax
  0x000000010e4062b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4062bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4062c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4062c7: push   %rbp
  0x000000010e4062c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 170)

  0x000000010e4062cc: mov    0x14(%rsi),%r11d   ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 170)

  0x000000010e4062d0: mov    0xc(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x000000010e40630a
  0x000000010e4062d5: movsbl 0x10(%rsi),%ecx
  0x000000010e4062d9: sar    %cl,%r10d
  0x000000010e4062dc: mov    %edx,%ebp
  0x000000010e4062de: sub    %r10d,%ebp         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@13 (line 171)

  0x000000010e4062e1: test   %ebp,%ebp
  0x000000010e4062e3: jg     0x000000010e4062f5  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 171)

  0x000000010e4062e5: add    $0x20,%rsp
  0x000000010e4062e9: pop    %rbp
  0x000000010e4062ea: mov    0x108(%r15),%r10
  0x000000010e4062f1: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4062f4: retq   
  0x000000010e4062f5: mov    %rsi,(%rsp)
  0x000000010e4062f9: mov    %edx,0x8(%rsp)
  0x000000010e4062fd: mov    $0xffffff4d,%esi
  0x000000010e406302: nop
  0x000000010e406303: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 171)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e406308: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 171)

  0x000000010e40630a: mov    $0xfffffff6,%esi
  0x000000010e40630f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e406314: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)

  0x000000010e406316: hlt    
  0x000000010e406317: hlt    
  0x000000010e406318: hlt    
  0x000000010e406319: hlt    
  0x000000010e40631a: hlt    
  0x000000010e40631b: hlt    
  0x000000010e40631c: hlt    
  0x000000010e40631d: hlt    
  0x000000010e40631e: hlt    
  0x000000010e40631f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e406320: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e406325: callq  0x000000010e40632a
  0x000000010e40632a: subq   $0x5,(%rsp)
  0x000000010e40632f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e406334: hlt    
  0x000000010e406335: hlt    
  0x000000010e406336: hlt    
  0x000000010e406337: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 104 
ImmutableOopMap{}pc offsets: 116 Compiled method (c2)     301   67             java.lang.Math::min (11 bytes)
 total in heap  [0x000000010e406490,0x000000010e4066d8] = 584
 relocation     [0x000000010e406608,0x000000010e406610] = 8
 main code      [0x000000010e406620,0x000000010e406660] = 64
 stub code      [0x000000010e406660,0x000000010e406678] = 24
 metadata       [0x000000010e406678,0x000000010e406680] = 8
 scopes data    [0x000000010e406680,0x000000010e406690] = 16
 scopes pcs     [0x000000010e406690,0x000000010e4066d0] = 64
 dependencies   [0x000000010e4066d0,0x000000010e4066d8] = 8
----------------------------------------------------------------------
java/lang/Math.min(II)I  [0x000000010e406620, 0x000000010e406678]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cd0acb8} 'min' '(II)I' in 'java/lang/Math'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x000000010e406620: sub    $0x18,%rsp
  0x000000010e406627: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1513)

  0x000000010e40662c: cmp    %edx,%esi
  0x000000010e40662e: mov    %edx,%eax
  0x000000010e406630: cmovle %esi,%eax          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Math::min@10 (line 1513)

  0x000000010e406633: add    $0x10,%rsp
  0x000000010e406637: pop    %rbp
  0x000000010e406638: mov    0x108(%r15),%r10
  0x000000010e40663f: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e406642: retq   
  0x000000010e406643: hlt    
  0x000000010e406644: hlt    
  0x000000010e406645: hlt    
  0x000000010e406646: hlt    
  0x000000010e406647: hlt    
  0x000000010e406648: hlt    
  0x000000010e406649: hlt    
  0x000000010e40664a: hlt    
  0x000000010e40664b: hlt    
  0x000000010e40664c: hlt    
  0x000000010e40664d: hlt    
  0x000000010e40664e: hlt    
  0x000000010e40664f: hlt    
  0x000000010e406650: hlt    
  0x000000010e406651: hlt    
  0x000000010e406652: hlt    
  0x000000010e406653: hlt    
  0x000000010e406654: hlt    
  0x000000010e406655: hlt    
  0x000000010e406656: hlt    
  0x000000010e406657: hlt    
  0x000000010e406658: hlt    
  0x000000010e406659: hlt    
  0x000000010e40665a: hlt    
  0x000000010e40665b: hlt    
  0x000000010e40665c: hlt    
  0x000000010e40665d: hlt    
  0x000000010e40665e: hlt    
  0x000000010e40665f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e406660: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e406665: callq  0x000000010e40666a
  0x000000010e40666a: subq   $0x5,(%rsp)
  0x000000010e40666f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e406674: hlt    
  0x000000010e406675: hlt    
  0x000000010e406676: hlt    
  0x000000010e406677: hlt    
Compiled method (c2)     304   68             java.util.ArrayList$Itr::hasNext (20 bytes)
 total in heap  [0x000000010e406710,0x000000010e406a48] = 824
 relocation     [0x000000010e406888,0x000000010e406898] = 16
 main code      [0x000000010e4068a0,0x000000010e406920] = 128
 stub code      [0x000000010e406920,0x000000010e406938] = 24
 metadata       [0x000000010e406938,0x000000010e406940] = 8
 scopes data    [0x000000010e406940,0x000000010e406980] = 64
 scopes pcs     [0x000000010e406980,0x000000010e406a30] = 176
 dependencies   [0x000000010e406a30,0x000000010e406a38] = 8
 nul chk table  [0x000000010e406a38,0x000000010e406a48] = 16
----------------------------------------------------------------------
java/util/ArrayList$Itr.hasNext()Z  [0x000000010e4068a0, 0x000000010e406938]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011ce28790} 'hasNext' '()Z' in 'java/util/ArrayList$Itr'
  #           [sp+0x30]  (sp of caller)
  0x000000010e4068a0: mov    0x8(%rsi),%r10d
  0x000000010e4068a4: movabs $0x800000000,%r12
  0x000000010e4068ae: add    %r12,%r10
  0x000000010e4068b1: xor    %r12,%r12
  0x000000010e4068b4: cmp    %r10,%rax
  0x000000010e4068b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4068bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4068c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4068c7: push   %rbp
  0x000000010e4068c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::hasNext@-1 (line 991)

  0x000000010e4068cc: mov    0x18(%rsi),%r11d   ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@5 (line 991)

  0x000000010e4068d0: mov    0x10(%r12,%r11,8),%r11d  ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; implicit exception: dispatches to 0x000000010e406902
  0x000000010e4068d5: mov    0xc(%rsi),%ebp     ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@1 (line 991)

  0x000000010e4068d8: cmp    %r11d,%ebp
  0x000000010e4068db: je     0x000000010e4068f2  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 991)

  0x000000010e4068dd: mov    $0x1,%eax
  0x000000010e4068e2: add    $0x20,%rsp
  0x000000010e4068e6: pop    %rbp
  0x000000010e4068e7: mov    0x108(%r15),%r10
  0x000000010e4068ee: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4068f1: retq   
  0x000000010e4068f2: mov    $0xffffff4d,%esi
  0x000000010e4068f7: mov    %r11d,(%rsp)
  0x000000010e4068fb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 991)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e406900: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 991)

  0x000000010e406902: mov    $0xfffffff6,%esi
  0x000000010e406907: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield size {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40690c: ud2                       ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)

  0x000000010e40690e: hlt    
  0x000000010e40690f: hlt    
  0x000000010e406910: hlt    
  0x000000010e406911: hlt    
  0x000000010e406912: hlt    
  0x000000010e406913: hlt    
  0x000000010e406914: hlt    
  0x000000010e406915: hlt    
  0x000000010e406916: hlt    
  0x000000010e406917: hlt    
  0x000000010e406918: hlt    
  0x000000010e406919: hlt    
  0x000000010e40691a: hlt    
  0x000000010e40691b: hlt    
  0x000000010e40691c: hlt    
  0x000000010e40691d: hlt    
  0x000000010e40691e: hlt    
  0x000000010e40691f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e406920: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e406925: callq  0x000000010e40692a
  0x000000010e40692a: subq   $0x5,(%rsp)
  0x000000010e40692f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e406934: hlt    
  0x000000010e406935: hlt    
  0x000000010e406936: hlt    
  0x000000010e406937: hlt    

ImmutableOopMap{}pc offsets: 96 108 Compiled method (c2)     306   69             java.util.ArrayList$Itr::next (66 bytes)
 total in heap  [0x000000010e405490,0x000000010e405a18] = 1416
 relocation     [0x000000010e405608,0x000000010e405620] = 24
 main code      [0x000000010e405620,0x000000010e405740] = 288
 stub code      [0x000000010e405740,0x000000010e405758] = 24
 metadata       [0x000000010e405758,0x000000010e405768] = 16
 scopes data    [0x000000010e405768,0x000000010e405838] = 208
 scopes pcs     [0x000000010e405838,0x000000010e4059f8] = 448
 dependencies   [0x000000010e4059f8,0x000000010e405a00] = 8
 nul chk table  [0x000000010e405a00,0x000000010e405a18] = 24
----------------------------------------------------------------------
java/util/ArrayList$Itr.next()Ljava/lang/Object;  [0x000000010e405620, 0x000000010e405758]  312 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011ce28898} 'next' '()Ljava/lang/Object;' in 'java/util/ArrayList$Itr'
  #           [sp+0x40]  (sp of caller)
  0x000000010e405620: mov    0x8(%rsi),%r10d
  0x000000010e405624: movabs $0x800000000,%r12
  0x000000010e40562e: add    %r12,%r10
  0x000000010e405631: xor    %r12,%r12
  0x000000010e405634: cmp    %r10,%rax
  0x000000010e405637: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40563d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e405640: mov    %eax,-0x14000(%rsp)
  0x000000010e405647: push   %rbp
  0x000000010e405648: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::next@-1 (line 996)

  0x000000010e40564c: mov    0x18(%rsi),%r11d   ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@1 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)

  0x000000010e405650: mov    0xc(%r12,%r11,8),%r10d  ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; implicit exception: dispatches to 0x000000010e405712
  0x000000010e405655: mov    0x14(%rsi),%ebp    ;*getfield expectedModCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@8 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)

  0x000000010e405658: cmp    %ebp,%r10d
  0x000000010e40565b: jne    0x000000010e4056c2  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)

  0x000000010e40565d: mov    0x10(%r12,%r11,8),%r10d  ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@14 (line 998)

  0x000000010e405662: mov    0xc(%rsi),%r8d     ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@5 (line 997)

  0x000000010e405666: cmp    %r10d,%r8d
  0x000000010e405669: jge    0x000000010e4056da  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)

  0x000000010e40566b: mov    0x14(%r12,%r11,8),%r9d  ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@32 (line 1000)

  0x000000010e405670: mov    0xc(%r12,%r9,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; implicit exception: dispatches to 0x000000010e40571e
  0x000000010e405675: cmp    %ebp,%r8d
  0x000000010e405678: jge    0x000000010e4056f6  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)

  0x000000010e40567a: mov    %r8d,0x10(%rsi)    ;*putfield lastRet {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@61 (line 1004)

  0x000000010e40567e: mov    %r8d,%r10d
  0x000000010e405681: inc    %r10d
  0x000000010e405684: mov    %r10d,0xc(%rsi)    ;*putfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@54 (line 1003)

  0x000000010e405688: cmp    %ebp,%r8d
  0x000000010e40568b: jae    0x000000010e4056ad  ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::next@-1 (line 996)

  0x000000010e40568d: lea    (%r12,%r9,8),%r10
  0x000000010e405691: mov    0x10(%r10,%r8,4),%r10d
  0x000000010e405696: mov    %r10,%rax
  0x000000010e405699: shl    $0x3,%rax
  0x000000010e40569d: add    $0x30,%rsp
  0x000000010e4056a1: pop    %rbp
  0x000000010e4056a2: mov    0x108(%r15),%r10
  0x000000010e4056a9: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4056ac: retq   
  0x000000010e4056ad: mov    $0xffffffe4,%esi
  0x000000010e4056b2: mov    %r9d,%ebp
  0x000000010e4056b5: mov    %r8d,(%rsp)
  0x000000010e4056b9: xchg   %ax,%ax
  0x000000010e4056bb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4056c0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)

  0x000000010e4056c2: mov    %rsi,(%rsp)
  0x000000010e4056c6: mov    %r10d,0x8(%rsp)
  0x000000010e4056cb: mov    $0xffffff4d,%esi
  0x000000010e4056d0: data16 xchg %ax,%ax
  0x000000010e4056d3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4056d8: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)

  0x000000010e4056da: mov    %rsi,%rbp
  0x000000010e4056dd: mov    %r8d,0x4(%rsp)
  0x000000010e4056e2: mov    %r10d,0x8(%rsp)
  0x000000010e4056e7: mov    $0xffffff4d,%esi
  0x000000010e4056ec: data16 xchg %ax,%ax
  0x000000010e4056ef: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4056f4: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)

  0x000000010e4056f6: mov    %rsi,(%rsp)
  0x000000010e4056fa: mov    %r9d,0xc(%rsp)
  0x000000010e4056ff: mov    %r8d,0x10(%rsp)
  0x000000010e405704: mov    $0xffffff4d,%esi
  0x000000010e405709: xchg   %ax,%ax
  0x000000010e40570b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e405710: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)

  0x000000010e405712: mov    $0xfffffff6,%esi
  0x000000010e405717: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield modCount {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40571c: ud2                       ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)

  0x000000010e40571e: mov    $0xfffffff6,%esi
  0x000000010e405723: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e405728: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)

  0x000000010e40572a: hlt    
  0x000000010e40572b: hlt    
  0x000000010e40572c: hlt    
  0x000000010e40572d: hlt    
  0x000000010e40572e: hlt    
  0x000000010e40572f: hlt    
  0x000000010e405730: hlt    
  0x000000010e405731: hlt    
  0x000000010e405732: hlt    
  0x000000010e405733: hlt    
  0x000000010e405734: hlt    
  0x000000010e405735: hlt    
  0x000000010e405736: hlt    
  0x000000010e405737: hlt    
  0x000000010e405738: hlt    
  0x000000010e405739: hlt    
  0x000000010e40573a: hlt    
  0x000000010e40573b: hlt    
  0x000000010e40573c: hlt    
  0x000000010e40573d: hlt    
  0x000000010e40573e: hlt    
  0x000000010e40573f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e405740: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e405745: callq  0x000000010e40574a
  0x000000010e40574a: subq   $0x5,(%rsp)
  0x000000010e40574f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e405754: hlt    
  0x000000010e405755: hlt    
  0x000000010e405756: hlt    
  0x000000010e405757: hlt    

ImmutableOopMap{rbp=NarrowOop }pc offsets: 160 
ImmutableOopMap{[0]=Oop }pc offsets: 184 
ImmutableOopMap{rbp=Oop }pc offsets: 212 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 240 
ImmutableOopMap{}pc offsets: 252 264 Compiled method (c2)     310   70             java.util.ArrayList$Itr::checkForComodification (23 bytes)
 total in heap  [0x000000010e405110,0x000000010e405440] = 816
 relocation     [0x000000010e405288,0x000000010e405298] = 16
 main code      [0x000000010e4052a0,0x000000010e405320] = 128
 stub code      [0x000000010e405320,0x000000010e405338] = 24
 metadata       [0x000000010e405338,0x000000010e405340] = 8
 scopes data    [0x000000010e405340,0x000000010e405378] = 56
 scopes pcs     [0x000000010e405378,0x000000010e405428] = 176
 dependencies   [0x000000010e405428,0x000000010e405430] = 8
 nul chk table  [0x000000010e405430,0x000000010e405440] = 16
----------------------------------------------------------------------
java/util/ArrayList$Itr.checkForComodification()V  [0x000000010e4052a0, 0x000000010e405338]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011ce28bb8} 'checkForComodification' '()V' in 'java/util/ArrayList$Itr'
  #           [sp+0x30]  (sp of caller)
  0x000000010e4052a0: mov    0x8(%rsi),%r10d
  0x000000010e4052a4: movabs $0x800000000,%r12
  0x000000010e4052ae: add    %r12,%r10
  0x000000010e4052b1: xor    %r12,%r12
  0x000000010e4052b4: cmp    %r10,%rax
  0x000000010e4052b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4052bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4052c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4052c7: push   %rbp
  0x000000010e4052c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::checkForComodification@-1 (line 1041)

  0x000000010e4052cc: mov    0x18(%rsi),%r11d   ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@1 (line 1041)

  0x000000010e4052d0: mov    0xc(%r12,%r11,8),%r11d  ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; implicit exception: dispatches to 0x000000010e4052fe
  0x000000010e4052d5: mov    0x14(%rsi),%ebp    ;*getfield expectedModCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@8 (line 1041)

  0x000000010e4052d8: cmp    %ebp,%r11d
  0x000000010e4052db: jne    0x000000010e4052ed  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)

  0x000000010e4052dd: add    $0x20,%rsp
  0x000000010e4052e1: pop    %rbp
  0x000000010e4052e2: mov    0x108(%r15),%r10
  0x000000010e4052e9: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4052ec: retq   
  0x000000010e4052ed: mov    $0xffffff4d,%esi
  0x000000010e4052f2: mov    %r11d,(%rsp)
  0x000000010e4052f6: nop
  0x000000010e4052f7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4052fc: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)

  0x000000010e4052fe: mov    $0xfffffff6,%esi
  0x000000010e405303: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield modCount {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e405308: ud2                       ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)

  0x000000010e40530a: hlt    
  0x000000010e40530b: hlt    
  0x000000010e40530c: hlt    
  0x000000010e40530d: hlt    
  0x000000010e40530e: hlt    
  0x000000010e40530f: hlt    
  0x000000010e405310: hlt    
  0x000000010e405311: hlt    
  0x000000010e405312: hlt    
  0x000000010e405313: hlt    
  0x000000010e405314: hlt    
  0x000000010e405315: hlt    
  0x000000010e405316: hlt    
  0x000000010e405317: hlt    
  0x000000010e405318: hlt    
  0x000000010e405319: hlt    
  0x000000010e40531a: hlt    
  0x000000010e40531b: hlt    
  0x000000010e40531c: hlt    
  0x000000010e40531d: hlt    
  0x000000010e40531e: hlt    
  0x000000010e40531f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e405320: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e405325: callq  0x000000010e40532a
  0x000000010e40532a: subq   $0x5,(%rsp)
  0x000000010e40532f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e405334: hlt    
  0x000000010e405335: hlt    
  0x000000010e405336: hlt    
  0x000000010e405337: hlt    

ImmutableOopMap{}pc offsets: 92 104 Compiled method (c2)     316   71             OptimizedProceduralZipCode::isZipCodeValid (150 bytes)
 total in heap  [0x000000010e407190,0x000000010e4082c8] = 4408
 relocation     [0x000000010e407308,0x000000010e407360] = 88
 main code      [0x000000010e407360,0x000000010e4077a0] = 1088
 stub code      [0x000000010e4077a0,0x000000010e4077c8] = 40
 oops           [0x000000010e4077c8,0x000000010e4077d8] = 16
 metadata       [0x000000010e4077d8,0x000000010e407838] = 96
 scopes data    [0x000000010e407838,0x000000010e407cd8] = 1184
 scopes pcs     [0x000000010e407cd8,0x000000010e408298] = 1472
 dependencies   [0x000000010e408298,0x000000010e4082a0] = 8
 handler table  [0x000000010e4082a0,0x000000010e4082b8] = 24
 nul chk table  [0x000000010e4082b8,0x000000010e4082c8] = 16
----------------------------------------------------------------------
OptimizedProceduralZipCode.isZipCodeValid(Ljava/lang/String;)Z  [0x000000010e407360, 0x000000010e4077c8]  1128 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cf8bac8} 'isZipCodeValid' '(Ljava/lang/String;)Z' in 'OptimizedProceduralZipCode'
  # this:     rsi:rsi   = 'OptimizedProceduralZipCode'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x000000010e407360: mov    0x8(%rsi),%r10d
  0x000000010e407364: movabs $0x800000000,%r12
  0x000000010e40736e: add    %r12,%r10
  0x000000010e407371: xor    %r12,%r12
  0x000000010e407374: cmp    %r10,%rax
  0x000000010e407377: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40737d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e407380: mov    %eax,-0x14000(%rsp)
  0x000000010e407387: push   %rbp
  0x000000010e407388: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e40738c: mov    %rsi,%r11
  0x000000010e40738f: test   %rdx,%rdx
  0x000000010e407392: je     0x000000010e4074c1  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e407398: mov    0xc(%rdx),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e40739c: mov    0xc(%r12,%r10,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; implicit exception: dispatches to 0x000000010e407787
  0x000000010e4073a1: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e4073a5: mov    %r9d,%ebp
  0x000000010e4073a8: sar    %cl,%ebp           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e4073aa: cmp    $0x5,%ebp
  0x000000010e4073ad: jne    0x000000010e4075c2  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@19 (line 65)

  0x000000010e4073b3: test   %ecx,%ecx
  0x000000010e4073b5: jne    0x000000010e4075da  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e4073bb: test   %r9d,%r9d
  0x000000010e4073be: jbe    0x000000010e40760a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e4073c4: movzbl 0x10(%r12,%r10,8),%ebp  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e4073ca: cmp    $0x30,%ebp
  0x000000010e4073cd: jl     0x000000010e4075f2  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e4073d3: cmp    $0x39,%ebp
  0x000000010e4073d6: jg     0x000000010e4074c3  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e4073dc: test   %ecx,%ecx
  0x000000010e4073de: jne    0x000000010e40762a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e4073e4: cmp    $0x1,%r9d
  0x000000010e4073e8: jle    0x000000010e4076ea  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e4073ee: cmp    $0x1,%r9d
  0x000000010e4073f2: jbe    0x000000010e407562
  0x000000010e4073f8: movzbl 0x11(%r12,%r10,8),%ebp  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e4073fe: cmp    $0x30,%ebp
  0x000000010e407401: jl     0x000000010e407642  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e407407: cmp    $0x39,%ebp
  0x000000010e40740a: jg     0x000000010e407512  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e407410: test   %ecx,%ecx
  0x000000010e407412: jne    0x000000010e40765a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e407418: cmp    $0x2,%r9d
  0x000000010e40741c: jle    0x000000010e40770a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e407422: cmp    $0x2,%r9d
  0x000000010e407426: jbe    0x000000010e40757a
  0x000000010e40742c: movzbl 0x12(%r12,%r10,8),%ebp  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e407432: cmp    $0x30,%ebp
  0x000000010e407435: jl     0x000000010e407672  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e40743b: cmp    $0x39,%ebp
  0x000000010e40743e: jg     0x000000010e407526  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e407444: test   %ecx,%ecx
  0x000000010e407446: jne    0x000000010e40768a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e40744c: cmp    $0x3,%r9d
  0x000000010e407450: jle    0x000000010e40772a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e407456: cmp    $0x3,%r9d
  0x000000010e40745a: jbe    0x000000010e407592
  0x000000010e407460: movzbl 0x13(%r12,%r10,8),%ebp  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e407466: cmp    $0x30,%ebp
  0x000000010e407469: jl     0x000000010e4076a2  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e40746f: cmp    $0x39,%ebp
  0x000000010e407472: jg     0x000000010e40753a  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e407478: test   %ecx,%ecx
  0x000000010e40747a: jne    0x000000010e4076ba  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e407480: cmp    $0x4,%r9d
  0x000000010e407484: jle    0x000000010e40774a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e40748a: cmp    $0x4,%r9d
  0x000000010e40748e: jbe    0x000000010e4075aa
  0x000000010e407494: movzbl 0x14(%r12,%r10,8),%ebp  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e40749a: cmp    $0x30,%ebp
  0x000000010e40749d: jl     0x000000010e4076d2  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e4074a3: cmp    $0x39,%ebp
  0x000000010e4074a6: jg     0x000000010e40754e  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e4074ac: mov    $0x1,%eax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)

  0x000000010e4074b1: add    $0x30,%rsp
  0x000000010e4074b5: pop    %rbp
  0x000000010e4074b6: mov    0x108(%r15),%r10
  0x000000010e4074bd: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4074c0: retq   
  0x000000010e4074c1: xor    %edx,%edx          ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@47 (line 66)

  0x000000010e4074c3: mov    0xc(%rsi),%r11d
  0x000000010e4074c7: test   %r11d,%r11d
  0x000000010e4074ca: je     0x000000010e40776a  ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e4074d0: test   %rdx,%rdx
  0x000000010e4074d3: je     0x000000010e407506  ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@4 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e4074d5: mov    %rdx,%rcx
  0x000000010e4074d8: movabs $0x70fd448d0,%rsi  ;   {oop("invalid zip code: {}"{0x000000070fd448d0})}
  0x000000010e4074e2: movabs $0x70fd44910,%rdx  ;   {oop("{}"{0x000000070fd44910})}
  0x000000010e4074ec: data16 xchg %ax,%ax
  0x000000010e4074ef: callq  0x000000010e3b1f00  ; ImmutableOopMap{}
                                                ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=1}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {optimized virtual_call}
  0x000000010e4074f4: xor    %eax,%eax
  0x000000010e4074f6: movabs $0x70fd43b00,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fd43b00} = 'Logger')}
  0x000000010e407500: incl   0x70(%r10)         ;*putstatic errors {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@22 (line 8)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e407504: jmp    0x000000010e4074b1
  0x000000010e407506: movabs $0x70ff049f0,%rcx  ;   {oop("null"{0x000000070ff049f0})}
  0x000000010e407510: jmp    0x000000010e4074d8
  0x000000010e407512: mov    $0xffffff4d,%esi
  0x000000010e407517: mov    %r11,%rbp
  0x000000010e40751a: mov    %rdx,(%rsp)
  0x000000010e40751e: nop
  0x000000010e40751f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@61 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407524: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@61 (line 67)

  0x000000010e407526: mov    $0xffffff4d,%esi
  0x000000010e40752b: mov    %r11,%rbp
  0x000000010e40752e: mov    %rdx,(%rsp)
  0x000000010e407532: nop
  0x000000010e407533: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407538: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)

  0x000000010e40753a: mov    $0xffffff4d,%esi
  0x000000010e40753f: mov    %r11,%rbp
  0x000000010e407542: mov    %rdx,(%rsp)
  0x000000010e407546: nop
  0x000000010e407547: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40754c: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)

  0x000000010e40754e: mov    $0xffffff4d,%esi
  0x000000010e407553: mov    %r11,%rbp
  0x000000010e407556: mov    %rdx,(%rsp)
  0x000000010e40755a: nop
  0x000000010e40755b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@124 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407560: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@124 (line 70)

  0x000000010e407562: mov    $0xffffffe4,%esi
  0x000000010e407567: mov    %r11,%rbp
  0x000000010e40756a: mov    %rdx,(%rsp)
  0x000000010e40756e: mov    %r10d,0x8(%rsp)
  0x000000010e407573: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407578: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e40757a: mov    $0xffffffe4,%esi
  0x000000010e40757f: mov    %r11,%rbp
  0x000000010e407582: mov    %rdx,(%rsp)
  0x000000010e407586: mov    %r10d,0x8(%rsp)
  0x000000010e40758b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407590: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e407592: mov    $0xffffffe4,%esi
  0x000000010e407597: mov    %r11,%rbp
  0x000000010e40759a: mov    %rdx,(%rsp)
  0x000000010e40759e: mov    %r10d,0x8(%rsp)
  0x000000010e4075a3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4075a8: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e4075aa: mov    $0xffffffe4,%esi
  0x000000010e4075af: mov    %r11,%rbp
  0x000000010e4075b2: mov    %rdx,(%rsp)
  0x000000010e4075b6: mov    %r10d,0x8(%rsp)
  0x000000010e4075bb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4075c0: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e4075c2: mov    $0xffffff4d,%esi
  0x000000010e4075c7: mov    %r11,(%rsp)
  0x000000010e4075cb: mov    %rdx,0x8(%rsp)
  0x000000010e4075d0: data16 xchg %ax,%ax
  0x000000010e4075d3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@19 (line 65)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4075d8: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@19 (line 65)

  0x000000010e4075da: mov    $0xffffff4d,%esi
  0x000000010e4075df: mov    %r11,%rbp
  0x000000010e4075e2: mov    %rdx,0x8(%rsp)
  0x000000010e4075e7: mov    %ecx,0x10(%rsp)
  0x000000010e4075eb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4075f0: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e4075f2: mov    $0xffffff4d,%esi
  0x000000010e4075f7: mov    %r11,(%rsp)
  0x000000010e4075fb: mov    %rdx,0x8(%rsp)
  0x000000010e407600: data16 xchg %ax,%ax
  0x000000010e407603: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407608: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e40760a: mov    $0xffffff4d,%esi
  0x000000010e40760f: mov    %r11,%rbp
  0x000000010e407612: mov    %rdx,(%rsp)
  0x000000010e407616: mov    %r10d,0x8(%rsp)
  0x000000010e40761b: mov    %r9d,0xc(%rsp)
  0x000000010e407620: data16 xchg %ax,%ax
  0x000000010e407623: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407628: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e40762a: mov    $0xffffff4d,%esi
  0x000000010e40762f: mov    %r11,%rbp
  0x000000010e407632: mov    %rdx,0x8(%rsp)
  0x000000010e407637: mov    %ecx,0x10(%rsp)
  0x000000010e40763b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407640: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e407642: mov    $0xffffff4d,%esi
  0x000000010e407647: mov    %r11,(%rsp)
  0x000000010e40764b: mov    %rdx,0x8(%rsp)
  0x000000010e407650: data16 xchg %ax,%ax
  0x000000010e407653: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407658: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e40765a: mov    $0xffffff4d,%esi
  0x000000010e40765f: mov    %r11,%rbp
  0x000000010e407662: mov    %rdx,0x8(%rsp)
  0x000000010e407667: mov    %ecx,0x10(%rsp)
  0x000000010e40766b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407670: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e407672: mov    $0xffffff4d,%esi
  0x000000010e407677: mov    %r11,(%rsp)
  0x000000010e40767b: mov    %rdx,0x8(%rsp)
  0x000000010e407680: data16 xchg %ax,%ax
  0x000000010e407683: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407688: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e40768a: mov    $0xffffff4d,%esi
  0x000000010e40768f: mov    %r11,%rbp
  0x000000010e407692: mov    %rdx,0x8(%rsp)
  0x000000010e407697: mov    %ecx,0x10(%rsp)
  0x000000010e40769b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4076a0: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e4076a2: mov    $0xffffff4d,%esi
  0x000000010e4076a7: mov    %r11,(%rsp)
  0x000000010e4076ab: mov    %rdx,0x8(%rsp)
  0x000000010e4076b0: data16 xchg %ax,%ax
  0x000000010e4076b3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4076b8: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e4076ba: mov    $0xffffff4d,%esi
  0x000000010e4076bf: mov    %r11,%rbp
  0x000000010e4076c2: mov    %rdx,0x8(%rsp)
  0x000000010e4076c7: mov    %ecx,0x10(%rsp)
  0x000000010e4076cb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4076d0: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e4076d2: mov    $0xffffff4d,%esi
  0x000000010e4076d7: mov    %r11,(%rsp)
  0x000000010e4076db: mov    %rdx,0x8(%rsp)
  0x000000010e4076e0: data16 xchg %ax,%ax
  0x000000010e4076e3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4076e8: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e4076ea: mov    $0xffffff4d,%esi
  0x000000010e4076ef: mov    %r11,%rbp
  0x000000010e4076f2: mov    %rdx,(%rsp)
  0x000000010e4076f6: mov    %r10d,0x8(%rsp)
  0x000000010e4076fb: mov    %r9d,0xc(%rsp)
  0x000000010e407700: data16 xchg %ax,%ax
  0x000000010e407703: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407708: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e40770a: mov    $0xffffff4d,%esi
  0x000000010e40770f: mov    %r11,%rbp
  0x000000010e407712: mov    %rdx,(%rsp)
  0x000000010e407716: mov    %r10d,0x8(%rsp)
  0x000000010e40771b: mov    %r9d,0xc(%rsp)
  0x000000010e407720: data16 xchg %ax,%ax
  0x000000010e407723: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407728: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e40772a: mov    $0xffffff4d,%esi
  0x000000010e40772f: mov    %r11,%rbp
  0x000000010e407732: mov    %rdx,(%rsp)
  0x000000010e407736: mov    %r10d,0x8(%rsp)
  0x000000010e40773b: mov    %r9d,0xc(%rsp)
  0x000000010e407740: data16 xchg %ax,%ax
  0x000000010e407743: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407748: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e40774a: mov    $0xffffff4d,%esi
  0x000000010e40774f: mov    %r11,%rbp
  0x000000010e407752: mov    %rdx,(%rsp)
  0x000000010e407756: mov    %r10d,0x8(%rsp)
  0x000000010e40775b: mov    %r9d,0xc(%rsp)
  0x000000010e407760: data16 xchg %ax,%ax
  0x000000010e407763: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407768: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e40776a: mov    $0xfffffff6,%esi
  0x000000010e40776f: mov    %rdx,%rbp
  0x000000010e407772: nop
  0x000000010e407773: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407778: ud2                       ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e40777a: mov    %rax,%rsi
  0x000000010e40777d: add    $0x30,%rsp
  0x000000010e407781: pop    %rbp
  0x000000010e407782: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e407787: mov    $0xfffffff6,%esi
  0x000000010e40778c: data16 xchg %ax,%ax
  0x000000010e40778f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e407794: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e407796: hlt    
  0x000000010e407797: hlt    
  0x000000010e407798: hlt    
  0x000000010e407799: hlt    
  0x000000010e40779a: hlt    
  0x000000010e40779b: hlt    
  0x000000010e40779c: hlt    
  0x000000010e40779d: hlt    
  0x000000010e40779e: hlt    
  0x000000010e40779f: hlt    
[Stub Code]
  0x000000010e4077a0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e4077aa: jmpq   0x000000010e4077aa  ;   {runtime_call}
[Exception Handler]
  0x000000010e4077af: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e4077b4: callq  0x000000010e4077b9
  0x000000010e4077b9: subq   $0x5,(%rsp)
  0x000000010e4077be: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4077c3: hlt    
  0x000000010e4077c4: hlt    
  0x000000010e4077c5: hlt    
  0x000000010e4077c6: hlt    
  0x000000010e4077c7: hlt    

ImmutableOopMap{}pc offsets: 404 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 452 472 492 512 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 536 560 584 608 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 632 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 656 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 680 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 712 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 736 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 760 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 784 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 808 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 832 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 856 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 880 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 904 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 936 968 1000 1032 
ImmutableOopMap{rbp=Oop }pc offsets: 1048 
ImmutableOopMap{}pc offsets: 1076 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e4004a0, 0x000000010e4004c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa6e38} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e4004a0: mov    0x24(%rsi),%ebx
  0x000000010e4004a3: shl    $0x3,%rbx
  0x000000010e4004a7: mov    0x10(%rbx),%rbx
  0x000000010e4004ab: test   %rbx,%rbx
  0x000000010e4004ae: je     0x000000010e4004b7
  0x000000010e4004b4: jmpq   *0x38(%rbx)
  0x000000010e4004b7: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e4004bc: hlt    
  0x000000010e4004bd: hlt    
  0x000000010e4004be: hlt    
  0x000000010e4004bf: hlt    
Compiled method (c2)     340   73             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x000000010e3fee90,0x000000010e3ffca8] = 3608
 relocation     [0x000000010e3ff008,0x000000010e3ff038] = 48
 main code      [0x000000010e3ff040,0x000000010e3ff460] = 1056
 stub code      [0x000000010e3ff460,0x000000010e3ff488] = 40
 metadata       [0x000000010e3ff488,0x000000010e3ff4b8] = 48
 scopes data    [0x000000010e3ff4b8,0x000000010e3ff6b8] = 512
 scopes pcs     [0x000000010e3ff6b8,0x000000010e3ffc58] = 1440
 dependencies   [0x000000010e3ffc58,0x000000010e3ffc60] = 8
 handler table  [0x000000010e3ffc60,0x000000010e3ffc78] = 24
 nul chk table  [0x000000010e3ffc78,0x000000010e3ffca8] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x000000010e3ff040, 0x000000010e3ff488]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cf57bf8} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x000000010e3ff040: mov    0x8(%rsi),%r10d
  0x000000010e3ff044: movabs $0x800000000,%r12
  0x000000010e3ff04e: add    %r12,%r10
  0x000000010e3ff051: xor    %r12,%r12
  0x000000010e3ff054: cmp    %r10,%rax
  0x000000010e3ff057: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e3ff05d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e3ff060: mov    %eax,-0x14000(%rsp)
  0x000000010e3ff067: push   %rbp
  0x000000010e3ff068: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x000000010e3ff06c: mov    %rsi,%r10
  0x000000010e3ff06f: mov    %rdx,%r9
  0x000000010e3ff072: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x000000010e3ff423
  0x000000010e3ff076: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000010e3ff432
  0x000000010e3ff07b: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e3ff07f: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e3ff082: cmp    $0xffff,%r11d
  0x000000010e3ff089: jg     0x000000010e3ff3ee  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010e3ff08f: mov    %rsi,%rdi
  0x000000010e3ff092: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x000000010e3ff096: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x000000010e3ff43e
  0x000000010e3ff09b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x000000010e3ff09e: mov    %r11d,%r10d
  0x000000010e3ff0a1: add    %edx,%r10d
  0x000000010e3ff0a4: add    $0x2,%r10d
  0x000000010e3ff0a8: cmp    %ebx,%r10d
  0x000000010e3ff0ab: jg     0x000000010e3ff2d9  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff0b1: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010e3ff0b4: mov    %r11d,%esi
  0x000000010e3ff0b7: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x000000010e3ff0ba: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x000000010e3ff0be: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x000000010e3ff44a
  0x000000010e3ff0c3: mov    %edx,%r10d
  0x000000010e3ff0c6: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x000000010e3ff0c9: cmp    %ebp,%edx
  0x000000010e3ff0cb: jae    0x000000010e3ff366
  0x000000010e3ff0d1: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010e3ff0d5: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010e3ff0da: mov    %edx,%r14d
  0x000000010e3ff0dd: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e3ff0e1: cmp    %ebp,%r10d
  0x000000010e3ff0e4: jae    0x000000010e3ff392
  0x000000010e3ff0ea: movslq %edx,%rsi
  0x000000010e3ff0ed: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010e3ff0f2: test   %r11d,%r11d
  0x000000010e3ff0f5: jle    0x000000010e3ff2c2  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e3ff0fb: test   %ecx,%ecx
  0x000000010e3ff0fd: jne    0x000000010e3ff3be
  0x000000010e3ff103: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000010e3ff3be
  0x000000010e3ff108: test   %r10d,%r10d
  0x000000010e3ff10b: jbe    0x000000010e3ff3be
  0x000000010e3ff111: movslq %r10d,%rcx
  0x000000010e3ff114: movslq %r11d,%r13
  0x000000010e3ff117: mov    %r13,%r10
  0x000000010e3ff11a: dec    %r10
  0x000000010e3ff11d: cmp    %rcx,%r10
  0x000000010e3ff120: jae    0x000000010e3ff3be
  0x000000010e3ff126: cmp    %ebp,%r14d
  0x000000010e3ff129: jae    0x000000010e3ff3be
  0x000000010e3ff12f: movslq %ebp,%r10
  0x000000010e3ff132: movslq %r14d,%rcx
  0x000000010e3ff135: add    %r13,%rcx
  0x000000010e3ff138: dec    %rcx
  0x000000010e3ff13b: cmp    %r10,%rcx
  0x000000010e3ff13e: jae    0x000000010e3ff3be
  0x000000010e3ff144: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff14a: mov    %ecx,%ebp
  0x000000010e3ff14c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff150: mov    %ebp,%r10d
  0x000000010e3ff153: dec    %r10d
  0x000000010e3ff156: cmp    $0x7f,%r10d
  0x000000010e3ff15a: jae    0x000000010e3ff406  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff160: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff164: mov    %r11d,%r13d
  0x000000010e3ff167: add    $0xfffffffd,%r13d
  0x000000010e3ff16b: lea    (%r12,%r8,8),%rsi
  0x000000010e3ff16f: mov    $0x1,%ecx
  0x000000010e3ff174: mov    $0x80000000,%r8d
  0x000000010e3ff17a: cmp    %r13d,%r11d
  0x000000010e3ff17d: cmovl  %r8d,%r13d
  0x000000010e3ff181: cmp    $0x1,%r13d
  0x000000010e3ff185: jle    0x000000010e3ff3e2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e3ff18b: jmp    0x000000010e3ff19c
  0x000000010e3ff18d: vmovq  %xmm0,%r9
  0x000000010e3ff192: vmovq  %xmm1,%rdi
  0x000000010e3ff197: vmovd  %xmm3,%r11d
  0x000000010e3ff19c: mov    %r13d,%r10d
  0x000000010e3ff19f: sub    %ecx,%r10d
  0x000000010e3ff1a2: mov    $0xfa0,%r14d
  0x000000010e3ff1a8: cmp    %r14d,%r10d
  0x000000010e3ff1ab: cmovg  %r14d,%r10d
  0x000000010e3ff1af: add    %ecx,%r10d
  0x000000010e3ff1b2: vmovq  %r9,%xmm0
  0x000000010e3ff1b7: vmovq  %rdi,%xmm1
  0x000000010e3ff1bc: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff1c1: mov    %ecx,%r14d
  0x000000010e3ff1c4: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e3ff1c7: movslq %ecx,%r9
  0x000000010e3ff1ca: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff1d0: mov    %r8d,%ebp
  0x000000010e3ff1d3: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff1d7: mov    %ebp,%r11d
  0x000000010e3ff1da: dec    %r11d
  0x000000010e3ff1dd: cmp    $0x7f,%r11d
  0x000000010e3ff1e1: jae    0x000000010e3ff312  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff1e7: movslq %r14d,%rdi
  0x000000010e3ff1ea: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff1ef: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff1f5: mov    %r11d,%ebp
  0x000000010e3ff1f8: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff1fc: mov    %ebp,%r8d
  0x000000010e3ff1ff: dec    %r8d
  0x000000010e3ff202: cmp    $0x7f,%r8d
  0x000000010e3ff206: jae    0x000000010e3ff318  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff20c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff211: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff217: mov    %r8d,%ebp
  0x000000010e3ff21a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff21e: mov    %ebp,%r11d
  0x000000010e3ff221: dec    %r11d
  0x000000010e3ff224: cmp    $0x7f,%r11d
  0x000000010e3ff228: jae    0x000000010e3ff320  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff22e: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff233: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff239: mov    %r8d,%ebp
  0x000000010e3ff23c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff240: mov    %ebp,%r11d
  0x000000010e3ff243: dec    %r11d
  0x000000010e3ff246: cmp    $0x7f,%r11d
  0x000000010e3ff24a: jae    0x000000010e3ff329  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff250: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff255: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e3ff258: cmp    %r10d,%ecx
  0x000000010e3ff25b: jl     0x000000010e3ff1c1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e3ff261: mov    0x108(%r15),%r9
  0x000000010e3ff268: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e3ff26c: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x000000010e3ff26f: cmp    %r13d,%ecx
  0x000000010e3ff272: jl     0x000000010e3ff18d
  0x000000010e3ff278: vmovq  %xmm0,%r9
  0x000000010e3ff27d: vmovq  %xmm1,%rdi
  0x000000010e3ff282: vmovd  %xmm3,%r11d
  0x000000010e3ff287: cmp    %r11d,%ecx
  0x000000010e3ff28a: jge    0x000000010e3ff2c2  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff28c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff292: mov    %ecx,%r14d
  0x000000010e3ff295: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e3ff298: mov    %r8d,%ebp
  0x000000010e3ff29b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff29f: mov    %ebp,%r10d
  0x000000010e3ff2a2: dec    %r10d
  0x000000010e3ff2a5: cmp    $0x7f,%r10d
  0x000000010e3ff2a9: jae    0x000000010e3ff40d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e3ff2af: movslq %r14d,%r10
  0x000000010e3ff2b2: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e3ff2b7: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e3ff2b9: cmp    %r11d,%ecx
  0x000000010e3ff2bc: jl     0x000000010e3ff28c
  0x000000010e3ff2be: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e3ff2c2: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x000000010e3ff2c6: mov    %rdi,%rax
  0x000000010e3ff2c9: add    $0x40,%rsp
  0x000000010e3ff2cd: pop    %rbp
  0x000000010e3ff2ce: mov    0x108(%r15),%r10
  0x000000010e3ff2d5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e3ff2d8: retq   
  0x000000010e3ff2d9: mov    %edx,0xc(%rsp)
  0x000000010e3ff2dd: mov    %rsi,(%rsp)
  0x000000010e3ff2e1: mov    %r9,%rbp
  0x000000010e3ff2e4: mov    %r11d,%edx
  0x000000010e3ff2e7: mov    %r11d,0x8(%rsp)
  0x000000010e3ff2ec: add    $0x2,%edx
  0x000000010e3ff2ef: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x000000010e3ff2f4: mov    %rbp,%r9
  0x000000010e3ff2f7: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff2fb: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e3ff300: mov    (%rsp),%rdi
  0x000000010e3ff304: mov    0x8(%rsp),%r11d
  0x000000010e3ff309: mov    0xc(%rsp),%edx
  0x000000010e3ff30d: jmpq   0x000000010e3ff0b1
  0x000000010e3ff312: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff316: jmp    0x000000010e3ff330
  0x000000010e3ff318: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e3ff31a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff31e: jmp    0x000000010e3ff330
  0x000000010e3ff320: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e3ff323: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff327: jmp    0x000000010e3ff330
  0x000000010e3ff329: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e3ff32c: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff330: vmovq  %xmm0,%r9
  0x000000010e3ff335: vmovq  %xmm1,%rdi
  0x000000010e3ff33a: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010e3ff33f: mov    $0xffffff45,%esi
  0x000000010e3ff344: mov    %r14d,(%rsp)
  0x000000010e3ff348: mov    %ecx,0x4(%rsp)
  0x000000010e3ff34c: mov    %rdi,0x10(%rsp)
  0x000000010e3ff351: mov    %r9,0x18(%rsp)
  0x000000010e3ff356: mov    %r11d,0xc(%rsp)
  0x000000010e3ff35b: mov    %ebx,0x20(%rsp)
  0x000000010e3ff35f: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff364: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010e3ff366: mov    $0xffffffe4,%esi
  0x000000010e3ff36b: mov    %edx,%ebp
  0x000000010e3ff36d: mov    %rdi,(%rsp)
  0x000000010e3ff371: mov    %r9,0x8(%rsp)
  0x000000010e3ff376: mov    %r11d,0x10(%rsp)
  0x000000010e3ff37b: mov    %r10d,0x14(%rsp)
  0x000000010e3ff380: mov    %ebx,0x1c(%rsp)
  0x000000010e3ff384: mov    %eax,0x20(%rsp)
  0x000000010e3ff388: data16 xchg %ax,%ax
  0x000000010e3ff38b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff390: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010e3ff392: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x000000010e3ff396: mov    $0xffffffe4,%esi
  0x000000010e3ff39b: mov    %r14d,(%rsp)
  0x000000010e3ff39f: mov    %rdi,0x8(%rsp)
  0x000000010e3ff3a4: mov    %r9,0x10(%rsp)
  0x000000010e3ff3a9: mov    %r11d,0x4(%rsp)
  0x000000010e3ff3ae: mov    %ebx,0x1c(%rsp)
  0x000000010e3ff3b2: mov    %r10d,0x20(%rsp)
  0x000000010e3ff3b7: callq  0x000000010e3b3900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff3bc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e3ff3be: mov    $0xffffff7e,%esi
  0x000000010e3ff3c3: mov    %r14d,%ebp
  0x000000010e3ff3c6: mov    %rdi,(%rsp)
  0x000000010e3ff3ca: mov    %r9,0x8(%rsp)
  0x000000010e3ff3cf: mov    %ebx,0x14(%rsp)
  0x000000010e3ff3d3: mov    %r11d,0x18(%rsp)
  0x000000010e3ff3d8: data16 xchg %ax,%ax
  0x000000010e3ff3db: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff3e0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e3ff3e2: mov    %edx,%r14d
  0x000000010e3ff3e5: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x000000010e3ff3e9: jmpq   0x000000010e3ff287
  0x000000010e3ff3ee: mov    $0xffffff4d,%esi
  0x000000010e3ff3f3: mov    %r10,%rbp
  0x000000010e3ff3f6: mov    %rdx,(%rsp)
  0x000000010e3ff3fa: mov    %r11d,0xc(%rsp)
  0x000000010e3ff3ff: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff404: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010e3ff406: xor    %ecx,%ecx
  0x000000010e3ff408: jmpq   0x000000010e3ff33f
  0x000000010e3ff40d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e3ff411: jmpq   0x000000010e3ff33f  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x000000010e3ff416: mov    %rax,%rsi
  0x000000010e3ff419: add    $0x40,%rsp
  0x000000010e3ff41d: pop    %rbp
  0x000000010e3ff41e: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e3ff423: mov    $0xfffffff6,%esi
  0x000000010e3ff428: data16 xchg %ax,%ax
  0x000000010e3ff42b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff430: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e3ff432: mov    $0xfffffff6,%esi
  0x000000010e3ff437: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff43c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e3ff43e: mov    $0xfffffff6,%esi
  0x000000010e3ff443: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff448: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x000000010e3ff44a: mov    $0xfffffff6,%esi
  0x000000010e3ff44f: mov    %edx,%ebp
  0x000000010e3ff451: mov    %eax,(%rsp)
  0x000000010e3ff454: data16 xchg %ax,%ax
  0x000000010e3ff457: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e3ff45c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010e3ff45e: hlt    
  0x000000010e3ff45f: hlt    
[Stub Code]
  0x000000010e3ff460: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e3ff46a: jmpq   0x000000010e3ff46a  ;   {runtime_call}
[Exception Handler]
  0x000000010e3ff46f: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e3ff474: callq  0x000000010e3ff479
  0x000000010e3ff479: subq   $0x5,(%rsp)
  0x000000010e3ff47e: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e3ff483: hlt    
  0x000000010e3ff484: hlt    
  0x000000010e3ff485: hlt    
  0x000000010e3ff486: hlt    
  0x000000010e3ff487: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e404e20, 0x000000010e404e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa7268} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e404e20: mov    0x24(%r9),%ebx
  0x000000010e404e24: shl    $0x3,%rbx
  0x000000010e404e28: mov    0x10(%rbx),%rbx
  0x000000010e404e2c: test   %rbx,%rbx
  0x000000010e404e2f: je     0x000000010e404e38
  0x000000010e404e35: jmpq   *0x38(%rbx)
  0x000000010e404e38: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e404e3d: hlt    
  0x000000010e404e3e: hlt    
  0x000000010e404e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x000000010e404c20, 0x000000010e404c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa7380} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e404c20: mov    0x14(%rsi),%ebx
  0x000000010e404c23: shl    $0x3,%rbx
  0x000000010e404c27: mov    0x28(%rbx),%ebx
  0x000000010e404c2a: shl    $0x3,%rbx
  0x000000010e404c2e: mov    0x24(%rbx),%ebx
  0x000000010e404c31: shl    $0x3,%rbx
  0x000000010e404c35: mov    0x10(%rbx),%rbx
  0x000000010e404c39: test   %rbx,%rbx
  0x000000010e404c3c: je     0x000000010e404c45
  0x000000010e404c42: jmpq   *0x38(%rbx)
  0x000000010e404c45: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e404c4a: hlt    
  0x000000010e404c4b: hlt    
  0x000000010e404c4c: hlt    
  0x000000010e404c4d: hlt    
  0x000000010e404c4e: hlt    
  0x000000010e404c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e404a20, 0x000000010e404a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa7498} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e404a20: cmp    (%rsi),%rax
  0x000000010e404a23: mov    0x24(%rdi),%ebx
  0x000000010e404a26: shl    $0x3,%rbx
  0x000000010e404a2a: mov    0x10(%rbx),%rbx
  0x000000010e404a2e: test   %rbx,%rbx
  0x000000010e404a31: je     0x000000010e404a3a
  0x000000010e404a37: jmpq   *0x38(%rbx)
  0x000000010e404a3a: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e404a3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e404820, 0x000000010e404848]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa8858} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e404820: mov    0x20(%rsp),%rbx
  0x000000010e404825: mov    0x24(%rbx),%ebx
  0x000000010e404828: shl    $0x3,%rbx
  0x000000010e40482c: mov    0x10(%rbx),%rbx
  0x000000010e404830: test   %rbx,%rbx
  0x000000010e404833: je     0x000000010e40483c
  0x000000010e404839: jmpq   *0x38(%rbx)
  0x000000010e40483c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e404841: hlt    
  0x000000010e404842: hlt    
  0x000000010e404843: hlt    
  0x000000010e404844: hlt    
  0x000000010e404845: hlt    
  0x000000010e404846: hlt    
  0x000000010e404847: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e404620, 0x000000010e404650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa89c0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e404620: mov    0x14(%rsi),%ebx
  0x000000010e404623: shl    $0x3,%rbx
  0x000000010e404627: mov    0x28(%rbx),%ebx
  0x000000010e40462a: shl    $0x3,%rbx
  0x000000010e40462e: mov    0x24(%rbx),%ebx
  0x000000010e404631: shl    $0x3,%rbx
  0x000000010e404635: mov    0x10(%rbx),%rbx
  0x000000010e404639: test   %rbx,%rbx
  0x000000010e40463c: je     0x000000010e404645
  0x000000010e404642: jmpq   *0x38(%rbx)
  0x000000010e404645: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40464a: hlt    
  0x000000010e40464b: hlt    
  0x000000010e40464c: hlt    
  0x000000010e40464d: hlt    
  0x000000010e40464e: hlt    
  0x000000010e40464f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e404420, 0x000000010e404448]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa9c38} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e404420: mov    0x28(%rsp),%rbx
  0x000000010e404425: mov    0x24(%rbx),%ebx
  0x000000010e404428: shl    $0x3,%rbx
  0x000000010e40442c: mov    0x10(%rbx),%rbx
  0x000000010e404430: test   %rbx,%rbx
  0x000000010e404433: je     0x000000010e40443c
  0x000000010e404439: jmpq   *0x38(%rbx)
  0x000000010e40443c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e404441: hlt    
  0x000000010e404442: hlt    
  0x000000010e404443: hlt    
  0x000000010e404444: hlt    
  0x000000010e404445: hlt    
  0x000000010e404446: hlt    
  0x000000010e404447: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e406ea0, 0x000000010e406ed0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfa9da0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e406ea0: mov    0x14(%rsi),%ebx
  0x000000010e406ea3: shl    $0x3,%rbx
  0x000000010e406ea7: mov    0x28(%rbx),%ebx
  0x000000010e406eaa: shl    $0x3,%rbx
  0x000000010e406eae: mov    0x24(%rbx),%ebx
  0x000000010e406eb1: shl    $0x3,%rbx
  0x000000010e406eb5: mov    0x10(%rbx),%rbx
  0x000000010e406eb9: test   %rbx,%rbx
  0x000000010e406ebc: je     0x000000010e406ec5
  0x000000010e406ec2: jmpq   *0x38(%rbx)
  0x000000010e406ec5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e406eca: hlt    
  0x000000010e406ecb: hlt    
  0x000000010e406ecc: hlt    
  0x000000010e406ecd: hlt    
  0x000000010e406ece: hlt    
  0x000000010e406ecf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x000000010e406c20, 0x000000010e406c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfaa448} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e406c20: mov    0x24(%rcx),%ebx
  0x000000010e406c23: shl    $0x3,%rbx
  0x000000010e406c27: mov    0x10(%rbx),%rbx
  0x000000010e406c2b: test   %rbx,%rbx
  0x000000010e406c2e: je     0x000000010e406c37
  0x000000010e406c34: jmpq   *0x38(%rbx)
  0x000000010e406c37: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e406c3c: hlt    
  0x000000010e406c3d: hlt    
  0x000000010e406c3e: hlt    
  0x000000010e406c3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e40ba20, 0x000000010e40ba48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfab4a0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40ba20: mov    0x30(%rsp),%rbx
  0x000000010e40ba25: mov    0x24(%rbx),%ebx
  0x000000010e40ba28: shl    $0x3,%rbx
  0x000000010e40ba2c: mov    0x10(%rbx),%rbx
  0x000000010e40ba30: test   %rbx,%rbx
  0x000000010e40ba33: je     0x000000010e40ba3c
  0x000000010e40ba39: jmpq   *0x38(%rbx)
  0x000000010e40ba3c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40ba41: hlt    
  0x000000010e40ba42: hlt    
  0x000000010e40ba43: hlt    
  0x000000010e40ba44: hlt    
  0x000000010e40ba45: hlt    
  0x000000010e40ba46: hlt    
  0x000000010e40ba47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x000000010e40b820, 0x000000010e40b850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfab5b8} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e40b820: mov    0x14(%rsi),%ebx
  0x000000010e40b823: shl    $0x3,%rbx
  0x000000010e40b827: mov    0x28(%rbx),%ebx
  0x000000010e40b82a: shl    $0x3,%rbx
  0x000000010e40b82e: mov    0x24(%rbx),%ebx
  0x000000010e40b831: shl    $0x3,%rbx
  0x000000010e40b835: mov    0x10(%rbx),%rbx
  0x000000010e40b839: test   %rbx,%rbx
  0x000000010e40b83c: je     0x000000010e40b845
  0x000000010e40b842: jmpq   *0x38(%rbx)
  0x000000010e40b845: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40b84a: hlt    
  0x000000010e40b84b: hlt    
  0x000000010e40b84c: hlt    
  0x000000010e40b84d: hlt    
  0x000000010e40b84e: hlt    
  0x000000010e40b84f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e40b620, 0x000000010e40b640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfab6d0} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e40b620: cmp    (%rsi),%rax
  0x000000010e40b623: mov    0x24(%r8),%ebx
  0x000000010e40b627: shl    $0x3,%rbx
  0x000000010e40b62b: mov    0x10(%rbx),%rbx
  0x000000010e40b62f: test   %rbx,%rbx
  0x000000010e40b632: je     0x000000010e40b63b
  0x000000010e40b638: jmpq   *0x38(%rbx)
  0x000000010e40b63b: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e40b420, 0x000000010e40b450]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfab838} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40b420: mov    0x14(%rsi),%ebx
  0x000000010e40b423: shl    $0x3,%rbx
  0x000000010e40b427: mov    0x28(%rbx),%ebx
  0x000000010e40b42a: shl    $0x3,%rbx
  0x000000010e40b42e: mov    0x24(%rbx),%ebx
  0x000000010e40b431: shl    $0x3,%rbx
  0x000000010e40b435: mov    0x10(%rbx),%rbx
  0x000000010e40b439: test   %rbx,%rbx
  0x000000010e40b43c: je     0x000000010e40b445
  0x000000010e40b442: jmpq   *0x38(%rbx)
  0x000000010e40b445: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40b44a: hlt    
  0x000000010e40b44b: hlt    
  0x000000010e40b44c: hlt    
  0x000000010e40b44d: hlt    
  0x000000010e40b44e: hlt    
  0x000000010e40b44f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e40b220, 0x000000010e40b248]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfacce8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40b220: mov    0x38(%rsp),%rbx
  0x000000010e40b225: mov    0x24(%rbx),%ebx
  0x000000010e40b228: shl    $0x3,%rbx
  0x000000010e40b22c: mov    0x10(%rbx),%rbx
  0x000000010e40b230: test   %rbx,%rbx
  0x000000010e40b233: je     0x000000010e40b23c
  0x000000010e40b239: jmpq   *0x38(%rbx)
  0x000000010e40b23c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40b241: hlt    
  0x000000010e40b242: hlt    
  0x000000010e40b243: hlt    
  0x000000010e40b244: hlt    
  0x000000010e40b245: hlt    
  0x000000010e40b246: hlt    
  0x000000010e40b247: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e40b020, 0x000000010e40b050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cface50} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40b020: mov    0x14(%rsi),%ebx
  0x000000010e40b023: shl    $0x3,%rbx
  0x000000010e40b027: mov    0x28(%rbx),%ebx
  0x000000010e40b02a: shl    $0x3,%rbx
  0x000000010e40b02e: mov    0x24(%rbx),%ebx
  0x000000010e40b031: shl    $0x3,%rbx
  0x000000010e40b035: mov    0x10(%rbx),%rbx
  0x000000010e40b039: test   %rbx,%rbx
  0x000000010e40b03c: je     0x000000010e40b045
  0x000000010e40b042: jmpq   *0x38(%rbx)
  0x000000010e40b045: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40b04a: hlt    
  0x000000010e40b04b: hlt    
  0x000000010e40b04c: hlt    
  0x000000010e40b04d: hlt    
  0x000000010e40b04e: hlt    
  0x000000010e40b04f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e40a820, 0x000000010e40a848]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfae210} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40a820: mov    0x40(%rsp),%rbx
  0x000000010e40a825: mov    0x24(%rbx),%ebx
  0x000000010e40a828: shl    $0x3,%rbx
  0x000000010e40a82c: mov    0x10(%rbx),%rbx
  0x000000010e40a830: test   %rbx,%rbx
  0x000000010e40a833: je     0x000000010e40a83c
  0x000000010e40a839: jmpq   *0x38(%rbx)
  0x000000010e40a83c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40a841: hlt    
  0x000000010e40a842: hlt    
  0x000000010e40a843: hlt    
  0x000000010e40a844: hlt    
  0x000000010e40a845: hlt    
  0x000000010e40a846: hlt    
  0x000000010e40a847: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000010e40a620, 0x000000010e40a650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb0de0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40a620: mov    0x14(%rsi),%ebx
  0x000000010e40a623: shl    $0x3,%rbx
  0x000000010e40a627: mov    0x28(%rbx),%ebx
  0x000000010e40a62a: shl    $0x3,%rbx
  0x000000010e40a62e: mov    0x24(%rbx),%ebx
  0x000000010e40a631: shl    $0x3,%rbx
  0x000000010e40a635: mov    0x10(%rbx),%rbx
  0x000000010e40a639: test   %rbx,%rbx
  0x000000010e40a63c: je     0x000000010e40a645
  0x000000010e40a642: jmpq   *0x38(%rbx)
  0x000000010e40a645: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40a64a: hlt    
  0x000000010e40a64b: hlt    
  0x000000010e40a64c: hlt    
  0x000000010e40a64d: hlt    
  0x000000010e40a64e: hlt    
  0x000000010e40a64f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e40a120, 0x000000010e40a148]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb1f78} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40a120: mov    0x48(%rsp),%rbx
  0x000000010e40a125: mov    0x24(%rbx),%ebx
  0x000000010e40a128: shl    $0x3,%rbx
  0x000000010e40a12c: mov    0x10(%rbx),%rbx
  0x000000010e40a130: test   %rbx,%rbx
  0x000000010e40a133: je     0x000000010e40a13c
  0x000000010e40a139: jmpq   *0x38(%rbx)
  0x000000010e40a13c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40a141: hlt    
  0x000000010e40a142: hlt    
  0x000000010e40a143: hlt    
  0x000000010e40a144: hlt    
  0x000000010e40a145: hlt    
  0x000000010e40a146: hlt    
  0x000000010e40a147: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010e409f20, 0x000000010e409f50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb20e0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e409f20: mov    0x14(%rsi),%ebx
  0x000000010e409f23: shl    $0x3,%rbx
  0x000000010e409f27: mov    0x28(%rbx),%ebx
  0x000000010e409f2a: shl    $0x3,%rbx
  0x000000010e409f2e: mov    0x24(%rbx),%ebx
  0x000000010e409f31: shl    $0x3,%rbx
  0x000000010e409f35: mov    0x10(%rbx),%rbx
  0x000000010e409f39: test   %rbx,%rbx
  0x000000010e409f3c: je     0x000000010e409f45
  0x000000010e409f42: jmpq   *0x38(%rbx)
  0x000000010e409f45: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e409f4a: hlt    
  0x000000010e409f4b: hlt    
  0x000000010e409f4c: hlt    
  0x000000010e409f4d: hlt    
  0x000000010e409f4e: hlt    
  0x000000010e409f4f: hlt    
Compiled method (c2)     396   92             java.lang.String::hashCode (49 bytes)
 total in heap  [0x000000010e40d410,0x000000010e40dae8] = 1752
 relocation     [0x000000010e40d588,0x000000010e40d5a0] = 24
 main code      [0x000000010e40d5a0,0x000000010e40d7c0] = 544
 stub code      [0x000000010e40d7c0,0x000000010e40d7d8] = 24
 metadata       [0x000000010e40d7d8,0x000000010e40d7f0] = 24
 scopes data    [0x000000010e40d7f0,0x000000010e40d8d0] = 224
 scopes pcs     [0x000000010e40d8d0,0x000000010e40dad0] = 512
 dependencies   [0x000000010e40dad0,0x000000010e40dad8] = 8
 nul chk table  [0x000000010e40dad8,0x000000010e40dae8] = 16
----------------------------------------------------------------------
java/lang/String.hashCode()I  [0x000000010e40d5a0, 0x000000010e40d7d8]  568 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cb91bd0} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x30]  (sp of caller)
  0x000000010e40d5a0: mov    0x8(%rsi),%r10d
  0x000000010e40d5a4: movabs $0x800000000,%r12
  0x000000010e40d5ae: add    %r12,%r10
  0x000000010e40d5b1: xor    %r12,%r12
  0x000000010e40d5b4: cmp    %r10,%rax
  0x000000010e40d5b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40d5bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e40d5c0: mov    %eax,-0x14000(%rsp)
  0x000000010e40d5c7: push   %rbp
  0x000000010e40d5c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1502)

  0x000000010e40d5cc: mov    %rsi,%r9
  0x000000010e40d5cf: mov    0x10(%rsi),%eax    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)

  0x000000010e40d5d2: test   %eax,%eax
  0x000000010e40d5d4: je     0x000000010e40d5e6  ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1502)

  0x000000010e40d5d6: add    $0x20,%rsp
  0x000000010e40d5da: pop    %rbp
  0x000000010e40d5db: mov    0x108(%r15),%r10
  0x000000010e40d5e2: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e40d5e5: retq   
  0x000000010e40d5e6: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)

  0x000000010e40d5e9: mov    0xc(%r12,%rbx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; implicit exception: dispatches to 0x000000010e40d7a2
  0x000000010e40d5ee: test   %r11d,%r11d
  0x000000010e40d5f1: jbe    0x000000010e40d76f  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)

  0x000000010e40d5f7: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)

  0x000000010e40d5fb: test   %ebp,%ebp
  0x000000010e40d5fd: jne    0x000000010e40d78e  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)

  0x000000010e40d603: mov    %r11d,%ecx
  0x000000010e40d606: dec    %ecx
  0x000000010e40d608: cmp    %r11d,%ecx
  0x000000010e40d60b: jae    0x000000010e40d776
  0x000000010e40d611: movzbl 0x10(%r12,%rbx,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d617: mov    %r11d,%esi
  0x000000010e40d61a: add    $0xfffffff9,%esi
  0x000000010e40d61d: shl    $0x3,%rbx          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)

  0x000000010e40d621: mov    $0x80000000,%r10d
  0x000000010e40d627: cmp    %esi,%ecx
  0x000000010e40d629: cmovl  %r10d,%esi
  0x000000010e40d62d: mov    $0x1,%r10d
  0x000000010e40d633: cmp    $0x1,%esi
  0x000000010e40d636: jle    0x000000010e40d742
  0x000000010e40d63c: mov    %edi,%r8d
  0x000000010e40d63f: shl    $0x5,%r8d
  0x000000010e40d643: sub    %edi,%r8d          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d646: jmp    0x000000010e40d652
  0x000000010e40d648: vmovq  %xmm0,%r9
  0x000000010e40d64d: vmovd  %xmm2,%r11d
  0x000000010e40d652: mov    %esi,%edx
  0x000000010e40d654: sub    %r10d,%edx
  0x000000010e40d657: mov    $0x1f40,%ecx
  0x000000010e40d65c: cmp    %ecx,%edx
  0x000000010e40d65e: mov    $0x1f40,%edi
  0x000000010e40d663: cmovg  %edi,%edx
  0x000000010e40d666: add    %r10d,%edx
  0x000000010e40d669: vmovq  %r9,%xmm0
  0x000000010e40d66e: vmovd  %r11d,%xmm2
  0x000000010e40d673: nopw   0x0(%rax,%rax,1)
  0x000000010e40d67c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d680: movslq %r10d,%r9          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d683: movzbl 0x10(%rbx,%r9,1),%r13d
  0x000000010e40d689: movzbl 0x17(%rbx,%r9,1),%eax
  0x000000010e40d68f: movzbl 0x11(%rbx,%r9,1),%r11d
  0x000000010e40d695: movzbl 0x16(%rbx,%r9,1),%ecx
  0x000000010e40d69b: movzbl 0x15(%rbx,%r9,1),%edi
  0x000000010e40d6a1: add    %r13d,%r8d
  0x000000010e40d6a4: movzbl 0x13(%rbx,%r9,1),%r13d
  0x000000010e40d6aa: mov    %r8d,%ebp
  0x000000010e40d6ad: shl    $0x5,%ebp
  0x000000010e40d6b0: sub    %r8d,%ebp
  0x000000010e40d6b3: add    %r11d,%ebp
  0x000000010e40d6b6: movzbl 0x12(%rbx,%r9,1),%r11d
  0x000000010e40d6bc: movzbl 0x14(%rbx,%r9,1),%r9d
  0x000000010e40d6c2: mov    %ebp,%r14d
  0x000000010e40d6c5: shl    $0x5,%r14d
  0x000000010e40d6c9: sub    %ebp,%r14d
  0x000000010e40d6cc: add    %r11d,%r14d
  0x000000010e40d6cf: mov    %r14d,%r8d
  0x000000010e40d6d2: shl    $0x5,%r8d
  0x000000010e40d6d6: sub    %r14d,%r8d
  0x000000010e40d6d9: add    %r13d,%r8d
  0x000000010e40d6dc: mov    %r8d,%r11d
  0x000000010e40d6df: shl    $0x5,%r11d
  0x000000010e40d6e3: sub    %r8d,%r11d
  0x000000010e40d6e6: add    %r9d,%r11d
  0x000000010e40d6e9: mov    %r11d,%r8d
  0x000000010e40d6ec: shl    $0x5,%r8d
  0x000000010e40d6f0: sub    %r11d,%r8d
  0x000000010e40d6f3: add    %edi,%r8d
  0x000000010e40d6f6: mov    %r8d,%r9d
  0x000000010e40d6f9: shl    $0x5,%r9d
  0x000000010e40d6fd: sub    %r8d,%r9d
  0x000000010e40d700: add    %ecx,%r9d
  0x000000010e40d703: mov    %r9d,%edi
  0x000000010e40d706: shl    $0x5,%edi
  0x000000010e40d709: sub    %r9d,%edi
  0x000000010e40d70c: add    %eax,%edi          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d70e: mov    %edi,%r8d
  0x000000010e40d711: shl    $0x5,%r8d
  0x000000010e40d715: sub    %edi,%r8d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d718: add    $0x8,%r10d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d71c: cmp    %edx,%r10d
  0x000000010e40d71f: jl     0x000000010e40d680  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d725: mov    0x108(%r15),%r11   ; ImmutableOopMap{rbx=Oop xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d72c: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ;   {poll}
  0x000000010e40d72f: cmp    %esi,%r10d
  0x000000010e40d732: jl     0x000000010e40d648
  0x000000010e40d738: vmovq  %xmm0,%r9
  0x000000010e40d73d: vmovd  %xmm2,%r11d
  0x000000010e40d742: cmp    %r11d,%r10d
  0x000000010e40d745: jge    0x000000010e40d76b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d747: movzbl 0x10(%rbx,%r10,1),%ecx
  0x000000010e40d74d: mov    %edi,%eax
  0x000000010e40d74f: shl    $0x5,%eax
  0x000000010e40d752: sub    %edi,%eax
  0x000000010e40d754: add    %ecx,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d756: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d759: cmp    %r11d,%r10d
  0x000000010e40d75c: jge    0x000000010e40d762  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d75e: mov    %eax,%edi
  0x000000010e40d760: jmp    0x000000010e40d747
  0x000000010e40d762: mov    %eax,0x10(%r9)     ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)

  0x000000010e40d766: jmpq   0x000000010e40d5d6
  0x000000010e40d76b: mov    %edi,%eax
  0x000000010e40d76d: jmp    0x000000010e40d762
  0x000000010e40d76f: xor    %eax,%eax
  0x000000010e40d771: jmpq   0x000000010e40d5d6
  0x000000010e40d776: mov    $0xffffff7e,%esi
  0x000000010e40d77b: mov    %r9,%rbp
  0x000000010e40d77e: mov    %ebx,(%rsp)
  0x000000010e40d781: mov    %r11d,0x8(%rsp)
  0x000000010e40d786: nop
  0x000000010e40d787: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40d78c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)

  0x000000010e40d78e: mov    $0xffffff4d,%esi
  0x000000010e40d793: mov    %r9,0x8(%rsp)
  0x000000010e40d798: data16 xchg %ax,%ax
  0x000000010e40d79b: callq  0x000000010e3b3900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40d7a0: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)

  0x000000010e40d7a2: mov    $0xfffffff6,%esi
  0x000000010e40d7a7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40d7ac: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)

  0x000000010e40d7ae: hlt    
  0x000000010e40d7af: hlt    
  0x000000010e40d7b0: hlt    
  0x000000010e40d7b1: hlt    
  0x000000010e40d7b2: hlt    
  0x000000010e40d7b3: hlt    
  0x000000010e40d7b4: hlt    
  0x000000010e40d7b5: hlt    
  0x000000010e40d7b6: hlt    
  0x000000010e40d7b7: hlt    
  0x000000010e40d7b8: hlt    
  0x000000010e40d7b9: hlt    
  0x000000010e40d7ba: hlt    
  0x000000010e40d7bb: hlt    
  0x000000010e40d7bc: hlt    
  0x000000010e40d7bd: hlt    
  0x000000010e40d7be: hlt    
  0x000000010e40d7bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e40d7c0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e40d7c5: callq  0x000000010e40d7ca
  0x000000010e40d7ca: subq   $0x5,(%rsp)
  0x000000010e40d7cf: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e40d7d4: hlt    
  0x000000010e40d7d5: hlt    
  0x000000010e40d7d6: hlt    
  0x000000010e40d7d7: hlt    

ImmutableOopMap{rbx=Oop xmm0=Oop }pc offsets: 396 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 492 
ImmutableOopMap{[8]=Oop }pc offsets: 512 
ImmutableOopMap{}pc offsets: 524 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e409a20, 0x000000010e409a48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb3350} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e409a20: mov    0x50(%rsp),%rbx
  0x000000010e409a25: mov    0x24(%rbx),%ebx
  0x000000010e409a28: shl    $0x3,%rbx
  0x000000010e409a2c: mov    0x10(%rbx),%rbx
  0x000000010e409a30: test   %rbx,%rbx
  0x000000010e409a33: je     0x000000010e409a3c
  0x000000010e409a39: jmpq   *0x38(%rbx)
  0x000000010e409a3c: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e409a41: hlt    
  0x000000010e409a42: hlt    
  0x000000010e409a43: hlt    
  0x000000010e409a44: hlt    
  0x000000010e409a45: hlt    
  0x000000010e409a46: hlt    
  0x000000010e409a47: hlt    
Compiled method (c2)     406   94             java.util.Arrays::copyOfRange (63 bytes)
 total in heap  [0x000000010e409210,0x000000010e409830] = 1568
 relocation     [0x000000010e409388,0x000000010e4093a0] = 24
 main code      [0x000000010e4093a0,0x000000010e4095e0] = 576
 stub code      [0x000000010e4095e0,0x000000010e4095f8] = 24
 metadata       [0x000000010e4095f8,0x000000010e409608] = 16
 scopes data    [0x000000010e409608,0x000000010e409690] = 136
 scopes pcs     [0x000000010e409690,0x000000010e409800] = 368
 dependencies   [0x000000010e409800,0x000000010e409808] = 8
 handler table  [0x000000010e409808,0x000000010e409820] = 24
 nul chk table  [0x000000010e409820,0x000000010e409830] = 16
----------------------------------------------------------------------
java/util/Arrays.copyOfRange([BII)[B  [0x000000010e4093a0, 0x000000010e4095f8]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cd45e90} 'copyOfRange' '([BII)[B' in 'java/util/Arrays'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x000000010e4093a0: mov    %eax,-0x14000(%rsp)
  0x000000010e4093a7: push   %rbp
  0x000000010e4093a8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.Arrays::copyOfRange@-1 (line 4027)

  0x000000010e4093ac: mov    %rsi,%r11
  0x000000010e4093af: mov    %ecx,%r10d
  0x000000010e4093b2: sub    %edx,%r10d         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@2 (line 4027)

  0x000000010e4093b5: test   %r10d,%r10d
  0x000000010e4093b8: jl     0x000000010e40958e  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)

  0x000000010e4093be: cmp    $0x100000,%r10d
  0x000000010e4093c5: ja     0x000000010e40953a
  0x000000010e4093cb: movslq %r10d,%r8          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)

  0x000000010e4093ce: mov    %rsi,%r9
  0x000000010e4093d1: mov    0xc(%rsi),%ebx     ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ; implicit exception: dispatches to 0x000000010e4095ae
  0x000000010e4093d4: test   %edx,%edx
  0x000000010e4093d6: jl     0x000000010e409571  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)

  0x000000010e4093dc: mov    %ebx,%edi
  0x000000010e4093de: sub    %edx,%edi          ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@52 (line 4031)

  0x000000010e4093e0: mov    %r10d,%ecx         ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)

  0x000000010e4093e3: cmp    %ecx,%edi
  0x000000010e4093e5: mov    %ecx,%ebp
  0x000000010e4093e7: cmovl  %edi,%ebp          ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@54 (line 4032)

  0x000000010e4093ea: mov    %edx,%edi
  0x000000010e4093ec: add    %ebp,%edi
  0x000000010e4093ee: cmp    %edi,%ebx
  0x000000010e4093f0: jb     0x000000010e409571
  0x000000010e4093f6: cmp    %ebp,%ecx
  0x000000010e4093f8: jb     0x000000010e409571
  0x000000010e4093fe: test   %ebp,%ebp
  0x000000010e409400: jl     0x000000010e409571  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)

  0x000000010e409406: add    $0x17,%r8
  0x000000010e40940a: cmp    $0x100000,%r10d
  0x000000010e409411: ja     0x000000010e4094f9
  0x000000010e409417: mov    %r8,%r11
  0x000000010e40941a: and    $0xfffffffffffffff8,%r11
  0x000000010e40941e: mov    0x118(%r15),%rbx
  0x000000010e409425: mov    %rbx,%rcx
  0x000000010e409428: add    %r11,%rcx
  0x000000010e40942b: cmp    0x128(%r15),%rcx
  0x000000010e409432: jae    0x000000010e4094f9
  0x000000010e409438: mov    %rcx,0x118(%r15)
  0x000000010e40943f: prefetchnta 0xc0(%rcx)
  0x000000010e409446: movq   $0x1,(%rbx)
  0x000000010e40944d: prefetchnta 0x100(%rcx)
  0x000000010e409454: movl   $0x820,0x8(%rbx)   ;   {metadata({type array byte})}
  0x000000010e40945b: mov    %r10d,0xc(%rbx)
  0x000000010e40945f: prefetchnta 0x140(%rcx)
  0x000000010e409466: prefetchnta 0x180(%rcx)   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)

  0x000000010e40946d: mov    %rbx,%r11
  0x000000010e409470: add    $0x10,%r11
  0x000000010e409474: shr    $0x3,%r8
  0x000000010e409478: test   %ebp,%ebp
  0x000000010e40947a: je     0x000000010e409542
  0x000000010e409480: lea    0x10(%r9,%rdx,1),%rsi
  0x000000010e409485: movslq %ebp,%rdx
  0x000000010e409488: cmp    %r10d,%ebp
  0x000000010e40948b: jl     0x000000010e4094b9
  0x000000010e40948d: mov    %rsi,%rdi
  0x000000010e409490: mov    %r11,%rsi
  0x000000010e409493: vzeroupper 
  0x000000010e409496: movabs $0x10e3c0cc0,%r10
  0x000000010e4094a0: callq  *%r10              ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)

  0x000000010e4094a3: mov    %rbx,%rax
  0x000000010e4094a6: vzeroupper 
  0x000000010e4094a9: add    $0x30,%rsp
  0x000000010e4094ad: pop    %rbp
  0x000000010e4094ae: mov    0x108(%r15),%r10
  0x000000010e4094b5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4094b8: retq   
  0x000000010e4094b9: mov    %rdx,%r10
  0x000000010e4094bc: add    $0x10,%r10
  0x000000010e4094c0: mov    %r10,%r9
  0x000000010e4094c3: and    $0xfffffffffffffff8,%r9
  0x000000010e4094c7: mov    %rbx,%rdi
  0x000000010e4094ca: add    %r9,%rdi
  0x000000010e4094cd: shr    $0x3,%r10
  0x000000010e4094d1: sub    %r10,%r8
  0x000000010e4094d4: mov    %r8,%rcx
  0x000000010e4094d7: xor    %rax,%rax
  0x000000010e4094da: cmp    $0x8,%rcx
  0x000000010e4094de: jg     0x000000010e4094f0
  0x000000010e4094e0: dec    %rcx
  0x000000010e4094e3: js     0x000000010e4094f7
  0x000000010e4094e5: mov    %rax,(%rdi,%rcx,8)
  0x000000010e4094e9: dec    %rcx
  0x000000010e4094ec: jge    0x000000010e4094e5
  0x000000010e4094ee: jmp    0x000000010e4094f7
  0x000000010e4094f0: shl    $0x3,%rcx
  0x000000010e4094f4: rep rex.W stos %al,%es:(%rdi)
  0x000000010e4094f7: jmp    0x000000010e40948d
  0x000000010e4094f9: mov    %r8,0x10(%rsp)
  0x000000010e4094fe: mov    %r10d,0x4(%rsp)
  0x000000010e409503: mov    %rsi,0x8(%rsp)
  0x000000010e409508: mov    %edx,(%rsp)
  0x000000010e40950b: movabs $0x800000820,%rsi  ;   {metadata({type array byte})}
  0x000000010e409515: mov    %r10d,%edx
  0x000000010e409518: vzeroupper 
  0x000000010e40951b: callq  0x000000010e3e9980  ; ImmutableOopMap{[8]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e409520: mov    (%rsp),%edx
  0x000000010e409523: mov    0x8(%rsp),%r9
  0x000000010e409528: mov    0x4(%rsp),%r10d
  0x000000010e40952d: mov    0x10(%rsp),%r8
  0x000000010e409532: mov    %rax,%rbx
  0x000000010e409535: jmpq   0x000000010e40946d
  0x000000010e40953a: movslq %r10d,%r8          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)

  0x000000010e40953d: jmpq   0x000000010e4093ce
  0x000000010e409542: add    $0xfffffffffffffffe,%r8
  0x000000010e409546: mov    %r8,%rcx
  0x000000010e409549: mov    %r11,%rdi
  0x000000010e40954c: xor    %rax,%rax
  0x000000010e40954f: cmp    $0x8,%rcx
  0x000000010e409553: jg     0x000000010e409565
  0x000000010e409555: dec    %rcx
  0x000000010e409558: js     0x000000010e40956c
  0x000000010e40955a: mov    %rax,(%rdi,%rcx,8)
  0x000000010e40955e: dec    %rcx
  0x000000010e409561: jge    0x000000010e40955a
  0x000000010e409563: jmp    0x000000010e40956c
  0x000000010e409565: shl    $0x3,%rcx
  0x000000010e409569: rep rex.W stos %al,%es:(%rdi)
  0x000000010e40956c: jmpq   0x000000010e4094a3  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)

  0x000000010e409571: mov    $0xffffffcc,%esi
  0x000000010e409576: mov    %r9,%rbp
  0x000000010e409579: mov    %edx,(%rsp)
  0x000000010e40957c: mov    %r10d,0x8(%rsp)
  0x000000010e409581: data16 xchg %ax,%ax
  0x000000010e409584: vzeroupper 
  0x000000010e409587: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40958c: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)

  0x000000010e40958e: mov    $0xffffff4d,%esi
  0x000000010e409593: mov    %r11,%rbp
  0x000000010e409596: mov    %edx,(%rsp)
  0x000000010e409599: mov    %ecx,0x4(%rsp)
  0x000000010e40959d: mov    %r10d,0xc(%rsp)
  0x000000010e4095a2: xchg   %ax,%ax
  0x000000010e4095a4: vzeroupper 
  0x000000010e4095a7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4095ac: ud2                       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)

  0x000000010e4095ae: mov    $0xfffffff6,%esi
  0x000000010e4095b3: nop
  0x000000010e4095b4: vzeroupper 
  0x000000010e4095b7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4095bc: ud2                       ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)

  0x000000010e4095be: mov    %rax,%rsi
  0x000000010e4095c1: vzeroupper 
  0x000000010e4095c4: add    $0x30,%rsp
  0x000000010e4095c8: pop    %rbp
  0x000000010e4095c9: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e4095ce: hlt    
  0x000000010e4095cf: hlt    
  0x000000010e4095d0: hlt    
  0x000000010e4095d1: hlt    
  0x000000010e4095d2: hlt    
  0x000000010e4095d3: hlt    
  0x000000010e4095d4: hlt    
  0x000000010e4095d5: hlt    
  0x000000010e4095d6: hlt    
  0x000000010e4095d7: hlt    
  0x000000010e4095d8: hlt    
  0x000000010e4095d9: hlt    
  0x000000010e4095da: hlt    
  0x000000010e4095db: hlt    
  0x000000010e4095dc: hlt    
  0x000000010e4095dd: hlt    
  0x000000010e4095de: hlt    
  0x000000010e4095df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e4095e0: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e4095e5: callq  0x000000010e4095ea
  0x000000010e4095ea: subq   $0x5,(%rsp)
  0x000000010e4095ef: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e4095f4: hlt    
  0x000000010e4095f5: hlt    
  0x000000010e4095f6: hlt    
  0x000000010e4095f7: hlt    

ImmutableOopMap{[8]=Oop }pc offsets: 384 
ImmutableOopMap{rbp=Oop }pc offsets: 492 524 
ImmutableOopMap{}pc offsets: 540 Compiled method (c2)     413   95             java.lang.StringLatin1::newString (17 bytes)
 total in heap  [0x000000010e408910,0x000000010e4091f8] = 2280
 relocation     [0x000000010e408a88,0x000000010e408ab0] = 40
 main code      [0x000000010e408ac0,0x000000010e408e80] = 960
 stub code      [0x000000010e408e80,0x000000010e408e98] = 24
 metadata       [0x000000010e408e98,0x000000010e408ec0] = 40
 scopes data    [0x000000010e408ec0,0x000000010e408fb0] = 240
 scopes pcs     [0x000000010e408fb0,0x000000010e4091b0] = 512
 dependencies   [0x000000010e4091b0,0x000000010e4091b8] = 8
 handler table  [0x000000010e4091b8,0x000000010e4091e8] = 48
 nul chk table  [0x000000010e4091e8,0x000000010e4091f8] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.newString([BII)Ljava/lang/String;  [0x000000010e408ac0, 0x000000010e408e98]  984 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cce6948} 'newString' '([BII)Ljava/lang/String;' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0x50]  (sp of caller)
  0x000000010e408ac0: mov    %eax,-0x14000(%rsp)
  0x000000010e408ac7: push   %rbp
  0x000000010e408ac8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::newString@-1 (line 715)

  0x000000010e408acc: mov    %ecx,%ebp
  0x000000010e408ace: mov    %edx,0x18(%rsp)
  0x000000010e408ad2: mov    %rsi,0x10(%rsp)
  0x000000010e408ad7: mov    0x118(%r15),%r13
  0x000000010e408ade: mov    %r13,%r10
  0x000000010e408ae1: add    $0x18,%r10
  0x000000010e408ae5: cmp    0x128(%r15),%r10
  0x000000010e408aec: jae    0x000000010e408d48  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)

  0x000000010e408af2: mov    %r10,0x118(%r15)
  0x000000010e408af9: prefetchnta 0xc0(%r10)
  0x000000010e408b01: mov    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x000000010e408b07: movabs $0x800000000,%r10
  0x000000010e408b11: add    %r11,%r10
  0x000000010e408b14: mov    0xb8(%r10),%r10
  0x000000010e408b1b: mov    %r10,0x0(%r13)
  0x000000010e408b1f: movl   $0x1808,0x8(%r13)  ;   {metadata('java/lang/String')}
  0x000000010e408b27: movl   $0x0,0xc(%r13)
  0x000000010e408b2f: movq   $0x0,0x10(%r13)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::newString@0 (line 715)

  0x000000010e408b37: mov    %ebp,%r10d
  0x000000010e408b3a: test   %r10d,%r10d
  0x000000010e408b3d: jl     0x000000010e408e26  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b43: cmp    $0x100000,%r10d
  0x000000010e408b4a: ja     0x000000010e408db4
  0x000000010e408b50: movslq %r10d,%r8          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b53: mov    0x10(%rsp),%r9
  0x000000010e408b58: mov    0xc(%r9),%ebx      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; implicit exception: dispatches to 0x000000010e408e46
  0x000000010e408b5c: mov    0x18(%rsp),%r11d
  0x000000010e408b61: test   %r11d,%r11d
  0x000000010e408b64: jl     0x000000010e408deb  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b6a: mov    %ebx,%ecx
  0x000000010e408b6c: sub    %r11d,%ecx         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@52 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b6f: mov    %r10d,%edx         ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b72: cmp    %edx,%ecx
  0x000000010e408b74: mov    %edx,%ebp
  0x000000010e408b76: cmovl  %ecx,%ebp          ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@54 (line 4032)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b79: mov    %r11d,%edi
  0x000000010e408b7c: add    %ebp,%edi
  0x000000010e408b7e: cmp    %edi,%ebx
  0x000000010e408b80: jb     0x000000010e408deb
  0x000000010e408b86: cmp    %ebp,%edx
  0x000000010e408b88: jb     0x000000010e408deb
  0x000000010e408b8e: test   %ebp,%ebp
  0x000000010e408b90: jl     0x000000010e408deb  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b96: add    $0x17,%r8          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408b9a: cmp    $0x100000,%r10d
  0x000000010e408ba1: ja     0x000000010e408d64
  0x000000010e408ba7: mov    0x118(%r15),%r14
  0x000000010e408bae: mov    %r8,%rcx
  0x000000010e408bb1: and    $0xfffffffffffffff8,%rcx
  0x000000010e408bb5: mov    %r14,%rbx
  0x000000010e408bb8: add    %rcx,%rbx
  0x000000010e408bbb: cmp    0x128(%r15),%rbx
  0x000000010e408bc2: jae    0x000000010e408d64  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)

  0x000000010e408bc8: mov    %rbx,0x118(%r15)
  0x000000010e408bcf: prefetchnta 0xc0(%rbx)
  0x000000010e408bd6: movq   $0x1,(%r14)
  0x000000010e408bdd: prefetchnta 0x100(%rbx)
  0x000000010e408be4: movl   $0x820,0x8(%r14)   ;   {metadata({type array byte})}
  0x000000010e408bec: mov    %r10d,0xc(%r14)
  0x000000010e408bf0: prefetchnta 0x140(%rbx)
  0x000000010e408bf7: prefetchnta 0x180(%rbx)   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408bfe: mov    %r14,%rsi
  0x000000010e408c01: add    $0x10,%rsi
  0x000000010e408c05: shr    $0x3,%r8
  0x000000010e408c09: mov    %r14,%rbx
  0x000000010e408c0c: shr    $0x3,%rbx
  0x000000010e408c10: test   %ebp,%ebp
  0x000000010e408c12: je     0x000000010e408dbc
  0x000000010e408c18: lea    0x10(%r9,%r11,1),%r11
  0x000000010e408c1d: movslq %ebp,%rdx
  0x000000010e408c20: cmp    %r10d,%ebp
  0x000000010e408c23: jl     0x000000010e408cce
  0x000000010e408c29: mov    %r11,%rdi
  0x000000010e408c2c: vzeroupper 
  0x000000010e408c2f: movabs $0x10e3c0cc0,%r10
  0x000000010e408c39: callq  *%r10
  0x000000010e408c3c: cmpb   $0x0,0x30(%r15)
  0x000000010e408c41: jne    0x000000010e408d11
  0x000000010e408c47: mov    %ebx,0xc(%r13)
  0x000000010e408c4b: mov    %r14,%r10
  0x000000010e408c4e: mov    %r13,%r11
  0x000000010e408c51: xor    %r11,%r10
  0x000000010e408c54: shr    $0x14,%r10
  0x000000010e408c58: test   %r10,%r10
  0x000000010e408c5b: je     0x000000010e408cb3
  0x000000010e408c5d: shr    $0x9,%r11
  0x000000010e408c61: movabs $0x10e38b000,%rdi
  0x000000010e408c6b: add    %r11,%rdi
  0x000000010e408c6e: cmpb   $0x20,(%rdi)
  0x000000010e408c71: je     0x000000010e408cb3
  0x000000010e408c73: mov    0x80(%r15),%r10
  0x000000010e408c7a: mov    0x70(%r15),%r11
  0x000000010e408c7e: lock addl $0x0,-0x40(%rsp)
  0x000000010e408c84: cmpb   $0x0,(%rdi)
  0x000000010e408c87: je     0x000000010e408cb3
  0x000000010e408c89: movb   $0x0,(%rdi)
  0x000000010e408c8c: test   %r11,%r11
  0x000000010e408c8f: jne    0x000000010e408ca6
  0x000000010e408c91: mov    %r15,%rsi
  0x000000010e408c94: vzeroupper 
  0x000000010e408c97: movabs $0x104b038ce,%r10
  0x000000010e408ca1: callq  *%r10
  0x000000010e408ca4: jmp    0x000000010e408cb3
  0x000000010e408ca6: mov    %rdi,-0x8(%r10,%r11,1)
  0x000000010e408cab: add    $0xfffffffffffffff8,%r11
  0x000000010e408caf: mov    %r11,0x70(%r15)    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)

  0x000000010e408cb3: movb   $0x0,0x14(%r13)    ;*synchronization entry
                                                ; - java.lang.StringLatin1::newString@-1 (line 715)

  0x000000010e408cb8: mov    %r13,%rax
  0x000000010e408cbb: vzeroupper 
  0x000000010e408cbe: add    $0x40,%rsp
  0x000000010e408cc2: pop    %rbp
  0x000000010e408cc3: mov    0x108(%r15),%r10
  0x000000010e408cca: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e408ccd: retq   
  0x000000010e408cce: mov    %rdx,%r10
  0x000000010e408cd1: add    $0x10,%r10
  0x000000010e408cd5: mov    %r10,%r9
  0x000000010e408cd8: and    $0xfffffffffffffff8,%r9
  0x000000010e408cdc: mov    %r14,%rdi
  0x000000010e408cdf: add    %r9,%rdi
  0x000000010e408ce2: shr    $0x3,%r10
  0x000000010e408ce6: sub    %r10,%r8
  0x000000010e408ce9: mov    %r8,%rcx
  0x000000010e408cec: xor    %rax,%rax
  0x000000010e408cef: cmp    $0x8,%rcx
  0x000000010e408cf3: jg     0x000000010e408d05
  0x000000010e408cf5: dec    %rcx
  0x000000010e408cf8: js     0x000000010e408d0c
  0x000000010e408cfa: mov    %rax,(%rdi,%rcx,8)
  0x000000010e408cfe: dec    %rcx
  0x000000010e408d01: jge    0x000000010e408cfa
  0x000000010e408d03: jmp    0x000000010e408d0c
  0x000000010e408d05: shl    $0x3,%rcx
  0x000000010e408d09: rep rex.W stos %al,%es:(%rdi)
  0x000000010e408d0c: jmpq   0x000000010e408c29
  0x000000010e408d11: mov    0xc(%r13),%r11d
  0x000000010e408d15: test   %r11d,%r11d
  0x000000010e408d18: je     0x000000010e408c47
  0x000000010e408d1e: mov    0x38(%r15),%r10
  0x000000010e408d22: mov    %r11,%rdi
  0x000000010e408d25: shl    $0x3,%rdi
  0x000000010e408d29: test   %r10,%r10
  0x000000010e408d2c: je     0x000000010e408e0e
  0x000000010e408d32: mov    0x48(%r15),%r11
  0x000000010e408d36: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e408d3b: add    $0xfffffffffffffff8,%r10
  0x000000010e408d3f: mov    %r10,0x38(%r15)    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)

  0x000000010e408d43: jmpq   0x000000010e408c47
  0x000000010e408d48: movabs $0x800001808,%rsi  ;   {metadata('java/lang/String')}
  0x000000010e408d52: xchg   %ax,%ax
  0x000000010e408d54: vzeroupper 
  0x000000010e408d57: callq  0x000000010e3e8380  ; ImmutableOopMap{[16]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.StringLatin1::newString@0 (line 715)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e408d5c: mov    %rax,%r13
  0x000000010e408d5f: jmpq   0x000000010e408b37
  0x000000010e408d64: mov    %r8,0x18(%rsp)
  0x000000010e408d69: mov    %r13,0x10(%rsp)
  0x000000010e408d6e: mov    %r10d,0xc(%rsp)
  0x000000010e408d73: mov    %r11d,0x8(%rsp)
  0x000000010e408d78: mov    %r9,(%rsp)
  0x000000010e408d7c: movabs $0x800000820,%rsi  ;   {metadata({type array byte})}
  0x000000010e408d86: mov    %r10d,%edx
  0x000000010e408d89: data16 xchg %ax,%ax
  0x000000010e408d8c: vzeroupper 
  0x000000010e408d8f: callq  0x000000010e3e9980  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e408d94: mov    (%rsp),%r9
  0x000000010e408d98: mov    0x8(%rsp),%r11d
  0x000000010e408d9d: mov    0xc(%rsp),%r10d
  0x000000010e408da2: mov    0x10(%rsp),%r13
  0x000000010e408da7: mov    0x18(%rsp),%r8
  0x000000010e408dac: mov    %rax,%r14
  0x000000010e408daf: jmpq   0x000000010e408bfe
  0x000000010e408db4: movslq %r10d,%r8          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408db7: jmpq   0x000000010e408b53
  0x000000010e408dbc: add    $0xfffffffffffffffe,%r8
  0x000000010e408dc0: mov    %r8,%rcx
  0x000000010e408dc3: mov    %rsi,%rdi
  0x000000010e408dc6: xor    %rax,%rax
  0x000000010e408dc9: cmp    $0x8,%rcx
  0x000000010e408dcd: jg     0x000000010e408ddf
  0x000000010e408dcf: dec    %rcx
  0x000000010e408dd2: js     0x000000010e408de6
  0x000000010e408dd4: mov    %rax,(%rdi,%rcx,8)
  0x000000010e408dd8: dec    %rcx
  0x000000010e408ddb: jge    0x000000010e408dd4
  0x000000010e408ddd: jmp    0x000000010e408de6
  0x000000010e408ddf: shl    $0x3,%rcx
  0x000000010e408de3: rep rex.W stos %al,%es:(%rdi)
  0x000000010e408de6: jmpq   0x000000010e408c3c  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@57 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408deb: mov    $0xffffffcc,%esi
  0x000000010e408df0: mov    %r13,(%rsp)
  0x000000010e408df4: mov    %r9,0x8(%rsp)
  0x000000010e408df9: mov    %r11d,0x10(%rsp)
  0x000000010e408dfe: mov    %r10d,0x18(%rsp)
  0x000000010e408e03: nop
  0x000000010e408e04: vzeroupper 
  0x000000010e408e07: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e408e0c: ud2    
  0x000000010e408e0e: mov    %r15,%rsi
  0x000000010e408e11: vzeroupper 
  0x000000010e408e14: movabs $0x104b038aa,%r10
  0x000000010e408e1e: callq  *%r10              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)

  0x000000010e408e21: jmpq   0x000000010e408c47  ;*synchronization entry
                                                ; - java.util.Arrays::copyOfRange@-1 (line 4027)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408e26: mov    0x18(%rsp),%ebp
  0x000000010e408e2a: add    %r10d,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::newString@8 (line 715)

  0x000000010e408e2d: mov    $0xffffff4d,%esi
  0x000000010e408e32: mov    %r13,0x8(%rsp)
  0x000000010e408e37: mov    %r10d,0x20(%rsp)
  0x000000010e408e3c: vzeroupper 
  0x000000010e408e3f: callq  0x000000010e3b3900  ; ImmutableOopMap{[8]=Oop [16]=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e408e44: ud2    
  0x000000010e408e46: mov    $0xfffffff6,%esi
  0x000000010e408e4b: nop
  0x000000010e408e4c: vzeroupper 
  0x000000010e408e4f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e408e54: ud2                       ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)

  0x000000010e408e56: mov    %rax,%rsi
  0x000000010e408e59: jmp    0x000000010e408e5e
  0x000000010e408e5b: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::newString@0 (line 715)

  0x000000010e408e5e: vzeroupper 
  0x000000010e408e61: add    $0x40,%rsp
  0x000000010e408e65: pop    %rbp
  0x000000010e408e66: jmpq   0x000000010e3ea700  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::<init>@6 (line 3253)
                                                ; - java.lang.StringLatin1::newString@13 (line 715)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e408e6b: hlt    
  0x000000010e408e6c: hlt    
  0x000000010e408e6d: hlt    
  0x000000010e408e6e: hlt    
  0x000000010e408e6f: hlt    
  0x000000010e408e70: hlt    
  0x000000010e408e71: hlt    
  0x000000010e408e72: hlt    
  0x000000010e408e73: hlt    
  0x000000010e408e74: hlt    
  0x000000010e408e75: hlt    
  0x000000010e408e76: hlt    
  0x000000010e408e77: hlt    
  0x000000010e408e78: hlt    
  0x000000010e408e79: hlt    
  0x000000010e408e7a: hlt    
  0x000000010e408e7b: hlt    
  0x000000010e408e7c: hlt    
  0x000000010e408e7d: hlt    
  0x000000010e408e7e: hlt    
  0x000000010e408e7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e408e80: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e408e85: callq  0x000000010e408e8a
  0x000000010e408e8a: subq   $0x5,(%rsp)
  0x000000010e408e8f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e408e94: hlt    
  0x000000010e408e95: hlt    
  0x000000010e408e96: hlt    
  0x000000010e408e97: hlt    

ImmutableOopMap{[16]=Oop }pc offsets: 668 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 724 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 844 
ImmutableOopMap{[8]=Oop [16]=Oop }pc offsets: 900 
ImmutableOopMap{}pc offsets: 916 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x000000010e4088a0, 0x000000010e4088d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb3468} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x000000010e4088a0: mov    0x14(%rsi),%ebx
  0x000000010e4088a3: shl    $0x3,%rbx
  0x000000010e4088a7: mov    0x28(%rbx),%ebx
  0x000000010e4088aa: shl    $0x3,%rbx
  0x000000010e4088ae: mov    0x24(%rbx),%ebx
  0x000000010e4088b1: shl    $0x3,%rbx
  0x000000010e4088b5: mov    0x10(%rbx),%rbx
  0x000000010e4088b9: test   %rbx,%rbx
  0x000000010e4088bc: je     0x000000010e4088c5
  0x000000010e4088c2: jmpq   *0x38(%rbx)
  0x000000010e4088c5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e4088ca: hlt    
  0x000000010e4088cb: hlt    
  0x000000010e4088cc: hlt    
  0x000000010e4088cd: hlt    
  0x000000010e4088ce: hlt    
  0x000000010e4088cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e4084a0, 0x000000010e4084c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb3580} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e4084a0: cmp    (%rsi),%rax
  0x000000010e4084a3: mov    0x24(%rdx),%ebx
  0x000000010e4084a6: shl    $0x3,%rbx
  0x000000010e4084aa: mov    0x10(%rbx),%rbx
  0x000000010e4084ae: test   %rbx,%rbx
  0x000000010e4084b1: je     0x000000010e4084ba
  0x000000010e4084b7: jmpq   *0x38(%rbx)
  0x000000010e4084ba: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e4084bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000010e40d3a0, 0x000000010e40d3d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb36e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e40d3a0: mov    0x14(%rsi),%ebx
  0x000000010e40d3a3: shl    $0x3,%rbx
  0x000000010e40d3a7: mov    0x28(%rbx),%ebx
  0x000000010e40d3aa: shl    $0x3,%rbx
  0x000000010e40d3ae: mov    0x24(%rbx),%ebx
  0x000000010e40d3b1: shl    $0x3,%rbx
  0x000000010e40d3b5: mov    0x10(%rbx),%rbx
  0x000000010e40d3b9: test   %rbx,%rbx
  0x000000010e40d3bc: je     0x000000010e40d3c5
  0x000000010e40d3c2: jmpq   *0x38(%rbx)
  0x000000010e40d3c5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40d3ca: hlt    
  0x000000010e40d3cb: hlt    
  0x000000010e40d3cc: hlt    
  0x000000010e40d3cd: hlt    
  0x000000010e40d3ce: hlt    
  0x000000010e40d3cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x000000010e40cfa0, 0x000000010e40cfd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb3a50} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e40cfa0: mov    0x14(%rsi),%ebx
  0x000000010e40cfa3: shl    $0x3,%rbx
  0x000000010e40cfa7: mov    0x28(%rbx),%ebx
  0x000000010e40cfaa: shl    $0x3,%rbx
  0x000000010e40cfae: mov    0x24(%rbx),%ebx
  0x000000010e40cfb1: shl    $0x3,%rbx
  0x000000010e40cfb5: mov    0x10(%rbx),%rbx
  0x000000010e40cfb9: test   %rbx,%rbx
  0x000000010e40cfbc: je     0x000000010e40cfc5
  0x000000010e40cfc2: jmpq   *0x38(%rbx)
  0x000000010e40cfc5: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40cfca: hlt    
  0x000000010e40cfcb: hlt    
  0x000000010e40cfcc: hlt    
  0x000000010e40cfcd: hlt    
  0x000000010e40cfce: hlt    
  0x000000010e40cfcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e40cb20, 0x000000010e40cb40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011cfb3b68} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e40cb20: cmp    (%rsi),%rax
  0x000000010e40cb23: mov    0x24(%rcx),%ebx
  0x000000010e40cb26: shl    $0x3,%rbx
  0x000000010e40cb2a: mov    0x10(%rbx),%rbx
  0x000000010e40cb2e: test   %rbx,%rbx
  0x000000010e40cb31: je     0x000000010e40cb3a
  0x000000010e40cb37: jmpq   *0x38(%rbx)
  0x000000010e40cb3a: jmpq   0x000000010e3cb880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e40cb3f: hlt    
Time elapsed: 92.717 ms valid codes = 6000
Warmup phase
Compiled method (c2)     431  101             OptimizedProceduralZipCode::runTest (46 bytes)
 total in heap  [0x000000010e40de90,0x000000010e40e868] = 2520
 relocation     [0x000000010e40e008,0x000000010e40e048] = 64
 main code      [0x000000010e40e060,0x000000010e40e2c0] = 608
 stub code      [0x000000010e40e2c0,0x000000010e40e2e8] = 40
 oops           [0x000000010e40e2e8,0x000000010e40e2f0] = 8
 metadata       [0x000000010e40e2f0,0x000000010e40e320] = 48
 scopes data    [0x000000010e40e320,0x000000010e40e4e0] = 448
 scopes pcs     [0x000000010e40e4e0,0x000000010e40e800] = 800
 dependencies   [0x000000010e40e800,0x000000010e40e808] = 8
 handler table  [0x000000010e40e808,0x000000010e40e838] = 48
 nul chk table  [0x000000010e40e838,0x000000010e40e868] = 48
----------------------------------------------------------------------
OptimizedProceduralZipCode.runTest()I  [0x000000010e40e060, 0x000000010e40e2e8]  648 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cf8b978} 'runTest' '()I' in 'OptimizedProceduralZipCode'
  #           [sp+0x50]  (sp of caller)
  0x000000010e40e060: mov    0x8(%rsi),%r10d
  0x000000010e40e064: movabs $0x800000000,%r12
  0x000000010e40e06e: add    %r12,%r10
  0x000000010e40e071: xor    %r12,%r12
  0x000000010e40e074: cmp    %r10,%rax
  0x000000010e40e077: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e40e07d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e40e080: mov    %eax,-0x14000(%rsp)
  0x000000010e40e087: push   %rbp
  0x000000010e40e088: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::runTest@-1 (line 52)

  0x000000010e40e08c: mov    %rsi,0x10(%rsp)
  0x000000010e40e091: movabs $0x70fe0f410,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f410} = 'OptimizedProceduralZipCode')}
  0x000000010e40e09b: mov    0x70(%r10),%r11d
  0x000000010e40e09f: mov    %r11,%rsi
  0x000000010e40e0a2: shl    $0x3,%rsi          ;*getstatic zipCodes {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@2 (line 53)

  0x000000010e40e0a6: data16 xchg %ax,%ax
  0x000000010e40e0a9: movabs $0xffffffffffffffff,%rax
  0x000000010e40e0b3: callq  0x000000010e3b2180  ; ImmutableOopMap{[16]=Oop }
                                                ;*invokeinterface iterator {reexecute=0 rethrow=0 return_oop=1}
                                                ; - OptimizedProceduralZipCode::runTest@5 (line 53)
                                                ;   {virtual_call}
  0x000000010e40e0b8: mov    0x8(%rax),%r11d    ; implicit exception: dispatches to 0x000000010e40e28c
  0x000000010e40e0bc: cmp    $0x3efb0,%r11d     ;   {metadata('java/util/ArrayList$Itr')}
  0x000000010e40e0c3: jne    0x000000010e40e21e
  0x000000010e40e0c9: mov    %rax,%r9           ;*invokeinterface hasNext {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e0cc: mov    0x18(%r9),%r10d    ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@5 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e0d0: mov    0x10(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x000000010e40e29a
  0x000000010e40e0d5: mov    0xc(%r9),%ebx      ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@1 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e0d9: cmp    %r8d,%ebx
  0x000000010e40e0dc: je     0x000000010e40e196  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e0e2: xor    %eax,%eax          ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@20 (line 53)

  0x000000010e40e0e4: mov    0xc(%r12,%r10,8),%r11d  ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ; implicit exception: dispatches to 0x000000010e40e256
  0x000000010e40e0e9: mov    0x14(%r9),%ebp     ;*getfield expectedModCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@8 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e0ed: cmp    %ebp,%r11d
  0x000000010e40e0f0: jne    0x000000010e40e1c2  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e0f6: mov    0x10(%r12,%r10,8),%ebp  ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@14 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e0fb: cmp    %ebp,%ebx
  0x000000010e40e0fd: jge    0x000000010e40e1e6  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e103: mov    0x14(%r12,%r10,8),%r11d  ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@32 (line 1000)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e108: mov    0xc(%r12,%r11,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ; implicit exception: dispatches to 0x000000010e40e262
  0x000000010e40e10d: cmp    %ebp,%ebx
  0x000000010e40e10f: jge    0x000000010e40e1fe  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e115: mov    %ebx,0x10(%r9)     ;*putfield lastRet {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@61 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e119: mov    %ebx,%r10d
  0x000000010e40e11c: inc    %r10d
  0x000000010e40e11f: mov    %r10d,0xc(%r9)     ;*putfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@54 (line 1003)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e123: cmp    %ebp,%ebx
  0x000000010e40e125: jae    0x000000010e40e19a
  0x000000010e40e127: lea    (%r12,%r11,8),%r10
  0x000000010e40e12b: mov    0x10(%r10,%rbx,4),%ebp  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e130: test   %ebp,%ebp
  0x000000010e40e132: je     0x000000010e40e192
  0x000000010e40e134: mov    0x8(%r12,%rbp,8),%r10d
  0x000000010e40e139: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000010e40e140: jne    0x000000010e40e236
  0x000000010e40e146: lea    (%r12,%rbp,8),%rdx  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e40e14a: mov    %eax,(%rsp)
  0x000000010e40e14d: mov    %r9,%rbp           ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e150: mov    0x10(%rsp),%rsi
  0x000000010e40e155: xchg   %ax,%ax
  0x000000010e40e157: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [16]=Oop }
                                                ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {optimized virtual_call}
  0x000000010e40e15c: mov    %rbp,%r9
  0x000000010e40e15f: mov    0x18(%r9),%r10d    ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@5 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e163: mov    0x10(%r12,%r10,8),%r11d  ; implicit exception: dispatches to 0x000000010e40e26e
  0x000000010e40e168: mov    0xc(%r9),%ebx      ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@1 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e16c: mov    (%rsp),%ecx
  0x000000010e40e16f: inc    %ecx
  0x000000010e40e171: test   %eax,%eax
  0x000000010e40e173: mov    (%rsp),%eax
  0x000000010e40e176: cmovne %ecx,%eax          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e40e179: cmp    %r11d,%ebx
  0x000000010e40e17c: jne    0x000000010e40e0e4  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@17 (line 53)

  0x000000010e40e182: add    $0x40,%rsp
  0x000000010e40e186: pop    %rbp
  0x000000010e40e187: mov    0x108(%r15),%r10
  0x000000010e40e18e: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e40e191: retq   
  0x000000010e40e192: xor    %edx,%edx
  0x000000010e40e194: jmp    0x000000010e40e14a
  0x000000010e40e196: xor    %eax,%eax
  0x000000010e40e198: jmp    0x000000010e40e182
  0x000000010e40e19a: mov    $0xffffffe4,%esi
  0x000000010e40e19f: mov    %eax,%ebp
  0x000000010e40e1a1: mov    %ebx,(%rsp)
  0x000000010e40e1a4: rex.W pushq 0x10(%rsp)
  0x000000010e40e1a9: rex.W popq 0x8(%rsp)
  0x000000010e40e1ae: mov    %r9,0x10(%rsp)
  0x000000010e40e1b3: mov    %r11d,0x4(%rsp)
  0x000000010e40e1b8: data16 xchg %ax,%ax
  0x000000010e40e1bb: callq  0x000000010e3b3900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [16]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e1c0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e1c2: mov    $0xffffff4d,%esi
  0x000000010e40e1c7: mov    %eax,(%rsp)
  0x000000010e40e1ca: mov    %r11d,0x4(%rsp)
  0x000000010e40e1cf: rex.W pushq 0x10(%rsp)
  0x000000010e40e1d4: rex.W popq 0x8(%rsp)
  0x000000010e40e1d9: mov    %r9,0x18(%rsp)
  0x000000010e40e1de: nop
  0x000000010e40e1df: callq  0x000000010e3b3900  ; ImmutableOopMap{[8]=Oop [24]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e1e4: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e1e6: mov    $0xffffff4d,%esi
  0x000000010e40e1eb: mov    %eax,(%rsp)
  0x000000010e40e1ee: mov    %ebx,0x8(%rsp)
  0x000000010e40e1f2: mov    %r9,0x20(%rsp)
  0x000000010e40e1f7: callq  0x000000010e3b3900  ; ImmutableOopMap{[16]=Oop [32]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e1fc: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e1fe: mov    $0xffffff4d,%esi
  0x000000010e40e203: mov    %eax,(%rsp)
  0x000000010e40e206: mov    %ebx,0x8(%rsp)
  0x000000010e40e20a: mov    %r9,0x20(%rsp)
  0x000000010e40e20f: mov    %r11d,0xc(%rsp)
  0x000000010e40e214: data16 xchg %ax,%ax
  0x000000010e40e217: callq  0x000000010e3b3900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e21c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e21e: mov    $0xffffffde,%esi
  0x000000010e40e223: mov    0x10(%rsp),%rbp
  0x000000010e40e228: mov    %rax,0x8(%rsp)
  0x000000010e40e22d: xchg   %ax,%ax
  0x000000010e40e22f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*invokeinterface hasNext {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e234: ud2    
  0x000000010e40e236: mov    $0xffffffde,%esi
  0x000000010e40e23b: mov    %eax,(%rsp)
  0x000000010e40e23e: rex.W pushq 0x10(%rsp)
  0x000000010e40e243: rex.W popq 0x8(%rsp)
  0x000000010e40e248: mov    %r9,0x10(%rsp)
  0x000000010e40e24d: xchg   %ax,%ax
  0x000000010e40e24f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop [8]=Oop [16]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e254: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e40e256: mov    $0xfffffff6,%esi
  0x000000010e40e25b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield modCount {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e260: ud2                       ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e262: mov    $0xfffffff6,%esi
  0x000000010e40e267: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e26c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e40e26e: mov    $0xfffffff6,%esi
  0x000000010e40e273: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield size {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e278: ud2                       ;*invokeinterface iterator {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@5 (line 53)

  0x000000010e40e27a: mov    %rax,%rsi
  0x000000010e40e27d: jmp    0x000000010e40e282
  0x000000010e40e27f: mov    %rax,%rsi          ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e40e282: add    $0x40,%rsp
  0x000000010e40e286: pop    %rbp
  0x000000010e40e287: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e40e28c: mov    $0xfffffff6,%esi
  0x000000010e40e291: xchg   %ax,%ax
  0x000000010e40e293: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*invokeinterface hasNext {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e298: ud2                       ;*invokeinterface hasNext {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e29a: mov    $0xfffffff6,%esi
  0x000000010e40e29f: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield size {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40e2a4: ud2                       ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e40e2a6: hlt    
  0x000000010e40e2a7: hlt    
  0x000000010e40e2a8: hlt    
  0x000000010e40e2a9: hlt    
  0x000000010e40e2aa: hlt    
  0x000000010e40e2ab: hlt    
  0x000000010e40e2ac: hlt    
  0x000000010e40e2ad: hlt    
  0x000000010e40e2ae: hlt    
  0x000000010e40e2af: hlt    
  0x000000010e40e2b0: hlt    
  0x000000010e40e2b1: hlt    
  0x000000010e40e2b2: hlt    
  0x000000010e40e2b3: hlt    
  0x000000010e40e2b4: hlt    
  0x000000010e40e2b5: hlt    
  0x000000010e40e2b6: hlt    
  0x000000010e40e2b7: hlt    
  0x000000010e40e2b8: hlt    
  0x000000010e40e2b9: hlt    
  0x000000010e40e2ba: hlt    
  0x000000010e40e2bb: hlt    
  0x000000010e40e2bc: hlt    
  0x000000010e40e2bd: hlt    
  0x000000010e40e2be: hlt    
  0x000000010e40e2bf: hlt    
[Stub Code]
  0x000000010e40e2c0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e40e2ca: jmpq   0x000000010e40e2ca  ;   {runtime_call}
[Exception Handler]
  0x000000010e40e2cf: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e40e2d4: callq  0x000000010e40e2d9
  0x000000010e40e2d9: subq   $0x5,(%rsp)
  0x000000010e40e2de: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e40e2e3: hlt    
  0x000000010e40e2e4: hlt    
  0x000000010e40e2e5: hlt    
  0x000000010e40e2e6: hlt    
  0x000000010e40e2e7: hlt    

ImmutableOopMap{[16]=Oop }pc offsets: 88 
ImmutableOopMap{rbp=Oop [16]=Oop }pc offsets: 252 
ImmutableOopMap{[4]=NarrowOop [8]=Oop [16]=Oop }pc offsets: 352 
ImmutableOopMap{[8]=Oop [24]=Oop }pc offsets: 388 
ImmutableOopMap{[16]=Oop [32]=Oop }pc offsets: 412 
ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop }pc offsets: 444 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 468 
ImmutableOopMap{rbp=NarrowOop [8]=Oop [16]=Oop }pc offsets: 500 
ImmutableOopMap{}pc offsets: 512 524 536 568 580 Compiled method (c2)     446  102             java.lang.AbstractStringBuilder::checkRange (60 bytes)
 total in heap  [0x000000010e40db10,0x000000010e40de58] = 840
 relocation     [0x000000010e40dc88,0x000000010e40dc98] = 16
 main code      [0x000000010e40dca0,0x000000010e40dd20] = 128
 stub code      [0x000000010e40dd20,0x000000010e40dd38] = 24
 metadata       [0x000000010e40dd38,0x000000010e40dd40] = 8
 scopes data    [0x000000010e40dd40,0x000000010e40dd90] = 80
 scopes pcs     [0x000000010e40dd90,0x000000010e40de50] = 192
 dependencies   [0x000000010e40de50,0x000000010e40de58] = 8
----------------------------------------------------------------------
java/lang/AbstractStringBuilder.checkRange(III)V  [0x000000010e40dca0, 0x000000010e40dd38]  152 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cc31b80} 'checkRange' '(III)V' in 'java/lang/AbstractStringBuilder'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e40dca0: mov    %eax,-0x14000(%rsp)
  0x000000010e40dca7: push   %rbp
  0x000000010e40dca8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::checkRange@-1 (line 1715)

  0x000000010e40dcac: test   %esi,%esi
  0x000000010e40dcae: jl     0x000000010e40dcc8  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)

  0x000000010e40dcb0: cmp    %edx,%esi
  0x000000010e40dcb2: jg     0x000000010e40dce2  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)

  0x000000010e40dcb4: cmp    %ecx,%edx
  0x000000010e40dcb6: jg     0x000000010e40dcfa  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)

  0x000000010e40dcb8: add    $0x20,%rsp
  0x000000010e40dcbc: pop    %rbp
  0x000000010e40dcbd: mov    0x108(%r15),%r10
  0x000000010e40dcc4: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e40dcc7: retq   
  0x000000010e40dcc8: mov    %edx,(%rsp)
  0x000000010e40dccb: mov    %ecx,0x4(%rsp)
  0x000000010e40dccf: mov    %esi,0x8(%rsp)
  0x000000010e40dcd3: mov    $0xffffff4d,%esi
  0x000000010e40dcd8: data16 xchg %ax,%ax
  0x000000010e40dcdb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40dce0: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)

  0x000000010e40dce2: mov    %ecx,0x4(%rsp)
  0x000000010e40dce6: mov    %esi,0x8(%rsp)
  0x000000010e40dcea: mov    %edx,0xc(%rsp)
  0x000000010e40dcee: mov    $0xffffff4d,%esi
  0x000000010e40dcf3: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40dcf8: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)

  0x000000010e40dcfa: mov    %esi,%ebp
  0x000000010e40dcfc: mov    %edx,0x8(%rsp)
  0x000000010e40dd00: mov    %ecx,0xc(%rsp)
  0x000000010e40dd04: mov    $0xffffff4d,%esi
  0x000000010e40dd09: xchg   %ax,%ax
  0x000000010e40dd0b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e40dd10: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)

  0x000000010e40dd12: hlt    
  0x000000010e40dd13: hlt    
  0x000000010e40dd14: hlt    
  0x000000010e40dd15: hlt    
  0x000000010e40dd16: hlt    
  0x000000010e40dd17: hlt    
  0x000000010e40dd18: hlt    
  0x000000010e40dd19: hlt    
  0x000000010e40dd1a: hlt    
  0x000000010e40dd1b: hlt    
  0x000000010e40dd1c: hlt    
  0x000000010e40dd1d: hlt    
  0x000000010e40dd1e: hlt    
  0x000000010e40dd1f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e40dd20: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e40dd25: callq  0x000000010e40dd2a
  0x000000010e40dd2a: subq   $0x5,(%rsp)
  0x000000010e40dd2f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e40dd34: hlt    
  0x000000010e40dd35: hlt    
  0x000000010e40dd36: hlt    
  0x000000010e40dd37: hlt    

ImmutableOopMap{}pc offsets: 64 88 112 Compiled method (c2)     459  103             java.lang.StringBuilder::append (10 bytes)
 total in heap  [0x000000010e411610,0x000000010e412928] = 4888
 relocation     [0x000000010e411788,0x000000010e4117c8] = 64
 main code      [0x000000010e4117e0,0x000000010e411ee0] = 1792
 stub code      [0x000000010e411ee0,0x000000010e411f08] = 40
 metadata       [0x000000010e411f08,0x000000010e411f80] = 120
 scopes data    [0x000000010e411f80,0x000000010e412310] = 912
 scopes pcs     [0x000000010e412310,0x000000010e4128c0] = 1456
 dependencies   [0x000000010e4128c0,0x000000010e4128c8] = 8
 handler table  [0x000000010e4128c8,0x000000010e4128f8] = 48
 nul chk table  [0x000000010e4128f8,0x000000010e412928] = 48
----------------------------------------------------------------------
java/lang/StringBuilder.append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;  [0x000000010e4117e0, 0x000000010e411f08]  1832 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cc33bb0} 'append' '(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder'
  # this:     rsi:rsi   = 'java/lang/StringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/CharSequence'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x70]  (sp of caller)
  0x000000010e4117e0: mov    0x8(%rsi),%r10d
  0x000000010e4117e4: movabs $0x800000000,%r12
  0x000000010e4117ee: add    %r12,%r10
  0x000000010e4117f1: xor    %r12,%r12
  0x000000010e4117f4: cmp    %r10,%rax
  0x000000010e4117f7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4117fd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e411800: mov    %eax,-0x14000(%rsp)
  0x000000010e411807: push   %rbp
  0x000000010e411808: sub    $0x60,%rsp         ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 213)

  0x000000010e41180c: mov    %ecx,%ebx
  0x000000010e41180e: mov    %rsi,(%rsp)
  0x000000010e411812: mov    0x8(%rdx),%r11d    ; implicit exception: dispatches to 0x000000010e411e9a
  0x000000010e411816: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x000000010e41181d: jne    0x000000010e411d2a  ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411823: mov    %rdx,0x10(%rsp)
  0x000000010e411828: mov    0xc(%rdx),%edi     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41182b: mov    0xc(%r12,%rdi,8),%ebp  ; implicit exception: dispatches to 0x000000010e411e7a
  0x000000010e411830: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411834: sar    %cl,%ebp           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411836: test   %ebx,%ebx
  0x000000010e411838: jl     0x000000010e411d7a  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41183e: cmp    %r8d,%ebx
  0x000000010e411841: jg     0x000000010e411db6  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411847: mov    %r8d,%r13d
  0x000000010e41184a: cmp    %ebp,%r8d
  0x000000010e41184d: jg     0x000000010e411dda  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411853: mov    0x14(%rsi),%r8d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411857: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ; implicit exception: dispatches to 0x000000010e411e8a
  0x000000010e41185c: mov    %ecx,%r10d
  0x000000010e41185f: mov    %r13d,%r14d
  0x000000010e411862: sub    %ebx,%r14d         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@20 (line 632)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411865: mov    0xc(%rsi),%r11d    ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@25 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411869: movsbl 0x10(%rsi),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@6 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41186d: mov    %r14d,%edx
  0x000000010e411870: add    %r11d,%edx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411873: mov    %ebp,0x30(%rsp)
  0x000000010e411877: mov    %ebp,%r9d
  0x000000010e41187a: sar    %cl,%r9d           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@9 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41187d: mov    %edx,%esi
  0x000000010e41187f: sub    %r9d,%esi
  0x000000010e411882: test   %esi,%esi
  0x000000010e411884: jg     0x000000010e411a0d  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 171)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41188a: mov    %r10d,%r9d         ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@38 (line 175)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41188d: test   %ecx,%ecx
  0x000000010e41188f: jne    0x000000010e411d96  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411895: cmp    %r13d,%ebx
  0x000000010e411898: jge    0x000000010e4119ec  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41189e: test   %r9d,%r9d
  0x000000010e4118a1: jne    0x000000010e411d4e
  0x000000010e4118a7: mov    0xc(%r12,%rdi,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ; implicit exception: dispatches to 0x000000010e411d4e
  0x000000010e4118ac: cmp    %r9d,%ebx
  0x000000010e4118af: jae    0x000000010e411d4e
  0x000000010e4118b5: movslq %r9d,%r9
  0x000000010e4118b8: movslq %r13d,%r10
  0x000000010e4118bb: mov    %r10,%rcx
  0x000000010e4118be: dec    %rcx
  0x000000010e4118c1: cmp    %r9,%rcx
  0x000000010e4118c4: jae    0x000000010e411d4e
  0x000000010e4118ca: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x000000010e411d4e
  0x000000010e4118cf: mov    %r11d,%edx
  0x000000010e4118d2: sub    %ebx,%edx          ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4118d4: movslq %r9d,%r9
  0x000000010e4118d7: movslq %edx,%rcx
  0x000000010e4118da: movslq %ebx,%rsi
  0x000000010e4118dd: add    %rcx,%rsi
  0x000000010e4118e0: cmp    %r9,%rsi
  0x000000010e4118e3: jae    0x000000010e411d4e
  0x000000010e4118e9: add    %rcx,%r10
  0x000000010e4118ec: dec    %r10
  0x000000010e4118ef: cmp    %r9,%r10
  0x000000010e4118f2: jae    0x000000010e411d4e
  0x000000010e4118f8: lea    (%r12,%rdi,8),%r9
  0x000000010e4118fc: mov    %ebx,%edi
  0x000000010e4118fe: inc    %edi
  0x000000010e411900: shl    $0x3,%r8           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@8 (line 1694)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411904: mov    %ebx,%ecx          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411906: movsbl 0x10(%r9,%rcx,1),%r10d
  0x000000010e41190c: mov    %ecx,%eax
  0x000000010e41190e: add    %edx,%eax
  0x000000010e411910: mov    %r10b,0x10(%r8,%rax,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411915: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411917: cmp    %edi,%ecx
  0x000000010e411919: jl     0x000000010e411906  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41191b: mov    %r13d,%edi
  0x000000010e41191e: add    $0xfffffffd,%edi
  0x000000010e411921: mov    $0x80000000,%r10d
  0x000000010e411927: cmp    %edi,%r13d
  0x000000010e41192a: cmovl  %r10d,%edi
  0x000000010e41192e: cmp    %edi,%ecx
  0x000000010e411930: jge    0x000000010e4119cc
  0x000000010e411936: mov    $0xfa0,%r10d
  0x000000010e41193c: jmp    0x000000010e41194c
  0x000000010e41193e: vmovd  %xmm1,%ebx
  0x000000010e411942: vmovd  %xmm0,%r13d
  0x000000010e411947: vmovd  %xmm2,%r11d
  0x000000010e41194c: mov    %edi,%esi
  0x000000010e41194e: sub    %ecx,%esi
  0x000000010e411950: cmp    %r10d,%esi
  0x000000010e411953: cmovg  %r10d,%esi
  0x000000010e411957: add    %ecx,%esi
  0x000000010e411959: vmovd  %ebx,%xmm1
  0x000000010e41195d: vmovd  %r13d,%xmm0
  0x000000010e411962: vmovd  %r11d,%xmm2
  0x000000010e411967: nopw   0x0(%rax,%rax,1)   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411970: movsbl 0x10(%r9,%rcx,1),%ebx
  0x000000010e411976: movslq %ecx,%r11
  0x000000010e411979: mov    %ecx,%eax
  0x000000010e41197b: add    %edx,%eax          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e41197d: mov    %bl,0x10(%r8,%rax,1)
  0x000000010e411982: movslq %eax,%r13
  0x000000010e411985: movsbl 0x11(%r9,%r11,1),%ebp
  0x000000010e41198b: mov    %bpl,0x11(%r8,%r13,1)
  0x000000010e411990: movsbl 0x12(%r9,%r11,1),%ebx
  0x000000010e411996: mov    %bl,0x12(%r8,%r13,1)
  0x000000010e41199b: movsbl 0x13(%r9,%r11,1),%ebx
  0x000000010e4119a1: mov    %bl,0x13(%r8,%r13,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119a6: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119a9: cmp    %esi,%ecx
  0x000000010e4119ab: jl     0x000000010e411970  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119ad: mov    0x108(%r15),%r11
  0x000000010e4119b4: add    $0x4,%eax          ; ImmutableOopMap{r8=Oop r9=Oop [0]=Oop [16]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119b7: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {poll}
  0x000000010e4119ba: cmp    %edi,%ecx
  0x000000010e4119bc: jl     0x000000010e41193e
  0x000000010e4119c2: vmovd  %xmm0,%r13d
  0x000000010e4119c7: vmovd  %xmm2,%r11d
  0x000000010e4119cc: cmp    %r13d,%ecx
  0x000000010e4119cf: jge    0x000000010e4119ec
  0x000000010e4119d1: data16 xchg %ax,%ax       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119d4: movsbl 0x10(%r9,%rcx,1),%ebx
  0x000000010e4119da: mov    %ecx,%r10d
  0x000000010e4119dd: add    %edx,%r10d
  0x000000010e4119e0: mov    %bl,0x10(%r8,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119e5: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119e7: cmp    %r13d,%ecx
  0x000000010e4119ea: jl     0x000000010e4119d4  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e4119ec: add    %r11d,%r14d
  0x000000010e4119ef: mov    (%rsp),%r10
  0x000000010e4119f3: mov    %r14d,0xc(%r10)    ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 213)

  0x000000010e4119f7: mov    %r10,%rax
  0x000000010e4119fa: vzeroupper 
  0x000000010e4119fd: add    $0x60,%rsp
  0x000000010e411a01: pop    %rbp
  0x000000010e411a02: mov    0x108(%r15),%r10
  0x000000010e411a09: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e411a0c: retq   
  0x000000010e411a0d: shl    %r9d               ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@13 (line 200)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a10: mov    %r9d,%r11d
  0x000000010e411a13: sub    %edx,%r11d
  0x000000010e411a16: add    $0x2,%r11d
  0x000000010e411a1a: test   %r11d,%r11d
  0x000000010e411a1d: jge    0x000000010e411c26  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@20 (line 201)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a23: mov    %edx,%r9d          ;*ldc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@25 (line 204)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a26: test   %r9d,%r9d
  0x000000010e411a29: jle    0x000000010e411a3c  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@35 (line 205)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a2b: mov    $0x7ffffff7,%r10d
  0x000000010e411a31: sar    %cl,%r10d
  0x000000010e411a34: sub    %r9d,%r10d
  0x000000010e411a37: test   %r10d,%r10d
  0x000000010e411a3a: jge    0x000000010e411a7a  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@45 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a3c: mov    %r14d,0x1c(%rsp)
  0x000000010e411a41: mov    %r8d,0x18(%rsp)
  0x000000010e411a46: mov    %r13d,0xc(%rsp)
  0x000000010e411a4b: mov    %ebx,0x8(%rsp)
  0x000000010e411a4f: mov    (%rsp),%rbp
  0x000000010e411a53: mov    %rbp,%rsi
  0x000000010e411a56: xchg   %ax,%ax
  0x000000010e411a58: vzeroupper 
  0x000000010e411a5b: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop [16]=Oop [24]=NarrowOop }
                                                ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {optimized virtual_call}
  0x000000010e411a60: movsbl 0x10(%rbp),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@28 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a64: mov    0x8(%rsp),%ebx
  0x000000010e411a68: mov    0xc(%rsp),%r13d
  0x000000010e411a6d: mov    0x18(%rsp),%r8d
  0x000000010e411a72: mov    0x1c(%rsp),%r14d
  0x000000010e411a77: mov    %eax,%r9d          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@50 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a7a: shl    %cl,%r9d           ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@31 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a7d: cmp    $0x100000,%r9d
  0x000000010e411a84: ja     0x000000010e411dfa
  0x000000010e411a8a: movslq %r9d,%rcx
  0x000000010e411a8d: mov    %r9d,%r10d         ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a90: mov    0x30(%rsp),%r11d
  0x000000010e411a95: cmp    %r10d,%r11d
  0x000000010e411a98: mov    %r10d,%ebp
  0x000000010e411a9b: cmovl  %r11d,%ebp         ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@11 (line 3747)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411a9f: cmp    %ebp,%r11d
  0x000000010e411aa2: jb     0x000000010e411e2e
  0x000000010e411aa8: cmp    %ebp,%r10d
  0x000000010e411aab: jb     0x000000010e411e2e  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411ab1: add    $0x17,%rcx
  0x000000010e411ab5: mov    %rcx,%rax
  0x000000010e411ab8: and    $0xfffffffffffffff8,%rax  ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411abc: cmp    $0x100000,%r9d
  0x000000010e411ac3: ja     0x000000010e411cc9
  0x000000010e411ac9: mov    0x118(%r15),%r10
  0x000000010e411ad0: mov    %r10,%r11
  0x000000010e411ad3: add    %rax,%r11
  0x000000010e411ad6: cmp    0x128(%r15),%r11
  0x000000010e411add: jae    0x000000010e411cc9  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411ae3: mov    %r11,0x118(%r15)
  0x000000010e411aea: prefetchnta 0xc0(%r11)
  0x000000010e411af2: movq   $0x1,(%r10)
  0x000000010e411af9: prefetchnta 0x100(%r11)
  0x000000010e411b01: movl   $0x820,0x8(%r10)   ;   {metadata({type array byte})}
  0x000000010e411b09: mov    %r9d,0xc(%r10)
  0x000000010e411b0d: prefetchnta 0x140(%r11)
  0x000000010e411b15: prefetchnta 0x180(%r11)   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411b1d: mov    %r10,0x8(%rsp)
  0x000000010e411b22: add    $0x10,%r10
  0x000000010e411b26: shr    $0x3,%rcx
  0x000000010e411b2a: mov    0x8(%rsp),%r11
  0x000000010e411b2f: mov    %r11,%rdx
  0x000000010e411b32: shr    $0x3,%rdx          ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411b36: test   %ebp,%ebp
  0x000000010e411b38: je     0x000000010e411e02
  0x000000010e411b3e: mov    %edx,0x18(%rsp)
  0x000000010e411b42: lea    (%r12,%r8,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411b46: lea    0x10(%r12,%r8,8),%r8
  0x000000010e411b4b: cmp    %r9d,%ebp
  0x000000010e411b4e: jl     0x000000010e411c2f
  0x000000010e411b54: add    $0xfffffffffffffff0,%rax
  0x000000010e411b58: shr    $0x3,%rax
  0x000000010e411b5c: mov    %r8,%rdi
  0x000000010e411b5f: mov    %r10,%rsi
  0x000000010e411b62: mov    %rax,%rdx
  0x000000010e411b65: vzeroupper 
  0x000000010e411b68: movabs $0x10e3c1080,%r10
  0x000000010e411b72: callq  *%r10
  0x000000010e411b75: mov    0x18(%rsp),%edx
  0x000000010e411b79: cmpb   $0x0,0x30(%r15)
  0x000000010e411b7e: jne    0x000000010e411c8e
  0x000000010e411b84: mov    (%rsp),%r10
  0x000000010e411b88: mov    %edx,0x14(%r10)
  0x000000010e411b8c: mov    0x8(%rsp),%r10
  0x000000010e411b91: mov    (%rsp),%r11
  0x000000010e411b95: xor    %r11,%r10
  0x000000010e411b98: shr    $0x14,%r10
  0x000000010e411b9c: test   %r10,%r10
  0x000000010e411b9f: je     0x000000010e411bff
  0x000000010e411ba1: shr    $0x9,%r11
  0x000000010e411ba5: movabs $0x10e38b000,%rdi
  0x000000010e411baf: add    %r11,%rdi
  0x000000010e411bb2: cmpb   $0x20,(%rdi)
  0x000000010e411bb5: je     0x000000010e411bff
  0x000000010e411bb7: mov    0x80(%r15),%r10
  0x000000010e411bbe: mov    0x70(%r15),%r11
  0x000000010e411bc2: lock addl $0x0,-0x40(%rsp)
  0x000000010e411bc8: cmpb   $0x0,(%rdi)
  0x000000010e411bcb: je     0x000000010e411bf7
  0x000000010e411bcd: movb   $0x0,(%rdi)
  0x000000010e411bd0: test   %r11,%r11
  0x000000010e411bd3: je     0x000000010e411be4
  0x000000010e411bd5: mov    %rdi,-0x8(%r10,%r11,1)
  0x000000010e411bda: add    $0xfffffffffffffff8,%r11
  0x000000010e411bde: mov    %r11,0x70(%r15)
  0x000000010e411be2: jmp    0x000000010e411bf7
  0x000000010e411be4: mov    %r15,%rsi
  0x000000010e411be7: vzeroupper 
  0x000000010e411bea: movabs $0x104b038ce,%r10
  0x000000010e411bf4: callq  *%r10
  0x000000010e411bf7: mov    (%rsp),%r10
  0x000000010e411bfb: mov    0x14(%r10),%edx    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411bff: mov    (%rsp),%r10
  0x000000010e411c03: movsbl 0x10(%r10),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411c08: mov    0x10(%rsp),%r10
  0x000000010e411c0d: movsbl 0x14(%r10),%r9d    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411c12: mov    0xc(%r10),%edi     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411c16: mov    (%rsp),%r10
  0x000000010e411c1a: mov    0xc(%r10),%r11d    ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411c1e: mov    %edx,%r8d
  0x000000010e411c21: jmpq   0x000000010e41188d
  0x000000010e411c26: add    $0x2,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@15 (line 200)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411c2a: jmpq   0x000000010e411a26
  0x000000010e411c2f: movslq %ebp,%rdx
  0x000000010e411c32: mov    %rdx,%r11
  0x000000010e411c35: add    $0x10,%r11
  0x000000010e411c39: mov    %r11,%r9
  0x000000010e411c3c: and    $0xfffffffffffffff8,%r9
  0x000000010e411c40: mov    0x8(%rsp),%rdi
  0x000000010e411c45: add    %r9,%rdi
  0x000000010e411c48: shr    $0x3,%r11
  0x000000010e411c4c: sub    %r11,%rcx
  0x000000010e411c4f: xor    %rax,%rax
  0x000000010e411c52: cmp    $0x8,%rcx
  0x000000010e411c56: jg     0x000000010e411c68
  0x000000010e411c58: dec    %rcx
  0x000000010e411c5b: js     0x000000010e411c6f
  0x000000010e411c5d: mov    %rax,(%rdi,%rcx,8)
  0x000000010e411c61: dec    %rcx
  0x000000010e411c64: jge    0x000000010e411c5d
  0x000000010e411c66: jmp    0x000000010e411c6f
  0x000000010e411c68: shl    $0x3,%rcx
  0x000000010e411c6c: rep rex.W stos %al,%es:(%rdi)
  0x000000010e411c6f: mov    %r8,%rdi
  0x000000010e411c72: mov    %r10,%rsi
  0x000000010e411c75: vzeroupper 
  0x000000010e411c78: movabs $0x10e3c0c00,%r10
  0x000000010e411c82: callq  *%r10
  0x000000010e411c85: mov    0x18(%rsp),%edx
  0x000000010e411c89: jmpq   0x000000010e411b79
  0x000000010e411c8e: mov    (%rsp),%r10
  0x000000010e411c92: mov    0x14(%r10),%r11d
  0x000000010e411c96: test   %r11d,%r11d
  0x000000010e411c99: je     0x000000010e411b84
  0x000000010e411c9f: mov    0x38(%r15),%r10
  0x000000010e411ca3: mov    %r11,%rdi
  0x000000010e411ca6: shl    $0x3,%rdi
  0x000000010e411caa: test   %r10,%r10
  0x000000010e411cad: je     0x000000010e411e5e
  0x000000010e411cb3: mov    0x48(%r15),%r11
  0x000000010e411cb7: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e411cbc: add    $0xfffffffffffffff8,%r10
  0x000000010e411cc0: mov    %r10,0x38(%r15)    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411cc4: jmpq   0x000000010e411b84
  0x000000010e411cc9: mov    %rax,0x30(%rsp)
  0x000000010e411cce: mov    %rcx,0x28(%rsp)
  0x000000010e411cd3: mov    %r9d,0x20(%rsp)
  0x000000010e411cd8: mov    %r14d,0x1c(%rsp)
  0x000000010e411cdd: mov    %r8d,0x18(%rsp)
  0x000000010e411ce2: mov    %r13d,0xc(%rsp)
  0x000000010e411ce7: mov    %ebx,0x8(%rsp)
  0x000000010e411ceb: movabs $0x800000820,%rsi  ;   {metadata({type array byte})}
  0x000000010e411cf5: mov    %r9d,%edx
  0x000000010e411cf8: vzeroupper 
  0x000000010e411cfb: callq  0x000000010e3e9980  ; ImmutableOopMap{[0]=Oop [16]=Oop [24]=NarrowOop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e411d00: mov    %rax,%r10
  0x000000010e411d03: mov    0x8(%rsp),%ebx
  0x000000010e411d07: mov    0xc(%rsp),%r13d
  0x000000010e411d0c: mov    0x18(%rsp),%r8d
  0x000000010e411d11: mov    0x1c(%rsp),%r14d
  0x000000010e411d16: mov    0x20(%rsp),%r9d
  0x000000010e411d1b: mov    0x28(%rsp),%rcx
  0x000000010e411d20: mov    0x30(%rsp),%rax
  0x000000010e411d25: jmpq   0x000000010e411b1d
  0x000000010e411d2a: mov    $0xffffffde,%esi
  0x000000010e411d2f: mov    (%rsp),%rbp
  0x000000010e411d33: mov    %ecx,0x10(%rsp)
  0x000000010e411d37: mov    %r8d,0x14(%rsp)
  0x000000010e411d3c: mov    %rdx,0x20(%rsp)
  0x000000010e411d41: data16 xchg %ax,%ax
  0x000000010e411d44: vzeroupper 
  0x000000010e411d47: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [32]=Oop }
                                                ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411d4c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411d4e: mov    $0xffffff7e,%esi
  0x000000010e411d53: mov    (%rsp),%rbp
  0x000000010e411d57: mov    %ebx,0x20(%rsp)
  0x000000010e411d5b: mov    %ebx,0x24(%rsp)
  0x000000010e411d5f: mov    %r13d,0x28(%rsp)
  0x000000010e411d64: mov    %r8d,0x2c(%rsp)
  0x000000010e411d69: mov    %r11d,0x30(%rsp)
  0x000000010e411d6e: xchg   %ax,%ax
  0x000000010e411d70: vzeroupper 
  0x000000010e411d73: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [44]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411d78: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411d7a: mov    $0xffffff4d,%esi
  0x000000010e411d7f: mov    %ebx,0x20(%rsp)
  0x000000010e411d83: mov    %r8d,0x24(%rsp)
  0x000000010e411d88: mov    %ebx,0x28(%rsp)
  0x000000010e411d8c: vzeroupper 
  0x000000010e411d8f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411d94: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411d96: mov    $0xffffff4d,%esi
  0x000000010e411d9b: mov    (%rsp),%rbp
  0x000000010e411d9f: mov    %ebx,0x18(%rsp)
  0x000000010e411da3: mov    %r13d,0x1c(%rsp)
  0x000000010e411da8: mov    %ecx,0x20(%rsp)
  0x000000010e411dac: vzeroupper 
  0x000000010e411daf: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411db4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411db6: mov    $0xffffff4d,%esi
  0x000000010e411dbb: mov    %ebx,0x20(%rsp)
  0x000000010e411dbf: mov    %r8d,0x24(%rsp)
  0x000000010e411dc4: mov    %ebx,0x28(%rsp)
  0x000000010e411dc8: mov    %r8d,0x2c(%rsp)
  0x000000010e411dcd: data16 xchg %ax,%ax
  0x000000010e411dd0: vzeroupper 
  0x000000010e411dd3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411dd8: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411dda: mov    $0xffffff4d,%esi
  0x000000010e411ddf: mov    %ebx,0x20(%rsp)
  0x000000010e411de3: mov    %r8d,0x24(%rsp)
  0x000000010e411de8: mov    %r8d,0x28(%rsp)
  0x000000010e411ded: data16 xchg %ax,%ax
  0x000000010e411df0: vzeroupper 
  0x000000010e411df3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411df8: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411dfa: movslq %r9d,%rcx          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411dfd: jmpq   0x000000010e411a8d
  0x000000010e411e02: add    $0xfffffffffffffffe,%rcx
  0x000000010e411e06: mov    %r10,%rdi
  0x000000010e411e09: xor    %rax,%rax
  0x000000010e411e0c: cmp    $0x8,%rcx
  0x000000010e411e10: jg     0x000000010e411e22
  0x000000010e411e12: dec    %rcx
  0x000000010e411e15: js     0x000000010e411e29
  0x000000010e411e17: mov    %rax,(%rdi,%rcx,8)
  0x000000010e411e1b: dec    %rcx
  0x000000010e411e1e: jge    0x000000010e411e17
  0x000000010e411e20: jmp    0x000000010e411e29
  0x000000010e411e22: shl    $0x3,%rcx
  0x000000010e411e26: rep rex.W stos %al,%es:(%rdi)
  0x000000010e411e29: jmpq   0x000000010e411b79  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411e2e: mov    $0xffffffcc,%esi
  0x000000010e411e33: mov    (%rsp),%rbp
  0x000000010e411e37: mov    0x10(%rsp),%r10
  0x000000010e411e3c: mov    %r10,0x8(%rsp)
  0x000000010e411e41: mov    %ebx,0x10(%rsp)
  0x000000010e411e45: mov    %r13d,0x14(%rsp)
  0x000000010e411e4a: mov    %r8d,0x20(%rsp)
  0x000000010e411e4f: mov    %r9d,0x28(%rsp)
  0x000000010e411e54: vzeroupper 
  0x000000010e411e57: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [32]=NarrowOop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411e5c: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411e5e: mov    %edx,%ebp
  0x000000010e411e60: mov    %r15,%rsi
  0x000000010e411e63: vzeroupper 
  0x000000010e411e66: movabs $0x104b038aa,%r10
  0x000000010e411e70: callq  *%r10              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411e73: mov    %ebp,%edx
  0x000000010e411e75: jmpq   0x000000010e411b84
  0x000000010e411e7a: mov    $0xfffffff6,%esi
  0x000000010e411e7f: nop
  0x000000010e411e80: vzeroupper 
  0x000000010e411e83: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411e88: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411e8a: mov    $0xfffffff6,%esi
  0x000000010e411e8f: nop
  0x000000010e411e90: vzeroupper 
  0x000000010e411e93: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411e98: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411e9a: mov    $0xffffff4d,%esi
  0x000000010e411e9f: mov    (%rsp),%rbp
  0x000000010e411ea3: mov    %ecx,0x8(%rsp)
  0x000000010e411ea7: mov    %r8d,0xc(%rsp)
  0x000000010e411eac: mov    %rdx,0x18(%rsp)
  0x000000010e411eb1: data16 xchg %ax,%ax
  0x000000010e411eb4: vzeroupper 
  0x000000010e411eb7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@1 (line 628)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e411ebc: ud2                       ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411ebe: mov    %rax,%rsi
  0x000000010e411ec1: jmp    0x000000010e411ec6  ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411ec3: mov    %rax,%rsi          ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 628)
                                                ; - java.lang.StringBuilder::append@4 (line 213)

  0x000000010e411ec6: vzeroupper 
  0x000000010e411ec9: add    $0x60,%rsp
  0x000000010e411ecd: pop    %rbp
  0x000000010e411ece: jmpq   0x000000010e3ea700  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; - java.lang.StringBuilder::append@4 (line 213)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e411ed3: hlt    
  0x000000010e411ed4: hlt    
  0x000000010e411ed5: hlt    
  0x000000010e411ed6: hlt    
  0x000000010e411ed7: hlt    
  0x000000010e411ed8: hlt    
  0x000000010e411ed9: hlt    
  0x000000010e411eda: hlt    
  0x000000010e411edb: hlt    
  0x000000010e411edc: hlt    
  0x000000010e411edd: hlt    
  0x000000010e411ede: hlt    
  0x000000010e411edf: hlt    
[Stub Code]
  0x000000010e411ee0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e411eea: jmpq   0x000000010e411eea  ;   {runtime_call}
[Exception Handler]
  0x000000010e411eef: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e411ef4: callq  0x000000010e411ef9
  0x000000010e411ef9: subq   $0x5,(%rsp)
  0x000000010e411efe: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e411f03: hlt    
  0x000000010e411f04: hlt    
  0x000000010e411f05: hlt    
  0x000000010e411f06: hlt    
  0x000000010e411f07: hlt    

ImmutableOopMap{r8=Oop r9=Oop [0]=Oop [16]=Oop }pc offsets: 471 
ImmutableOopMap{rbp=Oop [0]=Oop [16]=Oop [24]=NarrowOop }pc offsets: 640 
ImmutableOopMap{[0]=Oop [16]=Oop [24]=NarrowOop }pc offsets: 1312 
ImmutableOopMap{rbp=Oop [32]=Oop }pc offsets: 1388 
ImmutableOopMap{rbp=Oop [16]=Oop [44]=NarrowOop }pc offsets: 1432 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 1460 
ImmutableOopMap{rbp=Oop [16]=Oop }pc offsets: 1492 
ImmutableOopMap{[0]=Oop [16]=Oop }pc offsets: 1528 1560 
ImmutableOopMap{rbp=Oop [8]=Oop [32]=NarrowOop }pc offsets: 1660 
ImmutableOopMap{}pc offsets: 1704 1720 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 1756 Compiled method (c2)     488  104             java.lang.AbstractStringBuilder::append (43 bytes)
 total in heap  [0x000000010e413490,0x000000010e4147b8] = 4904
 relocation     [0x000000010e413608,0x000000010e413648] = 64
 main code      [0x000000010e413660,0x000000010e413dc0] = 1888
 stub code      [0x000000010e413dc0,0x000000010e413de8] = 40
 metadata       [0x000000010e413de8,0x000000010e413e58] = 112
 scopes data    [0x000000010e413e58,0x000000010e4141a0] = 840
 scopes pcs     [0x000000010e4141a0,0x000000010e414750] = 1456
 dependencies   [0x000000010e414750,0x000000010e414758] = 8
 handler table  [0x000000010e414758,0x000000010e414788] = 48
 nul chk table  [0x000000010e414788,0x000000010e4147b8] = 48
----------------------------------------------------------------------
java/lang/AbstractStringBuilder.append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;  [0x000000010e413660, 0x000000010e413de8]  1928 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cc2eed8} 'append' '(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/CharSequence'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x70]  (sp of caller)
  0x000000010e413660: mov    0x8(%rsi),%r10d
  0x000000010e413664: movabs $0x800000000,%r12
  0x000000010e41366e: add    %r12,%r10
  0x000000010e413671: xor    %r12,%r12
  0x000000010e413674: cmp    %r10,%rax
  0x000000010e413677: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e41367d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e413680: mov    %eax,-0x14000(%rsp)
  0x000000010e413687: push   %rbp
  0x000000010e413688: sub    $0x60,%rsp         ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 628)

  0x000000010e41368c: mov    %ecx,%ebx
  0x000000010e41368e: mov    %rsi,0x10(%rsp)
  0x000000010e413693: mov    0x8(%rdx),%r11d    ; implicit exception: dispatches to 0x000000010e413d6e
  0x000000010e413697: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x000000010e41369e: jne    0x000000010e413bd5  ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)

  0x000000010e4136a4: mov    %rdx,0x8(%rsp)
  0x000000010e4136a9: mov    0xc(%rdx),%edi     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)

  0x000000010e4136ac: mov    0xc(%r12,%rdi,8),%ebp  ; implicit exception: dispatches to 0x000000010e413d4e
  0x000000010e4136b1: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)

  0x000000010e4136b5: sar    %cl,%ebp           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)

  0x000000010e4136b7: test   %ebx,%ebx
  0x000000010e4136b9: jl     0x000000010e413c2a  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)

  0x000000010e4136bf: cmp    %r8d,%ebx
  0x000000010e4136c2: jg     0x000000010e413c7a  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)

  0x000000010e4136c8: mov    %r8d,%r13d
  0x000000010e4136cb: cmp    %ebp,%r8d
  0x000000010e4136ce: jg     0x000000010e413ca6  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)

  0x000000010e4136d4: mov    0x14(%rsi),%r8d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4136d8: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ; implicit exception: dispatches to 0x000000010e413d5e
  0x000000010e4136dd: mov    %ecx,%r10d
  0x000000010e4136e0: mov    %r13d,%r14d
  0x000000010e4136e3: sub    %ebx,%r14d         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@20 (line 632)

  0x000000010e4136e6: mov    0xc(%rsi),%r11d    ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@25 (line 633)

  0x000000010e4136ea: movsbl 0x10(%rsi),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@6 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4136ee: mov    %r14d,%edx
  0x000000010e4136f1: add    %r11d,%edx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 633)

  0x000000010e4136f4: mov    %ebp,0x28(%rsp)
  0x000000010e4136f8: mov    %ebp,%r9d
  0x000000010e4136fb: sar    %cl,%r9d           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@9 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4136fe: mov    %edx,%esi
  0x000000010e413700: sub    %r9d,%esi
  0x000000010e413703: test   %esi,%esi
  0x000000010e413705: jg     0x000000010e413890  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 171)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e41370b: mov    %r10d,%r9d         ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@38 (line 175)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e41370e: test   %ecx,%ecx
  0x000000010e413710: jne    0x000000010e413c52  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413716: cmp    %r13d,%ebx
  0x000000010e413719: jge    0x000000010e41386c  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e41371f: test   %r9d,%r9d
  0x000000010e413722: jne    0x000000010e413bfa
  0x000000010e413728: mov    0xc(%r12,%rdi,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ; implicit exception: dispatches to 0x000000010e413bfa
  0x000000010e41372d: cmp    %r9d,%ebx
  0x000000010e413730: jae    0x000000010e413bfa
  0x000000010e413736: movslq %r9d,%r9
  0x000000010e413739: movslq %r13d,%r10
  0x000000010e41373c: mov    %r10,%rcx
  0x000000010e41373f: dec    %rcx
  0x000000010e413742: cmp    %r9,%rcx
  0x000000010e413745: jae    0x000000010e413bfa
  0x000000010e41374b: mov    0xc(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x000000010e413bfa
  0x000000010e413750: mov    %r11d,%edx
  0x000000010e413753: sub    %ebx,%edx          ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413755: movslq %r9d,%r9
  0x000000010e413758: movslq %edx,%rcx
  0x000000010e41375b: movslq %ebx,%rsi
  0x000000010e41375e: add    %rcx,%rsi
  0x000000010e413761: cmp    %r9,%rsi
  0x000000010e413764: jae    0x000000010e413bfa
  0x000000010e41376a: add    %rcx,%r10
  0x000000010e41376d: dec    %r10
  0x000000010e413770: cmp    %r9,%r10
  0x000000010e413773: jae    0x000000010e413bfa
  0x000000010e413779: lea    (%r12,%rdi,8),%r9
  0x000000010e41377d: mov    %ebx,%edi
  0x000000010e41377f: inc    %edi
  0x000000010e413781: shl    $0x3,%r8           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@8 (line 1694)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413785: mov    %ebx,%ecx          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413787: movsbl 0x10(%r9,%rcx,1),%r10d
  0x000000010e41378d: mov    %ecx,%eax
  0x000000010e41378f: add    %edx,%eax
  0x000000010e413791: mov    %r10b,0x10(%r8,%rax,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413796: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413798: cmp    %edi,%ecx
  0x000000010e41379a: jl     0x000000010e413787  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e41379c: mov    %r13d,%edi
  0x000000010e41379f: add    $0xfffffffd,%edi
  0x000000010e4137a2: mov    $0x80000000,%r10d
  0x000000010e4137a8: cmp    %edi,%r13d
  0x000000010e4137ab: cmovl  %r10d,%edi
  0x000000010e4137af: cmp    %edi,%ecx
  0x000000010e4137b1: jge    0x000000010e41384c
  0x000000010e4137b7: mov    $0xfa0,%r10d
  0x000000010e4137bd: jmp    0x000000010e4137cd
  0x000000010e4137bf: vmovd  %xmm1,%ebx
  0x000000010e4137c3: vmovd  %xmm0,%r13d
  0x000000010e4137c8: vmovd  %xmm2,%r11d
  0x000000010e4137cd: mov    %edi,%esi
  0x000000010e4137cf: sub    %ecx,%esi
  0x000000010e4137d1: cmp    %r10d,%esi
  0x000000010e4137d4: cmovg  %r10d,%esi
  0x000000010e4137d8: add    %ecx,%esi
  0x000000010e4137da: vmovd  %ebx,%xmm1
  0x000000010e4137de: vmovd  %r13d,%xmm0
  0x000000010e4137e3: vmovd  %r11d,%xmm2
  0x000000010e4137e8: nopl   0x0(%rax,%rax,1)   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e4137f0: movsbl 0x10(%r9,%rcx,1),%ebx
  0x000000010e4137f6: movslq %ecx,%r11
  0x000000010e4137f9: mov    %ecx,%eax
  0x000000010e4137fb: add    %edx,%eax          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e4137fd: mov    %bl,0x10(%r8,%rax,1)
  0x000000010e413802: movslq %eax,%r13
  0x000000010e413805: movsbl 0x11(%r9,%r11,1),%ebp
  0x000000010e41380b: mov    %bpl,0x11(%r8,%r13,1)
  0x000000010e413810: movsbl 0x12(%r9,%r11,1),%ebx
  0x000000010e413816: mov    %bl,0x12(%r8,%r13,1)
  0x000000010e41381b: movsbl 0x13(%r9,%r11,1),%ebx
  0x000000010e413821: mov    %bl,0x13(%r8,%r13,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413826: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413829: cmp    %esi,%ecx
  0x000000010e41382b: jl     0x000000010e4137f0  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e41382d: mov    0x108(%r15),%r11
  0x000000010e413834: add    $0x4,%eax          ; ImmutableOopMap{r8=Oop r9=Oop [8]=Oop [16]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413837: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@100 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ;   {poll}
  0x000000010e41383a: cmp    %edi,%ecx
  0x000000010e41383c: jl     0x000000010e4137bf
  0x000000010e413842: vmovd  %xmm0,%r13d
  0x000000010e413847: vmovd  %xmm2,%r11d
  0x000000010e41384c: cmp    %r13d,%ecx
  0x000000010e41384f: jge    0x000000010e41386c
  0x000000010e413851: data16 xchg %ax,%ax       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413854: movsbl 0x10(%r9,%rcx,1),%ebx
  0x000000010e41385a: mov    %ecx,%r10d
  0x000000010e41385d: add    %edx,%r10d
  0x000000010e413860: mov    %bl,0x10(%r8,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@56 (line 1698)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413865: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@97 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413867: cmp    %r13d,%ecx
  0x000000010e41386a: jl     0x000000010e413854  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e41386c: add    %r11d,%r14d
  0x000000010e41386f: mov    0x10(%rsp),%r10
  0x000000010e413874: mov    %r14d,0xc(%r10)    ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 628)

  0x000000010e413878: mov    0x10(%rsp),%rax
  0x000000010e41387d: vzeroupper 
  0x000000010e413880: add    $0x60,%rsp
  0x000000010e413884: pop    %rbp
  0x000000010e413885: mov    0x108(%r15),%r10
  0x000000010e41388c: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e41388f: retq   
  0x000000010e413890: shl    %r9d               ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@13 (line 200)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413893: mov    %r9d,%r11d
  0x000000010e413896: sub    %edx,%r11d
  0x000000010e413899: add    $0x2,%r11d
  0x000000010e41389d: test   %r11d,%r11d
  0x000000010e4138a0: jge    0x000000010e413aab  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@20 (line 201)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138a6: mov    %edx,%r9d          ;*ldc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@25 (line 204)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138a9: test   %r9d,%r9d
  0x000000010e4138ac: jle    0x000000010e4138bf  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@35 (line 205)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138ae: mov    $0x7ffffff7,%r10d
  0x000000010e4138b4: sar    %cl,%r10d
  0x000000010e4138b7: sub    %r9d,%r10d
  0x000000010e4138ba: test   %r10d,%r10d
  0x000000010e4138bd: jge    0x000000010e4138fd  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@45 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138bf: mov    %r14d,0x1c(%rsp)
  0x000000010e4138c4: mov    %r8d,0x18(%rsp)
  0x000000010e4138c9: mov    %r13d,0x4(%rsp)
  0x000000010e4138ce: mov    %ebx,(%rsp)
  0x000000010e4138d1: mov    0x10(%rsp),%rbp
  0x000000010e4138d6: mov    %rbp,%rsi
  0x000000010e4138d9: data16 xchg %ax,%ax
  0x000000010e4138dc: vzeroupper 
  0x000000010e4138df: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
                                                ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ;   {optimized virtual_call}
  0x000000010e4138e4: movsbl 0x10(%rbp),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@28 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138e8: mov    (%rsp),%ebx
  0x000000010e4138eb: mov    0x4(%rsp),%r13d
  0x000000010e4138f0: mov    0x18(%rsp),%r8d
  0x000000010e4138f5: mov    0x1c(%rsp),%r14d
  0x000000010e4138fa: mov    %eax,%r9d          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@50 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4138fd: shl    %cl,%r9d           ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@31 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413900: cmp    $0x100000,%r9d
  0x000000010e413907: ja     0x000000010e413cce
  0x000000010e41390d: movslq %r9d,%rcx
  0x000000010e413910: mov    %r9d,%r10d         ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413913: mov    0x28(%rsp),%r11d
  0x000000010e413918: cmp    %r10d,%r11d
  0x000000010e41391b: mov    %r10d,%ebp
  0x000000010e41391e: cmovl  %r11d,%ebp         ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@11 (line 3747)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413922: cmp    %ebp,%r11d
  0x000000010e413925: jb     0x000000010e413d02
  0x000000010e41392b: cmp    %ebp,%r10d
  0x000000010e41392e: jb     0x000000010e413d02  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413934: add    $0x17,%rcx
  0x000000010e413938: mov    %rcx,%rax
  0x000000010e41393b: and    $0xfffffffffffffff8,%rax  ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e41393f: cmp    $0x100000,%r9d
  0x000000010e413946: ja     0x000000010e413b4e
  0x000000010e41394c: mov    0x118(%r15),%r10
  0x000000010e413953: mov    %r10,%r11
  0x000000010e413956: add    %rax,%r11
  0x000000010e413959: cmp    0x128(%r15),%r11
  0x000000010e413960: jae    0x000000010e413b4e  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413966: mov    %r11,0x118(%r15)
  0x000000010e41396d: prefetchnta 0xc0(%r11)
  0x000000010e413975: movq   $0x1,(%r10)
  0x000000010e41397c: prefetchnta 0x100(%r11)
  0x000000010e413984: movl   $0x820,0x8(%r10)   ;   {metadata({type array byte})}
  0x000000010e41398c: mov    %r9d,0xc(%r10)
  0x000000010e413990: prefetchnta 0x140(%r11)
  0x000000010e413998: prefetchnta 0x180(%r11)   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4139a0: mov    %r10,(%rsp)
  0x000000010e4139a4: add    $0x10,%r10
  0x000000010e4139a8: shr    $0x3,%rcx
  0x000000010e4139ac: mov    (%rsp),%r11
  0x000000010e4139b0: mov    %r11,%rdx
  0x000000010e4139b3: shr    $0x3,%rdx          ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4139b7: test   %ebp,%ebp
  0x000000010e4139b9: je     0x000000010e413cd6
  0x000000010e4139bf: mov    %edx,0x18(%rsp)
  0x000000010e4139c3: lea    (%r12,%r8,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e4139c7: lea    0x10(%r12,%r8,8),%r8
  0x000000010e4139cc: cmp    %r9d,%ebp
  0x000000010e4139cf: jl     0x000000010e413ab4
  0x000000010e4139d5: add    $0xfffffffffffffff0,%rax
  0x000000010e4139d9: shr    $0x3,%rax
  0x000000010e4139dd: mov    %r8,%rdi
  0x000000010e4139e0: mov    %r10,%rsi
  0x000000010e4139e3: mov    %rax,%rdx
  0x000000010e4139e6: vzeroupper 
  0x000000010e4139e9: movabs $0x10e3c1080,%r10
  0x000000010e4139f3: callq  *%r10
  0x000000010e4139f6: mov    0x18(%rsp),%edx
  0x000000010e4139fa: cmpb   $0x0,0x30(%r15)
  0x000000010e4139ff: jne    0x000000010e413b12
  0x000000010e413a05: mov    0x10(%rsp),%r10
  0x000000010e413a0a: mov    %edx,0x14(%r10)
  0x000000010e413a0e: mov    (%rsp),%r10
  0x000000010e413a12: mov    0x10(%rsp),%r11
  0x000000010e413a17: xor    %r11,%r10
  0x000000010e413a1a: shr    $0x14,%r10
  0x000000010e413a1e: test   %r10,%r10
  0x000000010e413a21: je     0x000000010e413a82
  0x000000010e413a23: shr    $0x9,%r11
  0x000000010e413a27: movabs $0x10e38b000,%rdi
  0x000000010e413a31: add    %r11,%rdi
  0x000000010e413a34: cmpb   $0x20,(%rdi)
  0x000000010e413a37: je     0x000000010e413a82
  0x000000010e413a39: mov    0x80(%r15),%r10
  0x000000010e413a40: mov    0x70(%r15),%r11
  0x000000010e413a44: lock addl $0x0,-0x40(%rsp)
  0x000000010e413a4a: cmpb   $0x0,(%rdi)
  0x000000010e413a4d: je     0x000000010e413a79
  0x000000010e413a4f: movb   $0x0,(%rdi)
  0x000000010e413a52: test   %r11,%r11
  0x000000010e413a55: je     0x000000010e413a66
  0x000000010e413a57: mov    %rdi,-0x8(%r10,%r11,1)
  0x000000010e413a5c: add    $0xfffffffffffffff8,%r11
  0x000000010e413a60: mov    %r11,0x70(%r15)
  0x000000010e413a64: jmp    0x000000010e413a79
  0x000000010e413a66: mov    %r15,%rsi
  0x000000010e413a69: vzeroupper 
  0x000000010e413a6c: movabs $0x104b038ce,%r10
  0x000000010e413a76: callq  *%r10
  0x000000010e413a79: mov    0x10(%rsp),%r10
  0x000000010e413a7e: mov    0x14(%r10),%edx    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413a82: mov    0x10(%rsp),%r10
  0x000000010e413a87: movsbl 0x10(%r10),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413a8c: mov    0x8(%rsp),%r10
  0x000000010e413a91: movsbl 0x14(%r10),%r9d    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413a96: mov    0xc(%r10),%edi     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - java.lang.AbstractStringBuilder::appendChars@31 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413a9a: mov    0x10(%rsp),%r10
  0x000000010e413a9f: mov    0xc(%r10),%r11d    ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@17 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413aa3: mov    %edx,%r8d
  0x000000010e413aa6: jmpq   0x000000010e41370e
  0x000000010e413aab: add    $0x2,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@15 (line 200)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413aaf: jmpq   0x000000010e4138a9
  0x000000010e413ab4: movslq %ebp,%rdx
  0x000000010e413ab7: mov    %rdx,%r11
  0x000000010e413aba: add    $0x10,%r11
  0x000000010e413abe: mov    %r11,%r9
  0x000000010e413ac1: and    $0xfffffffffffffff8,%r9
  0x000000010e413ac5: mov    (%rsp),%rdi
  0x000000010e413ac9: add    %r9,%rdi
  0x000000010e413acc: shr    $0x3,%r11
  0x000000010e413ad0: sub    %r11,%rcx
  0x000000010e413ad3: xor    %rax,%rax
  0x000000010e413ad6: cmp    $0x8,%rcx
  0x000000010e413ada: jg     0x000000010e413aec
  0x000000010e413adc: dec    %rcx
  0x000000010e413adf: js     0x000000010e413af3
  0x000000010e413ae1: mov    %rax,(%rdi,%rcx,8)
  0x000000010e413ae5: dec    %rcx
  0x000000010e413ae8: jge    0x000000010e413ae1
  0x000000010e413aea: jmp    0x000000010e413af3
  0x000000010e413aec: shl    $0x3,%rcx
  0x000000010e413af0: rep rex.W stos %al,%es:(%rdi)
  0x000000010e413af3: mov    %r8,%rdi
  0x000000010e413af6: mov    %r10,%rsi
  0x000000010e413af9: vzeroupper 
  0x000000010e413afc: movabs $0x10e3c0c00,%r10
  0x000000010e413b06: callq  *%r10
  0x000000010e413b09: mov    0x18(%rsp),%edx
  0x000000010e413b0d: jmpq   0x000000010e4139fa
  0x000000010e413b12: mov    0x10(%rsp),%r10
  0x000000010e413b17: mov    0x14(%r10),%r11d
  0x000000010e413b1b: test   %r11d,%r11d
  0x000000010e413b1e: je     0x000000010e413a05
  0x000000010e413b24: mov    0x38(%r15),%r10
  0x000000010e413b28: mov    %r11,%rdi
  0x000000010e413b2b: shl    $0x3,%rdi
  0x000000010e413b2f: test   %r10,%r10
  0x000000010e413b32: je     0x000000010e413d32
  0x000000010e413b38: mov    0x48(%r15),%r11
  0x000000010e413b3c: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e413b41: add    $0xfffffffffffffff8,%r10
  0x000000010e413b45: mov    %r10,0x38(%r15)    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413b49: jmpq   0x000000010e413a05
  0x000000010e413b4e: mov    %rax,0x38(%rsp)
  0x000000010e413b53: mov    %rcx,0x30(%rsp)
  0x000000010e413b58: mov    %r9d,0x28(%rsp)
  0x000000010e413b5d: mov    %r14d,0x24(%rsp)
  0x000000010e413b62: mov    %r8d,0x20(%rsp)
  0x000000010e413b67: mov    0x8(%rsp),%r10
  0x000000010e413b6c: mov    %r10,0x18(%rsp)
  0x000000010e413b71: mov    %r13d,0xc(%rsp)
  0x000000010e413b76: mov    %ebx,0x8(%rsp)
  0x000000010e413b7a: rex.W pushq 0x10(%rsp)
  0x000000010e413b7f: rex.W popq (%rsp)
  0x000000010e413b83: movabs $0x800000820,%rsi  ;   {metadata({type array byte})}
  0x000000010e413b8d: mov    %r9d,%edx
  0x000000010e413b90: vzeroupper 
  0x000000010e413b93: callq  0x000000010e3e9980  ; ImmutableOopMap{[0]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e413b98: mov    %rax,%r10
  0x000000010e413b9b: rex.W pushq (%rsp)
  0x000000010e413b9f: rex.W popq 0x10(%rsp)
  0x000000010e413ba4: mov    0x8(%rsp),%ebx
  0x000000010e413ba8: mov    0xc(%rsp),%r13d
  0x000000010e413bad: mov    0x18(%rsp),%r11
  0x000000010e413bb2: mov    %r11,0x8(%rsp)
  0x000000010e413bb7: mov    0x20(%rsp),%r8d
  0x000000010e413bbc: mov    0x24(%rsp),%r14d
  0x000000010e413bc1: mov    0x28(%rsp),%r9d
  0x000000010e413bc6: mov    0x30(%rsp),%rcx
  0x000000010e413bcb: mov    0x38(%rsp),%rax
  0x000000010e413bd0: jmpq   0x000000010e4139a0
  0x000000010e413bd5: mov    $0xffffffde,%esi
  0x000000010e413bda: mov    0x10(%rsp),%rbp
  0x000000010e413bdf: mov    %ecx,0x8(%rsp)
  0x000000010e413be3: mov    %r8d,0xc(%rsp)
  0x000000010e413be8: mov    %rdx,0x18(%rsp)
  0x000000010e413bed: data16 xchg %ax,%ax
  0x000000010e413bf0: vzeroupper 
  0x000000010e413bf3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413bf8: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413bfa: mov    $0xffffff7e,%esi
  0x000000010e413bff: rex.W pushq 0x10(%rsp)
  0x000000010e413c04: rex.W popq (%rsp)
  0x000000010e413c08: mov    %ebx,0x18(%rsp)
  0x000000010e413c0c: mov    %ebx,0x1c(%rsp)
  0x000000010e413c10: mov    %r13d,0x20(%rsp)
  0x000000010e413c15: mov    %r8d,0x24(%rsp)
  0x000000010e413c1a: mov    %r11d,0x28(%rsp)
  0x000000010e413c1f: nop
  0x000000010e413c20: vzeroupper 
  0x000000010e413c23: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [36]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413c28: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@25 (line 1695)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413c2a: mov    $0xffffff4d,%esi
  0x000000010e413c2f: rex.W pushq 0x10(%rsp)
  0x000000010e413c34: rex.W popq (%rsp)
  0x000000010e413c38: mov    %ebx,0x18(%rsp)
  0x000000010e413c3c: mov    %r8d,0x1c(%rsp)
  0x000000010e413c41: mov    %ebx,0x20(%rsp)
  0x000000010e413c45: data16 xchg %ax,%ax
  0x000000010e413c48: vzeroupper 
  0x000000010e413c4b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@1 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413c50: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413c52: mov    $0xffffff4d,%esi
  0x000000010e413c57: rex.W pushq 0x10(%rsp)
  0x000000010e413c5c: rex.W popq (%rsp)
  0x000000010e413c60: mov    %ebx,0x10(%rsp)
  0x000000010e413c64: mov    %r13d,0x14(%rsp)
  0x000000010e413c69: mov    %ecx,0x18(%rsp)
  0x000000010e413c6d: data16 xchg %ax,%ax
  0x000000010e413c70: vzeroupper 
  0x000000010e413c73: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413c78: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.AbstractStringBuilder::appendChars@1 (line 1693)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)

  0x000000010e413c7a: mov    $0xffffff4d,%esi
  0x000000010e413c7f: rex.W pushq 0x10(%rsp)
  0x000000010e413c84: rex.W popq (%rsp)
  0x000000010e413c88: mov    %ebx,0x18(%rsp)
  0x000000010e413c8c: mov    %r8d,0x1c(%rsp)
  0x000000010e413c91: mov    %ebx,0x20(%rsp)
  0x000000010e413c95: mov    %r8d,0x24(%rsp)
  0x000000010e413c9a: xchg   %ax,%ax
  0x000000010e413c9c: vzeroupper 
  0x000000010e413c9f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413ca4: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@6 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)

  0x000000010e413ca6: mov    $0xffffff4d,%esi
  0x000000010e413cab: rex.W pushq 0x10(%rsp)
  0x000000010e413cb0: rex.W popq (%rsp)
  0x000000010e413cb4: mov    %ebx,0x18(%rsp)
  0x000000010e413cb8: mov    %r8d,0x1c(%rsp)
  0x000000010e413cbd: mov    %r8d,0x20(%rsp)
  0x000000010e413cc2: xchg   %ax,%ax
  0x000000010e413cc4: vzeroupper 
  0x000000010e413cc7: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413ccc: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::checkRange@11 (line 1715)
                                                ; - java.lang.AbstractStringBuilder::append@15 (line 631)

  0x000000010e413cce: movslq %r9d,%rcx          ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413cd1: jmpq   0x000000010e413910
  0x000000010e413cd6: add    $0xfffffffffffffffe,%rcx
  0x000000010e413cda: mov    %r10,%rdi
  0x000000010e413cdd: xor    %rax,%rax
  0x000000010e413ce0: cmp    $0x8,%rcx
  0x000000010e413ce4: jg     0x000000010e413cf6
  0x000000010e413ce6: dec    %rcx
  0x000000010e413ce9: js     0x000000010e413cfd
  0x000000010e413ceb: mov    %rax,(%rdi,%rcx,8)
  0x000000010e413cef: dec    %rcx
  0x000000010e413cf2: jge    0x000000010e413ceb
  0x000000010e413cf4: jmp    0x000000010e413cfd
  0x000000010e413cf6: shl    $0x3,%rcx
  0x000000010e413cfa: rep rex.W stos %al,%es:(%rdi)
  0x000000010e413cfd: jmpq   0x000000010e4139fa  ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d02: mov    $0xffffffcc,%esi
  0x000000010e413d07: mov    0x10(%rsp),%rbp
  0x000000010e413d0c: mov    0x8(%rsp),%r10
  0x000000010e413d11: mov    %r10,(%rsp)
  0x000000010e413d15: mov    %ebx,0x8(%rsp)
  0x000000010e413d19: mov    %r13d,0xc(%rsp)
  0x000000010e413d1e: mov    %r8d,0x18(%rsp)
  0x000000010e413d23: mov    %r9d,0x20(%rsp)
  0x000000010e413d28: vzeroupper 
  0x000000010e413d2b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=NarrowOop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413d30: ud2                       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@14 (line 3746)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d32: mov    %edx,%ebp
  0x000000010e413d34: mov    %r15,%rsi
  0x000000010e413d37: vzeroupper 
  0x000000010e413d3a: movabs $0x104b038aa,%r10
  0x000000010e413d44: callq  *%r10              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@35 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d47: mov    %ebp,%edx
  0x000000010e413d49: jmpq   0x000000010e413a05
  0x000000010e413d4e: mov    $0xfffffff6,%esi
  0x000000010e413d53: nop
  0x000000010e413d54: vzeroupper 
  0x000000010e413d57: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413d5c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 631)

  0x000000010e413d5e: mov    $0xfffffff6,%esi
  0x000000010e413d63: nop
  0x000000010e413d64: vzeroupper 
  0x000000010e413d67: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413d6c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d6e: mov    $0xffffff4d,%esi
  0x000000010e413d73: mov    0x10(%rsp),%rbp
  0x000000010e413d78: mov    %ecx,(%rsp)
  0x000000010e413d7b: mov    %r8d,0x4(%rsp)
  0x000000010e413d80: mov    %rdx,0x10(%rsp)
  0x000000010e413d85: data16 xchg %ax,%ax
  0x000000010e413d88: vzeroupper 
  0x000000010e413d8b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::append@1 (line 628)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e413d90: ud2                       ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d92: mov    %rax,%rsi
  0x000000010e413d95: jmp    0x000000010e413d9a  ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@31 (line 633)

  0x000000010e413d97: mov    %rax,%rsi          ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::append@-1 (line 628)

  0x000000010e413d9a: vzeroupper 
  0x000000010e413d9d: add    $0x60,%rsp
  0x000000010e413da1: pop    %rbp
  0x000000010e413da2: jmpq   0x000000010e3ea700  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::appendChars@28 (line 1696)
                                                ; - java.lang.AbstractStringBuilder::append@38 (line 634)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e413da7: hlt    
  0x000000010e413da8: hlt    
  0x000000010e413da9: hlt    
  0x000000010e413daa: hlt    
  0x000000010e413dab: hlt    
  0x000000010e413dac: hlt    
  0x000000010e413dad: hlt    
  0x000000010e413dae: hlt    
  0x000000010e413daf: hlt    
  0x000000010e413db0: hlt    
  0x000000010e413db1: hlt    
  0x000000010e413db2: hlt    
  0x000000010e413db3: hlt    
  0x000000010e413db4: hlt    
  0x000000010e413db5: hlt    
  0x000000010e413db6: hlt    
  0x000000010e413db7: hlt    
  0x000000010e413db8: hlt    
  0x000000010e413db9: hlt    
  0x000000010e413dba: hlt    
  0x000000010e413dbb: hlt    
  0x000000010e413dbc: hlt    
  0x000000010e413dbd: hlt    
  0x000000010e413dbe: hlt    
  0x000000010e413dbf: hlt    
[Stub Code]
  0x000000010e413dc0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e413dca: jmpq   0x000000010e413dca  ;   {runtime_call}
[Exception Handler]
  0x000000010e413dcf: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e413dd4: callq  0x000000010e413dd9
  0x000000010e413dd9: subq   $0x5,(%rsp)
  0x000000010e413dde: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e413de3: hlt    
  0x000000010e413de4: hlt    
  0x000000010e413de5: hlt    
  0x000000010e413de6: hlt    
  0x000000010e413de7: hlt    

ImmutableOopMap{r8=Oop r9=Oop [8]=Oop [16]=Oop }pc offsets: 471 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=NarrowOop }pc offsets: 644 
ImmutableOopMap{[0]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 1336 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 1432 
ImmutableOopMap{[0]=Oop [8]=Oop [36]=NarrowOop }pc offsets: 1480 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 1520 1560 1604 1644 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=NarrowOop }pc offsets: 1744 
ImmutableOopMap{}pc offsets: 1788 1804 
ImmutableOopMap{rbp=Oop [16]=Oop }pc offsets: 1840 Compiled method (c2)     548  105 %           OptimizedProceduralZipCode::runTest @ 11 (46 bytes)
 total in heap  [0x000000010e419310,0x000000010e41d058] = 15688
 relocation     [0x000000010e419488,0x000000010e419580] = 248
 main code      [0x000000010e419580,0x000000010e41a9c0] = 5184
 stub code      [0x000000010e41a9c0,0x000000010e41aa08] = 72
 oops           [0x000000010e41aa08,0x000000010e41aa38] = 48
 metadata       [0x000000010e41aa38,0x000000010e41ab78] = 320
 scopes data    [0x000000010e41ab78,0x000000010e41b7b8] = 3136
 scopes pcs     [0x000000010e41b7b8,0x000000010e41cf38] = 6016
 dependencies   [0x000000010e41cf38,0x000000010e41cf48] = 16
 handler table  [0x000000010e41cf48,0x000000010e41cff0] = 168
 nul chk table  [0x000000010e41cff0,0x000000010e41d058] = 104
----------------------------------------------------------------------
OptimizedProceduralZipCode.runTest()I  [0x000000010e419580, 0x000000010e41aa08]  5256 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011cf8b978} 'runTest' '()I' in 'OptimizedProceduralZipCode'
  0x000000010e419580: callq  0x0000000104e107f4  ;   {runtime_call os::breakpoint()}
  0x000000010e419585: data16 data16 nopw 0x0(%rax,%rax,1)
  0x000000010e419590: mov    %eax,-0x14000(%rsp)
  0x000000010e419597: push   %rbp
  0x000000010e419598: sub    $0xa0,%rsp         ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41959f: mov    0x18(%rsi),%rbx
  0x000000010e4195a3: mov    0x8(%rsi),%r13     ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@1 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e4195a7: mov    0x10(%rsi),%ebp    ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e4195aa: mov    %rsi,%rdi
  0x000000010e4195ad: vzeroupper 
  0x000000010e4195b0: movabs $0x104e91a82,%r10
  0x000000010e4195ba: callq  *%r10              ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4195bd: test   %rbx,%rbx
  0x000000010e4195c0: je     0x000000010e41a1cb  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4195c6: mov    0x8(%rbx),%r10d
  0x000000010e4195ca: cmp    $0x60040,%r10d     ;   {metadata('OptimizedProceduralZipCode')}
  0x000000010e4195d1: jne    0x000000010e41a047  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4195d7: mov    %rbx,%r9           ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e4195da: mov    0x8(%r13),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a806
  0x000000010e4195de: movabs $0x800000000,%rsi
  0x000000010e4195e8: add    %r10,%rsi
  0x000000010e4195eb: mov    0x20(%rsi),%r10
  0x000000010e4195ef: movabs $0x800020e98,%rax  ;   {metadata('java/util/Iterator')}
  0x000000010e4195f9: cmp    %rax,%r10
  0x000000010e4195fc: jne    0x000000010e41a022  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@29 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419602: mov    0x8(%r13),%r10d    ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419606: cmp    $0x3efb0,%r10d     ;   {metadata('java/util/ArrayList$Itr')}
  0x000000010e41960d: jne    0x000000010e41a809  ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1663)
                                                ; - java.lang.String::replace@17 (line 2144)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419613: test   %r9,%r9
  0x000000010e419616: je     0x000000010e41a7ee  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1663)
                                                ; - java.lang.String::replace@17 (line 2144)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41961c: mov    $0xed68,%r11d      ;   {metadata('java/lang/StringBuilder')}
  0x000000010e419622: movabs $0x800000000,%rbx
  0x000000010e41962c: add    %r11,%rbx
  0x000000010e41962f: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419639: movabs $0x70fd448e8,%rcx  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419643: add    $0x10,%rcx
  0x000000010e419647: movabs $0x70fd44928,%r10  ;   {oop([B{0x000000070fd44928})}
  0x000000010e419651: movabs $0x70fd44928,%rdi  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41965b: add    $0x10,%rdi
  0x000000010e41965f: mov    %ebp,0x40(%rsp)
  0x000000010e419663: mov    $0x1,%edx
  0x000000010e419668: jmpq   0x000000010e419bf4
  0x000000010e41966d: xor    %r10d,%r10d        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@134 (line 71)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419670: mov    (%rsp),%r8
  0x000000010e419674: mov    0xc(%r8),%r11d     ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@110 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419678: test   %r11d,%r11d
  0x000000010e41967b: je     0x000000010e41a5b8  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419681: test   %r10,%r10
  0x000000010e419684: jne    0x000000010e419690  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419686: movabs $0x70ff049f0,%r10  ;   {oop("null"{0x000000070ff049f0})}
  0x000000010e419690: mov    0x18(%rsp),%rdi
  0x000000010e419695: mov    $0x14,%edx
  0x000000010e41969a: mov    0x20(%rsp),%rsi
  0x000000010e41969f: mov    %rsp,%rcx
  0x000000010e4196a2: movzwl (%rsi),%ebx
  0x000000010e4196a5: vmovd  %ebx,%xmm0
  0x000000010e4196a9: cmp    $0x10,%edx
  0x000000010e4196ac: jae    0x000000010e4196d5
  0x000000010e4196ae: mov    %edi,%ebx
  0x000000010e4196b0: and    $0xfff,%ebx
  0x000000010e4196b6: cmp    $0xff0,%ebx
  0x000000010e4196bc: jbe    0x000000010e4196d5
  0x000000010e4196be: sub    $0x10,%rsp
  0x000000010e4196c2: mov    %edx,%eax
  0x000000010e4196c4: movzbl -0x1(%rdi,%rax,1),%ebx
  0x000000010e4196c9: mov    %bl,-0x1(%rsp,%rax,1)
  0x000000010e4196cd: dec    %rax
  0x000000010e4196d0: jne    0x000000010e4196c4
  0x000000010e4196d2: mov    %rsp,%rdi
  0x000000010e4196d5: mov    $0x2,%eax
  0x000000010e4196da: push   %rcx
  0x000000010e4196db: mov    %rdi,%rbx
  0x000000010e4196de: vpcmpestri $0xc,(%rbx),%xmm0
  0x000000010e4196e4: jb     0x000000010e419704
  0x000000010e4196e6: sub    $0x10,%edx
  0x000000010e4196e9: jle    0x000000010e41970a
  0x000000010e4196eb: cmp    %eax,%edx
  0x000000010e4196ed: js     0x000000010e41970a
  0x000000010e4196ef: add    $0x10,%rbx
  0x000000010e4196f3: cmp    $0x10,%edx
  0x000000010e4196f6: jge    0x000000010e4196de
  0x000000010e4196f8: lea    -0x10(%rbx,%rdx,1),%rbx
  0x000000010e4196fd: mov    $0x10,%edx
  0x000000010e419702: jmp    0x000000010e4196de
  0x000000010e419704: sub    %ecx,%edx
  0x000000010e419706: cmp    %eax,%edx
  0x000000010e419708: jge    0x000000010e419711
  0x000000010e41970a: mov    $0xffffffff,%ebx
  0x000000010e41970f: jmp    0x000000010e41971d
  0x000000010e419711: lea    (%rbx,%rcx,1),%rbx
  0x000000010e419715: cmp    $0xe,%ecx
  0x000000010e419718: jg     0x000000010e4196f3
  0x000000010e41971a: sub    %rdi,%rbx
  0x000000010e41971d: pop    %rsp               ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41971e: test   %ebx,%ebx
  0x000000010e419720: jl     0x000000010e41a70e  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419726: mov    0xc(%r10),%r11d
  0x000000010e41972a: mov    0xc(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x000000010e41a902
  0x000000010e41972f: movsbl 0x14(%r10),%ecx    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419734: sar    %cl,%r9d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419737: mov    %r9d,0x44(%rsp)
  0x000000010e41973c: mov    %r9d,%r11d
  0x000000010e41973f: add    $0x12,%r11d        ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@9 (line 64)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419743: test   %r11d,%r11d
  0x000000010e419746: jl     0x000000010e41a72e  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41974c: mov    0x118(%r15),%rax   ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1707)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419753: mov    %rax,%r9
  0x000000010e419756: add    $0x18,%r9
  0x000000010e41975a: cmp    0x128(%r15),%r9
  0x000000010e419761: jae    0x000000010e41a0bb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419767: mov    %r9,0x118(%r15)
  0x000000010e41976e: prefetchnta 0xc0(%r9)
  0x000000010e419776: mov    0x8(%rsp),%r9
  0x000000010e41977b: mov    0xb8(%r9),%rcx     ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419782: mov    %rcx,(%rax)        ;*getstatic COMPACT_STRINGS {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@0 (line 3258)
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419785: movl   $0xed68,0x8(%rax)  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata('java/lang/StringBuilder')}
  0x000000010e41978c: movl   $0x0,0xc(%rax)
  0x000000010e419793: movq   $0x0,0x10(%rax)    ;*getfield cursor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@5 (line 997)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41979b: cmp    $0x100000,%r11d
  0x000000010e4197a2: ja     0x000000010e41a5ca
  0x000000010e4197a8: movslq 0x44(%rsp),%rcx
  0x000000010e4197ad: add    $0x12,%rcx         ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4197b1: cmp    $0x100000,%r11d
  0x000000010e4197b8: ja     0x000000010e41a121  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@116 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4197be: mov    %rax,0x38(%rsp)
  0x000000010e4197c3: mov    %ebx,0x14(%rsp)
  0x000000010e4197c7: mov    %r10,0x30(%rsp)
  0x000000010e4197cc: mov    %r9,0x8(%rsp)
  0x000000010e4197d1: mov    %r8,(%rsp)
  0x000000010e4197d5: mov    %r13,0x28(%rsp)
  0x000000010e4197da: mov    0x118(%r15),%r9
  0x000000010e4197e1: add    $0x17,%rcx
  0x000000010e4197e5: mov    %rcx,%r10
  0x000000010e4197e8: and    $0xfffffffffffffff8,%r10
  0x000000010e4197ec: mov    %r9,%r8
  0x000000010e4197ef: add    %r10,%r8
  0x000000010e4197f2: cmp    0x128(%r15),%r8
  0x000000010e4197f9: jae    0x000000010e41a13d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4197ff: mov    %r8,0x118(%r15)
  0x000000010e419806: prefetchnta 0xc0(%r8)
  0x000000010e41980e: movq   $0x1,(%r9)
  0x000000010e419815: prefetchnta 0x100(%r8)
  0x000000010e41981d: movl   $0x820,0x8(%r9)    ;   {metadata({type array byte})}
  0x000000010e419825: mov    %r11d,0xc(%r9)
  0x000000010e419829: prefetchnta 0x140(%r8)
  0x000000010e419831: prefetchnta 0x180(%r8)
  0x000000010e419839: shr    $0x3,%rcx
  0x000000010e41983d: add    $0xfffffffffffffffe,%rcx
  0x000000010e419841: mov    %r9,%rdi
  0x000000010e419844: add    $0x10,%rdi
  0x000000010e419848: xor    %rax,%rax
  0x000000010e41984b: cmp    $0x8,%rcx
  0x000000010e41984f: jg     0x000000010e419861
  0x000000010e419851: dec    %rcx
  0x000000010e419854: js     0x000000010e419868
  0x000000010e419856: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41985a: dec    %rcx
  0x000000010e41985d: jge    0x000000010e419856
  0x000000010e41985f: jmp    0x000000010e419868
  0x000000010e419861: shl    $0x3,%rcx
  0x000000010e419865: rep rex.W stos %al,%es:(%rdi)  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419868: mov    0x38(%rsp),%rcx
  0x000000010e41986d: mov    %rcx,%r10          ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419870: mov    %r9,%r8
  0x000000010e419873: shr    $0x3,%r8
  0x000000010e419877: mov    %r8d,0x14(%rcx)    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41987b: mov    %r9,%r11
  0x000000010e41987e: xor    %r10,%r11
  0x000000010e419881: shr    $0x14,%r11
  0x000000010e419885: test   %r11,%r11
  0x000000010e419888: je     0x000000010e4198e5  ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41988a: shr    $0x9,%r10
  0x000000010e41988e: movabs $0x10e38b000,%rdi
  0x000000010e419898: add    %r10,%rdi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41989b: cmpb   $0x20,(%rdi)
  0x000000010e41989e: je     0x000000010e4198e5
  0x000000010e4198a0: mov    0x70(%r15),%r10    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198a4: mov    0x80(%r15),%r11    ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198ab: lock addl $0x0,-0x40(%rsp)  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198b1: cmpb   $0x0,(%rdi)
  0x000000010e4198b4: je     0x000000010e4198e5  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198b6: movb   $0x0,(%rdi)        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198b9: test   %r10,%r10
  0x000000010e4198bc: jne    0x000000010e4198d8  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198be: mov    %r15,%rsi
  0x000000010e4198c1: vzeroupper 
  0x000000010e4198c4: movabs $0x104b038ce,%r10
  0x000000010e4198ce: callq  *%r10              ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198d1: mov    0x38(%rsp),%rcx
  0x000000010e4198d6: jmp    0x000000010e4198e5
  0x000000010e4198d8: mov    %rdi,-0x8(%r11,%r10,1)  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198dd: add    $0xfffffffffffffff8,%r10  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198e1: mov    %r10,0x70(%r15)    ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198e5: movb   $0x0,0x10(%rcx)    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198e9: mov    %rcx,0x38(%rsp)    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4198ee: mov    %rcx,%rsi
  0x000000010e4198f1: movabs $0x70fd448d0,%rdx  ;   {oop("invalid zip code: {}"{0x000000070fd448d0})}
  0x000000010e4198fb: xor    %ecx,%ecx
  0x000000010e4198fd: mov    0x14(%rsp),%r8d
  0x000000010e419902: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41990c: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419916: mov    %r10,0x48(%rsp)
  0x000000010e41991b: nop
  0x000000010e41991c: vzeroupper 
  0x000000010e41991f: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[72] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [72]=Oop }
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@96 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {optimized virtual_call}
  0x000000010e419924: mov    0x14(%rax),%ebp    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a912
  0x000000010e419927: mov    0x30(%rsp),%r11
  0x000000010e41992c: mov    0xc(%r11),%r9d     ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419930: mov    0xc(%r12,%r9,8),%r10d  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a922
  0x000000010e419935: mov    %ebp,0x44(%rsp)
  0x000000010e419939: mov    %rax,0x48(%rsp)
  0x000000010e41993e: mov    0xc(%r12,%rbp,8),%r11d  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a932
  0x000000010e419943: mov    %r11d,0x84(%rsp)
  0x000000010e41994b: mov    0xc(%rax),%r8d     ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41994f: mov    0x30(%rsp),%r11
  0x000000010e419954: movsbl 0x14(%r11),%r11d   ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419959: mov    %r11d,%edi
  0x000000010e41995c: mov    %r11d,%ecx
  0x000000010e41995f: sar    %cl,%r10d          ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@11 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419962: mov    %r10d,0x50(%rsp)
  0x000000010e419967: movsbl 0x10(%rax),%r10d   ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41996c: mov    %r10d,%ecx
  0x000000010e41996f: mov    0x50(%rsp),%edx
  0x000000010e419973: add    %r8d,%edx          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419976: mov    0x84(%rsp),%eax
  0x000000010e41997d: sar    %cl,%eax           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41997f: mov    %edx,%r10d
  0x000000010e419982: sub    %eax,%r10d
  0x000000010e419985: test   %r10d,%r10d
  0x000000010e419988: jg     0x000000010e419dd0  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41998e: cmp    %edi,%ecx
  0x000000010e419990: jne    0x000000010e41a756  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419996: cmp    %ecx,%edi
  0x000000010e419998: jne    0x000000010e41a67e
  0x000000010e41999e: mov    0xc(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x000000010e41a942
  0x000000010e4199a3: mov    %r8d,%r11d
  0x000000010e4199a6: shl    %cl,%r11d          ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@14 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e4199a9: mov    %r11d,%ebx
  0x000000010e4199ac: mov    0x44(%rsp),%r8d
  0x000000010e4199b1: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000010e41a952
  0x000000010e4199b6: test   %ebx,%ebx
  0x000000010e4199b8: jl     0x000000010e41a60c
  0x000000010e4199be: mov    %ebx,%r8d
  0x000000010e4199c1: add    %r10d,%r8d
  0x000000010e4199c4: cmp    %r8d,%r11d
  0x000000010e4199c7: jb     0x000000010e41a60c  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199cd: test   %r10d,%r10d
  0x000000010e4199d0: jbe    0x000000010e4199fb  ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@53 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199d2: movslq %r10d,%rdx
  0x000000010e4199d5: lea    (%r12,%r9,8),%r10  ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199d9: lea    0x10(%r12,%r9,8),%rdi  ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199de: mov    0x44(%rsp),%ebp
  0x000000010e4199e2: lea    (%r12,%rbp,8),%r11  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199e6: lea    0x10(%r11,%rbx,1),%rsi  ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199eb: vzeroupper 
  0x000000010e4199ee: movabs $0x10e3c0cc0,%r10
  0x000000010e4199f8: callq  *%r10              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e4199fb: mov    0x48(%rsp),%r10
  0x000000010e419a00: mov    0x50(%rsp),%r11d
  0x000000010e419a05: add    %r11d,0xc(%r10)
  0x000000010e419a09: mov    0x14(%rsp),%r10d
  0x000000010e419a0e: add    $0x2,%r10d         ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@11 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a12: mov    0x14(%rsp),%ebp
  0x000000010e419a16: cmp    $0x14,%ebp
  0x000000010e419a19: jge    0x000000010e41a7ae
  0x000000010e419a1f: cmp    $0x14,%r10d
  0x000000010e419a23: jl     0x000000010e41a6da  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a29: mov    0x38(%rsp),%rsi
  0x000000010e419a2e: movabs $0x70fd448d0,%rdx  ;   {oop("invalid zip code: {}"{0x000000070fd448d0})}
  0x000000010e419a38: mov    %r10d,%ecx
  0x000000010e419a3b: mov    $0x14,%r8d
  0x000000010e419a41: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e419a4b: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419a55: mov    %r10,0x30(%rsp)
  0x000000010e419a5a: xchg   %ax,%ax
  0x000000010e419a5c: vzeroupper 
  0x000000010e419a5f: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[48] [32]=Derived_oop_rbp [40]=Oop [48]=Oop }
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@142 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {optimized virtual_call}
  0x000000010e419a64: movsbl 0x10(%rax),%ebp    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a96e
  0x000000010e419a68: test   %ebp,%ebp
  0x000000010e419a6a: jne    0x000000010e41a6fa  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a70: mov    0x14(%rax),%r11d   ;*synchronization entry
                                                ; - java.lang.CharacterDataLatin1::isDigit@-1 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a74: mov    0xc(%rax),%ebx     ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a77: test   %ebx,%ebx
  0x000000010e419a79: jl     0x000000010e41a7ce  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a7f: cmp    $0x100000,%ebx
  0x000000010e419a85: ja     0x000000010e41a5d2  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a8b: movslq %ebx,%rcx          ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a8e: mov    0xc(%r12,%r11,8),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ; implicit exception: dispatches to 0x000000010e41a97e
  0x000000010e419a93: mov    %ebx,%r9d          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@4 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419a96: cmp    %ebx,%r8d
  0x000000010e419a99: mov    %ebx,%r10d
  0x000000010e419a9c: cmovl  %r8d,%r10d         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419aa0: cmp    %r10d,%r8d
  0x000000010e419aa3: jb     0x000000010e41a65e
  0x000000010e419aa9: cmp    %r10d,%ebx
  0x000000010e419aac: jb     0x000000010e41a65e  ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ab2: add    $0x17,%rcx         ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ab6: mov    %rcx,%r8
  0x000000010e419ab9: and    $0xfffffffffffffff8,%r8  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419abd: cmp    $0x100000,%r9d
  0x000000010e419ac4: ja     0x000000010e41a174  ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419aca: mov    %r8,0x38(%rsp)
  0x000000010e419acf: mov    %rcx,0x30(%rsp)
  0x000000010e419ad4: mov    %r9d,0x14(%rsp)    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ad9: mov    0x118(%r15),%rax   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@0 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ae0: mov    %rax,%r8
  0x000000010e419ae3: mov    0x38(%rsp),%r9
  0x000000010e419ae8: add    %r9,%r8
  0x000000010e419aeb: cmp    0x128(%r15),%r8
  0x000000010e419af2: jae    0x000000010e41a183  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419af8: mov    %r8,0x118(%r15)    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419aff: prefetchnta 0xc0(%r8)
  0x000000010e419b07: movq   $0x1,(%rax)
  0x000000010e419b0e: prefetchnta 0x100(%r8)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b16: movl   $0x820,0x8(%rax)   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata({type array byte})}
  0x000000010e419b1d: mov    0x14(%rsp),%r9d
  0x000000010e419b22: mov    %r9d,0xc(%rax)     ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@6 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b26: prefetchnta 0x140(%r8)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b2e: prefetchnta 0x180(%r8)    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b36: mov    0x30(%rsp),%r9
  0x000000010e419b3b: shr    $0x3,%r9           ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b3f: mov    %rax,%rsi
  0x000000010e419b42: add    $0x10,%rsi         ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b46: test   %r10d,%r10d
  0x000000010e419b49: je     0x000000010e41a5da  ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b4f: lea    (%r12,%r11,8),%r8  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b53: lea    0x10(%r12,%r11,8),%r11  ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@96 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b58: cmp    0x14(%rsp),%r10d
  0x000000010e419b5d: jl     0x000000010e41a062  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b63: mov    0x38(%rsp),%rdx
  0x000000010e419b68: add    $0xfffffffffffffff0,%rdx
  0x000000010e419b6c: shr    $0x3,%rdx
  0x000000010e419b70: mov    %r11,%rdi
  0x000000010e419b73: vzeroupper 
  0x000000010e419b76: movabs $0x10e3c1080,%r10
  0x000000010e419b80: callq  *%r10              ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b83: movabs $0x70fd43b00,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fd43b00} = 'Logger')}
  0x000000010e419b8d: incl   0x70(%r10)         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419b91: xor    %r11d,%r11d
  0x000000010e419b94: mov    0x28(%rsp),%r13
  0x000000010e419b99: jmp    0x000000010e419ba6
  0x000000010e419b9b: nopl   0x0(%rax,%rax,1)
  0x000000010e419ba0: mov    $0x1,%r11d         ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ba6: mov    0x40(%rsp),%r10d
  0x000000010e419bab: inc    %r10d
  0x000000010e419bae: test   %r11d,%r11d
  0x000000010e419bb1: mov    0x40(%rsp),%r8d
  0x000000010e419bb6: cmovne %r10d,%r8d         ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419bba: mov    0x108(%r15),%r11
  0x000000010e419bc1: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419bcb: movabs $0x70fd44928,%r9   ; ImmutableOopMap{r10=Oop r9=Oop r13=Oop [0]=Oop [24]=Derived_oop_r10 [32]=Derived_oop_r9 }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)
                                                ;   {oop([B{0x000000070fd44928})}
  0x000000010e419bd5: test   %eax,(%r11)        ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {poll}
  0x000000010e419bd8: mov    %r8d,0x40(%rsp)
  0x000000010e419bdd: mov    (%rsp),%r9
  0x000000010e419be1: mov    0x8(%rsp),%rbx
  0x000000010e419be6: mov    0x10(%rsp),%edx
  0x000000010e419bea: mov    0x18(%rsp),%rcx
  0x000000010e419bef: mov    0x20(%rsp),%rdi    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e419bf4: mov    0x18(%r13),%r10d   ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419bf8: mov    0x10(%r12,%r10,8),%r11d  ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ; implicit exception: dispatches to 0x000000010e41a8d2
  0x000000010e419bfd: mov    0xc(%r13),%r8d     ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419c01: cmp    %r11d,%r8d
  0x000000010e419c04: je     0x000000010e419db2  ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)

  0x000000010e419c0a: mov    %rdi,0x20(%rsp)
  0x000000010e419c0f: mov    %rcx,0x18(%rsp)
  0x000000010e419c14: mov    %edx,0x10(%rsp)
  0x000000010e419c18: mov    %rbx,0x8(%rsp)
  0x000000010e419c1d: mov    %r9,(%rsp)
  0x000000010e419c21: mov    0xc(%r12,%r10,8),%ecx
  0x000000010e419c26: mov    0x14(%r13),%ebp    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419c2a: cmp    %ebp,%ecx
  0x000000010e419c2c: jne    0x000000010e41a3ea  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c32: cmp    %r11d,%r8d
  0x000000010e419c35: jge    0x000000010e41a402  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c3b: mov    0x14(%r12,%r10,8),%r11d  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@50 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c40: mov    0xc(%r12,%r11,8),%ebp  ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@29 (line 1000)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ; implicit exception: dispatches to 0x000000010e41a8e2
  0x000000010e419c45: cmp    %ebp,%r8d
  0x000000010e419c48: jge    0x000000010e41a426  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c4e: mov    %r8d,0x10(%r13)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c52: mov    %r8d,%r9d
  0x000000010e419c55: inc    %r9d
  0x000000010e419c58: mov    %r9d,0xc(%r13)     ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c5c: cmp    %ebp,%r8d
  0x000000010e419c5f: jae    0x000000010e41a268  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c65: lea    (%r12,%r11,8),%r10
  0x000000010e419c69: mov    0x10(%r10,%r8,4),%ebp  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@3 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c6e: test   %ebp,%ebp
  0x000000010e419c70: je     0x000000010e41966d  ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c76: mov    0x8(%r12,%rbp,8),%r10d
  0x000000010e419c7b: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000010e419c82: jne    0x000000010e41a8be
  0x000000010e419c88: lea    (%r12,%rbp,8),%r10  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@3 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c8c: mov    0xc(%r10),%r11d    ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@90 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c90: mov    0xc(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x000000010e41a8f2
  0x000000010e419c95: movsbl 0x14(%r10),%ecx    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419c9a: mov    %r8d,%r9d
  0x000000010e419c9d: sar    %cl,%r9d
  0x000000010e419ca0: cmp    $0x5,%r9d
  0x000000010e419ca4: jne    0x000000010e419670  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419caa: test   %ecx,%ecx
  0x000000010e419cac: jne    0x000000010e41a3aa
  0x000000010e419cb2: test   %r8d,%r8d
  0x000000010e419cb5: jbe    0x000000010e41a446  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cbb: movzbl 0x10(%r12,%r11,8),%ebp  ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419cc1: cmp    $0x30,%ebp
  0x000000010e419cc4: jl     0x000000010e41a3ce  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cca: cmp    $0x39,%ebp
  0x000000010e419ccd: jg     0x000000010e419670  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@0 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cd3: cmp    $0x1,%r8d
  0x000000010e419cd7: jle    0x000000010e41a4de  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@4 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cdd: cmp    $0x1,%r8d
  0x000000010e419ce1: jbe    0x000000010e41a31a  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ce7: movzbl 0x11(%r12,%r11,8),%ebp  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419ced: cmp    $0x30,%ebp
  0x000000010e419cf0: jl     0x000000010e41a46e  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cf6: cmp    $0x39,%ebp
  0x000000010e419cf9: jg     0x000000010e41a28a  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419cff: cmp    $0x2,%r8d
  0x000000010e419d03: jle    0x000000010e41a506  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d09: cmp    $0x2,%r8d
  0x000000010e419d0d: jbe    0x000000010e41a33e  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d13: movzbl 0x12(%r12,%r11,8),%ebp  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e419d19: cmp    $0x30,%ebp
  0x000000010e419d1c: jl     0x000000010e41a48a  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d22: cmp    $0x39,%ebp
  0x000000010e419d25: jg     0x000000010e41a2ba  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d2b: cmp    $0x3,%r8d
  0x000000010e419d2f: jle    0x000000010e41a52e  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d35: cmp    $0x3,%r8d
  0x000000010e419d39: jbe    0x000000010e41a362  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d3f: movzbl 0x13(%r12,%r11,8),%ebp  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e419d45: cmp    $0x30,%ebp
  0x000000010e419d48: jl     0x000000010e41a4a6  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d4e: cmp    $0x39,%ebp
  0x000000010e419d51: jg     0x000000010e41a2ea  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d57: cmp    $0x4,%r8d
  0x000000010e419d5b: jle    0x000000010e41a556  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d61: cmp    $0x4,%r8d
  0x000000010e419d65: jbe    0x000000010e41a386  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d6b: movzbl 0x14(%r12,%r11,8),%ebp  ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d71: cmp    $0x30,%ebp
  0x000000010e419d74: jl     0x000000010e41a4c2  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d7a: cmp    $0x39,%ebp
  0x000000010e419d7d: jle    0x000000010e419ba0  ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d83: mov    %edx,%r8d
  0x000000010e419d86: xor    %r11d,%r11d
  0x000000010e419d89: cmp    $0x39,%ebp
  0x000000010e419d8c: cmovg  %r11d,%r8d         ;*invokeinterface toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@8 (line 2143)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419d90: mov    $0xffffff4d,%esi   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e419d95: mov    (%rsp),%rbp
  0x000000010e419d99: mov    %r13,0x10(%rsp)
  0x000000010e419d9e: mov    %r10,0x18(%rsp)
  0x000000010e419da3: mov    %r8d,0xc(%rsp)
  0x000000010e419da8: vzeroupper 
  0x000000010e419dab: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@124 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e419db0: ud2    
  0x000000010e419db2: mov    0x40(%rsp),%eax
  0x000000010e419db6: vzeroupper 
  0x000000010e419db9: add    $0xa0,%rsp
  0x000000010e419dc0: pop    %rbp
  0x000000010e419dc1: mov    0x108(%r15),%r10
  0x000000010e419dc8: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e419dcb: retq                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e419dcc: mov    %edx,%eax
  0x000000010e419dce: jmp    0x000000010e419de4
  0x000000010e419dd0: shl    %eax               ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419dd2: mov    %eax,%r11d
  0x000000010e419dd5: sub    %edx,%r11d
  0x000000010e419dd8: add    $0x2,%r11d
  0x000000010e419ddc: test   %r11d,%r11d
  0x000000010e419ddf: jl     0x000000010e419dcc  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419de1: add    $0x2,%eax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419de4: test   %eax,%eax
  0x000000010e419de6: jle    0x000000010e419e00  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419de8: mov    $0x7ffffff7,%r10d
  0x000000010e419dee: sar    %cl,%r10d
  0x000000010e419df1: sub    %eax,%r10d
  0x000000010e419df4: test   %r10d,%r10d
  0x000000010e419df7: jl     0x000000010e419e00  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419df9: mov    0x48(%rsp),%r10
  0x000000010e419dfe: jmp    0x000000010e419e32  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e00: mov    0x48(%rsp),%rsi
  0x000000010e419e05: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e419e0f: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e419e19: mov    %r10,0x78(%rsp)
  0x000000010e419e1e: xchg   %ax,%ax
  0x000000010e419e20: vzeroupper 
  0x000000010e419e23: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[120] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [68]=NarrowOop [72]=Oop [120]=Oop }
                                                ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {optimized virtual_call}
  0x000000010e419e28: mov    0x48(%rsp),%r10
  0x000000010e419e2d: movsbl 0x10(%r10),%ecx    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e32: shl    %cl,%eax           ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e34: cmp    $0x100000,%eax
  0x000000010e419e3a: ja     0x000000010e41a822  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e40: mov    %eax,0x54(%rsp)
  0x000000010e419e44: mov    %r10,0x48(%rsp)
  0x000000010e419e49: movslq %eax,%r10          ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e4c: mov    0x54(%rsp),%r11d   ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e51: mov    0x84(%rsp),%ebp
  0x000000010e419e58: cmp    %r11d,%ebp
  0x000000010e419e5b: mov    %ebp,%r8d
  0x000000010e419e5e: mov    %r11d,%ebp
  0x000000010e419e61: cmovl  %r8d,%ebp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e65: mov    %ebp,0x80(%rsp)
  0x000000010e419e6c: cmp    0x80(%rsp),%r8d
  0x000000010e419e74: jb     0x000000010e41a862
  0x000000010e419e7a: cmp    0x80(%rsp),%r11d
  0x000000010e419e82: jb     0x000000010e41a862  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e88: add    $0x17,%r10         ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e8c: mov    %r10,0x58(%rsp)
  0x000000010e419e91: and    $0xfffffffffffffff8,%r10  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419e95: mov    %r10,0x60(%rsp)
  0x000000010e419e9a: mov    0x54(%rsp),%ebp
  0x000000010e419e9e: cmp    $0x100000,%ebp
  0x000000010e419ea4: ja     0x000000010e41a57e
  0x000000010e419eaa: mov    0x118(%r15),%r13
  0x000000010e419eb1: mov    %r13,%r10
  0x000000010e419eb4: mov    0x60(%rsp),%r11
  0x000000010e419eb9: add    %r11,%r10
  0x000000010e419ebc: cmp    0x128(%r15),%r10
  0x000000010e419ec3: jae    0x000000010e41a57e  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ec9: mov    %r10,0x118(%r15)
  0x000000010e419ed0: prefetchnta 0xc0(%r10)
  0x000000010e419ed8: movq   $0x1,0x0(%r13)
  0x000000010e419ee0: prefetchnta 0x100(%r10)   ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ee8: movl   $0x820,0x8(%r13)   ;   {metadata({type array byte})}
  0x000000010e419ef0: mov    %ebp,0xc(%r13)     ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ef4: prefetchnta 0x140(%r10)   ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419efc: prefetchnta 0x180(%r10)   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f04: mov    0x58(%rsp),%r10
  0x000000010e419f09: shr    $0x3,%r10          ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f0d: mov    %r13,%rsi
  0x000000010e419f10: add    $0x10,%rsi         ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f14: mov    %r13,%rbx
  0x000000010e419f17: shr    $0x3,%rbx          ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f1b: mov    0x80(%rsp),%ebp
  0x000000010e419f22: test   %ebp,%ebp
  0x000000010e419f24: je     0x000000010e41a833  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f2a: mov    0x44(%rsp),%ebp
  0x000000010e419f2e: lea    (%r12,%rbp,8),%r11  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f32: lea    0x10(%r12,%rbp,8),%r11
  0x000000010e419f37: mov    0x80(%rsp),%ebp
  0x000000010e419f3e: cmp    0x54(%rsp),%ebp
  0x000000010e419f42: jl     0x000000010e41a1d3  ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f48: mov    0x60(%rsp),%rdx
  0x000000010e419f4d: add    $0xfffffffffffffff0,%rdx
  0x000000010e419f51: shr    $0x3,%rdx
  0x000000010e419f55: mov    %r11,%rdi
  0x000000010e419f58: vzeroupper 
  0x000000010e419f5b: movabs $0x10e3c1080,%r10
  0x000000010e419f65: callq  *%r10              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f68: cmpb   $0x0,0x30(%r15)
  0x000000010e419f6d: jne    0x000000010e41a22c
  0x000000010e419f73: mov    0x48(%rsp),%r10
  0x000000010e419f78: mov    %ebx,0x14(%r10)    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f7c: mov    %r13,%r10
  0x000000010e419f7f: mov    0x48(%rsp),%r11    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f84: xor    %r11,%r10
  0x000000010e419f87: shr    $0x14,%r10
  0x000000010e419f8b: test   %r10,%r10
  0x000000010e419f8e: je     0x000000010e419fad  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419f90: shr    $0x9,%r11
  0x000000010e419f94: movabs $0x10e38b000,%rdi
  0x000000010e419f9e: add    %r11,%rdi          ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fa1: cmpb   $0x20,(%rdi)
  0x000000010e419fa4: jne    0x000000010e419fb4  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fa6: mov    0x48(%rsp),%r10
  0x000000010e419fab: jmp    0x000000010e419ffd
  0x000000010e419fad: mov    0x48(%rsp),%r10
  0x000000010e419fb2: jmp    0x000000010e419ffd
  0x000000010e419fb4: mov    0x80(%r15),%r10    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fbb: mov    0x70(%r15),%r11    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fbf: lock addl $0x0,-0x40(%rsp)  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fc5: cmpb   $0x0,(%rdi)
  0x000000010e419fc8: je     0x000000010e419ff4  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@3 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fca: movb   $0x0,(%rdi)        ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fcd: test   %r11,%r11
  0x000000010e419fd0: je     0x000000010e419fe1  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fd2: mov    %rdi,-0x8(%r10,%r11,1)  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fd7: add    $0xfffffffffffffff8,%r11  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fdb: mov    %r11,0x70(%r15)    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fdf: jmp    0x000000010e419ff4  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419fe1: mov    %r15,%rsi
  0x000000010e419fe4: vzeroupper 
  0x000000010e419fe7: movabs $0x104b038ce,%r10
  0x000000010e419ff1: callq  *%r10              ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ff4: mov    0x48(%rsp),%r10
  0x000000010e419ff9: mov    0x14(%r10),%ebx    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@40 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e419ffd: mov    0xc(%r10),%r8d     ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a001: movsbl 0x10(%r10),%ecx    ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a006: mov    %r10,0x48(%rsp)
  0x000000010e41a00b: mov    0x30(%rsp),%r10
  0x000000010e41a010: mov    0xc(%r10),%r9d     ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a014: movsbl 0x14(%r10),%edi    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a019: mov    %ebx,0x44(%rsp)
  0x000000010e41a01d: jmpq   0x000000010e41998e
  0x000000010e41a022: push   %rax
  0x000000010e41a023: mov    %rax,%rax
  0x000000010e41a026: mov    0x28(%rsi),%rdi
  0x000000010e41a02a: mov    (%rdi),%ecx
  0x000000010e41a02c: add    $0x8,%rdi
  0x000000010e41a030: test   %rax,%rax
  0x000000010e41a033: repnz scas %es:(%rdi),%rax
  0x000000010e41a036: pop    %rax
  0x000000010e41a037: jne    0x000000010e41a041
  0x000000010e41a03d: mov    %rax,0x20(%rsi)
  0x000000010e41a041: je     0x000000010e419602  ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::checkForComodification@-1 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a047: mov    $0xffffff95,%esi   ;*invokevirtual checkForComodification {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a04c: mov    %rbx,(%rsp)
  0x000000010e41a050: mov    %r13,0x8(%rsp)
  0x000000010e41a055: data16 xchg %ax,%ax
  0x000000010e41a058: vzeroupper 
  0x000000010e41a05b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a060: ud2    
  0x000000010e41a062: movslq %r10d,%rdx
  0x000000010e41a065: mov    %rdx,%r10
  0x000000010e41a068: add    $0x10,%r10         ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@96 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a06c: mov    %r10,%r8
  0x000000010e41a06f: and    $0xfffffffffffffff8,%r8
  0x000000010e41a073: mov    %rax,%rdi
  0x000000010e41a076: add    %r8,%rdi
  0x000000010e41a079: shr    $0x3,%r10
  0x000000010e41a07d: sub    %r10,%r9
  0x000000010e41a080: mov    %r9,%rcx
  0x000000010e41a083: xor    %rax,%rax
  0x000000010e41a086: cmp    $0x8,%rcx
  0x000000010e41a08a: jg     0x000000010e41a09c
  0x000000010e41a08c: dec    %rcx
  0x000000010e41a08f: js     0x000000010e41a0a3
  0x000000010e41a091: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41a095: dec    %rcx
  0x000000010e41a098: jge    0x000000010e41a091
  0x000000010e41a09a: jmp    0x000000010e41a0a3
  0x000000010e41a09c: shl    $0x3,%rcx
  0x000000010e41a0a0: rep rex.W stos %al,%es:(%rdi)
  0x000000010e41a0a3: mov    %r11,%rdi
  0x000000010e41a0a6: vzeroupper 
  0x000000010e41a0a9: movabs $0x10e3c0c00,%r10
  0x000000010e41a0b3: callq  *%r10              ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a0b6: jmpq   0x000000010e419b83
  0x000000010e41a0bb: mov    %r11d,0x38(%rsp)
  0x000000010e41a0c0: mov    %ebx,0x14(%rsp)
  0x000000010e41a0c4: mov    %r10,0x30(%rsp)
  0x000000010e41a0c9: mov    %r8,0x28(%rsp)
  0x000000010e41a0ce: mov    %r13,(%rsp)        ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a0d2: movabs $0x80000ed68,%rsi  ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata('java/lang/StringBuilder')}
  0x000000010e41a0dc: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41a0e6: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e41a0f0: mov    %r10,0x48(%rsp)
  0x000000010e41a0f5: data16 xchg %ax,%ax
  0x000000010e41a0f8: vzeroupper 
  0x000000010e41a0fb: callq  0x000000010e3e8380  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[72] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [72]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@75 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e41a100: mov    (%rsp),%r13
  0x000000010e41a104: mov    0x28(%rsp),%r8
  0x000000010e41a109: mov    0x8(%rsp),%r9
  0x000000010e41a10e: mov    0x30(%rsp),%r10
  0x000000010e41a113: mov    0x14(%rsp),%ebx
  0x000000010e41a117: mov    0x38(%rsp),%r11d
  0x000000010e41a11c: jmpq   0x000000010e41979b
  0x000000010e41a121: mov    %r13,0x28(%rsp)
  0x000000010e41a126: mov    %r8,(%rsp)
  0x000000010e41a12a: mov    %r9,0x8(%rsp)
  0x000000010e41a12f: mov    %r10,0x30(%rsp)
  0x000000010e41a134: mov    %ebx,0x14(%rsp)
  0x000000010e41a138: mov    %rax,0x38(%rsp)    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a13d: movabs $0x800000820,%rsi  ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata({type array byte})}
  0x000000010e41a147: mov    %r11d,%edx
  0x000000010e41a14a: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41a154: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e41a15e: mov    %r10,0x58(%rsp)
  0x000000010e41a163: nop
  0x000000010e41a164: vzeroupper 
  0x000000010e41a167: callq  0x000000010e3e9a80  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[88] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [88]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.AbstractStringBuilder::<init>@12 (line 86)
                                                ; - java.lang.StringBuilder::<init>@2 (line 112)
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call _new_array_Java}
  0x000000010e41a16c: mov    %rax,%r9
  0x000000010e41a16f: jmpq   0x000000010e419868
  0x000000010e41a174: mov    %r9d,0x14(%rsp)
  0x000000010e41a179: mov    %rcx,0x30(%rsp)
  0x000000010e41a17e: mov    %r8,0x38(%rsp)     ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a183: mov    %r10d,0x48(%rsp)
  0x000000010e41a188: mov    %r11d,0x44(%rsp)   ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a18d: movabs $0x800000820,%rsi  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata({type array byte})}
  0x000000010e41a197: mov    0x14(%rsp),%edx
  0x000000010e41a19b: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41a1a5: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e41a1af: mov    %r10,0x50(%rsp)
  0x000000010e41a1b4: vzeroupper 
  0x000000010e41a1b7: callq  0x000000010e3e9980  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[80] [32]=Derived_oop_rbp [40]=Oop [68]=NarrowOop [80]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e41a1bc: mov    0x44(%rsp),%r11d
  0x000000010e41a1c1: mov    0x48(%rsp),%r10d
  0x000000010e41a1c6: jmpq   0x000000010e419b36
  0x000000010e41a1cb: xor    %r9d,%r9d
  0x000000010e41a1ce: jmpq   0x000000010e4195da
  0x000000010e41a1d3: movslq %ebp,%rdx
  0x000000010e41a1d6: mov    %rdx,%r8
  0x000000010e41a1d9: add    $0x10,%r8          ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a1dd: mov    %r8,%r9
  0x000000010e41a1e0: and    $0xfffffffffffffff8,%r9
  0x000000010e41a1e4: mov    %r13,%rdi
  0x000000010e41a1e7: add    %r9,%rdi
  0x000000010e41a1ea: shr    $0x3,%r8
  0x000000010e41a1ee: sub    %r8,%r10
  0x000000010e41a1f1: mov    %r10,%rcx
  0x000000010e41a1f4: xor    %rax,%rax
  0x000000010e41a1f7: cmp    $0x8,%rcx
  0x000000010e41a1fb: jg     0x000000010e41a20d
  0x000000010e41a1fd: dec    %rcx
  0x000000010e41a200: js     0x000000010e41a214
  0x000000010e41a202: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41a206: dec    %rcx
  0x000000010e41a209: jge    0x000000010e41a202
  0x000000010e41a20b: jmp    0x000000010e41a214
  0x000000010e41a20d: shl    $0x3,%rcx
  0x000000010e41a211: rep rex.W stos %al,%es:(%rdi)  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@64 (line 2153)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a214: mov    %r11,%rdi
  0x000000010e41a217: vzeroupper 
  0x000000010e41a21a: movabs $0x10e3c0c00,%r10
  0x000000010e41a224: callq  *%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@75 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a227: jmpq   0x000000010e419f68
  0x000000010e41a22c: mov    0x48(%rsp),%r10
  0x000000010e41a231: mov    0x14(%r10),%r11d   ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a235: test   %r11d,%r11d
  0x000000010e41a238: je     0x000000010e419f73
  0x000000010e41a23e: mov    0x38(%r15),%r10
  0x000000010e41a242: mov    %r11,%rdi
  0x000000010e41a245: shl    $0x3,%rdi
  0x000000010e41a249: test   %r10,%r10
  0x000000010e41a24c: je     0x000000010e41a8a6  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a252: mov    0x48(%r15),%r11
  0x000000010e41a256: mov    %rdi,-0x8(%r11,%r10,1)  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a25b: add    $0xfffffffffffffff8,%r10  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a25f: mov    %r10,0x38(%r15)    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a263: jmpq   0x000000010e419f73  ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@29 (line 1000)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a268: mov    $0xffffffe4,%esi   ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a26d: mov    (%rsp),%rbp
  0x000000010e41a271: mov    %r13,0x8(%rsp)
  0x000000010e41a276: mov    %r11d,0x4(%rsp)
  0x000000010e41a27b: mov    %r8d,0x10(%rsp)
  0x000000010e41a280: vzeroupper 
  0x000000010e41a283: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a288: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a28a: mov    %edx,%r9d
  0x000000010e41a28d: xor    %r11d,%r11d
  0x000000010e41a290: cmp    $0x39,%ebp
  0x000000010e41a293: cmovg  %r11d,%r9d         ;*synchronization entry
                                                ; - java.lang.String::toString@-1 (line 2807)
                                                ; - java.lang.String::replace@1 (line 2142)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a297: mov    $0xffffff4d,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a29c: mov    (%rsp),%rbp
  0x000000010e41a2a0: mov    %r13,0x10(%rsp)
  0x000000010e41a2a5: mov    %r10,0x18(%rsp)
  0x000000010e41a2aa: mov    %r9d,0xc(%rsp)
  0x000000010e41a2af: nop
  0x000000010e41a2b0: vzeroupper 
  0x000000010e41a2b3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@61 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a2b8: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e41a2ba: mov    %edx,%r8d
  0x000000010e41a2bd: xor    %r11d,%r11d
  0x000000010e41a2c0: cmp    $0x39,%ebp
  0x000000010e41a2c3: cmovg  %r11d,%r8d         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::toString@0 (line 2807)
                                                ; - java.lang.String::replace@1 (line 2142)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a2c7: mov    $0xffffff4d,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a2cc: mov    (%rsp),%rbp
  0x000000010e41a2d0: mov    %r13,0x10(%rsp)
  0x000000010e41a2d5: mov    %r10,0x18(%rsp)
  0x000000010e41a2da: mov    %r8d,0xc(%rsp)
  0x000000010e41a2df: nop
  0x000000010e41a2e0: vzeroupper 
  0x000000010e41a2e3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a2e8: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e41a2ea: mov    %edx,%r9d
  0x000000010e41a2ed: xor    %r11d,%r11d
  0x000000010e41a2f0: cmp    $0x39,%ebp
  0x000000010e41a2f3: cmovg  %r11d,%r9d         ;*invokeinterface toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@1 (line 2142)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a2f7: mov    $0xffffff4d,%esi
  0x000000010e41a2fc: mov    (%rsp),%rbp
  0x000000010e41a300: mov    %r13,0x10(%rsp)
  0x000000010e41a305: mov    %r10,0x18(%rsp)
  0x000000010e41a30a: mov    %r9d,0xc(%rsp)
  0x000000010e41a30f: nop
  0x000000010e41a310: vzeroupper 
  0x000000010e41a313: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a318: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a31a: mov    $0xffffffe4,%esi
  0x000000010e41a31f: mov    (%rsp),%rbp
  0x000000010e41a323: mov    %r13,0x10(%rsp)
  0x000000010e41a328: mov    %r10,0x18(%rsp)
  0x000000010e41a32d: mov    %r11d,0xc(%rsp)
  0x000000010e41a332: xchg   %ax,%ax
  0x000000010e41a334: vzeroupper 
  0x000000010e41a337: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a33c: ud2                       ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a33e: mov    $0xffffffe4,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a343: mov    (%rsp),%rbp
  0x000000010e41a347: mov    %r13,0x10(%rsp)
  0x000000010e41a34c: mov    %r10,0x18(%rsp)
  0x000000010e41a351: mov    %r11d,0xc(%rsp)
  0x000000010e41a356: xchg   %ax,%ax
  0x000000010e41a358: vzeroupper 
  0x000000010e41a35b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a360: ud2                       ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a362: mov    $0xffffffe4,%esi
  0x000000010e41a367: mov    (%rsp),%rbp
  0x000000010e41a36b: mov    %r13,0x10(%rsp)
  0x000000010e41a370: mov    %r10,0x18(%rsp)
  0x000000010e41a375: mov    %r11d,0xc(%rsp)
  0x000000010e41a37a: xchg   %ax,%ax
  0x000000010e41a37c: vzeroupper 
  0x000000010e41a37f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a384: ud2                       ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a386: mov    $0xffffffe4,%esi   ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@32 (line 1000)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a38b: mov    (%rsp),%rbp
  0x000000010e41a38f: mov    %r13,0x10(%rsp)
  0x000000010e41a394: mov    %r10,0x18(%rsp)
  0x000000010e41a399: mov    %r11d,0xc(%rsp)
  0x000000010e41a39e: xchg   %ax,%ax
  0x000000010e41a3a0: vzeroupper 
  0x000000010e41a3a3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a3a8: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a3aa: mov    $0xffffff4d,%esi
  0x000000010e41a3af: mov    (%rsp),%rbp
  0x000000010e41a3b3: mov    %r13,0x10(%rsp)
  0x000000010e41a3b8: mov    %r10,0x20(%rsp)
  0x000000010e41a3bd: mov    %ecx,0xc(%rsp)
  0x000000010e41a3c1: data16 xchg %ax,%ax
  0x000000010e41a3c4: vzeroupper 
  0x000000010e41a3c7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop [32]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a3cc: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a3ce: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a3d3: mov    %r13,0x10(%rsp)
  0x000000010e41a3d8: mov    %r10,0x20(%rsp)
  0x000000010e41a3dd: data16 xchg %ax,%ax
  0x000000010e41a3e0: vzeroupper 
  0x000000010e41a3e3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a3e8: ud2                       ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@14 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a3ea: mov    $0xffffff4d,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a3ef: mov    %r13,0x18(%rsp)
  0x000000010e41a3f4: mov    %ecx,0xc(%rsp)
  0x000000010e41a3f8: vzeroupper 
  0x000000010e41a3fb: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [24]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a400: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a402: mov    $0xffffff4d,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a407: mov    %r9,%rbp
  0x000000010e41a40a: mov    %r13,0x10(%rsp)
  0x000000010e41a40f: mov    %r8d,0x18(%rsp)
  0x000000010e41a414: mov    %r11d,0x1c(%rsp)
  0x000000010e41a419: data16 xchg %ax,%ax
  0x000000010e41a41c: vzeroupper 
  0x000000010e41a41f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [16]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a424: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a426: mov    $0xffffff4d,%esi   ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a42b: mov    %r13,0x18(%rsp)
  0x000000010e41a430: mov    %r11d,0x20(%rsp)
  0x000000010e41a435: mov    %r8d,0x24(%rsp)
  0x000000010e41a43a: xchg   %ax,%ax
  0x000000010e41a43c: vzeroupper 
  0x000000010e41a43f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@39 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a444: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a446: mov    $0xffffff4d,%esi
  0x000000010e41a44b: mov    (%rsp),%rbp
  0x000000010e41a44f: mov    %r13,0x10(%rsp)
  0x000000010e41a454: mov    %r10,0x18(%rsp)
  0x000000010e41a459: mov    %r11d,0xc(%rsp)
  0x000000010e41a45e: mov    %r8d,0x20(%rsp)
  0x000000010e41a463: nop
  0x000000010e41a464: vzeroupper 
  0x000000010e41a467: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a46c: ud2                       ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a46e: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a473: mov    %r13,0x10(%rsp)
  0x000000010e41a478: mov    %r10,0x20(%rsp)
  0x000000010e41a47d: data16 xchg %ax,%ax
  0x000000010e41a480: vzeroupper 
  0x000000010e41a483: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a488: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a48a: mov    $0xffffff4d,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a48f: mov    %r13,0x10(%rsp)
  0x000000010e41a494: mov    %r10,0x20(%rsp)
  0x000000010e41a499: data16 xchg %ax,%ax
  0x000000010e41a49c: vzeroupper 
  0x000000010e41a49f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a4a4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e41a4a6: mov    $0xffffff4d,%esi
  0x000000010e41a4ab: mov    %r13,0x10(%rsp)
  0x000000010e41a4b0: mov    %r10,0x20(%rsp)
  0x000000010e41a4b5: data16 xchg %ax,%ax
  0x000000010e41a4b8: vzeroupper 
  0x000000010e41a4bb: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a4c0: ud2                       ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a4c2: mov    $0xffffff4d,%esi   ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a4c7: mov    %r13,0x10(%rsp)
  0x000000010e41a4cc: mov    %r10,0x20(%rsp)
  0x000000010e41a4d1: data16 xchg %ax,%ax
  0x000000010e41a4d4: vzeroupper 
  0x000000010e41a4d7: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a4dc: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a4de: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a4e3: mov    (%rsp),%rbp
  0x000000010e41a4e7: mov    %r13,0x10(%rsp)
  0x000000010e41a4ec: mov    %r10,0x18(%rsp)
  0x000000010e41a4f1: mov    %r11d,0xc(%rsp)
  0x000000010e41a4f6: mov    %r8d,0x20(%rsp)
  0x000000010e41a4fb: nop
  0x000000010e41a4fc: vzeroupper 
  0x000000010e41a4ff: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a504: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@64 (line 1004)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a506: mov    $0xffffff4d,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a50b: mov    (%rsp),%rbp
  0x000000010e41a50f: mov    %r13,0x10(%rsp)
  0x000000010e41a514: mov    %r10,0x18(%rsp)
  0x000000010e41a519: mov    %r11d,0xc(%rsp)
  0x000000010e41a51e: mov    %r8d,0x20(%rsp)
  0x000000010e41a523: nop
  0x000000010e41a524: vzeroupper 
  0x000000010e41a527: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a52c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)

  0x000000010e41a52e: mov    $0xffffff4d,%esi
  0x000000010e41a533: mov    (%rsp),%rbp
  0x000000010e41a537: mov    %r13,0x10(%rsp)
  0x000000010e41a53c: mov    %r10,0x18(%rsp)
  0x000000010e41a541: mov    %r11d,0xc(%rsp)
  0x000000010e41a546: mov    %r8d,0x20(%rsp)
  0x000000010e41a54b: nop
  0x000000010e41a54c: vzeroupper 
  0x000000010e41a54f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a554: ud2    
  0x000000010e41a556: mov    $0xffffff4d,%esi
  0x000000010e41a55b: mov    (%rsp),%rbp
  0x000000010e41a55f: mov    %r13,0x10(%rsp)
  0x000000010e41a564: mov    %r10,0x18(%rsp)
  0x000000010e41a569: mov    %r11d,0xc(%rsp)
  0x000000010e41a56e: mov    %r8d,0x20(%rsp)
  0x000000010e41a573: nop
  0x000000010e41a574: vzeroupper 
  0x000000010e41a577: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a57c: ud2                       ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@119 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a57e: movabs $0x800000820,%rsi  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {metadata({type array byte})}
  0x000000010e41a588: mov    0x54(%rsp),%edx
  0x000000010e41a58c: movabs $0x70fd44928,%rbp  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41a596: movabs $0x70fd448e8,%r10  ;   {oop([B{0x000000070fd448e8})}
  0x000000010e41a5a0: mov    %r10,0x88(%rsp)
  0x000000010e41a5a8: vzeroupper 
  0x000000010e41a5ab: callq  0x000000010e3e9980  ; ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[136] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [68]=NarrowOop [72]=Oop [136]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e41a5b0: mov    %rax,%r13
  0x000000010e41a5b3: jmpq   0x000000010e419f04  ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a5b8: mov    $0xfffffff6,%esi   ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a5bd: mov    %r10,%rbp
  0x000000010e41a5c0: vzeroupper 
  0x000000010e41a5c3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a5c8: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a5ca: movslq %r11d,%rcx         ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a5cd: jmpq   0x000000010e4197b1
  0x000000010e41a5d2: movslq %ebx,%rcx          ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a5d5: jmpq   0x000000010e419a8e
  0x000000010e41a5da: mov    %r9,%r10
  0x000000010e41a5dd: add    $0xfffffffffffffffe,%r10
  0x000000010e41a5e1: mov    %r10,%rcx
  0x000000010e41a5e4: mov    %rsi,%rdi
  0x000000010e41a5e7: xor    %rax,%rax
  0x000000010e41a5ea: cmp    $0x8,%rcx
  0x000000010e41a5ee: jg     0x000000010e41a600
  0x000000010e41a5f0: dec    %rcx
  0x000000010e41a5f3: js     0x000000010e41a607
  0x000000010e41a5f5: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41a5f9: dec    %rcx
  0x000000010e41a5fc: jge    0x000000010e41a5f5
  0x000000010e41a5fe: jmp    0x000000010e41a607
  0x000000010e41a600: shl    $0x3,%rcx
  0x000000010e41a604: rep rex.W stos %al,%es:(%rdi)  ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a607: jmpq   0x000000010e419b83  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a60c: mov    $0xffffffcc,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a611: mov    (%rsp),%rbp
  0x000000010e41a615: mov    0x40(%rsp),%r11d
  0x000000010e41a61a: mov    %r11d,(%rsp)
  0x000000010e41a61e: mov    0x28(%rsp),%r11
  0x000000010e41a623: mov    %r11,0x8(%rsp)
  0x000000010e41a628: mov    0x30(%rsp),%r11
  0x000000010e41a62d: mov    %r11,0x18(%rsp)
  0x000000010e41a632: mov    0x14(%rsp),%r11d
  0x000000010e41a637: mov    %r11d,0x4(%rsp)
  0x000000010e41a63c: mov    0x38(%rsp),%r11
  0x000000010e41a641: mov    %r11,0x10(%rsp)
  0x000000010e41a646: mov    %r9d,0x34(%rsp)
  0x000000010e41a64b: mov    %ebx,0x3c(%rsp)
  0x000000010e41a64f: mov    %r10d,0x40(%rsp)
  0x000000010e41a654: vzeroupper 
  0x000000010e41a657: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=Oop [52]=NarrowOop [68]=NarrowOop [72]=Oop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a65c: ud2                       ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a65e: mov    $0xffffffcc,%esi   ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a663: mov    (%rsp),%rbp
  0x000000010e41a667: mov    %r9d,0x10(%rsp)
  0x000000010e41a66c: mov    %r11d,0x14(%rsp)
  0x000000010e41a671: data16 xchg %ax,%ax
  0x000000010e41a674: vzeroupper 
  0x000000010e41a677: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [20]=NarrowOop [40]=Oop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a67c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@19 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a67e: mov    $0xffffff4d,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a683: mov    (%rsp),%rbp
  0x000000010e41a687: mov    0x40(%rsp),%r11d
  0x000000010e41a68c: mov    %r11d,(%rsp)
  0x000000010e41a690: mov    0x28(%rsp),%r10
  0x000000010e41a695: mov    %r10,0x8(%rsp)
  0x000000010e41a69a: mov    0x14(%rsp),%r10d
  0x000000010e41a69f: mov    %r10d,0x4(%rsp)
  0x000000010e41a6a4: mov    0x38(%rsp),%r10
  0x000000010e41a6a9: mov    %r10,0x10(%rsp)
  0x000000010e41a6ae: mov    0x48(%rsp),%r10
  0x000000010e41a6b3: mov    %r10,0x28(%rsp)
  0x000000010e41a6b8: mov    0x44(%rsp),%r10d
  0x000000010e41a6bd: mov    %r10d,0x3c(%rsp)
  0x000000010e41a6c2: mov    %r8d,0x40(%rsp)
  0x000000010e41a6c7: mov    %edi,0x48(%rsp)
  0x000000010e41a6cb: mov    %ecx,0x4c(%rsp)
  0x000000010e41a6cf: nop
  0x000000010e41a6d0: vzeroupper 
  0x000000010e41a6d3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop [60]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a6d8: ud2    
  0x000000010e41a6da: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a6df: mov    (%rsp),%rbp
  0x000000010e41a6e3: mov    %r10d,0x20(%rsp)
  0x000000010e41a6e8: mov    %r10d,0x24(%rsp)
  0x000000010e41a6ed: data16 xchg %ax,%ax
  0x000000010e41a6f0: vzeroupper 
  0x000000010e41a6f3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [40]=Oop [48]=Oop [56]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@21 (line 1711)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a6f8: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a6fa: mov    $0xffffff4d,%esi   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@38 (line 55)

  0x000000010e41a6ff: mov    %rax,0x18(%rsp)
  0x000000010e41a704: vzeroupper 
  0x000000010e41a707: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [24]=Oop [40]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a70c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a70e: mov    $0xffffff4d,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a713: mov    %r8,%rbp
  0x000000010e41a716: mov    %r13,0x8(%rsp)
  0x000000010e41a71b: mov    %r10,0x10(%rsp)
  0x000000010e41a720: mov    %ebx,0x18(%rsp)
  0x000000010e41a724: vzeroupper 
  0x000000010e41a727: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@24 (line 2145)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a72c: ud2                       ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@9 (line 64)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a72e: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a733: mov    %r8,%rbp
  0x000000010e41a736: mov    %r13,0x8(%rsp)
  0x000000010e41a73b: mov    %r10,0x10(%rsp)
  0x000000010e41a740: mov    %ebx,0x4(%rsp)
  0x000000010e41a744: mov    %r11d,0x1c(%rsp)
  0x000000010e41a749: data16 xchg %ax,%ax
  0x000000010e41a74c: vzeroupper 
  0x000000010e41a74f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@64 (line 2153)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a754: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a756: mov    $0xffffff4d,%esi
  0x000000010e41a75b: mov    (%rsp),%rbp
  0x000000010e41a75f: mov    0x40(%rsp),%r11d
  0x000000010e41a764: mov    %r11d,(%rsp)
  0x000000010e41a768: mov    0x28(%rsp),%r10
  0x000000010e41a76d: mov    %r10,0x8(%rsp)
  0x000000010e41a772: mov    0x14(%rsp),%r10d
  0x000000010e41a777: mov    %r10d,0x4(%rsp)
  0x000000010e41a77c: mov    0x38(%rsp),%r10
  0x000000010e41a781: mov    %r10,0x10(%rsp)
  0x000000010e41a786: mov    0x48(%rsp),%r10
  0x000000010e41a78b: mov    %r10,0x28(%rsp)
  0x000000010e41a790: mov    %r10,0x40(%rsp)
  0x000000010e41a795: mov    %r8d,0x3c(%rsp)
  0x000000010e41a79a: mov    %ecx,0x48(%rsp)
  0x000000010e41a79e: mov    %edi,0x4c(%rsp)
  0x000000010e41a7a2: xchg   %ax,%ax
  0x000000010e41a7a4: vzeroupper 
  0x000000010e41a7a7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop [64]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1664)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a7ac: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a7ae: mov    $0xffffff4d,%esi   ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a7b3: mov    0x28(%rsp),%r11
  0x000000010e41a7b8: mov    %r11,0x10(%rsp)
  0x000000010e41a7bd: mov    %r10d,0xc(%rsp)
  0x000000010e41a7c2: xchg   %ax,%ax
  0x000000010e41a7c4: vzeroupper 
  0x000000010e41a7c7: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [16]=Oop [48]=Oop [56]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@116 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a7cc: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a7ce: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a7d3: mov    (%rsp),%rbp
  0x000000010e41a7d7: mov    %ebx,0x10(%rsp)
  0x000000010e41a7db: mov    %ebx,0x14(%rsp)
  0x000000010e41a7df: mov    %r11d,0x18(%rsp)
  0x000000010e41a7e4: vzeroupper 
  0x000000010e41a7e7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [24]=NarrowOop [40]=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a7ec: ud2    
  0x000000010e41a7ee: mov    $0xffffffbe,%esi   ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a7f3: mov    %r9,(%rsp)
  0x000000010e41a7f7: mov    %r13,0x8(%rsp)
  0x000000010e41a7fc: vzeroupper 
  0x000000010e41a7ff: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a804: ud2    
  0x000000010e41a806: xor    %r13d,%r13d
  0x000000010e41a809: mov    $0xffffff7e,%esi   ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a80e: mov    %r9,(%rsp)
  0x000000010e41a812: mov    %r13,0x8(%rsp)
  0x000000010e41a817: nop
  0x000000010e41a818: vzeroupper 
  0x000000010e41a81b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a820: ud2    
  0x000000010e41a822: mov    %eax,0x54(%rsp)
  0x000000010e41a826: mov    %r10,0x48(%rsp)
  0x000000010e41a82b: movslq %eax,%r10
  0x000000010e41a82e: jmpq   0x000000010e419e4c
  0x000000010e41a833: add    $0xfffffffffffffffe,%r10
  0x000000010e41a837: mov    %r10,%rcx
  0x000000010e41a83a: mov    %rsi,%rdi
  0x000000010e41a83d: xor    %rax,%rax
  0x000000010e41a840: cmp    $0x8,%rcx
  0x000000010e41a844: jg     0x000000010e41a856
  0x000000010e41a846: dec    %rcx
  0x000000010e41a849: js     0x000000010e41a85d
  0x000000010e41a84b: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41a84f: dec    %rcx
  0x000000010e41a852: jge    0x000000010e41a84b
  0x000000010e41a854: jmp    0x000000010e41a85d
  0x000000010e41a856: shl    $0x3,%rcx
  0x000000010e41a85a: rep rex.W stos %al,%es:(%rdi)  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a85d: jmpq   0x000000010e419f68  ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a862: mov    $0xffffffcc,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a867: mov    (%rsp),%rbp
  0x000000010e41a86b: mov    0x40(%rsp),%r11d
  0x000000010e41a870: mov    %r11d,(%rsp)
  0x000000010e41a874: mov    0x28(%rsp),%r10
  0x000000010e41a879: mov    %r10,0x8(%rsp)
  0x000000010e41a87e: mov    0x14(%rsp),%r10d
  0x000000010e41a883: mov    %r10d,0x4(%rsp)
  0x000000010e41a888: mov    0x38(%rsp),%r10
  0x000000010e41a88d: mov    %r10,0x10(%rsp)
  0x000000010e41a892: mov    0x44(%rsp),%r10d
  0x000000010e41a897: mov    %r10d,0x3c(%rsp)
  0x000000010e41a89c: vzeroupper 
  0x000000010e41a89f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [48]=Oop [60]=NarrowOop [72]=Oop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a8a4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a8a6: mov    %r15,%rsi
  0x000000010e41a8a9: vzeroupper 
  0x000000010e41a8ac: movabs $0x104b038aa,%r10
  0x000000010e41a8b6: callq  *%r10              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a8b9: jmpq   0x000000010e419f73  ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@32 (line 1000)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a8be: mov    $0xffffffde,%esi   ;*getfield expectedModCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@8 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a8c3: mov    %r13,0x10(%rsp)
  0x000000010e41a8c8: vzeroupper 
  0x000000010e41a8cb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop [16]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@26 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a8d0: ud2                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 1041)
                                                ; - java.util.ArrayList$Itr::next@1 (line 996)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a8d2: mov    $0xfffffff6,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a8d7: nop
  0x000000010e41a8d8: vzeroupper 
  0x000000010e41a8db: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*getfield size {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 991)
                                                ; - OptimizedProceduralZipCode::runTest@12 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a8e0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@17 (line 998)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a8e2: mov    $0xfffffff6,%esi   ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a8e7: nop
  0x000000010e41a8e8: vzeroupper 
  0x000000010e41a8eb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a8f0: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::next@38 (line 1001)
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a8f2: mov    $0xfffffff6,%esi   ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::runTest@-1 (line 52)

  0x000000010e41a8f7: nop
  0x000000010e41a8f8: vzeroupper 
  0x000000010e41a8fb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a900: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a902: mov    $0xfffffff6,%esi   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@41 (line 59)

  0x000000010e41a907: nop
  0x000000010e41a908: vzeroupper 
  0x000000010e41a90b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a910: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a912: mov    $0xfffffff6,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a917: nop
  0x000000010e41a918: vzeroupper 
  0x000000010e41a91b: callq  0x000000010e3b3900  ; ImmutableOopMap{[48]=Oop }
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a920: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a922: mov    $0xfffffff6,%esi   ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::runTest@-1 (line 52)

  0x000000010e41a927: nop
  0x000000010e41a928: vzeroupper 
  0x000000010e41a92b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 537)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a930: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a932: mov    $0xfffffff6,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@35 (line 54)

  0x000000010e41a937: nop
  0x000000010e41a938: vzeroupper 
  0x000000010e41a93b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a940: ud2                       ;*invokevirtual isZipCodeValid {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a942: mov    $0xfffffff6,%esi
  0x000000010e41a947: nop
  0x000000010e41a948: vzeroupper 
  0x000000010e41a94b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@21 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a950: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a952: mov    $0xfffffff6,%esi   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@148 (line 74)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a957: mov    %r9d,%ebp
  0x000000010e41a95a: mov    %ebx,(%rsp)
  0x000000010e41a95d: mov    %r10d,0x4(%rsp)
  0x000000010e41a962: xchg   %ax,%ax
  0x000000010e41a964: vzeroupper 
  0x000000010e41a967: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a96c: ud2                       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@11 (line 53)

  0x000000010e41a96e: mov    $0xfffffff6,%esi   ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::runTest@-1 (line 52)

  0x000000010e41a973: nop
  0x000000010e41a974: vzeroupper 
  0x000000010e41a977: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a97c: ud2                       ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a97e: mov    $0xfffffff6,%esi
  0x000000010e41a983: nop
  0x000000010e41a984: vzeroupper 
  0x000000010e41a987: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41a98c: ud2                       ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a98e: jmp    0x000000010e41a99f  ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a990: mov    %rax,%rsi
  0x000000010e41a993: jmp    0x000000010e41a9ac
  0x000000010e41a995: mov    %rax,%rsi
  0x000000010e41a998: jmp    0x000000010e41a9ac
  0x000000010e41a99a: mov    %rax,%rsi
  0x000000010e41a99d: jmp    0x000000010e41a9ac  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)

  0x000000010e41a99f: mov    %rax,%rsi
  0x000000010e41a9a2: jmp    0x000000010e41a9ac
  0x000000010e41a9a4: mov    %rax,%rsi
  0x000000010e41a9a7: jmp    0x000000010e41a9ac  ;*invokeinterface next {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::runTest@21 (line 53)

  0x000000010e41a9a9: mov    %rax,%rsi
  0x000000010e41a9ac: vzeroupper 
  0x000000010e41a9af: add    $0xa0,%rsp
  0x000000010e41a9b6: pop    %rbp
  0x000000010e41a9b7: jmpq   0x000000010e3ea700  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; - OptimizedProceduralZipCode::runTest@32 (line 54)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e41a9bc: hlt    
  0x000000010e41a9bd: hlt    
  0x000000010e41a9be: hlt    
  0x000000010e41a9bf: hlt    
[Stub Code]
  0x000000010e41a9c0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e41a9ca: jmpq   0x000000010e41a9ca  ;   {runtime_call}
  0x000000010e41a9cf: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010e41a9d9: jmpq   0x000000010e41a9d9  ;   {runtime_call}
  0x000000010e41a9de: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010e41a9e8: jmpq   0x000000010e41a9e8  ;   {runtime_call}
[Exception Handler]
  0x000000010e41a9ed: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e41a9f2: callq  0x000000010e41a9f7
  0x000000010e41a9f7: subq   $0x5,(%rsp)
  0x000000010e41a9fc: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e41aa01: hlt    
  0x000000010e41aa02: hlt    
  0x000000010e41aa03: hlt    
  0x000000010e41aa04: hlt    
  0x000000010e41aa05: hlt    
  0x000000010e41aa06: hlt    
  0x000000010e41aa07: hlt    

ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[72] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [72]=Oop }pc offsets: 932 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[48] [32]=Derived_oop_rbp [40]=Oop [48]=Oop }pc offsets: 1252 
ImmutableOopMap{r10=Oop r9=Oop r13=Oop [0]=Oop [24]=Derived_oop_r10 [32]=Derived_oop_r9 }pc offsets: 1621 
ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }pc offsets: 2096 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[120] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [68]=NarrowOop [72]=Oop [120]=Oop }pc offsets: 2216 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2784 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[72] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [72]=Oop }pc offsets: 2944 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[88] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [88]=Oop }pc offsets: 3052 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[80] [32]=Derived_oop_rbp [40]=Oop [68]=NarrowOop [80]=Oop }pc offsets: 3132 
ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }pc offsets: 3336 
ImmutableOopMap{rbp=Oop [16]=Oop [24]=Oop }pc offsets: 3384 3432 3480 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }pc offsets: 3516 3552 3588 3624 
ImmutableOopMap{rbp=Oop [16]=Oop [32]=Oop }pc offsets: 3660 
ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }pc offsets: 3688 
ImmutableOopMap{[0]=Oop [24]=Oop }pc offsets: 3712 
ImmutableOopMap{rbp=Oop [16]=Oop }pc offsets: 3748 
ImmutableOopMap{[0]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 3780 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }pc offsets: 3820 
ImmutableOopMap{[0]=Oop [16]=Oop [32]=Oop }pc offsets: 3848 3876 3904 3932 
ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop [24]=Oop }pc offsets: 3972 4012 4052 4092 
ImmutableOopMap{rbp=Oop [0]=Oop [24]=Derived_oop_[136] [32]=Derived_oop_rbp [40]=Oop [48]=Oop [56]=Oop [68]=NarrowOop [72]=Oop [136]=Oop }pc offsets: 4144 
ImmutableOopMap{rbp=Oop }pc offsets: 4168 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=Oop [52]=NarrowOop [68]=NarrowOop [72]=Oop }pc offsets: 4316 
ImmutableOopMap{rbp=Oop [20]=NarrowOop [40]=Oop }pc offsets: 4348 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop [60]=NarrowOop }pc offsets: 4440 
ImmutableOopMap{rbp=Oop [40]=Oop [48]=Oop [56]=Oop }pc offsets: 4472 
ImmutableOopMap{[0]=Oop [24]=Oop [40]=Oop }pc offsets: 4492 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop }pc offsets: 4524 4564 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [40]=Oop [48]=Oop [64]=Oop }pc offsets: 4652 
ImmutableOopMap{[0]=Oop [16]=Oop [48]=Oop [56]=Oop }pc offsets: 4684 
ImmutableOopMap{rbp=Oop [24]=NarrowOop [40]=Oop }pc offsets: 4716 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 4740 4768 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [48]=Oop [60]=NarrowOop [72]=Oop }pc offsets: 4900 
ImmutableOopMap{rbp=NarrowOop [0]=Oop [16]=Oop }pc offsets: 4944 
ImmutableOopMap{}pc offsets: 4960 4976 4992 5008 
ImmutableOopMap{[48]=Oop }pc offsets: 5024 
ImmutableOopMap{}pc offsets: 5040 5056 5072 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 5100 
ImmutableOopMap{}pc offsets: 5116 5132 Compiled method (c2)     622  106             java.lang.AbstractStringBuilder::isLatin1 (19 bytes)
 total in heap  [0x000000010e411310,0x000000010e4115b8] = 680
 relocation     [0x000000010e411488,0x000000010e411498] = 16
 main code      [0x000000010e4114a0,0x000000010e411500] = 96
 stub code      [0x000000010e411500,0x000000010e411518] = 24
 metadata       [0x000000010e411518,0x000000010e411520] = 8
 scopes data    [0x000000010e411520,0x000000010e411540] = 32
 scopes pcs     [0x000000010e411540,0x000000010e4115b0] = 112
 dependencies   [0x000000010e4115b0,0x000000010e4115b8] = 8
----------------------------------------------------------------------
java/lang/AbstractStringBuilder.isLatin1()Z  [0x000000010e4114a0, 0x000000010e411518]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cc31380} 'isLatin1' '()Z' in 'java/lang/AbstractStringBuilder'
  #           [sp+0x20]  (sp of caller)
  0x000000010e4114a0: mov    0x8(%rsi),%r10d
  0x000000010e4114a4: movabs $0x800000000,%r12
  0x000000010e4114ae: add    %r12,%r10
  0x000000010e4114b1: xor    %r12,%r12
  0x000000010e4114b4: cmp    %r10,%rax
  0x000000010e4114b7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e4114bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e4114c0: mov    %eax,-0x14000(%rsp)
  0x000000010e4114c7: push   %rbp
  0x000000010e4114c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::isLatin1@-1 (line 1624)

  0x000000010e4114cc: movsbl 0x10(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)

  0x000000010e4114d1: test   %r11d,%r11d
  0x000000010e4114d4: jne    0x000000010e4114eb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)

  0x000000010e4114d6: mov    $0x1,%eax
  0x000000010e4114db: add    $0x10,%rsp
  0x000000010e4114df: pop    %rbp
  0x000000010e4114e0: mov    0x108(%r15),%r10
  0x000000010e4114e7: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4114ea: retq   
  0x000000010e4114eb: mov    $0xffffff4d,%esi
  0x000000010e4114f0: mov    %r11d,%ebp
  0x000000010e4114f3: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e4114f8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)

  0x000000010e4114fa: hlt    
  0x000000010e4114fb: hlt    
  0x000000010e4114fc: hlt    
  0x000000010e4114fd: hlt    
  0x000000010e4114fe: hlt    
  0x000000010e4114ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e411500: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e411505: callq  0x000000010e41150a
  0x000000010e41150a: subq   $0x5,(%rsp)
  0x000000010e41150f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e411514: hlt    
  0x000000010e411515: hlt    
  0x000000010e411516: hlt    
  0x000000010e411517: hlt    

ImmutableOopMap{}pc offsets: 88 Compiled method (c2)     647  107             OptimizedProceduralZipCode::isZipCodeValid (150 bytes)
 total in heap  [0x000000010e41d090,0x000000010e4204b0] = 13344
 relocation     [0x000000010e41d208,0x000000010e41d2c0] = 184
 main code      [0x000000010e41d2c0,0x000000010e41e240] = 3968
 stub code      [0x000000010e41e240,0x000000010e41e288] = 72
 oops           [0x000000010e41e288,0x000000010e41e2b8] = 48
 metadata       [0x000000010e41e2b8,0x000000010e41e3b8] = 256
 scopes data    [0x000000010e41e3b8,0x000000010e41eea8] = 2800
 scopes pcs     [0x000000010e41eea8,0x000000010e4203a8] = 5376
 dependencies   [0x000000010e4203a8,0x000000010e4203b8] = 16
 handler table  [0x000000010e4203b8,0x000000010e420460] = 168
 nul chk table  [0x000000010e420460,0x000000010e4204b0] = 80
----------------------------------------------------------------------
OptimizedProceduralZipCode.isZipCodeValid(Ljava/lang/String;)Z  [0x000000010e41d2c0, 0x000000010e41e288]  4040 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cf8bac8} 'isZipCodeValid' '(Ljava/lang/String;)Z' in 'OptimizedProceduralZipCode'
  # this:     rsi:rsi   = 'OptimizedProceduralZipCode'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x70]  (sp of caller)
  0x000000010e41d2c0: mov    0x8(%rsi),%r10d
  0x000000010e41d2c4: movabs $0x800000000,%r12
  0x000000010e41d2ce: add    %r12,%r10
  0x000000010e41d2d1: xor    %r12,%r12
  0x000000010e41d2d4: cmp    %r10,%rax
  0x000000010e41d2d7: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e41d2dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e41d2e0: mov    %eax,-0x14000(%rsp)
  0x000000010e41d2e7: push   %rbp
  0x000000010e41d2e8: sub    $0x60,%rsp         ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41d2ec: mov    %rsi,%r11
  0x000000010e41d2ef: test   %rdx,%rdx
  0x000000010e41d2f2: je     0x000000010e41d416
  0x000000010e41d2f8: mov    0xc(%rdx),%r10d    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d2fc: mov    0xc(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x000000010e41e160
  0x000000010e41d301: movsbl 0x14(%rdx),%ecx    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d305: mov    %r8d,%ebx
  0x000000010e41d308: sar    %cl,%ebx
  0x000000010e41d30a: cmp    $0x5,%ebx
  0x000000010e41d30d: jne    0x000000010e41d418  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d313: test   %ecx,%ecx
  0x000000010e41d315: jne    0x000000010e41dd26
  0x000000010e41d31b: test   %r8d,%r8d
  0x000000010e41d31e: jbe    0x000000010e41dd5a  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d324: movzbl 0x10(%r12,%r10,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41d32a: cmp    $0x30,%ebp
  0x000000010e41d32d: jl     0x000000010e41dd42  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d333: cmp    $0x39,%ebp
  0x000000010e41d336: jg     0x000000010e41d418  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d33c: test   %ecx,%ecx
  0x000000010e41d33e: jne    0x000000010e41dd7a  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d344: cmp    $0x1,%r8d
  0x000000010e41d348: jle    0x000000010e41de4a  ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d34e: cmp    $0x1,%r8d
  0x000000010e41d352: jbe    0x000000010e41dcb6  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d358: movzbl 0x11(%r12,%r10,8),%ebp  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41d35e: cmp    $0x30,%ebp
  0x000000010e41d361: jl     0x000000010e41dd96  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@3 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d367: cmp    $0x39,%ebp
  0x000000010e41d36a: jg     0x000000010e41dc57  ;*synchronization entry
                                                ; - java.lang.CharacterDataLatin1::isDigit@-1 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d370: test   %ecx,%ecx
  0x000000010e41d372: jne    0x000000010e41ddae
  0x000000010e41d378: cmp    $0x2,%r8d
  0x000000010e41d37c: jle    0x000000010e41de6a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d382: cmp    $0x2,%r8d
  0x000000010e41d386: jbe    0x000000010e41dcd2  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d38c: movzbl 0x12(%r12,%r10,8),%ebp  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41d392: cmp    $0x30,%ebp
  0x000000010e41d395: jl     0x000000010e41ddca  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d39b: cmp    $0x39,%ebp
  0x000000010e41d39e: jg     0x000000010e41dc6e  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d3a4: test   %ecx,%ecx
  0x000000010e41d3a6: jne    0x000000010e41dde2  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@4 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d3ac: cmp    $0x3,%r8d
  0x000000010e41d3b0: jle    0x000000010e41de8a  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d3b6: cmp    $0x3,%r8d
  0x000000010e41d3ba: jbe    0x000000010e41dcee  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d3c0: movzbl 0x13(%r12,%r10,8),%ebp
  0x000000010e41d3c6: cmp    $0x30,%ebp
  0x000000010e41d3c9: jl     0x000000010e41ddfe  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d3cf: cmp    $0x39,%ebp
  0x000000010e41d3d2: jg     0x000000010e41dc86  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d3d8: test   %ecx,%ecx
  0x000000010e41d3da: jne    0x000000010e41de16  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d3e0: cmp    $0x4,%r8d
  0x000000010e41d3e4: jle    0x000000010e41deaa  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d3ea: cmp    $0x4,%r8d
  0x000000010e41d3ee: jbe    0x000000010e41dd0a  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d3f4: movzbl 0x14(%r12,%r10,8),%ebp  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@0 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d3fa: cmp    $0x30,%ebp
  0x000000010e41d3fd: jl     0x000000010e41de32  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d403: cmp    $0x39,%ebp
  0x000000010e41d406: jg     0x000000010e41dc9e  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)

  0x000000010e41d40c: mov    $0x1,%eax
  0x000000010e41d411: jmpq   0x000000010e41d8b4
  0x000000010e41d416: xor    %edx,%edx          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@24 (line 2145)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d418: mov    0xc(%rsi),%r10d
  0x000000010e41d41c: test   %r10d,%r10d
  0x000000010e41d41f: je     0x000000010e41df21  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d425: test   %rdx,%rdx
  0x000000010e41d428: jne    0x000000010e41d436  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)

  0x000000010e41d42a: movabs $0x70ff049f0,%rbp  ;   {oop("null"{0x000000070ff049f0})}
  0x000000010e41d434: jmp    0x000000010e41d439
  0x000000010e41d436: mov    %rdx,%rbp          ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d439: movabs $0x70fd44928,%rsi  ;   {oop([B{0x000000070fd44928})}
  0x000000010e41d443: add    $0x10,%rsi
  0x000000010e41d447: movabs $0x70fd448e8,%rdi  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ;   {oop([B{0x000000070fd448e8})}
  0x000000010e41d451: add    $0x10,%rdi
  0x000000010e41d455: mov    $0x14,%edx
  0x000000010e41d45a: mov    %rsp,%rcx
  0x000000010e41d45d: movzwl (%rsi),%ebx
  0x000000010e41d460: vmovd  %ebx,%xmm0
  0x000000010e41d464: cmp    $0x10,%edx
  0x000000010e41d467: jae    0x000000010e41d490
  0x000000010e41d469: mov    %edi,%ebx
  0x000000010e41d46b: and    $0xfff,%ebx
  0x000000010e41d471: cmp    $0xff0,%ebx
  0x000000010e41d477: jbe    0x000000010e41d490
  0x000000010e41d479: sub    $0x10,%rsp
  0x000000010e41d47d: mov    %edx,%eax
  0x000000010e41d47f: movzbl -0x1(%rdi,%rax,1),%ebx
  0x000000010e41d484: mov    %bl,-0x1(%rsp,%rax,1)
  0x000000010e41d488: dec    %rax
  0x000000010e41d48b: jne    0x000000010e41d47f
  0x000000010e41d48d: mov    %rsp,%rdi
  0x000000010e41d490: mov    $0x2,%eax
  0x000000010e41d495: push   %rcx
  0x000000010e41d496: mov    %rdi,%rbx
  0x000000010e41d499: vpcmpestri $0xc,(%rbx),%xmm0
  0x000000010e41d49f: jb     0x000000010e41d4bf
  0x000000010e41d4a1: sub    $0x10,%edx
  0x000000010e41d4a4: jle    0x000000010e41d4c5
  0x000000010e41d4a6: cmp    %eax,%edx
  0x000000010e41d4a8: js     0x000000010e41d4c5
  0x000000010e41d4aa: add    $0x10,%rbx
  0x000000010e41d4ae: cmp    $0x10,%edx
  0x000000010e41d4b1: jge    0x000000010e41d499
  0x000000010e41d4b3: lea    -0x10(%rbx,%rdx,1),%rbx
  0x000000010e41d4b8: mov    $0x10,%edx
  0x000000010e41d4bd: jmp    0x000000010e41d499
  0x000000010e41d4bf: sub    %ecx,%edx
  0x000000010e41d4c1: cmp    %eax,%edx
  0x000000010e41d4c3: jge    0x000000010e41d4cc
  0x000000010e41d4c5: mov    $0xffffffff,%ebx
  0x000000010e41d4ca: jmp    0x000000010e41d4d8
  0x000000010e41d4cc: lea    (%rbx,%rcx,1),%rbx
  0x000000010e41d4d0: cmp    $0xe,%ecx
  0x000000010e41d4d3: jg     0x000000010e41d4ae
  0x000000010e41d4d5: sub    %rdi,%rbx
  0x000000010e41d4d8: pop    %rsp               ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d4d9: mov    %ebx,0x20(%rsp)
  0x000000010e41d4dd: test   %ebx,%ebx
  0x000000010e41d4df: jl     0x000000010e41e032  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d4e5: mov    0xc(%rbp),%r10d    ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d4e9: mov    0xc(%r12,%r10,8),%r10d  ; implicit exception: dispatches to 0x000000010e41e172
  0x000000010e41d4ee: movsbl 0x14(%rbp),%ecx
  0x000000010e41d4f2: sar    %cl,%r10d          ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d4f5: mov    %r10d,0x10(%rsp)
  0x000000010e41d4fa: add    $0x12,%r10d        ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d4fe: test   %r10d,%r10d
  0x000000010e41d501: jl     0x000000010e41e046  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d507: mov    0x118(%r15),%rax   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d50e: mov    %rax,%r11
  0x000000010e41d511: add    $0x18,%r11
  0x000000010e41d515: cmp    0x128(%r15),%r11
  0x000000010e41d51c: jae    0x000000010e41db2c  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d522: mov    %r11,0x118(%r15)
  0x000000010e41d529: prefetchnta 0xc0(%r11)
  0x000000010e41d531: mov    $0xed68,%r8d       ;   {metadata('java/lang/StringBuilder')}
  0x000000010e41d537: movabs $0x800000000,%r11
  0x000000010e41d541: add    %r8,%r11
  0x000000010e41d544: mov    0xb8(%r11),%r11    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@21 (line 1711)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d54b: mov    %r11,(%rax)        ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d54e: movl   $0xed68,0x8(%rax)  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@21 (line 1711)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata('java/lang/StringBuilder')}
  0x000000010e41d555: movl   $0x0,0xc(%rax)
  0x000000010e41d55c: movq   $0x0,0x10(%rax)    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d564: mov    %rax,0x8(%rsp)
  0x000000010e41d569: cmp    $0x100000,%r10d
  0x000000010e41d570: ja     0x000000010e41df36
  0x000000010e41d576: movslq 0x10(%rsp),%rcx
  0x000000010e41d57b: add    $0x12,%rcx         ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d57f: cmp    $0x100000,%r10d
  0x000000010e41d586: ja     0x000000010e41db52  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d58c: mov    0x118(%r15),%r9    ;*invokevirtual indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d593: add    $0x17,%rcx         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e41d597: mov    %rcx,%r11
  0x000000010e41d59a: and    $0xfffffffffffffff8,%r11
  0x000000010e41d59e: mov    %r9,%r8
  0x000000010e41d5a1: add    %r11,%r8
  0x000000010e41d5a4: cmp    0x128(%r15),%r8
  0x000000010e41d5ab: jae    0x000000010e41db52  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d5b1: mov    %r8,0x118(%r15)    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5b8: prefetchnta 0xc0(%r8)     ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5c0: movq   $0x1,(%r9)         ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5c7: prefetchnta 0x100(%r8)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5cf: movl   $0x820,0x8(%r9)    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@14 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41d5d7: mov    %r10d,0xc(%r9)     ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5db: prefetchnta 0x140(%r8)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5e3: mov    %r9,%rdi
  0x000000010e41d5e6: add    $0x10,%rdi
  0x000000010e41d5ea: prefetchnta 0x180(%r8)    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@3 (line 3258)
                                                ; - java.lang.String::indexOf@5 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d5f2: shr    $0x3,%rcx
  0x000000010e41d5f6: add    $0xfffffffffffffffe,%rcx
  0x000000010e41d5fa: xor    %rax,%rax
  0x000000010e41d5fd: cmp    $0x8,%rcx
  0x000000010e41d601: jg     0x000000010e41d613
  0x000000010e41d603: dec    %rcx
  0x000000010e41d606: js     0x000000010e41d61a
  0x000000010e41d608: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41d60c: dec    %rcx
  0x000000010e41d60f: jge    0x000000010e41d608
  0x000000010e41d611: jmp    0x000000010e41d61a
  0x000000010e41d613: shl    $0x3,%rcx
  0x000000010e41d617: rep rex.W stos %al,%es:(%rdi)  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d61a: mov    0x8(%rsp),%r10     ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d61f: mov    %r9,%r8
  0x000000010e41d622: shr    $0x3,%r8
  0x000000010e41d626: mov    0x8(%rsp),%r11
  0x000000010e41d62b: mov    %r8d,0x14(%r11)    ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d62f: mov    %r9,%r11
  0x000000010e41d632: xor    %r10,%r11
  0x000000010e41d635: shr    $0x14,%r11
  0x000000010e41d639: test   %r11,%r11
  0x000000010e41d63c: je     0x000000010e41d694  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d63e: shr    $0x9,%r10
  0x000000010e41d642: movabs $0x10e38b000,%rdi
  0x000000010e41d64c: add    %r10,%rdi          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d64f: cmpb   $0x20,(%rdi)
  0x000000010e41d652: je     0x000000010e41d694
  0x000000010e41d654: mov    0x80(%r15),%r10    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d65b: mov    0x70(%r15),%r11    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d65f: lock addl $0x0,-0x40(%rsp)  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d665: cmpb   $0x0,(%rdi)
  0x000000010e41d668: je     0x000000010e41d694  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d66a: movb   $0x0,(%rdi)        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d66d: test   %r11,%r11
  0x000000010e41d670: jne    0x000000010e41d687  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d672: mov    %r15,%rsi
  0x000000010e41d675: vzeroupper 
  0x000000010e41d678: movabs $0x104b038ce,%r10
  0x000000010e41d682: callq  *%r10              ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d685: jmp    0x000000010e41d694
  0x000000010e41d687: mov    %rdi,-0x8(%r10,%r11,1)  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d68c: add    $0xfffffffffffffff8,%r11  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d690: mov    %r11,0x70(%r15)    ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e41d694: mov    %rbp,(%rsp)
  0x000000010e41d698: mov    0x8(%rsp),%r10
  0x000000010e41d69d: movb   $0x0,0x10(%r10)    ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d6a2: mov    %r10,%rsi
  0x000000010e41d6a5: movabs $0x70fd448d0,%rdx  ;   {oop("invalid zip code: {}"{0x000000070fd448d0})}
  0x000000010e41d6af: xor    %ecx,%ecx
  0x000000010e41d6b1: mov    0x20(%rsp),%r8d
  0x000000010e41d6b6: xchg   %ax,%ax
  0x000000010e41d6b8: vzeroupper 
  0x000000010e41d6bb: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop }
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@96 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {optimized virtual_call}
  0x000000010e41d6c0: mov    %rax,%r14
  0x000000010e41d6c3: mov    0x14(%rax),%r9d    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; implicit exception: dispatches to 0x000000010e41e182
  0x000000010e41d6c7: mov    0xc(%rbp),%eax     ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d6ca: mov    0xc(%r12,%rax,8),%ebx  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ; implicit exception: dispatches to 0x000000010e41e192
  0x000000010e41d6cf: mov    0xc(%r12,%r9,8),%r11d  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ; implicit exception: dispatches to 0x000000010e41e1a2
  0x000000010e41d6d4: mov    %r11d,0x24(%rsp)
  0x000000010e41d6d9: movsbl 0x10(%r14),%r8d    ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d6de: movsbl 0x14(%rbp),%edi    ;*bipush {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@0 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d6e2: mov    %r8d,%ecx
  0x000000010e41d6e5: sar    %cl,%r11d          ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)

  0x000000010e41d6e8: mov    %edi,%ecx
  0x000000010e41d6ea: sar    %cl,%ebx           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@40 (line 66)

  0x000000010e41d6ec: mov    0xc(%r14),%r10d    ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41d6f0: mov    %ebx,%edx
  0x000000010e41d6f2: add    %r10d,%edx         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d6f5: mov    %edx,%esi
  0x000000010e41d6f7: sub    %r11d,%esi
  0x000000010e41d6fa: test   %esi,%esi
  0x000000010e41d6fc: jg     0x000000010e41d8c7  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@50 (line 67)

  0x000000010e41d702: cmp    %edi,%r8d
  0x000000010e41d705: jne    0x000000010e41e05a
  0x000000010e41d70b: cmp    %r8d,%edi
  0x000000010e41d70e: jne    0x000000010e41dfc6  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d714: mov    0xc(%r12,%rax,8),%edx  ; implicit exception: dispatches to 0x000000010e41e1b2
  0x000000010e41d719: mov    %r8d,%ecx
  0x000000010e41d71c: shl    %cl,%r10d          ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d71f: mov    0xc(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x000000010e41e1c2
  0x000000010e41d724: test   %r10d,%r10d
  0x000000010e41d727: jl     0x000000010e41df75
  0x000000010e41d72d: mov    %r10d,%r11d
  0x000000010e41d730: add    %edx,%r11d
  0x000000010e41d733: cmp    %r11d,%r8d
  0x000000010e41d736: jb     0x000000010e41df75  ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d73c: test   %edx,%edx
  0x000000010e41d73e: jbe    0x000000010e41d765  ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d740: lea    (%r12,%r9,8),%r11  ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::isLatin1@-1 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d744: lea    0x10(%r11,%r10,1),%rsi  ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@64 (line 2153)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d749: lea    (%r12,%rax,8),%r10  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d74d: lea    0x10(%r12,%rax,8),%rdi  ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@59 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d752: movslq %edx,%rdx          ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@14 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d755: vzeroupper 
  0x000000010e41d758: movabs $0x10e3c0cc0,%r10
  0x000000010e41d762: callq  *%r10              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@75 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d765: add    %ebx,0xc(%r14)     ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d769: mov    0x20(%rsp),%ecx
  0x000000010e41d76d: add    $0x2,%ecx          ;*synchronization entry
                                                ; - java.lang.CharacterData::of@-1 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d770: mov    0x20(%rsp),%r11d
  0x000000010e41d775: cmp    $0x14,%r11d
  0x000000010e41d779: jge    0x000000010e41e092  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d77f: cmp    $0x14,%ecx
  0x000000010e41d782: jl     0x000000010e41dffa  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d788: mov    0x8(%rsp),%rsi
  0x000000010e41d78d: movabs $0x70fd448d0,%rdx  ;   {oop("invalid zip code: {}"{0x000000070fd448d0})}
  0x000000010e41d797: mov    $0x14,%r8d
  0x000000010e41d79d: data16 xchg %ax,%ax
  0x000000010e41d7a0: vzeroupper 
  0x000000010e41d7a3: callq  0x000000010e3b1f00  ; ImmutableOopMap{}
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@142 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {optimized virtual_call}
  0x000000010e41d7a8: movsbl 0x10(%rax),%ebp    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ; implicit exception: dispatches to 0x000000010e41e1de
  0x000000010e41d7ac: test   %ebp,%ebp
  0x000000010e41d7ae: jne    0x000000010e41e01e  ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d7b4: mov    0x14(%rax),%r11d   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d7b8: mov    0xc(%rax),%r10d    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@17 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41d7bc: test   %r10d,%r10d
  0x000000010e41d7bf: jl     0x000000010e41e0ae  ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41d7c5: cmp    $0x100000,%r10d
  0x000000010e41d7cc: ja     0x000000010e41df3e  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d7d2: movslq %r10d,%r8          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d7d5: mov    0xc(%r12,%r11,8),%r9d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ; implicit exception: dispatches to 0x000000010e41e1ee
  0x000000010e41d7da: mov    %r10d,%ebx         ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e41d7dd: cmp    %ebx,%r9d
  0x000000010e41d7e0: mov    %ebx,%ebp
  0x000000010e41d7e2: cmovl  %r9d,%ebp          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d7e6: cmp    %ebp,%r9d
  0x000000010e41d7e9: jb     0x000000010e41dfae  ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e41d7ef: cmp    %ebp,%ebx
  0x000000010e41d7f1: jb     0x000000010e41dfae  ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41d7f7: add    $0x17,%r8          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d7fb: mov    %r8,%rdx
  0x000000010e41d7fe: and    $0xfffffffffffffff8,%rdx  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d802: cmp    $0x100000,%r10d
  0x000000010e41d809: ja     0x000000010e41db70  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d80f: mov    0x118(%r15),%rax   ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d816: mov    %rax,%r9
  0x000000010e41d819: add    %rdx,%r9
  0x000000010e41d81c: cmp    0x128(%r15),%r9
  0x000000010e41d823: jae    0x000000010e41db70  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d829: mov    %r9,0x118(%r15)    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@0 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d830: prefetchnta 0xc0(%r9)
  0x000000010e41d838: movq   $0x1,(%rax)
  0x000000010e41d83f: prefetchnta 0x100(%r9)
  0x000000010e41d847: movl   $0x820,0x8(%rax)   ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41d84e: mov    %r10d,0xc(%rax)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d852: prefetchnta 0x140(%r9)
  0x000000010e41d85a: prefetchnta 0x180(%r9)    ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41d862: mov    %rax,%r9
  0x000000010e41d865: add    $0x10,%r9          ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d869: shr    $0x3,%r8           ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d86d: movabs $0x70fd43b00,%rbx  ;   {oop(a 'java/lang/Class'{0x000000070fd43b00} = 'Logger')}
  0x000000010e41d877: test   %ebp,%ebp
  0x000000010e41d879: je     0x000000010e41df46  ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d87f: lea    (%r12,%r11,8),%rcx  ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d883: lea    0x10(%r12,%r11,8),%r11
  0x000000010e41d888: cmp    %r10d,%ebp
  0x000000010e41d88b: jl     0x000000010e41dad0
  0x000000010e41d891: add    $0xfffffffffffffff0,%rdx
  0x000000010e41d895: shr    $0x3,%rdx
  0x000000010e41d899: mov    %r11,%rdi
  0x000000010e41d89c: mov    %r9,%rsi
  0x000000010e41d89f: vzeroupper 
  0x000000010e41d8a2: movabs $0x10e3c1080,%r10
  0x000000010e41d8ac: callq  *%r10              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41d8af: incl   0x70(%rbx)
  0x000000010e41d8b2: xor    %eax,%eax          ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41d8b4: vzeroupper 
  0x000000010e41d8b7: add    $0x60,%rsp
  0x000000010e41d8bb: pop    %rbp
  0x000000010e41d8bc: mov    0x108(%r15),%r10
  0x000000010e41d8c3: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e41d8c6: retq                      ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41d8c7: shl    %r11d              ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d8ca: mov    %r11d,%ecx
  0x000000010e41d8cd: sub    %edx,%ecx
  0x000000010e41d8cf: add    $0x2,%ecx
  0x000000010e41d8d2: test   %ecx,%ecx
  0x000000010e41d8d4: jge    0x000000010e41dac7  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)

  0x000000010e41d8da: mov    %edx,%r11d         ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d8dd: test   %r11d,%r11d
  0x000000010e41d8e0: jle    0x000000010e41d8f6  ;*invokevirtual isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d8e2: mov    $0x7ffffff7,%r10d
  0x000000010e41d8e8: mov    %r8d,%ecx
  0x000000010e41d8eb: sar    %cl,%r10d
  0x000000010e41d8ee: sub    %r11d,%r10d
  0x000000010e41d8f1: test   %r10d,%r10d
  0x000000010e41d8f4: jge    0x000000010e41d92a  ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d8f6: mov    %ebx,0x1c(%rsp)
  0x000000010e41d8fa: mov    %r9d,0x18(%rsp)
  0x000000010e41d8ff: mov    %r14,0x10(%rsp)
  0x000000010e41d904: mov    %r14,%rsi
  0x000000010e41d907: nop
  0x000000010e41d908: vzeroupper 
  0x000000010e41d90b: callq  0x000000010e3b1f00  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
                                                ;*invokevirtual hugeCapacity {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::newCapacity@47 (line 206)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 173)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {optimized virtual_call}
  0x000000010e41d910: mov    0x10(%rsp),%r14
  0x000000010e41d915: movsbl 0x10(%r14),%r8d    ;*synchronization entry
                                                ; - java.lang.String::toString@-1 (line 2807)
                                                ; - java.lang.String::replace@8 (line 2143)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d91a: mov    %rbp,(%rsp)
  0x000000010e41d91e: mov    0x18(%rsp),%r9d
  0x000000010e41d923: mov    0x1c(%rsp),%ebx
  0x000000010e41d927: mov    %eax,%r11d         ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@40 (line 66)

  0x000000010e41d92a: mov    %r8d,%ecx
  0x000000010e41d92d: shl    %cl,%r11d          ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@48 (line 66)

  0x000000010e41d930: cmp    $0x100000,%r11d
  0x000000010e41d937: ja     0x000000010e41e0ce  ;*iload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@0 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d93d: movslq %r11d,%r8          ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41d940: mov    %r11d,%edi         ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d943: mov    0x24(%rsp),%r10d
  0x000000010e41d948: cmp    %edi,%r10d
  0x000000010e41d94b: mov    %edi,%ebp
  0x000000010e41d94d: mov    0x24(%rsp),%ecx
  0x000000010e41d951: cmovl  %ecx,%ebp          ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d954: cmp    %ebp,%ecx
  0x000000010e41d956: jb     0x000000010e41e102
  0x000000010e41d95c: cmp    %ebp,%edi
  0x000000010e41d95e: jb     0x000000010e41e102  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41d964: add    $0x17,%r8          ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@16 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d968: mov    %r8,%rdx
  0x000000010e41d96b: and    $0xfffffffffffffff8,%rdx
  0x000000010e41d96f: cmp    $0x100000,%r11d
  0x000000010e41d976: ja     0x000000010e41deca
  0x000000010e41d97c: mov    0x118(%r15),%r10
  0x000000010e41d983: mov    %r10,%rcx
  0x000000010e41d986: add    %rdx,%rcx
  0x000000010e41d989: cmp    0x128(%r15),%rcx
  0x000000010e41d990: jae    0x000000010e41deca  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d996: mov    %rcx,0x118(%r15)   ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d99d: prefetchnta 0xc0(%rcx)    ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 658)
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9a4: movq   $0x1,(%r10)
  0x000000010e41d9ab: prefetchnta 0x100(%rcx)
  0x000000010e41d9b2: movl   $0x820,0x8(%r10)   ;*invokestatic indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41d9ba: mov    %r11d,0xc(%r10)    ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9be: prefetchnta 0x140(%rcx)
  0x000000010e41d9c5: prefetchnta 0x180(%rcx)   ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41d9cc: shr    $0x3,%r8           ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@142 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9d0: mov    %r10,%r13
  0x000000010e41d9d3: shr    $0x3,%r13          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41d9d7: mov    %r10,%rdi
  0x000000010e41d9da: add    $0x10,%rdi         ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@75 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9de: test   %ebp,%ebp
  0x000000010e41d9e0: je     0x000000010e41e0d6  ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@132 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9e6: lea    (%r12,%r9,8),%rcx  ;*synchronization entry
                                                ; - java.lang.StringBuilder::toString@-1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41d9ea: lea    0x10(%r12,%r9,8),%r9
  0x000000010e41d9ef: cmp    %r11d,%ebp
  0x000000010e41d9f2: jl     0x000000010e41dbb0
  0x000000010e41d9f8: mov    %rdi,%r11
  0x000000010e41d9fb: mov    %r10,0x18(%rsp)
  0x000000010e41da00: mov    %ebx,0x10(%rsp)
  0x000000010e41da04: add    $0xfffffffffffffff0,%rdx
  0x000000010e41da08: shr    $0x3,%rdx
  0x000000010e41da0c: mov    %r9,%rdi
  0x000000010e41da0f: mov    %r11,%rsi
  0x000000010e41da12: vzeroupper 
  0x000000010e41da15: movabs $0x10e3c1080,%r10
  0x000000010e41da1f: callq  *%r10              ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41da22: mov    0x10(%rsp),%ebx
  0x000000010e41da26: mov    0x18(%rsp),%r10    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41da2b: cmpb   $0x0,0x30(%r15)
  0x000000010e41da30: jne    0x000000010e41dc20  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41da36: mov    %r13d,0x14(%r14)   ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41da3a: mov    %r14,%r11          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@3 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e41da3d: xor    %r11,%r10
  0x000000010e41da40: shr    $0x14,%r10
  0x000000010e41da44: test   %r10,%r10
  0x000000010e41da47: je     0x000000010e41daa9  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41da49: shr    $0x9,%r11
  0x000000010e41da4d: movabs $0x10e38b000,%r8
  0x000000010e41da57: add    %r11,%r8           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da5a: cmpb   $0x20,(%r8)
  0x000000010e41da5e: je     0x000000010e41daa9
  0x000000010e41da60: mov    0x70(%r15),%r10    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41da64: mov    0x80(%r15),%r11    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e41da6b: lock addl $0x0,-0x40(%rsp)  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da71: cmpb   $0x0,(%r8)
  0x000000010e41da75: je     0x000000010e41daa5  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@3 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da77: movb   $0x0,(%r8)         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da7b: test   %r10,%r10
  0x000000010e41da7e: je     0x000000010e41da8f  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da80: mov    %r8,-0x8(%r11,%r10,1)  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da85: add    $0xfffffffffffffff8,%r10  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41da89: mov    %r10,0x70(%r15)    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41da8d: jmp    0x000000010e41daa5
  0x000000010e41da8f: mov    %r8,%rdi           ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41da92: mov    %r15,%rsi
  0x000000010e41da95: vzeroupper 
  0x000000010e41da98: movabs $0x104b038ce,%r10
  0x000000010e41daa2: callq  *%r10              ;*synchronization entry
                                                ; - java.lang.CharacterData::of@-1 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41daa5: mov    0x14(%r14),%r13d   ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)

  0x000000010e41daa9: movsbl 0x10(%r14),%r8d
  0x000000010e41daae: mov    (%rsp),%r10
  0x000000010e41dab2: movsbl 0x14(%r10),%edi    ;*invokevirtual indexOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@17 (line 2144)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dab7: mov    0xc(%r10),%eax
  0x000000010e41dabb: mov    0xc(%r14),%r10d    ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dabf: mov    %r13d,%r9d
  0x000000010e41dac2: jmpq   0x000000010e41d702
  0x000000010e41dac7: add    $0x2,%r11d         ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@4 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41dacb: jmpq   0x000000010e41d8dd
  0x000000010e41dad0: movslq %ebp,%rdx          ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dad3: mov    %rdx,%r10
  0x000000010e41dad6: add    $0x10,%r10
  0x000000010e41dada: mov    %r10,%rcx
  0x000000010e41dadd: and    $0xfffffffffffffff8,%rcx
  0x000000010e41dae1: mov    %rax,%rdi
  0x000000010e41dae4: add    %rcx,%rdi
  0x000000010e41dae7: shr    $0x3,%r10
  0x000000010e41daeb: sub    %r10,%r8
  0x000000010e41daee: mov    %r8,%rcx
  0x000000010e41daf1: xor    %rax,%rax
  0x000000010e41daf4: cmp    $0x8,%rcx
  0x000000010e41daf8: jg     0x000000010e41db0a
  0x000000010e41dafa: dec    %rcx
  0x000000010e41dafd: js     0x000000010e41db11
  0x000000010e41daff: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41db03: dec    %rcx
  0x000000010e41db06: jge    0x000000010e41daff
  0x000000010e41db08: jmp    0x000000010e41db11
  0x000000010e41db0a: shl    $0x3,%rcx
  0x000000010e41db0e: rep rex.W stos %al,%es:(%rdi)
  0x000000010e41db11: mov    %r11,%rdi
  0x000000010e41db14: mov    %r9,%rsi
  0x000000010e41db17: vzeroupper 
  0x000000010e41db1a: movabs $0x10e3c0c00,%r10
  0x000000010e41db24: callq  *%r10              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@116 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41db27: jmpq   0x000000010e41d8af
  0x000000010e41db2c: mov    %r10d,0x4(%rsp)
  0x000000010e41db31: mov    %ebx,(%rsp)
  0x000000010e41db34: movabs $0x80000ed68,%rsi  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata('java/lang/StringBuilder')}
  0x000000010e41db3e: xchg   %ax,%ax
  0x000000010e41db40: vzeroupper 
  0x000000010e41db43: callq  0x000000010e3e8380  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.String::replace@75 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e41db48: mov    0x4(%rsp),%r10d
  0x000000010e41db4d: jmpq   0x000000010e41d564  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)

  0x000000010e41db52: movabs $0x800000820,%rsi  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41db5c: mov    %r10d,%edx
  0x000000010e41db5f: nop
  0x000000010e41db60: vzeroupper 
  0x000000010e41db63: callq  0x000000010e3e9a80  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.AbstractStringBuilder::<init>@12 (line 86)
                                                ; - java.lang.StringBuilder::<init>@2 (line 112)
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call _new_array_Java}
  0x000000010e41db68: mov    %rax,%r9
  0x000000010e41db6b: jmpq   0x000000010e41d61a  ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@7 (line 1708)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41db70: mov    %r11d,0x4(%rsp)
  0x000000010e41db75: mov    %rdx,0x10(%rsp)
  0x000000010e41db7a: mov    %r8,0x8(%rsp)
  0x000000010e41db7f: mov    %r10d,(%rsp)       ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41db83: movabs $0x800000820,%rsi  ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - java.lang.String::indexOf@13 (line 1709)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41db8d: mov    %r10d,%edx
  0x000000010e41db90: vzeroupper 
  0x000000010e41db93: callq  0x000000010e3e9980  ; ImmutableOopMap{[4]=NarrowOop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e41db98: mov    (%rsp),%r10d
  0x000000010e41db9c: mov    0x8(%rsp),%r8
  0x000000010e41dba1: mov    0x10(%rsp),%rdx
  0x000000010e41dba6: mov    0x4(%rsp),%r11d
  0x000000010e41dbab: jmpq   0x000000010e41d862
  0x000000010e41dbb0: mov    %r9,%rsi
  0x000000010e41dbb3: mov    %rdi,%r9
  0x000000010e41dbb6: mov    %ebx,0x10(%rsp)
  0x000000010e41dbba: movslq %ebp,%rdx          ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dbbd: mov    %rdx,%r11
  0x000000010e41dbc0: add    $0x10,%r11         ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dbc4: mov    %r11,%rcx
  0x000000010e41dbc7: and    $0xfffffffffffffff8,%rcx
  0x000000010e41dbcb: mov    %r10,%rdi
  0x000000010e41dbce: add    %rcx,%rdi
  0x000000010e41dbd1: mov    %r10,%rbp
  0x000000010e41dbd4: shr    $0x3,%r11
  0x000000010e41dbd8: sub    %r11,%r8
  0x000000010e41dbdb: mov    %r8,%rcx
  0x000000010e41dbde: xor    %rax,%rax
  0x000000010e41dbe1: cmp    $0x8,%rcx
  0x000000010e41dbe5: jg     0x000000010e41dbf7
  0x000000010e41dbe7: dec    %rcx
  0x000000010e41dbea: js     0x000000010e41dbfe
  0x000000010e41dbec: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41dbf0: dec    %rcx
  0x000000010e41dbf3: jge    0x000000010e41dbec
  0x000000010e41dbf5: jmp    0x000000010e41dbfe
  0x000000010e41dbf7: shl    $0x3,%rcx
  0x000000010e41dbfb: rep rex.W stos %al,%es:(%rdi)
  0x000000010e41dbfe: mov    %rsi,%rdi
  0x000000010e41dc01: mov    %r9,%rsi
  0x000000010e41dc04: vzeroupper 
  0x000000010e41dc07: movabs $0x10e3c0c00,%r10
  0x000000010e41dc11: callq  *%r10              ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dc14: mov    0x10(%rsp),%ebx
  0x000000010e41dc18: mov    %rbp,%r10
  0x000000010e41dc1b: jmpq   0x000000010e41da2b
  0x000000010e41dc20: mov    0x14(%r14),%r11d   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterData::of@4 (line 80)
                                                ; - java.lang.Character::isDigit@1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e41dc24: test   %r11d,%r11d
  0x000000010e41dc27: je     0x000000010e41da36  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41dc2d: mov    0x38(%r15),%r8
  0x000000010e41dc31: mov    %r11,%rdi
  0x000000010e41dc34: shl    $0x3,%rdi          ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)

  0x000000010e41dc38: test   %r8,%r8
  0x000000010e41dc3b: je     0x000000010e41e136  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41dc41: mov    0x48(%r15),%r11
  0x000000010e41dc45: mov    %rdi,-0x8(%r11,%r8,1)  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41dc4a: add    $0xfffffffffffffff8,%r8  ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41dc4e: mov    %r8,0x38(%r15)     ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41dc52: jmpq   0x000000010e41da36
  0x000000010e41dc57: mov    $0xffffff4d,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dc5c: mov    %r11,%rbp
  0x000000010e41dc5f: mov    %rdx,(%rsp)
  0x000000010e41dc63: nop
  0x000000010e41dc64: vzeroupper 
  0x000000010e41dc67: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@61 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dc6c: ud2    
  0x000000010e41dc6e: mov    $0xffffff4d,%esi   ;*synchronization entry
                                                ; - java.lang.StringBuilder::toString@-1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dc73: mov    %r11,%rbp
  0x000000010e41dc76: mov    %rdx,(%rsp)
  0x000000010e41dc7a: xchg   %ax,%ax
  0x000000010e41dc7c: vzeroupper 
  0x000000010e41dc7f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@82 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dc84: ud2    
  0x000000010e41dc86: mov    $0xffffff4d,%esi   ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dc8b: mov    %r11,%rbp
  0x000000010e41dc8e: mov    %rdx,(%rsp)
  0x000000010e41dc92: xchg   %ax,%ax
  0x000000010e41dc94: vzeroupper 
  0x000000010e41dc97: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@103 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dc9c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e41dc9e: mov    $0xffffff4d,%esi   ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@13 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dca3: mov    %r11,%rbp
  0x000000010e41dca6: mov    %rdx,(%rsp)
  0x000000010e41dcaa: xchg   %ax,%ax
  0x000000010e41dcac: vzeroupper 
  0x000000010e41dcaf: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@124 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dcb4: ud2                       ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@9 (line 64)

  0x000000010e41dcb6: mov    $0xffffffe4,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dcbb: mov    %r11,%rbp
  0x000000010e41dcbe: mov    %rdx,(%rsp)
  0x000000010e41dcc2: mov    %r10d,0x8(%rsp)
  0x000000010e41dcc7: nop
  0x000000010e41dcc8: vzeroupper 
  0x000000010e41dccb: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dcd0: ud2    
  0x000000010e41dcd2: mov    $0xffffffe4,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dcd7: mov    %r11,%rbp
  0x000000010e41dcda: mov    %rdx,(%rsp)
  0x000000010e41dcde: mov    %r10d,0x8(%rsp)
  0x000000010e41dce3: nop
  0x000000010e41dce4: vzeroupper 
  0x000000010e41dce7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dcec: ud2                       ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41dcee: mov    $0xffffffe4,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dcf3: mov    %r11,%rbp
  0x000000010e41dcf6: mov    %rdx,(%rsp)
  0x000000010e41dcfa: mov    %r10d,0x8(%rsp)
  0x000000010e41dcff: nop
  0x000000010e41dd00: vzeroupper 
  0x000000010e41dd03: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd08: ud2    
  0x000000010e41dd0a: mov    $0xffffffe4,%esi   ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41dd0f: mov    %r11,%rbp
  0x000000010e41dd12: mov    %rdx,(%rsp)
  0x000000010e41dd16: mov    %r10d,0x8(%rsp)
  0x000000010e41dd1b: nop
  0x000000010e41dd1c: vzeroupper 
  0x000000010e41dd1f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd24: ud2    
  0x000000010e41dd26: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@3 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dd2b: mov    %r11,%rbp
  0x000000010e41dd2e: mov    %rdx,0x8(%rsp)
  0x000000010e41dd33: mov    %ecx,0x10(%rsp)
  0x000000010e41dd37: nop
  0x000000010e41dd38: vzeroupper 
  0x000000010e41dd3b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd40: ud2                       ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41dd42: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@3 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dd47: mov    %r11,(%rsp)
  0x000000010e41dd4b: mov    %rdx,0x8(%rsp)
  0x000000010e41dd50: vzeroupper 
  0x000000010e41dd53: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd58: ud2                       ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41dd5a: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@3 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dd5f: mov    %r11,%rbp
  0x000000010e41dd62: mov    %rdx,(%rsp)
  0x000000010e41dd66: mov    %r10d,0x8(%rsp)
  0x000000010e41dd6b: mov    %r8d,0xc(%rsp)
  0x000000010e41dd70: vzeroupper 
  0x000000010e41dd73: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd78: ud2                       ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41dd7a: mov    $0xffffff4d,%esi   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@7 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dd7f: mov    %r11,%rbp
  0x000000010e41dd82: mov    %rdx,0x8(%rsp)
  0x000000010e41dd87: mov    %ecx,0x10(%rsp)
  0x000000010e41dd8b: nop
  0x000000010e41dd8c: vzeroupper 
  0x000000010e41dd8f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dd94: ud2                       ;*synchronization entry
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@-1 (line 64)

  0x000000010e41dd96: mov    $0xffffff4d,%esi   ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dd9b: mov    %r11,(%rsp)
  0x000000010e41dd9f: mov    %rdx,0x8(%rsp)
  0x000000010e41dda4: vzeroupper 
  0x000000010e41dda7: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@58 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41ddac: ud2    
  0x000000010e41ddae: mov    $0xffffff4d,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41ddb3: mov    %r11,%rbp
  0x000000010e41ddb6: mov    %rdx,0x8(%rsp)
  0x000000010e41ddbb: mov    %ecx,0x10(%rsp)
  0x000000010e41ddbf: nop
  0x000000010e41ddc0: vzeroupper 
  0x000000010e41ddc3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41ddc8: ud2    
  0x000000010e41ddca: mov    $0xffffff4d,%esi   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@18 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41ddcf: mov    %r11,(%rsp)
  0x000000010e41ddd3: mov    %rdx,0x8(%rsp)
  0x000000010e41ddd8: vzeroupper 
  0x000000010e41dddb: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@79 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dde0: ud2    
  0x000000010e41dde2: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dde7: mov    %r11,%rbp
  0x000000010e41ddea: mov    %rdx,0x8(%rsp)
  0x000000010e41ddef: mov    %ecx,0x10(%rsp)
  0x000000010e41ddf3: nop
  0x000000010e41ddf4: vzeroupper 
  0x000000010e41ddf7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41ddfc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e41ddfe: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de03: mov    %r11,(%rsp)
  0x000000010e41de07: mov    %rdx,0x8(%rsp)
  0x000000010e41de0c: vzeroupper 
  0x000000010e41de0f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41de14: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e41de16: mov    $0xffffff4d,%esi   ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@8 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de1b: mov    %r11,%rbp
  0x000000010e41de1e: mov    %rdx,0x8(%rsp)
  0x000000010e41de23: mov    %ecx,0x10(%rsp)
  0x000000010e41de27: nop
  0x000000010e41de28: vzeroupper 
  0x000000010e41de2b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41de30: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e41de32: mov    $0xffffff4d,%esi   ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@13 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de37: mov    %r11,(%rsp)
  0x000000010e41de3b: mov    %rdx,0x8(%rsp)
  0x000000010e41de40: vzeroupper 
  0x000000010e41de43: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@121 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41de48: ud2                       ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@9 (line 64)

  0x000000010e41de4a: mov    $0xffffff4d,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de4f: mov    %r11,%rbp
  0x000000010e41de52: mov    %rdx,(%rsp)
  0x000000010e41de56: mov    %r10d,0x8(%rsp)
  0x000000010e41de5b: mov    %r8d,0xc(%rsp)
  0x000000010e41de60: vzeroupper 
  0x000000010e41de63: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41de68: ud2    
  0x000000010e41de6a: mov    $0xffffff4d,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de6f: mov    %r11,%rbp
  0x000000010e41de72: mov    %rdx,(%rsp)
  0x000000010e41de76: mov    %r10d,0x8(%rsp)
  0x000000010e41de7b: mov    %r8d,0xc(%rsp)
  0x000000010e41de80: vzeroupper 
  0x000000010e41de83: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41de88: ud2    
  0x000000010e41de8a: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41de8f: mov    %r11,%rbp
  0x000000010e41de92: mov    %rdx,(%rsp)
  0x000000010e41de96: mov    %r10d,0x8(%rsp)
  0x000000010e41de9b: mov    %r8d,0xc(%rsp)
  0x000000010e41dea0: vzeroupper 
  0x000000010e41dea3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dea8: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@1 (line 64)

  0x000000010e41deaa: mov    $0xffffff4d,%esi   ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@8 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41deaf: mov    %r11,%rbp
  0x000000010e41deb2: mov    %rdx,(%rsp)
  0x000000010e41deb6: mov    %r10d,0x8(%rsp)
  0x000000010e41debb: mov    %r8d,0xc(%rsp)
  0x000000010e41dec0: vzeroupper 
  0x000000010e41dec3: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@7 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dec8: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@9 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41deca: mov    %rdx,0x30(%rsp)
  0x000000010e41decf: mov    %r8,0x28(%rsp)
  0x000000010e41ded4: mov    %r11d,0x24(%rsp)
  0x000000010e41ded9: mov    %ebx,0x1c(%rsp)
  0x000000010e41dedd: mov    %r9d,0x18(%rsp)
  0x000000010e41dee2: mov    %r14,0x10(%rsp)
  0x000000010e41dee7: movabs $0x800000820,%rsi  ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {metadata({type array byte})}
  0x000000010e41def1: mov    %r11d,%edx
  0x000000010e41def4: vzeroupper 
  0x000000010e41def7: callq  0x000000010e3e9980  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }
                                                ;*newarray {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call _new_array_nozero_Java}
  0x000000010e41defc: mov    0x10(%rsp),%r14
  0x000000010e41df01: mov    0x18(%rsp),%r9d
  0x000000010e41df06: mov    0x1c(%rsp),%ebx
  0x000000010e41df0a: mov    0x24(%rsp),%r11d
  0x000000010e41df0f: mov    0x28(%rsp),%r8
  0x000000010e41df14: mov    0x30(%rsp),%rdx
  0x000000010e41df19: mov    %rax,%r10
  0x000000010e41df1c: jmpq   0x000000010e41d9cc
  0x000000010e41df21: mov    $0xfffffff6,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41df26: mov    %rdx,%rbp
  0x000000010e41df29: data16 xchg %ax,%ax
  0x000000010e41df2c: vzeroupper 
  0x000000010e41df2f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual error {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41df34: ud2                       ;*istore_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@9 (line 64)

  0x000000010e41df36: movslq %r10d,%rcx         ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41df39: jmpq   0x000000010e41d57f
  0x000000010e41df3e: movslq %r10d,%r8          ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41df41: jmpq   0x000000010e41d7d5
  0x000000010e41df46: add    $0xfffffffffffffffe,%r8
  0x000000010e41df4a: mov    %r8,%rcx
  0x000000010e41df4d: mov    %r9,%rdi
  0x000000010e41df50: xor    %rax,%rax
  0x000000010e41df53: cmp    $0x8,%rcx
  0x000000010e41df57: jg     0x000000010e41df69
  0x000000010e41df59: dec    %rcx
  0x000000010e41df5c: js     0x000000010e41df70
  0x000000010e41df5e: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41df62: dec    %rcx
  0x000000010e41df65: jge    0x000000010e41df5e
  0x000000010e41df67: jmp    0x000000010e41df70
  0x000000010e41df69: shl    $0x3,%rcx
  0x000000010e41df6d: rep rex.W stos %al,%es:(%rdi)  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@116 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41df70: jmpq   0x000000010e41d8af  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41df75: mov    $0xffffffcc,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@40 (line 66)

  0x000000010e41df7a: mov    (%rsp),%rbp
  0x000000010e41df7e: mov    0x20(%rsp),%r8d
  0x000000010e41df83: mov    %r8d,(%rsp)
  0x000000010e41df87: mov    %r14,0x18(%rsp)
  0x000000010e41df8c: mov    %ebx,0x4(%rsp)
  0x000000010e41df90: mov    %eax,0x20(%rsp)
  0x000000010e41df94: mov    %r9d,0x24(%rsp)
  0x000000010e41df99: mov    %r10d,0x28(%rsp)
  0x000000010e41df9e: mov    %edx,0x2c(%rsp)
  0x000000010e41dfa2: xchg   %ax,%ax
  0x000000010e41dfa4: vzeroupper 
  0x000000010e41dfa7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dfac: ud2                       ;*invokevirtual replace {reexecute=0 rethrow=0 return_oop=0}
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dfae: mov    $0xffffffcc,%esi   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@7 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dfb3: mov    %r10d,(%rsp)
  0x000000010e41dfb7: mov    %r11d,0x4(%rsp)
  0x000000010e41dfbc: vzeroupper 
  0x000000010e41dfbf: callq  0x000000010e3b3900  ; ImmutableOopMap{[4]=NarrowOop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@40 (line 4030)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dfc4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)

  0x000000010e41dfc6: mov    $0xffffff4d,%esi   ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41dfcb: mov    0x20(%rsp),%ecx
  0x000000010e41dfcf: mov    %ecx,0x10(%rsp)
  0x000000010e41dfd3: mov    %r14,0x20(%rsp)
  0x000000010e41dfd8: mov    %ebx,0x14(%rsp)
  0x000000010e41dfdc: mov    %r9d,0x28(%rsp)
  0x000000010e41dfe1: mov    %r10d,0x2c(%rsp)
  0x000000010e41dfe6: mov    %edi,0x34(%rsp)
  0x000000010e41dfea: mov    %r8d,0x38(%rsp)
  0x000000010e41dfef: nop
  0x000000010e41dff0: vzeroupper 
  0x000000010e41dff3: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@5 (line 3191)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41dff8: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41dffa: mov    $0xffffff4d,%esi   ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@8 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41dfff: mov    (%rsp),%rbp
  0x000000010e41e003: mov    0x8(%rsp),%r10
  0x000000010e41e008: mov    %r10,(%rsp)
  0x000000010e41e00c: mov    %ecx,0xc(%rsp)
  0x000000010e41e010: mov    %ecx,0x10(%rsp)
  0x000000010e41e014: vzeroupper 
  0x000000010e41e017: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::indexOf@21 (line 1711)
                                                ; - java.lang.String::indexOf@14 (line 1691)
                                                ; - java.lang.String::replace@126 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e01c: ud2    
  0x000000010e41e01e: mov    $0xffffff4d,%esi
  0x000000010e41e023: mov    %rax,(%rsp)
  0x000000010e41e027: nop
  0x000000010e41e028: vzeroupper 
  0x000000010e41e02b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e030: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41e032: mov    $0xffffff4d,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e037: mov    %ebx,0x4(%rsp)
  0x000000010e41e03b: nop
  0x000000010e41e03c: vzeroupper 
  0x000000010e41e03f: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@24 (line 2145)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e044: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@11 (line 65)

  0x000000010e41e046: mov    $0xffffff4d,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e04b: mov    %r10d,0x8(%rsp)
  0x000000010e41e050: vzeroupper 
  0x000000010e41e053: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@64 (line 2153)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e058: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@50 (line 67)

  0x000000010e41e05a: mov    $0xffffff4d,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@3 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e05f: mov    0x20(%rsp),%r9d
  0x000000010e41e064: mov    %r9d,0x10(%rsp)
  0x000000010e41e069: mov    %r14,0x20(%rsp)
  0x000000010e41e06e: mov    %ebx,0x14(%rsp)
  0x000000010e41e072: mov    %r14,0x28(%rsp)
  0x000000010e41e077: mov    %r10d,0x30(%rsp)
  0x000000010e41e07c: mov    %r8d,0x34(%rsp)
  0x000000010e41e081: mov    %edi,0x38(%rsp)
  0x000000010e41e085: data16 xchg %ax,%ax
  0x000000010e41e088: vzeroupper 
  0x000000010e41e08b: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=Oop }
                                                ;*if_icmpeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::putStringAt@8 (line 1664)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e090: ud2    
  0x000000010e41e092: mov    $0xffffff4d,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e097: mov    (%rsp),%rbp
  0x000000010e41e09b: mov    %ecx,0x4(%rsp)
  0x000000010e41e09f: mov    %r11d,0x10(%rsp)
  0x000000010e41e0a4: vzeroupper 
  0x000000010e41e0a7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@116 (line 2161)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e0ac: ud2                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@9 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41e0ae: mov    $0xffffff4d,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e0b3: mov    %r10d,(%rsp)
  0x000000010e41e0b7: mov    %r10d,0x4(%rsp)
  0x000000010e41e0bc: mov    %r11d,0x8(%rsp)
  0x000000010e41e0c1: data16 xchg %ax,%ax
  0x000000010e41e0c4: vzeroupper 
  0x000000010e41e0c7: callq  0x000000010e3b3900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@5 (line 4028)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e0cc: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41e0ce: movslq %r11d,%r8          ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@0 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41e0d1: jmpq   0x000000010e41d940
  0x000000010e41e0d6: add    $0xfffffffffffffffe,%r8
  0x000000010e41e0da: mov    %r8,%rcx
  0x000000010e41e0dd: xor    %rax,%rax
  0x000000010e41e0e0: cmp    $0x8,%rcx
  0x000000010e41e0e4: jg     0x000000010e41e0f6
  0x000000010e41e0e6: dec    %rcx
  0x000000010e41e0e9: js     0x000000010e41e0fd
  0x000000010e41e0eb: mov    %rax,(%rdi,%rcx,8)
  0x000000010e41e0ef: dec    %rcx
  0x000000010e41e0f2: jge    0x000000010e41e0eb
  0x000000010e41e0f4: jmp    0x000000010e41e0fd
  0x000000010e41e0f6: shl    $0x3,%rcx
  0x000000010e41e0fa: rep rex.W stos %al,%es:(%rdi)  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@81 (line 2156)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e0fd: jmpq   0x000000010e41da2b
  0x000000010e41e102: mov    $0xffffffcc,%esi   ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e107: mov    0x20(%rsp),%r10d
  0x000000010e41e10c: mov    %r10d,0x10(%rsp)
  0x000000010e41e111: mov    %r14,0x20(%rsp)
  0x000000010e41e116: mov    %ebx,0x14(%rsp)
  0x000000010e41e11a: mov    %r14,0x28(%rsp)
  0x000000010e41e11f: mov    %r9d,0x30(%rsp)
  0x000000010e41e124: mov    %r11d,0x38(%rsp)
  0x000000010e41e129: data16 xchg %ax,%ax
  0x000000010e41e12c: vzeroupper 
  0x000000010e41e12f: callq  0x000000010e3b3900  ; ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=Oop [48]=NarrowOop }
                                                ;*newarray {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOf@1 (line 3745)
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@32 (line 172)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e134: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41e136: mov    %r10,0x18(%rsp)
  0x000000010e41e13b: mov    %ebx,0x10(%rsp)    ;*invokestatic isDigit {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@100 (line 69)

  0x000000010e41e13f: mov    %r15,%rsi
  0x000000010e41e142: vzeroupper 
  0x000000010e41e145: movabs $0x104b038aa,%r10
  0x000000010e41e14f: callq  *%r10              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@118 (line 70)

  0x000000010e41e152: mov    0x10(%rsp),%ebx
  0x000000010e41e156: mov    0x18(%rsp),%r10
  0x000000010e41e15b: jmpq   0x000000010e41da36
  0x000000010e41e160: mov    $0xfffffff6,%esi   ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e165: data16 xchg %ax,%ax
  0x000000010e41e168: vzeroupper 
  0x000000010e41e16b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e170: ud2    
  0x000000010e41e172: mov    $0xfffffff6,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e177: nop
  0x000000010e41e178: vzeroupper 
  0x000000010e41e17b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.String::replace@56 (line 2152)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e180: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@11 (line 65)

  0x000000010e41e182: mov    $0xfffffff6,%esi   ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e187: nop
  0x000000010e41e188: vzeroupper 
  0x000000010e41e18b: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual append {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e190: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@11 (line 65)

  0x000000010e41e192: mov    $0xfffffff6,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e197: nop
  0x000000010e41e198: vzeroupper 
  0x000000010e41e19b: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - java.lang.AbstractStringBuilder::append@10 (line 537)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1a0: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41e1a2: mov    $0xfffffff6,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@3 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e1a7: nop
  0x000000010e41e1a8: vzeroupper 
  0x000000010e41e1ab: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 170)
                                                ; - java.lang.AbstractStringBuilder::append@21 (line 538)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1b0: ud2                       ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41e1b2: mov    $0xfffffff6,%esi   ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41e1b7: nop
  0x000000010e41e1b8: vzeroupper 
  0x000000010e41e1bb: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@21 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1c0: ud2                       ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@55 (line 67)

  0x000000010e41e1c2: mov    $0xfffffff6,%esi   ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e1c7: mov    %eax,%ebp
  0x000000010e41e1c9: mov    %r10d,(%rsp)
  0x000000010e41e1cd: mov    %edx,0x4(%rsp)
  0x000000010e41e1d1: data16 xchg %ax,%ax
  0x000000010e41e1d4: vzeroupper 
  0x000000010e41e1d7: callq  0x000000010e3b3900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::getBytes@22 (line 3192)
                                                ; - java.lang.AbstractStringBuilder::putStringAt@25 (line 1667)
                                                ; - java.lang.AbstractStringBuilder::append@30 (line 539)
                                                ; - java.lang.StringBuilder::append@2 (line 174)
                                                ; - java.lang.String::replace@101 (line 2159)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1dc: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@15 (line 65)

  0x000000010e41e1de: mov    $0xfffffff6,%esi   ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.AbstractStringBuilder::isLatin1@10 (line 1624)
                                                ; - java.lang.StringBuilder::toString@1 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e1e3: nop
  0x000000010e41e1e4: vzeroupper 
  0x000000010e41e1e7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*invokevirtual toString {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1ec: ud2                       ;*synchronization entry
                                                ; - java.lang.Character::isDigit@-1 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41e1ee: mov    $0xfffffff6,%esi   ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringBuilder::toString@4 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)

  0x000000010e41e1f3: nop
  0x000000010e41e1f4: vzeroupper 
  0x000000010e41e1f7: callq  0x000000010e3b3900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Arrays::copyOfRange@50 (line 4031)
                                                ; - java.lang.StringLatin1::newString@9 (line 715)
                                                ; - java.lang.StringBuilder::toString@16 (line 448)
                                                ; - java.lang.String::replace@145 (line 2162)
                                                ; - Logger::error@13 (line 5)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@144 (line 72)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e41e1fc: ud2                       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@76 (line 68)

  0x000000010e41e1fe: jmp    0x000000010e41e20f  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@4 (line 692)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41e200: mov    %rax,%rsi
  0x000000010e41e203: jmp    0x000000010e41e21c
  0x000000010e41e205: mov    %rax,%rsi
  0x000000010e41e208: jmp    0x000000010e41e21c
  0x000000010e41e20a: mov    %rax,%rsi
  0x000000010e41e20d: jmp    0x000000010e41e21c  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.CharacterDataLatin1::isDigit@3 (line 86)
                                                ; - java.lang.Character::isDigit@5 (line 9070)
                                                ; - java.lang.Character::isDigit@1 (line 9036)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@37 (line 66)

  0x000000010e41e20f: mov    %rax,%rsi
  0x000000010e41e212: jmp    0x000000010e41e21c  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@7 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41e214: mov    %rax,%rsi
  0x000000010e41e217: jmp    0x000000010e41e21c  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@34 (line 66)

  0x000000010e41e219: mov    %rax,%rsi          ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@19 (line 65)

  0x000000010e41e21c: vzeroupper 
  0x000000010e41e21f: add    $0x60,%rsp
  0x000000010e41e223: pop    %rbp
  0x000000010e41e224: jmpq   0x000000010e3ea700  ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - OptimizedProceduralZipCode::isZipCodeValid@97 (line 69)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e41e229: hlt    
  0x000000010e41e22a: hlt    
  0x000000010e41e22b: hlt    
  0x000000010e41e22c: hlt    
  0x000000010e41e22d: hlt    
  0x000000010e41e22e: hlt    
  0x000000010e41e22f: hlt    
  0x000000010e41e230: hlt    
  0x000000010e41e231: hlt    
  0x000000010e41e232: hlt    
  0x000000010e41e233: hlt    
  0x000000010e41e234: hlt    
  0x000000010e41e235: hlt    
  0x000000010e41e236: hlt    
  0x000000010e41e237: hlt    
  0x000000010e41e238: hlt    
  0x000000010e41e239: hlt    
  0x000000010e41e23a: hlt    
  0x000000010e41e23b: hlt    
  0x000000010e41e23c: hlt    
  0x000000010e41e23d: hlt    
  0x000000010e41e23e: hlt    
  0x000000010e41e23f: hlt    
[Stub Code]
  0x000000010e41e240: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e41e24a: jmpq   0x000000010e41e24a  ;   {runtime_call}
  0x000000010e41e24f: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010e41e259: jmpq   0x000000010e41e259  ;   {runtime_call}
  0x000000010e41e25e: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010e41e268: jmpq   0x000000010e41e268  ;   {runtime_call}
[Exception Handler]
  0x000000010e41e26d: jmpq   0x000000010e3e8680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e41e272: callq  0x000000010e41e277
  0x000000010e41e277: subq   $0x5,(%rsp)
  0x000000010e41e27c: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e41e281: hlt    
  0x000000010e41e282: hlt    
  0x000000010e41e283: hlt    
  0x000000010e41e284: hlt    
  0x000000010e41e285: hlt    
  0x000000010e41e286: hlt    
  0x000000010e41e287: hlt    

ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop }pc offsets: 1024 
ImmutableOopMap{}pc offsets: 1256 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=Oop [24]=NarrowOop }pc offsets: 1616 
ImmutableOopMap{rbp=Oop }pc offsets: 2184 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2216 
ImmutableOopMap{[4]=NarrowOop }pc offsets: 2264 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 2476 2500 2524 2548 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 2576 2604 2632 2660 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2688 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2712 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 2744 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2772 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2796 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2824 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2848 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2876 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2900 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 2928 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 2952 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 2984 3016 3048 3080 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop [24]=NarrowOop }pc offsets: 3132 
ImmutableOopMap{rbp=Oop }pc offsets: 3188 
ImmutableOopMap{rbp=Oop [8]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop }pc offsets: 3308 
ImmutableOopMap{[4]=NarrowOop }pc offsets: 3332 
ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=NarrowOop }pc offsets: 3384 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 3420 
ImmutableOopMap{[0]=Oop }pc offsets: 3440 
ImmutableOopMap{rbp=Oop }pc offsets: 3460 3480 
ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=Oop }pc offsets: 3536 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 3564 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 3596 
ImmutableOopMap{[0]=Oop [8]=Oop [32]=Oop [40]=Oop [48]=NarrowOop }pc offsets: 3700 
ImmutableOopMap{}pc offsets: 3760 3776 
ImmutableOopMap{rbp=Oop }pc offsets: 3792 
ImmutableOopMap{}pc offsets: 3808 3824 3840 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 3868 
ImmutableOopMap{}pc offsets: 3884 3900 Compiled method (c2)    3731  108             java.util.ArrayList::iterator (9 bytes)
 total in heap  [0x000000010e413090,0x000000010e413420] = 912
 relocation     [0x000000010e413208,0x000000010e413220] = 24
 main code      [0x000000010e413220,0x000000010e413300] = 224
 stub code      [0x000000010e413300,0x000000010e413318] = 24
 metadata       [0x000000010e413318,0x000000010e413330] = 24
 scopes data    [0x000000010e413330,0x000000010e413360] = 48
 scopes pcs     [0x000000010e413360,0x000000010e413400] = 160
 dependencies   [0x000000010e413400,0x000000010e413408] = 8
 handler table  [0x000000010e413408,0x000000010e413420] = 24
----------------------------------------------------------------------
java/util/ArrayList.iterator()Ljava/util/Iterator;  [0x000000010e413220, 0x000000010e413318]  248 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011cdc1790} 'iterator' '()Ljava/util/Iterator;' in 'java/util/ArrayList'
  #           [sp+0x20]  (sp of caller)
  0x000000010e413220: mov    0x8(%rsi),%r10d
  0x000000010e413224: movabs $0x800000000,%r12
  0x000000010e41322e: add    %r12,%r10
  0x000000010e413231: xor    %r12,%r12
  0x000000010e413234: cmp    %r10,%rax
  0x000000010e413237: jne    0x000000010e3b1c80  ;   {runtime_call ic_miss_stub}
  0x000000010e41323d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e413240: mov    %eax,-0x14000(%rsp)
  0x000000010e413247: push   %rbp
  0x000000010e413248: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.util.ArrayList::iterator@-1 (line 976)

  0x000000010e41324c: mov    %rsi,%rbp
  0x000000010e41324f: mov    0x118(%r15),%rax
  0x000000010e413256: mov    %rax,%r10
  0x000000010e413259: add    $0x20,%r10
  0x000000010e41325d: cmp    0x128(%r15),%r10
  0x000000010e413264: jae    0x000000010e4132d1
  0x000000010e413266: mov    %r10,0x118(%r15)
  0x000000010e41326d: prefetchnta 0xc0(%r10)
  0x000000010e413275: mov    $0x3efb0,%r11d     ;   {metadata('java/util/ArrayList$Itr')}
  0x000000010e41327b: movabs $0x800000000,%r10
  0x000000010e413285: add    %r11,%r10
  0x000000010e413288: mov    0xb8(%r10),%r10
  0x000000010e41328f: mov    %r10,(%rax)
  0x000000010e413292: movl   $0x3efb0,0x8(%rax)  ;   {metadata('java/util/ArrayList$Itr')}
  0x000000010e413299: movl   $0x0,0xc(%rax)
  0x000000010e4132a0: movl   $0x0,0x1c(%rax)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::iterator@0 (line 976)

  0x000000010e4132a7: movl   $0xffffffff,0x10(%rax)  ;*putfield lastRet {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::<init>@11 (line 984)
                                                ; - java.util.ArrayList::iterator@5 (line 976)

  0x000000010e4132ae: mov    0xc(%rbp),%r11d    ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::<init>@19 (line 985)
                                                ; - java.util.ArrayList::iterator@5 (line 976)

  0x000000010e4132b2: mov    %r11d,0x14(%rax)   ;*putfield expectedModCount {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList$Itr::<init>@22 (line 985)
                                                ; - java.util.ArrayList::iterator@5 (line 976)

  0x000000010e4132b6: mov    %rbp,%r10
  0x000000010e4132b9: shr    $0x3,%r10
  0x000000010e4132bd: mov    %r10d,0x18(%rax)   ;*synchronization entry
                                                ; - java.util.ArrayList::iterator@-1 (line 976)

  0x000000010e4132c1: add    $0x10,%rsp
  0x000000010e4132c5: pop    %rbp
  0x000000010e4132c6: mov    0x108(%r15),%r10
  0x000000010e4132cd: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e4132d0: retq   
  0x000000010e4132d1: movabs $0x80003efb0,%rsi  ;   {metadata('java/util/ArrayList$Itr')}
  0x000000010e4132db: callq  0x000000010e3e8380  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.ArrayList::iterator@0 (line 976)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e4132e0: jmp    0x000000010e4132a7  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.ArrayList::iterator@0 (line 976)

  0x000000010e4132e2: mov    %rax,%rsi
  0x000000010e4132e5: add    $0x10,%rsp
  0x000000010e4132e9: pop    %rbp
  0x000000010e4132ea: jmpq   0x000000010e3ea700  ;   {runtime_call _rethrow_Java}
  0x000000010e4132ef: hlt    
  0x000000010e4132f0: hlt    
  0x000000010e4132f1: hlt    
  0x000000010e4132f2: hlt    
  0x000000010e4132f3: hlt    
  0x000000010e4132f4: hlt    
  0x000000010e4132f5: hlt    
  0x000000010e4132f6: hlt    
  0x000000010e4132f7: hlt    
  0x000000010e4132f8: hlt    
  0x000000010e4132f9: hlt    
  0x000000010e4132fa: hlt    
  0x000000010e4132fb: hlt    
  0x000000010e4132fc: hlt    
  0x000000010e4132fd: hlt    
  0x000000010e4132fe: hlt    
  0x000000010e4132ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e413300: jmpq   0x000000010e3e8680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e413305: callq  0x000000010e41330a
  0x000000010e41330a: subq   $0x5,(%rsp)
  0x000000010e41330f: jmpq   0x000000010e3b3520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e413314: hlt    
  0x000000010e413315: hlt    
  0x000000010e413316: hlt    
  0x000000010e413317: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 192 Test phase
Time elapsed: 0.315 ms valid codes = 6000

