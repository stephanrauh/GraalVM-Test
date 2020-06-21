Compiled method (c2)      49    1             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x0000000117338690,0x0000000117338c30] = 1440
 relocation     [0x0000000117338808,0x0000000117338818] = 16
 main code      [0x0000000117338820,0x00000001173389e0] = 448
 stub code      [0x00000001173389e0,0x00000001173389f8] = 24
 metadata       [0x00000001173389f8,0x0000000117338a00] = 8
 scopes data    [0x0000000117338a00,0x0000000117338a88] = 136
 scopes pcs     [0x0000000117338a88,0x0000000117338c18] = 400
 dependencies   [0x0000000117338c18,0x0000000117338c20] = 8
 nul chk table  [0x0000000117338c20,0x0000000117338c30] = 16
Loaded disassembler from /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/lib/server/hsdis-amd64.dylib
----------------------------------------------------------------------
java/lang/StringLatin1.hashCode([B)I  [0x0000000117338820, 0x00000001173389f8]  472 bytes
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000125432a98} 'hashCode' '([B)I' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  #           [sp+0x30]  (sp of caller)
  0x0000000117338820: mov    %eax,-0x14000(%rsp)
  0x0000000117338827: push   %rbp
  0x0000000117338828: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::hashCode@-1 (line 194)

  0x000000011733882c: mov    0xc(%rsi),%r10d    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ; implicit exception: dispatches to 0x00000001173389c2
  0x0000000117338830: test   %r10d,%r10d
  0x0000000117338833: jbe    0x00000001173389a9  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000117338839: mov    %r10d,%r8d
  0x000000011733883c: dec    %r8d
  0x000000011733883f: cmp    %r10d,%r8d
  0x0000000117338842: jae    0x00000001173389ad
  0x0000000117338848: movzbl 0x10(%rsi),%r9d    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)

  0x000000011733884d: mov    %r10d,%edx
  0x0000000117338850: add    $0xfffffff9,%edx
  0x0000000117338853: mov    $0x80000000,%ecx
  0x0000000117338858: cmp    %edx,%r8d
  0x000000011733885b: cmovl  %ecx,%edx
  0x000000011733885e: mov    $0x1,%ecx
  0x0000000117338863: cmp    $0x1,%edx
  0x0000000117338866: jle    0x000000011733898d
  0x000000011733886c: mov    %r9d,%r11d
  0x000000011733886f: shl    $0x5,%r11d
  0x0000000117338873: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000117338876: mov    $0x1f40,%edi       ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x000000011733887b: jmp    0x00000001173388a9  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)

  0x000000011733887d: movzbl 0x10(%rsi,%rcx,1),%r8d
  0x0000000117338883: mov    %r9d,%eax
  0x0000000117338886: shl    $0x5,%eax
  0x0000000117338889: sub    %r9d,%eax
  0x000000011733888c: add    %r8d,%eax          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000011733888f: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000117338891: cmp    %r10d,%ecx
  0x0000000117338894: jge    0x0000000117338999  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x000000011733889a: mov    %eax,%r9d
  0x000000011733889d: jmp    0x000000011733887d
  0x000000011733889f: vmovq  %xmm0,%rsi
  0x00000001173388a4: vmovd  %xmm2,%r10d
  0x00000001173388a9: mov    %edx,%ebp
  0x00000001173388ab: sub    %ecx,%ebp
  0x00000001173388ad: cmp    %edi,%ebp
  0x00000001173388af: cmovg  %edi,%ebp
  0x00000001173388b2: add    %ecx,%ebp
  0x00000001173388b4: vmovq  %rsi,%xmm0
  0x00000001173388b9: vmovd  %r10d,%xmm2
  0x00000001173388be: xchg   %ax,%ax            ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x00000001173388c0: movslq %ecx,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)

  0x00000001173388c3: vmovq  %xmm0,%r8
  0x00000001173388c8: movzbl 0x10(%r8,%rsi,1),%r14d
  0x00000001173388ce: movzbl 0x17(%r8,%rsi,1),%eax
  0x00000001173388d4: movzbl 0x11(%r8,%rsi,1),%r13d
  0x00000001173388da: movzbl 0x16(%r8,%rsi,1),%r10d
  0x00000001173388e0: movzbl 0x15(%r8,%rsi,1),%r9d
  0x00000001173388e6: movzbl 0x14(%r8,%rsi,1),%r8d
  0x00000001173388ec: add    %r14d,%r11d
  0x00000001173388ef: vmovq  %xmm0,%rbx
  0x00000001173388f4: movzbl 0x12(%rbx,%rsi,1),%ebx
  0x00000001173388f9: vmovq  %xmm0,%r14
  0x00000001173388fe: movzbl 0x13(%r14,%rsi,1),%esi
  0x0000000117338904: mov    %r11d,%r14d
  0x0000000117338907: shl    $0x5,%r14d
  0x000000011733890b: sub    %r11d,%r14d
  0x000000011733890e: add    %r13d,%r14d
  0x0000000117338911: mov    %r14d,%r11d
  0x0000000117338914: shl    $0x5,%r11d
  0x0000000117338918: sub    %r14d,%r11d
  0x000000011733891b: add    %ebx,%r11d
  0x000000011733891e: mov    %r11d,%ebx
  0x0000000117338921: shl    $0x5,%ebx
  0x0000000117338924: sub    %r11d,%ebx
  0x0000000117338927: add    %esi,%ebx
  0x0000000117338929: mov    %ebx,%r11d
  0x000000011733892c: shl    $0x5,%r11d
  0x0000000117338930: sub    %ebx,%r11d
  0x0000000117338933: add    %r8d,%r11d
  0x0000000117338936: mov    %r11d,%ebx
  0x0000000117338939: shl    $0x5,%ebx
  0x000000011733893c: sub    %r11d,%ebx
  0x000000011733893f: add    %r9d,%ebx
  0x0000000117338942: mov    %ebx,%r8d
  0x0000000117338945: shl    $0x5,%r8d
  0x0000000117338949: sub    %ebx,%r8d
  0x000000011733894c: add    %r10d,%r8d
  0x000000011733894f: mov    %r8d,%r9d
  0x0000000117338952: shl    $0x5,%r9d
  0x0000000117338956: sub    %r8d,%r9d
  0x0000000117338959: add    %eax,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)

  0x000000011733895c: mov    %r9d,%r11d
  0x000000011733895f: shl    $0x5,%r11d
  0x0000000117338963: sub    %r9d,%r11d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)

  0x0000000117338966: add    $0x8,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)

  0x0000000117338969: cmp    %ebp,%ecx
  0x000000011733896b: jl     0x00000001173388c0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000117338971: mov    0x108(%r15),%r10   ; ImmutableOopMap{xmm0=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)

  0x0000000117338978: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ;   {poll}
  0x000000011733897b: cmp    %edx,%ecx
  0x000000011733897d: jl     0x000000011733889f
  0x0000000117338983: vmovq  %xmm0,%rsi
  0x0000000117338988: vmovd  %xmm2,%r10d
  0x000000011733898d: cmp    %r10d,%ecx
  0x0000000117338990: jl     0x000000011733887d
  0x0000000117338996: mov    %r9d,%eax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x0000000117338999: add    $0x20,%rsp
  0x000000011733899d: pop    %rbp
  0x000000011733899e: mov    0x108(%r15),%r10
  0x00000001173389a5: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173389a8: retq   
  0x00000001173389a9: xor    %eax,%eax
  0x00000001173389ab: jmp    0x0000000117338999
  0x00000001173389ad: mov    %rsi,%rbp
  0x00000001173389b0: mov    %r10d,0x4(%rsp)
  0x00000001173389b5: mov    $0xffffff7e,%esi
  0x00000001173389ba: nop
  0x00000001173389bb: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173389c0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)

  0x00000001173389c2: mov    $0xfffffff6,%esi
  0x00000001173389c7: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173389cc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@5 (line 195)

  0x00000001173389ce: hlt    
  0x00000001173389cf: hlt    
  0x00000001173389d0: hlt    
  0x00000001173389d1: hlt    
  0x00000001173389d2: hlt    
  0x00000001173389d3: hlt    
  0x00000001173389d4: hlt    
  0x00000001173389d5: hlt    
  0x00000001173389d6: hlt    
  0x00000001173389d7: hlt    
  0x00000001173389d8: hlt    
  0x00000001173389d9: hlt    
  0x00000001173389da: hlt    
  0x00000001173389db: hlt    
  0x00000001173389dc: hlt    
  0x00000001173389dd: hlt    
  0x00000001173389de: hlt    
  0x00000001173389df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173389e0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173389e5: callq  0x00000001173389ea
  0x00000001173389ea: subq   $0x5,(%rsp)
  0x00000001173389ef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173389f4: hlt    
  0x00000001173389f5: hlt    
  0x00000001173389f6: hlt    
  0x00000001173389f7: hlt    

ImmutableOopMap{xmm0=Oop }pc offsets: 344 
ImmutableOopMap{rbp=Oop }pc offsets: 416 
ImmutableOopMap{}pc offsets: 428 Compiled method (c2)      86    2             java.lang.Object::<init> (1 bytes)
 total in heap  [0x000000011733b010,0x000000011733b248] = 568
 relocation     [0x000000011733b188,0x000000011733b198] = 16
 main code      [0x000000011733b1a0,0x000000011733b1e0] = 64
 stub code      [0x000000011733b1e0,0x000000011733b1f8] = 24
 metadata       [0x000000011733b1f8,0x000000011733b208] = 16
 scopes data    [0x000000011733b208,0x000000011733b210] = 8
 scopes pcs     [0x000000011733b210,0x000000011733b240] = 48
 dependencies   [0x000000011733b240,0x000000011733b248] = 8
----------------------------------------------------------------------
java/lang/Object.<init>()V  [0x000000011733b1a0, 0x000000011733b1f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001252d9610} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x000000011733b1a0: mov    0x8(%rsi),%r10d
  0x000000011733b1a4: movabs $0x800000000,%r12
  0x000000011733b1ae: add    %r12,%r10
  0x000000011733b1b1: xor    %r12,%r12
  0x000000011733b1b4: cmp    %r10,%rax
  0x000000011733b1b7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011733b1bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011733b1c0: sub    $0x18,%rsp
  0x000000011733b1c7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 50)

  0x000000011733b1cc: add    $0x10,%rsp
  0x000000011733b1d0: pop    %rbp
  0x000000011733b1d1: mov    0x108(%r15),%r10
  0x000000011733b1d8: test   %eax,(%r10)        ;   {poll_return}
  0x000000011733b1db: retq   
  0x000000011733b1dc: hlt    
  0x000000011733b1dd: hlt    
  0x000000011733b1de: hlt    
  0x000000011733b1df: hlt    
[Exception Handler]
[Stub Code]
  0x000000011733b1e0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011733b1e5: callq  0x000000011733b1ea
  0x000000011733b1ea: subq   $0x5,(%rsp)
  0x000000011733b1ef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x000000011733b1f4: hlt    
  0x000000011733b1f5: hlt    
  0x000000011733b1f6: hlt    
  0x000000011733b1f7: hlt    
Compiled method (c2)      93    3             java.lang.Number::<init> (5 bytes)
 total in heap  [0x000000011733ad90,0x000000011733afc8] = 568
 relocation     [0x000000011733af08,0x000000011733af18] = 16
 main code      [0x000000011733af20,0x000000011733af60] = 64
 stub code      [0x000000011733af60,0x000000011733af78] = 24
 metadata       [0x000000011733af78,0x000000011733af88] = 16
 scopes data    [0x000000011733af88,0x000000011733af90] = 8
 scopes pcs     [0x000000011733af90,0x000000011733afc0] = 48
 dependencies   [0x000000011733afc0,0x000000011733afc8] = 8
----------------------------------------------------------------------
java/lang/Number.<init>()V  [0x000000011733af20, 0x000000011733af78]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001253c9cf8} '<init>' '()V' in 'java/lang/Number'
  #           [sp+0x20]  (sp of caller)
  0x000000011733af20: mov    0x8(%rsi),%r10d
  0x000000011733af24: movabs $0x800000000,%r12
  0x000000011733af2e: add    %r12,%r10
  0x000000011733af31: xor    %r12,%r12
  0x000000011733af34: cmp    %r10,%rax
  0x000000011733af37: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011733af3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011733af40: sub    $0x18,%rsp
  0x000000011733af47: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Number::<init>@-1 (line 55)

  0x000000011733af4c: add    $0x10,%rsp
  0x000000011733af50: pop    %rbp
  0x000000011733af51: mov    0x108(%r15),%r10
  0x000000011733af58: test   %eax,(%r10)        ;   {poll_return}
  0x000000011733af5b: retq   
  0x000000011733af5c: hlt    
  0x000000011733af5d: hlt    
  0x000000011733af5e: hlt    
  0x000000011733af5f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011733af60: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011733af65: callq  0x000000011733af6a
  0x000000011733af6a: subq   $0x5,(%rsp)
  0x000000011733af6f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x000000011733af74: hlt    
  0x000000011733af75: hlt    
  0x000000011733af76: hlt    
  0x000000011733af77: hlt    
Compiled method (c2)      94    4             java.lang.Integer::<init> (10 bytes)
 total in heap  [0x000000011733ab10,0x000000011733ad58] = 584
 relocation     [0x000000011733ac88,0x000000011733ac98] = 16
 main code      [0x000000011733aca0,0x000000011733ace0] = 64
 stub code      [0x000000011733ace0,0x000000011733acf8] = 24
 metadata       [0x000000011733acf8,0x000000011733ad00] = 8
 scopes data    [0x000000011733ad00,0x000000011733ad10] = 16
 scopes pcs     [0x000000011733ad10,0x000000011733ad50] = 64
 dependencies   [0x000000011733ad50,0x000000011733ad58] = 8
----------------------------------------------------------------------
java/lang/Integer.<init>(I)V  [0x000000011733aca0, 0x000000011733acf8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001253d2b10} '<init>' '(I)V' in 'java/lang/Integer'
  # this:     rsi:rsi   = 'java/lang/Integer'
  # parm0:    rdx       = int
  #           [sp+0x20]  (sp of caller)
  0x000000011733aca0: mov    0x8(%rsi),%r10d
  0x000000011733aca4: movabs $0x800000000,%r12
  0x000000011733acae: add    %r12,%r10
  0x000000011733acb1: xor    %r12,%r12
  0x000000011733acb4: cmp    %r10,%rax
  0x000000011733acb7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011733acbd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011733acc0: sub    $0x18,%rsp
  0x000000011733acc7: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::<init>@-1 (line 1073)

  0x000000011733accc: mov    %edx,0xc(%rsi)     ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::<init>@6 (line 1074)

  0x000000011733accf: add    $0x10,%rsp
  0x000000011733acd3: pop    %rbp
  0x000000011733acd4: mov    0x108(%r15),%r10
  0x000000011733acdb: test   %eax,(%r10)        ;   {poll_return}
  0x000000011733acde: retq   
  0x000000011733acdf: hlt    
[Exception Handler]
[Stub Code]
  0x000000011733ace0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011733ace5: callq  0x000000011733acea
  0x000000011733acea: subq   $0x5,(%rsp)
  0x000000011733acef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x000000011733acf4: hlt    
  0x000000011733acf5: hlt    
  0x000000011733acf6: hlt    
  0x000000011733acf7: hlt    
Compiled method (c2)      96    5             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x000000011733a710,0x000000011733aac8] = 952
 relocation     [0x000000011733a888,0x000000011733a8a8] = 32
 main code      [0x000000011733a8c0,0x000000011733a980] = 192
 stub code      [0x000000011733a980,0x000000011733a998] = 24
 metadata       [0x000000011733a998,0x000000011733a9a8] = 16
 scopes data    [0x000000011733a9a8,0x000000011733a9e8] = 64
 scopes pcs     [0x000000011733a9e8,0x000000011733aaa8] = 192
 dependencies   [0x000000011733aaa8,0x000000011733aab0] = 8
 handler table  [0x000000011733aab0,0x000000011733aac8] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x000000011733a8c0, 0x000000011733a998]  216 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001253d2a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x000000011733a8c0: mov    %eax,-0x14000(%rsp)
  0x000000011733a8c7: push   %rbp
  0x000000011733a8c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000011733a8cc: mov    %esi,%ebp
  0x000000011733a8ce: cmp    $0xffffff80,%esi
  0x000000011733a8d1: jl     0x000000011733a94a  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000011733a8d3: cmp    $0x7f,%esi
  0x000000011733a8d6: jle    0x000000011733a956  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x000000011733a8dc: mov    0x118(%r15),%rax
  0x000000011733a8e3: mov    %rax,%r10
  0x000000011733a8e6: add    $0x10,%r10
  0x000000011733a8ea: cmp    0x128(%r15),%r10
  0x000000011733a8f1: jae    0x000000011733a939
  0x000000011733a8f3: mov    %r10,0x118(%r15)
  0x000000011733a8fa: prefetchnta 0xc0(%r10)
  0x000000011733a902: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000011733a908: movabs $0x800000000,%r10
  0x000000011733a912: add    %r11,%r10
  0x000000011733a915: mov    0xb8(%r10),%r10
  0x000000011733a91c: mov    %r10,(%rax)
  0x000000011733a91f: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x000000011733a926: mov    %ebp,0xc(%rax)     ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000011733a929: add    $0x20,%rsp
  0x000000011733a92d: pop    %rbp
  0x000000011733a92e: mov    0x108(%r15),%r10
  0x000000011733a935: test   %eax,(%r10)        ;   {poll_return}
  0x000000011733a938: retq   
  0x000000011733a939: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x000000011733a943: callq  0x0000000117339980  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011733a948: jmp    0x000000011733a926
  0x000000011733a94a: mov    $0xffffff4d,%esi
  0x000000011733a94f: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011733a954: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x000000011733a956: mov    $0xffffff4d,%esi
  0x000000011733a95b: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*if_icmpgt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011733a960: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000011733a962: mov    %rax,%rsi
  0x000000011733a965: add    $0x20,%rsp
  0x000000011733a969: pop    %rbp
  0x000000011733a96a: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x000000011733a96f: hlt    
  0x000000011733a970: hlt    
  0x000000011733a971: hlt    
  0x000000011733a972: hlt    
  0x000000011733a973: hlt    
  0x000000011733a974: hlt    
  0x000000011733a975: hlt    
  0x000000011733a976: hlt    
  0x000000011733a977: hlt    
  0x000000011733a978: hlt    
  0x000000011733a979: hlt    
  0x000000011733a97a: hlt    
  0x000000011733a97b: hlt    
  0x000000011733a97c: hlt    
  0x000000011733a97d: hlt    
  0x000000011733a97e: hlt    
  0x000000011733a97f: hlt    
[Exception Handler]
[Stub Code]
  0x000000011733a980: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011733a985: callq  0x000000011733a98a
  0x000000011733a98a: subq   $0x5,(%rsp)
  0x000000011733a98f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x000000011733a994: hlt    
  0x000000011733a995: hlt    
  0x000000011733a996: hlt    
  0x000000011733a997: hlt    

ImmutableOopMap{}pc offsets: 136 148 160 
Running the benchmark with a cold JVM
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011733ce20, 0x000000011733ce48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012563a8a8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x000000011733ce20: mov    0x8(%rsp),%rbx
  0x000000011733ce25: mov    0x24(%rbx),%ebx
  0x000000011733ce28: shl    $0x3,%rbx
  0x000000011733ce2c: mov    0x10(%rbx),%rbx
  0x000000011733ce30: test   %rbx,%rbx
  0x000000011733ce33: je     0x000000011733ce3c
  0x000000011733ce39: jmpq   *0x38(%rbx)
  0x000000011733ce3c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011733ce41: hlt    
  0x000000011733ce42: hlt    
  0x000000011733ce43: hlt    
  0x000000011733ce44: hlt    
  0x000000011733ce45: hlt    
  0x000000011733ce46: hlt    
  0x000000011733ce47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173421a0, 0x00000001173421c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125654428} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173421a0: mov    0x24(%rsi),%ebx
  0x00000001173421a3: shl    $0x3,%rbx
  0x00000001173421a7: mov    0x10(%rbx),%rbx
  0x00000001173421ab: test   %rbx,%rbx
  0x00000001173421ae: je     0x00000001173421b7
  0x00000001173421b4: jmpq   *0x38(%rbx)
  0x00000001173421b7: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173421bc: hlt    
  0x00000001173421bd: hlt    
  0x00000001173421be: hlt    
  0x00000001173421bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001173423a0, 0x00000001173423d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012565d000} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  0x00000001173423a0: mov    0x14(%rsi),%ebx
  0x00000001173423a3: shl    $0x3,%rbx
  0x00000001173423a7: mov    0x28(%rbx),%ebx
  0x00000001173423aa: shl    $0x3,%rbx
  0x00000001173423ae: mov    0x24(%rbx),%ebx
  0x00000001173423b1: shl    $0x3,%rbx
  0x00000001173423b5: mov    0x10(%rbx),%rbx
  0x00000001173423b9: test   %rbx,%rbx
  0x00000001173423bc: je     0x00000001173423c5
  0x00000001173423c2: jmpq   *0x38(%rbx)
  0x00000001173423c5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173423ca: hlt    
  0x00000001173423cb: hlt    
  0x00000001173423cc: hlt    
  0x00000001173423cd: hlt    
  0x00000001173423ce: hlt    
  0x00000001173423cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173425a0, 0x00000001173425c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x000000012565d1b8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x00000001173425a0: mov    0x10(%rsp),%rbx
  0x00000001173425a5: cmp    (%rsi),%rax
  0x00000001173425a8: mov    0x24(%rbx),%ebx
  0x00000001173425ab: shl    $0x3,%rbx
  0x00000001173425af: mov    0x10(%rbx),%rbx
  0x00000001173425b3: test   %rbx,%rbx
  0x00000001173425b6: je     0x00000001173425bf
  0x00000001173425bc: jmpq   *0x38(%rbx)
  0x00000001173425bf: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173425c4: hlt    
  0x00000001173425c5: hlt    
  0x00000001173425c6: hlt    
  0x00000001173425c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117344320, 0x0000000117344340]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256a6788} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117344320: mov    0x24(%rcx),%ebx
  0x0000000117344323: shl    $0x3,%rbx
  0x0000000117344327: mov    0x10(%rbx),%rbx
  0x000000011734432b: test   %rbx,%rbx
  0x000000011734432e: je     0x0000000117344337
  0x0000000117344334: jmpq   *0x38(%rbx)
  0x0000000117344337: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734433c: hlt    
  0x000000011734433d: hlt    
  0x000000011734433e: hlt    
  0x000000011734433f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117344520, 0x0000000117344540]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256a8088} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117344520: mov    0x24(%r8),%ebx
  0x0000000117344524: shl    $0x3,%rbx
  0x0000000117344528: mov    0x10(%rbx),%rbx
  0x000000011734452c: test   %rbx,%rbx
  0x000000011734452f: je     0x0000000117344538
  0x0000000117344535: jmpq   *0x38(%rbx)
  0x0000000117344538: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734453d: hlt    
  0x000000011734453e: hlt    
  0x000000011734453f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()Ljava/lang/Object;  [0x0000000117344ea0, 0x0000000117344ed0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256c62a0} 'invokeBasic' '()Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x0000000117344ea0: mov    0x14(%rsi),%ebx
  0x0000000117344ea3: shl    $0x3,%rbx
  0x0000000117344ea7: mov    0x28(%rbx),%ebx
  0x0000000117344eaa: shl    $0x3,%rbx
  0x0000000117344eae: mov    0x24(%rbx),%ebx
  0x0000000117344eb1: shl    $0x3,%rbx
  0x0000000117344eb5: mov    0x10(%rbx),%rbx
  0x0000000117344eb9: test   %rbx,%rbx
  0x0000000117344ebc: je     0x0000000117344ec5
  0x0000000117344ec2: jmpq   *0x38(%rbx)
  0x0000000117344ec5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117344eca: hlt    
  0x0000000117344ecb: hlt    
  0x0000000117344ecc: hlt    
  0x0000000117344ecd: hlt    
  0x0000000117344ece: hlt    
  0x0000000117344ecf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173450a0, 0x00000001173450c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256c63b8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173450a0: cmp    (%rsi),%rax
  0x00000001173450a3: mov    0x24(%rdx),%ebx
  0x00000001173450a6: shl    $0x3,%rbx
  0x00000001173450aa: mov    0x10(%rbx),%rbx
  0x00000001173450ae: test   %rbx,%rbx
  0x00000001173450b1: je     0x00000001173450ba
  0x00000001173450b7: jmpq   *0x38(%rbx)
  0x00000001173450ba: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173450bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173452a0, 0x00000001173452c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ca260} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173452a0: mov    0x24(%rdi),%ebx
  0x00000001173452a3: shl    $0x3,%rbx
  0x00000001173452a7: mov    0x10(%rbx),%rbx
  0x00000001173452ab: test   %rbx,%rbx
  0x00000001173452ae: je     0x00000001173452b7
  0x00000001173452b4: jmpq   *0x38(%rbx)
  0x00000001173452b7: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173452bc: hlt    
  0x00000001173452bd: hlt    
  0x00000001173452be: hlt    
  0x00000001173452bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001173454a0, 0x00000001173454d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256cc1b8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x00000001173454a0: mov    0x14(%rsi),%ebx
  0x00000001173454a3: shl    $0x3,%rbx
  0x00000001173454a7: mov    0x28(%rbx),%ebx
  0x00000001173454aa: shl    $0x3,%rbx
  0x00000001173454ae: mov    0x24(%rbx),%ebx
  0x00000001173454b1: shl    $0x3,%rbx
  0x00000001173454b5: mov    0x10(%rbx),%rbx
  0x00000001173454b9: test   %rbx,%rbx
  0x00000001173454bc: je     0x00000001173454c5
  0x00000001173454c2: jmpq   *0x38(%rbx)
  0x00000001173454c5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173454ca: hlt    
  0x00000001173454cb: hlt    
  0x00000001173454cc: hlt    
  0x00000001173454cd: hlt    
  0x00000001173454ce: hlt    
  0x00000001173454cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173456a0, 0x00000001173456c8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256cc2d0} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/invoke/MemberName'  (sp of caller)
  0x00000001173456a0: mov    0x8(%rsp),%rbx
  0x00000001173456a5: cmp    (%rsi),%rax
  0x00000001173456a8: mov    0x24(%rbx),%ebx
  0x00000001173456ab: shl    $0x3,%rbx
  0x00000001173456af: mov    0x10(%rbx),%rbx
  0x00000001173456b3: test   %rbx,%rbx
  0x00000001173456b6: je     0x00000001173456bf
  0x00000001173456bc: jmpq   *0x38(%rbx)
  0x00000001173456bf: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173456c4: hlt    
  0x00000001173456c5: hlt    
  0x00000001173456c6: hlt    
  0x00000001173456c7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/invoke/MemberName;)I  [0x0000000117345ea0, 0x0000000117345ec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256d44c8} 'linkToStatic' '(Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117345ea0: mov    0x24(%rsi),%ebx
  0x0000000117345ea3: shl    $0x3,%rbx
  0x0000000117345ea7: mov    0x10(%rbx),%rbx
  0x0000000117345eab: test   %rbx,%rbx
  0x0000000117345eae: je     0x0000000117345eb7
  0x0000000117345eb4: jmpq   *0x38(%rbx)
  0x0000000117345eb7: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117345ebc: hlt    
  0x0000000117345ebd: hlt    
  0x0000000117345ebe: hlt    
  0x0000000117345ebf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic()I  [0x00000001173460a0, 0x00000001173460d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256d45e0} 'invokeBasic' '()I' in 'java/lang/invoke/MethodHandle'
  #           [sp+0x0]  (sp of caller)
  0x00000001173460a0: mov    0x14(%rsi),%ebx
  0x00000001173460a3: shl    $0x3,%rbx
  0x00000001173460a7: mov    0x28(%rbx),%ebx
  0x00000001173460aa: shl    $0x3,%rbx
  0x00000001173460ae: mov    0x24(%rbx),%ebx
  0x00000001173460b1: shl    $0x3,%rbx
  0x00000001173460b5: mov    0x10(%rbx),%rbx
  0x00000001173460b9: test   %rbx,%rbx
  0x00000001173460bc: je     0x00000001173460c5
  0x00000001173460c2: jmpq   *0x38(%rbx)
  0x00000001173460c5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173460ca: hlt    
  0x00000001173460cb: hlt    
  0x00000001173460cc: hlt    
  0x00000001173460cd: hlt    
  0x00000001173460ce: hlt    
  0x00000001173460cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x00000001173462a0, 0x00000001173462c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256d46f8} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173462a0: cmp    (%rsi),%rax
  0x00000001173462a3: mov    0x24(%rdx),%ebx
  0x00000001173462a6: shl    $0x3,%rbx
  0x00000001173462aa: mov    0x10(%rbx),%rbx
  0x00000001173462ae: test   %rbx,%rbx
  0x00000001173462b1: je     0x00000001173462ba
  0x00000001173462b7: jmpq   *0x38(%rbx)
  0x00000001173462ba: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173462bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173464a0, 0x00000001173464c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256d49a0} 'linkToStatic' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173464a0: mov    0x24(%r8),%ebx
  0x00000001173464a4: shl    $0x3,%rbx
  0x00000001173464a8: mov    0x10(%rbx),%rbx
  0x00000001173464ac: test   %rbx,%rbx
  0x00000001173464af: je     0x00000001173464b8
  0x00000001173464b5: jmpq   *0x38(%rbx)
  0x00000001173464b8: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173464bd: hlt    
  0x00000001173464be: hlt    
  0x00000001173464bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x00000001173466a0, 0x00000001173466c0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256d4ab8} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x00000001173466a0: mov    0x24(%rcx),%ebx
  0x00000001173466a3: shl    $0x3,%rbx
  0x00000001173466a7: mov    0x10(%rbx),%rbx
  0x00000001173466ab: test   %rbx,%rbx
  0x00000001173466ae: je     0x00000001173466b7
  0x00000001173466b4: jmpq   *0x38(%rbx)
  0x00000001173466b7: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173466bc: hlt    
  0x00000001173466bd: hlt    
  0x00000001173466be: hlt    
  0x00000001173466bf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117346aa0, 0x0000000117346ac0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256dfe00} 'linkToStatic' '(DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rsi:rsi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117346aa0: mov    0x24(%rsi),%ebx
  0x0000000117346aa3: shl    $0x3,%rbx
  0x0000000117346aa7: mov    0x10(%rbx),%rbx
  0x0000000117346aab: test   %rbx,%rbx
  0x0000000117346aae: je     0x0000000117346ab7
  0x0000000117346ab4: jmpq   *0x38(%rbx)
  0x0000000117346ab7: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117346abc: hlt    
  0x0000000117346abd: hlt    
  0x0000000117346abe: hlt    
  0x0000000117346abf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;II)Ljava/lang/Object;  [0x0000000117346ca0, 0x0000000117346cd0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e1920} 'invokeBasic' '(Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx       = int
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000117346ca0: mov    0x14(%rsi),%ebx
  0x0000000117346ca3: shl    $0x3,%rbx
  0x0000000117346ca7: mov    0x28(%rbx),%ebx
  0x0000000117346caa: shl    $0x3,%rbx
  0x0000000117346cae: mov    0x24(%rbx),%ebx
  0x0000000117346cb1: shl    $0x3,%rbx
  0x0000000117346cb5: mov    0x10(%rbx),%rbx
  0x0000000117346cb9: test   %rbx,%rbx
  0x0000000117346cbc: je     0x0000000117346cc5
  0x0000000117346cc2: jmpq   *0x38(%rbx)
  0x0000000117346cc5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117346cca: hlt    
  0x0000000117346ccb: hlt    
  0x0000000117346ccc: hlt    
  0x0000000117346ccd: hlt    
  0x0000000117346cce: hlt    
  0x0000000117346ccf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117346ea0, 0x0000000117346ec0]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e1a38} 'linkToSpecial' '(Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117346ea0: cmp    (%rsi),%rax
  0x0000000117346ea3: mov    0x24(%r9),%ebx
  0x0000000117346ea7: shl    $0x3,%rbx
  0x0000000117346eab: mov    0x10(%rbx),%rbx
  0x0000000117346eaf: test   %rbx,%rbx
  0x0000000117346eb2: je     0x0000000117346ebb
  0x0000000117346eb8: jmpq   *0x38(%rbx)
  0x0000000117346ebb: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000117347820, 0x0000000117347840]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e2ac8} 'linkToStatic' '(ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117347820: mov    0x24(%r9),%ebx
  0x0000000117347824: shl    $0x3,%rbx
  0x0000000117347828: mov    0x10(%rbx),%rbx
  0x000000011734782c: test   %rbx,%rbx
  0x000000011734782f: je     0x0000000117347838
  0x0000000117347835: jmpq   *0x38(%rbx)
  0x0000000117347838: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734783d: hlt    
  0x000000011734783e: hlt    
  0x000000011734783f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;ILjava/lang/Object;)I  [0x0000000117347a20, 0x0000000117347a50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e2cd0} 'invokeBasic' '(ILjava/lang/Object;ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000117347a20: mov    0x14(%rsi),%ebx
  0x0000000117347a23: shl    $0x3,%rbx
  0x0000000117347a27: mov    0x28(%rbx),%ebx
  0x0000000117347a2a: shl    $0x3,%rbx
  0x0000000117347a2e: mov    0x24(%rbx),%ebx
  0x0000000117347a31: shl    $0x3,%rbx
  0x0000000117347a35: mov    0x10(%rbx),%rbx
  0x0000000117347a39: test   %rbx,%rbx
  0x0000000117347a3c: je     0x0000000117347a45
  0x0000000117347a42: jmpq   *0x38(%rbx)
  0x0000000117347a45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117347a4a: hlt    
  0x0000000117347a4b: hlt    
  0x0000000117347a4c: hlt    
  0x0000000117347a4d: hlt    
  0x0000000117347a4e: hlt    
  0x0000000117347a4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000117347c20, 0x0000000117347c40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e2de8} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117347c20: cmp    (%rsi),%rax
  0x0000000117347c23: mov    0x24(%rdi),%ebx
  0x0000000117347c26: shl    $0x3,%rbx
  0x0000000117347c2a: mov    0x10(%rbx),%rbx
  0x0000000117347c2e: test   %rbx,%rbx
  0x0000000117347c31: je     0x0000000117347c3a
  0x0000000117347c37: jmpq   *0x38(%rbx)
  0x0000000117347c3a: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117347c3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117347e20, 0x0000000117347e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e3ad8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117347e20: mov    0x24(%r9),%ebx
  0x0000000117347e24: shl    $0x3,%rbx
  0x0000000117347e28: mov    0x10(%rbx),%rbx
  0x0000000117347e2c: test   %rbx,%rbx
  0x0000000117347e2f: je     0x0000000117347e38
  0x0000000117347e35: jmpq   *0x38(%rbx)
  0x0000000117347e38: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117347e3d: hlt    
  0x0000000117347e3e: hlt    
  0x0000000117347e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000117348020, 0x0000000117348050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e3ce0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000117348020: mov    0x14(%rsi),%ebx
  0x0000000117348023: shl    $0x3,%rbx
  0x0000000117348027: mov    0x28(%rbx),%ebx
  0x000000011734802a: shl    $0x3,%rbx
  0x000000011734802e: mov    0x24(%rbx),%ebx
  0x0000000117348031: shl    $0x3,%rbx
  0x0000000117348035: mov    0x10(%rbx),%rbx
  0x0000000117348039: test   %rbx,%rbx
  0x000000011734803c: je     0x0000000117348045
  0x0000000117348042: jmpq   *0x38(%rbx)
  0x0000000117348045: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734804a: hlt    
  0x000000011734804b: hlt    
  0x000000011734804c: hlt    
  0x000000011734804d: hlt    
  0x000000011734804e: hlt    
  0x000000011734804f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;I)I  [0x0000000117348220, 0x0000000117348250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e45d0} 'invokeBasic' '(ILjava/lang/Object;I)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  #           [sp+0x0]  (sp of caller)
  0x0000000117348220: mov    0x14(%rsi),%ebx
  0x0000000117348223: shl    $0x3,%rbx
  0x0000000117348227: mov    0x28(%rbx),%ebx
  0x000000011734822a: shl    $0x3,%rbx
  0x000000011734822e: mov    0x24(%rbx),%ebx
  0x0000000117348231: shl    $0x3,%rbx
  0x0000000117348235: mov    0x10(%rbx),%rbx
  0x0000000117348239: test   %rbx,%rbx
  0x000000011734823c: je     0x0000000117348245
  0x0000000117348242: jmpq   *0x38(%rbx)
  0x0000000117348245: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734824a: hlt    
  0x000000011734824b: hlt    
  0x000000011734824c: hlt    
  0x000000011734824d: hlt    
  0x000000011734824e: hlt    
  0x000000011734824f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I  [0x0000000117348420, 0x0000000117348440]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e46e8} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117348420: cmp    (%rsi),%rax
  0x0000000117348423: mov    0x24(%r9),%ebx
  0x0000000117348427: shl    $0x3,%rbx
  0x000000011734842b: mov    0x10(%rbx),%rbx
  0x000000011734842f: test   %rbx,%rbx
  0x0000000117348432: je     0x000000011734843b
  0x0000000117348438: jmpq   *0x38(%rbx)
  0x000000011734843b: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     150   32             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000011734b310,0x000000011734b5b8] = 680
 relocation     [0x000000011734b488,0x000000011734b498] = 16
 main code      [0x000000011734b4a0,0x000000011734b500] = 96
 stub code      [0x000000011734b500,0x000000011734b518] = 24
 metadata       [0x000000011734b518,0x000000011734b520] = 8
 scopes data    [0x000000011734b520,0x000000011734b540] = 32
 scopes pcs     [0x000000011734b540,0x000000011734b5b0] = 112
 dependencies   [0x000000011734b5b0,0x000000011734b5b8] = 8
----------------------------------------------------------------------
java/lang/String.isLatin1()Z  [0x000000011734b4a0, 0x000000011734b518]  120 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001252e3300} 'isLatin1' '()Z' in 'java/lang/String'
  #           [sp+0x20]  (sp of caller)
  0x000000011734b4a0: mov    0x8(%rsi),%r10d
  0x000000011734b4a4: movabs $0x800000000,%r12
  0x000000011734b4ae: add    %r12,%r10
  0x000000011734b4b1: xor    %r12,%r12
  0x000000011734b4b4: cmp    %r10,%rax
  0x000000011734b4b7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011734b4bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x000000011734b4c0: mov    %eax,-0x14000(%rsp)
  0x000000011734b4c7: push   %rbp
  0x000000011734b4c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.String::isLatin1@-1 (line 3266)

  0x000000011734b4cc: movsbl 0x14(%rsi),%r11d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)

  0x000000011734b4d1: test   %r11d,%r11d
  0x000000011734b4d4: jne    0x000000011734b4eb  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011734b4d6: mov    $0x1,%eax
  0x000000011734b4db: add    $0x10,%rsp
  0x000000011734b4df: pop    %rbp
  0x000000011734b4e0: mov    0x108(%r15),%r10
  0x000000011734b4e7: test   %eax,(%r10)        ;   {poll_return}
  0x000000011734b4ea: retq   
  0x000000011734b4eb: mov    $0xffffff4d,%esi
  0x000000011734b4f0: mov    %r11d,%ebp
  0x000000011734b4f3: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011734b4f8: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)

  0x000000011734b4fa: hlt    
  0x000000011734b4fb: hlt    
  0x000000011734b4fc: hlt    
  0x000000011734b4fd: hlt    
  0x000000011734b4fe: hlt    
  0x000000011734b4ff: hlt    
[Exception Handler]
[Stub Code]
  0x000000011734b500: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x000000011734b505: callq  0x000000011734b50a
  0x000000011734b50a: subq   $0x5,(%rsp)
  0x000000011734b50f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x000000011734b514: hlt    
  0x000000011734b515: hlt    
  0x000000011734b516: hlt    
  0x000000011734b517: hlt    

ImmutableOopMap{}pc offsets: 88 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011734b020, 0x000000011734b040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e7258} 'linkToStatic' '(ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx       = int
  # parm3:    r8        = int
  # parm4:    r9:r9     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734b020: mov    0x24(%r9),%ebx
  0x000000011734b024: shl    $0x3,%rbx
  0x000000011734b028: mov    0x10(%rbx),%rbx
  0x000000011734b02c: test   %rbx,%rbx
  0x000000011734b02f: je     0x000000011734b038
  0x000000011734b035: jmpq   *0x38(%rbx)
  0x000000011734b038: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734b03d: hlt    
  0x000000011734b03e: hlt    
  0x000000011734b03f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734ae20, 0x000000011734ae48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e8058} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/invoke/MemberName'
  0x000000011734ae20: mov    0x10(%rsp),%rbx
  0x000000011734ae25: mov    0x24(%rbx),%ebx
  0x000000011734ae28: shl    $0x3,%rbx
  0x000000011734ae2c: mov    0x10(%rbx),%rbx
  0x000000011734ae30: test   %rbx,%rbx
  0x000000011734ae33: je     0x000000011734ae3c
  0x000000011734ae39: jmpq   *0x38(%rbx)
  0x000000011734ae3c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734ae41: hlt    
  0x000000011734ae42: hlt    
  0x000000011734ae43: hlt    
  0x000000011734ae44: hlt    
  0x000000011734ae45: hlt    
  0x000000011734ae46: hlt    
  0x000000011734ae47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;II)I  [0x000000011734ac20, 0x000000011734ac50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e8170} 'invokeBasic' '(ILjava/lang/Object;II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8        = int
  # parm3:    r9        = int
  #           [sp+0x0]  (sp of caller)
  0x000000011734ac20: mov    0x14(%rsi),%ebx
  0x000000011734ac23: shl    $0x3,%rbx
  0x000000011734ac27: mov    0x28(%rbx),%ebx
  0x000000011734ac2a: shl    $0x3,%rbx
  0x000000011734ac2e: mov    0x24(%rbx),%ebx
  0x000000011734ac31: shl    $0x3,%rbx
  0x000000011734ac35: mov    0x10(%rbx),%rbx
  0x000000011734ac39: test   %rbx,%rbx
  0x000000011734ac3c: je     0x000000011734ac45
  0x000000011734ac42: jmpq   *0x38(%rbx)
  0x000000011734ac45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734ac4a: hlt    
  0x000000011734ac4b: hlt    
  0x000000011734ac4c: hlt    
  0x000000011734ac4d: hlt    
  0x000000011734ac4e: hlt    
  0x000000011734ac4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011734aa20, 0x000000011734aa40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e8288} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  # parm5:    rdi:rdi   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734aa20: cmp    (%rsi),%rax
  0x000000011734aa23: mov    0x24(%rdi),%ebx
  0x000000011734aa26: shl    $0x3,%rbx
  0x000000011734aa2a: mov    0x10(%rbx),%rbx
  0x000000011734aa2e: test   %rbx,%rbx
  0x000000011734aa31: je     0x000000011734aa3a
  0x000000011734aa37: jmpq   *0x38(%rbx)
  0x000000011734aa3a: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734aa3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011734a820, 0x000000011734a850]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e83f0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  0x000000011734a820: mov    0x14(%rsi),%ebx
  0x000000011734a823: shl    $0x3,%rbx
  0x000000011734a827: mov    0x28(%rbx),%ebx
  0x000000011734a82a: shl    $0x3,%rbx
  0x000000011734a82e: mov    0x24(%rbx),%ebx
  0x000000011734a831: shl    $0x3,%rbx
  0x000000011734a835: mov    0x10(%rbx),%rbx
  0x000000011734a839: test   %rbx,%rbx
  0x000000011734a83c: je     0x000000011734a845
  0x000000011734a842: jmpq   *0x38(%rbx)
  0x000000011734a845: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734a84a: hlt    
  0x000000011734a84b: hlt    
  0x000000011734a84c: hlt    
  0x000000011734a84d: hlt    
  0x000000011734a84e: hlt    
  0x000000011734a84f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734a620, 0x000000011734a648]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e9390} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/Object'
  # parm4:    r9:r9     = 'java/lang/Object'
  # parm5:    rdi:rdi   = 'java/lang/Object'
  # parm6:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm7:    [sp+0x8]   = 'java/lang/Object'
  # parm8:    [sp+0x10]   = 'java/lang/invoke/MemberName'
  0x000000011734a620: mov    0x18(%rsp),%rbx
  0x000000011734a625: mov    0x24(%rbx),%ebx
  0x000000011734a628: shl    $0x3,%rbx
  0x000000011734a62c: mov    0x10(%rbx),%rbx
  0x000000011734a630: test   %rbx,%rbx
  0x000000011734a633: je     0x000000011734a63c
  0x000000011734a639: jmpq   *0x38(%rbx)
  0x000000011734a63c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734a641: hlt    
  0x000000011734a642: hlt    
  0x000000011734a643: hlt    
  0x000000011734a644: hlt    
  0x000000011734a645: hlt    
  0x000000011734a646: hlt    
  0x000000011734a647: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)Ljava/lang/Object;  [0x000000011734a420, 0x000000011734a450]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e94a8} 'invokeBasic' '(II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011734a420: mov    0x14(%rsi),%ebx
  0x000000011734a423: shl    $0x3,%rbx
  0x000000011734a427: mov    0x28(%rbx),%ebx
  0x000000011734a42a: shl    $0x3,%rbx
  0x000000011734a42e: mov    0x24(%rbx),%ebx
  0x000000011734a431: shl    $0x3,%rbx
  0x000000011734a435: mov    0x10(%rbx),%rbx
  0x000000011734a439: test   %rbx,%rbx
  0x000000011734a43c: je     0x000000011734a445
  0x000000011734a442: jmpq   *0x38(%rbx)
  0x000000011734a445: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734a44a: hlt    
  0x000000011734a44b: hlt    
  0x000000011734a44c: hlt    
  0x000000011734a44d: hlt    
  0x000000011734a44e: hlt    
  0x000000011734a44f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734a220, 0x000000011734a240]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e95c0} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734a220: cmp    (%rsi),%rax
  0x000000011734a223: mov    0x24(%r8),%ebx
  0x000000011734a227: shl    $0x3,%rbx
  0x000000011734a22b: mov    0x10(%rbx),%rbx
  0x000000011734a22f: test   %rbx,%rbx
  0x000000011734a232: je     0x000000011734a23b
  0x000000011734a238: jmpq   *0x38(%rbx)
  0x000000011734a23b: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011734a020, 0x000000011734a050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e9728} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  # parm1:    rcx:rcx   = 'java/lang/Object'
  # parm2:    r8:r8     = 'java/lang/Object'
  # parm3:    r9:r9     = 'java/lang/Object'
  # parm4:    rdi:rdi   = 'java/lang/Object'
  # parm5:    [sp+0x0]   = 'java/lang/Object'  (sp of caller)
  # parm6:    [sp+0x8]   = 'java/lang/Object'
  # parm7:    [sp+0x10]   = 'java/lang/Object'
  0x000000011734a020: mov    0x14(%rsi),%ebx
  0x000000011734a023: shl    $0x3,%rbx
  0x000000011734a027: mov    0x28(%rbx),%ebx
  0x000000011734a02a: shl    $0x3,%rbx
  0x000000011734a02e: mov    0x24(%rbx),%ebx
  0x000000011734a031: shl    $0x3,%rbx
  0x000000011734a035: mov    0x10(%rbx),%rbx
  0x000000011734a039: test   %rbx,%rbx
  0x000000011734a03c: je     0x000000011734a045
  0x000000011734a042: jmpq   *0x38(%rbx)
  0x000000011734a045: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734a04a: hlt    
  0x000000011734a04b: hlt    
  0x000000011734a04c: hlt    
  0x000000011734a04d: hlt    
  0x000000011734a04e: hlt    
  0x000000011734a04f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000117349e20, 0x0000000117349e40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e9a20} 'linkToStatic' '(ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx:rdx   = 'java/lang/Object'
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117349e20: mov    0x24(%rcx),%ebx
  0x0000000117349e23: shl    $0x3,%rbx
  0x0000000117349e27: mov    0x10(%rbx),%rbx
  0x0000000117349e2b: test   %rbx,%rbx
  0x0000000117349e2e: je     0x0000000117349e37
  0x0000000117349e34: jmpq   *0x38(%rbx)
  0x0000000117349e37: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117349e3c: hlt    
  0x0000000117349e3d: hlt    
  0x0000000117349e3e: hlt    
  0x0000000117349e3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(ILjava/lang/Object;)I  [0x0000000117349c20, 0x0000000117349c50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e9b38} 'invokeBasic' '(ILjava/lang/Object;)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x0]  (sp of caller)
  0x0000000117349c20: mov    0x14(%rsi),%ebx
  0x0000000117349c23: shl    $0x3,%rbx
  0x0000000117349c27: mov    0x28(%rbx),%ebx
  0x0000000117349c2a: shl    $0x3,%rbx
  0x0000000117349c2e: mov    0x24(%rbx),%ebx
  0x0000000117349c31: shl    $0x3,%rbx
  0x0000000117349c35: mov    0x10(%rbx),%rbx
  0x0000000117349c39: test   %rbx,%rbx
  0x0000000117349c3c: je     0x0000000117349c45
  0x0000000117349c42: jmpq   *0x38(%rbx)
  0x0000000117349c45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117349c4a: hlt    
  0x0000000117349c4b: hlt    
  0x0000000117349c4c: hlt    
  0x0000000117349c4d: hlt    
  0x0000000117349c4e: hlt    
  0x0000000117349c4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I  [0x0000000117349a20, 0x0000000117349a40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256e9c50} 'linkToSpecial' '(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117349a20: cmp    (%rsi),%rax
  0x0000000117349a23: mov    0x24(%r8),%ebx
  0x0000000117349a27: shl    $0x3,%rbx
  0x0000000117349a2b: mov    0x10(%rbx),%rbx
  0x0000000117349a2f: test   %rbx,%rbx
  0x0000000117349a32: je     0x0000000117349a3b
  0x0000000117349a38: jmpq   *0x38(%rbx)
  0x0000000117349a3b: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
Compiled method (c2)     169   45             java.lang.String::charAt (25 bytes)
 total in heap  [0x0000000117349490,0x0000000117349838] = 936
 relocation     [0x0000000117349608,0x0000000117349618] = 16
 main code      [0x0000000117349620,0x00000001173496c0] = 160
 stub code      [0x00000001173496c0,0x00000001173496d8] = 24
 metadata       [0x00000001173496d8,0x00000001173496f0] = 24
 scopes data    [0x00000001173496f0,0x0000000117349750] = 96
 scopes pcs     [0x0000000117349750,0x0000000117349820] = 208
 dependencies   [0x0000000117349820,0x0000000117349828] = 8
 nul chk table  [0x0000000117349828,0x0000000117349838] = 16
----------------------------------------------------------------------
java/lang/String.charAt(I)C  [0x0000000117349620, 0x00000001173496d8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001252de4b8} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000117349620: mov    0x8(%rsi),%r10d
  0x0000000117349624: movabs $0x800000000,%r12
  0x000000011734962e: add    %r12,%r10
  0x0000000117349631: xor    %r12,%r12
  0x0000000117349634: cmp    %r10,%rax
  0x0000000117349637: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011734963d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117349640: mov    %eax,-0x14000(%rsp)
  0x0000000117349647: push   %rbp
  0x0000000117349648: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 692)

  0x000000011734964c: movsbl 0x14(%rsi),%r10d   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000117349651: test   %r10d,%r10d
  0x0000000117349654: jne    0x000000011734967d  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000117349656: mov    0xc(%rsi),%ebp     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)

  0x0000000117349659: mov    0xc(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x00000001173496a6
  0x000000011734965e: cmp    %r10d,%edx
  0x0000000117349661: jae    0x0000000117349696
  0x0000000117349663: lea    (%r12,%rbp,8),%r10
  0x0000000117349667: movzbl 0x10(%r10,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x000000011734966d: add    $0x20,%rsp
  0x0000000117349671: pop    %rbp
  0x0000000117349672: mov    0x108(%r15),%r10
  0x0000000117349679: test   %eax,(%r10)        ;   {poll_return}
  0x000000011734967c: retq   
  0x000000011734967d: mov    %rsi,%rbp
  0x0000000117349680: mov    %edx,(%rsp)
  0x0000000117349683: mov    %r10d,0x4(%rsp)
  0x0000000117349688: mov    $0xffffff4d,%esi
  0x000000011734968d: xchg   %ax,%ax
  0x000000011734968f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117349694: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)

  0x0000000117349696: mov    $0xffffffe5,%esi
  0x000000011734969b: mov    %edx,0x4(%rsp)
  0x000000011734969f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173496a4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x00000001173496a6: mov    $0xfffffff6,%esi
  0x00000001173496ab: mov    %edx,0x4(%rsp)
  0x00000001173496af: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173496b4: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)

  0x00000001173496b6: hlt    
  0x00000001173496b7: hlt    
  0x00000001173496b8: hlt    
  0x00000001173496b9: hlt    
  0x00000001173496ba: hlt    
  0x00000001173496bb: hlt    
  0x00000001173496bc: hlt    
  0x00000001173496bd: hlt    
  0x00000001173496be: hlt    
  0x00000001173496bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173496c0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173496c5: callq  0x00000001173496ca
  0x00000001173496ca: subq   $0x5,(%rsp)
  0x00000001173496cf: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173496d4: hlt    
  0x00000001173496d5: hlt    
  0x00000001173496d6: hlt    
  0x00000001173496d7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 116 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 132 148 Compiled method (c2)     172   46             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x0000000117349190,0x0000000117349460] = 720
 relocation     [0x0000000117349308,0x0000000117349318] = 16
 main code      [0x0000000117349320,0x0000000117349380] = 96
 stub code      [0x0000000117349380,0x0000000117349398] = 24
 metadata       [0x0000000117349398,0x00000001173493a0] = 8
 scopes data    [0x00000001173493a0,0x00000001173493c8] = 40
 scopes pcs     [0x00000001173493c8,0x0000000117349448] = 128
 dependencies   [0x0000000117349448,0x0000000117349450] = 8
 nul chk table  [0x0000000117349450,0x0000000117349460] = 16
----------------------------------------------------------------------
java/lang/StringLatin1.charAt([BI)C  [0x0000000117349320, 0x0000000117349398]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000125431988} 'charAt' '([BI)C' in 'java/lang/StringLatin1'
  # parm0:    rsi:rsi   = '[B'
  # parm1:    rdx       = int
  #           [sp+0x30]  (sp of caller)
  0x0000000117349320: mov    %eax,-0x14000(%rsp)
  0x0000000117349327: push   %rbp
  0x0000000117349328: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.StringLatin1::charAt@-1 (line 46)

  0x000000011734932c: mov    0xc(%rsi),%r10d    ; implicit exception: dispatches to 0x000000011734935e
  0x0000000117349330: cmp    %r10d,%edx
  0x0000000117349333: jae    0x000000011734934a
  0x0000000117349335: movzbl 0x10(%rsi,%rdx,1),%eax  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)

  0x000000011734933a: add    $0x20,%rsp
  0x000000011734933e: pop    %rbp
  0x000000011734933f: mov    0x108(%r15),%r10
  0x0000000117349346: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117349349: retq   
  0x000000011734934a: mov    %rsi,%rbp
  0x000000011734934d: mov    %edx,0x4(%rsp)
  0x0000000117349351: mov    $0xffffffe5,%esi
  0x0000000117349356: nop
  0x0000000117349357: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011734935c: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x000000011734935e: mov    %rsi,%rbp
  0x0000000117349361: mov    %edx,0x4(%rsp)
  0x0000000117349365: mov    $0xfffffff6,%esi
  0x000000011734936a: nop
  0x000000011734936b: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*iflt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117349370: ud2                       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@1 (line 46)

  0x0000000117349372: hlt    
  0x0000000117349373: hlt    
  0x0000000117349374: hlt    
  0x0000000117349375: hlt    
  0x0000000117349376: hlt    
  0x0000000117349377: hlt    
  0x0000000117349378: hlt    
  0x0000000117349379: hlt    
  0x000000011734937a: hlt    
  0x000000011734937b: hlt    
  0x000000011734937c: hlt    
  0x000000011734937d: hlt    
  0x000000011734937e: hlt    
  0x000000011734937f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117349380: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117349385: callq  0x000000011734938a
  0x000000011734938a: subq   $0x5,(%rsp)
  0x000000011734938f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117349394: hlt    
  0x0000000117349395: hlt    
  0x0000000117349396: hlt    
  0x0000000117349397: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 80 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117349120, 0x0000000117349148]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256eada0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000117349120: mov    0x20(%rsp),%rbx
  0x0000000117349125: mov    0x24(%rbx),%ebx
  0x0000000117349128: shl    $0x3,%rbx
  0x000000011734912c: mov    0x10(%rbx),%rbx
  0x0000000117349130: test   %rbx,%rbx
  0x0000000117349133: je     0x000000011734913c
  0x0000000117349139: jmpq   *0x38(%rbx)
  0x000000011734913c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117349141: hlt    
  0x0000000117349142: hlt    
  0x0000000117349143: hlt    
  0x0000000117349144: hlt    
  0x0000000117349145: hlt    
  0x0000000117349146: hlt    
  0x0000000117349147: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000117348f20, 0x0000000117348f50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256eaf08} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000117348f20: mov    0x14(%rsi),%ebx
  0x0000000117348f23: shl    $0x3,%rbx
  0x0000000117348f27: mov    0x28(%rbx),%ebx
  0x0000000117348f2a: shl    $0x3,%rbx
  0x0000000117348f2e: mov    0x24(%rbx),%ebx
  0x0000000117348f31: shl    $0x3,%rbx
  0x0000000117348f35: mov    0x10(%rbx),%rbx
  0x0000000117348f39: test   %rbx,%rbx
  0x0000000117348f3c: je     0x0000000117348f45
  0x0000000117348f42: jmpq   *0x38(%rbx)
  0x0000000117348f45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117348f4a: hlt    
  0x0000000117348f4b: hlt    
  0x0000000117348f4c: hlt    
  0x0000000117348f4d: hlt    
  0x0000000117348f4e: hlt    
  0x0000000117348f4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x0000000117348aa0, 0x0000000117348ac8]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ebf80} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x0000000117348aa0: mov    0x28(%rsp),%rbx
  0x0000000117348aa5: mov    0x24(%rbx),%ebx
  0x0000000117348aa8: shl    $0x3,%rbx
  0x0000000117348aac: mov    0x10(%rbx),%rbx
  0x0000000117348ab0: test   %rbx,%rbx
  0x0000000117348ab3: je     0x0000000117348abc
  0x0000000117348ab9: jmpq   *0x38(%rbx)
  0x0000000117348abc: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x0000000117348ac1: hlt    
  0x0000000117348ac2: hlt    
  0x0000000117348ac3: hlt    
  0x0000000117348ac4: hlt    
  0x0000000117348ac5: hlt    
  0x0000000117348ac6: hlt    
  0x0000000117348ac7: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001173488a0, 0x00000001173488d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ec0e8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x00000001173488a0: mov    0x14(%rsi),%ebx
  0x00000001173488a3: shl    $0x3,%rbx
  0x00000001173488a7: mov    0x28(%rbx),%ebx
  0x00000001173488aa: shl    $0x3,%rbx
  0x00000001173488ae: mov    0x24(%rbx),%ebx
  0x00000001173488b1: shl    $0x3,%rbx
  0x00000001173488b5: mov    0x10(%rbx),%rbx
  0x00000001173488b9: test   %rbx,%rbx
  0x00000001173488bc: je     0x00000001173488c5
  0x00000001173488c2: jmpq   *0x38(%rbx)
  0x00000001173488c5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x00000001173488ca: hlt    
  0x00000001173488cb: hlt    
  0x00000001173488cc: hlt    
  0x00000001173488cd: hlt    
  0x00000001173488ce: hlt    
  0x00000001173488cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(IILjava/lang/invoke/MemberName;)I  [0x0000000117348620, 0x0000000117348640]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ec2f0} 'linkToStatic' '(IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x0000000117348620: mov    0x24(%rcx),%ebx
  0x0000000117348623: shl    $0x3,%rbx
  0x0000000117348627: mov    0x10(%rbx),%rbx
  0x000000011734862b: test   %rbx,%rbx
  0x000000011734862e: je     0x0000000117348637
  0x0000000117348634: jmpq   *0x38(%rbx)
  0x0000000117348637: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734863c: hlt    
  0x000000011734863d: hlt    
  0x000000011734863e: hlt    
  0x000000011734863f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734e420, 0x000000011734e448]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ed7e8} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734e420: mov    0x30(%rsp),%rbx
  0x000000011734e425: mov    0x24(%rbx),%ebx
  0x000000011734e428: shl    $0x3,%rbx
  0x000000011734e42c: mov    0x10(%rbx),%rbx
  0x000000011734e430: test   %rbx,%rbx
  0x000000011734e433: je     0x000000011734e43c
  0x000000011734e439: jmpq   *0x38(%rbx)
  0x000000011734e43c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734e441: hlt    
  0x000000011734e442: hlt    
  0x000000011734e443: hlt    
  0x000000011734e444: hlt    
  0x000000011734e445: hlt    
  0x000000011734e446: hlt    
  0x000000011734e447: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(II)I  [0x000000011734e220, 0x000000011734e250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256edb28} 'invokeBasic' '(II)I' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011734e220: mov    0x14(%rsi),%ebx
  0x000000011734e223: shl    $0x3,%rbx
  0x000000011734e227: mov    0x28(%rbx),%ebx
  0x000000011734e22a: shl    $0x3,%rbx
  0x000000011734e22e: mov    0x24(%rbx),%ebx
  0x000000011734e231: shl    $0x3,%rbx
  0x000000011734e235: mov    0x10(%rbx),%rbx
  0x000000011734e239: test   %rbx,%rbx
  0x000000011734e23c: je     0x000000011734e245
  0x000000011734e242: jmpq   *0x38(%rbx)
  0x000000011734e245: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734e24a: hlt    
  0x000000011734e24b: hlt    
  0x000000011734e24c: hlt    
  0x000000011734e24d: hlt    
  0x000000011734e24e: hlt    
  0x000000011734e24f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I  [0x000000011734e020, 0x000000011734e040]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256edc40} 'linkToSpecial' '(Ljava/lang/Object;IILjava/lang/invoke/MemberName;)I' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx       = int
  # parm3:    r8:r8     = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734e020: cmp    (%rsi),%rax
  0x000000011734e023: mov    0x24(%r8),%ebx
  0x000000011734e027: shl    $0x3,%rbx
  0x000000011734e02b: mov    0x10(%rbx),%rbx
  0x000000011734e02f: test   %rbx,%rbx
  0x000000011734e032: je     0x000000011734e03b
  0x000000011734e038: jmpq   *0x38(%rbx)
  0x000000011734e03b: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011734de20, 0x000000011734de50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256edda8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734de20: mov    0x14(%rsi),%ebx
  0x000000011734de23: shl    $0x3,%rbx
  0x000000011734de27: mov    0x28(%rbx),%ebx
  0x000000011734de2a: shl    $0x3,%rbx
  0x000000011734de2e: mov    0x24(%rbx),%ebx
  0x000000011734de31: shl    $0x3,%rbx
  0x000000011734de35: mov    0x10(%rbx),%rbx
  0x000000011734de39: test   %rbx,%rbx
  0x000000011734de3c: je     0x000000011734de45
  0x000000011734de42: jmpq   *0x38(%rbx)
  0x000000011734de45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734de4a: hlt    
  0x000000011734de4b: hlt    
  0x000000011734de4c: hlt    
  0x000000011734de4d: hlt    
  0x000000011734de4e: hlt    
  0x000000011734de4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734dc20, 0x000000011734dc48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256eef00} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734dc20: mov    0x38(%rsp),%rbx
  0x000000011734dc25: mov    0x24(%rbx),%ebx
  0x000000011734dc28: shl    $0x3,%rbx
  0x000000011734dc2c: mov    0x10(%rbx),%rbx
  0x000000011734dc30: test   %rbx,%rbx
  0x000000011734dc33: je     0x000000011734dc3c
  0x000000011734dc39: jmpq   *0x38(%rbx)
  0x000000011734dc3c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734dc41: hlt    
  0x000000011734dc42: hlt    
  0x000000011734dc43: hlt    
  0x000000011734dc44: hlt    
  0x000000011734dc45: hlt    
  0x000000011734dc46: hlt    
  0x000000011734dc47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  [0x000000011734da20, 0x000000011734da50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001256ef068} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734da20: mov    0x14(%rsi),%ebx
  0x000000011734da23: shl    $0x3,%rbx
  0x000000011734da27: mov    0x28(%rbx),%ebx
  0x000000011734da2a: shl    $0x3,%rbx
  0x000000011734da2e: mov    0x24(%rbx),%ebx
  0x000000011734da31: shl    $0x3,%rbx
  0x000000011734da35: mov    0x10(%rbx),%rbx
  0x000000011734da39: test   %rbx,%rbx
  0x000000011734da3c: je     0x000000011734da45
  0x000000011734da42: jmpq   *0x38(%rbx)
  0x000000011734da45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734da4a: hlt    
  0x000000011734da4b: hlt    
  0x000000011734da4c: hlt    
  0x000000011734da4d: hlt    
  0x000000011734da4e: hlt    
  0x000000011734da4f: hlt    
Compiled method (c2)     207   58             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x0000000117350010,0x0000000117350e28] = 3608
 relocation     [0x0000000117350188,0x00000001173501b8] = 48
 main code      [0x00000001173501c0,0x00000001173505e0] = 1056
 stub code      [0x00000001173505e0,0x0000000117350608] = 40
 metadata       [0x0000000117350608,0x0000000117350638] = 48
 scopes data    [0x0000000117350638,0x0000000117350838] = 512
 scopes pcs     [0x0000000117350838,0x0000000117350dd8] = 1440
 dependencies   [0x0000000117350dd8,0x0000000117350de0] = 8
 handler table  [0x0000000117350de0,0x0000000117350df8] = 24
 nul chk table  [0x0000000117350df8,0x0000000117350e28] = 48
----------------------------------------------------------------------
jdk/internal/org/objectweb/asm/ByteVector.putUTF8(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;  [0x00000001173501c0, 0x0000000117350608]  1096 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000125677d60} 'putUTF8' '(Ljava/lang/String;)Ljdk/internal/org/objectweb/asm/ByteVector;' in 'jdk/internal/org/objectweb/asm/ByteVector'
  # this:     rsi:rsi   = 'jdk/internal/org/objectweb/asm/ByteVector'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x50]  (sp of caller)
  0x00000001173501c0: mov    0x8(%rsi),%r10d
  0x00000001173501c4: movabs $0x800000000,%r12
  0x00000001173501ce: add    %r12,%r10
  0x00000001173501d1: xor    %r12,%r12
  0x00000001173501d4: cmp    %r10,%rax
  0x00000001173501d7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x00000001173501dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001173501e0: mov    %eax,-0x14000(%rsp)
  0x00000001173501e7: push   %rbp
  0x00000001173501e8: sub    $0x40,%rsp         ;*synchronization entry
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@-1 (line 240)

  0x00000001173501ec: mov    %rsi,%r10
  0x00000001173501ef: mov    %rdx,%r9
  0x00000001173501f2: mov    0xc(%rdx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@1 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ; implicit exception: dispatches to 0x00000001173505a3
  0x00000001173501f6: mov    0xc(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x00000001173505b2
  0x00000001173501fb: movsbl 0x14(%rdx),%ecx    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::coder@7 (line 3258)
                                                ; - java.lang.String::length@6 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001173501ff: sar    %cl,%r11d          ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@9 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x0000000117350202: cmp    $0xffff,%r11d
  0x0000000117350209: jg     0x000000011735056e  ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x000000011735020f: mov    %rsi,%rdi
  0x0000000117350212: mov    0x10(%rsi),%r10d   ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@30 (line 245)

  0x0000000117350216: mov    0xc(%r12,%r10,8),%ebx  ; implicit exception: dispatches to 0x00000001173505be
  0x000000011735021b: mov    0xc(%rsi),%edx     ;*getfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@20 (line 244)

  0x000000011735021e: mov    %r11d,%r10d
  0x0000000117350221: add    %edx,%r10d
  0x0000000117350224: add    $0x2,%r10d
  0x0000000117350228: cmp    %ebx,%r10d
  0x000000011735022b: jg     0x0000000117350459  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350231: mov    0x10(%rdi),%ebx    ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000117350234: mov    %r11d,%esi
  0x0000000117350237: shr    $0x8,%esi          ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@59 (line 255)

  0x000000011735023a: movsbl %sil,%eax          ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@60 (line 255)

  0x000000011735023e: mov    0xc(%r12,%rbx,8),%ebp  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ; implicit exception: dispatches to 0x00000001173505ca
  0x0000000117350243: mov    %edx,%r10d
  0x0000000117350246: inc    %r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@53 (line 255)

  0x0000000117350249: cmp    %ebp,%edx
  0x000000011735024b: jae    0x00000001173504e6
  0x0000000117350251: lea    (%r12,%rbx,8),%rax  ;*getfield data {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@45 (line 248)

  0x0000000117350255: mov    %sil,0x10(%rax,%rdx,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x000000011735025a: mov    %edx,%r14d
  0x000000011735025d: add    $0x2,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000117350261: cmp    %ebp,%r10d
  0x0000000117350264: jae    0x0000000117350512
  0x000000011735026a: movslq %edx,%rsi
  0x000000011735026d: mov    %r11b,0x11(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000117350272: test   %r11d,%r11d
  0x0000000117350275: jle    0x0000000117350442  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011735027b: test   %ecx,%ecx
  0x000000011735027d: jne    0x000000011735053e
  0x0000000117350283: mov    0xc(%r12,%r8,8),%r10d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@6 (line 46)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)
                                                ; implicit exception: dispatches to 0x000000011735053e
  0x0000000117350288: test   %r10d,%r10d
  0x000000011735028b: jbe    0x000000011735053e
  0x0000000117350291: movslq %r10d,%rcx
  0x0000000117350294: movslq %r11d,%r13
  0x0000000117350297: mov    %r13,%r10
  0x000000011735029a: dec    %r10
  0x000000011735029d: cmp    %rcx,%r10
  0x00000001173502a0: jae    0x000000011735053e
  0x00000001173502a6: cmp    %ebp,%r14d
  0x00000001173502a9: jae    0x000000011735053e
  0x00000001173502af: movslq %ebp,%r10
  0x00000001173502b2: movslq %r14d,%rcx
  0x00000001173502b5: add    %r13,%rcx
  0x00000001173502b8: dec    %rcx
  0x00000001173502bb: cmp    %r10,%rcx
  0x00000001173502be: jae    0x000000011735053e
  0x00000001173502c4: movsbl 0x10(%r12,%r8,8),%ecx  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001173502ca: mov    %ecx,%ebp
  0x00000001173502cc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001173502d0: mov    %ebp,%r10d
  0x00000001173502d3: dec    %r10d
  0x00000001173502d6: cmp    $0x7f,%r10d
  0x00000001173502da: jae    0x0000000117350586  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001173502e0: mov    %cl,0x12(%rax,%rsi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001173502e4: mov    %r11d,%r13d
  0x00000001173502e7: add    $0xfffffffd,%r13d
  0x00000001173502eb: lea    (%r12,%r8,8),%rsi
  0x00000001173502ef: mov    $0x1,%ecx
  0x00000001173502f4: mov    $0x80000000,%r8d
  0x00000001173502fa: cmp    %r13d,%r11d
  0x00000001173502fd: cmovl  %r8d,%r13d
  0x0000000117350301: cmp    $0x1,%r13d
  0x0000000117350305: jle    0x0000000117350562  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x000000011735030b: jmp    0x000000011735031c
  0x000000011735030d: vmovq  %xmm0,%r9
  0x0000000117350312: vmovq  %xmm1,%rdi
  0x0000000117350317: vmovd  %xmm3,%r11d
  0x000000011735031c: mov    %r13d,%r10d
  0x000000011735031f: sub    %ecx,%r10d
  0x0000000117350322: mov    $0xfa0,%r14d
  0x0000000117350328: cmp    %r14d,%r10d
  0x000000011735032b: cmovg  %r14d,%r10d
  0x000000011735032f: add    %ecx,%r10d
  0x0000000117350332: vmovq  %r9,%xmm0
  0x0000000117350337: vmovq  %rdi,%xmm1
  0x000000011735033c: vmovd  %r11d,%xmm3        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000117350341: mov    %ecx,%r14d
  0x0000000117350344: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000117350347: movslq %ecx,%r9
  0x000000011735034a: movsbl 0x10(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350350: mov    %r8d,%ebp
  0x0000000117350353: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350357: mov    %ebp,%r11d
  0x000000011735035a: dec    %r11d
  0x000000011735035d: cmp    $0x7f,%r11d
  0x0000000117350361: jae    0x0000000117350492  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x0000000117350367: movslq %r14d,%rdi
  0x000000011735036a: mov    %r8b,0x12(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x000000011735036f: movsbl 0x11(%rsi,%r9,1),%r11d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350375: mov    %r11d,%ebp
  0x0000000117350378: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011735037c: mov    %ebp,%r8d
  0x000000011735037f: dec    %r8d
  0x0000000117350382: cmp    $0x7f,%r8d
  0x0000000117350386: jae    0x0000000117350498  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011735038c: mov    %r11b,0x13(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000117350391: movsbl 0x12(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350397: mov    %r8d,%ebp
  0x000000011735039a: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011735039e: mov    %ebp,%r11d
  0x00000001173503a1: dec    %r11d
  0x00000001173503a4: cmp    $0x7f,%r11d
  0x00000001173503a8: jae    0x00000001173504a0  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001173503ae: mov    %r8b,0x14(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001173503b3: movsbl 0x13(%rsi,%r9,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001173503b9: mov    %r8d,%ebp
  0x00000001173503bc: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x00000001173503c0: mov    %ebp,%r11d
  0x00000001173503c3: dec    %r11d
  0x00000001173503c6: cmp    $0x7f,%r11d
  0x00000001173503ca: jae    0x00000001173504a9  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x00000001173503d0: mov    %r8b,0x15(%rax,%rdi,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x00000001173503d5: add    $0x4,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001173503d8: cmp    %r10d,%ecx
  0x00000001173503db: jl     0x0000000117350341  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001173503e1: mov    0x108(%r15),%r9
  0x00000001173503e8: add    $0x6,%r14d         ; ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)

  0x00000001173503ec: test   %eax,(%r9)         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@132 (line 257)
                                                ;   {poll}
  0x00000001173503ef: cmp    %r13d,%ecx
  0x00000001173503f2: jl     0x000000011735030d
  0x00000001173503f8: vmovq  %xmm0,%r9
  0x00000001173503fd: vmovq  %xmm1,%rdi
  0x0000000117350402: vmovd  %xmm3,%r11d
  0x0000000117350407: cmp    %r11d,%ecx
  0x000000011735040a: jge    0x0000000117350442  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011735040c: movsbl 0x10(%rsi,%rcx,1),%r8d  ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@21 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350412: mov    %ecx,%r14d
  0x0000000117350415: add    %edx,%r14d         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@26 (line 245)

  0x0000000117350418: mov    %r8d,%ebp
  0x000000011735041b: movzbl %bpl,%ebp          ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::charAt@25 (line 49)
                                                ; - java.lang.String::charAt@12 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011735041f: mov    %ebp,%r10d
  0x0000000117350422: dec    %r10d
  0x0000000117350425: cmp    $0x7f,%r10d
  0x0000000117350429: jae    0x000000011735058d  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@98 (line 259)

  0x000000011735042f: movslq %r14d,%r10
  0x0000000117350432: mov    %r8b,0x12(%rax,%r10,1)  ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@110 (line 260)

  0x0000000117350437: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x0000000117350439: cmp    %r11d,%ecx
  0x000000011735043c: jl     0x000000011735040c
  0x000000011735043e: add    $0x3,%r14d         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000117350442: mov    %r14d,0xc(%rdi)    ;*putfield length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@137 (line 266)

  0x0000000117350446: mov    %rdi,%rax
  0x0000000117350449: add    $0x40,%rsp
  0x000000011735044d: pop    %rbp
  0x000000011735044e: mov    0x108(%r15),%r10
  0x0000000117350455: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117350458: retq   
  0x0000000117350459: mov    %edx,0xc(%rsp)
  0x000000011735045d: mov    %rsi,(%rsp)
  0x0000000117350461: mov    %r9,%rbp
  0x0000000117350464: mov    %r11d,%edx
  0x0000000117350467: mov    %r11d,0x8(%rsp)
  0x000000011735046c: add    $0x2,%edx
  0x000000011735046f: callq  0x00000001172fff00  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)
                                                ;   {optimized virtual_call}
  0x0000000117350474: mov    %rbp,%r9
  0x0000000117350477: mov    0xc(%r9),%r8d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::charAt@8 (line 693)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x000000011735047b: movsbl 0x14(%r9),%ecx     ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::charAt@1 (line 692)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@83 (line 258)

  0x0000000117350480: mov    (%rsp),%rdi
  0x0000000117350484: mov    0x8(%rsp),%r11d
  0x0000000117350489: mov    0xc(%rsp),%edx
  0x000000011735048d: jmpq   0x0000000117350231
  0x0000000117350492: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000117350496: jmp    0x00000001173504b0
  0x0000000117350498: inc    %ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x000000011735049a: add    $0x3,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x000000011735049e: jmp    0x00000001173504b0
  0x00000001173504a0: add    $0x2,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001173504a3: add    $0x4,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001173504a7: jmp    0x00000001173504b0
  0x00000001173504a9: add    $0x3,%ecx          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@129 (line 257)

  0x00000001173504ac: add    $0x5,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x00000001173504b0: vmovq  %xmm0,%r9
  0x00000001173504b5: vmovq  %xmm1,%rdi
  0x00000001173504ba: vmovd  %xmm3,%r11d        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001173504bf: mov    $0xffffff45,%esi
  0x00000001173504c4: mov    %r14d,(%rsp)
  0x00000001173504c8: mov    %ecx,0x4(%rsp)
  0x00000001173504cc: mov    %rdi,0x10(%rsp)
  0x00000001173504d1: mov    %r9,0x18(%rsp)
  0x00000001173504d6: mov    %r11d,0xc(%rsp)
  0x00000001173504db: mov    %ebx,0x20(%rsp)
  0x00000001173504df: callq  0x0000000117301900  ; ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173504e4: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@91 (line 259)

  0x00000001173504e6: mov    $0xffffffe4,%esi
  0x00000001173504eb: mov    %edx,%ebp
  0x00000001173504ed: mov    %rdi,(%rsp)
  0x00000001173504f1: mov    %r9,0x8(%rsp)
  0x00000001173504f6: mov    %r11d,0x10(%rsp)
  0x00000001173504fb: mov    %r10d,0x14(%rsp)
  0x0000000117350500: mov    %ebx,0x1c(%rsp)
  0x0000000117350504: mov    %eax,0x20(%rsp)
  0x0000000117350508: data16 xchg %ax,%ax
  0x000000011735050b: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117350510: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)

  0x0000000117350512: movsbl %r11b,%ebp         ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@69 (line 256)

  0x0000000117350516: mov    $0xffffffe4,%esi
  0x000000011735051b: mov    %r14d,(%rsp)
  0x000000011735051f: mov    %rdi,0x8(%rsp)
  0x0000000117350524: mov    %r9,0x10(%rsp)
  0x0000000117350529: mov    %r11d,0x4(%rsp)
  0x000000011735052e: mov    %ebx,0x1c(%rsp)
  0x0000000117350532: mov    %r10d,0x20(%rsp)
  0x0000000117350537: callq  0x0000000117301900  ; ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@70 (line 256)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011735053c: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x000000011735053e: mov    $0xffffff7e,%esi
  0x0000000117350543: mov    %r14d,%ebp
  0x0000000117350546: mov    %rdi,(%rsp)
  0x000000011735054a: mov    %r9,0x8(%rsp)
  0x000000011735054f: mov    %ebx,0x14(%rsp)
  0x0000000117350553: mov    %r11d,0x18(%rsp)
  0x0000000117350558: data16 xchg %ax,%ax
  0x000000011735055b: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117350560: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@77 (line 257)

  0x0000000117350562: mov    %edx,%r14d
  0x0000000117350565: add    $0x3,%r14d         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@104 (line 260)

  0x0000000117350569: jmpq   0x0000000117350407
  0x000000011735056e: mov    $0xffffff4d,%esi
  0x0000000117350573: mov    %r10,%rbp
  0x0000000117350576: mov    %rdx,(%rsp)
  0x000000011735057a: mov    %r11d,0xc(%rsp)
  0x000000011735057f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*if_icmple {reexecute=1 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117350584: ud2                       ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@8 (line 241)

  0x0000000117350586: xor    %ecx,%ecx
  0x0000000117350588: jmpq   0x00000001173504bf
  0x000000011735058d: add    $0x2,%r14d         ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@80 (line 258)

  0x0000000117350591: jmpq   0x00000001173504bf  ;*invokevirtual enlarge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@41 (line 246)

  0x0000000117350596: mov    %rax,%rsi
  0x0000000117350599: add    $0x40,%rsp
  0x000000011735059d: pop    %rbp
  0x000000011735059e: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x00000001173505a3: mov    $0xfffffff6,%esi
  0x00000001173505a8: data16 xchg %ax,%ax
  0x00000001173505ab: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173505b0: ud2                       ;*invokevirtual length {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001173505b2: mov    $0xfffffff6,%esi
  0x00000001173505b7: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173505bc: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::length@4 (line 658)
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@1 (line 240)

  0x00000001173505be: mov    $0xfffffff6,%esi
  0x00000001173505c3: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173505c8: ud2                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@33 (line 245)

  0x00000001173505ca: mov    $0xfffffff6,%esi
  0x00000001173505cf: mov    %edx,%ebp
  0x00000001173505d1: mov    %eax,(%rsp)
  0x00000001173505d4: data16 xchg %ax,%ax
  0x00000001173505d7: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173505dc: ud2                       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                ; - jdk.internal.org.objectweb.asm.ByteVector::putUTF8@61 (line 255)

  0x00000001173505de: hlt    
  0x00000001173505df: hlt    
[Stub Code]
  0x00000001173505e0: movabs $0x0,%rbx          ;   {no_reloc}
  0x00000001173505ea: jmpq   0x00000001173505ea  ;   {runtime_call}
[Exception Handler]
  0x00000001173505ef: jmpq   0x0000000117336680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x00000001173505f4: callq  0x00000001173505f9
  0x00000001173505f9: subq   $0x5,(%rsp)
  0x00000001173505fe: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117350603: hlt    
  0x0000000117350604: hlt    
  0x0000000117350605: hlt    
  0x0000000117350606: hlt    
  0x0000000117350607: hlt    

ImmutableOopMap{rbx=NarrowOop rsi=Oop rax=Oop xmm0=Oop xmm1=Oop }pc offsets: 556 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 692 
ImmutableOopMap{[16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 804 
ImmutableOopMap{[0]=Oop [8]=Oop [28]=NarrowOop }pc offsets: 848 
ImmutableOopMap{[8]=Oop [16]=Oop [28]=NarrowOop }pc offsets: 892 
ImmutableOopMap{[0]=Oop [8]=Oop [20]=NarrowOop }pc offsets: 928 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 964 
ImmutableOopMap{}pc offsets: 1008 1020 1032 1052 ----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734d220, 0x000000011734d248]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125701070} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734d220: mov    0x40(%rsp),%rbx
  0x000000011734d225: mov    0x24(%rbx),%ebx
  0x000000011734d228: shl    $0x3,%rbx
  0x000000011734d22c: mov    0x10(%rbx),%rbx
  0x000000011734d230: test   %rbx,%rbx
  0x000000011734d233: je     0x000000011734d23c
  0x000000011734d239: jmpq   *0x38(%rbx)
  0x000000011734d23c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734d241: hlt    
  0x000000011734d242: hlt    
  0x000000011734d243: hlt    
  0x000000011734d244: hlt    
  0x000000011734d245: hlt    
  0x000000011734d246: hlt    
  0x000000011734d247: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;  [0x000000011734d020, 0x000000011734d050]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125703bf0} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734d020: mov    0x14(%rsi),%ebx
  0x000000011734d023: shl    $0x3,%rbx
  0x000000011734d027: mov    0x28(%rbx),%ebx
  0x000000011734d02a: shl    $0x3,%rbx
  0x000000011734d02e: mov    0x24(%rbx),%ebx
  0x000000011734d031: shl    $0x3,%rbx
  0x000000011734d035: mov    0x10(%rbx),%rbx
  0x000000011734d039: test   %rbx,%rbx
  0x000000011734d03c: je     0x000000011734d045
  0x000000011734d042: jmpq   *0x38(%rbx)
  0x000000011734d045: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734d04a: hlt    
  0x000000011734d04b: hlt    
  0x000000011734d04c: hlt    
  0x000000011734d04d: hlt    
  0x000000011734d04e: hlt    
  0x000000011734d04f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734cb20, 0x000000011734cb48]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001257061a0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734cb20: mov    0x48(%rsp),%rbx
  0x000000011734cb25: mov    0x24(%rbx),%ebx
  0x000000011734cb28: shl    $0x3,%rbx
  0x000000011734cb2c: mov    0x10(%rbx),%rbx
  0x000000011734cb30: test   %rbx,%rbx
  0x000000011734cb33: je     0x000000011734cb3c
  0x000000011734cb39: jmpq   *0x38(%rbx)
  0x000000011734cb3c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734cb41: hlt    
  0x000000011734cb42: hlt    
  0x000000011734cb43: hlt    
  0x000000011734cb44: hlt    
  0x000000011734cb45: hlt    
  0x000000011734cb46: hlt    
  0x000000011734cb47: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;  [0x000000011734c920, 0x000000011734c950]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001257067a8} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734c920: mov    0x14(%rsi),%ebx
  0x000000011734c923: shl    $0x3,%rbx
  0x000000011734c927: mov    0x28(%rbx),%ebx
  0x000000011734c92a: shl    $0x3,%rbx
  0x000000011734c92e: mov    0x24(%rbx),%ebx
  0x000000011734c931: shl    $0x3,%rbx
  0x000000011734c935: mov    0x10(%rbx),%rbx
  0x000000011734c939: test   %rbx,%rbx
  0x000000011734c93c: je     0x000000011734c945
  0x000000011734c942: jmpq   *0x38(%rbx)
  0x000000011734c945: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734c94a: hlt    
  0x000000011734c94b: hlt    
  0x000000011734c94c: hlt    
  0x000000011734c94d: hlt    
  0x000000011734c94e: hlt    
  0x000000011734c94f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToStatic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734c420, 0x000000011734c448]  40 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125707db0} 'linkToStatic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734c420: mov    0x50(%rsp),%rbx
  0x000000011734c425: mov    0x24(%rbx),%ebx
  0x000000011734c428: shl    $0x3,%rbx
  0x000000011734c42c: mov    0x10(%rbx),%rbx
  0x000000011734c430: test   %rbx,%rbx
  0x000000011734c433: je     0x000000011734c43c
  0x000000011734c439: jmpq   *0x38(%rbx)
  0x000000011734c43c: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734c441: hlt    
  0x000000011734c442: hlt    
  0x000000011734c443: hlt    
  0x000000011734c444: hlt    
  0x000000011734c445: hlt    
  0x000000011734c446: hlt    
  0x000000011734c447: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(D)Ljava/lang/Object;  [0x000000011734c220, 0x000000011734c250]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125707ec8} 'invokeBasic' '(D)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  #           [sp+0x0]  (sp of caller)
  0x000000011734c220: mov    0x14(%rsi),%ebx
  0x000000011734c223: shl    $0x3,%rbx
  0x000000011734c227: mov    0x28(%rbx),%ebx
  0x000000011734c22a: shl    $0x3,%rbx
  0x000000011734c22e: mov    0x24(%rbx),%ebx
  0x000000011734c231: shl    $0x3,%rbx
  0x000000011734c235: mov    0x10(%rbx),%rbx
  0x000000011734c239: test   %rbx,%rbx
  0x000000011734c23c: je     0x000000011734c245
  0x000000011734c242: jmpq   *0x38(%rbx)
  0x000000011734c245: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734c24a: hlt    
  0x000000011734c24b: hlt    
  0x000000011734c24c: hlt    
  0x000000011734c24d: hlt    
  0x000000011734c24e: hlt    
  0x000000011734c24f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734be20, 0x000000011734be40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125707fe0} 'linkToSpecial' '(Ljava/lang/Object;DLjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx:rdx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734be20: cmp    (%rsi),%rax
  0x000000011734be23: mov    0x24(%rdx),%ebx
  0x000000011734be26: shl    $0x3,%rbx
  0x000000011734be2a: mov    0x10(%rbx),%rbx
  0x000000011734be2e: test   %rbx,%rbx
  0x000000011734be31: je     0x000000011734be3a
  0x000000011734be37: jmpq   *0x38(%rbx)
  0x000000011734be3a: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734be3f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;  [0x000000011734bc20, 0x000000011734bc50]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125708198} 'invokeBasic' '(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
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
  0x000000011734bc20: mov    0x14(%rsi),%ebx
  0x000000011734bc23: shl    $0x3,%rbx
  0x000000011734bc27: mov    0x28(%rbx),%ebx
  0x000000011734bc2a: shl    $0x3,%rbx
  0x000000011734bc2e: mov    0x24(%rbx),%ebx
  0x000000011734bc31: shl    $0x3,%rbx
  0x000000011734bc35: mov    0x10(%rbx),%rbx
  0x000000011734bc39: test   %rbx,%rbx
  0x000000011734bc3c: je     0x000000011734bc45
  0x000000011734bc42: jmpq   *0x38(%rbx)
  0x000000011734bc45: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734bc4a: hlt    
  0x000000011734bc4b: hlt    
  0x000000011734bc4c: hlt    
  0x000000011734bc4d: hlt    
  0x000000011734bc4e: hlt    
  0x000000011734bc4f: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.invokeBasic(DI)Ljava/lang/Object;  [0x000000011734b7a0, 0x000000011734b7d0]  48 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x0000000125708890} 'invokeBasic' '(DI)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # this:     rsi:rsi   = 'java/lang/invoke/MethodHandle'
  # parm0:    xmm0:xmm0   = double
  # parm1:    rdx       = int
  #           [sp+0x0]  (sp of caller)
  0x000000011734b7a0: mov    0x14(%rsi),%ebx
  0x000000011734b7a3: shl    $0x3,%rbx
  0x000000011734b7a7: mov    0x28(%rbx),%ebx
  0x000000011734b7aa: shl    $0x3,%rbx
  0x000000011734b7ae: mov    0x24(%rbx),%ebx
  0x000000011734b7b1: shl    $0x3,%rbx
  0x000000011734b7b5: mov    0x10(%rbx),%rbx
  0x000000011734b7b9: test   %rbx,%rbx
  0x000000011734b7bc: je     0x000000011734b7c5
  0x000000011734b7c2: jmpq   *0x38(%rbx)
  0x000000011734b7c5: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734b7ca: hlt    
  0x000000011734b7cb: hlt    
  0x000000011734b7cc: hlt    
  0x000000011734b7cd: hlt    
  0x000000011734b7ce: hlt    
  0x000000011734b7cf: hlt    
----------------------------------------------------------------------
java/lang/invoke/MethodHandle.linkToSpecial(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;  [0x000000011734fd20, 0x000000011734fd40]  32 bytes
[Entry Point]
[Verified Entry Point]
  # {method} {0x00000001257089a8} 'linkToSpecial' '(Ljava/lang/Object;DILjava/lang/invoke/MemberName;)Ljava/lang/Object;' in 'java/lang/invoke/MethodHandle'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    xmm0:xmm0   = double
  # parm2:    rdx       = int
  # parm3:    rcx:rcx   = 'java/lang/invoke/MemberName'
  #           [sp+0x0]  (sp of caller)
  0x000000011734fd20: cmp    (%rsi),%rax
  0x000000011734fd23: mov    0x24(%rcx),%ebx
  0x000000011734fd26: shl    $0x3,%rbx
  0x000000011734fd2a: mov    0x10(%rbx),%rbx
  0x000000011734fd2e: test   %rbx,%rbx
  0x000000011734fd31: je     0x000000011734fd3a
  0x000000011734fd37: jmpq   *0x38(%rbx)
  0x000000011734fd3a: jmpq   0x0000000117319880  ;   {runtime_call AbstractMethodError throw_exception}
  0x000000011734fd3f: hlt    
Time elapsed: 24.996 ms result=100
Warmup phase
Compiled method (c2)     254   69             java.util.HashMap::hash (20 bytes)
 total in heap  [0x0000000117354810,0x0000000117355000] = 2032
 relocation     [0x0000000117354988,0x00000001173549a8] = 32
 main code      [0x00000001173549c0,0x0000000117354c00] = 576
 stub code      [0x0000000117354c00,0x0000000117354c18] = 24
 metadata       [0x0000000117354c18,0x0000000117354c48] = 48
 scopes data    [0x0000000117354c48,0x0000000117354d60] = 280
 scopes pcs     [0x0000000117354d60,0x0000000117354fe0] = 640
 dependencies   [0x0000000117354fe0,0x0000000117354fe8] = 8
 nul chk table  [0x0000000117354fe8,0x0000000117355000] = 24
----------------------------------------------------------------------
java/util/HashMap.hash(Ljava/lang/Object;)I  [0x00000001173549c0, 0x0000000117354c18]  600 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000125400940} 'hash' '(Ljava/lang/Object;)I' in 'java/util/HashMap'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001173549c0: mov    %eax,-0x14000(%rsp)
  0x00000001173549c7: push   %rbp
  0x00000001173549c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x00000001173549cc: mov    0x8(%rsi),%r10d    ; implicit exception: dispatches to 0x0000000117354bd6
  0x00000001173549d0: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x00000001173549d7: jne    0x00000001173549f6  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x00000001173549d9: mov    0xc(%rsi),%r11d    ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)

  0x00000001173549dd: mov    %r11d,%eax
  0x00000001173549e0: shr    $0x10,%eax
  0x00000001173549e3: xor    %r11d,%eax         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)

  0x00000001173549e6: add    $0x20,%rsp
  0x00000001173549ea: pop    %rbp
  0x00000001173549eb: mov    0x108(%r15),%r10
  0x00000001173549f2: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173549f5: retq   
  0x00000001173549f6: cmp    $0x1808,%r10d      ;   {metadata('java/lang/String')}
  0x00000001173549fd: jne    0x0000000117354b98  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a03: mov    0x10(%rsi),%r11d   ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a07: test   %r11d,%r11d
  0x0000000117354a0a: jne    0x00000001173549dd  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a0c: mov    0xc(%rsi),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a0f: mov    0xc(%r12,%rbx,8),%ecx  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; implicit exception: dispatches to 0x0000000117354be6
  0x0000000117354a14: test   %ecx,%ecx
  0x0000000117354a16: jbe    0x0000000117354b90  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a1c: movsbl 0x14(%rsi),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a20: test   %ebp,%ebp
  0x0000000117354a22: jne    0x0000000117354bc2  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a28: mov    %ecx,%r11d
  0x0000000117354a2b: dec    %r11d
  0x0000000117354a2e: cmp    %ecx,%r11d
  0x0000000117354a31: jae    0x0000000117354baa
  0x0000000117354a37: movzbl 0x10(%r12,%rbx,8),%r8d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a3d: mov    %ecx,%r13d
  0x0000000117354a40: add    $0xfffffff9,%r13d
  0x0000000117354a44: lea    (%r12,%rbx,8),%rax  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a48: mov    $0x80000000,%r9d
  0x0000000117354a4e: cmp    %r13d,%r11d
  0x0000000117354a51: cmovl  %r9d,%r13d
  0x0000000117354a55: mov    $0x1,%r9d
  0x0000000117354a5b: cmp    $0x1,%r13d
  0x0000000117354a5f: jle    0x0000000117354b5d
  0x0000000117354a65: mov    %r8d,%ebx
  0x0000000117354a68: shl    $0x5,%ebx
  0x0000000117354a6b: sub    %r8d,%ebx          ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354a6e: jmp    0x0000000117354a74
  0x0000000117354a70: vmovd  %xmm0,%ecx
  0x0000000117354a74: mov    %r13d,%r14d
  0x0000000117354a77: sub    %r9d,%r14d
  0x0000000117354a7a: mov    $0x1f40,%r10d
  0x0000000117354a80: cmp    %r10d,%r14d
  0x0000000117354a83: mov    $0x1f40,%r11d
  0x0000000117354a89: cmovg  %r11d,%r14d
  0x0000000117354a8d: add    %r9d,%r14d
  0x0000000117354a90: vmovd  %ecx,%xmm0
  0x0000000117354a94: nopl   0x0(%rax,%rax,1)
  0x0000000117354a9c: data16 data16 xchg %ax,%ax  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354aa0: movslq %r9d,%r11          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354aa3: movzbl 0x10(%rax,%r11,1),%r10d
  0x0000000117354aa9: movzbl 0x17(%rax,%r11,1),%ecx
  0x0000000117354aaf: movzbl 0x11(%rax,%r11,1),%edx
  0x0000000117354ab5: movzbl 0x16(%rax,%r11,1),%edi
  0x0000000117354abb: movzbl 0x15(%rax,%r11,1),%ebp
  0x0000000117354ac1: add    %r10d,%ebx
  0x0000000117354ac4: movzbl 0x13(%rax,%r11,1),%r10d
  0x0000000117354aca: mov    %ebx,%r8d
  0x0000000117354acd: shl    $0x5,%r8d
  0x0000000117354ad1: sub    %ebx,%r8d
  0x0000000117354ad4: add    %edx,%r8d
  0x0000000117354ad7: movzbl 0x12(%rax,%r11,1),%ebx
  0x0000000117354add: movzbl 0x14(%rax,%r11,1),%edx
  0x0000000117354ae3: mov    %r8d,%r11d
  0x0000000117354ae6: shl    $0x5,%r11d
  0x0000000117354aea: sub    %r8d,%r11d
  0x0000000117354aed: add    %ebx,%r11d
  0x0000000117354af0: mov    %r11d,%ebx
  0x0000000117354af3: shl    $0x5,%ebx
  0x0000000117354af6: sub    %r11d,%ebx
  0x0000000117354af9: add    %r10d,%ebx
  0x0000000117354afc: mov    %ebx,%r11d
  0x0000000117354aff: shl    $0x5,%r11d
  0x0000000117354b03: sub    %ebx,%r11d
  0x0000000117354b06: add    %edx,%r11d
  0x0000000117354b09: mov    %r11d,%r8d
  0x0000000117354b0c: shl    $0x5,%r8d
  0x0000000117354b10: sub    %r11d,%r8d
  0x0000000117354b13: add    %ebp,%r8d
  0x0000000117354b16: mov    %r8d,%r10d
  0x0000000117354b19: shl    $0x5,%r10d
  0x0000000117354b1d: sub    %r8d,%r10d
  0x0000000117354b20: add    %edi,%r10d
  0x0000000117354b23: mov    %r10d,%r8d
  0x0000000117354b26: shl    $0x5,%r8d
  0x0000000117354b2a: sub    %r10d,%r8d
  0x0000000117354b2d: add    %ecx,%r8d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b30: mov    %r8d,%ebx
  0x0000000117354b33: shl    $0x5,%ebx
  0x0000000117354b36: sub    %r8d,%ebx          ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b39: add    $0x8,%r9d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b3d: cmp    %r14d,%r9d
  0x0000000117354b40: jl     0x0000000117354aa0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b46: mov    0x108(%r15),%r10   ; ImmutableOopMap{rsi=Oop rax=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b4d: test   %eax,(%r10)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {poll}
  0x0000000117354b50: cmp    %r13d,%r9d
  0x0000000117354b53: jl     0x0000000117354a70
  0x0000000117354b59: vmovd  %xmm0,%ecx
  0x0000000117354b5d: cmp    %ecx,%r9d
  0x0000000117354b60: jge    0x0000000117354b8b  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b62: movzbl 0x10(%rax,%r9,1),%r10d
  0x0000000117354b68: mov    %r8d,%r11d
  0x0000000117354b6b: shl    $0x5,%r11d
  0x0000000117354b6f: sub    %r8d,%r11d
  0x0000000117354b72: add    %r10d,%r11d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b75: inc    %r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b78: cmp    %ecx,%r9d
  0x0000000117354b7b: jge    0x0000000117354b82  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b7d: mov    %r11d,%r8d
  0x0000000117354b80: jmp    0x0000000117354b62
  0x0000000117354b82: mov    %r11d,0x10(%rsi)   ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354b86: jmpq   0x00000001173549dd
  0x0000000117354b8b: mov    %r8d,%r11d
  0x0000000117354b8e: jmp    0x0000000117354b82
  0x0000000117354b90: xor    %r11d,%r11d
  0x0000000117354b93: jmpq   0x00000001173549dd
  0x0000000117354b98: mov    %rsi,%rbp
  0x0000000117354b9b: mov    $0xffffffc6,%esi
  0x0000000117354ba0: data16 xchg %ax,%ax
  0x0000000117354ba3: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117354ba8: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354baa: mov    %rsi,%rbp
  0x0000000117354bad: mov    %ebx,(%rsp)
  0x0000000117354bb0: mov    %ecx,0x8(%rsp)
  0x0000000117354bb4: mov    $0xffffff7e,%esi
  0x0000000117354bb9: xchg   %ax,%ax
  0x0000000117354bbb: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [0]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117354bc0: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354bc2: mov    %rsi,0x8(%rsp)
  0x0000000117354bc7: mov    $0xffffff4d,%esi
  0x0000000117354bcc: data16 xchg %ax,%ax
  0x0000000117354bcf: callq  0x0000000117301900  ; ImmutableOopMap{[8]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117354bd4: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354bd6: mov    %rsi,(%rsp)
  0x0000000117354bda: mov    $0xffffff4d,%esi
  0x0000000117354bdf: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117354be4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)

  0x0000000117354be6: mov    $0xfffffff6,%esi
  0x0000000117354beb: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117354bf0: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)

  0x0000000117354bf2: hlt    
  0x0000000117354bf3: hlt    
  0x0000000117354bf4: hlt    
  0x0000000117354bf5: hlt    
  0x0000000117354bf6: hlt    
  0x0000000117354bf7: hlt    
  0x0000000117354bf8: hlt    
  0x0000000117354bf9: hlt    
  0x0000000117354bfa: hlt    
  0x0000000117354bfb: hlt    
  0x0000000117354bfc: hlt    
  0x0000000117354bfd: hlt    
  0x0000000117354bfe: hlt    
  0x0000000117354bff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117354c00: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117354c05: callq  0x0000000117354c0a
  0x0000000117354c0a: subq   $0x5,(%rsp)
  0x0000000117354c0f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117354c14: hlt    
  0x0000000117354c15: hlt    
  0x0000000117354c16: hlt    
  0x0000000117354c17: hlt    

ImmutableOopMap{rsi=Oop rax=Oop }pc offsets: 397 
ImmutableOopMap{rbp=Oop }pc offsets: 488 
ImmutableOopMap{rbp=Oop [0]=NarrowOop }pc offsets: 512 
ImmutableOopMap{[8]=Oop }pc offsets: 532 
ImmutableOopMap{[0]=Oop }pc offsets: 548 
ImmutableOopMap{}pc offsets: 560 Compiled method (c2)     267   70             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x0000000117355010,0x0000000117355440] = 1072
 relocation     [0x0000000117355188,0x00000001173551a8] = 32
 main code      [0x00000001173551c0,0x00000001173552c0] = 256
 stub code      [0x00000001173552c0,0x00000001173552d8] = 24
 oops           [0x00000001173552d8,0x00000001173552e0] = 8
 metadata       [0x00000001173552e0,0x00000001173552f0] = 16
 scopes data    [0x00000001173552f0,0x0000000117355340] = 80
 scopes pcs     [0x0000000117355340,0x0000000117355420] = 224
 dependencies   [0x0000000117355420,0x0000000117355428] = 8
 handler table  [0x0000000117355428,0x0000000117355440] = 24
----------------------------------------------------------------------
java/lang/Integer.valueOf(I)Ljava/lang/Integer;  [0x00000001173551c0, 0x00000001173552d8]  280 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001253d2a30} 'valueOf' '(I)Ljava/lang/Integer;' in 'java/lang/Integer'
  # parm0:    rsi       = int
  #           [sp+0x30]  (sp of caller)
  0x00000001173551c0: mov    %eax,-0x14000(%rsp)
  0x00000001173551c7: push   %rbp
  0x00000001173551c8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x00000001173551cc: mov    %esi,(%rsp)
  0x00000001173551cf: cmp    $0xffffff80,%esi
  0x00000001173551d2: jl     0x0000000117355282  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x00000001173551d8: cmp    $0x7f,%esi
  0x00000001173551db: jg     0x000000011735520c  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)

  0x00000001173551dd: mov    %esi,%ebp
  0x00000001173551df: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)

  0x00000001173551e5: cmp    $0x100,%ebp
  0x00000001173551eb: jae    0x0000000117355292
  0x00000001173551f1: movslq %esi,%r10
  0x00000001173551f4: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x00000001173551fe: mov    0x210(%r11,%r10,4),%r10d
  0x0000000117355206: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)

  0x000000011735520a: jmp    0x000000011735525e
  0x000000011735520c: mov    0x118(%r15),%rax
  0x0000000117355213: mov    %rax,%r10
  0x0000000117355216: add    $0x10,%r10
  0x000000011735521a: cmp    0x128(%r15),%r10
  0x0000000117355221: jae    0x000000011735526e
  0x0000000117355223: mov    %r10,0x118(%r15)
  0x000000011735522a: prefetchnta 0xc0(%r10)
  0x0000000117355232: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000117355238: movabs $0x800000000,%r10
  0x0000000117355242: add    %r11,%r10
  0x0000000117355245: mov    0xb8(%r10),%r10
  0x000000011735524c: mov    %r10,(%rax)
  0x000000011735524f: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000117355256: mov    (%rsp),%r11d
  0x000000011735525a: mov    %r11d,0xc(%rax)    ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 1048)

  0x000000011735525e: add    $0x20,%rsp
  0x0000000117355262: pop    %rbp
  0x0000000117355263: mov    0x108(%r15),%r10
  0x000000011735526a: test   %eax,(%r10)        ;   {poll_return}
  0x000000011735526d: retq   
  0x000000011735526e: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000117355278: mov    (%rsp),%ebp
  0x000000011735527b: callq  0x0000000117339980  ; ImmutableOopMap{}
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117355280: jmp    0x0000000117355256
  0x0000000117355282: mov    $0xffffff4d,%esi
  0x0000000117355287: mov    (%rsp),%ebp
  0x000000011735528a: nop
  0x000000011735528b: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355290: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)

  0x0000000117355292: mov    $0xffffffe4,%esi
  0x0000000117355297: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011735529c: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)

  0x000000011735529e: mov    %rax,%rsi
  0x00000001173552a1: add    $0x20,%rsp
  0x00000001173552a5: pop    %rbp
  0x00000001173552a6: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x00000001173552ab: hlt    
  0x00000001173552ac: hlt    
  0x00000001173552ad: hlt    
  0x00000001173552ae: hlt    
  0x00000001173552af: hlt    
  0x00000001173552b0: hlt    
  0x00000001173552b1: hlt    
  0x00000001173552b2: hlt    
  0x00000001173552b3: hlt    
  0x00000001173552b4: hlt    
  0x00000001173552b5: hlt    
  0x00000001173552b6: hlt    
  0x00000001173552b7: hlt    
  0x00000001173552b8: hlt    
  0x00000001173552b9: hlt    
  0x00000001173552ba: hlt    
  0x00000001173552bb: hlt    
  0x00000001173552bc: hlt    
  0x00000001173552bd: hlt    
  0x00000001173552be: hlt    
  0x00000001173552bf: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173552c0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173552c5: callq  0x00000001173552ca
  0x00000001173552ca: subq   $0x5,(%rsp)
  0x00000001173552cf: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173552d4: hlt    
  0x00000001173552d5: hlt    
  0x00000001173552d6: hlt    
  0x00000001173552d7: hlt    

ImmutableOopMap{}pc offsets: 192 208 220 Compiled method (c2)     270   71             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x0000000117355490,0x00000001173556d8] = 584
 relocation     [0x0000000117355608,0x0000000117355618] = 16
 main code      [0x0000000117355620,0x0000000117355660] = 64
 stub code      [0x0000000117355660,0x0000000117355678] = 24
 metadata       [0x0000000117355678,0x0000000117355680] = 8
 scopes data    [0x0000000117355680,0x0000000117355690] = 16
 scopes pcs     [0x0000000117355690,0x00000001173556d0] = 64
 dependencies   [0x00000001173556d0,0x00000001173556d8] = 8
----------------------------------------------------------------------
java/lang/Integer.intValue()I  [0x0000000117355620, 0x0000000117355678]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001253d2e20} 'intValue' '()I' in 'java/lang/Integer'
  #           [sp+0x20]  (sp of caller)
  0x0000000117355620: mov    0x8(%rsi),%r10d
  0x0000000117355624: movabs $0x800000000,%r12
  0x000000011735562e: add    %r12,%r10
  0x0000000117355631: xor    %r12,%r12
  0x0000000117355634: cmp    %r10,%rax
  0x0000000117355637: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011735563d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117355640: sub    $0x18,%rsp
  0x0000000117355647: mov    %rbp,0x10(%rsp)    ;*synchronization entry
                                                ; - java.lang.Integer::intValue@-1 (line 1123)

  0x000000011735564c: mov    0xc(%rsi),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)

  0x000000011735564f: add    $0x10,%rsp
  0x0000000117355653: pop    %rbp
  0x0000000117355654: mov    0x108(%r15),%r10
  0x000000011735565b: test   %eax,(%r10)        ;   {poll_return}
  0x000000011735565e: retq   
  0x000000011735565f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117355660: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117355665: callq  0x000000011735566a
  0x000000011735566a: subq   $0x5,(%rsp)
  0x000000011735566f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117355674: hlt    
  0x0000000117355675: hlt    
  0x0000000117355676: hlt    
  0x0000000117355677: hlt    
Compiled method (c2)     272   72             java.util.Objects::requireNonNull (14 bytes)
 total in heap  [0x0000000117355710,0x0000000117355980] = 624
 relocation     [0x0000000117355888,0x0000000117355898] = 16
 main code      [0x00000001173558a0,0x00000001173558e0] = 64
 stub code      [0x00000001173558e0,0x00000001173558f8] = 24
 metadata       [0x00000001173558f8,0x0000000117355900] = 8
 scopes data    [0x0000000117355900,0x0000000117355918] = 24
 scopes pcs     [0x0000000117355918,0x0000000117355978] = 96
 dependencies   [0x0000000117355978,0x0000000117355980] = 8
----------------------------------------------------------------------
java/util/Objects.requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001173558a0, 0x00000001173558f8]  88 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001253f8640} 'requireNonNull' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/Objects'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x30]  (sp of caller)
  0x00000001173558a0: mov    %eax,-0x14000(%rsp)
  0x00000001173558a7: push   %rbp
  0x00000001173558a8: sub    $0x20,%rsp         ;*synchronization entry
                                                ; - java.util.Objects::requireNonNull@-1 (line 220)

  0x00000001173558ac: mov    %rsi,%rax
  0x00000001173558af: test   %rsi,%rsi
  0x00000001173558b2: je     0x00000001173558c4  ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x00000001173558b4: add    $0x20,%rsp
  0x00000001173558b8: pop    %rbp
  0x00000001173558b9: mov    0x108(%r15),%r10
  0x00000001173558c0: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173558c3: retq   
  0x00000001173558c4: mov    $0xffffff4d,%esi
  0x00000001173558c9: mov    %rax,(%rsp)
  0x00000001173558cd: xchg   %ax,%ax
  0x00000001173558cf: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173558d4: ud2                       ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Objects::requireNonNull@1 (line 220)

  0x00000001173558d6: hlt    
  0x00000001173558d7: hlt    
  0x00000001173558d8: hlt    
  0x00000001173558d9: hlt    
  0x00000001173558da: hlt    
  0x00000001173558db: hlt    
  0x00000001173558dc: hlt    
  0x00000001173558dd: hlt    
  0x00000001173558de: hlt    
  0x00000001173558df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173558e0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173558e5: callq  0x00000001173558ea
  0x00000001173558ea: subq   $0x5,(%rsp)
  0x00000001173558ef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173558f4: hlt    
  0x00000001173558f5: hlt    
  0x00000001173558f6: hlt    
  0x00000001173558f7: hlt    

ImmutableOopMap{[0]=Oop }pc offsets: 52 Compiled method (c2)     275   73             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x0000000117355990,0x00000001173560c8] = 1848
 relocation     [0x0000000117355b08,0x0000000117355b30] = 40
 main code      [0x0000000117355b40,0x0000000117355cc0] = 384
 stub code      [0x0000000117355cc0,0x0000000117355cd8] = 24
 metadata       [0x0000000117355cd8,0x0000000117355cf0] = 24
 scopes data    [0x0000000117355cf0,0x0000000117355e60] = 368
 scopes pcs     [0x0000000117355e60,0x00000001173560a0] = 576
 dependencies   [0x00000001173560a0,0x00000001173560a8] = 8
 nul chk table  [0x00000001173560a8,0x00000001173560c8] = 32
----------------------------------------------------------------------
java/util/HashMap.getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;  [0x0000000117355b40, 0x0000000117355cd8]  408 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000125401540} 'getNode' '(ILjava/lang/Object;)Ljava/util/HashMap$Node;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000117355b40: mov    0x8(%rsi),%r10d
  0x0000000117355b44: movabs $0x800000000,%r12
  0x0000000117355b4e: add    %r12,%r10
  0x0000000117355b51: xor    %r12,%r12
  0x0000000117355b54: cmp    %r10,%rax
  0x0000000117355b57: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x0000000117355b5d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117355b60: mov    %eax,-0x14000(%rsp)
  0x0000000117355b67: push   %rbp
  0x0000000117355b68: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x0000000117355b6c: mov    0x24(%rsi),%r10d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)

  0x0000000117355b70: mov    0xc(%r12,%r10,8),%r8d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; implicit exception: dispatches to 0x0000000117355c72
  0x0000000117355b75: test   %r8d,%r8d
  0x0000000117355b78: jbe    0x0000000117355bf9  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000117355b7a: shl    $0x3,%r10
  0x0000000117355b7e: dec    %r8d
  0x0000000117355b81: and    %edx,%r8d
  0x0000000117355b84: mov    0x10(%r10,%r8,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000117355b89: test   %r8d,%r8d
  0x0000000117355b8c: je     0x0000000117355be7  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)

  0x0000000117355b8e: mov    0xc(%r12,%r8,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)

  0x0000000117355b93: cmp    %edx,%ebp
  0x0000000117355b95: jne    0x0000000117355c56  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000117355b9b: mov    0x10(%r12,%r8,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)

  0x0000000117355ba0: mov    %rbp,%r10
  0x0000000117355ba3: shl    $0x3,%r10
  0x0000000117355ba7: cmp    %rcx,%r10
  0x0000000117355baa: je     0x0000000117355be1  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)

  0x0000000117355bac: mov    0x8(%rcx),%r10d    ; implicit exception: dispatches to 0x0000000117355ca2
  0x0000000117355bb0: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000117355bb7: jne    0x0000000117355c16  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355bb9: mov    0x8(%r12,%rbp,8),%r10d  ; implicit exception: dispatches to 0x0000000117355c8a
  0x0000000117355bbe: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000117355bc5: jne    0x0000000117355c32  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355bc7: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000117355bce: jne    0x0000000117355c4a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355bd0: mov    0xc(%rcx),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355bd4: lea    (%r12,%rbp,8),%r10  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355bd8: mov    0xc(%r10),%r9d
  0x0000000117355bdc: cmp    %r9d,%r11d
  0x0000000117355bdf: jne    0x0000000117355c32  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)

  0x0000000117355be1: lea    (%r12,%r8,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)

  0x0000000117355be5: jmp    0x0000000117355be9
  0x0000000117355be7: xor    %eax,%eax          ;*synchronization entry
                                                ; - java.util.HashMap::getNode@-1 (line 564)

  0x0000000117355be9: add    $0x30,%rsp
  0x0000000117355bed: pop    %rbp
  0x0000000117355bee: mov    0x108(%r15),%r10
  0x0000000117355bf5: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117355bf8: retq   
  0x0000000117355bf9: mov    $0xffffff4d,%esi
  0x0000000117355bfe: mov    %edx,%ebp
  0x0000000117355c00: mov    %rcx,(%rsp)
  0x0000000117355c04: mov    %r10d,0x8(%rsp)
  0x0000000117355c09: mov    %r8d,0x10(%rsp)
  0x0000000117355c0e: nop
  0x0000000117355c0f: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c14: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)

  0x0000000117355c16: mov    $0xffffffde,%esi
  0x0000000117355c1b: mov    %edx,(%rsp)
  0x0000000117355c1e: mov    %rcx,0x10(%rsp)
  0x0000000117355c23: mov    %r8d,0x4(%rsp)
  0x0000000117355c28: data16 xchg %ax,%ax
  0x0000000117355c2b: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c30: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)

  0x0000000117355c32: mov    $0xffffff4d,%esi
  0x0000000117355c37: mov    %edx,%ebp
  0x0000000117355c39: mov    %rcx,(%rsp)
  0x0000000117355c3d: mov    %r8d,0x8(%rsp)
  0x0000000117355c42: nop
  0x0000000117355c43: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c48: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)

  0x0000000117355c4a: mov    $0xffffffde,%esi
  0x0000000117355c4f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c54: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355c56: mov    $0xffffff4d,%esi
  0x0000000117355c5b: mov    %rcx,0x8(%rsp)
  0x0000000117355c60: mov    %edx,0x4(%rsp)
  0x0000000117355c64: mov    %r8d,0x10(%rsp)
  0x0000000117355c69: xchg   %ax,%ax
  0x0000000117355c6b: callq  0x0000000117301900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c70: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)

  0x0000000117355c72: mov    $0xffffff4d,%esi
  0x0000000117355c77: mov    %edx,%ebp
  0x0000000117355c79: mov    %rcx,(%rsp)
  0x0000000117355c7d: mov    %r10d,0xc(%rsp)
  0x0000000117355c82: nop
  0x0000000117355c83: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355c88: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)

  0x0000000117355c8a: mov    $0xfffffff4,%esi
  0x0000000117355c8f: mov    %edx,%ebp
  0x0000000117355c91: mov    %rcx,0x8(%rsp)
  0x0000000117355c96: mov    %r8d,0x10(%rsp)
  0x0000000117355c9b: callq  0x0000000117301900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355ca0: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)

  0x0000000117355ca2: mov    $0xffffff4d,%esi
  0x0000000117355ca7: mov    %edx,(%rsp)
  0x0000000117355caa: mov    %rcx,0x10(%rsp)
  0x0000000117355caf: mov    %r8d,0x4(%rsp)
  0x0000000117355cb4: data16 xchg %ax,%ax
  0x0000000117355cb7: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117355cbc: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@53 (line 566)

  0x0000000117355cbe: hlt    
  0x0000000117355cbf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117355cc0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117355cc5: callq  0x0000000117355cca
  0x0000000117355cca: subq   $0x5,(%rsp)
  0x0000000117355ccf: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117355cd4: hlt    
  0x0000000117355cd5: hlt    
  0x0000000117355cd6: hlt    
  0x0000000117355cd7: hlt    

ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 212 
ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }pc offsets: 240 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 264 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 276 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 304 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 328 
ImmutableOopMap{[8]=Oop [16]=NarrowOop }pc offsets: 352 
ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop }pc offsets: 380 Compiled method (c2)     288   74             java.util.HashMap::get (23 bytes)
 total in heap  [0x0000000117352390,0x0000000117353108] = 3448
 relocation     [0x0000000117352508,0x0000000117352540] = 56
 main code      [0x0000000117352540,0x0000000117352940] = 1024
 stub code      [0x0000000117352940,0x0000000117352958] = 24
 metadata       [0x0000000117352958,0x00000001173529a0] = 72
 scopes data    [0x00000001173529a0,0x0000000117352c88] = 744
 scopes pcs     [0x0000000117352c88,0x00000001173530d8] = 1104
 dependencies   [0x00000001173530d8,0x00000001173530e0] = 8
 nul chk table  [0x00000001173530e0,0x0000000117353108] = 40
----------------------------------------------------------------------
java/util/HashMap.get(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000117352540, 0x0000000117352958]  1048 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000125401398} 'get' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/util/HashMap'
  # this:     rsi:rsi   = 'java/util/HashMap'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000117352540: mov    0x8(%rsi),%r10d
  0x0000000117352544: movabs $0x800000000,%r12
  0x000000011735254e: add    %r12,%r10
  0x0000000117352551: xor    %r12,%r12
  0x0000000117352554: cmp    %r10,%rax
  0x0000000117352557: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x000000011735255d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117352560: mov    %eax,-0x14000(%rsp)
  0x0000000117352567: push   %rbp
  0x0000000117352568: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000011735256c: mov    0x8(%rdx),%eax     ; implicit exception: dispatches to 0x00000001173528d2
  0x000000011735256f: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x0000000117352575: jne    0x000000011735262f
  0x000000011735257b: mov    %rdx,%r10          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735257e: mov    0xc(%r10),%edi     ;*synchronization entry
                                                ; - java.util.HashMap::hash@-1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352582: mov    0x24(%rsi),%r11d   ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000117352586: mov    %edi,%r10d
  0x0000000117352589: shr    $0x10,%r10d
  0x000000011735258d: xor    %edi,%r10d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352590: mov    0xc(%r12,%r11,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; implicit exception: dispatches to 0x00000001173528ee
  0x0000000117352595: test   %r9d,%r9d
  0x0000000117352598: jbe    0x00000001173527f2  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011735259e: dec    %r9d
  0x00000001173525a1: and    %r10d,%r9d
  0x00000001173525a4: shl    $0x3,%r11
  0x00000001173525a8: mov    0x10(%r11,%r9,4),%r8d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525ad: test   %r8d,%r8d
  0x00000001173525b0: je     0x000000011735261d  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525b2: mov    0xc(%r12,%r8,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525b7: cmp    %r10d,%r11d
  0x00000001173525ba: jne    0x000000011735285a  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525c0: mov    0x10(%r12,%r8,8),%r9d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525c5: mov    %r9,%r11
  0x00000001173525c8: shl    $0x3,%r11
  0x00000001173525cc: cmp    %rdx,%r11
  0x00000001173525cf: je     0x000000011735260f  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525d1: cmp    $0x13c78,%eax      ;   {metadata('java/lang/Integer')}
  0x00000001173525d7: jne    0x0000000117352812  ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525dd: mov    0x8(%r12,%r9,8),%ecx  ; implicit exception: dispatches to 0x0000000117352906
  0x00000001173525e2: cmp    $0x13c78,%ecx      ;   {metadata('java/lang/Integer')}
  0x00000001173525e8: jne    0x0000000117352832  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525ee: cmp    $0x13c78,%ecx      ;   {metadata('java/lang/Integer')}
  0x00000001173525f4: jne    0x000000011735284a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525fa: mov    0xc(%rdx),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@8 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173525fe: shl    $0x3,%r9           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000117352602: mov    0xc(%r9),%r9d
  0x0000000117352606: cmp    %r9d,%r11d
  0x0000000117352609: jne    0x0000000117352832  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011735260f: mov    0x14(%r12,%r8,8),%r10d
  0x0000000117352614: mov    %r10,%rax
  0x0000000117352617: shl    $0x3,%rax          ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)

  0x000000011735261b: jmp    0x000000011735261f
  0x000000011735261d: xor    %eax,%eax          ;*synchronization entry
                                                ; - java.util.HashMap::get@-1 (line 552)

  0x000000011735261f: add    $0x30,%rsp
  0x0000000117352623: pop    %rbp
  0x0000000117352624: mov    0x108(%r15),%r10
  0x000000011735262b: test   %eax,(%r10)        ;   {poll_return}
  0x000000011735262e: retq   
  0x000000011735262f: cmp    $0x1808,%eax       ;   {metadata('java/lang/String')}
  0x0000000117352635: jne    0x000000011735287a
  0x000000011735263b: mov    %rdx,%rbx          ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735263e: mov    0x10(%rbx),%edi    ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@1 (line 1502)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352641: test   %edi,%edi
  0x0000000117352643: jne    0x0000000117352582  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@6 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352649: mov    0xc(%rbx),%r8d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735264d: mov    0xc(%r12,%r8,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; implicit exception: dispatches to 0x0000000117352922
  0x0000000117352652: test   %r11d,%r11d
  0x0000000117352655: jbe    0x00000001173527eb  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@14 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735265b: movsbl 0x14(%rbx),%ebp    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@7 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735265f: test   %ebp,%ebp
  0x0000000117352661: jne    0x00000001173528b6  ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352667: mov    %r11d,%r9d
  0x000000011735266a: dec    %r9d
  0x000000011735266d: cmp    %r11d,%r9d
  0x0000000117352670: jae    0x0000000117352892
  0x0000000117352676: movzbl 0x10(%r12,%r8,8),%r9d  ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@31 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735267c: mov    %r11d,%ecx
  0x000000011735267f: add    $0xfffffff9,%ecx
  0x0000000117352682: vmovd  %ecx,%xmm4
  0x0000000117352686: lea    (%r12,%r8,8),%rcx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@10 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735268a: mov    $0x1,%r8d
  0x0000000117352690: vmovd  %xmm4,%r10d
  0x0000000117352695: cmp    $0x1,%r10d
  0x0000000117352699: jle    0x00000001173527ba
  0x000000011735269f: mov    %r9d,%r10d
  0x00000001173526a2: shl    $0x5,%r10d
  0x00000001173526a6: sub    %r9d,%r10d         ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173526a9: jmp    0x00000001173526bd
  0x00000001173526ab: mov    %r13,%rbx
  0x00000001173526ae: vmovd  %xmm0,%r11d
  0x00000001173526b3: vmovq  %xmm1,%rdx
  0x00000001173526b8: vmovq  %xmm2,%rsi
  0x00000001173526bd: mov    %r11d,%r9d
  0x00000001173526c0: sub    %r8d,%r9d
  0x00000001173526c3: add    $0xfffffff9,%r9d
  0x00000001173526c7: mov    $0x1f40,%edi
  0x00000001173526cc: cmp    %r9d,%edi
  0x00000001173526cf: cmovg  %r9d,%edi
  0x00000001173526d3: add    %r8d,%edi
  0x00000001173526d6: mov    %rbx,%r13
  0x00000001173526d9: vmovd  %r11d,%xmm0
  0x00000001173526de: vmovq  %rdx,%xmm1
  0x00000001173526e3: vmovq  %rsi,%xmm2
  0x00000001173526e8: nopl   0x0(%rax,%rax,1)   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173526f0: movslq %r8d,%rsi          ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@19 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173526f3: movzbl 0x10(%rcx,%rsi,1),%r9d
  0x00000001173526f9: movzbl 0x17(%rcx,%rsi,1),%ebx
  0x00000001173526fe: add    %r9d,%r10d
  0x0000000117352701: movzbl 0x16(%rcx,%rsi,1),%ebp
  0x0000000117352706: mov    %r10d,%r11d
  0x0000000117352709: shl    $0x5,%r11d
  0x000000011735270d: sub    %r10d,%r11d
  0x0000000117352710: movzbl 0x15(%rcx,%rsi,1),%r9d
  0x0000000117352716: movzbl 0x14(%rcx,%rsi,1),%r10d
  0x000000011735271c: movzbl 0x13(%rcx,%rsi,1),%edx
  0x0000000117352721: movzbl 0x12(%rcx,%rsi,1),%r14d
  0x0000000117352727: movzbl 0x11(%rcx,%rsi,1),%esi
  0x000000011735272c: add    %esi,%r11d
  0x000000011735272f: mov    %r11d,%esi
  0x0000000117352732: shl    $0x5,%esi
  0x0000000117352735: sub    %r11d,%esi
  0x0000000117352738: add    %r14d,%esi
  0x000000011735273b: mov    %esi,%r11d
  0x000000011735273e: shl    $0x5,%r11d
  0x0000000117352742: sub    %esi,%r11d
  0x0000000117352745: add    %edx,%r11d
  0x0000000117352748: mov    %r11d,%esi
  0x000000011735274b: shl    $0x5,%esi
  0x000000011735274e: sub    %r11d,%esi
  0x0000000117352751: add    %r10d,%esi
  0x0000000117352754: mov    %esi,%r10d
  0x0000000117352757: shl    $0x5,%r10d
  0x000000011735275b: sub    %esi,%r10d
  0x000000011735275e: add    %r9d,%r10d
  0x0000000117352761: mov    %r10d,%edx
  0x0000000117352764: shl    $0x5,%edx
  0x0000000117352767: sub    %r10d,%edx
  0x000000011735276a: add    %ebp,%edx
  0x000000011735276c: mov    %edx,%r9d
  0x000000011735276f: shl    $0x5,%r9d
  0x0000000117352773: sub    %edx,%r9d
  0x0000000117352776: add    %ebx,%r9d          ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352779: mov    %r9d,%r10d
  0x000000011735277c: shl    $0x5,%r10d
  0x0000000117352780: sub    %r9d,%r10d         ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@25 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352783: add    $0x8,%r8d          ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352787: cmp    %edi,%r8d
  0x000000011735278a: jl     0x00000001173526f0  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352790: mov    0x108(%r15),%r11   ; ImmutableOopMap{rcx=Oop r13=Oop xmm1=Oop xmm2=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352797: test   %eax,(%r11)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@37 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {poll}
  0x000000011735279a: vmovd  %xmm4,%r11d
  0x000000011735279f: cmp    %r11d,%r8d
  0x00000001173527a2: jl     0x00000001173526ab
  0x00000001173527a8: mov    %r13,%rbx
  0x00000001173527ab: vmovd  %xmm0,%r11d
  0x00000001173527b0: vmovq  %xmm1,%rdx
  0x00000001173527b5: vmovq  %xmm2,%rsi
  0x00000001173527ba: cmp    %r11d,%r8d
  0x00000001173527bd: jge    0x00000001173527e6  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@16 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173527bf: movzbl 0x10(%rcx,%r8,1),%r10d
  0x00000001173527c5: mov    %r9d,%edi
  0x00000001173527c8: shl    $0x5,%edi
  0x00000001173527cb: sub    %r9d,%edi
  0x00000001173527ce: add    %r10d,%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@32 (line 196)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173527d1: inc    %r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@34 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173527d4: cmp    %r11d,%r8d
  0x00000001173527d7: jge    0x00000001173527de  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173527d9: mov    %edi,%r9d
  0x00000001173527dc: jmp    0x00000001173527bf
  0x00000001173527de: mov    %edi,0x10(%rbx)    ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@44 (line 1505)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173527e1: jmpq   0x0000000117352582
  0x00000001173527e6: mov    %r9d,%edi
  0x00000001173527e9: jmp    0x00000001173527de
  0x00000001173527eb: xor    %edi,%edi
  0x00000001173527ed: jmpq   0x0000000117352582  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173527f2: mov    $0xffffff4d,%esi
  0x00000001173527f7: mov    %r10d,%ebp
  0x00000001173527fa: mov    %rdx,(%rsp)
  0x00000001173527fe: mov    %r11d,0x8(%rsp)
  0x0000000117352803: mov    %r9d,0x10(%rsp)
  0x0000000117352808: data16 xchg %ax,%ax
  0x000000011735280b: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352810: ud2    
  0x0000000117352812: mov    $0xffffffde,%esi
  0x0000000117352817: mov    %r10d,%ebp
  0x000000011735281a: mov    %r8d,0x8(%rsp)
  0x000000011735281f: mov    %rdx,0x10(%rsp)
  0x0000000117352824: mov    %r9d,0xc(%rsp)
  0x0000000117352829: xchg   %ax,%ax
  0x000000011735282b: callq  0x0000000117301900  ; ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }
                                                ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352830: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000117352832: mov    $0xffffff4d,%esi
  0x0000000117352837: mov    %r10d,%ebp
  0x000000011735283a: mov    %rdx,(%rsp)
  0x000000011735283e: mov    %r8d,0x8(%rsp)
  0x0000000117352843: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352848: ud2    
  0x000000011735284a: mov    $0xffffffde,%esi
  0x000000011735284f: mov    %r9d,%ebp
  0x0000000117352852: nop
  0x0000000117352853: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352858: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011735285a: mov    $0xffffff4d,%esi
  0x000000011735285f: mov    %rdx,(%rsp)
  0x0000000117352863: mov    %r8d,0x8(%rsp)
  0x0000000117352868: mov    %r11d,0xc(%rsp)
  0x000000011735286d: mov    %r10d,0x10(%rsp)
  0x0000000117352872: nop
  0x0000000117352873: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352878: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x000000011735287a: mov    %rsi,(%rsp)
  0x000000011735287e: mov    %rdx,0x8(%rsp)
  0x0000000117352883: mov    $0xffffffc6,%esi
  0x0000000117352888: data16 xchg %ax,%ax
  0x000000011735288b: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=Oop }
                                                ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352890: ud2                       ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x0000000117352892: mov    %rdx,%rbp
  0x0000000117352895: mov    %rsi,(%rsp)
  0x0000000117352899: mov    %rbx,0x8(%rsp)
  0x000000011735289e: mov    %r8d,0x10(%rsp)
  0x00000001173528a3: mov    %r11d,0x18(%rsp)
  0x00000001173528a8: mov    $0xffffff7e,%esi
  0x00000001173528ad: xchg   %ax,%ax
  0x00000001173528af: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173528b4: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.StringLatin1::hashCode@13 (line 195)
                                                ; - java.lang.String::hashCode@29 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173528b6: mov    %rdx,(%rsp)
  0x00000001173528ba: mov    %rsi,0x8(%rsp)
  0x00000001173528bf: mov    %rbx,0x18(%rsp)
  0x00000001173528c4: mov    $0xffffff4d,%esi
  0x00000001173528c9: xchg   %ax,%ax
  0x00000001173528cb: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }
                                                ;*ifne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173528d0: ud2                       ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::isLatin1@10 (line 3266)
                                                ; - java.lang.String::hashCode@19 (line 1504)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x00000001173528d2: mov    %rsi,(%rsp)
  0x00000001173528d6: mov    %rdx,0x8(%rsp)
  0x00000001173528db: mov    %rdx,0x10(%rsp)
  0x00000001173528e0: mov    $0xffffff4d,%esi
  0x00000001173528e5: xchg   %ax,%ax
  0x00000001173528e7: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }
                                                ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@1 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173528ec: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x00000001173528ee: mov    $0xffffff4d,%esi
  0x00000001173528f3: mov    %r10d,%ebp
  0x00000001173528f6: mov    %rdx,(%rsp)
  0x00000001173528fa: mov    %r11d,0xc(%rsp)
  0x00000001173528ff: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352904: ud2    
  0x0000000117352906: mov    $0xfffffff4,%esi
  0x000000011735290b: mov    %r10d,%ebp
  0x000000011735290e: mov    %r8d,0x8(%rsp)
  0x0000000117352913: mov    %rdx,0x10(%rsp)
  0x0000000117352918: data16 xchg %ax,%ax
  0x000000011735291b: callq  0x0000000117301900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117352920: ud2                       ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)

  0x0000000117352922: mov    $0xfffffff6,%esi
  0x0000000117352927: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@13 (line 1503)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011735292c: ud2                       ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.String::hashCode@47 (line 1507)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)

  0x000000011735292e: hlt    
  0x000000011735292f: hlt    
  0x0000000117352930: hlt    
  0x0000000117352931: hlt    
  0x0000000117352932: hlt    
  0x0000000117352933: hlt    
  0x0000000117352934: hlt    
  0x0000000117352935: hlt    
  0x0000000117352936: hlt    
  0x0000000117352937: hlt    
  0x0000000117352938: hlt    
  0x0000000117352939: hlt    
  0x000000011735293a: hlt    
  0x000000011735293b: hlt    
  0x000000011735293c: hlt    
  0x000000011735293d: hlt    
  0x000000011735293e: hlt    
  0x000000011735293f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117352940: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117352945: callq  0x000000011735294a
  0x000000011735294a: subq   $0x5,(%rsp)
  0x000000011735294f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117352954: hlt    
  0x0000000117352955: hlt    
  0x0000000117352956: hlt    
  0x0000000117352957: hlt    

ImmutableOopMap{rcx=Oop r13=Oop xmm1=Oop xmm2=Oop }pc offsets: 599 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 720 
ImmutableOopMap{[8]=NarrowOop [12]=NarrowOop [16]=Oop }pc offsets: 752 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 776 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 792 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 824 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 848 
ImmutableOopMap{rbp=Oop [0]=Oop [8]=Oop [16]=NarrowOop }pc offsets: 884 
ImmutableOopMap{[0]=Oop [8]=Oop [24]=Oop }pc offsets: 912 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 940 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 964 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 992 
ImmutableOopMap{}pc offsets: 1004 Compiled method (c2)     303   75             java.util.Optional::ofNullable (15 bytes)
 total in heap  [0x0000000117351f90,0x0000000117352360] = 976
 relocation     [0x0000000117352108,0x0000000117352120] = 24
 main code      [0x0000000117352120,0x0000000117352240] = 288
 stub code      [0x0000000117352240,0x0000000117352258] = 24
 metadata       [0x0000000117352258,0x0000000117352278] = 32
 scopes data    [0x0000000117352278,0x00000001173522b0] = 56
 scopes pcs     [0x00000001173522b0,0x0000000117352340] = 144
 dependencies   [0x0000000117352340,0x0000000117352348] = 8
 handler table  [0x0000000117352348,0x0000000117352360] = 24
----------------------------------------------------------------------
java/util/Optional.ofNullable(Ljava/lang/Object;)Ljava/util/Optional;  [0x0000000117352120, 0x0000000117352258]  312 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x0000000125524bb0} 'ofNullable' '(Ljava/lang/Object;)Ljava/util/Optional;' in 'java/util/Optional'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x0000000117352120: mov    %eax,-0x14000(%rsp)
  0x0000000117352127: push   %rbp
  0x0000000117352128: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::ofNullable@-1 (line 133)

  0x000000011735212c: mov    %rsi,%rbp
  0x000000011735212f: test   %rsi,%rsi
  0x0000000117352132: je     0x000000011735220c
  0x0000000117352138: mov    0x118(%r15),%rbx
  0x000000011735213f: mov    %rbx,%r10
  0x0000000117352142: add    $0x10,%r10
  0x0000000117352146: cmp    0x128(%r15),%r10
  0x000000011735214d: jae    0x0000000117352218  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000117352153: mov    %r10,0x118(%r15)
  0x000000011735215a: prefetchnta 0xc0(%r10)
  0x0000000117352162: mov    $0x34bd8,%r10d     ;   {metadata('java/util/Optional')}
  0x0000000117352168: movabs $0x800000000,%r12
  0x0000000117352172: add    %r12,%r10
  0x0000000117352175: xor    %r12,%r12
  0x0000000117352178: mov    0xb8(%r10),%r10
  0x000000011735217f: mov    %r10,(%rbx)
  0x0000000117352182: movl   $0x34bd8,0x8(%rbx)  ;   {metadata('java/util/Optional')}
  0x0000000117352189: mov    %rbp,%r10
  0x000000011735218c: shr    $0x3,%r10
  0x0000000117352190: mov    %r10d,0xc(%rbx)    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000117352194: mov    %rbp,%r10
  0x0000000117352197: mov    %rbx,%r11
  0x000000011735219a: xor    %r11,%r10
  0x000000011735219d: shr    $0x14,%r10
  0x00000001173521a1: test   %r10,%r10
  0x00000001173521a4: je     0x00000001173521f9
  0x00000001173521a6: shr    $0x9,%r11
  0x00000001173521aa: movabs $0x116ad9000,%rdi
  0x00000001173521b4: add    %r11,%rdi
  0x00000001173521b7: cmpb   $0x20,(%rdi)
  0x00000001173521ba: je     0x00000001173521f9
  0x00000001173521bc: mov    0x70(%r15),%r10
  0x00000001173521c0: mov    0x80(%r15),%r11
  0x00000001173521c7: lock addl $0x0,-0x40(%rsp)
  0x00000001173521cd: cmpb   $0x0,(%rdi)
  0x00000001173521d0: je     0x00000001173521f9
  0x00000001173521d2: movb   $0x0,(%rdi)
  0x00000001173521d5: test   %r10,%r10
  0x00000001173521d8: jne    0x00000001173521ec
  0x00000001173521da: mov    %r15,%rsi
  0x00000001173521dd: movabs $0x10d5038ce,%r10
  0x00000001173521e7: callq  *%r10
  0x00000001173521ea: jmp    0x00000001173521f9
  0x00000001173521ec: mov    %rdi,-0x8(%r11,%r10,1)
  0x00000001173521f1: add    $0xfffffffffffffff8,%r10
  0x00000001173521f5: mov    %r10,0x70(%r15)    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)

  0x00000001173521f9: mov    %rbx,%rax
  0x00000001173521fc: add    $0x10,%rsp
  0x0000000117352200: pop    %rbp
  0x0000000117352201: mov    0x108(%r15),%r10
  0x0000000117352208: test   %eax,(%r10)        ;   {poll_return}
  0x000000011735220b: retq   
  0x000000011735220c: movabs $0x70ff4b4c0,%rbx  ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x0000000117352216: jmp    0x00000001173521f9
  0x0000000117352218: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000117352222: nop
  0x0000000117352223: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117352228: mov    %rax,%rbx
  0x000000011735222b: jmpq   0x0000000117352189  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)

  0x0000000117352230: mov    %rax,%rsi
  0x0000000117352233: add    $0x10,%rsp
  0x0000000117352237: pop    %rbp
  0x0000000117352238: jmpq   0x0000000117338f00  ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::<init>@9 (line 107)
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ;   {runtime_call _rethrow_Java}
  0x000000011735223d: hlt    
  0x000000011735223e: hlt    
  0x000000011735223f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117352240: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117352245: callq  0x000000011735224a
  0x000000011735224a: subq   $0x5,(%rsp)
  0x000000011735224f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117352254: hlt    
  0x0000000117352255: hlt    
  0x0000000117352256: hlt    
  0x0000000117352257: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 264 Compiled method (c2)     310   76             FunctionalHashMap::max100 (31 bytes)
 total in heap  [0x0000000117357c90,0x0000000117358940] = 3248
 relocation     [0x0000000117357e08,0x0000000117357e60] = 88
 main code      [0x0000000117357e60,0x00000001173581e0] = 896
 stub code      [0x00000001173581e0,0x00000001173581f8] = 24
 oops           [0x00000001173581f8,0x0000000117358210] = 24
 metadata       [0x0000000117358210,0x0000000117358288] = 120
 scopes data    [0x0000000117358288,0x00000001173584f8] = 624
 scopes pcs     [0x00000001173584f8,0x00000001173588e8] = 1008
 dependencies   [0x00000001173588e8,0x00000001173588f0] = 8
 handler table  [0x00000001173588f0,0x0000000117358920] = 48
 nul chk table  [0x0000000117358920,0x0000000117358940] = 32
----------------------------------------------------------------------
FunctionalHashMap.max100(I)I  [0x0000000117357e60, 0x00000001173581f8]  920 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001256d9968} 'max100' '(I)I' in 'FunctionalHashMap'
  # this:     rsi:rsi   = 'FunctionalHashMap'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000117357e60: mov    0x8(%rsi),%r10d
  0x0000000117357e64: movabs $0x800000000,%r12
  0x0000000117357e6e: add    %r12,%r10
  0x0000000117357e71: xor    %r12,%r12
  0x0000000117357e74: cmp    %r10,%rax
  0x0000000117357e77: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x0000000117357e7d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117357e80: mov    %eax,-0x14000(%rsp)
  0x0000000117357e87: push   %rbp
  0x0000000117357e88: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::max100@-1 (line 49)

  0x0000000117357e8c: mov    %edx,(%rsp)
  0x0000000117357e8f: movabs $0x70fe0f278,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f278} = 'FunctionalHashMap')}
  0x0000000117357e99: mov    0x70(%r10),%r11d   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)

  0x0000000117357e9d: mov    %r11d,0x4(%rsp)
  0x0000000117357ea2: cmp    $0xffffff80,%edx
  0x0000000117357ea5: jl     0x00000001173580f6  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117357eab: cmp    $0x7f,%edx
  0x0000000117357eae: jg     0x0000000117357edf  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117357eb0: mov    %edx,%ebp
  0x0000000117357eb2: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117357eb8: cmp    $0x100,%ebp
  0x0000000117357ebe: jae    0x0000000117358146
  0x0000000117357ec4: movslq %edx,%r10
  0x0000000117357ec7: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117357ed1: mov    0x210(%r11,%r10,4),%r10d
  0x0000000117357ed9: lea    (%r12,%r10,8),%r9  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117357edd: jmp    0x0000000117357f39
  0x0000000117357edf: mov    0x118(%r15),%r9
  0x0000000117357ee6: mov    %r9,%r10
  0x0000000117357ee9: add    $0x10,%r10
  0x0000000117357eed: cmp    0x128(%r15),%r10
  0x0000000117357ef4: jae    0x00000001173580af
  0x0000000117357efa: mov    %r10,0x118(%r15)
  0x0000000117357f01: prefetchnta 0xc0(%r10)
  0x0000000117357f09: mov    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000117357f0f: movabs $0x800000000,%r12
  0x0000000117357f19: add    %r12,%r10
  0x0000000117357f1c: xor    %r12,%r12
  0x0000000117357f1f: mov    0xb8(%r10),%r10
  0x0000000117357f26: mov    %r10,(%r9)
  0x0000000117357f29: movl   $0x13c78,0x8(%r9)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000117357f31: mov    (%rsp),%r10d
  0x0000000117357f35: mov    %r10d,0xc(%r9)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117357f39: mov    0x4(%rsp),%r11d
  0x0000000117357f3e: mov    0x8(%r12,%r11,8),%r10d  ; implicit exception: dispatches to 0x0000000117358186
  0x0000000117357f43: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x0000000117357f4a: jne    0x00000001173580e1  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f50: mov    0xc(%r9),%r10d     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f54: shl    $0x3,%r11          ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f58: mov    0x24(%r11),%r8d    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f5c: mov    %r10d,%ecx
  0x0000000117357f5f: shr    $0x10,%ecx
  0x0000000117357f62: xor    %r10d,%ecx         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f65: mov    0xc(%r12,%r8,8),%ebp  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; implicit exception: dispatches to 0x0000000117358196
  0x0000000117357f6a: test   %ebp,%ebp
  0x0000000117357f6c: jbe    0x0000000117358106  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f72: shl    $0x3,%r8
  0x0000000117357f76: dec    %ebp
  0x0000000117357f78: and    %ecx,%ebp
  0x0000000117357f7a: mov    0x10(%r8,%rbp,4),%r11d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f7f: test   %r11d,%r11d
  0x0000000117357f82: je     0x000000011735805a  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f88: mov    0xc(%r12,%r11,8),%ebp  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f8d: cmp    %ecx,%ebp
  0x0000000117357f8f: jne    0x0000000117358152  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f95: mov    0x10(%r12,%r11,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357f9a: mov    %rbp,%rbx
  0x0000000117357f9d: shl    $0x3,%rbx
  0x0000000117357fa1: cmp    %r9,%rbx
  0x0000000117357fa4: je     0x0000000117357fd6  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357fa6: mov    0x8(%r12,%rbp,8),%r8d  ; implicit exception: dispatches to 0x00000001173581ae
  0x0000000117357fab: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000117357fb2: jne    0x0000000117358122  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357fb8: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000117357fbf: jne    0x000000011735813a
  0x0000000117357fc5: lea    (%r12,%rbp,8),%r8  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357fc9: mov    0xc(%r8),%r8d
  0x0000000117357fcd: cmp    %r8d,%r10d
  0x0000000117357fd0: jne    0x0000000117358122  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357fd6: mov    0x14(%r12,%r11,8),%ebp  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117357fdb: test   %ebp,%ebp
  0x0000000117357fdd: je     0x000000011735805a
  0x0000000117357fdf: mov    0x8(%r12,%rbp,8),%r11d
  0x0000000117357fe4: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000117357feb: jne    0x000000011735816e
  0x0000000117357ff1: mov    0x118(%r15),%rax
  0x0000000117357ff8: mov    %rax,%r10
  0x0000000117357ffb: add    $0x10,%r10
  0x0000000117357fff: shl    $0x3,%rbp          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x0000000117358003: cmp    0x128(%r15),%r10
  0x000000011735800a: jae    0x00000001173580cc
  0x0000000117358010: mov    %r10,0x118(%r15)
  0x0000000117358017: prefetchnta 0xc0(%r10)
  0x000000011735801f: mov    $0x34bd8,%r10d     ;   {metadata('java/util/Optional')}
  0x0000000117358025: movabs $0x800000000,%r12
  0x000000011735802f: add    %r12,%r10
  0x0000000117358032: xor    %r12,%r12
  0x0000000117358035: mov    0xb8(%r10),%r10
  0x000000011735803c: mov    %r10,(%rax)
  0x000000011735803f: movl   $0x34bd8,0x8(%rax)  ;   {metadata('java/util/Optional')}
  0x0000000117358046: movl   $0x0,0xc(%rax)     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)

  0x000000011735804d: mov    %rbp,%r10
  0x0000000117358050: shr    $0x3,%r10
  0x0000000117358054: mov    %r10d,0xc(%rax)    ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)

  0x0000000117358058: jmp    0x0000000117358064  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x000000011735805a: movabs $0x70ff4b4c0,%rax  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x0000000117358064: mov    0xc(%rax),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)
                                                ; - FunctionalHashMap::max100@21 (line 50)

  0x0000000117358068: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117358072: mov    0x3a0(%r10),%r10d
  0x0000000117358079: mov    %r11,%r8
  0x000000011735807c: shl    $0x3,%r8
  0x0000000117358080: lea    (%r12,%r10,8),%rbp
  0x0000000117358084: test   %r11d,%r11d
  0x0000000117358087: cmovne %r8,%rbp
  0x000000011735808b: mov    0x8(%rbp),%r10d
  0x000000011735808f: cmp    $0x13c78,%r10d     ;   {metadata('java/lang/Integer')}
  0x0000000117358096: jne    0x000000011735817a  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)

  0x000000011735809c: mov    0xc(%rbp),%eax     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@27 (line 50)

  0x000000011735809f: add    $0x30,%rsp
  0x00000001173580a3: pop    %rbp
  0x00000001173580a4: mov    0x108(%r15),%r10
  0x00000001173580ab: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173580ae: retq   
  0x00000001173580af: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x00000001173580b9: mov    0x4(%rsp),%ebp
  0x00000001173580bd: xchg   %ax,%ax
  0x00000001173580bf: callq  0x0000000117339980  ; ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001173580c4: mov    %rax,%r9
  0x00000001173580c7: jmpq   0x0000000117357f31
  0x00000001173580cc: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x00000001173580d6: nop
  0x00000001173580d7: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ;   {runtime_call _new_instance_Java}
  0x00000001173580dc: jmpq   0x000000011735804d
  0x00000001173580e1: mov    $0xffffffde,%esi
  0x00000001173580e6: mov    %r11d,%ebp
  0x00000001173580e9: mov    %r9,(%rsp)
  0x00000001173580ed: xchg   %ax,%ax
  0x00000001173580ef: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop [0]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173580f4: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x00000001173580f6: mov    $0xffffff4d,%esi
  0x00000001173580fb: mov    %r11d,%ebp
  0x00000001173580fe: nop
  0x00000001173580ff: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358104: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117358106: mov    $0xffffff4d,%esi
  0x000000011735810b: mov    %ecx,(%rsp)
  0x000000011735810e: mov    %r9,0x8(%rsp)
  0x0000000117358113: mov    %r8d,0x4(%rsp)
  0x0000000117358118: data16 xchg %ax,%ax
  0x000000011735811b: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358120: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117358122: mov    $0xffffff4d,%esi
  0x0000000117358127: mov    %ecx,%ebp
  0x0000000117358129: mov    %r9,(%rsp)
  0x000000011735812d: mov    %r11d,0x8(%rsp)
  0x0000000117358132: nop
  0x0000000117358133: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358138: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000011735813a: mov    $0xffffffde,%esi
  0x000000011735813f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358144: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117358146: mov    $0xffffffe4,%esi
  0x000000011735814b: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358150: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x0000000117358152: mov    $0xffffff4d,%esi
  0x0000000117358157: mov    %r9,0x8(%rsp)
  0x000000011735815c: mov    %r11d,0x4(%rsp)
  0x0000000117358161: mov    %ecx,0x10(%rsp)
  0x0000000117358165: xchg   %ax,%ax
  0x0000000117358167: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011735816c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x000000011735816e: mov    $0xffffffde,%esi
  0x0000000117358173: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358178: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)

  0x000000011735817a: mov    $0xffffffde,%esi
  0x000000011735817f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358184: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)

  0x0000000117358186: mov    $0xfffffff6,%esi
  0x000000011735818b: mov    %r9,%rbp
  0x000000011735818e: nop
  0x000000011735818f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358194: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x0000000117358196: mov    $0xffffff4d,%esi
  0x000000011735819b: mov    %ecx,%ebp
  0x000000011735819d: mov    %r9,(%rsp)
  0x00000001173581a1: mov    %r8d,0xc(%rsp)
  0x00000001173581a6: nop
  0x00000001173581a7: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173581ac: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)

  0x00000001173581ae: mov    $0xfffffff4,%esi
  0x00000001173581b3: mov    %ecx,%ebp
  0x00000001173581b5: mov    %r11d,0x8(%rsp)
  0x00000001173581ba: mov    %r9,0x10(%rsp)
  0x00000001173581bf: callq  0x0000000117301900  ; ImmutableOopMap{[8]=NarrowOop [16]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173581c4: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001173581c6: mov    %rax,%rsi
  0x00000001173581c9: jmp    0x00000001173581ce  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)

  0x00000001173581cb: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)

  0x00000001173581ce: add    $0x30,%rsp
  0x00000001173581d2: pop    %rbp
  0x00000001173581d3: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x00000001173581d8: hlt    
  0x00000001173581d9: hlt    
  0x00000001173581da: hlt    
  0x00000001173581db: hlt    
  0x00000001173581dc: hlt    
  0x00000001173581dd: hlt    
  0x00000001173581de: hlt    
  0x00000001173581df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173581e0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173581e5: callq  0x00000001173581ea
  0x00000001173581ea: subq   $0x5,(%rsp)
  0x00000001173581ef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173581f4: hlt    
  0x00000001173581f5: hlt    
  0x00000001173581f6: hlt    
  0x00000001173581f7: hlt    

ImmutableOopMap{rbp=NarrowOop [4]=NarrowOop }pc offsets: 612 
ImmutableOopMap{rbp=Oop }pc offsets: 636 
ImmutableOopMap{rbp=NarrowOop [0]=Oop }pc offsets: 660 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 676 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 704 
ImmutableOopMap{[0]=Oop [8]=NarrowOop }pc offsets: 728 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 740 
ImmutableOopMap{[4]=NarrowOop }pc offsets: 752 
ImmutableOopMap{[4]=NarrowOop [8]=Oop }pc offsets: 780 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 792 
ImmutableOopMap{rbp=Oop }pc offsets: 804 820 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 844 
ImmutableOopMap{[8]=NarrowOop [16]=Oop }pc offsets: 868 Compiled method (c2)     321   77             java.lang.invoke.Invokers$Holder::linkToTargetMethod (8 bytes)
 total in heap  [0x0000000117351c10,0x0000000117351f58] = 840
 relocation     [0x0000000117351d88,0x0000000117351da8] = 32
 main code      [0x0000000117351dc0,0x0000000117351e20] = 96
 stub code      [0x0000000117351e20,0x0000000117351e58] = 56
 metadata       [0x0000000117351e58,0x0000000117351e68] = 16
 scopes data    [0x0000000117351e68,0x0000000117351e98] = 48
 scopes pcs     [0x0000000117351e98,0x0000000117351f28] = 144
 dependencies   [0x0000000117351f28,0x0000000117351f30] = 8
 handler table  [0x0000000117351f30,0x0000000117351f48] = 24
 nul chk table  [0x0000000117351f48,0x0000000117351f58] = 16
----------------------------------------------------------------------
java/lang/invoke/Invokers$Holder.linkToTargetMethod(Ljava/lang/Object;)Ljava/lang/Object;  [0x0000000117351dc0, 0x0000000117351e58]  152 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000012565c5a0} 'linkToTargetMethod' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/Invokers$Holder'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x0000000117351dc0: mov    %eax,-0x14000(%rsp)
  0x0000000117351dc7: push   %rbp
  0x0000000117351dc8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@-1

  0x0000000117351dcc: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x0000000117351e0f
  0x0000000117351dd0: cmp    $0x57f68,%r11d     ;   {metadata('java/lang/invoke/BoundMethodHandle$Species_L')}
  0x0000000117351dd7: jne    0x0000000117351df0  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x0000000117351dd9: xchg   %ax,%ax
  0x0000000117351ddb: callq  0x00000001172fff00  ; ImmutableOopMap{}
                                                ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@4
                                                ;   {optimized virtual_call}
  0x0000000117351de0: add    $0x10,%rsp
  0x0000000117351de4: pop    %rbp
  0x0000000117351de5: mov    0x108(%r15),%r10
  0x0000000117351dec: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117351def: retq   
  0x0000000117351df0: mov    %rsi,%rbp
  0x0000000117351df3: mov    $0xffffff6e,%esi
  0x0000000117351df8: data16 xchg %ax,%ax
  0x0000000117351dfb: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117351e00: ud2                       ;*invokevirtual invokeBasic {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@4

  0x0000000117351e02: mov    %rax,%rsi
  0x0000000117351e05: add    $0x10,%rsp
  0x0000000117351e09: pop    %rbp
  0x0000000117351e0a: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x0000000117351e0f: mov    $0xffffff64,%esi
  0x0000000117351e14: data16 xchg %ax,%ax
  0x0000000117351e17: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117351e1c: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@1

  0x0000000117351e1e: hlt    
  0x0000000117351e1f: hlt    
[Stub Code]
  0x0000000117351e20: movabs $0x0,%rbx          ;   {no_reloc}
  0x0000000117351e2a: jmpq   0x0000000117351e2a  ;   {runtime_call}
[Exception Handler]
  0x0000000117351e2f: jmpq   0x0000000117336680  ;   {runtime_call ExceptionBlob}
[Deopt Handler Code]
  0x0000000117351e34: callq  0x0000000117351e39
  0x0000000117351e39: subq   $0x5,(%rsp)
  0x0000000117351e3e: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
[Deopt MH Handler Code]
  0x0000000117351e43: callq  0x0000000117351e48
  0x0000000117351e48: subq   $0x5,(%rsp)
  0x0000000117351e4d: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117351e52: hlt    
  0x0000000117351e53: hlt    
  0x0000000117351e54: hlt    
  0x0000000117351e55: hlt    
  0x0000000117351e56: hlt    
  0x0000000117351e57: hlt    

ImmutableOopMap{}pc offsets: 32 
ImmutableOopMap{rbp=Oop }pc offsets: 64 
ImmutableOopMap{}pc offsets: 92 Compiled method (c2)     323   78             java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke (8 bytes)
 total in heap  [0x0000000117351810,0x0000000117351af8] = 744
 relocation     [0x0000000117351988,0x0000000117351998] = 16
 main code      [0x00000001173519a0,0x0000000117351a00] = 96
 stub code      [0x0000000117351a00,0x0000000117351a18] = 24
 oops           [0x0000000117351a18,0x0000000117351a20] = 8
 metadata       [0x0000000117351a20,0x0000000117351a30] = 16
 scopes data    [0x0000000117351a30,0x0000000117351a60] = 48
 scopes pcs     [0x0000000117351a60,0x0000000117351ae0] = 128
 dependencies   [0x0000000117351ae0,0x0000000117351ae8] = 8
 nul chk table  [0x0000000117351ae8,0x0000000117351af8] = 16
----------------------------------------------------------------------
java/lang/invoke/LambdaForm$MH.invoke(Ljava/lang/Object;)Ljava/lang/Object;  [0x00000001173519a0, 0x0000000117351a18]  120 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001256db5e8} 'invoke' '(Ljava/lang/Object;)Ljava/lang/Object;' in 'java/lang/invoke/LambdaForm$MH'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  #           [sp+0x20]  (sp of caller)
  0x00000001173519a0: mov    %eax,-0x14000(%rsp)
  0x00000001173519a7: push   %rbp
  0x00000001173519a8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@-1

  0x00000001173519ac: mov    0x8(%rsi),%r11d    ; implicit exception: dispatches to 0x00000001173519e6
  0x00000001173519b0: cmp    $0x57f68,%r11d     ;   {metadata('java/lang/invoke/BoundMethodHandle$Species_L')}
  0x00000001173519b7: jne    0x00000001173519d4  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@1

  0x00000001173519b9: mov    0x1c(%rsi),%r11d
  0x00000001173519bd: mov    %r11,%rax
  0x00000001173519c0: shl    $0x3,%rax          ;*getfield argL0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@4

  0x00000001173519c4: add    $0x10,%rsp
  0x00000001173519c8: pop    %rbp
  0x00000001173519c9: mov    0x108(%r15),%r10
  0x00000001173519d0: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173519d3: retq   
  0x00000001173519d4: mov    %rsi,%rbp
  0x00000001173519d7: mov    $0xffffff6e,%esi
  0x00000001173519dc: data16 xchg %ax,%ax
  0x00000001173519df: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173519e4: ud2    
  0x00000001173519e6: mov    $0xffffff64,%esi
  0x00000001173519eb: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@1
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173519f0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.invoke.LambdaForm$MH/0x0000000800060c40::invoke@1

  0x00000001173519f2: hlt    
  0x00000001173519f3: hlt    
  0x00000001173519f4: hlt    
  0x00000001173519f5: hlt    
  0x00000001173519f6: hlt    
  0x00000001173519f7: hlt    
  0x00000001173519f8: hlt    
  0x00000001173519f9: hlt    
  0x00000001173519fa: hlt    
  0x00000001173519fb: hlt    
  0x00000001173519fc: hlt    
  0x00000001173519fd: hlt    
  0x00000001173519fe: hlt    
  0x00000001173519ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117351a00: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117351a05: callq  0x0000000117351a0a
  0x0000000117351a0a: subq   $0x5,(%rsp)
  0x0000000117351a0f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117351a14: hlt    
  0x0000000117351a15: hlt    
  0x0000000117351a16: hlt    
  0x0000000117351a17: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 68 
ImmutableOopMap{}pc offsets: 80 Compiled method (c2)     325   79             java.util.Optional::orElseGet (21 bytes)
 total in heap  [0x0000000117358990,0x0000000117358d28] = 920
 relocation     [0x0000000117358b08,0x0000000117358b20] = 24
 main code      [0x0000000117358b20,0x0000000117358bc0] = 160
 stub code      [0x0000000117358bc0,0x0000000117358bd8] = 24
 oops           [0x0000000117358bd8,0x0000000117358be8] = 16
 metadata       [0x0000000117358be8,0x0000000117358c10] = 40
 scopes data    [0x0000000117358c10,0x0000000117358c60] = 80
 scopes pcs     [0x0000000117358c60,0x0000000117358d10] = 176
 dependencies   [0x0000000117358d10,0x0000000117358d18] = 8
 nul chk table  [0x0000000117358d18,0x0000000117358d28] = 16
----------------------------------------------------------------------
java/util/Optional.orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;  [0x0000000117358b20, 0x0000000117358bd8]  184 bytes
[Entry Point]
[Constants]
  # {method} {0x0000000125525548} 'orElseGet' '(Ljava/util/function/Supplier;)Ljava/lang/Object;' in 'java/util/Optional'
  # this:     rsi:rsi   = 'java/util/Optional'
  # parm0:    rdx:rdx   = 'java/util/function/Supplier'
  #           [sp+0x20]  (sp of caller)
  0x0000000117358b20: mov    0x8(%rsi),%r10d
  0x0000000117358b24: movabs $0x800000000,%r12
  0x0000000117358b2e: add    %r12,%r10
  0x0000000117358b31: xor    %r12,%r12
  0x0000000117358b34: cmp    %r10,%rax
  0x0000000117358b37: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x0000000117358b3d: data16 xchg %ax,%ax
[Verified Entry Point]
  0x0000000117358b40: mov    %eax,-0x14000(%rsp)
  0x0000000117358b47: push   %rbp
  0x0000000117358b48: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - java.util.Optional::orElseGet@-1 (line 369)

  0x0000000117358b4c: mov    0xc(%rsi),%r11d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)

  0x0000000117358b50: test   %r11d,%r11d
  0x0000000117358b53: jne    0x0000000117358b79  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@4 (line 369)

  0x0000000117358b55: mov    0x8(%rdx),%r11d    ; implicit exception: dispatches to 0x0000000117358ba2
  0x0000000117358b59: cmp    $0x60840,%r11d     ;   {metadata('FunctionalHashMap$$Lambda$1')}
  0x0000000117358b60: jne    0x0000000117358b90  ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@15 (line 369)

  0x0000000117358b62: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117358b6c: mov    0x3a0(%r10),%r11d
  0x0000000117358b73: lea    (%r12,%r11,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::lambda$max100$0@2 (line 50)
                                                ; - FunctionalHashMap$$Lambda$1/0x0000000800060840::get@0
                                                ; - java.util.Optional::orElseGet@15 (line 369)

  0x0000000117358b77: jmp    0x0000000117358b80
  0x0000000117358b79: mov    %r11,%rax
  0x0000000117358b7c: shl    $0x3,%rax          ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@20 (line 369)

  0x0000000117358b80: add    $0x10,%rsp
  0x0000000117358b84: pop    %rbp
  0x0000000117358b85: mov    0x108(%r15),%r10
  0x0000000117358b8c: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117358b8f: retq   
  0x0000000117358b90: mov    $0xffffffde,%esi
  0x0000000117358b95: mov    %rdx,%rbp
  0x0000000117358b98: data16 xchg %ax,%ax
  0x0000000117358b9b: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@15 (line 369)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358ba0: ud2    
  0x0000000117358ba2: mov    $0xfffffff6,%esi
  0x0000000117358ba7: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@15 (line 369)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117358bac: ud2                       ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@15 (line 369)

  0x0000000117358bae: hlt    
  0x0000000117358baf: hlt    
  0x0000000117358bb0: hlt    
  0x0000000117358bb1: hlt    
  0x0000000117358bb2: hlt    
  0x0000000117358bb3: hlt    
  0x0000000117358bb4: hlt    
  0x0000000117358bb5: hlt    
  0x0000000117358bb6: hlt    
  0x0000000117358bb7: hlt    
  0x0000000117358bb8: hlt    
  0x0000000117358bb9: hlt    
  0x0000000117358bba: hlt    
  0x0000000117358bbb: hlt    
  0x0000000117358bbc: hlt    
  0x0000000117358bbd: hlt    
  0x0000000117358bbe: hlt    
  0x0000000117358bbf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117358bc0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117358bc5: callq  0x0000000117358bca
  0x0000000117358bca: subq   $0x5,(%rsp)
  0x0000000117358bcf: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117358bd4: hlt    
  0x0000000117358bd5: hlt    
  0x0000000117358bd6: hlt    
  0x0000000117358bd7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 128 
ImmutableOopMap{}pc offsets: 140 Compiled method (c2)     330   80             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x0000000117356110,0x00000001173563a8] = 664
 relocation     [0x0000000117356288,0x0000000117356298] = 16
 main code      [0x00000001173562a0,0x00000001173562e0] = 64
 stub code      [0x00000001173562e0,0x00000001173562f8] = 24
 oops           [0x00000001173562f8,0x0000000117356308] = 16
 metadata       [0x0000000117356308,0x0000000117356328] = 32
 scopes data    [0x0000000117356328,0x0000000117356350] = 40
 scopes pcs     [0x0000000117356350,0x00000001173563a0] = 80
 dependencies   [0x00000001173563a0,0x00000001173563a8] = 8
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x00000001173562a0, 0x00000001173562f8]  88 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001256d9898} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x20]  (sp of caller)
  0x00000001173562a0: mov    0x8(%rsi),%r10d
  0x00000001173562a4: movabs $0x800000000,%r12
  0x00000001173562ae: add    %r12,%r10
  0x00000001173562b1: xor    %r12,%r12
  0x00000001173562b4: cmp    %r10,%rax
  0x00000001173562b7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x00000001173562bd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001173562c0: mov    %eax,-0x14000(%rsp)
  0x00000001173562c7: push   %rbp
  0x00000001173562c8: sub    $0x10,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x00000001173562cc: mov    %rsi,%rbp
  0x00000001173562cf: mov    $0xffffffbe,%esi
  0x00000001173562d4: data16 xchg %ax,%ax
  0x00000001173562d7: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173562dc: ud2                       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x00000001173562de: hlt    
  0x00000001173562df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001173562e0: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x00000001173562e5: callq  0x00000001173562ea
  0x00000001173562ea: subq   $0x5,(%rsp)
  0x00000001173562ef: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x00000001173562f4: hlt    
  0x00000001173562f5: hlt    
  0x00000001173562f6: hlt    
  0x00000001173562f7: hlt    

ImmutableOopMap{rbp=Oop }pc offsets: 60 Compiled method (c2)     338   81 %           FunctionalHashMap::runTest @ 4 (25 bytes)
 total in heap  [0x0000000117356d90,0x0000000117357c50] = 3776
 relocation     [0x0000000117356f08,0x0000000117356f70] = 104
 main code      [0x0000000117356f80,0x0000000117357400] = 1152
 stub code      [0x0000000117357400,0x0000000117357418] = 24
 oops           [0x0000000117357418,0x0000000117357430] = 24
 metadata       [0x0000000117357430,0x00000001173574b8] = 136
 scopes data    [0x00000001173574b8,0x00000001173577c8] = 784
 scopes pcs     [0x00000001173577c8,0x0000000117357be8] = 1056
 dependencies   [0x0000000117357be8,0x0000000117357bf8] = 16
 handler table  [0x0000000117357bf8,0x0000000117357c28] = 48
 nul chk table  [0x0000000117357c28,0x0000000117357c50] = 40
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x0000000117356f80, 0x0000000117357418]  1176 bytes
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x00000001256d9898} 'runTest' '()I' in 'FunctionalHashMap'
  0x0000000117356f80: callq  0x000000010d8107f4  ;   {runtime_call os::breakpoint()}
  0x0000000117356f85: data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000000117356f90: mov    %eax,-0x14000(%rsp)
  0x0000000117356f97: push   %rbp
  0x0000000117356f98: sub    $0x30,%rsp
  0x0000000117356f9c: mov    0x10(%rsi),%r13
  0x0000000117356fa0: mov    0x8(%rsi),%ebp
  0x0000000117356fa3: mov    (%rsi),%ebx
  0x0000000117356fa5: mov    %rsi,%rdi
  0x0000000117356fa8: movabs $0x10d891a82,%r10
  0x0000000117356fb2: callq  *%r10
  0x0000000117356fb5: mov    0x8(%r13),%r11d    ; implicit exception: dispatches to 0x00000001173573da
  0x0000000117356fb9: cmp    $0x60040,%r11d     ;   {metadata('FunctionalHashMap')}
  0x0000000117356fc0: jne    0x0000000117357346  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x0000000117356fc6: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000117356fcc: movabs $0x800000000,%r8
  0x0000000117356fd6: add    %r11,%r8
  0x0000000117356fd9: mov    $0x34bd8,%r11d     ;   {metadata('java/util/Optional')}
  0x0000000117356fdf: movabs $0x800000000,%rdi
  0x0000000117356fe9: add    %r11,%rdi
  0x0000000117356fec: jmp    0x0000000117357040
  0x0000000117356fee: xchg   %ax,%ax            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117356ff0: movabs $0x70ff4b4c0,%rax  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x0000000117356ffa: mov    0xc(%rax),%ecx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)
                                                ; - FunctionalHashMap::max100@21 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117356ffd: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117357007: mov    0x3a0(%r10),%r10d
  0x000000011735700e: mov    %rcx,%r11
  0x0000000117357011: shl    $0x3,%r11
  0x0000000117357015: lea    (%r12,%r10,8),%r9
  0x0000000117357019: test   %ecx,%ecx
  0x000000011735701b: cmovne %r11,%r9
  0x000000011735701f: mov    0x8(%r9),%r11d
  0x0000000117357023: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000011735702a: jne    0x0000000117357372  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000117357030: mov    0x108(%r15),%r10
  0x0000000117357037: mov    0xc(%r9),%ebp      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@27 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735703b: inc    %ebx               ; ImmutableOopMap{r13=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x000000011735703d: test   %eax,(%r10)        ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {poll}
  0x0000000117357040: cmp    $0x3e8,%ebx
  0x0000000117357046: jge    0x00000001173571e7  ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@8 (line 42)

  0x000000011735704c: movabs $0x70fe0f278,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f278} = 'FunctionalHashMap')}
  0x0000000117357056: mov    0x70(%r10),%r9d    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735705a: cmp    $0xffffff80,%ebx
  0x000000011735705d: jl     0x0000000117357292  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357063: cmp    $0x7f,%ebx
  0x0000000117357066: jg     0x0000000117357097  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357068: mov    %ebx,%ebp
  0x000000011735706a: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357070: cmp    $0x100,%ebp
  0x0000000117357076: jae    0x0000000117357302
  0x000000011735707c: movslq %ebx,%r10
  0x000000011735707f: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117357089: mov    0x210(%r11,%r10,4),%r10d
  0x0000000117357091: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357095: jmp    0x00000001173570d5
  0x0000000117357097: mov    0x118(%r15),%rax
  0x000000011735709e: mov    %rax,%r10
  0x00000001173570a1: add    $0x10,%r10
  0x00000001173570a5: cmp    0x128(%r15),%r10
  0x00000001173570ac: jae    0x00000001173571f9  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001173570b2: mov    %r10,0x118(%r15)
  0x00000001173570b9: prefetchnta 0xc0(%r10)
  0x00000001173570c1: mov    0xb8(%r8),%r10
  0x00000001173570c8: mov    %r10,(%rax)
  0x00000001173570cb: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001173570d2: mov    %ebx,0xc(%rax)     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570d5: mov    0x8(%r12,%r9,8),%r10d  ; implicit exception: dispatches to 0x000000011735738a
  0x00000001173570da: cmp    $0x19838,%r10d     ;   {metadata('java/util/HashMap')}
  0x00000001173570e1: jne    0x0000000117357273  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570e7: mov    0xc(%rax),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570eb: lea    (%r12,%r9,8),%r11  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570ef: mov    0x24(%r11),%ecx    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570f3: mov    %r10d,%r9d
  0x00000001173570f6: shr    $0x10,%r9d
  0x00000001173570fa: xor    %r10d,%r9d         ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173570fd: mov    0xc(%r12,%rcx,8),%r11d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x000000011735739a
  0x0000000117357102: test   %r11d,%r11d
  0x0000000117357105: jbe    0x00000001173572ae  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735710b: dec    %r11d
  0x000000011735710e: and    %r9d,%r11d
  0x0000000117357111: shl    $0x3,%rcx
  0x0000000117357115: mov    0x10(%rcx,%r11,4),%ecx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735711a: test   %ecx,%ecx
  0x000000011735711c: je     0x0000000117356ff0  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357122: mov    0xc(%r12,%rcx,8),%r11d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357127: cmp    %r9d,%r11d
  0x000000011735712a: jne    0x000000011735731e  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357130: mov    0x10(%r12,%rcx,8),%ebp  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357135: mov    %rbp,%r11
  0x0000000117357138: shl    $0x3,%r11
  0x000000011735713c: cmp    %rax,%r11
  0x000000011735713f: je     0x0000000117357171  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357141: mov    0x8(%r12,%rbp,8),%r11d  ; implicit exception: dispatches to 0x00000001173573ba
  0x0000000117357146: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000011735714d: jne    0x00000001173572d6  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357153: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x000000011735715a: jne    0x00000001173572f6
  0x0000000117357160: lea    (%r12,%rbp,8),%r11  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357164: mov    0xc(%r11),%r11d
  0x0000000117357168: cmp    %r11d,%r10d
  0x000000011735716b: jne    0x00000001173572d6  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357171: mov    0x14(%r12,%rcx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357176: test   %r10d,%r10d
  0x0000000117357179: je     0x0000000117356ff0
  0x000000011735717f: mov    0x8(%r12,%r10,8),%r9d
  0x0000000117357184: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000011735718b: jne    0x000000011735735a
  0x0000000117357191: mov    0x118(%r15),%rax
  0x0000000117357198: mov    %rax,%r11
  0x000000011735719b: add    $0x10,%r11
  0x000000011735719f: lea    (%r12,%r10,8),%rbp
  0x00000001173571a3: cmp    0x128(%r15),%r11
  0x00000001173571aa: jae    0x000000011735723a  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001173571b0: mov    %r11,0x118(%r15)
  0x00000001173571b7: prefetchnta 0xc0(%r11)
  0x00000001173571bf: mov    0xb8(%rdi),%r10
  0x00000001173571c6: mov    %r10,(%rax)
  0x00000001173571c9: movl   $0x34bd8,0x8(%rax)  ;   {metadata('java/util/Optional')}
  0x00000001173571d0: movl   $0x0,0xc(%rax)     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173571d7: mov    %rbp,%r10
  0x00000001173571da: shr    $0x3,%r10
  0x00000001173571de: mov    %r10d,0xc(%rax)    ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173571e2: jmpq   0x0000000117356ffa  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)

  0x00000001173571e7: mov    %ebp,%eax
  0x00000001173571e9: add    $0x30,%rsp
  0x00000001173571ed: pop    %rbp
  0x00000001173571ee: mov    0x108(%r15),%r10
  0x00000001173571f5: test   %eax,(%r10)        ;   {poll_return}
  0x00000001173571f8: retq   
  0x00000001173571f9: mov    %r9d,0x4(%rsp)
  0x00000001173571fe: mov    %rdi,0x10(%rsp)
  0x0000000117357203: mov    %r8,0x8(%rsp)
  0x0000000117357208: mov    %ebx,(%rsp)
  0x000000011735720b: mov    %r13,%rbp          ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735720e: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000117357218: data16 xchg %ax,%ax
  0x000000011735721b: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117357220: mov    %rbp,%r13
  0x0000000117357223: mov    (%rsp),%ebx
  0x0000000117357226: mov    0x8(%rsp),%r8
  0x000000011735722b: mov    0x10(%rsp),%rdi
  0x0000000117357230: mov    0x4(%rsp),%r9d
  0x0000000117357235: jmpq   0x00000001173570d2
  0x000000011735723a: mov    %rdi,0x18(%rsp)
  0x000000011735723f: mov    %r8,0x10(%rsp)
  0x0000000117357244: mov    %ebx,0x8(%rsp)
  0x0000000117357248: mov    %r13,(%rsp)        ;*synchronization entry
                                                ; - java.util.Optional::of@-1 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735724c: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000117357256: nop
  0x0000000117357257: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop [0]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x000000011735725c: mov    (%rsp),%r13
  0x0000000117357260: mov    0x8(%rsp),%ebx
  0x0000000117357264: mov    0x10(%rsp),%r8
  0x0000000117357269: mov    0x18(%rsp),%rdi
  0x000000011735726e: jmpq   0x00000001173571d7
  0x0000000117357273: mov    $0xffffffde,%esi
  0x0000000117357278: mov    %r13,%rbp
  0x000000011735727b: mov    %ebx,(%rsp)
  0x000000011735727e: mov    %r9d,0x4(%rsp)
  0x0000000117357283: mov    %rax,0x8(%rsp)
  0x0000000117357288: data16 xchg %ax,%ax
  0x000000011735728b: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357290: ud2                       ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117357292: mov    $0xffffff4d,%esi
  0x0000000117357297: mov    %r13,%rbp
  0x000000011735729a: mov    %r9d,0x4(%rsp)
  0x000000011735729f: mov    %ebx,0x8(%rsp)
  0x00000001173572a3: mov    %ebx,0xc(%rsp)
  0x00000001173572a7: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@3 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173572ac: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173572ae: mov    $0xffffff4d,%esi
  0x00000001173572b3: mov    %r13,%rbp
  0x00000001173572b6: mov    %ebx,(%rsp)
  0x00000001173572b9: mov    %r9d,0x4(%rsp)
  0x00000001173572be: mov    %rax,0x8(%rsp)
  0x00000001173572c3: mov    %ecx,0x10(%rsp)
  0x00000001173572c7: mov    %r11d,0x18(%rsp)
  0x00000001173572cc: data16 xchg %ax,%ax
  0x00000001173572cf: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173572d4: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173572d6: mov    $0xffffff4d,%esi
  0x00000001173572db: mov    %r13,%rbp
  0x00000001173572de: mov    %ebx,(%rsp)
  0x00000001173572e1: mov    %r9d,0x4(%rsp)
  0x00000001173572e6: mov    %rax,0x8(%rsp)
  0x00000001173572eb: mov    %ecx,0x10(%rsp)
  0x00000001173572ef: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173572f4: ud2    
  0x00000001173572f6: mov    $0xffffffde,%esi
  0x00000001173572fb: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357300: ud2    
  0x0000000117357302: mov    $0xffffffe4,%esi
  0x0000000117357307: mov    %r13,(%rsp)
  0x000000011735730b: mov    %ebx,0x8(%rsp)
  0x000000011735730f: mov    %r9d,0xc(%rsp)
  0x0000000117357314: data16 xchg %ax,%ax
  0x0000000117357317: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [12]=NarrowOop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x000000011735731c: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735731e: mov    $0xffffff4d,%esi
  0x0000000117357323: mov    %r13,%rbp
  0x0000000117357326: mov    %ebx,(%rsp)
  0x0000000117357329: mov    %rax,0x8(%rsp)
  0x000000011735732e: mov    %ecx,0x10(%rsp)
  0x0000000117357332: mov    %r11d,0x14(%rsp)
  0x0000000117357337: mov    %r9d,0x18(%rsp)
  0x000000011735733c: data16 xchg %ax,%ax
  0x000000011735733f: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357344: ud2    
  0x0000000117357346: mov    $0xffffff95,%esi
  0x000000011735734b: mov    %r13,(%rsp)
  0x000000011735734f: mov    %ebx,0x8(%rsp)
  0x0000000117357353: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop }
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357358: ud2    
  0x000000011735735a: mov    $0xffffffde,%esi
  0x000000011735735f: mov    %r13,%rbp
  0x0000000117357362: mov    %ebx,(%rsp)
  0x0000000117357365: mov    %r10d,0x4(%rsp)
  0x000000011735736a: nop
  0x000000011735736b: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [4]=NarrowOop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357370: ud2    
  0x0000000117357372: mov    $0xffffffde,%esi
  0x0000000117357377: mov    %r13,%rbp
  0x000000011735737a: mov    %ebx,(%rsp)
  0x000000011735737d: mov    %r9,0x8(%rsp)
  0x0000000117357382: nop
  0x0000000117357383: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [8]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357388: ud2    
  0x000000011735738a: mov    $0xfffffff6,%esi
  0x000000011735738f: mov    %rax,%rbp
  0x0000000117357392: nop
  0x0000000117357393: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117357398: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735739a: mov    $0xffffff4d,%esi
  0x000000011735739f: mov    %r13,%rbp
  0x00000001173573a2: mov    %ebx,(%rsp)
  0x00000001173573a5: mov    %r9d,0x4(%rsp)
  0x00000001173573aa: mov    %rax,0x8(%rsp)
  0x00000001173573af: mov    %ecx,0x14(%rsp)
  0x00000001173573b3: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [8]=Oop [20]=NarrowOop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173573b8: ud2    
  0x00000001173573ba: mov    $0xfffffff4,%esi
  0x00000001173573bf: mov    %r13,%rbp
  0x00000001173573c2: mov    %ebx,(%rsp)
  0x00000001173573c5: mov    %r9d,0x4(%rsp)
  0x00000001173573ca: mov    %ecx,0x10(%rsp)
  0x00000001173573ce: mov    %rax,0x18(%rsp)
  0x00000001173573d3: callq  0x0000000117301900  ; ImmutableOopMap{rbp=Oop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173573d8: ud2    
  0x00000001173573da: mov    $0xffffffbe,%esi
  0x00000001173573df: mov    %ebx,(%rsp)
  0x00000001173573e2: nop
  0x00000001173573e3: callq  0x0000000117301900  ; ImmutableOopMap{}
                                                ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@4 (line 42)
                                                ;   {runtime_call UncommonTrapBlob}
  0x00000001173573e8: ud2                       ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173573ea: mov    %rax,%rsi
  0x00000001173573ed: jmp    0x00000001173573f2  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173573ef: mov    %rax,%rsi          ;*synchronization entry
                                                ; - FunctionalHashMap::max100@-1 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173573f2: add    $0x30,%rsp
  0x00000001173573f6: pop    %rbp
  0x00000001173573f7: jmpq   0x0000000117338f00  ;   {runtime_call _rethrow_Java}
  0x00000001173573fc: hlt    
  0x00000001173573fd: hlt    
  0x00000001173573fe: hlt    
  0x00000001173573ff: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117357400: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117357405: callq  0x000000011735740a
  0x000000011735740a: subq   $0x5,(%rsp)
  0x000000011735740f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117357414: hlt    
  0x0000000117357415: hlt    
  0x0000000117357416: hlt    
  0x0000000117357417: hlt    

ImmutableOopMap{r13=Oop }pc offsets: 189 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 672 
ImmutableOopMap{rbp=Oop [0]=Oop }pc offsets: 732 
ImmutableOopMap{rbp=Oop [4]=NarrowOop [8]=Oop }pc offsets: 784 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 812 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }pc offsets: 852 884 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 896 
ImmutableOopMap{[0]=Oop [12]=NarrowOop }pc offsets: 924 
ImmutableOopMap{rbp=Oop [8]=Oop [16]=NarrowOop }pc offsets: 964 
ImmutableOopMap{[0]=Oop }pc offsets: 984 
ImmutableOopMap{rbp=Oop [4]=NarrowOop }pc offsets: 1008 
ImmutableOopMap{rbp=Oop [8]=Oop }pc offsets: 1032 
ImmutableOopMap{rbp=Oop }pc offsets: 1048 
ImmutableOopMap{rbp=Oop [8]=Oop [20]=NarrowOop }pc offsets: 1080 
ImmutableOopMap{rbp=Oop [16]=NarrowOop [24]=Oop }pc offsets: 1112 
ImmutableOopMap{}pc offsets: 1128 Compiled method (c2)     362   82             FunctionalHashMap::runTest (25 bytes)
 total in heap  [0x0000000117359290,0x000000011735a918] = 5768
 relocation     [0x0000000117359408,0x00000001173594a8] = 160
 main code      [0x00000001173594c0,0x0000000117359c80] = 1984
 stub code      [0x0000000117359c80,0x0000000117359c98] = 24
 oops           [0x0000000117359c98,0x0000000117359cb0] = 24
 metadata       [0x0000000117359cb0,0x0000000117359d30] = 128
 scopes data    [0x0000000117359d30,0x0000000117359ff8] = 712
 scopes pcs     [0x0000000117359ff8,0x000000011735a848] = 2128
 dependencies   [0x000000011735a848,0x000000011735a850] = 8
 handler table  [0x000000011735a850,0x000000011735a8c8] = 120
 nul chk table  [0x000000011735a8c8,0x000000011735a918] = 80
----------------------------------------------------------------------
FunctionalHashMap.runTest()I  [0x00000001173594c0, 0x0000000117359c98]  2008 bytes
[Entry Point]
[Constants]
  # {method} {0x00000001256d9898} 'runTest' '()I' in 'FunctionalHashMap'
  #           [sp+0x40]  (sp of caller)
  0x00000001173594c0: mov    0x8(%rsi),%r10d
  0x00000001173594c4: movabs $0x800000000,%r12
  0x00000001173594ce: add    %r12,%r10
  0x00000001173594d1: xor    %r12,%r12
  0x00000001173594d4: cmp    %r10,%rax
  0x00000001173594d7: jne    0x00000001172ffc80  ;   {runtime_call ic_miss_stub}
  0x00000001173594dd: data16 xchg %ax,%ax
[Verified Entry Point]
  0x00000001173594e0: mov    %eax,-0x14000(%rsp)
  0x00000001173594e7: push   %rbp
  0x00000001173594e8: sub    $0x30,%rsp         ;*synchronization entry
                                                ; - FunctionalHashMap::runTest@-1 (line 41)

  0x00000001173594ec: mov    %rsi,0x18(%rsp)
  0x00000001173594f1: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x00000001173594fb: mov    0x210(%r10),%r10d  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359502: movabs $0x70fe0f278,%r11  ;   {oop(a 'java/lang/Class'{0x000000070fe0f278} = 'FunctionalHashMap')}
  0x000000011735950c: mov    0x70(%r11),%r8d
  0x0000000117359510: mov    0x8(%r12,%r8,8),%r11d  ; implicit exception: dispatches to 0x0000000117359bfa
  0x0000000117359515: shl    $0x3,%r8           ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359519: cmp    $0x19838,%r11d     ;   {metadata('java/util/HashMap')}
  0x0000000117359520: jne    0x0000000117359a9f  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359526: mov    0xc(%r12,%r10,8),%ebx  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735952b: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735952f: mov    %ebx,%ecx
  0x0000000117359531: shr    $0x10,%ecx
  0x0000000117359534: xor    %ebx,%ecx          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359536: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000117359c0a
  0x000000011735953b: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735953f: test   %r9d,%r9d
  0x0000000117359542: jbe    0x0000000117359aba  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359548: dec    %r9d
  0x000000011735954b: and    %ecx,%r9d
  0x000000011735954e: mov    0x10(%r8,%r9,4),%edi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359553: mov    $0x34bd8,%r8d      ;   {metadata('java/util/Optional')}
  0x0000000117359559: movabs $0x800000000,%rsi
  0x0000000117359563: add    %r8,%rsi
  0x0000000117359566: test   %edi,%edi
  0x0000000117359568: je     0x000000011735961b  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735956e: mov    0xc(%r12,%rdi,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359573: lea    (%r12,%rdi,8),%r9  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359577: cmp    %ecx,%r8d
  0x000000011735957a: jne    0x0000000117359afe  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359580: mov    0x10(%r12,%rdi,8),%r11d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359585: cmp    %r10d,%r11d
  0x0000000117359588: je     0x00000001173595ac  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735958a: mov    0x8(%r12,%r11,8),%edx  ; implicit exception: dispatches to 0x0000000117359c2a
  0x000000011735958f: cmp    $0x13c78,%edx      ;   {metadata('java/lang/Integer')}
  0x0000000117359595: jne    0x0000000117359ade  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735959b: shl    $0x3,%r11          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735959f: mov    0xc(%r11),%r11d
  0x00000001173595a3: cmp    %r11d,%ebx
  0x00000001173595a6: jne    0x0000000117359bc2  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173595ac: mov    0x14(%r12,%rdi,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173595b1: test   %r10d,%r10d
  0x00000001173595b4: je     0x000000011735961b
  0x00000001173595b6: mov    0x8(%r12,%r10,8),%r8d
  0x00000001173595bb: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x00000001173595c2: jne    0x0000000117359be2
  0x00000001173595c8: mov    0x118(%r15),%rax
  0x00000001173595cf: mov    %rax,%r11
  0x00000001173595d2: add    $0x10,%r11
  0x00000001173595d6: lea    (%r12,%r10,8),%rbp
  0x00000001173595da: cmp    0x128(%r15),%r11
  0x00000001173595e1: jae    0x0000000117359b8f  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001173595e7: mov    %r11,0x118(%r15)
  0x00000001173595ee: prefetchnta 0xc0(%r11)
  0x00000001173595f6: mov    0xb8(%rsi),%r10
  0x00000001173595fd: mov    %r10,(%rax)
  0x0000000117359600: movl   $0x34bd8,0x8(%rax)  ;   {metadata('java/util/Optional')}
  0x0000000117359607: movl   $0x0,0xc(%rax)     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735960e: mov    %rbp,%r10
  0x0000000117359611: shr    $0x3,%r10
  0x0000000117359615: mov    %r10d,0xc(%rax)    ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359619: jmp    0x0000000117359625  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735961b: movabs $0x70ff4b4c0,%rax  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x0000000117359625: mov    0xc(%rax),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)
                                                ; - FunctionalHashMap::max100@21 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359629: movabs $0x70ff1e8b8,%r11  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117359633: mov    0x3a0(%r11),%r8d
  0x000000011735963a: mov    %r10,%r11
  0x000000011735963d: shl    $0x3,%r11
  0x0000000117359641: lea    (%r12,%r8,8),%r9
  0x0000000117359645: test   %r10d,%r10d
  0x0000000117359648: cmovne %r11,%r9
  0x000000011735964c: mov    0x8(%r9),%r11d
  0x0000000117359650: cmp    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000117359657: jne    0x0000000117359bca  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735965d: mov    $0x13c78,%r11d     ;   {metadata('java/lang/Integer')}
  0x0000000117359663: movabs $0x800000000,%rdx
  0x000000011735966d: add    %r11,%rdx
  0x0000000117359670: mov    $0x1,%r11d
  0x0000000117359676: jmp    0x00000001173596d2
  0x0000000117359678: nopl   0x0(%rax,%rax,1)   ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359680: movabs $0x70ff4b4c0,%rax  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x000000011735968a: mov    0xc(%rax),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)
                                                ; - FunctionalHashMap::max100@21 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735968e: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117359698: mov    0x3a0(%r8),%r9d
  0x000000011735969f: mov    %r10,%r8
  0x00000001173596a2: shl    $0x3,%r8
  0x00000001173596a6: shl    $0x3,%r9
  0x00000001173596aa: test   %r10d,%r10d
  0x00000001173596ad: cmovne %r8,%r9
  0x00000001173596b1: mov    0x8(%r9),%r8d
  0x00000001173596b5: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x00000001173596bc: jne    0x0000000117359bcd  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173596c2: inc    %r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x00000001173596c5: cmp    $0x80,%r11d
  0x00000001173596cc: jge    0x0000000117359847  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)

  0x00000001173596d2: movabs $0x70fe0f278,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f278} = 'FunctionalHashMap')}
  0x00000001173596dc: mov    0x70(%r10),%ebp    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173596e0: cmp    $0x7f,%r11d
  0x00000001173596e4: jg     0x00000001173596fe  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173596e6: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x00000001173596f0: mov    0x210(%r10,%r11,4),%r10d
  0x00000001173596f8: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173596fc: jmp    0x000000011735973d
  0x00000001173596fe: mov    0x118(%r15),%rax
  0x0000000117359705: mov    %rax,%r10
  0x0000000117359708: add    $0x10,%r10
  0x000000011735970c: cmp    0x128(%r15),%r10
  0x0000000117359713: jae    0x0000000117359a3e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000117359719: mov    %r10,0x118(%r15)
  0x0000000117359720: prefetchnta 0xc0(%r10)
  0x0000000117359728: mov    0xb8(%rdx),%r10
  0x000000011735972f: mov    %r10,(%rax)
  0x0000000117359732: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x0000000117359739: mov    %r11d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735973d: mov    %rax,%r10
  0x0000000117359740: shr    $0x3,%r10
  0x0000000117359744: mov    0x8(%r12,%rbp,8),%ecx  ; implicit exception: dispatches to 0x0000000117359bfa
  0x0000000117359749: lea    (%r12,%rbp,8),%r8  ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735974d: cmp    $0x19838,%ecx      ;   {metadata('java/util/HashMap')}
  0x0000000117359753: jne    0x0000000117359aa2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359759: mov    0xc(%rax),%edi     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735975c: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359760: mov    %edi,%ecx
  0x0000000117359762: shr    $0x10,%ecx
  0x0000000117359765: xor    %edi,%ecx          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359767: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000117359c0d
  0x000000011735976c: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359770: test   %r9d,%r9d
  0x0000000117359773: jbe    0x0000000117359abd  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359779: dec    %r9d
  0x000000011735977c: and    %ecx,%r9d
  0x000000011735977f: mov    0x10(%r8,%r9,4),%ebx  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359784: test   %ebx,%ebx
  0x0000000117359786: je     0x0000000117359680  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735978c: mov    0xc(%r12,%rbx,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359791: lea    (%r12,%rbx,8),%r9  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359795: cmp    %ecx,%r8d
  0x0000000117359798: jne    0x0000000117359b01  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735979e: mov    0x10(%r12,%rbx,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597a3: mov    %r8,%rbp
  0x00000001173597a6: shl    $0x3,%rbp
  0x00000001173597aa: cmp    %rax,%rbp
  0x00000001173597ad: je     0x00000001173597d1  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597af: mov    0x8(%r12,%r8,8),%ebp  ; implicit exception: dispatches to 0x0000000117359c2d
  0x00000001173597b4: cmp    $0x13c78,%ebp      ;   {metadata('java/lang/Integer')}
  0x00000001173597ba: jne    0x0000000117359ae1  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597c0: shl    $0x3,%r8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597c4: mov    0xc(%r8),%r8d
  0x00000001173597c8: cmp    %r8d,%edi
  0x00000001173597cb: jne    0x0000000117359ae1  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597d1: mov    0x14(%r12,%rbx,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173597d6: test   %r10d,%r10d
  0x00000001173597d9: je     0x0000000117359680
  0x00000001173597df: mov    0x8(%r12,%r10,8),%r9d
  0x00000001173597e4: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x00000001173597eb: jne    0x0000000117359be5
  0x00000001173597f1: mov    0x118(%r15),%rax
  0x00000001173597f8: mov    %rax,%r8
  0x00000001173597fb: add    $0x10,%r8
  0x00000001173597ff: lea    (%r12,%r10,8),%rbp
  0x0000000117359803: cmp    0x128(%r15),%r8
  0x000000011735980a: jae    0x0000000117359a6f  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000117359810: mov    %r8,0x118(%r15)
  0x0000000117359817: prefetchnta 0xc0(%r8)
  0x000000011735981f: mov    0xb8(%rsi),%r10
  0x0000000117359826: mov    %r10,(%rax)
  0x0000000117359829: movl   $0x34bd8,0x8(%rax)  ;   {metadata('java/util/Optional')}
  0x0000000117359830: movl   $0x0,0xc(%rax)     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359837: mov    %rbp,%r10
  0x000000011735983a: shr    $0x3,%r10
  0x000000011735983e: mov    %r10d,0xc(%rax)    ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359842: jmpq   0x000000011735968a  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000117359847: mov    0x108(%r15),%r10
  0x000000011735984e: mov    0xc(%r9),%r9d      ; ImmutableOopMap{[24]=Oop }
                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x0000000117359852: test   %eax,(%r10)        ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@11 (line 43)
                                                ;   {poll}
  0x0000000117359855: movabs $0x70fe0f278,%r10  ;   {oop(a 'java/lang/Class'{0x000000070fe0f278} = 'FunctionalHashMap')}
  0x000000011735985f: mov    0x70(%r10),%r9d    ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359863: cmp    $0x7f,%r11d
  0x0000000117359867: jg     0x0000000117359896  ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@10 (line 1048)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359869: mov    %r11d,%ebp
  0x000000011735986c: add    $0x80,%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@20 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359872: cmp    $0x100,%ebp
  0x0000000117359878: jae    0x0000000117359bad
  0x000000011735987e: movabs $0x70ff1e8b8,%r10  ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x0000000117359888: mov    0x210(%r10,%r11,4),%r10d
  0x0000000117359890: lea    (%r12,%r10,8),%rax  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359894: jmp    0x00000001173598d5
  0x0000000117359896: mov    0x118(%r15),%rax
  0x000000011735989d: mov    %rax,%r10
  0x00000001173598a0: add    $0x10,%r10
  0x00000001173598a4: cmp    0x128(%r15),%r10
  0x00000001173598ab: jae    0x0000000117359b26  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001173598b1: mov    %r10,0x118(%r15)
  0x00000001173598b8: prefetchnta 0xc0(%r10)
  0x00000001173598c0: mov    0xb8(%rdx),%r10
  0x00000001173598c7: mov    %r10,(%rax)
  0x00000001173598ca: movl   $0x13c78,0x8(%rax)  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {metadata('java/lang/Integer')}
  0x00000001173598d1: mov    %r11d,0xc(%rax)    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598d5: mov    %rax,%r10
  0x00000001173598d8: shr    $0x3,%r10
  0x00000001173598dc: mov    0x8(%r12,%r9,8),%ebx  ; implicit exception: dispatches to 0x0000000117359bfa
  0x00000001173598e1: lea    (%r12,%r9,8),%r8   ;*getstatic map {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@0 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598e5: cmp    $0x19838,%ebx      ;   {metadata('java/util/HashMap')}
  0x00000001173598eb: jne    0x0000000117359aa2  ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598f1: mov    0xc(%rax),%ebx     ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::hashCode@1 (line 1177)
                                                ; - java.util.HashMap::hash@9 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598f4: mov    0x24(%r8),%r8d     ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598f8: mov    %ebx,%ecx
  0x00000001173598fa: shr    $0x10,%ecx
  0x00000001173598fd: xor    %ebx,%ecx          ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::hash@18 (line 339)
                                                ; - java.util.HashMap::get@2 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173598ff: mov    0xc(%r12,%r8,8),%r9d  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@10 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ; implicit exception: dispatches to 0x0000000117359c0d
  0x0000000117359904: shl    $0x3,%r8           ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@1 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359908: test   %r9d,%r9d
  0x000000011735990b: jbe    0x0000000117359abd  ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359911: dec    %r9d
  0x0000000117359914: and    %ecx,%r9d
  0x0000000117359917: mov    0x10(%r8,%r9,4),%edi  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735991c: test   %edi,%edi
  0x000000011735991e: je     0x00000001173599d8  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@28 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359924: mov    0xc(%r12,%rdi,8),%r8d  ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@33 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359929: lea    (%r12,%rdi,8),%r9  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@24 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735992d: cmp    %ecx,%r8d
  0x0000000117359930: jne    0x0000000117359b01  ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359936: mov    0x10(%r12,%rdi,8),%r8d  ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@42 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735993b: mov    %r8,%rbp
  0x000000011735993e: shl    $0x3,%rbp
  0x0000000117359942: cmp    %rax,%rbp
  0x0000000117359945: je     0x0000000117359969  ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@49 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359947: mov    0x8(%r12,%r8,8),%ebp  ; implicit exception: dispatches to 0x0000000117359c2d
  0x000000011735994c: cmp    $0x13c78,%ebp      ;   {metadata('java/lang/Integer')}
  0x0000000117359952: jne    0x0000000117359ae1  ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359958: shl    $0x3,%r8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@12 (line 1205)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735995c: mov    0xc(%r8),%r8d
  0x0000000117359960: cmp    %r8d,%ebx
  0x0000000117359963: jne    0x0000000117359ae1  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@65 (line 568)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359969: mov    0x14(%r12,%rdi,8),%r10d  ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::get@19 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x000000011735996e: test   %r10d,%r10d
  0x0000000117359971: je     0x00000001173599d8
  0x0000000117359973: mov    0x8(%r12,%r10,8),%r9d
  0x0000000117359978: cmp    $0x13c78,%r9d      ;   {metadata('java/lang/Integer')}
  0x000000011735997f: jne    0x0000000117359be5
  0x0000000117359985: mov    0x118(%r15),%rax
  0x000000011735998c: mov    %rax,%r8
  0x000000011735998f: add    $0x10,%r8
  0x0000000117359993: lea    (%r12,%r10,8),%rbp
  0x0000000117359997: cmp    0x128(%r15),%r8
  0x000000011735999e: jae    0x0000000117359b5e  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@20 (line 42)

  0x00000001173599a4: mov    %r8,0x118(%r15)
  0x00000001173599ab: prefetchnta 0xc0(%r8)
  0x00000001173599b3: mov    0xb8(%rsi),%r10
  0x00000001173599ba: mov    %r10,(%rax)
  0x00000001173599bd: movl   $0x34bd8,0x8(%rax)  ;   {metadata('java/util/Optional')}
  0x00000001173599c4: movl   $0x0,0xc(%rax)     ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173599cb: mov    %rbp,%r10
  0x00000001173599ce: shr    $0x3,%r10
  0x00000001173599d2: mov    %r10d,0xc(%rax)    ;*invokespecial <init> {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@5 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173599d6: jmp    0x00000001173599e2  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173599d8: movabs $0x70ff4b4c0,%rax  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::ofNullable@14 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {oop(a 'java/util/Optional'{0x000000070ff4b4c0})}
  0x00000001173599e2: mov    0xc(%rax),%r10d    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::orElseGet@1 (line 369)
                                                ; - FunctionalHashMap::max100@21 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x00000001173599e6: movabs $0x70ff1e8b8,%r8   ;   {oop(a 'java/lang/Integer'[256] {0x000000070ff1e8b8})}
  0x00000001173599f0: mov    0x3a0(%r8),%r9d
  0x00000001173599f7: mov    %r10,%r8
  0x00000001173599fa: shl    $0x3,%r8
  0x00000001173599fe: shl    $0x3,%r9
  0x0000000117359a02: test   %r10d,%r10d
  0x0000000117359a05: cmovne %r8,%r9
  0x0000000117359a09: mov    0x8(%r9),%r8d
  0x0000000117359a0d: cmp    $0x13c78,%r8d      ;   {metadata('java/lang/Integer')}
  0x0000000117359a14: jne    0x0000000117359bcd  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359a1a: inc    %r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::runTest@17 (line 42)

  0x0000000117359a1d: cmp    $0x3e8,%r11d
  0x0000000117359a24: jl     0x0000000117359855  ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359a2a: mov    0xc(%r9),%eax      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::intValue@1 (line 1123)
                                                ; - FunctionalHashMap::max100@27 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359a2e: add    $0x30,%rsp
  0x0000000117359a32: pop    %rbp
  0x0000000117359a33: mov    0x108(%r15),%r10
  0x0000000117359a3a: test   %eax,(%r10)        ;   {poll_return}
  0x0000000117359a3d: retq   
  0x0000000117359a3e: mov    %rdx,0x10(%rsp)
  0x0000000117359a43: mov    %rsi,0x8(%rsp)
  0x0000000117359a48: mov    %r11d,(%rsp)
  0x0000000117359a4c: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000117359a56: nop
  0x0000000117359a57: callq  0x0000000117339980  ; ImmutableOopMap{rbp=NarrowOop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117359a5c: mov    (%rsp),%r11d
  0x0000000117359a60: mov    0x8(%rsp),%rsi
  0x0000000117359a65: mov    0x10(%rsp),%rdx
  0x0000000117359a6a: jmpq   0x0000000117359739
  0x0000000117359a6f: mov    %rdx,0x10(%rsp)
  0x0000000117359a74: mov    %rsi,0x8(%rsp)
  0x0000000117359a79: mov    %r11d,(%rsp)
  0x0000000117359a7d: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000117359a87: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117359a8c: mov    (%rsp),%r11d
  0x0000000117359a90: mov    0x8(%rsp),%rsi
  0x0000000117359a95: mov    0x10(%rsp),%rdx
  0x0000000117359a9a: jmpq   0x0000000117359837
  0x0000000117359a9f: xor    %r11d,%r11d
  0x0000000117359aa2: mov    $0xffffffde,%esi
  0x0000000117359aa7: mov    %r11d,%ebp
  0x0000000117359aaa: mov    %r8,(%rsp)
  0x0000000117359aae: mov    %r10d,0x8(%rsp)
  0x0000000117359ab3: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [8]=NarrowOop [24]=Oop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359ab8: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359aba: xor    %r11d,%r11d
  0x0000000117359abd: mov    $0xffffff4d,%esi
  0x0000000117359ac2: mov    %r11d,%ebp
  0x0000000117359ac5: mov    %ecx,(%rsp)
  0x0000000117359ac8: mov    %r10d,0x4(%rsp)
  0x0000000117359acd: mov    %r8,0x8(%rsp)
  0x0000000117359ad2: mov    %r9d,0x14(%rsp)
  0x0000000117359ad7: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*ifle {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359adc: ud2                       ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@14 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359ade: xor    %r11d,%r11d        ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359ae1: mov    $0xffffff4d,%esi
  0x0000000117359ae6: mov    %r11d,%ebp
  0x0000000117359ae9: mov    %ecx,(%rsp)
  0x0000000117359aec: mov    %r10d,0x4(%rsp)
  0x0000000117359af1: mov    %r9,0x8(%rsp)
  0x0000000117359af6: nop
  0x0000000117359af7: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359afc: ud2                       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@62 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359afe: xor    %r11d,%r11d
  0x0000000117359b01: mov    $0xffffff4d,%esi
  0x0000000117359b06: mov    %r11d,%ebp
  0x0000000117359b09: mov    %r10d,0x4(%rsp)
  0x0000000117359b0e: mov    %r9,0x8(%rsp)
  0x0000000117359b13: mov    %r8d,0x10(%rsp)
  0x0000000117359b18: mov    %ecx,0x14(%rsp)
  0x0000000117359b1c: data16 xchg %ax,%ax
  0x0000000117359b1f: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }
                                                ;*if_icmpne {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359b24: ud2                       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@37 (line 566)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359b26: mov    %r9d,0x10(%rsp)
  0x0000000117359b2b: mov    %rdx,0x8(%rsp)
  0x0000000117359b30: mov    %rsi,(%rsp)
  0x0000000117359b34: mov    %r11d,%ebp
  0x0000000117359b37: movabs $0x800013c78,%rsi  ;   {metadata('java/lang/Integer')}
  0x0000000117359b41: xchg   %ax,%ax
  0x0000000117359b43: callq  0x0000000117339980  ; ImmutableOopMap{[16]=NarrowOop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117359b48: mov    %ebp,%r11d
  0x0000000117359b4b: mov    (%rsp),%rsi
  0x0000000117359b4f: mov    0x8(%rsp),%rdx
  0x0000000117359b54: mov    0x10(%rsp),%r9d
  0x0000000117359b59: jmpq   0x00000001173598d1
  0x0000000117359b5e: mov    %rdx,0x10(%rsp)
  0x0000000117359b63: mov    %rsi,0x8(%rsp)
  0x0000000117359b68: mov    %r11d,(%rsp)
  0x0000000117359b6c: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000117359b76: nop
  0x0000000117359b77: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117359b7c: mov    (%rsp),%r11d
  0x0000000117359b80: mov    0x8(%rsp),%rsi
  0x0000000117359b85: mov    0x10(%rsp),%rdx
  0x0000000117359b8a: jmpq   0x00000001173599cb
  0x0000000117359b8f: mov    %rsi,(%rsp)
  0x0000000117359b93: movabs $0x800034bd8,%rsi  ;   {metadata('java/util/Optional')}
  0x0000000117359b9d: xchg   %ax,%ax
  0x0000000117359b9f: callq  0x0000000117339980  ; ImmutableOopMap{rbp=Oop [24]=Oop }
                                                ;*new {reexecute=0 rethrow=0 return_oop=1}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _new_instance_Java}
  0x0000000117359ba4: mov    (%rsp),%rsi
  0x0000000117359ba8: jmpq   0x000000011735960e
  0x0000000117359bad: mov    $0xffffffe4,%esi
  0x0000000117359bb2: mov    %r11d,(%rsp)
  0x0000000117359bb6: mov    %r9d,0x4(%rsp)
  0x0000000117359bbb: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [24]=Oop }
                                                ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359bc0: ud2                       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@21 (line 1049)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359bc2: xor    %r11d,%r11d
  0x0000000117359bc5: jmpq   0x0000000117359ae1
  0x0000000117359bca: xor    %r11d,%r11d
  0x0000000117359bcd: mov    $0xffffffde,%esi
  0x0000000117359bd2: mov    %r11d,%ebp
  0x0000000117359bd5: mov    %r9,(%rsp)
  0x0000000117359bd9: xchg   %ax,%ax
  0x0000000117359bdb: callq  0x0000000117301900  ; ImmutableOopMap{[0]=Oop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359be0: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@24 (line 50)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359be2: xor    %r11d,%r11d
  0x0000000117359be5: mov    $0xffffffde,%esi
  0x0000000117359bea: mov    %r11d,%ebp
  0x0000000117359bed: mov    %r10d,(%rsp)
  0x0000000117359bf1: xchg   %ax,%ax
  0x0000000117359bf3: callq  0x0000000117301900  ; ImmutableOopMap{[0]=NarrowOop [24]=Oop }
                                                ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359bf8: ud2                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@10 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359bfa: mov    $0xfffffff6,%esi
  0x0000000117359bff: mov    %r10d,%ebp
  0x0000000117359c02: nop
  0x0000000117359c03: callq  0x0000000117301900  ; ImmutableOopMap{rbp=NarrowOop }
                                                ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359c08: ud2                       ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c0a: xor    %r11d,%r11d
  0x0000000117359c0d: mov    $0xffffff4d,%esi
  0x0000000117359c12: mov    %r11d,%ebp
  0x0000000117359c15: mov    %ecx,(%rsp)
  0x0000000117359c18: mov    %r10d,0x4(%rsp)
  0x0000000117359c1d: mov    %r8d,0xc(%rsp)
  0x0000000117359c22: nop
  0x0000000117359c23: callq  0x0000000117301900  ; ImmutableOopMap{[4]=NarrowOop [12]=NarrowOop [24]=Oop }
                                                ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359c28: ud2                       ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.HashMap::getNode@6 (line 564)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c2a: xor    %r11d,%r11d
  0x0000000117359c2d: mov    $0xfffffff4,%esi
  0x0000000117359c32: mov    %r11d,%ebp
  0x0000000117359c35: mov    %ecx,(%rsp)
  0x0000000117359c38: mov    %r9,0x8(%rsp)
  0x0000000117359c3d: mov    %r10d,0x10(%rsp)
  0x0000000117359c42: nop
  0x0000000117359c43: callq  0x0000000117301900  ; ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=Oop }
                                                ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::equals@1 (line 1204)
                                                ; - java.util.HashMap::getNode@59 (line 567)
                                                ; - java.util.HashMap::get@6 (line 552)
                                                ; - FunctionalHashMap::max100@7 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call UncommonTrapBlob}
  0x0000000117359c48: ud2    
  0x0000000117359c4a: jmp    0x0000000117359c55  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c4c: jmp    0x0000000117359c55
  0x0000000117359c4e: jmp    0x0000000117359c50  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c50: mov    %rax,%rsi
  0x0000000117359c53: jmp    0x0000000117359c58  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c55: mov    %rax,%rsi          ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.lang.Integer::valueOf@23 (line 1050)
                                                ; - FunctionalHashMap::max100@4 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)

  0x0000000117359c58: add    $0x30,%rsp
  0x0000000117359c5c: pop    %rbp
  0x0000000117359c5d: jmpq   0x0000000117338f00  ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                ; - java.util.Optional::of@0 (line 120)
                                                ; - java.util.Optional::ofNullable@11 (line 133)
                                                ; - FunctionalHashMap::max100@13 (line 49)
                                                ; - FunctionalHashMap::runTest@13 (line 43)
                                                ;   {runtime_call _rethrow_Java}
  0x0000000117359c62: hlt    
  0x0000000117359c63: hlt    
  0x0000000117359c64: hlt    
  0x0000000117359c65: hlt    
  0x0000000117359c66: hlt    
  0x0000000117359c67: hlt    
  0x0000000117359c68: hlt    
  0x0000000117359c69: hlt    
  0x0000000117359c6a: hlt    
  0x0000000117359c6b: hlt    
  0x0000000117359c6c: hlt    
  0x0000000117359c6d: hlt    
  0x0000000117359c6e: hlt    
  0x0000000117359c6f: hlt    
  0x0000000117359c70: hlt    
  0x0000000117359c71: hlt    
  0x0000000117359c72: hlt    
  0x0000000117359c73: hlt    
  0x0000000117359c74: hlt    
  0x0000000117359c75: hlt    
  0x0000000117359c76: hlt    
  0x0000000117359c77: hlt    
  0x0000000117359c78: hlt    
  0x0000000117359c79: hlt    
  0x0000000117359c7a: hlt    
  0x0000000117359c7b: hlt    
  0x0000000117359c7c: hlt    
  0x0000000117359c7d: hlt    
  0x0000000117359c7e: hlt    
  0x0000000117359c7f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000117359c80: jmpq   0x0000000117336680  ;   {no_reloc}
[Deopt Handler Code]
  0x0000000117359c85: callq  0x0000000117359c8a
  0x0000000117359c8a: subq   $0x5,(%rsp)
  0x0000000117359c8f: jmpq   0x0000000117301520  ;   {runtime_call DeoptimizationBlob}
  0x0000000117359c94: hlt    
  0x0000000117359c95: hlt    
  0x0000000117359c96: hlt    
  0x0000000117359c97: hlt    

ImmutableOopMap{[24]=Oop }pc offsets: 914 
ImmutableOopMap{rbp=NarrowOop [24]=Oop }pc offsets: 1436 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 1484 
ImmutableOopMap{[0]=Oop [8]=NarrowOop [24]=Oop }pc offsets: 1528 
ImmutableOopMap{[4]=NarrowOop [8]=Oop [24]=Oop }pc offsets: 1564 1596 1636 
ImmutableOopMap{[16]=NarrowOop [24]=Oop }pc offsets: 1672 
ImmutableOopMap{rbp=Oop [24]=Oop }pc offsets: 1724 1764 
ImmutableOopMap{[4]=NarrowOop [24]=Oop }pc offsets: 1792 
ImmutableOopMap{[0]=Oop [24]=Oop }pc offsets: 1824 
ImmutableOopMap{[0]=NarrowOop [24]=Oop }pc offsets: 1848 
ImmutableOopMap{rbp=NarrowOop }pc offsets: 1864 
ImmutableOopMap{[4]=NarrowOop [12]=NarrowOop [24]=Oop }pc offsets: 1896 
ImmutableOopMap{[8]=Oop [16]=NarrowOop [24]=Oop }pc offsets: 1928 Test phase
Time elapsed: 0.015 ms result=100

