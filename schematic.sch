# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new ALU_TOP work:ALU_TOP:NOFILE -nosplit
load symbol ROM work:ROM:NOFILE HIERBOX pinBus in input.left [2:0] pinBus opcode output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol addertop work:addertop:NOFILE HIERBOX pin cout output.right pinBus a1 input.left [3:0] pinBus a2 input.left [3:0] pinBus b input.left [7:0] pinBus op output.right [7:0] pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol LogicAnd work:LogicAnd:NOFILE HIERBOX pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol carryflagshow work:carryflagshow:NOFILE HIERBOX pin CF output.right pin cin input.left pin sel input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux7 work:mux7:NOFILE HIERBOX pinBus in1 input.left [7:0] pinBus in2 input.left [7:0] pinBus in3 input.left [7:0] pinBus in4 input.left [7:0] pinBus in5 input.left [7:0] pinBus in6 input.left [7:0] pinBus in7 input.left [7:0] pinBus out output.right [7:0] pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol NotA work:NotA:NOFILE HIERBOX pinBus in input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol NotA work:abstract:NOFILE HIERBOX pinBus in input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol shlA work:shlA:NOFILE HIERBOX pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol shrA work:shrA:NOFILE HIERBOX pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol signflagshow work:signflagshow:NOFILE HIERBOX pin SF output.right pin sel input.left pinBus in input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Xor8bit work:Xor8bit:NOFILE HIERBOX pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX0 work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus I2 input.left [7:0] pinBus I3 input.left [7:0] pinBus I4 input.left [7:0] pinBus I5 input.left [7:0] pinBus I6 input.left [7:0] pinBus I7 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_INV work INV pinBus I0 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol adder_8bit work:adder_8bit:NOFILE HIERBOX pin ci input.left pin cout output.right pinBus a1 input.left [3:0] pinBus a2 input.left [3:0] pinBus b1 input.left [3:0] pinBus b2 input.left [3:0] pinBus sh output.right [3:0] pinBus sl output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol substr_xor work:substr_xor:NOFILE HIERBOX pin cout output.right pinBus b input.left [7:0] pinBus bsub output.right [7:0] pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ROM0 work GEN pinBus A input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] pinBus S input.bot [2:0] fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [2:0] fillcolor 1
load symbol adder work:abstract:NOFILE HIERBOX pin ci input.left pin cout output.right pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus s output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol adder work:adder:NOFILE HIERBOX pin ci input.left pin cout output.right pinBus a input.left [3:0] pinBus b input.left [3:0] pinBus s output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [4:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [4:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load port cf output -pg 1 -lvl 4 -x 3430 -y 650
load port sf output -pg 1 -lvl 4 -x 3430 -y 760
load portBus a input [7:0] -attr @name a[7:0] -pg 1 -lvl 0 -x -20 -y 60
load portBus b input [7:0] -attr @name b[7:0] -pg 1 -lvl 0 -x -20 -y 80
load portBus result output [7:0] -attr @name result[7:0] -pg 1 -lvl 4 -x 3430 -y 350
load portBus rom input [2:0] -attr @name rom[2:0] -pg 1 -lvl 0 -x -20 -y 740
load inst Rom ROM work:ROM:NOFILE -autohide -attr @cell(#000000) ROM -attr @fillcolor #fafafa -pinBusAttr in @name in[2:0] -pinBusAttr opcode @name opcode[7:0] -pg 1 -lvl 1 -x 70 -y 738
load inst add_sub addertop work:addertop:NOFILE -autohide -attr @cell(#000000) addertop -attr @fillcolor #fafafa -pinBusAttr a1 @name a1[3:0] -pinBusAttr a2 @name a2[3:0] -pinBusAttr b @name b[7:0] -pinBusAttr op @name op[7:0] -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 510 -y 908
load inst andlogic LogicAnd work:LogicAnd:NOFILE -autohide -attr @cell(#000000) LogicAnd -attr @fillcolor #fafafa -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 58
load inst carryf carryflagshow work:carryflagshow:NOFILE -autohide -attr @cell(#000000) carryflagshow -attr @fillcolor #fafafa -pg 1 -lvl 3 -x 3027 -y 714
load inst mux7 mux7 work:mux7:NOFILE -autohide -attr @cell(#000000) mux7 -attr @fillcolor #fafafa -pinBusAttr in1 @name in1[7:0] -pinBusAttr in2 @name in2[7:0] -pinBusAttr in3 @name in3[7:0] -pinBusAttr in4 @name in4[7:0] -pinBusAttr in5 @name in5[7:0] -pinBusAttr in6 @name in6[7:0] -pinBusAttr in7 @name in7[7:0] -pinBusAttr out @name out[7:0] -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 3 -x 3027 -y 288
load inst notA NotA work:NotA:NOFILE -autohide -attr @cell(#000000) NotA -attr @fillcolor #fafafa -pinBusAttr in @name in[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 188
load inst notB NotA work:abstract:NOFILE -autohide -attr @cell(#000000) NotA -attr @fillcolor #fafafa -pinBusAttr in @name in[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 768
load inst shla shlA work:shlA:NOFILE -autohide -attr @cell(#000000) shlA -attr @fillcolor #fafafa -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 478
load inst shra shrA work:shrA:NOFILE -autohide -attr @cell(#000000) shrA -attr @fillcolor #fafafa -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 318
load inst signf signflagshow work:signflagshow:NOFILE -autohide -attr @cell(#000000) signflagshow -attr @fillcolor #fafafa -pinBusAttr in @name in[7:0] -pg 1 -lvl 3 -x 3027 -y 914
load inst xorab Xor8bit work:Xor8bit:NOFILE -autohide -attr @cell(#000000) Xor8bit -attr @fillcolor #fafafa -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr out @name out[7:0] -pg 1 -lvl 2 -x 510 -y 638
load inst mux7|out_i RTL_MUX0 work -hier mux7 -attr @cell(#000000) RTL_MUX -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=3'b000 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=3'b010 -pinBusAttr I2 @name I2[7:0] -pinBusAttr I2 @attr S=3'b011 -pinBusAttr I3 @name I3[7:0] -pinBusAttr I3 @attr S=3'b100 -pinBusAttr I4 @name I4[7:0] -pinBusAttr I4 @attr S=3'b101 -pinBusAttr I5 @name I5[7:0] -pinBusAttr I5 @attr S=3'b110 -pinBusAttr I6 @name I6[7:0] -pinBusAttr I6 @attr S=3'b111 -pinBusAttr I7 @name I7[7:0] -pinBusAttr I7 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 1 -x 3177 -y 378
load inst andlogic|out_i RTL_AND work -hier andlogic -attr @cell(#000000) RTL_AND -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 590 -y 68
load inst notA|out_i RTL_INV work -hier notA -attr @cell(#000000) RTL_INV -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 590 -y 198
load inst shra|out_i RTL_RSHIFT work -hier shra -attr @cell(#000000) RTL_RSHIFT -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 610 -y 348
load inst shla|out_i RTL_LSHIFT work -hier shla -attr @cell(#000000) RTL_LSHIFT -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 610 -y 508
load inst xorab|out_i RTL_XOR work -hier xorab -attr @cell(#000000) RTL_XOR -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 590 -y 648
load inst notB|out_i RTL_INV work -hier notB -attr @cell(#000000) RTL_INV -attr @name out_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 590 -y 778
load inst add_sub|rezultat adder_8bit work:adder_8bit:NOFILE -hier add_sub -autohide -attr @cell(#000000) adder_8bit -attr @name rezultat -attr @fillcolor #fafafa -pinBusAttr a1 @name a1[3:0] -pinBusAttr a2 @name a2[3:0] -pinBusAttr b1 @name b1[3:0] -pinBusAttr b2 @name b2[3:0] -pinBusAttr sh @name sh[3:0] -pinBusAttr sl @name sl[3:0] -pg 1 -lvl 2 -x 1290 -y 936
load inst add_sub|scadere substr_xor work:substr_xor:NOFILE -hier add_sub -autohide -attr @cell(#000000) substr_xor -attr @name scadere -attr @fillcolor #fafafa -pinBusAttr b @name b[7:0] -pinBusAttr bsub @name bsub[7:0] -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 1 -x 600 -y 1016
load inst Rom|opcode_i RTL_ROM0 work -hier Rom -attr @cell(#000000) RTL_ROM -attr @name opcode_i -pinBusAttr A @name A[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 110 -y 758
load inst add_sub|scadere|bsub0_i RTL_INV work -hier add_sub|scadere -attr @cell(#000000) RTL_INV -attr @name bsub0_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 700 -y 1066
load inst add_sub|scadere|bsub_i RTL_MUX work -hier add_sub|scadere -attr @cell(#000000) RTL_MUX -attr @name bsub_i -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=3'b111 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pinBusAttr S @name S[2:0] -pg 1 -lvl 2 -x 950 -y 1046
load inst add_sub|scadere|cout_i RTL_ROM work -hier add_sub|scadere -attr @cell(#000000) RTL_ROM -attr @name cout_i -pinBusAttr A @name A[2:0] -pg 1 -lvl 2 -x 950 -y 1156
load inst add_sub|rezultat|adderh adder work:abstract:NOFILE -hier add_sub|rezultat -autohide -attr @cell(#000000) adder -attr @name adderh -attr @fillcolor #fafafa -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr s @name s[3:0] -pg 1 -lvl 2 -x 2050 -y 980
load inst add_sub|rezultat|adderl adder work:adder:NOFILE -hier add_sub|rezultat -autohide -attr @cell(#000000) adder -attr @name adderl -attr @fillcolor #fafafa -pinBusAttr a @name a[3:0] -pinBusAttr b @name b[3:0] -pinBusAttr s @name s[3:0] -pg 1 -lvl 1 -x 1410 -y 1020
load inst add_sub|rezultat|adderl|cout0_i RTL_ADD work -hier add_sub|rezultat|adderl -attr @cell(#000000) RTL_ADD -attr @name cout0_i -pinBusAttr I0 @name I0[4:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 2 -x 1720 -y 1060
load inst add_sub|rezultat|adderl|cout1_i RTL_ADD0 work -hier add_sub|rezultat|adderl -attr @cell(#000000) RTL_ADD -attr @name cout1_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 1 -x 1530 -y 1100
load inst add_sub|rezultat|adderh|cout0_i RTL_ADD work -hier add_sub|rezultat|adderh -attr @cell(#000000) RTL_ADD -attr @name cout0_i -pinBusAttr I0 @name I0[4:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 2 -x 2360 -y 1020
load inst add_sub|rezultat|adderh|cout1_i RTL_ADD0 work -hier add_sub|rezultat|adderh -attr @cell(#000000) RTL_ADD -attr @name cout1_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[4:0] -pg 1 -lvl 1 -x 2170 -y 1060
load inst signf|SF_i RTL_MUX1 work -hier signf -attr @cell(#000000) RTL_MUX -attr @name SF_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 3157 -y 944
load inst carryf|CF_i RTL_MUX1 work -hier carryf -attr @cell(#000000) RTL_MUX -attr @name CF_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 1 -x 3157 -y 744
load net a[0] -attr @rip a[0] -port a[0] -pin add_sub a2[0] -pin andlogic a[0] -pin notA in[0] -pin shla a[0] -pin shra a[0] -pin xorab a[0]
load net a[1] -attr @rip a[1] -port a[1] -pin add_sub a2[1] -pin andlogic a[1] -pin notA in[1] -pin shla a[1] -pin shra a[1] -pin xorab a[1]
load net a[2] -attr @rip a[2] -port a[2] -pin add_sub a2[2] -pin andlogic a[2] -pin notA in[2] -pin shla a[2] -pin shra a[2] -pin xorab a[2]
load net a[3] -attr @rip a[3] -port a[3] -pin add_sub a2[3] -pin andlogic a[3] -pin notA in[3] -pin shla a[3] -pin shra a[3] -pin xorab a[3]
load net a[4] -attr @rip a[4] -port a[4] -pin add_sub a1[0] -pin andlogic a[4] -pin notA in[4] -pin shla a[4] -pin shra a[4] -pin xorab a[4]
load net a[5] -attr @rip a[5] -port a[5] -pin add_sub a1[1] -pin andlogic a[5] -pin notA in[5] -pin shla a[5] -pin shra a[5] -pin xorab a[5]
load net a[6] -attr @rip a[6] -port a[6] -pin add_sub a1[2] -pin andlogic a[6] -pin notA in[6] -pin shla a[6] -pin shra a[6] -pin xorab a[6]
load net a[7] -attr @rip a[7] -port a[7] -pin add_sub a1[3] -pin andlogic a[7] -pin notA in[7] -pin shla a[7] -pin shra a[7] -pin xorab a[7]
load net b[0] -attr @rip b[0] -pin add_sub b[0] -pin andlogic b[0] -port b[0] -pin notB in[0] -pin shla b[0] -pin shra b[0] -pin xorab b[0]
load net b[1] -attr @rip b[1] -pin add_sub b[1] -pin andlogic b[1] -port b[1] -pin notB in[1] -pin shla b[1] -pin shra b[1] -pin xorab b[1]
load net b[2] -attr @rip b[2] -pin add_sub b[2] -pin andlogic b[2] -port b[2] -pin notB in[2] -pin shla b[2] -pin shra b[2] -pin xorab b[2]
load net b[3] -attr @rip b[3] -pin add_sub b[3] -pin andlogic b[3] -port b[3] -pin notB in[3] -pin shla b[3] -pin shra b[3] -pin xorab b[3]
load net b[4] -attr @rip b[4] -pin add_sub b[4] -pin andlogic b[4] -port b[4] -pin notB in[4] -pin shla b[4] -pin shra b[4] -pin xorab b[4]
load net b[5] -attr @rip b[5] -pin add_sub b[5] -pin andlogic b[5] -port b[5] -pin notB in[5] -pin shla b[5] -pin shra b[5] -pin xorab b[5]
load net b[6] -attr @rip b[6] -pin add_sub b[6] -pin andlogic b[6] -port b[6] -pin notB in[6] -pin shla b[6] -pin shra b[6] -pin xorab b[6]
load net b[7] -attr @rip b[7] -pin add_sub b[7] -pin andlogic b[7] -port b[7] -pin notB in[7] -pin shla b[7] -pin shra b[7] -pin xorab b[7]
load net cf -pin carryf CF -port cf
netloc cf 1 3 1 3390J 650n
load net result[0] -attr @rip out[0] -pin mux7 out[0] -port result[0]
load net result[1] -attr @rip out[1] -pin mux7 out[1] -port result[1]
load net result[2] -attr @rip out[2] -pin mux7 out[2] -port result[2]
load net result[3] -attr @rip out[3] -pin mux7 out[3] -port result[3]
load net result[4] -attr @rip out[4] -pin mux7 out[4] -port result[4]
load net result[5] -attr @rip out[5] -pin mux7 out[5] -port result[5]
load net result[6] -attr @rip out[6] -pin mux7 out[6] -port result[6]
load net result[7] -attr @rip out[7] -pin mux7 out[7] -port result[7]
load net rom[0] -attr @rip rom[0] -pin Rom in[0] -port rom[0]
load net rom[1] -attr @rip rom[1] -pin Rom in[1] -port rom[1]
load net rom[2] -attr @rip rom[2] -pin Rom in[2] -port rom[2]
load net sf -port sf -pin signf SF
netloc sf 1 3 1 3410J 760n
load net w1[0] -attr @rip opcode[0] -pin Rom opcode[0] -pin mux7 sel[0]
load net w1[1] -attr @rip opcode[1] -pin Rom opcode[1] -pin mux7 sel[1]
load net w1[2] -attr @rip opcode[2] -pin Rom opcode[2] -pin mux7 sel[2]
load net w1[4] -attr @rip opcode[4] -pin Rom opcode[4] -pin carryf sel -pin signf sel
load net w1[5] -attr @rip opcode[5] -pin Rom opcode[5] -pin add_sub sel[0]
load net w1[6] -attr @rip opcode[6] -pin Rom opcode[6] -pin add_sub sel[1]
load net w1[7] -attr @rip opcode[7] -pin Rom opcode[7] -pin add_sub sel[2]
load net w2[0] -attr @rip op[0] -pin add_sub op[0] -pin mux7 in1[0] -pin signf in[0]
load net w2[1] -attr @rip op[1] -pin add_sub op[1] -pin mux7 in1[1] -pin signf in[1]
load net w2[2] -attr @rip op[2] -pin add_sub op[2] -pin mux7 in1[2] -pin signf in[2]
load net w2[3] -attr @rip op[3] -pin add_sub op[3] -pin mux7 in1[3] -pin signf in[3]
load net w2[4] -attr @rip op[4] -pin add_sub op[4] -pin mux7 in1[4] -pin signf in[4]
load net w2[5] -attr @rip op[5] -pin add_sub op[5] -pin mux7 in1[5] -pin signf in[5]
load net w2[6] -attr @rip op[6] -pin add_sub op[6] -pin mux7 in1[6] -pin signf in[6]
load net w2[7] -attr @rip op[7] -pin add_sub op[7] -pin mux7 in1[7] -pin signf in[7]
load net w3[0] -attr @rip out[0] -pin mux7 in2[0] -pin shra out[0]
load net w3[1] -attr @rip out[1] -pin mux7 in2[1] -pin shra out[1]
load net w3[2] -attr @rip out[2] -pin mux7 in2[2] -pin shra out[2]
load net w3[3] -attr @rip out[3] -pin mux7 in2[3] -pin shra out[3]
load net w3[4] -attr @rip out[4] -pin mux7 in2[4] -pin shra out[4]
load net w3[5] -attr @rip out[5] -pin mux7 in2[5] -pin shra out[5]
load net w3[6] -attr @rip out[6] -pin mux7 in2[6] -pin shra out[6]
load net w3[7] -attr @rip out[7] -pin mux7 in2[7] -pin shra out[7]
load net w4[0] -attr @rip out[0] -pin mux7 in3[0] -pin notA out[0]
load net w4[1] -attr @rip out[1] -pin mux7 in3[1] -pin notA out[1]
load net w4[2] -attr @rip out[2] -pin mux7 in3[2] -pin notA out[2]
load net w4[3] -attr @rip out[3] -pin mux7 in3[3] -pin notA out[3]
load net w4[4] -attr @rip out[4] -pin mux7 in3[4] -pin notA out[4]
load net w4[5] -attr @rip out[5] -pin mux7 in3[5] -pin notA out[5]
load net w4[6] -attr @rip out[6] -pin mux7 in3[6] -pin notA out[6]
load net w4[7] -attr @rip out[7] -pin mux7 in3[7] -pin notA out[7]
load net w5[0] -attr @rip out[0] -pin andlogic out[0] -pin mux7 in4[0]
load net w5[1] -attr @rip out[1] -pin andlogic out[1] -pin mux7 in4[1]
load net w5[2] -attr @rip out[2] -pin andlogic out[2] -pin mux7 in4[2]
load net w5[3] -attr @rip out[3] -pin andlogic out[3] -pin mux7 in4[3]
load net w5[4] -attr @rip out[4] -pin andlogic out[4] -pin mux7 in4[4]
load net w5[5] -attr @rip out[5] -pin andlogic out[5] -pin mux7 in4[5]
load net w5[6] -attr @rip out[6] -pin andlogic out[6] -pin mux7 in4[6]
load net w5[7] -attr @rip out[7] -pin andlogic out[7] -pin mux7 in4[7]
load net w6[0] -attr @rip out[0] -pin mux7 in5[0] -pin shla out[0]
load net w6[1] -attr @rip out[1] -pin mux7 in5[1] -pin shla out[1]
load net w6[2] -attr @rip out[2] -pin mux7 in5[2] -pin shla out[2]
load net w6[3] -attr @rip out[3] -pin mux7 in5[3] -pin shla out[3]
load net w6[4] -attr @rip out[4] -pin mux7 in5[4] -pin shla out[4]
load net w6[5] -attr @rip out[5] -pin mux7 in5[5] -pin shla out[5]
load net w6[6] -attr @rip out[6] -pin mux7 in5[6] -pin shla out[6]
load net w6[7] -attr @rip out[7] -pin mux7 in5[7] -pin shla out[7]
load net w7[0] -attr @rip out[0] -pin mux7 in6[0] -pin xorab out[0]
load net w7[1] -attr @rip out[1] -pin mux7 in6[1] -pin xorab out[1]
load net w7[2] -attr @rip out[2] -pin mux7 in6[2] -pin xorab out[2]
load net w7[3] -attr @rip out[3] -pin mux7 in6[3] -pin xorab out[3]
load net w7[4] -attr @rip out[4] -pin mux7 in6[4] -pin xorab out[4]
load net w7[5] -attr @rip out[5] -pin mux7 in6[5] -pin xorab out[5]
load net w7[6] -attr @rip out[6] -pin mux7 in6[6] -pin xorab out[6]
load net w7[7] -attr @rip out[7] -pin mux7 in6[7] -pin xorab out[7]
load net w8[0] -attr @rip out[0] -pin mux7 in7[0] -pin notB out[0]
load net w8[1] -attr @rip out[1] -pin mux7 in7[1] -pin notB out[1]
load net w8[2] -attr @rip out[2] -pin mux7 in7[2] -pin notB out[2]
load net w8[3] -attr @rip out[3] -pin mux7 in7[3] -pin notB out[3]
load net w8[4] -attr @rip out[4] -pin mux7 in7[4] -pin notB out[4]
load net w8[5] -attr @rip out[5] -pin mux7 in7[5] -pin notB out[5]
load net w8[6] -attr @rip out[6] -pin mux7 in7[6] -pin notB out[6]
load net w8[7] -attr @rip out[7] -pin mux7 in7[7] -pin notB out[7]
load net w9 -pin add_sub cout -pin carryf cin
netloc w9 1 2 1 2920 734n
load net mux7|in1[0] -attr @rip in1[0] -attr @name in1[0] -hierPin mux7 in1[0] -pin mux7|out_i I0[0] -pin mux7|out_i I7[0]
load net mux7|in1[1] -attr @rip in1[1] -attr @name in1[1] -hierPin mux7 in1[1] -pin mux7|out_i I0[1] -pin mux7|out_i I7[1]
load net mux7|in1[2] -attr @rip in1[2] -attr @name in1[2] -hierPin mux7 in1[2] -pin mux7|out_i I0[2] -pin mux7|out_i I7[2]
load net mux7|in1[3] -attr @rip in1[3] -attr @name in1[3] -hierPin mux7 in1[3] -pin mux7|out_i I0[3] -pin mux7|out_i I7[3]
load net mux7|in1[4] -attr @rip in1[4] -attr @name in1[4] -hierPin mux7 in1[4] -pin mux7|out_i I0[4] -pin mux7|out_i I7[4]
load net mux7|in1[5] -attr @rip in1[5] -attr @name in1[5] -hierPin mux7 in1[5] -pin mux7|out_i I0[5] -pin mux7|out_i I7[5]
load net mux7|in1[6] -attr @rip in1[6] -attr @name in1[6] -hierPin mux7 in1[6] -pin mux7|out_i I0[6] -pin mux7|out_i I7[6]
load net mux7|in1[7] -attr @rip in1[7] -attr @name in1[7] -hierPin mux7 in1[7] -pin mux7|out_i I0[7] -pin mux7|out_i I7[7]
load net mux7|in2[0] -attr @rip in2[0] -attr @name in2[0] -hierPin mux7 in2[0] -pin mux7|out_i I1[0]
load net mux7|in2[1] -attr @rip in2[1] -attr @name in2[1] -hierPin mux7 in2[1] -pin mux7|out_i I1[1]
load net mux7|in2[2] -attr @rip in2[2] -attr @name in2[2] -hierPin mux7 in2[2] -pin mux7|out_i I1[2]
load net mux7|in2[3] -attr @rip in2[3] -attr @name in2[3] -hierPin mux7 in2[3] -pin mux7|out_i I1[3]
load net mux7|in2[4] -attr @rip in2[4] -attr @name in2[4] -hierPin mux7 in2[4] -pin mux7|out_i I1[4]
load net mux7|in2[5] -attr @rip in2[5] -attr @name in2[5] -hierPin mux7 in2[5] -pin mux7|out_i I1[5]
load net mux7|in2[6] -attr @rip in2[6] -attr @name in2[6] -hierPin mux7 in2[6] -pin mux7|out_i I1[6]
load net mux7|in2[7] -attr @rip in2[7] -attr @name in2[7] -hierPin mux7 in2[7] -pin mux7|out_i I1[7]
load net mux7|in3[0] -attr @rip in3[0] -attr @name in3[0] -hierPin mux7 in3[0] -pin mux7|out_i I2[0]
load net mux7|in3[1] -attr @rip in3[1] -attr @name in3[1] -hierPin mux7 in3[1] -pin mux7|out_i I2[1]
load net mux7|in3[2] -attr @rip in3[2] -attr @name in3[2] -hierPin mux7 in3[2] -pin mux7|out_i I2[2]
load net mux7|in3[3] -attr @rip in3[3] -attr @name in3[3] -hierPin mux7 in3[3] -pin mux7|out_i I2[3]
load net mux7|in3[4] -attr @rip in3[4] -attr @name in3[4] -hierPin mux7 in3[4] -pin mux7|out_i I2[4]
load net mux7|in3[5] -attr @rip in3[5] -attr @name in3[5] -hierPin mux7 in3[5] -pin mux7|out_i I2[5]
load net mux7|in3[6] -attr @rip in3[6] -attr @name in3[6] -hierPin mux7 in3[6] -pin mux7|out_i I2[6]
load net mux7|in3[7] -attr @rip in3[7] -attr @name in3[7] -hierPin mux7 in3[7] -pin mux7|out_i I2[7]
load net mux7|in4[0] -attr @rip in4[0] -attr @name in4[0] -hierPin mux7 in4[0] -pin mux7|out_i I3[0]
load net mux7|in4[1] -attr @rip in4[1] -attr @name in4[1] -hierPin mux7 in4[1] -pin mux7|out_i I3[1]
load net mux7|in4[2] -attr @rip in4[2] -attr @name in4[2] -hierPin mux7 in4[2] -pin mux7|out_i I3[2]
load net mux7|in4[3] -attr @rip in4[3] -attr @name in4[3] -hierPin mux7 in4[3] -pin mux7|out_i I3[3]
load net mux7|in4[4] -attr @rip in4[4] -attr @name in4[4] -hierPin mux7 in4[4] -pin mux7|out_i I3[4]
load net mux7|in4[5] -attr @rip in4[5] -attr @name in4[5] -hierPin mux7 in4[5] -pin mux7|out_i I3[5]
load net mux7|in4[6] -attr @rip in4[6] -attr @name in4[6] -hierPin mux7 in4[6] -pin mux7|out_i I3[6]
load net mux7|in4[7] -attr @rip in4[7] -attr @name in4[7] -hierPin mux7 in4[7] -pin mux7|out_i I3[7]
load net mux7|in5[0] -attr @rip in5[0] -attr @name in5[0] -hierPin mux7 in5[0] -pin mux7|out_i I4[0]
load net mux7|in5[1] -attr @rip in5[1] -attr @name in5[1] -hierPin mux7 in5[1] -pin mux7|out_i I4[1]
load net mux7|in5[2] -attr @rip in5[2] -attr @name in5[2] -hierPin mux7 in5[2] -pin mux7|out_i I4[2]
load net mux7|in5[3] -attr @rip in5[3] -attr @name in5[3] -hierPin mux7 in5[3] -pin mux7|out_i I4[3]
load net mux7|in5[4] -attr @rip in5[4] -attr @name in5[4] -hierPin mux7 in5[4] -pin mux7|out_i I4[4]
load net mux7|in5[5] -attr @rip in5[5] -attr @name in5[5] -hierPin mux7 in5[5] -pin mux7|out_i I4[5]
load net mux7|in5[6] -attr @rip in5[6] -attr @name in5[6] -hierPin mux7 in5[6] -pin mux7|out_i I4[6]
load net mux7|in5[7] -attr @rip in5[7] -attr @name in5[7] -hierPin mux7 in5[7] -pin mux7|out_i I4[7]
load net mux7|in6[0] -attr @rip in6[0] -attr @name in6[0] -hierPin mux7 in6[0] -pin mux7|out_i I5[0]
load net mux7|in6[1] -attr @rip in6[1] -attr @name in6[1] -hierPin mux7 in6[1] -pin mux7|out_i I5[1]
load net mux7|in6[2] -attr @rip in6[2] -attr @name in6[2] -hierPin mux7 in6[2] -pin mux7|out_i I5[2]
load net mux7|in6[3] -attr @rip in6[3] -attr @name in6[3] -hierPin mux7 in6[3] -pin mux7|out_i I5[3]
load net mux7|in6[4] -attr @rip in6[4] -attr @name in6[4] -hierPin mux7 in6[4] -pin mux7|out_i I5[4]
load net mux7|in6[5] -attr @rip in6[5] -attr @name in6[5] -hierPin mux7 in6[5] -pin mux7|out_i I5[5]
load net mux7|in6[6] -attr @rip in6[6] -attr @name in6[6] -hierPin mux7 in6[6] -pin mux7|out_i I5[6]
load net mux7|in6[7] -attr @rip in6[7] -attr @name in6[7] -hierPin mux7 in6[7] -pin mux7|out_i I5[7]
load net mux7|in7[0] -attr @rip in7[0] -attr @name in7[0] -hierPin mux7 in7[0] -pin mux7|out_i I6[0]
load net mux7|in7[1] -attr @rip in7[1] -attr @name in7[1] -hierPin mux7 in7[1] -pin mux7|out_i I6[1]
load net mux7|in7[2] -attr @rip in7[2] -attr @name in7[2] -hierPin mux7 in7[2] -pin mux7|out_i I6[2]
load net mux7|in7[3] -attr @rip in7[3] -attr @name in7[3] -hierPin mux7 in7[3] -pin mux7|out_i I6[3]
load net mux7|in7[4] -attr @rip in7[4] -attr @name in7[4] -hierPin mux7 in7[4] -pin mux7|out_i I6[4]
load net mux7|in7[5] -attr @rip in7[5] -attr @name in7[5] -hierPin mux7 in7[5] -pin mux7|out_i I6[5]
load net mux7|in7[6] -attr @rip in7[6] -attr @name in7[6] -hierPin mux7 in7[6] -pin mux7|out_i I6[6]
load net mux7|in7[7] -attr @rip in7[7] -attr @name in7[7] -hierPin mux7 in7[7] -pin mux7|out_i I6[7]
load net mux7|out[0] -attr @rip O[0] -attr @name out[0] -hierPin mux7 out[0] -pin mux7|out_i O[0]
load net mux7|out[1] -attr @rip O[1] -attr @name out[1] -hierPin mux7 out[1] -pin mux7|out_i O[1]
load net mux7|out[2] -attr @rip O[2] -attr @name out[2] -hierPin mux7 out[2] -pin mux7|out_i O[2]
load net mux7|out[3] -attr @rip O[3] -attr @name out[3] -hierPin mux7 out[3] -pin mux7|out_i O[3]
load net mux7|out[4] -attr @rip O[4] -attr @name out[4] -hierPin mux7 out[4] -pin mux7|out_i O[4]
load net mux7|out[5] -attr @rip O[5] -attr @name out[5] -hierPin mux7 out[5] -pin mux7|out_i O[5]
load net mux7|out[6] -attr @rip O[6] -attr @name out[6] -hierPin mux7 out[6] -pin mux7|out_i O[6]
load net mux7|out[7] -attr @rip O[7] -attr @name out[7] -hierPin mux7 out[7] -pin mux7|out_i O[7]
load net mux7|sel[0] -attr @rip sel[0] -attr @name sel[0] -hierPin mux7 sel[0] -pin mux7|out_i S[0]
load net mux7|sel[1] -attr @rip sel[1] -attr @name sel[1] -hierPin mux7 sel[1] -pin mux7|out_i S[1]
load net mux7|sel[2] -attr @rip sel[2] -attr @name sel[2] -hierPin mux7 sel[2] -pin mux7|out_i S[2]
load net andlogic|a[0] -attr @rip a[0] -attr @name a[0] -hierPin andlogic a[0] -pin andlogic|out_i I0[0]
load net andlogic|a[1] -attr @rip a[1] -attr @name a[1] -hierPin andlogic a[1] -pin andlogic|out_i I0[1]
load net andlogic|a[2] -attr @rip a[2] -attr @name a[2] -hierPin andlogic a[2] -pin andlogic|out_i I0[2]
load net andlogic|a[3] -attr @rip a[3] -attr @name a[3] -hierPin andlogic a[3] -pin andlogic|out_i I0[3]
load net andlogic|a[4] -attr @rip a[4] -attr @name a[4] -hierPin andlogic a[4] -pin andlogic|out_i I0[4]
load net andlogic|a[5] -attr @rip a[5] -attr @name a[5] -hierPin andlogic a[5] -pin andlogic|out_i I0[5]
load net andlogic|a[6] -attr @rip a[6] -attr @name a[6] -hierPin andlogic a[6] -pin andlogic|out_i I0[6]
load net andlogic|a[7] -attr @rip a[7] -attr @name a[7] -hierPin andlogic a[7] -pin andlogic|out_i I0[7]
load net andlogic|b[0] -attr @rip b[0] -attr @name b[0] -hierPin andlogic b[0] -pin andlogic|out_i I1[0]
load net andlogic|b[1] -attr @rip b[1] -attr @name b[1] -hierPin andlogic b[1] -pin andlogic|out_i I1[1]
load net andlogic|b[2] -attr @rip b[2] -attr @name b[2] -hierPin andlogic b[2] -pin andlogic|out_i I1[2]
load net andlogic|b[3] -attr @rip b[3] -attr @name b[3] -hierPin andlogic b[3] -pin andlogic|out_i I1[3]
load net andlogic|b[4] -attr @rip b[4] -attr @name b[4] -hierPin andlogic b[4] -pin andlogic|out_i I1[4]
load net andlogic|b[5] -attr @rip b[5] -attr @name b[5] -hierPin andlogic b[5] -pin andlogic|out_i I1[5]
load net andlogic|b[6] -attr @rip b[6] -attr @name b[6] -hierPin andlogic b[6] -pin andlogic|out_i I1[6]
load net andlogic|b[7] -attr @rip b[7] -attr @name b[7] -hierPin andlogic b[7] -pin andlogic|out_i I1[7]
load net andlogic|out[0] -attr @rip O[0] -attr @name out[0] -hierPin andlogic out[0] -pin andlogic|out_i O[0]
load net andlogic|out[1] -attr @rip O[1] -attr @name out[1] -hierPin andlogic out[1] -pin andlogic|out_i O[1]
load net andlogic|out[2] -attr @rip O[2] -attr @name out[2] -hierPin andlogic out[2] -pin andlogic|out_i O[2]
load net andlogic|out[3] -attr @rip O[3] -attr @name out[3] -hierPin andlogic out[3] -pin andlogic|out_i O[3]
load net andlogic|out[4] -attr @rip O[4] -attr @name out[4] -hierPin andlogic out[4] -pin andlogic|out_i O[4]
load net andlogic|out[5] -attr @rip O[5] -attr @name out[5] -hierPin andlogic out[5] -pin andlogic|out_i O[5]
load net andlogic|out[6] -attr @rip O[6] -attr @name out[6] -hierPin andlogic out[6] -pin andlogic|out_i O[6]
load net andlogic|out[7] -attr @rip O[7] -attr @name out[7] -hierPin andlogic out[7] -pin andlogic|out_i O[7]
load net notA|in[0] -attr @rip in[0] -attr @name in[0] -hierPin notA in[0] -pin notA|out_i I0[0]
load net notA|in[1] -attr @rip in[1] -attr @name in[1] -hierPin notA in[1] -pin notA|out_i I0[1]
load net notA|in[2] -attr @rip in[2] -attr @name in[2] -hierPin notA in[2] -pin notA|out_i I0[2]
load net notA|in[3] -attr @rip in[3] -attr @name in[3] -hierPin notA in[3] -pin notA|out_i I0[3]
load net notA|in[4] -attr @rip in[4] -attr @name in[4] -hierPin notA in[4] -pin notA|out_i I0[4]
load net notA|in[5] -attr @rip in[5] -attr @name in[5] -hierPin notA in[5] -pin notA|out_i I0[5]
load net notA|in[6] -attr @rip in[6] -attr @name in[6] -hierPin notA in[6] -pin notA|out_i I0[6]
load net notA|in[7] -attr @rip in[7] -attr @name in[7] -hierPin notA in[7] -pin notA|out_i I0[7]
load net notA|out[0] -attr @rip O[0] -attr @name out[0] -hierPin notA out[0] -pin notA|out_i O[0]
load net notA|out[1] -attr @rip O[1] -attr @name out[1] -hierPin notA out[1] -pin notA|out_i O[1]
load net notA|out[2] -attr @rip O[2] -attr @name out[2] -hierPin notA out[2] -pin notA|out_i O[2]
load net notA|out[3] -attr @rip O[3] -attr @name out[3] -hierPin notA out[3] -pin notA|out_i O[3]
load net notA|out[4] -attr @rip O[4] -attr @name out[4] -hierPin notA out[4] -pin notA|out_i O[4]
load net notA|out[5] -attr @rip O[5] -attr @name out[5] -hierPin notA out[5] -pin notA|out_i O[5]
load net notA|out[6] -attr @rip O[6] -attr @name out[6] -hierPin notA out[6] -pin notA|out_i O[6]
load net notA|out[7] -attr @rip O[7] -attr @name out[7] -hierPin notA out[7] -pin notA|out_i O[7]
load net shra|<const1> -power -attr @name <const1> -pin shra|out_i I2
load net shra|a[0] -attr @rip a[0] -attr @name a[0] -hierPin shra a[0] -pin shra|out_i I0[0]
load net shra|a[1] -attr @rip a[1] -attr @name a[1] -hierPin shra a[1] -pin shra|out_i I0[1]
load net shra|a[2] -attr @rip a[2] -attr @name a[2] -hierPin shra a[2] -pin shra|out_i I0[2]
load net shra|a[3] -attr @rip a[3] -attr @name a[3] -hierPin shra a[3] -pin shra|out_i I0[3]
load net shra|a[4] -attr @rip a[4] -attr @name a[4] -hierPin shra a[4] -pin shra|out_i I0[4]
load net shra|a[5] -attr @rip a[5] -attr @name a[5] -hierPin shra a[5] -pin shra|out_i I0[5]
load net shra|a[6] -attr @rip a[6] -attr @name a[6] -hierPin shra a[6] -pin shra|out_i I0[6]
load net shra|a[7] -attr @rip a[7] -attr @name a[7] -hierPin shra a[7] -pin shra|out_i I0[7]
load net shra|b[0] -attr @rip b[0] -attr @name b[0] -hierPin shra b[0] -pin shra|out_i I1[0]
load net shra|b[1] -attr @rip b[1] -attr @name b[1] -hierPin shra b[1] -pin shra|out_i I1[1]
load net shra|b[2] -attr @rip b[2] -attr @name b[2] -hierPin shra b[2] -pin shra|out_i I1[2]
load net shra|out[0] -attr @rip O[0] -attr @name out[0] -hierPin shra out[0] -pin shra|out_i O[0]
load net shra|out[1] -attr @rip O[1] -attr @name out[1] -hierPin shra out[1] -pin shra|out_i O[1]
load net shra|out[2] -attr @rip O[2] -attr @name out[2] -hierPin shra out[2] -pin shra|out_i O[2]
load net shra|out[3] -attr @rip O[3] -attr @name out[3] -hierPin shra out[3] -pin shra|out_i O[3]
load net shra|out[4] -attr @rip O[4] -attr @name out[4] -hierPin shra out[4] -pin shra|out_i O[4]
load net shra|out[5] -attr @rip O[5] -attr @name out[5] -hierPin shra out[5] -pin shra|out_i O[5]
load net shra|out[6] -attr @rip O[6] -attr @name out[6] -hierPin shra out[6] -pin shra|out_i O[6]
load net shra|out[7] -attr @rip O[7] -attr @name out[7] -hierPin shra out[7] -pin shra|out_i O[7]
load net shla|<const1> -power -attr @name <const1> -pin shla|out_i I2
load net shla|a[0] -attr @rip a[0] -attr @name a[0] -hierPin shla a[0] -pin shla|out_i I0[0]
load net shla|a[1] -attr @rip a[1] -attr @name a[1] -hierPin shla a[1] -pin shla|out_i I0[1]
load net shla|a[2] -attr @rip a[2] -attr @name a[2] -hierPin shla a[2] -pin shla|out_i I0[2]
load net shla|a[3] -attr @rip a[3] -attr @name a[3] -hierPin shla a[3] -pin shla|out_i I0[3]
load net shla|a[4] -attr @rip a[4] -attr @name a[4] -hierPin shla a[4] -pin shla|out_i I0[4]
load net shla|a[5] -attr @rip a[5] -attr @name a[5] -hierPin shla a[5] -pin shla|out_i I0[5]
load net shla|a[6] -attr @rip a[6] -attr @name a[6] -hierPin shla a[6] -pin shla|out_i I0[6]
load net shla|a[7] -attr @rip a[7] -attr @name a[7] -hierPin shla a[7] -pin shla|out_i I0[7]
load net shla|b[0] -attr @rip b[0] -attr @name b[0] -hierPin shla b[0] -pin shla|out_i I1[0]
load net shla|b[1] -attr @rip b[1] -attr @name b[1] -hierPin shla b[1] -pin shla|out_i I1[1]
load net shla|b[2] -attr @rip b[2] -attr @name b[2] -hierPin shla b[2] -pin shla|out_i I1[2]
load net shla|out[0] -attr @rip O[0] -attr @name out[0] -hierPin shla out[0] -pin shla|out_i O[0]
load net shla|out[1] -attr @rip O[1] -attr @name out[1] -hierPin shla out[1] -pin shla|out_i O[1]
load net shla|out[2] -attr @rip O[2] -attr @name out[2] -hierPin shla out[2] -pin shla|out_i O[2]
load net shla|out[3] -attr @rip O[3] -attr @name out[3] -hierPin shla out[3] -pin shla|out_i O[3]
load net shla|out[4] -attr @rip O[4] -attr @name out[4] -hierPin shla out[4] -pin shla|out_i O[4]
load net shla|out[5] -attr @rip O[5] -attr @name out[5] -hierPin shla out[5] -pin shla|out_i O[5]
load net shla|out[6] -attr @rip O[6] -attr @name out[6] -hierPin shla out[6] -pin shla|out_i O[6]
load net shla|out[7] -attr @rip O[7] -attr @name out[7] -hierPin shla out[7] -pin shla|out_i O[7]
load net xorab|a[0] -attr @rip a[0] -attr @name a[0] -hierPin xorab a[0] -pin xorab|out_i I0[0]
load net xorab|a[1] -attr @rip a[1] -attr @name a[1] -hierPin xorab a[1] -pin xorab|out_i I0[1]
load net xorab|a[2] -attr @rip a[2] -attr @name a[2] -hierPin xorab a[2] -pin xorab|out_i I0[2]
load net xorab|a[3] -attr @rip a[3] -attr @name a[3] -hierPin xorab a[3] -pin xorab|out_i I0[3]
load net xorab|a[4] -attr @rip a[4] -attr @name a[4] -hierPin xorab a[4] -pin xorab|out_i I0[4]
load net xorab|a[5] -attr @rip a[5] -attr @name a[5] -hierPin xorab a[5] -pin xorab|out_i I0[5]
load net xorab|a[6] -attr @rip a[6] -attr @name a[6] -hierPin xorab a[6] -pin xorab|out_i I0[6]
load net xorab|a[7] -attr @rip a[7] -attr @name a[7] -hierPin xorab a[7] -pin xorab|out_i I0[7]
load net xorab|b[0] -attr @rip b[0] -attr @name b[0] -hierPin xorab b[0] -pin xorab|out_i I1[0]
load net xorab|b[1] -attr @rip b[1] -attr @name b[1] -hierPin xorab b[1] -pin xorab|out_i I1[1]
load net xorab|b[2] -attr @rip b[2] -attr @name b[2] -hierPin xorab b[2] -pin xorab|out_i I1[2]
load net xorab|b[3] -attr @rip b[3] -attr @name b[3] -hierPin xorab b[3] -pin xorab|out_i I1[3]
load net xorab|b[4] -attr @rip b[4] -attr @name b[4] -hierPin xorab b[4] -pin xorab|out_i I1[4]
load net xorab|b[5] -attr @rip b[5] -attr @name b[5] -hierPin xorab b[5] -pin xorab|out_i I1[5]
load net xorab|b[6] -attr @rip b[6] -attr @name b[6] -hierPin xorab b[6] -pin xorab|out_i I1[6]
load net xorab|b[7] -attr @rip b[7] -attr @name b[7] -hierPin xorab b[7] -pin xorab|out_i I1[7]
load net xorab|out[0] -attr @rip O[0] -attr @name out[0] -hierPin xorab out[0] -pin xorab|out_i O[0]
load net xorab|out[1] -attr @rip O[1] -attr @name out[1] -hierPin xorab out[1] -pin xorab|out_i O[1]
load net xorab|out[2] -attr @rip O[2] -attr @name out[2] -hierPin xorab out[2] -pin xorab|out_i O[2]
load net xorab|out[3] -attr @rip O[3] -attr @name out[3] -hierPin xorab out[3] -pin xorab|out_i O[3]
load net xorab|out[4] -attr @rip O[4] -attr @name out[4] -hierPin xorab out[4] -pin xorab|out_i O[4]
load net xorab|out[5] -attr @rip O[5] -attr @name out[5] -hierPin xorab out[5] -pin xorab|out_i O[5]
load net xorab|out[6] -attr @rip O[6] -attr @name out[6] -hierPin xorab out[6] -pin xorab|out_i O[6]
load net xorab|out[7] -attr @rip O[7] -attr @name out[7] -hierPin xorab out[7] -pin xorab|out_i O[7]
load net notB|in[0] -attr @rip in[0] -attr @name in[0] -hierPin notB in[0] -pin notB|out_i I0[0]
load net notB|in[1] -attr @rip in[1] -attr @name in[1] -hierPin notB in[1] -pin notB|out_i I0[1]
load net notB|in[2] -attr @rip in[2] -attr @name in[2] -hierPin notB in[2] -pin notB|out_i I0[2]
load net notB|in[3] -attr @rip in[3] -attr @name in[3] -hierPin notB in[3] -pin notB|out_i I0[3]
load net notB|in[4] -attr @rip in[4] -attr @name in[4] -hierPin notB in[4] -pin notB|out_i I0[4]
load net notB|in[5] -attr @rip in[5] -attr @name in[5] -hierPin notB in[5] -pin notB|out_i I0[5]
load net notB|in[6] -attr @rip in[6] -attr @name in[6] -hierPin notB in[6] -pin notB|out_i I0[6]
load net notB|in[7] -attr @rip in[7] -attr @name in[7] -hierPin notB in[7] -pin notB|out_i I0[7]
load net notB|out[0] -attr @rip O[0] -attr @name out[0] -hierPin notB out[0] -pin notB|out_i O[0]
load net notB|out[1] -attr @rip O[1] -attr @name out[1] -hierPin notB out[1] -pin notB|out_i O[1]
load net notB|out[2] -attr @rip O[2] -attr @name out[2] -hierPin notB out[2] -pin notB|out_i O[2]
load net notB|out[3] -attr @rip O[3] -attr @name out[3] -hierPin notB out[3] -pin notB|out_i O[3]
load net notB|out[4] -attr @rip O[4] -attr @name out[4] -hierPin notB out[4] -pin notB|out_i O[4]
load net notB|out[5] -attr @rip O[5] -attr @name out[5] -hierPin notB out[5] -pin notB|out_i O[5]
load net notB|out[6] -attr @rip O[6] -attr @name out[6] -hierPin notB out[6] -pin notB|out_i O[6]
load net notB|out[7] -attr @rip O[7] -attr @name out[7] -hierPin notB out[7] -pin notB|out_i O[7]
load net add_sub|a1[0] -attr @rip a1[0] -attr @name a1[0] -hierPin add_sub a1[0] -pin add_sub|rezultat a1[0]
load net add_sub|a1[1] -attr @rip a1[1] -attr @name a1[1] -hierPin add_sub a1[1] -pin add_sub|rezultat a1[1]
load net add_sub|a1[2] -attr @rip a1[2] -attr @name a1[2] -hierPin add_sub a1[2] -pin add_sub|rezultat a1[2]
load net add_sub|a1[3] -attr @rip a1[3] -attr @name a1[3] -hierPin add_sub a1[3] -pin add_sub|rezultat a1[3]
load net add_sub|a2[0] -attr @rip a2[0] -attr @name a2[0] -hierPin add_sub a2[0] -pin add_sub|rezultat a2[0]
load net add_sub|a2[1] -attr @rip a2[1] -attr @name a2[1] -hierPin add_sub a2[1] -pin add_sub|rezultat a2[1]
load net add_sub|a2[2] -attr @rip a2[2] -attr @name a2[2] -hierPin add_sub a2[2] -pin add_sub|rezultat a2[2]
load net add_sub|a2[3] -attr @rip a2[3] -attr @name a2[3] -hierPin add_sub a2[3] -pin add_sub|rezultat a2[3]
load net add_sub|b[0] -attr @rip b[0] -attr @name b[0] -hierPin add_sub b[0] -pin add_sub|scadere b[0]
load net add_sub|b[1] -attr @rip b[1] -attr @name b[1] -hierPin add_sub b[1] -pin add_sub|scadere b[1]
load net add_sub|b[2] -attr @rip b[2] -attr @name b[2] -hierPin add_sub b[2] -pin add_sub|scadere b[2]
load net add_sub|b[3] -attr @rip b[3] -attr @name b[3] -hierPin add_sub b[3] -pin add_sub|scadere b[3]
load net add_sub|b[4] -attr @rip b[4] -attr @name b[4] -hierPin add_sub b[4] -pin add_sub|scadere b[4]
load net add_sub|b[5] -attr @rip b[5] -attr @name b[5] -hierPin add_sub b[5] -pin add_sub|scadere b[5]
load net add_sub|b[6] -attr @rip b[6] -attr @name b[6] -hierPin add_sub b[6] -pin add_sub|scadere b[6]
load net add_sub|b[7] -attr @rip b[7] -attr @name b[7] -hierPin add_sub b[7] -pin add_sub|scadere b[7]
load net add_sub|cout -attr @name cout -hierPin add_sub cout -pin add_sub|rezultat cout
netloc add_sub|cout 1 2 1 2700 958n
load net add_sub|op[0] -attr @rip sl[0] -attr @name op[0] -hierPin add_sub op[0] -pin add_sub|rezultat sl[0]
load net add_sub|op[1] -attr @rip sl[1] -attr @name op[1] -hierPin add_sub op[1] -pin add_sub|rezultat sl[1]
load net add_sub|op[2] -attr @rip sl[2] -attr @name op[2] -hierPin add_sub op[2] -pin add_sub|rezultat sl[2]
load net add_sub|op[3] -attr @rip sl[3] -attr @name op[3] -hierPin add_sub op[3] -pin add_sub|rezultat sl[3]
load net add_sub|op[4] -attr @rip sh[0] -attr @name op[4] -hierPin add_sub op[4] -pin add_sub|rezultat sh[0]
load net add_sub|op[5] -attr @rip sh[1] -attr @name op[5] -hierPin add_sub op[5] -pin add_sub|rezultat sh[1]
load net add_sub|op[6] -attr @rip sh[2] -attr @name op[6] -hierPin add_sub op[6] -pin add_sub|rezultat sh[2]
load net add_sub|op[7] -attr @rip sh[3] -attr @name op[7] -hierPin add_sub op[7] -pin add_sub|rezultat sh[3]
load net add_sub|sel[0] -attr @rip sel[0] -attr @name sel[0] -hierPin add_sub sel[0] -pin add_sub|scadere sel[0]
load net add_sub|sel[1] -attr @rip sel[1] -attr @name sel[1] -hierPin add_sub sel[1] -pin add_sub|scadere sel[1]
load net add_sub|sel[2] -attr @rip sel[2] -attr @name sel[2] -hierPin add_sub sel[2] -pin add_sub|scadere sel[2]
load net add_sub|w1[0] -attr @rip bsub[0] -attr @name w1[0] -pin add_sub|rezultat b2[0] -pin add_sub|scadere bsub[0]
load net add_sub|w1[1] -attr @rip bsub[1] -attr @name w1[1] -pin add_sub|rezultat b2[1] -pin add_sub|scadere bsub[1]
load net add_sub|w1[2] -attr @rip bsub[2] -attr @name w1[2] -pin add_sub|rezultat b2[2] -pin add_sub|scadere bsub[2]
load net add_sub|w1[3] -attr @rip bsub[3] -attr @name w1[3] -pin add_sub|rezultat b2[3] -pin add_sub|scadere bsub[3]
load net add_sub|w1[4] -attr @rip bsub[4] -attr @name w1[4] -pin add_sub|rezultat b1[0] -pin add_sub|scadere bsub[4]
load net add_sub|w1[5] -attr @rip bsub[5] -attr @name w1[5] -pin add_sub|rezultat b1[1] -pin add_sub|scadere bsub[5]
load net add_sub|w1[6] -attr @rip bsub[6] -attr @name w1[6] -pin add_sub|rezultat b1[2] -pin add_sub|scadere bsub[6]
load net add_sub|w1[7] -attr @rip bsub[7] -attr @name w1[7] -pin add_sub|rezultat b1[3] -pin add_sub|scadere bsub[7]
load net add_sub|wc -attr @name wc -pin add_sub|rezultat ci -pin add_sub|scadere cout
netloc add_sub|wc 1 1 1 1180 1126n
load net Rom|in[0] -attr @rip in[0] -attr @name in[0] -hierPin Rom in[0] -pin Rom|opcode_i A[0]
load net Rom|in[1] -attr @rip in[1] -attr @name in[1] -hierPin Rom in[1] -pin Rom|opcode_i A[1]
load net Rom|in[2] -attr @rip in[2] -attr @name in[2] -hierPin Rom in[2] -pin Rom|opcode_i A[2]
load net Rom|opcode[0] -attr @rip O[0] -attr @name opcode[0] -hierPin Rom opcode[0] -pin Rom|opcode_i O[0]
load net Rom|opcode[1] -attr @rip O[1] -attr @name opcode[1] -hierPin Rom opcode[1] -pin Rom|opcode_i O[1]
load net Rom|opcode[2] -attr @rip O[2] -attr @name opcode[2] -hierPin Rom opcode[2] -pin Rom|opcode_i O[2]
load net Rom|opcode[3] -attr @rip O[3] -attr @name opcode[3] -hierPin Rom opcode[3] -pin Rom|opcode_i O[3]
load net Rom|opcode[4] -attr @rip O[4] -attr @name opcode[4] -hierPin Rom opcode[4] -pin Rom|opcode_i O[4]
load net Rom|opcode[5] -attr @rip O[5] -attr @name opcode[5] -hierPin Rom opcode[5] -pin Rom|opcode_i O[5]
load net Rom|opcode[6] -attr @rip O[6] -attr @name opcode[6] -hierPin Rom opcode[6] -pin Rom|opcode_i O[6]
load net Rom|opcode[7] -attr @rip O[7] -attr @name opcode[7] -hierPin Rom opcode[7] -pin Rom|opcode_i O[7]
load net add_sub|scadere|b[0] -attr @rip b[0] -attr @name b[0] -hierPin add_sub|scadere b[0] -pin add_sub|scadere|bsub0_i I0[0] -pin add_sub|scadere|bsub_i I1[0]
load net add_sub|scadere|b[1] -attr @rip b[1] -attr @name b[1] -hierPin add_sub|scadere b[1] -pin add_sub|scadere|bsub0_i I0[1] -pin add_sub|scadere|bsub_i I1[1]
load net add_sub|scadere|b[2] -attr @rip b[2] -attr @name b[2] -hierPin add_sub|scadere b[2] -pin add_sub|scadere|bsub0_i I0[2] -pin add_sub|scadere|bsub_i I1[2]
load net add_sub|scadere|b[3] -attr @rip b[3] -attr @name b[3] -hierPin add_sub|scadere b[3] -pin add_sub|scadere|bsub0_i I0[3] -pin add_sub|scadere|bsub_i I1[3]
load net add_sub|scadere|b[4] -attr @rip b[4] -attr @name b[4] -hierPin add_sub|scadere b[4] -pin add_sub|scadere|bsub0_i I0[4] -pin add_sub|scadere|bsub_i I1[4]
load net add_sub|scadere|b[5] -attr @rip b[5] -attr @name b[5] -hierPin add_sub|scadere b[5] -pin add_sub|scadere|bsub0_i I0[5] -pin add_sub|scadere|bsub_i I1[5]
load net add_sub|scadere|b[6] -attr @rip b[6] -attr @name b[6] -hierPin add_sub|scadere b[6] -pin add_sub|scadere|bsub0_i I0[6] -pin add_sub|scadere|bsub_i I1[6]
load net add_sub|scadere|b[7] -attr @rip b[7] -attr @name b[7] -hierPin add_sub|scadere b[7] -pin add_sub|scadere|bsub0_i I0[7] -pin add_sub|scadere|bsub_i I1[7]
load net add_sub|scadere|bsub0_i_n_0 -attr @rip O[7] -attr @name bsub0_i_n_0 -pin add_sub|scadere|bsub0_i O[7] -pin add_sub|scadere|bsub_i I0[7]
load net add_sub|scadere|bsub0_i_n_1 -attr @rip O[6] -attr @name bsub0_i_n_1 -pin add_sub|scadere|bsub0_i O[6] -pin add_sub|scadere|bsub_i I0[6]
load net add_sub|scadere|bsub0_i_n_2 -attr @rip O[5] -attr @name bsub0_i_n_2 -pin add_sub|scadere|bsub0_i O[5] -pin add_sub|scadere|bsub_i I0[5]
load net add_sub|scadere|bsub0_i_n_3 -attr @rip O[4] -attr @name bsub0_i_n_3 -pin add_sub|scadere|bsub0_i O[4] -pin add_sub|scadere|bsub_i I0[4]
load net add_sub|scadere|bsub0_i_n_4 -attr @rip O[3] -attr @name bsub0_i_n_4 -pin add_sub|scadere|bsub0_i O[3] -pin add_sub|scadere|bsub_i I0[3]
load net add_sub|scadere|bsub0_i_n_5 -attr @rip O[2] -attr @name bsub0_i_n_5 -pin add_sub|scadere|bsub0_i O[2] -pin add_sub|scadere|bsub_i I0[2]
load net add_sub|scadere|bsub0_i_n_6 -attr @rip O[1] -attr @name bsub0_i_n_6 -pin add_sub|scadere|bsub0_i O[1] -pin add_sub|scadere|bsub_i I0[1]
load net add_sub|scadere|bsub0_i_n_7 -attr @rip O[0] -attr @name bsub0_i_n_7 -pin add_sub|scadere|bsub0_i O[0] -pin add_sub|scadere|bsub_i I0[0]
load net add_sub|scadere|bsub[0] -attr @rip O[0] -attr @name bsub[0] -hierPin add_sub|scadere bsub[0] -pin add_sub|scadere|bsub_i O[0]
load net add_sub|scadere|bsub[1] -attr @rip O[1] -attr @name bsub[1] -hierPin add_sub|scadere bsub[1] -pin add_sub|scadere|bsub_i O[1]
load net add_sub|scadere|bsub[2] -attr @rip O[2] -attr @name bsub[2] -hierPin add_sub|scadere bsub[2] -pin add_sub|scadere|bsub_i O[2]
load net add_sub|scadere|bsub[3] -attr @rip O[3] -attr @name bsub[3] -hierPin add_sub|scadere bsub[3] -pin add_sub|scadere|bsub_i O[3]
load net add_sub|scadere|bsub[4] -attr @rip O[4] -attr @name bsub[4] -hierPin add_sub|scadere bsub[4] -pin add_sub|scadere|bsub_i O[4]
load net add_sub|scadere|bsub[5] -attr @rip O[5] -attr @name bsub[5] -hierPin add_sub|scadere bsub[5] -pin add_sub|scadere|bsub_i O[5]
load net add_sub|scadere|bsub[6] -attr @rip O[6] -attr @name bsub[6] -hierPin add_sub|scadere bsub[6] -pin add_sub|scadere|bsub_i O[6]
load net add_sub|scadere|bsub[7] -attr @rip O[7] -attr @name bsub[7] -hierPin add_sub|scadere bsub[7] -pin add_sub|scadere|bsub_i O[7]
load net add_sub|scadere|cout -attr @name cout -hierPin add_sub|scadere cout -pin add_sub|scadere|cout_i O
netloc add_sub|scadere|cout 1 2 1 N 1156
load net add_sub|scadere|sel[0] -attr @rip sel[0] -attr @name sel[0] -hierPin add_sub|scadere sel[0] -pin add_sub|scadere|bsub_i S[0] -pin add_sub|scadere|cout_i A[0]
load net add_sub|scadere|sel[1] -attr @rip sel[1] -attr @name sel[1] -hierPin add_sub|scadere sel[1] -pin add_sub|scadere|bsub_i S[1] -pin add_sub|scadere|cout_i A[1]
load net add_sub|scadere|sel[2] -attr @rip sel[2] -attr @name sel[2] -hierPin add_sub|scadere sel[2] -pin add_sub|scadere|bsub_i S[2] -pin add_sub|scadere|cout_i A[2]
load net add_sub|rezultat|a1[0] -attr @rip a1[0] -attr @name a1[0] -hierPin add_sub|rezultat a1[0] -pin add_sub|rezultat|adderh a[0]
load net add_sub|rezultat|a1[1] -attr @rip a1[1] -attr @name a1[1] -hierPin add_sub|rezultat a1[1] -pin add_sub|rezultat|adderh a[1]
load net add_sub|rezultat|a1[2] -attr @rip a1[2] -attr @name a1[2] -hierPin add_sub|rezultat a1[2] -pin add_sub|rezultat|adderh a[2]
load net add_sub|rezultat|a1[3] -attr @rip a1[3] -attr @name a1[3] -hierPin add_sub|rezultat a1[3] -pin add_sub|rezultat|adderh a[3]
load net add_sub|rezultat|a2[0] -attr @rip a2[0] -attr @name a2[0] -hierPin add_sub|rezultat a2[0] -pin add_sub|rezultat|adderl a[0]
load net add_sub|rezultat|a2[1] -attr @rip a2[1] -attr @name a2[1] -hierPin add_sub|rezultat a2[1] -pin add_sub|rezultat|adderl a[1]
load net add_sub|rezultat|a2[2] -attr @rip a2[2] -attr @name a2[2] -hierPin add_sub|rezultat a2[2] -pin add_sub|rezultat|adderl a[2]
load net add_sub|rezultat|a2[3] -attr @rip a2[3] -attr @name a2[3] -hierPin add_sub|rezultat a2[3] -pin add_sub|rezultat|adderl a[3]
load net add_sub|rezultat|b1[0] -attr @rip b1[0] -attr @name b1[0] -hierPin add_sub|rezultat b1[0] -pin add_sub|rezultat|adderh b[0]
load net add_sub|rezultat|b1[1] -attr @rip b1[1] -attr @name b1[1] -hierPin add_sub|rezultat b1[1] -pin add_sub|rezultat|adderh b[1]
load net add_sub|rezultat|b1[2] -attr @rip b1[2] -attr @name b1[2] -hierPin add_sub|rezultat b1[2] -pin add_sub|rezultat|adderh b[2]
load net add_sub|rezultat|b1[3] -attr @rip b1[3] -attr @name b1[3] -hierPin add_sub|rezultat b1[3] -pin add_sub|rezultat|adderh b[3]
load net add_sub|rezultat|b2[0] -attr @rip b2[0] -attr @name b2[0] -hierPin add_sub|rezultat b2[0] -pin add_sub|rezultat|adderl b[0]
load net add_sub|rezultat|b2[1] -attr @rip b2[1] -attr @name b2[1] -hierPin add_sub|rezultat b2[1] -pin add_sub|rezultat|adderl b[1]
load net add_sub|rezultat|b2[2] -attr @rip b2[2] -attr @name b2[2] -hierPin add_sub|rezultat b2[2] -pin add_sub|rezultat|adderl b[2]
load net add_sub|rezultat|b2[3] -attr @rip b2[3] -attr @name b2[3] -hierPin add_sub|rezultat b2[3] -pin add_sub|rezultat|adderl b[3]
load net add_sub|rezultat|ci -attr @name ci -hierPin add_sub|rezultat ci -pin add_sub|rezultat|adderl ci
netloc add_sub|rezultat|ci 1 0 1 1340 1050n
load net add_sub|rezultat|cout -attr @name cout -hierPin add_sub|rezultat cout -pin add_sub|rezultat|adderh cout
netloc add_sub|rezultat|cout 1 2 1 2580 966n
load net add_sub|rezultat|sh[0] -attr @rip s[0] -attr @name sh[0] -hierPin add_sub|rezultat sh[0] -pin add_sub|rezultat|adderh s[0]
load net add_sub|rezultat|sh[1] -attr @rip s[1] -attr @name sh[1] -hierPin add_sub|rezultat sh[1] -pin add_sub|rezultat|adderh s[1]
load net add_sub|rezultat|sh[2] -attr @rip s[2] -attr @name sh[2] -hierPin add_sub|rezultat sh[2] -pin add_sub|rezultat|adderh s[2]
load net add_sub|rezultat|sh[3] -attr @rip s[3] -attr @name sh[3] -hierPin add_sub|rezultat sh[3] -pin add_sub|rezultat|adderh s[3]
load net add_sub|rezultat|sl[0] -attr @rip s[0] -attr @name sl[0] -hierPin add_sub|rezultat sl[0] -pin add_sub|rezultat|adderl s[0]
load net add_sub|rezultat|sl[1] -attr @rip s[1] -attr @name sl[1] -hierPin add_sub|rezultat sl[1] -pin add_sub|rezultat|adderl s[1]
load net add_sub|rezultat|sl[2] -attr @rip s[2] -attr @name sl[2] -hierPin add_sub|rezultat sl[2] -pin add_sub|rezultat|adderl s[2]
load net add_sub|rezultat|sl[3] -attr @rip s[3] -attr @name sl[3] -hierPin add_sub|rezultat sl[3] -pin add_sub|rezultat|adderl s[3]
load net add_sub|rezultat|w -attr @name w -pin add_sub|rezultat|adderh ci -pin add_sub|rezultat|adderl cout
netloc add_sub|rezultat|w 1 1 1 1980 1010n
load net add_sub|rezultat|adderl|a[0] -attr @rip a[0] -attr @name a[0] -hierPin add_sub|rezultat|adderl a[0] -pin add_sub|rezultat|adderl|cout1_i I0[0]
load net add_sub|rezultat|adderl|a[1] -attr @rip a[1] -attr @name a[1] -hierPin add_sub|rezultat|adderl a[1] -pin add_sub|rezultat|adderl|cout1_i I0[1]
load net add_sub|rezultat|adderl|a[2] -attr @rip a[2] -attr @name a[2] -hierPin add_sub|rezultat|adderl a[2] -pin add_sub|rezultat|adderl|cout1_i I0[2]
load net add_sub|rezultat|adderl|a[3] -attr @rip a[3] -attr @name a[3] -hierPin add_sub|rezultat|adderl a[3] -pin add_sub|rezultat|adderl|cout1_i I0[3]
load net add_sub|rezultat|adderl|b[0] -attr @rip b[0] -attr @name b[0] -hierPin add_sub|rezultat|adderl b[0] -pin add_sub|rezultat|adderl|cout1_i I1[0]
load net add_sub|rezultat|adderl|b[1] -attr @rip b[1] -attr @name b[1] -hierPin add_sub|rezultat|adderl b[1] -pin add_sub|rezultat|adderl|cout1_i I1[1]
load net add_sub|rezultat|adderl|b[2] -attr @rip b[2] -attr @name b[2] -hierPin add_sub|rezultat|adderl b[2] -pin add_sub|rezultat|adderl|cout1_i I1[2]
load net add_sub|rezultat|adderl|b[3] -attr @rip b[3] -attr @name b[3] -hierPin add_sub|rezultat|adderl b[3] -pin add_sub|rezultat|adderl|cout1_i I1[3]
load net add_sub|rezultat|adderl|ci -attr @name ci -hierPin add_sub|rezultat|adderl ci -pin add_sub|rezultat|adderl|cout0_i I1
netloc add_sub|rezultat|adderl|ci 1 0 2 NJ 1050 N
load net add_sub|rezultat|adderl|cout -attr @rip O[4] -attr @name cout -hierPin add_sub|rezultat|adderl cout -pin add_sub|rezultat|adderl|cout0_i O[4]
load net add_sub|rezultat|adderl|cout1[0] -attr @rip O[0] -attr @name cout1[0] -pin add_sub|rezultat|adderl|cout0_i I0[0] -pin add_sub|rezultat|adderl|cout1_i O[0]
load net add_sub|rezultat|adderl|cout1[1] -attr @rip O[1] -attr @name cout1[1] -pin add_sub|rezultat|adderl|cout0_i I0[1] -pin add_sub|rezultat|adderl|cout1_i O[1]
load net add_sub|rezultat|adderl|cout1[2] -attr @rip O[2] -attr @name cout1[2] -pin add_sub|rezultat|adderl|cout0_i I0[2] -pin add_sub|rezultat|adderl|cout1_i O[2]
load net add_sub|rezultat|adderl|cout1[3] -attr @rip O[3] -attr @name cout1[3] -pin add_sub|rezultat|adderl|cout0_i I0[3] -pin add_sub|rezultat|adderl|cout1_i O[3]
load net add_sub|rezultat|adderl|cout1[4] -attr @rip O[4] -attr @name cout1[4] -pin add_sub|rezultat|adderl|cout0_i I0[4] -pin add_sub|rezultat|adderl|cout1_i O[4]
load net add_sub|rezultat|adderl|s[0] -attr @rip O[0] -attr @name s[0] -hierPin add_sub|rezultat|adderl s[0] -pin add_sub|rezultat|adderl|cout0_i O[0]
load net add_sub|rezultat|adderl|s[1] -attr @rip O[1] -attr @name s[1] -hierPin add_sub|rezultat|adderl s[1] -pin add_sub|rezultat|adderl|cout0_i O[1]
load net add_sub|rezultat|adderl|s[2] -attr @rip O[2] -attr @name s[2] -hierPin add_sub|rezultat|adderl s[2] -pin add_sub|rezultat|adderl|cout0_i O[2]
load net add_sub|rezultat|adderl|s[3] -attr @rip O[3] -attr @name s[3] -hierPin add_sub|rezultat|adderl s[3] -pin add_sub|rezultat|adderl|cout0_i O[3]
load net add_sub|rezultat|adderh|a[0] -attr @rip a[0] -attr @name a[0] -hierPin add_sub|rezultat|adderh a[0] -pin add_sub|rezultat|adderh|cout1_i I0[0]
load net add_sub|rezultat|adderh|a[1] -attr @rip a[1] -attr @name a[1] -hierPin add_sub|rezultat|adderh a[1] -pin add_sub|rezultat|adderh|cout1_i I0[1]
load net add_sub|rezultat|adderh|a[2] -attr @rip a[2] -attr @name a[2] -hierPin add_sub|rezultat|adderh a[2] -pin add_sub|rezultat|adderh|cout1_i I0[2]
load net add_sub|rezultat|adderh|a[3] -attr @rip a[3] -attr @name a[3] -hierPin add_sub|rezultat|adderh a[3] -pin add_sub|rezultat|adderh|cout1_i I0[3]
load net add_sub|rezultat|adderh|b[0] -attr @rip b[0] -attr @name b[0] -hierPin add_sub|rezultat|adderh b[0] -pin add_sub|rezultat|adderh|cout1_i I1[0]
load net add_sub|rezultat|adderh|b[1] -attr @rip b[1] -attr @name b[1] -hierPin add_sub|rezultat|adderh b[1] -pin add_sub|rezultat|adderh|cout1_i I1[1]
load net add_sub|rezultat|adderh|b[2] -attr @rip b[2] -attr @name b[2] -hierPin add_sub|rezultat|adderh b[2] -pin add_sub|rezultat|adderh|cout1_i I1[2]
load net add_sub|rezultat|adderh|b[3] -attr @rip b[3] -attr @name b[3] -hierPin add_sub|rezultat|adderh b[3] -pin add_sub|rezultat|adderh|cout1_i I1[3]
load net add_sub|rezultat|adderh|ci -attr @name ci -hierPin add_sub|rezultat|adderh ci -pin add_sub|rezultat|adderh|cout0_i I1
netloc add_sub|rezultat|adderh|ci 1 0 2 NJ 1010 N
load net add_sub|rezultat|adderh|cout -attr @rip O[4] -attr @name cout -hierPin add_sub|rezultat|adderh cout -pin add_sub|rezultat|adderh|cout0_i O[4]
load net add_sub|rezultat|adderh|cout1[0] -attr @rip O[0] -attr @name cout1[0] -pin add_sub|rezultat|adderh|cout0_i I0[0] -pin add_sub|rezultat|adderh|cout1_i O[0]
load net add_sub|rezultat|adderh|cout1[1] -attr @rip O[1] -attr @name cout1[1] -pin add_sub|rezultat|adderh|cout0_i I0[1] -pin add_sub|rezultat|adderh|cout1_i O[1]
load net add_sub|rezultat|adderh|cout1[2] -attr @rip O[2] -attr @name cout1[2] -pin add_sub|rezultat|adderh|cout0_i I0[2] -pin add_sub|rezultat|adderh|cout1_i O[2]
load net add_sub|rezultat|adderh|cout1[3] -attr @rip O[3] -attr @name cout1[3] -pin add_sub|rezultat|adderh|cout0_i I0[3] -pin add_sub|rezultat|adderh|cout1_i O[3]
load net add_sub|rezultat|adderh|cout1[4] -attr @rip O[4] -attr @name cout1[4] -pin add_sub|rezultat|adderh|cout0_i I0[4] -pin add_sub|rezultat|adderh|cout1_i O[4]
load net add_sub|rezultat|adderh|s[0] -attr @rip O[0] -attr @name s[0] -hierPin add_sub|rezultat|adderh s[0] -pin add_sub|rezultat|adderh|cout0_i O[0]
load net add_sub|rezultat|adderh|s[1] -attr @rip O[1] -attr @name s[1] -hierPin add_sub|rezultat|adderh s[1] -pin add_sub|rezultat|adderh|cout0_i O[1]
load net add_sub|rezultat|adderh|s[2] -attr @rip O[2] -attr @name s[2] -hierPin add_sub|rezultat|adderh s[2] -pin add_sub|rezultat|adderh|cout0_i O[2]
load net add_sub|rezultat|adderh|s[3] -attr @rip O[3] -attr @name s[3] -hierPin add_sub|rezultat|adderh s[3] -pin add_sub|rezultat|adderh|cout0_i O[3]
load net signf|<const0> -ground -attr @name <const0> -pin signf|SF_i I1
load net signf|SF -attr @name SF -hierPin signf SF -pin signf|SF_i O
netloc signf|SF 1 1 1 N 944
load net signf|in[7] -attr @rip in[7] -attr @name in[7] -hierPin signf in[7] -pin signf|SF_i I0
netloc signf|in[7] 1 0 1 N 934
load net signf|sel -attr @name sel -hierPin signf sel -pin signf|SF_i S
netloc signf|sel 1 0 1 N 1004
load net carryf|<const0> -ground -attr @name <const0> -pin carryf|CF_i I1
load net carryf|CF -attr @name CF -hierPin carryf CF -pin carryf|CF_i O
netloc carryf|CF 1 1 1 N 744
load net carryf|cin -attr @name cin -hierPin carryf cin -pin carryf|CF_i I0
netloc carryf|cin 1 0 1 N 734
load net carryf|sel -attr @name sel -hierPin carryf sel -pin carryf|CF_i S
netloc carryf|sel 1 0 1 N 804
load netBundle @add_sub|rezultat|adderh|a 4 add_sub|rezultat|adderh|a[3] add_sub|rezultat|adderh|a[2] add_sub|rezultat|adderh|a[1] add_sub|rezultat|adderh|a[0] -autobundled
netbloc @add_sub|rezultat|adderh|a 1 0 1 2100 970n
load netBundle @add_sub|rezultat|adderh|b 4 add_sub|rezultat|adderh|b[3] add_sub|rezultat|adderh|b[2] add_sub|rezultat|adderh|b[1] add_sub|rezultat|adderh|b[0] -autobundled
netbloc @add_sub|rezultat|adderh|b 1 0 1 2080 990n
load netBundle @add_sub|rezultat|adderh|s 5 add_sub|rezultat|adderh|cout add_sub|rezultat|adderh|s[3] add_sub|rezultat|adderh|s[2] add_sub|rezultat|adderh|s[1] add_sub|rezultat|adderh|s[0] -autobundled
netbloc @add_sub|rezultat|adderh|s 1 2 1 2480 1000n
load netBundle @add_sub|rezultat|adderh|cout1 5 add_sub|rezultat|adderh|cout1[4] add_sub|rezultat|adderh|cout1[3] add_sub|rezultat|adderh|cout1[2] add_sub|rezultat|adderh|cout1[1] add_sub|rezultat|adderh|cout1[0] -autobundled
netbloc @add_sub|rezultat|adderh|cout1 1 1 1 2290 1030n
load netBundle @add_sub|rezultat|adderl|a 4 add_sub|rezultat|adderl|a[3] add_sub|rezultat|adderl|a[2] add_sub|rezultat|adderl|a[1] add_sub|rezultat|adderl|a[0] -autobundled
netbloc @add_sub|rezultat|adderl|a 1 0 1 1460 1010n
load netBundle @add_sub|rezultat|adderl|b 4 add_sub|rezultat|adderl|b[3] add_sub|rezultat|adderl|b[2] add_sub|rezultat|adderl|b[1] add_sub|rezultat|adderl|b[0] -autobundled
netbloc @add_sub|rezultat|adderl|b 1 0 1 1440 1030n
load netBundle @add_sub|rezultat|adderl|s 5 add_sub|rezultat|adderl|cout add_sub|rezultat|adderl|s[3] add_sub|rezultat|adderl|s[2] add_sub|rezultat|adderl|s[1] add_sub|rezultat|adderl|s[0] -autobundled
netbloc @add_sub|rezultat|adderl|s 1 2 1 1840 1040n
load netBundle @add_sub|rezultat|adderl|cout1 5 add_sub|rezultat|adderl|cout1[4] add_sub|rezultat|adderl|cout1[3] add_sub|rezultat|adderl|cout1[2] add_sub|rezultat|adderl|cout1[1] add_sub|rezultat|adderl|cout1[0] -autobundled
netbloc @add_sub|rezultat|adderl|cout1 1 1 1 1650 1070n
load netBundle @add_sub|rezultat|a1 4 add_sub|rezultat|a1[3] add_sub|rezultat|a1[2] add_sub|rezultat|a1[1] add_sub|rezultat|a1[0] -autobundled
netbloc @add_sub|rezultat|a1 1 0 2 1340J 940 1980
load netBundle @add_sub|rezultat|a2 4 add_sub|rezultat|a2[3] add_sub|rezultat|a2[2] add_sub|rezultat|a2[1] add_sub|rezultat|a2[0] -autobundled
netbloc @add_sub|rezultat|a2 1 0 1 1340 1006n
load netBundle @add_sub|rezultat|b1 4 add_sub|rezultat|b1[3] add_sub|rezultat|b1[2] add_sub|rezultat|b1[1] add_sub|rezultat|b1[0] -autobundled
netbloc @add_sub|rezultat|b1 1 0 2 1300J 1180 1960
load netBundle @add_sub|rezultat|b2 4 add_sub|rezultat|b2[3] add_sub|rezultat|b2[2] add_sub|rezultat|b2[1] add_sub|rezultat|b2[0] -autobundled
netbloc @add_sub|rezultat|b2 1 0 1 1320 1030n
load netBundle @add_sub|rezultat|sh 4 add_sub|rezultat|sh[3] add_sub|rezultat|sh[2] add_sub|rezultat|sh[1] add_sub|rezultat|sh[0] -autobundled
netbloc @add_sub|rezultat|sh 1 2 1 2600 986n
load netBundle @add_sub|rezultat|sl 4 add_sub|rezultat|sl[3] add_sub|rezultat|sl[2] add_sub|rezultat|sl[1] add_sub|rezultat|sl[0] -autobundled
netbloc @add_sub|rezultat|sl 1 1 2 1940 1140 2580J
load netBundle @add_sub|scadere|b 8 add_sub|scadere|b[7] add_sub|scadere|b[6] add_sub|scadere|b[5] add_sub|scadere|b[4] add_sub|scadere|b[3] add_sub|scadere|b[2] add_sub|scadere|b[1] add_sub|scadere|b[0] -autobundled
netbloc @add_sub|scadere|b 1 0 2 630 1026 810
load netBundle @add_sub|scadere|sel 3 add_sub|scadere|sel[2] add_sub|scadere|sel[1] add_sub|scadere|sel[0] -autobundled
netbloc @add_sub|scadere|sel 1 0 2 NJ 1106 810
load netBundle @add_sub|scadere|bsub0_i_n_ 8 add_sub|scadere|bsub0_i_n_0 add_sub|scadere|bsub0_i_n_1 add_sub|scadere|bsub0_i_n_2 add_sub|scadere|bsub0_i_n_3 add_sub|scadere|bsub0_i_n_4 add_sub|scadere|bsub0_i_n_5 add_sub|scadere|bsub0_i_n_6 add_sub|scadere|bsub0_i_n_7 -autobundled
netbloc @add_sub|scadere|bsub0_i_n_ 1 1 1 830 1036n
load netBundle @add_sub|scadere|bsub 8 add_sub|scadere|bsub[7] add_sub|scadere|bsub[6] add_sub|scadere|bsub[5] add_sub|scadere|bsub[4] add_sub|scadere|bsub[3] add_sub|scadere|bsub[2] add_sub|scadere|bsub[1] add_sub|scadere|bsub[0] -autobundled
netbloc @add_sub|scadere|bsub 1 2 1 N 1046
load netBundle @Rom|in 3 Rom|in[2] Rom|in[1] Rom|in[0] -autobundled
netbloc @Rom|in 1 0 1 NJ 758
load netBundle @Rom|opcode 8 Rom|opcode[7] Rom|opcode[6] Rom|opcode[5] Rom|opcode[4] Rom|opcode[3] Rom|opcode[2] Rom|opcode[1] Rom|opcode[0] -autobundled
netbloc @Rom|opcode 1 1 1 NJ 758
load netBundle @add_sub|a1 4 add_sub|a1[3] add_sub|a1[2] add_sub|a1[1] add_sub|a1[0] -autobundled
netbloc @add_sub|a1 1 0 2 500J 936 1200
load netBundle @add_sub|a2 4 add_sub|a2[3] add_sub|a2[2] add_sub|a2[1] add_sub|a2[0] -autobundled
netbloc @add_sub|a2 1 0 2 520J 956 1180
load netBundle @add_sub|b 8 add_sub|b[7] add_sub|b[6] add_sub|b[5] add_sub|b[4] add_sub|b[3] add_sub|b[2] add_sub|b[1] add_sub|b[0] -autobundled
netbloc @add_sub|b 1 0 1 520 1018n
load netBundle @add_sub|sel 3 add_sub|sel[2] add_sub|sel[1] add_sub|sel[0] -autobundled
netbloc @add_sub|sel 1 0 1 500 1038n
load netBundle @add_sub|op 4 add_sub|op[7] add_sub|op[6] add_sub|op[5] add_sub|op[4] -autobundled
netbloc @add_sub|op 1 2 1 2720 978n
load netBundle @add_sub|op_1 4 add_sub|op[3] add_sub|op[2] add_sub|op[1] add_sub|op[0] -autobundled
netbloc @add_sub|op_1 1 2 1 2740 978n
load netBundle @add_sub|w1 8 add_sub|w1[7] add_sub|w1[6] add_sub|w1[5] add_sub|w1[4] add_sub|w1[3] add_sub|w1[2] add_sub|w1[1] add_sub|w1[0] -autobundled
netbloc @add_sub|w1 1 1 1 1200 1046n
load netBundle @notB|in 8 notB|in[7] notB|in[6] notB|in[5] notB|in[4] notB|in[3] notB|in[2] notB|in[1] notB|in[0] -autobundled
netbloc @notB|in 1 0 1 NJ 778
load netBundle @notB|out 8 notB|out[7] notB|out[6] notB|out[5] notB|out[4] notB|out[3] notB|out[2] notB|out[1] notB|out[0] -autobundled
netbloc @notB|out 1 1 1 NJ 778
load netBundle @xorab|a 8 xorab|a[7] xorab|a[6] xorab|a[5] xorab|a[4] xorab|a[3] xorab|a[2] xorab|a[1] xorab|a[0] -autobundled
netbloc @xorab|a 1 0 1 N 638
load netBundle @xorab|b 8 xorab|b[7] xorab|b[6] xorab|b[5] xorab|b[4] xorab|b[3] xorab|b[2] xorab|b[1] xorab|b[0] -autobundled
netbloc @xorab|b 1 0 1 N 658
load netBundle @xorab|out 8 xorab|out[7] xorab|out[6] xorab|out[5] xorab|out[4] xorab|out[3] xorab|out[2] xorab|out[1] xorab|out[0] -autobundled
netbloc @xorab|out 1 1 1 N 648
load netBundle @shla|a 8 shla|a[7] shla|a[6] shla|a[5] shla|a[4] shla|a[3] shla|a[2] shla|a[1] shla|a[0] -autobundled
netbloc @shla|a 1 0 1 N 508
load netBundle @shla|b 3 shla|b[2] shla|b[1] shla|b[0] -autobundled
netbloc @shla|b 1 0 1 N 528
load netBundle @shla|out 8 shla|out[7] shla|out[6] shla|out[5] shla|out[4] shla|out[3] shla|out[2] shla|out[1] shla|out[0] -autobundled
netbloc @shla|out 1 1 1 N 508
load netBundle @shra|a 8 shra|a[7] shra|a[6] shra|a[5] shra|a[4] shra|a[3] shra|a[2] shra|a[1] shra|a[0] -autobundled
netbloc @shra|a 1 0 1 N 348
load netBundle @shra|b 3 shra|b[2] shra|b[1] shra|b[0] -autobundled
netbloc @shra|b 1 0 1 N 368
load netBundle @shra|out 8 shra|out[7] shra|out[6] shra|out[5] shra|out[4] shra|out[3] shra|out[2] shra|out[1] shra|out[0] -autobundled
netbloc @shra|out 1 1 1 N 348
load netBundle @notA|in 8 notA|in[7] notA|in[6] notA|in[5] notA|in[4] notA|in[3] notA|in[2] notA|in[1] notA|in[0] -autobundled
netbloc @notA|in 1 0 1 NJ 198
load netBundle @notA|out 8 notA|out[7] notA|out[6] notA|out[5] notA|out[4] notA|out[3] notA|out[2] notA|out[1] notA|out[0] -autobundled
netbloc @notA|out 1 1 1 NJ 198
load netBundle @andlogic|a 8 andlogic|a[7] andlogic|a[6] andlogic|a[5] andlogic|a[4] andlogic|a[3] andlogic|a[2] andlogic|a[1] andlogic|a[0] -autobundled
netbloc @andlogic|a 1 0 1 N 58
load netBundle @andlogic|b 8 andlogic|b[7] andlogic|b[6] andlogic|b[5] andlogic|b[4] andlogic|b[3] andlogic|b[2] andlogic|b[1] andlogic|b[0] -autobundled
netbloc @andlogic|b 1 0 1 N 78
load netBundle @andlogic|out 8 andlogic|out[7] andlogic|out[6] andlogic|out[5] andlogic|out[4] andlogic|out[3] andlogic|out[2] andlogic|out[1] andlogic|out[0] -autobundled
netbloc @andlogic|out 1 1 1 N 68
load netBundle @mux7|in1 8 mux7|in1[7] mux7|in1[6] mux7|in1[5] mux7|in1[4] mux7|in1[3] mux7|in1[2] mux7|in1[1] mux7|in1[0] -autobundled
netbloc @mux7|in1 1 0 1 3057 308n
load netBundle @mux7|in2 8 mux7|in2[7] mux7|in2[6] mux7|in2[5] mux7|in2[4] mux7|in2[3] mux7|in2[2] mux7|in2[1] mux7|in2[0] -autobundled
netbloc @mux7|in2 1 0 1 N 328
load netBundle @mux7|in3 8 mux7|in3[7] mux7|in3[6] mux7|in3[5] mux7|in3[4] mux7|in3[3] mux7|in3[2] mux7|in3[1] mux7|in3[0] -autobundled
netbloc @mux7|in3 1 0 1 N 348
load netBundle @mux7|in4 8 mux7|in4[7] mux7|in4[6] mux7|in4[5] mux7|in4[4] mux7|in4[3] mux7|in4[2] mux7|in4[1] mux7|in4[0] -autobundled
netbloc @mux7|in4 1 0 1 N 368
load netBundle @mux7|in5 8 mux7|in5[7] mux7|in5[6] mux7|in5[5] mux7|in5[4] mux7|in5[3] mux7|in5[2] mux7|in5[1] mux7|in5[0] -autobundled
netbloc @mux7|in5 1 0 1 N 388
load netBundle @mux7|in6 8 mux7|in6[7] mux7|in6[6] mux7|in6[5] mux7|in6[4] mux7|in6[3] mux7|in6[2] mux7|in6[1] mux7|in6[0] -autobundled
netbloc @mux7|in6 1 0 1 N 408
load netBundle @mux7|in7 8 mux7|in7[7] mux7|in7[6] mux7|in7[5] mux7|in7[4] mux7|in7[3] mux7|in7[2] mux7|in7[1] mux7|in7[0] -autobundled
netbloc @mux7|in7 1 0 1 N 428
load netBundle @mux7|sel 3 mux7|sel[2] mux7|sel[1] mux7|sel[0] -autobundled
netbloc @mux7|sel 1 0 1 N 498
load netBundle @mux7|out 8 mux7|out[7] mux7|out[6] mux7|out[5] mux7|out[4] mux7|out[3] mux7|out[2] mux7|out[1] mux7|out[0] -autobundled
netbloc @mux7|out 1 1 1 N 378
load netBundle @a 8 a[7] a[6] a[5] a[4] a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 0 2 NJ 60 370
load netBundle @b 8 b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 2 NJ 80 390
load netBundle @rom 3 rom[2] rom[1] rom[0] -autobundled
netbloc @rom 1 0 1 0J 740n
load netBundle @result 8 result[7] result[6] result[5] result[4] result[3] result[2] result[1] result[0] -autobundled
netbloc @result 1 3 1 3390J 350n
load netBundle @w1 7 w1[7] w1[6] w1[5] w1[4] w1[2] w1[1] w1[0] -autobundled
netbloc @w1 1 1 2 350 1268 2940
load netBundle @w2 8 w2[7] w2[6] w2[5] w2[4] w2[3] w2[2] w2[1] w2[0] -autobundled
netbloc @w2 1 2 1 2860 308n
load netBundle @w5 8 w5[7] w5[6] w5[5] w5[4] w5[3] w5[2] w5[1] w5[0] -autobundled
netbloc @w5 1 2 1 2940 68n
load netBundle @w4 8 w4[7] w4[6] w4[5] w4[4] w4[3] w4[2] w4[1] w4[0] -autobundled
netbloc @w4 1 2 1 2900 198n
load netBundle @w8 8 w8[7] w8[6] w8[5] w8[4] w8[3] w8[2] w8[1] w8[0] -autobundled
netbloc @w8 1 2 1 2900 428n
load netBundle @w6 8 w6[7] w6[6] w6[5] w6[4] w6[3] w6[2] w6[1] w6[0] -autobundled
netbloc @w6 1 2 1 2840 388n
load netBundle @w3 8 w3[7] w3[6] w3[5] w3[4] w3[3] w3[2] w3[1] w3[0] -autobundled
netbloc @w3 1 2 1 2840 328n
load netBundle @w7 8 w7[7] w7[6] w7[5] w7[4] w7[3] w7[2] w7[1] w7[0] -autobundled
netbloc @w7 1 2 1 2880 408n
levelinfo -pg 1 -20 70 510 3027 3430
levelinfo -hier Rom * 110 *
levelinfo -hier add_sub * 600 1290 *
levelinfo -hier andlogic * 590 *
levelinfo -hier carryf * 3157 *
levelinfo -hier mux7 * 3177 *
levelinfo -hier notA * 590 *
levelinfo -hier notB * 590 *
levelinfo -hier shla * 610 *
levelinfo -hier shra * 610 *
levelinfo -hier signf * 3157 *
levelinfo -hier xorab * 590 *
levelinfo -hier add_sub|rezultat * 1410 2050 *
levelinfo -hier add_sub|scadere * 700 950 *
levelinfo -hier add_sub|rezultat|adderh * 2170 2360 *
levelinfo -hier add_sub|rezultat|adderl * 1530 1720 *
pagesize -pg 1 -db -bbox -sgen -130 -10 3550 1280
pagesize -hier Rom -db -bbox -sgen 70 708 250 808
pagesize -hier add_sub -db -bbox -sgen 470 868 2770 1238
pagesize -hier andlogic -db -bbox -sgen 510 28 710 108
pagesize -hier carryf -db -bbox -sgen 3027 684 3297 834
pagesize -hier mux7 -db -bbox -sgen 3027 258 3317 508
pagesize -hier notA -db -bbox -sgen 510 158 710 238
pagesize -hier notB -db -bbox -sgen 510 738 710 818
pagesize -hier shla -db -bbox -sgen 510 448 760 558
pagesize -hier shra -db -bbox -sgen 510 288 760 398
pagesize -hier signf -db -bbox -sgen 3027 884 3297 1034
pagesize -hier xorab -db -bbox -sgen 510 608 710 688
pagesize -hier add_sub|rezultat -db -bbox -sgen 1270 906 2630 1196
pagesize -hier add_sub|scadere -db -bbox -sgen 600 986 1090 1206
pagesize -hier add_sub|rezultat|adderh -db -bbox -sgen 2050 950 2510 1110
pagesize -hier add_sub|rezultat|adderl -db -bbox -sgen 1410 990 1870 1150
show
zoom 0.670308
scrollpos -81 -85
#
# initialize ictrl to current module ALU_TOP work:ALU_TOP:NOFILE
ictrl init topinfo |
