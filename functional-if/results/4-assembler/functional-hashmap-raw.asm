Compiled method (c2)      51    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x000000010e9b1e90,0x000000010e9b2430] = 1440
 relocation     [0x000000010e9b2008,0x000000010e9b2018] = 16
 main code      [0x000000010e9b2020,0x000000010e9b21e0] = 448
 stub code      [0x000000010e9b21e0,0x000000010e9b21f8] = 24
 metadata       [0x000000010e9b21f8,0x000000010e9b2200] = 8
 scopes data    [0x000000010e9b2200,0x000000010e9b2288] = 136
 scopes pcs     [0x000000010e9b2288,0x000000010e9b2418] = 400
 dependencies   [0x000000010e9b2418,0x000000010e9b2420] = 8
 nul chk table  [0x000000010e9b2420,0x000000010e9b2430] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x000000010e9b2020, 0x000000010e9b21f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001133b5a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9b2020: mov    %eax,-0x14000(%rsp)
  0x000000010e9b2027: push   %rbp
  0x000000010e9b2028: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x000000010e9b202c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x000000010e9b21c2
  0x000000010e9b2030: test   %r10d,%r10d
  0x000000010e9b2033: jbe    0x000000010e9b21a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e9b2039: mov    %r10d,%r8d
  0x000000010e9b203c: dec    %r8d
  0x000000010e9b203f: cmp    %r10d,%r8d
  0x000000010e9b2042: jae    0x000000010e9b21ad
  0x000000010e9b2048: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x000000010e9b204d: mov    %r10d,%edx
  0x000000010e9b2050: add    $0xfffffff9,%edx
  0x000000010e9b2053: mov    $0x80000000,%ecx
  0x000000010e9b2058: cmp    %edx,%r8d
  0x000000010e9b205b: cmovl  %ecx,%edx
  0x000000010e9b205e: mov    $0x1,%ecx
  0x000000010e9b2063: cmp    $0x1,%edx
  0x000000010e9b2066: jle    0x000000010e9b218d
  0x000000010e9b206c: mov    %r9d,%r11d
  0x000000010e9b206f: shl    $0x5,%r11d
  0x000000010e9b2073: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e9b2076: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010e9b207b: jmp    0x000000010e9b20a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x000000010e9b207d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x000000010e9b2083: mov    %r9d,%eax
  0x000000010e9b2086: shl    $0x5,%eax
  0x000000010e9b2089: sub    %r9d,%eax
  0x000000010e9b208c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010e9b208f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010e9b2091: cmp    %r10d,%ecx
  0x000000010e9b2094: jge    0x000000010e9b2199  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e9b209a: mov    %eax,%r9d
  0x000000010e9b209d: jmp    0x000000010e9b207d
  0x000000010e9b209f: vmovq  %xmm0,%rsi
  0x000000010e9b20a4: vmovd  %xmm2,%r10d
  0x000000010e9b20a9: mov    %edx,%ebp
  0x000000010e9b20ab: sub    %ecx,%ebp
  0x000000010e9b20ad: cmp    %edi,%ebp
  0x000000010e9b20af: cmovg  %edi,%ebp
  0x000000010e9b20b2: add    %ecx,%ebp
  0x000000010e9b20b4: vmovq  %rsi,%xmm0
  0x000000010e9b20b9: vmovd  %r10d,%xmm2
  0x000000010e9b20be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e9b20c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x000000010e9b20c3: vmovq  %xmm0,%r8
  0x000000010e9b20c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x000000010e9b20ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x000000010e9b20d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x000000010e9b20da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x000000010e9b20e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x000000010e9b20e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x000000010e9b20ec: add    %r14d,%r11d
  0x000000010e9b20ef: vmovq  %xmm0,%rbx
  0x000000010e9b20f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x000000010e9b20f9: vmovq  %xmm0,%r14
  0x000000010e9b20fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x000000010e9b2104: mov    %r11d,%r14d
  0x000000010e9b2107: shl    $0x5,%r14d
  0x000000010e9b210b: sub    %r11d,%r14d
  0x000000010e9b210e: add    %r13d,%r14d
  0x000000010e9b2111: mov    %r14d,%r11d
  0x000000010e9b2114: shl    $0x5,%r11d
  0x000000010e9b2118: sub    %r14d,%r11d
  0x000000010e9b211b: add    %ebx,%r11d
  0x000000010e9b211e: mov    %r11d,%ebx
  0x000000010e9b2121: shl    $0x5,%ebx
  0x000000010e9b2124: sub    %r11d,%ebx
  0x000000010e9b2127: add    %esi,%ebx
  0x000000010e9b2129: mov    %ebx,%r11d
  0x000000010e9b212c: shl    $0x5,%r11d
  0x000000010e9b2130: sub    %ebx,%r11d
  0x000000010e9b2133: add    %r8d,%r11d
  0x000000010e9b2136: mov    %r11d,%ebx
  0x000000010e9b2139: shl    $0x5,%ebx
  0x000000010e9b213c: sub    %r11d,%ebx
  0x000000010e9b213f: add    %r9d,%ebx
  0x000000010e9b2142: mov    %ebx,%r8d
  0x000000010e9b2145: shl    $0x5,%r8d
  0x000000010e9b2149: sub    %ebx,%r8d
  0x000000010e9b214c: add    %r10d,%r8d
  0x000000010e9b214f: mov    %r8d,%r9d
  0x000000010e9b2152: shl    $0x5,%r9d
  0x000000010e9b2156: sub    %r8d,%r9d
  0x000000010e9b2159: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010e9b215c: mov    %r9d,%r11d
  0x000000010e9b215f: shl    $0x5,%r11d
  0x000000010e9b2163: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010e9b2166: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010e9b2169: cmp    %ebp,%ecx
  0x000000010e9b216b: jl     0x000000010e9b20c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e9b2171: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010e9b2178: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000010e9b217b: cmp    %edx,%ecx
  0x000000010e9b217d: jl     0x000000010e9b209f
  0x000000010e9b2183: vmovq  %xmm0,%rsi
  0x000000010e9b2188: vmovd  %xmm2,%r10d
  0x000000010e9b218d: cmp    %r10d,%ecx
  0x000000010e9b2190: jl     0x000000010e9b207d
  0x000000010e9b2196: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e9b2199: add    $0x20,%rsp
  0x000000010e9b219d: pop    %rbp
  0x000000010e9b219e: mov    0x108(%r15),%r10
  0x000000010e9b21a5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9b21a8: retq   
  0x000000010e9b21a9: xor    %eax,%eax
  0x000000010e9b21ab: jmp    0x000000010e9b2199
  0x000000010e9b21ad: mov    %rsi,%rbp
  0x000000010e9b21b0: mov    %r10d,0x4(%rsp)
  0x000000010e9b21b5: mov    $0xffffff7e,%esi
  0x000000010e9b21ba: nop
  0x000000010e9b21bb: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9b21c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010e9b21c2: mov    $0xfffffff6,%esi
  0x000000010e9b21c7: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9b21cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x000000010e9b21ce: hlt    
  0x000000010e9b21cf: hlt    
  0x000000010e9b21d0: hlt    
  0x000000010e9b21d1: hlt    
  0x000000010e9b21d2: hlt    
  0x000000010e9b21d3: hlt    
  0x000000010e9b21d4: hlt    
  0x000000010e9b21d5: hlt    
  0x000000010e9b21d6: hlt    
  0x000000010e9b21d7: hlt    
  0x000000010e9b21d8: hlt    
  0x000000010e9b21d9: hlt    
  0x000000010e9b21da: hlt    
  0x000000010e9b21db: hlt    
  0x000000010e9b21dc: hlt    
  0x000000010e9b21dd: hlt    
  0x000000010e9b21de: hlt    
  0x000000010e9b21df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9b21e0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9b21e5: callq  0x000000010e9b21ea
  0x000000010e9b21ea: subq   $0x5,(%rsp)
  0x000000010e9b21ef: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9b21f4: hlt    
  0x000000010e9b21f5: hlt    
  0x000000010e9b21f6: hlt    
  0x000000010e9b21f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 
Running the benchmark with a cold JVM
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bad20, 0x000000010e9bad48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001135bc148} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010e9bad20: mov    0x8(%rsp),%rbx
  0x000000010e9bad25: mov    0x24(%rbx),%ebx
  0x000000010e9bad28: shl    $0x3,%rbx
  0x000000010e9bad2c: mov    0x10(%rbx),%rbx
  0x000000010e9bad30: test   %rbx,%rbx
  0x000000010e9bad33: je     0x000000010e9bad3c
  0x000000010e9bad39: jmpq   *0x38(%rbx)
  0x000000010e9bad3c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bad41: hlt    
  0x000000010e9bad42: hlt    
  0x000000010e9bad43: hlt    
  0x000000010e9bad44: hlt    
  0x000000010e9bad45: hlt    
  0x000000010e9bad46: hlt    
  0x000000010e9bad47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bb6a0, 0x000000010e9bb6c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001135d5db8} 'linkToStatic' '(ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bb6a0: mov    0x24(%rdx),%ebx
  0x000000010e9bb6a3: shl    $0x3,%rbx
  0x000000010e9bb6a7: mov    0x10(%rbx),%rbx
  0x000000010e9bb6ab: test   %rbx,%rbx
  0x000000010e9bb6ae: je     0x000000010e9bb6b7
  0x000000010e9bb6b4: jmpq   *0x38(%rbx)
  0x000000010e9bb6b7: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bb6bc: hlt    
  0x000000010e9bb6bd: hlt    
  0x000000010e9bb6be: hlt    
  0x000000010e9bb6bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9bb8a0, 0x000000010e9bb8d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001135de990} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x000000010e9bb8a0: mov    0x14(%rsi),%ebx
  0x000000010e9bb8a3: shl    $0x3,%rbx
  0x000000010e9bb8a7: mov    0x28(%rbx),%ebx
  0x000000010e9bb8aa: shl    $0x3,%rbx
  0x000000010e9bb8ae: mov    0x24(%rbx),%ebx
  0x000000010e9bb8b1: shl    $0x3,%rbx
  0x000000010e9bb8b5: mov    0x10(%rbx),%rbx
  0x000000010e9bb8b9: test   %rbx,%rbx
  0x000000010e9bb8bc: je     0x000000010e9bb8c5
  0x000000010e9bb8c2: jmpq   *0x38(%rbx)
  0x000000010e9bb8c5: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bb8ca: hlt    
  0x000000010e9bb8cb: hlt    
  0x000000010e9bb8cc: hlt    
  0x000000010e9bb8cd: hlt    
  0x000000010e9bb8ce: hlt    
  0x000000010e9bb8cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bbaa0, 0x000000010e9bbac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001135deb48} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000010e9bbaa0: mov    0x10(%rsp),%rbx
  0x000000010e9bbaa5: cmp    (%rsi),%rax
  0x000000010e9bbaa8: mov    0x24(%rbx),%ebx
  0x000000010e9bbaab: shl    $0x3,%rbx
  0x000000010e9bbaaf: mov    0x10(%rbx),%rbx
  0x000000010e9bbab3: test   %rbx,%rbx
  0x000000010e9bbab6: je     0x000000010e9bbabf
  0x000000010e9bbabc: jmpq   *0x38(%rbx)
  0x000000010e9bbabf: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bbac4: hlt    
  0x000000010e9bbac5: hlt    
  0x000000010e9bbac6: hlt    
  0x000000010e9bbac7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(I)Ljava/lang/Object;  [0x000000010e9bd320, 0x000000010e9bd350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113615e60} 'invokeBasic' '(I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bd320: mov    0x14(%rsi),%ebx
  0x000000010e9bd323: shl    $0x3,%rbx
  0x000000010e9bd327: mov    0x28(%rbx),%ebx
  0x000000010e9bd32a: shl    $0x3,%rbx
  0x000000010e9bd32e: mov    0x24(%rbx),%ebx
  0x000000010e9bd331: shl    $0x3,%rbx
  0x000000010e9bd335: mov    0x10(%rbx),%rbx
  0x000000010e9bd339: test   %rbx,%rbx
  0x000000010e9bd33c: je     0x000000010e9bd345
  0x000000010e9bd342: jmpq   *0x38(%rbx)
  0x000000010e9bd345: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bd34a: hlt    
  0x000000010e9bd34b: hlt    
  0x000000010e9bd34c: hlt    
  0x000000010e9bd34d: hlt    
  0x000000010e9bd34e: hlt    
  0x000000010e9bd34f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bd520, 0x000000010e9bd540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113615f78} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bd520: cmp    (%rsi),%rax
  0x000000010e9bd523: mov    0x24(%rcx),%ebx
  0x000000010e9bd526: shl    $0x3,%rbx
  0x000000010e9bd52a: mov    0x10(%rbx),%rbx
  0x000000010e9bd52e: test   %rbx,%rbx
  0x000000010e9bd531: je     0x000000010e9bd53a
  0x000000010e9bd537: jmpq   *0x38(%rbx)
  0x000000010e9bd53a: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bd53f: hlt    
Compiled method (c2)     105    8             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000010e9c0390,0x000000010e9c05c8] = 568
 relocation     [0x000000010e9c0508,0x000000010e9c0518] = 16
 main code      [0x000000010e9c0520,0x000000010e9c0560] = 64
 stub code      [0x000000010e9c0560,0x000000010e9c0578] = 24
 metadata       [0x000000010e9c0578,0x000000010e9c0588] = 16
 scopes data    [0x000000010e9c0588,0x000000010e9c0590] = 8
 scopes pcs     [0x000000010e9c0590,0x000000010e9c05c0] = 48
 dependencies   [0x000000010e9c05c0,0x000000010e9c05c8] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000010e9c0520, 0x000000010e9c0578]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011325c610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000010e9c0520: mov    0x8(%rsi),%r10d
  0x000000010e9c0524: movabs $0x800000000,%r12
  0x000000010e9c052e: add    %r12,%r10
  0x000000010e9c0531: xor    %r12,%r12
  0x000000010e9c0534: cmp    %r10,%rax
  0x000000010e9c0537: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9c053d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9c0540: sub    $0x18,%rsp
  0x000000010e9c0547: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000010e9c054c: add    $0x10,%rsp
  0x000000010e9c0550: pop    %rbp
  0x000000010e9c0551: mov    0x108(%r15),%r10
  0x000000010e9c0558: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9c055b: retq   
  0x000000010e9c055c: hlt    
  0x000000010e9c055d: hlt    
  0x000000010e9c055e: hlt    
  0x000000010e9c055f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9c0560: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9c0565: callq  0x000000010e9c056a
  0x000000010e9c056a: subq   $0x5,(%rsp)
  0x000000010e9c056f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9c0574: hlt    
  0x000000010e9c0575: hlt    
  0x000000010e9c0576: hlt    
  0x000000010e9c0577: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c0320, 0x000000010e9c0340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011361a070} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c0320: mov    0x24(%rdi),%ebx
  0x000000010e9c0323: shl    $0x3,%rbx
  0x000000010e9c0327: mov    0x10(%rbx),%rbx
  0x000000010e9c032b: test   %rbx,%rbx
  0x000000010e9c032e: je     0x000000010e9c0337
  0x000000010e9c0334: jmpq   *0x38(%rbx)
  0x000000010e9c0337: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c033c: hlt    
  0x000000010e9c033d: hlt    
  0x000000010e9c033e: hlt    
  0x000000010e9c033f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9bfea0, 0x000000010e9bfed0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011362aae8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bfea0: mov    0x14(%rsi),%ebx
  0x000000010e9bfea3: shl    $0x3,%rbx
  0x000000010e9bfea7: mov    0x28(%rbx),%ebx
  0x000000010e9bfeaa: shl    $0x3,%rbx
  0x000000010e9bfeae: mov    0x24(%rbx),%ebx
  0x000000010e9bfeb1: shl    $0x3,%rbx
  0x000000010e9bfeb5: mov    0x10(%rbx),%rbx
  0x000000010e9bfeb9: test   %rbx,%rbx
  0x000000010e9bfebc: je     0x000000010e9bfec5
  0x000000010e9bfec2: jmpq   *0x38(%rbx)
  0x000000010e9bfec5: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bfeca: hlt    
  0x000000010e9bfecb: hlt    
  0x000000010e9bfecc: hlt    
  0x000000010e9bfecd: hlt    
  0x000000010e9bfece: hlt    
  0x000000010e9bfecf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bfca0, 0x000000010e9bfcc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011362ac00} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010e9bfca0: mov    0x8(%rsp),%rbx
  0x000000010e9bfca5: cmp    (%rsi),%rax
  0x000000010e9bfca8: mov    0x24(%rbx),%ebx
  0x000000010e9bfcab: shl    $0x3,%rbx
  0x000000010e9bfcaf: mov    0x10(%rbx),%rbx
  0x000000010e9bfcb3: test   %rbx,%rbx
  0x000000010e9bfcb6: je     0x000000010e9bfcbf
  0x000000010e9bfcbc: jmpq   *0x38(%rbx)
  0x000000010e9bfcbf: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bfcc4: hlt    
  0x000000010e9bfcc5: hlt    
  0x000000010e9bfcc6: hlt    
  0x000000010e9bfcc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x000000010e9bf4a0, 0x000000010e9bf4c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113632fa8} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bf4a0: mov    0x24(%rsi),%ebx
  0x000000010e9bf4a3: shl    $0x3,%rbx
  0x000000010e9bf4a7: mov    0x10(%rbx),%rbx
  0x000000010e9bf4ab: test   %rbx,%rbx
  0x000000010e9bf4ae: je     0x000000010e9bf4b7
  0x000000010e9bf4b4: jmpq   *0x38(%rbx)
  0x000000010e9bf4b7: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bf4bc: hlt    
  0x000000010e9bf4bd: hlt    
  0x000000010e9bf4be: hlt    
  0x000000010e9bf4bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x000000010e9bf2a0, 0x000000010e9bf2d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136330c0} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bf2a0: mov    0x14(%rsi),%ebx
  0x000000010e9bf2a3: shl    $0x3,%rbx
  0x000000010e9bf2a7: mov    0x28(%rbx),%ebx
  0x000000010e9bf2aa: shl    $0x3,%rbx
  0x000000010e9bf2ae: mov    0x24(%rbx),%ebx
  0x000000010e9bf2b1: shl    $0x3,%rbx
  0x000000010e9bf2b5: mov    0x10(%rbx),%rbx
  0x000000010e9bf2b9: test   %rbx,%rbx
  0x000000010e9bf2bc: je     0x000000010e9bf2c5
  0x000000010e9bf2c2: jmpq   *0x38(%rbx)
  0x000000010e9bf2c5: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bf2ca: hlt    
  0x000000010e9bf2cb: hlt    
  0x000000010e9bf2cc: hlt    
  0x000000010e9bf2cd: hlt    
  0x000000010e9bf2ce: hlt    
  0x000000010e9bf2cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e9bf0a0, 0x000000010e9bf0c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136331d8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bf0a0: cmp    (%rsi),%rax
  0x000000010e9bf0a3: mov    0x24(%rdx),%ebx
  0x000000010e9bf0a6: shl    $0x3,%rbx
  0x000000010e9bf0aa: mov    0x10(%rbx),%rbx
  0x000000010e9bf0ae: test   %rbx,%rbx
  0x000000010e9bf0b1: je     0x000000010e9bf0ba
  0x000000010e9bf0b7: jmpq   *0x38(%rbx)
  0x000000010e9bf0ba: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bf0bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9beea0, 0x000000010e9beec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113633480} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9beea0: mov    0x24(%r8),%ebx
  0x000000010e9beea4: shl    $0x3,%rbx
  0x000000010e9beea8: mov    0x10(%rbx),%rbx
  0x000000010e9beeac: test   %rbx,%rbx
  0x000000010e9beeaf: je     0x000000010e9beeb8
  0x000000010e9beeb5: jmpq   *0x38(%rbx)
  0x000000010e9beeb8: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9beebd: hlt    
  0x000000010e9beebe: hlt    
  0x000000010e9beebf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9beca0, 0x000000010e9becc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113633598} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9beca0: mov    0x24(%rcx),%ebx
  0x000000010e9beca3: shl    $0x3,%rbx
  0x000000010e9beca7: mov    0x10(%rbx),%rbx
  0x000000010e9becab: test   %rbx,%rbx
  0x000000010e9becae: je     0x000000010e9becb7
  0x000000010e9becb4: jmpq   *0x38(%rbx)
  0x000000010e9becb7: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9becbc: hlt    
  0x000000010e9becbd: hlt    
  0x000000010e9becbe: hlt    
  0x000000010e9becbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9be8a0, 0x000000010e9be8c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011363b2d0} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9be8a0: mov    0x24(%rsi),%ebx
  0x000000010e9be8a3: shl    $0x3,%rbx
  0x000000010e9be8a7: mov    0x10(%rbx),%rbx
  0x000000010e9be8ab: test   %rbx,%rbx
  0x000000010e9be8ae: je     0x000000010e9be8b7
  0x000000010e9be8b4: jmpq   *0x38(%rbx)
  0x000000010e9be8b7: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9be8bc: hlt    
  0x000000010e9be8bd: hlt    
  0x000000010e9be8be: hlt    
  0x000000010e9be8bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bdf20, 0x000000010e9bdf40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011364d208} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bdf20: mov    0x24(%rcx),%ebx
  0x000000010e9bdf23: shl    $0x3,%rbx
  0x000000010e9bdf27: mov    0x10(%rbx),%rbx
  0x000000010e9bdf2b: test   %rbx,%rbx
  0x000000010e9bdf2e: je     0x000000010e9bdf37
  0x000000010e9bdf34: jmpq   *0x38(%rbx)
  0x000000010e9bdf37: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bdf3c: hlt    
  0x000000010e9bdf3d: hlt    
  0x000000010e9bdf3e: hlt    
  0x000000010e9bdf3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bdd20, 0x000000010e9bdd40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011364eb08} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bdd20: mov    0x24(%r8),%ebx
  0x000000010e9bdd24: shl    $0x3,%rbx
  0x000000010e9bdd28: mov    0x10(%rbx),%rbx
  0x000000010e9bdd2c: test   %rbx,%rbx
  0x000000010e9bdd2f: je     0x000000010e9bdd38
  0x000000010e9bdd35: jmpq   *0x38(%rbx)
  0x000000010e9bdd38: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bdd3d: hlt    
  0x000000010e9bdd3e: hlt    
  0x000000010e9bdd3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010e9bdb20, 0x000000010e9bdb50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113651670} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bdb20: mov    0x14(%rsi),%ebx
  0x000000010e9bdb23: shl    $0x3,%rbx
  0x000000010e9bdb27: mov    0x28(%rbx),%ebx
  0x000000010e9bdb2a: shl    $0x3,%rbx
  0x000000010e9bdb2e: mov    0x24(%rbx),%ebx
  0x000000010e9bdb31: shl    $0x3,%rbx
  0x000000010e9bdb35: mov    0x10(%rbx),%rbx
  0x000000010e9bdb39: test   %rbx,%rbx
  0x000000010e9bdb3c: je     0x000000010e9bdb45
  0x000000010e9bdb42: jmpq   *0x38(%rbx)
  0x000000010e9bdb45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bdb4a: hlt    
  0x000000010e9bdb4b: hlt    
  0x000000010e9bdb4c: hlt    
  0x000000010e9bdb4d: hlt    
  0x000000010e9bdb4e: hlt    
  0x000000010e9bdb4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9bd920, 0x000000010e9bd940]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113651788} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bd920: cmp    (%rsi),%rax
  0x000000010e9bd923: mov    0x24(%r9),%ebx
  0x000000010e9bd927: shl    $0x3,%rbx
  0x000000010e9bd92b: mov    0x10(%rbx),%rbx
  0x000000010e9bd92f: test   %rbx,%rbx
  0x000000010e9bd932: je     0x000000010e9bd93b
  0x000000010e9bd938: jmpq   *0x38(%rbx)
  0x000000010e9bd93b: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e9bd720, 0x000000010e9bd740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113671450} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9bd720: mov    0x24(%r9),%ebx
  0x000000010e9bd724: shl    $0x3,%rbx
  0x000000010e9bd728: mov    0x10(%rbx),%rbx
  0x000000010e9bd72c: test   %rbx,%rbx
  0x000000010e9bd72f: je     0x000000010e9bd738
  0x000000010e9bd735: jmpq   *0x38(%rbx)
  0x000000010e9bd738: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9bd73d: hlt    
  0x000000010e9bd73e: hlt    
  0x000000010e9bd73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x000000010e9c1420, 0x000000010e9c1450]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113671658} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1420: mov    0x14(%rsi),%ebx
  0x000000010e9c1423: shl    $0x3,%rbx
  0x000000010e9c1427: mov    0x28(%rbx),%ebx
  0x000000010e9c142a: shl    $0x3,%rbx
  0x000000010e9c142e: mov    0x24(%rbx),%ebx
  0x000000010e9c1431: shl    $0x3,%rbx
  0x000000010e9c1435: mov    0x10(%rbx),%rbx
  0x000000010e9c1439: test   %rbx,%rbx
  0x000000010e9c143c: je     0x000000010e9c1445
  0x000000010e9c1442: jmpq   *0x38(%rbx)
  0x000000010e9c1445: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c144a: hlt    
  0x000000010e9c144b: hlt    
  0x000000010e9c144c: hlt    
  0x000000010e9c144d: hlt    
  0x000000010e9c144e: hlt    
  0x000000010e9c144f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e9c1620, 0x000000010e9c1640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113671770} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1620: cmp    (%rsi),%rax
  0x000000010e9c1623: mov    0x24(%rdi),%ebx
  0x000000010e9c1626: shl    $0x3,%rbx
  0x000000010e9c162a: mov    0x10(%rbx),%rbx
  0x000000010e9c162e: test   %rbx,%rbx
  0x000000010e9c1631: je     0x000000010e9c163a
  0x000000010e9c1637: jmpq   *0x38(%rbx)
  0x000000010e9c163a: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c163f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c1820, 0x000000010e9c1840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113672870} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1820: mov    0x24(%r9),%ebx
  0x000000010e9c1824: shl    $0x3,%rbx
  0x000000010e9c1828: mov    0x10(%rbx),%rbx
  0x000000010e9c182c: test   %rbx,%rbx
  0x000000010e9c182f: je     0x000000010e9c1838
  0x000000010e9c1835: jmpq   *0x38(%rbx)
  0x000000010e9c1838: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c183d: hlt    
  0x000000010e9c183e: hlt    
  0x000000010e9c183f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c1a20, 0x000000010e9c1a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113672c08} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1a20: mov    0x14(%rsi),%ebx
  0x000000010e9c1a23: shl    $0x3,%rbx
  0x000000010e9c1a27: mov    0x28(%rbx),%ebx
  0x000000010e9c1a2a: shl    $0x3,%rbx
  0x000000010e9c1a2e: mov    0x24(%rbx),%ebx
  0x000000010e9c1a31: shl    $0x3,%rbx
  0x000000010e9c1a35: mov    0x10(%rbx),%rbx
  0x000000010e9c1a39: test   %rbx,%rbx
  0x000000010e9c1a3c: je     0x000000010e9c1a45
  0x000000010e9c1a42: jmpq   *0x38(%rbx)
  0x000000010e9c1a45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c1a4a: hlt    
  0x000000010e9c1a4b: hlt    
  0x000000010e9c1a4c: hlt    
  0x000000010e9c1a4d: hlt    
  0x000000010e9c1a4e: hlt    
  0x000000010e9c1a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x000000010e9c1c20, 0x000000010e9c1c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136734f8} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1c20: mov    0x14(%rsi),%ebx
  0x000000010e9c1c23: shl    $0x3,%rbx
  0x000000010e9c1c27: mov    0x28(%rbx),%ebx
  0x000000010e9c1c2a: shl    $0x3,%rbx
  0x000000010e9c1c2e: mov    0x24(%rbx),%ebx
  0x000000010e9c1c31: shl    $0x3,%rbx
  0x000000010e9c1c35: mov    0x10(%rbx),%rbx
  0x000000010e9c1c39: test   %rbx,%rbx
  0x000000010e9c1c3c: je     0x000000010e9c1c45
  0x000000010e9c1c42: jmpq   *0x38(%rbx)
  0x000000010e9c1c45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c1c4a: hlt    
  0x000000010e9c1c4b: hlt    
  0x000000010e9c1c4c: hlt    
  0x000000010e9c1c4d: hlt    
  0x000000010e9c1c4e: hlt    
  0x000000010e9c1c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x000000010e9c1e20, 0x000000010e9c1e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113673610} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c1e20: cmp    (%rsi),%rax
  0x000000010e9c1e23: mov    0x24(%r9),%ebx
  0x000000010e9c1e27: shl    $0x3,%rbx
  0x000000010e9c1e2b: mov    0x10(%rbx),%rbx
  0x000000010e9c1e2f: test   %rbx,%rbx
  0x000000010e9c1e32: je     0x000000010e9c1e3b
  0x000000010e9c1e38: jmpq   *0x38(%rbx)
  0x000000010e9c1e3b: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     139   29             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000010e9c4d10,0x000000010e9c4fb8] = 680
 relocation     [0x000000010e9c4e88,0x000000010e9c4e98] = 16
 main code      [0x000000010e9c4ea0,0x000000010e9c4f00] = 96
 stub code      [0x000000010e9c4f00,0x000000010e9c4f18] = 24
 metadata       [0x000000010e9c4f18,0x000000010e9c4f20] = 8
 scopes data    [0x000000010e9c4f20,0x000000010e9c4f40] = 32
 scopes pcs     [0x000000010e9c4f40,0x000000010e9c4fb0] = 112
 dependencies   [0x000000010e9c4fb0,0x000000010e9c4fb8] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000010e9c4ea0, 0x000000010e9c4f18]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000113266300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010e9c4ea0: mov    0x8(%rsi),%r10d
  0x000000010e9c4ea4: movabs $0x800000000,%r12
  0x000000010e9c4eae: add    %r12,%r10
  0x000000010e9c4eb1: xor    %r12,%r12
  0x000000010e9c4eb4: cmp    %r10,%rax
  0x000000010e9c4eb7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9c4ebd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9c4ec0: mov    %eax,-0x14000(%rsp)
  0x000000010e9c4ec7: push   %rbp
  0x000000010e9c4ec8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000010e9c4ecc: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000010e9c4ed1: test   %r11d,%r11d
  0x000000010e9c4ed4: jne    0x000000010e9c4eeb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010e9c4ed6: mov    $0x1,%eax
  0x000000010e9c4edb: add    $0x10,%rsp
  0x000000010e9c4edf: pop    %rbp
  0x000000010e9c4ee0: mov    0x108(%r15),%r10
  0x000000010e9c4ee7: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9c4eea: retq   
  0x000000010e9c4eeb: mov    $0xffffff4d,%esi
  0x000000010e9c4ef0: mov    %r11d,%ebp
  0x000000010e9c4ef3: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c4ef8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010e9c4efa: hlt    
  0x000000010e9c4efb: hlt    
  0x000000010e9c4efc: hlt    
  0x000000010e9c4efd: hlt    
  0x000000010e9c4efe: hlt    
  0x000000010e9c4eff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9c4f00: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9c4f05: callq  0x000000010e9c4f0a
  0x000000010e9c4f0a: subq   $0x5,(%rsp)
  0x000000010e9c4f0f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9c4f14: hlt    
  0x000000010e9c4f15: hlt    
  0x000000010e9c4f16: hlt    
  0x000000010e9c4f17: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e9c4a20, 0x000000010e9c4a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113676180} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c4a20: mov    0x24(%r9),%ebx
  0x000000010e9c4a24: shl    $0x3,%rbx
  0x000000010e9c4a28: mov    0x10(%rbx),%rbx
  0x000000010e9c4a2c: test   %rbx,%rbx
  0x000000010e9c4a2f: je     0x000000010e9c4a38
  0x000000010e9c4a35: jmpq   *0x38(%rbx)
  0x000000010e9c4a38: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c4a3d: hlt    
  0x000000010e9c4a3e: hlt    
  0x000000010e9c4a3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c4820, 0x000000010e9c4848]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113676f80} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000010e9c4820: mov    0x10(%rsp),%rbx
  0x000000010e9c4825: mov    0x24(%rbx),%ebx
  0x000000010e9c4828: shl    $0x3,%rbx
  0x000000010e9c482c: mov    0x10(%rbx),%rbx
  0x000000010e9c4830: test   %rbx,%rbx
  0x000000010e9c4833: je     0x000000010e9c483c
  0x000000010e9c4839: jmpq   *0x38(%rbx)
  0x000000010e9c483c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c4841: hlt    
  0x000000010e9c4842: hlt    
  0x000000010e9c4843: hlt    
  0x000000010e9c4844: hlt    
  0x000000010e9c4845: hlt    
  0x000000010e9c4846: hlt    
  0x000000010e9c4847: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x000000010e9c4620, 0x000000010e9c4650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113677098} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c4620: mov    0x14(%rsi),%ebx
  0x000000010e9c4623: shl    $0x3,%rbx
  0x000000010e9c4627: mov    0x28(%rbx),%ebx
  0x000000010e9c462a: shl    $0x3,%rbx
  0x000000010e9c462e: mov    0x24(%rbx),%ebx
  0x000000010e9c4631: shl    $0x3,%rbx
  0x000000010e9c4635: mov    0x10(%rbx),%rbx
  0x000000010e9c4639: test   %rbx,%rbx
  0x000000010e9c463c: je     0x000000010e9c4645
  0x000000010e9c4642: jmpq   *0x38(%rbx)
  0x000000010e9c4645: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c464a: hlt    
  0x000000010e9c464b: hlt    
  0x000000010e9c464c: hlt    
  0x000000010e9c464d: hlt    
  0x000000010e9c464e: hlt    
  0x000000010e9c464f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e9c4420, 0x000000010e9c4440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136771b0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c4420: cmp    (%rsi),%rax
  0x000000010e9c4423: mov    0x24(%rdi),%ebx
  0x000000010e9c4426: shl    $0x3,%rbx
  0x000000010e9c442a: mov    0x10(%rbx),%rbx
  0x000000010e9c442e: test   %rbx,%rbx
  0x000000010e9c4431: je     0x000000010e9c443a
  0x000000010e9c4437: jmpq   *0x38(%rbx)
  0x000000010e9c443a: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c443f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c4220, 0x000000010e9c4250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113677318} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000010e9c4220: mov    0x14(%rsi),%ebx
  0x000000010e9c4223: shl    $0x3,%rbx
  0x000000010e9c4227: mov    0x28(%rbx),%ebx
  0x000000010e9c422a: shl    $0x3,%rbx
  0x000000010e9c422e: mov    0x24(%rbx),%ebx
  0x000000010e9c4231: shl    $0x3,%rbx
  0x000000010e9c4235: mov    0x10(%rbx),%rbx
  0x000000010e9c4239: test   %rbx,%rbx
  0x000000010e9c423c: je     0x000000010e9c4245
  0x000000010e9c4242: jmpq   *0x38(%rbx)
  0x000000010e9c4245: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c424a: hlt    
  0x000000010e9c424b: hlt    
  0x000000010e9c424c: hlt    
  0x000000010e9c424d: hlt    
  0x000000010e9c424e: hlt    
  0x000000010e9c424f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c4020, 0x000000010e9c4048]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136782b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000010e9c4020: mov    0x18(%rsp),%rbx
  0x000000010e9c4025: mov    0x24(%rbx),%ebx
  0x000000010e9c4028: shl    $0x3,%rbx
  0x000000010e9c402c: mov    0x10(%rbx),%rbx
  0x000000010e9c4030: test   %rbx,%rbx
  0x000000010e9c4033: je     0x000000010e9c403c
  0x000000010e9c4039: jmpq   *0x38(%rbx)
  0x000000010e9c403c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c4041: hlt    
  0x000000010e9c4042: hlt    
  0x000000010e9c4043: hlt    
  0x000000010e9c4044: hlt    
  0x000000010e9c4045: hlt    
  0x000000010e9c4046: hlt    
  0x000000010e9c4047: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000010e9c3e20, 0x000000010e9c3e50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136783d0} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c3e20: mov    0x14(%rsi),%ebx
  0x000000010e9c3e23: shl    $0x3,%rbx
  0x000000010e9c3e27: mov    0x28(%rbx),%ebx
  0x000000010e9c3e2a: shl    $0x3,%rbx
  0x000000010e9c3e2e: mov    0x24(%rbx),%ebx
  0x000000010e9c3e31: shl    $0x3,%rbx
  0x000000010e9c3e35: mov    0x10(%rbx),%rbx
  0x000000010e9c3e39: test   %rbx,%rbx
  0x000000010e9c3e3c: je     0x000000010e9c3e45
  0x000000010e9c3e42: jmpq   *0x38(%rbx)
  0x000000010e9c3e45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c3e4a: hlt    
  0x000000010e9c3e4b: hlt    
  0x000000010e9c3e4c: hlt    
  0x000000010e9c3e4d: hlt    
  0x000000010e9c3e4e: hlt    
  0x000000010e9c3e4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c3c20, 0x000000010e9c3c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136784e8} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c3c20: cmp    (%rsi),%rax
  0x000000010e9c3c23: mov    0x24(%r8),%ebx
  0x000000010e9c3c27: shl    $0x3,%rbx
  0x000000010e9c3c2b: mov    0x10(%rbx),%rbx
  0x000000010e9c3c2f: test   %rbx,%rbx
  0x000000010e9c3c32: je     0x000000010e9c3c3b
  0x000000010e9c3c38: jmpq   *0x38(%rbx)
  0x000000010e9c3c3b: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c3a20, 0x000000010e9c3a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113678650} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000010e9c3a20: mov    0x14(%rsi),%ebx
  0x000000010e9c3a23: shl    $0x3,%rbx
  0x000000010e9c3a27: mov    0x28(%rbx),%ebx
  0x000000010e9c3a2a: shl    $0x3,%rbx
  0x000000010e9c3a2e: mov    0x24(%rbx),%ebx
  0x000000010e9c3a31: shl    $0x3,%rbx
  0x000000010e9c3a35: mov    0x10(%rbx),%rbx
  0x000000010e9c3a39: test   %rbx,%rbx
  0x000000010e9c3a3c: je     0x000000010e9c3a45
  0x000000010e9c3a42: jmpq   *0x38(%rbx)
  0x000000010e9c3a45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c3a4a: hlt    
  0x000000010e9c3a4b: hlt    
  0x000000010e9c3a4c: hlt    
  0x000000010e9c3a4d: hlt    
  0x000000010e9c3a4e: hlt    
  0x000000010e9c3a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e9c3820, 0x000000010e9c3840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113678948} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c3820: mov    0x24(%rcx),%ebx
  0x000000010e9c3823: shl    $0x3,%rbx
  0x000000010e9c3827: mov    0x10(%rbx),%rbx
  0x000000010e9c382b: test   %rbx,%rbx
  0x000000010e9c382e: je     0x000000010e9c3837
  0x000000010e9c3834: jmpq   *0x38(%rbx)
  0x000000010e9c3837: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c383c: hlt    
  0x000000010e9c383d: hlt    
  0x000000010e9c383e: hlt    
  0x000000010e9c383f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x000000010e9c3620, 0x000000010e9c3650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113678a60} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c3620: mov    0x14(%rsi),%ebx
  0x000000010e9c3623: shl    $0x3,%rbx
  0x000000010e9c3627: mov    0x28(%rbx),%ebx
  0x000000010e9c362a: shl    $0x3,%rbx
  0x000000010e9c362e: mov    0x24(%rbx),%ebx
  0x000000010e9c3631: shl    $0x3,%rbx
  0x000000010e9c3635: mov    0x10(%rbx),%rbx
  0x000000010e9c3639: test   %rbx,%rbx
  0x000000010e9c363c: je     0x000000010e9c3645
  0x000000010e9c3642: jmpq   *0x38(%rbx)
  0x000000010e9c3645: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c364a: hlt    
  0x000000010e9c364b: hlt    
  0x000000010e9c364c: hlt    
  0x000000010e9c364d: hlt    
  0x000000010e9c364e: hlt    
  0x000000010e9c364f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010e9c3420, 0x000000010e9c3440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113678b78} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c3420: cmp    (%rsi),%rax
  0x000000010e9c3423: mov    0x24(%r8),%ebx
  0x000000010e9c3427: shl    $0x3,%rbx
  0x000000010e9c342b: mov    0x10(%rbx),%rbx
  0x000000010e9c342f: test   %rbx,%rbx
  0x000000010e9c3432: je     0x000000010e9c343b
  0x000000010e9c3438: jmpq   *0x38(%rbx)
  0x000000010e9c343b: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     158   42             java.lang.String::charAt (25 bytes)
 total in heap  [0x000000010e9c2e90,0x000000010e9c3238] = 936
 relocation     [0x000000010e9c3008,0x000000010e9c3018] = 16
 main code      [0x000000010e9c3020,0x000000010e9c30c0] = 160
 stub code      [0x000000010e9c30c0,0x000000010e9c30d8] = 24
 metadata       [0x000000010e9c30d8,0x000000010e9c30f0] = 24
 scopes data    [0x000000010e9c30f0,0x000000010e9c3150] = 96
 scopes pcs     [0x000000010e9c3150,0x000000010e9c3220] = 208
 dependencies   [0x000000010e9c3220,0x000000010e9c3228] = 8
 nul chk table  [0x000000010e9c3228,0x000000010e9c3238] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x000000010e9c3020, 0x000000010e9c30d8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001132614b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e9c3020: mov    0x8(%rsi),%r10d
  0x000000010e9c3024: movabs $0x800000000,%r12
  0x000000010e9c302e: add    %r12,%r10
  0x000000010e9c3031: xor    %r12,%r12
  0x000000010e9c3034: cmp    %r10,%rax
  0x000000010e9c3037: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9c303d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9c3040: mov    %eax,-0x14000(%rsp)
  0x000000010e9c3047: push   %rbp
  0x000000010e9c3048: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000010e9c304c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e9c3051: test   %r10d,%r10d
  0x000000010e9c3054: jne    0x000000010e9c307d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e9c3056: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x000000010e9c3059: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000010e9c30a6
  0x000000010e9c305e: cmp    %r10d,%edx
  0x000000010e9c3061: jae    0x000000010e9c3096
  0x000000010e9c3063: lea    (%r12,%rbp,8),%r10
  0x000000010e9c3067: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e9c306d: add    $0x20,%rsp
  0x000000010e9c3071: pop    %rbp
  0x000000010e9c3072: mov    0x108(%r15),%r10
  0x000000010e9c3079: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9c307c: retq   
  0x000000010e9c307d: mov    %rsi,%rbp
  0x000000010e9c3080: mov    %edx,(%rsp)
  0x000000010e9c3083: mov    %r10d,0x4(%rsp)
  0x000000010e9c3088: mov    $0xffffff4d,%esi
  0x000000010e9c308d: xchg   %ax,%ax
  0x000000010e9c308f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c3094: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010e9c3096: mov    $0xffffffe5,%esi
  0x000000010e9c309b: mov    %edx,0x4(%rsp)
  0x000000010e9c309f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c30a4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e9c30a6: mov    $0xfffffff6,%esi
  0x000000010e9c30ab: mov    %edx,0x4(%rsp)
  0x000000010e9c30af: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c30b4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010e9c30b6: hlt    
  0x000000010e9c30b7: hlt    
  0x000000010e9c30b8: hlt    
  0x000000010e9c30b9: hlt    
  0x000000010e9c30ba: hlt    
  0x000000010e9c30bb: hlt    
  0x000000010e9c30bc: hlt    
  0x000000010e9c30bd: hlt    
  0x000000010e9c30be: hlt    
  0x000000010e9c30bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9c30c0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9c30c5: callq  0x000000010e9c30ca
  0x000000010e9c30ca: subq   $0x5,(%rsp)
  0x000000010e9c30cf: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9c30d4: hlt    
  0x000000010e9c30d5: hlt    
  0x000000010e9c30d6: hlt    
  0x000000010e9c30d7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     160   43             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x000000010e9c2b90,0x000000010e9c2e60] = 720
 relocation     [0x000000010e9c2d08,0x000000010e9c2d18] = 16
 main code      [0x000000010e9c2d20,0x000000010e9c2d80] = 96
 stub code      [0x000000010e9c2d80,0x000000010e9c2d98] = 24
 metadata       [0x000000010e9c2d98,0x000000010e9c2da0] = 8
 scopes data    [0x000000010e9c2da0,0x000000010e9c2dc8] = 40
 scopes pcs     [0x000000010e9c2dc8,0x000000010e9c2e48] = 128
 dependencies   [0x000000010e9c2e48,0x000000010e9c2e50] = 8
 nul chk table  [0x000000010e9c2e50,0x000000010e9c2e60] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x000000010e9c2d20, 0x000000010e9c2d98]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001133b4988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e9c2d20: mov    %eax,-0x14000(%rsp)
  0x000000010e9c2d27: push   %rbp
  0x000000010e9c2d28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000010e9c2d2c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000010e9c2d5e
  0x000000010e9c2d30: cmp    %r10d,%edx
  0x000000010e9c2d33: jae    0x000000010e9c2d4a
  0x000000010e9c2d35: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000010e9c2d3a: add    $0x20,%rsp
  0x000000010e9c2d3e: pop    %rbp
  0x000000010e9c2d3f: mov    0x108(%r15),%r10
  0x000000010e9c2d46: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9c2d49: retq   
  0x000000010e9c2d4a: mov    %rsi,%rbp
  0x000000010e9c2d4d: mov    %edx,0x4(%rsp)
  0x000000010e9c2d51: mov    $0xffffffe5,%esi
  0x000000010e9c2d56: nop
  0x000000010e9c2d57: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c2d5c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010e9c2d5e: mov    %rsi,%rbp
  0x000000010e9c2d61: mov    %edx,0x4(%rsp)
  0x000000010e9c2d65: mov    $0xfffffff6,%esi
  0x000000010e9c2d6a: nop
  0x000000010e9c2d6b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c2d70: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010e9c2d72: hlt    
  0x000000010e9c2d73: hlt    
  0x000000010e9c2d74: hlt    
  0x000000010e9c2d75: hlt    
  0x000000010e9c2d76: hlt    
  0x000000010e9c2d77: hlt    
  0x000000010e9c2d78: hlt    
  0x000000010e9c2d79: hlt    
  0x000000010e9c2d7a: hlt    
  0x000000010e9c2d7b: hlt    
  0x000000010e9c2d7c: hlt    
  0x000000010e9c2d7d: hlt    
  0x000000010e9c2d7e: hlt    
  0x000000010e9c2d7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9c2d80: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9c2d85: callq  0x000000010e9c2d8a
  0x000000010e9c2d8a: subq   $0x5,(%rsp)
  0x000000010e9c2d8f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9c2d94: hlt    
  0x000000010e9c2d95: hlt    
  0x000000010e9c2d96: hlt    
  0x000000010e9c2d97: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c2b20, 0x000000010e9c2b48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113679cc8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c2b20: mov    0x20(%rsp),%rbx
  0x000000010e9c2b25: mov    0x24(%rbx),%ebx
  0x000000010e9c2b28: shl    $0x3,%rbx
  0x000000010e9c2b2c: mov    0x10(%rbx),%rbx
  0x000000010e9c2b30: test   %rbx,%rbx
  0x000000010e9c2b33: je     0x000000010e9c2b3c
  0x000000010e9c2b39: jmpq   *0x38(%rbx)
  0x000000010e9c2b3c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c2b41: hlt    
  0x000000010e9c2b42: hlt    
  0x000000010e9c2b43: hlt    
  0x000000010e9c2b44: hlt    
  0x000000010e9c2b45: hlt    
  0x000000010e9c2b46: hlt    
  0x000000010e9c2b47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c2920, 0x000000010e9c2950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113679e30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c2920: mov    0x14(%rsi),%ebx
  0x000000010e9c2923: shl    $0x3,%rbx
  0x000000010e9c2927: mov    0x28(%rbx),%ebx
  0x000000010e9c292a: shl    $0x3,%rbx
  0x000000010e9c292e: mov    0x24(%rbx),%ebx
  0x000000010e9c2931: shl    $0x3,%rbx
  0x000000010e9c2935: mov    0x10(%rbx),%rbx
  0x000000010e9c2939: test   %rbx,%rbx
  0x000000010e9c293c: je     0x000000010e9c2945
  0x000000010e9c2942: jmpq   *0x38(%rbx)
  0x000000010e9c2945: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c294a: hlt    
  0x000000010e9c294b: hlt    
  0x000000010e9c294c: hlt    
  0x000000010e9c294d: hlt    
  0x000000010e9c294e: hlt    
  0x000000010e9c294f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c24a0, 0x000000010e9c24c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367aea8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c24a0: mov    0x28(%rsp),%rbx
  0x000000010e9c24a5: mov    0x24(%rbx),%ebx
  0x000000010e9c24a8: shl    $0x3,%rbx
  0x000000010e9c24ac: mov    0x10(%rbx),%rbx
  0x000000010e9c24b0: test   %rbx,%rbx
  0x000000010e9c24b3: je     0x000000010e9c24bc
  0x000000010e9c24b9: jmpq   *0x38(%rbx)
  0x000000010e9c24bc: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c24c1: hlt    
  0x000000010e9c24c2: hlt    
  0x000000010e9c24c3: hlt    
  0x000000010e9c24c4: hlt    
  0x000000010e9c24c5: hlt    
  0x000000010e9c24c6: hlt    
  0x000000010e9c24c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c22a0, 0x000000010e9c22d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367b010} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c22a0: mov    0x14(%rsi),%ebx
  0x000000010e9c22a3: shl    $0x3,%rbx
  0x000000010e9c22a7: mov    0x28(%rbx),%ebx
  0x000000010e9c22aa: shl    $0x3,%rbx
  0x000000010e9c22ae: mov    0x24(%rbx),%ebx
  0x000000010e9c22b1: shl    $0x3,%rbx
  0x000000010e9c22b5: mov    0x10(%rbx),%rbx
  0x000000010e9c22b9: test   %rbx,%rbx
  0x000000010e9c22bc: je     0x000000010e9c22c5
  0x000000010e9c22c2: jmpq   *0x38(%rbx)
  0x000000010e9c22c5: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c22ca: hlt    
  0x000000010e9c22cb: hlt    
  0x000000010e9c22cc: hlt    
  0x000000010e9c22cd: hlt    
  0x000000010e9c22ce: hlt    
  0x000000010e9c22cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x000000010e9c2020, 0x000000010e9c2040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367b218} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c2020: mov    0x24(%rcx),%ebx
  0x000000010e9c2023: shl    $0x3,%rbx
  0x000000010e9c2027: mov    0x10(%rbx),%rbx
  0x000000010e9c202b: test   %rbx,%rbx
  0x000000010e9c202e: je     0x000000010e9c2037
  0x000000010e9c2034: jmpq   *0x38(%rbx)
  0x000000010e9c2037: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c203c: hlt    
  0x000000010e9c203d: hlt    
  0x000000010e9c203e: hlt    
  0x000000010e9c203f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c7e20, 0x000000010e9c7e48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367c938} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c7e20: mov    0x30(%rsp),%rbx
  0x000000010e9c7e25: mov    0x24(%rbx),%ebx
  0x000000010e9c7e28: shl    $0x3,%rbx
  0x000000010e9c7e2c: mov    0x10(%rbx),%rbx
  0x000000010e9c7e30: test   %rbx,%rbx
  0x000000010e9c7e33: je     0x000000010e9c7e3c
  0x000000010e9c7e39: jmpq   *0x38(%rbx)
  0x000000010e9c7e3c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c7e41: hlt    
  0x000000010e9c7e42: hlt    
  0x000000010e9c7e43: hlt    
  0x000000010e9c7e44: hlt    
  0x000000010e9c7e45: hlt    
  0x000000010e9c7e46: hlt    
  0x000000010e9c7e47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x000000010e9c7c20, 0x000000010e9c7c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367ca50} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c7c20: mov    0x14(%rsi),%ebx
  0x000000010e9c7c23: shl    $0x3,%rbx
  0x000000010e9c7c27: mov    0x28(%rbx),%ebx
  0x000000010e9c7c2a: shl    $0x3,%rbx
  0x000000010e9c7c2e: mov    0x24(%rbx),%ebx
  0x000000010e9c7c31: shl    $0x3,%rbx
  0x000000010e9c7c35: mov    0x10(%rbx),%rbx
  0x000000010e9c7c39: test   %rbx,%rbx
  0x000000010e9c7c3c: je     0x000000010e9c7c45
  0x000000010e9c7c42: jmpq   *0x38(%rbx)
  0x000000010e9c7c45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c7c4a: hlt    
  0x000000010e9c7c4b: hlt    
  0x000000010e9c7c4c: hlt    
  0x000000010e9c7c4d: hlt    
  0x000000010e9c7c4e: hlt    
  0x000000010e9c7c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010e9c7a20, 0x000000010e9c7a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367cb68} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c7a20: cmp    (%rsi),%rax
  0x000000010e9c7a23: mov    0x24(%r8),%ebx
  0x000000010e9c7a27: shl    $0x3,%rbx
  0x000000010e9c7a2b: mov    0x10(%rbx),%rbx
  0x000000010e9c7a2f: test   %rbx,%rbx
  0x000000010e9c7a32: je     0x000000010e9c7a3b
  0x000000010e9c7a38: jmpq   *0x38(%rbx)
  0x000000010e9c7a3b: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c7820, 0x000000010e9c7850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367ccd0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c7820: mov    0x14(%rsi),%ebx
  0x000000010e9c7823: shl    $0x3,%rbx
  0x000000010e9c7827: mov    0x28(%rbx),%ebx
  0x000000010e9c782a: shl    $0x3,%rbx
  0x000000010e9c782e: mov    0x24(%rbx),%ebx
  0x000000010e9c7831: shl    $0x3,%rbx
  0x000000010e9c7835: mov    0x10(%rbx),%rbx
  0x000000010e9c7839: test   %rbx,%rbx
  0x000000010e9c783c: je     0x000000010e9c7845
  0x000000010e9c7842: jmpq   *0x38(%rbx)
  0x000000010e9c7845: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c784a: hlt    
  0x000000010e9c784b: hlt    
  0x000000010e9c784c: hlt    
  0x000000010e9c784d: hlt    
  0x000000010e9c784e: hlt    
  0x000000010e9c784f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c7620, 0x000000010e9c7648]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367de28} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c7620: mov    0x38(%rsp),%rbx
  0x000000010e9c7625: mov    0x24(%rbx),%ebx
  0x000000010e9c7628: shl    $0x3,%rbx
  0x000000010e9c762c: mov    0x10(%rbx),%rbx
  0x000000010e9c7630: test   %rbx,%rbx
  0x000000010e9c7633: je     0x000000010e9c763c
  0x000000010e9c7639: jmpq   *0x38(%rbx)
  0x000000010e9c763c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c7641: hlt    
  0x000000010e9c7642: hlt    
  0x000000010e9c7643: hlt    
  0x000000010e9c7644: hlt    
  0x000000010e9c7645: hlt    
  0x000000010e9c7646: hlt    
  0x000000010e9c7647: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c7420, 0x000000010e9c7450]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367df90} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c7420: mov    0x14(%rsi),%ebx
  0x000000010e9c7423: shl    $0x3,%rbx
  0x000000010e9c7427: mov    0x28(%rbx),%ebx
  0x000000010e9c742a: shl    $0x3,%rbx
  0x000000010e9c742e: mov    0x24(%rbx),%ebx
  0x000000010e9c7431: shl    $0x3,%rbx
  0x000000010e9c7435: mov    0x10(%rbx),%rbx
  0x000000010e9c7439: test   %rbx,%rbx
  0x000000010e9c743c: je     0x000000010e9c7445
  0x000000010e9c7442: jmpq   *0x38(%rbx)
  0x000000010e9c7445: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c744a: hlt    
  0x000000010e9c744b: hlt    
  0x000000010e9c744c: hlt    
  0x000000010e9c744d: hlt    
  0x000000010e9c744e: hlt    
  0x000000010e9c744f: hlt    
Compiled method (c2)     192   55             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x000000010e9c9a10,0x000000010e9ca828] = 3608
 relocation     [0x000000010e9c9b88,0x000000010e9c9bb8] = 48
 main code      [0x000000010e9c9bc0,0x000000010e9c9fe0] = 1056
 stub code      [0x000000010e9c9fe0,0x000000010e9ca008] = 40
 metadata       [0x000000010e9ca008,0x000000010e9ca038] = 48
 scopes data    [0x000000010e9ca038,0x000000010e9ca238] = 512
 scopes pcs     [0x000000010e9ca238,0x000000010e9ca7d8] = 1440
 dependencies   [0x000000010e9ca7d8,0x000000010e9ca7e0] = 8
 handler table  [0x000000010e9ca7e0,0x000000010e9ca7f8] = 24
 nul chk table  [0x000000010e9ca7f8,0x000000010e9ca828] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x000000010e9c9bc0, 0x000000010e9ca008]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001135f96f0} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x000000010e9c9bc0: mov    0x8(%rsi),%r10d
  0x000000010e9c9bc4: movabs $0x800000000,%r12
  0x000000010e9c9bce: add    %r12,%r10
  0x000000010e9c9bd1: xor    %r12,%r12
  0x000000010e9c9bd4: cmp    %r10,%rax
  0x000000010e9c9bd7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9c9bdd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9c9be0: mov    %eax,-0x14000(%rsp)
  0x000000010e9c9be7: push   %rbp
  0x000000010e9c9be8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x000000010e9c9bec: mov    %rsi,%r10
  0x000000010e9c9bef: mov    %rdx,%r9
  0x000000010e9c9bf2: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x000000010e9c9fa3
  0x000000010e9c9bf6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000010e9c9fb2
  0x000000010e9c9bfb: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e9c9bff: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e9c9c02: cmp    $0xffff,%r11d
  0x000000010e9c9c09: jg     0x000000010e9c9f6e  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010e9c9c0f: mov    %rsi,%rdi
  0x000000010e9c9c12: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x000000010e9c9c16: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x000000010e9c9fbe
  0x000000010e9c9c1b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x000000010e9c9c1e: mov    %r11d,%r10d
  0x000000010e9c9c21: add    %edx,%r10d
  0x000000010e9c9c24: add    $0x2,%r10d
  0x000000010e9c9c28: cmp    %ebx,%r10d
  0x000000010e9c9c2b: jg     0x000000010e9c9e59  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9c31: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010e9c9c34: mov    %r11d,%esi
  0x000000010e9c9c37: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x000000010e9c9c3a: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x000000010e9c9c3e: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x000000010e9c9fca
  0x000000010e9c9c43: mov    %edx,%r10d
  0x000000010e9c9c46: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x000000010e9c9c49: cmp    %ebp,%edx
  0x000000010e9c9c4b: jae    0x000000010e9c9ee6
  0x000000010e9c9c51: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010e9c9c55: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010e9c9c5a: mov    %edx,%r14d
  0x000000010e9c9c5d: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e9c9c61: cmp    %ebp,%r10d
  0x000000010e9c9c64: jae    0x000000010e9c9f12
  0x000000010e9c9c6a: movslq %edx,%rsi
  0x000000010e9c9c6d: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010e9c9c72: test   %r11d,%r11d
  0x000000010e9c9c75: jle    0x000000010e9c9e42  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e9c9c7b: test   %ecx,%ecx
  0x000000010e9c9c7d: jne    0x000000010e9c9f3e
  0x000000010e9c9c83: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000010e9c9f3e
  0x000000010e9c9c88: test   %r10d,%r10d
  0x000000010e9c9c8b: jbe    0x000000010e9c9f3e
  0x000000010e9c9c91: movslq %r10d,%rcx
  0x000000010e9c9c94: movslq %r11d,%r13
  0x000000010e9c9c97: mov    %r13,%r10
  0x000000010e9c9c9a: dec    %r10
  0x000000010e9c9c9d: cmp    %rcx,%r10
  0x000000010e9c9ca0: jae    0x000000010e9c9f3e
  0x000000010e9c9ca6: cmp    %ebp,%r14d
  0x000000010e9c9ca9: jae    0x000000010e9c9f3e
  0x000000010e9c9caf: movslq %ebp,%r10
  0x000000010e9c9cb2: movslq %r14d,%rcx
  0x000000010e9c9cb5: add    %r13,%rcx
  0x000000010e9c9cb8: dec    %rcx
  0x000000010e9c9cbb: cmp    %r10,%rcx
  0x000000010e9c9cbe: jae    0x000000010e9c9f3e
  0x000000010e9c9cc4: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9cca: mov    %ecx,%ebp
  0x000000010e9c9ccc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9cd0: mov    %ebp,%r10d
  0x000000010e9c9cd3: dec    %r10d
  0x000000010e9c9cd6: cmp    $0x7f,%r10d
  0x000000010e9c9cda: jae    0x000000010e9c9f86  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9ce0: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9ce4: mov    %r11d,%r13d
  0x000000010e9c9ce7: add    $0xfffffffd,%r13d
  0x000000010e9c9ceb: lea    (%r12,%r8,8),%rsi
  0x000000010e9c9cef: mov    $0x1,%ecx
  0x000000010e9c9cf4: mov    $0x80000000,%r8d
  0x000000010e9c9cfa: cmp    %r13d,%r11d
  0x000000010e9c9cfd: cmovl  %r8d,%r13d
  0x000000010e9c9d01: cmp    $0x1,%r13d
  0x000000010e9c9d05: jle    0x000000010e9c9f62  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e9c9d0b: jmp    0x000000010e9c9d1c
  0x000000010e9c9d0d: vmovq  %xmm0,%r9
  0x000000010e9c9d12: vmovq  %xmm1,%rdi
  0x000000010e9c9d17: vmovd  %xmm3,%r11d
  0x000000010e9c9d1c: mov    %r13d,%r10d
  0x000000010e9c9d1f: sub    %ecx,%r10d
  0x000000010e9c9d22: mov    $0xfa0,%r14d
  0x000000010e9c9d28: cmp    %r14d,%r10d
  0x000000010e9c9d2b: cmovg  %r14d,%r10d
  0x000000010e9c9d2f: add    %ecx,%r10d
  0x000000010e9c9d32: vmovq  %r9,%xmm0
  0x000000010e9c9d37: vmovq  %rdi,%xmm1
  0x000000010e9c9d3c: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9d41: mov    %ecx,%r14d
  0x000000010e9c9d44: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e9c9d47: movslq %ecx,%r9
  0x000000010e9c9d4a: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d50: mov    %r8d,%ebp
  0x000000010e9c9d53: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d57: mov    %ebp,%r11d
  0x000000010e9c9d5a: dec    %r11d
  0x000000010e9c9d5d: cmp    $0x7f,%r11d
  0x000000010e9c9d61: jae    0x000000010e9c9e92  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9d67: movslq %r14d,%rdi
  0x000000010e9c9d6a: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9d6f: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d75: mov    %r11d,%ebp
  0x000000010e9c9d78: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d7c: mov    %ebp,%r8d
  0x000000010e9c9d7f: dec    %r8d
  0x000000010e9c9d82: cmp    $0x7f,%r8d
  0x000000010e9c9d86: jae    0x000000010e9c9e98  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9d8c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9d91: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d97: mov    %r8d,%ebp
  0x000000010e9c9d9a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9d9e: mov    %ebp,%r11d
  0x000000010e9c9da1: dec    %r11d
  0x000000010e9c9da4: cmp    $0x7f,%r11d
  0x000000010e9c9da8: jae    0x000000010e9c9ea0  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9dae: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9db3: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9db9: mov    %r8d,%ebp
  0x000000010e9c9dbc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9dc0: mov    %ebp,%r11d
  0x000000010e9c9dc3: dec    %r11d
  0x000000010e9c9dc6: cmp    $0x7f,%r11d
  0x000000010e9c9dca: jae    0x000000010e9c9ea9  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9dd0: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9dd5: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e9c9dd8: cmp    %r10d,%ecx
  0x000000010e9c9ddb: jl     0x000000010e9c9d41  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e9c9de1: mov    0x108(%r15),%r9
  0x000000010e9c9de8: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010e9c9dec: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x000000010e9c9def: cmp    %r13d,%ecx
  0x000000010e9c9df2: jl     0x000000010e9c9d0d
  0x000000010e9c9df8: vmovq  %xmm0,%r9
  0x000000010e9c9dfd: vmovq  %xmm1,%rdi
  0x000000010e9c9e02: vmovd  %xmm3,%r11d
  0x000000010e9c9e07: cmp    %r11d,%ecx
  0x000000010e9c9e0a: jge    0x000000010e9c9e42  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9e0c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9e12: mov    %ecx,%r14d
  0x000000010e9c9e15: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010e9c9e18: mov    %r8d,%ebp
  0x000000010e9c9e1b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9e1f: mov    %ebp,%r10d
  0x000000010e9c9e22: dec    %r10d
  0x000000010e9c9e25: cmp    $0x7f,%r10d
  0x000000010e9c9e29: jae    0x000000010e9c9f8d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010e9c9e2f: movslq %r14d,%r10
  0x000000010e9c9e32: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010e9c9e37: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e9c9e39: cmp    %r11d,%ecx
  0x000000010e9c9e3c: jl     0x000000010e9c9e0c
  0x000000010e9c9e3e: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e9c9e42: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x000000010e9c9e46: mov    %rdi,%rax
  0x000000010e9c9e49: add    $0x40,%rsp
  0x000000010e9c9e4d: pop    %rbp
  0x000000010e9c9e4e: mov    0x108(%r15),%r10
  0x000000010e9c9e55: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9c9e58: retq   
  0x000000010e9c9e59: mov    %edx,0xc(%rsp)
  0x000000010e9c9e5d: mov    %rsi,(%rsp)
  0x000000010e9c9e61: mov    %r9,%rbp
  0x000000010e9c9e64: mov    %r11d,%edx
  0x000000010e9c9e67: mov    %r11d,0x8(%rsp)
  0x000000010e9c9e6c: add    $0x2,%edx
  0x000000010e9c9e6f: callq  0x000000010e979f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x000000010e9c9e74: mov    %rbp,%r9
  0x000000010e9c9e77: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9e7b: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010e9c9e80: mov    (%rsp),%rdi
  0x000000010e9c9e84: mov    0x8(%rsp),%r11d
  0x000000010e9c9e89: mov    0xc(%rsp),%edx
  0x000000010e9c9e8d: jmpq   0x000000010e9c9c31
  0x000000010e9c9e92: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9e96: jmp    0x000000010e9c9eb0
  0x000000010e9c9e98: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e9c9e9a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9e9e: jmp    0x000000010e9c9eb0
  0x000000010e9c9ea0: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e9c9ea3: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9ea7: jmp    0x000000010e9c9eb0
  0x000000010e9c9ea9: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010e9c9eac: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9eb0: vmovq  %xmm0,%r9
  0x000000010e9c9eb5: vmovq  %xmm1,%rdi
  0x000000010e9c9eba: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010e9c9ebf: mov    $0xffffff45,%esi
  0x000000010e9c9ec4: mov    %r14d,(%rsp)
  0x000000010e9c9ec8: mov    %ecx,0x4(%rsp)
  0x000000010e9c9ecc: mov    %rdi,0x10(%rsp)
  0x000000010e9c9ed1: mov    %r9,0x18(%rsp)
  0x000000010e9c9ed6: mov    %r11d,0xc(%rsp)
  0x000000010e9c9edb: mov    %ebx,0x20(%rsp)
  0x000000010e9c9edf: callq  0x000000010e97b900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9ee4: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010e9c9ee6: mov    $0xffffffe4,%esi
  0x000000010e9c9eeb: mov    %edx,%ebp
  0x000000010e9c9eed: mov    %rdi,(%rsp)
  0x000000010e9c9ef1: mov    %r9,0x8(%rsp)
  0x000000010e9c9ef6: mov    %r11d,0x10(%rsp)
  0x000000010e9c9efb: mov    %r10d,0x14(%rsp)
  0x000000010e9c9f00: mov    %ebx,0x1c(%rsp)
  0x000000010e9c9f04: mov    %eax,0x20(%rsp)
  0x000000010e9c9f08: data16 xchg %ax,%ax
  0x000000010e9c9f0b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9f10: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010e9c9f12: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x000000010e9c9f16: mov    $0xffffffe4,%esi
  0x000000010e9c9f1b: mov    %r14d,(%rsp)
  0x000000010e9c9f1f: mov    %rdi,0x8(%rsp)
  0x000000010e9c9f24: mov    %r9,0x10(%rsp)
  0x000000010e9c9f29: mov    %r11d,0x4(%rsp)
  0x000000010e9c9f2e: mov    %ebx,0x1c(%rsp)
  0x000000010e9c9f32: mov    %r10d,0x20(%rsp)
  0x000000010e9c9f37: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9f3c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e9c9f3e: mov    $0xffffff7e,%esi
  0x000000010e9c9f43: mov    %r14d,%ebp
  0x000000010e9c9f46: mov    %rdi,(%rsp)
  0x000000010e9c9f4a: mov    %r9,0x8(%rsp)
  0x000000010e9c9f4f: mov    %ebx,0x14(%rsp)
  0x000000010e9c9f53: mov    %r11d,0x18(%rsp)
  0x000000010e9c9f58: data16 xchg %ax,%ax
  0x000000010e9c9f5b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9f60: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010e9c9f62: mov    %edx,%r14d
  0x000000010e9c9f65: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x000000010e9c9f69: jmpq   0x000000010e9c9e07
  0x000000010e9c9f6e: mov    $0xffffff4d,%esi
  0x000000010e9c9f73: mov    %r10,%rbp
  0x000000010e9c9f76: mov    %rdx,(%rsp)
  0x000000010e9c9f7a: mov    %r11d,0xc(%rsp)
  0x000000010e9c9f7f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9f84: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010e9c9f86: xor    %ecx,%ecx
  0x000000010e9c9f88: jmpq   0x000000010e9c9ebf
  0x000000010e9c9f8d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010e9c9f91: jmpq   0x000000010e9c9ebf  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x000000010e9c9f96: mov    %rax,%rsi
  0x000000010e9c9f99: add    $0x40,%rsp
  0x000000010e9c9f9d: pop    %rbp
  0x000000010e9c9f9e: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9c9fa3: mov    $0xfffffff6,%esi
  0x000000010e9c9fa8: data16 xchg %ax,%ax
  0x000000010e9c9fab: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9fb0: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e9c9fb2: mov    $0xfffffff6,%esi
  0x000000010e9c9fb7: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9fbc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010e9c9fbe: mov    $0xfffffff6,%esi
  0x000000010e9c9fc3: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9fc8: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x000000010e9c9fca: mov    $0xfffffff6,%esi
  0x000000010e9c9fcf: mov    %edx,%ebp
  0x000000010e9c9fd1: mov    %eax,(%rsp)
  0x000000010e9c9fd4: data16 xchg %ax,%ax
  0x000000010e9c9fd7: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9c9fdc: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010e9c9fde: hlt    
  0x000000010e9c9fdf: hlt    
[Stub Code]
  0x000000010e9c9fe0: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e9c9fea: jmpq   0x000000010e9c9fea  ;   {runtime_call}
[Exception Handler]
  0x000000010e9c9fef: jmpq   0x000000010e9b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e9c9ff4: callq  0x000000010e9c9ff9
  0x000000010e9c9ff9: subq   $0x5,(%rsp)
  0x000000010e9c9ffe: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9ca003: hlt    
  0x000000010e9ca004: hlt    
  0x000000010e9ca005: hlt    
  0x000000010e9ca006: hlt    
  0x000000010e9ca007: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c6c20, 0x000000010e9c6c48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000011367fef8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c6c20: mov    0x40(%rsp),%rbx
  0x000000010e9c6c25: mov    0x24(%rbx),%ebx
  0x000000010e9c6c28: shl    $0x3,%rbx
  0x000000010e9c6c2c: mov    0x10(%rbx),%rbx
  0x000000010e9c6c30: test   %rbx,%rbx
  0x000000010e9c6c33: je     0x000000010e9c6c3c
  0x000000010e9c6c39: jmpq   *0x38(%rbx)
  0x000000010e9c6c3c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c6c41: hlt    
  0x000000010e9c6c42: hlt    
  0x000000010e9c6c43: hlt    
  0x000000010e9c6c44: hlt    
  0x000000010e9c6c45: hlt    
  0x000000010e9c6c46: hlt    
  0x000000010e9c6c47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000010e9c6a20, 0x000000010e9c6a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113682b30} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c6a20: mov    0x14(%rsi),%ebx
  0x000000010e9c6a23: shl    $0x3,%rbx
  0x000000010e9c6a27: mov    0x28(%rbx),%ebx
  0x000000010e9c6a2a: shl    $0x3,%rbx
  0x000000010e9c6a2e: mov    0x24(%rbx),%ebx
  0x000000010e9c6a31: shl    $0x3,%rbx
  0x000000010e9c6a35: mov    0x10(%rbx),%rbx
  0x000000010e9c6a39: test   %rbx,%rbx
  0x000000010e9c6a3c: je     0x000000010e9c6a45
  0x000000010e9c6a42: jmpq   *0x38(%rbx)
  0x000000010e9c6a45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c6a4a: hlt    
  0x000000010e9c6a4b: hlt    
  0x000000010e9c6a4c: hlt    
  0x000000010e9c6a4d: hlt    
  0x000000010e9c6a4e: hlt    
  0x000000010e9c6a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c6520, 0x000000010e9c6548]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136850e0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c6520: mov    0x48(%rsp),%rbx
  0x000000010e9c6525: mov    0x24(%rbx),%ebx
  0x000000010e9c6528: shl    $0x3,%rbx
  0x000000010e9c652c: mov    0x10(%rbx),%rbx
  0x000000010e9c6530: test   %rbx,%rbx
  0x000000010e9c6533: je     0x000000010e9c653c
  0x000000010e9c6539: jmpq   *0x38(%rbx)
  0x000000010e9c653c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c6541: hlt    
  0x000000010e9c6542: hlt    
  0x000000010e9c6543: hlt    
  0x000000010e9c6544: hlt    
  0x000000010e9c6545: hlt    
  0x000000010e9c6546: hlt    
  0x000000010e9c6547: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010e9c6320, 0x000000010e9c6350]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136856e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c6320: mov    0x14(%rsi),%ebx
  0x000000010e9c6323: shl    $0x3,%rbx
  0x000000010e9c6327: mov    0x28(%rbx),%ebx
  0x000000010e9c632a: shl    $0x3,%rbx
  0x000000010e9c632e: mov    0x24(%rbx),%ebx
  0x000000010e9c6331: shl    $0x3,%rbx
  0x000000010e9c6335: mov    0x10(%rbx),%rbx
  0x000000010e9c6339: test   %rbx,%rbx
  0x000000010e9c633c: je     0x000000010e9c6345
  0x000000010e9c6342: jmpq   *0x38(%rbx)
  0x000000010e9c6345: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c634a: hlt    
  0x000000010e9c634b: hlt    
  0x000000010e9c634c: hlt    
  0x000000010e9c634d: hlt    
  0x000000010e9c634e: hlt    
  0x000000010e9c634f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c5e20, 0x000000010e9c5e48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113686cf0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c5e20: mov    0x50(%rsp),%rbx
  0x000000010e9c5e25: mov    0x24(%rbx),%ebx
  0x000000010e9c5e28: shl    $0x3,%rbx
  0x000000010e9c5e2c: mov    0x10(%rbx),%rbx
  0x000000010e9c5e30: test   %rbx,%rbx
  0x000000010e9c5e33: je     0x000000010e9c5e3c
  0x000000010e9c5e39: jmpq   *0x38(%rbx)
  0x000000010e9c5e3c: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c5e41: hlt    
  0x000000010e9c5e42: hlt    
  0x000000010e9c5e43: hlt    
  0x000000010e9c5e44: hlt    
  0x000000010e9c5e45: hlt    
  0x000000010e9c5e46: hlt    
  0x000000010e9c5e47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x000000010e9c5c20, 0x000000010e9c5c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113686e08} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c5c20: mov    0x14(%rsi),%ebx
  0x000000010e9c5c23: shl    $0x3,%rbx
  0x000000010e9c5c27: mov    0x28(%rbx),%ebx
  0x000000010e9c5c2a: shl    $0x3,%rbx
  0x000000010e9c5c2e: mov    0x24(%rbx),%ebx
  0x000000010e9c5c31: shl    $0x3,%rbx
  0x000000010e9c5c35: mov    0x10(%rbx),%rbx
  0x000000010e9c5c39: test   %rbx,%rbx
  0x000000010e9c5c3c: je     0x000000010e9c5c45
  0x000000010e9c5c42: jmpq   *0x38(%rbx)
  0x000000010e9c5c45: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c5c4a: hlt    
  0x000000010e9c5c4b: hlt    
  0x000000010e9c5c4c: hlt    
  0x000000010e9c5c4d: hlt    
  0x000000010e9c5c4e: hlt    
  0x000000010e9c5c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c5820, 0x000000010e9c5840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000113686f20} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c5820: cmp    (%rsi),%rax
  0x000000010e9c5823: mov    0x24(%rdx),%ebx
  0x000000010e9c5826: shl    $0x3,%rbx
  0x000000010e9c582a: mov    0x10(%rbx),%rbx
  0x000000010e9c582e: test   %rbx,%rbx
  0x000000010e9c5831: je     0x000000010e9c583a
  0x000000010e9c5837: jmpq   *0x38(%rbx)
  0x000000010e9c583a: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c583f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000010e9c5620, 0x000000010e9c5650]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136870d8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010e9c5620: mov    0x14(%rsi),%ebx
  0x000000010e9c5623: shl    $0x3,%rbx
  0x000000010e9c5627: mov    0x28(%rbx),%ebx
  0x000000010e9c562a: shl    $0x3,%rbx
  0x000000010e9c562e: mov    0x24(%rbx),%ebx
  0x000000010e9c5631: shl    $0x3,%rbx
  0x000000010e9c5635: mov    0x10(%rbx),%rbx
  0x000000010e9c5639: test   %rbx,%rbx
  0x000000010e9c563c: je     0x000000010e9c5645
  0x000000010e9c5642: jmpq   *0x38(%rbx)
  0x000000010e9c5645: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c564a: hlt    
  0x000000010e9c564b: hlt    
  0x000000010e9c564c: hlt    
  0x000000010e9c564d: hlt    
  0x000000010e9c564e: hlt    
  0x000000010e9c564f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x000000010e9c51a0, 0x000000010e9c51d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136877d0} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c51a0: mov    0x14(%rsi),%ebx
  0x000000010e9c51a3: shl    $0x3,%rbx
  0x000000010e9c51a7: mov    0x28(%rbx),%ebx
  0x000000010e9c51aa: shl    $0x3,%rbx
  0x000000010e9c51ae: mov    0x24(%rbx),%ebx
  0x000000010e9c51b1: shl    $0x3,%rbx
  0x000000010e9c51b5: mov    0x10(%rbx),%rbx
  0x000000010e9c51b9: test   %rbx,%rbx
  0x000000010e9c51bc: je     0x000000010e9c51c5
  0x000000010e9c51c2: jmpq   *0x38(%rbx)
  0x000000010e9c51c5: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c51ca: hlt    
  0x000000010e9c51cb: hlt    
  0x000000010e9c51cc: hlt    
  0x000000010e9c51cd: hlt    
  0x000000010e9c51ce: hlt    
  0x000000010e9c51cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010e9c9720, 0x000000010e9c9740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001136878e8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010e9c9720: cmp    (%rsi),%rax
  0x000000010e9c9723: mov    0x24(%rcx),%ebx
  0x000000010e9c9726: shl    $0x3,%rbx
  0x000000010e9c972a: mov    0x10(%rbx),%rbx
  0x000000010e9c972e: test   %rbx,%rbx
  0x000000010e9c9731: je     0x000000010e9c973a
  0x000000010e9c9737: jmpq   *0x38(%rbx)
  0x000000010e9c973a: jmpq   0x000000010e993880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010e9c973f: hlt    
Time elapsed: 19.541 ms result=100
Warmup phase
Compiled method (c2)     238   66             java.util.Objects::requireNonNull (14 bytes)
 total in heap  [0x000000010e9ce010,0x000000010e9ce280] = 624
 relocation     [0x000000010e9ce188,0x000000010e9ce198] = 16
 main code      [0x000000010e9ce1a0,0x000000010e9ce1e0] = 64
 stub code      [0x000000010e9ce1e0,0x000000010e9ce1f8] = 24
 metadata       [0x000000010e9ce1f8,0x000000010e9ce200] = 8
 scopes data    [0x000000010e9ce200,0x000000010e9ce218] = 24
 scopes pcs     [0x000000010e9ce218,0x000000010e9ce278] = 96
 dependencies   [0x000000010e9ce278,0x000000010e9ce280] = 8
----------------------------------------------------------------------
java/util/Objects.requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9ce1a0, 0x000000010e9ce1f8]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011337b640} 'requireNonNull' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/Objects'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9ce1a0: mov    %eax,-0x14000(%rsp)
  0x000000010e9ce1a7: push   %rbp
  0x000000010e9ce1a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Objects::requireNonNull@-1 (line 220)

  0x000000010e9ce1ac: mov    %rsi,%rax
  0x000000010e9ce1af: test   %rsi,%rsi
  0x000000010e9ce1b2: je     0x000000010e9ce1c4  ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x000000010e9ce1b4: add    $0x20,%rsp
  0x000000010e9ce1b8: pop    %rbp
  0x000000010e9ce1b9: mov    0x108(%r15),%r10
  0x000000010e9ce1c0: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9ce1c3: retq   
  0x000000010e9ce1c4: mov    $0xffffff4d,%esi
  0x000000010e9ce1c9: mov    %rax,(%rsp)
  0x000000010e9ce1cd: xchg   %ax,%ax
  0x000000010e9ce1cf: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9ce1d4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x000000010e9ce1d6: hlt    
  0x000000010e9ce1d7: hlt    
  0x000000010e9ce1d8: hlt    
  0x000000010e9ce1d9: hlt    
  0x000000010e9ce1da: hlt    
  0x000000010e9ce1db: hlt    
  0x000000010e9ce1dc: hlt    
  0x000000010e9ce1dd: hlt    
  0x000000010e9ce1de: hlt    
  0x000000010e9ce1df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9ce1e0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9ce1e5: callq  0x000000010e9ce1ea
  0x000000010e9ce1ea: subq   $0x5,(%rsp)
  0x000000010e9ce1ef: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9ce1f4: hlt    
  0x000000010e9ce1f5: hlt    
  0x000000010e9ce1f6: hlt    
  0x000000010e9ce1f7: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 52 Compiled method (c2)     241   67             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x000000010e9ce290,0x000000010e9ce4d8] = 584
 relocation     [0x000000010e9ce408,0x000000010e9ce418] = 16
 main code      [0x000000010e9ce420,0x000000010e9ce460] = 64
 stub code      [0x000000010e9ce460,0x000000010e9ce478] = 24
 metadata       [0x000000010e9ce478,0x000000010e9ce480] = 8
 scopes data    [0x000000010e9ce480,0x000000010e9ce490] = 16
 scopes pcs     [0x000000010e9ce490,0x000000010e9ce4d0] = 64
 dependencies   [0x000000010e9ce4d0,0x000000010e9ce4d8] = 8
----------------------------------------------------------------------
java/lang/Integer.intValue()I  [0x000000010e9ce420, 0x000000010e9ce478]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000113355e20} 'intValue' '()I' in 'java/lang/Integer'
  #           [sp+0x20]  (sp of caller)
  0x000000010e9ce420: mov    0x8(%rsi),%r10d
  0x000000010e9ce424: movabs $0x800000000,%r12
  0x000000010e9ce42e: add    %r12,%r10
  0x000000010e9ce431: xor    %r12,%r12
  0x000000010e9ce434: cmp    %r10,%rax
  0x000000010e9ce437: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9ce43d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9ce440: sub    $0x18,%rsp
  0x000000010e9ce447: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::intValue@-1 (line 1123)

  0x000000010e9ce44c: mov    0xc(%rsi),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)

  0x000000010e9ce44f: add    $0x10,%rsp
  0x000000010e9ce453: pop    %rbp
  0x000000010e9ce454: mov    0x108(%r15),%r10
  0x000000010e9ce45b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9ce45e: retq   
  0x000000010e9ce45f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9ce460: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9ce465: callq  0x000000010e9ce46a
  0x000000010e9ce46a: subq   $0x5,(%rsp)
  0x000000010e9ce46f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9ce474: hlt    
  0x000000010e9ce475: hlt    
  0x000000010e9ce476: hlt    
  0x000000010e9ce477: hlt    
Compiled method (c2)     246   68             java.util.HashMap::hash (20 bytes)
 total in heap  [0x000000010e9cc190,0x000000010e9cc980] = 2032
 relocation     [0x000000010e9cc308,0x000000010e9cc328] = 32
 main code      [0x000000010e9cc340,0x000000010e9cc580] = 576
 stub code      [0x000000010e9cc580,0x000000010e9cc598] = 24
 metadata       [0x000000010e9cc598,0x000000010e9cc5c8] = 48
 scopes data    [0x000000010e9cc5c8,0x000000010e9cc6e0] = 280
 scopes pcs     [0x000000010e9cc6e0,0x000000010e9cc960] = 640
 dependencies   [0x000000010e9cc960,0x000000010e9cc968] = 8
 nul chk table  [0x000000010e9cc968,0x000000010e9cc980] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x000000010e9cc340, 0x000000010e9cc598]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000113383940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9cc340: mov    %eax,-0x14000(%rsp)
  0x000000010e9cc347: push   %rbp
  0x000000010e9cc348: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000010e9cc34c: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x000000010e9cc556
  0x000000010e9cc350: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010e9cc357: jne    0x000000010e9cc376  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc359: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000010e9cc35d: mov    %r11d,%eax
  0x000000010e9cc360: shr    $0x10,%eax
  0x000000010e9cc363: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x000000010e9cc366: add    $0x20,%rsp
  0x000000010e9cc36a: pop    %rbp
  0x000000010e9cc36b: mov    0x108(%r15),%r10
  0x000000010e9cc372: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cc375: retq   
  0x000000010e9cc376: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000010e9cc37d: jne    0x000000010e9cc518  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc383: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc387: test   %r11d,%r11d
  0x000000010e9cc38a: jne    0x000000010e9cc35d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc38c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc38f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x000000010e9cc566
  0x000000010e9cc394: test   %ecx,%ecx
  0x000000010e9cc396: jbe    0x000000010e9cc510  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc39c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc3a0: test   %ebp,%ebp
  0x000000010e9cc3a2: jne    0x000000010e9cc542  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc3a8: mov    %ecx,%r11d
  0x000000010e9cc3ab: dec    %r11d
  0x000000010e9cc3ae: cmp    %ecx,%r11d
  0x000000010e9cc3b1: jae    0x000000010e9cc52a
  0x000000010e9cc3b7: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc3bd: mov    %ecx,%r13d
  0x000000010e9cc3c0: add    $0xfffffff9,%r13d
  0x000000010e9cc3c4: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc3c8: mov    $0x80000000,%r9d
  0x000000010e9cc3ce: cmp    %r13d,%r11d
  0x000000010e9cc3d1: cmovl  %r9d,%r13d
  0x000000010e9cc3d5: mov    $0x1,%r9d
  0x000000010e9cc3db: cmp    $0x1,%r13d
  0x000000010e9cc3df: jle    0x000000010e9cc4dd
  0x000000010e9cc3e5: mov    %r8d,%ebx
  0x000000010e9cc3e8: shl    $0x5,%ebx
  0x000000010e9cc3eb: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc3ee: jmp    0x000000010e9cc3f4
  0x000000010e9cc3f0: vmovd  %xmm0,%ecx
  0x000000010e9cc3f4: mov    %r13d,%r14d
  0x000000010e9cc3f7: sub    %r9d,%r14d
  0x000000010e9cc3fa: mov    $0x1f40,%r10d
  0x000000010e9cc400: cmp    %r10d,%r14d
  0x000000010e9cc403: mov    $0x1f40,%r11d
  0x000000010e9cc409: cmovg  %r11d,%r14d
  0x000000010e9cc40d: add    %r9d,%r14d
  0x000000010e9cc410: vmovd  %ecx,%xmm0
  0x000000010e9cc414: nopl   0x0(%rax,%rax,1)
  0x000000010e9cc41c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc420: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc423: movzbl 0x10(%rax,%r11,1),%r10d
  0x000000010e9cc429: movzbl 0x17(%rax,%r11,1),%ecx
  0x000000010e9cc42f: movzbl 0x11(%rax,%r11,1),%edx
  0x000000010e9cc435: movzbl 0x16(%rax,%r11,1),%edi
  0x000000010e9cc43b: movzbl 0x15(%rax,%r11,1),%ebp
  0x000000010e9cc441: add    %r10d,%ebx
  0x000000010e9cc444: movzbl 0x13(%rax,%r11,1),%r10d
  0x000000010e9cc44a: mov    %ebx,%r8d
  0x000000010e9cc44d: shl    $0x5,%r8d
  0x000000010e9cc451: sub    %ebx,%r8d
  0x000000010e9cc454: add    %edx,%r8d
  0x000000010e9cc457: movzbl 0x12(%rax,%r11,1),%ebx
  0x000000010e9cc45d: movzbl 0x14(%rax,%r11,1),%edx
  0x000000010e9cc463: mov    %r8d,%r11d
  0x000000010e9cc466: shl    $0x5,%r11d
  0x000000010e9cc46a: sub    %r8d,%r11d
  0x000000010e9cc46d: add    %ebx,%r11d
  0x000000010e9cc470: mov    %r11d,%ebx
  0x000000010e9cc473: shl    $0x5,%ebx
  0x000000010e9cc476: sub    %r11d,%ebx
  0x000000010e9cc479: add    %r10d,%ebx
  0x000000010e9cc47c: mov    %ebx,%r11d
  0x000000010e9cc47f: shl    $0x5,%r11d
  0x000000010e9cc483: sub    %ebx,%r11d
  0x000000010e9cc486: add    %edx,%r11d
  0x000000010e9cc489: mov    %r11d,%r8d
  0x000000010e9cc48c: shl    $0x5,%r8d
  0x000000010e9cc490: sub    %r11d,%r8d
  0x000000010e9cc493: add    %ebp,%r8d
  0x000000010e9cc496: mov    %r8d,%r10d
  0x000000010e9cc499: shl    $0x5,%r10d
  0x000000010e9cc49d: sub    %r8d,%r10d
  0x000000010e9cc4a0: add    %edi,%r10d
  0x000000010e9cc4a3: mov    %r10d,%r8d
  0x000000010e9cc4a6: shl    $0x5,%r8d
  0x000000010e9cc4aa: sub    %r10d,%r8d
  0x000000010e9cc4ad: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4b0: mov    %r8d,%ebx
  0x000000010e9cc4b3: shl    $0x5,%ebx
  0x000000010e9cc4b6: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4b9: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4bd: cmp    %r14d,%r9d
  0x000000010e9cc4c0: jl     0x000000010e9cc420  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4c6: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4cd: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x000000010e9cc4d0: cmp    %r13d,%r9d
  0x000000010e9cc4d3: jl     0x000000010e9cc3f0
  0x000000010e9cc4d9: vmovd  %xmm0,%ecx
  0x000000010e9cc4dd: cmp    %ecx,%r9d
  0x000000010e9cc4e0: jge    0x000000010e9cc50b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4e2: movzbl 0x10(%rax,%r9,1),%r10d
  0x000000010e9cc4e8: mov    %r8d,%r11d
  0x000000010e9cc4eb: shl    $0x5,%r11d
  0x000000010e9cc4ef: sub    %r8d,%r11d
  0x000000010e9cc4f2: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4f5: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4f8: cmp    %ecx,%r9d
  0x000000010e9cc4fb: jge    0x000000010e9cc502  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc4fd: mov    %r11d,%r8d
  0x000000010e9cc500: jmp    0x000000010e9cc4e2
  0x000000010e9cc502: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc506: jmpq   0x000000010e9cc35d
  0x000000010e9cc50b: mov    %r8d,%r11d
  0x000000010e9cc50e: jmp    0x000000010e9cc502
  0x000000010e9cc510: xor    %r11d,%r11d
  0x000000010e9cc513: jmpq   0x000000010e9cc35d
  0x000000010e9cc518: mov    %rsi,%rbp
  0x000000010e9cc51b: mov    $0xffffffc6,%esi
  0x000000010e9cc520: data16 xchg %ax,%ax
  0x000000010e9cc523: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cc528: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc52a: mov    %rsi,%rbp
  0x000000010e9cc52d: mov    %ebx,(%rsp)
  0x000000010e9cc530: mov    %ecx,0x8(%rsp)
  0x000000010e9cc534: mov    $0xffffff7e,%esi
  0x000000010e9cc539: xchg   %ax,%ax
  0x000000010e9cc53b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cc540: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc542: mov    %rsi,0x8(%rsp)
  0x000000010e9cc547: mov    $0xffffff4d,%esi
  0x000000010e9cc54c: data16 xchg %ax,%ax
  0x000000010e9cc54f: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cc554: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc556: mov    %rsi,(%rsp)
  0x000000010e9cc55a: mov    $0xffffff4d,%esi
  0x000000010e9cc55f: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cc564: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x000000010e9cc566: mov    $0xfffffff6,%esi
  0x000000010e9cc56b: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cc570: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010e9cc572: hlt    
  0x000000010e9cc573: hlt    
  0x000000010e9cc574: hlt    
  0x000000010e9cc575: hlt    
  0x000000010e9cc576: hlt    
  0x000000010e9cc577: hlt    
  0x000000010e9cc578: hlt    
  0x000000010e9cc579: hlt    
  0x000000010e9cc57a: hlt    
  0x000000010e9cc57b: hlt    
  0x000000010e9cc57c: hlt    
  0x000000010e9cc57d: hlt    
  0x000000010e9cc57e: hlt    
  0x000000010e9cc57f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cc580: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cc585: callq  0x000000010e9cc58a
  0x000000010e9cc58a: subq   $0x5,(%rsp)
  0x000000010e9cc58f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cc594: hlt    
  0x000000010e9cc595: hlt    
  0x000000010e9cc596: hlt    
  0x000000010e9cc597: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     255   69             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x000000010e9cbd10,0x000000010e9cc140] = 1072
 relocation     [0x000000010e9cbe88,0x000000010e9cbea8] = 32
 main code      [0x000000010e9cbec0,0x000000010e9cbfc0] = 256
 stub code      [0x000000010e9cbfc0,0x000000010e9cbfd8] = 24
 oops           [0x000000010e9cbfd8,0x000000010e9cbfe0] = 8
 metadata       [0x000000010e9cbfe0,0x000000010e9cbff0] = 16
 scopes data    [0x000000010e9cbff0,0x000000010e9cc040] = 80
 scopes pcs     [0x000000010e9cc040,0x000000010e9cc120] = 224
 dependencies   [0x000000010e9cc120,0x000000010e9cc128] = 8
 handler table  [0x000000010e9cc128,0x000000010e9cc140] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x000000010e9cbec0, 0x000000010e9cbfd8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000113355a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e9cbec0: mov    %eax,-0x14000(%rsp)
  0x000000010e9cbec7: push   %rbp
  0x000000010e9cbec8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010e9cbecc: mov    %esi,(%rsp)
  0x000000010e9cbecf: cmp    $0xffffff80,%esi
  0x000000010e9cbed2: jl     0x000000010e9cbf7e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010e9cbed8: cmp    $0x7f,%esi
  0x000000010e9cbedb: jle    0x000000010e9cbf3f  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x000000010e9cbedd: mov    0x118(%r15),%rax
  0x000000010e9cbee4: mov    %rax,%r10
  0x000000010e9cbee7: add    $0x10,%r10
  0x000000010e9cbeeb: cmp    0x128(%r15),%r10
  0x000000010e9cbef2: jae    0x000000010e9cbf6a
  0x000000010e9cbef4: mov    %r10,0x118(%r15)
  0x000000010e9cbefb: prefetchnta 0xc0(%r10)
  0x000000010e9cbf03: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010e9cbf09: movabs $0x800000000,%r10
  0x000000010e9cbf13: add    %r11,%r10
  0x000000010e9cbf16: mov    0xb8(%r10),%r10
  0x000000010e9cbf1d: mov    %r10,(%rax)
  0x000000010e9cbf20: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010e9cbf27: mov    (%rsp),%r11d
  0x000000010e9cbf2b: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010e9cbf2f: add    $0x20,%rsp
  0x000000010e9cbf33: pop    %rbp
  0x000000010e9cbf34: mov    0x108(%r15),%r10
  0x000000010e9cbf3b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cbf3e: retq   
  0x000000010e9cbf3f: mov    %esi,%ebp
  0x000000010e9cbf41: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x000000010e9cbf47: cmp    $0x100,%ebp
  0x000000010e9cbf4d: jae    0x000000010e9cbf8e
  0x000000010e9cbf4f: movslq %esi,%r10
  0x000000010e9cbf52: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9cbf5c: mov    0x210(%r11,%r10,4),%r10d
  0x000000010e9cbf64: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x000000010e9cbf68: jmp    0x000000010e9cbf2f
  0x000000010e9cbf6a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010e9cbf74: mov    (%rsp),%ebp
  0x000000010e9cbf77: callq  0x000000010e9b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9cbf7c: jmp    0x000000010e9cbf27
  0x000000010e9cbf7e: mov    $0xffffff4d,%esi
  0x000000010e9cbf83: mov    (%rsp),%ebp
  0x000000010e9cbf86: nop
  0x000000010e9cbf87: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cbf8c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010e9cbf8e: mov    $0xffffffe4,%esi
  0x000000010e9cbf93: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cbf98: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000010e9cbf9a: mov    %rax,%rsi
  0x000000010e9cbf9d: add    $0x20,%rsp
  0x000000010e9cbfa1: pop    %rbp
  0x000000010e9cbfa2: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9cbfa7: hlt    
  0x000000010e9cbfa8: hlt    
  0x000000010e9cbfa9: hlt    
  0x000000010e9cbfaa: hlt    
  0x000000010e9cbfab: hlt    
  0x000000010e9cbfac: hlt    
  0x000000010e9cbfad: hlt    
  0x000000010e9cbfae: hlt    
  0x000000010e9cbfaf: hlt    
  0x000000010e9cbfb0: hlt    
  0x000000010e9cbfb1: hlt    
  0x000000010e9cbfb2: hlt    
  0x000000010e9cbfb3: hlt    
  0x000000010e9cbfb4: hlt    
  0x000000010e9cbfb5: hlt    
  0x000000010e9cbfb6: hlt    
  0x000000010e9cbfb7: hlt    
  0x000000010e9cbfb8: hlt    
  0x000000010e9cbfb9: hlt    
  0x000000010e9cbfba: hlt    
  0x000000010e9cbfbb: hlt    
  0x000000010e9cbfbc: hlt    
  0x000000010e9cbfbd: hlt    
  0x000000010e9cbfbe: hlt    
  0x000000010e9cbfbf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cbfc0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cbfc5: callq  0x000000010e9cbfca
  0x000000010e9cbfca: subq   $0x5,(%rsp)
  0x000000010e9cbfcf: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cbfd4: hlt    
  0x000000010e9cbfd5: hlt    
  0x000000010e9cbfd6: hlt    
  0x000000010e9cbfd7: hlt    

ImmutableOopMap{}pc offsets: 188 204 216 Compiled method (c2)     260   70             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x000000010e9cb510,0x000000010e9cbc90] = 1920
 relocation     [0x000000010e9cb688,0x000000010e9cb6b0] = 40
 main code      [0x000000010e9cb6c0,0x000000010e9cb880] = 448
 stub code      [0x000000010e9cb880,0x000000010e9cb898] = 24
 metadata       [0x000000010e9cb898,0x000000010e9cb8b8] = 32
 scopes data    [0x000000010e9cb8b8,0x000000010e9cba30] = 376
 scopes pcs     [0x000000010e9cba30,0x000000010e9cbc60] = 560
 dependencies   [0x000000010e9cbc60,0x000000010e9cbc68] = 8
 nul chk table  [0x000000010e9cbc68,0x000000010e9cbc90] = 40
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x000000010e9cb6c0, 0x000000010e9cb898]  472 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000113384540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010e9cb6c0: mov    0x8(%rsi),%r10d
  0x000000010e9cb6c4: movabs $0x800000000,%r12
  0x000000010e9cb6ce: add    %r12,%r10
  0x000000010e9cb6d1: xor    %r12,%r12
  0x000000010e9cb6d4: cmp    %r10,%rax
  0x000000010e9cb6d7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9cb6dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9cb6e0: mov    %eax,-0x14000(%rsp)
  0x000000010e9cb6e7: push   %rbp
  0x000000010e9cb6e8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x000000010e9cb6ec: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x000000010e9cb6f0: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x000000010e9cb81e
  0x000000010e9cb6f5: test   %r8d,%r8d
  0x000000010e9cb6f8: jbe    0x000000010e9cb78e  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000010e9cb6fe: shl    $0x3,%r10
  0x000000010e9cb702: dec    %r8d
  0x000000010e9cb705: and    %edx,%r8d
  0x000000010e9cb708: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x000000010e9cb70d: mov    0xc(%r12,%r10,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; implicit exception: dispatches to 0x000000010e9cb836
  0x000000010e9cb712: cmp    %edx,%ebp
  0x000000010e9cb714: jne    0x000000010e9cb7aa  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x000000010e9cb71a: mov    0x10(%r12,%r10,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x000000010e9cb71f: mov    %r8,%r11
  0x000000010e9cb722: shl    $0x3,%r11
  0x000000010e9cb726: cmp    %rcx,%r11
  0x000000010e9cb729: je     0x000000010e9cb75b  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x000000010e9cb72b: mov    0x8(%rcx),%r9d     ; implicit exception: dispatches to 0x000000010e9cb84e
  0x000000010e9cb72f: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9cb736: jne    0x000000010e9cb76f  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb738: mov    0x8(%r12,%r8,8),%r9d  ; implicit exception: dispatches to 0x000000010e9cb806
  0x000000010e9cb73d: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9cb744: jne    0x000000010e9cb7e6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb74a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb74e: lea    (%r12,%r8,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb752: mov    0xc(%r11),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb756: cmp    %ebp,%r9d
  0x000000010e9cb759: jne    0x000000010e9cb7c6  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x000000010e9cb75b: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x000000010e9cb75f: add    $0x30,%rsp
  0x000000010e9cb763: pop    %rbp
  0x000000010e9cb764: mov    0x108(%r15),%r10
  0x000000010e9cb76b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cb76e: retq   
  0x000000010e9cb76f: mov    $0xffffffde,%esi
  0x000000010e9cb774: mov    %edx,%ebp
  0x000000010e9cb776: mov    %rcx,0x8(%rsp)
  0x000000010e9cb77b: mov    %r10d,0x10(%rsp)
  0x000000010e9cb780: mov    %r8d,0x14(%rsp)
  0x000000010e9cb785: xchg   %ax,%ax
  0x000000010e9cb787: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb78c: ud2                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb78e: mov    $0xffffff4d,%esi
  0x000000010e9cb793: mov    %edx,%ebp
  0x000000010e9cb795: mov    %rcx,(%rsp)
  0x000000010e9cb799: mov    %r10d,0x8(%rsp)
  0x000000010e9cb79e: mov    %r8d,0x10(%rsp)
  0x000000010e9cb7a3: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb7a8: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000010e9cb7aa: mov    $0xffffff4d,%esi
  0x000000010e9cb7af: mov    %rcx,0x8(%rsp)
  0x000000010e9cb7b4: mov    %edx,0x4(%rsp)
  0x000000010e9cb7b8: mov    %r10d,0x10(%rsp)
  0x000000010e9cb7bd: xchg   %ax,%ax
  0x000000010e9cb7bf: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb7c4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x000000010e9cb7c6: mov    $0xffffff4d,%esi
  0x000000010e9cb7cb: mov    %edx,(%rsp)
  0x000000010e9cb7ce: mov    %rcx,0x8(%rsp)
  0x000000010e9cb7d3: mov    %r10d,0x4(%rsp)
  0x000000010e9cb7d8: mov    %r9d,0x10(%rsp)
  0x000000010e9cb7dd: xchg   %ax,%ax
  0x000000010e9cb7df: callq  0x000000010e97b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb7e4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb7e6: mov    $0xffffffde,%esi
  0x000000010e9cb7eb: mov    %edx,%ebp
  0x000000010e9cb7ed: mov    %rcx,0x8(%rsp)
  0x000000010e9cb7f2: mov    %r10d,0x10(%rsp)
  0x000000010e9cb7f7: mov    %r8d,0x18(%rsp)
  0x000000010e9cb7fc: data16 xchg %ax,%ax
  0x000000010e9cb7ff: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb804: ud2    
  0x000000010e9cb806: mov    $0xfffffff4,%esi
  0x000000010e9cb80b: mov    %edx,%ebp
  0x000000010e9cb80d: mov    %rcx,0x8(%rsp)
  0x000000010e9cb812: mov    %r10d,0x10(%rsp)
  0x000000010e9cb817: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb81c: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010e9cb81e: mov    $0xffffff4d,%esi
  0x000000010e9cb823: mov    %edx,%ebp
  0x000000010e9cb825: mov    %rcx,(%rsp)
  0x000000010e9cb829: mov    %r10d,0xc(%rsp)
  0x000000010e9cb82e: nop
  0x000000010e9cb82f: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb834: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x000000010e9cb836: mov    $0xffffff4d,%esi
  0x000000010e9cb83b: mov    %edx,%ebp
  0x000000010e9cb83d: mov    %rcx,(%rsp)
  0x000000010e9cb841: mov    %r10d,0xc(%rsp)
  0x000000010e9cb846: nop
  0x000000010e9cb847: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb84c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x000000010e9cb84e: mov    $0xffffff4d,%esi
  0x000000010e9cb853: mov    %edx,%ebp
  0x000000010e9cb855: mov    %rcx,0x8(%rsp)
  0x000000010e9cb85a: mov    %r10d,0x10(%rsp)
  0x000000010e9cb85f: mov    %r8d,0x14(%rsp)
  0x000000010e9cb864: data16 xchg %ax,%ax
  0x000000010e9cb867: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb86c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x000000010e9cb86e: hlt    
  0x000000010e9cb86f: hlt    
  0x000000010e9cb870: hlt    
  0x000000010e9cb871: hlt    
  0x000000010e9cb872: hlt    
  0x000000010e9cb873: hlt    
  0x000000010e9cb874: hlt    
  0x000000010e9cb875: hlt    
  0x000000010e9cb876: hlt    
  0x000000010e9cb877: hlt    
  0x000000010e9cb878: hlt    
  0x000000010e9cb879: hlt    
  0x000000010e9cb87a: hlt    
  0x000000010e9cb87b: hlt    
  0x000000010e9cb87c: hlt    
  0x000000010e9cb87d: hlt    
  0x000000010e9cb87e: hlt    
  0x000000010e9cb87f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cb880: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cb885: callq  0x000000010e9cb88a
  0x000000010e9cb88a: subq   $0x5,(%rsp)
  0x000000010e9cb88f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cb894: hlt    
  0x000000010e9cb895: hlt    
  0x000000010e9cb896: hlt    
  0x000000010e9cb897: hlt    

ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 204 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 232 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 260 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 292 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=NarrowOop }pc offsets: 324 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 348 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 372 396 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [20]=NarrowOop }pc offsets: 428 Compiled method (c2)     272   71             java.util.HashMap::get (23 bytes)
 total in heap  [0x000000010e9cf090,0x000000010e9cfe28] = 3480
 relocation     [0x000000010e9cf208,0x000000010e9cf240] = 56
 main code      [0x000000010e9cf240,0x000000010e9cf640] = 1024
 stub code      [0x000000010e9cf640,0x000000010e9cf658] = 24
 metadata       [0x000000010e9cf658,0x000000010e9cf6a8] = 80
 scopes data    [0x000000010e9cf6a8,0x000000010e9cf9a0] = 760
 scopes pcs     [0x000000010e9cf9a0,0x000000010e9cfdf0] = 1104
 dependencies   [0x000000010e9cfdf0,0x000000010e9cfdf8] = 8
 nul chk table  [0x000000010e9cfdf8,0x000000010e9cfe28] = 48
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9cf240, 0x000000010e9cf658]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000113384398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010e9cf240: mov    0x8(%rsi),%r10d
  0x000000010e9cf244: movabs $0x800000000,%r12
  0x000000010e9cf24e: add    %r12,%r10
  0x000000010e9cf251: xor    %r12,%r12
  0x000000010e9cf254: cmp    %r10,%rax
  0x000000010e9cf257: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9cf25d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9cf260: mov    %eax,-0x14000(%rsp)
  0x000000010e9cf267: push   %rbp
  0x000000010e9cf268: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000010e9cf26c: mov    0x8(%rdx),%r14d    ; implicit exception: dispatches to 0x000000010e9cf5e6
  0x000000010e9cf270: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x000000010e9cf277: jne    0x000000010e9cf31d
  0x000000010e9cf27d: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf280: mov    0xc(%r10),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf284: mov    0x24(%rsi),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf288: mov    %r11d,%edi
  0x000000010e9cf28b: shr    $0x10,%edi
  0x000000010e9cf28e: xor    %r11d,%edi         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf291: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x000000010e9cf602
  0x000000010e9cf296: test   %r11d,%r11d
  0x000000010e9cf299: jbe    0x000000010e9cf4f6  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf29f: dec    %r11d
  0x000000010e9cf2a2: and    %edi,%r11d
  0x000000010e9cf2a5: lea    (%r12,%r8,8),%r10
  0x000000010e9cf2a9: mov    0x10(%r10,%r11,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2ae: mov    0xc(%r12,%r10,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x000000010e9cf61a
  0x000000010e9cf2b3: cmp    %edi,%r11d
  0x000000010e9cf2b6: jne    0x000000010e9cf512  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2bc: mov    0x10(%r12,%r10,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2c1: mov    %r11,%r8
  0x000000010e9cf2c4: shl    $0x3,%r8
  0x000000010e9cf2c8: cmp    %rdx,%r8
  0x000000010e9cf2cb: je     0x000000010e9cf301  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2cd: cmp    $0x13c78,%r14d     ;   {metadata('java/lang/Integer')}
  0x000000010e9cf2d4: jne    0x000000010e9cf4d6  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2da: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x000000010e9cf5ce
  0x000000010e9cf2df: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9cf2e6: jne    0x000000010e9cf5ae  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2ec: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2f0: shl    $0x3,%r11          ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2f4: mov    0xc(%r11),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf2f8: cmp    %r9d,%r8d
  0x000000010e9cf2fb: jne    0x000000010e9cf532  ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000010e9cf301: mov    0x14(%r12,%r10,8),%r11d
  0x000000010e9cf306: mov    %r11,%rax
  0x000000010e9cf309: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x000000010e9cf30d: add    $0x30,%rsp
  0x000000010e9cf311: pop    %rbp
  0x000000010e9cf312: mov    0x108(%r15),%r10
  0x000000010e9cf319: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cf31c: retq   
  0x000000010e9cf31d: cmp    $0x1808,%r14d      ;   {metadata('java/lang/String')}
  0x000000010e9cf324: jne    0x000000010e9cf556
  0x000000010e9cf32a: mov    %rdx,%rcx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf32d: mov    0x10(%rcx),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf331: test   %r11d,%r11d
  0x000000010e9cf334: jne    0x000000010e9cf284  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf33a: mov    0xc(%rcx),%r9d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf33e: mov    0xc(%r12,%r9,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x000000010e9cf632
  0x000000010e9cf343: test   %ebx,%ebx
  0x000000010e9cf345: jbe    0x000000010e9cf4ce  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf34b: movsbl 0x14(%rcx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf34f: test   %ebp,%ebp
  0x000000010e9cf351: jne    0x000000010e9cf592  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf357: mov    %ebx,%r11d
  0x000000010e9cf35a: dec    %r11d
  0x000000010e9cf35d: cmp    %ebx,%r11d
  0x000000010e9cf360: jae    0x000000010e9cf56e
  0x000000010e9cf366: movzbl 0x10(%r12,%r9,8),%edi  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf36c: mov    %ebx,%r8d
  0x000000010e9cf36f: add    $0xfffffff9,%r8d
  0x000000010e9cf373: lea    (%r12,%r9,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf377: mov    $0x1,%r9d
  0x000000010e9cf37d: cmp    $0x1,%r8d
  0x000000010e9cf381: jle    0x000000010e9cf4b9
  0x000000010e9cf387: mov    %edi,%r10d
  0x000000010e9cf38a: shl    $0x5,%r10d
  0x000000010e9cf38e: sub    %edi,%r10d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf391: jmp    0x000000010e9cf3c4  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf393: movzbl 0x10(%rax,%r9,1),%r10d
  0x000000010e9cf399: mov    %edi,%r11d
  0x000000010e9cf39c: shl    $0x5,%r11d
  0x000000010e9cf3a0: sub    %edi,%r11d
  0x000000010e9cf3a3: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf3a6: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf3a9: cmp    %ebx,%r9d
  0x000000010e9cf3ac: jge    0x000000010e9cf4c5  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf3b2: mov    %r11d,%edi
  0x000000010e9cf3b5: jmp    0x000000010e9cf393
  0x000000010e9cf3b7: vmovq  %xmm0,%rcx
  0x000000010e9cf3bc: vmovd  %xmm1,%ebx
  0x000000010e9cf3c0: mov    (%rsp),%r8d
  0x000000010e9cf3c4: mov    %ebx,%r11d
  0x000000010e9cf3c7: sub    %r9d,%r11d
  0x000000010e9cf3ca: add    $0xfffffff9,%r11d
  0x000000010e9cf3ce: mov    $0x1f40,%edi
  0x000000010e9cf3d3: cmp    %r11d,%edi
  0x000000010e9cf3d6: cmovg  %r11d,%edi
  0x000000010e9cf3da: add    %r9d,%edi
  0x000000010e9cf3dd: vmovq  %rcx,%xmm0
  0x000000010e9cf3e2: vmovd  %ebx,%xmm1
  0x000000010e9cf3e6: mov    %r8d,(%rsp)
  0x000000010e9cf3ea: mov    %edi,0x4(%rsp)
  0x000000010e9cf3ee: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf3f0: movslq %r9d,%r13          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf3f3: movzbl 0x10(%rax,%r13,1),%r11d
  0x000000010e9cf3f9: movzbl 0x17(%rax,%r13,1),%ecx
  0x000000010e9cf3ff: vmovd  %ecx,%xmm2
  0x000000010e9cf403: add    %r11d,%r10d
  0x000000010e9cf406: movzbl 0x16(%rax,%r13,1),%edi
  0x000000010e9cf40c: mov    %r10d,%ebx
  0x000000010e9cf40f: shl    $0x5,%ebx
  0x000000010e9cf412: sub    %r10d,%ebx
  0x000000010e9cf415: movzbl 0x15(%rax,%r13,1),%r8d
  0x000000010e9cf41b: movzbl 0x14(%rax,%r13,1),%r11d
  0x000000010e9cf421: movzbl 0x13(%rax,%r13,1),%ecx
  0x000000010e9cf427: movzbl 0x12(%rax,%r13,1),%ebp
  0x000000010e9cf42d: movzbl 0x11(%rax,%r13,1),%r10d
  0x000000010e9cf433: add    %r10d,%ebx
  0x000000010e9cf436: mov    %ebx,%r10d
  0x000000010e9cf439: shl    $0x5,%r10d
  0x000000010e9cf43d: sub    %ebx,%r10d
  0x000000010e9cf440: add    %ebp,%r10d
  0x000000010e9cf443: mov    %r10d,%ebx
  0x000000010e9cf446: shl    $0x5,%ebx
  0x000000010e9cf449: sub    %r10d,%ebx
  0x000000010e9cf44c: add    %ecx,%ebx
  0x000000010e9cf44e: mov    %ebx,%ecx
  0x000000010e9cf450: shl    $0x5,%ecx
  0x000000010e9cf453: sub    %ebx,%ecx
  0x000000010e9cf455: add    %r11d,%ecx
  0x000000010e9cf458: mov    %ecx,%r11d
  0x000000010e9cf45b: shl    $0x5,%r11d
  0x000000010e9cf45f: sub    %ecx,%r11d
  0x000000010e9cf462: add    %r8d,%r11d
  0x000000010e9cf465: mov    %r11d,%r10d
  0x000000010e9cf468: shl    $0x5,%r10d
  0x000000010e9cf46c: sub    %r11d,%r10d
  0x000000010e9cf46f: add    %edi,%r10d
  0x000000010e9cf472: mov    %r10d,%edi
  0x000000010e9cf475: shl    $0x5,%edi
  0x000000010e9cf478: sub    %r10d,%edi
  0x000000010e9cf47b: vmovd  %xmm2,%r11d
  0x000000010e9cf480: add    %r11d,%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf483: mov    %edi,%r10d
  0x000000010e9cf486: shl    $0x5,%r10d
  0x000000010e9cf48a: sub    %edi,%r10d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf48d: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf491: cmp    0x4(%rsp),%r9d
  0x000000010e9cf496: jl     0x000000010e9cf3f0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf49c: mov    0x108(%r15),%r11   ; ImmutableOopMap{rdx=Oop rsi=Oop rax=Oop xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf4a3: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x000000010e9cf4a6: cmp    (%rsp),%r9d
  0x000000010e9cf4aa: jl     0x000000010e9cf3b7
  0x000000010e9cf4b0: vmovq  %xmm0,%rcx
  0x000000010e9cf4b5: vmovd  %xmm1,%ebx
  0x000000010e9cf4b9: cmp    %ebx,%r9d
  0x000000010e9cf4bc: jl     0x000000010e9cf393
  0x000000010e9cf4c2: mov    %edi,%r11d
  0x000000010e9cf4c5: mov    %r11d,0x10(%rcx)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf4c9: jmpq   0x000000010e9cf284
  0x000000010e9cf4ce: xor    %r11d,%r11d
  0x000000010e9cf4d1: jmpq   0x000000010e9cf284
  0x000000010e9cf4d6: mov    $0xffffffde,%esi
  0x000000010e9cf4db: mov    %edi,%ebp
  0x000000010e9cf4dd: mov    %r10d,0x8(%rsp)
  0x000000010e9cf4e2: mov    %rdx,0x10(%rsp)
  0x000000010e9cf4e7: mov    %r11d,0xc(%rsp)
  0x000000010e9cf4ec: data16 xchg %ax,%ax
  0x000000010e9cf4ef: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf4f4: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf4f6: mov    $0xffffff4d,%esi
  0x000000010e9cf4fb: mov    %edi,%ebp
  0x000000010e9cf4fd: mov    %rdx,(%rsp)
  0x000000010e9cf501: mov    %r8d,0x8(%rsp)
  0x000000010e9cf506: mov    %r11d,0x10(%rsp)
  0x000000010e9cf50b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf510: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf512: mov    $0xffffff4d,%esi
  0x000000010e9cf517: mov    %rdx,(%rsp)
  0x000000010e9cf51b: mov    %r10d,0x8(%rsp)
  0x000000010e9cf520: mov    %r11d,0xc(%rsp)
  0x000000010e9cf525: mov    %edi,0x10(%rsp)
  0x000000010e9cf529: xchg   %ax,%ax
  0x000000010e9cf52b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf530: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf532: mov    $0xffffff4d,%esi
  0x000000010e9cf537: mov    %edi,%ebp
  0x000000010e9cf539: mov    %rdx,(%rsp)
  0x000000010e9cf53d: mov    %r10d,0x8(%rsp)
  0x000000010e9cf542: mov    %r8d,0xc(%rsp)
  0x000000010e9cf547: mov    %r9d,0x10(%rsp)
  0x000000010e9cf54c: data16 xchg %ax,%ax
  0x000000010e9cf54f: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf554: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf556: mov    %rsi,(%rsp)
  0x000000010e9cf55a: mov    %rdx,0x8(%rsp)
  0x000000010e9cf55f: mov    $0xffffffc6,%esi
  0x000000010e9cf564: data16 xchg %ax,%ax
  0x000000010e9cf567: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf56c: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf56e: mov    %rdx,%rbp
  0x000000010e9cf571: mov    %rsi,(%rsp)
  0x000000010e9cf575: mov    %rcx,0x8(%rsp)
  0x000000010e9cf57a: mov    %r9d,0x10(%rsp)
  0x000000010e9cf57f: mov    %ebx,0x18(%rsp)
  0x000000010e9cf583: mov    $0xffffff7e,%esi
  0x000000010e9cf588: data16 xchg %ax,%ax
  0x000000010e9cf58b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf590: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf592: mov    %rdx,(%rsp)
  0x000000010e9cf596: mov    %rsi,0x8(%rsp)
  0x000000010e9cf59b: mov    %rcx,0x18(%rsp)
  0x000000010e9cf5a0: mov    $0xffffff4d,%esi
  0x000000010e9cf5a5: xchg   %ax,%ax
  0x000000010e9cf5a7: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf5ac: ud2    
  0x000000010e9cf5ae: mov    $0xffffffde,%esi
  0x000000010e9cf5b3: mov    %edi,%ebp
  0x000000010e9cf5b5: mov    %r10d,0x8(%rsp)
  0x000000010e9cf5ba: mov    %rdx,0x10(%rsp)
  0x000000010e9cf5bf: mov    %r11d,0x18(%rsp)
  0x000000010e9cf5c4: data16 xchg %ax,%ax
  0x000000010e9cf5c7: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [24]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf5cc: ud2    
  0x000000010e9cf5ce: mov    $0xfffffff4,%esi
  0x000000010e9cf5d3: mov    %edi,%ebp
  0x000000010e9cf5d5: mov    %r10d,0x8(%rsp)
  0x000000010e9cf5da: mov    %rdx,0x10(%rsp)
  0x000000010e9cf5df: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf5e4: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf5e6: mov    %rsi,(%rsp)
  0x000000010e9cf5ea: mov    %rdx,0x8(%rsp)
  0x000000010e9cf5ef: mov    %rdx,0x10(%rsp)
  0x000000010e9cf5f4: mov    $0xffffff4d,%esi
  0x000000010e9cf5f9: xchg   %ax,%ax
  0x000000010e9cf5fb: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf600: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf602: mov    $0xffffff4d,%esi
  0x000000010e9cf607: mov    %edi,%ebp
  0x000000010e9cf609: mov    %rdx,(%rsp)
  0x000000010e9cf60d: mov    %r8d,0xc(%rsp)
  0x000000010e9cf612: nop
  0x000000010e9cf613: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf618: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf61a: mov    $0xffffff4d,%esi
  0x000000010e9cf61f: mov    %edi,%ebp
  0x000000010e9cf621: mov    %rdx,(%rsp)
  0x000000010e9cf625: mov    %r10d,0xc(%rsp)
  0x000000010e9cf62a: nop
  0x000000010e9cf62b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf630: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010e9cf632: mov    $0xfffffff6,%esi
  0x000000010e9cf637: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cf63c: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010e9cf63e: hlt    
  0x000000010e9cf63f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cf640: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cf645: callq  0x000000010e9cf64a
  0x000000010e9cf64a: subq   $0x5,(%rsp)
  0x000000010e9cf64f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cf654: hlt    
  0x000000010e9cf655: hlt    
  0x000000010e9cf656: hlt    
  0x000000010e9cf657: hlt    

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
ImmutableOopMap{}pc offsets: 1020 Compiled method (c2)     287   72             java.util.Optional::ofNullable (15 bytes)
 total in heap  [0x000000010e9cec90,0x000000010e9cf078] = 1000
 relocation     [0x000000010e9cee08,0x000000010e9cee20] = 24
 main code      [0x000000010e9cee20,0x000000010e9cef40] = 288
 stub code      [0x000000010e9cef40,0x000000010e9cef58] = 24
 metadata       [0x000000010e9cef58,0x000000010e9cef78] = 32
 scopes data    [0x000000010e9cef78,0x000000010e9cefb8] = 64
 scopes pcs     [0x000000010e9cefb8,0x000000010e9cf058] = 160
 dependencies   [0x000000010e9cf058,0x000000010e9cf060] = 8
 handler table  [0x000000010e9cf060,0x000000010e9cf078] = 24
----------------------------------------------------------------------
java/util/Optional.ofNullable(Ljava/lang/Object;)Ljava/util/Optional;  [0x000000010e9cee20, 0x000000010e9cef58]  312 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001134a7bb0} 'ofNullable' '(Ljava/lang/Object;)Ljava/util/Optional;' in 'java/util/Optional'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9cee20: mov    %eax,-0x14000(%rsp)
  0x000000010e9cee27: push   %rbp
  0x000000010e9cee28: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::ofNullable@-1 (line 133)

  0x000000010e9cee2c: mov    %rsi,%rbp
  0x000000010e9cee2f: test   %rsi,%rsi
  0x000000010e9cee32: je     0x000000010e9cef24
  0x000000010e9cee38: mov    0x118(%r15),%rbx
  0x000000010e9cee3f: mov    %rbx,%r10
  0x000000010e9cee42: add    $0x10,%r10
  0x000000010e9cee46: cmp    0x128(%r15),%r10
  0x000000010e9cee4d: jae    0x000000010e9cef0c  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x000000010e9cee53: mov    %r10,0x118(%r15)
  0x000000010e9cee5a: prefetchnta 0xc0(%r10)
  0x000000010e9cee62: mov    $0x34bd8,%r10d     ;   {metadata('java/util/Optional')}
  0x000000010e9cee68: movabs $0x800000000,%r12
  0x000000010e9cee72: add    %r12,%r10
  0x000000010e9cee75: xor    %r12,%r12
  0x000000010e9cee78: mov    0xb8(%r10),%r10
  0x000000010e9cee7f: mov    %r10,(%rbx)
  0x000000010e9cee82: movl   $0x34bd8,0x8(%rbx)  ;   {metadata('java/util/Optional')}
  0x000000010e9cee89: mov    %rbp,%r10
  0x000000010e9cee8c: shr    $0x3,%r10
  0x000000010e9cee90: mov    %r10d,0xc(%rbx)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x000000010e9cee94: mov    %rbp,%r10
  0x000000010e9cee97: mov    %rbx,%r11
  0x000000010e9cee9a: xor    %r11,%r10
  0x000000010e9cee9d: shr    $0x14,%r10
  0x000000010e9ceea1: test   %r10,%r10
  0x000000010e9ceea4: je     0x000000010e9ceef9
  0x000000010e9ceea6: shr    $0x9,%r11
  0x000000010e9ceeaa: movabs $0x10e953000,%rdi
  0x000000010e9ceeb4: add    %r11,%rdi
  0x000000010e9ceeb7: cmpb   $0x20,(%rdi)
  0x000000010e9ceeba: je     0x000000010e9ceef9
  0x000000010e9ceebc: mov    0x70(%r15),%r10
  0x000000010e9ceec0: mov    0x80(%r15),%r11
  0x000000010e9ceec7: lock addl $0x0,-0x40(%rsp)
  0x000000010e9ceecd: cmpb   $0x0,(%rdi)
  0x000000010e9ceed0: je     0x000000010e9ceef9
  0x000000010e9ceed2: movb   $0x0,(%rdi)
  0x000000010e9ceed5: test   %r10,%r10
  0x000000010e9ceed8: jne    0x000000010e9ceeec
  0x000000010e9ceeda: mov    %r15,%rsi
  0x000000010e9ceedd: movabs $0x10dd038ce,%r10
  0x000000010e9ceee7: callq  *%r10
  0x000000010e9ceeea: jmp    0x000000010e9ceef9
  0x000000010e9ceeec: mov    %rdi,-0x8(%r11,%r10,1)
  0x000000010e9ceef1: add    $0xfffffffffffffff8,%r10
  0x000000010e9ceef5: mov    %r10,0x70(%r15)    ;*synchronization entry
                                                ; - java.util.Optional::of@-1 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x000000010e9ceef9: mov    %rbx,%rax
  0x000000010e9ceefc: add    $0x20,%rsp
  0x000000010e9cef00: pop    %rbp
  0x000000010e9cef01: mov    0x108(%r15),%r10
  0x000000010e9cef08: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cef0b: retq   
  0x000000010e9cef0c: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x000000010e9cef16: nop
  0x000000010e9cef17: callq  0x000000010e9b0100  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9cef1c: mov    %rax,%rbx
  0x000000010e9cef1f: jmpq   0x000000010e9cee89
  0x000000010e9cef24: mov    $0xffffff4d,%esi
  0x000000010e9cef29: xchg   %ax,%ax
  0x000000010e9cef2b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@1 (line 133)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cef30: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x000000010e9cef32: mov    %rax,%rsi
  0x000000010e9cef35: add    $0x20,%rsp
  0x000000010e9cef39: pop    %rbp
  0x000000010e9cef3a: jmpq   0x000000010e9b2700  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010e9cef3f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cef40: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cef45: callq  0x000000010e9cef4a
  0x000000010e9cef4a: subq   $0x5,(%rsp)
  0x000000010e9cef4f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cef54: hlt    
  0x000000010e9cef55: hlt    
  0x000000010e9cef56: hlt    
  0x000000010e9cef57: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 252 272 Compiled method (c2)     290   73             java.lang.invoke.DirectMethodHandle::internalMemberName (8 bytes)
 total in heap  [0x000000010e9cb210,0x000000010e9cb4f0] = 736
 relocation     [0x000000010e9cb388,0x000000010e9cb398] = 16
 main code      [0x000000010e9cb3a0,0x000000010e9cb400] = 96
 stub code      [0x000000010e9cb400,0x000000010e9cb418] = 24
 metadata       [0x000000010e9cb418,0x000000010e9cb428] = 16
 scopes data    [0x000000010e9cb428,0x000000010e9cb458] = 48
 scopes pcs     [0x000000010e9cb458,0x000000010e9cb4d8] = 128
 dependencies   [0x000000010e9cb4d8,0x000000010e9cb4e0] = 8
 nul chk table  [0x000000010e9cb4e0,0x000000010e9cb4f0] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle.internalMemberName(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010e9cb3a0, 0x000000010e9cb418]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001132cf3f8} 'internalMemberName' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000010e9cb3a0: mov    %eax,-0x14000(%rsp)
  0x000000010e9cb3a7: push   %rbp
  0x000000010e9cb3a8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@-1 (line 310)

  0x000000010e9cb3ac: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x000000010e9cb3e6
  0x000000010e9cb3b0: cmp    $0xc0e0,%r11d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e9cb3b7: jne    0x000000010e9cb3d4  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x000000010e9cb3b9: mov    0x1c(%rsi),%r11d
  0x000000010e9cb3bd: mov    %r11,%rax
  0x000000010e9cb3c0: shl    $0x3,%rax          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)

  0x000000010e9cb3c4: add    $0x10,%rsp
  0x000000010e9cb3c8: pop    %rbp
  0x000000010e9cb3c9: mov    0x108(%r15),%r10
  0x000000010e9cb3d0: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9cb3d3: retq   
  0x000000010e9cb3d4: mov    %rsi,%rbp
  0x000000010e9cb3d7: mov    $0xffffffde,%esi
  0x000000010e9cb3dc: data16 xchg %ax,%ax
  0x000000010e9cb3df: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb3e4: ud2    
  0x000000010e9cb3e6: mov    $0xfffffff4,%esi
  0x000000010e9cb3eb: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9cb3f0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)

  0x000000010e9cb3f2: hlt    
  0x000000010e9cb3f3: hlt    
  0x000000010e9cb3f4: hlt    
  0x000000010e9cb3f5: hlt    
  0x000000010e9cb3f6: hlt    
  0x000000010e9cb3f7: hlt    
  0x000000010e9cb3f8: hlt    
  0x000000010e9cb3f9: hlt    
  0x000000010e9cb3fa: hlt    
  0x000000010e9cb3fb: hlt    
  0x000000010e9cb3fc: hlt    
  0x000000010e9cb3fd: hlt    
  0x000000010e9cb3fe: hlt    
  0x000000010e9cb3ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9cb400: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9cb405: callq  0x000000010e9cb40a
  0x000000010e9cb40a: subq   $0x5,(%rsp)
  0x000000010e9cb40f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9cb414: hlt    
  0x000000010e9cb415: hlt    
  0x000000010e9cb416: hlt    
  0x000000010e9cb417: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 68 
ImmutableOopMap{}pc offsets: 80 Compiled method (c2)     296   74             FunctionalHashMap::max100 (32 bytes)
 total in heap  [0x000000010e9d1a10,0x000000010e9d2618] = 3080
 relocation     [0x000000010e9d1b88,0x000000010e9d1bd0] = 72
 main code      [0x000000010e9d1be0,0x000000010e9d1f20] = 832
 stub code      [0x000000010e9d1f20,0x000000010e9d1f38] = 24
 oops           [0x000000010e9d1f38,0x000000010e9d1f50] = 24
 metadata       [0x000000010e9d1f50,0x000000010e9d1fb8] = 104
 scopes data    [0x000000010e9d1fb8,0x000000010e9d2248] = 656
 scopes pcs     [0x000000010e9d2248,0x000000010e9d25c8] = 896
 dependencies   [0x000000010e9d25c8,0x000000010e9d25d0] = 8
 handler table  [0x000000010e9d25d0,0x000000010e9d25e8] = 24
 nul chk table  [0x000000010e9d25e8,0x000000010e9d2618] = 48
----------------------------------------------------------------------
FunctionalHashMap.max100(I)I  [0x000000010e9d1be0, 0x000000010e9d1f38]  856 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011365c968} 'max100' '(I)I' in 'FunctionalHashMap'
  # this:     rsi:rsi   = 'FunctionalHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x000000010e9d1be0: mov    0x8(%rsi),%r10d
  0x000000010e9d1be4: movabs $0x800000000,%r12
  0x000000010e9d1bee: add    %r12,%r10
  0x000000010e9d1bf1: xor    %r12,%r12
  0x000000010e9d1bf4: cmp    %r10,%rax
  0x000000010e9d1bf7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9d1bfd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9d1c00: mov    %eax,-0x14000(%rsp)
  0x000000010e9d1c07: push   %rbp
  0x000000010e9d1c08: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::max100@-1 (line 49)

  0x000000010e9d1c0c: mov    %edx,0x4(%rsp)
  0x000000010e9d1c10: movabs $0x70fe0f208,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f208} = 'FunctionalHashMap')}
  0x000000010e9d1c1a: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)

  0x000000010e9d1c1e: mov    %r11d,0x8(%rsp)
  0x000000010e9d1c23: cmp    $0xffffff80,%edx
  0x000000010e9d1c26: jl     0x000000010e9d1dae  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1c2c: cmp    $0x7f,%edx
  0x000000010e9d1c2f: jle    0x000000010e9d1d48  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1c35: mov    0x118(%r15),%r8
  0x000000010e9d1c3c: mov    %r8,%r10
  0x000000010e9d1c3f: add    $0x10,%r10
  0x000000010e9d1c43: cmp    0x128(%r15),%r10
  0x000000010e9d1c4a: jae    0x000000010e9d1d7a
  0x000000010e9d1c50: mov    %r10,0x118(%r15)
  0x000000010e9d1c57: prefetchnta 0xc0(%r10)
  0x000000010e9d1c5f: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010e9d1c65: movabs $0x800000000,%r12
  0x000000010e9d1c6f: add    %r12,%r10
  0x000000010e9d1c72: xor    %r12,%r12
  0x000000010e9d1c75: mov    0xb8(%r10),%r10
  0x000000010e9d1c7c: mov    %r10,(%r8)
  0x000000010e9d1c7f: movl   $0x13c78,0x8(%r8)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010e9d1c87: mov    0x4(%rsp),%r10d
  0x000000010e9d1c8c: mov    %r10d,0xc(%r8)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1c90: mov    0x8(%rsp),%r11d
  0x000000010e9d1c95: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x000000010e9d1e92
  0x000000010e9d1c9a: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x000000010e9d1ca1: jne    0x000000010e9d1d94  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ca7: mov    0xc(%r8),%ecx      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cab: lea    (%r12,%r11,8),%r10  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1caf: mov    0x24(%r10),%ebx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cb3: mov    %ecx,%r10d
  0x000000010e9d1cb6: shr    $0x10,%r10d
  0x000000010e9d1cba: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cbd: mov    0xc(%r12,%rbx,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; implicit exception: dispatches to 0x000000010e9d1ed2
  0x000000010e9d1cc2: test   %ebp,%ebp
  0x000000010e9d1cc4: jbe    0x000000010e9d1dc2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cca: lea    (%r12,%rbx,8),%r11
  0x000000010e9d1cce: dec    %ebp
  0x000000010e9d1cd0: and    %r10d,%ebp
  0x000000010e9d1cd3: mov    0x10(%r11,%rbp,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cd8: mov    0xc(%r12,%r11,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; implicit exception: dispatches to 0x000000010e9d1ef2
  0x000000010e9d1cdd: cmp    %r10d,%ebp
  0x000000010e9d1ce0: jne    0x000000010e9d1dee  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ce6: mov    0x10(%r12,%r11,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ceb: mov    %rbp,%r9
  0x000000010e9d1cee: shl    $0x3,%r9
  0x000000010e9d1cf2: cmp    %r8,%r9
  0x000000010e9d1cf5: je     0x000000010e9d1d19  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1cf7: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x000000010e9d1eb2
  0x000000010e9d1cfc: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9d1d03: jne    0x000000010e9d1e5a
  0x000000010e9d1d09: lea    (%r12,%rbp,8),%r9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1d0d: mov    0xc(%r9),%ebp      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1d11: cmp    %ebp,%ecx
  0x000000010e9d1d13: jne    0x000000010e9d1e1a  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1d19: mov    0x14(%r12,%r11,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1d1e: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000010e9d1ea2
  0x000000010e9d1d23: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010e9d1d2a: jne    0x000000010e9d1e86  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)

  0x000000010e9d1d30: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x000000010e9d1d34: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@28 (line 50)

  0x000000010e9d1d38: add    $0x30,%rsp
  0x000000010e9d1d3c: pop    %rbp
  0x000000010e9d1d3d: mov    0x108(%r15),%r10
  0x000000010e9d1d44: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d1d47: retq   
  0x000000010e9d1d48: mov    %edx,%ebp
  0x000000010e9d1d4a: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1d50: cmp    $0x100,%ebp
  0x000000010e9d1d56: jae    0x000000010e9d1e4a
  0x000000010e9d1d5c: movslq %edx,%r10
  0x000000010e9d1d5f: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9d1d69: mov    0x210(%r11,%r10,4),%r10d
  0x000000010e9d1d71: lea    (%r12,%r10,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1d75: jmpq   0x000000010e9d1c90
  0x000000010e9d1d7a: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010e9d1d84: mov    %edx,%ebp
  0x000000010e9d1d86: nop
  0x000000010e9d1d87: callq  0x000000010e9b0100  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9d1d8c: mov    %rax,%r8
  0x000000010e9d1d8f: jmpq   0x000000010e9d1c87
  0x000000010e9d1d94: mov    $0xffffffde,%esi
  0x000000010e9d1d99: mov    0x4(%rsp),%ebp
  0x000000010e9d1d9d: mov    %r11d,(%rsp)
  0x000000010e9d1da1: mov    %r8,0x8(%rsp)
  0x000000010e9d1da6: nop
  0x000000010e9d1da7: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1dac: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1dae: mov    $0xffffff4d,%esi
  0x000000010e9d1db3: mov    %r11d,(%rsp)
  0x000000010e9d1db7: mov    %edx,0x8(%rsp)
  0x000000010e9d1dbb: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1dc0: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1dc2: mov    $0xffffff4d,%esi
  0x000000010e9d1dc7: mov    %rax,-0x8(%rsp)
  0x000000010e9d1dcc: mov    0x4(%rsp),%eax
  0x000000010e9d1dd0: mov    %eax,(%rsp)
  0x000000010e9d1dd3: mov    -0x8(%rsp),%rax
  0x000000010e9d1dd8: mov    %r10d,0x4(%rsp)
  0x000000010e9d1ddd: mov    %r8,0x8(%rsp)
  0x000000010e9d1de2: mov    %ebx,0x10(%rsp)
  0x000000010e9d1de6: nop
  0x000000010e9d1de7: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1dec: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1dee: mov    $0xffffff4d,%esi
  0x000000010e9d1df3: mov    %rax,-0x8(%rsp)
  0x000000010e9d1df8: mov    0x4(%rsp),%eax
  0x000000010e9d1dfc: mov    %eax,(%rsp)
  0x000000010e9d1dff: mov    -0x8(%rsp),%rax
  0x000000010e9d1e04: mov    %r8,0x8(%rsp)
  0x000000010e9d1e09: mov    %r11d,0x10(%rsp)
  0x000000010e9d1e0e: mov    %r10d,0x14(%rsp)
  0x000000010e9d1e13: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1e18: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1e1a: mov    $0xffffff4d,%esi
  0x000000010e9d1e1f: mov    %rax,-0x8(%rsp)
  0x000000010e9d1e24: mov    0x4(%rsp),%eax
  0x000000010e9d1e28: mov    %eax,(%rsp)
  0x000000010e9d1e2b: mov    -0x8(%rsp),%rax
  0x000000010e9d1e30: mov    %r10d,0x4(%rsp)
  0x000000010e9d1e35: mov    %r8,0x8(%rsp)
  0x000000010e9d1e3a: mov    %r11d,0x10(%rsp)
  0x000000010e9d1e3f: mov    %ecx,0x14(%rsp)
  0x000000010e9d1e43: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1e48: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1e4a: mov    $0xffffffe4,%esi
  0x000000010e9d1e4f: mov    %edx,(%rsp)
  0x000000010e9d1e52: nop
  0x000000010e9d1e53: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1e58: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1e5a: mov    $0xffffffde,%esi
  0x000000010e9d1e5f: mov    %rax,-0x8(%rsp)
  0x000000010e9d1e64: mov    0x4(%rsp),%eax
  0x000000010e9d1e68: mov    %eax,(%rsp)
  0x000000010e9d1e6b: mov    -0x8(%rsp),%rax
  0x000000010e9d1e70: mov    %r10d,0x4(%rsp)
  0x000000010e9d1e75: mov    %r11d,0x10(%rsp)
  0x000000010e9d1e7a: mov    %r8,0x18(%rsp)
  0x000000010e9d1e7f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1e84: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1e86: mov    $0xffffffde,%esi
  0x000000010e9d1e8b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1e90: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x000000010e9d1e92: mov    $0xfffffff6,%esi
  0x000000010e9d1e97: mov    %r8,%rbp
  0x000000010e9d1e9a: nop
  0x000000010e9d1e9b: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1ea0: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ea2: mov    $0xfffffff4,%esi
  0x000000010e9d1ea7: mov    0x4(%rsp),%ebp
  0x000000010e9d1eab: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1eb0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x000000010e9d1eb2: mov    $0xfffffff4,%esi
  0x000000010e9d1eb7: mov    0x4(%rsp),%ebp
  0x000000010e9d1ebb: mov    %r10d,(%rsp)
  0x000000010e9d1ebf: mov    %r11d,0x4(%rsp)
  0x000000010e9d1ec4: mov    %r8,0x10(%rsp)
  0x000000010e9d1ec9: xchg   %ax,%ax
  0x000000010e9d1ecb: callq  0x000000010e97b900  ; ImmutableOopMap{[4]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1ed0: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ed2: mov    $0xffffff4d,%esi
  0x000000010e9d1ed7: mov    0x4(%rsp),%ebp
  0x000000010e9d1edb: mov    %r10d,(%rsp)
  0x000000010e9d1edf: mov    %r8,0x8(%rsp)
  0x000000010e9d1ee4: mov    %ebx,0x10(%rsp)
  0x000000010e9d1ee8: data16 xchg %ax,%ax
  0x000000010e9d1eeb: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1ef0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000010e9d1ef2: mov    $0xffffff4d,%esi
  0x000000010e9d1ef7: mov    0x4(%rsp),%ebp
  0x000000010e9d1efb: mov    %r10d,(%rsp)
  0x000000010e9d1eff: mov    %r8,0x8(%rsp)
  0x000000010e9d1f04: mov    %r11d,0x10(%rsp)
  0x000000010e9d1f09: xchg   %ax,%ax
  0x000000010e9d1f0b: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1f10: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x000000010e9d1f12: mov    %rax,%rsi
  0x000000010e9d1f15: add    $0x30,%rsp
  0x000000010e9d1f19: pop    %rbp
  0x000000010e9d1f1a: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9d1f1f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d1f20: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d1f25: callq  0x000000010e9d1f2a
  0x000000010e9d1f2a: subq   $0x5,(%rsp)
  0x000000010e9d1f2f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d1f34: hlt    
  0x000000010e9d1f35: hlt    
  0x000000010e9d1f36: hlt    
  0x000000010e9d1f37: hlt    

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
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 784 816 Compiled method (c2)     306   75             java.lang.invoke.Invokers$Holder::linkToTargetMethod (9 bytes)
 total in heap  [0x000000010e9ce910,0x000000010e9cec80] = 880
 relocation     [0x000000010e9cea88,0x000000010e9ceaa8] = 32
 main code      [0x000000010e9ceac0,0x000000010e9ceb40] = 128
 stub code      [0x000000010e9ceb40,0x000000010e9ceb78] = 56
 metadata       [0x000000010e9ceb78,0x000000010e9ceb88] = 16
 scopes data    [0x000000010e9ceb88,0x000000010e9cebc0] = 56
 scopes pcs     [0x000000010e9cebc0,0x000000010e9cec50] = 144
 dependencies   [0x000000010e9cec50,0x000000010e9cec58] = 8
 handler table  [0x000000010e9cec58,0x000000010e9cec70] = 24
 nul chk table  [0x000000010e9cec70,0x000000010e9cec80] = 16
----------------------------------------------------------------------
java/lang/invoke/Invokers$Holder.linkToTargetMethod(ILjava/lang/Object;)Ljava/lang/Object;  [0x000000010e9ceac0, 0x000000010e9ceb78]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001135dd6f8} 'linkToTargetMethod' '(ILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/Invokers$Holder'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9ceac0: mov    %eax,-0x14000(%rsp)
  0x000000010e9ceac7: push   %rbp
  0x000000010e9ceac8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@-1

  0x000000010e9ceacc: mov    %esi,%r11d
  0x000000010e9ceacf: mov    0x8(%rdx),%r10d    ; implicit exception: dispatches to 0x000000010e9ceb1b
  0x000000010e9cead3: cmp    $0xc0e0,%r10d      ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e9ceada: jne    0x000000010e9ceaf8
  0x000000010e9ceadc: mov    %rdx,%rsi          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x000000010e9ceadf: mov    %r11d,%edx
  0x000000010e9ceae2: nop
  0x000000010e9ceae3: callq  0x000000010e979f00  ; ImmutableOopMap{}
                                                ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ;   {optimized virtual_call}
  0x000000010e9ceae8: add    $0x20,%rsp
  0x000000010e9ceaec: pop    %rbp
  0x000000010e9ceaed: mov    0x108(%r15),%r10
  0x000000010e9ceaf4: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9ceaf7: retq   
  0x000000010e9ceaf8: mov    $0xffffff6e,%esi
  0x000000010e9ceafd: mov    %r11d,%ebp
  0x000000010e9ceb00: mov    %rdx,(%rsp)
  0x000000010e9ceb04: data16 xchg %ax,%ax
  0x000000010e9ceb07: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9ceb0c: ud2                       ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5

  0x000000010e9ceb0e: mov    %rax,%rsi
  0x000000010e9ceb11: add    $0x20,%rsp
  0x000000010e9ceb15: pop    %rbp
  0x000000010e9ceb16: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9ceb1b: mov    $0xffffff64,%esi
  0x000000010e9ceb20: mov    %r11d,%ebp
  0x000000010e9ceb23: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9ceb28: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x000000010e9ceb2a: hlt    
  0x000000010e9ceb2b: hlt    
  0x000000010e9ceb2c: hlt    
  0x000000010e9ceb2d: hlt    
  0x000000010e9ceb2e: hlt    
  0x000000010e9ceb2f: hlt    
  0x000000010e9ceb30: hlt    
  0x000000010e9ceb31: hlt    
  0x000000010e9ceb32: hlt    
  0x000000010e9ceb33: hlt    
  0x000000010e9ceb34: hlt    
  0x000000010e9ceb35: hlt    
  0x000000010e9ceb36: hlt    
  0x000000010e9ceb37: hlt    
  0x000000010e9ceb38: hlt    
  0x000000010e9ceb39: hlt    
  0x000000010e9ceb3a: hlt    
  0x000000010e9ceb3b: hlt    
  0x000000010e9ceb3c: hlt    
  0x000000010e9ceb3d: hlt    
  0x000000010e9ceb3e: hlt    
  0x000000010e9ceb3f: hlt    
[Stub Code]
  0x000000010e9ceb40: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e9ceb4a: jmpq   0x000000010e9ceb4a  ;   {runtime_call}
[Exception Handler]
  0x000000010e9ceb4f: jmpq   0x000000010e9b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e9ceb54: callq  0x000000010e9ceb59
  0x000000010e9ceb59: subq   $0x5,(%rsp)
  0x000000010e9ceb5e: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
[Deopt MH Handler Code]
  0x000000010e9ceb63: callq  0x000000010e9ceb68
  0x000000010e9ceb68: subq   $0x5,(%rsp)
  0x000000010e9ceb6d: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9ceb72: hlt    
  0x000000010e9ceb73: hlt    
  0x000000010e9ceb74: hlt    
  0x000000010e9ceb75: hlt    
  0x000000010e9ceb76: hlt    
  0x000000010e9ceb77: hlt    

ImmutableOopMap{}pc offsets: 40 
ImmutableOopMap{[0]=Oop }pc offsets: 76 
ImmutableOopMap{}pc offsets: 104 Compiled method (c2)     308   76             java.lang.invoke.DirectMethodHandle$Holder::invokeStatic (14 bytes)
 total in heap  [0x000000010e9ce510,0x000000010e9ce8a0] = 912
 relocation     [0x000000010e9ce688,0x000000010e9ce6a8] = 32
 main code      [0x000000010e9ce6c0,0x000000010e9ce740] = 128
 stub code      [0x000000010e9ce740,0x000000010e9ce768] = 40
 metadata       [0x000000010e9ce768,0x000000010e9ce780] = 24
 scopes data    [0x000000010e9ce780,0x000000010e9ce7d0] = 80
 scopes pcs     [0x000000010e9ce7d0,0x000000010e9ce870] = 160
 dependencies   [0x000000010e9ce870,0x000000010e9ce878] = 8
 handler table  [0x000000010e9ce878,0x000000010e9ce890] = 24
 nul chk table  [0x000000010e9ce890,0x000000010e9ce8a0] = 16
----------------------------------------------------------------------
java/lang/invoke/DirectMethodHandle$Holder.invokeStatic(Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000010e9ce6c0, 0x000000010e9ce768]  168 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011359c070} 'invokeStatic' '(Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/DirectMethodHandle$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010e9ce6c0: mov    %eax,-0x14000(%rsp)
  0x000000010e9ce6c7: push   %rbp
  0x000000010e9ce6c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@-1

  0x000000010e9ce6cc: mov    %edx,%r10d
  0x000000010e9ce6cf: mov    0x8(%rsi),%r8d     ; implicit exception: dispatches to 0x000000010e9ce71f
  0x000000010e9ce6d3: cmp    $0xc0e0,%r8d       ;   {metadata('java/lang/invoke/DirectMethodHandle')}
  0x000000010e9ce6da: jne    0x000000010e9ce700  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e9ce6dc: mov    0x1c(%rsi),%r8d
  0x000000010e9ce6e0: mov    %r8,%rdx
  0x000000010e9ce6e3: shl    $0x3,%rdx          ;*getfield member {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@4 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e9ce6e7: mov    %r10d,%esi
  0x000000010e9ce6ea: nop
  0x000000010e9ce6eb: callq  0x000000010e97a400  ; ImmutableOopMap{}
                                                ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ;   {static_call}
  0x000000010e9ce6f0: add    $0x20,%rsp
  0x000000010e9ce6f4: pop    %rbp
  0x000000010e9ce6f5: mov    0x108(%r15),%r10
  0x000000010e9ce6fc: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9ce6ff: retq   
  0x000000010e9ce700: mov    %edx,%ebp
  0x000000010e9ce702: mov    %rsi,(%rsp)
  0x000000010e9ce706: mov    $0xffffff6e,%esi
  0x000000010e9ce70b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9ce710: ud2                       ;*invokestatic linkToStatic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10

  0x000000010e9ce712: mov    %rax,%rsi
  0x000000010e9ce715: add    $0x20,%rsp
  0x000000010e9ce719: pop    %rbp
  0x000000010e9ce71a: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9ce71f: mov    $0xffffff64,%esi
  0x000000010e9ce724: mov    %edx,%ebp
  0x000000010e9ce726: nop
  0x000000010e9ce727: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9ce72c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.DirectMethodHandle::internalMemberName@1 (line 310)
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@1

  0x000000010e9ce72e: hlt    
  0x000000010e9ce72f: hlt    
  0x000000010e9ce730: hlt    
  0x000000010e9ce731: hlt    
  0x000000010e9ce732: hlt    
  0x000000010e9ce733: hlt    
  0x000000010e9ce734: hlt    
  0x000000010e9ce735: hlt    
  0x000000010e9ce736: hlt    
  0x000000010e9ce737: hlt    
  0x000000010e9ce738: hlt    
  0x000000010e9ce739: hlt    
  0x000000010e9ce73a: hlt    
  0x000000010e9ce73b: hlt    
  0x000000010e9ce73c: hlt    
  0x000000010e9ce73d: hlt    
  0x000000010e9ce73e: hlt    
  0x000000010e9ce73f: hlt    
[Stub Code]
  0x000000010e9ce740: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010e9ce74a: jmpq   0x000000010e9ce74a  ;   {runtime_call}
[Exception Handler]
  0x000000010e9ce74f: jmpq   0x000000010e9b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010e9ce754: callq  0x000000010e9ce759
  0x000000010e9ce759: subq   $0x5,(%rsp)
  0x000000010e9ce75e: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9ce763: hlt    
  0x000000010e9ce764: hlt    
  0x000000010e9ce765: hlt    
  0x000000010e9ce766: hlt    
  0x000000010e9ce767: hlt    

ImmutableOopMap{}pc offsets: 48 
ImmutableOopMap{[0]=Oop }pc offsets: 80 
ImmutableOopMap{}pc offsets: 108 Compiled method (c2)     311   77             FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda (9 bytes)
 total in heap  [0x000000010e9cfe90,0x000000010e9d0198] = 776
 relocation     [0x000000010e9d0008,0x000000010e9d0020] = 24
 main code      [0x000000010e9d0020,0x000000010e9d00c0] = 160
 stub code      [0x000000010e9d00c0,0x000000010e9d00d8] = 24
 oops           [0x000000010e9d00d8,0x000000010e9d00e0] = 8
 metadata       [0x000000010e9d00e0,0x000000010e9d00f0] = 16
 scopes data    [0x000000010e9d00f0,0x000000010e9d0108] = 24
 scopes pcs     [0x000000010e9d0108,0x000000010e9d0178] = 112
 dependencies   [0x000000010e9d0178,0x000000010e9d0180] = 8
 handler table  [0x000000010e9d0180,0x000000010e9d0198] = 24
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.get$Lambda(I)Ljava/util/function/Supplier;  [0x000000010e9d0020, 0x000000010e9d00d8]  184 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011365e300} 'get$Lambda' '(I)Ljava/util/function/Supplier;' in 'FunctionalHashMap$$Lambda$1'
  # parm0:    rsi       = int
  #           [sp+0x20]  (sp of caller)
  0x000000010e9d0020: mov    %eax,-0x14000(%rsp)
  0x000000010e9d0027: push   %rbp
  0x000000010e9d0028: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x000000010e9d002c: mov    %esi,%ebp
  0x000000010e9d002e: mov    0x118(%r15),%rax
  0x000000010e9d0035: mov    %rax,%r10
  0x000000010e9d0038: add    $0x10,%r10
  0x000000010e9d003c: cmp    0x128(%r15),%r10
  0x000000010e9d0043: jae    0x000000010e9d008e
  0x000000010e9d0045: mov    %r10,0x118(%r15)
  0x000000010e9d004c: prefetchnta 0xc0(%r10)
  0x000000010e9d0054: mov    $0x60840,%r10d     ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x000000010e9d005a: movabs $0x800000000,%r12
  0x000000010e9d0064: add    %r12,%r10
  0x000000010e9d0067: xor    %r12,%r12
  0x000000010e9d006a: mov    0xb8(%r10),%r10
  0x000000010e9d0071: mov    %r10,(%rax)
  0x000000010e9d0074: movl   $0x60840,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x000000010e9d007b: mov    %ebp,0xc(%rax)     ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@-1

  0x000000010e9d007e: add    $0x10,%rsp
  0x000000010e9d0082: pop    %rbp
  0x000000010e9d0083: mov    0x108(%r15),%r10
  0x000000010e9d008a: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d008d: retq   
  0x000000010e9d008e: movabs $0x800060840,%rsi  ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x000000010e9d0098: data16 xchg %ax,%ax
  0x000000010e9d009b: callq  0x000000010e9b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9d00a0: jmp    0x000000010e9d007b  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@0

  0x000000010e9d00a2: mov    %rax,%rsi
  0x000000010e9d00a5: add    $0x10,%rsp
  0x000000010e9d00a9: pop    %rbp
  0x000000010e9d00aa: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9d00af: hlt    
  0x000000010e9d00b0: hlt    
  0x000000010e9d00b1: hlt    
  0x000000010e9d00b2: hlt    
  0x000000010e9d00b3: hlt    
  0x000000010e9d00b4: hlt    
  0x000000010e9d00b5: hlt    
  0x000000010e9d00b6: hlt    
  0x000000010e9d00b7: hlt    
  0x000000010e9d00b8: hlt    
  0x000000010e9d00b9: hlt    
  0x000000010e9d00ba: hlt    
  0x000000010e9d00bb: hlt    
  0x000000010e9d00bc: hlt    
  0x000000010e9d00bd: hlt    
  0x000000010e9d00be: hlt    
  0x000000010e9d00bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d00c0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d00c5: callq  0x000000010e9d00ca
  0x000000010e9d00ca: subq   $0x5,(%rsp)
  0x000000010e9d00cf: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d00d4: hlt    
  0x000000010e9d00d5: hlt    
  0x000000010e9d00d6: hlt    
  0x000000010e9d00d7: hlt    

ImmutableOopMap{}pc offsets: 128 Compiled method (c2)     313   78             FunctionalHashMap$$Lambda$1/0x0000000800060840::<init> (10 bytes)
 total in heap  [0x000000010e9d2690,0x000000010e9d28e0] = 592
 relocation     [0x000000010e9d2808,0x000000010e9d2818] = 16
 main code      [0x000000010e9d2820,0x000000010e9d2860] = 64
 stub code      [0x000000010e9d2860,0x000000010e9d2878] = 24
 oops           [0x000000010e9d2878,0x000000010e9d2880] = 8
 metadata       [0x000000010e9d2880,0x000000010e9d2888] = 8
 scopes data    [0x000000010e9d2888,0x000000010e9d2898] = 16
 scopes pcs     [0x000000010e9d2898,0x000000010e9d28d8] = 64
 dependencies   [0x000000010e9d28d8,0x000000010e9d28e0] = 8
----------------------------------------------------------------------
FunctionalHashMap$$Lambda$1.<init>(I)V  [0x000000010e9d2820, 0x000000010e9d2878]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011365e260} '<init>' '(I)V' in 'FunctionalHashMap$$Lambda$1'
  # this:     rsi:rsi   = 'FunctionalHashMap$$Lambda$1'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x000000010e9d2820: mov    0x8(%rsi),%r10d
  0x000000010e9d2824: movabs $0x800000000,%r12
  0x000000010e9d282e: add    %r12,%r10
  0x000000010e9d2831: xor    %r12,%r12
  0x000000010e9d2834: cmp    %r10,%rax
  0x000000010e9d2837: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9d283d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9d2840: sub    $0x18,%rsp
  0x000000010e9d2847: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@-1

  0x000000010e9d284c: mov    %edx,0xc(%rsi)     ;*putfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::<init>@6

  0x000000010e9d284f: add    $0x10,%rsp
  0x000000010e9d2853: pop    %rbp
  0x000000010e9d2854: mov    0x108(%r15),%r10
  0x000000010e9d285b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d285e: retq   
  0x000000010e9d285f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d2860: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d2865: callq  0x000000010e9d286a
  0x000000010e9d286a: subq   $0x5,(%rsp)
  0x000000010e9d286f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d2874: hlt    
  0x000000010e9d2875: hlt    
  0x000000010e9d2876: hlt    
  0x000000010e9d2877: hlt    
Compiled method (c2)     314   79             java.util.Optional::orElseGet (21 bytes)
 total in heap  [0x000000010e9d2910,0x000000010e9d2bf0] = 736
 relocation     [0x000000010e9d2a88,0x000000010e9d2a98] = 16
 main code      [0x000000010e9d2aa0,0x000000010e9d2b20] = 128
 stub code      [0x000000010e9d2b20,0x000000010e9d2b38] = 24
 metadata       [0x000000010e9d2b38,0x000000010e9d2b40] = 8
 scopes data    [0x000000010e9d2b40,0x000000010e9d2b68] = 40
 scopes pcs     [0x000000010e9d2b68,0x000000010e9d2be8] = 128
 dependencies   [0x000000010e9d2be8,0x000000010e9d2bf0] = 8
----------------------------------------------------------------------
java/util/Optional.orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;  [0x000000010e9d2aa0, 0x000000010e9d2b38]  152 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001134a8548} 'orElseGet' '(Ljava/util/function/Supplier;)Ljava/lang/Object;' in 'java/util/Optional'
  # this:     rsi:rsi   = 'java/util/Optional'
  # parm0:    rdx:rdx   = 'java/util/function/Supplier'
  #           [sp+0x30]  (sp of caller)
  0x000000010e9d2aa0: mov    0x8(%rsi),%r10d
  0x000000010e9d2aa4: movabs $0x800000000,%r12
  0x000000010e9d2aae: add    %r12,%r10
  0x000000010e9d2ab1: xor    %r12,%r12
  0x000000010e9d2ab4: cmp    %r10,%rax
  0x000000010e9d2ab7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9d2abd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9d2ac0: mov    %eax,-0x14000(%rsp)
  0x000000010e9d2ac7: push   %rbp
  0x000000010e9d2ac8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::orElseGet@-1 (line 369)

  0x000000010e9d2acc: mov    0xc(%rsi),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x000000010e9d2ad0: test   %r11d,%r11d
  0x000000010e9d2ad3: je     0x000000010e9d2aec  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x000000010e9d2ad5: mov    %r11,%rax
  0x000000010e9d2ad8: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x000000010e9d2adc: add    $0x20,%rsp
  0x000000010e9d2ae0: pop    %rbp
  0x000000010e9d2ae1: mov    0x108(%r15),%r10
  0x000000010e9d2ae8: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d2aeb: retq   
  0x000000010e9d2aec: mov    %rsi,%rbp
  0x000000010e9d2aef: mov    %rdx,(%rsp)
  0x000000010e9d2af3: mov    %r11d,0x8(%rsp)
  0x000000010e9d2af8: mov    $0xffffff4d,%esi
  0x000000010e9d2afd: xchg   %ax,%ax
  0x000000010e9d2aff: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d2b04: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x000000010e9d2b06: hlt    
  0x000000010e9d2b07: hlt    
  0x000000010e9d2b08: hlt    
  0x000000010e9d2b09: hlt    
  0x000000010e9d2b0a: hlt    
  0x000000010e9d2b0b: hlt    
  0x000000010e9d2b0c: hlt    
  0x000000010e9d2b0d: hlt    
  0x000000010e9d2b0e: hlt    
  0x000000010e9d2b0f: hlt    
  0x000000010e9d2b10: hlt    
  0x000000010e9d2b11: hlt    
  0x000000010e9d2b12: hlt    
  0x000000010e9d2b13: hlt    
  0x000000010e9d2b14: hlt    
  0x000000010e9d2b15: hlt    
  0x000000010e9d2b16: hlt    
  0x000000010e9d2b17: hlt    
  0x000000010e9d2b18: hlt    
  0x000000010e9d2b19: hlt    
  0x000000010e9d2b1a: hlt    
  0x000000010e9d2b1b: hlt    
  0x000000010e9d2b1c: hlt    
  0x000000010e9d2b1d: hlt    
  0x000000010e9d2b1e: hlt    
  0x000000010e9d2b1f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d2b20: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d2b25: callq  0x000000010e9d2b2a
  0x000000010e9d2b2a: subq   $0x5,(%rsp)
  0x000000010e9d2b2f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d2b34: hlt    
  0x000000010e9d2b35: hlt    
  0x000000010e9d2b36: hlt    
  0x000000010e9d2b37: hlt    

ImmutableOopMap{rbp=Oop [0]=Oop [8]=NarrowOop }pc offsets: 100 Compiled method (c2)     319   80             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x000000010e9d2c10,0x000000010e9d2e98] = 648
 relocation     [0x000000010e9d2d88,0x000000010e9d2d98] = 16
 main code      [0x000000010e9d2da0,0x000000010e9d2de0] = 64
 stub code      [0x000000010e9d2de0,0x000000010e9d2df8] = 24
 oops           [0x000000010e9d2df8,0x000000010e9d2e00] = 8
 metadata       [0x000000010e9d2e00,0x000000010e9d2e18] = 24
 scopes data    [0x000000010e9d2e18,0x000000010e9d2e40] = 40
 scopes pcs     [0x000000010e9d2e40,0x000000010e9d2e90] = 80
 dependencies   [0x000000010e9d2e90,0x000000010e9d2e98] = 8
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x000000010e9d2da0, 0x000000010e9d2df8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011365c898} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x20]  (sp of caller)
  0x000000010e9d2da0: mov    0x8(%rsi),%r10d
  0x000000010e9d2da4: movabs $0x800000000,%r12
  0x000000010e9d2dae: add    %r12,%r10
  0x000000010e9d2db1: xor    %r12,%r12
  0x000000010e9d2db4: cmp    %r10,%rax
  0x000000010e9d2db7: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9d2dbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9d2dc0: mov    %eax,-0x14000(%rsp)
  0x000000010e9d2dc7: push   %rbp
  0x000000010e9d2dc8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x000000010e9d2dcc: mov    %rsi,%rbp
  0x000000010e9d2dcf: mov    $0xffffffbe,%esi
  0x000000010e9d2dd4: data16 xchg %ax,%ax
  0x000000010e9d2dd7: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d2ddc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x000000010e9d2dde: hlt    
  0x000000010e9d2ddf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d2de0: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d2de5: callq  0x000000010e9d2dea
  0x000000010e9d2dea: subq   $0x5,(%rsp)
  0x000000010e9d2def: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d2df4: hlt    
  0x000000010e9d2df5: hlt    
  0x000000010e9d2df6: hlt    
  0x000000010e9d2df7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     326   81 %           FunctionalHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x000000010e9d0c90,0x000000010e9d1988] = 3320
 relocation     [0x000000010e9d0e08,0x000000010e9d0e58] = 80
 main code      [0x000000010e9d0e60,0x000000010e9d1240] = 992
 stub code      [0x000000010e9d1240,0x000000010e9d1258] = 24
 oops           [0x000000010e9d1258,0x000000010e9d1268] = 16
 metadata       [0x000000010e9d1268,0x000000010e9d12c8] = 96
 scopes data    [0x000000010e9d12c8,0x000000010e9d1590] = 712
 scopes pcs     [0x000000010e9d1590,0x000000010e9d1930] = 928
 dependencies   [0x000000010e9d1930,0x000000010e9d1938] = 8
 handler table  [0x000000010e9d1938,0x000000010e9d1950] = 24
 nul chk table  [0x000000010e9d1950,0x000000010e9d1988] = 56
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x000000010e9d0e60, 0x000000010e9d1258]  1016 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011365c898} 'runTest' '()I' in 'FunctionalHashMap'
  0x000000010e9d0e60: callq  0x000000010e0107f4  ;   {runtime_call os::breakpoint()}
  0x000000010e9d0e65: data16 data16 nopw 0x0(%rax,%rax,1)
  0x000000010e9d0e70: mov    %eax,-0x14000(%rsp)
  0x000000010e9d0e77: push   %rbp
  0x000000010e9d0e78: sub    $0x40,%rsp
  0x000000010e9d0e7c: mov    0x10(%rsi),%r13
  0x000000010e9d0e80: mov    0x8(%rsi),%ebp
  0x000000010e9d0e83: mov    (%rsi),%ebx
  0x000000010e9d0e85: mov    %rsi,%rdi
  0x000000010e9d0e88: movabs $0x10e091a82,%r10
  0x000000010e9d0e92: callq  *%r10
  0x000000010e9d0e95: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x000000010e9d1206
  0x000000010e9d0e99: cmp    $0x60040,%r10d     ;   {metadata('FunctionalHashMap')}
  0x000000010e9d0ea0: jne    0x000000010e9d1122  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x000000010e9d0ea6: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010e9d0eac: movabs $0x800000000,%rdi
  0x000000010e9d0eb6: add    %r10,%rdi
  0x000000010e9d0eb9: jmpq   0x000000010e9d0f93
  0x000000010e9d0ebe: xchg   %ax,%ax            ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d0ec0: mov    %r11,0x118(%r15)
  0x000000010e9d0ec7: prefetchnta 0xc0(%r11)
  0x000000010e9d0ecf: mov    0xb8(%rdi),%r11
  0x000000010e9d0ed6: mov    %r11,(%rax)
  0x000000010e9d0ed9: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010e9d0ee0: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0ee3: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x000000010e9d1176
  0x000000010e9d0ee8: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000010e9d0eef: jne    0x000000010e9d1051  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0ef5: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0ef8: shl    $0x3,%r10          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0efc: mov    0x24(%r10),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f00: mov    %ecx,%r10d
  0x000000010e9d0f03: shr    $0x10,%r10d
  0x000000010e9d0f07: xor    %ecx,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f0a: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d11be
  0x000000010e9d0f0f: test   %r11d,%r11d
  0x000000010e9d0f12: jbe    0x000000010e9d108a  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f18: dec    %r11d
  0x000000010e9d0f1b: and    %r10d,%r11d
  0x000000010e9d0f1e: shl    $0x3,%r8
  0x000000010e9d0f22: mov    0x10(%r8,%r11,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f27: mov    0xc(%r12,%r8,8),%r9d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d11e2
  0x000000010e9d0f2c: cmp    %r10d,%r9d
  0x000000010e9d0f2f: jne    0x000000010e9d10b2  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f35: mov    0x10(%r12,%r8,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f3a: mov    %r9,%r11
  0x000000010e9d0f3d: shl    $0x3,%r11
  0x000000010e9d0f41: cmp    %rax,%r11
  0x000000010e9d0f44: je     0x000000010e9d0f68  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f46: mov    0x8(%r12,%r9,8),%edx  ; implicit exception: dispatches to 0x000000010e9d119a
  0x000000010e9d0f4b: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x000000010e9d0f51: jne    0x000000010e9d1136
  0x000000010e9d0f57: lea    (%r12,%r9,8),%r11  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f5b: mov    0xc(%r11),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f5f: cmp    %r11d,%ecx
  0x000000010e9d0f62: jne    0x000000010e9d10da  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f68: mov    0x14(%r12,%r8,8),%r11d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f6d: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x000000010e9d1186
  0x000000010e9d0f72: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010e9d0f79: jne    0x000000010e9d115e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d0f7f: mov    0x108(%r15),%r10
  0x000000010e9d0f86: inc    %ebx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x000000010e9d0f88: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0f8c: mov    0xc(%r11),%ebp     ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d0f90: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {poll}
  0x000000010e9d0f93: cmp    $0x3e8,%ebx
  0x000000010e9d0f99: jge    0x000000010e9d103f  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x000000010e9d0f9f: movabs $0x70fe0f208,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f208} = 'FunctionalHashMap')}
  0x000000010e9d0fa9: mov    0x70(%r10),%r10d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0fad: cmp    $0xffffff80,%ebx
  0x000000010e9d0fb0: jl     0x000000010e9d106e  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0fb6: cmp    $0x7f,%ebx
  0x000000010e9d0fb9: jle    0x000000010e9d100d
  0x000000010e9d0fbb: mov    0x118(%r15),%rax
  0x000000010e9d0fc2: mov    %rax,%r11
  0x000000010e9d0fc5: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d0fc9: cmp    0x128(%r15),%r11
  0x000000010e9d0fd0: jb     0x000000010e9d0ec0
  0x000000010e9d0fd6: mov    %r10d,0x4(%rsp)
  0x000000010e9d0fdb: mov    %rdi,0x8(%rsp)
  0x000000010e9d0fe0: mov    %ebx,(%rsp)
  0x000000010e9d0fe3: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d0fe6: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010e9d0ff0: data16 xchg %ax,%ax
  0x000000010e9d0ff3: callq  0x000000010e9b0100  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9d0ff8: mov    %rbp,%r13
  0x000000010e9d0ffb: mov    (%rsp),%ebx
  0x000000010e9d0ffe: mov    0x8(%rsp),%rdi
  0x000000010e9d1003: mov    0x4(%rsp),%r10d
  0x000000010e9d1008: jmpq   0x000000010e9d0ee0
  0x000000010e9d100d: mov    %ebx,%ebp
  0x000000010e9d100f: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d1015: cmp    $0x100,%ebp
  0x000000010e9d101b: jae    0x000000010e9d1106
  0x000000010e9d1021: movslq %ebx,%r11
  0x000000010e9d1024: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9d102e: mov    0x210(%r8,%r11,4),%r8d
  0x000000010e9d1036: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d103a: jmpq   0x000000010e9d0ee3  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x000000010e9d103f: mov    %ebp,%eax
  0x000000010e9d1041: add    $0x40,%rsp
  0x000000010e9d1045: pop    %rbp
  0x000000010e9d1046: mov    0x108(%r15),%r10
  0x000000010e9d104d: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d1050: retq   
  0x000000010e9d1051: mov    $0xffffffde,%esi
  0x000000010e9d1056: mov    %r13,%rbp
  0x000000010e9d1059: mov    %ebx,0x4(%rsp)
  0x000000010e9d105d: mov    %r10d,0x8(%rsp)
  0x000000010e9d1062: mov    %rax,0x10(%rsp)
  0x000000010e9d1067: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop [16]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d106c: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d106e: mov    $0xffffff4d,%esi
  0x000000010e9d1073: mov    %r13,%rbp
  0x000000010e9d1076: mov    %ebx,0x4(%rsp)
  0x000000010e9d107a: mov    %r10d,0x8(%rsp)
  0x000000010e9d107f: mov    %ebx,0xc(%rsp)
  0x000000010e9d1083: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1088: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d108a: mov    $0xffffff4d,%esi
  0x000000010e9d108f: mov    %r13,%rbp
  0x000000010e9d1092: mov    %ebx,0x4(%rsp)
  0x000000010e9d1096: mov    %r10d,0x8(%rsp)
  0x000000010e9d109b: mov    %rax,0x10(%rsp)
  0x000000010e9d10a0: mov    %r8d,0xc(%rsp)
  0x000000010e9d10a5: mov    %r11d,0x1c(%rsp)
  0x000000010e9d10aa: nop
  0x000000010e9d10ab: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d10b0: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d10b2: mov    $0xffffff4d,%esi
  0x000000010e9d10b7: mov    %r13,%rbp
  0x000000010e9d10ba: mov    %ebx,0x4(%rsp)
  0x000000010e9d10be: mov    %rax,0x10(%rsp)
  0x000000010e9d10c3: mov    %r8d,0xc(%rsp)
  0x000000010e9d10c8: mov    %r9d,0x18(%rsp)
  0x000000010e9d10cd: mov    %r10d,0x1c(%rsp)
  0x000000010e9d10d2: nop
  0x000000010e9d10d3: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d10d8: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d10da: mov    $0xffffff4d,%esi
  0x000000010e9d10df: mov    %r13,%rbp
  0x000000010e9d10e2: mov    %ebx,0x4(%rsp)
  0x000000010e9d10e6: mov    %r10d,0x8(%rsp)
  0x000000010e9d10eb: mov    %rax,0x10(%rsp)
  0x000000010e9d10f0: mov    %r8d,0xc(%rsp)
  0x000000010e9d10f5: mov    %ecx,0x18(%rsp)
  0x000000010e9d10f9: mov    %r11d,0x1c(%rsp)
  0x000000010e9d10fe: nop
  0x000000010e9d10ff: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [16]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1104: ud2    
  0x000000010e9d1106: mov    $0xffffffe4,%esi
  0x000000010e9d110b: mov    %r13,(%rsp)
  0x000000010e9d110f: mov    %ebx,0xc(%rsp)
  0x000000010e9d1113: mov    %r10d,0x10(%rsp)
  0x000000010e9d1118: data16 xchg %ax,%ax
  0x000000010e9d111b: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop [16]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1120: ud2    
  0x000000010e9d1122: mov    $0xffffff95,%esi
  0x000000010e9d1127: mov    %r13,(%rsp)
  0x000000010e9d112b: mov    %ebx,0x8(%rsp)
  0x000000010e9d112f: callq  0x000000010e97b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1134: ud2    
  0x000000010e9d1136: mov    $0xffffffde,%esi
  0x000000010e9d113b: mov    %r13,%rbp
  0x000000010e9d113e: mov    %ebx,0x4(%rsp)
  0x000000010e9d1142: mov    %r10d,0x8(%rsp)
  0x000000010e9d1147: mov    %r8d,0xc(%rsp)
  0x000000010e9d114c: mov    %rax,0x18(%rsp)
  0x000000010e9d1151: mov    %r9d,0x24(%rsp)
  0x000000010e9d1156: nop
  0x000000010e9d1157: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop [36]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d115c: ud2    
  0x000000010e9d115e: mov    $0xffffffde,%esi
  0x000000010e9d1163: mov    %r13,%rbp
  0x000000010e9d1166: mov    %ebx,0x4(%rsp)
  0x000000010e9d116a: mov    %r11d,0x8(%rsp)
  0x000000010e9d116f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [8]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1174: ud2    
  0x000000010e9d1176: mov    $0xfffffff6,%esi
  0x000000010e9d117b: mov    %rax,%rbp
  0x000000010e9d117e: nop
  0x000000010e9d117f: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1184: ud2    
  0x000000010e9d1186: mov    $0xfffffff4,%esi
  0x000000010e9d118b: mov    %r13,%rbp
  0x000000010e9d118e: mov    %ebx,0x4(%rsp)
  0x000000010e9d1192: nop
  0x000000010e9d1193: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1198: ud2    
  0x000000010e9d119a: mov    $0xfffffff4,%esi
  0x000000010e9d119f: mov    %r13,%rbp
  0x000000010e9d11a2: mov    %ebx,0x4(%rsp)
  0x000000010e9d11a6: mov    %r10d,0x8(%rsp)
  0x000000010e9d11ab: mov    %r8d,0xc(%rsp)
  0x000000010e9d11b0: mov    %rax,0x18(%rsp)
  0x000000010e9d11b5: xchg   %ax,%ax
  0x000000010e9d11b7: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [12]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d11bc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d11be: mov    $0xffffff4d,%esi
  0x000000010e9d11c3: mov    %r13,%rbp
  0x000000010e9d11c6: mov    %ebx,0x4(%rsp)
  0x000000010e9d11ca: mov    %r10d,0x8(%rsp)
  0x000000010e9d11cf: mov    %rax,0x10(%rsp)
  0x000000010e9d11d4: mov    %r8d,0x18(%rsp)
  0x000000010e9d11d9: xchg   %ax,%ax
  0x000000010e9d11db: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d11e0: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d11e2: mov    $0xffffff4d,%esi
  0x000000010e9d11e7: mov    %r13,%rbp
  0x000000010e9d11ea: mov    %ebx,0x4(%rsp)
  0x000000010e9d11ee: mov    %r10d,0x8(%rsp)
  0x000000010e9d11f3: mov    %rax,0x10(%rsp)
  0x000000010e9d11f8: mov    %r8d,0x18(%rsp)
  0x000000010e9d11fd: xchg   %ax,%ax
  0x000000010e9d11ff: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=Oop [16]=Oop [24]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1204: ud2    
  0x000000010e9d1206: mov    $0xffffffbe,%esi
  0x000000010e9d120b: mov    %ebx,(%rsp)
  0x000000010e9d120e: nop
  0x000000010e9d120f: callq  0x000000010e97b900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d1214: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d1216: mov    %rax,%rsi
  0x000000010e9d1219: add    $0x40,%rsp
  0x000000010e9d121d: pop    %rbp
  0x000000010e9d121e: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
  0x000000010e9d1223: hlt    
  0x000000010e9d1224: hlt    
  0x000000010e9d1225: hlt    
  0x000000010e9d1226: hlt    
  0x000000010e9d1227: hlt    
  0x000000010e9d1228: hlt    
  0x000000010e9d1229: hlt    
  0x000000010e9d122a: hlt    
  0x000000010e9d122b: hlt    
  0x000000010e9d122c: hlt    
  0x000000010e9d122d: hlt    
  0x000000010e9d122e: hlt    
  0x000000010e9d122f: hlt    
  0x000000010e9d1230: hlt    
  0x000000010e9d1231: hlt    
  0x000000010e9d1232: hlt    
  0x000000010e9d1233: hlt    
  0x000000010e9d1234: hlt    
  0x000000010e9d1235: hlt    
  0x000000010e9d1236: hlt    
  0x000000010e9d1237: hlt    
  0x000000010e9d1238: hlt    
  0x000000010e9d1239: hlt    
  0x000000010e9d123a: hlt    
  0x000000010e9d123b: hlt    
  0x000000010e9d123c: hlt    
  0x000000010e9d123d: hlt    
  0x000000010e9d123e: hlt    
  0x000000010e9d123f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010e9d1240: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d1245: callq  0x000000010e9d124a
  0x000000010e9d124a: subq   $0x5,(%rsp)
  0x000000010e9d124f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d1254: hlt    
  0x000000010e9d1255: hlt    
  0x000000010e9d1256: hlt    
  0x000000010e9d1257: hlt    

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
ImmutableOopMap{}pc offsets: 948 Compiled method (c2)     348   82             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x000000010e9d3810,0x000000010e9d4a80] = 4720
 relocation     [0x000000010e9d3988,0x000000010e9d39f8] = 112
 main code      [0x000000010e9d3a00,0x000000010e9d3f80] = 1408
 stub code      [0x000000010e9d3f80,0x000000010e9d3f98] = 24
 oops           [0x000000010e9d3f98,0x000000010e9d3fb0] = 24
 metadata       [0x000000010e9d3fb0,0x000000010e9d4020] = 112
 scopes data    [0x000000010e9d4020,0x000000010e9d42d8] = 696
 scopes pcs     [0x000000010e9d42d8,0x000000010e9d49c8] = 1776
 dependencies   [0x000000010e9d49c8,0x000000010e9d49d0] = 8
 handler table  [0x000000010e9d49d0,0x000000010e9d4a00] = 48
 nul chk table  [0x000000010e9d4a00,0x000000010e9d4a80] = 128
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x000000010e9d3a00, 0x000000010e9d3f98]  1432 bytes
[Entry Point]
[Constants]
  # {method} {0x000000011365c898} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x50]  (sp of caller)
  0x000000010e9d3a00: mov    0x8(%rsi),%r10d
  0x000000010e9d3a04: movabs $0x800000000,%r12
  0x000000010e9d3a0e: add    %r12,%r10
  0x000000010e9d3a11: xor    %r12,%r12
  0x000000010e9d3a14: cmp    %r10,%rax
  0x000000010e9d3a17: jne    0x000000010e979c80  ;   {runtime_call ic_miss_stub}
  0x000000010e9d3a1d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010e9d3a20: mov    %eax,-0x14000(%rsp)
  0x000000010e9d3a27: push   %rbp
  0x000000010e9d3a28: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x000000010e9d3a2c: mov    %rsi,0x28(%rsp)
  0x000000010e9d3a31: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9d3a3b: mov    0x210(%r10),%r9d   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a42: movabs $0x70fe0f208,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f208} = 'FunctionalHashMap')}
  0x000000010e9d3a4c: mov    0x70(%r10),%r10d
  0x000000010e9d3a50: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x000000010e9d3ede
  0x000000010e9d3a55: lea    (%r12,%r10,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a59: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000010e9d3a60: jne    0x000000010e9d3dbf  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a66: mov    0xc(%r12,%r9,8),%ebx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a6b: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a6f: mov    %ebx,%r8d
  0x000000010e9d3a72: shr    $0x10,%r8d
  0x000000010e9d3a76: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a79: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f26
  0x000000010e9d3a7e: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a82: test   %r11d,%r11d
  0x000000010e9d3a85: jbe    0x000000010e9d3dde  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a8b: dec    %r11d
  0x000000010e9d3a8e: and    %r8d,%r11d
  0x000000010e9d3a91: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a96: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f4a
  0x000000010e9d3a9b: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3a9f: cmp    %r8d,%r11d
  0x000000010e9d3aa2: jne    0x000000010e9d3e06  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3aa8: mov    0x10(%r12,%rcx,8),%r10d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3aad: cmp    %r9d,%r10d
  0x000000010e9d3ab0: je     0x000000010e9d3ad3  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ab2: mov    0x8(%r12,%r10,8),%edx  ; implicit exception: dispatches to 0x000000010e9d3f02
  0x000000010e9d3ab7: lea    (%r12,%r10,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3abb: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3ac1: jne    0x000000010e9d3eb6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ac7: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3acb: cmp    %edx,%ebx
  0x000000010e9d3acd: jne    0x000000010e9d3e2e  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ad3: mov    0x14(%r12,%rcx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ad8: mov    0x8(%r12,%r10,8),%r8d  ; implicit exception: dispatches to 0x000000010e9d3eee
  0x000000010e9d3add: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3ae4: jne    0x000000010e9d3e9a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3aea: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010e9d3af0: movabs $0x800000000,%rsi
  0x000000010e9d3afa: add    %r11,%rsi
  0x000000010e9d3afd: mov    $0x1,%r10d
  0x000000010e9d3b03: jmpq   0x000000010e9d3bea
  0x000000010e9d3b08: nopl   0x0(%rax,%rax,1)   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d3b10: mov    %r11,0x118(%r15)
  0x000000010e9d3b17: prefetchnta 0xc0(%r11)
  0x000000010e9d3b1f: mov    0xb8(%rsi),%r11
  0x000000010e9d3b26: mov    %r11,(%rax)
  0x000000010e9d3b29: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010e9d3b30: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b34: mov    %rax,%r9
  0x000000010e9d3b37: shr    $0x3,%r9
  0x000000010e9d3b3b: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x000000010e9d3ede
  0x000000010e9d3b40: lea    (%r12,%rbp,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b44: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000010e9d3b4b: jne    0x000000010e9d3dc2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b51: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b54: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b58: mov    %ebx,%r8d
  0x000000010e9d3b5b: shr    $0x10,%r8d
  0x000000010e9d3b5f: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b62: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f29
  0x000000010e9d3b67: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b6b: test   %r11d,%r11d
  0x000000010e9d3b6e: jbe    0x000000010e9d3de1  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b74: dec    %r11d
  0x000000010e9d3b77: and    %r8d,%r11d
  0x000000010e9d3b7a: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b7f: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f4d
  0x000000010e9d3b84: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b88: cmp    %r8d,%r11d
  0x000000010e9d3b8b: jne    0x000000010e9d3e09  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b91: mov    0x10(%r12,%rcx,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3b96: mov    %r11,%rdx
  0x000000010e9d3b99: shl    $0x3,%rdx
  0x000000010e9d3b9d: cmp    %rax,%rdx
  0x000000010e9d3ba0: je     0x000000010e9d3bc3  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ba2: mov    0x8(%r12,%r11,8),%edx  ; implicit exception: dispatches to 0x000000010e9d3f05
  0x000000010e9d3ba7: shl    $0x3,%r11          ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bab: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3bb1: jne    0x000000010e9d3eb9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bb7: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bbb: cmp    %edx,%ebx
  0x000000010e9d3bbd: jne    0x000000010e9d3e31  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bc3: mov    0x14(%r12,%rcx,8),%r11d
  0x000000010e9d3bc8: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x000000010e9d3ef1
  0x000000010e9d3bcd: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bd1: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3bd8: jne    0x000000010e9d3ea1  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bde: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x000000010e9d3be1: cmp    $0x80,%r10d
  0x000000010e9d3be8: jge    0x000000010e9d3c5d  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)

  0x000000010e9d3bea: movabs $0x70fe0f208,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f208} = 'FunctionalHashMap')}
  0x000000010e9d3bf4: mov    0x70(%r11),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3bf8: cmp    $0x7f,%r10d
  0x000000010e9d3bfc: jle    0x000000010e9d3c42
  0x000000010e9d3bfe: mov    0x118(%r15),%rax
  0x000000010e9d3c05: mov    %rax,%r11
  0x000000010e9d3c08: add    $0x10,%r11         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d3c0c: cmp    0x128(%r15),%r11
  0x000000010e9d3c13: jb     0x000000010e9d3b10
  0x000000010e9d3c19: mov    %rsi,0x8(%rsp)
  0x000000010e9d3c1e: mov    %r10d,(%rsp)
  0x000000010e9d3c22: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010e9d3c2c: data16 xchg %ax,%ax
  0x000000010e9d3c2f: callq  0x000000010e9b0100  ; ImmutableOopMap{rbp=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9d3c34: mov    (%rsp),%r10d
  0x000000010e9d3c38: mov    0x8(%rsp),%rsi
  0x000000010e9d3c3d: jmpq   0x000000010e9d3b30
  0x000000010e9d3c42: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9d3c4c: mov    0x210(%r11,%r10,4),%r11d
  0x000000010e9d3c54: lea    (%r12,%r11,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3c58: jmpq   0x000000010e9d3b34  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d3c5d: mov    0x108(%r15),%r8
  0x000000010e9d3c64: mov    0xc(%r11),%r11d    ; ImmutableOopMap{[40]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d3c68: test   %eax,(%r8)         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)
                                                ;   {poll}
  0x000000010e9d3c6b: movabs $0x70fe0f208,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f208} = 'FunctionalHashMap')}
  0x000000010e9d3c75: mov    0x70(%r11),%ecx    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3c79: cmp    $0x7f,%r10d
  0x000000010e9d3c7d: jle    0x000000010e9d3d8f
  0x000000010e9d3c83: mov    0x118(%r15),%rax
  0x000000010e9d3c8a: mov    %rax,%r11
  0x000000010e9d3c8d: add    $0x10,%r11
  0x000000010e9d3c91: cmp    0x128(%r15),%r11
  0x000000010e9d3c98: jae    0x000000010e9d3e5a  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000010e9d3c9e: mov    %r11,0x118(%r15)
  0x000000010e9d3ca5: prefetchnta 0xc0(%r11)
  0x000000010e9d3cad: mov    0xb8(%rsi),%r11
  0x000000010e9d3cb4: mov    %r11,(%rax)
  0x000000010e9d3cb7: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010e9d3cbe: mov    %r10d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3cc2: mov    %rax,%r9
  0x000000010e9d3cc5: shr    $0x3,%r9
  0x000000010e9d3cc9: mov    0x8(%r12,%rcx,8),%ebx  ; implicit exception: dispatches to 0x000000010e9d3ede
  0x000000010e9d3cce: lea    (%r12,%rcx,8),%r11  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3cd2: cmp    $0x19838,%ebx      ;   {metadata('java/util/HashMap')}
  0x000000010e9d3cd8: jne    0x000000010e9d3dc2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3cde: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ce1: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ce5: mov    %ebx,%r8d
  0x000000010e9d3ce8: shr    $0x10,%r8d
  0x000000010e9d3cec: xor    %ebx,%r8d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3cef: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f29
  0x000000010e9d3cf4: shl    $0x3,%rcx          ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3cf8: test   %r11d,%r11d
  0x000000010e9d3cfb: jbe    0x000000010e9d3de1  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d01: dec    %r11d
  0x000000010e9d3d04: and    %r8d,%r11d
  0x000000010e9d3d07: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d0c: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000010e9d3f4d
  0x000000010e9d3d11: lea    (%r12,%rcx,8),%rdi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d15: cmp    %r8d,%r11d
  0x000000010e9d3d18: jne    0x000000010e9d3e09  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d1e: mov    0x10(%r12,%rcx,8),%edx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d23: mov    %rdx,%r11
  0x000000010e9d3d26: shl    $0x3,%r11
  0x000000010e9d3d2a: cmp    %rax,%r11
  0x000000010e9d3d2d: je     0x000000010e9d3d50  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d2f: mov    0x8(%r12,%rdx,8),%eax  ; implicit exception: dispatches to 0x000000010e9d3f05
  0x000000010e9d3d34: lea    (%r12,%rdx,8),%r11  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d38: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3d3e: jne    0x000000010e9d3eb9  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d44: mov    0xc(%r11),%edx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - java.lang.Integer::equals@15 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d48: cmp    %edx,%ebx
  0x000000010e9d3d4a: jne    0x000000010e9d3e31  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d50: mov    0x14(%r12,%rcx,8),%r11d
  0x000000010e9d3d55: mov    0x8(%r12,%r11,8),%r9d  ; implicit exception: dispatches to 0x000000010e9d3ef1
  0x000000010e9d3d5a: shl    $0x3,%r11          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d5e: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010e9d3d65: jne    0x000000010e9d3ea1  ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get$Lambda@5
                                                ; - java.lang.invoke.DirectMethodHandle$Holder::invokeStatic@10
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                ; - FunctionalHashMap::max100@17 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d6b: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x000000010e9d3d6e: cmp    $0x3e8,%r10d
  0x000000010e9d3d75: jl     0x000000010e9d3c6b  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d7b: mov    0xc(%r11),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@28 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d7f: add    $0x40,%rsp
  0x000000010e9d3d83: pop    %rbp
  0x000000010e9d3d84: mov    0x108(%r15),%r10
  0x000000010e9d3d8b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010e9d3d8e: retq   
  0x000000010e9d3d8f: mov    %r10d,%ebp
  0x000000010e9d3d92: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3d98: cmp    $0x100,%ebp
  0x000000010e9d3d9e: jae    0x000000010e9d3e84
  0x000000010e9d3da4: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010e9d3dae: mov    0x210(%r11,%r10,4),%r8d
  0x000000010e9d3db6: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3dba: jmpq   0x000000010e9d3cc2
  0x000000010e9d3dbf: xor    %r10d,%r10d
  0x000000010e9d3dc2: mov    $0xffffffde,%esi
  0x000000010e9d3dc7: mov    %r10d,(%rsp)
  0x000000010e9d3dcb: mov    %r11,0x8(%rsp)
  0x000000010e9d3dd0: mov    %r9d,0x4(%rsp)
  0x000000010e9d3dd5: xchg   %ax,%ax
  0x000000010e9d3dd7: callq  0x000000010e97b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [40]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3ddc: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3dde: xor    %r10d,%r10d
  0x000000010e9d3de1: mov    $0xffffff4d,%esi
  0x000000010e9d3de6: mov    %r10d,(%rsp)
  0x000000010e9d3dea: mov    %r8d,0x4(%rsp)
  0x000000010e9d3def: mov    %r9d,0x8(%rsp)
  0x000000010e9d3df4: mov    %rcx,0x10(%rsp)
  0x000000010e9d3df9: mov    %r11d,0x18(%rsp)
  0x000000010e9d3dfe: nop
  0x000000010e9d3dff: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3e04: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3e06: xor    %r10d,%r10d
  0x000000010e9d3e09: mov    $0xffffff4d,%esi
  0x000000010e9d3e0e: mov    %r10d,(%rsp)
  0x000000010e9d3e12: mov    %r9d,0x8(%rsp)
  0x000000010e9d3e17: mov    %rdi,0x10(%rsp)
  0x000000010e9d3e1c: mov    %r11d,0xc(%rsp)
  0x000000010e9d3e21: mov    %r8d,0x18(%rsp)
  0x000000010e9d3e26: nop
  0x000000010e9d3e27: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3e2c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3e2e: xor    %r10d,%r10d
  0x000000010e9d3e31: mov    $0xffffff4d,%esi
  0x000000010e9d3e36: mov    %r10d,(%rsp)
  0x000000010e9d3e3a: mov    %r8d,0x4(%rsp)
  0x000000010e9d3e3f: mov    %r9d,0x8(%rsp)
  0x000000010e9d3e44: mov    %rdi,0x10(%rsp)
  0x000000010e9d3e49: mov    %ebx,0xc(%rsp)
  0x000000010e9d3e4d: mov    %edx,0x18(%rsp)
  0x000000010e9d3e51: xchg   %ax,%ax
  0x000000010e9d3e53: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3e58: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@18 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3e5a: mov    %ecx,0x8(%rsp)
  0x000000010e9d3e5e: mov    %rsi,(%rsp)
  0x000000010e9d3e62: mov    %r10d,%ebp
  0x000000010e9d3e65: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010e9d3e6f: callq  0x000000010e9b0100  ; ImmutableOopMap{[8]=NarrowOop [40]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010e9d3e74: mov    %ebp,%r10d
  0x000000010e9d3e77: mov    (%rsp),%rsi
  0x000000010e9d3e7b: mov    0x8(%rsp),%ecx
  0x000000010e9d3e7f: jmpq   0x000000010e9d3cbe
  0x000000010e9d3e84: mov    $0xffffffe4,%esi
  0x000000010e9d3e89: mov    %r10d,0x4(%rsp)
  0x000000010e9d3e8e: mov    %ecx,0x10(%rsp)
  0x000000010e9d3e92: nop
  0x000000010e9d3e93: callq  0x000000010e97b900  ; ImmutableOopMap{[16]=NarrowOop [40]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3e98: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3e9a: lea    (%r12,%r10,8),%r11  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3e9e: xor    %r10d,%r10d
  0x000000010e9d3ea1: mov    $0xffffffde,%esi
  0x000000010e9d3ea6: mov    %r10d,(%rsp)
  0x000000010e9d3eaa: mov    %r11,0x8(%rsp)
  0x000000010e9d3eaf: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=Oop [40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3eb4: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3eb6: xor    %r10d,%r10d
  0x000000010e9d3eb9: mov    $0xffffffde,%esi
  0x000000010e9d3ebe: mov    %r10d,(%rsp)
  0x000000010e9d3ec2: mov    %r8d,0x4(%rsp)
  0x000000010e9d3ec7: mov    %rdi,0x10(%rsp)
  0x000000010e9d3ecc: mov    %r9d,0xc(%rsp)
  0x000000010e9d3ed1: mov    %r11,0x20(%rsp)
  0x000000010e9d3ed6: nop
  0x000000010e9d3ed7: callq  0x000000010e97b900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3edc: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3ede: mov    $0xfffffff6,%esi
  0x000000010e9d3ee3: mov    %r9d,%ebp
  0x000000010e9d3ee6: nop
  0x000000010e9d3ee7: callq  0x000000010e97b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3eec: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3eee: xor    %r10d,%r10d
  0x000000010e9d3ef1: mov    $0xfffffff4,%esi
  0x000000010e9d3ef6: mov    %r10d,(%rsp)
  0x000000010e9d3efa: nop
  0x000000010e9d3efb: callq  0x000000010e97b900  ; ImmutableOopMap{[40]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3f00: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3f02: xor    %r10d,%r10d
  0x000000010e9d3f05: mov    $0xfffffff4,%esi
  0x000000010e9d3f0a: mov    %r10d,(%rsp)
  0x000000010e9d3f0e: mov    %r8d,0x4(%rsp)
  0x000000010e9d3f13: mov    %rdi,0x10(%rsp)
  0x000000010e9d3f18: mov    %r9d,0xc(%rsp)
  0x000000010e9d3f1d: xchg   %ax,%ax
  0x000000010e9d3f1f: callq  0x000000010e97b900  ; ImmutableOopMap{[12]=NarrowOop [16]=Oop [40]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3f24: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3f26: xor    %r10d,%r10d
  0x000000010e9d3f29: mov    $0xffffff4d,%esi
  0x000000010e9d3f2e: mov    %r10d,(%rsp)
  0x000000010e9d3f32: mov    %r8d,0x4(%rsp)
  0x000000010e9d3f37: mov    %r9d,0x8(%rsp)
  0x000000010e9d3f3c: mov    %ecx,0x10(%rsp)
  0x000000010e9d3f40: data16 xchg %ax,%ax
  0x000000010e9d3f43: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3f48: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3f4a: xor    %r10d,%r10d
  0x000000010e9d3f4d: mov    $0xffffff4d,%esi
  0x000000010e9d3f52: mov    %r10d,(%rsp)
  0x000000010e9d3f56: mov    %r8d,0x4(%rsp)
  0x000000010e9d3f5b: mov    %r9d,0x8(%rsp)
  0x000000010e9d3f60: mov    %ecx,0x10(%rsp)
  0x000000010e9d3f64: data16 xchg %ax,%ax
  0x000000010e9d3f67: callq  0x000000010e97b900  ; ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010e9d3f6c: ud2    
  0x000000010e9d3f6e: mov    %rax,%rsi
  0x000000010e9d3f71: jmp    0x000000010e9d3f76
  0x000000010e9d3f73: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000010e9d3f76: add    $0x40,%rsp
  0x000000010e9d3f7a: pop    %rbp
  0x000000010e9d3f7b: jmpq   0x000000010e9b2700  ;   {runtime_call _rethrow_Java}
[Exception Handler]
[Stub Code]
  0x000000010e9d3f80: jmpq   0x000000010e9b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010e9d3f85: callq  0x000000010e9d3f8a
  0x000000010e9d3f8a: subq   $0x5,(%rsp)
  0x000000010e9d3f8f: jmpq   0x000000010e97b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010e9d3f94: hlt    
  0x000000010e9d3f95: hlt    
  0x000000010e9d3f96: hlt    
  0x000000010e9d3f97: hlt    

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
ImmutableOopMap{[8]=NarrowOop [16]=NarrowOop [40]=Oop }pc offsets: 1352 1388 Test phase
Time elapsed: 0.012 ms result=100

