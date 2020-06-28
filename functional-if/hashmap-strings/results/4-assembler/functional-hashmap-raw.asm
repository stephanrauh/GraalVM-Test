Compiled method (c2)      51    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x00000001063b1e90,0x00000001063b2430] = 1440
 relocation     [0x00000001063b2008,0x00000001063b2018] = 16
 main code      [0x00000001063b2020,0x00000001063b21e0] = 448
 stub code      [0x00000001063b21e0,0x00000001063b21f8] = 24
 metadata       [0x00000001063b21f8,0x00000001063b2200] = 8
 scopes data    [0x00000001063b2200,0x00000001063b2288] = 136
 scopes pcs     [0x00000001063b2288,0x00000001063b2418] = 400
 dependencies   [0x00000001063b2418,0x00000001063b2420] = 8
 nul chk table  [0x00000001063b2420,0x00000001063b2430] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x00000001063b2020, 0x00000001063b21f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d97ba98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x00000001063b2020: mov    %eax,-0x14000(%rsp)
  0x00000001063b2027: push   %rbp
  0x00000001063b2028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x00000001063b202c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x00000001063b21c2
  0x00000001063b2030: test   %r10d,%r10d
  0x00000001063b2033: jbe    0x00000001063b21a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001063b2039: mov    %r10d,%r8d
  0x00000001063b203c: dec    %r8d
  0x00000001063b203f: cmp    %r10d,%r8d
  0x00000001063b2042: jae    0x00000001063b21ad
  0x00000001063b2048: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x00000001063b204d: mov    %r10d,%edx
  0x00000001063b2050: add    $0xfffffff9,%edx
  0x00000001063b2053: mov    $0x80000000,%ecx
  0x00000001063b2058: cmp    %edx,%r8d
  0x00000001063b205b: cmovl  %ecx,%edx
  0x00000001063b205e: mov    $0x1,%ecx
  0x00000001063b2063: cmp    $0x1,%edx
  0x00000001063b2066: jle    0x00000001063b218d
  0x00000001063b206c: mov    %r9d,%r11d
  0x00000001063b206f: shl    $0x5,%r11d
  0x00000001063b2073: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x00000001063b2076: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x00000001063b207b: jmp    0x00000001063b20a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x00000001063b207d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x00000001063b2083: mov    %r9d,%eax
  0x00000001063b2086: shl    $0x5,%eax
  0x00000001063b2089: sub    %r9d,%eax
  0x00000001063b208c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x00000001063b208f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x00000001063b2091: cmp    %r10d,%ecx
  0x00000001063b2094: jge    0x00000001063b2199  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001063b209a: mov    %eax,%r9d
  0x00000001063b209d: jmp    0x00000001063b207d
  0x00000001063b209f: vmovq  %xmm0,%rsi
  0x00000001063b20a4: vmovd  %xmm2,%r10d
  0x00000001063b20a9: mov    %edx,%ebp
  0x00000001063b20ab: sub    %ecx,%ebp
  0x00000001063b20ad: cmp    %edi,%ebp
  0x00000001063b20af: cmovg  %edi,%ebp
  0x00000001063b20b2: add    %ecx,%ebp
  0x00000001063b20b4: vmovq  %rsi,%xmm0
  0x00000001063b20b9: vmovd  %r10d,%xmm2
  0x00000001063b20be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x00000001063b20c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x00000001063b20c3: vmovq  %xmm0,%r8
  0x00000001063b20c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x00000001063b20ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x00000001063b20d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x00000001063b20da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x00000001063b20e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x00000001063b20e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x00000001063b20ec: add    %r14d,%r11d
  0x00000001063b20ef: vmovq  %xmm0,%rbx
  0x00000001063b20f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x00000001063b20f9: vmovq  %xmm0,%r14
  0x00000001063b20fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x00000001063b2104: mov    %r11d,%r14d
  0x00000001063b2107: shl    $0x5,%r14d
  0x00000001063b210b: sub    %r11d,%r14d
  0x00000001063b210e: add    %r13d,%r14d
  0x00000001063b2111: mov    %r14d,%r11d
  0x00000001063b2114: shl    $0x5,%r11d
  0x00000001063b2118: sub    %r14d,%r11d
  0x00000001063b211b: add    %ebx,%r11d
  0x00000001063b211e: mov    %r11d,%ebx
  0x00000001063b2121: shl    $0x5,%ebx
  0x00000001063b2124: sub    %r11d,%ebx
  0x00000001063b2127: add    %esi,%ebx
  0x00000001063b2129: mov    %ebx,%r11d
  0x00000001063b212c: shl    $0x5,%r11d
  0x00000001063b2130: sub    %ebx,%r11d
  0x00000001063b2133: add    %r8d,%r11d
  0x00000001063b2136: mov    %r11d,%ebx
  0x00000001063b2139: shl    $0x5,%ebx
  0x00000001063b213c: sub    %r11d,%ebx
  0x00000001063b213f: add    %r9d,%ebx
  0x00000001063b2142: mov    %ebx,%r8d
  0x00000001063b2145: shl    $0x5,%r8d
  0x00000001063b2149: sub    %ebx,%r8d
  0x00000001063b214c: add    %r10d,%r8d
  0x00000001063b214f: mov    %r8d,%r9d
  0x00000001063b2152: shl    $0x5,%r9d
  0x00000001063b2156: sub    %r8d,%r9d
  0x00000001063b2159: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x00000001063b215c: mov    %r9d,%r11d
  0x00000001063b215f: shl    $0x5,%r11d
  0x00000001063b2163: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x00000001063b2166: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x00000001063b2169: cmp    %ebp,%ecx
  0x00000001063b216b: jl     0x00000001063b20c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001063b2171: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x00000001063b2178: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x00000001063b217b: cmp    %edx,%ecx
  0x00000001063b217d: jl     0x00000001063b209f
  0x00000001063b2183: vmovq  %xmm0,%rsi
  0x00000001063b2188: vmovd  %xmm2,%r10d
  0x00000001063b218d: cmp    %r10d,%ecx
  0x00000001063b2190: jl     0x00000001063b207d
  0x00000001063b2196: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001063b2199: add    $0x20,%rsp
  0x00000001063b219d: pop    %rbp
  0x00000001063b219e: mov    0x108(%r15),%r10
  0x00000001063b21a5: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063b21a8: retq   
  0x00000001063b21a9: xor    %eax,%eax
  0x00000001063b21ab: jmp    0x00000001063b2199
  0x00000001063b21ad: mov    %rsi,%rbp
  0x00000001063b21b0: mov    %r10d,0x4(%rsp)
  0x00000001063b21b5: mov    $0xffffff7e,%esi
  0x00000001063b21ba: nop
  0x00000001063b21bb: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063b21c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001063b21c2: mov    $0xfffffff6,%esi
  0x00000001063b21c7: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063b21cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x00000001063b21ce: hlt    
  0x00000001063b21cf: hlt    
  0x00000001063b21d0: hlt    
  0x00000001063b21d1: hlt    
  0x00000001063b21d2: hlt    
  0x00000001063b21d3: hlt    
  0x00000001063b21d4: hlt    
  0x00000001063b21d5: hlt    
  0x00000001063b21d6: hlt    
  0x00000001063b21d7: hlt    
  0x00000001063b21d8: hlt    
  0x00000001063b21d9: hlt    
  0x00000001063b21da: hlt    
  0x00000001063b21db: hlt    
  0x00000001063b21dc: hlt    
  0x00000001063b21dd: hlt    
  0x00000001063b21de: hlt    
  0x00000001063b21df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063b21e0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063b21e5: callq  0x00000001063b21ea
  0x00000001063b21ea: subq   $0x5,(%rsp)
  0x00000001063b21ef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063b21f4: hlt    
  0x00000001063b21f5: hlt    
  0x00000001063b21f6: hlt    
  0x00000001063b21f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bad20, 0x00000001063bad48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011db821e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x00000001063bad20: mov    0x8(%rsp),%rbx
  0x00000001063bad25: mov    0x24(%rbx),%ebx
  0x00000001063bad28: shl    $0x3,%rbx
  0x00000001063bad2c: mov    0x10(%rbx),%rbx
  0x00000001063bad30: test   %rbx,%rbx
  0x00000001063bad33: je     0x00000001063bad3c
  0x00000001063bad39: jmpq   *0x38(%rbx)
  0x00000001063bad3c: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bad41: hlt    
  0x00000001063bad42: hlt    
  0x00000001063bad43: hlt    
  0x00000001063bad44: hlt    
  0x00000001063bad45: hlt    
  0x00000001063bad46: hlt    
  0x00000001063bad47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bb6a0, 0x00000001063bb6c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011db9be58} 'linkToStatic' '(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bb6a0: mov    0x24(%rdx),%ebx
  0x00000001063bb6a3: shl    $0x3,%rbx
  0x00000001063bb6a7: mov    0x10(%rbx),%rbx
  0x00000001063bb6ab: test   %rbx,%rbx
  0x00000001063bb6ae: je     0x00000001063bb6b7
  0x00000001063bb6b4: jmpq   *0x38(%rbx)
  0x00000001063bb6b7: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bb6bc: hlt    
  0x00000001063bb6bd: hlt    
  0x00000001063bb6be: hlt    
  0x00000001063bb6bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063bb8a0, 0x00000001063bb8d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dba4a30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x00000001063bb8a0: mov    0x14(%rsi),%ebx
  0x00000001063bb8a3: shl    $0x3,%rbx
  0x00000001063bb8a7: mov    0x28(%rbx),%ebx
  0x00000001063bb8aa: shl    $0x3,%rbx
  0x00000001063bb8ae: mov    0x24(%rbx),%ebx
  0x00000001063bb8b1: shl    $0x3,%rbx
  0x00000001063bb8b5: mov    0x10(%rbx),%rbx
  0x00000001063bb8b9: test   %rbx,%rbx
  0x00000001063bb8bc: je     0x00000001063bb8c5
  0x00000001063bb8c2: jmpq   *0x38(%rbx)
  0x00000001063bb8c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bb8ca: hlt    
  0x00000001063bb8cb: hlt    
  0x00000001063bb8cc: hlt    
  0x00000001063bb8cd: hlt    
  0x00000001063bb8ce: hlt    
  0x00000001063bb8cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bbaa0, 0x00000001063bbac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dba4be8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x00000001063bbaa0: mov    0x10(%rsp),%rbx
  0x00000001063bbaa5: cmp    (%rsi),%rax
  0x00000001063bbaa8: mov    0x24(%rbx),%ebx
  0x00000001063bbaab: shl    $0x3,%rbx
  0x00000001063bbaaf: mov    0x10(%rbx),%rbx
  0x00000001063bbab3: test   %rbx,%rbx
  0x00000001063bbab6: je     0x00000001063bbabf
  0x00000001063bbabc: jmpq   *0x38(%rbx)
  0x00000001063bbabf: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bbac4: hlt    
  0x00000001063bbac5: hlt    
  0x00000001063bbac6: hlt    
  0x00000001063bbac7: hlt    
Compiled method (c2)      98    6             java.lang.Object::<init> (1 bytes)
 total in heap  [0x00000001063be910,0x00000001063beb48] = 568
 relocation     [0x00000001063bea88,0x00000001063bea98] = 16
 main code      [0x00000001063beaa0,0x00000001063beae0] = 64
 stub code      [0x00000001063beae0,0x00000001063beaf8] = 24
 metadata       [0x00000001063beaf8,0x00000001063beb08] = 16
 scopes data    [0x00000001063beb08,0x00000001063beb10] = 8
 scopes pcs     [0x00000001063beb10,0x00000001063beb40] = 48
 dependencies   [0x00000001063beb40,0x00000001063beb48] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x00000001063beaa0, 0x00000001063beaf8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d822610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x00000001063beaa0: mov    0x8(%rsi),%r10d
  0x00000001063beaa4: movabs $0x800000000,%r12
  0x00000001063beaae: add    %r12,%r10
  0x00000001063beab1: xor    %r12,%r12
  0x00000001063beab4: cmp    %r10,%rax
  0x00000001063beab7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063beabd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063beac0: sub    $0x18,%rsp
  0x00000001063beac7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x00000001063beacc: add    $0x10,%rsp
  0x00000001063bead0: pop    %rbp
  0x00000001063bead1: mov    0x108(%r15),%r10
  0x00000001063bead8: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063beadb: retq   
  0x00000001063beadc: hlt    
  0x00000001063beadd: hlt    
  0x00000001063beade: hlt    
  0x00000001063beadf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063beae0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063beae5: callq  0x00000001063beaea
  0x00000001063beaea: subq   $0x5,(%rsp)
  0x00000001063beaef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063beaf4: hlt    
  0x00000001063beaf5: hlt    
  0x00000001063beaf6: hlt    
  0x00000001063beaf7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(I)Ljava/lang/Object;  [0x00000001063bd220, 0x00000001063bd250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbdbf00} 'invokeBasic' '(I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x00000001063bd220: mov    0x14(%rsi),%ebx
  0x00000001063bd223: shl    $0x3,%rbx
  0x00000001063bd227: mov    0x28(%rbx),%ebx
  0x00000001063bd22a: shl    $0x3,%rbx
  0x00000001063bd22e: mov    0x24(%rbx),%ebx
  0x00000001063bd231: shl    $0x3,%rbx
  0x00000001063bd235: mov    0x10(%rbx),%rbx
  0x00000001063bd239: test   %rbx,%rbx
  0x00000001063bd23c: je     0x00000001063bd245
  0x00000001063bd242: jmpq   *0x38(%rbx)
  0x00000001063bd245: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bd24a: hlt    
  0x00000001063bd24b: hlt    
  0x00000001063bd24c: hlt    
  0x00000001063bd24d: hlt    
  0x00000001063bd24e: hlt    
  0x00000001063bd24f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bd020, 0x00000001063bd040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbdc018} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bd020: cmp    (%rsi),%rax
  0x00000001063bd023: mov    0x24(%rcx),%ebx
  0x00000001063bd026: shl    $0x3,%rbx
  0x00000001063bd02a: mov    0x10(%rbx),%rbx
  0x00000001063bd02e: test   %rbx,%rbx
  0x00000001063bd031: je     0x00000001063bd03a
  0x00000001063bd037: jmpq   *0x38(%rbx)
  0x00000001063bd03a: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bd03f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bce20, 0x00000001063bce40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbe0040} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bce20: mov    0x24(%rdi),%ebx
  0x00000001063bce23: shl    $0x3,%rbx
  0x00000001063bce27: mov    0x10(%rbx),%rbx
  0x00000001063bce2b: test   %rbx,%rbx
  0x00000001063bce2e: je     0x00000001063bce37
  0x00000001063bce34: jmpq   *0x38(%rbx)
  0x00000001063bce37: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bce3c: hlt    
  0x00000001063bce3d: hlt    
  0x00000001063bce3e: hlt    
  0x00000001063bce3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063bc9a0, 0x00000001063bc9d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf0ab8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bc9a0: mov    0x14(%rsi),%ebx
  0x00000001063bc9a3: shl    $0x3,%rbx
  0x00000001063bc9a7: mov    0x28(%rbx),%ebx
  0x00000001063bc9aa: shl    $0x3,%rbx
  0x00000001063bc9ae: mov    0x24(%rbx),%ebx
  0x00000001063bc9b1: shl    $0x3,%rbx
  0x00000001063bc9b5: mov    0x10(%rbx),%rbx
  0x00000001063bc9b9: test   %rbx,%rbx
  0x00000001063bc9bc: je     0x00000001063bc9c5
  0x00000001063bc9c2: jmpq   *0x38(%rbx)
  0x00000001063bc9c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bc9ca: hlt    
  0x00000001063bc9cb: hlt    
  0x00000001063bc9cc: hlt    
  0x00000001063bc9cd: hlt    
  0x00000001063bc9ce: hlt    
  0x00000001063bc9cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bc7a0, 0x00000001063bc7c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf0bd0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x00000001063bc7a0: mov    0x8(%rsp),%rbx
  0x00000001063bc7a5: cmp    (%rsi),%rax
  0x00000001063bc7a8: mov    0x24(%rbx),%ebx
  0x00000001063bc7ab: shl    $0x3,%rbx
  0x00000001063bc7af: mov    0x10(%rbx),%rbx
  0x00000001063bc7b3: test   %rbx,%rbx
  0x00000001063bc7b6: je     0x00000001063bc7bf
  0x00000001063bc7bc: jmpq   *0x38(%rbx)
  0x00000001063bc7bf: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bc7c4: hlt    
  0x00000001063bc7c5: hlt    
  0x00000001063bc7c6: hlt    
  0x00000001063bc7c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x00000001063bbfa0, 0x00000001063bbfc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf8f78} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bbfa0: mov    0x24(%rsi),%ebx
  0x00000001063bbfa3: shl    $0x3,%rbx
  0x00000001063bbfa7: mov    0x10(%rbx),%rbx
  0x00000001063bbfab: test   %rbx,%rbx
  0x00000001063bbfae: je     0x00000001063bbfb7
  0x00000001063bbfb4: jmpq   *0x38(%rbx)
  0x00000001063bbfb7: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bbfbc: hlt    
  0x00000001063bbfbd: hlt    
  0x00000001063bbfbe: hlt    
  0x00000001063bbfbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x00000001063bbca0, 0x00000001063bbcd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf9090} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bbca0: mov    0x14(%rsi),%ebx
  0x00000001063bbca3: shl    $0x3,%rbx
  0x00000001063bbca7: mov    0x28(%rbx),%ebx
  0x00000001063bbcaa: shl    $0x3,%rbx
  0x00000001063bbcae: mov    0x24(%rbx),%ebx
  0x00000001063bbcb1: shl    $0x3,%rbx
  0x00000001063bbcb5: mov    0x10(%rbx),%rbx
  0x00000001063bbcb9: test   %rbx,%rbx
  0x00000001063bbcbc: je     0x00000001063bbcc5
  0x00000001063bbcc2: jmpq   *0x38(%rbx)
  0x00000001063bbcc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bbcca: hlt    
  0x00000001063bbccb: hlt    
  0x00000001063bbccc: hlt    
  0x00000001063bbccd: hlt    
  0x00000001063bbcce: hlt    
  0x00000001063bbccf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001063bed20, 0x00000001063bed40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf91a8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bed20: cmp    (%rsi),%rax
  0x00000001063bed23: mov    0x24(%rdx),%ebx
  0x00000001063bed26: shl    $0x3,%rbx
  0x00000001063bed2a: mov    0x10(%rbx),%rbx
  0x00000001063bed2e: test   %rbx,%rbx
  0x00000001063bed31: je     0x00000001063bed3a
  0x00000001063bed37: jmpq   *0x38(%rbx)
  0x00000001063bed3a: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bed3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bef20, 0x00000001063bef40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf9450} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bef20: mov    0x24(%r8),%ebx
  0x00000001063bef24: shl    $0x3,%rbx
  0x00000001063bef28: mov    0x10(%rbx),%rbx
  0x00000001063bef2c: test   %rbx,%rbx
  0x00000001063bef2f: je     0x00000001063bef38
  0x00000001063bef35: jmpq   *0x38(%rbx)
  0x00000001063bef38: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bef3d: hlt    
  0x00000001063bef3e: hlt    
  0x00000001063bef3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bf120, 0x00000001063bf140]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dbf9568} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bf120: mov    0x24(%rcx),%ebx
  0x00000001063bf123: shl    $0x3,%rbx
  0x00000001063bf127: mov    0x10(%rbx),%rbx
  0x00000001063bf12b: test   %rbx,%rbx
  0x00000001063bf12e: je     0x00000001063bf137
  0x00000001063bf134: jmpq   *0x38(%rbx)
  0x00000001063bf137: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bf13c: hlt    
  0x00000001063bf13d: hlt    
  0x00000001063bf13e: hlt    
  0x00000001063bf13f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bf520, 0x00000001063bf540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc012a0} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bf520: mov    0x24(%rsi),%ebx
  0x00000001063bf523: shl    $0x3,%rbx
  0x00000001063bf527: mov    0x10(%rbx),%rbx
  0x00000001063bf52b: test   %rbx,%rbx
  0x00000001063bf52e: je     0x00000001063bf537
  0x00000001063bf534: jmpq   *0x38(%rbx)
  0x00000001063bf537: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bf53c: hlt    
  0x00000001063bf53d: hlt    
  0x00000001063bf53e: hlt    
  0x00000001063bf53f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063bf720, 0x00000001063bf740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc01688} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063bf720: mov    0x24(%rdx),%ebx
  0x00000001063bf723: shl    $0x3,%rbx
  0x00000001063bf727: mov    0x10(%rbx),%rbx
  0x00000001063bf72b: test   %rbx,%rbx
  0x00000001063bf72e: je     0x00000001063bf737
  0x00000001063bf734: jmpq   *0x38(%rbx)
  0x00000001063bf737: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063bf73c: hlt    
  0x00000001063bf73d: hlt    
  0x00000001063bf73e: hlt    
  0x00000001063bf73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c00a0, 0x00000001063c00c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc132f0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c00a0: mov    0x24(%rcx),%ebx
  0x00000001063c00a3: shl    $0x3,%rbx
  0x00000001063c00a7: mov    0x10(%rbx),%rbx
  0x00000001063c00ab: test   %rbx,%rbx
  0x00000001063c00ae: je     0x00000001063c00b7
  0x00000001063c00b4: jmpq   *0x38(%rbx)
  0x00000001063c00b7: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c00bc: hlt    
  0x00000001063c00bd: hlt    
  0x00000001063c00be: hlt    
  0x00000001063c00bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c02a0, 0x00000001063c02c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc14bf0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c02a0: mov    0x24(%r8),%ebx
  0x00000001063c02a4: shl    $0x3,%rbx
  0x00000001063c02a8: mov    0x10(%rbx),%rbx
  0x00000001063c02ac: test   %rbx,%rbx
  0x00000001063c02af: je     0x00000001063c02b8
  0x00000001063c02b5: jmpq   *0x38(%rbx)
  0x00000001063c02b8: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c02bd: hlt    
  0x00000001063c02be: hlt    
  0x00000001063c02bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x00000001063c04a0, 0x00000001063c04d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc17758} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x00000001063c04a0: mov    0x14(%rsi),%ebx
  0x00000001063c04a3: shl    $0x3,%rbx
  0x00000001063c04a7: mov    0x28(%rbx),%ebx
  0x00000001063c04aa: shl    $0x3,%rbx
  0x00000001063c04ae: mov    0x24(%rbx),%ebx
  0x00000001063c04b1: shl    $0x3,%rbx
  0x00000001063c04b5: mov    0x10(%rbx),%rbx
  0x00000001063c04b9: test   %rbx,%rbx
  0x00000001063c04bc: je     0x00000001063c04c5
  0x00000001063c04c2: jmpq   *0x38(%rbx)
  0x00000001063c04c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c04ca: hlt    
  0x00000001063c04cb: hlt    
  0x00000001063c04cc: hlt    
  0x00000001063c04cd: hlt    
  0x00000001063c04ce: hlt    
  0x00000001063c04cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c06a0, 0x00000001063c06c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc17870} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c06a0: cmp    (%rsi),%rax
  0x00000001063c06a3: mov    0x24(%r9),%ebx
  0x00000001063c06a7: shl    $0x3,%rbx
  0x00000001063c06ab: mov    0x10(%rbx),%rbx
  0x00000001063c06af: test   %rbx,%rbx
  0x00000001063c06b2: je     0x00000001063c06bb
  0x00000001063c06b8: jmpq   *0x38(%rbx)
  0x00000001063c06bb: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001063c1020, 0x00000001063c1040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc31450} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1020: mov    0x24(%r9),%ebx
  0x00000001063c1024: shl    $0x3,%rbx
  0x00000001063c1028: mov    0x10(%rbx),%rbx
  0x00000001063c102c: test   %rbx,%rbx
  0x00000001063c102f: je     0x00000001063c1038
  0x00000001063c1035: jmpq   *0x38(%rbx)
  0x00000001063c1038: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c103d: hlt    
  0x00000001063c103e: hlt    
  0x00000001063c103f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x00000001063c1220, 0x00000001063c1250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc31658} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1220: mov    0x14(%rsi),%ebx
  0x00000001063c1223: shl    $0x3,%rbx
  0x00000001063c1227: mov    0x28(%rbx),%ebx
  0x00000001063c122a: shl    $0x3,%rbx
  0x00000001063c122e: mov    0x24(%rbx),%ebx
  0x00000001063c1231: shl    $0x3,%rbx
  0x00000001063c1235: mov    0x10(%rbx),%rbx
  0x00000001063c1239: test   %rbx,%rbx
  0x00000001063c123c: je     0x00000001063c1245
  0x00000001063c1242: jmpq   *0x38(%rbx)
  0x00000001063c1245: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c124a: hlt    
  0x00000001063c124b: hlt    
  0x00000001063c124c: hlt    
  0x00000001063c124d: hlt    
  0x00000001063c124e: hlt    
  0x00000001063c124f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001063c1420, 0x00000001063c1440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc31770} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1420: cmp    (%rsi),%rax
  0x00000001063c1423: mov    0x24(%rdi),%ebx
  0x00000001063c1426: shl    $0x3,%rbx
  0x00000001063c142a: mov    0x10(%rbx),%rbx
  0x00000001063c142e: test   %rbx,%rbx
  0x00000001063c1431: je     0x00000001063c143a
  0x00000001063c1437: jmpq   *0x38(%rbx)
  0x00000001063c143a: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c143f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c1620, 0x00000001063c1640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc32870} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1620: mov    0x24(%r9),%ebx
  0x00000001063c1624: shl    $0x3,%rbx
  0x00000001063c1628: mov    0x10(%rbx),%rbx
  0x00000001063c162c: test   %rbx,%rbx
  0x00000001063c162f: je     0x00000001063c1638
  0x00000001063c1635: jmpq   *0x38(%rbx)
  0x00000001063c1638: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c163d: hlt    
  0x00000001063c163e: hlt    
  0x00000001063c163f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c1820, 0x00000001063c1850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc32c08} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1820: mov    0x14(%rsi),%ebx
  0x00000001063c1823: shl    $0x3,%rbx
  0x00000001063c1827: mov    0x28(%rbx),%ebx
  0x00000001063c182a: shl    $0x3,%rbx
  0x00000001063c182e: mov    0x24(%rbx),%ebx
  0x00000001063c1831: shl    $0x3,%rbx
  0x00000001063c1835: mov    0x10(%rbx),%rbx
  0x00000001063c1839: test   %rbx,%rbx
  0x00000001063c183c: je     0x00000001063c1845
  0x00000001063c1842: jmpq   *0x38(%rbx)
  0x00000001063c1845: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c184a: hlt    
  0x00000001063c184b: hlt    
  0x00000001063c184c: hlt    
  0x00000001063c184d: hlt    
  0x00000001063c184e: hlt    
  0x00000001063c184f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x00000001063c1a20, 0x00000001063c1a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc334f8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1a20: mov    0x14(%rsi),%ebx
  0x00000001063c1a23: shl    $0x3,%rbx
  0x00000001063c1a27: mov    0x28(%rbx),%ebx
  0x00000001063c1a2a: shl    $0x3,%rbx
  0x00000001063c1a2e: mov    0x24(%rbx),%ebx
  0x00000001063c1a31: shl    $0x3,%rbx
  0x00000001063c1a35: mov    0x10(%rbx),%rbx
  0x00000001063c1a39: test   %rbx,%rbx
  0x00000001063c1a3c: je     0x00000001063c1a45
  0x00000001063c1a42: jmpq   *0x38(%rbx)
  0x00000001063c1a45: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c1a4a: hlt    
  0x00000001063c1a4b: hlt    
  0x00000001063c1a4c: hlt    
  0x00000001063c1a4d: hlt    
  0x00000001063c1a4e: hlt    
  0x00000001063c1a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x00000001063c1c20, 0x00000001063c1c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc33610} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c1c20: cmp    (%rsi),%rax
  0x00000001063c1c23: mov    0x24(%r9),%ebx
  0x00000001063c1c27: shl    $0x3,%rbx
  0x00000001063c1c2b: mov    0x10(%rbx),%rbx
  0x00000001063c1c2f: test   %rbx,%rbx
  0x00000001063c1c32: je     0x00000001063c1c3b
  0x00000001063c1c38: jmpq   *0x38(%rbx)
  0x00000001063c1c3b: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     138   30             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x00000001063c4b10,0x00000001063c4db8] = 680
 relocation     [0x00000001063c4c88,0x00000001063c4c98] = 16
 main code      [0x00000001063c4ca0,0x00000001063c4d00] = 96
 stub code      [0x00000001063c4d00,0x00000001063c4d18] = 24
 metadata       [0x00000001063c4d18,0x00000001063c4d20] = 8
 scopes data    [0x00000001063c4d20,0x00000001063c4d40] = 32
 scopes pcs     [0x00000001063c4d40,0x00000001063c4db0] = 112
 dependencies   [0x00000001063c4db0,0x00000001063c4db8] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x00000001063c4ca0, 0x00000001063c4d18]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d82c300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x00000001063c4ca0: mov    0x8(%rsi),%r10d
  0x00000001063c4ca4: movabs $0x800000000,%r12
  0x00000001063c4cae: add    %r12,%r10
  0x00000001063c4cb1: xor    %r12,%r12
  0x00000001063c4cb4: cmp    %r10,%rax
  0x00000001063c4cb7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063c4cbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063c4cc0: mov    %eax,-0x14000(%rsp)
  0x00000001063c4cc7: push   %rbp
  0x00000001063c4cc8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x00000001063c4ccc: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x00000001063c4cd1: test   %r11d,%r11d
  0x00000001063c4cd4: jne    0x00000001063c4ceb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x00000001063c4cd6: mov    $0x1,%eax
  0x00000001063c4cdb: add    $0x10,%rsp
  0x00000001063c4cdf: pop    %rbp
  0x00000001063c4ce0: mov    0x108(%r15),%r10
  0x00000001063c4ce7: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063c4cea: retq   
  0x00000001063c4ceb: mov    $0xffffff4d,%esi
  0x00000001063c4cf0: mov    %r11d,%ebp
  0x00000001063c4cf3: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c4cf8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x00000001063c4cfa: hlt    
  0x00000001063c4cfb: hlt    
  0x00000001063c4cfc: hlt    
  0x00000001063c4cfd: hlt    
  0x00000001063c4cfe: hlt    
  0x00000001063c4cff: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063c4d00: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063c4d05: callq  0x00000001063c4d0a
  0x00000001063c4d0a: subq   $0x5,(%rsp)
  0x00000001063c4d0f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063c4d14: hlt    
  0x00000001063c4d15: hlt    
  0x00000001063c4d16: hlt    
  0x00000001063c4d17: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c4aa0, 0x00000001063c4ac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc36e68} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x00000001063c4aa0: mov    0x10(%rsp),%rbx
  0x00000001063c4aa5: mov    0x24(%rbx),%ebx
  0x00000001063c4aa8: shl    $0x3,%rbx
  0x00000001063c4aac: mov    0x10(%rbx),%rbx
  0x00000001063c4ab0: test   %rbx,%rbx
  0x00000001063c4ab3: je     0x00000001063c4abc
  0x00000001063c4ab9: jmpq   *0x38(%rbx)
  0x00000001063c4abc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c4ac1: hlt    
  0x00000001063c4ac2: hlt    
  0x00000001063c4ac3: hlt    
  0x00000001063c4ac4: hlt    
  0x00000001063c4ac5: hlt    
  0x00000001063c4ac6: hlt    
  0x00000001063c4ac7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c48a0, 0x00000001063c48d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc36fd0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x00000001063c48a0: mov    0x14(%rsi),%ebx
  0x00000001063c48a3: shl    $0x3,%rbx
  0x00000001063c48a7: mov    0x28(%rbx),%ebx
  0x00000001063c48aa: shl    $0x3,%rbx
  0x00000001063c48ae: mov    0x24(%rbx),%ebx
  0x00000001063c48b1: shl    $0x3,%rbx
  0x00000001063c48b5: mov    0x10(%rbx),%rbx
  0x00000001063c48b9: test   %rbx,%rbx
  0x00000001063c48bc: je     0x00000001063c48c5
  0x00000001063c48c2: jmpq   *0x38(%rbx)
  0x00000001063c48c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c48ca: hlt    
  0x00000001063c48cb: hlt    
  0x00000001063c48cc: hlt    
  0x00000001063c48cd: hlt    
  0x00000001063c48ce: hlt    
  0x00000001063c48cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c46a0, 0x00000001063c46c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc37f70} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x00000001063c46a0: mov    0x18(%rsp),%rbx
  0x00000001063c46a5: mov    0x24(%rbx),%ebx
  0x00000001063c46a8: shl    $0x3,%rbx
  0x00000001063c46ac: mov    0x10(%rbx),%rbx
  0x00000001063c46b0: test   %rbx,%rbx
  0x00000001063c46b3: je     0x00000001063c46bc
  0x00000001063c46b9: jmpq   *0x38(%rbx)
  0x00000001063c46bc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c46c1: hlt    
  0x00000001063c46c2: hlt    
  0x00000001063c46c3: hlt    
  0x00000001063c46c4: hlt    
  0x00000001063c46c5: hlt    
  0x00000001063c46c6: hlt    
  0x00000001063c46c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x00000001063c44a0, 0x00000001063c44d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc38088} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x00000001063c44a0: mov    0x14(%rsi),%ebx
  0x00000001063c44a3: shl    $0x3,%rbx
  0x00000001063c44a7: mov    0x28(%rbx),%ebx
  0x00000001063c44aa: shl    $0x3,%rbx
  0x00000001063c44ae: mov    0x24(%rbx),%ebx
  0x00000001063c44b1: shl    $0x3,%rbx
  0x00000001063c44b5: mov    0x10(%rbx),%rbx
  0x00000001063c44b9: test   %rbx,%rbx
  0x00000001063c44bc: je     0x00000001063c44c5
  0x00000001063c44c2: jmpq   *0x38(%rbx)
  0x00000001063c44c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c44ca: hlt    
  0x00000001063c44cb: hlt    
  0x00000001063c44cc: hlt    
  0x00000001063c44cd: hlt    
  0x00000001063c44ce: hlt    
  0x00000001063c44cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c42a0, 0x00000001063c42c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc381a0} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c42a0: cmp    (%rsi),%rax
  0x00000001063c42a3: mov    0x24(%r8),%ebx
  0x00000001063c42a7: shl    $0x3,%rbx
  0x00000001063c42ab: mov    0x10(%rbx),%rbx
  0x00000001063c42af: test   %rbx,%rbx
  0x00000001063c42b2: je     0x00000001063c42bb
  0x00000001063c42b8: jmpq   *0x38(%rbx)
  0x00000001063c42bb: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c40a0, 0x00000001063c40d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc38308} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x00000001063c40a0: mov    0x14(%rsi),%ebx
  0x00000001063c40a3: shl    $0x3,%rbx
  0x00000001063c40a7: mov    0x28(%rbx),%ebx
  0x00000001063c40aa: shl    $0x3,%rbx
  0x00000001063c40ae: mov    0x24(%rbx),%ebx
  0x00000001063c40b1: shl    $0x3,%rbx
  0x00000001063c40b5: mov    0x10(%rbx),%rbx
  0x00000001063c40b9: test   %rbx,%rbx
  0x00000001063c40bc: je     0x00000001063c40c5
  0x00000001063c40c2: jmpq   *0x38(%rbx)
  0x00000001063c40c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c40ca: hlt    
  0x00000001063c40cb: hlt    
  0x00000001063c40cc: hlt    
  0x00000001063c40cd: hlt    
  0x00000001063c40ce: hlt    
  0x00000001063c40cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001063c3ea0, 0x00000001063c3ec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc38600} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c3ea0: mov    0x24(%rcx),%ebx
  0x00000001063c3ea3: shl    $0x3,%rbx
  0x00000001063c3ea7: mov    0x10(%rbx),%rbx
  0x00000001063c3eab: test   %rbx,%rbx
  0x00000001063c3eae: je     0x00000001063c3eb7
  0x00000001063c3eb4: jmpq   *0x38(%rbx)
  0x00000001063c3eb7: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c3ebc: hlt    
  0x00000001063c3ebd: hlt    
  0x00000001063c3ebe: hlt    
  0x00000001063c3ebf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x00000001063c3ca0, 0x00000001063c3cd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc38718} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c3ca0: mov    0x14(%rsi),%ebx
  0x00000001063c3ca3: shl    $0x3,%rbx
  0x00000001063c3ca7: mov    0x28(%rbx),%ebx
  0x00000001063c3caa: shl    $0x3,%rbx
  0x00000001063c3cae: mov    0x24(%rbx),%ebx
  0x00000001063c3cb1: shl    $0x3,%rbx
  0x00000001063c3cb5: mov    0x10(%rbx),%rbx
  0x00000001063c3cb9: test   %rbx,%rbx
  0x00000001063c3cbc: je     0x00000001063c3cc5
  0x00000001063c3cc2: jmpq   *0x38(%rbx)
  0x00000001063c3cc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c3cca: hlt    
  0x00000001063c3ccb: hlt    
  0x00000001063c3ccc: hlt    
  0x00000001063c3ccd: hlt    
  0x00000001063c3cce: hlt    
  0x00000001063c3ccf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001063c3aa0, 0x00000001063c3ac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc38830} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c3aa0: cmp    (%rsi),%rax
  0x00000001063c3aa3: mov    0x24(%r8),%ebx
  0x00000001063c3aa7: shl    $0x3,%rbx
  0x00000001063c3aab: mov    0x10(%rbx),%rbx
  0x00000001063c3aaf: test   %rbx,%rbx
  0x00000001063c3ab2: je     0x00000001063c3abb
  0x00000001063c3ab8: jmpq   *0x38(%rbx)
  0x00000001063c3abb: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     155   40             java.lang.String::charAt (25 bytes)
 total in heap  [0x00000001063c1e90,0x00000001063c2238] = 936
 relocation     [0x00000001063c2008,0x00000001063c2018] = 16
 main code      [0x00000001063c2020,0x00000001063c20c0] = 160
 stub code      [0x00000001063c20c0,0x00000001063c20d8] = 24
 metadata       [0x00000001063c20d8,0x00000001063c20f0] = 24
 scopes data    [0x00000001063c20f0,0x00000001063c2150] = 96
 scopes pcs     [0x00000001063c2150,0x00000001063c2220] = 208
 dependencies   [0x00000001063c2220,0x00000001063c2228] = 8
 nul chk table  [0x00000001063c2228,0x00000001063c2238] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x00000001063c2020, 0x00000001063c20d8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d8274b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001063c2020: mov    0x8(%rsi),%r10d
  0x00000001063c2024: movabs $0x800000000,%r12
  0x00000001063c202e: add    %r12,%r10
  0x00000001063c2031: xor    %r12,%r12
  0x00000001063c2034: cmp    %r10,%rax
  0x00000001063c2037: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063c203d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063c2040: mov    %eax,-0x14000(%rsp)
  0x00000001063c2047: push   %rbp
  0x00000001063c2048: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x00000001063c204c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x00000001063c2051: test   %r10d,%r10d
  0x00000001063c2054: jne    0x00000001063c207d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x00000001063c2056: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x00000001063c2059: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00000001063c20a6
  0x00000001063c205e: cmp    %r10d,%edx
  0x00000001063c2061: jae    0x00000001063c2096
  0x00000001063c2063: lea    (%r12,%rbp,8),%r10
  0x00000001063c2067: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x00000001063c206d: add    $0x20,%rsp
  0x00000001063c2071: pop    %rbp
  0x00000001063c2072: mov    0x108(%r15),%r10
  0x00000001063c2079: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063c207c: retq   
  0x00000001063c207d: mov    %rsi,%rbp
  0x00000001063c2080: mov    %edx,(%rsp)
  0x00000001063c2083: mov    %r10d,0x4(%rsp)
  0x00000001063c2088: mov    $0xffffff4d,%esi
  0x00000001063c208d: xchg   %ax,%ax
  0x00000001063c208f: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c2094: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x00000001063c2096: mov    $0xffffffe5,%esi
  0x00000001063c209b: mov    %edx,0x4(%rsp)
  0x00000001063c209f: callq  0x000000010637b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c20a4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x00000001063c20a6: mov    $0xfffffff6,%esi
  0x00000001063c20ab: mov    %edx,0x4(%rsp)
  0x00000001063c20af: callq  0x000000010637b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c20b4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x00000001063c20b6: hlt    
  0x00000001063c20b7: hlt    
  0x00000001063c20b8: hlt    
  0x00000001063c20b9: hlt    
  0x00000001063c20ba: hlt    
  0x00000001063c20bb: hlt    
  0x00000001063c20bc: hlt    
  0x00000001063c20bd: hlt    
  0x00000001063c20be: hlt    
  0x00000001063c20bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063c20c0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063c20c5: callq  0x00000001063c20ca
  0x00000001063c20ca: subq   $0x5,(%rsp)
  0x00000001063c20cf: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063c20d4: hlt    
  0x00000001063c20d5: hlt    
  0x00000001063c20d6: hlt    
  0x00000001063c20d7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     157   41             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x00000001063c6610,0x00000001063c68e0] = 720
 relocation     [0x00000001063c6788,0x00000001063c6798] = 16
 main code      [0x00000001063c67a0,0x00000001063c6800] = 96
 stub code      [0x00000001063c6800,0x00000001063c6818] = 24
 metadata       [0x00000001063c6818,0x00000001063c6820] = 8
 scopes data    [0x00000001063c6820,0x00000001063c6848] = 40
 scopes pcs     [0x00000001063c6848,0x00000001063c68c8] = 128
 dependencies   [0x00000001063c68c8,0x00000001063c68d0] = 8
 nul chk table  [0x00000001063c68d0,0x00000001063c68e0] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x00000001063c67a0, 0x00000001063c6818]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d97a988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001063c67a0: mov    %eax,-0x14000(%rsp)
  0x00000001063c67a7: push   %rbp
  0x00000001063c67a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x00000001063c67ac: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x00000001063c67de
  0x00000001063c67b0: cmp    %r10d,%edx
  0x00000001063c67b3: jae    0x00000001063c67ca
  0x00000001063c67b5: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x00000001063c67ba: add    $0x20,%rsp
  0x00000001063c67be: pop    %rbp
  0x00000001063c67bf: mov    0x108(%r15),%r10
  0x00000001063c67c6: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063c67c9: retq   
  0x00000001063c67ca: mov    %rsi,%rbp
  0x00000001063c67cd: mov    %edx,0x4(%rsp)
  0x00000001063c67d1: mov    $0xffffffe5,%esi
  0x00000001063c67d6: nop
  0x00000001063c67d7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c67dc: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x00000001063c67de: mov    %rsi,%rbp
  0x00000001063c67e1: mov    %edx,0x4(%rsp)
  0x00000001063c67e5: mov    $0xfffffff6,%esi
  0x00000001063c67ea: nop
  0x00000001063c67eb: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c67f0: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x00000001063c67f2: hlt    
  0x00000001063c67f3: hlt    
  0x00000001063c67f4: hlt    
  0x00000001063c67f5: hlt    
  0x00000001063c67f6: hlt    
  0x00000001063c67f7: hlt    
  0x00000001063c67f8: hlt    
  0x00000001063c67f9: hlt    
  0x00000001063c67fa: hlt    
  0x00000001063c67fb: hlt    
  0x00000001063c67fc: hlt    
  0x00000001063c67fd: hlt    
  0x00000001063c67fe: hlt    
  0x00000001063c67ff: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063c6800: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063c6805: callq  0x00000001063c680a
  0x00000001063c680a: subq   $0x5,(%rsp)
  0x00000001063c680f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063c6814: hlt    
  0x00000001063c6815: hlt    
  0x00000001063c6816: hlt    
  0x00000001063c6817: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c1e20, 0x00000001063c1e48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc39980} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c1e20: mov    0x20(%rsp),%rbx
  0x00000001063c1e25: mov    0x24(%rbx),%ebx
  0x00000001063c1e28: shl    $0x3,%rbx
  0x00000001063c1e2c: mov    0x10(%rbx),%rbx
  0x00000001063c1e30: test   %rbx,%rbx
  0x00000001063c1e33: je     0x00000001063c1e3c
  0x00000001063c1e39: jmpq   *0x38(%rbx)
  0x00000001063c1e3c: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c1e41: hlt    
  0x00000001063c1e42: hlt    
  0x00000001063c1e43: hlt    
  0x00000001063c1e44: hlt    
  0x00000001063c1e45: hlt    
  0x00000001063c1e46: hlt    
  0x00000001063c1e47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c3620, 0x00000001063c3650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc39ae8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c3620: mov    0x14(%rsi),%ebx
  0x00000001063c3623: shl    $0x3,%rbx
  0x00000001063c3627: mov    0x28(%rbx),%ebx
  0x00000001063c362a: shl    $0x3,%rbx
  0x00000001063c362e: mov    0x24(%rbx),%ebx
  0x00000001063c3631: shl    $0x3,%rbx
  0x00000001063c3635: mov    0x10(%rbx),%rbx
  0x00000001063c3639: test   %rbx,%rbx
  0x00000001063c363c: je     0x00000001063c3645
  0x00000001063c3642: jmpq   *0x38(%rbx)
  0x00000001063c3645: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c364a: hlt    
  0x00000001063c364b: hlt    
  0x00000001063c364c: hlt    
  0x00000001063c364d: hlt    
  0x00000001063c364e: hlt    
  0x00000001063c364f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c31a0, 0x00000001063c31c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3ab60} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c31a0: mov    0x28(%rsp),%rbx
  0x00000001063c31a5: mov    0x24(%rbx),%ebx
  0x00000001063c31a8: shl    $0x3,%rbx
  0x00000001063c31ac: mov    0x10(%rbx),%rbx
  0x00000001063c31b0: test   %rbx,%rbx
  0x00000001063c31b3: je     0x00000001063c31bc
  0x00000001063c31b9: jmpq   *0x38(%rbx)
  0x00000001063c31bc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c31c1: hlt    
  0x00000001063c31c2: hlt    
  0x00000001063c31c3: hlt    
  0x00000001063c31c4: hlt    
  0x00000001063c31c5: hlt    
  0x00000001063c31c6: hlt    
  0x00000001063c31c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c2fa0, 0x00000001063c2fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3ae80} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c2fa0: mov    0x14(%rsi),%ebx
  0x00000001063c2fa3: shl    $0x3,%rbx
  0x00000001063c2fa7: mov    0x28(%rbx),%ebx
  0x00000001063c2faa: shl    $0x3,%rbx
  0x00000001063c2fae: mov    0x24(%rbx),%ebx
  0x00000001063c2fb1: shl    $0x3,%rbx
  0x00000001063c2fb5: mov    0x10(%rbx),%rbx
  0x00000001063c2fb9: test   %rbx,%rbx
  0x00000001063c2fbc: je     0x00000001063c2fc5
  0x00000001063c2fc2: jmpq   *0x38(%rbx)
  0x00000001063c2fc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c2fca: hlt    
  0x00000001063c2fcb: hlt    
  0x00000001063c2fcc: hlt    
  0x00000001063c2fcd: hlt    
  0x00000001063c2fce: hlt    
  0x00000001063c2fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c2da0, 0x00000001063c2dc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3c468} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c2da0: mov    0x30(%rsp),%rbx
  0x00000001063c2da5: mov    0x24(%rbx),%ebx
  0x00000001063c2da8: shl    $0x3,%rbx
  0x00000001063c2dac: mov    0x10(%rbx),%rbx
  0x00000001063c2db0: test   %rbx,%rbx
  0x00000001063c2db3: je     0x00000001063c2dbc
  0x00000001063c2db9: jmpq   *0x38(%rbx)
  0x00000001063c2dbc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c2dc1: hlt    
  0x00000001063c2dc2: hlt    
  0x00000001063c2dc3: hlt    
  0x00000001063c2dc4: hlt    
  0x00000001063c2dc5: hlt    
  0x00000001063c2dc6: hlt    
  0x00000001063c2dc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c2ba0, 0x00000001063c2bd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3c5d0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c2ba0: mov    0x14(%rsi),%ebx
  0x00000001063c2ba3: shl    $0x3,%rbx
  0x00000001063c2ba7: mov    0x28(%rbx),%ebx
  0x00000001063c2baa: shl    $0x3,%rbx
  0x00000001063c2bae: mov    0x24(%rbx),%ebx
  0x00000001063c2bb1: shl    $0x3,%rbx
  0x00000001063c2bb5: mov    0x10(%rbx),%rbx
  0x00000001063c2bb9: test   %rbx,%rbx
  0x00000001063c2bbc: je     0x00000001063c2bc5
  0x00000001063c2bc2: jmpq   *0x38(%rbx)
  0x00000001063c2bc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c2bca: hlt    
  0x00000001063c2bcb: hlt    
  0x00000001063c2bcc: hlt    
  0x00000001063c2bcd: hlt    
  0x00000001063c2bce: hlt    
  0x00000001063c2bcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c29a0, 0x00000001063c29c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3d950} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c29a0: mov    0x38(%rsp),%rbx
  0x00000001063c29a5: mov    0x24(%rbx),%ebx
  0x00000001063c29a8: shl    $0x3,%rbx
  0x00000001063c29ac: mov    0x10(%rbx),%rbx
  0x00000001063c29b0: test   %rbx,%rbx
  0x00000001063c29b3: je     0x00000001063c29bc
  0x00000001063c29b9: jmpq   *0x38(%rbx)
  0x00000001063c29bc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c29c1: hlt    
  0x00000001063c29c2: hlt    
  0x00000001063c29c3: hlt    
  0x00000001063c29c4: hlt    
  0x00000001063c29c5: hlt    
  0x00000001063c29c6: hlt    
  0x00000001063c29c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c27a0, 0x00000001063c27d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3dab8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c27a0: mov    0x14(%rsi),%ebx
  0x00000001063c27a3: shl    $0x3,%rbx
  0x00000001063c27a7: mov    0x28(%rbx),%ebx
  0x00000001063c27aa: shl    $0x3,%rbx
  0x00000001063c27ae: mov    0x24(%rbx),%ebx
  0x00000001063c27b1: shl    $0x3,%rbx
  0x00000001063c27b5: mov    0x10(%rbx),%rbx
  0x00000001063c27b9: test   %rbx,%rbx
  0x00000001063c27bc: je     0x00000001063c27c5
  0x00000001063c27c2: jmpq   *0x38(%rbx)
  0x00000001063c27c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c27ca: hlt    
  0x00000001063c27cb: hlt    
  0x00000001063c27cc: hlt    
  0x00000001063c27cd: hlt    
  0x00000001063c27ce: hlt    
  0x00000001063c27cf: hlt    
Compiled method (c2)     187   50             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x00000001063c8490,0x00000001063c92a8] = 3608
 relocation     [0x00000001063c8608,0x00000001063c8638] = 48
 main code      [0x00000001063c8640,0x00000001063c8a60] = 1056
 stub code      [0x00000001063c8a60,0x00000001063c8a88] = 40
 metadata       [0x00000001063c8a88,0x00000001063c8ab8] = 48
 scopes data    [0x00000001063c8ab8,0x00000001063c8cb8] = 512
 scopes pcs     [0x00000001063c8cb8,0x00000001063c9258] = 1440
 dependencies   [0x00000001063c9258,0x00000001063c9260] = 8
 handler table  [0x00000001063c9260,0x00000001063c9278] = 24
 nul chk table  [0x00000001063c9278,0x00000001063c92a8] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x00000001063c8640, 0x00000001063c8a88]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011dbbf790} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x00000001063c8640: mov    0x8(%rsi),%r10d
  0x00000001063c8644: movabs $0x800000000,%r12
  0x00000001063c864e: add    %r12,%r10
  0x00000001063c8651: xor    %r12,%r12
  0x00000001063c8654: cmp    %r10,%rax
  0x00000001063c8657: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063c865d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063c8660: mov    %eax,-0x14000(%rsp)
  0x00000001063c8667: push   %rbp
  0x00000001063c8668: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x00000001063c866c: mov    %rsi,%r10
  0x00000001063c866f: mov    %rdx,%r9
  0x00000001063c8672: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x00000001063c8a23
  0x00000001063c8676: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00000001063c8a32
  0x00000001063c867b: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001063c867f: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001063c8682: cmp    $0xffff,%r11d
  0x00000001063c8689: jg     0x00000001063c89ee  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x00000001063c868f: mov    %rsi,%rdi
  0x00000001063c8692: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x00000001063c8696: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00000001063c8a3e
  0x00000001063c869b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x00000001063c869e: mov    %r11d,%r10d
  0x00000001063c86a1: add    %edx,%r10d
  0x00000001063c86a4: add    $0x2,%r10d
  0x00000001063c86a8: cmp    %ebx,%r10d
  0x00000001063c86ab: jg     0x00000001063c88d9  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c86b1: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x00000001063c86b4: mov    %r11d,%esi
  0x00000001063c86b7: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x00000001063c86ba: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x00000001063c86be: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x00000001063c8a4a
  0x00000001063c86c3: mov    %edx,%r10d
  0x00000001063c86c6: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x00000001063c86c9: cmp    %ebp,%edx
  0x00000001063c86cb: jae    0x00000001063c8966
  0x00000001063c86d1: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x00000001063c86d5: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x00000001063c86da: mov    %edx,%r14d
  0x00000001063c86dd: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x00000001063c86e1: cmp    %ebp,%r10d
  0x00000001063c86e4: jae    0x00000001063c8992
  0x00000001063c86ea: movslq %edx,%rsi
  0x00000001063c86ed: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x00000001063c86f2: test   %r11d,%r11d
  0x00000001063c86f5: jle    0x00000001063c88c2  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x00000001063c86fb: test   %ecx,%ecx
  0x00000001063c86fd: jne    0x00000001063c89be
  0x00000001063c8703: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x00000001063c89be
  0x00000001063c8708: test   %r10d,%r10d
  0x00000001063c870b: jbe    0x00000001063c89be
  0x00000001063c8711: movslq %r10d,%rcx
  0x00000001063c8714: movslq %r11d,%r13
  0x00000001063c8717: mov    %r13,%r10
  0x00000001063c871a: dec    %r10
  0x00000001063c871d: cmp    %rcx,%r10
  0x00000001063c8720: jae    0x00000001063c89be
  0x00000001063c8726: cmp    %ebp,%r14d
  0x00000001063c8729: jae    0x00000001063c89be
  0x00000001063c872f: movslq %ebp,%r10
  0x00000001063c8732: movslq %r14d,%rcx
  0x00000001063c8735: add    %r13,%rcx
  0x00000001063c8738: dec    %rcx
  0x00000001063c873b: cmp    %r10,%rcx
  0x00000001063c873e: jae    0x00000001063c89be
  0x00000001063c8744: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c874a: mov    %ecx,%ebp
  0x00000001063c874c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8750: mov    %ebp,%r10d
  0x00000001063c8753: dec    %r10d
  0x00000001063c8756: cmp    $0x7f,%r10d
  0x00000001063c875a: jae    0x00000001063c8a06  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c8760: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c8764: mov    %r11d,%r13d
  0x00000001063c8767: add    $0xfffffffd,%r13d
  0x00000001063c876b: lea    (%r12,%r8,8),%rsi
  0x00000001063c876f: mov    $0x1,%ecx
  0x00000001063c8774: mov    $0x80000000,%r8d
  0x00000001063c877a: cmp    %r13d,%r11d
  0x00000001063c877d: cmovl  %r8d,%r13d
  0x00000001063c8781: cmp    $0x1,%r13d
  0x00000001063c8785: jle    0x00000001063c89e2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001063c878b: jmp    0x00000001063c879c
  0x00000001063c878d: vmovq  %xmm0,%r9
  0x00000001063c8792: vmovq  %xmm1,%rdi
  0x00000001063c8797: vmovd  %xmm3,%r11d
  0x00000001063c879c: mov    %r13d,%r10d
  0x00000001063c879f: sub    %ecx,%r10d
  0x00000001063c87a2: mov    $0xfa0,%r14d
  0x00000001063c87a8: cmp    %r14d,%r10d
  0x00000001063c87ab: cmovg  %r14d,%r10d
  0x00000001063c87af: add    %ecx,%r10d
  0x00000001063c87b2: vmovq  %r9,%xmm0
  0x00000001063c87b7: vmovq  %rdi,%xmm1
  0x00000001063c87bc: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c87c1: mov    %ecx,%r14d
  0x00000001063c87c4: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x00000001063c87c7: movslq %ecx,%r9
  0x00000001063c87ca: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c87d0: mov    %r8d,%ebp
  0x00000001063c87d3: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c87d7: mov    %ebp,%r11d
  0x00000001063c87da: dec    %r11d
  0x00000001063c87dd: cmp    $0x7f,%r11d
  0x00000001063c87e1: jae    0x00000001063c8912  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c87e7: movslq %r14d,%rdi
  0x00000001063c87ea: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c87ef: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c87f5: mov    %r11d,%ebp
  0x00000001063c87f8: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c87fc: mov    %ebp,%r8d
  0x00000001063c87ff: dec    %r8d
  0x00000001063c8802: cmp    $0x7f,%r8d
  0x00000001063c8806: jae    0x00000001063c8918  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c880c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c8811: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8817: mov    %r8d,%ebp
  0x00000001063c881a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c881e: mov    %ebp,%r11d
  0x00000001063c8821: dec    %r11d
  0x00000001063c8824: cmp    $0x7f,%r11d
  0x00000001063c8828: jae    0x00000001063c8920  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c882e: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c8833: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8839: mov    %r8d,%ebp
  0x00000001063c883c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8840: mov    %ebp,%r11d
  0x00000001063c8843: dec    %r11d
  0x00000001063c8846: cmp    $0x7f,%r11d
  0x00000001063c884a: jae    0x00000001063c8929  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c8850: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c8855: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001063c8858: cmp    %r10d,%ecx
  0x00000001063c885b: jl     0x00000001063c87c1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001063c8861: mov    0x108(%r15),%r9
  0x00000001063c8868: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001063c886c: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x00000001063c886f: cmp    %r13d,%ecx
  0x00000001063c8872: jl     0x00000001063c878d
  0x00000001063c8878: vmovq  %xmm0,%r9
  0x00000001063c887d: vmovq  %xmm1,%rdi
  0x00000001063c8882: vmovd  %xmm3,%r11d
  0x00000001063c8887: cmp    %r11d,%ecx
  0x00000001063c888a: jge    0x00000001063c88c2  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c888c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8892: mov    %ecx,%r14d
  0x00000001063c8895: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x00000001063c8898: mov    %r8d,%ebp
  0x00000001063c889b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c889f: mov    %ebp,%r10d
  0x00000001063c88a2: dec    %r10d
  0x00000001063c88a5: cmp    $0x7f,%r10d
  0x00000001063c88a9: jae    0x00000001063c8a0d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001063c88af: movslq %r14d,%r10
  0x00000001063c88b2: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001063c88b7: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001063c88b9: cmp    %r11d,%ecx
  0x00000001063c88bc: jl     0x00000001063c888c
  0x00000001063c88be: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x00000001063c88c2: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x00000001063c88c6: mov    %rdi,%rax
  0x00000001063c88c9: add    $0x40,%rsp
  0x00000001063c88cd: pop    %rbp
  0x00000001063c88ce: mov    0x108(%r15),%r10
  0x00000001063c88d5: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063c88d8: retq   
  0x00000001063c88d9: mov    %edx,0xc(%rsp)
  0x00000001063c88dd: mov    %rsi,(%rsp)
  0x00000001063c88e1: mov    %r9,%rbp
  0x00000001063c88e4: mov    %r11d,%edx
  0x00000001063c88e7: mov    %r11d,0x8(%rsp)
  0x00000001063c88ec: add    $0x2,%edx
  0x00000001063c88ef: callq  0x0000000106379f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x00000001063c88f4: mov    %rbp,%r9
  0x00000001063c88f7: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c88fb: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001063c8900: mov    (%rsp),%rdi
  0x00000001063c8904: mov    0x8(%rsp),%r11d
  0x00000001063c8909: mov    0xc(%rsp),%edx
  0x00000001063c890d: jmpq   0x00000001063c86b1
  0x00000001063c8912: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c8916: jmp    0x00000001063c8930
  0x00000001063c8918: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001063c891a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c891e: jmp    0x00000001063c8930
  0x00000001063c8920: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001063c8923: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c8927: jmp    0x00000001063c8930
  0x00000001063c8929: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001063c892c: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c8930: vmovq  %xmm0,%r9
  0x00000001063c8935: vmovq  %xmm1,%rdi
  0x00000001063c893a: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001063c893f: mov    $0xffffff45,%esi
  0x00000001063c8944: mov    %r14d,(%rsp)
  0x00000001063c8948: mov    %ecx,0x4(%rsp)
  0x00000001063c894c: mov    %rdi,0x10(%rsp)
  0x00000001063c8951: mov    %r9,0x18(%rsp)
  0x00000001063c8956: mov    %r11d,0xc(%rsp)
  0x00000001063c895b: mov    %ebx,0x20(%rsp)
  0x00000001063c895f: callq  0x000000010637b900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8964: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001063c8966: mov    $0xffffffe4,%esi
  0x00000001063c896b: mov    %edx,%ebp
  0x00000001063c896d: mov    %rdi,(%rsp)
  0x00000001063c8971: mov    %r9,0x8(%rsp)
  0x00000001063c8976: mov    %r11d,0x10(%rsp)
  0x00000001063c897b: mov    %r10d,0x14(%rsp)
  0x00000001063c8980: mov    %ebx,0x1c(%rsp)
  0x00000001063c8984: mov    %eax,0x20(%rsp)
  0x00000001063c8988: data16 xchg %ax,%ax
  0x00000001063c898b: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8990: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x00000001063c8992: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x00000001063c8996: mov    $0xffffffe4,%esi
  0x00000001063c899b: mov    %r14d,(%rsp)
  0x00000001063c899f: mov    %rdi,0x8(%rsp)
  0x00000001063c89a4: mov    %r9,0x10(%rsp)
  0x00000001063c89a9: mov    %r11d,0x4(%rsp)
  0x00000001063c89ae: mov    %ebx,0x1c(%rsp)
  0x00000001063c89b2: mov    %r10d,0x20(%rsp)
  0x00000001063c89b7: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c89bc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x00000001063c89be: mov    $0xffffff7e,%esi
  0x00000001063c89c3: mov    %r14d,%ebp
  0x00000001063c89c6: mov    %rdi,(%rsp)
  0x00000001063c89ca: mov    %r9,0x8(%rsp)
  0x00000001063c89cf: mov    %ebx,0x14(%rsp)
  0x00000001063c89d3: mov    %r11d,0x18(%rsp)
  0x00000001063c89d8: data16 xchg %ax,%ax
  0x00000001063c89db: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c89e0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x00000001063c89e2: mov    %edx,%r14d
  0x00000001063c89e5: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x00000001063c89e9: jmpq   0x00000001063c8887
  0x00000001063c89ee: mov    $0xffffff4d,%esi
  0x00000001063c89f3: mov    %r10,%rbp
  0x00000001063c89f6: mov    %rdx,(%rsp)
  0x00000001063c89fa: mov    %r11d,0xc(%rsp)
  0x00000001063c89ff: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8a04: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x00000001063c8a06: xor    %ecx,%ecx
  0x00000001063c8a08: jmpq   0x00000001063c893f
  0x00000001063c8a0d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001063c8a11: jmpq   0x00000001063c893f  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x00000001063c8a16: mov    %rax,%rsi
  0x00000001063c8a19: add    $0x40,%rsp
  0x00000001063c8a1d: pop    %rbp
  0x00000001063c8a1e: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063c8a23: mov    $0xfffffff6,%esi
  0x00000001063c8a28: data16 xchg %ax,%ax
  0x00000001063c8a2b: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8a30: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001063c8a32: mov    $0xfffffff6,%esi
  0x00000001063c8a37: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8a3c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001063c8a3e: mov    $0xfffffff6,%esi
  0x00000001063c8a43: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8a48: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x00000001063c8a4a: mov    $0xfffffff6,%esi
  0x00000001063c8a4f: mov    %edx,%ebp
  0x00000001063c8a51: mov    %eax,(%rsp)
  0x00000001063c8a54: data16 xchg %ax,%ax
  0x00000001063c8a57: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063c8a5c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x00000001063c8a5e: hlt    
  0x00000001063c8a5f: hlt    
[Stub Code]
  0x00000001063c8a60: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063c8a6a: jmpq   0x00000001063c8a6a  ;   {runtime_call}
[Exception Handler]
  0x00000001063c8a6f: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063c8a74: callq  0x00000001063c8a79
  0x00000001063c8a79: subq   $0x5,(%rsp)
  0x00000001063c8a7e: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063c8a83: hlt    
  0x00000001063c8a84: hlt    
  0x00000001063c8a85: hlt    
  0x00000001063c8a86: hlt    
  0x00000001063c8a87: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 Compiled method (c2)     199   51             java.lang.String::coder (15 bytes)
 total in heap  [0x00000001063c2290,0x00000001063c24d8] = 584
 relocation     [0x00000001063c2408,0x00000001063c2418] = 16
 main code      [0x00000001063c2420,0x00000001063c2460] = 64
 stub code      [0x00000001063c2460,0x00000001063c2478] = 24
 metadata       [0x00000001063c2478,0x00000001063c2480] = 8
 scopes data    [0x00000001063c2480,0x00000001063c2490] = 16
 scopes pcs     [0x00000001063c2490,0x00000001063c24d0] = 64
 dependencies   [0x00000001063c24d0,0x00000001063c24d8] = 8
----------------------------------------------------------------------
java/lang/String.coder()B  [0x00000001063c2420, 0x00000001063c2478]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d82c1a0} 'coder' '()B' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x00000001063c2420: mov    0x8(%rsi),%r10d
  0x00000001063c2424: movabs $0x800000000,%r12
  0x00000001063c242e: add    %r12,%r10
  0x00000001063c2431: xor    %r12,%r12
  0x00000001063c2434: cmp    %r10,%rax
  0x00000001063c2437: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063c243d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063c2440: sub    $0x18,%rsp
  0x00000001063c2447: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.String::coder@-1 (line 3258)

  0x00000001063c244c: movsbl 0x14(%rsi),%eax    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)

  0x00000001063c2450: add    $0x10,%rsp
  0x00000001063c2454: pop    %rbp
  0x00000001063c2455: mov    0x108(%r15),%r10
  0x00000001063c245c: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063c245f: retq   
[Exception Handler]
[Stub Code]
  0x00000001063c2460: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063c2465: callq  0x00000001063c246a
  0x00000001063c246a: subq   $0x5,(%rsp)
  0x00000001063c246f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063c2474: hlt    
  0x00000001063c2475: hlt    
  0x00000001063c2476: hlt    
  0x00000001063c2477: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c5fa0, 0x00000001063c5fc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc3fa20} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c5fa0: mov    0x40(%rsp),%rbx
  0x00000001063c5fa5: mov    0x24(%rbx),%ebx
  0x00000001063c5fa8: shl    $0x3,%rbx
  0x00000001063c5fac: mov    0x10(%rbx),%rbx
  0x00000001063c5fb0: test   %rbx,%rbx
  0x00000001063c5fb3: je     0x00000001063c5fbc
  0x00000001063c5fb9: jmpq   *0x38(%rbx)
  0x00000001063c5fbc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c5fc1: hlt    
  0x00000001063c5fc2: hlt    
  0x00000001063c5fc3: hlt    
  0x00000001063c5fc4: hlt    
  0x00000001063c5fc5: hlt    
  0x00000001063c5fc6: hlt    
  0x00000001063c5fc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x00000001063c5da0, 0x00000001063c5dd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc42a90} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c5da0: mov    0x14(%rsi),%ebx
  0x00000001063c5da3: shl    $0x3,%rbx
  0x00000001063c5da7: mov    0x28(%rbx),%ebx
  0x00000001063c5daa: shl    $0x3,%rbx
  0x00000001063c5dae: mov    0x24(%rbx),%ebx
  0x00000001063c5db1: shl    $0x3,%rbx
  0x00000001063c5db5: mov    0x10(%rbx),%rbx
  0x00000001063c5db9: test   %rbx,%rbx
  0x00000001063c5dbc: je     0x00000001063c5dc5
  0x00000001063c5dc2: jmpq   *0x38(%rbx)
  0x00000001063c5dc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c5dca: hlt    
  0x00000001063c5dcb: hlt    
  0x00000001063c5dcc: hlt    
  0x00000001063c5dcd: hlt    
  0x00000001063c5dce: hlt    
  0x00000001063c5dcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c58a0, 0x00000001063c58c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc45040} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c58a0: mov    0x48(%rsp),%rbx
  0x00000001063c58a5: mov    0x24(%rbx),%ebx
  0x00000001063c58a8: shl    $0x3,%rbx
  0x00000001063c58ac: mov    0x10(%rbx),%rbx
  0x00000001063c58b0: test   %rbx,%rbx
  0x00000001063c58b3: je     0x00000001063c58bc
  0x00000001063c58b9: jmpq   *0x38(%rbx)
  0x00000001063c58bc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c58c1: hlt    
  0x00000001063c58c2: hlt    
  0x00000001063c58c3: hlt    
  0x00000001063c58c4: hlt    
  0x00000001063c58c5: hlt    
  0x00000001063c58c6: hlt    
  0x00000001063c58c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x00000001063c56a0, 0x00000001063c56d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc451a8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c56a0: mov    0x14(%rsi),%ebx
  0x00000001063c56a3: shl    $0x3,%rbx
  0x00000001063c56a7: mov    0x28(%rbx),%ebx
  0x00000001063c56aa: shl    $0x3,%rbx
  0x00000001063c56ae: mov    0x24(%rbx),%ebx
  0x00000001063c56b1: shl    $0x3,%rbx
  0x00000001063c56b5: mov    0x10(%rbx),%rbx
  0x00000001063c56b9: test   %rbx,%rbx
  0x00000001063c56bc: je     0x00000001063c56c5
  0x00000001063c56c2: jmpq   *0x38(%rbx)
  0x00000001063c56c5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c56ca: hlt    
  0x00000001063c56cb: hlt    
  0x00000001063c56cc: hlt    
  0x00000001063c56cd: hlt    
  0x00000001063c56ce: hlt    
  0x00000001063c56cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c51a0, 0x00000001063c51c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc465f8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c51a0: mov    0x50(%rsp),%rbx
  0x00000001063c51a5: mov    0x24(%rbx),%ebx
  0x00000001063c51a8: shl    $0x3,%rbx
  0x00000001063c51ac: mov    0x10(%rbx),%rbx
  0x00000001063c51b0: test   %rbx,%rbx
  0x00000001063c51b3: je     0x00000001063c51bc
  0x00000001063c51b9: jmpq   *0x38(%rbx)
  0x00000001063c51bc: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c51c1: hlt    
  0x00000001063c51c2: hlt    
  0x00000001063c51c3: hlt    
  0x00000001063c51c4: hlt    
  0x00000001063c51c5: hlt    
  0x00000001063c51c6: hlt    
  0x00000001063c51c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c4fa0, 0x00000001063c4fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc46710} 'invokeBasic' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c4fa0: mov    0x14(%rsi),%ebx
  0x00000001063c4fa3: shl    $0x3,%rbx
  0x00000001063c4fa7: mov    0x28(%rbx),%ebx
  0x00000001063c4faa: shl    $0x3,%rbx
  0x00000001063c4fae: mov    0x24(%rbx),%ebx
  0x00000001063c4fb1: shl    $0x3,%rbx
  0x00000001063c4fb5: mov    0x10(%rbx),%rbx
  0x00000001063c4fb9: test   %rbx,%rbx
  0x00000001063c4fbc: je     0x00000001063c4fc5
  0x00000001063c4fc2: jmpq   *0x38(%rbx)
  0x00000001063c4fc5: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c4fca: hlt    
  0x00000001063c4fcb: hlt    
  0x00000001063c4fcc: hlt    
  0x00000001063c4fcd: hlt    
  0x00000001063c4fce: hlt    
  0x00000001063c4fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c8420, 0x00000001063c8440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc46828} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c8420: cmp    (%rsi),%rax
  0x00000001063c8423: mov    0x24(%rcx),%ebx
  0x00000001063c8426: shl    $0x3,%rbx
  0x00000001063c842a: mov    0x10(%rbx),%rbx
  0x00000001063c842e: test   %rbx,%rbx
  0x00000001063c8431: je     0x00000001063c843a
  0x00000001063c8437: jmpq   *0x38(%rbx)
  0x00000001063c843a: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c843f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x00000001063c8220, 0x00000001063c8250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc469e0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001063c8220: mov    0x14(%rsi),%ebx
  0x00000001063c8223: shl    $0x3,%rbx
  0x00000001063c8227: mov    0x28(%rbx),%ebx
  0x00000001063c822a: shl    $0x3,%rbx
  0x00000001063c822e: mov    0x24(%rbx),%ebx
  0x00000001063c8231: shl    $0x3,%rbx
  0x00000001063c8235: mov    0x10(%rbx),%rbx
  0x00000001063c8239: test   %rbx,%rbx
  0x00000001063c823c: je     0x00000001063c8245
  0x00000001063c8242: jmpq   *0x38(%rbx)
  0x00000001063c8245: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c824a: hlt    
  0x00000001063c824b: hlt    
  0x00000001063c824c: hlt    
  0x00000001063c824d: hlt    
  0x00000001063c824e: hlt    
  0x00000001063c824f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063c8020, 0x00000001063c8050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47128} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c8020: mov    0x14(%rsi),%ebx
  0x00000001063c8023: shl    $0x3,%rbx
  0x00000001063c8027: mov    0x28(%rbx),%ebx
  0x00000001063c802a: shl    $0x3,%rbx
  0x00000001063c802e: mov    0x24(%rbx),%ebx
  0x00000001063c8031: shl    $0x3,%rbx
  0x00000001063c8035: mov    0x10(%rbx),%rbx
  0x00000001063c8039: test   %rbx,%rbx
  0x00000001063c803c: je     0x00000001063c8045
  0x00000001063c8042: jmpq   *0x38(%rbx)
  0x00000001063c8045: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c804a: hlt    
  0x00000001063c804b: hlt    
  0x00000001063c804c: hlt    
  0x00000001063c804d: hlt    
  0x00000001063c804e: hlt    
  0x00000001063c804f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c7e20, 0x00000001063c7e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47240} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c7e20: cmp    (%rsi),%rax
  0x00000001063c7e23: mov    0x24(%r8),%ebx
  0x00000001063c7e27: shl    $0x3,%rbx
  0x00000001063c7e2b: mov    0x10(%rbx),%rbx
  0x00000001063c7e2f: test   %rbx,%rbx
  0x00000001063c7e32: je     0x00000001063c7e3b
  0x00000001063c7e38: jmpq   *0x38(%rbx)
  0x00000001063c7e3b: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x00000001063c7c20, 0x00000001063c7c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47358} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x00000001063c7c20: mov    0x14(%rsi),%ebx
  0x00000001063c7c23: shl    $0x3,%rbx
  0x00000001063c7c27: mov    0x28(%rbx),%ebx
  0x00000001063c7c2a: shl    $0x3,%rbx
  0x00000001063c7c2e: mov    0x24(%rbx),%ebx
  0x00000001063c7c31: shl    $0x3,%rbx
  0x00000001063c7c35: mov    0x10(%rbx),%rbx
  0x00000001063c7c39: test   %rbx,%rbx
  0x00000001063c7c3c: je     0x00000001063c7c45
  0x00000001063c7c42: jmpq   *0x38(%rbx)
  0x00000001063c7c45: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c7c4a: hlt    
  0x00000001063c7c4b: hlt    
  0x00000001063c7c4c: hlt    
  0x00000001063c7c4d: hlt    
  0x00000001063c7c4e: hlt    
  0x00000001063c7c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c7820, 0x00000001063c7840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47470} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c7820: cmp    (%rsi),%rax
  0x00000001063c7823: mov    0x24(%rdx),%ebx
  0x00000001063c7826: shl    $0x3,%rbx
  0x00000001063c782a: mov    0x10(%rbx),%rbx
  0x00000001063c782e: test   %rbx,%rbx
  0x00000001063c7831: je     0x00000001063c783a
  0x00000001063c7837: jmpq   *0x38(%rbx)
  0x00000001063c783a: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c783f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DLjava/lang/Object;)Ljava/lang/Object;  [0x00000001063c7620, 0x00000001063c7650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47858} 'invokeBasic' '(DLjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c7620: mov    0x14(%rsi),%ebx
  0x00000001063c7623: shl    $0x3,%rbx
  0x00000001063c7627: mov    0x28(%rbx),%ebx
  0x00000001063c762a: shl    $0x3,%rbx
  0x00000001063c762e: mov    0x24(%rbx),%ebx
  0x00000001063c7631: shl    $0x3,%rbx
  0x00000001063c7635: mov    0x10(%rbx),%rbx
  0x00000001063c7639: test   %rbx,%rbx
  0x00000001063c763c: je     0x00000001063c7645
  0x00000001063c7642: jmpq   *0x38(%rbx)
  0x00000001063c7645: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c764a: hlt    
  0x00000001063c764b: hlt    
  0x00000001063c764c: hlt    
  0x00000001063c764d: hlt    
  0x00000001063c764e: hlt    
  0x00000001063c764f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001063c71a0, 0x00000001063c71c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011dc47970} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/Object'
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001063c71a0: cmp    (%rsi),%rax
  0x00000001063c71a3: mov    0x24(%rcx),%ebx
  0x00000001063c71a6: shl    $0x3,%rbx
  0x00000001063c71aa: mov    0x10(%rbx),%rbx
  0x00000001063c71ae: test   %rbx,%rbx
  0x00000001063c71b1: je     0x00000001063c71ba
  0x00000001063c71b7: jmpq   *0x38(%rbx)
  0x00000001063c71ba: jmpq   0x0000000106393880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001063c71bf: hlt    
Time elapsed: 21.439 ms result=337
Warmup phase
Compiled method (c2)     236   66             java.util.Objects::requireNonNull (14 bytes)
 total in heap  [0x00000001063cdb10,0x00000001063cdd80] = 624
 relocation     [0x00000001063cdc88,0x00000001063cdc98] = 16
 main code      [0x00000001063cdca0,0x00000001063cdce0] = 64
 stub code      [0x00000001063cdce0,0x00000001063cdcf8] = 24
 metadata       [0x00000001063cdcf8,0x00000001063cdd00] = 8
 scopes data    [0x00000001063cdd00,0x00000001063cdd18] = 24
 scopes pcs     [0x00000001063cdd18,0x00000001063cdd78] = 96
 dependencies   [0x00000001063cdd78,0x00000001063cdd80] = 8
----------------------------------------------------------------------
java/util/Objects.requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063cdca0, 0x00000001063cdcf8]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d941640} 'requireNonNull' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/Objects'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001063cdca0: mov    %eax,-0x14000(%rsp)
  0x00000001063cdca7: push   %rbp
  0x00000001063cdca8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Objects::requireNonNull@-1 (line 220)

  0x00000001063cdcac: mov    %rsi,%rax
  0x00000001063cdcaf: test   %rsi,%rsi
  0x00000001063cdcb2: je     0x00000001063cdcc4  ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x00000001063cdcb4: add    $0x20,%rsp
  0x00000001063cdcb8: pop    %rbp
  0x00000001063cdcb9: mov    0x108(%r15),%r10
  0x00000001063cdcc0: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cdcc3: retq   
  0x00000001063cdcc4: mov    $0xffffff4d,%esi
  0x00000001063cdcc9: mov    %rax,(%rsp)
  0x00000001063cdccd: xchg   %ax,%ax
  0x00000001063cdccf: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cdcd4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x00000001063cdcd6: hlt    
  0x00000001063cdcd7: hlt    
  0x00000001063cdcd8: hlt    
  0x00000001063cdcd9: hlt    
  0x00000001063cdcda: hlt    
  0x00000001063cdcdb: hlt    
  0x00000001063cdcdc: hlt    
  0x00000001063cdcdd: hlt    
  0x00000001063cdcde: hlt    
  0x00000001063cdcdf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cdce0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cdce5: callq  0x00000001063cdcea
  0x00000001063cdcea: subq   $0x5,(%rsp)
  0x00000001063cdcef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cdcf4: hlt    
  0x00000001063cdcf5: hlt    
  0x00000001063cdcf6: hlt    
  0x00000001063cdcf7: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 52 Compiled method (c2)     243   67             java.util.HashMap::hash (20 bytes)
 total in heap  [0x00000001063cbc90,0x00000001063cc480] = 2032
 relocation     [0x00000001063cbe08,0x00000001063cbe28] = 32
 main code      [0x00000001063cbe40,0x00000001063cc080] = 576
 stub code      [0x00000001063cc080,0x00000001063cc098] = 24
 metadata       [0x00000001063cc098,0x00000001063cc0c8] = 48
 scopes data    [0x00000001063cc0c8,0x00000001063cc1e0] = 280
 scopes pcs     [0x00000001063cc1e0,0x00000001063cc460] = 640
 dependencies   [0x00000001063cc460,0x00000001063cc468] = 8
 nul chk table  [0x00000001063cc468,0x00000001063cc480] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x00000001063cbe40, 0x00000001063cc098]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d949940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001063cbe40: mov    %eax,-0x14000(%rsp)
  0x00000001063cbe47: push   %rbp
  0x00000001063cbe48: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x00000001063cbe4c: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x00000001063cc056
  0x00000001063cbe50: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x00000001063cbe57: jne    0x00000001063cbe76  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe59: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x00000001063cbe5d: mov    %r11d,%eax
  0x00000001063cbe60: shr    $0x10,%eax
  0x00000001063cbe63: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x00000001063cbe66: add    $0x20,%rsp
  0x00000001063cbe6a: pop    %rbp
  0x00000001063cbe6b: mov    0x108(%r15),%r10
  0x00000001063cbe72: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cbe75: retq   
  0x00000001063cbe76: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x00000001063cbe7d: jne    0x00000001063cc015  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe83: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe87: test   %r11d,%r11d
  0x00000001063cbe8a: jne    0x00000001063cbe5d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe8c: mov    0xc(%rsi),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe90: mov    0xc(%r12,%r9,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x00000001063cc066
  0x00000001063cbe95: test   %r8d,%r8d
  0x00000001063cbe98: jbe    0x00000001063cc00d  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbe9e: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbea2: test   %ebp,%ebp
  0x00000001063cbea4: jne    0x00000001063cc042  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbeaa: mov    %r8d,%ecx
  0x00000001063cbead: dec    %ecx
  0x00000001063cbeaf: cmp    %r8d,%ecx
  0x00000001063cbeb2: jae    0x00000001063cc026
  0x00000001063cbeb8: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbebe: mov    %r8d,%r13d
  0x00000001063cbec1: add    $0xfffffff9,%r13d
  0x00000001063cbec5: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbec9: mov    $0x80000000,%r11d
  0x00000001063cbecf: cmp    %r13d,%ecx
  0x00000001063cbed2: cmovl  %r11d,%r13d
  0x00000001063cbed6: mov    $0x1,%r9d
  0x00000001063cbedc: cmp    $0x1,%r13d
  0x00000001063cbee0: jle    0x00000001063cbfda
  0x00000001063cbee6: mov    %edi,%ebx
  0x00000001063cbee8: shl    $0x5,%ebx
  0x00000001063cbeeb: sub    %edi,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbeed: jmp    0x00000001063cbef4
  0x00000001063cbeef: vmovd  %xmm1,%r8d
  0x00000001063cbef4: mov    %r13d,%r14d
  0x00000001063cbef7: sub    %r9d,%r14d
  0x00000001063cbefa: mov    $0x1f40,%r11d
  0x00000001063cbf00: cmp    %r11d,%r14d
  0x00000001063cbf03: mov    $0x1f40,%r10d
  0x00000001063cbf09: cmovg  %r10d,%r14d
  0x00000001063cbf0d: add    %r9d,%r14d
  0x00000001063cbf10: vmovd  %r8d,%xmm1
  0x00000001063cbf15: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbf20: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbf23: movzbl 0x10(%rax,%r11,1),%r10d
  0x00000001063cbf29: movzbl 0x17(%rax,%r11,1),%ecx
  0x00000001063cbf2f: movzbl 0x11(%rax,%r11,1),%edx
  0x00000001063cbf35: movzbl 0x16(%rax,%r11,1),%edi
  0x00000001063cbf3b: movzbl 0x15(%rax,%r11,1),%ebp
  0x00000001063cbf41: add    %r10d,%ebx
  0x00000001063cbf44: movzbl 0x13(%rax,%r11,1),%r10d
  0x00000001063cbf4a: mov    %ebx,%r8d
  0x00000001063cbf4d: shl    $0x5,%r8d
  0x00000001063cbf51: sub    %ebx,%r8d
  0x00000001063cbf54: add    %edx,%r8d
  0x00000001063cbf57: movzbl 0x12(%rax,%r11,1),%ebx
  0x00000001063cbf5d: movzbl 0x14(%rax,%r11,1),%edx
  0x00000001063cbf63: mov    %r8d,%r11d
  0x00000001063cbf66: shl    $0x5,%r11d
  0x00000001063cbf6a: sub    %r8d,%r11d
  0x00000001063cbf6d: add    %ebx,%r11d
  0x00000001063cbf70: mov    %r11d,%ebx
  0x00000001063cbf73: shl    $0x5,%ebx
  0x00000001063cbf76: sub    %r11d,%ebx
  0x00000001063cbf79: add    %r10d,%ebx
  0x00000001063cbf7c: mov    %ebx,%r10d
  0x00000001063cbf7f: shl    $0x5,%r10d
  0x00000001063cbf83: sub    %ebx,%r10d
  0x00000001063cbf86: add    %edx,%r10d
  0x00000001063cbf89: mov    %r10d,%r11d
  0x00000001063cbf8c: shl    $0x5,%r11d
  0x00000001063cbf90: sub    %r10d,%r11d
  0x00000001063cbf93: add    %ebp,%r11d
  0x00000001063cbf96: mov    %r11d,%r8d
  0x00000001063cbf99: shl    $0x5,%r8d
  0x00000001063cbf9d: sub    %r11d,%r8d
  0x00000001063cbfa0: add    %edi,%r8d
  0x00000001063cbfa3: mov    %r8d,%edi
  0x00000001063cbfa6: shl    $0x5,%edi
  0x00000001063cbfa9: sub    %r8d,%edi
  0x00000001063cbfac: add    %ecx,%edi          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfae: mov    %edi,%ebx
  0x00000001063cbfb0: shl    $0x5,%ebx
  0x00000001063cbfb3: sub    %edi,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfb5: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfb9: cmp    %r14d,%r9d
  0x00000001063cbfbc: jl     0x00000001063cbf20  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfc2: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfc9: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x00000001063cbfcc: cmp    %r13d,%r9d
  0x00000001063cbfcf: jl     0x00000001063cbeef
  0x00000001063cbfd5: vmovd  %xmm1,%r8d
  0x00000001063cbfda: cmp    %r8d,%r9d
  0x00000001063cbfdd: jge    0x00000001063cc008  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbfdf: movzbl 0x10(%rax,%r9,1),%ecx
  0x00000001063cbfe5: mov    %edi,%r11d
  0x00000001063cbfe8: shl    $0x5,%r11d
  0x00000001063cbfec: sub    %edi,%r11d
  0x00000001063cbfef: add    %ecx,%r11d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbff2: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbff5: cmp    %r8d,%r9d
  0x00000001063cbff8: jge    0x00000001063cbfff  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cbffa: mov    %r11d,%edi
  0x00000001063cbffd: jmp    0x00000001063cbfdf
  0x00000001063cbfff: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cc003: jmpq   0x00000001063cbe5d
  0x00000001063cc008: mov    %edi,%r11d
  0x00000001063cc00b: jmp    0x00000001063cbfff
  0x00000001063cc00d: xor    %r11d,%r11d
  0x00000001063cc010: jmpq   0x00000001063cbe5d
  0x00000001063cc015: mov    %rsi,%rbp
  0x00000001063cc018: mov    $0xffffffc6,%esi
  0x00000001063cc01d: xchg   %ax,%ax
  0x00000001063cc01f: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cc024: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cc026: mov    %rsi,%rbp
  0x00000001063cc029: mov    %r8d,0x4(%rsp)
  0x00000001063cc02e: mov    %r9d,0x8(%rsp)
  0x00000001063cc033: mov    $0xffffff7e,%esi
  0x00000001063cc038: data16 xchg %ax,%ax
  0x00000001063cc03b: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cc040: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cc042: mov    %rsi,0x8(%rsp)
  0x00000001063cc047: mov    $0xffffff4d,%esi
  0x00000001063cc04c: data16 xchg %ax,%ax
  0x00000001063cc04f: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cc054: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cc056: mov    %rsi,(%rsp)
  0x00000001063cc05a: mov    $0xffffff4d,%esi
  0x00000001063cc05f: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cc064: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x00000001063cc066: mov    $0xfffffff6,%esi
  0x00000001063cc06b: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cc070: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001063cc072: hlt    
  0x00000001063cc073: hlt    
  0x00000001063cc074: hlt    
  0x00000001063cc075: hlt    
  0x00000001063cc076: hlt    
  0x00000001063cc077: hlt    
  0x00000001063cc078: hlt    
  0x00000001063cc079: hlt    
  0x00000001063cc07a: hlt    
  0x00000001063cc07b: hlt    
  0x00000001063cc07c: hlt    
  0x00000001063cc07d: hlt    
  0x00000001063cc07e: hlt    
  0x00000001063cc07f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cc080: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cc085: callq  0x00000001063cc08a
  0x00000001063cc08a: subq   $0x5,(%rsp)
  0x00000001063cc08f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cc094: hlt    
  0x00000001063cc095: hlt    
  0x00000001063cc096: hlt    
  0x00000001063cc097: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 393 
ImmutableOopMap{rbp=Oop }pc offsets: 484 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     253   68             java.lang.Number::<init> (5 bytes)
 total in heap  [0x00000001063cba10,0x00000001063cbc48] = 568
 relocation     [0x00000001063cbb88,0x00000001063cbb98] = 16
 main code      [0x00000001063cbba0,0x00000001063cbbe0] = 64
 stub code      [0x00000001063cbbe0,0x00000001063cbbf8] = 24
 metadata       [0x00000001063cbbf8,0x00000001063cbc08] = 16
 scopes data    [0x00000001063cbc08,0x00000001063cbc10] = 8
 scopes pcs     [0x00000001063cbc10,0x00000001063cbc40] = 48
 dependencies   [0x00000001063cbc40,0x00000001063cbc48] = 8
----------------------------------------------------------------------
java/lang/Number.<init>()V  [0x00000001063cbba0, 0x00000001063cbbf8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d912cf8} '<init>' '()V' in 'java/lang/Number'
  #           [sp+0x20]  (sp of caller)
  0x00000001063cbba0: mov    0x8(%rsi),%r10d
  0x00000001063cbba4: movabs $0x800000000,%r12
  0x00000001063cbbae: add    %r12,%r10
  0x00000001063cbbb1: xor    %r12,%r12
  0x00000001063cbbb4: cmp    %r10,%rax
  0x00000001063cbbb7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063cbbbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063cbbc0: sub    $0x18,%rsp
  0x00000001063cbbc7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Number::<init>@-1 (line 55)

  0x00000001063cbbcc: add    $0x10,%rsp
  0x00000001063cbbd0: pop    %rbp
  0x00000001063cbbd1: mov    0x108(%r15),%r10
  0x00000001063cbbd8: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cbbdb: retq   
  0x00000001063cbbdc: hlt    
  0x00000001063cbbdd: hlt    
  0x00000001063cbbde: hlt    
  0x00000001063cbbdf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cbbe0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cbbe5: callq  0x00000001063cbbea
  0x00000001063cbbea: subq   $0x5,(%rsp)
  0x00000001063cbbef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cbbf4: hlt    
  0x00000001063cbbf5: hlt    
  0x00000001063cbbf6: hlt    
  0x00000001063cbbf7: hlt    
Compiled method (c2)     255   69             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x00000001063cb590,0x00000001063cb9c0] = 1072
 relocation     [0x00000001063cb708,0x00000001063cb728] = 32
 main code      [0x00000001063cb740,0x00000001063cb840] = 256
 stub code      [0x00000001063cb840,0x00000001063cb858] = 24
 oops           [0x00000001063cb858,0x00000001063cb860] = 8
 metadata       [0x00000001063cb860,0x00000001063cb870] = 16
 scopes data    [0x00000001063cb870,0x00000001063cb8c0] = 80
 scopes pcs     [0x00000001063cb8c0,0x00000001063cb9a0] = 224
 dependencies   [0x00000001063cb9a0,0x00000001063cb9a8] = 8
 handler table  [0x00000001063cb9a8,0x00000001063cb9c0] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x00000001063cb740, 0x00000001063cb858]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d91ba30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001063cb740: mov    %eax,-0x14000(%rsp)
  0x00000001063cb747: push   %rbp
  0x00000001063cb748: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x00000001063cb74c: mov    %esi,(%rsp)
  0x00000001063cb74f: cmp    $0xffffff80,%esi
  0x00000001063cb752: jl     0x00000001063cb7fe  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x00000001063cb758: cmp    $0x7f,%esi
  0x00000001063cb75b: jle    0x00000001063cb7bf  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x00000001063cb75d: mov    0x118(%r15),%rax
  0x00000001063cb764: mov    %rax,%r10
  0x00000001063cb767: add    $0x10,%r10
  0x00000001063cb76b: cmp    0x128(%r15),%r10
  0x00000001063cb772: jae    0x00000001063cb7ea
  0x00000001063cb774: mov    %r10,0x118(%r15)
  0x00000001063cb77b: prefetchnta 0xc0(%r10)
  0x00000001063cb783: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x00000001063cb789: movabs $0x800000000,%r10
  0x00000001063cb793: add    %r11,%r10
  0x00000001063cb796: mov    0xb8(%r10),%r10
  0x00000001063cb79d: mov    %r10,(%rax)
  0x00000001063cb7a0: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001063cb7a7: mov    (%rsp),%r11d
  0x00000001063cb7ab: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x00000001063cb7af: add    $0x20,%rsp
  0x00000001063cb7b3: pop    %rbp
  0x00000001063cb7b4: mov    0x108(%r15),%r10
  0x00000001063cb7bb: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cb7be: retq   
  0x00000001063cb7bf: mov    %esi,%ebp
  0x00000001063cb7c1: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x00000001063cb7c7: cmp    $0x100,%ebp
  0x00000001063cb7cd: jae    0x00000001063cb80e
  0x00000001063cb7cf: movslq %esi,%r10
  0x00000001063cb7d2: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x00000001063cb7dc: mov    0x210(%r11,%r10,4),%r10d
  0x00000001063cb7e4: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x00000001063cb7e8: jmp    0x00000001063cb7af
  0x00000001063cb7ea: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001063cb7f4: mov    (%rsp),%ebp
  0x00000001063cb7f7: callq  0x00000001063b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063cb7fc: jmp    0x00000001063cb7a7
  0x00000001063cb7fe: mov    $0xffffff4d,%esi
  0x00000001063cb803: mov    (%rsp),%ebp
  0x00000001063cb806: nop
  0x00000001063cb807: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb80c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x00000001063cb80e: mov    $0xffffffe4,%esi
  0x00000001063cb813: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb818: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x00000001063cb81a: mov    %rax,%rsi
  0x00000001063cb81d: add    $0x20,%rsp
  0x00000001063cb821: pop    %rbp
  0x00000001063cb822: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063cb827: hlt    
  0x00000001063cb828: hlt    
  0x00000001063cb829: hlt    
  0x00000001063cb82a: hlt    
  0x00000001063cb82b: hlt    
  0x00000001063cb82c: hlt    
  0x00000001063cb82d: hlt    
  0x00000001063cb82e: hlt    
  0x00000001063cb82f: hlt    
  0x00000001063cb830: hlt    
  0x00000001063cb831: hlt    
  0x00000001063cb832: hlt    
  0x00000001063cb833: hlt    
  0x00000001063cb834: hlt    
  0x00000001063cb835: hlt    
  0x00000001063cb836: hlt    
  0x00000001063cb837: hlt    
  0x00000001063cb838: hlt    
  0x00000001063cb839: hlt    
  0x00000001063cb83a: hlt    
  0x00000001063cb83b: hlt    
  0x00000001063cb83c: hlt    
  0x00000001063cb83d: hlt    
  0x00000001063cb83e: hlt    
  0x00000001063cb83f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cb840: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cb845: callq  0x00000001063cb84a
  0x00000001063cb84a: subq   $0x5,(%rsp)
  0x00000001063cb84f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cb854: hlt    
  0x00000001063cb855: hlt    
  0x00000001063cb856: hlt    
  0x00000001063cb857: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     258   70             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x00000001063cad10,0x00000001063cb490] = 1920
 relocation     [0x00000001063cae88,0x00000001063caeb0] = 40
 main code      [0x00000001063caec0,0x00000001063cb080] = 448
 stub code      [0x00000001063cb080,0x00000001063cb098] = 24
 metadata       [0x00000001063cb098,0x00000001063cb0b8] = 32
 scopes data    [0x00000001063cb0b8,0x00000001063cb230] = 376
 scopes pcs     [0x00000001063cb230,0x00000001063cb460] = 560
 dependencies   [0x00000001063cb460,0x00000001063cb468] = 8
 nul chk table  [0x00000001063cb468,0x00000001063cb490] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x00000001063caec0, 0x00000001063cb098]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d94a540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00000001063caec0: mov    0x8(%rsi),%r10d
  0x00000001063caec4: movabs $0x800000000,%r12
  0x00000001063caece: add    %r12,%r10
  0x00000001063caed1: xor    %r12,%r12
  0x00000001063caed4: cmp    %r10,%rax
  0x00000001063caed7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063caedd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063caee0: mov    %eax,-0x14000(%rsp)
  0x00000001063caee7: push   %rbp
  0x00000001063caee8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x00000001063caeec: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x00000001063caef0: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x00000001063cb01e
  0x00000001063caef5: test   %r8d,%r8d
  0x00000001063caef8: jbe    0x00000001063caf8e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x00000001063caefe: shl    $0x3,%r10
  0x00000001063caf02: dec    %r8d
  0x00000001063caf05: and    %edx,%r8d
  0x00000001063caf08: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x00000001063caf0d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x00000001063cb036
  0x00000001063caf12: cmp    %edx,%ebp
  0x00000001063caf14: jne    0x00000001063cafaa  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x00000001063caf1a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x00000001063caf1f: mov    %r8,%r11
  0x00000001063caf22: shl    $0x3,%r11
  0x00000001063caf26: cmp    %rcx,%r11
  0x00000001063caf29: je     0x00000001063caf5b  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x00000001063caf2b: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x00000001063cb04e
  0x00000001063caf2f: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001063caf36: jne    0x00000001063caf6f  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf38: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00000001063cb006
  0x00000001063caf3d: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001063caf44: jne    0x00000001063cafe6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf4a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf4e: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf52: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf56: cmp    %ebp,%r9d
  0x00000001063caf59: jne    0x00000001063cafc6  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x00000001063caf5b: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x00000001063caf5f: add    $0x30,%rsp
  0x00000001063caf63: pop    %rbp
  0x00000001063caf64: mov    0x108(%r15),%r10
  0x00000001063caf6b: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063caf6e: retq   
  0x00000001063caf6f: mov    $0xffffffde,%esi
  0x00000001063caf74: mov    %edx,%ebp
  0x00000001063caf76: mov    %rcx,0x8(%rsp)
  0x00000001063caf7b: mov    %r10d,0x10(%rsp)
  0x00000001063caf80: mov    %r8d,0x14(%rsp)
  0x00000001063caf85: xchg   %ax,%ax
  0x00000001063caf87: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063caf8c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063caf8e: mov    $0xffffff4d,%esi
  0x00000001063caf93: mov    %edx,%ebp
  0x00000001063caf95: mov    %rcx,(%rsp)
  0x00000001063caf99: mov    %r10d,0x8(%rsp)
  0x00000001063caf9e: mov    %r8d,0x10(%rsp)
  0x00000001063cafa3: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cafa8: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x00000001063cafaa: mov    $0xffffff4d,%esi
  0x00000001063cafaf: mov    %rcx,0x8(%rsp)
  0x00000001063cafb4: mov    %edx,0x4(%rsp)
  0x00000001063cafb8: mov    %r10d,0x10(%rsp)
  0x00000001063cafbd: xchg   %ax,%ax
  0x00000001063cafbf: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cafc4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x00000001063cafc6: mov    $0xffffff4d,%esi
  0x00000001063cafcb: mov    %edx,(%rsp)
  0x00000001063cafce: mov    %rcx,0x8(%rsp)
  0x00000001063cafd3: mov    %r10d,0x4(%rsp)
  0x00000001063cafd8: mov    %r9d,0x10(%rsp)
  0x00000001063cafdd: xchg   %ax,%ax
  0x00000001063cafdf: callq  0x000000010637b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cafe4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063cafe6: mov    $0xffffffde,%esi
  0x00000001063cafeb: mov    %edx,%ebp
  0x00000001063cafed: mov    %rcx,0x8(%rsp)
  0x00000001063caff2: mov    %r10d,0x10(%rsp)
  0x00000001063caff7: mov    %r8d,0x18(%rsp)
  0x00000001063caffc: data16 xchg %ax,%ax
  0x00000001063cafff: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb004: ud2    
  0x00000001063cb006: mov    $0xfffffff4,%esi
  0x00000001063cb00b: mov    %edx,%ebp
  0x00000001063cb00d: mov    %rcx,0x8(%rsp)
  0x00000001063cb012: mov    %r10d,0x10(%rsp)
  0x00000001063cb017: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb01c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x00000001063cb01e: mov    $0xffffff4d,%esi
  0x00000001063cb023: mov    %edx,%ebp
  0x00000001063cb025: mov    %rcx,(%rsp)
  0x00000001063cb029: mov    %r10d,0xc(%rsp)
  0x00000001063cb02e: nop
  0x00000001063cb02f: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb034: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x00000001063cb036: mov    $0xffffff4d,%esi
  0x00000001063cb03b: mov    %edx,%ebp
  0x00000001063cb03d: mov    %rcx,(%rsp)
  0x00000001063cb041: mov    %r10d,0xc(%rsp)
  0x00000001063cb046: nop
  0x00000001063cb047: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb04c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x00000001063cb04e: mov    $0xffffff4d,%esi
  0x00000001063cb053: mov    %edx,%ebp
  0x00000001063cb055: mov    %rcx,0x8(%rsp)
  0x00000001063cb05a: mov    %r10d,0x10(%rsp)
  0x00000001063cb05f: mov    %r8d,0x14(%rsp)
  0x00000001063cb064: data16 xchg %ax,%ax
  0x00000001063cb067: callq  0x000000010637b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cb06c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x00000001063cb06e: hlt    
  0x00000001063cb06f: hlt    
  0x00000001063cb070: hlt    
  0x00000001063cb071: hlt    
  0x00000001063cb072: hlt    
  0x00000001063cb073: hlt    
  0x00000001063cb074: hlt    
  0x00000001063cb075: hlt    
  0x00000001063cb076: hlt    
  0x00000001063cb077: hlt    
  0x00000001063cb078: hlt    
  0x00000001063cb079: hlt    
  0x00000001063cb07a: hlt    
  0x00000001063cb07b: hlt    
  0x00000001063cb07c: hlt    
  0x00000001063cb07d: hlt    
  0x00000001063cb07e: hlt    
  0x00000001063cb07f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cb080: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cb085: callq  0x00000001063cb08a
  0x00000001063cb08a: subq   $0x5,(%rsp)
  0x00000001063cb08f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cb094: hlt    
  0x00000001063cb095: hlt    
  0x00000001063cb096: hlt    
  0x00000001063cb097: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     270   71             java.util.HashMap::get (23 bytes)
 total in heap  [0x00000001063ce910,0x00000001063cf6c8] = 3512
 relocation     [0x00000001063cea88,0x00000001063ceac0] = 56
 main code      [0x00000001063ceac0,0x00000001063ceee0] = 1056
 stub code      [0x00000001063ceee0,0x00000001063ceef8] = 24
 metadata       [0x00000001063ceef8,0x00000001063cef48] = 80
 scopes data    [0x00000001063cef48,0x00000001063cf240] = 760
 scopes pcs     [0x00000001063cf240,0x00000001063cf690] = 1104
 dependencies   [0x00000001063cf690,0x00000001063cf698] = 8
 nul chk table  [0x00000001063cf698,0x00000001063cf6c8] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063ceac0, 0x00000001063ceef8]  1080 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011d94a398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00000001063ceac0: mov    0x8(%rsi),%r10d
  0x00000001063ceac4: movabs $0x800000000,%r12
  0x00000001063ceace: add    %r12,%r10
  0x00000001063cead1: xor    %r12,%r12
  0x00000001063cead4: cmp    %r10,%rax
  0x00000001063cead7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063ceadd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063ceae0: mov    %eax,-0x14000(%rsp)
  0x00000001063ceae7: push   %rbp
  0x00000001063ceae8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x00000001063ceaec: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x00000001063cee7a
  0x00000001063ceaf0: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x00000001063ceaf7: jne    0x00000001063ceb9d
  0x00000001063ceafd: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ceb00: mov    0xc(%r10),%r8d     ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ceb04: mov    0x24(%rsi),%r9d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb08: mov    %r8d,%r10d
  0x00000001063ceb0b: shr    $0x10,%r10d
  0x00000001063ceb0f: xor    %r8d,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ceb12: mov    0xc(%r12,%r9,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x00000001063cee96
  0x00000001063ceb17: test   %r11d,%r11d
  0x00000001063ceb1a: jbe    0x00000001063ced82  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb20: dec    %r11d
  0x00000001063ceb23: and    %r10d,%r11d
  0x00000001063ceb26: lea    (%r12,%r9,8),%r8
  0x00000001063ceb2a: mov    0x10(%r8,%r11,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb2f: mov    0xc(%r12,%r11,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x00000001063ceeae
  0x00000001063ceb34: cmp    %r10d,%r9d
  0x00000001063ceb37: jne    0x00000001063ceda2  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb3d: mov    0x10(%r12,%r11,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb42: mov    %r8,%r9
  0x00000001063ceb45: shl    $0x3,%r9
  0x00000001063ceb49: cmp    %rdx,%r9
  0x00000001063ceb4c: je     0x00000001063ceb81  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb4e: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x00000001063ceb55: jne    0x00000001063ced63  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb5b: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x00000001063cee5e
  0x00000001063ceb60: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001063ceb67: jne    0x00000001063cee3e  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb6d: mov    0xc(%rdx),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb70: shl    $0x3,%r8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb74: mov    0xc(%r8),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceb78: cmp    %r8d,%ecx
  0x00000001063ceb7b: jne    0x00000001063cedc2  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x00000001063ceb81: mov    0x14(%r12,%r11,8),%r10d
  0x00000001063ceb86: mov    %r10,%rax
  0x00000001063ceb89: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x00000001063ceb8d: add    $0x30,%rsp
  0x00000001063ceb91: pop    %rbp
  0x00000001063ceb92: mov    0x108(%r15),%r10
  0x00000001063ceb99: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063ceb9c: retq   
  0x00000001063ceb9d: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x00000001063ceba4: jne    0x00000001063cede6
  0x00000001063cebaa: mov    %rdx,%rdi          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebad: mov    0x10(%rdi),%r8d    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebb1: test   %r8d,%r8d
  0x00000001063cebb4: jne    0x00000001063ceb04  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebba: mov    0xc(%rdi),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebbe: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x00000001063ceec6
  0x00000001063cebc3: test   %r9d,%r9d
  0x00000001063cebc6: jbe    0x00000001063ced5b  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebcc: movsbl 0x14(%rdi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebd0: test   %ebp,%ebp
  0x00000001063cebd2: jne    0x00000001063cee22  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebd8: mov    %r9d,%ecx
  0x00000001063cebdb: dec    %ecx
  0x00000001063cebdd: cmp    %r9d,%ecx
  0x00000001063cebe0: jae    0x00000001063cedfe
  0x00000001063cebe6: movzbl 0x10(%r12,%r8,8),%r10d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebec: mov    %r9d,%eax
  0x00000001063cebef: add    $0xfffffff9,%eax
  0x00000001063cebf2: lea    (%r12,%r8,8),%rcx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cebf6: mov    $0x1,%ebx
  0x00000001063cebfb: cmp    $0x1,%eax
  0x00000001063cebfe: jle    0x00000001063ced46
  0x00000001063cec04: mov    %r10d,%r8d
  0x00000001063cec07: shl    $0x5,%r8d
  0x00000001063cec0b: sub    %r10d,%r8d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec0e: jmp    0x00000001063cec44  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec10: movzbl 0x10(%rcx,%rbx,1),%eax
  0x00000001063cec15: mov    %r10d,%r8d
  0x00000001063cec18: shl    $0x5,%r8d
  0x00000001063cec1c: sub    %r10d,%r8d
  0x00000001063cec1f: add    %eax,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec22: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec24: cmp    %r9d,%ebx
  0x00000001063cec27: jge    0x00000001063ced52  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec2d: mov    %r8d,%r10d
  0x00000001063cec30: jmp    0x00000001063cec10
  0x00000001063cec32: vmovq  %xmm0,%rdi
  0x00000001063cec37: vmovd  %xmm1,%r9d
  0x00000001063cec3c: vmovq  %xmm2,%rsi
  0x00000001063cec41: mov    (%rsp),%eax
  0x00000001063cec44: mov    %r9d,%r10d
  0x00000001063cec47: sub    %ebx,%r10d
  0x00000001063cec4a: add    $0xfffffff9,%r10d
  0x00000001063cec4e: mov    $0x1f40,%r11d
  0x00000001063cec54: cmp    %r10d,%r11d
  0x00000001063cec57: mov    $0x1f40,%ebp
  0x00000001063cec5c: cmovg  %r10d,%ebp
  0x00000001063cec60: add    %ebx,%ebp
  0x00000001063cec62: vmovq  %rdi,%xmm0
  0x00000001063cec67: vmovd  %r9d,%xmm1
  0x00000001063cec6c: vmovq  %rsi,%xmm2
  0x00000001063cec71: mov    %eax,(%rsp)
  0x00000001063cec74: nopl   0x0(%rax,%rax,1)
  0x00000001063cec7c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec80: movslq %ebx,%r10          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cec83: movzbl 0x10(%rcx,%r10,1),%r9d
  0x00000001063cec89: movzbl 0x17(%rcx,%r10,1),%eax
  0x00000001063cec8f: add    %r9d,%r8d
  0x00000001063cec92: movzbl 0x16(%rcx,%r10,1),%edi
  0x00000001063cec98: mov    %r8d,%esi
  0x00000001063cec9b: shl    $0x5,%esi
  0x00000001063cec9e: sub    %r8d,%esi
  0x00000001063ceca1: movzbl 0x15(%rcx,%r10,1),%r11d
  0x00000001063ceca7: movzbl 0x14(%rcx,%r10,1),%r9d
  0x00000001063cecad: movzbl 0x13(%rcx,%r10,1),%r8d
  0x00000001063cecb3: movzbl 0x12(%rcx,%r10,1),%r13d
  0x00000001063cecb9: movzbl 0x11(%rcx,%r10,1),%r10d
  0x00000001063cecbf: add    %r10d,%esi
  0x00000001063cecc2: mov    %esi,%r10d
  0x00000001063cecc5: shl    $0x5,%r10d
  0x00000001063cecc9: sub    %esi,%r10d
  0x00000001063ceccc: add    %r13d,%r10d
  0x00000001063ceccf: mov    %r10d,%esi
  0x00000001063cecd2: shl    $0x5,%esi
  0x00000001063cecd5: sub    %r10d,%esi
  0x00000001063cecd8: add    %r8d,%esi
  0x00000001063cecdb: mov    %esi,%r10d
  0x00000001063cecde: shl    $0x5,%r10d
  0x00000001063cece2: sub    %esi,%r10d
  0x00000001063cece5: add    %r9d,%r10d
  0x00000001063cece8: mov    %r10d,%r9d
  0x00000001063ceceb: shl    $0x5,%r9d
  0x00000001063cecef: sub    %r10d,%r9d
  0x00000001063cecf2: add    %r11d,%r9d
  0x00000001063cecf5: mov    %r9d,%r11d
  0x00000001063cecf8: shl    $0x5,%r11d
  0x00000001063cecfc: sub    %r9d,%r11d
  0x00000001063cecff: add    %edi,%r11d
  0x00000001063ced02: mov    %r11d,%r10d
  0x00000001063ced05: shl    $0x5,%r10d
  0x00000001063ced09: sub    %r11d,%r10d
  0x00000001063ced0c: add    %eax,%r10d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced0f: mov    %r10d,%r8d
  0x00000001063ced12: shl    $0x5,%r8d
  0x00000001063ced16: sub    %r10d,%r8d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced19: add    $0x8,%ebx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced1c: cmp    %ebp,%ebx
  0x00000001063ced1e: jl     0x00000001063cec80  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced24: mov    0x108(%r15),%r11   ; ImmutableOopMap{rcx=Oop rdx=Oop xmm0=Oop xmm2=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced2b: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x00000001063ced2e: cmp    (%rsp),%ebx
  0x00000001063ced31: jl     0x00000001063cec32
  0x00000001063ced37: vmovq  %xmm0,%rdi
  0x00000001063ced3c: vmovd  %xmm1,%r9d
  0x00000001063ced41: vmovq  %xmm2,%rsi
  0x00000001063ced46: cmp    %r9d,%ebx
  0x00000001063ced49: jl     0x00000001063cec10
  0x00000001063ced4f: mov    %r10d,%r8d
  0x00000001063ced52: mov    %r8d,0x10(%rdi)    ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ced56: jmpq   0x00000001063ceb04
  0x00000001063ced5b: xor    %r8d,%r8d
  0x00000001063ced5e: jmpq   0x00000001063ceb04
  0x00000001063ced63: mov    $0xffffffde,%esi
  0x00000001063ced68: mov    %r10d,%ebp
  0x00000001063ced6b: mov    %r11d,0x8(%rsp)
  0x00000001063ced70: mov    %rdx,0x10(%rsp)
  0x00000001063ced75: mov    %r8d,0xc(%rsp)
  0x00000001063ced7a: nop
  0x00000001063ced7b: callq  0x000000010637b900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ced80: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ced82: mov    $0xffffff4d,%esi
  0x00000001063ced87: mov    %r10d,%ebp
  0x00000001063ced8a: mov    %rdx,(%rsp)
  0x00000001063ced8e: mov    %r9d,0x8(%rsp)
  0x00000001063ced93: mov    %r11d,0x10(%rsp)
  0x00000001063ced98: data16 xchg %ax,%ax
  0x00000001063ced9b: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ceda0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceda2: mov    $0xffffff4d,%esi
  0x00000001063ceda7: mov    %rdx,(%rsp)
  0x00000001063cedab: mov    %r11d,0x8(%rsp)
  0x00000001063cedb0: mov    %r9d,0xc(%rsp)
  0x00000001063cedb5: mov    %r10d,0x10(%rsp)
  0x00000001063cedba: nop
  0x00000001063cedbb: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cedc0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063cedc2: mov    $0xffffff4d,%esi
  0x00000001063cedc7: mov    %r10d,%ebp
  0x00000001063cedca: mov    %rdx,(%rsp)
  0x00000001063cedce: mov    %r11d,0x8(%rsp)
  0x00000001063cedd3: mov    %ecx,0xc(%rsp)
  0x00000001063cedd7: mov    %r8d,0x10(%rsp)
  0x00000001063ceddc: data16 xchg %ax,%ax
  0x00000001063ceddf: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cede4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063cede6: mov    %rsi,(%rsp)
  0x00000001063cedea: mov    %rdx,0x8(%rsp)
  0x00000001063cedef: mov    $0xffffffc6,%esi
  0x00000001063cedf4: data16 xchg %ax,%ax
  0x00000001063cedf7: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cedfc: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cedfe: mov    %rdx,%rbp
  0x00000001063cee01: mov    %rsi,(%rsp)
  0x00000001063cee05: mov    %rdi,0x8(%rsp)
  0x00000001063cee0a: mov    %r8d,0x10(%rsp)
  0x00000001063cee0f: mov    %r9d,0x18(%rsp)
  0x00000001063cee14: mov    $0xffffff7e,%esi
  0x00000001063cee19: xchg   %ax,%ax
  0x00000001063cee1b: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cee20: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063cee22: mov    %rdx,(%rsp)
  0x00000001063cee26: mov    %rsi,0x8(%rsp)
  0x00000001063cee2b: mov    %rdi,0x18(%rsp)
  0x00000001063cee30: mov    $0xffffff4d,%esi
  0x00000001063cee35: xchg   %ax,%ax
  0x00000001063cee37: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cee3c: ud2    
  0x00000001063cee3e: mov    $0xffffffde,%esi
  0x00000001063cee43: mov    %r10d,%ebp
  0x00000001063cee46: mov    %r11d,0x8(%rsp)
  0x00000001063cee4b: mov    %rdx,0x10(%rsp)
  0x00000001063cee50: mov    %r8d,0x18(%rsp)
  0x00000001063cee55: xchg   %ax,%ax
  0x00000001063cee57: callq  0x000000010637b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cee5c: ud2    
  0x00000001063cee5e: mov    $0xfffffff4,%esi
  0x00000001063cee63: mov    %r10d,%ebp
  0x00000001063cee66: mov    %r11d,0x8(%rsp)
  0x00000001063cee6b: mov    %rdx,0x10(%rsp)
  0x00000001063cee70: data16 xchg %ax,%ax
  0x00000001063cee73: callq  0x000000010637b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cee78: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063cee7a: mov    %rsi,(%rsp)
  0x00000001063cee7e: mov    %rdx,0x8(%rsp)
  0x00000001063cee83: mov    %rdx,0x10(%rsp)
  0x00000001063cee88: mov    $0xffffff4d,%esi
  0x00000001063cee8d: xchg   %ax,%ax
  0x00000001063cee8f: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cee94: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063cee96: mov    $0xffffff4d,%esi
  0x00000001063cee9b: mov    %r10d,%ebp
  0x00000001063cee9e: mov    %rdx,(%rsp)
  0x00000001063ceea2: mov    %r9d,0xc(%rsp)
  0x00000001063ceea7: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ceeac: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceeae: mov    $0xffffff4d,%esi
  0x00000001063ceeb3: mov    %r10d,%ebp
  0x00000001063ceeb6: mov    %rdx,(%rsp)
  0x00000001063ceeba: mov    %r11d,0xc(%rsp)
  0x00000001063ceebf: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ceec4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001063ceec6: mov    $0xfffffff6,%esi
  0x00000001063ceecb: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ceed0: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001063ceed2: hlt    
  0x00000001063ceed3: hlt    
  0x00000001063ceed4: hlt    
  0x00000001063ceed5: hlt    
  0x00000001063ceed6: hlt    
  0x00000001063ceed7: hlt    
  0x00000001063ceed8: hlt    
  0x00000001063ceed9: hlt    
  0x00000001063ceeda: hlt    
  0x00000001063ceedb: hlt    
  0x00000001063ceedc: hlt    
  0x00000001063ceedd: hlt    
  0x00000001063ceede: hlt    
  0x00000001063ceedf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063ceee0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063ceee5: callq  0x00000001063ceeea
  0x00000001063ceeea: subq   $0x5,(%rsp)
  0x00000001063ceeef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063ceef4: hlt    
  0x00000001063ceef5: hlt    
  0x00000001063ceef6: hlt    
  0x00000001063ceef7: hlt    

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
ImmutableOopMap{}pc offsets: 1040 Compiled method (c2)     285   72             java.util.Optional::ofNullable (15 bytes)
 total in heap  [0x00000001063ce510,0x00000001063ce8f8] = 1000
 relocation     [0x00000001063ce688,0x00000001063ce6a0] = 24
 main code      [0x00000001063ce6a0,0x00000001063ce7c0] = 288
 stub code      [0x00000001063ce7c0,0x00000001063ce7d8] = 24
 metadata       [0x00000001063ce7d8,0x00000001063ce7f8] = 32
 scopes data    [0x00000001063ce7f8,0x00000001063ce838] = 64
 scopes pcs     [0x00000001063ce838,0x00000001063ce8d8] = 160
 dependencies   [0x00000001063ce8d8,0x00000001063ce8e0] = 8
 handler table  [0x00000001063ce8e0,0x00000001063ce8f8] = 24
----------------------------------------------------------------------
java/util/Optional.ofNullable(Ljava/lang/Object;)Ljava/util/Optional;  [0x00000001063ce6a0, 0x00000001063ce7d8]  312 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011da6dbb0} 'ofNullable' '(Ljava/lang/Object;)Ljava/util/Optional;' in 'java/util/Optional'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001063ce6a0: mov    %eax,-0x14000(%rsp)
  0x00000001063ce6a7: push   %rbp
  0x00000001063ce6a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::ofNullable@-1 (line 133)

  0x00000001063ce6ac: mov    %rsi,%rbp
  0x00000001063ce6af: test   %rsi,%rsi
  0x00000001063ce6b2: je     0x00000001063ce7a4
  0x00000001063ce6b8: mov    0x118(%r15),%rbx
  0x00000001063ce6bf: mov    %rbx,%r10
  0x00000001063ce6c2: add    $0x10,%r10
  0x00000001063ce6c6: cmp    0x128(%r15),%r10
  0x00000001063ce6cd: jae    0x00000001063ce78c  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x00000001063ce6d3: mov    %r10,0x118(%r15)
  0x00000001063ce6da: prefetchnta 0xc0(%r10)
  0x00000001063ce6e2: mov    $0x34bd8,%r10d     ;   {metadata('java/util/Optional')}
  0x00000001063ce6e8: movabs $0x800000000,%r12
  0x00000001063ce6f2: add    %r12,%r10
  0x00000001063ce6f5: xor    %r12,%r12
  0x00000001063ce6f8: mov    0xb8(%r10),%r10
  0x00000001063ce6ff: mov    %r10,(%rbx)
  0x00000001063ce702: movl   $0x34bd8,0x8(%rbx)  ;   {metadata('java/util/Optional')}
  0x00000001063ce709: mov    %rbp,%r10
  0x00000001063ce70c: shr    $0x3,%r10
  0x00000001063ce710: mov    %r10d,0xc(%rbx)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x00000001063ce714: mov    %rbp,%r10
  0x00000001063ce717: mov    %rbx,%r11
  0x00000001063ce71a: xor    %r11,%r10
  0x00000001063ce71d: shr    $0x14,%r10
  0x00000001063ce721: test   %r10,%r10
  0x00000001063ce724: je     0x00000001063ce779
  0x00000001063ce726: shr    $0x9,%r11
  0x00000001063ce72a: movabs $0x10f022000,%rdi
  0x00000001063ce734: add    %r11,%rdi
  0x00000001063ce737: cmpb   $0x20,(%rdi)
  0x00000001063ce73a: je     0x00000001063ce779
  0x00000001063ce73c: mov    0x70(%r15),%r10
  0x00000001063ce740: mov    0x80(%r15),%r11
  0x00000001063ce747: lock addl $0x0,-0x40(%rsp)
  0x00000001063ce74d: cmpb   $0x0,(%rdi)
  0x00000001063ce750: je     0x00000001063ce779
  0x00000001063ce752: movb   $0x0,(%rdi)
  0x00000001063ce755: test   %r10,%r10
  0x00000001063ce758: jne    0x00000001063ce76c
  0x00000001063ce75a: mov    %r15,%rsi
  0x00000001063ce75d: movabs $0x1057038ce,%r10
  0x00000001063ce767: callq  *%r10
  0x00000001063ce76a: jmp    0x00000001063ce779
  0x00000001063ce76c: mov    %rdi,-0x8(%r11,%r10,1)
  0x00000001063ce771: add    $0xfffffffffffffff8,%r10
  0x00000001063ce775: mov    %r10,0x70(%r15)    ;*synchronization entry
                                                ; - java.util.Optional::of@-1 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x00000001063ce779: mov    %rbx,%rax
  0x00000001063ce77c: add    $0x20,%rsp
  0x00000001063ce780: pop    %rbp
  0x00000001063ce781: mov    0x108(%r15),%r10
  0x00000001063ce788: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063ce78b: retq   
  0x00000001063ce78c: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x00000001063ce796: nop
  0x00000001063ce797: callq  0x00000001063b0100  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063ce79c: mov    %rax,%rbx
  0x00000001063ce79f: jmpq   0x00000001063ce709
  0x00000001063ce7a4: mov    $0xffffff4d,%esi
  0x00000001063ce7a9: xchg   %ax,%ax
  0x00000001063ce7ab: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@1 (line 133)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ce7b0: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x00000001063ce7b2: mov    %rax,%rsi
  0x00000001063ce7b5: add    $0x20,%rsp
  0x00000001063ce7b9: pop    %rbp
  0x00000001063ce7ba: jmpq   0x00000001063b2700  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _rethrow_Java}
  0x00000001063ce7bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063ce7c0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063ce7c5: callq  0x00000001063ce7ca
  0x00000001063ce7ca: subq   $0x5,(%rsp)
  0x00000001063ce7cf: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063ce7d4: hlt    
  0x00000001063ce7d5: hlt    
  0x00000001063ce7d6: hlt    
  0x00000001063ce7d7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 252 272 Compiled method (c2)     288   73             java.lang.invoke.DirectMethodHandle::internalMemberName (8 bytes)
 total in heap  [0x00000001063ce210,0x00000001063ce4f0] = 736
 relocation     [0x00000001063ce388,0x00000001063ce398] = 16
 main code      [0x00000001063ce3a0,0x00000001063ce400] = 96
 stub code      [0x00000001063ce400,0x00000001063ce418] = 24
 metadata       [0x00000001063ce418,0x00000001063ce428] = 16
 scopes data    [0x00000001063ce428,0x00000001063ce458] = 48
 scopes pcs     [0x00000001063ce458,0x00000001063ce4d8] = 128
 dependencies   [0x00000001063ce4d8,0x00000001063ce4e0] = 8
 nul chk table  [0x00000001063ce4e0,0x00000001063ce4f0] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle.internalMemberName(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001063ce3a0, 0x00000001063ce418]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011d8953f8} 'internalMemberName' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x00000001063ce3a0: mov    %eax,-0x14000(%rsp)
  0x00000001063ce3a7: push   %rbp
  0x00000001063ce3a8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@-1 (line 310)

  0x00000001063ce3ac: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x00000001063ce3e6
  0x00000001063ce3b0: cmp    $0xc0e0,%r11d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x00000001063ce3b7: jne    0x00000001063ce3d4  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x00000001063ce3b9: mov    0x1c(%rsi),%r11d
  0x00000001063ce3bd: mov    %r11,%rax
  0x00000001063ce3c0: shl    $0x3,%rax          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)

  0x00000001063ce3c4: add    $0x10,%rsp
  0x00000001063ce3c8: pop    %rbp
  0x00000001063ce3c9: mov    0x108(%r15),%r10
  0x00000001063ce3d0: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063ce3d3: retq   
  0x00000001063ce3d4: mov    %rsi,%rbp
  0x00000001063ce3d7: mov    $0xffffffde,%esi
  0x00000001063ce3dc: data16 xchg %ax,%ax
  0x00000001063ce3df: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ce3e4: ud2    
  0x00000001063ce3e6: mov    $0xfffffff4,%esi
  0x00000001063ce3eb: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063ce3f0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x00000001063ce3f2: hlt    
  0x00000001063ce3f3: hlt    
  0x00000001063ce3f4: hlt    
  0x00000001063ce3f5: hlt    
  0x00000001063ce3f6: hlt    
  0x00000001063ce3f7: hlt    
  0x00000001063ce3f8: hlt    
  0x00000001063ce3f9: hlt    
  0x00000001063ce3fa: hlt    
  0x00000001063ce3fb: hlt    
  0x00000001063ce3fc: hlt    
  0x00000001063ce3fd: hlt    
  0x00000001063ce3fe: hlt    
  0x00000001063ce3ff: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063ce400: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063ce405: callq  0x00000001063ce40a
  0x00000001063ce40a: subq   $0x5,(%rsp)
  0x00000001063ce40f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063ce414: hlt    
  0x00000001063ce415: hlt    
  0x00000001063ce416: hlt    
  0x00000001063ce417: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 68 
ImmutableOopMap{}pc offsets: 80 Compiled method (c2)     292   74             FunctionalHashMap::max100 (29 bytes)
 total in heap  [0x00000001063d1290,0x00000001063d1978] = 1768
 relocation     [0x00000001063d1408,0x00000001063d1448] = 64
 main code      [0x00000001063d1460,0x00000001063d1620] = 448
 stub code      [0x00000001063d1620,0x00000001063d1648] = 40
 oops           [0x00000001063d1648,0x00000001063d1660] = 24
 metadata       [0x00000001063d1660,0x00000001063d16a0] = 64
 scopes data    [0x00000001063d16a0,0x00000001063d1788] = 232
 scopes pcs     [0x00000001063d1788,0x00000001063d1928] = 416
 dependencies   [0x00000001063d1928,0x00000001063d1930] = 8
 handler table  [0x00000001063d1930,0x00000001063d1960] = 48
 nul chk table  [0x00000001063d1960,0x00000001063d1978] = 24
----------------------------------------------------------------------
FunctionalHashMap.max100(I)Ljava/lang/String;  [0x00000001063d1460, 0x00000001063d1648]  488 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011dc229f0} 'max100' '(I)Ljava/lang/String;' in 'FunctionalHashMap'
  # this:     rsi:rsi   = 'FunctionalHashMap'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001063d1460: mov    0x8(%rsi),%r10d
  0x00000001063d1464: movabs $0x800000000,%r12
  0x00000001063d146e: add    %r12,%r10
  0x00000001063d1471: xor    %r12,%r12
  0x00000001063d1474: cmp    %r10,%rax
  0x00000001063d1477: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063d147d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063d1480: mov    %eax,-0x14000(%rsp)
  0x00000001063d1487: push   %rbp
  0x00000001063d1488: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::max100@-1 (line 49)

  0x00000001063d148c: mov    %edx,0x4(%rsp)
  0x00000001063d1490: movabs $0x70fe0f540,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f540} = 'FunctionalHashMap')}
  0x00000001063d149a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)

  0x00000001063d149e: mov    %r11d,0x8(%rsp)
  0x00000001063d14a3: cmp    $0xffffff80,%edx
  0x00000001063d14a6: jl     0x00000001063d15ae  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d14ac: cmp    $0x7f,%edx
  0x00000001063d14af: jle    0x00000001063d154d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d14b5: mov    0x118(%r15),%rdx
  0x00000001063d14bc: mov    %rdx,%r10
  0x00000001063d14bf: add    $0x10,%r10
  0x00000001063d14c3: cmp    0x128(%r15),%r10
  0x00000001063d14ca: jae    0x00000001063d1578
  0x00000001063d14d0: mov    %r10,0x118(%r15)
  0x00000001063d14d7: prefetchnta 0xc0(%r10)
  0x00000001063d14df: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x00000001063d14e5: movabs $0x800000000,%r12
  0x00000001063d14ef: add    %r12,%r10
  0x00000001063d14f2: xor    %r12,%r12
  0x00000001063d14f5: mov    0xb8(%r10),%r10
  0x00000001063d14fc: mov    %r10,(%rdx)
  0x00000001063d14ff: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001063d1506: mov    0x4(%rsp),%r10d
  0x00000001063d150b: mov    %r10d,0xc(%rdx)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d150f: mov    0x8(%rsp),%r11d
  0x00000001063d1514: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x00000001063d15e6
  0x00000001063d1519: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x00000001063d1520: jne    0x00000001063d1594
  0x00000001063d1522: lea    (%r12,%r11,8),%rsi
  0x00000001063d1526: nop
  0x00000001063d1527: callq  0x0000000106379f00  ; ImmutableOopMap{}
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {optimized virtual_call}
  0x00000001063d152c: mov    0x8(%rax),%r11d    ; implicit exception: dispatches to 0x00000001063d15f6
  0x00000001063d1530: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x00000001063d1537: jne    0x00000001063d15d2  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)

  0x00000001063d153d: add    $0x20,%rsp
  0x00000001063d1541: pop    %rbp
  0x00000001063d1542: mov    0x108(%r15),%r10
  0x00000001063d1549: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d154c: retq   
  0x00000001063d154d: mov    %edx,%ebp
  0x00000001063d154f: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d1555: cmp    $0x100,%ebp
  0x00000001063d155b: jae    0x00000001063d15c2
  0x00000001063d155d: movslq %edx,%r10
  0x00000001063d1560: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x00000001063d156a: mov    0x210(%r11,%r10,4),%r10d
  0x00000001063d1572: lea    (%r12,%r10,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d1576: jmp    0x00000001063d150f
  0x00000001063d1578: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001063d1582: mov    0x4(%rsp),%ebp
  0x00000001063d1586: nop
  0x00000001063d1587: callq  0x00000001063b0100  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063d158c: mov    %rax,%rdx
  0x00000001063d158f: jmpq   0x00000001063d1506
  0x00000001063d1594: mov    $0xffffffde,%esi
  0x00000001063d1599: mov    0x4(%rsp),%ebp
  0x00000001063d159d: mov    %r11d,(%rsp)
  0x00000001063d15a1: mov    %rdx,0x8(%rsp)
  0x00000001063d15a6: nop
  0x00000001063d15a7: callq  0x000000010637b900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d15ac: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x00000001063d15ae: mov    $0xffffff4d,%esi
  0x00000001063d15b3: mov    %r11d,(%rsp)
  0x00000001063d15b7: mov    %edx,0x8(%rsp)
  0x00000001063d15bb: callq  0x000000010637b900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d15c0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d15c2: mov    $0xffffffe4,%esi
  0x00000001063d15c7: mov    %edx,(%rsp)
  0x00000001063d15ca: nop
  0x00000001063d15cb: callq  0x000000010637b900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d15d0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d15d2: mov    $0xffffffde,%esi
  0x00000001063d15d7: mov    0x4(%rsp),%ebp
  0x00000001063d15db: mov    %rax,(%rsp)
  0x00000001063d15df: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d15e4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x00000001063d15e6: mov    $0xfffffff6,%esi
  0x00000001063d15eb: mov    %rdx,%rbp
  0x00000001063d15ee: nop
  0x00000001063d15ef: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d15f4: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x00000001063d15f6: mov    $0xfffffff4,%esi
  0x00000001063d15fb: mov    0x4(%rsp),%ebp
  0x00000001063d15ff: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d1604: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001063d1606: mov    %rax,%rsi
  0x00000001063d1609: jmp    0x00000001063d160e
  0x00000001063d160b: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x00000001063d160e: add    $0x20,%rsp
  0x00000001063d1612: pop    %rbp
  0x00000001063d1613: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063d1618: hlt    
  0x00000001063d1619: hlt    
  0x00000001063d161a: hlt    
  0x00000001063d161b: hlt    
  0x00000001063d161c: hlt    
  0x00000001063d161d: hlt    
  0x00000001063d161e: hlt    
  0x00000001063d161f: hlt    
[Stub Code]
  0x00000001063d1620: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063d162a: jmpq   0x00000001063d162a  ;   {runtime_call}
[Exception Handler]
  0x00000001063d162f: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063d1634: callq  0x00000001063d1639
  0x00000001063d1639: subq   $0x5,(%rsp)
  0x00000001063d163e: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d1643: hlt    
  0x00000001063d1644: hlt    
  0x00000001063d1645: hlt    
  0x00000001063d1646: hlt    
  0x00000001063d1647: hlt    

ImmutableOopMap{}pc offsets: 204 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 300 
ImmutableOopMap{[0]=NarrowOop [8]=Oop }pc offsets: 332 
ImmutableOopMap{[0]=NarrowOop }pc offsets: 352 
ImmutableOopMap{[8]=NarrowOop }pc offsets: 368 
ImmutableOopMap{[0]=Oop }pc offsets: 388 
ImmutableOopMap{rbp=Oop }pc offsets: 404 
ImmutableOopMap{}pc offsets: 420 Compiled method (c2)     296   75             java.lang.invoke.Invokers$Holder::linkToTargetMethod (9 bytes)
 total in heap  [0x00000001063cdd90,0x00000001063ce100] = 880
 relocation     [0x00000001063cdf08,0x00000001063cdf28] = 32
 main code      [0x00000001063cdf40,0x00000001063cdfc0] = 128
 stub code      [0x00000001063cdfc0,0x00000001063cdff8] = 56
 metadata       [0x00000001063cdff8,0x00000001063ce008] = 16
 scopes data    [0x00000001063ce008,0x00000001063ce040] = 56
 scopes pcs     [0x00000001063ce040,0x00000001063ce0d0] = 144
 dependencies   [0x00000001063ce0d0,0x00000001063ce0d8] = 8
 handler table  [0x00000001063ce0d8,0x00000001063ce0f0] = 24
 nul chk table  [0x00000001063ce0f0,0x00000001063ce100] = 16
----------------------------------------------------------------------
java/lang/invoke/Invokers$Holder.linkToTargetMethod(ILjava/lang/Object;)Ljava/lang/Object;  [0x00000001063cdf40, 0x00000001063cdff8]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011dba3798} 'linkToTargetMethod' '(ILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/Invokers$Holder'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001063cdf40: mov    %eax,-0x14000(%rsp)
  0x00000001063cdf47: push   %rbp
  0x00000001063cdf48: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@-1

  0x00000001063cdf4c: mov    %esi,%r11d
  0x00000001063cdf4f: mov    0x8(%rdx),%r10d    ; implicit exception: dispatches to 0x00000001063cdf9b
  0x00000001063cdf53: cmp    $0xc0e0,%r10d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x00000001063cdf5a: jne    0x00000001063cdf78
  0x00000001063cdf5c: mov    %rdx,%rsi          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x00000001063cdf5f: mov    %r11d,%edx
  0x00000001063cdf62: nop
  0x00000001063cdf63: callq  0x0000000106379f00  ; ImmutableOopMap{}
                                                ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ;   {optimized virtual_call}
  0x00000001063cdf68: add    $0x20,%rsp
  0x00000001063cdf6c: pop    %rbp
  0x00000001063cdf6d: mov    0x108(%r15),%r10
  0x00000001063cdf74: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cdf77: retq   
  0x00000001063cdf78: mov    $0xffffff6e,%esi
  0x00000001063cdf7d: mov    %r11d,%ebp
  0x00000001063cdf80: mov    %rdx,(%rsp)
  0x00000001063cdf84: data16 xchg %ax,%ax
  0x00000001063cdf87: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cdf8c: ud2                       ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5

  0x00000001063cdf8e: mov    %rax,%rsi
  0x00000001063cdf91: add    $0x20,%rsp
  0x00000001063cdf95: pop    %rbp
  0x00000001063cdf96: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063cdf9b: mov    $0xffffff64,%esi
  0x00000001063cdfa0: mov    %r11d,%ebp
  0x00000001063cdfa3: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063cdfa8: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x00000001063cdfaa: hlt    
  0x00000001063cdfab: hlt    
  0x00000001063cdfac: hlt    
  0x00000001063cdfad: hlt    
  0x00000001063cdfae: hlt    
  0x00000001063cdfaf: hlt    
  0x00000001063cdfb0: hlt    
  0x00000001063cdfb1: hlt    
  0x00000001063cdfb2: hlt    
  0x00000001063cdfb3: hlt    
  0x00000001063cdfb4: hlt    
  0x00000001063cdfb5: hlt    
  0x00000001063cdfb6: hlt    
  0x00000001063cdfb7: hlt    
  0x00000001063cdfb8: hlt    
  0x00000001063cdfb9: hlt    
  0x00000001063cdfba: hlt    
  0x00000001063cdfbb: hlt    
  0x00000001063cdfbc: hlt    
  0x00000001063cdfbd: hlt    
  0x00000001063cdfbe: hlt    
  0x00000001063cdfbf: hlt    
[Stub Code]
  0x00000001063cdfc0: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063cdfca: jmpq   0x00000001063cdfca  ;   {runtime_call}
[Exception Handler]
  0x00000001063cdfcf: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063cdfd4: callq  0x00000001063cdfd9
  0x00000001063cdfd9: subq   $0x5,(%rsp)
  0x00000001063cdfde: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
[Deopt MH Handler Code]
  0x00000001063cdfe3: callq  0x00000001063cdfe8
  0x00000001063cdfe8: subq   $0x5,(%rsp)
  0x00000001063cdfed: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cdff2: hlt    
  0x00000001063cdff3: hlt    
  0x00000001063cdff4: hlt    
  0x00000001063cdff5: hlt    
  0x00000001063cdff6: hlt    
  0x00000001063cdff7: hlt    

ImmutableOopMap{}pc offsets: 40 
ImmutableOopMap{[0]=Oop }pc offsets: 76 
ImmutableOopMap{}pc offsets: 104 Compiled method (c2)     299   76             java.lang.invoke.DirectMethodHandle$Holder::invokeStatic (14 bytes)
 total in heap  [0x00000001063d1990,0x00000001063d1d20] = 912
 relocation     [0x00000001063d1b08,0x00000001063d1b28] = 32
 main code      [0x00000001063d1b40,0x00000001063d1bc0] = 128
 stub code      [0x00000001063d1bc0,0x00000001063d1be8] = 40
 metadata       [0x00000001063d1be8,0x00000001063d1c00] = 24
 scopes data    [0x00000001063d1c00,0x00000001063d1c50] = 80
 scopes pcs     [0x00000001063d1c50,0x00000001063d1cf0] = 160
 dependencies   [0x00000001063d1cf0,0x00000001063d1cf8] = 8
 handler table  [0x00000001063d1cf8,0x00000001063d1d10] = 24
 nul chk table  [0x00000001063d1d10,0x00000001063d1d20] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle$Holder.invokeStatic(Ljava/lang/Object;I)Ljava/lang/Object;  [0x00000001063d1b40, 0x00000001063d1be8]  168 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011db62110} 'invokeStatic' '(Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001063d1b40: mov    %eax,-0x14000(%rsp)
  0x00000001063d1b47: push   %rbp
  0x00000001063d1b48: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@-1

  0x00000001063d1b4c: mov    %edx,%r10d
  0x00000001063d1b4f: mov    0x8(%rsi),%r8d     ; implicit exception: dispatches to 0x00000001063d1b9f
  0x00000001063d1b53: cmp    $0xc0e0,%r8d       ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x00000001063d1b5a: jne    0x00000001063d1b80  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x00000001063d1b5c: mov    0x1c(%rsi),%r8d
  0x00000001063d1b60: mov    %r8,%rdx
  0x00000001063d1b63: shl    $0x3,%rdx          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x00000001063d1b67: mov    %r10d,%esi
  0x00000001063d1b6a: nop
  0x00000001063d1b6b: callq  0x000000010637a400  ; ImmutableOopMap{}
                                                ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ;   {static_call}
  0x00000001063d1b70: add    $0x20,%rsp
  0x00000001063d1b74: pop    %rbp
  0x00000001063d1b75: mov    0x108(%r15),%r10
  0x00000001063d1b7c: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d1b7f: retq   
  0x00000001063d1b80: mov    %edx,%ebp
  0x00000001063d1b82: mov    %rsi,(%rsp)
  0x00000001063d1b86: mov    $0xffffff6e,%esi
  0x00000001063d1b8b: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d1b90: ud2                       ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10

  0x00000001063d1b92: mov    %rax,%rsi
  0x00000001063d1b95: add    $0x20,%rsp
  0x00000001063d1b99: pop    %rbp
  0x00000001063d1b9a: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063d1b9f: mov    $0xffffff64,%esi
  0x00000001063d1ba4: mov    %edx,%ebp
  0x00000001063d1ba6: nop
  0x00000001063d1ba7: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d1bac: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x00000001063d1bae: hlt    
  0x00000001063d1baf: hlt    
  0x00000001063d1bb0: hlt    
  0x00000001063d1bb1: hlt    
  0x00000001063d1bb2: hlt    
  0x00000001063d1bb3: hlt    
  0x00000001063d1bb4: hlt    
  0x00000001063d1bb5: hlt    
  0x00000001063d1bb6: hlt    
  0x00000001063d1bb7: hlt    
  0x00000001063d1bb8: hlt    
  0x00000001063d1bb9: hlt    
  0x00000001063d1bba: hlt    
  0x00000001063d1bbb: hlt    
  0x00000001063d1bbc: hlt    
  0x00000001063d1bbd: hlt    
  0x00000001063d1bbe: hlt    
  0x00000001063d1bbf: hlt    
[Stub Code]
  0x00000001063d1bc0: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063d1bca: jmpq   0x00000001063d1bca  ;   {runtime_call}
[Exception Handler]
  0x00000001063d1bcf: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063d1bd4: callq  0x00000001063d1bd9
  0x00000001063d1bd9: subq   $0x5,(%rsp)
  0x00000001063d1bde: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d1be3: hlt    
  0x00000001063d1be4: hlt    
  0x00000001063d1be5: hlt    
  0x00000001063d1be6: hlt    
  0x00000001063d1be7: hlt    

ImmutableOopMap{}pc offsets: 48 
ImmutableOopMap{[0]=Oop }pc offsets: 80 
ImmutableOopMap{}pc offsets: 108 Compiled method (c2)     301   77             FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda (9 bytes)
 total in heap  [0x00000001063cf710,0x00000001063cfa18] = 776
 relocation     [0x00000001063cf888,0x00000001063cf8a0] = 24
 main code      [0x00000001063cf8a0,0x00000001063cf940] = 160
 stub code      [0x00000001063cf940,0x00000001063cf958] = 24
 oops           [0x00000001063cf958,0x00000001063cf960] = 8
 metadata       [0x00000001063cf960,0x00000001063cf970] = 16
 scopes data    [0x00000001063cf970,0x00000001063cf988] = 24
 scopes pcs     [0x00000001063cf988,0x00000001063cf9f8] = 112
 dependencies   [0x00000001063cf9f8,0x00000001063cfa00] = 8
 handler table  [0x00000001063cfa00,0x00000001063cfa18] = 24
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.get$Lambda(I)Ljava/util/function/Supplier;  [0x00000001063cf8a0, 0x00000001063cf958]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011dc24300} 'get$Lambda' '(I)Ljava/util/function/Supplier;' in 'FunctionalHashMap$$Lambda$1'
  # parm0:    rsi       = int
  #           [sp+0x20]  (sp of caller)
  0x00000001063cf8a0: mov    %eax,-0x14000(%rsp)
  0x00000001063cf8a7: push   %rbp
  0x00000001063cf8a8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x00000001063cf8ac: mov    %esi,%ebp
  0x00000001063cf8ae: mov    0x118(%r15),%rax
  0x00000001063cf8b5: mov    %rax,%r10
  0x00000001063cf8b8: add    $0x10,%r10
  0x00000001063cf8bc: cmp    0x128(%r15),%r10
  0x00000001063cf8c3: jae    0x00000001063cf90e
  0x00000001063cf8c5: mov    %r10,0x118(%r15)
  0x00000001063cf8cc: prefetchnta 0xc0(%r10)
  0x00000001063cf8d4: mov    $0x60840,%r10d     ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x00000001063cf8da: movabs $0x800000000,%r12
  0x00000001063cf8e4: add    %r12,%r10
  0x00000001063cf8e7: xor    %r12,%r12
  0x00000001063cf8ea: mov    0xb8(%r10),%r10
  0x00000001063cf8f1: mov    %r10,(%rax)
  0x00000001063cf8f4: movl   $0x60840,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x00000001063cf8fb: mov    %ebp,0xc(%rax)     ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x00000001063cf8fe: add    $0x10,%rsp
  0x00000001063cf902: pop    %rbp
  0x00000001063cf903: mov    0x108(%r15),%r10
  0x00000001063cf90a: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063cf90d: retq   
  0x00000001063cf90e: movabs $0x800060840,%rsi  ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x00000001063cf918: data16 xchg %ax,%ax
  0x00000001063cf91b: callq  0x00000001063b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063cf920: jmp    0x00000001063cf8fb  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0

  0x00000001063cf922: mov    %rax,%rsi
  0x00000001063cf925: add    $0x10,%rsp
  0x00000001063cf929: pop    %rbp
  0x00000001063cf92a: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063cf92f: hlt    
  0x00000001063cf930: hlt    
  0x00000001063cf931: hlt    
  0x00000001063cf932: hlt    
  0x00000001063cf933: hlt    
  0x00000001063cf934: hlt    
  0x00000001063cf935: hlt    
  0x00000001063cf936: hlt    
  0x00000001063cf937: hlt    
  0x00000001063cf938: hlt    
  0x00000001063cf939: hlt    
  0x00000001063cf93a: hlt    
  0x00000001063cf93b: hlt    
  0x00000001063cf93c: hlt    
  0x00000001063cf93d: hlt    
  0x00000001063cf93e: hlt    
  0x00000001063cf93f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063cf940: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063cf945: callq  0x00000001063cf94a
  0x00000001063cf94a: subq   $0x5,(%rsp)
  0x00000001063cf94f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063cf954: hlt    
  0x00000001063cf955: hlt    
  0x00000001063cf956: hlt    
  0x00000001063cf957: hlt    

ImmutableOopMap{}pc offsets: 128 Compiled method (c2)     303   78             FunctionalHashMap$$Lambda$1/0x0000000800060840::<init> (10 bytes)
 total in heap  [0x00000001063d1d90,0x00000001063d1fe0] = 592
 relocation     [0x00000001063d1f08,0x00000001063d1f18] = 16
 main code      [0x00000001063d1f20,0x00000001063d1f60] = 64
 stub code      [0x00000001063d1f60,0x00000001063d1f78] = 24
 oops           [0x00000001063d1f78,0x00000001063d1f80] = 8
 metadata       [0x00000001063d1f80,0x00000001063d1f88] = 8
 scopes data    [0x00000001063d1f88,0x00000001063d1f98] = 16
 scopes pcs     [0x00000001063d1f98,0x00000001063d1fd8] = 64
 dependencies   [0x00000001063d1fd8,0x00000001063d1fe0] = 8
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.<init>(I)V  [0x00000001063d1f20, 0x00000001063d1f78]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011dc24260} '<init>' '(I)V' in 'FunctionalHashMap$$Lambda$1'
  # this:     rsi:rsi   = 'FunctionalHashMap$$Lambda$1'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x00000001063d1f20: mov    0x8(%rsi),%r10d
  0x00000001063d1f24: movabs $0x800000000,%r12
  0x00000001063d1f2e: add    %r12,%r10
  0x00000001063d1f31: xor    %r12,%r12
  0x00000001063d1f34: cmp    %r10,%rax
  0x00000001063d1f37: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063d1f3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063d1f40: sub    $0x18,%rsp
  0x00000001063d1f47: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@-1

  0x00000001063d1f4c: mov    %edx,0xc(%rsi)     ;*putfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@6

  0x00000001063d1f4f: add    $0x10,%rsp
  0x00000001063d1f53: pop    %rbp
  0x00000001063d1f54: mov    0x108(%r15),%r10
  0x00000001063d1f5b: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d1f5e: retq   
  0x00000001063d1f5f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063d1f60: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063d1f65: callq  0x00000001063d1f6a
  0x00000001063d1f6a: subq   $0x5,(%rsp)
  0x00000001063d1f6f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d1f74: hlt    
  0x00000001063d1f75: hlt    
  0x00000001063d1f76: hlt    
  0x00000001063d1f77: hlt    
Compiled method (c2)     304   79             java.util.Optional::orElseGet (21 bytes)
 total in heap  [0x00000001063d2010,0x00000001063d22f0] = 736
 relocation     [0x00000001063d2188,0x00000001063d2198] = 16
 main code      [0x00000001063d21a0,0x00000001063d2220] = 128
 stub code      [0x00000001063d2220,0x00000001063d2238] = 24
 metadata       [0x00000001063d2238,0x00000001063d2240] = 8
 scopes data    [0x00000001063d2240,0x00000001063d2268] = 40
 scopes pcs     [0x00000001063d2268,0x00000001063d22e8] = 128
 dependencies   [0x00000001063d22e8,0x00000001063d22f0] = 8
----------------------------------------------------------------------
java/util/Optional.orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;  [0x00000001063d21a0, 0x00000001063d2238]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011da6e548} 'orElseGet' '(Ljava/util/function/Supplier;)Ljava/lang/Object;' in 'java/util/Optional'
  # this:     rsi:rsi   = 'java/util/Optional'
  # parm0:    rdx:rdx   = 'java/util/function/Supplier'
  #           [sp+0x30]  (sp of caller)
  0x00000001063d21a0: mov    0x8(%rsi),%r10d
  0x00000001063d21a4: movabs $0x800000000,%r12
  0x00000001063d21ae: add    %r12,%r10
  0x00000001063d21b1: xor    %r12,%r12
  0x00000001063d21b4: cmp    %r10,%rax
  0x00000001063d21b7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063d21bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063d21c0: mov    %eax,-0x14000(%rsp)
  0x00000001063d21c7: push   %rbp
  0x00000001063d21c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::orElseGet@-1 (line 369)

  0x00000001063d21cc: mov    0xc(%rsi),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x00000001063d21d0: test   %r11d,%r11d
  0x00000001063d21d3: je     0x00000001063d21ec  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x00000001063d21d5: mov    %r11,%rax
  0x00000001063d21d8: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x00000001063d21dc: add    $0x20,%rsp
  0x00000001063d21e0: pop    %rbp
  0x00000001063d21e1: mov    0x108(%r15),%r10
  0x00000001063d21e8: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d21eb: retq   
  0x00000001063d21ec: mov    %rsi,%rbp
  0x00000001063d21ef: mov    %rdx,(%rsp)
  0x00000001063d21f3: mov    %r11d,0x8(%rsp)
  0x00000001063d21f8: mov    $0xffffff4d,%esi
  0x00000001063d21fd: xchg   %ax,%ax
  0x00000001063d21ff: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d2204: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x00000001063d2206: hlt    
  0x00000001063d2207: hlt    
  0x00000001063d2208: hlt    
  0x00000001063d2209: hlt    
  0x00000001063d220a: hlt    
  0x00000001063d220b: hlt    
  0x00000001063d220c: hlt    
  0x00000001063d220d: hlt    
  0x00000001063d220e: hlt    
  0x00000001063d220f: hlt    
  0x00000001063d2210: hlt    
  0x00000001063d2211: hlt    
  0x00000001063d2212: hlt    
  0x00000001063d2213: hlt    
  0x00000001063d2214: hlt    
  0x00000001063d2215: hlt    
  0x00000001063d2216: hlt    
  0x00000001063d2217: hlt    
  0x00000001063d2218: hlt    
  0x00000001063d2219: hlt    
  0x00000001063d221a: hlt    
  0x00000001063d221b: hlt    
  0x00000001063d221c: hlt    
  0x00000001063d221d: hlt    
  0x00000001063d221e: hlt    
  0x00000001063d221f: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063d2220: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063d2225: callq  0x00000001063d222a
  0x00000001063d222a: subq   $0x5,(%rsp)
  0x00000001063d222f: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d2234: hlt    
  0x00000001063d2235: hlt    
  0x00000001063d2236: hlt    
  0x00000001063d2237: hlt    

ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 100 Compiled method (c2)     308   80             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x00000001063d2310,0x00000001063d2588] = 632
 relocation     [0x00000001063d2488,0x00000001063d2498] = 16
 main code      [0x00000001063d24a0,0x00000001063d24e0] = 64
 stub code      [0x00000001063d24e0,0x00000001063d24f8] = 24
 oops           [0x00000001063d24f8,0x00000001063d2500] = 8
 metadata       [0x00000001063d2500,0x00000001063d2508] = 8
 scopes data    [0x00000001063d2508,0x00000001063d2530] = 40
 scopes pcs     [0x00000001063d2530,0x00000001063d2580] = 80
 dependencies   [0x00000001063d2580,0x00000001063d2588] = 8
----------------------------------------------------------------------
FunctionalHashMap.runTest()Ljava/lang/String;  [0x00000001063d24a0, 0x00000001063d24f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011dc22920} 'runTest' '()Ljava/lang/String;' in 'FunctionalHashMap'
  #           [sp+0x20]  (sp of caller)
  0x00000001063d24a0: mov    0x8(%rsi),%r10d
  0x00000001063d24a4: movabs $0x800000000,%r12
  0x00000001063d24ae: add    %r12,%r10
  0x00000001063d24b1: xor    %r12,%r12
  0x00000001063d24b4: cmp    %r10,%rax
  0x00000001063d24b7: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063d24bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063d24c0: mov    %eax,-0x14000(%rsp)
  0x00000001063d24c7: push   %rbp
  0x00000001063d24c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x00000001063d24cc: mov    %rsi,%rbp
  0x00000001063d24cf: mov    $0xffffffbe,%esi
  0x00000001063d24d4: data16 xchg %ax,%ax
  0x00000001063d24d7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d24dc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x00000001063d24de: hlt    
  0x00000001063d24df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001063d24e0: jmpq   0x00000001063b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001063d24e5: callq  0x00000001063d24ea
  0x00000001063d24ea: subq   $0x5,(%rsp)
  0x00000001063d24ef: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d24f4: hlt    
  0x00000001063d24f5: hlt    
  0x00000001063d24f6: hlt    
  0x00000001063d24f7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     313   81 %           FunctionalHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x00000001063d0990,0x00000001063d1248] = 2232
 relocation     [0x00000001063d0b08,0x00000001063d0b58] = 80
 main code      [0x00000001063d0b60,0x00000001063d0e00] = 672
 stub code      [0x00000001063d0e00,0x00000001063d0e28] = 40
 oops           [0x00000001063d0e28,0x00000001063d0e38] = 16
 metadata       [0x00000001063d0e38,0x00000001063d0e70] = 56
 scopes data    [0x00000001063d0e70,0x00000001063d0fc8] = 344
 scopes pcs     [0x00000001063d0fc8,0x00000001063d11f8] = 560
 dependencies   [0x00000001063d11f8,0x00000001063d1200] = 8
 handler table  [0x00000001063d1200,0x00000001063d1230] = 48
 nul chk table  [0x00000001063d1230,0x00000001063d1248] = 24
----------------------------------------------------------------------
FunctionalHashMap.runTest()Ljava/lang/String;  [0x00000001063d0b60, 0x00000001063d0e28]  712 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011dc22920} 'runTest' '()Ljava/lang/String;' in 'FunctionalHashMap'
  0x00000001063d0b60: callq  0x0000000105a107f4  ;   {runtime_call os::breakpoint()}
  0x00000001063d0b65: data16 data16 nopw 0x0(%rax,%rax,1)
  0x00000001063d0b70: mov    %eax,-0x14000(%rsp)
  0x00000001063d0b77: push   %rbp
  0x00000001063d0b78: sub    $0x30,%rsp
  0x00000001063d0b7c: mov    0x10(%rsi),%r13
  0x00000001063d0b80: mov    0x8(%rsi),%r14
  0x00000001063d0b84: mov    (%rsi),%ebx
  0x00000001063d0b86: mov    %rsi,%rdi
  0x00000001063d0b89: movabs $0x105a91a82,%r10
  0x00000001063d0b93: callq  *%r10
  0x00000001063d0b96: test   %r13,%r13
  0x00000001063d0b99: je     0x00000001063d0d46
  0x00000001063d0b9f: mov    0x8(%r13),%r10d
  0x00000001063d0ba3: cmp    $0x60040,%r10d     ;   {metadata('FunctionalHashMap')}
  0x00000001063d0baa: jne    0x00000001063d0da6
  0x00000001063d0bb0: mov    %r13,%r11
  0x00000001063d0bb3: test   %r14,%r14
  0x00000001063d0bb6: je     0x00000001063d0d4e
  0x00000001063d0bbc: mov    0x8(%r14),%r8d
  0x00000001063d0bc0: cmp    $0x1808,%r8d       ;   {metadata('java/lang/String')}
  0x00000001063d0bc7: jne    0x00000001063d0da6  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x00000001063d0bcd: test   %r11,%r11
  0x00000001063d0bd0: je     0x00000001063d0d8e
  0x00000001063d0bd6: mov    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x00000001063d0bdc: movabs $0x800000000,%r9
  0x00000001063d0be6: add    %r8,%r9
  0x00000001063d0be9: jmpq   0x00000001063d0c67
  0x00000001063d0bee: xchg   %ax,%ax            ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001063d0bf0: mov    %r8,0x118(%r15)
  0x00000001063d0bf7: prefetchnta 0xc0(%r8)
  0x00000001063d0bff: mov    0xb8(%r9),%r8
  0x00000001063d0c06: mov    %r8,(%rdx)
  0x00000001063d0c09: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001063d0c10: mov    %ebx,0xc(%rdx)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0c13: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x00000001063d0dd2
  0x00000001063d0c18: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x00000001063d0c1f: jne    0x00000001063d0d29  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0c25: mov    %r9,0x8(%rsp)
  0x00000001063d0c2a: mov    %r11,%rbp
  0x00000001063d0c2d: mov    %ebx,(%rsp)        ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0c30: lea    (%r12,%r10,8),%rsi
  0x00000001063d0c34: data16 xchg %ax,%ax
  0x00000001063d0c37: callq  0x0000000106379f00  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {optimized virtual_call}
  0x00000001063d0c3c: mov    %rax,%r14
  0x00000001063d0c3f: mov    0x8(%rax),%r11d    ; implicit exception: dispatches to 0x00000001063d0de2
  0x00000001063d0c43: cmp    $0x1808,%r11d      ;   {metadata('java/lang/String')}
  0x00000001063d0c4a: jne    0x00000001063d0dbe  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001063d0c50: mov    0x108(%r15),%r10
  0x00000001063d0c57: mov    (%rsp),%ebx
  0x00000001063d0c5a: inc    %ebx               ; ImmutableOopMap{rbp=Oop r14=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001063d0c5c: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)
                                                ;   {poll}
  0x00000001063d0c5f: mov    %rbp,%r11
  0x00000001063d0c62: mov    0x8(%rsp),%r9      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x00000001063d0c67: cmp    $0x3e8,%ebx
  0x00000001063d0c6d: jge    0x00000001063d0d16  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x00000001063d0c73: movabs $0x70fe0f540,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f540} = 'FunctionalHashMap')}
  0x00000001063d0c7d: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0c81: cmp    $0xffffff80,%ebx
  0x00000001063d0c84: jl     0x00000001063d0d56  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0c8a: cmp    $0x7f,%ebx
  0x00000001063d0c8d: jle    0x00000001063d0ce4
  0x00000001063d0c8f: mov    0x118(%r15),%rdx
  0x00000001063d0c96: mov    %rdx,%r8
  0x00000001063d0c99: add    $0x10,%r8          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001063d0c9d: cmp    0x128(%r15),%r8
  0x00000001063d0ca4: jb     0x00000001063d0bf0
  0x00000001063d0caa: mov    %r10d,0x10(%rsp)
  0x00000001063d0caf: mov    %r9,0x8(%rsp)
  0x00000001063d0cb4: mov    %r11,(%rsp)
  0x00000001063d0cb8: mov    %ebx,%ebp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0cba: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001063d0cc4: data16 xchg %ax,%ax
  0x00000001063d0cc7: callq  0x00000001063b0100  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063d0ccc: mov    %rax,%rdx
  0x00000001063d0ccf: mov    %ebp,%ebx
  0x00000001063d0cd1: mov    (%rsp),%r11
  0x00000001063d0cd5: mov    0x8(%rsp),%r9
  0x00000001063d0cda: mov    0x10(%rsp),%r10d
  0x00000001063d0cdf: jmpq   0x00000001063d0c10
  0x00000001063d0ce4: mov    %ebx,%ebp
  0x00000001063d0ce6: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0cec: cmp    $0x100,%ebp
  0x00000001063d0cf2: jae    0x00000001063d0d72
  0x00000001063d0cf8: movslq %ebx,%r8
  0x00000001063d0cfb: movabs $0x70ff1e8c8,%rcx  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x00000001063d0d05: mov    0x210(%rcx,%r8,4),%r8d
  0x00000001063d0d0d: lea    (%r12,%r8,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0d11: jmpq   0x00000001063d0c13
  0x00000001063d0d16: mov    %r14,%rax
  0x00000001063d0d19: add    $0x30,%rsp
  0x00000001063d0d1d: pop    %rbp
  0x00000001063d0d1e: mov    0x108(%r15),%r10
  0x00000001063d0d25: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d0d28: retq   
  0x00000001063d0d29: mov    $0xffffffde,%esi
  0x00000001063d0d2e: mov    %r11,%rbp
  0x00000001063d0d31: mov    %ebx,0x4(%rsp)
  0x00000001063d0d35: mov    %r10d,0x8(%rsp)
  0x00000001063d0d3a: mov    %rdx,0x10(%rsp)
  0x00000001063d0d3f: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0d44: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0d46: xor    %r11d,%r11d
  0x00000001063d0d49: jmpq   0x00000001063d0bb3
  0x00000001063d0d4e: xor    %r14d,%r14d
  0x00000001063d0d51: jmpq   0x00000001063d0bcd  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0d56: mov    $0xffffff4d,%esi
  0x00000001063d0d5b: mov    %r11,%rbp
  0x00000001063d0d5e: mov    %ebx,0x4(%rsp)
  0x00000001063d0d62: mov    %r10d,0x8(%rsp)
  0x00000001063d0d67: mov    %ebx,0xc(%rsp)
  0x00000001063d0d6b: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0d70: ud2    
  0x00000001063d0d72: mov    $0xffffffe4,%esi
  0x00000001063d0d77: mov    %r11,(%rsp)
  0x00000001063d0d7b: mov    %ebx,0xc(%rsp)
  0x00000001063d0d7f: mov    %r10d,0x10(%rsp)
  0x00000001063d0d84: data16 xchg %ax,%ax
  0x00000001063d0d87: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0d8c: ud2    
  0x00000001063d0d8e: mov    $0xffffffbe,%esi
  0x00000001063d0d93: mov    %r11,%rbp
  0x00000001063d0d96: mov    %r14,(%rsp)
  0x00000001063d0d9a: mov    %ebx,0x8(%rsp)
  0x00000001063d0d9e: nop
  0x00000001063d0d9f: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0da4: ud2    
  0x00000001063d0da6: mov    $0xffffff95,%esi
  0x00000001063d0dab: mov    %r14,%rbp
  0x00000001063d0dae: mov    %ebx,(%rsp)
  0x00000001063d0db1: mov    %r13,0x8(%rsp)
  0x00000001063d0db6: nop
  0x00000001063d0db7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0dbc: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x00000001063d0dbe: mov    $0xffffffde,%esi
  0x00000001063d0dc3: mov    %rax,0x8(%rsp)
  0x00000001063d0dc8: data16 xchg %ax,%ax
  0x00000001063d0dcb: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0dd0: ud2    
  0x00000001063d0dd2: mov    $0xfffffff6,%esi
  0x00000001063d0dd7: mov    %rdx,%rbp
  0x00000001063d0dda: nop
  0x00000001063d0ddb: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0de0: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0de2: mov    $0xfffffff4,%esi
  0x00000001063d0de7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0dec: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0dee: mov    %rax,%rsi
  0x00000001063d0df1: jmp    0x00000001063d0df6
  0x00000001063d0df3: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0df6: add    $0x30,%rsp
  0x00000001063d0dfa: pop    %rbp
  0x00000001063d0dfb: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
[Stub Code]
  0x00000001063d0e00: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063d0e0a: jmpq   0x00000001063d0e0a  ;   {runtime_call}
[Exception Handler]
  0x00000001063d0e0f: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063d0e14: callq  0x00000001063d0e19
  0x00000001063d0e19: subq   $0x5,(%rsp)
  0x00000001063d0e1e: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d0e23: hlt    
  0x00000001063d0e24: hlt    
  0x00000001063d0e25: hlt    
  0x00000001063d0e26: hlt    
  0x00000001063d0e27: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 220 
ImmutableOopMap{rbp=Oop r14=Oop }pc offsets: 252 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 364 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 484 
ImmutableOopMap{rbp=Oop [8]=NarrowOop }pc offsets: 528 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 580 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 604 624 
ImmutableOopMap{rbp=Oop }pc offsets: 640 652 Compiled method (c2)     322   82             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x00000001063d0190,0x00000001063d0938] = 1960
 relocation     [0x00000001063d0308,0x00000001063d0348] = 64
 main code      [0x00000001063d0360,0x00000001063d0580] = 544
 stub code      [0x00000001063d0580,0x00000001063d05a8] = 40
 oops           [0x00000001063d05a8,0x00000001063d05c0] = 24
 metadata       [0x00000001063d05c0,0x00000001063d0608] = 72
 scopes data    [0x00000001063d0608,0x00000001063d0738] = 304
 scopes pcs     [0x00000001063d0738,0x00000001063d08e8] = 432
 dependencies   [0x00000001063d08e8,0x00000001063d08f0] = 8
 handler table  [0x00000001063d08f0,0x00000001063d0920] = 48
 nul chk table  [0x00000001063d0920,0x00000001063d0938] = 24
----------------------------------------------------------------------
FunctionalHashMap.runTest()Ljava/lang/String;  [0x00000001063d0360, 0x00000001063d05a8]  584 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011dc22920} 'runTest' '()Ljava/lang/String;' in 'FunctionalHashMap'
  #           [sp+0x40]  (sp of caller)
  0x00000001063d0360: mov    0x8(%rsi),%r10d
  0x00000001063d0364: movabs $0x800000000,%r12
  0x00000001063d036e: add    %r12,%r10
  0x00000001063d0371: xor    %r12,%r12
  0x00000001063d0374: cmp    %r10,%rax
  0x00000001063d0377: jne    0x0000000106379c80  ;   {runtime_call ic_miss_stub}
  0x00000001063d037d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001063d0380: mov    %eax,-0x14000(%rsp)
  0x00000001063d0387: push   %rbp
  0x00000001063d0388: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x00000001063d038c: mov    %rsi,(%rsp)
  0x00000001063d0390: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x00000001063d0396: movabs $0x800000000,%rcx
  0x00000001063d03a0: add    %r11,%rcx
  0x00000001063d03a3: xor    %r10d,%r10d
  0x00000001063d03a6: jmpq   0x00000001063d0421
  0x00000001063d03ab: nopl   0x0(%rax,%rax,1)
  0x00000001063d03b0: mov    %r11,0x118(%r15)
  0x00000001063d03b7: prefetchnta 0xc0(%r11)
  0x00000001063d03bf: mov    0xb8(%rcx),%r11
  0x00000001063d03c6: mov    %r11,(%rdx)
  0x00000001063d03c9: movl   $0x13c78,0x8(%rdx)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001063d03d0: mov    %r10d,0xc(%rdx)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d03d4: mov    0x8(%r12,%r9,8),%r8d  ; implicit exception: dispatches to 0x00000001063d051e
  0x00000001063d03d9: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x00000001063d03e0: jne    0x00000001063d04bd
  0x00000001063d03e6: mov    %r10d,0x8(%rsp)
  0x00000001063d03eb: mov    %rcx,%rbp
  0x00000001063d03ee: lea    (%r12,%r9,8),%rsi
  0x00000001063d03f2: nop
  0x00000001063d03f3: callq  0x0000000106379f00  ; ImmutableOopMap{[0]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {optimized virtual_call}
  0x00000001063d03f8: mov    0x8(%rax),%r10d    ; implicit exception: dispatches to 0x00000001063d052e
  0x00000001063d03fc: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x00000001063d0403: jne    0x00000001063d04f6  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0409: mov    0x8(%rsp),%r10d
  0x00000001063d040e: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x00000001063d0411: cmp    $0x3e8,%r10d
  0x00000001063d0418: jge    0x00000001063d04ad  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x00000001063d041e: mov    %rbp,%rcx          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)

  0x00000001063d0421: movabs $0x70fe0f540,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f540} = 'FunctionalHashMap')}
  0x00000001063d042b: mov    0x70(%r11),%r9d    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d042f: cmp    $0x7f,%r10d
  0x00000001063d0433: jle    0x00000001063d0481  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0435: mov    0x118(%r15),%rdx
  0x00000001063d043c: mov    %rdx,%r11
  0x00000001063d043f: add    $0x10,%r11
  0x00000001063d0443: cmp    0x128(%r15),%r11
  0x00000001063d044a: jb     0x00000001063d03b0
  0x00000001063d0450: mov    %r9d,0xc(%rsp)
  0x00000001063d0455: mov    %r10d,0x8(%rsp)
  0x00000001063d045a: mov    %rcx,%rbp
  0x00000001063d045d: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001063d0467: callq  0x00000001063b0100  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063d046c: mov    %rax,%rdx
  0x00000001063d046f: mov    %rbp,%rcx
  0x00000001063d0472: mov    0x8(%rsp),%r10d
  0x00000001063d0477: mov    0xc(%rsp),%r9d
  0x00000001063d047c: jmpq   0x00000001063d03d0
  0x00000001063d0481: mov    %r10d,%ebp
  0x00000001063d0484: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d048a: cmp    $0x100,%ebp
  0x00000001063d0490: jae    0x00000001063d04de
  0x00000001063d0492: movabs $0x70ff1e8c8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8c8})}
  0x00000001063d049c: mov    0x210(%r11,%r10,4),%r11d
  0x00000001063d04a4: lea    (%r12,%r11,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d04a8: jmpq   0x00000001063d03d4  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d04ad: add    $0x30,%rsp
  0x00000001063d04b1: pop    %rbp
  0x00000001063d04b2: mov    0x108(%r15),%r10
  0x00000001063d04b9: test   %eax,(%r10)        ;   {poll_return}
  0x00000001063d04bc: retq   
  0x00000001063d04bd: mov    $0xffffffde,%esi
  0x00000001063d04c2: mov    (%rsp),%rbp
  0x00000001063d04c6: mov    %r10d,0x4(%rsp)
  0x00000001063d04cb: mov    %r9d,0x8(%rsp)
  0x00000001063d04d0: mov    %rdx,0x10(%rsp)
  0x00000001063d04d5: xchg   %ax,%ax
  0x00000001063d04d7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d04dc: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d04de: mov    $0xffffffe4,%esi
  0x00000001063d04e3: mov    %r10d,0xc(%rsp)
  0x00000001063d04e8: mov    %r9d,0x10(%rsp)
  0x00000001063d04ed: xchg   %ax,%ax
  0x00000001063d04ef: callq  0x000000010637b900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d04f4: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d04f6: mov    $0xffffffde,%esi
  0x00000001063d04fb: mov    (%rsp),%rbp
  0x00000001063d04ff: mov    %rax,-0x8(%rsp)
  0x00000001063d0504: mov    0x8(%rsp),%eax
  0x00000001063d0508: mov    %eax,(%rsp)
  0x00000001063d050b: mov    -0x8(%rsp),%rax
  0x00000001063d0510: mov    %rax,0x8(%rsp)
  0x00000001063d0515: xchg   %ax,%ax
  0x00000001063d0517: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d051c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d051e: mov    $0xfffffff6,%esi
  0x00000001063d0523: mov    %rdx,%rbp
  0x00000001063d0526: nop
  0x00000001063d0527: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d052c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d052e: mov    $0xfffffff4,%esi
  0x00000001063d0533: mov    (%rsp),%rbp
  0x00000001063d0537: mov    %rax,-0x8(%rsp)
  0x00000001063d053c: mov    0x8(%rsp),%eax
  0x00000001063d0540: mov    %eax,(%rsp)
  0x00000001063d0543: mov    -0x8(%rsp),%rax
  0x00000001063d0548: data16 xchg %ax,%ax
  0x00000001063d054b: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d0550: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001063d0552: mov    %rax,%rsi
  0x00000001063d0555: jmp    0x00000001063d055a
  0x00000001063d0557: mov    %rax,%rsi          ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x00000001063d055a: add    $0x30,%rsp
  0x00000001063d055e: pop    %rbp
  0x00000001063d055f: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063d0564: hlt    
  0x00000001063d0565: hlt    
  0x00000001063d0566: hlt    
  0x00000001063d0567: hlt    
  0x00000001063d0568: hlt    
  0x00000001063d0569: hlt    
  0x00000001063d056a: hlt    
  0x00000001063d056b: hlt    
  0x00000001063d056c: hlt    
  0x00000001063d056d: hlt    
  0x00000001063d056e: hlt    
  0x00000001063d056f: hlt    
  0x00000001063d0570: hlt    
  0x00000001063d0571: hlt    
  0x00000001063d0572: hlt    
  0x00000001063d0573: hlt    
  0x00000001063d0574: hlt    
  0x00000001063d0575: hlt    
  0x00000001063d0576: hlt    
  0x00000001063d0577: hlt    
  0x00000001063d0578: hlt    
  0x00000001063d0579: hlt    
  0x00000001063d057a: hlt    
  0x00000001063d057b: hlt    
  0x00000001063d057c: hlt    
  0x00000001063d057d: hlt    
  0x00000001063d057e: hlt    
  0x00000001063d057f: hlt    
[Stub Code]
  0x00000001063d0580: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063d058a: jmpq   0x00000001063d058a  ;   {runtime_call}
[Exception Handler]
  0x00000001063d058f: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063d0594: callq  0x00000001063d0599
  0x00000001063d0599: subq   $0x5,(%rsp)
  0x00000001063d059e: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d05a3: hlt    
  0x00000001063d05a4: hlt    
  0x00000001063d05a5: hlt    
  0x00000001063d05a6: hlt    
  0x00000001063d05a7: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 152 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 268 
ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }pc offsets: 380 
ImmutableOopMap{[0]=Oop [16]=NarrowOop }pc offsets: 404 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 444 
ImmutableOopMap{rbp=Oop }pc offsets: 460 496 Compiled method (c2)     498   83 %           FunctionalHashMap::main @ 36 (72 bytes)
 total in heap  [0x00000001063d4010,0x00000001063d4970] = 2400
 relocation     [0x00000001063d4188,0x00000001063d41d0] = 72
 main code      [0x00000001063d41e0,0x00000001063d4460] = 640
 stub code      [0x00000001063d4460,0x00000001063d4488] = 40
 oops           [0x00000001063d4488,0x00000001063d44a0] = 24
 metadata       [0x00000001063d44a0,0x00000001063d44f8] = 88
 scopes data    [0x00000001063d44f8,0x00000001063d46b8] = 448
 scopes pcs     [0x00000001063d46b8,0x00000001063d4918] = 608
 dependencies   [0x00000001063d4918,0x00000001063d4920] = 8
 handler table  [0x00000001063d4920,0x00000001063d4950] = 48
 nul chk table  [0x00000001063d4950,0x00000001063d4970] = 32
----------------------------------------------------------------------
FunctionalHashMap.main([Ljava/lang/String;)V  [0x00000001063d41e0, 0x00000001063d4488]  680 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011dc22790} 'main' '([Ljava/lang/String;)V' in 'FunctionalHashMap'
  0x00000001063d41e0: callq  0x0000000105a107f4  ;   {runtime_call os::breakpoint()}
  0x00000001063d41e5: data16 data16 nopw 0x0(%rax,%rax,1)
  0x00000001063d41f0: mov    %eax,-0x14000(%rsp)
  0x00000001063d41f7: push   %rbp
  0x00000001063d41f8: sub    $0x40,%rsp
  0x00000001063d41fc: mov    0x8(%rsi),%r13
  0x00000001063d4200: mov    (%rsi),%ebx
  0x00000001063d4202: mov    %rsi,%rdi
  0x00000001063d4205: movabs $0x105a91a82,%r10
  0x00000001063d420f: callq  *%r10
  0x00000001063d4212: mov    0x8(%r13),%r11d    ; implicit exception: dispatches to 0x00000001063d4444
  0x00000001063d4216: cmp    $0x60040,%r11d     ;   {metadata('FunctionalHashMap')}
  0x00000001063d421d: jne    0x00000001063d43e2  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x00000001063d4223: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x00000001063d4229: movabs $0x800000000,%r9
  0x00000001063d4233: add    %r11,%r9
  0x00000001063d4236: jmp    0x00000001063d4251  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4238: mov    0x108(%r15),%r10
  0x00000001063d423f: mov    (%rsp),%ebx
  0x00000001063d4242: inc    %ebx               ; ImmutableOopMap{[8]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@50 (line 24)

  0x00000001063d4244: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@50 (line 24)
                                                ;   {poll}
  0x00000001063d4247: mov    0x8(%rsp),%r13
  0x00000001063d424c: mov    0x10(%rsp),%r9     ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x00000001063d4251: cmp    $0x7a120,%ebx
  0x00000001063d4257: jge    0x00000001063d43ce  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@39 (line 24)

  0x00000001063d425d: xor    %r10d,%r10d
  0x00000001063d4260: jmpq   0x00000001063d42f7
  0x00000001063d4265: data16 data16 nopw 0x0(%rax,%rax,1)
                                                ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4270: mov    %r11,0x118(%r15)
  0x00000001063d4277: prefetchnta 0xc0(%r11)
  0x00000001063d427f: mov    0xb8(%r9),%r11
  0x00000001063d4286: mov    %r11,(%rax)
  0x00000001063d4289: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001063d4290: mov    %r10d,0xc(%rax)
  0x00000001063d4294: mov    %rax,%rdx          ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4297: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00000001063d440e
  0x00000001063d429c: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x00000001063d42a3: jne    0x00000001063d438d  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42a9: mov    %r10d,0x4(%rsp)
  0x00000001063d42ae: mov    %r9,0x10(%rsp)
  0x00000001063d42b3: mov    %ebx,(%rsp)
  0x00000001063d42b6: mov    %r13,0x8(%rsp)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42bb: lea    (%r12,%rbp,8),%rsi
  0x00000001063d42bf: callq  0x0000000106379f00  ; ImmutableOopMap{[8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {optimized virtual_call}
  0x00000001063d42c4: mov    0x8(%rax),%r10d    ; implicit exception: dispatches to 0x00000001063d441e
  0x00000001063d42c8: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x00000001063d42cf: jne    0x00000001063d43f6  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42d5: mov    0x4(%rsp),%r10d
  0x00000001063d42da: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42dd: cmp    $0x3e8,%r10d
  0x00000001063d42e4: jge    0x00000001063d4238  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42ea: mov    0x8(%rsp),%r13
  0x00000001063d42ef: mov    (%rsp),%ebx
  0x00000001063d42f2: mov    0x10(%rsp),%r9     ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d42f7: movabs $0x70661ef90,%r11  ;   {oop(a 'java/lang/Class'{0x000000070661ef90} = 'FunctionalHashMap')}
  0x00000001063d4301: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4305: cmp    $0x7f,%r10d
  0x00000001063d4309: jle    0x00000001063d435f
  0x00000001063d430b: mov    0x118(%r15),%rax
  0x00000001063d4312: mov    %rax,%r11
  0x00000001063d4315: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4319: cmp    0x128(%r15),%r11
  0x00000001063d4320: jb     0x00000001063d4270
  0x00000001063d4326: mov    %r10d,0xc(%rsp)
  0x00000001063d432b: mov    %r9,0x10(%rsp)
  0x00000001063d4330: mov    %ebx,0x8(%rsp)
  0x00000001063d4334: mov    %r13,(%rsp)        ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4338: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001063d4342: nop
  0x00000001063d4343: callq  0x00000001063b0100  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001063d4348: mov    (%rsp),%r13
  0x00000001063d434c: mov    0x8(%rsp),%ebx
  0x00000001063d4350: mov    0x10(%rsp),%r9
  0x00000001063d4355: mov    0xc(%rsp),%r10d
  0x00000001063d435a: jmpq   0x00000001063d4290
  0x00000001063d435f: mov    %r10d,%r8d
  0x00000001063d4362: add    $0x80,%r8d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4369: cmp    $0x100,%r8d
  0x00000001063d4370: jae    0x00000001063d43ae
  0x00000001063d4372: movabs $0x70661f008,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070661f008})}
  0x00000001063d437c: mov    0x210(%r11,%r10,4),%r8d
  0x00000001063d4384: lea    (%r12,%r8,8),%rdx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4388: jmpq   0x00000001063d4297
  0x00000001063d438d: mov    $0xffffffde,%esi
  0x00000001063d4392: mov    %ebx,0x8(%rsp)
  0x00000001063d4396: mov    %r13,0x10(%rsp)
  0x00000001063d439b: mov    %r10d,0x18(%rsp)
  0x00000001063d43a0: mov    %rdx,0x20(%rsp)
  0x00000001063d43a5: xchg   %ax,%ax
  0x00000001063d43a7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=NarrowOop [16]=Oop [32]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d43ac: ud2    
  0x00000001063d43ae: mov    $0xffffffe4,%esi
  0x00000001063d43b3: mov    %ebx,0x8(%rsp)
  0x00000001063d43b7: mov    %r13,0x10(%rsp)
  0x00000001063d43bc: mov    %r10d,0x18(%rsp)
  0x00000001063d43c1: mov    %r8d,0x1c(%rsp)
  0x00000001063d43c6: nop
  0x00000001063d43c7: callq  0x000000010637b900  ; ImmutableOopMap{rbp=NarrowOop [16]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d43cc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@39 (line 24)

  0x00000001063d43ce: mov    $0xffffff4d,%esi
  0x00000001063d43d3: mov    %r13,%rbp
  0x00000001063d43d6: mov    %ebx,0x4(%rsp)
  0x00000001063d43da: nop
  0x00000001063d43db: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@39 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d43e0: ud2    
  0x00000001063d43e2: mov    $0xffffff95,%esi
  0x00000001063d43e7: mov    %r13,%rbp
  0x00000001063d43ea: mov    %ebx,(%rsp)
  0x00000001063d43ed: xchg   %ax,%ax
  0x00000001063d43ef: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d43f4: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x00000001063d43f6: mov    $0xffffffde,%esi
  0x00000001063d43fb: mov    0x8(%rsp),%rbp
  0x00000001063d4400: mov    %rax,0x18(%rsp)
  0x00000001063d4405: xchg   %ax,%ax
  0x00000001063d4407: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d440c: ud2    
  0x00000001063d440e: mov    $0xfffffff6,%esi
  0x00000001063d4413: mov    %rdx,%rbp
  0x00000001063d4416: nop
  0x00000001063d4417: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d441c: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d441e: mov    $0xfffffff4,%esi
  0x00000001063d4423: mov    0x8(%rsp),%rbp
  0x00000001063d4428: data16 xchg %ax,%ax
  0x00000001063d442b: callq  0x000000010637b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d4430: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d4432: mov    %rax,%rsi
  0x00000001063d4435: jmp    0x00000001063d443a
  0x00000001063d4437: mov    %rax,%rsi          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; - FunctionalHashMap::main@43 (line 25)

  0x00000001063d443a: add    $0x40,%rsp
  0x00000001063d443e: pop    %rbp
  0x00000001063d443f: jmpq   0x00000001063b2700  ;   {runtime_call _rethrow_Java}
  0x00000001063d4444: mov    $0xffffff7e,%esi
  0x00000001063d4449: mov    %ebx,%ebp
  0x00000001063d444b: callq  0x000000010637b900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001063d4450: ud2                       ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::main@36 (line 24)

  0x00000001063d4452: hlt    
  0x00000001063d4453: hlt    
  0x00000001063d4454: hlt    
  0x00000001063d4455: hlt    
  0x00000001063d4456: hlt    
  0x00000001063d4457: hlt    
  0x00000001063d4458: hlt    
  0x00000001063d4459: hlt    
  0x00000001063d445a: hlt    
  0x00000001063d445b: hlt    
  0x00000001063d445c: hlt    
  0x00000001063d445d: hlt    
  0x00000001063d445e: hlt    
  0x00000001063d445f: hlt    
[Stub Code]
  0x00000001063d4460: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001063d446a: jmpq   0x00000001063d446a  ;   {runtime_call}
[Exception Handler]
  0x00000001063d446f: jmpq   0x00000001063b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001063d4474: callq  0x00000001063d4479
  0x00000001063d4479: subq   $0x5,(%rsp)
  0x00000001063d447e: jmpq   0x000000010637b520  ;   {runtime_call DeoptimizationBlob}
  0x00000001063d4483: hlt    
  0x00000001063d4484: hlt    
  0x00000001063d4485: hlt    
  0x00000001063d4486: hlt    
  0x00000001063d4487: hlt    

ImmutableOopMap{[8]=Oop }pc offsets: 100 228 
ImmutableOopMap{rbp=NarrowOop [0]=Oop }pc offsets: 360 
ImmutableOopMap{rbp=NarrowOop [16]=Oop [32]=Oop }pc offsets: 460 
ImmutableOopMap{rbp=NarrowOop [16]=Oop }pc offsets: 492 
ImmutableOopMap{rbp=Oop }pc offsets: 512 532 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop }pc offsets: 572 592 
ImmutableOopMap{}pc offsets: 624 Test phase
Time elapsed: 0.009 ms result=337

