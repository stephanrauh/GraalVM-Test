Could not load hsdis-amd64.dylib; library not loadable; PrintAssembly is disabled
Compiled method (JVMCI)     224   22             java.lang.StringLatin1::equals (36 bytes)
 total in heap  [0x0000000116912f10,0x0000000116913398] = 1160
 relocation     [0x0000000116913078,0x0000000116913088] = 16
 main code      [0x00000001169130a0,0x000000011691318f] = 239
 stub code      [0x000000011691318f,0x0000000116913190] = 1
 metadata       [0x0000000116913190,0x0000000116913198] = 8
 scopes data    [0x0000000116913198,0x0000000116913200] = 104
 scopes pcs     [0x0000000116913200,0x0000000116913370] = 368
 dependencies   [0x0000000116913370,0x0000000116913378] = 8
 nul chk table  [0x0000000116913378,0x0000000116913388] = 16
 JVMCI data     [0x0000000116913388,0x0000000116913398] = 16

ImmutableOopMap{rdx=Oop rsi=Oop }pc offsets: 16 198 226 Compiled method (JVMCI)     226   23             java.lang.StringLatin1::hashCode (42 bytes)
 total in heap  [0x0000000116913690,0x0000000116913aa0] = 1040
 relocation     [0x00000001169137f8,0x0000000116913808] = 16
 main code      [0x0000000116913820,0x00000001169138cc] = 172
 stub code      [0x00000001169138cc,0x00000001169138d0] = 4
 metadata       [0x00000001169138d0,0x00000001169138d8] = 8
 scopes data    [0x00000001169138d8,0x0000000116913938] = 96
 scopes pcs     [0x0000000116913938,0x0000000116913a78] = 320
 dependencies   [0x0000000116913a78,0x0000000116913a80] = 8
 nul chk table  [0x0000000116913a80,0x0000000116913a90] = 16
 JVMCI data     [0x0000000116913a90,0x0000000116913aa0] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 16 159 Compiled method (JVMCI)     227   24             java.lang.StringLatin1::indexOf (61 bytes)
 total in heap  [0x0000000116913b10,0x0000000116913db8] = 680
 relocation     [0x0000000116913c78,0x0000000116913c88] = 16
 main code      [0x0000000116913ca0,0x0000000116913d3e] = 158
 stub code      [0x0000000116913d3e,0x0000000116913d40] = 2
 metadata       [0x0000000116913d40,0x0000000116913d48] = 8
 scopes data    [0x0000000116913d48,0x0000000116913d60] = 24
 scopes pcs     [0x0000000116913d60,0x0000000116913d90] = 48
 dependencies   [0x0000000116913d90,0x0000000116913d98] = 8
 nul chk table  [0x0000000116913d98,0x0000000116913da8] = 16
 JVMCI data     [0x0000000116913da8,0x0000000116913db8] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 55 Compiled method (JVMCI)     227   34             java.lang.Object::<init> (1 bytes)
 total in heap  [0x0000000116913e10,0x0000000116914028] = 536
 relocation     [0x0000000116913f78,0x0000000116913f80] = 8
 main code      [0x0000000116913f80,0x0000000116913fdb] = 91
 stub code      [0x0000000116913fdb,0x0000000116913fe0] = 5
 metadata       [0x0000000116913fe0,0x0000000116913fe8] = 8
 scopes data    [0x0000000116913fe8,0x0000000116913ff0] = 8
 scopes pcs     [0x0000000116913ff0,0x0000000116914010] = 32
 dependencies   [0x0000000116914010,0x0000000116914018] = 8
 JVMCI data     [0x0000000116914018,0x0000000116914028] = 16
Compiled method (JVMCI)     227   26             java.lang.ref.Reference::reachabilityFence (1 bytes)
 total in heap  [0x0000000116914090,0x0000000116914260] = 464
 relocation     [0x00000001169141f8,0x0000000116914200] = 8
 main code      [0x0000000116914200,0x000000011691421b] = 27
 stub code      [0x000000011691421b,0x0000000116914220] = 5
 scopes data    [0x0000000116914220,0x0000000116914228] = 8
 scopes pcs     [0x0000000116914228,0x0000000116914248] = 32
 dependencies   [0x0000000116914248,0x0000000116914250] = 8
 JVMCI data     [0x0000000116914250,0x0000000116914260] = 16

Running the benchmark with a cold JVM
Compiled method (JVMCI)     229   25             jdk.internal.jimage.ImageStringsReader::unmaskedHashCode (173 bytes)
 total in heap  [0x0000000116914590,0x0000000116914b80] = 1520
 relocation     [0x00000001169146f8,0x0000000116914708] = 16
 main code      [0x0000000116914720,0x0000000116914860] = 320
 metadata       [0x0000000116914860,0x0000000116914888] = 40
 scopes data    [0x0000000116914888,0x0000000116914930] = 168
 scopes pcs     [0x0000000116914930,0x0000000116914b50] = 544
 dependencies   [0x0000000116914b50,0x0000000116914b58] = 8
 nul chk table  [0x0000000116914b58,0x0000000116914b70] = 24
 JVMCI data     [0x0000000116914b70,0x0000000116914b80] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 16 
ImmutableOopMap{rax=NarrowOop rsi=Oop }pc offsets: 24 
ImmutableOopMap{rsi=Oop }pc offsets: 277 307 Compiled method (JVMCI)     230   27             java.lang.String::hashCode (49 bytes)
 total in heap  [0x0000000116914b90,0x00000001169150e0] = 1360
 relocation     [0x0000000116914cf8,0x0000000116914d08] = 16
 main code      [0x0000000116914d20,0x0000000116914e60] = 320
 metadata       [0x0000000116914e60,0x0000000116914e78] = 24
 scopes data    [0x0000000116914e78,0x0000000116914f18] = 160
 scopes pcs     [0x0000000116914f18,0x00000001169150b8] = 416
 dependencies   [0x00000001169150b8,0x00000001169150c0] = 8
 nul chk table  [0x00000001169150c0,0x00000001169150d0] = 16
 JVMCI data     [0x00000001169150d0,0x00000001169150e0] = 16

ImmutableOopMap{rsi=Oop r10=NarrowOop }pc offsets: 114 
ImmutableOopMap{rsi=Oop }pc offsets: 275 
ImmutableOopMap{rsi=Oop r10=Oop }pc offsets: 307 Compiled method (JVMCI)     230   28             java.nio.Buffer::hasRemaining (17 bytes)
 total in heap  [0x0000000116914290,0x0000000116914570] = 736
 relocation     [0x00000001169143f8,0x0000000116914408] = 16
 main code      [0x0000000116914420,0x00000001169144bc] = 156
 stub code      [0x00000001169144bc,0x00000001169144c0] = 4
 metadata       [0x00000001169144c0,0x00000001169144c8] = 8
 scopes data    [0x00000001169144c8,0x00000001169144e8] = 32
 scopes pcs     [0x00000001169144e8,0x0000000116914558] = 112
 dependencies   [0x0000000116914558,0x0000000116914560] = 8
 JVMCI data     [0x0000000116914560,0x0000000116914570] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 143 Compiled method (JVMCI)     231   29   !         java.nio.DirectByteBuffer::get (28 bytes)
 total in heap  [0x0000000116915110,0x0000000116915478] = 872
 relocation     [0x0000000116915278,0x0000000116915288] = 16
 main code      [0x00000001169152a0,0x000000011691534d] = 173
 stub code      [0x000000011691534d,0x0000000116915350] = 3
 metadata       [0x0000000116915350,0x0000000116915368] = 24
 scopes data    [0x0000000116915368,0x00000001169153b0] = 72
 scopes pcs     [0x00000001169153b0,0x0000000116915460] = 176
 dependencies   [0x0000000116915460,0x0000000116915468] = 8
 JVMCI data     [0x0000000116915468,0x0000000116915478] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 160 Compiled method (JVMCI)     232   30             java.nio.Buffer::nextGetIndex (31 bytes)
 total in heap  [0x0000000116915490,0x00000001169157a8] = 792
 relocation     [0x00000001169155f8,0x0000000116915608] = 16
 main code      [0x0000000116915620,0x00000001169156c1] = 161
 stub code      [0x00000001169156c1,0x00000001169156c8] = 7
 metadata       [0x00000001169156c8,0x00000001169156d0] = 8
 scopes data    [0x00000001169156d0,0x0000000116915700] = 48
 scopes pcs     [0x0000000116915700,0x0000000116915790] = 144
 dependencies   [0x0000000116915790,0x0000000116915798] = 8
 JVMCI data     [0x0000000116915798,0x00000001169157a8] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 148 Compiled method (JVMCI)     233   31             java.nio.DirectByteBuffer::ix (10 bytes)
 total in heap  [0x0000000116915810,0x0000000116915a58] = 584
 relocation     [0x0000000116915978,0x0000000116915980] = 8
 main code      [0x0000000116915980,0x00000001169159e2] = 98
 stub code      [0x00000001169159e2,0x00000001169159e8] = 6
 metadata       [0x00000001169159e8,0x00000001169159f0] = 8
 scopes data    [0x00000001169159f0,0x0000000116915a00] = 16
 scopes pcs     [0x0000000116915a00,0x0000000116915a40] = 64
 dependencies   [0x0000000116915a40,0x0000000116915a48] = 8
 JVMCI data     [0x0000000116915a48,0x0000000116915a58] = 16
Compiled method (JVMCI)     233   32             jdk.internal.misc.Unsafe::getByte (7 bytes)
 total in heap  [0x0000000116915a90,0x0000000116915cb8] = 552
 relocation     [0x0000000116915bf8,0x0000000116915c00] = 8
 main code      [0x0000000116915c00,0x0000000116915c5e] = 94
 stub code      [0x0000000116915c5e,0x0000000116915c60] = 2
 metadata       [0x0000000116915c60,0x0000000116915c68] = 8
 scopes data    [0x0000000116915c68,0x0000000116915c70] = 8
 scopes pcs     [0x0000000116915c70,0x0000000116915ca0] = 48
 dependencies   [0x0000000116915ca0,0x0000000116915ca8] = 8
 JVMCI data     [0x0000000116915ca8,0x0000000116915cb8] = 16
Compiled method (JVMCI)     247   36             java.lang.StringLatin1::lastIndexOf (40 bytes)
 total in heap  [0x0000000116916010,0x0000000116916588] = 1400
 relocation     [0x0000000116916178,0x0000000116916190] = 24
 main code      [0x00000001169161a0,0x00000001169162e1] = 321
 stub code      [0x00000001169162e1,0x00000001169162e8] = 7
 metadata       [0x00000001169162e8,0x00000001169162f8] = 16
 scopes data    [0x00000001169162f8,0x0000000116916370] = 120
 scopes pcs     [0x0000000116916370,0x0000000116916560] = 496
 dependencies   [0x0000000116916560,0x0000000116916568] = 8
 nul chk table  [0x0000000116916568,0x0000000116916578] = 16
 JVMCI data     [0x0000000116916578,0x0000000116916588] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 28 252 280 308 Compiled method (JVMCI)     250   35             java.util.HashMap$Node::<init> (26 bytes)
 total in heap  [0x0000000116917090,0x0000000116917650] = 1472
 relocation     [0x00000001169171f8,0x0000000116917210] = 24
 main code      [0x0000000116917220,0x0000000116917505] = 741
 stub code      [0x0000000116917505,0x0000000116917508] = 3
 metadata       [0x0000000116917508,0x0000000116917518] = 16
 scopes data    [0x0000000116917518,0x0000000116917538] = 32
 scopes pcs     [0x0000000116917538,0x0000000116917638] = 256
 dependencies   [0x0000000116917638,0x0000000116917640] = 8
 JVMCI data     [0x0000000116917640,0x0000000116917650] = 16
Compiled method (JVMCI)     257   38             jdk.internal.jimage.ImageStringsReader::charsFromByteBufferLength (47 bytes)
 total in heap  [0x0000000116917690,0x0000000116917d28] = 1688
 relocation     [0x00000001169177f8,0x0000000116917810] = 24
 main code      [0x0000000116917820,0x0000000116917989] = 361
 stub code      [0x0000000116917989,0x0000000116917990] = 7
 oops           [0x0000000116917990,0x0000000116917998] = 8
 metadata       [0x0000000116917998,0x00000001169179c8] = 48
 scopes data    [0x00000001169179c8,0x0000000116917a90] = 200
 scopes pcs     [0x0000000116917a90,0x0000000116917d00] = 624
 dependencies   [0x0000000116917d00,0x0000000116917d08] = 8
 nul chk table  [0x0000000116917d08,0x0000000116917d18] = 16
 JVMCI data     [0x0000000116917d18,0x0000000116917d28] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 16 163 256 284 312 348 Compiled method (JVMCI)     258   37             java.util.HashMap::newNode (13 bytes)
 total in heap  [0x0000000116917d90,0x00000001169180b0] = 800
 relocation     [0x0000000116917ef8,0x0000000116917f10] = 24
 main code      [0x0000000116917f20,0x000000011691802e] = 270
 stub code      [0x000000011691802e,0x0000000116918030] = 2
 metadata       [0x0000000116918030,0x0000000116918040] = 16
 scopes data    [0x0000000116918040,0x0000000116918058] = 24
 scopes pcs     [0x0000000116918058,0x0000000116918098] = 64
 dependencies   [0x0000000116918098,0x00000001169180a0] = 8
 JVMCI data     [0x00000001169180a0,0x00000001169180b0] = 16

ImmutableOopMap{rcx=Oop r8=Oop r9=Oop }pc offsets: 224 257 Compiled method (JVMCI)     261   39             jdk.internal.jimage.ImageStringsReader::charsFromByteBuffer (186 bytes)
 total in heap  [0x0000000116918490,0x0000000116918bc8] = 1848
 relocation     [0x00000001169185f8,0x0000000116918610] = 24
 main code      [0x0000000116918620,0x00000001169187b0] = 400
 oops           [0x00000001169187b0,0x00000001169187b8] = 8
 metadata       [0x00000001169187b8,0x00000001169187e8] = 48
 scopes data    [0x00000001169187e8,0x00000001169188e8] = 256
 scopes pcs     [0x00000001169188e8,0x0000000116918b98] = 688
 dependencies   [0x0000000116918b98,0x0000000116918ba0] = 8
 nul chk table  [0x0000000116918ba0,0x0000000116918bb8] = 24
 JVMCI data     [0x0000000116918bb8,0x0000000116918bc8] = 16

ImmutableOopMap{rdx=Oop rsi=Oop }pc offsets: 16 92 192 275 305 333 371 Compiled method (JVMCI)     261   40             java.lang.StringUTF16::compress (50 bytes)
 total in heap  [0x0000000116918c10,0x0000000116918f90] = 896
 relocation     [0x0000000116918d78,0x0000000116918d80] = 8
 main code      [0x0000000116918d80,0x0000000116918ee4] = 356
 stub code      [0x0000000116918ee4,0x0000000116918ee8] = 4
 metadata       [0x0000000116918ee8,0x0000000116918ef0] = 8
 scopes data    [0x0000000116918ef0,0x0000000116918f10] = 32
 scopes pcs     [0x0000000116918f10,0x0000000116918f60] = 80
 dependencies   [0x0000000116918f60,0x0000000116918f68] = 8
 nul chk table  [0x0000000116918f68,0x0000000116918f80] = 24
 JVMCI data     [0x0000000116918f80,0x0000000116918f90] = 16

ImmutableOopMap{rcx=Oop rsi=Oop }pc offsets: 16 18 343 Compiled method (JVMCI)     261   41             java.util.HashMap::afterNodeInsertion (1 bytes)
 total in heap  [0x0000000116918110,0x0000000116918320] = 528
 relocation     [0x0000000116918278,0x0000000116918280] = 8
 main code      [0x0000000116918280,0x00000001169182db] = 91
 stub code      [0x00000001169182db,0x00000001169182e0] = 5
 scopes data    [0x00000001169182e0,0x00000001169182e8] = 8
 scopes pcs     [0x00000001169182e8,0x0000000116918308] = 32
 dependencies   [0x0000000116918308,0x0000000116918310] = 8
 JVMCI data     [0x0000000116918310,0x0000000116918320] = 16
Compiled method (JVMCI)     296   42 %           java.util.HashMap::resize @ 151 (356 bytes)
 total in heap  [0x000000011691ad90,0x000000011691d5a0] = 10256
 relocation     [0x000000011691aef8,0x000000011691af78] = 128
 main code      [0x000000011691af80,0x000000011691c554] = 5588
 stub code      [0x000000011691c554,0x000000011691c558] = 4
 metadata       [0x000000011691c558,0x000000011691c580] = 40
 scopes data    [0x000000011691c580,0x000000011691c938] = 952
 scopes pcs     [0x000000011691c938,0x000000011691d528] = 3056
 dependencies   [0x000000011691d528,0x000000011691d530] = 8
 nul chk table  [0x000000011691d530,0x000000011691d550] = 32
 speculations   [0x000000011691d550,0x000000011691d590] = 64
 JVMCI data     [0x000000011691d590,0x000000011691d5a0] = 16

ImmutableOopMap{rbx=Oop r8=Oop r11=Oop [24]=Oop }pc offsets: 282 
ImmutableOopMap{r8=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 749 
ImmutableOopMap{rax=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 782 
ImmutableOopMap{rax=Oop rcx=Oop rdx=Oop rbx=Oop r8=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 898 
ImmutableOopMap{rax=Oop rcx=Oop rbp=Oop rsi=Oop r10=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 912 
ImmutableOopMap{r14=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 2027 
ImmutableOopMap{rax=Oop rbx=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 2129 
ImmutableOopMap{rax=Oop rcx=Oop rdx=Oop r8=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 3010 
ImmutableOopMap{rax=Oop rbp=Oop rsi=Oop r10=Oop r14=Oop [8]=Oop [16]=Oop [24]=Oop }pc offsets: 3024 
ImmutableOopMap{r10=Oop r11=Oop [16]=Oop }pc offsets: 4986 
ImmutableOopMap{rcx=Oop r10=Oop r11=Oop [16]=Oop }pc offsets: 5027 
ImmutableOopMap{r10=Oop r11=Oop [16]=Oop }pc offsets: 5085 
ImmutableOopMap{rax=Oop rcx=Oop r8=Oop r10=Oop r11=Oop r14=Oop [16]=Oop }pc offsets: 5125 
ImmutableOopMap{rcx=Oop r10=Oop r11=Oop r14=Oop [16]=Oop }pc offsets: 5161 
ImmutableOopMap{r8=Oop r14=Oop [16]=Oop [24]=Oop }pc offsets: 5202 
ImmutableOopMap{rax=Oop rcx=Oop rbx=Oop r8=Oop r14=Oop [16]=Oop [24]=Oop }pc offsets: 5274 
ImmutableOopMap{rax=Oop rcx=Oop rbx=Oop r8=Oop r10=Oop r11=Oop [16]=Oop }pc offsets: 5314 
ImmutableOopMap{rax=Oop rcx=Oop r8=Oop r10=Oop r11=Oop r14=Oop [16]=Oop }pc offsets: 5356 
ImmutableOopMap{r14=Oop [16]=Oop [24]=Oop }pc offsets: 5404 
ImmutableOopMap{r10=Oop r11=Oop [16]=Oop }pc offsets: 5455 
ImmutableOopMap{rax=Oop rbx=Oop r8=Oop r10=Oop r11=Oop }pc offsets: 5511 
ImmutableOopMap{rcx=Oop r8=Oop r10=Oop r14=Oop [16]=Oop }pc offsets: 5547 
ImmutableOopMap{rax=Oop rbx=Oop r14=Oop [16]=Oop [24]=Oop }pc offsets: 5575 Compiled method (JVMCI)     302   43             java.util.HashMap::hash (20 bytes)
 total in heap  [0x000000011691a790,0x000000011691ad10] = 1408
 relocation     [0x000000011691a8f8,0x000000011691a908] = 16
 main code      [0x000000011691a920,0x000000011691aa37] = 279
 stub code      [0x000000011691aa37,0x000000011691aa38] = 1
 metadata       [0x000000011691aa38,0x000000011691aa60] = 40
 scopes data    [0x000000011691aa60,0x000000011691ab10] = 176
 scopes pcs     [0x000000011691ab10,0x000000011691ace0] = 464
 dependencies   [0x000000011691ace0,0x000000011691ace8] = 8
 nul chk table  [0x000000011691ace8,0x000000011691ad00] = 24
 JVMCI data     [0x000000011691ad00,0x000000011691ad10] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 16 
ImmutableOopMap{}pc offsets: 106 
ImmutableOopMap{rsi=Oop r11=NarrowOop }pc offsets: 116 
ImmutableOopMap{rsi=Oop }pc offsets: 234 
ImmutableOopMap{rsi=Oop r11=Oop }pc offsets: 266 Compiled method (JVMCI)     305   47             java.lang.String::coder (15 bytes)
 total in heap  [0x0000000116919a10,0x0000000116919c38] = 552
 relocation     [0x0000000116919b78,0x0000000116919b80] = 8
 main code      [0x0000000116919b80,0x0000000116919bdf] = 95
 stub code      [0x0000000116919bdf,0x0000000116919be0] = 1
 metadata       [0x0000000116919be0,0x0000000116919be8] = 8
 scopes data    [0x0000000116919be8,0x0000000116919bf0] = 8
 scopes pcs     [0x0000000116919bf0,0x0000000116919c20] = 48
 dependencies   [0x0000000116919c20,0x0000000116919c28] = 8
 JVMCI data     [0x0000000116919c28,0x0000000116919c38] = 16
Compiled method (JVMCI)     310   56             java.lang.String::isLatin1 (19 bytes)
 total in heap  [0x000000011691ee10,0x000000011691f0d8] = 712
 relocation     [0x000000011691ef78,0x000000011691ef88] = 16
 main code      [0x000000011691efa0,0x000000011691f03a] = 154
 stub code      [0x000000011691f03a,0x000000011691f040] = 6
 metadata       [0x000000011691f040,0x000000011691f048] = 8
 scopes data    [0x000000011691f048,0x000000011691f060] = 24
 scopes pcs     [0x000000011691f060,0x000000011691f0c0] = 96
 dependencies   [0x000000011691f0c0,0x000000011691f0c8] = 8
 JVMCI data     [0x000000011691f0c8,0x000000011691f0d8] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 141 Compiled method (JVMCI)     311   57             java.lang.String::length (11 bytes)
 total in heap  [0x000000011691f110,0x000000011691f3a8] = 664
 relocation     [0x000000011691f278,0x000000011691f280] = 8
 main code      [0x000000011691f280,0x000000011691f2ff] = 127
 stub code      [0x000000011691f2ff,0x000000011691f300] = 1
 metadata       [0x000000011691f300,0x000000011691f310] = 16
 scopes data    [0x000000011691f310,0x000000011691f330] = 32
 scopes pcs     [0x000000011691f330,0x000000011691f380] = 80
 dependencies   [0x000000011691f380,0x000000011691f388] = 8
 nul chk table  [0x000000011691f388,0x000000011691f398] = 16
 JVMCI data     [0x000000011691f398,0x000000011691f3a8] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 83 Compiled method (JVMCI)     315   65             java.lang.String::charAt (25 bytes)
 total in heap  [0x0000000116920710,0x0000000116920ad8] = 968
 relocation     [0x0000000116920878,0x0000000116920888] = 16
 main code      [0x00000001169208a0,0x000000011692097b] = 219
 stub code      [0x000000011692097b,0x0000000116920980] = 5
 metadata       [0x0000000116920980,0x0000000116920998] = 24
 scopes data    [0x0000000116920998,0x00000001169209e0] = 72
 scopes pcs     [0x00000001169209e0,0x0000000116920ab0] = 208
 dependencies   [0x0000000116920ab0,0x0000000116920ab8] = 8
 nul chk table  [0x0000000116920ab8,0x0000000116920ac8] = 16
 JVMCI data     [0x0000000116920ac8,0x0000000116920ad8] = 16

ImmutableOopMap{rax=NarrowOop rsi=Oop }pc offsets: 103 
ImmutableOopMap{rsi=Oop }pc offsets: 182 Compiled method (JVMCI)     316   66             java.lang.StringLatin1::charAt (28 bytes)
 total in heap  [0x0000000116920b10,0x0000000116920df0] = 736
 relocation     [0x0000000116920c78,0x0000000116920c80] = 8
 main code      [0x0000000116920c80,0x0000000116920cfd] = 125
 stub code      [0x0000000116920cfd,0x0000000116920d00] = 3
 metadata       [0x0000000116920d00,0x0000000116920d08] = 8
 scopes data    [0x0000000116920d08,0x0000000116920d38] = 48
 scopes pcs     [0x0000000116920d38,0x0000000116920dc8] = 144
 dependencies   [0x0000000116920dc8,0x0000000116920dd0] = 8
 nul chk table  [0x0000000116920dd0,0x0000000116920de0] = 16
 JVMCI data     [0x0000000116920de0,0x0000000116920df0] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 24 96 Compiled method (JVMCI)     325   68             java.lang.String::regionMatches (187 bytes)
 total in heap  [0x0000000116921210,0x0000000116921ab0] = 2208
 relocation     [0x0000000116921378,0x0000000116921388] = 16
 main code      [0x00000001169213a0,0x00000001169215dc] = 572
 stub code      [0x00000001169215dc,0x00000001169215e0] = 4
 metadata       [0x00000001169215e0,0x0000000116921600] = 32
 scopes data    [0x0000000116921600,0x0000000116921728] = 296
 scopes pcs     [0x0000000116921728,0x0000000116921a78] = 848
 dependencies   [0x0000000116921a78,0x0000000116921a80] = 8
 nul chk table  [0x0000000116921a80,0x0000000116921aa0] = 32
 JVMCI data     [0x0000000116921aa0,0x0000000116921ab0] = 16

ImmutableOopMap{rsi=Oop r10=Oop }pc offsets: 83 
ImmutableOopMap{rbx=NarrowOop rsi=Oop r10=Oop r11=NarrowOop }pc offsets: 112 
ImmutableOopMap{rbx=NarrowOop rsi=Oop r11=NarrowOop [0]=Oop }pc offsets: 156 
ImmutableOopMap{rsi=Oop r11=Oop }pc offsets: 402 
ImmutableOopMap{rbx=Oop r11=Oop }pc offsets: 450 Compiled method (JVMCI)     335   69             java.lang.StringLatin1::replace (196 bytes)
 total in heap  [0x0000000116923310,0x0000000116923de0] = 2768
 relocation     [0x0000000116923478,0x00000001169234a8] = 48
 main code      [0x00000001169234c0,0x0000000116923857] = 919
 stub code      [0x0000000116923857,0x0000000116923858] = 1
 metadata       [0x0000000116923858,0x0000000116923870] = 24
 scopes data    [0x0000000116923870,0x0000000116923998] = 296
 scopes pcs     [0x0000000116923998,0x0000000116923db8] = 1056
 dependencies   [0x0000000116923db8,0x0000000116923dc0] = 8
 nul chk table  [0x0000000116923dc0,0x0000000116923dd0] = 16
 JVMCI data     [0x0000000116923dd0,0x0000000116923de0] = 16

ImmutableOopMap{r10=Oop }pc offsets: 38 588 
ImmutableOopMap{rdx=Oop }pc offsets: 658 
ImmutableOopMap{r10=Oop }pc offsets: 710 
ImmutableOopMap{rdx=Oop }pc offsets: 738 
ImmutableOopMap{rdx=Oop r10=Oop }pc offsets: 766 
ImmutableOopMap{r10=Oop }pc offsets: 794 822 850 
ImmutableOopMap{rdx=Oop r10=Oop }pc offsets: 878 906 Compiled method (JVMCI)     336   67             jdk.internal.org.objectweb.asm.ByteVector::putUTF8 (142 bytes)
 total in heap  [0x0000000116924590,0x0000000116925388] = 3576
 relocation     [0x00000001169246f8,0x0000000116924720] = 40
 main code      [0x0000000116924720,0x0000000116924ce4] = 1476
 stub code      [0x0000000116924ce4,0x0000000116924ce8] = 4
 metadata       [0x0000000116924ce8,0x0000000116924d30] = 72
 scopes data    [0x0000000116924d30,0x0000000116924f00] = 464
 scopes pcs     [0x0000000116924f00,0x0000000116925350] = 1104
 dependencies   [0x0000000116925350,0x0000000116925358] = 8
 nul chk table  [0x0000000116925358,0x0000000116925378] = 32
 JVMCI data     [0x0000000116925378,0x0000000116925388] = 16

ImmutableOopMap{rdx=Oop rsi=Oop }pc offsets: 80 
ImmutableOopMap{rdx=Oop rsi=Oop [32]=NarrowOop }pc offsets: 94 
ImmutableOopMap{rdx=Oop rsi=Oop rdi=NarrowOop [32]=NarrowOop }pc offsets: 127 
ImmutableOopMap{r11=Oop [16]=Oop [24]=Oop [32]=NarrowOop }pc offsets: 992 
ImmutableOopMap{r11=Oop r13=Oop [16]=Oop }pc offsets: 1207 
ImmutableOopMap{r11=Oop [16]=Oop }pc offsets: 1254 1290 
ImmutableOopMap{r11=Oop r13=Oop [16]=Oop }pc offsets: 1324 
ImmutableOopMap{rdx=Oop r11=Oop }pc offsets: 1392 
ImmutableOopMap{r11=Oop [16]=Oop }pc offsets: 1430 Compiled method (JVMCI)     341   76             java.util.Objects::requireNonNull (14 bytes)
 total in heap  [0x0000000116925810,0x0000000116925a38] = 552
 relocation     [0x0000000116925978,0x0000000116925980] = 8
 main code      [0x0000000116925980,0x00000001169259b4] = 52
 stub code      [0x00000001169259b4,0x00000001169259b8] = 4
 metadata       [0x00000001169259b8,0x00000001169259c0] = 8
 scopes data    [0x00000001169259c0,0x00000001169259d0] = 16
 scopes pcs     [0x00000001169259d0,0x0000000116925a10] = 64
 dependencies   [0x0000000116925a10,0x0000000116925a18] = 8
 nul chk table  [0x0000000116925a18,0x0000000116925a28] = 16
 JVMCI data     [0x0000000116925a28,0x0000000116925a38] = 16

ImmutableOopMap{rsi=Oop }pc offsets: 16 Time elapsed: 74.238 ms result=100
Warmup phase
Compiled method (JVMCI)     368  103             java.lang.Integer::intValue (5 bytes)
 total in heap  [0x000000011692b210,0x000000011692b438] = 552
 relocation     [0x000000011692b378,0x000000011692b380] = 8
 main code      [0x000000011692b380,0x000000011692b3de] = 94
 stub code      [0x000000011692b3de,0x000000011692b3e0] = 2
 metadata       [0x000000011692b3e0,0x000000011692b3e8] = 8
 scopes data    [0x000000011692b3e8,0x000000011692b3f0] = 8
 scopes pcs     [0x000000011692b3f0,0x000000011692b420] = 48
 dependencies   [0x000000011692b420,0x000000011692b428] = 8
 JVMCI data     [0x000000011692b428,0x000000011692b438] = 16
Compiled method (JVMCI)     375  104             java.util.HashMap::getNode (148 bytes)
 total in heap  [0x000000011692bd90,0x000000011692c900] = 2928
 relocation     [0x000000011692bef8,0x000000011692bf38] = 64
 constants      [0x000000011692bf40,0x000000011692bf60] = 32
 main code      [0x000000011692bf60,0x000000011692c344] = 996
 stub code      [0x000000011692c344,0x000000011692c348] = 4
 metadata       [0x000000011692c348,0x000000011692c378] = 48
 scopes data    [0x000000011692c378,0x000000011692c4d0] = 344
 scopes pcs     [0x000000011692c4d0,0x000000011692c8b0] = 992
 dependencies   [0x000000011692c8b0,0x000000011692c8b8] = 8
 nul chk table  [0x000000011692c8b8,0x000000011692c8f0] = 56
 JVMCI data     [0x000000011692c8f0,0x000000011692c900] = 16

ImmutableOopMap{rcx=Oop rbx=Oop rsi=Oop r10=NarrowOop r11=Oop }pc offsets: 175 
ImmutableOopMap{rcx=Oop rbx=Oop rsi=Oop r10=NarrowOop r11=NarrowOop }pc offsets: 420 
ImmutableOopMap{rcx=Oop rbx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=NarrowOop }pc offsets: 436 
ImmutableOopMap{rdx=Oop rbp=Oop rsi=NarrowOop }pc offsets: 595 606 
ImmutableOopMap{rdx=Oop rbp=Oop }pc offsets: 616 
ImmutableOopMap{rbp=Oop r10=Oop [0]=Oop }pc offsets: 648 
ImmutableOopMap{[0]=Oop [8]=Oop }pc offsets: 684 
ImmutableOopMap{rcx=Oop rsi=Oop }pc offsets: 849 
ImmutableOopMap{rdx=Oop [8]=Oop }pc offsets: 892 
ImmutableOopMap{rbx=Oop [8]=Oop }pc offsets: 940 Compiled method (JVMCI)     385  105             java.util.HashMap::get (23 bytes)
 total in heap  [0x000000011692c910,0x000000011692d848] = 3896
 relocation     [0x000000011692ca78,0x000000011692cab8] = 64
 constants      [0x000000011692cac0,0x000000011692cae0] = 32
 main code      [0x000000011692cae0,0x000000011692cfb9] = 1241
 stub code      [0x000000011692cfb9,0x000000011692cfc0] = 7
 metadata       [0x000000011692cfc0,0x000000011692d018] = 88
 scopes data    [0x000000011692d018,0x000000011692d278] = 608
 scopes pcs     [0x000000011692d278,0x000000011692d7f8] = 1408
 dependencies   [0x000000011692d7f8,0x000000011692d800] = 8
 nul chk table  [0x000000011692d800,0x000000011692d838] = 56
 JVMCI data     [0x000000011692d838,0x000000011692d848] = 16

ImmutableOopMap{rdx=Oop rsi=Oop [16]=Oop }pc offsets: 85 
ImmutableOopMap{[8]=Oop [16]=Oop }pc offsets: 454 
ImmutableOopMap{rdx=Oop r11=NarrowOop [8]=Oop [16]=Oop }pc offsets: 487 
ImmutableOopMap{rdx=Oop rbx=Oop rsi=Oop r9=NarrowOop r11=NarrowOop [16]=Oop }pc offsets: 668 
ImmutableOopMap{rdx=Oop rbx=Oop rsi=Oop rdi=NarrowOop r9=NarrowOop r11=NarrowOop [16]=Oop }pc offsets: 684 
ImmutableOopMap{rdx=Oop rbp=Oop rsi=NarrowOop [16]=Oop }pc offsets: 851 862 
ImmutableOopMap{rdx=Oop rbp=Oop [16]=Oop }pc offsets: 872 
ImmutableOopMap{[8]=Oop [16]=Oop }pc offsets: 932 
ImmutableOopMap{rsi=Oop [16]=Oop }pc offsets: 1032 
ImmutableOopMap{rdx=Oop [16]=Oop }pc offsets: 1089 
ImmutableOopMap{rbx=Oop [16]=Oop }pc offsets: 1125 
ImmutableOopMap{rdx=Oop rsi=Oop }pc offsets: 1158 
ImmutableOopMap{rsi=Oop r11=Oop [16]=Oop }pc offsets: 1195 Compiled method (JVMCI)     388  106             java.lang.Integer::valueOf (32 bytes)
 total in heap  [0x000000011692b690,0x000000011692ba28] = 920
 relocation     [0x000000011692b7f8,0x000000011692b810] = 24
 main code      [0x000000011692b820,0x000000011692b932] = 274
 stub code      [0x000000011692b932,0x000000011692b938] = 6
 metadata       [0x000000011692b938,0x000000011692b948] = 16
 scopes data    [0x000000011692b948,0x000000011692b970] = 40
 scopes pcs     [0x000000011692b970,0x000000011692ba10] = 160
 dependencies   [0x000000011692ba10,0x000000011692ba18] = 8
 JVMCI data     [0x000000011692ba18,0x000000011692ba28] = 16

ImmutableOopMap{}pc offsets: 195 233 261 Compiled method (JVMCI)     389  107             java.lang.Integer::hashCode (8 bytes)
 total in heap  [0x000000011692ba90,0x000000011692bcb8] = 552
 relocation     [0x000000011692bbf8,0x000000011692bc00] = 8
 main code      [0x000000011692bc00,0x000000011692bc5e] = 94
 stub code      [0x000000011692bc5e,0x000000011692bc60] = 2
 metadata       [0x000000011692bc60,0x000000011692bc68] = 8
 scopes data    [0x000000011692bc68,0x000000011692bc70] = 8
 scopes pcs     [0x000000011692bc70,0x000000011692bca0] = 48
 dependencies   [0x000000011692bca0,0x000000011692bca8] = 8
 JVMCI data     [0x000000011692bca8,0x000000011692bcb8] = 16
Compiled method (JVMCI)     390  108             java.lang.Integer::hashCode (2 bytes)
 total in heap  [0x000000011692d890,0x000000011692da78] = 488
 relocation     [0x000000011692d9f8,0x000000011692da00] = 8
 main code      [0x000000011692da00,0x000000011692da1d] = 29
 stub code      [0x000000011692da1d,0x000000011692da20] = 3
 metadata       [0x000000011692da20,0x000000011692da28] = 8
 scopes data    [0x000000011692da28,0x000000011692da30] = 8
 scopes pcs     [0x000000011692da30,0x000000011692da60] = 48
 dependencies   [0x000000011692da60,0x000000011692da68] = 8
 JVMCI data     [0x000000011692da68,0x000000011692da78] = 16
Compiled method (JVMCI)     398  109             ProceduralHashMap::max100 (42 bytes)
 total in heap  [0x000000011692e010,0x000000011692eb98] = 2952
 relocation     [0x000000011692e178,0x000000011692e1b0] = 56
 main code      [0x000000011692e1c0,0x000000011692e580] = 960
 stub code      [0x000000011692e580,0x000000011692e590] = 16
 oops           [0x000000011692e590,0x000000011692e5a0] = 16
 metadata       [0x000000011692e5a0,0x000000011692e5f0] = 80
 scopes data    [0x000000011692e5f0,0x000000011692e798] = 424
 scopes pcs     [0x000000011692e798,0x000000011692eb58] = 960
 dependencies   [0x000000011692eb58,0x000000011692eb60] = 8
 nul chk table  [0x000000011692eb60,0x000000011692eb88] = 40
 JVMCI data     [0x000000011692eb88,0x000000011692eb98] = 16

ImmutableOopMap{rsi=NarrowOop }pc offsets: 93 
ImmutableOopMap{rax=Oop }pc offsets: 342 
ImmutableOopMap{rsi=NarrowOop r11=Oop }pc offsets: 468 479 
ImmutableOopMap{r11=Oop }pc offsets: 489 
ImmutableOopMap{[8]=Oop [16]=Oop }pc offsets: 636 
ImmutableOopMap{r9=NarrowOop [16]=Oop }pc offsets: 756 
ImmutableOopMap{}pc offsets: 808 
ImmutableOopMap{rsi=Oop [16]=Oop }pc offsets: 841 
ImmutableOopMap{r11=Oop }pc offsets: 890 
ImmutableOopMap{rax=Oop }pc offsets: 934 Compiled method (JVMCI)     410  110             ProceduralHashMap::runTest (25 bytes)
 total in heap  [0x000000011692f310,0x0000000116930268] = 3928
 relocation     [0x000000011692f478,0x000000011692f4d8] = 96
 main code      [0x000000011692f4e0,0x000000011692fa40] = 1376
 stub code      [0x000000011692fa40,0x000000011692fa60] = 32
 oops           [0x000000011692fa60,0x000000011692fa70] = 16
 metadata       [0x000000011692fa70,0x000000011692fac8] = 88
 scopes data    [0x000000011692fac8,0x000000011692fcb0] = 488
 scopes pcs     [0x000000011692fcb0,0x0000000116930220] = 1392
 dependencies   [0x0000000116930220,0x0000000116930228] = 8
 nul chk table  [0x0000000116930228,0x0000000116930258] = 48
 JVMCI data     [0x0000000116930258,0x0000000116930268] = 16

ImmutableOopMap{rdx=NarrowOop r11=Oop [16]=Oop }pc offsets: 152 
ImmutableOopMap{rsi=Oop [16]=Oop }pc offsets: 376 387 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 668 
ImmutableOopMap{rsi=NarrowOop [16]=Oop }pc offsets: 728 
ImmutableOopMap{rsi=Oop r10=NarrowOop [16]=Oop }pc offsets: 756 767 
ImmutableOopMap{rsi=Oop [16]=Oop }pc offsets: 777 
ImmutableOopMap{[0]=Oop [8]=Oop [16]=Oop }pc offsets: 924 
ImmutableOopMap{rbx=NarrowOop [16]=Oop }pc offsets: 1004 
ImmutableOopMap{r11=NarrowOop [8]=Oop [16]=Oop }pc offsets: 1064 
ImmutableOopMap{rsi=Oop [16]=Oop }pc offsets: 1146 
ImmutableOopMap{[16]=Oop }pc offsets: 1174 
ImmutableOopMap{[8]=Oop [16]=Oop }pc offsets: 1202 
ImmutableOopMap{rsi=Oop }pc offsets: 1237 
ImmutableOopMap{rdx=Oop rsi=Oop [16]=Oop }pc offsets: 1290 
ImmutableOopMap{rdx=Oop rbx=Oop [16]=Oop }pc offsets: 1339 Compiled method (JVMCI)     497  111 %           ProceduralHashMap::main @ 36 (72 bytes)
 total in heap  [0x000000011692ec10,0x000000011692f168] = 1368
 relocation     [0x000000011692ed78,0x000000011692edb0] = 56
 main code      [0x000000011692edc0,0x000000011692ef40] = 384
 stub code      [0x000000011692ef40,0x000000011692ef70] = 48
 oops           [0x000000011692ef70,0x000000011692ef78] = 8
 metadata       [0x000000011692ef78,0x000000011692ef90] = 24
 scopes data    [0x000000011692ef90,0x000000011692efe8] = 88
 scopes pcs     [0x000000011692efe8,0x000000011692f138] = 336
 dependencies   [0x000000011692f138,0x000000011692f140] = 8
 speculations   [0x000000011692f140,0x000000011692f158] = 24
 JVMCI data     [0x000000011692f158,0x000000011692f168] = 16

ImmutableOopMap{[8]=Oop }pc offsets: 108 148 196 268 
ImmutableOopMap{r11=Oop }pc offsets: 296 
ImmutableOopMap{[8]=Oop }pc offsets: 344 Test phase
Time elapsed: 0.006 ms result=100

