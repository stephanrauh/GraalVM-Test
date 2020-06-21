Compiled method (c2)      51    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x000000010a1b1d10,0x000000010a1b22b0] = 1440
 relocation     [0x000000010a1b1e88,0x000000010a1b1e98] = 16
 main code      [0x000000010a1b1ea0,0x000000010a1b2060] = 448
 stub code      [0x000000010a1b2060,0x000000010a1b2078] = 24
 metadata       [0x000000010a1b2078,0x000000010a1b2080] = 8
 scopes data    [0x000000010a1b2080,0x000000010a1b2108] = 136
 scopes pcs     [0x000000010a1b2108,0x000000010a1b2298] = 400
 dependencies   [0x000000010a1b2298,0x000000010a1b22a0] = 8
 nul chk table  [0x000000010a1b22a0,0x000000010a1b22b0] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x000000010a1b1ea0, 0x000000010a1b2078]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010ebb5a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x000000010a1b1ea0: mov    %eax,-0x14000(%rsp)
  0x000000010a1b1ea7: push   %rbp
  0x000000010a1b1ea8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x000000010a1b1eac: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x000000010a1b2042
  0x000000010a1b1eb0: test   %r10d,%r10d
  0x000000010a1b1eb3: jbe    0x000000010a1b2029  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010a1b1eb9: mov    %r10d,%r8d
  0x000000010a1b1ebc: dec    %r8d
  0x000000010a1b1ebf: cmp    %r10d,%r8d
  0x000000010a1b1ec2: jae    0x000000010a1b202d
  0x000000010a1b1ec8: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x000000010a1b1ecd: mov    %r10d,%edx
  0x000000010a1b1ed0: add    $0xfffffff9,%edx
  0x000000010a1b1ed3: mov    $0x80000000,%ecx
  0x000000010a1b1ed8: cmp    %edx,%r8d
  0x000000010a1b1edb: cmovl  %ecx,%edx
  0x000000010a1b1ede: mov    $0x1,%ecx
  0x000000010a1b1ee3: cmp    $0x1,%edx
  0x000000010a1b1ee6: jle    0x000000010a1b200d
  0x000000010a1b1eec: mov    %r9d,%r11d
  0x000000010a1b1eef: shl    $0x5,%r11d
  0x000000010a1b1ef3: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010a1b1ef6: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010a1b1efb: jmp    0x000000010a1b1f29  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x000000010a1b1efd: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x000000010a1b1f03: mov    %r9d,%eax
  0x000000010a1b1f06: shl    $0x5,%eax
  0x000000010a1b1f09: sub    %r9d,%eax
  0x000000010a1b1f0c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010a1b1f0f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010a1b1f11: cmp    %r10d,%ecx
  0x000000010a1b1f14: jge    0x000000010a1b2019  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010a1b1f1a: mov    %eax,%r9d
  0x000000010a1b1f1d: jmp    0x000000010a1b1efd
  0x000000010a1b1f1f: vmovq  %xmm0,%rsi
  0x000000010a1b1f24: vmovd  %xmm2,%r10d
  0x000000010a1b1f29: mov    %edx,%ebp
  0x000000010a1b1f2b: sub    %ecx,%ebp
  0x000000010a1b1f2d: cmp    %edi,%ebp
  0x000000010a1b1f2f: cmovg  %edi,%ebp
  0x000000010a1b1f32: add    %ecx,%ebp
  0x000000010a1b1f34: vmovq  %rsi,%xmm0
  0x000000010a1b1f39: vmovd  %r10d,%xmm2
  0x000000010a1b1f3e: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010a1b1f40: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x000000010a1b1f43: vmovq  %xmm0,%r8
  0x000000010a1b1f48: movzbl 0x10(%r8,%rsi,1),%r14d
  0x000000010a1b1f4e: movzbl 0x17(%r8,%rsi,1),%eax
  0x000000010a1b1f54: movzbl 0x11(%r8,%rsi,1),%r13d
  0x000000010a1b1f5a: movzbl 0x16(%r8,%rsi,1),%r10d
  0x000000010a1b1f60: movzbl 0x15(%r8,%rsi,1),%r9d
  0x000000010a1b1f66: movzbl 0x14(%r8,%rsi,1),%r8d
  0x000000010a1b1f6c: add    %r14d,%r11d
  0x000000010a1b1f6f: vmovq  %xmm0,%rbx
  0x000000010a1b1f74: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x000000010a1b1f79: vmovq  %xmm0,%r14
  0x000000010a1b1f7e: movzbl 0x13(%r14,%rsi,1),%esi
  0x000000010a1b1f84: mov    %r11d,%r14d
  0x000000010a1b1f87: shl    $0x5,%r14d
  0x000000010a1b1f8b: sub    %r11d,%r14d
  0x000000010a1b1f8e: add    %r13d,%r14d
  0x000000010a1b1f91: mov    %r14d,%r11d
  0x000000010a1b1f94: shl    $0x5,%r11d
  0x000000010a1b1f98: sub    %r14d,%r11d
  0x000000010a1b1f9b: add    %ebx,%r11d
  0x000000010a1b1f9e: mov    %r11d,%ebx
  0x000000010a1b1fa1: shl    $0x5,%ebx
  0x000000010a1b1fa4: sub    %r11d,%ebx
  0x000000010a1b1fa7: add    %esi,%ebx
  0x000000010a1b1fa9: mov    %ebx,%r11d
  0x000000010a1b1fac: shl    $0x5,%r11d
  0x000000010a1b1fb0: sub    %ebx,%r11d
  0x000000010a1b1fb3: add    %r8d,%r11d
  0x000000010a1b1fb6: mov    %r11d,%ebx
  0x000000010a1b1fb9: shl    $0x5,%ebx
  0x000000010a1b1fbc: sub    %r11d,%ebx
  0x000000010a1b1fbf: add    %r9d,%ebx
  0x000000010a1b1fc2: mov    %ebx,%r8d
  0x000000010a1b1fc5: shl    $0x5,%r8d
  0x000000010a1b1fc9: sub    %ebx,%r8d
  0x000000010a1b1fcc: add    %r10d,%r8d
  0x000000010a1b1fcf: mov    %r8d,%r9d
  0x000000010a1b1fd2: shl    $0x5,%r9d
  0x000000010a1b1fd6: sub    %r8d,%r9d
  0x000000010a1b1fd9: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000010a1b1fdc: mov    %r9d,%r11d
  0x000000010a1b1fdf: shl    $0x5,%r11d
  0x000000010a1b1fe3: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x000000010a1b1fe6: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x000000010a1b1fe9: cmp    %ebp,%ecx
  0x000000010a1b1feb: jl     0x000000010a1b1f40  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010a1b1ff1: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000010a1b1ff8: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000010a1b1ffb: cmp    %edx,%ecx
  0x000000010a1b1ffd: jl     0x000000010a1b1f1f
  0x000000010a1b2003: vmovq  %xmm0,%rsi
  0x000000010a1b2008: vmovd  %xmm2,%r10d
  0x000000010a1b200d: cmp    %r10d,%ecx
  0x000000010a1b2010: jl     0x000000010a1b1efd
  0x000000010a1b2016: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010a1b2019: add    $0x20,%rsp
  0x000000010a1b201d: pop    %rbp
  0x000000010a1b201e: mov    0x108(%r15),%r10
  0x000000010a1b2025: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1b2028: retq   
  0x000000010a1b2029: xor    %eax,%eax
  0x000000010a1b202b: jmp    0x000000010a1b2019
  0x000000010a1b202d: mov    %rsi,%rbp
  0x000000010a1b2030: mov    %r10d,0x4(%rsp)
  0x000000010a1b2035: mov    $0xffffff7e,%esi
  0x000000010a1b203a: nop
  0x000000010a1b203b: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1b2040: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000010a1b2042: mov    $0xfffffff6,%esi
  0x000000010a1b2047: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1b204c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x000000010a1b204e: hlt    
  0x000000010a1b204f: hlt    
  0x000000010a1b2050: hlt    
  0x000000010a1b2051: hlt    
  0x000000010a1b2052: hlt    
  0x000000010a1b2053: hlt    
  0x000000010a1b2054: hlt    
  0x000000010a1b2055: hlt    
  0x000000010a1b2056: hlt    
  0x000000010a1b2057: hlt    
  0x000000010a1b2058: hlt    
  0x000000010a1b2059: hlt    
  0x000000010a1b205a: hlt    
  0x000000010a1b205b: hlt    
  0x000000010a1b205c: hlt    
  0x000000010a1b205d: hlt    
  0x000000010a1b205e: hlt    
  0x000000010a1b205f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1b2060: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1b2065: callq  0x000000010a1b206a
  0x000000010a1b206a: subq   $0x5,(%rsp)
  0x000000010a1b206f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1b2074: hlt    
  0x000000010a1b2075: hlt    
  0x000000010a1b2076: hlt    
  0x000000010a1b2077: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 Compiled method (c2)      86    2             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000010a1b4210,0x000000010a1b4448] = 568
 relocation     [0x000000010a1b4388,0x000000010a1b4398] = 16
 main code      [0x000000010a1b43a0,0x000000010a1b43e0] = 64
 stub code      [0x000000010a1b43e0,0x000000010a1b43f8] = 24
 metadata       [0x000000010a1b43f8,0x000000010a1b4408] = 16
 scopes data    [0x000000010a1b4408,0x000000010a1b4410] = 8
 scopes pcs     [0x000000010a1b4410,0x000000010a1b4440] = 48
 dependencies   [0x000000010a1b4440,0x000000010a1b4448] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000010a1b43a0, 0x000000010a1b43f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ea5c610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000010a1b43a0: mov    0x8(%rsi),%r10d
  0x000000010a1b43a4: movabs $0x800000000,%r12
  0x000000010a1b43ae: add    %r12,%r10
  0x000000010a1b43b1: xor    %r12,%r12
  0x000000010a1b43b4: cmp    %r10,%rax
  0x000000010a1b43b7: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1b43bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1b43c0: sub    $0x18,%rsp
  0x000000010a1b43c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000010a1b43cc: add    $0x10,%rsp
  0x000000010a1b43d0: pop    %rbp
  0x000000010a1b43d1: mov    0x108(%r15),%r10
  0x000000010a1b43d8: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1b43db: retq   
  0x000000010a1b43dc: hlt    
  0x000000010a1b43dd: hlt    
  0x000000010a1b43de: hlt    
  0x000000010a1b43df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1b43e0: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1b43e5: callq  0x000000010a1b43ea
  0x000000010a1b43ea: subq   $0x5,(%rsp)
  0x000000010a1b43ef: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1b43f4: hlt    
  0x000000010a1b43f5: hlt    
  0x000000010a1b43f6: hlt    
  0x000000010a1b43f7: hlt    
Compiled method (c2)      93    3             java.lang.Number::<init> (5 bytes)
 total in heap  [0x000000010a1b3f90,0x000000010a1b41c8] = 568
 relocation     [0x000000010a1b4108,0x000000010a1b4118] = 16
 main code      [0x000000010a1b4120,0x000000010a1b4160] = 64
 stub code      [0x000000010a1b4160,0x000000010a1b4178] = 24
 metadata       [0x000000010a1b4178,0x000000010a1b4188] = 16
 scopes data    [0x000000010a1b4188,0x000000010a1b4190] = 8
 scopes pcs     [0x000000010a1b4190,0x000000010a1b41c0] = 48
 dependencies   [0x000000010a1b41c0,0x000000010a1b41c8] = 8
----------------------------------------------------------------------
java/lang/Number.<init>()V  [0x000000010a1b4120, 0x000000010a1b4178]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010eb4ccf8} '<init>' '()V' in 'java/lang/Number'
  #           [sp+0x20]  (sp of caller)
  0x000000010a1b4120: mov    0x8(%rsi),%r10d
  0x000000010a1b4124: movabs $0x800000000,%r12
  0x000000010a1b412e: add    %r12,%r10
  0x000000010a1b4131: xor    %r12,%r12
  0x000000010a1b4134: cmp    %r10,%rax
  0x000000010a1b4137: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1b413d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1b4140: sub    $0x18,%rsp
  0x000000010a1b4147: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Number::<init>@-1 (line 55)

  0x000000010a1b414c: add    $0x10,%rsp
  0x000000010a1b4150: pop    %rbp
  0x000000010a1b4151: mov    0x108(%r15),%r10
  0x000000010a1b4158: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1b415b: retq   
  0x000000010a1b415c: hlt    
  0x000000010a1b415d: hlt    
  0x000000010a1b415e: hlt    
  0x000000010a1b415f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1b4160: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1b4165: callq  0x000000010a1b416a
  0x000000010a1b416a: subq   $0x5,(%rsp)
  0x000000010a1b416f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1b4174: hlt    
  0x000000010a1b4175: hlt    
  0x000000010a1b4176: hlt    
  0x000000010a1b4177: hlt    
Compiled method (c2)      94    4             java.lang.Integer::<init> (10 bytes)
 total in heap  [0x000000010a1b3d10,0x000000010a1b3f58] = 584
 relocation     [0x000000010a1b3e88,0x000000010a1b3e98] = 16
 main code      [0x000000010a1b3ea0,0x000000010a1b3ee0] = 64
 stub code      [0x000000010a1b3ee0,0x000000010a1b3ef8] = 24
 metadata       [0x000000010a1b3ef8,0x000000010a1b3f00] = 8
 scopes data    [0x000000010a1b3f00,0x000000010a1b3f10] = 16
 scopes pcs     [0x000000010a1b3f10,0x000000010a1b3f50] = 64
 dependencies   [0x000000010a1b3f50,0x000000010a1b3f58] = 8
----------------------------------------------------------------------
java/lang/Integer.<init>(I)V  [0x000000010a1b3ea0, 0x000000010a1b3ef8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010eb55b10} '<init>' '(I)V' in 'java/lang/Integer'
  # this:     rsi:rsi   = 'java/lang/Integer'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x000000010a1b3ea0: mov    0x8(%rsi),%r10d
  0x000000010a1b3ea4: movabs $0x800000000,%r12
  0x000000010a1b3eae: add    %r12,%r10
  0x000000010a1b3eb1: xor    %r12,%r12
  0x000000010a1b3eb4: cmp    %r10,%rax
  0x000000010a1b3eb7: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1b3ebd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1b3ec0: sub    $0x18,%rsp
  0x000000010a1b3ec7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::<init>@-1 (line 1073)

  0x000000010a1b3ecc: mov    %edx,0xc(%rsi)     ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::<init>@6 (line 1074)

  0x000000010a1b3ecf: add    $0x10,%rsp
  0x000000010a1b3ed3: pop    %rbp
  0x000000010a1b3ed4: mov    0x108(%r15),%r10
  0x000000010a1b3edb: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1b3ede: retq   
  0x000000010a1b3edf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1b3ee0: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1b3ee5: callq  0x000000010a1b3eea
  0x000000010a1b3eea: subq   $0x5,(%rsp)
  0x000000010a1b3eef: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1b3ef4: hlt    
  0x000000010a1b3ef5: hlt    
  0x000000010a1b3ef6: hlt    
  0x000000010a1b3ef7: hlt    
Compiled method (c2)      96    5             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x000000010a1b3910,0x000000010a1b3cc8] = 952
 relocation     [0x000000010a1b3a88,0x000000010a1b3aa8] = 32
 main code      [0x000000010a1b3ac0,0x000000010a1b3b80] = 192
 stub code      [0x000000010a1b3b80,0x000000010a1b3b98] = 24
 metadata       [0x000000010a1b3b98,0x000000010a1b3ba8] = 16
 scopes data    [0x000000010a1b3ba8,0x000000010a1b3be8] = 64
 scopes pcs     [0x000000010a1b3be8,0x000000010a1b3ca8] = 192
 dependencies   [0x000000010a1b3ca8,0x000000010a1b3cb0] = 8
 handler table  [0x000000010a1b3cb0,0x000000010a1b3cc8] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x000000010a1b3ac0, 0x000000010a1b3b98]  216 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010eb55a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010a1b3ac0: mov    %eax,-0x14000(%rsp)
  0x000000010a1b3ac7: push   %rbp
  0x000000010a1b3ac8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010a1b3acc: mov    %esi,%ebp
  0x000000010a1b3ace: cmp    $0xffffff80,%esi
  0x000000010a1b3ad1: jl     0x000000010a1b3b4a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010a1b3ad3: cmp    $0x7f,%esi
  0x000000010a1b3ad6: jle    0x000000010a1b3b56  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x000000010a1b3adc: mov    0x118(%r15),%rax
  0x000000010a1b3ae3: mov    %rax,%r10
  0x000000010a1b3ae6: add    $0x10,%r10
  0x000000010a1b3aea: cmp    0x128(%r15),%r10
  0x000000010a1b3af1: jae    0x000000010a1b3b39
  0x000000010a1b3af3: mov    %r10,0x118(%r15)
  0x000000010a1b3afa: prefetchnta 0xc0(%r10)
  0x000000010a1b3b02: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1b3b08: movabs $0x800000000,%r10
  0x000000010a1b3b12: add    %r11,%r10
  0x000000010a1b3b15: mov    0xb8(%r10),%r10
  0x000000010a1b3b1c: mov    %r10,(%rax)
  0x000000010a1b3b1f: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1b3b26: mov    %ebp,0xc(%rax)     ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010a1b3b29: add    $0x20,%rsp
  0x000000010a1b3b2d: pop    %rbp
  0x000000010a1b3b2e: mov    0x108(%r15),%r10
  0x000000010a1b3b35: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1b3b38: retq   
  0x000000010a1b3b39: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1b3b43: callq  0x000000010a1b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1b3b48: jmp    0x000000010a1b3b26
  0x000000010a1b3b4a: mov    $0xffffff4d,%esi
  0x000000010a1b3b4f: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1b3b54: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010a1b3b56: mov    $0xffffff4d,%esi
  0x000000010a1b3b5b: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1b3b60: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000010a1b3b62: mov    %rax,%rsi
  0x000000010a1b3b65: add    $0x20,%rsp
  0x000000010a1b3b69: pop    %rbp
  0x000000010a1b3b6a: jmpq   0x000000010a1b2580  ;   {runtime_call _rethrow_Java}
  0x000000010a1b3b6f: hlt    
  0x000000010a1b3b70: hlt    
  0x000000010a1b3b71: hlt    
  0x000000010a1b3b72: hlt    
  0x000000010a1b3b73: hlt    
  0x000000010a1b3b74: hlt    
  0x000000010a1b3b75: hlt    
  0x000000010a1b3b76: hlt    
  0x000000010a1b3b77: hlt    
  0x000000010a1b3b78: hlt    
  0x000000010a1b3b79: hlt    
  0x000000010a1b3b7a: hlt    
  0x000000010a1b3b7b: hlt    
  0x000000010a1b3b7c: hlt    
  0x000000010a1b3b7d: hlt    
  0x000000010a1b3b7e: hlt    
  0x000000010a1b3b7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1b3b80: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1b3b85: callq  0x000000010a1b3b8a
  0x000000010a1b3b8a: subq   $0x5,(%rsp)
  0x000000010a1b3b8f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1b3b94: hlt    
  0x000000010a1b3b95: hlt    
  0x000000010a1b3b96: hlt    
  0x000000010a1b3b97: hlt    

ImmutableOopMap{}pc offsets: 136 148 160 
Running the benchmark with a cold JVM
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1bb920, 0x000000010a1bb940]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edc06f8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bb920: mov    0x24(%rdi),%ebx
  0x000000010a1bb923: shl    $0x3,%rbx
  0x000000010a1bb927: mov    0x10(%rbx),%rbx
  0x000000010a1bb92b: test   %rbx,%rbx
  0x000000010a1bb92e: je     0x000000010a1bb937
  0x000000010a1bb934: jmpq   *0x38(%rbx)
  0x000000010a1bb937: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bb93c: hlt    
  0x000000010a1bb93d: hlt    
  0x000000010a1bb93e: hlt    
  0x000000010a1bb93f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1bc520, 0x000000010a1bc550]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edf2d88} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bc520: mov    0x14(%rsi),%ebx
  0x000000010a1bc523: shl    $0x3,%rbx
  0x000000010a1bc527: mov    0x28(%rbx),%ebx
  0x000000010a1bc52a: shl    $0x3,%rbx
  0x000000010a1bc52e: mov    0x24(%rbx),%ebx
  0x000000010a1bc531: shl    $0x3,%rbx
  0x000000010a1bc535: mov    0x10(%rbx),%rbx
  0x000000010a1bc539: test   %rbx,%rbx
  0x000000010a1bc53c: je     0x000000010a1bc545
  0x000000010a1bc542: jmpq   *0x38(%rbx)
  0x000000010a1bc545: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bc54a: hlt    
  0x000000010a1bc54b: hlt    
  0x000000010a1bc54c: hlt    
  0x000000010a1bc54d: hlt    
  0x000000010a1bc54e: hlt    
  0x000000010a1bc54f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1bc720, 0x000000010a1bc748]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edf2f40} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010a1bc720: mov    0x8(%rsp),%rbx
  0x000000010a1bc725: cmp    (%rsi),%rax
  0x000000010a1bc728: mov    0x24(%rbx),%ebx
  0x000000010a1bc72b: shl    $0x3,%rbx
  0x000000010a1bc72f: mov    0x10(%rbx),%rbx
  0x000000010a1bc733: test   %rbx,%rbx
  0x000000010a1bc736: je     0x000000010a1bc73f
  0x000000010a1bc73c: jmpq   *0x38(%rbx)
  0x000000010a1bc73f: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bc744: hlt    
  0x000000010a1bc745: hlt    
  0x000000010a1bc746: hlt    
  0x000000010a1bc747: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x000000010a1bcf20, 0x000000010a1bcf40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edff348} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bcf20: mov    0x24(%rsi),%ebx
  0x000000010a1bcf23: shl    $0x3,%rbx
  0x000000010a1bcf27: mov    0x10(%rbx),%rbx
  0x000000010a1bcf2b: test   %rbx,%rbx
  0x000000010a1bcf2e: je     0x000000010a1bcf37
  0x000000010a1bcf34: jmpq   *0x38(%rbx)
  0x000000010a1bcf37: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bcf3c: hlt    
  0x000000010a1bcf3d: hlt    
  0x000000010a1bcf3e: hlt    
  0x000000010a1bcf3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x000000010a1bd120, 0x000000010a1bd150]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edff460} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bd120: mov    0x14(%rsi),%ebx
  0x000000010a1bd123: shl    $0x3,%rbx
  0x000000010a1bd127: mov    0x28(%rbx),%ebx
  0x000000010a1bd12a: shl    $0x3,%rbx
  0x000000010a1bd12e: mov    0x24(%rbx),%ebx
  0x000000010a1bd131: shl    $0x3,%rbx
  0x000000010a1bd135: mov    0x10(%rbx),%rbx
  0x000000010a1bd139: test   %rbx,%rbx
  0x000000010a1bd13c: je     0x000000010a1bd145
  0x000000010a1bd142: jmpq   *0x38(%rbx)
  0x000000010a1bd145: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bd14a: hlt    
  0x000000010a1bd14b: hlt    
  0x000000010a1bd14c: hlt    
  0x000000010a1bd14d: hlt    
  0x000000010a1bd14e: hlt    
  0x000000010a1bd14f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010a1bd320, 0x000000010a1bd340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edff578} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bd320: cmp    (%rsi),%rax
  0x000000010a1bd323: mov    0x24(%rdx),%ebx
  0x000000010a1bd326: shl    $0x3,%rbx
  0x000000010a1bd32a: mov    0x10(%rbx),%rbx
  0x000000010a1bd32e: test   %rbx,%rbx
  0x000000010a1bd331: je     0x000000010a1bd33a
  0x000000010a1bd337: jmpq   *0x38(%rbx)
  0x000000010a1bd33a: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bd33f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1bd520, 0x000000010a1bd540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edff910} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bd520: mov    0x24(%r8),%ebx
  0x000000010a1bd524: shl    $0x3,%rbx
  0x000000010a1bd528: mov    0x10(%rbx),%rbx
  0x000000010a1bd52c: test   %rbx,%rbx
  0x000000010a1bd52f: je     0x000000010a1bd538
  0x000000010a1bd535: jmpq   *0x38(%rbx)
  0x000000010a1bd538: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bd53d: hlt    
  0x000000010a1bd53e: hlt    
  0x000000010a1bd53f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1bd720, 0x000000010a1bd740]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010edffa28} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bd720: mov    0x24(%rcx),%ebx
  0x000000010a1bd723: shl    $0x3,%rbx
  0x000000010a1bd727: mov    0x10(%rbx),%rbx
  0x000000010a1bd72b: test   %rbx,%rbx
  0x000000010a1bd72e: je     0x000000010a1bd737
  0x000000010a1bd734: jmpq   *0x38(%rbx)
  0x000000010a1bd737: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bd73c: hlt    
  0x000000010a1bd73d: hlt    
  0x000000010a1bd73e: hlt    
  0x000000010a1bd73f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1bdb20, 0x000000010a1bdb40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee07800} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1bdb20: mov    0x24(%rsi),%ebx
  0x000000010a1bdb23: shl    $0x3,%rbx
  0x000000010a1bdb27: mov    0x10(%rbx),%rbx
  0x000000010a1bdb2b: test   %rbx,%rbx
  0x000000010a1bdb2e: je     0x000000010a1bdb37
  0x000000010a1bdb34: jmpq   *0x38(%rbx)
  0x000000010a1bdb37: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1bdb3c: hlt    
  0x000000010a1bdb3d: hlt    
  0x000000010a1bdb3e: hlt    
  0x000000010a1bdb3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1be4a0, 0x000000010a1be4c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee19828} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1be4a0: mov    0x24(%rcx),%ebx
  0x000000010a1be4a3: shl    $0x3,%rbx
  0x000000010a1be4a7: mov    0x10(%rbx),%rbx
  0x000000010a1be4ab: test   %rbx,%rbx
  0x000000010a1be4ae: je     0x000000010a1be4b7
  0x000000010a1be4b4: jmpq   *0x38(%rbx)
  0x000000010a1be4b7: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1be4bc: hlt    
  0x000000010a1be4bd: hlt    
  0x000000010a1be4be: hlt    
  0x000000010a1be4bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1be6a0, 0x000000010a1be6c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee1b128} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1be6a0: mov    0x24(%r8),%ebx
  0x000000010a1be6a4: shl    $0x3,%rbx
  0x000000010a1be6a8: mov    0x10(%rbx),%rbx
  0x000000010a1be6ac: test   %rbx,%rbx
  0x000000010a1be6af: je     0x000000010a1be6b8
  0x000000010a1be6b5: jmpq   *0x38(%rbx)
  0x000000010a1be6b8: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1be6bd: hlt    
  0x000000010a1be6be: hlt    
  0x000000010a1be6bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010a1be8a0, 0x000000010a1be8d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee1dc90} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1be8a0: mov    0x14(%rsi),%ebx
  0x000000010a1be8a3: shl    $0x3,%rbx
  0x000000010a1be8a7: mov    0x28(%rbx),%ebx
  0x000000010a1be8aa: shl    $0x3,%rbx
  0x000000010a1be8ae: mov    0x24(%rbx),%ebx
  0x000000010a1be8b1: shl    $0x3,%rbx
  0x000000010a1be8b5: mov    0x10(%rbx),%rbx
  0x000000010a1be8b9: test   %rbx,%rbx
  0x000000010a1be8bc: je     0x000000010a1be8c5
  0x000000010a1be8c2: jmpq   *0x38(%rbx)
  0x000000010a1be8c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1be8ca: hlt    
  0x000000010a1be8cb: hlt    
  0x000000010a1be8cc: hlt    
  0x000000010a1be8cd: hlt    
  0x000000010a1be8ce: hlt    
  0x000000010a1be8cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1beaa0, 0x000000010a1beac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee1dda8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1beaa0: cmp    (%rsi),%rax
  0x000000010a1beaa3: mov    0x24(%r9),%ebx
  0x000000010a1beaa7: shl    $0x3,%rbx
  0x000000010a1beaab: mov    0x10(%rbx),%rbx
  0x000000010a1beaaf: test   %rbx,%rbx
  0x000000010a1beab2: je     0x000000010a1beabb
  0x000000010a1beab8: jmpq   *0x38(%rbx)
  0x000000010a1beabb: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010a1c0aa0, 0x000000010a1c0ac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee51868} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c0aa0: mov    0x24(%r9),%ebx
  0x000000010a1c0aa4: shl    $0x3,%rbx
  0x000000010a1c0aa8: mov    0x10(%rbx),%rbx
  0x000000010a1c0aac: test   %rbx,%rbx
  0x000000010a1c0aaf: je     0x000000010a1c0ab8
  0x000000010a1c0ab5: jmpq   *0x38(%rbx)
  0x000000010a1c0ab8: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c0abd: hlt    
  0x000000010a1c0abe: hlt    
  0x000000010a1c0abf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x000000010a1c0ca0, 0x000000010a1c0cd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee51a70} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c0ca0: mov    0x14(%rsi),%ebx
  0x000000010a1c0ca3: shl    $0x3,%rbx
  0x000000010a1c0ca7: mov    0x28(%rbx),%ebx
  0x000000010a1c0caa: shl    $0x3,%rbx
  0x000000010a1c0cae: mov    0x24(%rbx),%ebx
  0x000000010a1c0cb1: shl    $0x3,%rbx
  0x000000010a1c0cb5: mov    0x10(%rbx),%rbx
  0x000000010a1c0cb9: test   %rbx,%rbx
  0x000000010a1c0cbc: je     0x000000010a1c0cc5
  0x000000010a1c0cc2: jmpq   *0x38(%rbx)
  0x000000010a1c0cc5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c0cca: hlt    
  0x000000010a1c0ccb: hlt    
  0x000000010a1c0ccc: hlt    
  0x000000010a1c0ccd: hlt    
  0x000000010a1c0cce: hlt    
  0x000000010a1c0ccf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010a1c0ea0, 0x000000010a1c0ec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee51b88} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c0ea0: cmp    (%rsi),%rax
  0x000000010a1c0ea3: mov    0x24(%rdi),%ebx
  0x000000010a1c0ea6: shl    $0x3,%rbx
  0x000000010a1c0eaa: mov    0x10(%rbx),%rbx
  0x000000010a1c0eae: test   %rbx,%rbx
  0x000000010a1c0eb1: je     0x000000010a1c0eba
  0x000000010a1c0eb7: jmpq   *0x38(%rbx)
  0x000000010a1c0eba: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c0ebf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c10a0, 0x000000010a1c10c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee52c88} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c10a0: mov    0x24(%r9),%ebx
  0x000000010a1c10a4: shl    $0x3,%rbx
  0x000000010a1c10a8: mov    0x10(%rbx),%rbx
  0x000000010a1c10ac: test   %rbx,%rbx
  0x000000010a1c10af: je     0x000000010a1c10b8
  0x000000010a1c10b5: jmpq   *0x38(%rbx)
  0x000000010a1c10b8: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c10bd: hlt    
  0x000000010a1c10be: hlt    
  0x000000010a1c10bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c12a0, 0x000000010a1c12d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee53020} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c12a0: mov    0x14(%rsi),%ebx
  0x000000010a1c12a3: shl    $0x3,%rbx
  0x000000010a1c12a7: mov    0x28(%rbx),%ebx
  0x000000010a1c12aa: shl    $0x3,%rbx
  0x000000010a1c12ae: mov    0x24(%rbx),%ebx
  0x000000010a1c12b1: shl    $0x3,%rbx
  0x000000010a1c12b5: mov    0x10(%rbx),%rbx
  0x000000010a1c12b9: test   %rbx,%rbx
  0x000000010a1c12bc: je     0x000000010a1c12c5
  0x000000010a1c12c2: jmpq   *0x38(%rbx)
  0x000000010a1c12c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c12ca: hlt    
  0x000000010a1c12cb: hlt    
  0x000000010a1c12cc: hlt    
  0x000000010a1c12cd: hlt    
  0x000000010a1c12ce: hlt    
  0x000000010a1c12cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x000000010a1c14a0, 0x000000010a1c14d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee53548} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c14a0: mov    0x14(%rsi),%ebx
  0x000000010a1c14a3: shl    $0x3,%rbx
  0x000000010a1c14a7: mov    0x28(%rbx),%ebx
  0x000000010a1c14aa: shl    $0x3,%rbx
  0x000000010a1c14ae: mov    0x24(%rbx),%ebx
  0x000000010a1c14b1: shl    $0x3,%rbx
  0x000000010a1c14b5: mov    0x10(%rbx),%rbx
  0x000000010a1c14b9: test   %rbx,%rbx
  0x000000010a1c14bc: je     0x000000010a1c14c5
  0x000000010a1c14c2: jmpq   *0x38(%rbx)
  0x000000010a1c14c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c14ca: hlt    
  0x000000010a1c14cb: hlt    
  0x000000010a1c14cc: hlt    
  0x000000010a1c14cd: hlt    
  0x000000010a1c14ce: hlt    
  0x000000010a1c14cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x000000010a1c16a0, 0x000000010a1c16c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee53660} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c16a0: cmp    (%rsi),%rax
  0x000000010a1c16a3: mov    0x24(%r9),%ebx
  0x000000010a1c16a7: shl    $0x3,%rbx
  0x000000010a1c16ab: mov    0x10(%rbx),%rbx
  0x000000010a1c16af: test   %rbx,%rbx
  0x000000010a1c16b2: je     0x000000010a1c16bb
  0x000000010a1c16b8: jmpq   *0x38(%rbx)
  0x000000010a1c16bb: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c18a0, 0x000000010a1c18c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee565b8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000010a1c18a0: mov    0x8(%rsp),%rbx
  0x000000010a1c18a5: mov    0x24(%rbx),%ebx
  0x000000010a1c18a8: shl    $0x3,%rbx
  0x000000010a1c18ac: mov    0x10(%rbx),%rbx
  0x000000010a1c18b0: test   %rbx,%rbx
  0x000000010a1c18b3: je     0x000000010a1c18bc
  0x000000010a1c18b9: jmpq   *0x38(%rbx)
  0x000000010a1c18bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c18c1: hlt    
  0x000000010a1c18c2: hlt    
  0x000000010a1c18c3: hlt    
  0x000000010a1c18c4: hlt    
  0x000000010a1c18c5: hlt    
  0x000000010a1c18c6: hlt    
  0x000000010a1c18c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c1aa0, 0x000000010a1c1ad0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee56720} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x000000010a1c1aa0: mov    0x14(%rsi),%ebx
  0x000000010a1c1aa3: shl    $0x3,%rbx
  0x000000010a1c1aa7: mov    0x28(%rbx),%ebx
  0x000000010a1c1aaa: shl    $0x3,%rbx
  0x000000010a1c1aae: mov    0x24(%rbx),%ebx
  0x000000010a1c1ab1: shl    $0x3,%rbx
  0x000000010a1c1ab5: mov    0x10(%rbx),%rbx
  0x000000010a1c1ab9: test   %rbx,%rbx
  0x000000010a1c1abc: je     0x000000010a1c1ac5
  0x000000010a1c1ac2: jmpq   *0x38(%rbx)
  0x000000010a1c1ac5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c1aca: hlt    
  0x000000010a1c1acb: hlt    
  0x000000010a1c1acc: hlt    
  0x000000010a1c1acd: hlt    
  0x000000010a1c1ace: hlt    
  0x000000010a1c1acf: hlt    
Compiled method (c2)     138   28             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000010a1c4990,0x000000010a1c4c38] = 680
 relocation     [0x000000010a1c4b08,0x000000010a1c4b18] = 16
 main code      [0x000000010a1c4b20,0x000000010a1c4b80] = 96
 stub code      [0x000000010a1c4b80,0x000000010a1c4b98] = 24
 metadata       [0x000000010a1c4b98,0x000000010a1c4ba0] = 8
 scopes data    [0x000000010a1c4ba0,0x000000010a1c4bc0] = 32
 scopes pcs     [0x000000010a1c4bc0,0x000000010a1c4c30] = 112
 dependencies   [0x000000010a1c4c30,0x000000010a1c4c38] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000010a1c4b20, 0x000000010a1c4b98]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ea66300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000010a1c4b20: mov    0x8(%rsi),%r10d
  0x000000010a1c4b24: movabs $0x800000000,%r12
  0x000000010a1c4b2e: add    %r12,%r10
  0x000000010a1c4b31: xor    %r12,%r12
  0x000000010a1c4b34: cmp    %r10,%rax
  0x000000010a1c4b37: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1c4b3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1c4b40: mov    %eax,-0x14000(%rsp)
  0x000000010a1c4b47: push   %rbp
  0x000000010a1c4b48: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000010a1c4b4c: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000010a1c4b51: test   %r11d,%r11d
  0x000000010a1c4b54: jne    0x000000010a1c4b6b  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010a1c4b56: mov    $0x1,%eax
  0x000000010a1c4b5b: add    $0x10,%rsp
  0x000000010a1c4b5f: pop    %rbp
  0x000000010a1c4b60: mov    0x108(%r15),%r10
  0x000000010a1c4b67: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1c4b6a: retq   
  0x000000010a1c4b6b: mov    $0xffffff4d,%esi
  0x000000010a1c4b70: mov    %r11d,%ebp
  0x000000010a1c4b73: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c4b78: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000010a1c4b7a: hlt    
  0x000000010a1c4b7b: hlt    
  0x000000010a1c4b7c: hlt    
  0x000000010a1c4b7d: hlt    
  0x000000010a1c4b7e: hlt    
  0x000000010a1c4b7f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1c4b80: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1c4b85: callq  0x000000010a1c4b8a
  0x000000010a1c4b8a: subq   $0x5,(%rsp)
  0x000000010a1c4b8f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1c4b94: hlt    
  0x000000010a1c4b95: hlt    
  0x000000010a1c4b96: hlt    
  0x000000010a1c4b97: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010a1c46a0, 0x000000010a1c46c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee569c8} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c46a0: mov    0x24(%r9),%ebx
  0x000000010a1c46a4: shl    $0x3,%rbx
  0x000000010a1c46a8: mov    0x10(%rbx),%rbx
  0x000000010a1c46ac: test   %rbx,%rbx
  0x000000010a1c46af: je     0x000000010a1c46b8
  0x000000010a1c46b5: jmpq   *0x38(%rbx)
  0x000000010a1c46b8: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c46bd: hlt    
  0x000000010a1c46be: hlt    
  0x000000010a1c46bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c44a0, 0x000000010a1c44c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee577c8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000010a1c44a0: mov    0x10(%rsp),%rbx
  0x000000010a1c44a5: mov    0x24(%rbx),%ebx
  0x000000010a1c44a8: shl    $0x3,%rbx
  0x000000010a1c44ac: mov    0x10(%rbx),%rbx
  0x000000010a1c44b0: test   %rbx,%rbx
  0x000000010a1c44b3: je     0x000000010a1c44bc
  0x000000010a1c44b9: jmpq   *0x38(%rbx)
  0x000000010a1c44bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c44c1: hlt    
  0x000000010a1c44c2: hlt    
  0x000000010a1c44c3: hlt    
  0x000000010a1c44c4: hlt    
  0x000000010a1c44c5: hlt    
  0x000000010a1c44c6: hlt    
  0x000000010a1c44c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x000000010a1c42a0, 0x000000010a1c42d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee578e0} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c42a0: mov    0x14(%rsi),%ebx
  0x000000010a1c42a3: shl    $0x3,%rbx
  0x000000010a1c42a7: mov    0x28(%rbx),%ebx
  0x000000010a1c42aa: shl    $0x3,%rbx
  0x000000010a1c42ae: mov    0x24(%rbx),%ebx
  0x000000010a1c42b1: shl    $0x3,%rbx
  0x000000010a1c42b5: mov    0x10(%rbx),%rbx
  0x000000010a1c42b9: test   %rbx,%rbx
  0x000000010a1c42bc: je     0x000000010a1c42c5
  0x000000010a1c42c2: jmpq   *0x38(%rbx)
  0x000000010a1c42c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c42ca: hlt    
  0x000000010a1c42cb: hlt    
  0x000000010a1c42cc: hlt    
  0x000000010a1c42cd: hlt    
  0x000000010a1c42ce: hlt    
  0x000000010a1c42cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010a1c40a0, 0x000000010a1c40c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee579f8} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c40a0: cmp    (%rsi),%rax
  0x000000010a1c40a3: mov    0x24(%rdi),%ebx
  0x000000010a1c40a6: shl    $0x3,%rbx
  0x000000010a1c40aa: mov    0x10(%rbx),%rbx
  0x000000010a1c40ae: test   %rbx,%rbx
  0x000000010a1c40b1: je     0x000000010a1c40ba
  0x000000010a1c40b7: jmpq   *0x38(%rbx)
  0x000000010a1c40ba: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c40bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c3ea0, 0x000000010a1c3ed0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee57b60} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000010a1c3ea0: mov    0x14(%rsi),%ebx
  0x000000010a1c3ea3: shl    $0x3,%rbx
  0x000000010a1c3ea7: mov    0x28(%rbx),%ebx
  0x000000010a1c3eaa: shl    $0x3,%rbx
  0x000000010a1c3eae: mov    0x24(%rbx),%ebx
  0x000000010a1c3eb1: shl    $0x3,%rbx
  0x000000010a1c3eb5: mov    0x10(%rbx),%rbx
  0x000000010a1c3eb9: test   %rbx,%rbx
  0x000000010a1c3ebc: je     0x000000010a1c3ec5
  0x000000010a1c3ec2: jmpq   *0x38(%rbx)
  0x000000010a1c3ec5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c3eca: hlt    
  0x000000010a1c3ecb: hlt    
  0x000000010a1c3ecc: hlt    
  0x000000010a1c3ecd: hlt    
  0x000000010a1c3ece: hlt    
  0x000000010a1c3ecf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c3ca0, 0x000000010a1c3cc8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee58b00} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000010a1c3ca0: mov    0x18(%rsp),%rbx
  0x000000010a1c3ca5: mov    0x24(%rbx),%ebx
  0x000000010a1c3ca8: shl    $0x3,%rbx
  0x000000010a1c3cac: mov    0x10(%rbx),%rbx
  0x000000010a1c3cb0: test   %rbx,%rbx
  0x000000010a1c3cb3: je     0x000000010a1c3cbc
  0x000000010a1c3cb9: jmpq   *0x38(%rbx)
  0x000000010a1c3cbc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c3cc1: hlt    
  0x000000010a1c3cc2: hlt    
  0x000000010a1c3cc3: hlt    
  0x000000010a1c3cc4: hlt    
  0x000000010a1c3cc5: hlt    
  0x000000010a1c3cc6: hlt    
  0x000000010a1c3cc7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000010a1c3aa0, 0x000000010a1c3ad0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee58c18} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c3aa0: mov    0x14(%rsi),%ebx
  0x000000010a1c3aa3: shl    $0x3,%rbx
  0x000000010a1c3aa7: mov    0x28(%rbx),%ebx
  0x000000010a1c3aaa: shl    $0x3,%rbx
  0x000000010a1c3aae: mov    0x24(%rbx),%ebx
  0x000000010a1c3ab1: shl    $0x3,%rbx
  0x000000010a1c3ab5: mov    0x10(%rbx),%rbx
  0x000000010a1c3ab9: test   %rbx,%rbx
  0x000000010a1c3abc: je     0x000000010a1c3ac5
  0x000000010a1c3ac2: jmpq   *0x38(%rbx)
  0x000000010a1c3ac5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c3aca: hlt    
  0x000000010a1c3acb: hlt    
  0x000000010a1c3acc: hlt    
  0x000000010a1c3acd: hlt    
  0x000000010a1c3ace: hlt    
  0x000000010a1c3acf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c38a0, 0x000000010a1c38c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee58d30} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c38a0: cmp    (%rsi),%rax
  0x000000010a1c38a3: mov    0x24(%r8),%ebx
  0x000000010a1c38a7: shl    $0x3,%rbx
  0x000000010a1c38ab: mov    0x10(%rbx),%rbx
  0x000000010a1c38af: test   %rbx,%rbx
  0x000000010a1c38b2: je     0x000000010a1c38bb
  0x000000010a1c38b8: jmpq   *0x38(%rbx)
  0x000000010a1c38bb: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c36a0, 0x000000010a1c36d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee58e98} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000010a1c36a0: mov    0x14(%rsi),%ebx
  0x000000010a1c36a3: shl    $0x3,%rbx
  0x000000010a1c36a7: mov    0x28(%rbx),%ebx
  0x000000010a1c36aa: shl    $0x3,%rbx
  0x000000010a1c36ae: mov    0x24(%rbx),%ebx
  0x000000010a1c36b1: shl    $0x3,%rbx
  0x000000010a1c36b5: mov    0x10(%rbx),%rbx
  0x000000010a1c36b9: test   %rbx,%rbx
  0x000000010a1c36bc: je     0x000000010a1c36c5
  0x000000010a1c36c2: jmpq   *0x38(%rbx)
  0x000000010a1c36c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c36ca: hlt    
  0x000000010a1c36cb: hlt    
  0x000000010a1c36cc: hlt    
  0x000000010a1c36cd: hlt    
  0x000000010a1c36ce: hlt    
  0x000000010a1c36cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010a1c34a0, 0x000000010a1c34c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee59190} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c34a0: mov    0x24(%rcx),%ebx
  0x000000010a1c34a3: shl    $0x3,%rbx
  0x000000010a1c34a7: mov    0x10(%rbx),%rbx
  0x000000010a1c34ab: test   %rbx,%rbx
  0x000000010a1c34ae: je     0x000000010a1c34b7
  0x000000010a1c34b4: jmpq   *0x38(%rbx)
  0x000000010a1c34b7: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c34bc: hlt    
  0x000000010a1c34bd: hlt    
  0x000000010a1c34be: hlt    
  0x000000010a1c34bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x000000010a1c32a0, 0x000000010a1c32d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee592a8} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c32a0: mov    0x14(%rsi),%ebx
  0x000000010a1c32a3: shl    $0x3,%rbx
  0x000000010a1c32a7: mov    0x28(%rbx),%ebx
  0x000000010a1c32aa: shl    $0x3,%rbx
  0x000000010a1c32ae: mov    0x24(%rbx),%ebx
  0x000000010a1c32b1: shl    $0x3,%rbx
  0x000000010a1c32b5: mov    0x10(%rbx),%rbx
  0x000000010a1c32b9: test   %rbx,%rbx
  0x000000010a1c32bc: je     0x000000010a1c32c5
  0x000000010a1c32c2: jmpq   *0x38(%rbx)
  0x000000010a1c32c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c32ca: hlt    
  0x000000010a1c32cb: hlt    
  0x000000010a1c32cc: hlt    
  0x000000010a1c32cd: hlt    
  0x000000010a1c32ce: hlt    
  0x000000010a1c32cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x000000010a1c30a0, 0x000000010a1c30c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee593c0} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c30a0: cmp    (%rsi),%rax
  0x000000010a1c30a3: mov    0x24(%r8),%ebx
  0x000000010a1c30a7: shl    $0x3,%rbx
  0x000000010a1c30ab: mov    0x10(%rbx),%rbx
  0x000000010a1c30af: test   %rbx,%rbx
  0x000000010a1c30b2: je     0x000000010a1c30bb
  0x000000010a1c30b8: jmpq   *0x38(%rbx)
  0x000000010a1c30bb: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     156   41             java.lang.String::charAt (25 bytes)
 total in heap  [0x000000010a1c2b10,0x000000010a1c2eb8] = 936
 relocation     [0x000000010a1c2c88,0x000000010a1c2c98] = 16
 main code      [0x000000010a1c2ca0,0x000000010a1c2d40] = 160
 stub code      [0x000000010a1c2d40,0x000000010a1c2d58] = 24
 metadata       [0x000000010a1c2d58,0x000000010a1c2d70] = 24
 scopes data    [0x000000010a1c2d70,0x000000010a1c2dd0] = 96
 scopes pcs     [0x000000010a1c2dd0,0x000000010a1c2ea0] = 208
 dependencies   [0x000000010a1c2ea0,0x000000010a1c2ea8] = 8
 nul chk table  [0x000000010a1c2ea8,0x000000010a1c2eb8] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x000000010a1c2ca0, 0x000000010a1c2d58]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ea614b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010a1c2ca0: mov    0x8(%rsi),%r10d
  0x000000010a1c2ca4: movabs $0x800000000,%r12
  0x000000010a1c2cae: add    %r12,%r10
  0x000000010a1c2cb1: xor    %r12,%r12
  0x000000010a1c2cb4: cmp    %r10,%rax
  0x000000010a1c2cb7: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1c2cbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1c2cc0: mov    %eax,-0x14000(%rsp)
  0x000000010a1c2cc7: push   %rbp
  0x000000010a1c2cc8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000010a1c2ccc: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010a1c2cd1: test   %r10d,%r10d
  0x000000010a1c2cd4: jne    0x000000010a1c2cfd  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010a1c2cd6: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x000000010a1c2cd9: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000010a1c2d26
  0x000000010a1c2cde: cmp    %r10d,%edx
  0x000000010a1c2ce1: jae    0x000000010a1c2d16
  0x000000010a1c2ce3: lea    (%r12,%rbp,8),%r10
  0x000000010a1c2ce7: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010a1c2ced: add    $0x20,%rsp
  0x000000010a1c2cf1: pop    %rbp
  0x000000010a1c2cf2: mov    0x108(%r15),%r10
  0x000000010a1c2cf9: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1c2cfc: retq   
  0x000000010a1c2cfd: mov    %rsi,%rbp
  0x000000010a1c2d00: mov    %edx,(%rsp)
  0x000000010a1c2d03: mov    %r10d,0x4(%rsp)
  0x000000010a1c2d08: mov    $0xffffff4d,%esi
  0x000000010a1c2d0d: xchg   %ax,%ax
  0x000000010a1c2d0f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c2d14: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x000000010a1c2d16: mov    $0xffffffe5,%esi
  0x000000010a1c2d1b: mov    %edx,0x4(%rsp)
  0x000000010a1c2d1f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c2d24: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010a1c2d26: mov    $0xfffffff6,%esi
  0x000000010a1c2d2b: mov    %edx,0x4(%rsp)
  0x000000010a1c2d2f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c2d34: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000010a1c2d36: hlt    
  0x000000010a1c2d37: hlt    
  0x000000010a1c2d38: hlt    
  0x000000010a1c2d39: hlt    
  0x000000010a1c2d3a: hlt    
  0x000000010a1c2d3b: hlt    
  0x000000010a1c2d3c: hlt    
  0x000000010a1c2d3d: hlt    
  0x000000010a1c2d3e: hlt    
  0x000000010a1c2d3f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1c2d40: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1c2d45: callq  0x000000010a1c2d4a
  0x000000010a1c2d4a: subq   $0x5,(%rsp)
  0x000000010a1c2d4f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1c2d54: hlt    
  0x000000010a1c2d55: hlt    
  0x000000010a1c2d56: hlt    
  0x000000010a1c2d57: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     159   42             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x000000010a1c2810,0x000000010a1c2ae0] = 720
 relocation     [0x000000010a1c2988,0x000000010a1c2998] = 16
 main code      [0x000000010a1c29a0,0x000000010a1c2a00] = 96
 stub code      [0x000000010a1c2a00,0x000000010a1c2a18] = 24
 metadata       [0x000000010a1c2a18,0x000000010a1c2a20] = 8
 scopes data    [0x000000010a1c2a20,0x000000010a1c2a48] = 40
 scopes pcs     [0x000000010a1c2a48,0x000000010a1c2ac8] = 128
 dependencies   [0x000000010a1c2ac8,0x000000010a1c2ad0] = 8
 nul chk table  [0x000000010a1c2ad0,0x000000010a1c2ae0] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x000000010a1c29a0, 0x000000010a1c2a18]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010ebb4988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010a1c29a0: mov    %eax,-0x14000(%rsp)
  0x000000010a1c29a7: push   %rbp
  0x000000010a1c29a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000010a1c29ac: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000010a1c29de
  0x000000010a1c29b0: cmp    %r10d,%edx
  0x000000010a1c29b3: jae    0x000000010a1c29ca
  0x000000010a1c29b5: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000010a1c29ba: add    $0x20,%rsp
  0x000000010a1c29be: pop    %rbp
  0x000000010a1c29bf: mov    0x108(%r15),%r10
  0x000000010a1c29c6: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1c29c9: retq   
  0x000000010a1c29ca: mov    %rsi,%rbp
  0x000000010a1c29cd: mov    %edx,0x4(%rsp)
  0x000000010a1c29d1: mov    $0xffffffe5,%esi
  0x000000010a1c29d6: nop
  0x000000010a1c29d7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c29dc: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010a1c29de: mov    %rsi,%rbp
  0x000000010a1c29e1: mov    %edx,0x4(%rsp)
  0x000000010a1c29e5: mov    $0xfffffff6,%esi
  0x000000010a1c29ea: nop
  0x000000010a1c29eb: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c29f0: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000010a1c29f2: hlt    
  0x000000010a1c29f3: hlt    
  0x000000010a1c29f4: hlt    
  0x000000010a1c29f5: hlt    
  0x000000010a1c29f6: hlt    
  0x000000010a1c29f7: hlt    
  0x000000010a1c29f8: hlt    
  0x000000010a1c29f9: hlt    
  0x000000010a1c29fa: hlt    
  0x000000010a1c29fb: hlt    
  0x000000010a1c29fc: hlt    
  0x000000010a1c29fd: hlt    
  0x000000010a1c29fe: hlt    
  0x000000010a1c29ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1c2a00: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1c2a05: callq  0x000000010a1c2a0a
  0x000000010a1c2a0a: subq   $0x5,(%rsp)
  0x000000010a1c2a0f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1c2a14: hlt    
  0x000000010a1c2a15: hlt    
  0x000000010a1c2a16: hlt    
  0x000000010a1c2a17: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c27a0, 0x000000010a1c27c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee5a510} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c27a0: mov    0x20(%rsp),%rbx
  0x000000010a1c27a5: mov    0x24(%rbx),%ebx
  0x000000010a1c27a8: shl    $0x3,%rbx
  0x000000010a1c27ac: mov    0x10(%rbx),%rbx
  0x000000010a1c27b0: test   %rbx,%rbx
  0x000000010a1c27b3: je     0x000000010a1c27bc
  0x000000010a1c27b9: jmpq   *0x38(%rbx)
  0x000000010a1c27bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c27c1: hlt    
  0x000000010a1c27c2: hlt    
  0x000000010a1c27c3: hlt    
  0x000000010a1c27c4: hlt    
  0x000000010a1c27c5: hlt    
  0x000000010a1c27c6: hlt    
  0x000000010a1c27c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c25a0, 0x000000010a1c25d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee5a678} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c25a0: mov    0x14(%rsi),%ebx
  0x000000010a1c25a3: shl    $0x3,%rbx
  0x000000010a1c25a7: mov    0x28(%rbx),%ebx
  0x000000010a1c25aa: shl    $0x3,%rbx
  0x000000010a1c25ae: mov    0x24(%rbx),%ebx
  0x000000010a1c25b1: shl    $0x3,%rbx
  0x000000010a1c25b5: mov    0x10(%rbx),%rbx
  0x000000010a1c25b9: test   %rbx,%rbx
  0x000000010a1c25bc: je     0x000000010a1c25c5
  0x000000010a1c25c2: jmpq   *0x38(%rbx)
  0x000000010a1c25c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c25ca: hlt    
  0x000000010a1c25cb: hlt    
  0x000000010a1c25cc: hlt    
  0x000000010a1c25cd: hlt    
  0x000000010a1c25ce: hlt    
  0x000000010a1c25cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c2120, 0x000000010a1c2148]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee5b6f0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c2120: mov    0x28(%rsp),%rbx
  0x000000010a1c2125: mov    0x24(%rbx),%ebx
  0x000000010a1c2128: shl    $0x3,%rbx
  0x000000010a1c212c: mov    0x10(%rbx),%rbx
  0x000000010a1c2130: test   %rbx,%rbx
  0x000000010a1c2133: je     0x000000010a1c213c
  0x000000010a1c2139: jmpq   *0x38(%rbx)
  0x000000010a1c213c: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c2141: hlt    
  0x000000010a1c2142: hlt    
  0x000000010a1c2143: hlt    
  0x000000010a1c2144: hlt    
  0x000000010a1c2145: hlt    
  0x000000010a1c2146: hlt    
  0x000000010a1c2147: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c1f20, 0x000000010a1c1f50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee5b858} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c1f20: mov    0x14(%rsi),%ebx
  0x000000010a1c1f23: shl    $0x3,%rbx
  0x000000010a1c1f27: mov    0x28(%rbx),%ebx
  0x000000010a1c1f2a: shl    $0x3,%rbx
  0x000000010a1c1f2e: mov    0x24(%rbx),%ebx
  0x000000010a1c1f31: shl    $0x3,%rbx
  0x000000010a1c1f35: mov    0x10(%rbx),%rbx
  0x000000010a1c1f39: test   %rbx,%rbx
  0x000000010a1c1f3c: je     0x000000010a1c1f45
  0x000000010a1c1f42: jmpq   *0x38(%rbx)
  0x000000010a1c1f45: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c1f4a: hlt    
  0x000000010a1c1f4b: hlt    
  0x000000010a1c1f4c: hlt    
  0x000000010a1c1f4d: hlt    
  0x000000010a1c1f4e: hlt    
  0x000000010a1c1f4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x000000010a1c1ca0, 0x000000010a1c1cc0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee5ba60} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c1ca0: mov    0x24(%rcx),%ebx
  0x000000010a1c1ca3: shl    $0x3,%rbx
  0x000000010a1c1ca7: mov    0x10(%rbx),%rbx
  0x000000010a1c1cab: test   %rbx,%rbx
  0x000000010a1c1cae: je     0x000000010a1c1cb7
  0x000000010a1c1cb4: jmpq   *0x38(%rbx)
  0x000000010a1c1cb7: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c1cbc: hlt    
  0x000000010a1c1cbd: hlt    
  0x000000010a1c1cbe: hlt    
  0x000000010a1c1cbf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c7aa0, 0x000000010a1c7ac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee66040} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c7aa0: mov    0x30(%rsp),%rbx
  0x000000010a1c7aa5: mov    0x24(%rbx),%ebx
  0x000000010a1c7aa8: shl    $0x3,%rbx
  0x000000010a1c7aac: mov    0x10(%rbx),%rbx
  0x000000010a1c7ab0: test   %rbx,%rbx
  0x000000010a1c7ab3: je     0x000000010a1c7abc
  0x000000010a1c7ab9: jmpq   *0x38(%rbx)
  0x000000010a1c7abc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c7ac1: hlt    
  0x000000010a1c7ac2: hlt    
  0x000000010a1c7ac3: hlt    
  0x000000010a1c7ac4: hlt    
  0x000000010a1c7ac5: hlt    
  0x000000010a1c7ac6: hlt    
  0x000000010a1c7ac7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x000000010a1c78a0, 0x000000010a1c78d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee66158} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c78a0: mov    0x14(%rsi),%ebx
  0x000000010a1c78a3: shl    $0x3,%rbx
  0x000000010a1c78a7: mov    0x28(%rbx),%ebx
  0x000000010a1c78aa: shl    $0x3,%rbx
  0x000000010a1c78ae: mov    0x24(%rbx),%ebx
  0x000000010a1c78b1: shl    $0x3,%rbx
  0x000000010a1c78b5: mov    0x10(%rbx),%rbx
  0x000000010a1c78b9: test   %rbx,%rbx
  0x000000010a1c78bc: je     0x000000010a1c78c5
  0x000000010a1c78c2: jmpq   *0x38(%rbx)
  0x000000010a1c78c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c78ca: hlt    
  0x000000010a1c78cb: hlt    
  0x000000010a1c78cc: hlt    
  0x000000010a1c78cd: hlt    
  0x000000010a1c78ce: hlt    
  0x000000010a1c78cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000010a1c76a0, 0x000000010a1c76c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee66270} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c76a0: cmp    (%rsi),%rax
  0x000000010a1c76a3: mov    0x24(%r8),%ebx
  0x000000010a1c76a7: shl    $0x3,%rbx
  0x000000010a1c76ab: mov    0x10(%rbx),%rbx
  0x000000010a1c76af: test   %rbx,%rbx
  0x000000010a1c76b2: je     0x000000010a1c76bb
  0x000000010a1c76b8: jmpq   *0x38(%rbx)
  0x000000010a1c76bb: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c74a0, 0x000000010a1c74d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee663d8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c74a0: mov    0x14(%rsi),%ebx
  0x000000010a1c74a3: shl    $0x3,%rbx
  0x000000010a1c74a7: mov    0x28(%rbx),%ebx
  0x000000010a1c74aa: shl    $0x3,%rbx
  0x000000010a1c74ae: mov    0x24(%rbx),%ebx
  0x000000010a1c74b1: shl    $0x3,%rbx
  0x000000010a1c74b5: mov    0x10(%rbx),%rbx
  0x000000010a1c74b9: test   %rbx,%rbx
  0x000000010a1c74bc: je     0x000000010a1c74c5
  0x000000010a1c74c2: jmpq   *0x38(%rbx)
  0x000000010a1c74c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c74ca: hlt    
  0x000000010a1c74cb: hlt    
  0x000000010a1c74cc: hlt    
  0x000000010a1c74cd: hlt    
  0x000000010a1c74ce: hlt    
  0x000000010a1c74cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c72a0, 0x000000010a1c72c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee677d8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c72a0: mov    0x38(%rsp),%rbx
  0x000000010a1c72a5: mov    0x24(%rbx),%ebx
  0x000000010a1c72a8: shl    $0x3,%rbx
  0x000000010a1c72ac: mov    0x10(%rbx),%rbx
  0x000000010a1c72b0: test   %rbx,%rbx
  0x000000010a1c72b3: je     0x000000010a1c72bc
  0x000000010a1c72b9: jmpq   *0x38(%rbx)
  0x000000010a1c72bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c72c1: hlt    
  0x000000010a1c72c2: hlt    
  0x000000010a1c72c3: hlt    
  0x000000010a1c72c4: hlt    
  0x000000010a1c72c5: hlt    
  0x000000010a1c72c6: hlt    
  0x000000010a1c72c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c70a0, 0x000000010a1c70d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee67940} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c70a0: mov    0x14(%rsi),%ebx
  0x000000010a1c70a3: shl    $0x3,%rbx
  0x000000010a1c70a7: mov    0x28(%rbx),%ebx
  0x000000010a1c70aa: shl    $0x3,%rbx
  0x000000010a1c70ae: mov    0x24(%rbx),%ebx
  0x000000010a1c70b1: shl    $0x3,%rbx
  0x000000010a1c70b5: mov    0x10(%rbx),%rbx
  0x000000010a1c70b9: test   %rbx,%rbx
  0x000000010a1c70bc: je     0x000000010a1c70c5
  0x000000010a1c70c2: jmpq   *0x38(%rbx)
  0x000000010a1c70c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c70ca: hlt    
  0x000000010a1c70cb: hlt    
  0x000000010a1c70cc: hlt    
  0x000000010a1c70cd: hlt    
  0x000000010a1c70ce: hlt    
  0x000000010a1c70cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c68a0, 0x000000010a1c68c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee70990} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c68a0: mov    0x40(%rsp),%rbx
  0x000000010a1c68a5: mov    0x24(%rbx),%ebx
  0x000000010a1c68a8: shl    $0x3,%rbx
  0x000000010a1c68ac: mov    0x10(%rbx),%rbx
  0x000000010a1c68b0: test   %rbx,%rbx
  0x000000010a1c68b3: je     0x000000010a1c68bc
  0x000000010a1c68b9: jmpq   *0x38(%rbx)
  0x000000010a1c68bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c68c1: hlt    
  0x000000010a1c68c2: hlt    
  0x000000010a1c68c3: hlt    
  0x000000010a1c68c4: hlt    
  0x000000010a1c68c5: hlt    
  0x000000010a1c68c6: hlt    
  0x000000010a1c68c7: hlt    
Compiled method (c2)     192   55             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x000000010a1c9690,0x000000010a1ca4a8] = 3608
 relocation     [0x000000010a1c9808,0x000000010a1c9838] = 48
 main code      [0x000000010a1c9840,0x000000010a1c9c60] = 1056
 stub code      [0x000000010a1c9c60,0x000000010a1c9c88] = 40
 metadata       [0x000000010a1c9c88,0x000000010a1c9cb8] = 48
 scopes data    [0x000000010a1c9cb8,0x000000010a1c9eb8] = 512
 scopes pcs     [0x000000010a1c9eb8,0x000000010a1ca458] = 1440
 dependencies   [0x000000010a1ca458,0x000000010a1ca460] = 8
 handler table  [0x000000010a1ca460,0x000000010a1ca478] = 24
 nul chk table  [0x000000010a1ca478,0x000000010a1ca4a8] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x000000010a1c9840, 0x000000010a1c9c88]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ee347b0} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x000000010a1c9840: mov    0x8(%rsi),%r10d
  0x000000010a1c9844: movabs $0x800000000,%r12
  0x000000010a1c984e: add    %r12,%r10
  0x000000010a1c9851: xor    %r12,%r12
  0x000000010a1c9854: cmp    %r10,%rax
  0x000000010a1c9857: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1c985d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1c9860: mov    %eax,-0x14000(%rsp)
  0x000000010a1c9867: push   %rbp
  0x000000010a1c9868: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x000000010a1c986c: mov    %rsi,%r10
  0x000000010a1c986f: mov    %rdx,%r9
  0x000000010a1c9872: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x000000010a1c9c23
  0x000000010a1c9876: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000010a1c9c32
  0x000000010a1c987b: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010a1c987f: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010a1c9882: cmp    $0xffff,%r11d
  0x000000010a1c9889: jg     0x000000010a1c9bee  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010a1c988f: mov    %rsi,%rdi
  0x000000010a1c9892: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x000000010a1c9896: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x000000010a1c9c3e
  0x000000010a1c989b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x000000010a1c989e: mov    %r11d,%r10d
  0x000000010a1c98a1: add    %edx,%r10d
  0x000000010a1c98a4: add    $0x2,%r10d
  0x000000010a1c98a8: cmp    %ebx,%r10d
  0x000000010a1c98ab: jg     0x000000010a1c9ad9  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c98b1: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010a1c98b4: mov    %r11d,%esi
  0x000000010a1c98b7: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x000000010a1c98ba: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x000000010a1c98be: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x000000010a1c9c4a
  0x000000010a1c98c3: mov    %edx,%r10d
  0x000000010a1c98c6: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x000000010a1c98c9: cmp    %ebp,%edx
  0x000000010a1c98cb: jae    0x000000010a1c9b66
  0x000000010a1c98d1: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x000000010a1c98d5: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010a1c98da: mov    %edx,%r14d
  0x000000010a1c98dd: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010a1c98e1: cmp    %ebp,%r10d
  0x000000010a1c98e4: jae    0x000000010a1c9b92
  0x000000010a1c98ea: movslq %edx,%rsi
  0x000000010a1c98ed: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010a1c98f2: test   %r11d,%r11d
  0x000000010a1c98f5: jle    0x000000010a1c9ac2  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010a1c98fb: test   %ecx,%ecx
  0x000000010a1c98fd: jne    0x000000010a1c9bbe
  0x000000010a1c9903: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000010a1c9bbe
  0x000000010a1c9908: test   %r10d,%r10d
  0x000000010a1c990b: jbe    0x000000010a1c9bbe
  0x000000010a1c9911: movslq %r10d,%rcx
  0x000000010a1c9914: movslq %r11d,%r13
  0x000000010a1c9917: mov    %r13,%r10
  0x000000010a1c991a: dec    %r10
  0x000000010a1c991d: cmp    %rcx,%r10
  0x000000010a1c9920: jae    0x000000010a1c9bbe
  0x000000010a1c9926: cmp    %ebp,%r14d
  0x000000010a1c9929: jae    0x000000010a1c9bbe
  0x000000010a1c992f: movslq %ebp,%r10
  0x000000010a1c9932: movslq %r14d,%rcx
  0x000000010a1c9935: add    %r13,%rcx
  0x000000010a1c9938: dec    %rcx
  0x000000010a1c993b: cmp    %r10,%rcx
  0x000000010a1c993e: jae    0x000000010a1c9bbe
  0x000000010a1c9944: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c994a: mov    %ecx,%ebp
  0x000000010a1c994c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9950: mov    %ebp,%r10d
  0x000000010a1c9953: dec    %r10d
  0x000000010a1c9956: cmp    $0x7f,%r10d
  0x000000010a1c995a: jae    0x000000010a1c9c06  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c9960: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c9964: mov    %r11d,%r13d
  0x000000010a1c9967: add    $0xfffffffd,%r13d
  0x000000010a1c996b: lea    (%r12,%r8,8),%rsi
  0x000000010a1c996f: mov    $0x1,%ecx
  0x000000010a1c9974: mov    $0x80000000,%r8d
  0x000000010a1c997a: cmp    %r13d,%r11d
  0x000000010a1c997d: cmovl  %r8d,%r13d
  0x000000010a1c9981: cmp    $0x1,%r13d
  0x000000010a1c9985: jle    0x000000010a1c9be2  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010a1c998b: jmp    0x000000010a1c999c
  0x000000010a1c998d: vmovq  %xmm0,%r9
  0x000000010a1c9992: vmovq  %xmm1,%rdi
  0x000000010a1c9997: vmovd  %xmm3,%r11d
  0x000000010a1c999c: mov    %r13d,%r10d
  0x000000010a1c999f: sub    %ecx,%r10d
  0x000000010a1c99a2: mov    $0xfa0,%r14d
  0x000000010a1c99a8: cmp    %r14d,%r10d
  0x000000010a1c99ab: cmovg  %r14d,%r10d
  0x000000010a1c99af: add    %ecx,%r10d
  0x000000010a1c99b2: vmovq  %r9,%xmm0
  0x000000010a1c99b7: vmovq  %rdi,%xmm1
  0x000000010a1c99bc: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c99c1: mov    %ecx,%r14d
  0x000000010a1c99c4: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010a1c99c7: movslq %ecx,%r9
  0x000000010a1c99ca: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c99d0: mov    %r8d,%ebp
  0x000000010a1c99d3: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c99d7: mov    %ebp,%r11d
  0x000000010a1c99da: dec    %r11d
  0x000000010a1c99dd: cmp    $0x7f,%r11d
  0x000000010a1c99e1: jae    0x000000010a1c9b12  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c99e7: movslq %r14d,%rdi
  0x000000010a1c99ea: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c99ef: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c99f5: mov    %r11d,%ebp
  0x000000010a1c99f8: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c99fc: mov    %ebp,%r8d
  0x000000010a1c99ff: dec    %r8d
  0x000000010a1c9a02: cmp    $0x7f,%r8d
  0x000000010a1c9a06: jae    0x000000010a1c9b18  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c9a0c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c9a11: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a17: mov    %r8d,%ebp
  0x000000010a1c9a1a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a1e: mov    %ebp,%r11d
  0x000000010a1c9a21: dec    %r11d
  0x000000010a1c9a24: cmp    $0x7f,%r11d
  0x000000010a1c9a28: jae    0x000000010a1c9b20  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c9a2e: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c9a33: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a39: mov    %r8d,%ebp
  0x000000010a1c9a3c: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a40: mov    %ebp,%r11d
  0x000000010a1c9a43: dec    %r11d
  0x000000010a1c9a46: cmp    $0x7f,%r11d
  0x000000010a1c9a4a: jae    0x000000010a1c9b29  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c9a50: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c9a55: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010a1c9a58: cmp    %r10d,%ecx
  0x000000010a1c9a5b: jl     0x000000010a1c99c1  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010a1c9a61: mov    0x108(%r15),%r9
  0x000000010a1c9a68: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000010a1c9a6c: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x000000010a1c9a6f: cmp    %r13d,%ecx
  0x000000010a1c9a72: jl     0x000000010a1c998d
  0x000000010a1c9a78: vmovq  %xmm0,%r9
  0x000000010a1c9a7d: vmovq  %xmm1,%rdi
  0x000000010a1c9a82: vmovd  %xmm3,%r11d
  0x000000010a1c9a87: cmp    %r11d,%ecx
  0x000000010a1c9a8a: jge    0x000000010a1c9ac2  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9a8c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a92: mov    %ecx,%r14d
  0x000000010a1c9a95: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x000000010a1c9a98: mov    %r8d,%ebp
  0x000000010a1c9a9b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9a9f: mov    %ebp,%r10d
  0x000000010a1c9aa2: dec    %r10d
  0x000000010a1c9aa5: cmp    $0x7f,%r10d
  0x000000010a1c9aa9: jae    0x000000010a1c9c0d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000010a1c9aaf: movslq %r14d,%r10
  0x000000010a1c9ab2: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000010a1c9ab7: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010a1c9ab9: cmp    %r11d,%ecx
  0x000000010a1c9abc: jl     0x000000010a1c9a8c
  0x000000010a1c9abe: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010a1c9ac2: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x000000010a1c9ac6: mov    %rdi,%rax
  0x000000010a1c9ac9: add    $0x40,%rsp
  0x000000010a1c9acd: pop    %rbp
  0x000000010a1c9ace: mov    0x108(%r15),%r10
  0x000000010a1c9ad5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1c9ad8: retq   
  0x000000010a1c9ad9: mov    %edx,0xc(%rsp)
  0x000000010a1c9add: mov    %rsi,(%rsp)
  0x000000010a1c9ae1: mov    %r9,%rbp
  0x000000010a1c9ae4: mov    %r11d,%edx
  0x000000010a1c9ae7: mov    %r11d,0x8(%rsp)
  0x000000010a1c9aec: add    $0x2,%edx
  0x000000010a1c9aef: callq  0x000000010a179f00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x000000010a1c9af4: mov    %rbp,%r9
  0x000000010a1c9af7: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9afb: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000010a1c9b00: mov    (%rsp),%rdi
  0x000000010a1c9b04: mov    0x8(%rsp),%r11d
  0x000000010a1c9b09: mov    0xc(%rsp),%edx
  0x000000010a1c9b0d: jmpq   0x000000010a1c98b1
  0x000000010a1c9b12: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9b16: jmp    0x000000010a1c9b30
  0x000000010a1c9b18: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010a1c9b1a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9b1e: jmp    0x000000010a1c9b30
  0x000000010a1c9b20: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010a1c9b23: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9b27: jmp    0x000000010a1c9b30
  0x000000010a1c9b29: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000010a1c9b2c: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9b30: vmovq  %xmm0,%r9
  0x000000010a1c9b35: vmovq  %xmm1,%rdi
  0x000000010a1c9b3a: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010a1c9b3f: mov    $0xffffff45,%esi
  0x000000010a1c9b44: mov    %r14d,(%rsp)
  0x000000010a1c9b48: mov    %ecx,0x4(%rsp)
  0x000000010a1c9b4c: mov    %rdi,0x10(%rsp)
  0x000000010a1c9b51: mov    %r9,0x18(%rsp)
  0x000000010a1c9b56: mov    %r11d,0xc(%rsp)
  0x000000010a1c9b5b: mov    %ebx,0x20(%rsp)
  0x000000010a1c9b5f: callq  0x000000010a17b900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9b64: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x000000010a1c9b66: mov    $0xffffffe4,%esi
  0x000000010a1c9b6b: mov    %edx,%ebp
  0x000000010a1c9b6d: mov    %rdi,(%rsp)
  0x000000010a1c9b71: mov    %r9,0x8(%rsp)
  0x000000010a1c9b76: mov    %r11d,0x10(%rsp)
  0x000000010a1c9b7b: mov    %r10d,0x14(%rsp)
  0x000000010a1c9b80: mov    %ebx,0x1c(%rsp)
  0x000000010a1c9b84: mov    %eax,0x20(%rsp)
  0x000000010a1c9b88: data16 xchg %ax,%ax
  0x000000010a1c9b8b: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9b90: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x000000010a1c9b92: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x000000010a1c9b96: mov    $0xffffffe4,%esi
  0x000000010a1c9b9b: mov    %r14d,(%rsp)
  0x000000010a1c9b9f: mov    %rdi,0x8(%rsp)
  0x000000010a1c9ba4: mov    %r9,0x10(%rsp)
  0x000000010a1c9ba9: mov    %r11d,0x4(%rsp)
  0x000000010a1c9bae: mov    %ebx,0x1c(%rsp)
  0x000000010a1c9bb2: mov    %r10d,0x20(%rsp)
  0x000000010a1c9bb7: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9bbc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010a1c9bbe: mov    $0xffffff7e,%esi
  0x000000010a1c9bc3: mov    %r14d,%ebp
  0x000000010a1c9bc6: mov    %rdi,(%rsp)
  0x000000010a1c9bca: mov    %r9,0x8(%rsp)
  0x000000010a1c9bcf: mov    %ebx,0x14(%rsp)
  0x000000010a1c9bd3: mov    %r11d,0x18(%rsp)
  0x000000010a1c9bd8: data16 xchg %ax,%ax
  0x000000010a1c9bdb: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9be0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000010a1c9be2: mov    %edx,%r14d
  0x000000010a1c9be5: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x000000010a1c9be9: jmpq   0x000000010a1c9a87
  0x000000010a1c9bee: mov    $0xffffff4d,%esi
  0x000000010a1c9bf3: mov    %r10,%rbp
  0x000000010a1c9bf6: mov    %rdx,(%rsp)
  0x000000010a1c9bfa: mov    %r11d,0xc(%rsp)
  0x000000010a1c9bff: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9c04: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000010a1c9c06: xor    %ecx,%ecx
  0x000000010a1c9c08: jmpq   0x000000010a1c9b3f
  0x000000010a1c9c0d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000010a1c9c11: jmpq   0x000000010a1c9b3f  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x000000010a1c9c16: mov    %rax,%rsi
  0x000000010a1c9c19: add    $0x40,%rsp
  0x000000010a1c9c1d: pop    %rbp
  0x000000010a1c9c1e: jmpq   0x000000010a1b2580  ;   {runtime_call _rethrow_Java}
  0x000000010a1c9c23: mov    $0xfffffff6,%esi
  0x000000010a1c9c28: data16 xchg %ax,%ax
  0x000000010a1c9c2b: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9c30: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010a1c9c32: mov    $0xfffffff6,%esi
  0x000000010a1c9c37: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9c3c: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x000000010a1c9c3e: mov    $0xfffffff6,%esi
  0x000000010a1c9c43: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9c48: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x000000010a1c9c4a: mov    $0xfffffff6,%esi
  0x000000010a1c9c4f: mov    %edx,%ebp
  0x000000010a1c9c51: mov    %eax,(%rsp)
  0x000000010a1c9c54: data16 xchg %ax,%ax
  0x000000010a1c9c57: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1c9c5c: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000010a1c9c5e: hlt    
  0x000000010a1c9c5f: hlt    
[Stub Code]
  0x000000010a1c9c60: movabs $0x0,%rbx          ;   {no_reloc}
  0x000000010a1c9c6a: jmpq   0x000000010a1c9c6a  ;   {runtime_call}
[Exception Handler]
  0x000000010a1c9c6f: jmpq   0x000000010a1b0680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x000000010a1c9c74: callq  0x000000010a1c9c79
  0x000000010a1c9c79: subq   $0x5,(%rsp)
  0x000000010a1c9c7e: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1c9c83: hlt    
  0x000000010a1c9c84: hlt    
  0x000000010a1c9c85: hlt    
  0x000000010a1c9c86: hlt    
  0x000000010a1c9c87: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000010a1c66a0, 0x000000010a1c66d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee73510} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c66a0: mov    0x14(%rsi),%ebx
  0x000000010a1c66a3: shl    $0x3,%rbx
  0x000000010a1c66a7: mov    0x28(%rbx),%ebx
  0x000000010a1c66aa: shl    $0x3,%rbx
  0x000000010a1c66ae: mov    0x24(%rbx),%ebx
  0x000000010a1c66b1: shl    $0x3,%rbx
  0x000000010a1c66b5: mov    0x10(%rbx),%rbx
  0x000000010a1c66b9: test   %rbx,%rbx
  0x000000010a1c66bc: je     0x000000010a1c66c5
  0x000000010a1c66c2: jmpq   *0x38(%rbx)
  0x000000010a1c66c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c66ca: hlt    
  0x000000010a1c66cb: hlt    
  0x000000010a1c66cc: hlt    
  0x000000010a1c66cd: hlt    
  0x000000010a1c66ce: hlt    
  0x000000010a1c66cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c61a0, 0x000000010a1c61c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee75ac0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c61a0: mov    0x48(%rsp),%rbx
  0x000000010a1c61a5: mov    0x24(%rbx),%ebx
  0x000000010a1c61a8: shl    $0x3,%rbx
  0x000000010a1c61ac: mov    0x10(%rbx),%rbx
  0x000000010a1c61b0: test   %rbx,%rbx
  0x000000010a1c61b3: je     0x000000010a1c61bc
  0x000000010a1c61b9: jmpq   *0x38(%rbx)
  0x000000010a1c61bc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c61c1: hlt    
  0x000000010a1c61c2: hlt    
  0x000000010a1c61c3: hlt    
  0x000000010a1c61c4: hlt    
  0x000000010a1c61c5: hlt    
  0x000000010a1c61c6: hlt    
  0x000000010a1c61c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000010a1c5fa0, 0x000000010a1c5fd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee760c8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c5fa0: mov    0x14(%rsi),%ebx
  0x000000010a1c5fa3: shl    $0x3,%rbx
  0x000000010a1c5fa7: mov    0x28(%rbx),%ebx
  0x000000010a1c5faa: shl    $0x3,%rbx
  0x000000010a1c5fae: mov    0x24(%rbx),%ebx
  0x000000010a1c5fb1: shl    $0x3,%rbx
  0x000000010a1c5fb5: mov    0x10(%rbx),%rbx
  0x000000010a1c5fb9: test   %rbx,%rbx
  0x000000010a1c5fbc: je     0x000000010a1c5fc5
  0x000000010a1c5fc2: jmpq   *0x38(%rbx)
  0x000000010a1c5fc5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c5fca: hlt    
  0x000000010a1c5fcb: hlt    
  0x000000010a1c5fcc: hlt    
  0x000000010a1c5fcd: hlt    
  0x000000010a1c5fce: hlt    
  0x000000010a1c5fcf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c5aa0, 0x000000010a1c5ac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee77518} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c5aa0: mov    0x50(%rsp),%rbx
  0x000000010a1c5aa5: mov    0x24(%rbx),%ebx
  0x000000010a1c5aa8: shl    $0x3,%rbx
  0x000000010a1c5aac: mov    0x10(%rbx),%rbx
  0x000000010a1c5ab0: test   %rbx,%rbx
  0x000000010a1c5ab3: je     0x000000010a1c5abc
  0x000000010a1c5ab9: jmpq   *0x38(%rbx)
  0x000000010a1c5abc: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c5ac1: hlt    
  0x000000010a1c5ac2: hlt    
  0x000000010a1c5ac3: hlt    
  0x000000010a1c5ac4: hlt    
  0x000000010a1c5ac5: hlt    
  0x000000010a1c5ac6: hlt    
  0x000000010a1c5ac7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x000000010a1c58a0, 0x000000010a1c58d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee777e8} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c58a0: mov    0x14(%rsi),%ebx
  0x000000010a1c58a3: shl    $0x3,%rbx
  0x000000010a1c58a7: mov    0x28(%rbx),%ebx
  0x000000010a1c58aa: shl    $0x3,%rbx
  0x000000010a1c58ae: mov    0x24(%rbx),%ebx
  0x000000010a1c58b1: shl    $0x3,%rbx
  0x000000010a1c58b5: mov    0x10(%rbx),%rbx
  0x000000010a1c58b9: test   %rbx,%rbx
  0x000000010a1c58bc: je     0x000000010a1c58c5
  0x000000010a1c58c2: jmpq   *0x38(%rbx)
  0x000000010a1c58c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c58ca: hlt    
  0x000000010a1c58cb: hlt    
  0x000000010a1c58cc: hlt    
  0x000000010a1c58cd: hlt    
  0x000000010a1c58ce: hlt    
  0x000000010a1c58cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c54a0, 0x000000010a1c54c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee77900} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c54a0: cmp    (%rsi),%rax
  0x000000010a1c54a3: mov    0x24(%rdx),%ebx
  0x000000010a1c54a6: shl    $0x3,%rbx
  0x000000010a1c54aa: mov    0x10(%rbx),%rbx
  0x000000010a1c54ae: test   %rbx,%rbx
  0x000000010a1c54b1: je     0x000000010a1c54ba
  0x000000010a1c54b7: jmpq   *0x38(%rbx)
  0x000000010a1c54ba: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c54bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000010a1c52a0, 0x000000010a1c52d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee77ab8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000010a1c52a0: mov    0x14(%rsi),%ebx
  0x000000010a1c52a3: shl    $0x3,%rbx
  0x000000010a1c52a7: mov    0x28(%rbx),%ebx
  0x000000010a1c52aa: shl    $0x3,%rbx
  0x000000010a1c52ae: mov    0x24(%rbx),%ebx
  0x000000010a1c52b1: shl    $0x3,%rbx
  0x000000010a1c52b5: mov    0x10(%rbx),%rbx
  0x000000010a1c52b9: test   %rbx,%rbx
  0x000000010a1c52bc: je     0x000000010a1c52c5
  0x000000010a1c52c2: jmpq   *0x38(%rbx)
  0x000000010a1c52c5: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c52ca: hlt    
  0x000000010a1c52cb: hlt    
  0x000000010a1c52cc: hlt    
  0x000000010a1c52cd: hlt    
  0x000000010a1c52ce: hlt    
  0x000000010a1c52cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x000000010a1c4e20, 0x000000010a1c4e50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee786a0} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c4e20: mov    0x14(%rsi),%ebx
  0x000000010a1c4e23: shl    $0x3,%rbx
  0x000000010a1c4e27: mov    0x28(%rbx),%ebx
  0x000000010a1c4e2a: shl    $0x3,%rbx
  0x000000010a1c4e2e: mov    0x24(%rbx),%ebx
  0x000000010a1c4e31: shl    $0x3,%rbx
  0x000000010a1c4e35: mov    0x10(%rbx),%rbx
  0x000000010a1c4e39: test   %rbx,%rbx
  0x000000010a1c4e3c: je     0x000000010a1c4e45
  0x000000010a1c4e42: jmpq   *0x38(%rbx)
  0x000000010a1c4e45: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c4e4a: hlt    
  0x000000010a1c4e4b: hlt    
  0x000000010a1c4e4c: hlt    
  0x000000010a1c4e4d: hlt    
  0x000000010a1c4e4e: hlt    
  0x000000010a1c4e4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000010a1c93a0, 0x000000010a1c93c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000010ee787b8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000010a1c93a0: cmp    (%rsi),%rax
  0x000000010a1c93a3: mov    0x24(%rcx),%ebx
  0x000000010a1c93a6: shl    $0x3,%rbx
  0x000000010a1c93aa: mov    0x10(%rbx),%rbx
  0x000000010a1c93ae: test   %rbx,%rbx
  0x000000010a1c93b1: je     0x000000010a1c93ba
  0x000000010a1c93b7: jmpq   *0x38(%rbx)
  0x000000010a1c93ba: jmpq   0x000000010a193880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000010a1c93bf: hlt    
Time elapsed: 0.635 ms result=100
Warmup phase
Compiled method (c2)     231   65             java.util.HashMap::hash (20 bytes)
 total in heap  [0x000000010a1cde90,0x000000010a1ce680] = 2032
 relocation     [0x000000010a1ce008,0x000000010a1ce028] = 32
 main code      [0x000000010a1ce040,0x000000010a1ce280] = 576
 stub code      [0x000000010a1ce280,0x000000010a1ce298] = 24
 metadata       [0x000000010a1ce298,0x000000010a1ce2c8] = 48
 scopes data    [0x000000010a1ce2c8,0x000000010a1ce3e0] = 280
 scopes pcs     [0x000000010a1ce3e0,0x000000010a1ce660] = 640
 dependencies   [0x000000010a1ce660,0x000000010a1ce668] = 8
 nul chk table  [0x000000010a1ce668,0x000000010a1ce680] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x000000010a1ce040, 0x000000010a1ce298]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010eb83940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x000000010a1ce040: mov    %eax,-0x14000(%rsp)
  0x000000010a1ce047: push   %rbp
  0x000000010a1ce048: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000010a1ce04c: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x000000010a1ce256
  0x000000010a1ce050: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1ce057: jne    0x000000010a1ce076  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce059: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x000000010a1ce05d: mov    %r11d,%eax
  0x000000010a1ce060: shr    $0x10,%eax
  0x000000010a1ce063: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x000000010a1ce066: add    $0x20,%rsp
  0x000000010a1ce06a: pop    %rbp
  0x000000010a1ce06b: mov    0x108(%r15),%r10
  0x000000010a1ce072: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1ce075: retq   
  0x000000010a1ce076: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x000000010a1ce07d: jne    0x000000010a1ce218  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce083: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce087: test   %r11d,%r11d
  0x000000010a1ce08a: jne    0x000000010a1ce05d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce08c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce08f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x000000010a1ce266
  0x000000010a1ce094: test   %ecx,%ecx
  0x000000010a1ce096: jbe    0x000000010a1ce210  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce09c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce0a0: test   %ebp,%ebp
  0x000000010a1ce0a2: jne    0x000000010a1ce242  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce0a8: mov    %ecx,%r11d
  0x000000010a1ce0ab: dec    %r11d
  0x000000010a1ce0ae: cmp    %ecx,%r11d
  0x000000010a1ce0b1: jae    0x000000010a1ce22a
  0x000000010a1ce0b7: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce0bd: mov    %ecx,%r13d
  0x000000010a1ce0c0: add    $0xfffffff9,%r13d
  0x000000010a1ce0c4: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce0c8: mov    $0x80000000,%r9d
  0x000000010a1ce0ce: cmp    %r13d,%r11d
  0x000000010a1ce0d1: cmovl  %r9d,%r13d
  0x000000010a1ce0d5: mov    $0x1,%r9d
  0x000000010a1ce0db: cmp    $0x1,%r13d
  0x000000010a1ce0df: jle    0x000000010a1ce1dd
  0x000000010a1ce0e5: mov    %r8d,%ebx
  0x000000010a1ce0e8: shl    $0x5,%ebx
  0x000000010a1ce0eb: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce0ee: jmp    0x000000010a1ce0f4
  0x000000010a1ce0f0: vmovd  %xmm0,%ecx
  0x000000010a1ce0f4: mov    %r13d,%r14d
  0x000000010a1ce0f7: sub    %r9d,%r14d
  0x000000010a1ce0fa: mov    $0x1f40,%r10d
  0x000000010a1ce100: cmp    %r10d,%r14d
  0x000000010a1ce103: mov    $0x1f40,%r11d
  0x000000010a1ce109: cmovg  %r11d,%r14d
  0x000000010a1ce10d: add    %r9d,%r14d
  0x000000010a1ce110: vmovd  %ecx,%xmm0
  0x000000010a1ce114: nopl   0x0(%rax,%rax,1)
  0x000000010a1ce11c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce120: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce123: movzbl 0x10(%rax,%r11,1),%r10d
  0x000000010a1ce129: movzbl 0x17(%rax,%r11,1),%ecx
  0x000000010a1ce12f: movzbl 0x11(%rax,%r11,1),%edx
  0x000000010a1ce135: movzbl 0x16(%rax,%r11,1),%edi
  0x000000010a1ce13b: movzbl 0x15(%rax,%r11,1),%ebp
  0x000000010a1ce141: add    %r10d,%ebx
  0x000000010a1ce144: movzbl 0x13(%rax,%r11,1),%r10d
  0x000000010a1ce14a: mov    %ebx,%r8d
  0x000000010a1ce14d: shl    $0x5,%r8d
  0x000000010a1ce151: sub    %ebx,%r8d
  0x000000010a1ce154: add    %edx,%r8d
  0x000000010a1ce157: movzbl 0x12(%rax,%r11,1),%ebx
  0x000000010a1ce15d: movzbl 0x14(%rax,%r11,1),%edx
  0x000000010a1ce163: mov    %r8d,%r11d
  0x000000010a1ce166: shl    $0x5,%r11d
  0x000000010a1ce16a: sub    %r8d,%r11d
  0x000000010a1ce16d: add    %ebx,%r11d
  0x000000010a1ce170: mov    %r11d,%ebx
  0x000000010a1ce173: shl    $0x5,%ebx
  0x000000010a1ce176: sub    %r11d,%ebx
  0x000000010a1ce179: add    %r10d,%ebx
  0x000000010a1ce17c: mov    %ebx,%r11d
  0x000000010a1ce17f: shl    $0x5,%r11d
  0x000000010a1ce183: sub    %ebx,%r11d
  0x000000010a1ce186: add    %edx,%r11d
  0x000000010a1ce189: mov    %r11d,%r8d
  0x000000010a1ce18c: shl    $0x5,%r8d
  0x000000010a1ce190: sub    %r11d,%r8d
  0x000000010a1ce193: add    %ebp,%r8d
  0x000000010a1ce196: mov    %r8d,%r10d
  0x000000010a1ce199: shl    $0x5,%r10d
  0x000000010a1ce19d: sub    %r8d,%r10d
  0x000000010a1ce1a0: add    %edi,%r10d
  0x000000010a1ce1a3: mov    %r10d,%r8d
  0x000000010a1ce1a6: shl    $0x5,%r8d
  0x000000010a1ce1aa: sub    %r10d,%r8d
  0x000000010a1ce1ad: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1b0: mov    %r8d,%ebx
  0x000000010a1ce1b3: shl    $0x5,%ebx
  0x000000010a1ce1b6: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1b9: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1bd: cmp    %r14d,%r9d
  0x000000010a1ce1c0: jl     0x000000010a1ce120  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1c6: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1cd: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x000000010a1ce1d0: cmp    %r13d,%r9d
  0x000000010a1ce1d3: jl     0x000000010a1ce0f0
  0x000000010a1ce1d9: vmovd  %xmm0,%ecx
  0x000000010a1ce1dd: cmp    %ecx,%r9d
  0x000000010a1ce1e0: jge    0x000000010a1ce20b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1e2: movzbl 0x10(%rax,%r9,1),%r10d
  0x000000010a1ce1e8: mov    %r8d,%r11d
  0x000000010a1ce1eb: shl    $0x5,%r11d
  0x000000010a1ce1ef: sub    %r8d,%r11d
  0x000000010a1ce1f2: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1f5: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1f8: cmp    %ecx,%r9d
  0x000000010a1ce1fb: jge    0x000000010a1ce202  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce1fd: mov    %r11d,%r8d
  0x000000010a1ce200: jmp    0x000000010a1ce1e2
  0x000000010a1ce202: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce206: jmpq   0x000000010a1ce05d
  0x000000010a1ce20b: mov    %r8d,%r11d
  0x000000010a1ce20e: jmp    0x000000010a1ce202
  0x000000010a1ce210: xor    %r11d,%r11d
  0x000000010a1ce213: jmpq   0x000000010a1ce05d
  0x000000010a1ce218: mov    %rsi,%rbp
  0x000000010a1ce21b: mov    $0xffffffc6,%esi
  0x000000010a1ce220: data16 xchg %ax,%ax
  0x000000010a1ce223: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce228: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce22a: mov    %rsi,%rbp
  0x000000010a1ce22d: mov    %ebx,(%rsp)
  0x000000010a1ce230: mov    %ecx,0x8(%rsp)
  0x000000010a1ce234: mov    $0xffffff7e,%esi
  0x000000010a1ce239: xchg   %ax,%ax
  0x000000010a1ce23b: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce240: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce242: mov    %rsi,0x8(%rsp)
  0x000000010a1ce247: mov    $0xffffff4d,%esi
  0x000000010a1ce24c: data16 xchg %ax,%ax
  0x000000010a1ce24f: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce254: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce256: mov    %rsi,(%rsp)
  0x000000010a1ce25a: mov    $0xffffff4d,%esi
  0x000000010a1ce25f: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce264: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x000000010a1ce266: mov    $0xfffffff6,%esi
  0x000000010a1ce26b: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce270: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x000000010a1ce272: hlt    
  0x000000010a1ce273: hlt    
  0x000000010a1ce274: hlt    
  0x000000010a1ce275: hlt    
  0x000000010a1ce276: hlt    
  0x000000010a1ce277: hlt    
  0x000000010a1ce278: hlt    
  0x000000010a1ce279: hlt    
  0x000000010a1ce27a: hlt    
  0x000000010a1ce27b: hlt    
  0x000000010a1ce27c: hlt    
  0x000000010a1ce27d: hlt    
  0x000000010a1ce27e: hlt    
  0x000000010a1ce27f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1ce280: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1ce285: callq  0x000000010a1ce28a
  0x000000010a1ce28a: subq   $0x5,(%rsp)
  0x000000010a1ce28f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1ce294: hlt    
  0x000000010a1ce295: hlt    
  0x000000010a1ce296: hlt    
  0x000000010a1ce297: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     241   66             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x000000010a1ce690,0x000000010a1cedc8] = 1848
 relocation     [0x000000010a1ce808,0x000000010a1ce830] = 40
 main code      [0x000000010a1ce840,0x000000010a1ce9c0] = 384
 stub code      [0x000000010a1ce9c0,0x000000010a1ce9d8] = 24
 metadata       [0x000000010a1ce9d8,0x000000010a1ce9f0] = 24
 scopes data    [0x000000010a1ce9f0,0x000000010a1ceb60] = 368
 scopes pcs     [0x000000010a1ceb60,0x000000010a1ceda0] = 576
 dependencies   [0x000000010a1ceda0,0x000000010a1ceda8] = 8
 nul chk table  [0x000000010a1ceda8,0x000000010a1cedc8] = 32
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x000000010a1ce840, 0x000000010a1ce9d8]  408 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010eb84540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010a1ce840: mov    0x8(%rsi),%r10d
  0x000000010a1ce844: movabs $0x800000000,%r12
  0x000000010a1ce84e: add    %r12,%r10
  0x000000010a1ce851: xor    %r12,%r12
  0x000000010a1ce854: cmp    %r10,%rax
  0x000000010a1ce857: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1ce85d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1ce860: mov    %eax,-0x14000(%rsp)
  0x000000010a1ce867: push   %rbp
  0x000000010a1ce868: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x000000010a1ce86c: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x000000010a1ce870: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x000000010a1ce972
  0x000000010a1ce875: test   %r8d,%r8d
  0x000000010a1ce878: jbe    0x000000010a1ce8f9  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000010a1ce87a: shl    $0x3,%r10
  0x000000010a1ce87e: dec    %r8d
  0x000000010a1ce881: and    %edx,%r8d
  0x000000010a1ce884: mov    0x10(%r10,%r8,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x000000010a1ce889: test   %r8d,%r8d
  0x000000010a1ce88c: je     0x000000010a1ce8e7  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x000000010a1ce88e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)

  0x000000010a1ce893: cmp    %edx,%ebp
  0x000000010a1ce895: jne    0x000000010a1ce956  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x000000010a1ce89b: mov    0x10(%r12,%r8,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x000000010a1ce8a0: mov    %rbp,%r10
  0x000000010a1ce8a3: shl    $0x3,%r10
  0x000000010a1ce8a7: cmp    %rcx,%r10
  0x000000010a1ce8aa: je     0x000000010a1ce8e1  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x000000010a1ce8ac: mov    0x8(%rcx),%r10d    ; implicit exception: dispatches to 0x000000010a1ce9a2
  0x000000010a1ce8b0: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1ce8b7: jne    0x000000010a1ce916  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce8b9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x000000010a1ce98a
  0x000000010a1ce8be: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1ce8c5: jne    0x000000010a1ce932  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce8c7: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1ce8ce: jne    0x000000010a1ce94a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce8d0: mov    0xc(%rcx),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce8d4: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce8d8: mov    0xc(%r10),%r9d
  0x000000010a1ce8dc: cmp    %r9d,%r11d
  0x000000010a1ce8df: jne    0x000000010a1ce932  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x000000010a1ce8e1: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x000000010a1ce8e5: jmp    0x000000010a1ce8e9
  0x000000010a1ce8e7: xor    %eax,%eax          ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x000000010a1ce8e9: add    $0x30,%rsp
  0x000000010a1ce8ed: pop    %rbp
  0x000000010a1ce8ee: mov    0x108(%r15),%r10
  0x000000010a1ce8f5: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1ce8f8: retq   
  0x000000010a1ce8f9: mov    $0xffffff4d,%esi
  0x000000010a1ce8fe: mov    %edx,%ebp
  0x000000010a1ce900: mov    %rcx,(%rsp)
  0x000000010a1ce904: mov    %r10d,0x8(%rsp)
  0x000000010a1ce909: mov    %r8d,0x10(%rsp)
  0x000000010a1ce90e: nop
  0x000000010a1ce90f: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce914: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x000000010a1ce916: mov    $0xffffffde,%esi
  0x000000010a1ce91b: mov    %edx,(%rsp)
  0x000000010a1ce91e: mov    %rcx,0x10(%rsp)
  0x000000010a1ce923: mov    %r8d,0x4(%rsp)
  0x000000010a1ce928: data16 xchg %ax,%ax
  0x000000010a1ce92b: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce930: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)

  0x000000010a1ce932: mov    $0xffffff4d,%esi
  0x000000010a1ce937: mov    %edx,%ebp
  0x000000010a1ce939: mov    %rcx,(%rsp)
  0x000000010a1ce93d: mov    %r8d,0x8(%rsp)
  0x000000010a1ce942: nop
  0x000000010a1ce943: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce948: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)

  0x000000010a1ce94a: mov    $0xffffffde,%esi
  0x000000010a1ce94f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce954: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce956: mov    $0xffffff4d,%esi
  0x000000010a1ce95b: mov    %rcx,0x8(%rsp)
  0x000000010a1ce960: mov    %edx,0x4(%rsp)
  0x000000010a1ce964: mov    %r8d,0x10(%rsp)
  0x000000010a1ce969: xchg   %ax,%ax
  0x000000010a1ce96b: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce970: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x000000010a1ce972: mov    $0xffffff4d,%esi
  0x000000010a1ce977: mov    %edx,%ebp
  0x000000010a1ce979: mov    %rcx,(%rsp)
  0x000000010a1ce97d: mov    %r10d,0xc(%rsp)
  0x000000010a1ce982: nop
  0x000000010a1ce983: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce988: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x000000010a1ce98a: mov    $0xfffffff4,%esi
  0x000000010a1ce98f: mov    %edx,%ebp
  0x000000010a1ce991: mov    %rcx,0x8(%rsp)
  0x000000010a1ce996: mov    %r8d,0x10(%rsp)
  0x000000010a1ce99b: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce9a0: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x000000010a1ce9a2: mov    $0xffffff4d,%esi
  0x000000010a1ce9a7: mov    %edx,(%rsp)
  0x000000010a1ce9aa: mov    %rcx,0x10(%rsp)
  0x000000010a1ce9af: mov    %r8d,0x4(%rsp)
  0x000000010a1ce9b4: data16 xchg %ax,%ax
  0x000000010a1ce9b7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1ce9bc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x000000010a1ce9be: hlt    
  0x000000010a1ce9bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1ce9c0: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1ce9c5: callq  0x000000010a1ce9ca
  0x000000010a1ce9ca: subq   $0x5,(%rsp)
  0x000000010a1ce9cf: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1ce9d4: hlt    
  0x000000010a1ce9d5: hlt    
  0x000000010a1ce9d6: hlt    
  0x000000010a1ce9d7: hlt    

ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 212 
ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }pc offsets: 240 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 264 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 276 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 304 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 328 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 352 
ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }pc offsets: 380 Compiled method (c2)     252   67             java.util.HashMap::get (23 bytes)
 total in heap  [0x000000010a1cba90,0x000000010a1cc7f8] = 3432
 relocation     [0x000000010a1cbc08,0x000000010a1cbc40] = 56
 main code      [0x000000010a1cbc40,0x000000010a1cc040] = 1024
 stub code      [0x000000010a1cc040,0x000000010a1cc058] = 24
 metadata       [0x000000010a1cc058,0x000000010a1cc0a0] = 72
 scopes data    [0x000000010a1cc0a0,0x000000010a1cc388] = 744
 scopes pcs     [0x000000010a1cc388,0x000000010a1cc7c8] = 1088
 dependencies   [0x000000010a1cc7c8,0x000000010a1cc7d0] = 8
 nul chk table  [0x000000010a1cc7d0,0x000000010a1cc7f8] = 40
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x000000010a1cbc40, 0x000000010a1cc058]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010eb84398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010a1cbc40: mov    0x8(%rsi),%r10d
  0x000000010a1cbc44: movabs $0x800000000,%r12
  0x000000010a1cbc4e: add    %r12,%r10
  0x000000010a1cbc51: xor    %r12,%r12
  0x000000010a1cbc54: cmp    %r10,%rax
  0x000000010a1cbc57: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1cbc5d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1cbc60: mov    %eax,-0x14000(%rsp)
  0x000000010a1cbc67: push   %rbp
  0x000000010a1cbc68: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000010a1cbc6c: mov    0x8(%rdx),%r13d    ; implicit exception: dispatches to 0x000000010a1cbfca
  0x000000010a1cbc70: cmp    $0x13c78,%r13d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cbc77: jne    0x000000010a1cbd33
  0x000000010a1cbc7d: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbc80: mov    0xc(%r10),%r8d     ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbc84: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbc88: mov    %r8d,%r9d
  0x000000010a1cbc8b: shr    $0x10,%r9d
  0x000000010a1cbc8f: xor    %r8d,%r9d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbc92: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x000000010a1cbfe6
  0x000000010a1cbc97: test   %r8d,%r8d
  0x000000010a1cbc9a: jbe    0x000000010a1cbeed  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbca0: dec    %r8d
  0x000000010a1cbca3: and    %r9d,%r8d
  0x000000010a1cbca6: shl    $0x3,%r10
  0x000000010a1cbcaa: mov    0x10(%r10,%r8,4),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcaf: test   %r10d,%r10d
  0x000000010a1cbcb2: jne    0x000000010a1cbcb8  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcb4: xor    %eax,%eax
  0x000000010a1cbcb6: jmp    0x000000010a1cbd23
  0x000000010a1cbcb8: mov    0xc(%r12,%r10,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcbd: cmp    %r9d,%r8d
  0x000000010a1cbcc0: jne    0x000000010a1cbf52  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcc6: mov    0x10(%r12,%r10,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbccb: mov    %r11,%r8
  0x000000010a1cbcce: shl    $0x3,%r8
  0x000000010a1cbcd2: cmp    %rdx,%r8
  0x000000010a1cbcd5: je     0x000000010a1cbd17  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcd7: cmp    $0x13c78,%r13d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cbcde: jne    0x000000010a1cbf0a  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbce4: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x000000010a1cbffe
  0x000000010a1cbce9: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010a1cbcf0: jne    0x000000010a1cbf2a  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbcf6: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010a1cbcfd: jne    0x000000010a1cbf42  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbd03: mov    0xc(%rdx),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbd06: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbd0a: mov    0xc(%r11),%r8d
  0x000000010a1cbd0e: cmp    %r8d,%ecx
  0x000000010a1cbd11: jne    0x000000010a1cbf2a  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbd17: mov    0x14(%r12,%r10,8),%r11d
  0x000000010a1cbd1c: mov    %r11,%rax
  0x000000010a1cbd1f: shl    $0x3,%rax          ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000010a1cbd23: add    $0x30,%rsp
  0x000000010a1cbd27: pop    %rbp
  0x000000010a1cbd28: mov    0x108(%r15),%r10
  0x000000010a1cbd2f: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1cbd32: retq   
  0x000000010a1cbd33: cmp    $0x1808,%r13d      ;   {metadata('java/lang/String')}
  0x000000010a1cbd3a: jne    0x000000010a1cbf72
  0x000000010a1cbd40: mov    %rdx,%rcx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd43: mov    0x10(%rcx),%r8d    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd47: test   %r8d,%r8d
  0x000000010a1cbd4a: jne    0x000000010a1cbc84  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd50: mov    0xc(%rcx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd54: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x000000010a1cc01a
  0x000000010a1cbd59: test   %r9d,%r9d
  0x000000010a1cbd5c: jbe    0x000000010a1cbee5  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd62: movsbl 0x14(%rcx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd66: test   %ebp,%ebp
  0x000000010a1cbd68: jne    0x000000010a1cbfae  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd6e: mov    %r9d,%r10d
  0x000000010a1cbd71: dec    %r10d
  0x000000010a1cbd74: cmp    %r9d,%r10d
  0x000000010a1cbd77: jae    0x000000010a1cbf8a
  0x000000010a1cbd7d: movzbl 0x10(%r12,%r8,8),%r10d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd83: mov    %r9d,%ebx
  0x000000010a1cbd86: add    $0xfffffff9,%ebx
  0x000000010a1cbd89: lea    (%r12,%r8,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbd8d: mov    $0x1,%edi
  0x000000010a1cbd92: cmp    $0x1,%ebx
  0x000000010a1cbd95: jle    0x000000010a1cbeb3
  0x000000010a1cbd9b: mov    %r10d,%r8d
  0x000000010a1cbd9e: shl    $0x5,%r8d
  0x000000010a1cbda2: sub    %r10d,%r8d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbda5: jmp    0x000000010a1cbdb9
  0x000000010a1cbda7: vmovq  %xmm0,%rcx
  0x000000010a1cbdac: vmovd  %xmm2,%r9d
  0x000000010a1cbdb1: vmovq  %xmm1,%rdx
  0x000000010a1cbdb6: mov    (%rsp),%ebx
  0x000000010a1cbdb9: mov    %r9d,%r10d
  0x000000010a1cbdbc: sub    %edi,%r10d
  0x000000010a1cbdbf: add    $0xfffffff9,%r10d
  0x000000010a1cbdc3: mov    $0x1f40,%r11d
  0x000000010a1cbdc9: cmp    %r10d,%r11d
  0x000000010a1cbdcc: mov    $0x1f40,%r14d
  0x000000010a1cbdd2: cmovg  %r10d,%r14d
  0x000000010a1cbdd6: add    %edi,%r14d
  0x000000010a1cbdd9: vmovq  %rcx,%xmm0
  0x000000010a1cbdde: vmovd  %r9d,%xmm2
  0x000000010a1cbde3: vmovq  %rdx,%xmm1
  0x000000010a1cbde8: mov    %ebx,(%rsp)
  0x000000010a1cbdeb: nopl   0x0(%rax,%rax,1)   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbdf0: movslq %edi,%r10          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbdf3: movzbl 0x10(%rax,%r10,1),%ecx
  0x000000010a1cbdf9: movzbl 0x17(%rax,%r10,1),%r9d
  0x000000010a1cbdff: add    %ecx,%r8d
  0x000000010a1cbe02: movzbl 0x16(%rax,%r10,1),%ebx
  0x000000010a1cbe08: mov    %r8d,%ebp
  0x000000010a1cbe0b: shl    $0x5,%ebp
  0x000000010a1cbe0e: sub    %r8d,%ebp
  0x000000010a1cbe11: movzbl 0x15(%rax,%r10,1),%r8d
  0x000000010a1cbe17: movzbl 0x14(%rax,%r10,1),%r11d
  0x000000010a1cbe1d: movzbl 0x13(%rax,%r10,1),%ecx
  0x000000010a1cbe23: movzbl 0x12(%rax,%r10,1),%edx
  0x000000010a1cbe29: movzbl 0x11(%rax,%r10,1),%r10d
  0x000000010a1cbe2f: add    %r10d,%ebp
  0x000000010a1cbe32: mov    %ebp,%r10d
  0x000000010a1cbe35: shl    $0x5,%r10d
  0x000000010a1cbe39: sub    %ebp,%r10d
  0x000000010a1cbe3c: add    %edx,%r10d
  0x000000010a1cbe3f: mov    %r10d,%ebp
  0x000000010a1cbe42: shl    $0x5,%ebp
  0x000000010a1cbe45: sub    %r10d,%ebp
  0x000000010a1cbe48: add    %ecx,%ebp
  0x000000010a1cbe4a: mov    %ebp,%ecx
  0x000000010a1cbe4c: shl    $0x5,%ecx
  0x000000010a1cbe4f: sub    %ebp,%ecx
  0x000000010a1cbe51: add    %r11d,%ecx
  0x000000010a1cbe54: mov    %ecx,%r10d
  0x000000010a1cbe57: shl    $0x5,%r10d
  0x000000010a1cbe5b: sub    %ecx,%r10d
  0x000000010a1cbe5e: add    %r8d,%r10d
  0x000000010a1cbe61: mov    %r10d,%r11d
  0x000000010a1cbe64: shl    $0x5,%r11d
  0x000000010a1cbe68: sub    %r10d,%r11d
  0x000000010a1cbe6b: add    %ebx,%r11d
  0x000000010a1cbe6e: mov    %r11d,%r10d
  0x000000010a1cbe71: shl    $0x5,%r10d
  0x000000010a1cbe75: sub    %r11d,%r10d
  0x000000010a1cbe78: add    %r9d,%r10d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbe7b: mov    %r10d,%r8d
  0x000000010a1cbe7e: shl    $0x5,%r8d
  0x000000010a1cbe82: sub    %r10d,%r8d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbe85: add    $0x8,%edi          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbe88: cmp    %r14d,%edi
  0x000000010a1cbe8b: jl     0x000000010a1cbdf0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbe91: mov    0x108(%r15),%r11   ; ImmutableOopMap{rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbe98: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x000000010a1cbe9b: cmp    (%rsp),%edi
  0x000000010a1cbe9e: jl     0x000000010a1cbda7
  0x000000010a1cbea4: vmovq  %xmm0,%rcx
  0x000000010a1cbea9: vmovd  %xmm2,%r9d
  0x000000010a1cbeae: vmovq  %xmm1,%rdx
  0x000000010a1cbeb3: cmp    %r9d,%edi
  0x000000010a1cbeb6: jge    0x000000010a1cbee0  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbeb8: movzbl 0x10(%rax,%rdi,1),%r14d
  0x000000010a1cbebe: mov    %r10d,%r8d
  0x000000010a1cbec1: shl    $0x5,%r8d
  0x000000010a1cbec5: sub    %r10d,%r8d
  0x000000010a1cbec8: add    %r14d,%r8d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbecb: inc    %edi               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbecd: cmp    %r9d,%edi
  0x000000010a1cbed0: jge    0x000000010a1cbed7  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbed2: mov    %r8d,%r10d
  0x000000010a1cbed5: jmp    0x000000010a1cbeb8
  0x000000010a1cbed7: mov    %r8d,0x10(%rcx)    ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbedb: jmpq   0x000000010a1cbc84
  0x000000010a1cbee0: mov    %r10d,%r8d
  0x000000010a1cbee3: jmp    0x000000010a1cbed7
  0x000000010a1cbee5: xor    %r8d,%r8d
  0x000000010a1cbee8: jmpq   0x000000010a1cbc84  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbeed: mov    $0xffffff4d,%esi
  0x000000010a1cbef2: mov    %r9d,%ebp
  0x000000010a1cbef5: mov    %rdx,(%rsp)
  0x000000010a1cbef9: mov    %r10d,0x8(%rsp)
  0x000000010a1cbefe: mov    %r8d,0x10(%rsp)
  0x000000010a1cbf03: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf08: ud2    
  0x000000010a1cbf0a: mov    $0xffffffde,%esi
  0x000000010a1cbf0f: mov    %r9d,%ebp
  0x000000010a1cbf12: mov    %r10d,0x8(%rsp)
  0x000000010a1cbf17: mov    %rdx,0x10(%rsp)
  0x000000010a1cbf1c: mov    %r11d,0xc(%rsp)
  0x000000010a1cbf21: xchg   %ax,%ax
  0x000000010a1cbf23: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf28: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbf2a: mov    $0xffffff4d,%esi
  0x000000010a1cbf2f: mov    %r9d,%ebp
  0x000000010a1cbf32: mov    %rdx,(%rsp)
  0x000000010a1cbf36: mov    %r10d,0x8(%rsp)
  0x000000010a1cbf3b: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf40: ud2    
  0x000000010a1cbf42: mov    $0xffffffde,%esi
  0x000000010a1cbf47: mov    %r11d,%ebp
  0x000000010a1cbf4a: nop
  0x000000010a1cbf4b: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf50: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbf52: mov    $0xffffff4d,%esi
  0x000000010a1cbf57: mov    %rdx,(%rsp)
  0x000000010a1cbf5b: mov    %r10d,0x8(%rsp)
  0x000000010a1cbf60: mov    %r8d,0xc(%rsp)
  0x000000010a1cbf65: mov    %r9d,0x10(%rsp)
  0x000000010a1cbf6a: nop
  0x000000010a1cbf6b: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf70: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbf72: mov    %rsi,(%rsp)
  0x000000010a1cbf76: mov    %rdx,0x8(%rsp)
  0x000000010a1cbf7b: mov    $0xffffffc6,%esi
  0x000000010a1cbf80: data16 xchg %ax,%ax
  0x000000010a1cbf83: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbf88: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbf8a: mov    %rdx,%rbp
  0x000000010a1cbf8d: mov    %rsi,(%rsp)
  0x000000010a1cbf91: mov    %rcx,0x8(%rsp)
  0x000000010a1cbf96: mov    %r8d,0x10(%rsp)
  0x000000010a1cbf9b: mov    %r9d,0x18(%rsp)
  0x000000010a1cbfa0: mov    $0xffffff7e,%esi
  0x000000010a1cbfa5: xchg   %ax,%ax
  0x000000010a1cbfa7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbfac: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbfae: mov    %rdx,(%rsp)
  0x000000010a1cbfb2: mov    %rsi,0x8(%rsp)
  0x000000010a1cbfb7: mov    %rcx,0x18(%rsp)
  0x000000010a1cbfbc: mov    $0xffffff4d,%esi
  0x000000010a1cbfc1: xchg   %ax,%ax
  0x000000010a1cbfc3: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbfc8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cbfca: mov    %rsi,(%rsp)
  0x000000010a1cbfce: mov    %rdx,0x8(%rsp)
  0x000000010a1cbfd3: mov    %rdx,0x10(%rsp)
  0x000000010a1cbfd8: mov    $0xffffff4d,%esi
  0x000000010a1cbfdd: xchg   %ax,%ax
  0x000000010a1cbfdf: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbfe4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cbfe6: mov    $0xffffff4d,%esi
  0x000000010a1cbfeb: mov    %r9d,%ebp
  0x000000010a1cbfee: mov    %rdx,(%rsp)
  0x000000010a1cbff2: mov    %r10d,0xc(%rsp)
  0x000000010a1cbff7: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cbffc: ud2    
  0x000000010a1cbffe: mov    $0xfffffff4,%esi
  0x000000010a1cc003: mov    %r9d,%ebp
  0x000000010a1cc006: mov    %r10d,0x8(%rsp)
  0x000000010a1cc00b: mov    %rdx,0x10(%rsp)
  0x000000010a1cc010: data16 xchg %ax,%ax
  0x000000010a1cc013: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cc018: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000010a1cc01a: mov    $0xfffffff6,%esi
  0x000000010a1cc01f: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cc024: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000010a1cc026: hlt    
  0x000000010a1cc027: hlt    
  0x000000010a1cc028: hlt    
  0x000000010a1cc029: hlt    
  0x000000010a1cc02a: hlt    
  0x000000010a1cc02b: hlt    
  0x000000010a1cc02c: hlt    
  0x000000010a1cc02d: hlt    
  0x000000010a1cc02e: hlt    
  0x000000010a1cc02f: hlt    
  0x000000010a1cc030: hlt    
  0x000000010a1cc031: hlt    
  0x000000010a1cc032: hlt    
  0x000000010a1cc033: hlt    
  0x000000010a1cc034: hlt    
  0x000000010a1cc035: hlt    
  0x000000010a1cc036: hlt    
  0x000000010a1cc037: hlt    
  0x000000010a1cc038: hlt    
  0x000000010a1cc039: hlt    
  0x000000010a1cc03a: hlt    
  0x000000010a1cc03b: hlt    
  0x000000010a1cc03c: hlt    
  0x000000010a1cc03d: hlt    
  0x000000010a1cc03e: hlt    
  0x000000010a1cc03f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1cc040: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1cc045: callq  0x000000010a1cc04a
  0x000000010a1cc04a: subq   $0x5,(%rsp)
  0x000000010a1cc04f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1cc054: hlt    
  0x000000010a1cc055: hlt    
  0x000000010a1cc056: hlt    
  0x000000010a1cc057: hlt    

ImmutableOopMap{rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 600 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 712 
ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }pc offsets: 744 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 768 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 784 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 816 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 840 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }pc offsets: 876 
ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }pc offsets: 904 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 932 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 956 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 984 
ImmutableOopMap{}pc offsets: 996 Compiled method (c2)     265   68             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x000000010a1cb610,0x000000010a1cba40] = 1072
 relocation     [0x000000010a1cb788,0x000000010a1cb7a8] = 32
 main code      [0x000000010a1cb7c0,0x000000010a1cb8c0] = 256
 stub code      [0x000000010a1cb8c0,0x000000010a1cb8d8] = 24
 oops           [0x000000010a1cb8d8,0x000000010a1cb8e0] = 8
 metadata       [0x000000010a1cb8e0,0x000000010a1cb8f0] = 16
 scopes data    [0x000000010a1cb8f0,0x000000010a1cb940] = 80
 scopes pcs     [0x000000010a1cb940,0x000000010a1cba20] = 224
 dependencies   [0x000000010a1cba20,0x000000010a1cba28] = 8
 handler table  [0x000000010a1cba28,0x000000010a1cba40] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x000000010a1cb7c0, 0x000000010a1cb8d8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010eb55a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000010a1cb7c0: mov    %eax,-0x14000(%rsp)
  0x000000010a1cb7c7: push   %rbp
  0x000000010a1cb7c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010a1cb7cc: mov    %esi,(%rsp)
  0x000000010a1cb7cf: cmp    $0xffffff80,%esi
  0x000000010a1cb7d2: jl     0x000000010a1cb882  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010a1cb7d8: cmp    $0x7f,%esi
  0x000000010a1cb7db: jle    0x000000010a1cb83f  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x000000010a1cb7dd: mov    0x118(%r15),%rax
  0x000000010a1cb7e4: mov    %rax,%r10
  0x000000010a1cb7e7: add    $0x10,%r10
  0x000000010a1cb7eb: cmp    0x128(%r15),%r10
  0x000000010a1cb7f2: jae    0x000000010a1cb86d
  0x000000010a1cb7f4: mov    %r10,0x118(%r15)
  0x000000010a1cb7fb: prefetchnta 0xc0(%r10)
  0x000000010a1cb803: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cb809: movabs $0x800000000,%r10
  0x000000010a1cb813: add    %r11,%r10
  0x000000010a1cb816: mov    0xb8(%r10),%r10
  0x000000010a1cb81d: mov    %r10,(%rax)
  0x000000010a1cb820: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1cb827: mov    (%rsp),%r11d
  0x000000010a1cb82b: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000010a1cb82f: add    $0x20,%rsp
  0x000000010a1cb833: pop    %rbp
  0x000000010a1cb834: mov    0x108(%r15),%r10
  0x000000010a1cb83b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1cb83e: retq   
  0x000000010a1cb83f: mov    %esi,%ebp
  0x000000010a1cb841: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x000000010a1cb847: cmp    $0x100,%ebp
  0x000000010a1cb84d: jae    0x000000010a1cb892
  0x000000010a1cb84f: movslq %esi,%r10
  0x000000010a1cb852: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1cb85c: mov    0x210(%r11,%r10,4),%r10d
  0x000000010a1cb864: shl    $0x3,%r10          ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x000000010a1cb868: mov    %r10,%rax
  0x000000010a1cb86b: jmp    0x000000010a1cb82f
  0x000000010a1cb86d: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1cb877: mov    (%rsp),%ebp
  0x000000010a1cb87a: nop
  0x000000010a1cb87b: callq  0x000000010a1b0100  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1cb880: jmp    0x000000010a1cb827
  0x000000010a1cb882: mov    $0xffffff4d,%esi
  0x000000010a1cb887: mov    (%rsp),%ebp
  0x000000010a1cb88a: nop
  0x000000010a1cb88b: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cb890: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000010a1cb892: mov    $0xffffffe4,%esi
  0x000000010a1cb897: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cb89c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000010a1cb89e: mov    %rax,%rsi
  0x000000010a1cb8a1: add    $0x20,%rsp
  0x000000010a1cb8a5: pop    %rbp
  0x000000010a1cb8a6: jmpq   0x000000010a1b2580  ;   {runtime_call _rethrow_Java}
  0x000000010a1cb8ab: hlt    
  0x000000010a1cb8ac: hlt    
  0x000000010a1cb8ad: hlt    
  0x000000010a1cb8ae: hlt    
  0x000000010a1cb8af: hlt    
  0x000000010a1cb8b0: hlt    
  0x000000010a1cb8b1: hlt    
  0x000000010a1cb8b2: hlt    
  0x000000010a1cb8b3: hlt    
  0x000000010a1cb8b4: hlt    
  0x000000010a1cb8b5: hlt    
  0x000000010a1cb8b6: hlt    
  0x000000010a1cb8b7: hlt    
  0x000000010a1cb8b8: hlt    
  0x000000010a1cb8b9: hlt    
  0x000000010a1cb8ba: hlt    
  0x000000010a1cb8bb: hlt    
  0x000000010a1cb8bc: hlt    
  0x000000010a1cb8bd: hlt    
  0x000000010a1cb8be: hlt    
  0x000000010a1cb8bf: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1cb8c0: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1cb8c5: callq  0x000000010a1cb8ca
  0x000000010a1cb8ca: subq   $0x5,(%rsp)
  0x000000010a1cb8cf: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1cb8d4: hlt    
  0x000000010a1cb8d5: hlt    
  0x000000010a1cb8d6: hlt    
  0x000000010a1cb8d7: hlt    

ImmutableOopMap{}pc offsets: 192 208 220 Compiled method (c2)     271   69             ProceduralHashMap::max100 (26 bytes)
 total in heap  [0x000000010a1d0990,0x000000010a1d1430] = 2720
 relocation     [0x000000010a1d0b08,0x000000010a1d0b50] = 72
 main code      [0x000000010a1d0b60,0x000000010a1d0e20] = 704
 stub code      [0x000000010a1d0e20,0x000000010a1d0e38] = 24
 oops           [0x000000010a1d0e38,0x000000010a1d0e48] = 16
 metadata       [0x000000010a1d0e48,0x000000010a1d0e98] = 80
 scopes data    [0x000000010a1d0e98,0x000000010a1d10a0] = 520
 scopes pcs     [0x000000010a1d10a0,0x000000010a1d13f0] = 848
 dependencies   [0x000000010a1d13f0,0x000000010a1d13f8] = 8
 handler table  [0x000000010a1d13f8,0x000000010a1d1410] = 24
 nul chk table  [0x000000010a1d1410,0x000000010a1d1430] = 32
----------------------------------------------------------------------
ProceduralHashMap.max100(I)I  [0x000000010a1d0b60, 0x000000010a1d0e38]  728 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ee5c850} 'max100' '(I)I' in 'ProceduralHashMap'
  # this:     rsi:rsi   = 'ProceduralHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x000000010a1d0b60: mov    0x8(%rsi),%r10d
  0x000000010a1d0b64: movabs $0x800000000,%r12
  0x000000010a1d0b6e: add    %r12,%r10
  0x000000010a1d0b71: xor    %r12,%r12
  0x000000010a1d0b74: cmp    %r10,%rax
  0x000000010a1d0b77: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1d0b7d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1d0b80: mov    %eax,-0x14000(%rsp)
  0x000000010a1d0b87: push   %rbp
  0x000000010a1d0b88: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::max100@-1 (line 48)

  0x000000010a1d0b8c: mov    %edx,(%rsp)
  0x000000010a1d0b8f: movabs $0x70fe0efc8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc8} = 'ProceduralHashMap')}
  0x000000010a1d0b99: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)

  0x000000010a1d0b9d: mov    %r11d,0x4(%rsp)
  0x000000010a1d0ba2: cmp    $0xffffff80,%edx
  0x000000010a1d0ba5: jl     0x000000010a1d0d4a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0bab: cmp    $0x7f,%edx
  0x000000010a1d0bae: jle    0x000000010a1d0ce4  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0bb4: mov    0x118(%r15),%r9
  0x000000010a1d0bbb: mov    %r9,%r10
  0x000000010a1d0bbe: add    $0x10,%r10
  0x000000010a1d0bc2: cmp    0x128(%r15),%r10
  0x000000010a1d0bc9: jae    0x000000010a1d0d19
  0x000000010a1d0bcf: mov    %r10,0x118(%r15)
  0x000000010a1d0bd6: prefetchnta 0xc0(%r10)
  0x000000010a1d0bde: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1d0be4: movabs $0x800000000,%r12
  0x000000010a1d0bee: add    %r12,%r10
  0x000000010a1d0bf1: xor    %r12,%r12
  0x000000010a1d0bf4: mov    0xb8(%r10),%r10
  0x000000010a1d0bfb: mov    %r10,(%r9)
  0x000000010a1d0bfe: movl   $0x13c78,0x8(%r9)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1d0c06: mov    (%rsp),%r10d
  0x000000010a1d0c0a: mov    %r10d,0xc(%r9)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0c0e: mov    0x4(%rsp),%r11d
  0x000000010a1d0c13: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x000000010a1d0dce
  0x000000010a1d0c18: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x000000010a1d0c1f: jne    0x000000010a1d0d34  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c25: mov    0xc(%r9),%r10d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c29: shl    $0x3,%r11          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c2d: mov    0x24(%r11),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c31: mov    %r10d,%ecx
  0x000000010a1d0c34: shr    $0x10,%ecx
  0x000000010a1d0c37: xor    %r10d,%ecx         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c3a: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; implicit exception: dispatches to 0x000000010a1d0dde
  0x000000010a1d0c3f: test   %ebp,%ebp
  0x000000010a1d0c41: jbe    0x000000010a1d0d5a  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c47: shl    $0x3,%r8
  0x000000010a1d0c4b: dec    %ebp
  0x000000010a1d0c4d: and    %ecx,%ebp
  0x000000010a1d0c4f: mov    0x10(%r8,%rbp,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c54: test   %r8d,%r8d
  0x000000010a1d0c57: jne    0x000000010a1d0c6e  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x000000010a1d0c59: mov    $0x64,%eax         ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)

  0x000000010a1d0c5e: add    $0x30,%rsp
  0x000000010a1d0c62: pop    %rbp
  0x000000010a1d0c63: mov    0x108(%r15),%r10
  0x000000010a1d0c6a: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1d0c6d: retq   
  0x000000010a1d0c6e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c73: cmp    %ecx,%ebp
  0x000000010a1d0c75: jne    0x000000010a1d0d9a  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c7b: mov    0x10(%r12,%r8,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c80: mov    %rbp,%rbx
  0x000000010a1d0c83: shl    $0x3,%rbx
  0x000000010a1d0c87: cmp    %r9,%rbx
  0x000000010a1d0c8a: je     0x000000010a1d0cbc  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c8c: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x000000010a1d0df6
  0x000000010a1d0c91: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1d0c98: jne    0x000000010a1d0d76  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0c9e: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1d0ca5: jne    0x000000010a1d0d8e
  0x000000010a1d0cab: lea    (%r12,%rbp,8),%r11  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0caf: mov    0xc(%r11),%r11d
  0x000000010a1d0cb3: cmp    %r11d,%r10d
  0x000000010a1d0cb6: jne    0x000000010a1d0d76  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0cbc: mov    0x14(%r12,%r8,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0cc1: test   %ebp,%ebp
  0x000000010a1d0cc3: je     0x000000010a1d0c59
  0x000000010a1d0cc5: mov    0x8(%r12,%rbp,8),%r11d
  0x000000010a1d0cca: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1d0cd1: jne    0x000000010a1d0dc2
  0x000000010a1d0cd7: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x000000010a1d0cdb: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@22 (line 52)

  0x000000010a1d0cdf: jmpq   0x000000010a1d0c5e
  0x000000010a1d0ce4: mov    %edx,%ebp
  0x000000010a1d0ce6: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0cec: cmp    $0x100,%ebp
  0x000000010a1d0cf2: jae    0x000000010a1d0db6
  0x000000010a1d0cf8: movslq %edx,%r10
  0x000000010a1d0cfb: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1d0d05: mov    0x210(%r11,%r10,4),%r10d
  0x000000010a1d0d0d: shl    $0x3,%r10          ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0d11: mov    %r10,%r9
  0x000000010a1d0d14: jmpq   0x000000010a1d0c0e
  0x000000010a1d0d19: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1d0d23: mov    0x4(%rsp),%ebp
  0x000000010a1d0d27: callq  0x000000010a1b0100  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1d0d2c: mov    %rax,%r9
  0x000000010a1d0d2f: jmpq   0x000000010a1d0c06
  0x000000010a1d0d34: mov    $0xffffffde,%esi
  0x000000010a1d0d39: mov    %r11d,%ebp
  0x000000010a1d0d3c: mov    %r9,(%rsp)
  0x000000010a1d0d40: data16 xchg %ax,%ax
  0x000000010a1d0d43: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0d48: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0d4a: mov    $0xffffff4d,%esi
  0x000000010a1d0d4f: mov    %r11d,%ebp
  0x000000010a1d0d52: nop
  0x000000010a1d0d53: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0d58: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0d5a: mov    $0xffffff4d,%esi
  0x000000010a1d0d5f: mov    %ecx,(%rsp)
  0x000000010a1d0d62: mov    %r9,0x8(%rsp)
  0x000000010a1d0d67: mov    %r8d,0x4(%rsp)
  0x000000010a1d0d6c: data16 xchg %ax,%ax
  0x000000010a1d0d6f: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0d74: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0d76: mov    $0xffffff4d,%esi
  0x000000010a1d0d7b: mov    %ecx,%ebp
  0x000000010a1d0d7d: mov    %r9,(%rsp)
  0x000000010a1d0d81: mov    %r8d,0x8(%rsp)
  0x000000010a1d0d86: nop
  0x000000010a1d0d87: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0d8c: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0d8e: mov    $0xffffffde,%esi
  0x000000010a1d0d93: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0d98: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0d9a: mov    $0xffffff4d,%esi
  0x000000010a1d0d9f: mov    %r9,0x8(%rsp)
  0x000000010a1d0da4: mov    %r8d,0x4(%rsp)
  0x000000010a1d0da9: mov    %ecx,0x10(%rsp)
  0x000000010a1d0dad: xchg   %ax,%ax
  0x000000010a1d0daf: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0db4: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0db6: mov    $0xffffffe4,%esi
  0x000000010a1d0dbb: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0dc0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0dc2: mov    $0xffffffde,%esi
  0x000000010a1d0dc7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0dcc: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)

  0x000000010a1d0dce: mov    $0xfffffff6,%esi
  0x000000010a1d0dd3: mov    %r9,%rbp
  0x000000010a1d0dd6: nop
  0x000000010a1d0dd7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0ddc: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0dde: mov    $0xffffff4d,%esi
  0x000000010a1d0de3: mov    %ecx,%ebp
  0x000000010a1d0de5: mov    %r9,(%rsp)
  0x000000010a1d0de9: mov    %r8d,0xc(%rsp)
  0x000000010a1d0dee: nop
  0x000000010a1d0def: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0df4: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)

  0x000000010a1d0df6: mov    $0xfffffff4,%esi
  0x000000010a1d0dfb: mov    %ecx,%ebp
  0x000000010a1d0dfd: mov    %r8d,0x8(%rsp)
  0x000000010a1d0e02: mov    %r9,0x10(%rsp)
  0x000000010a1d0e07: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d0e0c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)

  0x000000010a1d0e0e: mov    %rax,%rsi
  0x000000010a1d0e11: add    $0x30,%rsp
  0x000000010a1d0e15: pop    %rbp
  0x000000010a1d0e16: jmpq   0x000000010a1b2580  ;   {runtime_call _rethrow_Java}
  0x000000010a1d0e1b: hlt    
  0x000000010a1d0e1c: hlt    
  0x000000010a1d0e1d: hlt    
  0x000000010a1d0e1e: hlt    
  0x000000010a1d0e1f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1d0e20: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1d0e25: callq  0x000000010a1d0e2a
  0x000000010a1d0e2a: subq   $0x5,(%rsp)
  0x000000010a1d0e2f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1d0e34: hlt    
  0x000000010a1d0e35: hlt    
  0x000000010a1d0e36: hlt    
  0x000000010a1d0e37: hlt    

ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop }pc offsets: 460 
ImmutableOopMap{rbp=NarrowOop [0]=Oop }pc offsets: 488 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 504 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 556 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 568 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 596 
ImmutableOopMap{[4]=NarrowOop }pc offsets: 608 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 620 
ImmutableOopMap{rbp=Oop }pc offsets: 636 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 660 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 684 Compiled method (c2)     281   70             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x000000010a1cb310,0x000000010a1cb598] = 648
 relocation     [0x000000010a1cb488,0x000000010a1cb498] = 16
 main code      [0x000000010a1cb4a0,0x000000010a1cb4e0] = 64
 stub code      [0x000000010a1cb4e0,0x000000010a1cb4f8] = 24
 oops           [0x000000010a1cb4f8,0x000000010a1cb500] = 8
 metadata       [0x000000010a1cb500,0x000000010a1cb518] = 24
 scopes data    [0x000000010a1cb518,0x000000010a1cb540] = 40
 scopes pcs     [0x000000010a1cb540,0x000000010a1cb590] = 80
 dependencies   [0x000000010a1cb590,0x000000010a1cb598] = 8
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x000000010a1cb4a0, 0x000000010a1cb4f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ee5c780} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x20]  (sp of caller)
  0x000000010a1cb4a0: mov    0x8(%rsi),%r10d
  0x000000010a1cb4a4: movabs $0x800000000,%r12
  0x000000010a1cb4ae: add    %r12,%r10
  0x000000010a1cb4b1: xor    %r12,%r12
  0x000000010a1cb4b4: cmp    %r10,%rax
  0x000000010a1cb4b7: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1cb4bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1cb4c0: mov    %eax,-0x14000(%rsp)
  0x000000010a1cb4c7: push   %rbp
  0x000000010a1cb4c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 40)

  0x000000010a1cb4cc: mov    %rsi,%rbp
  0x000000010a1cb4cf: mov    $0xffffffbe,%esi
  0x000000010a1cb4d4: data16 xchg %ax,%ax
  0x000000010a1cb4d7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cb4dc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)

  0x000000010a1cb4de: hlt    
  0x000000010a1cb4df: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1cb4e0: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1cb4e5: callq  0x000000010a1cb4ea
  0x000000010a1cb4ea: subq   $0x5,(%rsp)
  0x000000010a1cb4ef: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1cb4f4: hlt    
  0x000000010a1cb4f5: hlt    
  0x000000010a1cb4f6: hlt    
  0x000000010a1cb4f7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     287   71 %           ProceduralHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x000000010a1d1490,0x000000010a1d2100] = 3184
 relocation     [0x000000010a1d1608,0x000000010a1d1658] = 80
 main code      [0x000000010a1d1660,0x000000010a1d1a00] = 928
 stub code      [0x000000010a1d1a00,0x000000010a1d1a18] = 24
 oops           [0x000000010a1d1a18,0x000000010a1d1a28] = 16
 metadata       [0x000000010a1d1a28,0x000000010a1d1a88] = 96
 scopes data    [0x000000010a1d1a88,0x000000010a1d1d38] = 688
 scopes pcs     [0x000000010a1d1d38,0x000000010a1d20b8] = 896
 dependencies   [0x000000010a1d20b8,0x000000010a1d20c0] = 8
 handler table  [0x000000010a1d20c0,0x000000010a1d20d8] = 24
 nul chk table  [0x000000010a1d20d8,0x000000010a1d2100] = 40
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x000000010a1d1660, 0x000000010a1d1a18]  952 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000010ee5c780} 'runTest' '()I' in 'ProceduralHashMap'
  0x000000010a1d1660: callq  0x00000001098107f4  ;   {runtime_call os::breakpoint()}
  0x000000010a1d1665: data16 data16 nopw 0x0(%rax,%rax,1)
  0x000000010a1d1670: mov    %eax,-0x14000(%rsp)
  0x000000010a1d1677: push   %rbp
  0x000000010a1d1678: sub    $0x30,%rsp
  0x000000010a1d167c: mov    0x10(%rsi),%r13
  0x000000010a1d1680: mov    0x8(%rsi),%ebp
  0x000000010a1d1683: mov    (%rsi),%ebx
  0x000000010a1d1685: mov    %rsi,%rdi
  0x000000010a1d1688: movabs $0x109891a82,%r10
  0x000000010a1d1692: callq  *%r10
  0x000000010a1d1695: mov    0x8(%r13),%r10d    ; implicit exception: dispatches to 0x000000010a1d19d6
  0x000000010a1d1699: cmp    $0x60040,%r10d     ;   {metadata('ProceduralHashMap')}
  0x000000010a1d16a0: jne    0x000000010a1d1952  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)

  0x000000010a1d16a6: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1d16ac: movabs $0x800000000,%rdi
  0x000000010a1d16b6: add    %r10,%rdi
  0x000000010a1d16b9: jmp    0x000000010a1d16cc  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d16bb: mov    $0x64,%ebp         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1d16c0: mov    0x108(%r15),%r10
  0x000000010a1d16c7: inc    %ebx               ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1d16c9: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {poll}
  0x000000010a1d16cc: cmp    $0x3e8,%ebx
  0x000000010a1d16d2: jge    0x000000010a1d1830  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)

  0x000000010a1d16d8: movabs $0x70fe0efc8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc8} = 'ProceduralHashMap')}
  0x000000010a1d16e2: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d16e6: cmp    $0xffffff80,%ebx
  0x000000010a1d16e9: jl     0x000000010a1d1896  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d16ef: cmp    $0x7f,%ebx
  0x000000010a1d16f2: jle    0x000000010a1d17fe
  0x000000010a1d16f8: mov    0x118(%r15),%rax
  0x000000010a1d16ff: mov    %rax,%r10
  0x000000010a1d1702: add    $0x10,%r10
  0x000000010a1d1706: cmp    0x128(%r15),%r10
  0x000000010a1d170d: jae    0x000000010a1d1842  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1d1713: mov    %r10,0x118(%r15)
  0x000000010a1d171a: prefetchnta 0xc0(%r10)
  0x000000010a1d1722: mov    0xb8(%rdi),%r10
  0x000000010a1d1729: mov    %r10,(%rax)
  0x000000010a1d172c: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1d1733: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1736: mov    0x8(%r12,%r11,8),%r8d  ; implicit exception: dispatches to 0x000000010a1d197e
  0x000000010a1d173b: cmp    $0x19838,%r8d      ;   {metadata('java/util/HashMap')}
  0x000000010a1d1742: jne    0x000000010a1d1879  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1748: mov    0xc(%rax),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d174c: shl    $0x3,%r11          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1750: mov    0x24(%r11),%r11d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1754: mov    %r10d,%r9d
  0x000000010a1d1757: shr    $0x10,%r9d
  0x000000010a1d175b: xor    %r10d,%r9d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d175e: mov    0xc(%r12,%r11,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x000000010a1d198e
  0x000000010a1d1763: test   %ecx,%ecx
  0x000000010a1d1765: jbe    0x000000010a1d18b2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d176b: dec    %ecx
  0x000000010a1d176d: and    %r9d,%ecx
  0x000000010a1d1770: shl    $0x3,%r11
  0x000000010a1d1774: mov    0x10(%r11,%rcx,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1779: test   %r11d,%r11d
  0x000000010a1d177c: je     0x000000010a1d16bb  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1782: mov    0xc(%r12,%r11,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1787: cmp    %r9d,%r8d
  0x000000010a1d178a: jne    0x000000010a1d190e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1790: mov    0x10(%r12,%r11,8),%ecx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1795: mov    %rcx,%r8
  0x000000010a1d1798: shl    $0x3,%r8
  0x000000010a1d179c: cmp    %rax,%r8
  0x000000010a1d179f: je     0x000000010a1d17d1  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17a1: mov    0x8(%r12,%rcx,8),%r8d  ; implicit exception: dispatches to 0x000000010a1d19b2
  0x000000010a1d17a6: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010a1d17ad: jne    0x000000010a1d18da  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17b3: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010a1d17ba: jne    0x000000010a1d18fe
  0x000000010a1d17c0: lea    (%r12,%rcx,8),%r8  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17c4: mov    0xc(%r8),%r8d
  0x000000010a1d17c8: cmp    %r8d,%r10d
  0x000000010a1d17cb: jne    0x000000010a1d18da  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17d1: mov    0x14(%r12,%r11,8),%r11d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17d6: test   %r11d,%r11d
  0x000000010a1d17d9: je     0x000000010a1d16bb
  0x000000010a1d17df: mov    0x8(%r12,%r11,8),%r8d
  0x000000010a1d17e4: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x000000010a1d17eb: jne    0x000000010a1d1966
  0x000000010a1d17f1: lea    (%r12,%r11,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17f5: mov    0xc(%r10),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@22 (line 52)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d17f9: jmpq   0x000000010a1d16c0
  0x000000010a1d17fe: mov    %ebx,%ebp
  0x000000010a1d1800: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1806: cmp    $0x100,%ebp
  0x000000010a1d180c: jae    0x000000010a1d1936
  0x000000010a1d1812: movslq %ebx,%r10
  0x000000010a1d1815: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1d181f: mov    0x210(%r8,%r10,4),%r8d
  0x000000010a1d1827: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d182b: jmpq   0x000000010a1d1736  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)

  0x000000010a1d1830: mov    %ebp,%eax
  0x000000010a1d1832: add    $0x30,%rsp
  0x000000010a1d1836: pop    %rbp
  0x000000010a1d1837: mov    0x108(%r15),%r10
  0x000000010a1d183e: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1d1841: retq   
  0x000000010a1d1842: mov    %r11d,0x4(%rsp)
  0x000000010a1d1847: mov    %rdi,0x8(%rsp)
  0x000000010a1d184c: mov    %ebx,(%rsp)
  0x000000010a1d184f: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1852: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1d185c: data16 xchg %ax,%ax
  0x000000010a1d185f: callq  0x000000010a1b0100  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1d1864: mov    %rbp,%r13
  0x000000010a1d1867: mov    (%rsp),%ebx
  0x000000010a1d186a: mov    0x8(%rsp),%rdi
  0x000000010a1d186f: mov    0x4(%rsp),%r11d
  0x000000010a1d1874: jmpq   0x000000010a1d1733
  0x000000010a1d1879: mov    $0xffffffde,%esi
  0x000000010a1d187e: mov    %r13,%rbp
  0x000000010a1d1881: mov    %ebx,(%rsp)
  0x000000010a1d1884: mov    %r11d,0x4(%rsp)
  0x000000010a1d1889: mov    %rax,0x8(%rsp)
  0x000000010a1d188e: nop
  0x000000010a1d188f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d1894: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d1896: mov    $0xffffff4d,%esi
  0x000000010a1d189b: mov    %r13,%rbp
  0x000000010a1d189e: mov    %r11d,0x4(%rsp)
  0x000000010a1d18a3: mov    %ebx,0x8(%rsp)
  0x000000010a1d18a7: mov    %ebx,0xc(%rsp)
  0x000000010a1d18ab: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d18b0: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d18b2: mov    $0xffffff4d,%esi
  0x000000010a1d18b7: mov    %r13,%rbp
  0x000000010a1d18ba: mov    %ebx,(%rsp)
  0x000000010a1d18bd: mov    %r9d,0x4(%rsp)
  0x000000010a1d18c2: mov    %rax,0x8(%rsp)
  0x000000010a1d18c7: mov    %r11d,0x10(%rsp)
  0x000000010a1d18cc: mov    %ecx,0x18(%rsp)
  0x000000010a1d18d0: data16 xchg %ax,%ax
  0x000000010a1d18d3: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d18d8: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d18da: mov    $0xffffff4d,%esi
  0x000000010a1d18df: mov    %r13,%rbp
  0x000000010a1d18e2: mov    %ebx,(%rsp)
  0x000000010a1d18e5: mov    %r9d,0x4(%rsp)
  0x000000010a1d18ea: mov    %rax,0x8(%rsp)
  0x000000010a1d18ef: mov    %r11d,0x10(%rsp)
  0x000000010a1d18f4: data16 xchg %ax,%ax
  0x000000010a1d18f7: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d18fc: ud2    
  0x000000010a1d18fe: mov    $0xffffffde,%esi
  0x000000010a1d1903: mov    %ecx,%ebp
  0x000000010a1d1905: xchg   %ax,%ax
  0x000000010a1d1907: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d190c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d190e: mov    $0xffffff4d,%esi
  0x000000010a1d1913: mov    %r13,%rbp
  0x000000010a1d1916: mov    %ebx,(%rsp)
  0x000000010a1d1919: mov    %rax,0x8(%rsp)
  0x000000010a1d191e: mov    %r11d,0x10(%rsp)
  0x000000010a1d1923: mov    %r8d,0x14(%rsp)
  0x000000010a1d1928: mov    %r9d,0x18(%rsp)
  0x000000010a1d192d: xchg   %ax,%ax
  0x000000010a1d192f: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d1934: ud2    
  0x000000010a1d1936: mov    $0xffffffe4,%esi
  0x000000010a1d193b: mov    %r13,(%rsp)
  0x000000010a1d193f: mov    %ebx,0x8(%rsp)
  0x000000010a1d1943: mov    %r11d,0xc(%rsp)
  0x000000010a1d1948: data16 xchg %ax,%ax
  0x000000010a1d194b: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d1950: ud2    
  0x000000010a1d1952: mov    $0xffffff95,%esi
  0x000000010a1d1957: mov    %r13,(%rsp)
  0x000000010a1d195b: mov    %ebx,0x8(%rsp)
  0x000000010a1d195f: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d1964: ud2    
  0x000000010a1d1966: mov    $0xffffffde,%esi
  0x000000010a1d196b: mov    %r13,%rbp
  0x000000010a1d196e: mov    %ebx,(%rsp)
  0x000000010a1d1971: mov    %r11d,0x4(%rsp)
  0x000000010a1d1976: nop
  0x000000010a1d1977: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d197c: ud2    
  0x000000010a1d197e: mov    $0xfffffff6,%esi
  0x000000010a1d1983: mov    %rax,%rbp
  0x000000010a1d1986: nop
  0x000000010a1d1987: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d198c: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d198e: mov    $0xffffff4d,%esi
  0x000000010a1d1993: mov    %r13,%rbp
  0x000000010a1d1996: mov    %ebx,(%rsp)
  0x000000010a1d1999: mov    %r9d,0x4(%rsp)
  0x000000010a1d199e: mov    %rax,0x8(%rsp)
  0x000000010a1d19a3: mov    %r11d,0x14(%rsp)
  0x000000010a1d19a8: data16 xchg %ax,%ax
  0x000000010a1d19ab: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [8]=Oop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d19b0: ud2    
  0x000000010a1d19b2: mov    $0xfffffff4,%esi
  0x000000010a1d19b7: mov    %r13,%rbp
  0x000000010a1d19ba: mov    %ebx,(%rsp)
  0x000000010a1d19bd: mov    %r9d,0x4(%rsp)
  0x000000010a1d19c2: mov    %r11d,0x10(%rsp)
  0x000000010a1d19c7: mov    %rax,0x18(%rsp)
  0x000000010a1d19cc: data16 xchg %ax,%ax
  0x000000010a1d19cf: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=Oop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d19d4: ud2    
  0x000000010a1d19d6: mov    $0xffffffbe,%esi
  0x000000010a1d19db: mov    %ebx,(%rsp)
  0x000000010a1d19de: nop
  0x000000010a1d19df: callq  0x000000010a17b900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@4 (line 41)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1d19e4: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1d19e6: mov    %rax,%rsi
  0x000000010a1d19e9: add    $0x30,%rsp
  0x000000010a1d19ed: pop    %rbp
  0x000000010a1d19ee: jmpq   0x000000010a1b2580  ;   {runtime_call _rethrow_Java}
  0x000000010a1d19f3: hlt    
  0x000000010a1d19f4: hlt    
  0x000000010a1d19f5: hlt    
  0x000000010a1d19f6: hlt    
  0x000000010a1d19f7: hlt    
  0x000000010a1d19f8: hlt    
  0x000000010a1d19f9: hlt    
  0x000000010a1d19fa: hlt    
  0x000000010a1d19fb: hlt    
  0x000000010a1d19fc: hlt    
  0x000000010a1d19fd: hlt    
  0x000000010a1d19fe: hlt    
  0x000000010a1d19ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1d1a00: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1d1a05: callq  0x000000010a1d1a0a
  0x000000010a1d1a0a: subq   $0x5,(%rsp)
  0x000000010a1d1a0f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1d1a14: hlt    
  0x000000010a1d1a15: hlt    
  0x000000010a1d1a16: hlt    
  0x000000010a1d1a17: hlt    

ImmutableOopMap{r13=Oop }pc offsets: 105 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 516 
ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }pc offsets: 564 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 592 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }pc offsets: 632 668 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 684 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }pc offsets: 724 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 752 
ImmutableOopMap{[0]=Oop }pc offsets: 772 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 796 
ImmutableOopMap{rbp=Oop }pc offsets: 812 
ImmutableOopMap{rbp=Oop [8]=Oop [20]=NarrowOop }pc offsets: 848 
ImmutableOopMap{rbp=Oop [16]=NarrowOop [24]=Oop }pc offsets: 884 
ImmutableOopMap{}pc offsets: 900 Compiled method (c2)     305   72             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x000000010a1cf810,0x000000010a1d0938] = 4392
 relocation     [0x000000010a1cf988,0x000000010a1cf9f0] = 104
 main code      [0x000000010a1cfa00,0x000000010a1cff40] = 1344
 stub code      [0x000000010a1cff40,0x000000010a1cff58] = 24
 oops           [0x000000010a1cff58,0x000000010a1cff68] = 16
 metadata       [0x000000010a1cff68,0x000000010a1cffc0] = 88
 scopes data    [0x000000010a1cffc0,0x000000010a1d0200] = 576
 scopes pcs     [0x000000010a1d0200,0x000000010a1d08b0] = 1712
 dependencies   [0x000000010a1d08b0,0x000000010a1d08b8] = 8
 handler table  [0x000000010a1d08b8,0x000000010a1d08e8] = 48
 nul chk table  [0x000000010a1d08e8,0x000000010a1d0938] = 80
----------------------------------------------------------------------
ProceduralHashMap.runTest()I  [0x000000010a1cfa00, 0x000000010a1cff58]  1368 bytes
[Entry Point]
[Constants]
  # {method} {0x000000010ee5c780} 'runTest' '()I' in 'ProceduralHashMap'
  #           [sp+0x40]  (sp of caller)
  0x000000010a1cfa00: mov    0x8(%rsi),%r10d
  0x000000010a1cfa04: movabs $0x800000000,%r12
  0x000000010a1cfa0e: add    %r12,%r10
  0x000000010a1cfa11: xor    %r12,%r12
  0x000000010a1cfa14: cmp    %r10,%rax
  0x000000010a1cfa17: jne    0x000000010a179c80  ;   {runtime_call ic_miss_stub}
  0x000000010a1cfa1d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000010a1cfa20: mov    %eax,-0x14000(%rsp)
  0x000000010a1cfa27: push   %rbp
  0x000000010a1cfa28: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - ProceduralHashMap::runTest@-1 (line 40)

  0x000000010a1cfa2c: mov    %rsi,0x18(%rsp)
  0x000000010a1cfa31: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1cfa3b: mov    0x210(%r10),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa42: movabs $0x70fe0efc8,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc8} = 'ProceduralHashMap')}
  0x000000010a1cfa4c: mov    0x70(%r11),%r8d
  0x000000010a1cfa50: mov    0x8(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x000000010a1cfeca
  0x000000010a1cfa55: shl    $0x3,%r8           ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa59: cmp    $0x19838,%r11d     ;   {metadata('java/util/HashMap')}
  0x000000010a1cfa60: jne    0x000000010a1cfdd2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa66: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa6a: mov    0xc(%r12,%r8,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x000000010a1cfeda
  0x000000010a1cfa6f: test   %ebx,%ebx
  0x000000010a1cfa71: jbe    0x000000010a1cfdee  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa77: mov    0x10(%r12,%r8,8),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa7c: test   %r11d,%r11d
  0x000000010a1cfa7f: je     0x000000010a1cfad9  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa81: mov    0xc(%r12,%r11,8),%ebx  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa86: lea    (%r12,%r11,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa8a: test   %ebx,%ebx
  0x000000010a1cfa8c: jne    0x000000010a1cfe3e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa92: mov    0x10(%r12,%r11,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa97: cmp    %r10d,%r9d
  0x000000010a1cfa9a: je     0x000000010a1cfabd  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfa9c: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x000000010a1cfefe
  0x000000010a1cfaa1: cmp    $0x13c78,%ecx      ;   {metadata('java/lang/Integer')}
  0x000000010a1cfaa7: jne    0x000000010a1cfe1a  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfaad: shl    $0x3,%r9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfab1: mov    0xc(%r9),%ecx
  0x000000010a1cfab5: test   %ecx,%ecx
  0x000000010a1cfab7: jne    0x000000010a1cfe95  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfabd: mov    0x14(%r12,%r11,8),%r8d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfac2: test   %r8d,%r8d
  0x000000010a1cfac5: je     0x000000010a1cfad9
  0x000000010a1cfac7: mov    0x8(%r12,%r8,8),%r11d
  0x000000010a1cfacc: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cfad3: jne    0x000000010a1cfeb2  ;*invokevirtual max100 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfad9: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cfadf: movabs $0x800000000,%rdi
  0x000000010a1cfae9: add    %r11,%rdi
  0x000000010a1cfaec: mov    $0x1,%r11d
  0x000000010a1cfaf2: jmp    0x000000010a1cfb0a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfaf4: mov    $0x64,%r8d         ;*invokevirtual max100 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfafa: inc    %r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 41)

  0x000000010a1cfafd: cmp    $0x80,%r11d
  0x000000010a1cfb04: jge    0x000000010a1cfc3d  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 42)

  0x000000010a1cfb0a: movabs $0x70fe0efc8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc8} = 'ProceduralHashMap')}
  0x000000010a1cfb14: mov    0x70(%r10),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb18: cmp    $0x7f,%r11d
  0x000000010a1cfb1c: jle    0x000000010a1cfc22
  0x000000010a1cfb22: mov    0x118(%r15),%rax
  0x000000010a1cfb29: mov    %rax,%r10
  0x000000010a1cfb2c: add    $0x10,%r10
  0x000000010a1cfb30: cmp    0x128(%r15),%r10
  0x000000010a1cfb37: jae    0x000000010a1cfdab  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1cfb3d: mov    %r10,0x118(%r15)
  0x000000010a1cfb44: prefetchnta 0xc0(%r10)
  0x000000010a1cfb4c: mov    0xb8(%rdi),%r10
  0x000000010a1cfb53: mov    %r10,(%rax)
  0x000000010a1cfb56: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1cfb5d: mov    %r11d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb61: mov    %rax,%r10
  0x000000010a1cfb64: shr    $0x3,%r10
  0x000000010a1cfb68: mov    0x8(%r12,%rbp,8),%r9d  ; implicit exception: dispatches to 0x000000010a1cfeca
  0x000000010a1cfb6d: lea    (%r12,%rbp,8),%r8  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb71: cmp    $0x19838,%r9d      ;   {metadata('java/util/HashMap')}
  0x000000010a1cfb78: jne    0x000000010a1cfdd5  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb7e: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb81: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb85: mov    %ecx,%r9d
  0x000000010a1cfb88: shr    $0x10,%r9d
  0x000000010a1cfb8c: xor    %ecx,%r9d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb8f: mov    0xc(%r12,%r8,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x000000010a1cfee0
  0x000000010a1cfb94: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfb98: test   %ebx,%ebx
  0x000000010a1cfb9a: jbe    0x000000010a1cfdf8  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfba0: dec    %ebx
  0x000000010a1cfba2: and    %r9d,%ebx
  0x000000010a1cfba5: mov    0x10(%r8,%rbx,4),%esi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbaa: test   %esi,%esi
  0x000000010a1cfbac: je     0x000000010a1cfaf4  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbb2: mov    0xc(%r12,%rsi,8),%ebx  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbb7: lea    (%r12,%rsi,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbbb: cmp    %r9d,%ebx
  0x000000010a1cfbbe: jne    0x000000010a1cfe44  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbc4: mov    0x10(%r12,%rsi,8),%ebx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbc9: mov    %rbx,%rdx
  0x000000010a1cfbcc: shl    $0x3,%rdx
  0x000000010a1cfbd0: cmp    %rax,%rdx
  0x000000010a1cfbd3: je     0x000000010a1cfbf5  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbd5: mov    0x8(%r12,%rbx,8),%edx  ; implicit exception: dispatches to 0x000000010a1cff04
  0x000000010a1cfbda: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x000000010a1cfbe0: jne    0x000000010a1cfe20  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbe6: shl    $0x3,%rbx          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbea: mov    0xc(%rbx),%edx
  0x000000010a1cfbed: cmp    %edx,%ecx
  0x000000010a1cfbef: jne    0x000000010a1cfe20  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbf5: mov    0x14(%r12,%rsi,8),%r8d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfbfa: test   %r8d,%r8d
  0x000000010a1cfbfd: je     0x000000010a1cfaf4
  0x000000010a1cfc03: mov    0x8(%r12,%r8,8),%r10d
  0x000000010a1cfc08: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x000000010a1cfc0f: jne    0x000000010a1cfeb5
  0x000000010a1cfc15: lea    (%r12,%r8,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfc19: mov    0xc(%r10),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@22 (line 52)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfc1d: jmpq   0x000000010a1cfafa
  0x000000010a1cfc22: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1cfc2c: mov    0x210(%r10,%r11,4),%r10d
  0x000000010a1cfc34: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfc38: jmpq   0x000000010a1cfb61  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1cfc3d: mov    0x108(%r15),%r10   ; ImmutableOopMap{[24]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1cfc44: test   %eax,(%r10)        ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@11 (line 42)
                                                ;   {poll}
  0x000000010a1cfc47: movabs $0x70fe0efc8,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0efc8} = 'ProceduralHashMap')}
  0x000000010a1cfc51: mov    0x70(%r10),%r9d    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfc55: cmp    $0x7f,%r11d
  0x000000010a1cfc59: jle    0x000000010a1cfd7b
  0x000000010a1cfc5f: mov    0x118(%r15),%rax
  0x000000010a1cfc66: mov    %rax,%r10
  0x000000010a1cfc69: add    $0x10,%r10
  0x000000010a1cfc6d: cmp    0x128(%r15),%r10
  0x000000010a1cfc74: jae    0x000000010a1cfe66  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@20 (line 41)

  0x000000010a1cfc7a: mov    %r10,0x118(%r15)
  0x000000010a1cfc81: prefetchnta 0xc0(%r10)
  0x000000010a1cfc89: mov    0xb8(%rdi),%r10
  0x000000010a1cfc90: mov    %r10,(%rax)
  0x000000010a1cfc93: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {metadata('java/lang/Integer')}
  0x000000010a1cfc9a: mov    %r11d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfc9e: mov    %rax,%r10
  0x000000010a1cfca1: shr    $0x3,%r10
  0x000000010a1cfca5: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x000000010a1cfeca
  0x000000010a1cfcaa: lea    (%r12,%r9,8),%r8   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@0 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcae: cmp    $0x19838,%ecx      ;   {metadata('java/util/HashMap')}
  0x000000010a1cfcb4: jne    0x000000010a1cfdd5  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcba: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcbd: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcc1: mov    %ecx,%r9d
  0x000000010a1cfcc4: shr    $0x10,%r9d
  0x000000010a1cfcc8: xor    %ecx,%r9d          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfccb: mov    0xc(%r12,%r8,8),%ebx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ; implicit exception: dispatches to 0x000000010a1cfee0
  0x000000010a1cfcd0: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcd4: test   %ebx,%ebx
  0x000000010a1cfcd6: jbe    0x000000010a1cfdf8  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcdc: dec    %ebx
  0x000000010a1cfcde: and    %r9d,%ebx
  0x000000010a1cfce1: mov    0x10(%r8,%rbx,4),%edx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfce6: test   %edx,%edx
  0x000000010a1cfce8: jne    0x000000010a1cfd0f  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcea: mov    $0x64,%eax         ;*invokevirtual max100 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfcef: inc    %r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@17 (line 41)

  0x000000010a1cfcf2: cmp    $0x3e8,%r11d
  0x000000010a1cfcf9: jl     0x000000010a1cfc47  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::runTest@8 (line 41)

  0x000000010a1cfcff: add    $0x30,%rsp
  0x000000010a1cfd03: pop    %rbp
  0x000000010a1cfd04: mov    0x108(%r15),%r10
  0x000000010a1cfd0b: test   %eax,(%r10)        ;   {poll_return}
  0x000000010a1cfd0e: retq   
  0x000000010a1cfd0f: mov    0xc(%r12,%rdx,8),%ebx  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd14: lea    (%r12,%rdx,8),%r8  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd18: cmp    %r9d,%ebx
  0x000000010a1cfd1b: jne    0x000000010a1cfe44  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd21: mov    0x10(%r12,%rdx,8),%ebx  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd26: mov    %rbx,%rsi
  0x000000010a1cfd29: shl    $0x3,%rsi
  0x000000010a1cfd2d: cmp    %rax,%rsi
  0x000000010a1cfd30: je     0x000000010a1cfd52  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd32: mov    0x8(%r12,%rbx,8),%eax  ; implicit exception: dispatches to 0x000000010a1cff04
  0x000000010a1cfd37: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x000000010a1cfd3d: jne    0x000000010a1cfe20  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd43: shl    $0x3,%rbx          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd47: mov    0xc(%rbx),%ebx
  0x000000010a1cfd4a: cmp    %ebx,%ecx
  0x000000010a1cfd4c: jne    0x000000010a1cfe20  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd52: mov    0x14(%r12,%rdx,8),%r8d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd57: test   %r8d,%r8d
  0x000000010a1cfd5a: je     0x000000010a1cfcea
  0x000000010a1cfd5c: mov    0x8(%r12,%r8,8),%r9d
  0x000000010a1cfd61: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000010a1cfd68: jne    0x000000010a1cfeb5
  0x000000010a1cfd6e: lea    (%r12,%r8,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd72: mov    0xc(%r10),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - ProceduralHashMap::max100@22 (line 52)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd76: jmpq   0x000000010a1cfcef
  0x000000010a1cfd7b: mov    %r11d,%ebp
  0x000000010a1cfd7e: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfd84: cmp    $0x100,%ebp
  0x000000010a1cfd8a: jae    0x000000010a1cfe9d
  0x000000010a1cfd90: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x000000010a1cfd9a: mov    0x210(%r10,%r11,4),%r10d
  0x000000010a1cfda2: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfda6: jmpq   0x000000010a1cfc9e
  0x000000010a1cfdab: mov    %rdi,0x8(%rsp)
  0x000000010a1cfdb0: mov    %r11d,(%rsp)
  0x000000010a1cfdb4: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1cfdbe: nop
  0x000000010a1cfdbf: callq  0x000000010a1b0100  ; ImmutableOopMap{rbp=NarrowOop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1cfdc4: mov    (%rsp),%r11d
  0x000000010a1cfdc8: mov    0x8(%rsp),%rdi
  0x000000010a1cfdcd: jmpq   0x000000010a1cfb5d
  0x000000010a1cfdd2: xor    %r11d,%r11d
  0x000000010a1cfdd5: mov    $0xffffffde,%esi
  0x000000010a1cfdda: mov    %r11d,%ebp
  0x000000010a1cfddd: mov    %r8,(%rsp)
  0x000000010a1cfde1: mov    %r10d,0x8(%rsp)
  0x000000010a1cfde6: nop
  0x000000010a1cfde7: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop [24]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfdec: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfdee: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfdf2: xor    %r9d,%r9d
  0x000000010a1cfdf5: xor    %r11d,%r11d
  0x000000010a1cfdf8: mov    $0xffffff4d,%esi
  0x000000010a1cfdfd: mov    %r11d,%ebp
  0x000000010a1cfe00: mov    %r9d,(%rsp)
  0x000000010a1cfe04: mov    %r10d,0x4(%rsp)
  0x000000010a1cfe09: mov    %r8,0x8(%rsp)
  0x000000010a1cfe0e: mov    %ebx,0x14(%rsp)
  0x000000010a1cfe12: nop
  0x000000010a1cfe13: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfe18: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfe1a: xor    %r9d,%r9d
  0x000000010a1cfe1d: xor    %r11d,%r11d        ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfe20: mov    $0xffffff4d,%esi
  0x000000010a1cfe25: mov    %r11d,%ebp
  0x000000010a1cfe28: mov    %r9d,(%rsp)
  0x000000010a1cfe2c: mov    %r10d,0x4(%rsp)
  0x000000010a1cfe31: mov    %r8,0x8(%rsp)
  0x000000010a1cfe36: nop
  0x000000010a1cfe37: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfe3c: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfe3e: xor    %r9d,%r9d
  0x000000010a1cfe41: xor    %r11d,%r11d
  0x000000010a1cfe44: mov    $0xffffff4d,%esi
  0x000000010a1cfe49: mov    %r11d,%ebp
  0x000000010a1cfe4c: mov    %r10d,0x4(%rsp)
  0x000000010a1cfe51: mov    %r8,0x8(%rsp)
  0x000000010a1cfe56: mov    %ebx,0x10(%rsp)
  0x000000010a1cfe5a: mov    %r9d,0x14(%rsp)
  0x000000010a1cfe5f: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfe64: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfe66: mov    %r9d,0x8(%rsp)
  0x000000010a1cfe6b: mov    %rdi,(%rsp)
  0x000000010a1cfe6f: mov    %r11d,%ebp
  0x000000010a1cfe72: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000010a1cfe7c: data16 xchg %ax,%ax
  0x000000010a1cfe7f: callq  0x000000010a1b0100  ; ImmutableOopMap{[8]=NarrowOop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _new_instance_Java}
  0x000000010a1cfe84: mov    %ebp,%r11d
  0x000000010a1cfe87: mov    (%rsp),%rdi
  0x000000010a1cfe8b: mov    0x8(%rsp),%r9d
  0x000000010a1cfe90: jmpq   0x000000010a1cfc9a
  0x000000010a1cfe95: xor    %r9d,%r9d
  0x000000010a1cfe98: xor    %r11d,%r11d
  0x000000010a1cfe9b: jmp    0x000000010a1cfe20
  0x000000010a1cfe9d: mov    $0xffffffe4,%esi
  0x000000010a1cfea2: mov    %r11d,(%rsp)
  0x000000010a1cfea6: mov    %r9d,0x4(%rsp)
  0x000000010a1cfeab: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [24]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfeb0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfeb2: xor    %r11d,%r11d
  0x000000010a1cfeb5: mov    $0xffffffde,%esi
  0x000000010a1cfeba: mov    %r11d,%ebp
  0x000000010a1cfebd: mov    %r8d,(%rsp)
  0x000000010a1cfec1: xchg   %ax,%ax
  0x000000010a1cfec3: callq  0x000000010a17b900  ; ImmutableOopMap{[0]=NarrowOop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfec8: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfeca: mov    $0xfffffff6,%esi
  0x000000010a1cfecf: mov    %r10d,%ebp
  0x000000010a1cfed2: nop
  0x000000010a1cfed3: callq  0x000000010a17b900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfed8: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfeda: xor    %r9d,%r9d
  0x000000010a1cfedd: xor    %r11d,%r11d
  0x000000010a1cfee0: mov    $0xffffff4d,%esi
  0x000000010a1cfee5: mov    %r11d,%ebp
  0x000000010a1cfee8: mov    %r9d,(%rsp)
  0x000000010a1cfeec: mov    %r10d,0x4(%rsp)
  0x000000010a1cfef1: mov    %r8d,0xc(%rsp)
  0x000000010a1cfef6: nop
  0x000000010a1cfef7: callq  0x000000010a17b900  ; ImmutableOopMap{[4]=NarrowOop [12]=NarrowOop [24]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cfefc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cfefe: xor    %r9d,%r9d
  0x000000010a1cff01: xor    %r11d,%r11d
  0x000000010a1cff04: mov    $0xfffffff4,%esi
  0x000000010a1cff09: mov    %r11d,%ebp
  0x000000010a1cff0c: mov    %r9d,(%rsp)
  0x000000010a1cff10: mov    %r8,0x8(%rsp)
  0x000000010a1cff15: mov    %r10d,0x10(%rsp)
  0x000000010a1cff1a: nop
  0x000000010a1cff1b: callq  0x000000010a17b900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - ProceduralHashMap::max100@7 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000010a1cff20: ud2    
  0x000000010a1cff22: mov    %rax,%rsi
  0x000000010a1cff25: jmp    0x000000010a1cff2a
  0x000000010a1cff27: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - ProceduralHashMap::max100@4 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)

  0x000000010a1cff2a: add    $0x30,%rsp
  0x000000010a1cff2e: pop    %rbp
  0x000000010a1cff2f: jmpq   0x000000010a1b2580  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - ProceduralHashMap::max100@10 (line 48)
                                                ; - ProceduralHashMap::runTest@13 (line 42)
                                                ;   {runtime_call _rethrow_Java}
  0x000000010a1cff34: hlt    
  0x000000010a1cff35: hlt    
  0x000000010a1cff36: hlt    
  0x000000010a1cff37: hlt    
  0x000000010a1cff38: hlt    
  0x000000010a1cff39: hlt    
  0x000000010a1cff3a: hlt    
  0x000000010a1cff3b: hlt    
  0x000000010a1cff3c: hlt    
  0x000000010a1cff3d: hlt    
  0x000000010a1cff3e: hlt    
  0x000000010a1cff3f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010a1cff40: jmpq   0x000000010a1b0680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000010a1cff45: callq  0x000000010a1cff4a
  0x000000010a1cff4a: subq   $0x5,(%rsp)
  0x000000010a1cff4f: jmpq   0x000000010a17b520  ;   {runtime_call DeoptimizationBlob}
  0x000000010a1cff54: hlt    
  0x000000010a1cff55: hlt    
  0x000000010a1cff56: hlt    
  0x000000010a1cff57: hlt    

ImmutableOopMap{[24]=Oop }pc offsets: 580 
ImmutableOopMap{rbp=NarrowOop [24]=Oop }pc offsets: 964 
ImmutableOopMap{[0]=Oop [8]=NarrowOop [24]=Oop }pc offsets: 1004 
ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }pc offsets: 1048 1084 1124 
ImmutableOopMap{[8]=NarrowOop [24]=Oop }pc offsets: 1156 
ImmutableOopMap{[4]=NarrowOop [24]=Oop }pc offsets: 1200 
ImmutableOopMap{[0]=NarrowOop [24]=Oop }pc offsets: 1224 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 1240 
ImmutableOopMap{[4]=NarrowOop [12]=NarrowOop [24]=Oop }pc offsets: 1276 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=Oop }pc offsets: 1312 Test phase
Time elapsed: 0.01 ms result=100

