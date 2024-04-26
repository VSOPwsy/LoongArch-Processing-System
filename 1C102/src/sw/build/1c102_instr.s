
1c102_instr.elf:     file format elf32-loongarch
1c102_instr.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:28
1c000000:	0015000d 	move	$r13,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:29
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:31
1c000008:	1438004f 	lu12i.w	$r15,114690(0x1c002)
1c00000c:	03b221ef 	ori	$r15,$r15,0xc88
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:32
1c000010:	001035f0 	add.w	$r16,$r15,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:33
1c000014:	2880020f 	ld.w	$r15,$r16,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:34
1c000018:	00103590 	add.w	$r16,$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:35
1c00001c:	2980020f 	st.w	$r15,$r16,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:36
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:38
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:39
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038001ef 	ori	$r15,$r15,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:40
1c000034:	0010358e 	add.w	$r14,$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:41
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:44
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:45
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038001ad 	ori	$r13,$r13,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:46
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:48
1c000050:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:49
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:50
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:56
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:57
1c000060:	0400302c 	csrwr	$r12,0xc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:58
1c000064:	0015000c 	move	$r12,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:59
1c000068:	0400102c 	csrwr	$r12,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:61
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:62
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:64
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:65
1c000080:	0406442c 	csrwr	$r12,0x191
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:67
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:68
1c00008c:	0406402c 	csrwr	$r12,0x190
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:70
1c000090:	0380200c 	ori	$r12,$r0,0x8
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:71
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:74
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:75
1c0000a0:	54190000 	bl	6400(0x1900) # 1c0019a0 <main>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:77
1c0000a4:	4c000020 	jirl	$r0,$r1,0

1c0000a8 <cpu_wait>:
cpu_wait():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:81
1c0000a8:	06488000 	idle	0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:82
1c0000ac:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:86
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:87
1c001054:	0400140c 	csrrd	$r12,0x5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:88
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:89
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:91
1c001060:	0340118d 	andi	$r13,$r12,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:92
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:94
1c001068:	0340218d 	andi	$r13,$r12,0x8
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:95
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:97
1c001070:	0340418d 	andi	$r13,$r12,0x10
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:98
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:100
1c001078:	0340818d 	andi	$r13,$r12,0x20
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:101
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:103
1c001080:	0342018d 	andi	$r13,$r12,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:104
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:106
1c001088:	0360018d 	andi	$r13,$r12,0x800
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:107
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:110
1c001090:	54129000 	bl	4752(0x1290) # 1c002320 <TIMER_WAKE_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:111
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:114
1c001098:	5412b800 	bl	4792(0x12b8) # 1c002350 <TOUCH>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:115
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:118
1c0010a0:	5412fc00 	bl	4860(0x12fc) # 1c00239c <UART2_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:119
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:122
1c0010a8:	54131400 	bl	4884(0x1314) # 1c0023bc <BAT_FAIL>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:123
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:126
1c0010b0:	5411d800 	bl	4568(0x11d8) # 1c002288 <ext_handler>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:127
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:130
1c0010b8:	5414a400 	bl	5284(0x14a4) # 1c00255c <TIMER_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:131
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:134
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:135
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:136
1c0010c8:	54138400 	bl	4996(0x1384) # 1c00244c <intc_handler>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:137
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:140
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:141
1c001124:	06483800 	ertn

1c001128 <myputchar>:
myputchar():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:19
1c001128:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00112c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:20
1c001130:	00150085 	move	$r5,$r4
1c001134:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c001138:	54036000 	bl	864(0x360) # 1c001498 <UART_SendData>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:23
1c00113c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001140:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001144:	4c000020 	jirl	$r0,$r1,0

1c001148 <printbase>:
printbase():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:33
1c001148:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c00114c:	29817061 	st.w	$r1,$r3,92(0x5c)
1c001150:	29816077 	st.w	$r23,$r3,88(0x58)
1c001154:	29815078 	st.w	$r24,$r3,84(0x54)
1c001158:	29814079 	st.w	$r25,$r3,80(0x50)
1c00115c:	2981307a 	st.w	$r26,$r3,76(0x4c)
1c001160:	001500ba 	move	$r26,$r5
1c001164:	001500d9 	move	$r25,$r6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:38
1c001168:	400008e0 	beqz	$r7,8(0x8) # 1c001170 <printbase+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:38 (discriminator 1)
1c00116c:	60004080 	blt	$r4,$r0,64(0x40) # 1c0011ac <printbase+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:44
1c001170:	00150097 	move	$r23,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:33 (discriminator 1)
1c001174:	00150018 	move	$r24,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:46 (discriminator 1)
1c001178:	400046e0 	beqz	$r23,68(0x44) # 1c0011bc <printbase+0x74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:48 (discriminator 3)
1c00117c:	0021e6ed 	mod.wu	$r13,$r23,$r25
1c001180:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c001188 <printbase+0x40>
1c001184:	002a0007 	break	0x7
1c001188:	0281006c 	addi.w	$r12,$r3,64(0x40)
1c00118c:	0010618c 	add.w	$r12,$r12,$r24
1c001190:	293f018d 	st.b	$r13,$r12,-64(0xfc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:49 (discriminator 3)
1c001194:	001502ec 	move	$r12,$r23
1c001198:	00216597 	div.wu	$r23,$r12,$r25
1c00119c:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0011a4 <printbase+0x5c>
1c0011a0:	002a0007 	break	0x7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:46 (discriminator 3)
1c0011a4:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0011a8:	53ffd3ff 	b	-48(0xfffffd0) # 1c001178 <printbase+0x30>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:40
1c0011ac:	00111017 	sub.w	$r23,$r0,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:41
1c0011b0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0011b4:	57ff77ff 	bl	-140(0xfffff74) # 1c001128 <myputchar>
1c0011b8:	53ffbfff 	b	-68(0xfffffbc) # 1c001174 <printbase+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:51
1c0011bc:	00126b0c 	slt	$r12,$r24,$r26
1c0011c0:	0013b317 	masknez	$r23,$r24,$r12
1c0011c4:	0013334c 	maskeqz	$r12,$r26,$r12
1c0011c8:	001532f7 	or	$r23,$r23,$r12
1c0011cc:	50001c00 	b	28(0x1c) # 1c0011e8 <printbase+0xa0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:53
1c0011d0:	00150004 	move	$r4,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:54 (discriminator 1)
1c0011d4:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c0011d8:	0280c084 	addi.w	$r4,$r4,48(0x30)
1c0011dc:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:54 (discriminator 4)
1c0011e0:	57ff4bff 	bl	-184(0xfffff48) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:51 (discriminator 4)
1c0011e4:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:51 (discriminator 2)
1c0011e8:	64003017 	bge	$r0,$r23,48(0x30) # 1c001218 <printbase+0xd0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:53
1c0011ec:	63ffe717 	blt	$r24,$r23,-28(0x3ffe4) # 1c0011d0 <printbase+0x88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:53 (discriminator 1)
1c0011f0:	02bffeec 	addi.w	$r12,$r23,-1(0xfff)
1c0011f4:	0281006d 	addi.w	$r13,$r3,64(0x40)
1c0011f8:	001031ac 	add.w	$r12,$r13,$r12
1c0011fc:	283f0184 	ld.b	$r4,$r12,-64(0xfc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:54 (discriminator 1)
1c001200:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001204:	67ffd184 	bge	$r12,$r4,-48(0x3ffd0) # 1c0011d4 <printbase+0x8c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:54 (discriminator 2)
1c001208:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c00120c:	02815c84 	addi.w	$r4,$r4,87(0x57)
1c001210:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c001214:	53ffcfff 	b	-52(0xfffffcc) # 1c0011e0 <printbase+0x98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:57
1c001218:	00150004 	move	$r4,$r0
1c00121c:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001220:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001224:	28815078 	ld.w	$r24,$r3,84(0x54)
1c001228:	28814079 	ld.w	$r25,$r3,80(0x50)
1c00122c:	2881307a 	ld.w	$r26,$r3,76(0x4c)
1c001230:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001234:	4c000020 	jirl	$r0,$r1,0

1c001238 <ls1x_puts>:
ls1x_puts():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:65
1c001238:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00123c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001240:	29802077 	st.w	$r23,$r3,8(0x8)
1c001244:	29801078 	st.w	$r24,$r3,4(0x4)
1c001248:	00150098 	move	$r24,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:67
1c00124c:	50001800 	b	24(0x18) # 1c001264 <ls1x_puts+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:69 (discriminator 1)
1c001250:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001254:	57fed7ff 	bl	-300(0xffffed4) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:70
1c001258:	006782e4 	bstrpick.w	$r4,$r23,0x7,0x0
1c00125c:	57fecfff 	bl	-308(0xffffecc) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:71
1c001260:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:67
1c001264:	28000317 	ld.b	$r23,$r24,0
1c001268:	400012e0 	beqz	$r23,16(0x10) # 1c001278 <ls1x_puts+0x40>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:69
1c00126c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001270:	5fffeaec 	bne	$r23,$r12,-24(0x3ffe8) # 1c001258 <ls1x_puts+0x20>
1c001274:	53ffdfff 	b	-36(0xfffffdc) # 1c001250 <ls1x_puts+0x18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:75
1c001278:	00150004 	move	$r4,$r0
1c00127c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001280:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001284:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00128c:	4c000020 	jirl	$r0,$r1,0

1c001290 <myprintf>:
myprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:78
1c001290:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c001294:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001298:	2980a077 	st.w	$r23,$r3,40(0x28)
1c00129c:	29809078 	st.w	$r24,$r3,36(0x24)
1c0012a0:	29808079 	st.w	$r25,$r3,32(0x20)
1c0012a4:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c0012a8:	00150099 	move	$r25,$r4
1c0012ac:	2980d065 	st.w	$r5,$r3,52(0x34)
1c0012b0:	2980e066 	st.w	$r6,$r3,56(0x38)
1c0012b4:	2980f067 	st.w	$r7,$r3,60(0x3c)
1c0012b8:	29810068 	st.w	$r8,$r3,64(0x40)
1c0012bc:	29811069 	st.w	$r9,$r3,68(0x44)
1c0012c0:	2981206a 	st.w	$r10,$r3,72(0x48)
1c0012c4:	2981306b 	st.w	$r11,$r3,76(0x4c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:84
1c0012c8:	0280d07a 	addi.w	$r26,$r3,52(0x34)
1c0012cc:	2980307a 	st.w	$r26,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:86
1c0012d0:	00150018 	move	$r24,$r0
1c0012d4:	50018400 	b	388(0x184) # 1c001458 <myprintf+0x1c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:91
1c0012d8:	02800405 	addi.w	$r5,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:93
1c0012dc:	0010632c 	add.w	$r12,$r25,$r24
1c0012e0:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0012e4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0012e8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0012ec:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0012f0:	680149ae 	bltu	$r13,$r14,328(0x148) # 1c001438 <myprintf+0x1a8>
1c0012f4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0012f8:	028a41ad 	addi.w	$r13,$r13,656(0x290)
1c0012fc:	0004b5cc 	alsl.w	$r12,$r14,$r13,0x2
1c001300:	2880018c 	ld.w	$r12,$r12,0
1c001304:	4c000180 	jirl	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:96
1c001308:	28800344 	ld.w	$r4,$r26,0
1c00130c:	57ff2fff 	bl	-212(0xfffff2c) # 1c001238 <ls1x_puts>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:97
1c001310:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:98
1c001314:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:99
1c001318:	50013c00 	b	316(0x13c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:101
1c00131c:	2a000344 	ld.bu	$r4,$r26,0
1c001320:	57fe0bff 	bl	-504(0xffffe08) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:102
1c001324:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:103
1c001328:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:104
1c00132c:	50012800 	b	296(0x128) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:106
1c001330:	00150007 	move	$r7,$r0
1c001334:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001338:	28800344 	ld.w	$r4,$r26,0
1c00133c:	57fe0fff 	bl	-500(0xffffe0c) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:107
1c001340:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:108
1c001344:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:109
1c001348:	50010c00 	b	268(0x10c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:111
1c00134c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001350:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001354:	28800344 	ld.w	$r4,$r26,0
1c001358:	57fdf3ff 	bl	-528(0xffffdf0) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:112
1c00135c:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:113
1c001360:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:114
1c001364:	5000f000 	b	240(0xf0) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:116
1c001368:	00150007 	move	$r7,$r0
1c00136c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001370:	28800344 	ld.w	$r4,$r26,0
1c001374:	57fdd7ff 	bl	-556(0xffffdd4) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:117
1c001378:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:118
1c00137c:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:119
1c001380:	5000d400 	b	212(0xd4) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:121
1c001384:	00150007 	move	$r7,$r0
1c001388:	02800806 	addi.w	$r6,$r0,2(0x2)
1c00138c:	28800344 	ld.w	$r4,$r26,0
1c001390:	57fdbbff 	bl	-584(0xffffdb8) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:122
1c001394:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:123
1c001398:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:124
1c00139c:	5000b800 	b	184(0xb8) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:127
1c0013a0:	00150007 	move	$r7,$r0
1c0013a4:	02804006 	addi.w	$r6,$r0,16(0x10)
1c0013a8:	28800344 	ld.w	$r4,$r26,0
1c0013ac:	57fd9fff 	bl	-612(0xffffd9c) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:128
1c0013b0:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:129
1c0013b4:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:130
1c0013b8:	50009c00 	b	156(0x9c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:132
1c0013bc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0013c0:	57fd6bff 	bl	-664(0xffffd68) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:133
1c0013c4:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:134
1c0013c8:	50008c00 	b	140(0x8c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:136
1c0013cc:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137
1c0013d0:	00150005 	move	$r5,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137 (discriminator 1)
1c0013d4:	0010632c 	add.w	$r12,$r25,$r24
1c0013d8:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0013dc:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c0013e0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0013e4:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c0013e8:	6bfef5cd 	bltu	$r14,$r13,-268(0x3fef4) # 1c0012dc <myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:138 (discriminator 3)
1c0013ec:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0013f0:	001c34a5 	mul.w	$r5,$r5,$r13
1c0013f4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0013f8:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137 (discriminator 3)
1c0013fc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001400:	53ffd7ff 	b	-44(0xfffffd4) # 1c0013d4 <myprintf+0x144>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:142
1c001404:	00150005 	move	$r5,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:142 (discriminator 1)
1c001408:	0010632c 	add.w	$r12,$r25,$r24
1c00140c:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c001410:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c001414:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001418:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c00141c:	6bfec1cd 	bltu	$r14,$r13,-320(0x3fec0) # 1c0012dc <myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:143 (discriminator 3)
1c001420:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001424:	001c34a5 	mul.w	$r5,$r5,$r13
1c001428:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00142c:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:142 (discriminator 3)
1c001430:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001434:	53ffd7ff 	b	-44(0xfffffd4) # 1c001408 <myprintf+0x178>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:148
1c001438:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00143c:	57fcefff 	bl	-788(0xffffcec) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:149
1c001440:	50001400 	b	20(0x14) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:153 (discriminator 1)
1c001444:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001448:	57fce3ff 	bl	-800(0xffffce0) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:154
1c00144c:	006782e4 	bstrpick.w	$r4,$r23,0x7,0x0
1c001450:	57fcdbff 	bl	-808(0xffffcd8) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:86 (discriminator 2)
1c001454:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:86 (discriminator 1)
1c001458:	0010632c 	add.w	$r12,$r25,$r24
1c00145c:	28000197 	ld.b	$r23,$r12,0
1c001460:	40001ae0 	beqz	$r23,24(0x18) # 1c001478 <myprintf+0x1e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:89
1c001464:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001468:	5bfe72ec 	beq	$r23,$r12,-400(0x3fe70) # 1c0012d8 <myprintf+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:153
1c00146c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001470:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c00144c <myprintf+0x1bc>
1c001474:	53ffd3ff 	b	-48(0xfffffd0) # 1c001444 <myprintf+0x1b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:159
1c001478:	00150004 	move	$r4,$r0
1c00147c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001480:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c001484:	28809078 	ld.w	$r24,$r3,36(0x24)
1c001488:	28808079 	ld.w	$r25,$r3,32(0x20)
1c00148c:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001490:	02814063 	addi.w	$r3,$r3,80(0x50)
1c001494:	4c000020 	jirl	$r0,$r1,0

1c001498 <UART_SendData>:
UART_SendData():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:172 (discriminator 1)
1c001498:	2a00148c 	ld.bu	$r12,$r4,5(0x5)
1c00149c:	0340818c 	andi	$r12,$r12,0x20
1c0014a0:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001498 <UART_SendData>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:173
1c0014a4:	29000085 	st.b	$r5,$r4,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:174
1c0014a8:	4c000020 	jirl	$r0,$r1,0

1c0014ac <EnableInt>:
EnableInt():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:23
1c0014ac:	0380100c 	ori	$r12,$r0,0x4
1c0014b0:	0400018c 	csrxchg	$r12,$r12,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:28
1c0014b4:	4c000020 	jirl	$r0,$r1,0

1c0014b8 <Set_Timer_stop>:
Set_Timer_stop():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:50
1c0014b8:	04010420 	csrwr	$r0,0x41
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:53
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <Set_Timer_clear>:
Set_Timer_clear():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:57
1c0014c0:	0380040c 	ori	$r12,$r0,0x1
1c0014c4:	0401102c 	csrwr	$r12,0x44
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:63
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <soc_myputchar>:
soc_myputchar():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:12
1c0014cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:14
1c0014d0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0014d4:	0380118c 	ori	$r12,$r12,0x4
1c0014d8:	2880018c 	ld.w	$r12,$r12,0
1c0014dc:	00005d8c 	ext.w.b	$r12,$r12
1c0014e0:	29003c6c 	st.b	$r12,$r3,15(0xf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:15 (discriminator 1)
1c0014e4:	2a003c6c 	ld.bu	$r12,$r3,15(0xf)
1c0014e8:	0340098c 	andi	$r12,$r12,0x2
1c0014ec:	00005d8c 	ext.w.b	$r12,$r12
1c0014f0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0014e4 <soc_myputchar+0x18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:18
1c0014f4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0014f8:	29800184 	st.w	$r4,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:19
1c0014fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001500:	4c000020 	jirl	$r0,$r1,0

1c001504 <soc_puts>:
soc_puts():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:21
1c001504:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00150c:	29802077 	st.w	$r23,$r3,8(0x8)
1c001510:	29801078 	st.w	$r24,$r3,4(0x4)
1c001514:	00150098 	move	$r24,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:23
1c001518:	50001800 	b	24(0x18) # 1c001530 <soc_puts+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:24 (discriminator 1)
1c00151c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001520:	57ffafff 	bl	-84(0xfffffac) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:25
1c001524:	006782e4 	bstrpick.w	$r4,$r23,0x7,0x0
1c001528:	57ffa7ff 	bl	-92(0xfffffa4) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:26
1c00152c:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:23
1c001530:	28000317 	ld.b	$r23,$r24,0
1c001534:	400012e0 	beqz	$r23,16(0x10) # 1c001544 <soc_puts+0x40>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:24
1c001538:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00153c:	5fffeaec 	bne	$r23,$r12,-24(0x3ffe8) # 1c001524 <soc_puts+0x20>
1c001540:	53ffdfff 	b	-36(0xfffffdc) # 1c00151c <soc_puts+0x18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:30
1c001544:	00150004 	move	$r4,$r0
1c001548:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00154c:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001550:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001558:	4c000020 	jirl	$r0,$r1,0

1c00155c <soc_printbase>:
soc_printbase():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:33
1c00155c:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001560:	29817061 	st.w	$r1,$r3,92(0x5c)
1c001564:	29816077 	st.w	$r23,$r3,88(0x58)
1c001568:	29815078 	st.w	$r24,$r3,84(0x54)
1c00156c:	29814079 	st.w	$r25,$r3,80(0x50)
1c001570:	2981307a 	st.w	$r26,$r3,76(0x4c)
1c001574:	001500ba 	move	$r26,$r5
1c001578:	001500d9 	move	$r25,$r6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:38
1c00157c:	400008e0 	beqz	$r7,8(0x8) # 1c001584 <soc_printbase+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:38 (discriminator 1)
1c001580:	60004080 	blt	$r4,$r0,64(0x40) # 1c0015c0 <soc_printbase+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:42
1c001584:	00150097 	move	$r23,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:33 (discriminator 1)
1c001588:	00150018 	move	$r24,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:45 (discriminator 1)
1c00158c:	400046e0 	beqz	$r23,68(0x44) # 1c0015d0 <soc_printbase+0x74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:46 (discriminator 3)
1c001590:	0021e6ed 	mod.wu	$r13,$r23,$r25
1c001594:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c00159c <soc_printbase+0x40>
1c001598:	002a0007 	break	0x7
1c00159c:	0281006c 	addi.w	$r12,$r3,64(0x40)
1c0015a0:	0010618c 	add.w	$r12,$r12,$r24
1c0015a4:	293f018d 	st.b	$r13,$r12,-64(0xfc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:47 (discriminator 3)
1c0015a8:	001502ec 	move	$r12,$r23
1c0015ac:	00216597 	div.wu	$r23,$r12,$r25
1c0015b0:	5c000b20 	bne	$r25,$r0,8(0x8) # 1c0015b8 <soc_printbase+0x5c>
1c0015b4:	002a0007 	break	0x7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:45 (discriminator 3)
1c0015b8:	02800718 	addi.w	$r24,$r24,1(0x1)
1c0015bc:	53ffd3ff 	b	-48(0xfffffd0) # 1c00158c <soc_printbase+0x30>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:39
1c0015c0:	00111017 	sub.w	$r23,$r0,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:40
1c0015c4:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0015c8:	57ff07ff 	bl	-252(0xfffff04) # 1c0014cc <soc_myputchar>
1c0015cc:	53ffbfff 	b	-68(0xfffffbc) # 1c001588 <soc_printbase+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:49
1c0015d0:	00126b0c 	slt	$r12,$r24,$r26
1c0015d4:	0013b317 	masknez	$r23,$r24,$r12
1c0015d8:	0013334c 	maskeqz	$r12,$r26,$r12
1c0015dc:	001532f7 	or	$r23,$r23,$r12
1c0015e0:	50001c00 	b	28(0x1c) # 1c0015fc <soc_printbase+0xa0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:51
1c0015e4:	00150004 	move	$r4,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:52 (discriminator 1)
1c0015e8:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c0015ec:	0280c084 	addi.w	$r4,$r4,48(0x30)
1c0015f0:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:52 (discriminator 4)
1c0015f4:	57fedbff 	bl	-296(0xffffed8) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:49 (discriminator 4)
1c0015f8:	02bffef7 	addi.w	$r23,$r23,-1(0xfff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:49 (discriminator 2)
1c0015fc:	64003017 	bge	$r0,$r23,48(0x30) # 1c00162c <soc_printbase+0xd0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:51
1c001600:	63ffe717 	blt	$r24,$r23,-28(0x3ffe4) # 1c0015e4 <soc_printbase+0x88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:51 (discriminator 1)
1c001604:	02bffeec 	addi.w	$r12,$r23,-1(0xfff)
1c001608:	0281006d 	addi.w	$r13,$r3,64(0x40)
1c00160c:	001031ac 	add.w	$r12,$r13,$r12
1c001610:	283f0184 	ld.b	$r4,$r12,-64(0xfc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:52 (discriminator 1)
1c001614:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001618:	67ffd184 	bge	$r12,$r4,-48(0x3ffd0) # 1c0015e8 <soc_printbase+0x8c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:52 (discriminator 2)
1c00161c:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c001620:	02815c84 	addi.w	$r4,$r4,87(0x57)
1c001624:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c001628:	53ffcfff 	b	-52(0xfffffcc) # 1c0015f4 <soc_printbase+0x98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:55
1c00162c:	00150004 	move	$r4,$r0
1c001630:	28817061 	ld.w	$r1,$r3,92(0x5c)
1c001634:	28816077 	ld.w	$r23,$r3,88(0x58)
1c001638:	28815078 	ld.w	$r24,$r3,84(0x54)
1c00163c:	28814079 	ld.w	$r25,$r3,80(0x50)
1c001640:	2881307a 	ld.w	$r26,$r3,76(0x4c)
1c001644:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001648:	4c000020 	jirl	$r0,$r1,0

1c00164c <soc_myprintf>:
soc_myprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:58
1c00164c:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c001650:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001654:	2980a077 	st.w	$r23,$r3,40(0x28)
1c001658:	29809078 	st.w	$r24,$r3,36(0x24)
1c00165c:	29808079 	st.w	$r25,$r3,32(0x20)
1c001660:	2980707a 	st.w	$r26,$r3,28(0x1c)
1c001664:	00150099 	move	$r25,$r4
1c001668:	2980d065 	st.w	$r5,$r3,52(0x34)
1c00166c:	2980e066 	st.w	$r6,$r3,56(0x38)
1c001670:	2980f067 	st.w	$r7,$r3,60(0x3c)
1c001674:	29810068 	st.w	$r8,$r3,64(0x40)
1c001678:	29811069 	st.w	$r9,$r3,68(0x44)
1c00167c:	2981206a 	st.w	$r10,$r3,72(0x48)
1c001680:	2981306b 	st.w	$r11,$r3,76(0x4c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:64
1c001684:	0280d07a 	addi.w	$r26,$r3,52(0x34)
1c001688:	2980307a 	st.w	$r26,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:66
1c00168c:	00150017 	move	$r23,$r0
1c001690:	50018800 	b	392(0x188) # 1c001818 <soc_myprintf+0x1cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:71
1c001694:	02800405 	addi.w	$r5,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:73
1c001698:	00105f2c 	add.w	$r12,$r25,$r23
1c00169c:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0016a0:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0016a4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0016a8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0016ac:	680151ae 	bltu	$r13,$r14,336(0x150) # 1c0017fc <soc_myprintf+0x1b0>
1c0016b0:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0016b4:	028091ad 	addi.w	$r13,$r13,36(0x24)
1c0016b8:	0004b5cc 	alsl.w	$r12,$r14,$r13,0x2
1c0016bc:	2880018c 	ld.w	$r12,$r12,0
1c0016c0:	4c000180 	jirl	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:76
1c0016c4:	28800344 	ld.w	$r4,$r26,0
1c0016c8:	57fe3fff 	bl	-452(0xffffe3c) # 1c001504 <soc_puts>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:77
1c0016cc:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:78
1c0016d0:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:79
1c0016d4:	50016800 	b	360(0x168) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:81
1c0016d8:	2a000344 	ld.bu	$r4,$r26,0
1c0016dc:	57fdf3ff 	bl	-528(0xffffdf0) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:82
1c0016e0:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:83
1c0016e4:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:84
1c0016e8:	50015400 	b	340(0x154) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:86
1c0016ec:	00150007 	move	$r7,$r0
1c0016f0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0016f4:	28800344 	ld.w	$r4,$r26,0
1c0016f8:	57fe67ff 	bl	-412(0xffffe64) # 1c00155c <soc_printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:87
1c0016fc:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:88
1c001700:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:89
1c001704:	50013800 	b	312(0x138) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:91
1c001708:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00170c:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001710:	28800344 	ld.w	$r4,$r26,0
1c001714:	57fe4bff 	bl	-440(0xffffe48) # 1c00155c <soc_printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:92
1c001718:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:93
1c00171c:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:94
1c001720:	50011c00 	b	284(0x11c) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:96
1c001724:	00150007 	move	$r7,$r0
1c001728:	02802006 	addi.w	$r6,$r0,8(0x8)
1c00172c:	28800344 	ld.w	$r4,$r26,0
1c001730:	57fe2fff 	bl	-468(0xffffe2c) # 1c00155c <soc_printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:97
1c001734:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:98
1c001738:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:99
1c00173c:	50010000 	b	256(0x100) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:101
1c001740:	00150007 	move	$r7,$r0
1c001744:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001748:	28800344 	ld.w	$r4,$r26,0
1c00174c:	57fe13ff 	bl	-496(0xffffe10) # 1c00155c <soc_printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:102
1c001750:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:103
1c001754:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:104
1c001758:	5000e400 	b	228(0xe4) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:107
1c00175c:	00150007 	move	$r7,$r0
1c001760:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001764:	28800344 	ld.w	$r4,$r26,0
1c001768:	57fdf7ff 	bl	-524(0xffffdf4) # 1c00155c <soc_printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:108
1c00176c:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:109
1c001770:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:110
1c001774:	5000c800 	b	200(0xc8) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:112
1c001778:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00177c:	57fd53ff 	bl	-688(0xffffd50) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:113
1c001780:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:114
1c001784:	5000b800 	b	184(0xb8) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:116
1c001788:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:117
1c00178c:	00150005 	move	$r5,$r0
1c001790:	50001800 	b	24(0x18) # 1c0017a8 <soc_myprintf+0x15c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:118 (discriminator 3)
1c001794:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001798:	001c34a5 	mul.w	$r5,$r5,$r13
1c00179c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0017a0:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:117 (discriminator 3)
1c0017a4:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:117 (discriminator 1)
1c0017a8:	00105f2c 	add.w	$r12,$r25,$r23
1c0017ac:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0017b0:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c0017b4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0017b8:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c0017bc:	6fffd9cd 	bgeu	$r14,$r13,-40(0x3ffd8) # 1c001794 <soc_myprintf+0x148>
1c0017c0:	53fedbff 	b	-296(0xffffed8) # 1c001698 <soc_myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:123 (discriminator 3)
1c0017c4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0017c8:	001c34a5 	mul.w	$r5,$r5,$r13
1c0017cc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0017d0:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:122 (discriminator 3)
1c0017d4:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:122 (discriminator 1)
1c0017d8:	00105f2c 	add.w	$r12,$r25,$r23
1c0017dc:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0017e0:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c0017e4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0017e8:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c0017ec:	6fffd9cd 	bgeu	$r14,$r13,-40(0x3ffd8) # 1c0017c4 <soc_myprintf+0x178>
1c0017f0:	53feabff 	b	-344(0xffffea8) # 1c001698 <soc_myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:122
1c0017f4:	00150005 	move	$r5,$r0
1c0017f8:	53ffe3ff 	b	-32(0xfffffe0) # 1c0017d8 <soc_myprintf+0x18c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:128
1c0017fc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001800:	57fccfff 	bl	-820(0xffffccc) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:129
1c001804:	50003800 	b	56(0x38) # 1c00183c <soc_myprintf+0x1f0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:133 (discriminator 1)
1c001808:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00180c:	57fcc3ff 	bl	-832(0xffffcc0) # 1c0014cc <soc_myputchar>
1c001810:	50002400 	b	36(0x24) # 1c001834 <soc_myprintf+0x1e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:66 (discriminator 2)
1c001814:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:66 (discriminator 1)
1c001818:	00105f2c 	add.w	$r12,$r25,$r23
1c00181c:	28000198 	ld.b	$r24,$r12,0
1c001820:	40005f00 	beqz	$r24,92(0x5c) # 1c00187c <soc_myprintf+0x230>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:69
1c001824:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001828:	5bfe6f0c 	beq	$r24,$r12,-404(0x3fe6c) # 1c001694 <soc_myprintf+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:133
1c00182c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001830:	5bffdb0c 	beq	$r24,$r12,-40(0x3ffd8) # 1c001808 <soc_myprintf+0x1bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:134
1c001834:	00678304 	bstrpick.w	$r4,$r24,0x7,0x0
1c001838:	57fc97ff 	bl	-876(0xffffc94) # 1c0014cc <soc_myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:139
1c00183c:	43ffdaff 	beqz	$r23,-40(0x7fffd8) # 1c001814 <soc_myprintf+0x1c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:139 (discriminator 1)
1c001840:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c001844:	0020b6ec 	mod.w	$r12,$r23,$r13
1c001848:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001850 <soc_myprintf+0x204>
1c00184c:	002a0007 	break	0x7
1c001850:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001814 <soc_myprintf+0x1c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:141
1c001854:	140000ac 	lu12i.w	$r12,5(0x5)
1c001858:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:141 (discriminator 1)
1c00185c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001860:	43ffb59f 	beqz	$r12,-76(0x7fffb4) # 1c001814 <soc_myprintf+0x1c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:141 (discriminator 3)
1c001864:	03400000 	andi	$r0,$r0,0x0
1c001868:	03400000 	andi	$r0,$r0,0x0
1c00186c:	03400000 	andi	$r0,$r0,0x0
1c001870:	03400000 	andi	$r0,$r0,0x0
1c001874:	001501ac 	move	$r12,$r13
1c001878:	53ffe7ff 	b	-28(0xfffffe4) # 1c00185c <soc_myprintf+0x210>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_printf.c:147
1c00187c:	00150004 	move	$r4,$r0
1c001880:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001884:	2880a077 	ld.w	$r23,$r3,40(0x28)
1c001888:	28809078 	ld.w	$r24,$r3,36(0x24)
1c00188c:	28808079 	ld.w	$r25,$r3,32(0x20)
1c001890:	2880707a 	ld.w	$r26,$r3,28(0x1c)
1c001894:	02814063 	addi.w	$r3,$r3,80(0x50)
1c001898:	4c000020 	jirl	$r0,$r1,0

1c00189c <gpio_write>:
gpio_write():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:46
1c00189c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018a0:	60004184 	blt	$r12,$r4,64(0x40) # 1c0018e0 <gpio_write+0x44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:48
1c0018a4:	440020a0 	bnez	$r5,32(0x20) # 1c0018c4 <gpio_write+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:48 (discriminator 1)
1c0018a8:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0018ac:	288111ae 	ld.w	$r14,$r13,68(0x44)
1c0018b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0018b4:	00171184 	sll.w	$r4,$r12,$r4
1c0018b8:	001691c4 	andn	$r4,$r14,$r4
1c0018bc:	298111a4 	st.w	$r4,$r13,68(0x44)
1c0018c0:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:49
1c0018c4:	157fd60e 	lu12i.w	$r14,-262480(0xbfeb0)
1c0018c8:	288111cc 	ld.w	$r12,$r14,68(0x44)
1c0018cc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0018d0:	001711a4 	sll.w	$r4,$r13,$r4
1c0018d4:	0015118c 	or	$r12,$r12,$r4
1c0018d8:	298111cc 	st.w	$r12,$r14,68(0x44)
1c0018dc:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:51
1c0018e0:	02bf8084 	addi.w	$r4,$r4,-32(0xfe0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:52
1c0018e4:	440020a0 	bnez	$r5,32(0x20) # 1c001904 <gpio_write+0x68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:52 (discriminator 1)
1c0018e8:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0018ec:	288151ae 	ld.w	$r14,$r13,84(0x54)
1c0018f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0018f4:	00171184 	sll.w	$r4,$r12,$r4
1c0018f8:	001691c4 	andn	$r4,$r14,$r4
1c0018fc:	298151a4 	st.w	$r4,$r13,84(0x54)
1c001900:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:53
1c001904:	157fd60e 	lu12i.w	$r14,-262480(0xbfeb0)
1c001908:	288151cc 	ld.w	$r12,$r14,84(0x54)
1c00190c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001910:	001711a4 	sll.w	$r4,$r13,$r4
1c001914:	00151184 	or	$r4,$r12,$r4
1c001918:	298151c4 	st.w	$r4,$r14,84(0x54)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:55
1c00191c:	4c000020 	jirl	$r0,$r1,0

1c001920 <uart1_interrupt>:
uart1_interrupt():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_uart.c:12
1c001920:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c001924:	2a0001ac 	ld.bu	$r12,$r13,0
1c001928:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00192c:	0380118c 	ori	$r12,$r12,0x4
1c001930:	290001ac 	st.b	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_uart.c:13
1c001934:	4c000020 	jirl	$r0,$r1,0

1c001938 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:118
1c001938:	2880308c 	ld.w	$r12,$r4,12(0xc)
1c00193c:	00151585 	or	$r5,$r12,$r5
1c001940:	29803085 	st.w	$r5,$r4,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:119
1c001944:	4c000020 	jirl	$r0,$r1,0

1c001948 <WDG_DogFeed>:
WDG_DogFeed():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:13
1c001948:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00194c:	154ab4ac 	lu12i.w	$r12,-371291(0xa55a5)
1c001950:	0396a98c 	ori	$r12,$r12,0x5aa
1c001954:	2980d1ac 	st.w	$r12,$r13,52(0x34)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:14
1c001958:	4c000020 	jirl	$r0,$r1,0

1c00195c <TIM_GetITStatus>:
TIM_GetITStatus():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:156
1c00195c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001960:	2880018c 	ld.w	$r12,$r12,0
1c001964:	00149184 	and	$r4,$r12,$r4
1c001968:	40000880 	beqz	$r4,8(0x8) # 1c001970 <TIM_GetITStatus+0x14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:158
1c00196c:	02800404 	addi.w	$r4,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:165
1c001970:	4c000020 	jirl	$r0,$r1,0

1c001974 <TIM_ClearIT>:
TIM_ClearIT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:177
1c001974:	157fda0d 	lu12i.w	$r13,-262448(0xbfed0)
1c001978:	288001ac 	ld.w	$r12,$r13,0
1c00197c:	00151184 	or	$r4,$r12,$r4
1c001980:	298001a4 	st.w	$r4,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:178
1c001984:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c001988:	03800dad 	ori	$r13,$r13,0x3
1c00198c:	2a0001ac 	ld.bu	$r12,$r13,0
1c001990:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001994:	0380058c 	ori	$r12,$r12,0x1
1c001998:	290001ac 	st.b	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:179
1c00199c:	4c000020 	jirl	$r0,$r1,0

1c0019a0 <main>:
main():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:466
1c0019a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019a4:	29807061 	st.w	$r1,$r3,28(0x1c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467
1c0019a8:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c0019ac:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0019b0:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:469
1c0019b4:	57fafbff 	bl	-1288(0xffffaf8) # 1c0014ac <EnableInt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:471
1c0019b8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0019bc:	0380118c 	ori	$r12,$r12,0x4
1c0019c0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0019c4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472
1c0019c8:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0019cc:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0019d0:	50001800 	b	24(0x18) # 1c0019e8 <main+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472 (discriminator 3)
1c0019d4:	03400000 	andi	$r0,$r0,0x0
1c0019d8:	03400000 	andi	$r0,$r0,0x0
1c0019dc:	03400000 	andi	$r0,$r0,0x0
1c0019e0:	03400000 	andi	$r0,$r0,0x0
1c0019e4:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472 (discriminator 1)
1c0019e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0019ec:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c0019d4 <main+0x34>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:474
1c0019f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0019f4:	02b97084 	addi.w	$r4,$r4,-420(0xe5c)
1c0019f8:	57fc57ff 	bl	-940(0xffffc54) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475
1c0019fc:	140000ac 	lu12i.w	$r12,5(0x5)
1c001a00:	03accd8c 	ori	$r12,$r12,0xb33
1c001a04:	50001800 	b	24(0x18) # 1c001a1c <main+0x7c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475 (discriminator 3)
1c001a08:	03400000 	andi	$r0,$r0,0x0
1c001a0c:	03400000 	andi	$r0,$r0,0x0
1c001a10:	03400000 	andi	$r0,$r0,0x0
1c001a14:	03400000 	andi	$r0,$r0,0x0
1c001a18:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475 (discriminator 1)
1c001a1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a20:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001a08 <main+0x68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:478
1c001a24:	1c000025 	pcaddu12i	$r5,1(0x1)
1c001a28:	02b800a5 	addi.w	$r5,$r5,-512(0xe00)
1c001a2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a30:	02b80084 	addi.w	$r4,$r4,-512(0xe00)
1c001a34:	57fc1bff 	bl	-1000(0xffffc18) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:479
1c001a38:	140000ac 	lu12i.w	$r12,5(0x5)
1c001a3c:	03accd8c 	ori	$r12,$r12,0xb33
1c001a40:	50001800 	b	24(0x18) # 1c001a58 <main+0xb8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:479 (discriminator 3)
1c001a44:	03400000 	andi	$r0,$r0,0x0
1c001a48:	03400000 	andi	$r0,$r0,0x0
1c001a4c:	03400000 	andi	$r0,$r0,0x0
1c001a50:	03400000 	andi	$r0,$r0,0x0
1c001a54:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:479 (discriminator 1)
1c001a58:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a5c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001a44 <main+0xa4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:506
1c001a60:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001a64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a68:	02b75084 	addi.w	$r4,$r4,-556(0xdd4)
1c001a6c:	57fbe3ff 	bl	-1056(0xffffbe0) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:507
1c001a70:	140000ac 	lu12i.w	$r12,5(0x5)
1c001a74:	03accd8c 	ori	$r12,$r12,0xb33
1c001a78:	50001800 	b	24(0x18) # 1c001a90 <main+0xf0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:507 (discriminator 3)
1c001a7c:	03400000 	andi	$r0,$r0,0x0
1c001a80:	03400000 	andi	$r0,$r0,0x0
1c001a84:	03400000 	andi	$r0,$r0,0x0
1c001a88:	03400000 	andi	$r0,$r0,0x0
1c001a8c:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:507 (discriminator 1)
1c001a90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a94:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001a7c <main+0xdc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:509
1c001a98:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c001a9c:	2980306c 	st.w	$r12,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:510
1c001aa0:	28803065 	ld.w	$r5,$r3,12(0xc)
1c001aa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001aa8:	02b68084 	addi.w	$r4,$r4,-608(0xda0)
1c001aac:	57fba3ff 	bl	-1120(0xffffba0) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:511
1c001ab0:	140000ac 	lu12i.w	$r12,5(0x5)
1c001ab4:	03accd8c 	ori	$r12,$r12,0xb33
1c001ab8:	50001800 	b	24(0x18) # 1c001ad0 <main+0x130>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:511 (discriminator 3)
1c001abc:	03400000 	andi	$r0,$r0,0x0
1c001ac0:	03400000 	andi	$r0,$r0,0x0
1c001ac4:	03400000 	andi	$r0,$r0,0x0
1c001ac8:	03400000 	andi	$r0,$r0,0x0
1c001acc:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:511 (discriminator 1)
1c001ad0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001ad4:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001abc <main+0x11c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:513
1c001ad8:	57fe4bff 	bl	-440(0xffffe48) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:516 (discriminator 1)
1c001adc:	50000000 	b	0 # 1c001adc <main+0x13c>

1c001ae0 <UART1_HANDLER>:
UART1_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:522
1c001ae0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ae4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:523
1c001ae8:	157fe00d 	lu12i.w	$r13,-262400(0xbff00)
1c001aec:	288001ac 	ld.w	$r12,$r13,0
1c001af0:	03c0058c 	xori	$r12,$r12,0x1
1c001af4:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:524
1c001af8:	57fe2bff 	bl	-472(0xffffe28) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:525
1c001afc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b04:	4c000020 	jirl	$r0,$r1,0

1c001b08 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:4
1c001b08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b0c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:5
1c001b10:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b14:	028380c6 	addi.w	$r6,$r6,224(0xe0)
1c001b18:	02801405 	addi.w	$r5,$r0,5(0x5)
1c001b1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b20:	02b4d084 	addi.w	$r4,$r4,-716(0xd34)
1c001b24:	57f76fff 	bl	-2196(0xffff76c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:6
1c001b28:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b2c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001b30:	03808084 	ori	$r4,$r4,0x20
1c001b34:	57fe07ff 	bl	-508(0xffffe04) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:7
1c001b38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b40:	4c000020 	jirl	$r0,$r1,0

1c001b44 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:9
1c001b44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b48:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:10
1c001b4c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b50:	028230c6 	addi.w	$r6,$r6,140(0x8c)
1c001b54:	02802805 	addi.w	$r5,$r0,10(0xa)
1c001b58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b5c:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c001b60:	57f733ff 	bl	-2256(0xffff730) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:11
1c001b64:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001b68:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001b6c:	03808084 	ori	$r4,$r4,0x20
1c001b70:	57fdcbff 	bl	-568(0xffffdc8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:12
1c001b74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b7c:	4c000020 	jirl	$r0,$r1,0

1c001b80 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:14
1c001b80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b84:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:15
1c001b88:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b8c:	0280e0c6 	addi.w	$r6,$r6,56(0x38)
1c001b90:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c001b94:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b98:	02b2f084 	addi.w	$r4,$r4,-836(0xcbc)
1c001b9c:	57f6f7ff 	bl	-2316(0xffff6f4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:16
1c001ba0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001ba4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ba8:	03808084 	ori	$r4,$r4,0x20
1c001bac:	57fd8fff 	bl	-628(0xffffd8c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:17
1c001bb0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bb8:	4c000020 	jirl	$r0,$r1,0

1c001bbc <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:19
1c001bbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bc0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:20
1c001bc4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001bc8:	02bf90c6 	addi.w	$r6,$r6,-28(0xfe4)
1c001bcc:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001bd0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001bd4:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c001bd8:	57f6bbff 	bl	-2376(0xffff6b8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:21
1c001bdc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001be0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001be4:	03808084 	ori	$r4,$r4,0x20
1c001be8:	57fd53ff 	bl	-688(0xffffd50) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:22
1c001bec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bf4:	4c000020 	jirl	$r0,$r1,0

1c001bf8 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:24
1c001bf8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bfc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:25
1c001c00:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c04:	02be40c6 	addi.w	$r6,$r6,-112(0xf90)
1c001c08:	02806405 	addi.w	$r5,$r0,25(0x19)
1c001c0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c10:	02b11084 	addi.w	$r4,$r4,-956(0xc44)
1c001c14:	57f67fff 	bl	-2436(0xffff67c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:26
1c001c18:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001c1c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c20:	03808084 	ori	$r4,$r4,0x20
1c001c24:	57fd17ff 	bl	-748(0xffffd14) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:27
1c001c28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c30:	4c000020 	jirl	$r0,$r1,0

1c001c34 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:29
1c001c34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c38:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:30
1c001c3c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c40:	02bcf0c6 	addi.w	$r6,$r6,-196(0xf3c)
1c001c44:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c001c48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c4c:	02b02084 	addi.w	$r4,$r4,-1016(0xc08)
1c001c50:	57f643ff 	bl	-2496(0xffff640) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:31
1c001c54:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001c58:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c5c:	03808084 	ori	$r4,$r4,0x20
1c001c60:	57fcdbff 	bl	-808(0xffffcd8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:32
1c001c64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c6c:	4c000020 	jirl	$r0,$r1,0

1c001c70 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:34
1c001c70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c74:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:35
1c001c78:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c7c:	02bba0c6 	addi.w	$r6,$r6,-280(0xee8)
1c001c80:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001c84:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c88:	02af3084 	addi.w	$r4,$r4,-1076(0xbcc)
1c001c8c:	57f607ff 	bl	-2556(0xffff604) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:36
1c001c90:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001c94:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c98:	03808084 	ori	$r4,$r4,0x20
1c001c9c:	57fc9fff 	bl	-868(0xffffc9c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:37
1c001ca0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ca4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ca8:	4c000020 	jirl	$r0,$r1,0

1c001cac <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:39
1c001cac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cb0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:41
1c001cb4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cb8:	02ba50c6 	addi.w	$r6,$r6,-364(0xe94)
1c001cbc:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c001cc0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cc4:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c001cc8:	57f5cbff 	bl	-2616(0xffff5c8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:42
1c001ccc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001cd0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001cd4:	03808084 	ori	$r4,$r4,0x20
1c001cd8:	57fc63ff 	bl	-928(0xffffc60) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:43
1c001cdc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ce0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ce4:	4c000020 	jirl	$r0,$r1,0

1c001ce8 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:45
1c001ce8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cec:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:46
1c001cf0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cf4:	02b900c6 	addi.w	$r6,$r6,-448(0xe40)
1c001cf8:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c001cfc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d00:	02ad5084 	addi.w	$r4,$r4,-1196(0xb54)
1c001d04:	57f58fff 	bl	-2676(0xffff58c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:47
1c001d08:	02840005 	addi.w	$r5,$r0,256(0x100)
1c001d0c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d10:	03808084 	ori	$r4,$r4,0x20
1c001d14:	57fc27ff 	bl	-988(0xffffc24) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:48
1c001d18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d20:	4c000020 	jirl	$r0,$r1,0

1c001d24 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:50
1c001d24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d28:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:52
1c001d2c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d30:	02b7b0c6 	addi.w	$r6,$r6,-532(0xdec)
1c001d34:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c001d38:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d3c:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c001d40:	57f553ff 	bl	-2736(0xffff550) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:53
1c001d44:	02880005 	addi.w	$r5,$r0,512(0x200)
1c001d48:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d4c:	03808084 	ori	$r4,$r4,0x20
1c001d50:	57fbebff 	bl	-1048(0xffffbe8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:54
1c001d54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d5c:	4c000020 	jirl	$r0,$r1,0

1c001d60 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:56
1c001d60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d64:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:58
1c001d68:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d6c:	02b660c6 	addi.w	$r6,$r6,-616(0xd98)
1c001d70:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c001d74:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d78:	02ab7084 	addi.w	$r4,$r4,-1316(0xadc)
1c001d7c:	57f517ff 	bl	-2796(0xffff514) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:59
1c001d80:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001d84:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d88:	03808084 	ori	$r4,$r4,0x20
1c001d8c:	57fbafff 	bl	-1108(0xffffbac) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:60
1c001d90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d98:	4c000020 	jirl	$r0,$r1,0

1c001d9c <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:62
1c001d9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001da0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:64
1c001da4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001da8:	02b510c6 	addi.w	$r6,$r6,-700(0xd44)
1c001dac:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001db0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001db4:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c001db8:	57f4dbff 	bl	-2856(0xffff4d8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:65
1c001dbc:	03a00005 	ori	$r5,$r0,0x800
1c001dc0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001dc4:	03808084 	ori	$r4,$r4,0x20
1c001dc8:	57fb73ff 	bl	-1168(0xffffb70) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:66
1c001dcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001dd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dd4:	4c000020 	jirl	$r0,$r1,0

1c001dd8 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:68
1c001dd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ddc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:69
1c001de0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001de4:	02b3c0c6 	addi.w	$r6,$r6,-784(0xcf0)
1c001de8:	02811405 	addi.w	$r5,$r0,69(0x45)
1c001dec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001df0:	02a99084 	addi.w	$r4,$r4,-1436(0xa64)
1c001df4:	57f49fff 	bl	-2916(0xffff49c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:70
1c001df8:	14000025 	lu12i.w	$r5,1(0x1)
1c001dfc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e00:	03808084 	ori	$r4,$r4,0x20
1c001e04:	57fb37ff 	bl	-1228(0xffffb34) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:71
1c001e08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e10:	4c000020 	jirl	$r0,$r1,0

1c001e14 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:73
1c001e14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e18:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:74
1c001e1c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e20:	02b270c6 	addi.w	$r6,$r6,-868(0xc9c)
1c001e24:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c001e28:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e2c:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c001e30:	57f463ff 	bl	-2976(0xffff460) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:75
1c001e34:	14000045 	lu12i.w	$r5,2(0x2)
1c001e38:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e3c:	03808084 	ori	$r4,$r4,0x20
1c001e40:	57fafbff 	bl	-1288(0xffffaf8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:76
1c001e44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e4c:	4c000020 	jirl	$r0,$r1,0

1c001e50 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:78
1c001e50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e54:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:80
1c001e58:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e5c:	02b120c6 	addi.w	$r6,$r6,-952(0xc48)
1c001e60:	02814005 	addi.w	$r5,$r0,80(0x50)
1c001e64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e68:	02a7b084 	addi.w	$r4,$r4,-1556(0x9ec)
1c001e6c:	57f427ff 	bl	-3036(0xffff424) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:81
1c001e70:	14000085 	lu12i.w	$r5,4(0x4)
1c001e74:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e78:	03808084 	ori	$r4,$r4,0x20
1c001e7c:	57fabfff 	bl	-1348(0xffffabc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:82
1c001e80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e88:	4c000020 	jirl	$r0,$r1,0

1c001e8c <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:84
1c001e8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e90:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:86
1c001e94:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e98:	02afd0c6 	addi.w	$r6,$r6,-1036(0xbf4)
1c001e9c:	02815805 	addi.w	$r5,$r0,86(0x56)
1c001ea0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ea4:	02a6c084 	addi.w	$r4,$r4,-1616(0x9b0)
1c001ea8:	57f3ebff 	bl	-3096(0xffff3e8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:87
1c001eac:	14000105 	lu12i.w	$r5,8(0x8)
1c001eb0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001eb4:	03808084 	ori	$r4,$r4,0x20
1c001eb8:	57fa83ff 	bl	-1408(0xffffa80) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:88
1c001ebc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ec0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ec4:	4c000020 	jirl	$r0,$r1,0

1c001ec8 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:91
1c001ec8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ecc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:93
1c001ed0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ed4:	02ae80c6 	addi.w	$r6,$r6,-1120(0xba0)
1c001ed8:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c001edc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ee0:	02a5d084 	addi.w	$r4,$r4,-1676(0x974)
1c001ee4:	57f3afff 	bl	-3156(0xffff3ac) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:94
1c001ee8:	14000205 	lu12i.w	$r5,16(0x10)
1c001eec:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ef0:	03808084 	ori	$r4,$r4,0x20
1c001ef4:	57fa47ff 	bl	-1468(0xffffa44) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:95
1c001ef8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001efc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f00:	4c000020 	jirl	$r0,$r1,0

1c001f04 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:97
1c001f04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f08:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:99
1c001f0c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f10:	02ad30c6 	addi.w	$r6,$r6,-1204(0xb4c)
1c001f14:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c001f18:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f1c:	02a4e084 	addi.w	$r4,$r4,-1736(0x938)
1c001f20:	57f373ff 	bl	-3216(0xffff370) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:100
1c001f24:	14000405 	lu12i.w	$r5,32(0x20)
1c001f28:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f2c:	03808084 	ori	$r4,$r4,0x20
1c001f30:	57fa0bff 	bl	-1528(0xffffa08) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:101
1c001f34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f3c:	4c000020 	jirl	$r0,$r1,0

1c001f40 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:103
1c001f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f44:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:105
1c001f48:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f4c:	02abe0c6 	addi.w	$r6,$r6,-1288(0xaf8)
1c001f50:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c001f54:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f58:	02a3f084 	addi.w	$r4,$r4,-1796(0x8fc)
1c001f5c:	57f337ff 	bl	-3276(0xffff334) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:106
1c001f60:	14000805 	lu12i.w	$r5,64(0x40)
1c001f64:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f68:	03808084 	ori	$r4,$r4,0x20
1c001f6c:	57f9cfff 	bl	-1588(0xffff9cc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:107
1c001f70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f78:	4c000020 	jirl	$r0,$r1,0

1c001f7c <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:109
1c001f7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f80:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:111
1c001f84:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f88:	02aa90c6 	addi.w	$r6,$r6,-1372(0xaa4)
1c001f8c:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c001f90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f94:	02a30084 	addi.w	$r4,$r4,-1856(0x8c0)
1c001f98:	57f2fbff 	bl	-3336(0xffff2f8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:112
1c001f9c:	14001005 	lu12i.w	$r5,128(0x80)
1c001fa0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001fa4:	03808084 	ori	$r4,$r4,0x20
1c001fa8:	57f993ff 	bl	-1648(0xffff990) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:113
1c001fac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fb4:	4c000020 	jirl	$r0,$r1,0

1c001fb8 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:115
1c001fb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fbc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:117
1c001fc0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fc4:	02a940c6 	addi.w	$r6,$r6,-1456(0xa50)
1c001fc8:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c001fcc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fd0:	02a21084 	addi.w	$r4,$r4,-1916(0x884)
1c001fd4:	57f2bfff 	bl	-3396(0xffff2bc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:118
1c001fd8:	14002005 	lu12i.w	$r5,256(0x100)
1c001fdc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001fe0:	03808084 	ori	$r4,$r4,0x20
1c001fe4:	57f957ff 	bl	-1708(0xffff954) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:119
1c001fe8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ff0:	4c000020 	jirl	$r0,$r1,0

1c001ff4 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:121
1c001ff4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ff8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:122
1c001ffc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002000:	02a7f0c6 	addi.w	$r6,$r6,-1540(0x9fc)
1c002004:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c002008:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00200c:	02a12084 	addi.w	$r4,$r4,-1976(0x848)
1c002010:	57f283ff 	bl	-3456(0xffff280) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:123
1c002014:	14004005 	lu12i.w	$r5,512(0x200)
1c002018:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00201c:	03808084 	ori	$r4,$r4,0x20
1c002020:	57f91bff 	bl	-1768(0xffff918) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:124
1c002024:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002028:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00202c:	4c000020 	jirl	$r0,$r1,0

1c002030 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:126
1c002030:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002034:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:127
1c002038:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00203c:	02a6a0c6 	addi.w	$r6,$r6,-1624(0x9a8)
1c002040:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c002044:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002048:	02a03084 	addi.w	$r4,$r4,-2036(0x80c)
1c00204c:	57f247ff 	bl	-3516(0xffff244) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:128
1c002050:	14008005 	lu12i.w	$r5,1024(0x400)
1c002054:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002058:	03808084 	ori	$r4,$r4,0x20
1c00205c:	57f8dfff 	bl	-1828(0xffff8dc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:129
1c002060:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002068:	4c000020 	jirl	$r0,$r1,0

1c00206c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:131
1c00206c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002070:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:133
1c002074:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002078:	02a550c6 	addi.w	$r6,$r6,-1708(0x954)
1c00207c:	02821405 	addi.w	$r5,$r0,133(0x85)
1c002080:	1c000004 	pcaddu12i	$r4,0
1c002084:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
1c002088:	57f20bff 	bl	-3576(0xffff208) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:134
1c00208c:	14010005 	lu12i.w	$r5,2048(0x800)
1c002090:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002094:	03808084 	ori	$r4,$r4,0x20
1c002098:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:135
1c00209c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020a4:	4c000020 	jirl	$r0,$r1,0

1c0020a8 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:137
1c0020a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020ac:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:139
1c0020b0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020b4:	02a400c6 	addi.w	$r6,$r6,-1792(0x900)
1c0020b8:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c0020bc:	1c000004 	pcaddu12i	$r4,0
1c0020c0:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c0020c4:	57f1cfff 	bl	-3636(0xffff1cc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:140
1c0020c8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0020cc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0020d0:	03808084 	ori	$r4,$r4,0x20
1c0020d4:	57f867ff 	bl	-1948(0xffff864) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:141
1c0020d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020e0:	4c000020 	jirl	$r0,$r1,0

1c0020e4 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:143
1c0020e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020e8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:145
1c0020ec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020f0:	02a2b0c6 	addi.w	$r6,$r6,-1876(0x8ac)
1c0020f4:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0020f8:	1c000004 	pcaddu12i	$r4,0
1c0020fc:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c002100:	57f193ff 	bl	-3696(0xffff190) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:146
1c002104:	14040005 	lu12i.w	$r5,8192(0x2000)
1c002108:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00210c:	03808084 	ori	$r4,$r4,0x20
1c002110:	57f82bff 	bl	-2008(0xffff828) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:147
1c002114:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00211c:	4c000020 	jirl	$r0,$r1,0

1c002120 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:149
1c002120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002124:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:151
1c002128:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00212c:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c002130:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c002134:	1c000004 	pcaddu12i	$r4,0
1c002138:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c00213c:	57f157ff 	bl	-3756(0xffff154) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:152
1c002140:	14080005 	lu12i.w	$r5,16384(0x4000)
1c002144:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002148:	03808084 	ori	$r4,$r4,0x20
1c00214c:	57f7efff 	bl	-2068(0xffff7ec) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:153
1c002150:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002154:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002158:	4c000020 	jirl	$r0,$r1,0

1c00215c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:155
1c00215c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002160:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:157
1c002164:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002168:	02a010c6 	addi.w	$r6,$r6,-2044(0x804)
1c00216c:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c002170:	1c000004 	pcaddu12i	$r4,0
1c002174:	029b8084 	addi.w	$r4,$r4,1760(0x6e0)
1c002178:	57f11bff 	bl	-3816(0xffff118) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:158
1c00217c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c002180:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002184:	03808084 	ori	$r4,$r4,0x20
1c002188:	57f7b3ff 	bl	-2128(0xffff7b0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:159
1c00218c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002190:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002194:	4c000020 	jirl	$r0,$r1,0

1c002198 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:161
1c002198:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00219c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:163
1c0021a0:	1c000006 	pcaddu12i	$r6,0
1c0021a4:	029ec0c6 	addi.w	$r6,$r6,1968(0x7b0)
1c0021a8:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c0021ac:	1c000004 	pcaddu12i	$r4,0
1c0021b0:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
1c0021b4:	57f0dfff 	bl	-3876(0xffff0dc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:164
1c0021b8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0021bc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0021c0:	03808084 	ori	$r4,$r4,0x20
1c0021c4:	57f777ff 	bl	-2188(0xffff774) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:165
1c0021c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021d0:	4c000020 	jirl	$r0,$r1,0

1c0021d4 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:168
1c0021d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021d8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:170
1c0021dc:	1c000006 	pcaddu12i	$r6,0
1c0021e0:	029d70c6 	addi.w	$r6,$r6,1884(0x75c)
1c0021e4:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0021e8:	1c000004 	pcaddu12i	$r4,0
1c0021ec:	0299a084 	addi.w	$r4,$r4,1640(0x668)
1c0021f0:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:171
1c0021f4:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0021f8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0021fc:	03808084 	ori	$r4,$r4,0x20
1c002200:	57f73bff 	bl	-2248(0xffff738) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:172
1c002204:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002208:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00220c:	4c000020 	jirl	$r0,$r1,0

1c002210 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:174
1c002210:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002214:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:176
1c002218:	1c000006 	pcaddu12i	$r6,0
1c00221c:	029c20c6 	addi.w	$r6,$r6,1800(0x708)
1c002220:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c002224:	1c000004 	pcaddu12i	$r4,0
1c002228:	0298b084 	addi.w	$r4,$r4,1580(0x62c)
1c00222c:	57f067ff 	bl	-3996(0xffff064) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:177
1c002230:	14800005 	lu12i.w	$r5,262144(0x40000)
1c002234:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002238:	03808084 	ori	$r4,$r4,0x20
1c00223c:	57f6ffff 	bl	-2308(0xffff6fc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:178
1c002240:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002244:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002248:	4c000020 	jirl	$r0,$r1,0

1c00224c <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:180
1c00224c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002250:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:182
1c002254:	1c000006 	pcaddu12i	$r6,0
1c002258:	029ad0c6 	addi.w	$r6,$r6,1716(0x6b4)
1c00225c:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c002260:	1c000004 	pcaddu12i	$r4,0
1c002264:	0297c084 	addi.w	$r4,$r4,1520(0x5f0)
1c002268:	57f02bff 	bl	-4056(0xffff028) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:183
1c00226c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c002270:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002274:	03808084 	ori	$r4,$r4,0x20
1c002278:	57f6c3ff 	bl	-2368(0xffff6c0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:184
1c00227c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002284:	4c000020 	jirl	$r0,$r1,0

1c002288 <ext_handler>:
ext_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:221
1c002288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00228c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002290:	29802077 	st.w	$r23,$r3,8(0x8)
1c002294:	29801078 	st.w	$r24,$r3,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:222
1c002298:	157fd617 	lu12i.w	$r23,-262480(0xbfeb0)
1c00229c:	0380f2ec 	ori	$r12,$r23,0x3c
1c0022a0:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0022a4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:226
1c0022a8:	1c000006 	pcaddu12i	$r6,0
1c0022ac:	029950c6 	addi.w	$r6,$r6,1620(0x654)
1c0022b0:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c0022b4:	1c000004 	pcaddu12i	$r4,0
1c0022b8:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c0022bc:	57efd7ff 	bl	-4140(0xfffefd4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:227
1c0022c0:	038082f7 	ori	$r23,$r23,0x20
1c0022c4:	288032f8 	ld.w	$r24,$r23,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:228
1c0022c8:	288002ec 	ld.w	$r12,$r23,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:229
1c0022cc:	0014b318 	and	$r24,$r24,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:230
1c0022d0:	03400000 	andi	$r0,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232
1c0022d4:	00150017 	move	$r23,$r0
1c0022d8:	50000800 	b	8(0x8) # 1c0022e0 <ext_handler+0x58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 2)
1c0022dc:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 1)
1c0022e0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0022e4:	68002997 	bltu	$r12,$r23,40(0x28) # 1c00230c <ext_handler+0x84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:234
1c0022e8:	0017df0c 	srl.w	$r12,$r24,$r23
1c0022ec:	0340058c 	andi	$r12,$r12,0x1
1c0022f0:	43ffed9f 	beqz	$r12,-20(0x7fffec) # 1c0022dc <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:236
1c0022f4:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0022f8:	02a4518c 	addi.w	$r12,$r12,-1772(0x914)
1c0022fc:	0004b2ec 	alsl.w	$r12,$r23,$r12,0x2
1c002300:	2880018c 	ld.w	$r12,$r12,0
1c002304:	4c000181 	jirl	$r1,$r12,0
1c002308:	53ffd7ff 	b	-44(0xfffffd4) # 1c0022dc <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:239
1c00230c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002310:	28802077 	ld.w	$r23,$r3,8(0x8)
1c002314:	28801078 	ld.w	$r24,$r3,4(0x4)
1c002318:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00231c:	4c000020 	jirl	$r0,$r1,0

1c002320 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:271
1c002320:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002324:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:273
1c002328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00232c:	0380f18d 	ori	$r13,$r12,0x3c
1c002330:	1400020e 	lu12i.w	$r14,16(0x10)
1c002334:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:274
1c002338:	0380118c 	ori	$r12,$r12,0x4
1c00233c:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:275
1c002340:	57f60bff 	bl	-2552(0xffff608) # 1c001948 <WDG_DogFeed>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:277
1c002344:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002348:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00234c:	4c000020 	jirl	$r0,$r1,0

1c002350 <TOUCH>:
TOUCH():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:288
1c002350:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002354:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:292
1c002358:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00235c:	0380118c 	ori	$r12,$r12,0x4
1c002360:	28800185 	ld.w	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:293
1c002364:	2880018d 	ld.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:294
1c002368:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00236c:	0380f1ad 	ori	$r13,$r13,0x3c
1c002370:	1400040e 	lu12i.w	$r14,32(0x20)
1c002374:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:295
1c002378:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00237c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:296
1c002380:	007bc0a5 	bstrpick.w	$r5,$r5,0x1b,0x10
1c002384:	1c000004 	pcaddu12i	$r4,0
1c002388:	0293b084 	addi.w	$r4,$r4,1260(0x4ec)
1c00238c:	57ef07ff 	bl	-4348(0xfffef04) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:301
1c002390:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002394:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002398:	4c000020 	jirl	$r0,$r1,0

1c00239c <UART2_INT>:
UART2_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:313
1c00239c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023a0:	0380f18c 	ori	$r12,$r12,0x3c
1c0023a4:	1400080d 	lu12i.w	$r13,64(0x40)
1c0023a8:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:314
1c0023ac:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0023b0:	0380098c 	ori	$r12,$r12,0x2
1c0023b4:	2a00018c 	ld.bu	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:315
1c0023b8:	4c000020 	jirl	$r0,$r1,0

1c0023bc <BAT_FAIL>:
BAT_FAIL():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:326
1c0023bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023c0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:327
1c0023c4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0023c8:	038011ae 	ori	$r14,$r13,0x4
1c0023cc:	288001cc 	ld.w	$r12,$r14,0
1c0023d0:	0077cd8c 	bstrpick.w	$r12,$r12,0x17,0x13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:328
1c0023d4:	288001ce 	ld.w	$r14,$r14,0
1c0023d8:	1401f00f 	lu12i.w	$r15,3968(0xf80)
1c0023dc:	0014bdce 	and	$r14,$r14,$r15
1c0023e0:	0380f1ad 	ori	$r13,$r13,0x3c
1c0023e4:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:329
1c0023e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0023ec:	5800198d 	beq	$r12,$r13,24(0x18) # 1c002404 <BAT_FAIL+0x48>
1c0023f0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0023f4:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c002420 <BAT_FAIL+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c0023f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002400:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:331
1c002404:	1c000004 	pcaddu12i	$r4,0
1c002408:	02923084 	addi.w	$r4,$r4,1164(0x48c)
1c00240c:	57ee87ff 	bl	-4476(0xfffee84) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:332
1c002410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002414:	0380118c 	ori	$r12,$r12,0x4
1c002418:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:333
1c00241c:	53ffdfff 	b	-36(0xfffffdc) # 1c0023f8 <BAT_FAIL+0x3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:341
1c002420:	1c000004 	pcaddu12i	$r4,0
1c002424:	02926084 	addi.w	$r4,$r4,1176(0x498)
1c002428:	57ee6bff 	bl	-4504(0xfffee68) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:342
1c00242c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002430:	0380118c 	ori	$r12,$r12,0x4
1c002434:	2880018d 	ld.w	$r13,$r12,0
1c002438:	15fffeee 	lu12i.w	$r14,-9(0xffff7)
1c00243c:	03bffdce 	ori	$r14,$r14,0xfff
1c002440:	0014b9ad 	and	$r13,$r13,$r14
1c002444:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c002448:	53ffb3ff 	b	-80(0xfffffb0) # 1c0023f8 <BAT_FAIL+0x3c>

1c00244c <intc_handler>:
intc_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:359
1c00244c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002450:	29803061 	st.w	$r1,$r3,12(0xc)
1c002454:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:360
1c002458:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00245c:	0380158c 	ori	$r12,$r12,0x5
1c002460:	2a000197 	ld.bu	$r23,$r12,0
1c002464:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:362
1c002468:	034006ec 	andi	$r12,$r23,0x1
1c00246c:	44004580 	bnez	$r12,68(0x44) # 1c0024b0 <intc_handler+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:374
1c002470:	034012ec 	andi	$r12,$r23,0x4
1c002474:	44007580 	bnez	$r12,116(0x74) # 1c0024e8 <intc_handler+0x9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:403
1c002478:	034022f7 	andi	$r23,$r23,0x8
1c00247c:	400016e0 	beqz	$r23,20(0x14) # 1c002490 <intc_handler+0x44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:408
1c002480:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002484:	03800d8c 	ori	$r12,$r12,0x3
1c002488:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00248c:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:411
1c002490:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002494:	03800d8c 	ori	$r12,$r12,0x3
1c002498:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00249c:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:412
1c0024a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024a4:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0024a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024ac:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:364
1c0024b0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0024b4:	57f4abff 	bl	-2904(0xffff4a8) # 1c00195c <TIM_GetITStatus>
1c0024b8:	43ffb89f 	beqz	$r4,-72(0x7fffb8) # 1c002470 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:367
1c0024bc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0024c0:	02ad118c 	addi.w	$r12,$r12,-1212(0xb44)
1c0024c4:	2880018d 	ld.w	$r13,$r12,0
1c0024c8:	024005ad 	sltui	$r13,$r13,1(0x1)
1c0024cc:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:368
1c0024d0:	28800185 	ld.w	$r5,$r12,0
1c0024d4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0024d8:	57f3c7ff 	bl	-3132(0xffff3c4) # 1c00189c <gpio_write>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:370
1c0024dc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0024e0:	57f497ff 	bl	-2924(0xffff494) # 1c001974 <TIM_ClearIT>
1c0024e4:	53ff8fff 	b	-116(0xfffff8c) # 1c002470 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:376
1c0024e8:	57f5fbff 	bl	-2568(0xffff5f8) # 1c001ae0 <UART1_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:385
1c0024ec:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0024f0:	0380118c 	ori	$r12,$r12,0x4
1c0024f4:	2880018c 	ld.w	$r12,$r12,0
1c0024f8:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:383
1c0024fc:	0015000e 	move	$r14,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c002500:	50002000 	b	32(0x20) # 1c002520 <intc_handler+0xd4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:389
1c002504:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002508:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:390
1c00250c:	0280040e 	addi.w	$r14,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:397
1c002510:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002514:	0380118c 	ori	$r12,$r12,0x4
1c002518:	2880018c 	ld.w	$r12,$r12,0
1c00251c:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c002520:	0340058c 	andi	$r12,$r12,0x1
1c002524:	47ff559f 	bnez	$r12,-172(0x7fff54) # 1c002478 <intc_handler+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:387
1c002528:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00252c:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:388
1c002530:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c002534:	5bffd18d 	beq	$r12,$r13,-48(0x3ffd0) # 1c002504 <intc_handler+0xb8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:391
1c002538:	400019c0 	beqz	$r14,24(0x18) # 1c002550 <intc_handler+0x104>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:393
1c00253c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002540:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c002544:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:392
1c002548:	0015000e 	move	$r14,$r0
1c00254c:	53ffc7ff 	b	-60(0xfffffc4) # 1c002510 <intc_handler+0xc4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:395
1c002550:	157fd10d 	lu12i.w	$r13,-262520(0xbfe88)
1c002554:	298001ac 	st.w	$r12,$r13,0
1c002558:	53ffbbff 	b	-72(0xfffffb8) # 1c002510 <intc_handler+0xc4>

1c00255c <TIMER_HANDLER>:
TIMER_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:415
1c00255c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002560:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:416
1c002564:	57ef5fff 	bl	-4260(0xfffef5c) # 1c0014c0 <Set_Timer_clear>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:417
1c002568:	1c000004 	pcaddu12i	$r4,0
1c00256c:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c002570:	57ed23ff 	bl	-4832(0xfffed20) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:418
1c002574:	57ef47ff 	bl	-4284(0xfffef44) # 1c0014b8 <Set_Timer_stop>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:419
1c002578:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00257c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002580:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002584 <__FUNCTION__.1776-0x378>:
1c002584:	1c0013bc 	pcaddu12i	$r28,157(0x9d)
1c002588:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00258c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002590:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002594:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002598:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00259c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025a0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025a4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025a8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025ac:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025b0:	1c0013cc 	pcaddu12i	$r12,158(0x9e)
1c0025b4:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025b8:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025bc:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025c0:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025c4:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025c8:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025cc:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025d0:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025d4:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0025d8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025dc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025e0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025e4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025e8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025ec:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025f0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025f4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025f8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0025fc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002600:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002604:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002608:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00260c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002610:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002614:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002618:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00261c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002620:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002624:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002628:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00262c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002630:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002634:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002638:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00263c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002640:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002644:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002648:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00264c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002650:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002654:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002658:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00265c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002660:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002664:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002668:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00266c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002670:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002674:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002678:	1c001384 	pcaddu12i	$r4,156(0x9c)
1c00267c:	1c00131c 	pcaddu12i	$r28,152(0x98)
1c002680:	1c00134c 	pcaddu12i	$r12,154(0x9a)
1c002684:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002688:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00268c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002690:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002694:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002698:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00269c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026ac:	1c001368 	pcaddu12i	$r8,155(0x9b)
1c0026b0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0026b4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026b8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026bc:	1c001308 	pcaddu12i	$r8,152(0x98)
1c0026c0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026c4:	1c001330 	pcaddu12i	$r16,153(0x99)
1c0026c8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026cc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026d0:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0026d4:	1c001778 	pcaddu12i	$r24,187(0xbb)
1c0026d8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026dc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026e0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026e4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026e8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026ec:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026f0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026f4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026f8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0026fc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002700:	1c001788 	pcaddu12i	$r8,188(0xbc)
1c002704:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002708:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c00270c:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002710:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002714:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002718:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c00271c:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002720:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002724:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002728:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00272c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002730:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002734:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002738:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00273c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002740:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002744:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002748:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00274c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002750:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002754:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002758:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00275c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002760:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002764:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002768:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00276c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002770:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002774:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002778:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00277c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002780:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002784:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002788:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00278c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002790:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002794:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002798:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00279c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027a0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027a4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027a8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027ac:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027b0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027b4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027b8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027bc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027c0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027c4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027c8:	1c001740 	pcaddu12i	$r0,186(0xba)
1c0027cc:	1c0016d8 	pcaddu12i	$r24,182(0xb6)
1c0027d0:	1c001708 	pcaddu12i	$r8,184(0xb8)
1c0027d4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027d8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027dc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027ec:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027fc:	1c001724 	pcaddu12i	$r4,185(0xb9)
1c002800:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c002804:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002808:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00280c:	1c0016c4 	pcaddu12i	$r4,182(0xb6)
1c002810:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002814:	1c0016ec 	pcaddu12i	$r12,183(0xb7)
1c002818:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00281c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002820:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c002824:	44434241 	bnez	$r18,279360(0x44340) # 1c046b64 <_sidata+0x43edc>
1c002828:	00000000 	0x00000000
1c00282c:	30727473 	0x30727473
1c002830:	25203d20 	stptr.w	$r0,$r9,8252(0x203c)
1c002834:	000a0d73 	0x000a0d73
1c002838:	206e656c 	ll.w	$r12,$r11,28260(0x6e64)
1c00283c:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c004d5c <_sidata+0x20d4>
1c002840:	00000a0d 	0x00000a0d
1c002844:	206d756e 	ll.w	$r14,$r11,28020(0x6d74)
1c002848:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c004d68 <_sidata+0x20e0>
1c00284c:	00000a0d 	0x00000a0d
1c002850:	3c200a0d 	0x3c200a0d
1c002854:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c019474 <_sidata+0x167ec>
1c002858:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00285c:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe48c0 <_start-0x1b740>
1c002860:	3a636e75 	0x3a636e75
1c002864:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c002868:	0a0d3e20 	0x0a0d3e20
1c00286c:	00000000 	0x00000000
1c002870:	2d2d2d0a 	0x2d2d2d0a
1c002874:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bff9de0 <_start-0x6220>
1c002878:	746e4968 	0x746e4968
1c00287c:	79654b3a 	0x79654b3a
1c002880:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe89e8 <_start-0x17618>
1c002884:	3a6c656e 	0x3a6c656e
1c002888:	78257830 	0x78257830
1c00288c:	0000000a 	0x0000000a
1c002890:	2e2e2e0a 	0x2e2e2e0a
1c002894:	2e2e2e2e 	0x2e2e2e2e
1c002898:	2e2e2e2e 	0x2e2e2e2e
1c00289c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396ac8 <_sidata+0x393e40>
1c0028a0:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd16efc <_start-0x2e9104>
1c0028a4:	2e2e4c49 	0x2e2e4c49
1c0028a8:	2e2e2e2e 	0x2e2e2e2e
1c0028ac:	2e2e2e2e 	0x2e2e2e2e
1c0028b0:	2e2e2e2e 	0x2e2e2e2e
1c0028b4:	00000d0a 	0x00000d0a
1c0028b8:	2e2e2e0a 	0x2e2e2e0a
1c0028bc:	2e2e2e2e 	0x2e2e2e2e
1c0028c0:	2e2e2e2e 	0x2e2e2e2e
1c0028c4:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c3869f0 <_sidata+0x383d68>
1c0028c8:	2e2e2e43 	0x2e2e2e43
1c0028cc:	2e2e2e2e 	0x2e2e2e2e
1c0028d0:	2e2e2e2e 	0x2e2e2e2e
1c0028d4:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0028d8:	0000000d 	0x0000000d
1c0028dc:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019b48 <_sidata+0x16ec0>
1c0028e0:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019234 <_sidata+0x165ac>
1c0028e4:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff4954 <_start-0xb6ac>
1c0028e8:	7261656c 	0x7261656c
1c0028ec:	746e6920 	0x746e6920
1c0028f0:	75727265 	0x75727265
1c0028f4:	2e2e7470 	0x2e2e7470
1c0028f8:	0000000a 	0x0000000a

1c0028fc <__FUNCTION__.1776>:
1c0028fc:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bff9d74 <_start-0x628c>
1c002900:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009760 <_sidata+0x6ad8>
1c002904:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002908 <__FUNCTION__.1767>:
1c002908:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019d80 <_sidata+0x170f8>
1c00290c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019970 <_sidata+0x16ce8>
1c002910:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff6074 <_start-0x9f8c>
1c002914:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9a84 <_start-0x657c>
1c002918:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009778 <_sidata+0x6af0>
1c00291c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002920 <__FUNCTION__.1763>:
1c002920:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019d98 <_sidata+0x17110>
1c002924:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019988 <_sidata+0x16d00>
1c002928:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff5f8c <_start-0xa074>
1c00292c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9a9c <_start-0x6564>
1c002930:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009790 <_sidata+0x6b08>
1c002934:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002938 <__FUNCTION__.1759>:
1c002938:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019db0 <_sidata+0x17128>
1c00293c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0199a0 <_sidata+0x16d18>
1c002940:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff5ea4 <_start-0xa15c>
1c002944:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ab4 <_start-0x654c>
1c002948:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0097a8 <_sidata+0x6b20>
1c00294c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002950 <__FUNCTION__.1755>:
1c002950:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019dc8 <_sidata+0x17140>
1c002954:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0199b8 <_sidata+0x16d30>
1c002958:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff5dbc <_start-0xa244>
1c00295c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9acc <_start-0x6534>
1c002960:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0097c0 <_sidata+0x6b38>
1c002964:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002968 <__FUNCTION__.1751>:
1c002968:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019de0 <_sidata+0x17158>
1c00296c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0199d0 <_sidata+0x16d48>
1c002970:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff5cd4 <_start-0xa32c>
1c002974:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ae4 <_start-0x651c>
1c002978:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0097d8 <_sidata+0x6b50>
1c00297c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002980 <__FUNCTION__.1747>:
1c002980:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019df8 <_sidata+0x17170>
1c002984:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0199e8 <_sidata+0x16d60>
1c002988:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff5bec <_start-0xa414>
1c00298c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9afc <_start-0x6504>
1c002990:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0097f0 <_sidata+0x6b68>
1c002994:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002998 <__FUNCTION__.1743>:
1c002998:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e10 <_sidata+0x17188>
1c00299c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a00 <_sidata+0x16d78>
1c0029a0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff5b04 <_start-0xa4fc>
1c0029a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b14 <_start-0x64ec>
1c0029a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009808 <_sidata+0x6b80>
1c0029ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0029b0 <__FUNCTION__.1739>:
1c0029b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e28 <_sidata+0x171a0>
1c0029b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a18 <_sidata+0x16d90>
1c0029b8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5a1c <_start-0xa5e4>
1c0029bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b2c <_start-0x64d4>
1c0029c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009820 <_sidata+0x6b98>
1c0029c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0029c8 <__FUNCTION__.1735>:
1c0029c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e40 <_sidata+0x171b8>
1c0029cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a30 <_sidata+0x16da8>
1c0029d0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6130 <_start-0x9ed0>
1c0029d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b44 <_start-0x64bc>
1c0029d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009838 <_sidata+0x6bb0>
1c0029dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0029e0 <__FUNCTION__.1731>:
1c0029e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e58 <_sidata+0x171d0>
1c0029e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a48 <_sidata+0x16dc0>
1c0029e8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff6048 <_start-0x9fb8>
1c0029ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b5c <_start-0x64a4>
1c0029f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009850 <_sidata+0x6bc8>
1c0029f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0029f8 <__FUNCTION__.1727>:
1c0029f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e70 <_sidata+0x171e8>
1c0029fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a60 <_sidata+0x16dd8>
1c002a00:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff5f60 <_start-0xa0a0>
1c002a04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b74 <_start-0x648c>
1c002a08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009868 <_sidata+0x6be0>
1c002a0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a10 <__FUNCTION__.1723>:
1c002a10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e88 <_sidata+0x17200>
1c002a14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a78 <_sidata+0x16df0>
1c002a18:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff5e78 <_start-0xa188>
1c002a1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b8c <_start-0x6474>
1c002a20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009880 <_sidata+0x6bf8>
1c002a24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a28 <__FUNCTION__.1719>:
1c002a28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ea0 <_sidata+0x17218>
1c002a2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a90 <_sidata+0x16e08>
1c002a30:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff5d90 <_start-0xa270>
1c002a34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ba4 <_start-0x645c>
1c002a38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009898 <_sidata+0x6c10>
1c002a3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a40 <__FUNCTION__.1715>:
1c002a40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019eb8 <_sidata+0x17230>
1c002a44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019aa8 <_sidata+0x16e20>
1c002a48:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff5ca8 <_start-0xa358>
1c002a4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bbc <_start-0x6444>
1c002a50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098b0 <_sidata+0x6c28>
1c002a54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a58 <__FUNCTION__.1711>:
1c002a58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ed0 <_sidata+0x17248>
1c002a5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ac0 <_sidata+0x16e38>
1c002a60:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff5bc0 <_start-0xa440>
1c002a64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bd4 <_start-0x642c>
1c002a68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098c8 <_sidata+0x6c40>
1c002a6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a70 <__FUNCTION__.1707>:
1c002a70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ee8 <_sidata+0x17260>
1c002a74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ad8 <_sidata+0x16e50>
1c002a78:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff5ad8 <_start-0xa528>
1c002a7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bec <_start-0x6414>
1c002a80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098e0 <_sidata+0x6c58>
1c002a84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a88 <__FUNCTION__.1703>:
1c002a88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f00 <_sidata+0x17278>
1c002a8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019af0 <_sidata+0x16e68>
1c002a90:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff61f0 <_start-0x9e10>
1c002a94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c04 <_start-0x63fc>
1c002a98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098f8 <_sidata+0x6c70>
1c002a9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002aa0 <__FUNCTION__.1699>:
1c002aa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f18 <_sidata+0x17290>
1c002aa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b08 <_sidata+0x16e80>
1c002aa8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff6108 <_start-0x9ef8>
1c002aac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c1c <_start-0x63e4>
1c002ab0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009910 <_sidata+0x6c88>
1c002ab4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ab8 <__FUNCTION__.1695>:
1c002ab8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f30 <_sidata+0x172a8>
1c002abc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b20 <_sidata+0x16e98>
1c002ac0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6020 <_start-0x9fe0>
1c002ac4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c34 <_start-0x63cc>
1c002ac8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009928 <_sidata+0x6ca0>
1c002acc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ad0 <__FUNCTION__.1691>:
1c002ad0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f48 <_sidata+0x172c0>
1c002ad4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b38 <_sidata+0x16eb0>
1c002ad8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff5f38 <_start-0xa0c8>
1c002adc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c4c <_start-0x63b4>
1c002ae0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009940 <_sidata+0x6cb8>
1c002ae4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ae8 <__FUNCTION__.1687>:
1c002ae8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f60 <_sidata+0x172d8>
1c002aec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b50 <_sidata+0x16ec8>
1c002af0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5e50 <_start-0xa1b0>
1c002af4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c64 <_start-0x639c>
1c002af8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009958 <_sidata+0x6cd0>
1c002afc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b00 <__FUNCTION__.1683>:
1c002b00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f78 <_sidata+0x172f0>
1c002b04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b68 <_sidata+0x16ee0>
1c002b08:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5d68 <_start-0xa298>
1c002b0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c7c <_start-0x6384>
1c002b10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009970 <_sidata+0x6ce8>
1c002b14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b18 <__FUNCTION__.1679>:
1c002b18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f90 <_sidata+0x17308>
1c002b1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b80 <_sidata+0x16ef8>
1c002b20:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5c80 <_start-0xa380>
1c002b24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c94 <_start-0x636c>
1c002b28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009988 <_sidata+0x6d00>
1c002b2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b30 <__FUNCTION__.1675>:
1c002b30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fa8 <_sidata+0x17320>
1c002b34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b98 <_sidata+0x16f10>
1c002b38:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5b98 <_start-0xa468>
1c002b3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cac <_start-0x6354>
1c002b40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099a0 <_sidata+0x6d18>
1c002b44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b48 <__FUNCTION__.1671>:
1c002b48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fc0 <_sidata+0x17338>
1c002b4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bb0 <_sidata+0x16f28>
1c002b50:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff62b0 <_start-0x9d50>
1c002b54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cc4 <_start-0x633c>
1c002b58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099b8 <_sidata+0x6d30>
1c002b5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b60 <__FUNCTION__.1667>:
1c002b60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fd8 <_sidata+0x17350>
1c002b64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bc8 <_sidata+0x16f40>
1c002b68:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff61c8 <_start-0x9e38>
1c002b6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cdc <_start-0x6324>
1c002b70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099d0 <_sidata+0x6d48>
1c002b74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b78 <__FUNCTION__.1663>:
1c002b78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ff0 <_sidata+0x17368>
1c002b7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019be0 <_sidata+0x16f58>
1c002b80:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff60e0 <_start-0x9f20>
1c002b84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cf4 <_start-0x630c>
1c002b88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099e8 <_sidata+0x6d60>
1c002b8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b90 <__FUNCTION__.1659>:
1c002b90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a008 <_sidata+0x17380>
1c002b94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bf8 <_sidata+0x16f70>
1c002b98:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff5ff8 <_start-0xa008>
1c002b9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d0c <_start-0x62f4>
1c002ba0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a00 <_sidata+0x6d78>
1c002ba4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ba8 <__FUNCTION__.1655>:
1c002ba8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a020 <_sidata+0x17398>
1c002bac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c10 <_sidata+0x16f88>
1c002bb0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff5f10 <_start-0xa0f0>
1c002bb4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d24 <_start-0x62dc>
1c002bb8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a18 <_sidata+0x6d90>
1c002bbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bc0 <__FUNCTION__.1651>:
1c002bc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a038 <_sidata+0x173b0>
1c002bc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c28 <_sidata+0x16fa0>
1c002bc8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5e28 <_start-0xa1d8>
1c002bcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d3c <_start-0x62c4>
1c002bd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a30 <_sidata+0x6da8>
1c002bd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bd8 <__FUNCTION__.1647>:
1c002bd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a050 <_sidata+0x173c8>
1c002bdc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c40 <_sidata+0x16fb8>
1c002be0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5d40 <_start-0xa2c0>
1c002be4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d54 <_start-0x62ac>
1c002be8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a48 <_sidata+0x6dc0>
1c002bec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bf0 <__FUNCTION__.1643>:
1c002bf0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a068 <_sidata+0x173e0>
1c002bf4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c58 <_sidata+0x16fd0>
1c002bf8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5c58 <_start-0xa3a8>
1c002bfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d6c <_start-0x6294>
1c002c00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a60 <_sidata+0x6dd8>
1c002c04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c08 <Ext_IrqHandle>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:61
1c002c08:	1c001b08 	pcaddu12i	$r8,216(0xd8)
1c002c0c:	1c001b44 	pcaddu12i	$r4,218(0xda)
1c002c10:	1c001b80 	pcaddu12i	$r0,220(0xdc)
1c002c14:	1c001bbc 	pcaddu12i	$r28,221(0xdd)
1c002c18:	1c001bf8 	pcaddu12i	$r24,223(0xdf)
1c002c1c:	1c001c34 	pcaddu12i	$r20,225(0xe1)
1c002c20:	1c001c70 	pcaddu12i	$r16,227(0xe3)
1c002c24:	1c001cac 	pcaddu12i	$r12,229(0xe5)
1c002c28:	1c001ce8 	pcaddu12i	$r8,231(0xe7)
1c002c2c:	1c001d24 	pcaddu12i	$r4,233(0xe9)
1c002c30:	1c001d60 	pcaddu12i	$r0,235(0xeb)
1c002c34:	1c001d9c 	pcaddu12i	$r28,236(0xec)
1c002c38:	1c001dd8 	pcaddu12i	$r24,238(0xee)
1c002c3c:	1c001e14 	pcaddu12i	$r20,240(0xf0)
1c002c40:	1c001e50 	pcaddu12i	$r16,242(0xf2)
1c002c44:	1c001e8c 	pcaddu12i	$r12,244(0xf4)
1c002c48:	1c001ec8 	pcaddu12i	$r8,246(0xf6)
1c002c4c:	1c001f04 	pcaddu12i	$r4,248(0xf8)
1c002c50:	1c001f40 	pcaddu12i	$r0,250(0xfa)
1c002c54:	1c001f7c 	pcaddu12i	$r28,251(0xfb)
1c002c58:	1c001fb8 	pcaddu12i	$r24,253(0xfd)
1c002c5c:	1c001ff4 	pcaddu12i	$r20,255(0xff)
1c002c60:	1c002030 	pcaddu12i	$r16,257(0x101)
1c002c64:	1c00206c 	pcaddu12i	$r12,259(0x103)
1c002c68:	1c0020a8 	pcaddu12i	$r8,261(0x105)
1c002c6c:	1c0020e4 	pcaddu12i	$r4,263(0x107)
1c002c70:	1c002120 	pcaddu12i	$r0,265(0x109)
1c002c74:	1c00215c 	pcaddu12i	$r28,266(0x10a)
1c002c78:	1c002198 	pcaddu12i	$r24,268(0x10c)
1c002c7c:	1c0021d4 	pcaddu12i	$r20,270(0x10e)
1c002c80:	1c002210 	pcaddu12i	$r16,272(0x110)
1c002c84:	1c00224c 	pcaddu12i	$r12,274(0x112)

Disassembly of section .bss.state:

80000000 <state>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:78
80000000:	00000000 	0x00000000

Disassembly of section .debug_line:

00000000 <.debug_line>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
       0:	000000cc 	0x000000cc
       4:	006c0002 	bstrins.w	$r2,$r0,0xc,0x0
       8:	01010000 	fadd.d	$f0,$f0,$f0
       c:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
      10:	01010101 	fadd.d	$f1,$f8,$f0
      14:	01000000 	0x01000000
      18:	44010000 	bnez	$r0,256(0x100) # 118 <_start-0x1bfffee8>
      1c:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
      20:	2f737265 	0x2f737265
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
      24:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff6e84 <_RAM_DATA+0x7fff5e84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
      28:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4454 <_RAM_DATA+0x7fff3454>
      2c:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 16da0 <_start-0x1bfe9260>
      30:	2f73746e 	0x2f73746e
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
      34:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 164a0 <_start-0x1bfe9b60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      38:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff6f84 <_RAM_DATA+0x7fff5f84>
      3c:	7241676e 	0x7241676e
      40:	505f6863 	b	25976680(0x18c5f68) # 18c5fa8 <_start-0x1a73a058>
      44:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 163b0 <_start-0x1bfe9c50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      48:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe69b8 <_RAM_DATA+0x7ffe59b8>
      4c:	79535f67 	0x79535f67
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 165c4 <_start-0x1bfe9a3c>
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
      54:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 1)
      58:	732f3230 	0x732f3230
      5c:	732f6372 	0x732f6372
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
      60:	61742f77 	blt	$r27,$r23,95276(0x1742c) # 1748c <_start-0x1bfe8b74>
      64:	74656772 	xvavg.w	$xr18,$xr27,$xr25
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	74730000 	xvmin.w	$xr0,$xr0,$xr0
      6c:	2e747261 	0x2e747261
      70:	00010053 	0x00010053
      74:	05000000 	0x05000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
      78:	00000002 	0x00000002
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:33
      7c:	011b031c 	0x011b031c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
      80:	4b834c4b 	bceqz	$fcc2,3113804(0x2f834c) # 2f83cc <_start-0x1bd07c34>
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
      84:	4c4b4b4b 	jirl	$r11,$r26,19272(0x4b48)
      88:	4d4b8383 	jirl	$r3,$r28,84864(0x14b80)
      8c:	4b4c8383 	0x4b4c8383
      90:	4b4b504b 	bceqz	$fcc2,3099472(0x2f4b50) # 2f4be0 <_start-0x1bd0b420>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 1)
      94:	4c834c4b 	jirl	$r11,$r2,33612(0x834c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
      98:	4c834c83 	jirl	$r3,$r4,33612(0x834c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
      9c:	4c834d4b 	jirl	$r11,$r10,33612(0x834c)
      a0:	d4024b4e 	0xd4024b4e
      a4:	5402161e 	bl	-126352876(0x8780214) # f87802b8 <_RAM_DATA+0x7877f2b8>
      a8:	4c4b4b13 	jirl	$r19,$r24,19272(0x4b48)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
      ac:	4c4b4c4b 	jirl	$r11,$r2,19276(0x4b4c)
      b0:	4c4b4c4b 	jirl	$r11,$r2,19276(0x4b4c)
      b4:	4d4b4c4b 	jirl	$r11,$r2,84812(0x14b4c)
      b8:	4d4b4d4b 	jirl	$r11,$r10,84812(0x14b4c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
      bc:	4d4b4d4b 	jirl	$r11,$r10,84812(0x14b4c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
      c0:	4d4b4d4b 	jirl	$r11,$r10,84812(0x14b4c)
      c4:	4d4b4b4b 	jirl	$r11,$r26,84808(0x14b48)
      c8:	02135402 	slti	$r2,$r0,1237(0x4d5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	01010004 	fadd.d	$f4,$f0,$f0
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	000008c5 	0x000008c5
      d4:	02220002 	slti	$r2,$r0,-1920(0x880)
      d8:	01010000 	fadd.d	$f0,$f0,$f0
      dc:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	01010101 	fadd.d	$f1,$f8,$f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	01000000 	0x01000000
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	44010000 	bnez	$r0,256(0x100) # 1e8 <_start-0x1bfffe18>
      ec:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
      f0:	2f737265 	0x2f737265
      f4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff6f54 <_RAM_DATA+0x7fff5f54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4524 <_RAM_DATA+0x7fff3524>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 16e70 <_start-0x1bfe9190>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	2f73746e 	0x2f73746e
     104:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16570 <_start-0x1bfe9a90>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     108:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7054 <_RAM_DATA+0x7fff6054>
     10c:	7241676e 	0x7241676e
     110:	505f6863 	b	25976680(0x18c5f68) # 18c6078 <_start-0x1a739f88>
     114:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16480 <_start-0x1bfe9b80>
     118:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe6a88 <_RAM_DATA+0x7ffe5a88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	79535f67 	0x79535f67
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16694 <_start-0x1bfe996c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	732f3230 	0x732f3230
     12c:	732f6372 	0x732f6372
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     130:	75702f77 	0x75702f77
     134:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff6aa0 <_RAM_DATA+0x7fff5aa0>
     138:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 3b9c <_start-0x1bffc464>
     13c:	72657375 	0x72657375
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1789c <_start-0x1bfe8764>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 74a8 <_start-0x1bff8b58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	75636f64 	0x75636f64
     14c:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff64ac <_RAM_DATA+0x7fff54ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 5db8 <_start-0x1bffa248>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff6fc4 <_RAM_DATA+0x7fff5fc4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	68637261 	bltu	$r19,$r1,25456(0x6370) # 64cc <_start-0x1bff9b34>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff73d0 <_RAM_DATA+0x7fff63d0>
     164:	73736563 	0x73736563
     168:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff68d4 <_RAM_DATA+0x7fff58d4>
     16c:	74737973 	xvmin.w	$xr19,$xr11,$xr30
     170:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     174:	32303163 	0x32303163
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff73e8 <_RAM_DATA+0x7fff63e8>
     17c:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 78ec <_start-0x1bff8714>
     180:	6469616c 	bge	$r11,$r12,26976(0x6960) # 6ae0 <_start-0x1bff9520>
     184:	75625c65 	0x75625c65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     18c:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 6df8 <_start-0x1bff9208>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	3233616c 	0x3233616c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7108 <_RAM_DATA+0x7fff6108>
     198:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff6df4 <_RAM_DATA+0x7fff5df4>
     19c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 16908 <_start-0x1bfe96f8>
     1a0:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
     1a4:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 16fd0 <_start-0x1bfe9030>
     1a8:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe6b14 <_RAM_DATA+0x7ffe5b14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe6e10 <_RAM_DATA+0x7ffe5e10>
     1b0:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff7018 <_RAM_DATA+0x7fff6018>
     1b4:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16628 <_start-0x1bfe99d8>
     1b8:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff6324 <_RAM_DATA+0x7fff5324>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 17024 <_start-0x1bfe8fdc>
     1c0:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 3c24 <_start-0x1bffc3dc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	72657375 	0x72657375
     1c8:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 17924 <_start-0x1bfe86dc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
     1cc:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 7530 <_start-0x1bff8ad0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d0:	75636f64 	0x75636f64
     1d4:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff6534 <_RAM_DATA+0x7fff5534>
     1dc:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 5e40 <_start-0x1bffa1c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff704c <_RAM_DATA+0x7fff604c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6554 <_start-0x1bff9aac>
     1e8:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff7458 <_RAM_DATA+0x7fff6458>
     1ec:	73736563 	0x73736563
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff695c <_RAM_DATA+0x7fff595c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	74737973 	xvmin.w	$xr19,$xr11,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     1f8:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     1fc:	32303163 	0x32303163
     200:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff7470 <_RAM_DATA+0x7fff6470>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 7974 <_start-0x1bff868c>
     208:	6469616c 	bge	$r11,$r12,26976(0x6960) # 6b68 <_start-0x1bff9498>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	75625c65 	0x75625c65
     210:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     214:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 6e80 <_start-0x1bff9180>
     218:	3233616c 	0x3233616c
     21c:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7190 <_RAM_DATA+0x7fff6190>
     220:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff6e7c <_RAM_DATA+0x7fff5e7c>
     224:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 16990 <_start-0x1bfe9670>
     228:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 17058 <_start-0x1bfe8fa8>
     230:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe6b9c <_RAM_DATA+0x7ffe5b9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe6e98 <_RAM_DATA+0x7ffe5e98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff70a0 <_RAM_DATA+0x7fff60a0>
     23c:	6564756c 	bge	$r11,$r12,91252(0x16474) # 166b0 <_start-0x1bfe9950>
     240:	7379732f 	0x7379732f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	2f3a4400 	0x2f3a4400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	72657355 	0x72657355
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17978 <_start-0x1bfe8688>
     250:	2f73676e 	0x2f73676e
     254:	75636f44 	0x75636f44
     258:	746e656d 	0x746e656d
     25c:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4588 <_RAM_DATA+0x7fff3588>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     264:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff70d0 <_RAM_DATA+0x7fff60d0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	68637241 	bltu	$r18,$r1,25456(0x6370) # 65d8 <_start-0x1bff9a28>
     26c:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff74bc <_RAM_DATA+0x7fff64bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	73736563 	0x73736563
     274:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff69e0 <_RAM_DATA+0x7fff59e0>
     278:	74737953 	xvmin.w	$xr19,$xr10,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     280:	32303143 	0x32303143
     284:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff74f4 <_RAM_DATA+0x7fff64f4>
     288:	2f77732f 	0x2f77732f
     28c:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 65f8 <_start-0x1bff9a08>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
     294:	31736c00 	0x31736c00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	72705f78 	0x72705f78
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe7708 <_RAM_DATA+0x7ffe6708>
     2a0:	0100632e 	0x0100632e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	645f0000 	bge	$r0,$r0,24320(0x5f00) # 61a4 <_start-0x1bff9e5c>
     2a8:	75616665 	0x75616665
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	745f746c 	0x745f746c
     2b0:	73657079 	vssrani.wu.d	$vr25,$vr3,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	0200682e 	slti	$r14,$r1,26(0x1a)
     2b8:	735f0000 	vsrarni.d.q	$vr0,$vr0,0x40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	6e696474 	bgeu	$r3,$r20,-104092(0x26964) # fffe6c20 <_RAM_DATA+0x7ffe5c20>
     2c0:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	74000003 	xvseq.b	$xr3,$xr0,$xr0
     2c8:	2e747365 	0x2e747365
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	00040068 	alsl.w	$r8,$r3,$r0,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	31736c00 	0x31736c00
     2d4:	00682e78 	bstrins.w	$r24,$r19,0x8,0xb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	6c000004 	bgeu	$r0,$r4,0 # 2d8 <_start-0x1bfffd28>
     2dc:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7b0c <_RAM_DATA+0x7fff6b0c>
     2e0:	69727473 	bltu	$r3,$r19,94836(0x17274) # 17554 <_start-0x1bfe8aac>
     2e4:	682e676e 	bltu	$r27,$r14,11876(0x2e64) # 3148 <_start-0x1bffceb8>
     2e8:	00000100 	0x00000100
     2ec:	7831736c 	0x7831736c
     2f0:	7261755f 	0x7261755f
     2f4:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	00000001 	0x00000001
     2fc:	05000105 	0x05000105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	00112802 	sub.w	$r2,$r0,$r10
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	0112031c 	0x0112031c
     308:	03050106 	lu52i.d	$r6,$r8,320(0x140)
     30c:	82068306 	0x82068306
     310:	024d0105 	sltui	$r5,$r8,832(0x340)
     314:	0101000c 	fadd.d	$f12,$f0,$f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	05000105 	0x05000105
     31c:	00000002 	0x00000002
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	01190300 	0x01190300
     324:	13830505 	addu16i.d	$r5,$r8,-7999(0xe0c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	01060b05 	0x01060b05
     32c:	83060505 	0x83060505
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     334:	01000c02 	0x01000c02
     338:	00010501 	0x00010501
     33c:	11480205 	addu16i.d	$r5,$r16,20992(0x5200)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	20031c00 	ll.w	$r0,$r0,796(0x31c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	05010601 	0x05010601
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	e5080605 	0xe5080605
     34c:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	01060705 	0x01060705
     354:	02000d05 	slti	$r5,$r8,3(0x3)
     358:	054a0104 	0x054a0104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	05500606 	0x05500606
     360:	0501060b 	0x0501060b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	04020001 	csrrd	$r1,0x80
     368:	4a750301 	0x4a750301
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	02000505 	slti	$r5,$r8,1(0x1)
     370:	0d030104 	fsel	$f4,$f8,$f0,$fcc6
     374:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	06030402 	cacop	0x2,$r0,193(0xc1)
     37c:	0012054c 	slt	$r12,$r10,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	06030402 	cacop	0x2,$r0,193(0xc1)
     384:	000c0501 	bytepick.d	$r1,$r8,$r1,0x0
     388:	ba030402 	0xba030402
     38c:	02000605 	slti	$r5,$r16,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	bb060304 	0xbb060304
     394:	02000b05 	slti	$r5,$r24,2(0x2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	01060304 	0x01060304
     39c:	02001405 	slti	$r5,$r0,5(0x5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	00ef0304 	bstrpick.d	$r4,$r24,0x2f,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a06a8 <_start-0x1bf5f958>
     3a8:	03060605 	lu52i.d	$r5,$r16,385(0x181)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	0e054a7a 	0x0e054a7a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	06050106 	cacop	0x6,$r8,320(0x140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	4a064b06 	0x4a064b06
     3b8:	0605054a 	cacop	0xa,$r10,321(0x141)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	054a0a03 	0x054a0a03
     3c0:	8201060a 	0x8201060a
     3c4:	05820505 	0x05820505
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	1b054c10 	pcalau12i	$r16,-513440(0x82a60)
     3cc:	01040200 	0x01040200
     3d0:	0009054b 	bytepick.w	$r11,$r10,$r1,0x2
     3d4:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a04d8 <_start-0x1bf5fb28>
     3d8:	04040200 	csrxchg	$r0,$r16,0x100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	00190582 	srl.d	$r2,$r12,$r1
     3e0:	47040402 	bnez	$r0,721924(0xb0404) # b07e4 <_start-0x1bf4f81c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	02000505 	slti	$r5,$r8,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	054a0204 	0x054a0204
     3ec:	054c0609 	0x054c0609
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	05010610 	0x05010610
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	04020016 	csrrd	$r22,0x80
     3f8:	14054a01 	lu12i.w	$r1,10832(0x2a50)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	01040200 	0x01040200
     400:	0009054a 	bytepick.w	$r10,$r10,$r1,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	06010402 	cacop	0x2,$r0,65(0x41)
     408:	002505bb 	crc.w.w.w	$r27,$r13,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	06020402 	cacop	0x2,$r0,129(0x81)
     410:	00090582 	bytepick.w	$r2,$r12,$r1,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a0618 <_start-0x1bf5f9e8>
     418:	bc060505 	0xbc060505
     41c:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	4a4a4aba 	0x4a4a4aba
     424:	01000802 	0x01000802
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	00010501 	0x00010501
     42c:	12380205 	addu16i.d	$r5,$r16,-29184(0x8e00)
     430:	c0031c00 	0xc0031c00
     434:	01060100 	0x01060100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	08060205 	0x08060205
     43c:	0705133d 	0x0705133d
     440:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     444:	01040200 	0x01040200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	03054c06 	lu52i.d	$r6,$r0,339(0x153)
     44c:	04058383 	csrxchg	$r3,$r28,0x160
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	0a050106 	0x0a050106
     454:	4a070546 	bcnez	$fcc2,1705732(0x1a0704) # 1a0b58 <_start-0x1be5f4a8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	4c060305 	jirl	$r5,$r24,1536(0x600)
     45c:	01060505 	0x01060505
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	bf060205 	0xbf060205
     464:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	08024aba 	0x08024aba
     46c:	05010100 	0x05010100
     470:	02050001 	slti	$r1,$r0,320(0x140)
     474:	1c001290 	pcaddu12i	$r16,148(0x94)
     478:	0100cd03 	fadd.s	$f3,$f8,$f19
     47c:	02050106 	slti	$r6,$r8,320(0x140)
     480:	13380206 	addu16i.d	$r6,$r16,-12800(0xce00)
     484:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	05138313 	0x05138313
     48c:	05010607 	0x05010607
     490:	05054a02 	0x05054a02
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	0609054f 	cacop	0xf,$r10,577(0x241)
     498:	0613054c 	cacop	0xc,$r10,1217(0x4c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	82090501 	0x82090501
     4a0:	061105f2 	cacop	0x12,$r15,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	05833f08 	0x05833f08
     4a8:	05010614 	0x05010614
     4ac:	054b0611 	0x054b0611
     4b0:	05010612 	0x05010612
     4b4:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     4b8:	06140583 	cacop	0x3,$r12,1281(0x501)
     4bc:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	0612054b 	cacop	0xb,$r10,1153(0x481)
     4c4:	06110501 	cacop	0x1,$r8,1089(0x441)
     4c8:	05f34c4b 	0x05f34c4b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	05010614 	0x05010614
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	054b0611 	0x054b0611
     4d4:	05010612 	0x05010612
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     4dc:	061405f3 	cacop	0x13,$r15,1281(0x501)
     4e0:	06110501 	cacop	0x1,$r8,1089(0x441)
     4e4:	0612054b 	cacop	0xb,$r10,1153(0x481)
     4e8:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	05f34c4b 	0x05f34c4b
     4f0:	05010614 	0x05010614
     4f4:	054b0611 	0x054b0611
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	05010612 	0x05010612
     4fc:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	061405f3 	cacop	0x13,$r15,1281(0x501)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	0612054b 	cacop	0xb,$r10,1153(0x481)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	06110501 	cacop	0x1,$r8,1089(0x441)
     510:	05f34d4b 	0x05f34d4b
     514:	05010614 	0x05010614
     518:	054b0611 	0x054b0611
     51c:	05010612 	0x05010612
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     524:	06120583 	cacop	0x3,$r12,1153(0x481)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	12054c4b 	addu16i.d	$r11,$r2,-32429(0x8153)
     530:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	16054b06 	lu32i.d	$r6,10840(0x2a58)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	1c050106 	pcaddu12i	$r6,10248(0x2808)
     53c:	01040200 	0x01040200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	0026054a 	crcc.w.b.w	$r10,$r10,$r1
     544:	82010402 	0x82010402
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	02001105 	slti	$r5,$r8,4(0x4)
     54c:	05820104 	0x05820104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	04020012 	csrrd	$r18,0x80
     554:	05830603 	0x05830603
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	04020015 	csrrd	$r21,0x80
     55c:	05010603 	0x05010603
     560:	04020022 	csrwr	$r2,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	13058203 	addu16i.d	$r3,$r16,-16032(0xc160)
     568:	03040200 	lu52i.d	$r0,$r16,256(0x100)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	0038054a 	0x0038054a
     570:	49030402 	bceqz	$fcc0,590596(0x90304) # 90874 <_start-0x1bf6f78c>
     574:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     578:	4f16054a 	jirl	$r10,$r10,-59900(0x31604)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	02001c05 	slti	$r5,$r0,7(0x7)
     580:	054a0104 	0x054a0104
     584:	04020026 	csrwr	$r6,0x80
     588:	11058201 	addu16i.d	$r1,$r16,16736(0x4160)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	01040200 	0x01040200
     590:	00120582 	slt	$r2,$r12,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	06030402 	cacop	0x2,$r0,193(0xc1)
     598:	00150583 	or	$r3,$r12,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	06030402 	cacop	0x2,$r0,193(0xc1)
     5a0:	00220501 	div.d	$r1,$r8,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	82030402 	0x82030402
     5a8:	02001305 	slti	$r5,$r24,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	054a0304 	0x054a0304
     5b0:	04020038 	csrwr	$r24,0x80
     5b4:	02004903 	slti	$r3,$r8,18(0x12)
     5b8:	054a0304 	0x054a0304
     5bc:	054d0612 	0x054d0612
     5c0:	05831511 	0x05831511
     5c4:	04020015 	csrrd	$r21,0x80
     5c8:	09054e01 	0x09054e01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	00120583 	slt	$r3,$r12,$r1
     5d0:	06020402 	cacop	0x2,$r0,129(0x81)
     5d4:	827fbc03 	0x827fbc03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	02000d05 	slti	$r5,$r8,3(0x3)
     5dc:	054a0104 	0x054a0104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	04020002 	csrrd	$r2,0x80
     5e4:	03058201 	lu52i.d	$r1,$r16,352(0x160)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	06054c06 	cacop	0x6,$r0,339(0x153)
     5ec:	06080513 	cacop	0x13,$r8,513(0x201)
     5f0:	06090501 	cacop	0x1,$r8,577(0x241)
     5f4:	8200c003 	0x8200c003
     5f8:	01060b05 	0x01060b05
     5fc:	be060505 	0xbe060505
     600:	14060105 	lu12i.w	$r5,12296(0x3008)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	024a4af2 	sltui	$r18,$r23,658(0x292)
     608:	01010008 	fadd.d	$f8,$f0,$f0
     60c:	05000105 	0x05000105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	00000002 	0x00000002
     614:	01061a00 	0x01061a00
     618:	08060505 	0x08060505
     61c:	0c0513ad 	0x0c0513ad
     620:	05050106 	0x05050106
     624:	01040200 	0x01040200
     628:	000a054a 	0x000a054a
     62c:	06030402 	cacop	0x2,$r0,193(0xc1)
     630:	001b054c 	rotr.w	$r12,$r10,$r1
     634:	06030402 	cacop	0x2,$r0,193(0xc1)
     638:	02003a08 	slti	$r8,$r16,14(0xe)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	054a0304 	0x054a0304
     640:	054e0605 	0x054e0605
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	82bb0601 	0x82bb0601
     648:	08024a4a 	0x08024a4a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	05010100 	0x05010100
     650:	02050001 	slti	$r1,$r0,320(0x140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	00000000 	0x00000000
     658:	0101a103 	0x0101a103
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	05050106 	0x05050106
     660:	05ad0806 	0x05ad0806
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	4a010614 	0x4a010614
     668:	0605054a 	cacop	0xa,$r10,321(0x141)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	0682064b 	0x0682064b
     670:	0601054b 	cacop	0xb,$r10,65(0x41)
     674:	4a4aba13 	0x4a4aba13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	01000802 	0x01000802
     67c:	00010501 	0x00010501
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	00000205 	0x00000205
     684:	a7030000 	0xa7030000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	05050101 	0x05050101
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	060c0513 	cacop	0x13,$r8,769(0x301)
     690:	06050501 	cacop	0x1,$r8,321(0x141)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	0601054b 	cacop	0xb,$r10,65(0x41)
     698:	04024a13 	csrxchg	$r19,$r16,0x92
     69c:	05010100 	0x05010100
     6a0:	02050001 	slti	$r1,$r0,320(0x140)
     6a4:	00000000 	0x00000000
     6a8:	0101ad03 	0x0101ad03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	05050106 	0x05050106
     6b0:	13e50806 	addu16i.d	$r6,$r0,-1726(0xf942)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	05131313 	0x05131313
     6b8:	05010607 	0x05010607
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	0402000d 	csrrd	$r13,0x80
     6c0:	09054a01 	0x09054a01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	0f055006 	0x0f055006
     6c8:	05050106 	0x05050106
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	0b054c06 	0x0b054c06
     6d0:	05050106 	0x05050106
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	01040200 	0x01040200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	0009054a 	bytepick.w	$r10,$r10,$r1,0x2
     6dc:	06030402 	cacop	0x2,$r0,193(0xc1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	0018054c 	sra.w	$r12,$r10,$r1
     6e4:	06030402 	cacop	0x2,$r0,193(0xc1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	00100501 	add.w	$r1,$r8,$r1
     6ec:	ba030402 	0xba030402
     6f0:	02000905 	slti	$r5,$r8,2(0x2)
     6f4:	bb060304 	0xbb060304
     6f8:	02000f05 	slti	$r5,$r24,3(0x3)
     6fc:	01060304 	0x01060304
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	02001805 	slti	$r5,$r0,6(0x6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	00ef0304 	bstrpick.d	$r4,$r24,0x2f,0x0
     708:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a0a0c <_start-0x1bf5f5f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	03060905 	lu52i.d	$r5,$r8,386(0x182)
     710:	11054a7a 	addu16i.d	$r26,$r19,16722(0x4152)
     714:	09050106 	0x09050106
     718:	0f054b06 	0x0f054b06
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	054a0106 	0x054a0106
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	05054a0d 	0x05054a0d
     724:	4a0a0306 	0x4a0a0306
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	01060b05 	0x01060b05
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	05054a82 	0x05054a82
     730:	4c17054a 	jirl	$r10,$r10,5892(0x1704)
     734:	02002b05 	slti	$r5,$r24,10(0xa)
     738:	054b0104 	0x054b0104
     73c:	0402000f 	csrrd	$r15,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	02004a01 	slti	$r1,$r16,18(0x12)
     744:	054a0404 	0x054a0404
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	04020020 	csrwr	$r0,0x80
     74c:	05054704 	0x05054704
     750:	02040200 	slti	$r0,$r16,256(0x100)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	0609054a 	cacop	0xa,$r10,577(0x241)
     758:	0617054c 	cacop	0xc,$r10,1473(0x5c1)
     75c:	001f0501 	mulw.d.w	$r1,$r8,$r1
     760:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0864 <_start-0x1bf5f79c>
     764:	02001c05 	slti	$r5,$r0,7(0x7)
     768:	054a0104 	0x054a0104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	04020009 	csrrd	$r9,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	05bb0601 	0x05bb0601
     774:	0402000f 	csrrd	$r15,0x80
     778:	05010601 	0x05010601
     77c:	0402003b 	csrwr	$r27,0x80
     780:	0f058202 	0x0f058202
     784:	02040200 	slti	$r0,$r16,256(0x100)
     788:	0402004a 	csrxchg	$r10,$r2,0x80
     78c:	01054a02 	fmul.d	$f2,$f16,$f18
     790:	4a4a824d 	0x4a4a824d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	01000c02 	0x01000c02
     798:	00010501 	0x00010501
     79c:	00000205 	0x00000205
     7a0:	c8030000 	0xc8030000
     7a4:	01060101 	0x01060101
     7a8:	02060505 	slti	$r5,$r8,385(0x181)
     7ac:	13131324 	addu16i.d	$r4,$r25,-15164(0xc4c4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	05131313 	0x05131313
     7b4:	0501060b 	0x0501060b
     7b8:	0f054a05 	0x0f054a05
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	060d054f 	cacop	0xf,$r10,833(0x341)
     7c0:	061a054c 	cacop	0xc,$r10,1665(0x681)
     7c4:	820d0501 	0x820d0501
     7c8:	061105f2 	cacop	0x12,$r15,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	17053f08 	lu32i.d	$r8,-513544(0x829f8)
     7d0:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	053d0806 	0x053d0806
     7d8:	05010612 	0x05010612
     7dc:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     7e0:	01064105 	0x01064105
     7e4:	05ba1705 	0x05ba1705
     7e8:	05830611 	0x05830611
     7ec:	05010612 	0x05010612
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     7f4:	01061705 	0x01061705
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	08061105 	0x08061105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	061205ad 	cacop	0xd,$r13,1153(0x481)
     800:	06110501 	cacop	0x1,$r8,1089(0x441)
     804:	17054c4b 	lu32i.d	$r11,-513438(0x82a62)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     80c:	05ad0806 	0x05ad0806
     810:	05010612 	0x05010612
     814:	4c4b0611 	jirl	$r17,$r16,19204(0x4b04)
     818:	01061705 	0x01061705
     81c:	08061105 	0x08061105
     820:	061205ad 	cacop	0xd,$r13,1153(0x481)
     824:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	17054c4b 	lu32i.d	$r11,-513438(0x82a62)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	05ad0806 	0x05ad0806
     834:	05010612 	0x05010612
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	4d4b0611 	jirl	$r17,$r16,84740(0x14b04)
     83c:	01061705 	0x01061705
     840:	08061105 	0x08061105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	061205ad 	cacop	0xd,$r13,1153(0x481)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	06110501 	cacop	0x1,$r8,1089(0x441)
     84c:	17054c4b 	lu32i.d	$r11,-513438(0x82a62)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     854:	12058306 	addu16i.d	$r6,$r24,-32416(0x8160)
     858:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     85c:	054c4b06 	0x054c4b06
     860:	05010612 	0x05010612
     864:	054b0611 	0x054b0611
     868:	05010617 	0x05010617
     86c:	04020022 	csrwr	$r2,0x80
     870:	30054a01 	0x30054a01
     874:	01040200 	0x01040200
     878:	00110582 	sub.w	$r2,$r12,$r1
     87c:	82010402 	0x82010402
     880:	02001505 	slti	$r5,$r8,5(0x5)
     884:	83060304 	0x83060304
     888:	02001b05 	slti	$r5,$r24,6(0x6)
     88c:	01060304 	0x01060304
     890:	02003105 	slti	$r5,$r8,12(0xc)
     894:	05820304 	0x05820304
     898:	04020017 	csrrd	$r23,0x80
     89c:	4a054a03 	0x4a054a03
     8a0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     8a4:	04020049 	csrxchg	$r9,$r2,0x80
     8a8:	17054a03 	lu32i.d	$r3,-513456(0x82a50)
     8ac:	0022054f 	div.d	$r15,$r10,$r1
     8b0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a09b4 <_start-0x1bf5f64c>
     8b4:	02003005 	slti	$r5,$r0,12(0xc)
     8b8:	05820104 	0x05820104
     8bc:	04020011 	csrrd	$r17,0x80
     8c0:	15058201 	lu12i.w	$r1,-513008(0x82c10)
     8c4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     8c8:	1b058306 	pcalau12i	$r6,-513000(0x82c18)
     8cc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     8d0:	31050106 	0x31050106
     8d4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     8d8:	00170582 	sll.w	$r2,$r12,$r1
     8dc:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a0be0 <_start-0x1bf5f420>
     8e0:	02004a05 	slti	$r5,$r16,18(0x12)
     8e4:	00490304 	srai.d	$r4,$r24,0x0
     8e8:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a0bec <_start-0x1bf5f414>
     8ec:	4d061105 	jirl	$r5,$r8,67088(0x10610)
     8f0:	06170514 	cacop	0x14,$r8,1473(0x5c1)
     8f4:	06110501 	cacop	0x1,$r8,1089(0x441)
     8f8:	17055183 	lu32i.d	$r3,-513396(0x82a8c)
     8fc:	0d050106 	0x0d050106
     900:	13058306 	addu16i.d	$r6,$r24,-16032(0xc160)
     904:	1c050106 	pcaddu12i	$r6,10248(0x2808)
     908:	02040200 	slti	$r0,$r16,256(0x100)
     90c:	05824103 	0x05824103
     910:	04020016 	csrrd	$r22,0x80
     914:	05054a01 	0x05054a01
     918:	01040200 	0x01040200
     91c:	06090582 	cacop	0x2,$r12,577(0x241)
     920:	0b05134c 	0x0b05134c
     924:	0d050106 	0x0d050106
     928:	823a0306 	0x823a0306
     92c:	01060f05 	0x01060f05
     930:	bf060505 	0xbf060505
     934:	01060b05 	0x01060b05
     938:	83060505 	0x83060505
     93c:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     940:	4a4aba4a 	0x4a4aba4a
     944:	01000802 	0x01000802
     948:	00010501 	0x00010501
     94c:	00000205 	0x00000205
     950:	94030000 	0x94030000
     954:	01060102 	0x01060102
     958:	08060505 	0x08060505
     95c:	058313e5 	0x058313e5
     960:	05010612 	0x05010612
     964:	134b0605 	addu16i.d	$r5,$r16,-11583(0xd2c1)
     968:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     96c:	01000c02 	0x01000c02
     970:	00010501 	0x00010501
     974:	00000205 	0x00000205
     978:	9d030000 	0x9d030000
     97c:	02050102 	slti	$r2,$r8,320(0x140)
     980:	061a0513 	cacop	0x13,$r8,1665(0x681)
     984:	08270501 	fmadd.d	$f1,$f8,$f1,$f14
     988:	ba0d0574 	0xba0d0574
     98c:	4b060205 	0x4b060205
     990:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     994:	01000802 	0x01000802
     998:	00055f01 	alsl.w	$r1,$r24,$r23,0x3
     99c:	1b000200 	pcalau12i	$r0,-524272(0x80010)
     9a0:	01000002 	0x01000002
     9a4:	0d0efb01 	0x0d0efb01
     9a8:	01010100 	fadd.d	$f0,$f8,$f0
     9ac:	00000001 	0x00000001
     9b0:	01000001 	0x01000001
     9b4:	552f3a44 	bl	-116314312(0x9112f38) # f91138ec <_RAM_DATA+0x791128ec>
     9b8:	73726573 	0x73726573
     9bc:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe6b30 <_RAM_DATA+0x7ffe5b30>
     9c0:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c3930 <_start-0x1be3c6d0>
     9c4:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 17f24 <_start-0x1bfe80dc>
     9c8:	73746e65 	0x73746e65
     9cc:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 790c <_start-0x1bff86f4>
     9d0:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff55fc <_RAM_DATA+0x7fff45fc>
     9d4:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d7140 <_start-0x1bc28ec0>
     9d8:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7238 <_RAM_DATA+0x7fff6238>
     9dc:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff794c <_RAM_DATA+0x7fff694c>
     9e0:	69737365 	bltu	$r27,$r5,95088(0x17370) # 17d50 <_start-0x1bfe82b0>
     9e4:	535f676e 	b	-38051996(0xdbb5f64) # fdbb6948 <_RAM_DATA+0x7dbb5948>
     9e8:	65747379 	bge	$r27,$r25,95344(0x17470) # 17e58 <_start-0x1bfe81a8>
     9ec:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373b18 <_start-0x1bc8c4e8>
     9f0:	2f323031 	0x2f323031
     9f4:	2f637273 	0x2f637273
     9f8:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
     9fc:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 1765c <_start-0x1bfe89a4>
     a00:	3a640063 	0x3a640063
     a04:	6573755c 	bge	$r10,$r28,95092(0x17374) # 17d78 <_start-0x1bfe8288>
     a08:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
     a0c:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     a10:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffff7974 <_RAM_DATA+0x7fff6974>
     a14:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe6f80 <_RAM_DATA+0x7ffe5f80>
     a18:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff6688 <_RAM_DATA+0x7fff5688>
     a1c:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 6f80 <_start-0x1bff9080>
     a20:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe798c <_RAM_DATA+0x7ffe698c>
     a24:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff7c84 <_RAM_DATA+0x7fff6c84>
     a28:	72705f68 	0x72705f68
     a2c:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
     a30:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7898 <_RAM_DATA+0x7fff6898>
     a34:	7379735f 	0x7379735f
     a38:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 779c <_start-0x1bff8864>
     a3c:	30316331 	0x30316331
     a40:	72735c32 	0x72735c32
     a44:	77735c63 	0x77735c63
     a48:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 16bb4 <_start-0x1bfe944c>
     a4c:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe66b0 <_RAM_DATA+0x7ffe56b0>
     a50:	646c6975 	bge	$r11,$r21,27752(0x6c68) # 76b8 <_start-0x1bff8948>
     a54:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 79c0 <_start-0x1bff8640>
     a58:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
     a5c:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffff7e88 <_RAM_DATA+0x7fff6e88>
     a60:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 66cc <_start-0x1bff9934>
     a64:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff78d0 <_RAM_DATA+0x7fff68d0>
     a68:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6dd8 <_start-0x1bff9228>
     a6c:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe379c <_RAM_DATA+0x7ffe279c>
     a70:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 176e4 <_start-0x1bfe891c>
     a74:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 6fa0 <_start-0x1bff9060>
     a78:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe73d4 <_RAM_DATA+0x7ffe63d4>
     a7c:	64756c63 	bge	$r3,$r3,30060(0x756c) # 7fe8 <_start-0x1bff8018>
     a80:	616d2f65 	blt	$r27,$r5,93484(0x16d2c) # 177ac <_start-0x1bfe8854>
     a84:	6e696863 	bgeu	$r3,$r3,-104088(0x26968) # fffe73ec <_RAM_DATA+0x7ffe63ec>
     a88:	3a640065 	0x3a640065
     a8c:	6573755c 	bge	$r10,$r28,95092(0x17374) # 17e00 <_start-0x1bfe8200>
     a90:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
     a94:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     a98:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffff79fc <_RAM_DATA+0x7fff69fc>
     a9c:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe7008 <_RAM_DATA+0x7ffe6008>
     aa0:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff6710 <_RAM_DATA+0x7fff5710>
     aa4:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 7008 <_start-0x1bff8ff8>
     aa8:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe7a14 <_RAM_DATA+0x7ffe6a14>
     aac:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff7d0c <_RAM_DATA+0x7fff6d0c>
     ab0:	72705f68 	0x72705f68
     ab4:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
     ab8:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7920 <_RAM_DATA+0x7fff6920>
     abc:	7379735f 	0x7379735f
     ac0:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 7824 <_start-0x1bff87dc>
     ac4:	30316331 	0x30316331
     ac8:	72735c32 	0x72735c32
     acc:	77735c63 	0x77735c63
     ad0:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 16c3c <_start-0x1bfe93c4>
     ad4:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe6738 <_RAM_DATA+0x7ffe5738>
     ad8:	646c6975 	bge	$r11,$r21,27752(0x6c68) # 7740 <_start-0x1bff88c0>
     adc:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 7a48 <_start-0x1bff85b8>
     ae0:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
     ae4:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffff7f10 <_RAM_DATA+0x7fff6f10>
     ae8:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 6754 <_start-0x1bff98ac>
     aec:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7958 <_RAM_DATA+0x7fff6958>
     af0:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6e60 <_start-0x1bff91a0>
     af4:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe3824 <_RAM_DATA+0x7ffe2824>
     af8:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 1776c <_start-0x1bfe8894>
     afc:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 7028 <_start-0x1bff8fd8>
     b00:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe745c <_RAM_DATA+0x7ffe645c>
     b04:	64756c63 	bge	$r3,$r3,30060(0x756c) # 8070 <_start-0x1bff7f90>
     b08:	79732f65 	0x79732f65
     b0c:	3a440073 	0x3a440073
     b10:	6573552f 	bge	$r9,$r15,95060(0x17354) # 17e64 <_start-0x1bfe819c>
     b14:	772f7372 	0x772f7372
     b18:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     b1c:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff7a60 <_RAM_DATA+0x7fff6a60>
     b20:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe708c <_RAM_DATA+0x7ffe608c>
     b24:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33a94 <_RAM_DATA+0x7fd32a94>
     b28:	2f65646f 	0x2f65646f
     b2c:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe7a98 <_RAM_DATA+0x7ffe6a98>
     b30:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff7d70 <_RAM_DATA+0x7fff6d70>
     b34:	72505f68 	0x72505f68
     b38:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
     b3c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff79a4 <_RAM_DATA+0x7fff69a4>
     b40:	7379535f 	0x7379535f
     b44:	2f6d6574 	0x2f6d6574
     b48:	30314331 	0x30314331
     b4c:	72732f32 	0x72732f32
     b50:	77732f63 	0x77732f63
     b54:	636e692f 	blt	$r9,$r15,-37272(0x36e68) # ffff79bc <_RAM_DATA+0x7fff69bc>
     b58:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16fcc <_start-0x1bfe9034>
     b5c:	736c0000 	0x736c0000
     b60:	755f7831 	0x755f7831
     b64:	2e747261 	0x2e747261
     b68:	00010063 	0x00010063
     b6c:	65645f00 	bge	$r24,$r0,91228(0x1645c) # 16fc8 <_start-0x1bfe9038>
     b70:	6c756166 	bgeu	$r11,$r6,30048(0x7560) # 80d0 <_start-0x1bff7f30>
     b74:	79745f74 	0x79745f74
     b78:	2e736570 	0x2e736570
     b7c:	00020068 	0x00020068
     b80:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
     b84:	746e6964 	0x746e6964
     b88:	0300682e 	lu52i.d	$r14,$r1,26(0x1a)
     b8c:	65740000 	bge	$r0,$r0,95232(0x17400) # 17f8c <_start-0x1bfe8074>
     b90:	682e7473 	bltu	$r3,$r19,11892(0x2e74) # 3a04 <_start-0x1bffc5fc>
     b94:	00000400 	0x00000400
     b98:	7831736c 	0x7831736c
     b9c:	0400682e 	csrwr	$r14,0x1a
     ba0:	736c0000 	0x736c0000
     ba4:	755f7831 	0x755f7831
     ba8:	2e747261 	0x2e747261
     bac:	00010068 	0x00010068
     bb0:	6e6f4300 	bgeu	$r24,$r0,-102592(0x26f40) # fffe7af0 <_RAM_DATA+0x7ffe6af0>
     bb4:	2e676966 	0x2e676966
     bb8:	00040068 	alsl.w	$r8,$r3,$r0,0x1
     bbc:	01050000 	fmul.d	$f0,$f0,$f0
     bc0:	00020500 	0x00020500
     bc4:	16000000 	lu32i.d	$r0,0
     bc8:	13140505 	addu16i.d	$r5,$r8,-15103(0xc501)
     bcc:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
     bd0:	05151313 	0x05151313
     bd4:	05010610 	0x05010610
     bd8:	05840605 	0x05840605
     bdc:	0501061b 	0x0501061b
     be0:	05054a09 	0x05054a09
     be4:	22054b06 	ll.d	$r6,$r24,1352(0x548)
     be8:	09050106 	0x09050106
     bec:	0605054a 	cacop	0xa,$r10,321(0x141)
     bf0:	1905f4bb 	pcaddi	$r27,-512091(0x82fa5)
     bf4:	05050106 	0x05050106
     bf8:	05138306 	0x05138306
     bfc:	05010615 	0x05010615
     c00:	13830605 	addu16i.d	$r5,$r16,-7999(0xe0c1)
     c04:	01061505 	0x01061505
     c08:	0605054a 	cacop	0xa,$r10,321(0x141)
     c0c:	1505bc4c 	lu12i.w	$r12,-512542(0x82de2)
     c10:	05050106 	0x05050106
     c14:	2a054c06 	ld.bu	$r6,$r0,339(0x153)
     c18:	19050106 	pcaddi	$r6,-514040(0x82808)
     c1c:	0605054a 	cacop	0xa,$r10,321(0x141)
     c20:	083e08bc 	0x083e08bc
     c24:	083e083e 	0x083e083e
     c28:	083e083e 	0x083e083e
     c2c:	060a053e 	cacop	0x1e,$r9,641(0x281)
     c30:	4b010501 	bcnez	$fcc0,459012(0x70104) # 70d34 <_start-0x1bf8f2cc>
     c34:	01000402 	0x01000402
     c38:	00010501 	0x00010501
     c3c:	00000205 	0x00000205
     c40:	32030000 	0x32030000
     c44:	14050501 	lu12i.w	$r1,10280(0x2828)
     c48:	05151313 	0x05151313
     c4c:	05010610 	0x05010610
     c50:	f5840605 	0xf5840605
     c54:	01061905 	0x01061905
     c58:	84060505 	0x84060505
     c5c:	01061505 	0x01061505
     c60:	83060505 	0x83060505
     c64:	01061505 	0x01061505
     c68:	4c060505 	jirl	$r5,$r8,1540(0x604)
     c6c:	061505bc 	cacop	0x1c,$r13,1345(0x541)
     c70:	06050501 	cacop	0x1,$r8,321(0x141)
     c74:	0619054c 	cacop	0xc,$r10,1601(0x641)
     c78:	06050501 	cacop	0x1,$r8,321(0x141)
     c7c:	060a0584 	cacop	0x4,$r12,641(0x281)
     c80:	4b010501 	bcnez	$fcc0,459012(0x70104) # 70d84 <_start-0x1bf8f27c>
     c84:	01000402 	0x01000402
     c88:	00010501 	0x00010501
     c8c:	00000205 	0x00000205
     c90:	d5030000 	0xd5030000
     c94:	02050100 	slti	$r0,$r8,320(0x140)
     c98:	06210514 	cacop	0x14,$r8,-1983(0x841)
     c9c:	06020501 	cacop	0x1,$r8,129(0x81)
     ca0:	061e05bb 	cacop	0x1b,$r13,1921(0x781)
     ca4:	06020501 	cacop	0x1,$r8,129(0x81)
     ca8:	062305bb 	cacop	0x1b,$r13,-1855(0x8c1)
     cac:	06020501 	cacop	0x1,$r8,129(0x81)
     cb0:	06210583 	cacop	0x3,$r12,-1983(0x841)
     cb4:	06020501 	cacop	0x1,$r8,129(0x81)
     cb8:	061f054b 	cacop	0xb,$r10,1985(0x7c1)
     cbc:	06020501 	cacop	0x1,$r8,129(0x81)
     cc0:	0627054b 	cacop	0xb,$r10,-1599(0x9c1)
     cc4:	06020501 	cacop	0x1,$r8,129(0x81)
     cc8:	0626054b 	cacop	0xb,$r10,-1663(0x981)
     ccc:	06020501 	cacop	0x1,$r8,129(0x81)
     cd0:	062b054b 	cacop	0xb,$r10,-1343(0xac1)
     cd4:	06020501 	cacop	0x1,$r8,129(0x81)
     cd8:	061f054b 	cacop	0xb,$r10,1985(0x7c1)
     cdc:	4c010501 	jirl	$r1,$r8,260(0x104)
     ce0:	01000402 	0x01000402
     ce4:	00010501 	0x00010501
     ce8:	00000205 	0x00000205
     cec:	f2030000 	0xf2030000
     cf0:	02050100 	slti	$r0,$r8,320(0x140)
     cf4:	05131314 	0x05131314
     cf8:	3f051405 	0x3f051405
     cfc:	1d050106 	pcaddu12i	$r6,-514040(0x82808)
     d00:	01040200 	0x01040200
     d04:	0402004a 	csrxchg	$r10,$r2,0x80
     d08:	4205ba01 	beqz	$r16,394680(0x605b8) # 612c0 <_start-0x1bf9ed40>
     d0c:	02040200 	slti	$r0,$r16,256(0x100)
     d10:	04020082 	csrxchg	$r2,$r4,0x80
     d14:	01058202 	0x01058202
     d18:	02040200 	slti	$r0,$r16,256(0x100)
     d1c:	00040283 	alsl.w	$r3,$r20,$r0,0x1
     d20:	01050101 	fmul.d	$f1,$f8,$f0
     d24:	98020500 	0x98020500
     d28:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
     d2c:	050101a8 	0x050101a8
     d30:	04020031 	csrwr	$r17,0x80
     d34:	0a051501 	0x0a051501
     d38:	01040200 	0x01040200
     d3c:	08050106 	0x08050106
     d40:	01040200 	0x01040200
     d44:	0602054a 	cacop	0xa,$r10,129(0x81)
     d48:	06120583 	cacop	0x3,$r12,1153(0x481)
     d4c:	4b010501 	bcnez	$fcc0,459012(0x70104) # 70e50 <_start-0x1bf8f1b0>
     d50:	01000402 	0x01000402
     d54:	00010501 	0x00010501
     d58:	00000205 	0x00000205
     d5c:	b8030000 	0xb8030000
     d60:	32050101 	0x32050101
     d64:	01040200 	0x01040200
     d68:	000a0515 	0x000a0515
     d6c:	06010402 	cacop	0x2,$r0,65(0x41)
     d70:	00080501 	bytepick.w	$r1,$r8,$r1,0x0
     d74:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0e78 <_start-0x1bf5f188>
     d78:	83060205 	0x83060205
     d7c:	01060705 	0x01060705
     d80:	4b060205 	0x4b060205
     d84:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     d88:	0004024a 	alsl.w	$r10,$r18,$r0,0x1
     d8c:	01050101 	fmul.d	$f1,$f8,$f0
     d90:	00020500 	0x00020500
     d94:	03000000 	lu52i.d	$r0,$r0,0
     d98:	050101d3 	0x050101d3
     d9c:	13131302 	addu16i.d	$r2,$r24,-15164(0xc4c4)
     da0:	060a0514 	cacop	0x14,$r8,641(0x281)
     da4:	4a1c0501 	bcnez	$fcc0,400388(0x61c04) # 629a8 <_start-0x1bf9d658>
     da8:	054a1005 	0x054a1005
     dac:	0d054a04 	0x0d054a04
     db0:	054e4a4c 	0x054e4a4c
     db4:	054c0602 	0x054c0602
     db8:	02130601 	slti	$r1,$r16,1217(0x4c1)
     dbc:	01010004 	fadd.d	$f4,$f0,$f0
     dc0:	05000105 	0x05000105
     dc4:	00000002 	0x00000002
     dc8:	01f60300 	0x01f60300
     dcc:	13020501 	addu16i.d	$r1,$r8,-16255(0xc081)
     dd0:	0a051413 	0x0a051413
     dd4:	28050106 	ld.b	$r6,$r8,320(0x140)
     dd8:	4a040582 	bcnez	$fcc4,656388(0xa0404) # a11dc <_start-0x1bf5ee24>
     ddc:	4a4c0d05 	bcnez	$fcc0,1461260(0x164c0c) # 1659e8 <_start-0x1be9a618>
     de0:	0602054e 	cacop	0xe,$r10,129(0x81)
     de4:	0601054d 	cacop	0xd,$r10,65(0x41)
     de8:	00040213 	alsl.w	$r19,$r16,$r0,0x1
     dec:	01050101 	fmul.d	$f1,$f8,$f0
     df0:	00020500 	0x00020500
     df4:	03000000 	lu52i.d	$r0,$r0,0
     df8:	050102ba 	0x050102ba
     dfc:	13131302 	addu16i.d	$r2,$r24,-15164(0xc4c4)
     e00:	08030513 	0x08030513
     e04:	060805af 	cacop	0xf,$r13,513(0x201)
     e08:	06030501 	cacop	0x1,$r8,193(0xc1)
     e0c:	0602054b 	cacop	0xb,$r10,129(0x81)
     e10:	06030546 	cacop	0x6,$r10,193(0xc1)
     e14:	05820c03 	0x05820c03
     e18:	05010608 	0x05010608
     e1c:	054b0603 	0x054b0603
     e20:	4a1a0601 	0x4a1a0601
     e24:	03060305 	lu52i.d	$r5,$r24,384(0x180)
     e28:	08054a71 	0x08054a71
     e2c:	03050106 	lu52i.d	$r6,$r8,320(0x140)
     e30:	054c4b06 	0x054c4b06
     e34:	05010608 	0x05010608
     e38:	024b0603 	sltui	$r3,$r16,705(0x2c1)
     e3c:	01010004 	fadd.d	$f4,$f0,$f0
     e40:	05000105 	0x05000105
     e44:	00000002 	0x00000002
     e48:	02d60300 	addi.d	$r0,$r24,1408(0x580)
     e4c:	13020501 	addu16i.d	$r1,$r8,-16255(0xc081)
     e50:	06060513 	cacop	0x13,$r8,385(0x181)
     e54:	06020501 	cacop	0x1,$r8,129(0x81)
     e58:	06010583 	cacop	0x3,$r12,65(0x41)
     e5c:	04024a13 	csrxchg	$r19,$r16,0x92
     e60:	05010100 	0x05010100
     e64:	02050001 	slti	$r1,$r0,320(0x140)
     e68:	00000000 	0x00000000
     e6c:	0102de03 	fsub.s	$f3,$f16,$f23
     e70:	13830905 	addu16i.d	$r5,$r8,-7998(0xe0c2)
     e74:	06240584 	cacop	0x4,$r12,-1791(0x901)
     e78:	06090501 	cacop	0x1,$r8,577(0x241)
     e7c:	062705bb 	cacop	0x1b,$r13,-1599(0x9c1)
     e80:	06090501 	cacop	0x1,$r8,577(0x241)
     e84:	83f3bbbb 	0x83f3bbbb
     e88:	bb060105 	0xbb060105
     e8c:	01000c02 	0x01000c02
     e90:	001c0501 	mul.w	$r1,$r8,$r1
     e94:	00000205 	0x00000205
     e98:	e9030000 	0xe9030000
     e9c:	01060102 	0x01060102
     ea0:	f3060505 	0xf3060505
     ea4:	064a0613 	0x064a0613
     ea8:	0620054c 	cacop	0xc,$r10,-2047(0x801)
     eac:	06050501 	cacop	0x1,$r8,321(0x141)
     eb0:	0623054b 	cacop	0xb,$r10,-1855(0x8c1)
     eb4:	06050501 	cacop	0x1,$r8,321(0x141)
     eb8:	05f3bbbb 	0x05f3bbbb
     ebc:	0501060c 	0x0501060c
     ec0:	823f0801 	0x823f0801
     ec4:	01000802 	0x01000802
     ec8:	00170501 	sll.w	$r1,$r8,$r1
     ecc:	00000205 	0x00000205
     ed0:	f6030000 	0xf6030000
     ed4:	01060102 	0x01060102
     ed8:	f3060505 	0xf3060505
     edc:	064a0613 	0x064a0613
     ee0:	0620054c 	cacop	0xc,$r10,-2047(0x801)
     ee4:	06050501 	cacop	0x1,$r8,321(0x141)
     ee8:	0623054b 	cacop	0xb,$r10,-1855(0x8c1)
     eec:	06050501 	cacop	0x1,$r8,321(0x141)
     ef0:	0105bbbb 	0x0105bbbb
     ef4:	0282f706 	addi.w	$r6,$r24,189(0xbd)
     ef8:	01010008 	fadd.d	$f8,$f0,$f0
     efc:	00000354 	0x00000354
     f00:	01f80002 	0x01f80002
     f04:	01010000 	fadd.d	$f0,$f0,$f0
     f08:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
     f0c:	01010101 	fadd.d	$f1,$f8,$f0
     f10:	01000000 	0x01000000
     f14:	44010000 	bnez	$r0,256(0x100) # 1014 <_start-0x1bffefec>
     f18:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     f1c:	2f737265 	0x2f737265
     f20:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7d80 <_RAM_DATA+0x7fff6d80>
     f24:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5350 <_RAM_DATA+0x7fff4350>
     f28:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17c9c <_start-0x1bfe8364>
     f2c:	2f73746e 	0x2f73746e
     f30:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 1739c <_start-0x1bfe8c64>
     f34:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7e80 <_RAM_DATA+0x7fff6e80>
     f38:	7241676e 	0x7241676e
     f3c:	505f6863 	b	25976680(0x18c5f68) # 18c6ea4 <_start-0x1a73915c>
     f40:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 172ac <_start-0x1bfe8d54>
     f44:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe78b4 <_RAM_DATA+0x7ffe68b4>
     f48:	79535f67 	0x79535f67
     f4c:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 174c0 <_start-0x1bfe8b40>
     f50:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     f54:	732f3230 	0x732f3230
     f58:	732f6372 	0x732f6372
     f5c:	75702f77 	0x75702f77
     f60:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff78cc <_RAM_DATA+0x7fff68cc>
     f64:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 49c8 <_start-0x1bffb638>
     f68:	72657375 	0x72657375
     f6c:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 186c8 <_start-0x1bfe7938>
     f70:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 82d4 <_start-0x1bff7d2c>
     f74:	75636f64 	0x75636f64
     f78:	746e656d 	0x746e656d
     f7c:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff72d8 <_RAM_DATA+0x7fff62d8>
     f80:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 6be4 <_start-0x1bff941c>
     f84:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7df0 <_RAM_DATA+0x7fff6df0>
     f88:	68637261 	bltu	$r19,$r1,25456(0x6370) # 72f8 <_start-0x1bff8d08>
     f8c:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff81fc <_RAM_DATA+0x7fff71fc>
     f90:	73736563 	0x73736563
     f94:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7700 <_RAM_DATA+0x7fff6700>
     f98:	74737973 	xvmin.w	$xr19,$xr11,$xr30
     f9c:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     fa0:	32303163 	0x32303163
     fa4:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff8214 <_RAM_DATA+0x7fff7214>
     fa8:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 8718 <_start-0x1bff78e8>
     fac:	6469616c 	bge	$r11,$r12,26976(0x6960) # 790c <_start-0x1bff86f4>
     fb0:	75625c65 	0x75625c65
     fb4:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     fb8:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 7c24 <_start-0x1bff83dc>
     fbc:	3233616c 	0x3233616c
     fc0:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7f34 <_RAM_DATA+0x7fff6f34>
     fc4:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff7c20 <_RAM_DATA+0x7fff6c20>
     fc8:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17734 <_start-0x1bfe88cc>
     fcc:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
     fd0:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 17dfc <_start-0x1bfe8204>
     fd4:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe7940 <_RAM_DATA+0x7ffe6940>
     fd8:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe7c3c <_RAM_DATA+0x7ffe6c3c>
     fdc:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff7e44 <_RAM_DATA+0x7fff6e44>
     fe0:	6564756c 	bge	$r11,$r12,91252(0x16474) # 17454 <_start-0x1bfe8bac>
     fe4:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff7150 <_RAM_DATA+0x7fff6150>
     fe8:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 17e50 <_start-0x1bfe81b0>
     fec:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 4a50 <_start-0x1bffb5b0>
     ff0:	72657375 	0x72657375
     ff4:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 18750 <_start-0x1bfe78b0>
     ff8:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 835c <_start-0x1bff7ca4>
     ffc:	75636f64 	0x75636f64
    1000:	746e656d 	0x746e656d
    1004:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff7360 <_RAM_DATA+0x7fff6360>
    1008:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 6c6c <_start-0x1bff9394>
    100c:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7e78 <_RAM_DATA+0x7fff6e78>
    1010:	68637261 	bltu	$r19,$r1,25456(0x6370) # 7380 <_start-0x1bff8c80>
    1014:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff8284 <_RAM_DATA+0x7fff7284>
    1018:	73736563 	0x73736563
    101c:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7788 <_RAM_DATA+0x7fff6788>
    1020:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    1024:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    1028:	32303163 	0x32303163
    102c:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff829c <_RAM_DATA+0x7fff729c>
    1030:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 87a0 <_start-0x1bff7860>
    1034:	6469616c 	bge	$r11,$r12,26976(0x6960) # 7994 <_start-0x1bff866c>
    1038:	75625c65 	0x75625c65
    103c:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    1040:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 7cac <_start-0x1bff8354>
    1044:	3233616c 	0x3233616c
    1048:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7fbc <_RAM_DATA+0x7fff6fbc>
    104c:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff7ca8 <_RAM_DATA+0x7fff6ca8>
    1050:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 177bc <_start-0x1bfe8844>
    1054:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    1058:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 17e84 <_start-0x1bfe817c>
    105c:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe79c8 <_RAM_DATA+0x7ffe69c8>
    1060:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe7cc4 <_RAM_DATA+0x7ffe6cc4>
    1064:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff7ecc <_RAM_DATA+0x7fff6ecc>
    1068:	6564756c 	bge	$r11,$r12,91252(0x16474) # 174dc <_start-0x1bfe8b24>
    106c:	7379732f 	0x7379732f
    1070:	2f3a4400 	0x2f3a4400
    1074:	72657355 	0x72657355
    1078:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 187a4 <_start-0x1bfe785c>
    107c:	2f73676e 	0x2f73676e
    1080:	75636f44 	0x75636f44
    1084:	746e656d 	0x746e656d
    1088:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff53b4 <_RAM_DATA+0x7fff43b4>
    108c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1090:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7efc <_RAM_DATA+0x7fff6efc>
    1094:	68637241 	bltu	$r18,$r1,25456(0x6370) # 7404 <_start-0x1bff8bfc>
    1098:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff82e8 <_RAM_DATA+0x7fff72e8>
    109c:	73736563 	0x73736563
    10a0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff780c <_RAM_DATA+0x7fff680c>
    10a4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    10a8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    10ac:	32303143 	0x32303143
    10b0:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff8320 <_RAM_DATA+0x7fff7320>
    10b4:	2f77732f 	0x2f77732f
    10b8:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7424 <_start-0x1bff8bdc>
    10bc:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    10c0:	31736c00 	0x31736c00
    10c4:	6f635f78 	bgeu	$r27,$r24,-40100(0x3635c) # ffff7420 <_RAM_DATA+0x7fff6420>
    10c8:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe8034 <_RAM_DATA+0x7ffe7034>
    10cc:	0100632e 	0x0100632e
    10d0:	645f0000 	bge	$r0,$r0,24320(0x5f00) # 6fd0 <_start-0x1bff9030>
    10d4:	75616665 	0x75616665
    10d8:	745f746c 	0x745f746c
    10dc:	73657079 	vssrani.wu.d	$vr25,$vr3,0x1c
    10e0:	0200682e 	slti	$r14,$r1,26(0x1a)
    10e4:	735f0000 	vsrarni.d.q	$vr0,$vr0,0x40
    10e8:	6e696474 	bgeu	$r3,$r20,-104092(0x26964) # fffe7a4c <_RAM_DATA+0x7ffe6a4c>
    10ec:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    10f0:	74000003 	xvseq.b	$xr3,$xr0,$xr0
    10f4:	2e747365 	0x2e747365
    10f8:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    10fc:	01050000 	fmul.d	$f0,$f0,$f0
    1100:	00020500 	0x00020500
    1104:	16000000 	lu32i.d	$r0,0
    1108:	13130505 	addu16i.d	$r5,$r8,-15167(0xc4c1)
    110c:	0601054c 	cacop	0xc,$r10,65(0x41)
    1110:	04024a13 	csrxchg	$r19,$r16,0x92
    1114:	05010100 	0x05010100
    1118:	02050001 	slti	$r1,$r0,320(0x140)
    111c:	00000000 	0x00000000
    1120:	05010c03 	0x05010c03
    1124:	01051305 	fmul.d	$f5,$f24,$f4
    1128:	04028706 	csrxchg	$r6,$r24,0xa1
    112c:	05010100 	0x05010100
    1130:	02050001 	slti	$r1,$r0,320(0x140)
    1134:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
    1138:	05011503 	0x05011503
    113c:	01051305 	fmul.d	$f5,$f24,$f4
    1140:	04028706 	csrxchg	$r6,$r24,0xa1
    1144:	05010100 	0x05010100
    1148:	02050001 	slti	$r1,$r0,320(0x140)
    114c:	00000000 	0x00000000
    1150:	05011e03 	0x05011e03
    1154:	01051305 	fmul.d	$f5,$f24,$f4
    1158:	04028706 	csrxchg	$r6,$r24,0xa1
    115c:	05010100 	0x05010100
    1160:	02050001 	slti	$r1,$r0,320(0x140)
    1164:	00000000 	0x00000000
    1168:	05012703 	0x05012703
    116c:	01051305 	fmul.d	$f5,$f24,$f4
    1170:	04028706 	csrxchg	$r6,$r24,0xa1
    1174:	05010100 	0x05010100
    1178:	02050001 	slti	$r1,$r0,320(0x140)
    117c:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
    1180:	05013003 	0x05013003
    1184:	01051305 	fmul.d	$f5,$f24,$f4
    1188:	04024d06 	csrxchg	$r6,$r8,0x93
    118c:	05010100 	0x05010100
    1190:	02050001 	slti	$r1,$r0,320(0x140)
    1194:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
    1198:	05013703 	0x05013703
    119c:	01051305 	fmul.d	$f5,$f24,$f4
    11a0:	04028806 	csrrd	$r6,0xa2
    11a4:	05010100 	0x05010100
    11a8:	02050001 	slti	$r1,$r0,320(0x140)
    11ac:	00000000 	0x00000000
    11b0:	0100c103 	fadd.s	$f3,$f8,$f16
    11b4:	05130505 	0x05130505
    11b8:	02c20601 	addi.d	$r1,$r16,129(0x81)
    11bc:	01010004 	fadd.d	$f4,$f0,$f0
    11c0:	05000105 	0x05000105
    11c4:	00000002 	0x00000002
    11c8:	00cd0300 	bstrpick.d	$r0,$r24,0xd,0x0
    11cc:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
    11d0:	01060705 	0x01060705
    11d4:	4c060905 	jirl	$r5,$r8,1544(0x608)
    11d8:	01061005 	0x01061005
    11dc:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 1717e4 <_start-0x1be8e81c>
    11e0:	06140513 	cacop	0x13,$r8,1281(0x501)
    11e4:	ba1e0501 	0xba1e0501
    11e8:	054a1105 	0x054a1105
    11ec:	054b0609 	0x054b0609
    11f0:	05010616 	0x05010616
    11f4:	05830609 	0x05830609
    11f8:	05010614 	0x05010614
    11fc:	40080609 	beqz	$r16,2361348(0x240804) # 241a00 <_start-0x1bdbe600>
    1200:	01061405 	0x01061405
    1204:	76080105 	0x76080105
    1208:	01000402 	0x01000402
    120c:	00010501 	0x00010501
    1210:	00000205 	0x00000205
    1214:	dc030000 	0xdc030000
    1218:	05050100 	0x05050100
    121c:	06070513 	cacop	0x13,$r8,449(0x1c1)
    1220:	06090501 	cacop	0x1,$r8,577(0x241)
    1224:	0513134c 	0x0513134c
    1228:	05010614 	0x05010614
    122c:	1105ba1e 	addu16i.d	$r30,$r16,16750(0x416e)
    1230:	0609054a 	cacop	0xa,$r10,577(0x241)
    1234:	0616054b 	cacop	0xb,$r10,1409(0x581)
    1238:	06090501 	cacop	0x1,$r8,577(0x241)
    123c:	06140583 	cacop	0x3,$r12,1281(0x501)
    1240:	05828201 	0x05828201
    1244:	054e0609 	0x054e0609
    1248:	05010614 	0x05010614
    124c:	02760801 	sltui	$r1,$r0,-638(0xd82)
    1250:	01010004 	fadd.d	$f4,$f0,$f0
    1254:	000003c0 	0x000003c0
    1258:	00710002 	bstrins.w	$r2,$r0,0x11,0x0
    125c:	01010000 	fadd.d	$f0,$f0,$f0
    1260:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
    1264:	01010101 	fadd.d	$f1,$f8,$f0
    1268:	01000000 	0x01000000
    126c:	44010000 	bnez	$r0,256(0x100) # 136c <_start-0x1bffec94>
    1270:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    1274:	2f737265 	0x2f737265
    1278:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff80d8 <_RAM_DATA+0x7fff70d8>
    127c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff56a8 <_RAM_DATA+0x7fff46a8>
    1280:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17ff4 <_start-0x1bfe800c>
    1284:	2f73746e 	0x2f73746e
    1288:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 176f4 <_start-0x1bfe890c>
    128c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff81d8 <_RAM_DATA+0x7fff71d8>
    1290:	7241676e 	0x7241676e
    1294:	505f6863 	b	25976680(0x18c5f68) # 18c71fc <_start-0x1a738e04>
    1298:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17604 <_start-0x1bfe89fc>
    129c:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7c0c <_RAM_DATA+0x7ffe6c0c>
    12a0:	79535f67 	0x79535f67
    12a4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17818 <_start-0x1bfe87e8>
    12a8:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    12ac:	732f3230 	0x732f3230
    12b0:	732f6372 	0x732f6372
    12b4:	75702f77 	0x75702f77
    12b8:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7c24 <_RAM_DATA+0x7fff6c24>
    12bc:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffff85bc <_RAM_DATA+0x7fff75bc>
    12c0:	72705f63 	0x72705f63
    12c4:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe8730 <_RAM_DATA+0x7ffe7730>
    12c8:	0100632e 	0x0100632e
    12cc:	05000000 	0x05000000
    12d0:	02050027 	slti	$r7,$r1,320(0x140)
    12d4:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
    12d8:	06010b03 	cacop	0x3,$r24,66(0x42)
    12dc:	06020501 	cacop	0x1,$r8,129(0x81)
    12e0:	1305054b 	addu16i.d	$r11,$r10,-16063(0xc141)
    12e4:	01061705 	0x01061705
    12e8:	05ba1505 	0x05ba1505
    12ec:	05830605 	0x05830605
    12f0:	04020009 	csrrd	$r9,0x80
    12f4:	1c051301 	pcaddu12i	$r1,10392(0x2898)
    12f8:	01040200 	0x01040200
    12fc:	0a051106 	0x0a051106
    1300:	01040200 	0x01040200
    1304:	0605054a 	cacop	0xa,$r10,321(0x141)
    1308:	060f05bd 	cacop	0x1d,$r13,961(0x3c1)
    130c:	83010501 	0x83010501
    1310:	01000802 	0x01000802
    1314:	00170501 	sll.w	$r1,$r8,$r1
    1318:	15040205 	lu12i.w	$r5,-516080(0x82010)
    131c:	14031c00 	lu12i.w	$r0,6368(0x18e0)
    1320:	05010601 	0x05010601
    1324:	3d080602 	0x3d080602
    1328:	06070513 	cacop	0x13,$r8,449(0x1c1)
    132c:	00110501 	sub.w	$r1,$r8,$r1
    1330:	06010402 	cacop	0x2,$r0,65(0x41)
    1334:	8303054b 	0x8303054b
    1338:	06040583 	cacop	0x3,$r12,257(0x101)
    133c:	470a0501 	bnez	$r8,461316(0x70a04) # 71d40 <_start-0x1bf8e2c0>
    1340:	054a0705 	0x054a0705
    1344:	054b0603 	0x054b0603
    1348:	05010605 	0x05010605
    134c:	05bf0602 	0x05bf0602
    1350:	ba130601 	0xba130601
    1354:	0008024a 	bytepick.w	$r10,$r18,$r0,0x0
    1358:	01050101 	fmul.d	$f1,$f8,$f0
    135c:	5c020500 	bne	$r8,$r0,516(0x204) # 1560 <_start-0x1bffeaa0>
    1360:	031c0015 	lu52i.d	$r21,$r0,1792(0x700)
    1364:	01060120 	0x01060120
    1368:	08060505 	0x08060505
    136c:	131313e5 	addu16i.d	$r5,$r31,-15164(0xc4c4)
    1370:	06070513 	cacop	0x13,$r8,449(0x1c1)
    1374:	000d0501 	bytepick.d	$r1,$r8,$r1,0x2
    1378:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a147c <_start-0x1bf5eb84>
    137c:	4e060305 	jirl	$r5,$r24,-129536(0x20600)
    1380:	01060805 	0x01060805
    1384:	02000105 	slti	$r5,$r8,0
    1388:	77030104 	0x77030104
    138c:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    1390:	03010402 	lu52i.d	$r2,$r0,65(0x41)
    1394:	03054a0c 	lu52i.d	$r12,$r16,338(0x152)
    1398:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    139c:	0f054b06 	0x0f054b06
    13a0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    13a4:	09050106 	0x09050106
    13a8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    13ac:	000305ba 	0x000305ba
    13b0:	06030402 	cacop	0x2,$r0,193(0xc1)
    13b4:	000805bb 	bytepick.w	$r27,$r13,$r1,0x0
    13b8:	06030402 	cacop	0x2,$r0,193(0xc1)
    13bc:	00140501 	nor	$r1,$r8,$r1
    13c0:	f0030402 	0xf0030402
    13c4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    13c8:	0603054a 	cacop	0xa,$r10,193(0xc1)
    13cc:	054a7a03 	0x054a7a03
    13d0:	0501060b 	0x0501060b
    13d4:	064b0603 	0x064b0603
    13d8:	05054a4a 	0x05054a4a
    13dc:	4a090306 	0x4a090306
    13e0:	01060a05 	0x01060a05
    13e4:	82050582 	0x82050582
    13e8:	054c1005 	0x054c1005
    13ec:	0402001f 	csrrd	$r31,0x80
    13f0:	09054b01 	0x09054b01
    13f4:	01040200 	0x01040200
    13f8:	0402004a 	csrxchg	$r10,$r2,0x80
    13fc:	19058204 	pcaddi	$r4,-513008(0x82c10)
    1400:	04040200 	csrxchg	$r0,$r16,0x100
    1404:	00050547 	alsl.w	$r7,$r10,$r1,0x3
    1408:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a160c <_start-0x1bf5e9f4>
    140c:	4c060905 	jirl	$r5,$r8,1544(0x608)
    1410:	01061005 	0x01061005
    1414:	02001605 	slti	$r5,$r16,5(0x5)
    1418:	054a0104 	0x054a0104
    141c:	04020014 	csrrd	$r20,0x80
    1420:	09054a01 	0x09054a01
    1424:	01040200 	0x01040200
    1428:	2905bb06 	st.b	$r6,$r24,366(0x16e)
    142c:	02040200 	slti	$r0,$r16,256(0x100)
    1430:	09058206 	0x09058206
    1434:	02040200 	slti	$r0,$r16,256(0x100)
    1438:	0605054a 	cacop	0xa,$r10,321(0x141)
    143c:	060105bc 	cacop	0x1c,$r13,65(0x41)
    1440:	4a4aba13 	0x4a4aba13
    1444:	0008024a 	bytepick.w	$r10,$r18,$r0,0x0
    1448:	01050101 	fmul.d	$f1,$f8,$f0
    144c:	4c020500 	jirl	$r0,$r8,516(0x204)
    1450:	031c0016 	lu52i.d	$r22,$r0,1792(0x700)
    1454:	01060139 	0x01060139
    1458:	02060205 	slti	$r5,$r16,384(0x180)
    145c:	13131338 	addu16i.d	$r24,$r25,-15164(0xc4c4)
    1460:	83131313 	0x83131313
    1464:	06080513 	cacop	0x13,$r8,513(0x201)
    1468:	4a020501 	bcnez	$fcc0,393732(0x60204) # 6166c <_start-0x1bf9e994>
    146c:	054f0505 	0x054f0505
    1470:	054c0604 	0x054c0604
    1474:	0501060e 	0x0501060e
    1478:	05f28204 	0x05f28204
    147c:	3f080606 	0x3f080606
    1480:	06090583 	cacop	0x3,$r12,577(0x241)
    1484:	06060501 	cacop	0x1,$r8,385(0x181)
    1488:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    148c:	06060501 	cacop	0x1,$r8,385(0x181)
    1490:	05834c4b 	0x05834c4b
    1494:	05010609 	0x05010609
    1498:	054b0606 	0x054b0606
    149c:	05010607 	0x05010607
    14a0:	4c4b0606 	jirl	$r6,$r16,19204(0x4b04)
    14a4:	060905f3 	cacop	0x13,$r15,577(0x241)
    14a8:	06060501 	cacop	0x1,$r8,385(0x181)
    14ac:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    14b0:	06060501 	cacop	0x1,$r8,385(0x181)
    14b4:	05f34c4b 	0x05f34c4b
    14b8:	05010609 	0x05010609
    14bc:	054b0606 	0x054b0606
    14c0:	05010607 	0x05010607
    14c4:	4c4b0606 	jirl	$r6,$r16,19204(0x4b04)
    14c8:	060905f3 	cacop	0x13,$r15,577(0x241)
    14cc:	06060501 	cacop	0x1,$r8,385(0x181)
    14d0:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    14d4:	06060501 	cacop	0x1,$r8,385(0x181)
    14d8:	05f34c4b 	0x05f34c4b
    14dc:	05010609 	0x05010609
    14e0:	054b0606 	0x054b0606
    14e4:	05010607 	0x05010607
    14e8:	4d4b0606 	jirl	$r6,$r16,84740(0x14b04)
    14ec:	060905f3 	cacop	0x13,$r15,577(0x241)
    14f0:	06060501 	cacop	0x1,$r8,385(0x181)
    14f4:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    14f8:	06060501 	cacop	0x1,$r8,385(0x181)
    14fc:	05834c4b 	0x05834c4b
    1500:	05010607 	0x05010607
    1504:	4c4b0606 	jirl	$r6,$r16,19204(0x4b04)
    1508:	01060705 	0x01060705
    150c:	4b060605 	0x4b060605
    1510:	01060b05 	0x01060b05
    1514:	054a0605 	0x054a0605
    1518:	04020007 	csrrd	$r7,0x80
    151c:	054b0603 	0x054b0603
    1520:	0402000a 	csrrd	$r10,0x80
    1524:	05010603 	0x05010603
    1528:	04020017 	csrrd	$r23,0x80
    152c:	08058203 	0x08058203
    1530:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    1534:	002d054a 	alsl.d	$r10,$r10,$r1,0x3
    1538:	49030402 	bceqz	$fcc0,590596(0x90304) # 9183c <_start-0x1bf6e7c4>
    153c:	02001105 	slti	$r5,$r8,4(0x4)
    1540:	054a0104 	0x054a0104
    1544:	0402001b 	csrrd	$r27,0x80
    1548:	06058201 	cacop	0x1,$r16,352(0x160)
    154c:	01040200 	0x01040200
    1550:	04020082 	csrxchg	$r2,$r4,0x80
    1554:	07058201 	0x07058201
    1558:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    155c:	0a055006 	0x0a055006
    1560:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    1564:	17050106 	lu32i.d	$r6,-514040(0x82808)
    1568:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    156c:	00080582 	bytepick.w	$r2,$r12,$r1,0x0
    1570:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a1874 <_start-0x1bf5e78c>
    1574:	02002d05 	slti	$r5,$r8,11(0xb)
    1578:	05490304 	0x05490304
    157c:	04020011 	csrrd	$r17,0x80
    1580:	1b054a01 	pcalau12i	$r1,-513456(0x82a50)
    1584:	01040200 	0x01040200
    1588:	00060582 	alsl.wu	$r2,$r12,$r1,0x1
    158c:	82010402 	0x82010402
    1590:	01040200 	0x01040200
    1594:	4a0b0582 	bcnez	$fcc4,658180(0xa0b04) # a2098 <_start-0x1bf5df68>
    1598:	0607054a 	cacop	0xa,$r10,449(0x1c1)
    159c:	1506054d 	lu12i.w	$r13,-511958(0x8302a)
    15a0:	00100583 	add.w	$r3,$r12,$r1
    15a4:	4e010402 	jirl	$r2,$r0,-130812(0x20104)
    15a8:	02001605 	slti	$r5,$r16,5(0x5)
    15ac:	03060204 	lu52i.d	$r4,$r16,384(0x180)
    15b0:	05ba7fbd 	0x05ba7fbd
    15b4:	04020010 	csrrd	$r16,0x80
    15b8:	02054a01 	slti	$r1,$r16,338(0x152)
    15bc:	01040200 	0x01040200
    15c0:	06030582 	cacop	0x2,$r12,193(0xc1)
    15c4:	0505134c 	0x0505134c
    15c8:	04050106 	csrxchg	$r6,$r8,0x140
    15cc:	00c00306 	bstrpick.d	$r6,$r24,0x0,0x0
    15d0:	06060582 	cacop	0x2,$r12,385(0x181)
    15d4:	06040501 	cacop	0x1,$r8,257(0x101)
    15d8:	87030583 	0x87030583
    15dc:	01060505 	0x01060505
    15e0:	02001505 	slti	$r5,$r8,5(0x5)
    15e4:	054a0104 	0x054a0104
    15e8:	0402000f 	csrrd	$r15,0x80
    15ec:	0405f201 	csrxchg	$r1,$r16,0x17c
    15f0:	0402004c 	csrxchg	$r12,$r2,0x80
    15f4:	02008201 	slti	$r1,$r16,32(0x20)
    15f8:	004a0104 	0x004a0104
    15fc:	06030402 	cacop	0x2,$r0,193(0xc1)
    1600:	0402004a 	csrxchg	$r10,$r2,0x80
    1604:	74080603 	xvslt.bu	$xr3,$xr16,$xr1
    1608:	17060505 	lu32i.d	$r5,-511960(0x83028)
    160c:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    1610:	024a82ba 	sltui	$r26,$r21,672(0x2a0)
    1614:	01010008 	fadd.d	$f8,$f0,$f0
    1618:	000001ea 	0x000001ea
    161c:	00800002 	bstrins.d	$r2,$r0,0x0,0x0
    1620:	01010000 	fadd.d	$f0,$f0,$f0
    1624:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
    1628:	01010101 	fadd.d	$f1,$f8,$f0
    162c:	01000000 	0x01000000
    1630:	44010000 	bnez	$r0,256(0x100) # 1730 <_start-0x1bffe8d0>
    1634:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    1638:	2f737265 	0x2f737265
    163c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff849c <_RAM_DATA+0x7fff749c>
    1640:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5a6c <_RAM_DATA+0x7fff4a6c>
    1644:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 183b8 <_start-0x1bfe7c48>
    1648:	2f73746e 	0x2f73746e
    164c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17ab8 <_start-0x1bfe8548>
    1650:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff859c <_RAM_DATA+0x7fff759c>
    1654:	7241676e 	0x7241676e
    1658:	505f6863 	b	25976680(0x18c5f68) # 18c75c0 <_start-0x1a738a40>
    165c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 179c8 <_start-0x1bfe8638>
    1660:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7fd0 <_RAM_DATA+0x7ffe6fd0>
    1664:	79535f67 	0x79535f67
    1668:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17bdc <_start-0x1bfe8424>
    166c:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    1670:	732f3230 	0x732f3230
    1674:	732f6372 	0x732f6372
    1678:	75702f77 	0x75702f77
    167c:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7fe8 <_RAM_DATA+0x7fff6fe8>
    1680:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffff8980 <_RAM_DATA+0x7fff7980>
    1684:	70675f63 	vavg.wu	$vr3,$vr27,$vr23
    1688:	632e6f69 	blt	$r27,$r9,-53652(0x32e6c) # ffff44f4 <_RAM_DATA+0x7fff34f4>
    168c:	00000100 	0x00000100
    1690:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff79fc <_RAM_DATA+0x7fff69fc>
    1694:	6331736c 	blt	$r27,$r12,-52880(0x33170) # ffff4804 <_RAM_DATA+0x7fff3804>
    1698:	2e323031 	0x2e323031
    169c:	00010068 	0x00010068
    16a0:	22050000 	ll.d	$r0,$r0,1280(0x500)
    16a4:	00020500 	0x00020500
    16a8:	03000000 	lu52i.d	$r0,$r0,0
    16ac:	05050117 	0x05050117
    16b0:	08051313 	0x08051313
    16b4:	09050106 	0x09050106
    16b8:	05138306 	0x05138306
    16bc:	0501060b 	0x0501060b
    16c0:	04020015 	csrrd	$r21,0x80
    16c4:	054a0601 	0x054a0601
    16c8:	04020025 	csrwr	$r5,0x80
    16cc:	05010601 	0x05010601
    16d0:	0402002e 	csrwr	$r14,0x80
    16d4:	25058201 	stptr.w	$r1,$r16,1408(0x580)
    16d8:	01040200 	0x01040200
    16dc:	060e0582 	cacop	0x2,$r12,897(0x381)
    16e0:	061e05bb 	cacop	0x1b,$r13,1921(0x781)
    16e4:	82260501 	0x82260501
    16e8:	05821e05 	0x05821e05
    16ec:	05bc0609 	0x05bc0609
    16f0:	0501060d 	0x0501060d
    16f4:	054b0609 	0x054b0609
    16f8:	0501060b 	0x0501060b
    16fc:	04020015 	csrrd	$r21,0x80
    1700:	054a0601 	0x054a0601
    1704:	04020025 	csrwr	$r5,0x80
    1708:	05010601 	0x05010601
    170c:	0402002e 	csrwr	$r14,0x80
    1710:	25058201 	stptr.w	$r1,$r16,1408(0x580)
    1714:	01040200 	0x01040200
    1718:	060e0582 	cacop	0x2,$r12,897(0x381)
    171c:	061e05bb 	cacop	0x1b,$r13,1921(0x781)
    1720:	82260501 	0x82260501
    1724:	05821e05 	0x05821e05
    1728:	04028401 	csrrd	$r1,0xa1
    172c:	05010100 	0x05010100
    1730:	02050024 	slti	$r4,$r1,320(0x140)
    1734:	1c00189c 	pcaddu12i	$r28,196(0xc4)
    1738:	05012b03 	0x05012b03
    173c:	05131305 	0x05131305
    1740:	05010608 	0x05010608
    1744:	13830609 	addu16i.d	$r9,$r16,-7999(0xe0c1)
    1748:	01060b05 	0x01060b05
    174c:	02001605 	slti	$r5,$r16,5(0x5)
    1750:	4a060104 	bcnez	$fcc0,1181184(0x120600) # 121d50 <_start-0x1bede2b0>
    1754:	02002505 	slti	$r5,$r8,9(0x9)
    1758:	01060104 	0x01060104
    175c:	02002e05 	slti	$r5,$r16,11(0xb)
    1760:	05820104 	0x05820104
    1764:	04020025 	csrwr	$r5,0x80
    1768:	0e058201 	0x0e058201
    176c:	1d05bb06 	pcaddu12i	$r6,-512552(0x82dd8)
    1770:	25050106 	stptr.w	$r6,$r8,1280(0x500)
    1774:	821d0582 	0x821d0582
    1778:	bc060905 	0xbc060905
    177c:	01060d05 	0x01060d05
    1780:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 171d88 <_start-0x1be8e278>
    1784:	01060b05 	0x01060b05
    1788:	02001605 	slti	$r5,$r16,5(0x5)
    178c:	4a060104 	bcnez	$fcc0,1181184(0x120600) # 121d8c <_start-0x1bede274>
    1790:	02002505 	slti	$r5,$r8,9(0x9)
    1794:	01060104 	0x01060104
    1798:	02002e05 	slti	$r5,$r16,11(0xb)
    179c:	05820104 	0x05820104
    17a0:	04020025 	csrwr	$r5,0x80
    17a4:	0e058201 	0x0e058201
    17a8:	1d05bb06 	pcaddu12i	$r6,-512552(0x82dd8)
    17ac:	25050106 	stptr.w	$r6,$r8,1280(0x500)
    17b0:	821d0582 	0x821d0582
    17b4:	02840105 	addi.w	$r5,$r8,256(0x100)
    17b8:	01010004 	fadd.d	$f4,$f0,$f0
    17bc:	05001905 	0x05001905
    17c0:	00000002 	0x00000002
    17c4:	013e0300 	0x013e0300
    17c8:	13130505 	addu16i.d	$r5,$r8,-15167(0xc4c1)
    17cc:	01060805 	0x01060805
    17d0:	83060905 	0x83060905
    17d4:	06120513 	cacop	0x13,$r8,1153(0x481)
    17d8:	82230501 	0x82230501
    17dc:	05821c05 	0x05821c05
    17e0:	14054a0b 	lu12i.w	$r11,10832(0x2a50)
    17e4:	0905804d 	0x0905804d
    17e8:	05138606 	0x05138606
    17ec:	05010612 	0x05010612
    17f0:	1c058223 	pcaddu12i	$r3,11281(0x2c11)
    17f4:	4a0b0582 	bcnez	$fcc4,658180(0xa0b04) # a22f8 <_start-0x1bf5dd08>
    17f8:	054d1405 	0x054d1405
    17fc:	14054c01 	lu12i.w	$r1,10848(0x2a60)
    1800:	00080246 	bytepick.w	$r6,$r18,$r0,0x0
    1804:	00a20101 	bstrins.d	$r1,$r8,0x22,0x0
    1808:	00020000 	0x00020000
    180c:	00000080 	0x00000080
    1810:	0efb0101 	0x0efb0101
    1814:	0101000d 	fadd.d	$f13,$f0,$f0
    1818:	00000101 	0x00000101
    181c:	00000100 	0x00000100
    1820:	2f3a4401 	0x2f3a4401
    1824:	72657355 	0x72657355
    1828:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 18f54 <_start-0x1bfe70ac>
    182c:	2f73676e 	0x2f73676e
    1830:	75636f44 	0x75636f44
    1834:	746e656d 	0x746e656d
    1838:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff5b64 <_RAM_DATA+0x7fff4b64>
    183c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1840:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff86ac <_RAM_DATA+0x7fff76ac>
    1844:	68637241 	bltu	$r18,$r1,25456(0x6370) # 7bb4 <_start-0x1bff844c>
    1848:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff8a98 <_RAM_DATA+0x7fff7a98>
    184c:	73736563 	0x73736563
    1850:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7fbc <_RAM_DATA+0x7fff6fbc>
    1854:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    1858:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    185c:	32303143 	0x32303143
    1860:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff8ad0 <_RAM_DATA+0x7fff7ad0>
    1864:	2f77732f 	0x2f77732f
    1868:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 7adc <_start-0x1bff8524>
    186c:	00006369 	rdtimel.w	$r9,$r27
    1870:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff7bdc <_RAM_DATA+0x7fff6bdc>
    1874:	74726175 	xvmin.b	$xr21,$xr11,$xr24
    1878:	0100632e 	0x0100632e
    187c:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffff8b7c <_RAM_DATA+0x7fff7b7c>
    1880:	736c5f63 	vssrarni.bu.h	$vr3,$vr27,0x7
    1884:	30316331 	0x30316331
    1888:	00682e32 	bstrins.w	$r18,$r17,0x8,0xb
    188c:	00000001 	0x00000001
    1890:	05001805 	0x05001805
    1894:	00192002 	srl.d	$r2,$r0,$r8
    1898:	010a031c 	0x010a031c
    189c:	05130505 	0x05130505
    18a0:	0501060e 	0x0501060e
    18a4:	023d0801 	slti	$r1,$r0,-190(0xf42)
    18a8:	01010004 	fadd.d	$f4,$f0,$f0
    18ac:	00000394 	0x00000394
    18b0:	020f0002 	slti	$r2,$r0,960(0x3c0)
    18b4:	01010000 	fadd.d	$f0,$f0,$f0
    18b8:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
    18bc:	01010101 	fadd.d	$f1,$f8,$f0
    18c0:	01000000 	0x01000000
    18c4:	44010000 	bnez	$r0,256(0x100) # 19c4 <_start-0x1bffe63c>
    18c8:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    18cc:	2f737265 	0x2f737265
    18d0:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8730 <_RAM_DATA+0x7fff7730>
    18d4:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5d00 <_RAM_DATA+0x7fff4d00>
    18d8:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 1864c <_start-0x1bfe79b4>
    18dc:	2f73746e 	0x2f73746e
    18e0:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17d4c <_start-0x1bfe82b4>
    18e4:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff8830 <_RAM_DATA+0x7fff7830>
    18e8:	7241676e 	0x7241676e
    18ec:	505f6863 	b	25976680(0x18c5f68) # 18c7854 <_start-0x1a7387ac>
    18f0:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17c5c <_start-0x1bfe83a4>
    18f4:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8264 <_RAM_DATA+0x7ffe7264>
    18f8:	79535f67 	0x79535f67
    18fc:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17e70 <_start-0x1bfe8190>
    1900:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    1904:	732f3230 	0x732f3230
    1908:	732f6372 	0x732f6372
    190c:	75702f77 	0x75702f77
    1910:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff827c <_RAM_DATA+0x7fff727c>
    1914:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 5378 <_start-0x1bffac88>
    1918:	72657375 	0x72657375
    191c:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19078 <_start-0x1bfe6f88>
    1920:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 8c84 <_start-0x1bff737c>
    1924:	75636f64 	0x75636f64
    1928:	746e656d 	0x746e656d
    192c:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff7c88 <_RAM_DATA+0x7fff6c88>
    1930:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 7594 <_start-0x1bff8a6c>
    1934:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff87a0 <_RAM_DATA+0x7fff77a0>
    1938:	68637261 	bltu	$r19,$r1,25456(0x6370) # 7ca8 <_start-0x1bff8358>
    193c:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff8bac <_RAM_DATA+0x7fff7bac>
    1940:	73736563 	0x73736563
    1944:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff80b0 <_RAM_DATA+0x7fff70b0>
    1948:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    194c:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    1950:	32303163 	0x32303163
    1954:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff8bc4 <_RAM_DATA+0x7fff7bc4>
    1958:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 90c8 <_start-0x1bff6f38>
    195c:	6469616c 	bge	$r11,$r12,26976(0x6960) # 82bc <_start-0x1bff7d44>
    1960:	75625c65 	0x75625c65
    1964:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    1968:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 85d4 <_start-0x1bff7a2c>
    196c:	3233616c 	0x3233616c
    1970:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff88e4 <_RAM_DATA+0x7fff78e4>
    1974:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff85d0 <_RAM_DATA+0x7fff75d0>
    1978:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 180e4 <_start-0x1bfe7f1c>
    197c:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    1980:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 187ac <_start-0x1bfe7854>
    1984:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe82f0 <_RAM_DATA+0x7ffe72f0>
    1988:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe85ec <_RAM_DATA+0x7ffe75ec>
    198c:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff87f4 <_RAM_DATA+0x7fff77f4>
    1990:	6564756c 	bge	$r11,$r12,91252(0x16474) # 17e04 <_start-0x1bfe81fc>
    1994:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff7b00 <_RAM_DATA+0x7fff6b00>
    1998:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 18800 <_start-0x1bfe7800>
    199c:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 5400 <_start-0x1bffac00>
    19a0:	72657375 	0x72657375
    19a4:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19100 <_start-0x1bfe6f00>
    19a8:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 8d0c <_start-0x1bff72f4>
    19ac:	75636f64 	0x75636f64
    19b0:	746e656d 	0x746e656d
    19b4:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff7d10 <_RAM_DATA+0x7fff6d10>
    19b8:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 761c <_start-0x1bff89e4>
    19bc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8828 <_RAM_DATA+0x7fff7828>
    19c0:	68637261 	bltu	$r19,$r1,25456(0x6370) # 7d30 <_start-0x1bff82d0>
    19c4:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff8c34 <_RAM_DATA+0x7fff7c34>
    19c8:	73736563 	0x73736563
    19cc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8138 <_RAM_DATA+0x7fff7138>
    19d0:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    19d4:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    19d8:	32303163 	0x32303163
    19dc:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff8c4c <_RAM_DATA+0x7fff7c4c>
    19e0:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9150 <_start-0x1bff6eb0>
    19e4:	6469616c 	bge	$r11,$r12,26976(0x6960) # 8344 <_start-0x1bff7cbc>
    19e8:	75625c65 	0x75625c65
    19ec:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    19f0:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 865c <_start-0x1bff79a4>
    19f4:	3233616c 	0x3233616c
    19f8:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff896c <_RAM_DATA+0x7fff796c>
    19fc:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff8658 <_RAM_DATA+0x7fff7658>
    1a00:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 1816c <_start-0x1bfe7e94>
    1a04:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    1a08:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 18834 <_start-0x1bfe77cc>
    1a0c:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe8378 <_RAM_DATA+0x7ffe7378>
    1a10:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe8674 <_RAM_DATA+0x7ffe7674>
    1a14:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff887c <_RAM_DATA+0x7fff787c>
    1a18:	6564756c 	bge	$r11,$r12,91252(0x16474) # 17e8c <_start-0x1bfe8174>
    1a1c:	7379732f 	0x7379732f
    1a20:	2f3a4400 	0x2f3a4400
    1a24:	72657355 	0x72657355
    1a28:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19154 <_start-0x1bfe6eac>
    1a2c:	2f73676e 	0x2f73676e
    1a30:	75636f44 	0x75636f44
    1a34:	746e656d 	0x746e656d
    1a38:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff5d64 <_RAM_DATA+0x7fff4d64>
    1a3c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1a40:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff88ac <_RAM_DATA+0x7fff78ac>
    1a44:	68637241 	bltu	$r18,$r1,25456(0x6370) # 7db4 <_start-0x1bff824c>
    1a48:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff8c98 <_RAM_DATA+0x7fff7c98>
    1a4c:	73736563 	0x73736563
    1a50:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff81bc <_RAM_DATA+0x7fff71bc>
    1a54:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    1a58:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    1a5c:	32303143 	0x32303143
    1a60:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff8cd0 <_RAM_DATA+0x7fff7cd0>
    1a64:	2f77732f 	0x2f77732f
    1a68:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7dd4 <_start-0x1bff822c>
    1a6c:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    1a70:	31736c00 	0x31736c00
    1a74:	78655f78 	0x78655f78
    1a78:	632e6974 	blt	$r11,$r20,-53656(0x32e68) # ffff48e0 <_RAM_DATA+0x7fff38e0>
    1a7c:	00000100 	0x00000100
    1a80:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe7fe4 <_RAM_DATA+0x7ffe6fe4>
    1a84:	746c7561 	0x746c7561
    1a88:	7079745f 	0x7079745f
    1a8c:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 48fc <_start-0x1bffb704>
    1a90:	00000200 	0x00000200
    1a94:	6474735f 	bge	$r26,$r31,29808(0x7470) # 8f04 <_start-0x1bff70fc>
    1a98:	2e746e69 	0x2e746e69
    1a9c:	00030068 	0x00030068
    1aa0:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
    1aa4:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    1aa8:	6c000004 	bgeu	$r0,$r4,0 # 1aa8 <_start-0x1bffe558>
    1aac:	2e783173 	0x2e783173
    1ab0:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    1ab4:	31736c00 	0x31736c00
    1ab8:	78655f78 	0x78655f78
    1abc:	682e6974 	bltu	$r11,$r20,11880(0x2e68) # 4924 <_start-0x1bffb6dc>
    1ac0:	00000100 	0x00000100
    1ac4:	00010500 	asrtle.d	$r8,$r1
    1ac8:	00000205 	0x00000205
    1acc:	05170000 	0x05170000
    1ad0:	13051303 	addu16i.d	$r3,$r24,-16060(0xc144)
    1ad4:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    1ad8:	14054b06 	lu12i.w	$r6,10840(0x2a58)
    1adc:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    1ae0:	13054b06 	addu16i.d	$r6,$r24,-16046(0xc152)
    1ae4:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    1ae8:	12054b06 	addu16i.d	$r6,$r24,-32430(0x8152)
    1aec:	01050106 	fmul.d	$f6,$f8,$f0
    1af0:	0004024b 	alsl.w	$r11,$r18,$r0,0x1
    1af4:	01050101 	fmul.d	$f1,$f8,$f0
    1af8:	00020500 	0x00020500
    1afc:	03000000 	lu52i.d	$r0,$r0,0
    1b00:	0305010d 	lu52i.d	$r13,$r8,320(0x140)
    1b04:	13131513 	addu16i.d	$r19,$r8,-15163(0xc4c5)
    1b08:	16051413 	lu32i.d	$r19,10400(0x28a0)
    1b0c:	06050106 	cacop	0x6,$r8,320(0x140)
    1b10:	0603054a 	cacop	0xa,$r10,193(0xc1)
    1b14:	060e054e 	cacop	0xe,$r10,897(0x381)
    1b18:	06030501 	cacop	0x1,$r8,193(0xc1)
    1b1c:	0e05ad08 	0x0e05ad08
    1b20:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    1b24:	1505f306 	lu12i.w	$r6,-512104(0x82f98)
    1b28:	05050106 	0x05050106
    1b2c:	054c064a 	0x054c064a
    1b30:	0605f903 	cacop	0x3,$r8,382(0x17e)
    1b34:	062905f5 	cacop	0x15,$r15,-1471(0xa41)
    1b38:	4a160501 	bcnez	$fcc0,398852(0x61604) # 6313c <_start-0x1bf9cec4>
    1b3c:	bc060605 	0xbc060605
    1b40:	01061905 	0x01061905
    1b44:	064a0905 	0x064a0905
    1b48:	bd060588 	0xbd060588
    1b4c:	6f030505 	bgeu	$r8,$r5,-64764(0x30304) # ffff1e50 <_RAM_DATA+0x7fff0e50>
    1b50:	06053c08 	cacop	0x8,$r0,335(0x14f)
    1b54:	3c080a03 	0x3c080a03
    1b58:	0b030405 	0x0b030405
    1b5c:	060105f2 	cacop	0x12,$r15,65(0x41)
    1b60:	000402f4 	alsl.w	$r20,$r23,$r0,0x1
    1b64:	01050101 	fmul.d	$f1,$f8,$f0
    1b68:	00020500 	0x00020500
    1b6c:	03000000 	lu52i.d	$r0,$r0,0
    1b70:	0305013c 	lu52i.d	$r28,$r9,320(0x140)
    1b74:	061e0513 	cacop	0x13,$r8,1921(0x781)
    1b78:	06030501 	cacop	0x1,$r8,193(0xc1)
    1b7c:	061e054b 	cacop	0xb,$r10,1921(0x781)
    1b80:	06030501 	cacop	0x1,$r8,193(0xc1)
    1b84:	06210583 	cacop	0x3,$r12,-1983(0x841)
    1b88:	06030501 	cacop	0x1,$r8,193(0xc1)
    1b8c:	0621054b 	cacop	0xb,$r10,-1983(0x841)
    1b90:	4b010501 	bcnez	$fcc0,459012(0x70104) # 71c94 <_start-0x1bf8e36c>
    1b94:	01000402 	0x01000402
    1b98:	00010501 	0x00010501
    1b9c:	00000205 	0x00000205
    1ba0:	c4030000 	0xc4030000
    1ba4:	03050100 	lu52i.d	$r0,$r8,320(0x140)
    1ba8:	05141413 	0x05141413
    1bac:	0501060c 	0x0501060c
    1bb0:	06054a18 	cacop	0x18,$r16,338(0x152)
    1bb4:	4c0f054a 	jirl	$r10,$r10,3844(0xf04)
    1bb8:	50060305 	b	-65796608(0xc140600) # fc1421b8 <_RAM_DATA+0x7c1411b8>
    1bbc:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    1bc0:	01000402 	0x01000402
    1bc4:	00010501 	0x00010501
    1bc8:	00000205 	0x00000205
    1bcc:	d5030000 	0xd5030000
    1bd0:	03050100 	lu52i.d	$r0,$r8,320(0x140)
    1bd4:	13051414 	addu16i.d	$r20,$r0,-16059(0xc145)
    1bd8:	05820106 	0x05820106
    1bdc:	04024b01 	csrxchg	$r1,$r24,0x92
    1be0:	05010100 	0x05010100
    1be4:	02050001 	slti	$r1,$r0,320(0x140)
    1be8:	00000000 	0x00000000
    1bec:	0100dd03 	fadd.s	$f3,$f8,$f23
    1bf0:	13130305 	addu16i.d	$r5,$r24,-15168(0xc4c0)
    1bf4:	17051414 	lu32i.d	$r20,-513888(0x828a0)
    1bf8:	10050106 	addu16i.d	$r6,$r8,320(0x140)
    1bfc:	0603054a 	cacop	0xa,$r10,193(0xc1)
    1c00:	060d054c 	cacop	0xc,$r10,833(0x341)
    1c04:	4a190501 	bcnez	$fcc0,399620(0x61904) # 63508 <_start-0x1bf9caf8>
    1c08:	054a0605 	0x054a0605
    1c0c:	04020038 	csrwr	$r24,0x80
    1c10:	0f054a01 	0x0f054a01
    1c14:	4a4a4a50 	0x4a4a4a50
    1c18:	06030546 	cacop	0x6,$r10,193(0xc1)
    1c1c:	06010550 	cacop	0x10,$r10,65(0x41)
    1c20:	00040213 	alsl.w	$r19,$r16,$r0,0x1
    1c24:	01050101 	fmul.d	$f1,$f8,$f0
    1c28:	38020500 	0x38020500
    1c2c:	031c0019 	lu52i.d	$r25,$r0,1792(0x700)
    1c30:	050100f1 	0x050100f1
    1c34:	05141403 	0x05141403
    1c38:	82010613 	0x82010613
    1c3c:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    1c40:	01010004 	fadd.d	$f4,$f0,$f0
    1c44:	00000262 	0x00000262
    1c48:	01ff0002 	0x01ff0002
    1c4c:	01010000 	fadd.d	$f0,$f0,$f0
    1c50:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
    1c54:	01010101 	fadd.d	$f1,$f8,$f0
    1c58:	01000000 	0x01000000
    1c5c:	44010000 	bnez	$r0,256(0x100) # 1d5c <_start-0x1bffe2a4>
    1c60:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    1c64:	2f737265 	0x2f737265
    1c68:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8ac8 <_RAM_DATA+0x7fff7ac8>
    1c6c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff6098 <_RAM_DATA+0x7fff5098>
    1c70:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 189e4 <_start-0x1bfe761c>
    1c74:	2f73746e 	0x2f73746e
    1c78:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 180e4 <_start-0x1bfe7f1c>
    1c7c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff8bc8 <_RAM_DATA+0x7fff7bc8>
    1c80:	7241676e 	0x7241676e
    1c84:	505f6863 	b	25976680(0x18c5f68) # 18c7bec <_start-0x1a738414>
    1c88:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17ff4 <_start-0x1bfe800c>
    1c8c:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe85fc <_RAM_DATA+0x7ffe75fc>
    1c90:	79535f67 	0x79535f67
    1c94:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18208 <_start-0x1bfe7df8>
    1c98:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    1c9c:	732f3230 	0x732f3230
    1ca0:	732f6372 	0x732f6372
    1ca4:	75702f77 	0x75702f77
    1ca8:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff8614 <_RAM_DATA+0x7fff7614>
    1cac:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 5710 <_start-0x1bffa8f0>
    1cb0:	72657375 	0x72657375
    1cb4:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19410 <_start-0x1bfe6bf0>
    1cb8:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 901c <_start-0x1bff6fe4>
    1cbc:	75636f64 	0x75636f64
    1cc0:	746e656d 	0x746e656d
    1cc4:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff8020 <_RAM_DATA+0x7fff7020>
    1cc8:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 792c <_start-0x1bff86d4>
    1ccc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8b38 <_RAM_DATA+0x7fff7b38>
    1cd0:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8040 <_start-0x1bff7fc0>
    1cd4:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff8f44 <_RAM_DATA+0x7fff7f44>
    1cd8:	73736563 	0x73736563
    1cdc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8448 <_RAM_DATA+0x7fff7448>
    1ce0:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    1ce4:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    1ce8:	32303163 	0x32303163
    1cec:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff8f5c <_RAM_DATA+0x7fff7f5c>
    1cf0:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9460 <_start-0x1bff6ba0>
    1cf4:	6469616c 	bge	$r11,$r12,26976(0x6960) # 8654 <_start-0x1bff79ac>
    1cf8:	75625c65 	0x75625c65
    1cfc:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    1d00:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 896c <_start-0x1bff7694>
    1d04:	3233616c 	0x3233616c
    1d08:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff8c7c <_RAM_DATA+0x7fff7c7c>
    1d0c:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff8968 <_RAM_DATA+0x7fff7968>
    1d10:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 1847c <_start-0x1bfe7b84>
    1d14:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    1d18:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 18b44 <_start-0x1bfe74bc>
    1d1c:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe8688 <_RAM_DATA+0x7ffe7688>
    1d20:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe8984 <_RAM_DATA+0x7ffe7984>
    1d24:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff8b8c <_RAM_DATA+0x7fff7b8c>
    1d28:	6564756c 	bge	$r11,$r12,91252(0x16474) # 1819c <_start-0x1bfe7e64>
    1d2c:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff7e98 <_RAM_DATA+0x7fff6e98>
    1d30:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 18b98 <_start-0x1bfe7468>
    1d34:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 5798 <_start-0x1bffa868>
    1d38:	72657375 	0x72657375
    1d3c:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19498 <_start-0x1bfe6b68>
    1d40:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 90a4 <_start-0x1bff6f5c>
    1d44:	75636f64 	0x75636f64
    1d48:	746e656d 	0x746e656d
    1d4c:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff80a8 <_RAM_DATA+0x7fff70a8>
    1d50:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 79b4 <_start-0x1bff864c>
    1d54:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8bc0 <_RAM_DATA+0x7fff7bc0>
    1d58:	68637261 	bltu	$r19,$r1,25456(0x6370) # 80c8 <_start-0x1bff7f38>
    1d5c:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff8fcc <_RAM_DATA+0x7fff7fcc>
    1d60:	73736563 	0x73736563
    1d64:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff84d0 <_RAM_DATA+0x7fff74d0>
    1d68:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    1d6c:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    1d70:	32303163 	0x32303163
    1d74:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff8fe4 <_RAM_DATA+0x7fff7fe4>
    1d78:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 94e8 <_start-0x1bff6b18>
    1d7c:	6469616c 	bge	$r11,$r12,26976(0x6960) # 86dc <_start-0x1bff7924>
    1d80:	75625c65 	0x75625c65
    1d84:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    1d88:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 89f4 <_start-0x1bff760c>
    1d8c:	3233616c 	0x3233616c
    1d90:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff8d04 <_RAM_DATA+0x7fff7d04>
    1d94:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff89f0 <_RAM_DATA+0x7fff79f0>
    1d98:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18504 <_start-0x1bfe7afc>
    1d9c:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    1da0:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 18bcc <_start-0x1bfe7434>
    1da4:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe8710 <_RAM_DATA+0x7ffe7710>
    1da8:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe8a0c <_RAM_DATA+0x7ffe7a0c>
    1dac:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff8c14 <_RAM_DATA+0x7fff7c14>
    1db0:	6564756c 	bge	$r11,$r12,91252(0x16474) # 18224 <_start-0x1bfe7ddc>
    1db4:	7379732f 	0x7379732f
    1db8:	2f3a4400 	0x2f3a4400
    1dbc:	72657355 	0x72657355
    1dc0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 194ec <_start-0x1bfe6b14>
    1dc4:	2f73676e 	0x2f73676e
    1dc8:	75636f44 	0x75636f44
    1dcc:	746e656d 	0x746e656d
    1dd0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff60fc <_RAM_DATA+0x7fff50fc>
    1dd4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1dd8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8c44 <_RAM_DATA+0x7fff7c44>
    1ddc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 814c <_start-0x1bff7eb4>
    1de0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9030 <_RAM_DATA+0x7fff8030>
    1de4:	73736563 	0x73736563
    1de8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8554 <_RAM_DATA+0x7fff7554>
    1dec:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    1df0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    1df4:	32303143 	0x32303143
    1df8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9068 <_RAM_DATA+0x7fff8068>
    1dfc:	2f77732f 	0x2f77732f
    1e00:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 816c <_start-0x1bff7e94>
    1e04:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    1e08:	31736c00 	0x31736c00
    1e0c:	64775f78 	bge	$r27,$r24,30556(0x775c) # 9568 <_start-0x1bff6a98>
    1e10:	00632e67 	bstrins.w	$r7,$r19,0x3,0xb
    1e14:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff1e14 <_RAM_DATA+0x7fff0e14>
    1e18:	61666564 	blt	$r11,$r4,91748(0x16664) # 1847c <_start-0x1bfe7b84>
    1e1c:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff9288 <_RAM_DATA+0x7fff8288>
    1e20:	65707974 	bge	$r11,$r20,94328(0x17078) # 18e98 <_start-0x1bfe7168>
    1e24:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    1e28:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff1e28 <_RAM_DATA+0x7fff0e28>
    1e2c:	69647473 	bltu	$r3,$r19,91252(0x16474) # 182a0 <_start-0x1bfe7d60>
    1e30:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 4ca4 <_start-0x1bffb35c>
    1e34:	00000300 	0x00000300
    1e38:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    1e3c:	0400682e 	csrwr	$r14,0x1a
    1e40:	736c0000 	0x736c0000
    1e44:	682e7831 	bltu	$r1,$r17,11896(0x2e78) # 4cbc <_start-0x1bffb344>
    1e48:	00000400 	0x00000400
    1e4c:	00010500 	asrtle.d	$r8,$r1
    1e50:	00000205 	0x00000205
    1e54:	05170000 	0x05170000
    1e58:	13051305 	addu16i.d	$r5,$r24,-16060(0xc144)
    1e5c:	05050106 	0x05050106
    1e60:	1705f306 	lu32i.d	$r6,-512104(0x82f98)
    1e64:	1d050106 	pcaddu12i	$r6,-514040(0x82808)
    1e68:	4a23054a 	bcnez	$fcc2,2761476(0x2a2304) # 2a416c <_start-0x1bd5be94>
    1e6c:	054a1205 	0x054a1205
    1e70:	04024b01 	csrxchg	$r1,$r24,0x92
    1e74:	05010100 	0x05010100
    1e78:	02050001 	slti	$r1,$r0,320(0x140)
    1e7c:	1c001948 	pcaddu12i	$r8,202(0xca)
    1e80:	05010b03 	0x05010b03
    1e84:	13051305 	addu16i.d	$r5,$r24,-16060(0xc144)
    1e88:	01050106 	fmul.d	$f6,$f8,$f0
    1e8c:	000402f3 	alsl.w	$r19,$r23,$r0,0x1
    1e90:	01050101 	fmul.d	$f1,$f8,$f0
    1e94:	00020500 	0x00020500
    1e98:	03000000 	lu52i.d	$r0,$r0,0
    1e9c:	05050111 	0x05050111
    1ea0:	06010583 	cacop	0x3,$r12,65(0x41)
    1ea4:	000c02bb 	bytepick.d	$r27,$r21,$r0,0x0
    1ea8:	03e10101 	xori	$r1,$r8,0x840
    1eac:	00020000 	0x00020000
    1eb0:	00000210 	0x00000210
    1eb4:	0efb0101 	0x0efb0101
    1eb8:	0101000d 	fadd.d	$f13,$f0,$f0
    1ebc:	00000101 	0x00000101
    1ec0:	00000100 	0x00000100
    1ec4:	2f3a4401 	0x2f3a4401
    1ec8:	72657355 	0x72657355
    1ecc:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 195f8 <_start-0x1bfe6a08>
    1ed0:	2f73676e 	0x2f73676e
    1ed4:	75636f44 	0x75636f44
    1ed8:	746e656d 	0x746e656d
    1edc:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6208 <_RAM_DATA+0x7fff5208>
    1ee0:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1ee4:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8d50 <_RAM_DATA+0x7fff7d50>
    1ee8:	68637241 	bltu	$r18,$r1,25456(0x6370) # 8258 <_start-0x1bff7da8>
    1eec:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff913c <_RAM_DATA+0x7fff813c>
    1ef0:	73736563 	0x73736563
    1ef4:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8660 <_RAM_DATA+0x7fff7660>
    1ef8:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    1efc:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    1f00:	32303143 	0x32303143
    1f04:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9174 <_RAM_DATA+0x7fff8174>
    1f08:	2f77732f 	0x2f77732f
    1f0c:	76697270 	0x76697270
    1f10:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
    1f14:	755c3a64 	0x755c3a64
    1f18:	73726573 	0x73726573
    1f1c:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe8090 <_RAM_DATA+0x7ffe7090>
    1f20:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 7b90 <_start-0x1bff8470>
    1f24:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19484 <_start-0x1bfe6b7c>
    1f28:	73746e65 	0x73746e65
    1f2c:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 8e8c <_start-0x1bff7174>
    1f30:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff8b8c <_RAM_DATA+0x7fff7b8c>
    1f34:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 186a0 <_start-0x1bfe7960>
    1f38:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff8798 <_RAM_DATA+0x7fff7798>
    1f3c:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff8eac <_RAM_DATA+0x7fff7eac>
    1f40:	69737365 	bltu	$r27,$r5,95088(0x17370) # 192b0 <_start-0x1bfe6d50>
    1f44:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1f48:	65747379 	bge	$r27,$r25,95344(0x17470) # 193b8 <_start-0x1bfe6c48>
    1f4c:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff50a8 <_RAM_DATA+0x7fff40a8>
    1f50:	5c323031 	bne	$r1,$r17,12848(0x3230) # 5180 <_start-0x1bffae80>
    1f54:	5c637273 	bne	$r19,$r19,25456(0x6370) # 82c4 <_start-0x1bff7d3c>
    1f58:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 7bcc <_start-0x1bff8434>
    1f5c:	65646961 	bge	$r11,$r1,91240(0x16468) # 183c4 <_start-0x1bfe7c3c>
    1f60:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 194c0 <_start-0x1bfe6b40>
    1f64:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff93c8 <_RAM_DATA+0x7fff83c8>
    1f68:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7bd4 <_start-0x1bff842c>
    1f6c:	2d323361 	0x2d323361
    1f70:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 8edc <_start-0x1bff7124>
    1f74:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8ee0 <_RAM_DATA+0x7fff7ee0>
    1f78:	7261676e 	0x7261676e
    1f7c:	32336863 	0x32336863
    1f80:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    1f84:	2d62696c 	0x2d62696c
    1f88:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 85f4 <_start-0x1bff7a0c>
    1f8c:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 82f8 <_start-0x1bff7d08>
    1f90:	2f656475 	0x2f656475
    1f94:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 82f4 <_start-0x1bff7d0c>
    1f98:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
    1f9c:	755c3a64 	0x755c3a64
    1fa0:	73726573 	0x73726573
    1fa4:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe8118 <_RAM_DATA+0x7ffe7118>
    1fa8:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 7c18 <_start-0x1bff83e8>
    1fac:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1950c <_start-0x1bfe6af4>
    1fb0:	73746e65 	0x73746e65
    1fb4:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 8f14 <_start-0x1bff70ec>
    1fb8:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff8c14 <_RAM_DATA+0x7fff7c14>
    1fbc:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18728 <_start-0x1bfe78d8>
    1fc0:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff8820 <_RAM_DATA+0x7fff7820>
    1fc4:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff8f34 <_RAM_DATA+0x7fff7f34>
    1fc8:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19338 <_start-0x1bfe6cc8>
    1fcc:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1fd0:	65747379 	bge	$r27,$r25,95344(0x17470) # 19440 <_start-0x1bfe6bc0>
    1fd4:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff5130 <_RAM_DATA+0x7fff4130>
    1fd8:	5c323031 	bne	$r1,$r17,12848(0x3230) # 5208 <_start-0x1bffadf8>
    1fdc:	5c637273 	bne	$r19,$r19,25456(0x6370) # 834c <_start-0x1bff7cb4>
    1fe0:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 7c54 <_start-0x1bff83ac>
    1fe4:	65646961 	bge	$r11,$r1,91240(0x16468) # 1844c <_start-0x1bfe7bb4>
    1fe8:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 19548 <_start-0x1bfe6ab8>
    1fec:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff9450 <_RAM_DATA+0x7fff8450>
    1ff0:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7c5c <_start-0x1bff83a4>
    1ff4:	2d323361 	0x2d323361
    1ff8:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 8f64 <_start-0x1bff709c>
    1ffc:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8f68 <_RAM_DATA+0x7fff7f68>
    2000:	7261676e 	0x7261676e
    2004:	32336863 	0x32336863
    2008:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    200c:	2d62696c 	0x2d62696c
    2010:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 867c <_start-0x1bff7984>
    2014:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 8380 <_start-0x1bff7c80>
    2018:	2f656475 	0x2f656475
    201c:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    2020:	552f3a44 	bl	-116314312(0x9112f38) # f9114f58 <_RAM_DATA+0x79113f58>
    2024:	73726573 	0x73726573
    2028:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe819c <_RAM_DATA+0x7ffe719c>
    202c:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c4f9c <_start-0x1be3b064>
    2030:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19590 <_start-0x1bfe6a70>
    2034:	73746e65 	0x73746e65
    2038:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 8f78 <_start-0x1bff7088>
    203c:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff6c68 <_RAM_DATA+0x7fff5c68>
    2040:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d87ac <_start-0x1bc27854>
    2044:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff88a4 <_RAM_DATA+0x7fff78a4>
    2048:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff8fb8 <_RAM_DATA+0x7fff7fb8>
    204c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 193bc <_start-0x1bfe6c44>
    2050:	535f676e 	b	-38051996(0xdbb5f64) # fdbb7fb4 <_RAM_DATA+0x7dbb6fb4>
    2054:	65747379 	bge	$r27,$r25,95344(0x17470) # 194c4 <_start-0x1bfe6b3c>
    2058:	43312f6d 	beqz	$r27,3617068(0x37312c) # 375184 <_start-0x1bc8ae7c>
    205c:	2f323031 	0x2f323031
    2060:	2f637273 	0x2f637273
    2064:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 14fd8 <_start-0x1bfeb028>
    2068:	756c636e 	0x756c636e
    206c:	00006564 	rdtimeh.w	$r4,$r11
    2070:	6331736c 	blt	$r27,$r12,-52880(0x33170) # ffff51e0 <_RAM_DATA+0x7fff41e0>
    2074:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff52a4 <_RAM_DATA+0x7fff42a4>
    2078:	6d697470 	bgeu	$r3,$r16,92532(0x16974) # 189ec <_start-0x1bfe7614>
    207c:	632e7265 	blt	$r19,$r5,-53648(0x32e70) # ffff4eec <_RAM_DATA+0x7fff3eec>
    2080:	00000100 	0x00000100
    2084:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe85e8 <_RAM_DATA+0x7ffe75e8>
    2088:	746c7561 	0x746c7561
    208c:	7079745f 	0x7079745f
    2090:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 4f00 <_start-0x1bffb100>
    2094:	00000200 	0x00000200
    2098:	6474735f 	bge	$r26,$r31,29808(0x7470) # 9508 <_start-0x1bff6af8>
    209c:	2e746e69 	0x2e746e69
    20a0:	00030068 	0x00030068
    20a4:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
    20a8:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    20ac:	6c000004 	bgeu	$r0,$r4,0 # 20ac <_start-0x1bffdf54>
    20b0:	31633173 	0x31633173
    20b4:	705f3230 	0x705f3230
    20b8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 18e20 <_start-0x1bfe71e0>
    20bc:	00682e72 	bstrins.w	$r18,$r19,0x8,0xb
    20c0:	00000001 	0x00000001
    20c4:	05000105 	0x05000105
    20c8:	00000002 	0x00000002
    20cc:	010d0300 	fmaxa.d	$f0,$f24,$f0
    20d0:	05130505 	0x05130505
    20d4:	0501060e 	0x0501060e
    20d8:	05830605 	0x05830605
    20dc:	0501060e 	0x0501060e
    20e0:	05830605 	0x05830605
    20e4:	0501061d 	0x0501061d
    20e8:	05054a0e 	0x05054a0e
    20ec:	1d058306 	pcaddu12i	$r6,-513000(0x82c18)
    20f0:	0e050106 	0x0e050106
    20f4:	0605054a 	cacop	0xa,$r10,321(0x141)
    20f8:	1705f383 	lu32i.d	$r3,-512100(0x82f9c)
    20fc:	08050106 	0x08050106
    2100:	0606054a 	cacop	0xa,$r10,385(0x181)
    2104:	0805054c 	0x0805054c
    2108:	053d083e 	0x053d083e
    210c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    2110:	01010004 	fadd.d	$f4,$f0,$f0
    2114:	05000105 	0x05000105
    2118:	00000002 	0x00000002
    211c:	01220300 	0x01220300
    2120:	05140205 	0x05140205
    2124:	0501061d 	0x0501061d
    2128:	05bb0602 	0x05bb0602
    212c:	0501061d 	0x0501061d
    2130:	05830602 	0x05830602
    2134:	0501061d 	0x0501061d
    2138:	05830602 	0x05830602
    213c:	05010620 	0x05010620
    2140:	05830602 	0x05830602
    2144:	0501061b 	0x0501061b
    2148:	05bb0602 	0x05bb0602
    214c:	0501061b 	0x0501061b
    2150:	05bb0602 	0x05bb0602
    2154:	0501061b 	0x0501061b
    2158:	04024b01 	csrxchg	$r1,$r24,0x92
    215c:	05010100 	0x05010100
    2160:	02050001 	slti	$r1,$r0,320(0x140)
    2164:	00000000 	0x00000000
    2168:	05013603 	0x05013603
    216c:	07051304 	0x07051304
    2170:	06050106 	cacop	0x6,$r8,320(0x140)
    2174:	10054d06 	addu16i.d	$r6,$r8,339(0x153)
    2178:	06050106 	cacop	0x6,$r8,320(0x140)
    217c:	05410806 	0x05410806
    2180:	05010610 	0x05010610
    2184:	0402f401 	csrrd	$r1,0xbd
    2188:	05010100 	0x05010100
    218c:	02050001 	slti	$r1,$r0,320(0x140)
    2190:	00000000 	0x00000000
    2194:	0100c403 	fadd.s	$f3,$f0,$f17
    2198:	05130405 	0x05130405
    219c:	05010607 	0x05010607
    21a0:	054d0606 	0x054d0606
    21a4:	05010610 	0x05010610
    21a8:	08f30606 	0x08f30606
    21ac:	06100579 	cacop	0x19,$r11,1025(0x401)
    21b0:	06060501 	cacop	0x1,$r8,385(0x181)
    21b4:	060105f3 	cacop	0x13,$r15,65(0x41)
    21b8:	000402f4 	alsl.w	$r20,$r23,$r0,0x1
    21bc:	01050101 	fmul.d	$f1,$f8,$f0
    21c0:	00020500 	0x00020500
    21c4:	03000000 	lu52i.d	$r0,$r0,0
    21c8:	050100da 	0x050100da
    21cc:	05051302 	0x05051302
    21d0:	060a0514 	cacop	0x14,$r8,641(0x281)
    21d4:	06020501 	cacop	0x1,$r8,129(0x81)
    21d8:	060105bc 	cacop	0x1c,$r13,65(0x41)
    21dc:	00040213 	alsl.w	$r19,$r16,$r0,0x1
    21e0:	01050101 	fmul.d	$f1,$f8,$f0
    21e4:	00020500 	0x00020500
    21e8:	03000000 	lu52i.d	$r0,$r0,0
    21ec:	050100ea 	0x050100ea
    21f0:	0d051403 	0x0d051403
    21f4:	01050106 	fmul.d	$f6,$f8,$f0
    21f8:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
    21fc:	01050101 	fmul.d	$f1,$f8,$f0
    2200:	00020500 	0x00020500
    2204:	03000000 	lu52i.d	$r0,$r0,0
    2208:	050100f8 	0x050100f8
    220c:	0e051404 	0x0e051404
    2210:	01050106 	fmul.d	$f6,$f8,$f0
    2214:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
    2218:	01050101 	fmul.d	$f1,$f8,$f0
    221c:	00020500 	0x00020500
    2220:	03000000 	lu52i.d	$r0,$r0,0
    2224:	05010185 	0x05010185
    2228:	05051302 	0x05051302
    222c:	060a0514 	cacop	0x14,$r8,641(0x281)
    2230:	06020501 	cacop	0x1,$r8,129(0x81)
    2234:	060105bc 	cacop	0x1c,$r13,65(0x41)
    2238:	00040214 	alsl.w	$r20,$r16,$r0,0x1
    223c:	01050101 	fmul.d	$f1,$f8,$f0
    2240:	5c020500 	bne	$r8,$r0,516(0x204) # 2444 <_start-0x1bffdbbc>
    2244:	031c0019 	lu52i.d	$r25,$r0,1792(0x700)
    2248:	05010199 	0x05010199
    224c:	05131303 	0x05131303
    2250:	05010608 	0x05010608
    2254:	06058212 	cacop	0x12,$r16,352(0x160)
    2258:	4c0f054a 	jirl	$r10,$r10,3844(0xf04)
    225c:	50060305 	b	-65796608(0xc140600) # fc14285c <_RAM_DATA+0x7c14185c>
    2260:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    2264:	01000402 	0x01000402
    2268:	00010501 	0x00010501
    226c:	19740205 	pcaddi	$r5,-286704(0xba010)
    2270:	ae031c00 	0xae031c00
    2274:	04050101 	csrxchg	$r1,$r8,0x140
    2278:	060e0514 	cacop	0x14,$r8,897(0x381)
    227c:	0405ba01 	csrxchg	$r1,$r16,0x16e
    2280:	0c054b06 	0x0c054b06
    2284:	01050106 	fmul.d	$f6,$f8,$f0
    2288:	04027508 	csrxchg	$r8,$r8,0x9d
    228c:	ff010100 	0xff010100
    2290:	0200000b 	slti	$r11,$r0,0
    2294:	0002a300 	0x0002a300
    2298:	fb010100 	0xfb010100
    229c:	01000d0e 	0x01000d0e
    22a0:	00010101 	0x00010101
    22a4:	00010000 	asrtle.d	$r0,$r0
    22a8:	3a440100 	0x3a440100
    22ac:	6573552f 	bge	$r9,$r15,95060(0x17354) # 19600 <_start-0x1bfe6a00>
    22b0:	772f7372 	0x772f7372
    22b4:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    22b8:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff91fc <_RAM_DATA+0x7fff81fc>
    22bc:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8828 <_RAM_DATA+0x7ffe7828>
    22c0:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd35230 <_RAM_DATA+0x7fd34230>
    22c4:	2f65646f 	0x2f65646f
    22c8:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe9234 <_RAM_DATA+0x7ffe8234>
    22cc:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff950c <_RAM_DATA+0x7fff850c>
    22d0:	72505f68 	0x72505f68
    22d4:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    22d8:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9140 <_RAM_DATA+0x7fff8140>
    22dc:	7379535f 	0x7379535f
    22e0:	2f6d6574 	0x2f6d6574
    22e4:	30314331 	0x30314331
    22e8:	72732f32 	0x72732f32
    22ec:	77732f63 	0x77732f63
    22f0:	6573752f 	bge	$r9,$r15,95092(0x17374) # 19664 <_start-0x1bfe699c>
    22f4:	3a640072 	0x3a640072
    22f8:	6573755c 	bge	$r10,$r28,95092(0x17374) # 1966c <_start-0x1bfe6994>
    22fc:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
    2300:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    2304:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffff9268 <_RAM_DATA+0x7fff8268>
    2308:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8874 <_RAM_DATA+0x7ffe7874>
    230c:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff7f7c <_RAM_DATA+0x7fff6f7c>
    2310:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 8874 <_start-0x1bff778c>
    2314:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe9280 <_RAM_DATA+0x7ffe8280>
    2318:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff9578 <_RAM_DATA+0x7fff8578>
    231c:	72705f68 	0x72705f68
    2320:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    2324:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff918c <_RAM_DATA+0x7fff818c>
    2328:	7379735f 	0x7379735f
    232c:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 9090 <_start-0x1bff6f70>
    2330:	30316331 	0x30316331
    2334:	72735c32 	0x72735c32
    2338:	77735c63 	0x77735c63
    233c:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 184a8 <_start-0x1bfe7b58>
    2340:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe7fa4 <_RAM_DATA+0x7ffe6fa4>
    2344:	646c6975 	bge	$r11,$r21,27752(0x6c68) # 8fac <_start-0x1bff7054>
    2348:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 92b4 <_start-0x1bff6d4c>
    234c:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
    2350:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffff977c <_RAM_DATA+0x7fff877c>
    2354:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7fc0 <_start-0x1bff8040>
    2358:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff91c4 <_RAM_DATA+0x7fff81c4>
    235c:	68637261 	bltu	$r19,$r1,25456(0x6370) # 86cc <_start-0x1bff7934>
    2360:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe5090 <_RAM_DATA+0x7ffe4090>
    2364:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 18fd8 <_start-0x1bfe7028>
    2368:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 8894 <_start-0x1bff776c>
    236c:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe8cc8 <_RAM_DATA+0x7ffe7cc8>
    2370:	64756c63 	bge	$r3,$r3,30060(0x756c) # 98dc <_start-0x1bff6724>
    2374:	616d2f65 	blt	$r27,$r5,93484(0x16d2c) # 190a0 <_start-0x1bfe6f60>
    2378:	6e696863 	bgeu	$r3,$r3,-104088(0x26968) # fffe8ce0 <_RAM_DATA+0x7ffe7ce0>
    237c:	3a640065 	0x3a640065
    2380:	6573755c 	bge	$r10,$r28,95092(0x17374) # 196f4 <_start-0x1bfe690c>
    2384:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
    2388:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    238c:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffff92f0 <_RAM_DATA+0x7fff82f0>
    2390:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe88fc <_RAM_DATA+0x7ffe78fc>
    2394:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff8004 <_RAM_DATA+0x7fff7004>
    2398:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 88fc <_start-0x1bff7704>
    239c:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe9308 <_RAM_DATA+0x7ffe8308>
    23a0:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff9600 <_RAM_DATA+0x7fff8600>
    23a4:	72705f68 	0x72705f68
    23a8:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    23ac:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9214 <_RAM_DATA+0x7fff8214>
    23b0:	7379735f 	0x7379735f
    23b4:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 9118 <_start-0x1bff6ee8>
    23b8:	30316331 	0x30316331
    23bc:	72735c32 	0x72735c32
    23c0:	77735c63 	0x77735c63
    23c4:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 18530 <_start-0x1bfe7ad0>
    23c8:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe802c <_RAM_DATA+0x7ffe702c>
    23cc:	646c6975 	bge	$r11,$r21,27752(0x6c68) # 9034 <_start-0x1bff6fcc>
    23d0:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 933c <_start-0x1bff6cc4>
    23d4:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
    23d8:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffff9804 <_RAM_DATA+0x7fff8804>
    23dc:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 8048 <_start-0x1bff7fb8>
    23e0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff924c <_RAM_DATA+0x7fff824c>
    23e4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8754 <_start-0x1bff78ac>
    23e8:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe5118 <_RAM_DATA+0x7ffe4118>
    23ec:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 19060 <_start-0x1bfe6fa0>
    23f0:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 891c <_start-0x1bff76e4>
    23f4:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe8d50 <_RAM_DATA+0x7ffe7d50>
    23f8:	64756c63 	bge	$r3,$r3,30060(0x756c) # 9964 <_start-0x1bff669c>
    23fc:	79732f65 	0x79732f65
    2400:	3a440073 	0x3a440073
    2404:	6573552f 	bge	$r9,$r15,95060(0x17354) # 19758 <_start-0x1bfe68a8>
    2408:	772f7372 	0x772f7372
    240c:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    2410:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff9354 <_RAM_DATA+0x7fff8354>
    2414:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8980 <_RAM_DATA+0x7ffe7980>
    2418:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd35388 <_RAM_DATA+0x7fd34388>
    241c:	2f65646f 	0x2f65646f
    2420:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe938c <_RAM_DATA+0x7ffe838c>
    2424:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff9664 <_RAM_DATA+0x7fff8664>
    2428:	72505f68 	0x72505f68
    242c:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    2430:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9298 <_RAM_DATA+0x7fff8298>
    2434:	7379535f 	0x7379535f
    2438:	2f6d6574 	0x2f6d6574
    243c:	30314331 	0x30314331
    2440:	72732f32 	0x72732f32
    2444:	77732f63 	0x77732f63
    2448:	636e692f 	blt	$r9,$r15,-37272(0x36e68) # ffff92b0 <_RAM_DATA+0x7fff82b0>
    244c:	6564756c 	bge	$r11,$r12,91252(0x16474) # 188c0 <_start-0x1bfe7740>
    2450:	2f3a4400 	0x2f3a4400
    2454:	72657355 	0x72657355
    2458:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19b84 <_start-0x1bfe647c>
    245c:	2f73676e 	0x2f73676e
    2460:	75636f44 	0x75636f44
    2464:	746e656d 	0x746e656d
    2468:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6794 <_RAM_DATA+0x7fff5794>
    246c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    2470:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff92dc <_RAM_DATA+0x7fff82dc>
    2474:	68637241 	bltu	$r18,$r1,25456(0x6370) # 87e4 <_start-0x1bff781c>
    2478:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff96c8 <_RAM_DATA+0x7fff86c8>
    247c:	73736563 	0x73736563
    2480:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8bec <_RAM_DATA+0x7fff7bec>
    2484:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2488:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    248c:	32303143 	0x32303143
    2490:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9700 <_RAM_DATA+0x7fff8700>
    2494:	2f77732f 	0x2f77732f
    2498:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 870c <_start-0x1bff78f4>
    249c:	00006369 	rdtimel.w	$r9,$r27
    24a0:	6e69616d 	bgeu	$r11,$r13,-104096(0x26960) # fffe8e00 <_RAM_DATA+0x7ffe7e00>
    24a4:	0100632e 	0x0100632e
    24a8:	645f0000 	bge	$r0,$r0,24320(0x5f00) # 83a8 <_start-0x1bff7c58>
    24ac:	75616665 	0x75616665
    24b0:	745f746c 	0x745f746c
    24b4:	73657079 	vssrani.wu.d	$vr25,$vr3,0x1c
    24b8:	0200682e 	slti	$r14,$r1,26(0x1a)
    24bc:	735f0000 	vsrarni.d.q	$vr0,$vr0,0x40
    24c0:	6e696474 	bgeu	$r3,$r20,-104092(0x26964) # fffe8e24 <_RAM_DATA+0x7ffe7e24>
    24c4:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    24c8:	74000003 	xvseq.b	$xr3,$xr0,$xr0
    24cc:	2e747365 	0x2e747365
    24d0:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    24d4:	31633100 	0x31633100
    24d8:	495f3230 	0x495f3230
    24dc:	7265746e 	0x7265746e
    24e0:	74707572 	xvmax.b	$xr18,$xr11,$xr29
    24e4:	0100682e 	0x0100682e
    24e8:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffff97e8 <_RAM_DATA+0x7fff87e8>
    24ec:	61755f63 	blt	$r27,$r3,95580(0x1755c) # 19a48 <_start-0x1bfe65b8>
    24f0:	682e7472 	bltu	$r3,$r18,11892(0x2e74) # 5364 <_start-0x1bffac9c>
    24f4:	00000500 	0x00000500
    24f8:	7831736c 	0x7831736c
    24fc:	6d6f635f 	bgeu	$r26,$r31,94048(0x16f60) # 1945c <_start-0x1bfe6ba4>
    2500:	2e6e6f6d 	0x2e6e6f6d
    2504:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    2508:	636f7300 	blt	$r24,$r0,-37008(0x36f70) # ffff9478 <_RAM_DATA+0x7fff8478>
    250c:	6972705f 	bltu	$r2,$r31,94832(0x17270) # 1977c <_start-0x1bfe6884>
    2510:	2e66746e 	0x2e66746e
    2514:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    2518:	31736c00 	0x31736c00
    251c:	72705f78 	0x72705f78
    2520:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe998c <_RAM_DATA+0x7ffe898c>
    2524:	0500682e 	0x0500682e
    2528:	736c0000 	0x736c0000
    252c:	735f7831 	vsrarni.d.q	$vr17,$vr1,0x5e
    2530:	6e697274 	bgeu	$r19,$r20,-104080(0x26970) # fffe8ea0 <_RAM_DATA+0x7ffe7ea0>
    2534:	00682e67 	bstrins.w	$r7,$r19,0x8,0xb
    2538:	00000005 	0x00000005
    253c:	05000105 	0x05000105
    2540:	00000002 	0x00000002
    2544:	00d50300 	bstrpick.d	$r0,$r24,0x15,0x0
    2548:	01061301 	0x01061301
    254c:	01000402 	0x01000402
    2550:	00010501 	0x00010501
    2554:	00000205 	0x00000205
    2558:	d9030000 	0xd9030000
    255c:	01060100 	0x01060100
    2560:	f3060205 	0xf3060205
    2564:	04051313 	csrxchg	$r19,$r24,0x144
    2568:	06f21d03 	0x06f21d03
    256c:	054b0682 	0x054b0682
    2570:	01051402 	fmul.d	$f2,$f0,$f5
    2574:	05051306 	0x05051306
    2578:	08630306 	fmsub.d	$f6,$f24,$f0,$f6
    257c:	06820674 	0x06820674
    2580:	060a054b 	cacop	0xb,$r10,641(0x281)
    2584:	000d0501 	bytepick.d	$r1,$r8,$r1,0x2
    2588:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a268c <_start-0x1bf5d974>
    258c:	02000505 	slti	$r5,$r8,1(0x1)
    2590:	ac080104 	0xac080104
    2594:	02000605 	slti	$r5,$r16,1(0x1)
    2598:	4c060304 	jirl	$r4,$r24,1536(0x600)
    259c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    25a0:	3105f206 	0x3105f206
    25a4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    25a8:	05053a08 	0x05053a08
    25ac:	07058a06 	0x07058a06
    25b0:	05050106 	0x05050106
    25b4:	0a054b06 	0x0a054b06
    25b8:	0e050106 	0x0e050106
    25bc:	01040200 	0x01040200
    25c0:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    25c4:	08010402 	0x08010402
    25c8:	060605ac 	cacop	0xc,$r13,385(0x181)
    25cc:	0609054c 	cacop	0xc,$r10,577(0x241)
    25d0:	08080501 	0x08080501
    25d4:	00320574 	0x00320574
    25d8:	48020402 	bceqz	$fcc0,524804(0x80204) # 827dc <_start-0x1bf7d824>
    25dc:	02040200 	slti	$r0,$r16,256(0x100)
    25e0:	0607054a 	cacop	0xa,$r10,449(0x1c1)
    25e4:	1324024e 	addu16i.d	$r14,$r18,-14080(0xc900)
    25e8:	05150505 	0x05150505
    25ec:	ba010608 	0xba010608
    25f0:	05f20705 	0x05f20705
    25f4:	024c0606 	sltui	$r6,$r16,769(0x301)
    25f8:	01010010 	fadd.d	$f16,$f0,$f0
    25fc:	05000105 	0x05000105
    2600:	00000002 	0x00000002
    2604:	01800300 	0x01800300
    2608:	08020501 	0x08020501
    260c:	131313e5 	addu16i.d	$r5,$r31,-15164(0xc4c4)
    2610:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2614:	05131313 	0x05131313
    2618:	05010607 	0x05010607
    261c:	04054a02 	csrxchg	$r2,$r16,0x152
    2620:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2624:	16054e06 	lu32i.d	$r6,10864(0x2a70)
    2628:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    262c:	13050106 	addu16i.d	$r6,$r8,-16064(0xc140)
    2630:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2634:	02007208 	slti	$r8,$r16,28(0x1c)
    2638:	054a0304 	0x054a0304
    263c:	04020003 	csrrd	$r3,0x80
    2640:	10054a01 	addu16i.d	$r1,$r16,338(0x152)
    2644:	02040200 	slti	$r0,$r16,256(0x100)
    2648:	04020080 	csrxchg	$r0,$r4,0x80
    264c:	02054a02 	slti	$r2,$r16,338(0x152)
    2650:	01040200 	0x01040200
    2654:	8408054a 	0x8408054a
    2658:	057e0605 	0x057e0605
    265c:	07054908 	0x07054908
    2660:	8200e803 	0x8200e803
    2664:	4a4b0905 	bcnez	$fcc0,1461000(0x164b08) # 16716c <_start-0x1be98e94>
    2668:	02000405 	slti	$r5,$r0,1(0x1)
    266c:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2670:	054a7fa7 	0x054a7fa7
    2674:	04020011 	csrrd	$r17,0x80
    2678:	05010603 	0x05010603
    267c:	04020013 	csrrd	$r19,0x80
    2680:	0200b803 	slti	$r3,$r0,46(0x2e)
    2684:	054a0304 	0x054a0304
    2688:	04020003 	csrrd	$r3,0x80
    268c:	86064a01 	0x86064a01
    2690:	060513bb 	cacop	0x1b,$r29,324(0x144)
    2694:	4a820106 	bcnez	$fcc0,1737216(0x1a8200) # 1aa894 <_start-0x1be5576c>
    2698:	07054a4a 	0x07054a4a
    269c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    26a0:	4a0a0306 	0x4a0a0306
    26a4:	02002505 	slti	$r5,$r8,9(0x9)
    26a8:	01060304 	0x01060304
    26ac:	02002705 	slti	$r5,$r24,9(0x9)
    26b0:	054a0304 	0x054a0304
    26b4:	04020022 	csrwr	$r2,0x80
    26b8:	17054a03 	lu32i.d	$r3,-513456(0x82a50)
    26bc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    26c0:	001605ba 	orn	$r26,$r13,$r1
    26c4:	80030402 	0x80030402
    26c8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    26cc:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    26d0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a27d4 <_start-0x1bf5d82c>
    26d4:	12054e06 	addu16i.d	$r6,$r16,-32429(0x8153)
    26d8:	16050106 	lu32i.d	$r6,10248(0x2808)
    26dc:	0606054a 	cacop	0xa,$r10,385(0x181)
    26e0:	060805bb 	cacop	0x1b,$r13,513(0x201)
    26e4:	06054a01 	cacop	0x1,$r16,338(0x152)
    26e8:	0b054b06 	0x0b054b06
    26ec:	06050106 	cacop	0x6,$r8,320(0x140)
    26f0:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    26f4:	06030402 	cacop	0x2,$r0,193(0xc1)
    26f8:	0402004c 	csrxchg	$r12,$r2,0x80
    26fc:	05820603 	0x05820603
    2700:	04020016 	csrrd	$r22,0x80
    2704:	0200b803 	slti	$r3,$r0,46(0x2e)
    2708:	054a0304 	0x054a0304
    270c:	04020006 	csrrd	$r6,0x80
    2710:	0b054a01 	0x0b054a01
    2714:	07054a4e 	0x07054a4e
    2718:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    271c:	02004c06 	slti	$r6,$r0,19(0x13)
    2720:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2724:	83030402 	0x83030402
    2728:	02001805 	slti	$r5,$r0,6(0x6)
    272c:	7e060304 	0x7e060304
    2730:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2734:	0013054a 	maskeqz	$r10,$r10,$r1
    2738:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a283c <_start-0x1bf5d7c4>
    273c:	02000605 	slti	$r5,$r16,1(0x1)
    2740:	054a0104 	0x054a0104
    2744:	054a500b 	0x054a500b
    2748:	04020007 	csrrd	$r7,0x80
    274c:	054c0603 	0x054c0603
    2750:	0402001e 	csrrd	$r30,0x80
    2754:	00800603 	bstrins.d	$r3,$r16,0x0,0x1
    2758:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2a5c <_start-0x1bf5d5a4>
    275c:	02001805 	slti	$r5,$r0,6(0x6)
    2760:	004a0104 	0x004a0104
    2764:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2868 <_start-0x1bf5d798>
    2768:	01040200 	0x01040200
    276c:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2770:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2874 <_start-0x1bf5d78c>
    2774:	054e0b05 	0x054e0b05
    2778:	04020006 	csrrd	$r6,0x80
    277c:	07054a01 	0x07054a01
    2780:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2784:	15054c06 	lu12i.w	$r6,-513440(0x82a60)
    2788:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    278c:	02008006 	slti	$r6,$r0,32(0x20)
    2790:	004a0304 	0x004a0304
    2794:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2a98 <_start-0x1bf5d568>
    2798:	51060605 	b	-132839932(0x8150604) # f8152d9c <_RAM_DATA+0x78151d9c>
    279c:	01061205 	0x01061205
    27a0:	05821605 	0x05821605
    27a4:	05bb0606 	0x05bb0606
    27a8:	05490612 	0x05490612
    27ac:	5e030603 	bne	$r16,$r3,-130300(0x20304) # fffe2ab0 <_RAM_DATA+0x7ffe1ab0>
    27b0:	1404054a 	lu12i.w	$r10,8234(0x202a)
    27b4:	01060805 	0x01060805
    27b8:	054a0605 	0x054a0605
    27bc:	054b0604 	0x054b0604
    27c0:	0501060f 	0x0501060f
    27c4:	05058206 	0x05058206
    27c8:	07058406 	0x07058406
    27cc:	0b050106 	0x0b050106
    27d0:	0609054c 	cacop	0xc,$r10,577(0x241)
    27d4:	05821f03 	0x05821f03
    27d8:	0501060b 	0x0501060b
    27dc:	27030609 	stptr.d	$r9,$r16,772(0x304)
    27e0:	060b0582 	cacop	0x2,$r12,705(0x2c1)
    27e4:	00150501 	or	$r1,$r8,$r1
    27e8:	82010402 	0x82010402
    27ec:	03060905 	lu52i.d	$r5,$r8,386(0x182)
    27f0:	0b058212 	0x0b058212
    27f4:	05050106 	0x05050106
    27f8:	09058406 	0x09058406
    27fc:	05050106 	0x05050106
    2800:	07054b06 	0x07054b06
    2804:	06050106 	cacop	0x6,$r8,320(0x140)
    2808:	0a058406 	0x0a058406
    280c:	06050106 	cacop	0x6,$r8,320(0x140)
    2810:	0a054b06 	0x0a054b06
    2814:	0c05af08 	0x0c05af08
    2818:	0d050106 	0x0d050106
    281c:	05054a50 	0x05054a50
    2820:	7fba0306 	0x7fba0306
    2824:	0607054a 	cacop	0xa,$r10,449(0x1c1)
    2828:	00170501 	sll.w	$r1,$r8,$r1
    282c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2930 <_start-0x1bf5d6d0>
    2830:	02001105 	slti	$r5,$r8,4(0x4)
    2834:	05820104 	0x05820104
    2838:	1c030606 	pcaddu12i	$r6,6192(0x1830)
    283c:	0608054a 	cacop	0xa,$r10,513(0x201)
    2840:	00130501 	maskeqz	$r1,$r8,$r1
    2844:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2948 <_start-0x1bf5d6b8>
    2848:	4c060705 	jirl	$r5,$r24,1540(0x604)
    284c:	01061105 	0x01061105
    2850:	4a4a1705 	0x4a4a1705
    2854:	bb060705 	0xbb060705
    2858:	02008383 	slti	$r3,$r28,32(0x20)
    285c:	63030304 	blt	$r24,$r4,-64768(0x30300) # ffff2b5c <_RAM_DATA+0x7fff1b5c>
    2860:	001605ba 	orn	$r26,$r13,$r1
    2864:	06030402 	cacop	0x2,$r0,193(0xc1)
    2868:	02003a08 	slti	$r8,$r16,14(0xe)
    286c:	054a0304 	0x054a0304
    2870:	04020006 	csrrd	$r6,0x80
    2874:	0b054a01 	0x0b054a01
    2878:	05464a4e 	0x05464a4e
    287c:	04020007 	csrrd	$r7,0x80
    2880:	00880603 	bstrins.d	$r3,$r16,0x8,0x1
    2884:	83030402 	0x83030402
    2888:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    288c:	00160583 	orn	$r3,$r12,$r1
    2890:	06030402 	cacop	0x2,$r0,193(0xc1)
    2894:	0402007e 	csrxchg	$r30,$r3,0x80
    2898:	06054a03 	cacop	0x3,$r16,338(0x152)
    289c:	01040200 	0x01040200
    28a0:	500b054a 	b	86510340(0x5280b04) # 52833a4 <_start-0x16d7cc5c>
    28a4:	02000705 	slti	$r5,$r24,1(0x1)
    28a8:	84060304 	0x84060304
    28ac:	02002705 	slti	$r5,$r24,9(0x9)
    28b0:	01060304 	0x01060304
    28b4:	02001505 	slti	$r5,$r8,5(0x5)
    28b8:	054a0304 	0x054a0304
    28bc:	04020024 	csrwr	$r4,0x80
    28c0:	19054a03 	pcaddi	$r3,-513456(0x82a50)
    28c4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    28c8:	001605ba 	orn	$r26,$r13,$r1
    28cc:	b8030402 	0xb8030402
    28d0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    28d4:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    28d8:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a29dc <_start-0x1bf5d624>
    28dc:	10054e06 	addu16i.d	$r6,$r16,339(0x153)
    28e0:	16050106 	lu32i.d	$r6,10248(0x2808)
    28e4:	054a4a4a 	0x054a4a4a
    28e8:	05830606 	0x05830606
    28ec:	0501060b 	0x0501060b
    28f0:	07054a06 	0x07054a06
    28f4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    28f8:	1e054c06 	pcaddu18i	$r6,10848(0x2a60)
    28fc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2900:	02008006 	slti	$r6,$r0,32(0x20)
    2904:	054a0304 	0x054a0304
    2908:	04020018 	csrrd	$r24,0x80
    290c:	06054a01 	cacop	0x1,$r16,338(0x152)
    2910:	01040200 	0x01040200
    2914:	4e0b05ba 	jirl	$r26,$r13,-128252(0x20b04)
    2918:	02000605 	slti	$r5,$r16,1(0x1)
    291c:	054a0104 	0x054a0104
    2920:	04020007 	csrrd	$r7,0x80
    2924:	054c0603 	0x054c0603
    2928:	04020015 	csrrd	$r21,0x80
    292c:	00800603 	bstrins.d	$r3,$r16,0x0,0x1
    2930:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2c34 <_start-0x1bf5d3cc>
    2934:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2938:	0605054a 	cacop	0xa,$r10,321(0x141)
    293c:	054a1203 	0x054a1203
    2940:	05010611 	0x05010611
    2944:	0a054a07 	0x0a054a07
    2948:	00060550 	alsl.wu	$r16,$r10,$r1,0x1
    294c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2950:	00190584 	srl.d	$r4,$r12,$r1
    2954:	06030402 	cacop	0x2,$r0,193(0xc1)
    2958:	001b0501 	rotr.w	$r1,$r8,$r1
    295c:	b8030402 	0xb8030402
    2960:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2964:	0016054a 	orn	$r10,$r10,$r1
    2968:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2a6c <_start-0x1bf5d594>
    296c:	02000505 	slti	$r5,$r8,1(0x1)
    2970:	05ba0104 	0x05ba0104
    2974:	01820309 	0x01820309
    2978:	0306054a 	lu52i.d	$r10,$r10,385(0x181)
    297c:	05827f8e 	0x05827f8e
    2980:	0c03060a 	0x0c03060a
    2984:	060c0582 	cacop	0x2,$r12,769(0x301)
    2988:	060b0501 	cacop	0x1,$r8,705(0x2c1)
    298c:	060d054c 	cacop	0xc,$r10,833(0x341)
    2990:	060c0501 	cacop	0x1,$r8,769(0x301)
    2994:	060f0588 	cacop	0x8,$r12,961(0x3c1)
    2998:	060b0501 	cacop	0x1,$r8,705(0x2c1)
    299c:	4a70034b 	0x4a70034b
    29a0:	4b064a06 	0x4b064a06
    29a4:	01060c05 	0x01060c05
    29a8:	02004a4a 	slti	$r10,$r18,18(0x12)
    29ac:	03060204 	lu52i.d	$r4,$r16,384(0x180)
    29b0:	1a054a11 	pcalau12i	$r17,10832(0x2a50)
    29b4:	02040200 	slti	$r0,$r16,256(0x100)
    29b8:	003a0806 	0x003a0806
    29bc:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2bc0 <_start-0x1bf5d440>
    29c0:	02000b05 	slti	$r5,$r24,2(0x2)
    29c4:	064a0104 	0x064a0104
    29c8:	0618054e 	cacop	0xe,$r10,1537(0x601)
    29cc:	4a0d0501 	bcnez	$fcc0,396548(0x60d04) # 636d0 <_start-0x1bf9c930>
    29d0:	02002105 	slti	$r5,$r8,8(0x8)
    29d4:	054a0104 	0x054a0104
    29d8:	4a0c0311 	0x4a0c0311
    29dc:	000d054a 	bytepick.d	$r10,$r10,$r1,0x2
    29e0:	06030402 	cacop	0x2,$r0,193(0xc1)
    29e4:	004a7803 	0x004a7803
    29e8:	83030402 	0x83030402
    29ec:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    29f0:	04020083 	csrxchg	$r3,$r4,0x80
    29f4:	1a058303 	pcalau12i	$r3,11288(0x2c18)
    29f8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    29fc:	22050106 	ll.d	$r6,$r8,1280(0x500)
    2a00:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a04:	040200b5 	csrxchg	$r21,$r5,0x80
    2a08:	1d054a03 	pcaddu12i	$r3,-513456(0x82a50)
    2a0c:	01040200 	0x01040200
    2a10:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    2a14:	ba010402 	0xba010402
    2a18:	02001105 	slti	$r5,$r8,4(0x4)
    2a1c:	0a030104 	0x0a030104
    2a20:	0402004a 	csrxchg	$r10,$r2,0x80
    2a24:	02004a01 	slti	$r1,$r16,18(0x12)
    2a28:	004a0104 	0x004a0104
    2a2c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2b30 <_start-0x1bf5d4d0>
    2a30:	02000d05 	slti	$r5,$r8,3(0x3)
    2a34:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2a38:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a3c:	04020083 	csrxchg	$r3,$r4,0x80
    2a40:	2b058303 	fld.s	$f3,$r24,352(0x160)
    2a44:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a48:	02007e06 	slti	$r6,$r16,31(0x1f)
    2a4c:	054a0304 	0x054a0304
    2a50:	04020026 	csrwr	$r6,0x80
    2a54:	0c054a01 	0x0c054a01
    2a58:	01040200 	0x01040200
    2a5c:	02007408 	slti	$r8,$r0,29(0x1d)
    2a60:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2a64:	19058209 	pcaddi	$r9,-513008(0x82c10)
    2a68:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a6c:	0c050106 	0x0c050106
    2a70:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a74:	2805bb06 	ld.b	$r6,$r24,366(0x16e)
    2a78:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a7c:	02007f06 	slti	$r6,$r24,31(0x1f)
    2a80:	054a0304 	0x054a0304
    2a84:	04020023 	csrwr	$r3,0x80
    2a88:	0b054a01 	0x0b054a01
    2a8c:	01040200 	0x01040200
    2a90:	0f057408 	0x0f057408
    2a94:	824a6803 	0x824a6803
    2a98:	03060a05 	lu52i.d	$r5,$r16,386(0x182)
    2a9c:	0c054a21 	0x0c054a21
    2aa0:	0d050106 	0x0d050106
    2aa4:	0b054a50 	0x0b054a50
    2aa8:	f2064606 	0xf2064606
    2aac:	0c054b06 	0x0c054b06
    2ab0:	4a4a0106 	bcnez	$fcc0,1722880(0x1a4a00) # 1a74b0 <_start-0x1be58b50>
    2ab4:	50060a05 	b	-132905464(0x8140608) # f81430bc <_RAM_DATA+0x781420bc>
    2ab8:	01060c05 	0x01060c05
    2abc:	84060b05 	0x84060b05
    2ac0:	01060d05 	0x01060d05
    2ac4:	50060c05 	b	1312268(0x14060c) # 1430d0 <_start-0x1bebcf30>
    2ac8:	01060f05 	0x01060f05
    2acc:	4b060b05 	0x4b060b05
    2ad0:	02000c05 	slti	$r5,$r0,3(0x3)
    2ad4:	054c0204 	0x054c0204
    2ad8:	0402001a 	csrrd	$r26,0x80
    2adc:	3a080602 	0x3a080602
    2ae0:	02040200 	slti	$r0,$r16,256(0x100)
    2ae4:	000b054a 	0x000b054a
    2ae8:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2bec <_start-0x1bf5d414>
    2aec:	18054e06 	pcaddi	$r6,10864(0x2a70)
    2af0:	0d050106 	0x0d050106
    2af4:	0021054a 	div.wu	$r10,$r10,$r1
    2af8:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2bfc <_start-0x1bf5d404>
    2afc:	0c031105 	0x0c031105
    2b00:	0e054a4a 	0x0e054a4a
    2b04:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b08:	4a780306 	0x4a780306
    2b0c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b10:	04020083 	csrxchg	$r3,$r4,0x80
    2b14:	02008303 	slti	$r3,$r24,32(0x20)
    2b18:	05830304 	0x05830304
    2b1c:	0402001b 	csrrd	$r27,0x80
    2b20:	05010603 	0x05010603
    2b24:	04020022 	csrwr	$r2,0x80
    2b28:	0200b503 	slti	$r3,$r8,45(0x2d)
    2b2c:	054a0304 	0x054a0304
    2b30:	0402001d 	csrrd	$r29,0x80
    2b34:	0c054a01 	0x0c054a01
    2b38:	01040200 	0x01040200
    2b3c:	001105ba 	sub.w	$r26,$r13,$r1
    2b40:	03010402 	lu52i.d	$r2,$r0,65(0x41)
    2b44:	02004a0a 	slti	$r10,$r16,18(0x12)
    2b48:	004a0104 	0x004a0104
    2b4c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2c50 <_start-0x1bf5d3b0>
    2b50:	01040200 	0x01040200
    2b54:	000d054a 	bytepick.d	$r10,$r10,$r1,0x2
    2b58:	06030402 	cacop	0x2,$r0,193(0xc1)
    2b5c:	0402004c 	csrxchg	$r12,$r2,0x80
    2b60:	02008303 	slti	$r3,$r24,32(0x20)
    2b64:	05830304 	0x05830304
    2b68:	0402002b 	csrwr	$r11,0x80
    2b6c:	007e0603 	bstrins.w	$r3,$r16,0x1e,0x1
    2b70:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2e74 <_start-0x1bf5d18c>
    2b74:	02002605 	slti	$r5,$r16,9(0x9)
    2b78:	054a0104 	0x054a0104
    2b7c:	0402000c 	csrrd	$r12,0x80
    2b80:	00740801 	bstrins.w	$r1,$r0,0x14,0x2
    2b84:	06030402 	cacop	0x2,$r0,193(0xc1)
    2b88:	05820903 	0x05820903
    2b8c:	04020019 	csrrd	$r25,0x80
    2b90:	05010603 	0x05010603
    2b94:	0402000c 	csrrd	$r12,0x80
    2b98:	05bb0603 	0x05bb0603
    2b9c:	04020028 	csrwr	$r8,0x80
    2ba0:	007f0603 	bstrins.w	$r3,$r16,0x1f,0x1
    2ba4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2ea8 <_start-0x1bf5d158>
    2ba8:	02002305 	slti	$r5,$r24,8(0x8)
    2bac:	054a0104 	0x054a0104
    2bb0:	0402000b 	csrrd	$r11,0x80
    2bb4:	05740801 	0x05740801
    2bb8:	4a68030f 	0x4a68030f
    2bbc:	00060582 	alsl.wu	$r2,$r12,$r1,0x1
    2bc0:	06030402 	cacop	0x2,$r0,193(0xc1)
    2bc4:	054a2f03 	0x054a2f03
    2bc8:	04020025 	csrwr	$r5,0x80
    2bcc:	05010603 	0x05010603
    2bd0:	04020028 	csrwr	$r8,0x80
    2bd4:	17054a03 	lu32i.d	$r3,-513456(0x82a50)
    2bd8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2bdc:	13057408 	addu16i.d	$r8,$r0,-16035(0xc15d)
    2be0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2be4:	040200f1 	csrxchg	$r17,$r7,0x80
    2be8:	05054a03 	0x05054a03
    2bec:	01040200 	0x01040200
    2bf0:	0012054a 	slt	$r10,$r10,$r1
    2bf4:	80020402 	0x80020402
    2bf8:	02040200 	slti	$r0,$r16,256(0x100)
    2bfc:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    2c00:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2d04 <_start-0x1bf5d2fc>
    2c04:	05840a05 	0x05840a05
    2c08:	05058509 	0x05058509
    2c0c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c10:	18058406 	pcaddi	$r6,11296(0x2c20)
    2c14:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c18:	14050106 	lu12i.w	$r6,10248(0x2808)
    2c1c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c20:	040200b8 	csrxchg	$r24,$r5,0x80
    2c24:	04054a03 	csrxchg	$r3,$r16,0x152
    2c28:	01040200 	0x01040200
    2c2c:	0603054a 	cacop	0xa,$r10,193(0xc1)
    2c30:	06050589 	cacop	0x9,$r12,321(0x141)
    2c34:	50090501 	b	67373316(0x4040904) # 4043538 <_start-0x17fbcac8>
    2c38:	02000605 	slti	$r5,$r16,1(0x1)
    2c3c:	84060304 	0x84060304
    2c40:	02001405 	slti	$r5,$r0,5(0x5)
    2c44:	01060304 	0x01060304
    2c48:	02001505 	slti	$r5,$r8,5(0x5)
    2c4c:	73080304 	0x73080304
    2c50:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c54:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    2c58:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2d5c <_start-0x1bf5d2a4>
    2c5c:	02001305 	slti	$r5,$r24,4(0x4)
    2c60:	00810204 	bstrins.d	$r4,$r16,0x1,0x0
    2c64:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2e68 <_start-0x1bf5d198>
    2c68:	02000405 	slti	$r5,$r0,1(0x1)
    2c6c:	054a0104 	0x054a0104
    2c70:	0805830a 	0x0805830a
    2c74:	4d0a0584 	jirl	$r4,$r12,68100(0x10a04)
    2c78:	054a0f05 	0x054a0f05
    2c7c:	7e8f030a 	0x7e8f030a
    2c80:	06054a4a 	cacop	0xa,$r18,338(0x152)
    2c84:	01f50306 	0x01f50306
    2c88:	0615054a 	cacop	0xa,$r10,1345(0x541)
    2c8c:	4a130501 	bcnez	$fcc0,398084(0x61304) # 63f90 <_start-0x1bf9c070>
    2c90:	05ba0805 	0x05ba0805
    2c94:	04020022 	csrwr	$r2,0x80
    2c98:	07058201 	0x07058201
    2c9c:	05134c06 	0x05134c06
    2ca0:	4a01060a 	0x4a01060a
    2ca4:	4b060705 	0x4b060705
    2ca8:	01060e05 	0x01060e05
    2cac:	b809054a 	0xb809054a
    2cb0:	02001a05 	slti	$r5,$r16,6(0x6)
    2cb4:	7a030204 	0x7a030204
    2cb8:	0402004a 	csrxchg	$r10,$r2,0x80
    2cbc:	04054a02 	csrxchg	$r2,$r16,0x152
    2cc0:	01040200 	0x01040200
    2cc4:	0605054a 	cacop	0xa,$r10,321(0x141)
    2cc8:	0611054c 	cacop	0xc,$r10,1089(0x441)
    2ccc:	ba070501 	0xba070501
    2cd0:	03060605 	lu52i.d	$r5,$r16,385(0x181)
    2cd4:	0f05820b 	0x0f05820b
    2cd8:	14050106 	lu12i.w	$r6,10248(0x2808)
    2cdc:	0606054a 	cacop	0xa,$r10,385(0x181)
    2ce0:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    2ce4:	054a4a01 	0x054a4a01
    2ce8:	134e0604 	addu16i.d	$r4,$r16,-11391(0xd381)
    2cec:	01060705 	0x01060705
    2cf0:	06058282 	cacop	0x2,$r20,352(0x160)
    2cf4:	500a054a 	b	86510084(0x5280a04) # 52836f8 <_start-0x16d7c908>
    2cf8:	02000e05 	slti	$r5,$r16,3(0x3)
    2cfc:	054a0104 	0x054a0104
    2d00:	04020005 	csrrd	$r5,0x80
    2d04:	05e40801 	0x05e40801
    2d08:	054c0606 	0x054c0606
    2d0c:	08010609 	0x08010609
    2d10:	4a08053c 	bcnez	$fcc1,-915452(0x720804) # fff23514 <_RAM_DATA+0x7ff22514>
    2d14:	02003205 	slti	$r5,$r16,12(0xc)
    2d18:	00480204 	0x00480204
    2d1c:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2f20 <_start-0x1bf5d0e0>
    2d20:	02040200 	slti	$r0,$r16,256(0x100)
    2d24:	0607054a 	cacop	0xa,$r10,449(0x1c1)
    2d28:	060a054e 	cacop	0xe,$r10,641(0x281)
    2d2c:	06070501 	cacop	0x1,$r8,449(0x1c1)
    2d30:	060c05f3 	cacop	0x13,$r15,769(0x301)
    2d34:	4a070501 	bcnez	$fcc0,395012(0x60704) # 63438 <_start-0x1bf9cbc8>
    2d38:	02000805 	slti	$r5,$r0,2(0x2)
    2d3c:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2d40:	02001705 	slti	$r5,$r24,5(0x5)
    2d44:	01060304 	0x01060304
    2d48:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d4c:	000d05ba 	bytepick.d	$r26,$r13,$r1,0x2
    2d50:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3054 <_start-0x1bf5cfac>
    2d54:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d58:	0019054a 	srl.d	$r10,$r10,$r1
    2d5c:	80030402 	0x80030402
    2d60:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d64:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2d68:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2e6c <_start-0x1bf5d194>
    2d6c:	05bb4f06 	0x05bb4f06
    2d70:	08051505 	0x08051505
    2d74:	07050106 	0x07050106
    2d78:	0905ac08 	0x0905ac08
    2d7c:	4a7ebe03 	0x4a7ebe03
    2d80:	05490705 	0x05490705
    2d84:	a3030602 	0xa3030602
    2d88:	03054a7f 	lu52i.d	$r31,$r19,338(0x152)
    2d8c:	06080515 	cacop	0x15,$r8,513(0x201)
    2d90:	4a030501 	bcnez	$fcc0,393988(0x60304) # 63094 <_start-0x1bf9cf6c>
    2d94:	03060605 	lu52i.d	$r5,$r16,385(0x181)
    2d98:	054a029f 	0x054a029f
    2d9c:	bc030609 	0xbc030609
    2da0:	0705ba7e 	0x0705ba7e
    2da4:	06020549 	cacop	0x9,$r10,129(0x81)
    2da8:	8201ca03 	0x8201ca03
    2dac:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    2db0:	4a4a4aba 	0x4a4a4aba
    2db4:	0402824a 	csrxchg	$r10,$r18,0xa0
    2db8:	05010100 	0x05010100
    2dbc:	02050010 	slti	$r16,$r0,320(0x140)
    2dc0:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
    2dc4:	0103d103 	0x0103d103
    2dc8:	05830205 	0x05830205
    2dcc:	05010606 	0x05010606
    2dd0:	05bc0605 	0x05bc0605
    2dd4:	11054c02 	addu16i.d	$r2,$r0,16723(0x4153)
    2dd8:	05050106 	0x05050106
    2ddc:	0101f306 	0x0101f306
    2de0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2de4:	040200ba 	csrxchg	$r26,$r5,0x80
    2de8:	3c080601 	0x3c080601
    2dec:	01040200 	0x01040200
    2df0:	bb4c064a 	0xbb4c064a
    2df4:	02000101 	slti	$r1,$r8,0
    2df8:	00ba0304 	bstrins.d	$r4,$r24,0x3a,0x0
    2dfc:	06010402 	cacop	0x2,$r0,65(0x41)
    2e00:	02003c08 	slti	$r8,$r0,15(0xf)
    2e04:	064a0104 	0x064a0104
    2e08:	0205134c 	slti	$r12,$r26,324(0x144)
    2e0c:	01013d08 	fadd.d	$f8,$f8,$f15
    2e10:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e14:	040200ba 	csrxchg	$r26,$r5,0x80
    2e18:	3c080601 	0x3c080601
    2e1c:	01040200 	0x01040200
    2e20:	0605054a 	cacop	0xa,$r10,321(0x141)
    2e24:	134a1a03 	addu16i.d	$r3,$r16,-11642(0xd286)
    2e28:	01f30205 	0x01f30205
    2e2c:	04020001 	csrrd	$r1,0x80
    2e30:	0200ba03 	slti	$r3,$r16,46(0x2e)
    2e34:	08060104 	0x08060104
    2e38:	0402003c 	csrwr	$r28,0x80
    2e3c:	4c064a01 	jirl	$r1,$r16,1608(0x648)
    2e40:	01060f05 	0x01060f05
    2e44:	83060505 	0x83060505
    2e48:	000101f3 	0x000101f3
    2e4c:	ba030402 	0xba030402
    2e50:	01040200 	0x01040200
    2e54:	003c0806 	0x003c0806
    2e58:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2f5c <_start-0x1bf5d0a4>
    2e5c:	4c060205 	jirl	$r5,$r16,1536(0x600)
    2e60:	02000505 	slti	$r5,$r8,1(0x1)
    2e64:	004c0104 	0x004c0104
    2e68:	13010402 	addu16i.d	$r2,$r0,-16319(0xc041)
    2e6c:	01000402 	0x01000402
    2e70:	00010501 	0x00010501
    2e74:	1ae00205 	pcalau12i	$r5,458768(0x70010)
    2e78:	89031c00 	0x89031c00
    2e7c:	02050104 	slti	$r4,$r8,320(0x140)
    2e80:	06060583 	cacop	0x3,$r12,385(0x181)
    2e84:	06020501 	cacop	0x1,$r8,129(0x81)
    2e88:	060105f3 	cacop	0x13,$r15,65(0x41)
    2e8c:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    2e90:	08df0101 	fnmsub.s	$f1,$f8,$f0,$f30
    2e94:	00020000 	0x00020000
    2e98:	00000312 	0x00000312
    2e9c:	0efb0101 	0x0efb0101
    2ea0:	0101000d 	fadd.d	$f13,$f0,$f0
    2ea4:	00000101 	0x00000101
    2ea8:	00000100 	0x00000100
    2eac:	2f3a4401 	0x2f3a4401
    2eb0:	72657355 	0x72657355
    2eb4:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1a5e0 <_start-0x1bfe5a20>
    2eb8:	2f73676e 	0x2f73676e
    2ebc:	75636f44 	0x75636f44
    2ec0:	746e656d 	0x746e656d
    2ec4:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff71f0 <_RAM_DATA+0x7fff61f0>
    2ec8:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    2ecc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9d38 <_RAM_DATA+0x7fff8d38>
    2ed0:	68637241 	bltu	$r18,$r1,25456(0x6370) # 9240 <_start-0x1bff6dc0>
    2ed4:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa124 <_RAM_DATA+0x7fff9124>
    2ed8:	73736563 	0x73736563
    2edc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9648 <_RAM_DATA+0x7fff8648>
    2ee0:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2ee4:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    2ee8:	32303143 	0x32303143
    2eec:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa15c <_RAM_DATA+0x7fff915c>
    2ef0:	2f77732f 	0x2f77732f
    2ef4:	72657375 	0x72657375
    2ef8:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 695c <_start-0x1bff96a4>
    2efc:	72657375 	0x72657375
    2f00:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1a65c <_start-0x1bfe59a4>
    2f04:	5c73676e 	bne	$r27,$r14,29540(0x7364) # a268 <_start-0x1bff5d98>
    2f08:	75636f64 	0x75636f64
    2f0c:	746e656d 	0x746e656d
    2f10:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff926c <_RAM_DATA+0x7fff826c>
    2f14:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 8b78 <_start-0x1bff7488>
    2f18:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9d84 <_RAM_DATA+0x7fff8d84>
    2f1c:	68637261 	bltu	$r19,$r1,25456(0x6370) # 928c <_start-0x1bff6d74>
    2f20:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffffa190 <_RAM_DATA+0x7fff9190>
    2f24:	73736563 	0x73736563
    2f28:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9694 <_RAM_DATA+0x7fff8694>
    2f2c:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    2f30:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    2f34:	32303163 	0x32303163
    2f38:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffffa1a8 <_RAM_DATA+0x7fff91a8>
    2f3c:	5c77735c 	bne	$r26,$r28,30576(0x7770) # a6ac <_start-0x1bff5954>
    2f40:	6469616c 	bge	$r11,$r12,26976(0x6960) # 98a0 <_start-0x1bff6760>
    2f44:	75625c65 	0x75625c65
    2f48:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    2f4c:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 9bb8 <_start-0x1bff6448>
    2f50:	3233616c 	0x3233616c
    2f54:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff9ec8 <_RAM_DATA+0x7fff8ec8>
    2f58:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff9bb4 <_RAM_DATA+0x7fff8bb4>
    2f5c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 196c8 <_start-0x1bfe6938>
    2f60:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    2f64:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 19d90 <_start-0x1bfe6270>
    2f68:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe98d4 <_RAM_DATA+0x7ffe88d4>
    2f6c:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe9bd0 <_RAM_DATA+0x7ffe8bd0>
    2f70:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff9dd8 <_RAM_DATA+0x7fff8dd8>
    2f74:	6564756c 	bge	$r11,$r12,91252(0x16474) # 193e8 <_start-0x1bfe6c18>
    2f78:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff90e4 <_RAM_DATA+0x7fff80e4>
    2f7c:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 19de4 <_start-0x1bfe621c>
    2f80:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 69e4 <_start-0x1bff961c>
    2f84:	72657375 	0x72657375
    2f88:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1a6e4 <_start-0x1bfe591c>
    2f8c:	5c73676e 	bne	$r27,$r14,29540(0x7364) # a2f0 <_start-0x1bff5d10>
    2f90:	75636f64 	0x75636f64
    2f94:	746e656d 	0x746e656d
    2f98:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff92f4 <_RAM_DATA+0x7fff82f4>
    2f9c:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 8c00 <_start-0x1bff7400>
    2fa0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9e0c <_RAM_DATA+0x7fff8e0c>
    2fa4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 9314 <_start-0x1bff6cec>
    2fa8:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffffa218 <_RAM_DATA+0x7fff9218>
    2fac:	73736563 	0x73736563
    2fb0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff971c <_RAM_DATA+0x7fff871c>
    2fb4:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    2fb8:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    2fbc:	32303163 	0x32303163
    2fc0:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffffa230 <_RAM_DATA+0x7fff9230>
    2fc4:	5c77735c 	bne	$r26,$r28,30576(0x7770) # a734 <_start-0x1bff58cc>
    2fc8:	6469616c 	bge	$r11,$r12,26976(0x6960) # 9928 <_start-0x1bff66d8>
    2fcc:	75625c65 	0x75625c65
    2fd0:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    2fd4:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 9c40 <_start-0x1bff63c0>
    2fd8:	3233616c 	0x3233616c
    2fdc:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff9f50 <_RAM_DATA+0x7fff8f50>
    2fe0:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff9c3c <_RAM_DATA+0x7fff8c3c>
    2fe4:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 19750 <_start-0x1bfe68b0>
    2fe8:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    2fec:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 19e18 <_start-0x1bfe61e8>
    2ff0:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe995c <_RAM_DATA+0x7ffe895c>
    2ff4:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe9c58 <_RAM_DATA+0x7ffe8c58>
    2ff8:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff9e60 <_RAM_DATA+0x7fff8e60>
    2ffc:	6564756c 	bge	$r11,$r12,91252(0x16474) # 19470 <_start-0x1bfe6b90>
    3000:	7379732f 	0x7379732f
    3004:	2f3a4400 	0x2f3a4400
    3008:	72657355 	0x72657355
    300c:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1a738 <_start-0x1bfe58c8>
    3010:	2f73676e 	0x2f73676e
    3014:	75636f44 	0x75636f44
    3018:	746e656d 	0x746e656d
    301c:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff7348 <_RAM_DATA+0x7fff6348>
    3020:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    3024:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9e90 <_RAM_DATA+0x7fff8e90>
    3028:	68637241 	bltu	$r18,$r1,25456(0x6370) # 9398 <_start-0x1bff6c68>
    302c:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa27c <_RAM_DATA+0x7fff927c>
    3030:	73736563 	0x73736563
    3034:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff97a0 <_RAM_DATA+0x7fff87a0>
    3038:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    303c:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    3040:	32303143 	0x32303143
    3044:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa2b4 <_RAM_DATA+0x7fff92b4>
    3048:	2f77732f 	0x2f77732f
    304c:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 93b8 <_start-0x1bff6c48>
    3050:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    3054:	552f3a44 	bl	-116314312(0x9112f38) # f9115f8c <_RAM_DATA+0x79114f8c>
    3058:	73726573 	0x73726573
    305c:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe91d0 <_RAM_DATA+0x7ffe81d0>
    3060:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c5fd0 <_start-0x1be3a030>
    3064:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1a5c4 <_start-0x1bfe5a3c>
    3068:	73746e65 	0x73746e65
    306c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 9fac <_start-0x1bff6054>
    3070:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff7c9c <_RAM_DATA+0x7fff6c9c>
    3074:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d97e0 <_start-0x1bc26820>
    3078:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff98d8 <_RAM_DATA+0x7fff88d8>
    307c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff9fec <_RAM_DATA+0x7fff8fec>
    3080:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1a3f0 <_start-0x1bfe5c10>
    3084:	535f676e 	b	-38051996(0xdbb5f64) # fdbb8fe8 <_RAM_DATA+0x7dbb7fe8>
    3088:	65747379 	bge	$r27,$r25,95344(0x17470) # 1a4f8 <_start-0x1bfe5b08>
    308c:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3761b8 <_start-0x1bc89e48>
    3090:	2f323031 	0x2f323031
    3094:	2f637273 	0x2f637273
    3098:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
    309c:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 19cfc <_start-0x1bfe6304>
    30a0:	3a440063 	0x3a440063
    30a4:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1a3f8 <_start-0x1bfe5c08>
    30a8:	772f7372 	0x772f7372
    30ac:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    30b0:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff9ff4 <_RAM_DATA+0x7fff8ff4>
    30b4:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9620 <_RAM_DATA+0x7ffe8620>
    30b8:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd36028 <_RAM_DATA+0x7fd35028>
    30bc:	2f65646f 	0x2f65646f
    30c0:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffea02c <_RAM_DATA+0x7ffe902c>
    30c4:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffffa304 <_RAM_DATA+0x7fff9304>
    30c8:	72505f68 	0x72505f68
    30cc:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    30d0:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9f38 <_RAM_DATA+0x7fff8f38>
    30d4:	7379535f 	0x7379535f
    30d8:	2f6d6574 	0x2f6d6574
    30dc:	30314331 	0x30314331
    30e0:	72732f32 	0x72732f32
    30e4:	77732f63 	0x77732f63
    30e8:	6972702f 	bltu	$r1,$r15,94832(0x17270) # 1a358 <_start-0x1bfe5ca8>
    30ec:	65746176 	bge	$r11,$r22,95328(0x17460) # 1a54c <_start-0x1bfe5ab4>
    30f0:	63310000 	blt	$r0,$r0,-52992(0x33100) # ffff61f0 <_RAM_DATA+0x7fff51f0>
    30f4:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff6324 <_RAM_DATA+0x7fff5324>
    30f8:	65746e49 	bge	$r18,$r9,95340(0x1746c) # 1a564 <_start-0x1bfe5a9c>
    30fc:	70757272 	vmax.wu	$vr18,$vr19,$vr28
    3100:	00632e74 	bstrins.w	$r20,$r19,0x3,0xb
    3104:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff3104 <_RAM_DATA+0x7fff2104>
    3108:	61666564 	blt	$r11,$r4,91748(0x16664) # 1976c <_start-0x1bfe6894>
    310c:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffffa578 <_RAM_DATA+0x7fff9578>
    3110:	65707974 	bge	$r11,$r20,94328(0x17078) # 1a188 <_start-0x1bfe5e78>
    3114:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    3118:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff3118 <_RAM_DATA+0x7fff2118>
    311c:	69647473 	bltu	$r3,$r19,91252(0x16474) # 19590 <_start-0x1bfe6a70>
    3120:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 5f94 <_start-0x1bffa06c>
    3124:	00000300 	0x00000300
    3128:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    312c:	0400682e 	csrwr	$r14,0x1a
    3130:	736c0000 	0x736c0000
    3134:	682e7831 	bltu	$r1,$r17,11896(0x2e78) # 5fac <_start-0x1bffa054>
    3138:	00000400 	0x00000400
    313c:	30316331 	0x30316331
    3140:	6e495f32 	bgeu	$r25,$r18,-112292(0x2495c) # fffe7a9c <_RAM_DATA+0x7ffe6a9c>
    3144:	72726574 	0x72726574
    3148:	2e747075 	0x2e747075
    314c:	00010068 	0x00010068
    3150:	31736c00 	0x31736c00
    3154:	6f635f78 	bgeu	$r27,$r24,-40100(0x3635c) # ffff94b0 <_RAM_DATA+0x7fff84b0>
    3158:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffea0c4 <_RAM_DATA+0x7ffe90c4>
    315c:	0500682e 	0x0500682e
    3160:	6f430000 	bgeu	$r0,$r0,-48384(0x34300) # ffff7460 <_RAM_DATA+0x7fff6460>
    3164:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffff9ac8 <_RAM_DATA+0x7fff8ac8>
    3168:	0400682e 	csrwr	$r14,0x1a
    316c:	736c0000 	0x736c0000
    3170:	30316331 	0x30316331
    3174:	74705f32 	xvmax.b	$xr18,$xr25,$xr23
    3178:	72656d69 	0x72656d69
    317c:	0600682e 	cacop	0xe,$r1,26(0x1a)
    3180:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffffa480 <_RAM_DATA+0x7fff9480>
    3184:	70675f63 	vavg.wu	$vr3,$vr27,$vr23
    3188:	682e6f69 	bltu	$r27,$r9,11884(0x2e6c) # 5ff4 <_start-0x1bffa00c>
    318c:	00000500 	0x00000500
    3190:	7831736c 	0x7831736c
    3194:	6764775f 	bge	$r26,$r31,-39820(0x36474) # ffff9608 <_RAM_DATA+0x7fff8608>
    3198:	0500682e 	0x0500682e
    319c:	736c0000 	0x736c0000
    31a0:	655f7831 	bge	$r1,$r17,89976(0x15f78) # 19118 <_start-0x1bfe6ee8>
    31a4:	2e697478 	0x2e697478
    31a8:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    31ac:	01050000 	fmul.d	$f0,$f0,$f0
    31b0:	08020500 	0x08020500
    31b4:	151c001b 	lu12i.w	$r27,-466944(0x8e000)
    31b8:	08830205 	0x08830205
    31bc:	06010575 	cacop	0x15,$r11,65(0x41)
    31c0:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    31c4:	01050101 	fmul.d	$f1,$f8,$f0
    31c8:	44020500 	bnez	$r8,516(0x204) # 33cc <_start-0x1bffcc34>
    31cc:	1a1c001b 	pcalau12i	$r27,57344(0xe000)
    31d0:	08830205 	0x08830205
    31d4:	06010575 	cacop	0x15,$r11,65(0x41)
    31d8:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    31dc:	01050101 	fmul.d	$f1,$f8,$f0
    31e0:	80020500 	0x80020500
    31e4:	031c001b 	lu52i.d	$r27,$r0,1792(0x700)
    31e8:	0205010d 	slti	$r13,$r8,320(0x140)
    31ec:	05750883 	0x05750883
    31f0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    31f4:	0101000c 	fadd.d	$f12,$f0,$f0
    31f8:	05000105 	0x05000105
    31fc:	001bbc02 	rotr.d	$r2,$r0,$r15
    3200:	0112031c 	0x0112031c
    3204:	08830205 	0x08830205
    3208:	06010575 	cacop	0x15,$r11,65(0x41)
    320c:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3210:	01050101 	fmul.d	$f1,$f8,$f0
    3214:	f8020500 	0xf8020500
    3218:	031c001b 	lu52i.d	$r27,$r0,1792(0x700)
    321c:	02050117 	slti	$r23,$r8,320(0x140)
    3220:	05750883 	0x05750883
    3224:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3228:	0101000c 	fadd.d	$f12,$f0,$f0
    322c:	05000105 	0x05000105
    3230:	001c3402 	mul.w	$r2,$r0,$r13
    3234:	011c031c 	0x011c031c
    3238:	08830205 	0x08830205
    323c:	06010575 	cacop	0x15,$r11,65(0x41)
    3240:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3244:	01050101 	fmul.d	$f1,$f8,$f0
    3248:	70020500 	vsle.b	$vr0,$vr8,$vr1
    324c:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
    3250:	02050121 	slti	$r1,$r9,320(0x140)
    3254:	05750883 	0x05750883
    3258:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    325c:	0101000c 	fadd.d	$f12,$f0,$f0
    3260:	05000105 	0x05000105
    3264:	001cac02 	mulh.w	$r2,$r0,$r11
    3268:	0126031c 	0x0126031c
    326c:	08840205 	0x08840205
    3270:	06010575 	cacop	0x15,$r11,65(0x41)
    3274:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3278:	01050101 	fmul.d	$f1,$f8,$f0
    327c:	e8020500 	0xe8020500
    3280:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
    3284:	0205012c 	slti	$r12,$r9,320(0x140)
    3288:	05750883 	0x05750883
    328c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3290:	0101000c 	fadd.d	$f12,$f0,$f0
    3294:	05000105 	0x05000105
    3298:	001d2402 	mulh.wu	$r2,$r0,$r9
    329c:	0131031c 	0x0131031c
    32a0:	08840205 	0x08840205
    32a4:	06010575 	cacop	0x15,$r11,65(0x41)
    32a8:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    32ac:	01050101 	fmul.d	$f1,$f8,$f0
    32b0:	60020500 	blt	$r8,$r0,516(0x204) # 34b4 <_start-0x1bffcb4c>
    32b4:	031c001d 	lu52i.d	$r29,$r0,1792(0x700)
    32b8:	02050137 	slti	$r23,$r9,320(0x140)
    32bc:	05750884 	0x05750884
    32c0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    32c4:	0101000c 	fadd.d	$f12,$f0,$f0
    32c8:	05000105 	0x05000105
    32cc:	001d9c02 	mul.d	$r2,$r0,$r7
    32d0:	013d031c 	0x013d031c
    32d4:	08840205 	0x08840205
    32d8:	06010575 	cacop	0x15,$r11,65(0x41)
    32dc:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    32e0:	01050101 	fmul.d	$f1,$f8,$f0
    32e4:	d8020500 	0xd8020500
    32e8:	031c001d 	lu52i.d	$r29,$r0,1792(0x700)
    32ec:	050100c3 	0x050100c3
    32f0:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    32f4:	f3060105 	0xf3060105
    32f8:	01000c02 	0x01000c02
    32fc:	00010501 	0x00010501
    3300:	1e140205 	pcaddu18i	$r5,40976(0xa010)
    3304:	c8031c00 	0xc8031c00
    3308:	02050100 	slti	$r0,$r8,320(0x140)
    330c:	05750883 	0x05750883
    3310:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3314:	0101000c 	fadd.d	$f12,$f0,$f0
    3318:	05000105 	0x05000105
    331c:	001e5002 	mulh.d	$r2,$r0,$r20
    3320:	00cd031c 	bstrpick.d	$r28,$r24,0xd,0x0
    3324:	84020501 	0x84020501
    3328:	01057508 	fmul.d	$f8,$f8,$f29
    332c:	0c02f306 	0x0c02f306
    3330:	05010100 	0x05010100
    3334:	02050001 	slti	$r1,$r0,320(0x140)
    3338:	1c001e8c 	pcaddu12i	$r12,244(0xf4)
    333c:	0100d303 	fadd.s	$f3,$f24,$f20
    3340:	08840205 	0x08840205
    3344:	06010575 	cacop	0x15,$r11,65(0x41)
    3348:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    334c:	01050101 	fmul.d	$f1,$f8,$f0
    3350:	c8020500 	0xc8020500
    3354:	031c001e 	lu52i.d	$r30,$r0,1792(0x700)
    3358:	050100da 	0x050100da
    335c:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3360:	f3060105 	0xf3060105
    3364:	01000c02 	0x01000c02
    3368:	00010501 	0x00010501
    336c:	1f040205 	pcaddu18i	$r5,-516080(0x82010)
    3370:	e0031c00 	0xe0031c00
    3374:	02050100 	slti	$r0,$r8,320(0x140)
    3378:	05750884 	0x05750884
    337c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3380:	0101000c 	fadd.d	$f12,$f0,$f0
    3384:	05000105 	0x05000105
    3388:	001f4002 	mulw.d.w	$r2,$r0,$r16
    338c:	00e6031c 	bstrpick.d	$r28,$r24,0x26,0x0
    3390:	84020501 	0x84020501
    3394:	01057508 	fmul.d	$f8,$f8,$f29
    3398:	0c02f306 	0x0c02f306
    339c:	05010100 	0x05010100
    33a0:	02050001 	slti	$r1,$r0,320(0x140)
    33a4:	1c001f7c 	pcaddu12i	$r28,251(0xfb)
    33a8:	0100ec03 	fadd.s	$f3,$f0,$f27
    33ac:	08840205 	0x08840205
    33b0:	06010575 	cacop	0x15,$r11,65(0x41)
    33b4:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    33b8:	01050101 	fmul.d	$f1,$f8,$f0
    33bc:	b8020500 	0xb8020500
    33c0:	031c001f 	lu52i.d	$r31,$r0,1792(0x700)
    33c4:	050100f2 	0x050100f2
    33c8:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    33cc:	f3060105 	0xf3060105
    33d0:	01000c02 	0x01000c02
    33d4:	00010501 	0x00010501
    33d8:	1ff40205 	pcaddu18i	$r5,-24560(0xfa010)
    33dc:	f8031c00 	0xf8031c00
    33e0:	02050100 	slti	$r0,$r8,320(0x140)
    33e4:	05750883 	0x05750883
    33e8:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    33ec:	0101000c 	fadd.d	$f12,$f0,$f0
    33f0:	05000105 	0x05000105
    33f4:	00203002 	div.w	$r2,$r0,$r12
    33f8:	00fd031c 	bstrpick.d	$r28,$r24,0x3d,0x0
    33fc:	83020501 	0x83020501
    3400:	01057508 	fmul.d	$f8,$f8,$f29
    3404:	0c02f306 	0x0c02f306
    3408:	05010100 	0x05010100
    340c:	02050001 	slti	$r1,$r0,320(0x140)
    3410:	1c00206c 	pcaddu12i	$r12,259(0x103)
    3414:	01018203 	0x01018203
    3418:	08840205 	0x08840205
    341c:	06010575 	cacop	0x15,$r11,65(0x41)
    3420:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3424:	01050101 	fmul.d	$f1,$f8,$f0
    3428:	a8020500 	0xa8020500
    342c:	031c0020 	lu52i.d	$r0,$r1,1792(0x700)
    3430:	05010188 	0x05010188
    3434:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3438:	f3060105 	0xf3060105
    343c:	01000c02 	0x01000c02
    3440:	00010501 	0x00010501
    3444:	20e40205 	ll.w	$r5,$r16,-7168(0xe400)
    3448:	8e031c00 	0x8e031c00
    344c:	02050101 	slti	$r1,$r8,320(0x140)
    3450:	05750884 	0x05750884
    3454:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3458:	0101000c 	fadd.d	$f12,$f0,$f0
    345c:	05000105 	0x05000105
    3460:	00212002 	div.wu	$r2,$r0,$r8
    3464:	0194031c 	0x0194031c
    3468:	84020501 	0x84020501
    346c:	01057508 	fmul.d	$f8,$f8,$f29
    3470:	0c02f306 	0x0c02f306
    3474:	05010100 	0x05010100
    3478:	02050001 	slti	$r1,$r0,320(0x140)
    347c:	1c00215c 	pcaddu12i	$r28,266(0x10a)
    3480:	01019a03 	0x01019a03
    3484:	08840205 	0x08840205
    3488:	06010575 	cacop	0x15,$r11,65(0x41)
    348c:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3490:	01050101 	fmul.d	$f1,$f8,$f0
    3494:	98020500 	0x98020500
    3498:	031c0021 	lu52i.d	$r1,$r1,1792(0x700)
    349c:	050101a0 	0x050101a0
    34a0:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    34a4:	f3060105 	0xf3060105
    34a8:	01000c02 	0x01000c02
    34ac:	00010501 	0x00010501
    34b0:	21d40205 	sc.w	$r5,$r16,-11264(0xd400)
    34b4:	a7031c00 	0xa7031c00
    34b8:	02050101 	slti	$r1,$r8,320(0x140)
    34bc:	05750884 	0x05750884
    34c0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    34c4:	0101000c 	fadd.d	$f12,$f0,$f0
    34c8:	05000105 	0x05000105
    34cc:	00221002 	div.d	$r2,$r0,$r4
    34d0:	01ad031c 	0x01ad031c
    34d4:	84020501 	0x84020501
    34d8:	01057508 	fmul.d	$f8,$f8,$f29
    34dc:	0c02f306 	0x0c02f306
    34e0:	05010100 	0x05010100
    34e4:	02050001 	slti	$r1,$r0,320(0x140)
    34e8:	1c00224c 	pcaddu12i	$r12,274(0x112)
    34ec:	0101b303 	0x0101b303
    34f0:	08840205 	0x08840205
    34f4:	06010575 	cacop	0x15,$r11,65(0x41)
    34f8:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    34fc:	01050101 	fmul.d	$f1,$f8,$f0
    3500:	88020500 	0x88020500
    3504:	031c0022 	lu52i.d	$r2,$r1,1792(0x700)
    3508:	050101dc 	0x050101dc
    350c:	0b05f302 	0x0b05f302
    3510:	02050106 	slti	$r6,$r8,320(0x140)
    3514:	1313f306 	addu16i.d	$r6,$r24,-15108(0xc4fc)
    3518:	05750813 	0x05750813
    351c:	05010609 	0x05010609
    3520:	05830602 	0x05830602
    3524:	05010608 	0x05010608
    3528:	054b0602 	0x054b0602
    352c:	05010609 	0x05010609
    3530:	4c4b0602 	jirl	$r2,$r16,19204(0x4b04)
    3534:	01060d05 	0x01060d05
    3538:	054a0205 	0x054a0205
    353c:	04020025 	csrwr	$r5,0x80
    3540:	02054a02 	slti	$r2,$r16,338(0x152)
    3544:	01040200 	0x01040200
    3548:	0603054a 	cacop	0xa,$r10,193(0xc1)
    354c:	060d0584 	cacop	0x4,$r12,833(0x341)
    3550:	4a170501 	bcnez	$fcc0,399108(0x61704) # 64c54 <_start-0x1bf9b3ac>
    3554:	054a0505 	0x054a0505
    3558:	054c0606 	0x054c0606
    355c:	05010613 	0x05010613
    3560:	0105f206 	0x0105f206
    3564:	024a8285 	sltui	$r5,$r20,672(0x2a0)
    3568:	01010008 	fadd.d	$f8,$f0,$f0
    356c:	05000105 	0x05000105
    3570:	00000002 	0x00000002
    3574:	01f10300 	0x01f10300
    3578:	83020501 	0x83020501
    357c:	060105bb 	cacop	0x1b,$r13,65(0x41)
    3580:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    3584:	01050101 	fmul.d	$f1,$f8,$f0
    3588:	00020500 	0x00020500
    358c:	03000000 	lu52i.d	$r0,$r0,0
    3590:	050101ff 	0x050101ff
    3594:	0b058302 	0x0b058302
    3598:	02050106 	slti	$r6,$r8,320(0x140)
    359c:	054bf306 	0x054bf306
    35a0:	02bb0601 	addi.w	$r1,$r16,-319(0xec1)
    35a4:	0101000c 	fadd.d	$f12,$f0,$f0
    35a8:	05000105 	0x05000105
    35ac:	00232002 	div.du	$r2,$r0,$r8
    35b0:	028e031c 	addi.w	$r28,$r24,896(0x380)
    35b4:	84020501 	0x84020501
    35b8:	01060b05 	0x01060b05
    35bc:	f3060205 	0xf3060205
    35c0:	01060905 	0x01060905
    35c4:	83060205 	0x83060205
    35c8:	4c060105 	jirl	$r5,$r8,1536(0x600)
    35cc:	01000c02 	0x01000c02
    35d0:	00010501 	0x00010501
    35d4:	23500205 	sc.d	$r5,$r16,20480(0x5000)
    35d8:	9f031c00 	0x9f031c00
    35dc:	05050102 	0x05050102
    35e0:	13131383 	addu16i.d	$r3,$r28,-15164(0xc4c4)
    35e4:	01061305 	0x01061305
    35e8:	bb060505 	0xbb060505
    35ec:	01060f05 	0x01060f05
    35f0:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 173bf4 <_start-0x1be8c40c>
    35f4:	01060e05 	0x01060e05
    35f8:	f3060505 	0xf3060505
    35fc:	01060d05 	0x01060d05
    3600:	83060205 	0x83060205
    3604:	01054a06 	fmul.d	$f6,$f16,$f18
    3608:	000c02bf 	bytepick.d	$r31,$r21,$r0,0x0
    360c:	01050101 	fmul.d	$f1,$f8,$f0
    3610:	9c020500 	0x9c020500
    3614:	031c0023 	lu52i.d	$r3,$r1,1792(0x700)
    3618:	050102b7 	0x050102b7
    361c:	0b051302 	0x0b051302
    3620:	02050106 	slti	$r6,$r8,320(0x140)
    3624:	0805f306 	0x0805f306
    3628:	01050106 	fmul.d	$f6,$f8,$f0
    362c:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
    3630:	01050101 	fmul.d	$f1,$f8,$f0
    3634:	bc020500 	0xbc020500
    3638:	031c0023 	lu52i.d	$r3,$r1,1792(0x700)
    363c:	050102c5 	0x050102c5
    3640:	15058305 	lu12i.w	$r5,-513000(0x82c18)
    3644:	0e050106 	0x0e050106
    3648:	060505ba 	cacop	0x1a,$r13,321(0x141)
    364c:	0611054b 	cacop	0xb,$r10,1089(0x441)
    3650:	4a1c0501 	bcnez	$fcc0,400388(0x61c04) # 65254 <_start-0x1bf9adac>
    3654:	05820e05 	0x05820e05
    3658:	05830605 	0x05830605
    365c:	12030601 	addu16i.d	$r1,$r16,-32575(0x80c1)
    3660:	060a05f2 	cacop	0x12,$r15,641(0x281)
    3664:	05ba7003 	0x05ba7003
    3668:	1905bb0d 	pcaddi	$r13,-512552(0x82dd8)
    366c:	0d050106 	0x0d050106
    3670:	0a05bb06 	0x0a05bb06
    3674:	bb0d0552 	0xbb0d0552
    3678:	01061905 	0x01061905
    367c:	08060d05 	0x08060d05
    3680:	060105ad 	cacop	0xd,$r13,65(0x41)
    3684:	00040216 	alsl.w	$r22,$r16,$r0,0x1
    3688:	01050101 	fmul.d	$f1,$f8,$f0
    368c:	4c020500 	jirl	$r0,$r8,516(0x204)
    3690:	031c0024 	lu52i.d	$r4,$r1,1792(0x700)
    3694:	050102e6 	0x050102e6
    3698:	0805bb02 	0x0805bb02
    369c:	05050106 	0x05050106
    36a0:	0705f406 	0x0705f406
    36a4:	05050106 	0x05050106
    36a8:	820c0306 	0x820c0306
    36ac:	01060805 	0x01060805
    36b0:	03060205 	lu52i.d	$r5,$r16,384(0x180)
    36b4:	0505821d 	0x0505821d
    36b8:	054a0106 	0x054a0106
    36bc:	054f0603 	0x054f0603
    36c0:	0501060b 	0x0501060b
    36c4:	05f50602 	0x05f50602
    36c8:	0501060a 	0x0501060a
    36cc:	0905f301 	0x0905f301
    36d0:	f2500306 	0xf2500306
    36d4:	01060c05 	0x01060c05
    36d8:	05820b05 	0x05820b05
    36dc:	054d0604 	0x054d0604
    36e0:	0501060c 	0x0501060c
    36e4:	0405f20a 	csrxchg	$r10,$r16,0x17c
    36e8:	0d054b06 	0x0d054b06
    36ec:	c00305bc 	0xc00305bc
    36f0:	1413134f 	lu12i.w	$r15,39066(0x989a)
    36f4:	01061505 	0x01061505
    36f8:	05ba1305 	0x05ba1305
    36fc:	054b0603 	0x054b0603
    3700:	050f0607 	0x050f0607
    3704:	05054d09 	0x05054d09
    3708:	0f054d06 	0x0f054d06
    370c:	054a0106 	0x054a0106
    3710:	054b0605 	0x054b0605
    3714:	0501060a 	0x0501060a
    3718:	05510604 	0x05510604
    371c:	05010616 	0x05010616
    3720:	0905ba14 	0x0905ba14
    3724:	4a4a7503 	bcnez	$fcc0,936564(0xe4a74) # e8198 <_start-0x1bf17e68>
    3728:	4b060405 	bceqz	$fcc0,1508868(0x170604) # 173d2c <_start-0x1be8c2d4>
    372c:	01060a05 	0x01060a05
    3730:	83060405 	0x83060405
    3734:	01060605 	0x01060605
    3738:	85060b05 	0x85060b05
    373c:	01060d05 	0x01060d05
    3740:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 173d44 <_start-0x1be8c2bc>
    3744:	060f0513 	cacop	0x13,$r8,961(0x3c1)
    3748:	0a054a01 	0x0a054a01
    374c:	06050581 	cacop	0x1,$r12,321(0x141)
    3750:	060f0585 	cacop	0x5,$r12,961(0x3c1)
    3754:	000c0201 	bytepick.d	$r1,$r16,$r0,0x0
    3758:	01050101 	fmul.d	$f1,$f8,$f0
    375c:	5c020500 	bne	$r8,$r0,516(0x204) # 3960 <_start-0x1bffc6a0>
    3760:	031c0025 	lu52i.d	$r5,$r1,1792(0x700)
    3764:	0501039e 	0x0501039e
    3768:	bb4b8305 	0xbb4b8305
    376c:	4b060105 	bcnez	$fcc0,1508864(0x170600) # 173d6c <_start-0x1be8c294>
    3770:	01000c02 	0x01000c02
    3774:	Address 0x0000000000003774 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
       0:	00000022 	0x00000022
       4:	00000002 	0x00000002
       8:	01040000 	0x01040000
       c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
      10:	1c000000 	pcaddu12i	$r0,0
      14:	1c001128 	pcaddu12i	$r8,137(0x89)
      18:	00000000 	0x00000000
      1c:	00000056 	0x00000056
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
      20:	000000a3 	0x000000a3
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
      24:	094e8001 	0x094e8001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
      28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
      2c:	00000014 	0x00000014
      30:	01960104 	0x01960104
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
      34:	c10c0000 	0xc10c0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      38:	56000002 	bl	655360(0xa0000) # a0038 <_start-0x1bf5ffc8>
	...
      44:	d0000000 	0xd0000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      48:	02000000 	slti	$r0,$r0,0
      4c:	02690601 	sltui	$r1,$r16,-1471(0xa41)
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	c5030000 	0xc5030000
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
      54:	02000000 	slti	$r0,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 1)
      58:	0038181d 	0x0038181d
      5c:	01020000 	0x01020000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
      60:	00026708 	0x00026708
      64:	05020200 	0x05020200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	00000275 	0x00000275
      6c:	58070202 	beq	$r16,$r2,1792(0x700) # 76c <_start-0x1bfff894>
      70:	02000001 	slti	$r1,$r0,0
      74:	01010504 	fadd.d	$f4,$f8,$f1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
      78:	31030000 	0x31030000
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:33
      7c:	02000001 	slti	$r1,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
      80:	00601941 	bstrins.w	$r1,$r10,0x0,0x6
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
      84:	04020000 	csrrd	$r0,0x80
      88:	0000d407 	0x0000d407
      8c:	05080200 	0x05080200
      90:	000000fc 	0x000000fc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 1)
      94:	cf070802 	0xcf070802
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
      98:	04000000 	csrrd	$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
      9c:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe69a0 <_RAM_DATA+0x7ffe59a0>
      a0:	04020074 	csrxchg	$r20,$r3,0x80
      a4:	0000d907 	0x0000d907
      a8:	00c70300 	bstrpick.d	$r0,$r24,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
      ac:	14030000 	lu12i.w	$r0,6144(0x1800)
      b0:	00002c13 	ctz.d	$r19,$r0
      b4:	00830500 	bstrins.d	$r0,$r8,0x3,0x1
      b8:	33030000 	0x33030000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
      bc:	03000001 	lu52i.d	$r1,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
      c0:	00541420 	0x00541420
      c4:	04020000 	csrrd	$r0,0x80
      c8:	00026104 	0x00026104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	06010200 	cacop	0x0,$r16,64(0x40)
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	00000270 	0x00000270
      d4:	0000a706 	0x0000a706
      d8:	029a0700 	addi.w	$r0,$r24,1665(0x681)
      dc:	69040000 	bltu	$r0,$r0,66560(0x10400) # 104dc <_start-0x1bfefb24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	00009411 	0x00009411
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	01140700 	fabs.s	$f0,$f24
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff04e8 <_RAM_DATA+0x7ffef4e8>
      ec:	00009411 	0x00009411
      f0:	02500700 	sltui	$r0,$r24,1025(0x401)
      f4:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 104f4 <_start-0x1bfefb0c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	0000750c 	0x0000750c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	05080800 	0x05080800
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	014909cd 	0x014909cd
     104:	a3090000 	0xa3090000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     108:	05000002 	0x05000002
     10c:	008f14cf 	bstrins.d	$r15,$r6,0xf,0x5
     110:	09000000 	0x09000000
     114:	000000e6 	0x000000e6
     118:	8f14d005 	0x8f14d005
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	0000b109 	0x0000b109
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	14d10500 	lu12i.w	$r0,428072(0x68828)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	0000008f 	0x0000008f
     12c:	434c0a02 	beqz	$r16,740360(0xb4c08) # b4d34 <_start-0x1bf4b2cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     130:	d2050052 	0xd2050052
     134:	00008f14 	0x00008f14
     138:	8a090300 	0x8a090300
     13c:	05000001 	0x05000001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	008f14d3 	bstrins.d	$r19,$r6,0xf,0x5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	0a040000 	0x0a040000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	0052534c 	0x0052534c
     14c:	8f14d405 	0x8f14d405
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	05000000 	0x05000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	0000be09 	0x0000be09
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	14d50500 	lu12i.w	$r0,436264(0x6a828)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	0000008f 	0x0000008f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	02b50906 	addi.w	$r6,$r8,-702(0xd42)
     164:	d6050000 	0xd6050000
     168:	00008f14 	0x00008f14
     16c:	03000700 	lu52i.d	$r0,$r24,1(0x1)
     170:	000000ef 	0x000000ef
     174:	d703d805 	0xd703d805
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	0b000000 	0x0b000000
     17c:	0000027f 	0x0000027f
     180:	06011c01 	cacop	0x1,$r0,71(0x47)
     184:	0000004d 	0x0000004d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	00000305 	0x00000305
     18c:	490c0000 	bceqz	$fcc0,68608(0x10c00) # 10d8c <_start-0x1bfef274>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	01000001 	0x01000001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	7505011d 	xvssrln.hu.w	$xr29,$xr8,$xr0
     198:	00000000 	0x00000000
     19c:	30000000 	0x30000000
     1a0:	01000000 	0x01000000
     1a4:	02ad0d9c 	addi.w	$r28,$r12,-1213(0xb43)
     1a8:	14010000 	lu12i.w	$r0,2048(0x800)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	00750501 	bstrins.w	$r1,$r8,0x15,0x1
     1b0:	00000000 	0x00000000
     1b4:	00380000 	0x00380000
     1b8:	9c010000 	0x9c010000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	00000208 	0x00000208
     1c0:	7274730e 	0x7274730e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	01140100 	0x01140100
     1c8:	00020813 	0x00020813
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
     1cc:	00000400 	0x00000400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d0:	00000000 	0x00000000
     1d4:	028a0f00 	addi.w	$r0,$r24,643(0x283)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	14010000 	lu12i.w	$r0,2048(0x800)
     1dc:	020e2401 	slti	$r1,$r0,905(0x389)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	00290000 	0x00290000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	00250000 	crc.w.w.w	$r0,$r0,$r0
     1e8:	11100000 	addu16i.d	$r0,$r0,17408(0x4400)
     1ec:	01007061 	0x01007061
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	14170116 	lu12i.w	$r22,47112(0xb808)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	02000002 	slti	$r2,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     1f8:	30124c91 	vldrepl.d	$vr17,$r4,1176(0x498)
     1fc:	01000003 	0x01000003
     200:	75090118 	xvssrlrn.hu.w	$xr24,$xr8,$xr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	4c000000 	jirl	$r0,$r0,0
     208:	4a000000 	bceqz	$fcc0,131072(0x20000) # 20208 <_start-0x1bfdfdf8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	13000000 	addu16i.d	$r0,$r0,-16384(0xc000)
     210:	00000000 	0x00000000
     214:	0000021a 	0x0000021a
     218:	03540114 	andi	$r20,$r8,0x500
     21c:	145401f3 	lu12i.w	$r19,172047(0x2a00f)
     220:	f3035501 	0xf3035501
     224:	01145501 	frecip.s	$f1,$f8
     228:	68910256 	bltu	$r18,$r22,37120(0x9100) # 9328 <_start-0x1bff6cd8>
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	04150000 	csrrd	$r0,0x540
     230:	000000a7 	0x000000a7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	00ae0415 	bstrins.d	$r21,$r0,0x2e,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	04160000 	csrrd	$r0,0x580
     23c:	0000011f 	0x0000011f
     240:	0002ac17 	0x0002ac17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	05c80100 	0x05c80100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	00000000 	0x00000000
     250:	0000022c 	0x0000022c
     254:	03ae9c01 	ori	$r1,$r0,0xba7
     258:	73180000 	0x73180000
     25c:	01007274 	0x01007274
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	020814c8 	slti	$r8,$r6,517(0x205)
     264:	00790000 	bstrins.w	$r0,$r0,0x19,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	005f0000 	0x005f0000
     26c:	8a190000 	0x8a190000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	01000002 	0x01000002
     274:	020e25c8 	slti	$r8,$r14,905(0x389)
     278:	01160000 	0x01160000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	01100000 	0x01100000
     280:	61180000 	blt	$r0,$r0,71680(0x11800) # 11a80 <_start-0x1bfee580>
     284:	c8010070 	0xc8010070
     288:	0002143f 	0x0002143f
     28c:	00014400 	asrtle.d	$r0,$r17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	00014200 	asrtle.d	$r16,$r16
     294:	00691a00 	bstrins.w	$r0,$r16,0x9,0x6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	7509ca01 	xvssrlrn.wu.d	$xr1,$xr16,$xr18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	5b000000 	beq	$r0,$r0,-65536(0x30000) # ffff029c <_RAM_DATA+0x7ffef29c>
     2a0:	57000001 	bl	458752(0x70000) # 702a0 <_start-0x1bf8fd60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	1a000001 	pcalau12i	$r1,0
     2a8:	cb010063 	0xcb010063
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	0000a70a 	0x0000a70a
     2b0:	00017e00 	asrtle.d	$r16,$r31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	00017a00 	asrtle.d	$r16,$r30
     2b8:	00771a00 	bstrins.w	$r0,$r16,0x17,0x6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	7509cc01 	xvssrlrn.wu.d	$xr1,$xr0,$xr19
     2c0:	b6000000 	0xb6000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	9c000001 	0x9c000001
     2c8:	1b000001 	pcalau12i	$r1,-524288(0x80000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	00000337 	0x00000337
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	080bcd01 	0x080bcd01
     2d4:	54000002 	bl	524288(0x80000) # 802d4 <_start-0x1bf7fd2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	4e000002 	jirl	$r2,$r0,-131072(0x20000)
     2dc:	1c000002 	pcaddu12i	$r2,0
     2e0:	0000024a 	0x0000024a
     2e4:	0001d501 	0x0001d501
     2e8:	1d000000 	pcaddu12i	$r0,-524288(0x80000)
     2ec:	00000000 	0x00000000
     2f0:	000004ed 	0x000004ed
     2f4:	0000001d 	0x0000001d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
     2fc:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	03ae0000 	ori	$r0,$r0,0xb80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	02ef0000 	addi.d	$r0,$r0,-1088(0xbc0)
     308:	01140000 	0x01140000
     30c:	143a0157 	lu12i.w	$r23,118794(0x1d00a)
     310:	30015801 	0x30015801
     314:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	03ae0000 	ori	$r0,$r0,0xb80
     31c:	03070000 	lu52i.d	$r0,$r0,448(0x1c0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	01140000 	0x01140000
     324:	143a0157 	lu12i.w	$r23,118794(0x1d00a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	31015801 	0x31015801
     32c:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	03ae0000 	ori	$r0,$r0,0xb80
     334:	031f0000 	lu52i.d	$r0,$r0,1984(0x7c0)
     338:	01140000 	0x01140000
     33c:	14380157 	lu12i.w	$r23,114698(0x1c00a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	30015801 	0x30015801
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	03ae0000 	ori	$r0,$r0,0xb80
     34c:	03370000 	lu52i.d	$r0,$r0,-576(0xdc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	01140000 	0x01140000
     354:	14320157 	lu12i.w	$r23,102410(0x1900a)
     358:	30015801 	0x30015801
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	00001e00 	ctz.w	$r0,$r16
     360:	03ae0000 	ori	$r0,$r0,0xb80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	034f0000 	andi	$r0,$r0,0x3c0
     368:	01140000 	0x01140000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	14400157 	lu12i.w	$r23,131082(0x2000a)
     370:	30015801 	0x30015801
     374:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	04b00000 	csrrd	$r0,0x2c00
     37c:	03630000 	andi	$r0,$r0,0x8c0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	01140000 	0x01140000
     384:	25080255 	stptr.w	$r21,$r18,2048(0x800)
     388:	00001e00 	ctz.w	$r0,$r16
     38c:	04b00000 	csrrd	$r0,0x2c00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	03770000 	andi	$r0,$r0,0xdc0
     394:	01140000 	0x01140000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	25080255 	stptr.w	$r21,$r18,2048(0x800)
     39c:	00001e00 	ctz.w	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	04b00000 	csrrd	$r0,0x2c00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	038a0000 	ori	$r0,$r0,0x280
     3a8:	01140000 	0x01140000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	003d0155 	0x003d0155
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	0000001e 	0x0000001e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
     3b8:	00039e00 	0x00039e00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	55011400 	bl	65812(0x10114) # 104d0 <_start-0x1bfefb30>
     3c0:	00008702 	0x00008702
     3c4:	00000013 	0x00000013
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
     3cc:	55011400 	bl	65812(0x10114) # 104e0 <_start-0x1bfefb20>
     3d0:	00003001 	revb.2h	$r1,$r0
     3d4:	00032417 	0x00032417
     3d8:	07ad0100 	0x07ad0100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	00000208 	0x00000208
     3e0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	000000e4 	0x000000e4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	04a09c01 	csrrd	$r1,0x2827
     3ec:	64180000 	bge	$r0,$r0,6144(0x1800) # 1bec <_start-0x1bffe414>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	01007473 	0x01007473
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	020819ad 	slti	$r13,$r13,518(0x206)
     3f8:	02880000 	addi.w	$r0,$r0,512(0x200)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	02800000 	addi.w	$r0,$r0,0
     400:	76180000 	0x76180000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	23ad0100 	sc.d	$r0,$r8,-21248(0xad00)
     408:	0000004d 	0x0000004d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	000002c9 	0x000002c9
     410:	000002bf 	0x000002bf
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	01007718 	0x01007718
     418:	00752aad 	bstrins.w	$r13,$r21,0x15,0xa
     41c:	031b0000 	lu52i.d	$r0,$r0,1728(0x6c0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	03110000 	lu52i.d	$r0,$r0,1088(0x440)
     424:	89190000 	0x89190000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	01000006 	0x01000006
     42c:	007531ad 	bstrins.w	$r13,$r13,0x15,0xc
     430:	03670000 	andi	$r0,$r0,0x9c0
     434:	035d0000 	andi	$r0,$r0,0x740
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	bc190000 	0xbc190000
     43c:	01000002 	0x01000002
     440:	00753bad 	bstrins.w	$r13,$r29,0x15,0xe
     444:	03b10000 	ori	$r0,$r0,0xc40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	03a90000 	ori	$r0,$r0,0xa40
     44c:	691a0000 	bltu	$r0,$r0,72192(0x11a00) # 11e4c <_start-0x1bfee1b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	09af0100 	vfnmadd.d	$vr0,$vr8,$vr0,$vr30
     454:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	000003f1 	0x000003f1
     45c:	000003eb 	0x000003eb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	01006a1a 	0x01006a1a
     464:	00750caf 	bstrins.w	$r15,$r5,0x15,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	041d0000 	csrrd	$r0,0x740
     46c:	041b0000 	csrrd	$r0,0x6c0
     470:	631a0000 	blt	$r0,$r0,-58880(0x31a00) # ffff1e70 <_RAM_DATA+0x7fff0e70>
     474:	09b00100 	0x09b00100
     478:	00000075 	0x00000075
     47c:	00000436 	0x00000436
     480:	00000430 	0x00000430
     484:	6675621f 	bge	$r16,$r31,-101024(0x27560) # fffe79e4 <_RAM_DATA+0x7ffe69e4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	0ab10100 	0x0ab10100
     48c:	000004a0 	0x000004a0
     490:	7fa09103 	0x7fa09103
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	00013c1b 	0x00013c1b
     498:	13b20100 	addu16i.d	$r0,$r8,-4992(0xec80)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	00000060 	0x00000060
     4a0:	00000474 	0x00000474
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	00000470 	0x00000470
     4a8:	0000001e 	0x0000001e
     4ac:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
     4b0:	00049600 	alsl.w	$r0,$r16,$r5,0x2
     4b4:	55011400 	bl	65812(0x10114) # 105c8 <_start-0x1bfefa38>
     4b8:	002d0802 	alsl.d	$r2,$r0,$r2,0x3
     4bc:	0000001d 	0x0000001d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	0004b000 	alsl.w	$r0,$r0,$r12,0x2
     4c4:	a7200000 	0xa7200000
     4c8:	b0000000 	0xb0000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	21000004 	sc.w	$r4,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	0000007c 	0x0000007c
     4d4:	4e17003f 	jirl	$r31,$r1,-125184(0x21700)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	01000001 	0x01000001
     4dc:	020807a7 	slti	$r7,$r29,513(0x201)
     4e0:	00000000 	0x00000000
     4e4:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
     4e8:	9c010000 	0x9c010000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	000004ed 	0x000004ed
     4f0:	74736418 	xvmin.w	$xr24,$xr0,$xr25
     4f4:	17a70100 	lu32i.d	$r0,-182264(0xd3808)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	00000208 	0x00000208
     4fc:	00000498 	0x00000498
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	00000492 	0x00000492
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	72686322 	0x72686322
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	21a70100 	sc.w	$r0,$r8,-22784(0xa700)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	000000a7 	0x000000a7
     510:	17005501 	lu32i.d	$r1,-523608(0x802a8)
     514:	0000031d 	0x0000031d
     518:	0807a101 	0x0807a101
     51c:	00000002 	0x00000002
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	50000000 	b	0 # 520 <_start-0x1bfffae0>
     524:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	00056c9c 	alsl.w	$r28,$r4,$r27,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	73641800 	0x73641800
     530:	a1010074 	0xa1010074
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	00020814 	0x00020814
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	0004c900 	alsl.w	$r0,$r8,$r18,0x2
     53c:	0004c300 	alsl.w	$r0,$r24,$r16,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	00731800 	bstrins.w	$r0,$r0,0x13,0x6
     544:	081fa101 	fmadd.s	$f1,$f8,$f8,$f31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	fb000002 	0xfb000002
     54c:	f5000004 	0xf5000004
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	1a000004 	pcalau12i	$r4,0
     554:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	940ea301 	0x940ea301
     55c:	2b000000 	fld.s	$f0,$r0,0
     560:	27000005 	stptr.d	$r5,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	1e000005 	pcaddu18i	$r5,0
     568:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	00000921 	0x00000921
     570:	00000555 	0x00000555
     574:	02540114 	sltui	$r20,$r8,1280(0x500)
     578:	13000088 	addu16i.d	$r8,$r4,-16384(0xc000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	00000000 	0x00000000
     580:	0000092d 	0x0000092d
     584:	02540114 	sltui	$r20,$r8,1280(0x500)
     588:	01140087 	0x01140087
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	00880255 	bstrins.d	$r21,$r18,0x8,0x0
     590:	14170000 	lu12i.w	$r0,47104(0xb800)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	01000007 	0x01000007
     598:	0075054d 	bstrins.w	$r13,$r10,0x15,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	12900000 	addu16i.d	$r0,$r0,-23552(0xa400)
     5a0:	02081c00 	slti	$r0,$r0,519(0x207)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	9c010000 	0x9c010000
     5a8:	000006d6 	0x000006d6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	746d6618 	0x746d6618
     5b0:	144d0100 	lu12i.w	$r0,157704(0x26808)
     5b4:	00000208 	0x00000208
     5b8:	0000054f 	0x0000054f
     5bc:	00000549 	0x00000549
     5c0:	00691a10 	bstrins.w	$r16,$r16,0x9,0x6
     5c4:	75064f01 	0x75064f01
     5c8:	7f000000 	0x7f000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	7b000005 	0x7b000005
     5d0:	1a000005 	pcalau12i	$r5,0
     5d4:	50010063 	b	25952512(0x18c0100) # 18c06d4 <_start-0x1a73f92c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	0000a707 	0x0000a707
     5dc:	0005a200 	alsl.w	$r0,$r16,$r8,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	00059e00 	alsl.w	$r0,$r16,$r7,0x4
     5e4:	72611a00 	0x72611a00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	51010067 	b	27066624(0x19d0100) # 19d06e8 <_start-0x1a62f918>
     5ec:	0006d609 	alsl.wu	$r9,$r16,$r21,0x2
     5f0:	0005c200 	alsl.w	$r0,$r16,$r16,0x4
     5f4:	0005c000 	alsl.w	$r0,$r0,$r16,0x4
     5f8:	70611f00 	vabsd.w	$vr0,$vr24,$vr7
     5fc:	08520100 	fmsub.s	$f0,$f8,$f0,$f4
     600:	000006dc 	0x000006dc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	7fbc9103 	0x7fbc9103
     608:	0100771a 	0x0100771a
     60c:	00750653 	bstrins.w	$r19,$r18,0x15,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	05ef0000 	0x05ef0000
     614:	05d50000 	0x05d50000
     618:	4a1c0000 	bceqz	$fcc0,138240(0x21c00) # 22218 <_start-0x1bfddde8>
     61c:	01000002 	0x01000002
     620:	12d8015c 	addu16i.d	$r28,$r10,-18944(0xb600)
     624:	101d1c00 	addu16i.d	$r0,$r0,1863(0x747)
     628:	de1c0013 	0xde1c0013
     62c:	1d000006 	pcaddu12i	$r6,-524288(0x80000)
     630:	1c001324 	pcaddu12i	$r4,153(0x99)
     634:	00000861 	0x00000861
     638:	0013401e 	maskeqz	$r30,$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	0007401c 	alsl.wu	$r28,$r0,$r16,0x3
     640:	00062a00 	alsl.wu	$r0,$r16,$r10,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	56011400 	bl	131348(0x20114) # 20758 <_start-0x1bfdf8a8>
     648:	01143a01 	fclass.d	$f1,$f16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	00300157 	0x00300157
     650:	00135c1e 	maskeqz	$r30,$r0,$r23
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	0007401c 	alsl.wu	$r28,$r0,$r16,0x3
     658:	00064200 	alsl.wu	$r0,$r16,$r16,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	56011400 	bl	131348(0x20114) # 20770 <_start-0x1bfdf890>
     660:	01143a01 	fclass.d	$f1,$f16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	00310157 	0x00310157
     668:	0013781e 	maskeqz	$r30,$r0,$r30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	0007401c 	alsl.wu	$r28,$r0,$r16,0x3
     670:	00065a00 	alsl.wu	$r0,$r16,$r22,0x1
     674:	56011400 	bl	131348(0x20114) # 20788 <_start-0x1bfdf878>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	01143801 	fclass.d	$f1,$f0
     67c:	00300157 	0x00300157
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	0013941e 	masknez	$r30,$r0,$r5
     684:	0007401c 	alsl.wu	$r28,$r0,$r16,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	00067200 	alsl.wu	$r0,$r16,$r28,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	56011400 	bl	131348(0x20114) # 207a0 <_start-0x1bfdf860>
     690:	01143201 	0x01143201
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	00300157 	0x00300157
     698:	0013b01e 	masknez	$r30,$r0,$r12
     69c:	0007401c 	alsl.wu	$r28,$r0,$r16,0x3
     6a0:	00068a00 	alsl.wu	$r0,$r16,$r2,0x2
     6a4:	56011400 	bl	131348(0x20114) # 207b8 <_start-0x1bfdf848>
     6a8:	01144001 	0x01144001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	00300157 	0x00300157
     6b0:	0013c41e 	masknez	$r30,$r0,$r17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	0008611c 	bytepick.w	$r28,$r8,$r24,0x0
     6b8:	00069e00 	alsl.wu	$r0,$r16,$r7,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	54011400 	bl	276(0x114) # 7d0 <_start-0x1bfff830>
     6c0:	00250802 	crc.w.w.w	$r2,$r0,$r2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	0014401e 	nor	$r30,$r0,$r16
     6c8:	0008611c 	bytepick.w	$r28,$r8,$r24,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	0006b200 	alsl.wu	$r0,$r16,$r12,0x2
     6d0:	54011400 	bl	276(0x114) # 7e4 <_start-0x1bfff81c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	00250802 	crc.w.w.w	$r2,$r0,$r2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	00144c1e 	nor	$r30,$r0,$r19
     6dc:	0008611c 	bytepick.w	$r28,$r8,$r24,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	0006c500 	alsl.wu	$r0,$r8,$r17,0x2
     6e4:	54011400 	bl	276(0x114) # 7f8 <_start-0x1bfff808>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	13003d01 	addu16i.d	$r1,$r8,-16369(0xc00f)
     6ec:	1c001454 	pcaddu12i	$r20,162(0xa2)
     6f0:	00000861 	0x00000861
     6f4:	02540114 	sltui	$r20,$r8,1280(0x500)
     6f8:	00000087 	0x00000087
     6fc:	06dc0415 	0x06dc0415
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	04230000 	csrrd	$r0,0x8c0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	00016b17 	0x00016b17
     708:	05400100 	0x05400100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	00000075 	0x00000075
     710:	1c001238 	pcaddu12i	$r24,145(0x91)
     714:	00000058 	0x00000058
     718:	07409c01 	0x07409c01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	73180000 	0x73180000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	15400100 	lu12i.w	$r0,-393208(0xa0008)
     724:	00000208 	0x00000208
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	0000068b 	0x0000068b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	00000687 	0x00000687
     730:	0100631a 	0x0100631a
     734:	00a70742 	bstrins.d	$r2,$r26,0x27,0x1
     738:	06af0000 	0x06af0000
     73c:	06a90000 	0x06a90000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	581e0000 	beq	$r0,$r0,7680(0x1e00) # 2540 <_start-0x1bffdac0>
     744:	611c0012 	blt	$r0,$r18,72704(0x11c00) # 12344 <_start-0x1bfedcbc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	2f000008 	0x2f000008
     74c:	14000007 	lu12i.w	$r7,0
     750:	3d015401 	0x3d015401
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	12601300 	addu16i.d	$r0,$r24,-26620(0x9804)
     758:	08611c00 	fmsub.d	$f0,$f0,$f7,$f2
     75c:	01140000 	0x01140000
     760:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
     764:	84170000 	0x84170000
     768:	01000006 	0x01000006
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	00750520 	bstrins.w	$r0,$r9,0x15,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	11480000 	addu16i.d	$r0,$r0,20992(0x5200)
     774:	00f01c00 	bstrpick.d	$r0,$r0,0x30,0x7
     778:	9c010000 	0x9c010000
     77c:	0000081e 	0x0000081e
     780:	01007618 	0x01007618
     784:	004d1420 	rotri.d	$r0,$r1,0x5
     788:	06e30000 	0x06e30000
     78c:	06d90000 	0x06d90000
     790:	77180000 	0x77180000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	1a200100 	pcalau12i	$r0,65544(0x10008)
     798:	00000075 	0x00000075
     79c:	00000735 	0x00000735
     7a0:	0000072b 	0x0000072b
     7a4:	00068919 	alsl.wu	$r25,$r8,$r2,0x2
     7a8:	20200100 	ll.w	$r0,$r8,8192(0x2000)
     7ac:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	00000781 	0x00000781
     7b4:	00000777 	0x00000777
     7b8:	0002bc19 	0x0002bc19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	29200100 	st.b	$r0,$r8,-2048(0x800)
     7c0:	00000075 	0x00000075
     7c4:	000007cb 	0x000007cb
     7c8:	000007c3 	0x000007c3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	0100691a 	0x0100691a
     7d0:	00750922 	bstrins.w	$r2,$r9,0x15,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	08090000 	0x08090000
     7d8:	08050000 	0x08050000
     7dc:	6a1a0000 	bltu	$r0,$r0,-124416(0x21a00) # fffe21dc <_RAM_DATA+0x7ffe11dc>
     7e0:	0b220100 	0x0b220100
     7e4:	00000075 	0x00000075
     7e8:	00000829 	0x00000829
     7ec:	00000827 	0x00000827
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	0100631a 	0x0100631a
     7f4:	00750923 	bstrins.w	$r3,$r9,0x15,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	08400000 	0x08400000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	083c0000 	0x083c0000
     800:	621f0000 	blt	$r0,$r0,-123136(0x21f00) # fffe2700 <_RAM_DATA+0x7ffe1700>
     804:	01006675 	0x01006675
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	04a00a24 	csrxchg	$r4,$r17,0x2802
     80c:	91030000 	0x91030000
     810:	3c1b7fa0 	0x3c1b7fa0
     814:	01000001 	0x01000001
     818:	00601325 	bstrins.w	$r5,$r25,0x0,0x4
     81c:	08700000 	0x08700000
     820:	086c0000 	fmsub.d	$f0,$f0,$f0,$f24
     824:	b81e0000 	0xb81e0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	611c0011 	blt	$r0,$r17,72704(0x11c00) # 12428 <_start-0x1bfedbd8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	14000008 	lu12i.w	$r8,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	14000008 	lu12i.w	$r8,0
     834:	08025401 	0x08025401
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	e41d002d 	0xe41d002d
     83c:	611c0011 	blt	$r0,$r17,72704(0x11c00) # 1243c <_start-0x1bfedbc4>
     840:	00000008 	0x00000008
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	00010a17 	0x00010a17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	09190100 	vfmadd.s	$vr0,$vr8,$vr0,$vr18
     84c:	00000083 	0x00000083
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	00000000 	0x00000000
     854:	0000001c 	0x0000001c
     858:	08619c01 	fmsub.d	$f1,$f0,$f7,$f3
     85c:	631a0000 	blt	$r0,$r0,-58880(0x31a00) # ffff225c <_RAM_DATA+0x7fff125c>
     860:	01007268 	0x01007268
     864:	00830d1b 	bstrins.d	$r27,$r8,0x3,0x3
     868:	08900000 	fnmadd.s	$f0,$f0,$f0,$f0
     86c:	088e0000 	0x088e0000
     870:	00130000 	maskeqz	$r0,$r0,$r0
     874:	39000000 	0x39000000
     878:	14000009 	lu12i.w	$r9,0
     87c:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
     880:	ffa08080 	0xffa08080
     884:	2400007b 	ldptr.w	$r27,$r3,0
     888:	00000706 	0x00000706
     88c:	28061201 	ld.b	$r1,$r16,388(0x184)
     890:	201c0011 	ll.w	$r17,$r0,7168(0x1c00)
     894:	01000000 	0x01000000
     898:	0008a09c 	bytepick.w	$r28,$r4,$r8,0x1
     89c:	68631800 	bltu	$r0,$r0,25368(0x6318) # 6bb4 <_start-0x1bff944c>
     8a0:	12010072 	addu16i.d	$r18,$r3,-32704(0x8040)
     8a4:	0000381e 	revb.2w	$r30,$r0
     8a8:	0008a700 	bytepick.w	$r0,$r24,$r9,0x1
     8ac:	0008a300 	bytepick.w	$r0,$r24,$r8,0x1
     8b0:	113c1300 	addu16i.d	$r0,$r24,20228(0x4f04)
     8b4:	09451c00 	0x09451c00
     8b8:	01140000 	0x01140000
     8bc:	80110654 	0x80110654
     8c0:	7bffa080 	0x7bffa080
     8c4:	91240000 	0x91240000
     8c8:	01000002 	0x01000002
     8cc:	00000608 	0x00000608
     8d0:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
     8d4:	9c010000 	0x9c010000
     8d8:	0000091b 	0x0000091b
     8dc:	66756218 	bge	$r16,$r24,-101024(0x27560) # fffe7e3c <_RAM_DATA+0x7ffe6e3c>
     8e0:	18080100 	pcaddi	$r0,16392(0x4008)
     8e4:	0000091b 	0x0000091b
     8e8:	000008ce 	0x000008ce
     8ec:	000008c8 	0x000008c8
     8f0:	6e656c18 	bgeu	$r0,$r24,-105108(0x2656c) # fffe6e5c <_RAM_DATA+0x7ffe5e5c>
     8f4:	25080100 	stptr.w	$r0,$r8,2048(0x800)
     8f8:	00000094 	0x00000094
     8fc:	00000900 	0x00000900
     900:	000008fa 	0x000008fa
     904:	0100691a 	0x0100691a
     908:	0075090a 	bstrins.w	$r10,$r8,0x15,0x2
     90c:	09300000 	0x09300000
     910:	092c0000 	vfmadd.d	$vr0,$vr0,$vr0,$vr24
     914:	001e0000 	mulh.d	$r0,$r0,$r0
     918:	6c000000 	bgeu	$r0,$r0,0 # 918 <_start-0x1bfff6e8>
     91c:	07000005 	0x07000005
     920:	14000009 	lu12i.w	$r9,0
     924:	03055401 	lu52i.d	$r1,$r0,341(0x155)
     928:	00000000 	0x00000000
     92c:	00001300 	clo.w	$r0,$r24
     930:	056c0000 	0x056c0000
     934:	01140000 	0x01140000
     938:	00030554 	0x00030554
     93c:	00000000 	0x00000000
     940:	83041500 	0x83041500
     944:	25000000 	stptr.w	$r0,$r0,0
     948:	00000142 	0x00000142
     94c:	00000142 	0x00000142
     950:	25050c06 	stptr.w	$r6,$r0,1292(0x50c)
     954:	00000175 	0x00000175
     958:	00000175 	0x00000175
     95c:	25070b06 	stptr.w	$r6,$r24,1800(0x708)
     960:	0000033f 	0x0000033f
     964:	0000033f 	0x0000033f
     968:	2509df07 	stptr.w	$r7,$r24,2524(0x9dc)
     96c:	0000017c 	0x0000017c
     970:	0000017c 	0x0000017c
     974:	0006de07 	alsl.wu	$r7,$r16,$r23,0x2
     978:	000006f1 	0x000006f1
     97c:	02640004 	sltui	$r4,$r0,-1792(0x900)
     980:	01040000 	0x01040000
     984:	00000196 	0x00000196
     988:	0004100c 	alsl.w	$r12,$r0,$r4,0x1
     98c:	00005600 	bitrev.d	$r0,$r16
     990:	00006800 	rdtime.d	$r0,$r0
     994:	00000000 	0x00000000
     998:	00099900 	bytepick.w	$r0,$r8,$r6,0x3
     99c:	06010200 	cacop	0x0,$r16,64(0x40)
     9a0:	00000269 	0x00000269
     9a4:	0000c503 	0x0000c503
     9a8:	181d0200 	pcaddi	$r0,59408(0xe810)
     9ac:	00000038 	0x00000038
     9b0:	67080102 	bge	$r8,$r2,-63488(0x30800) # ffff11b0 <_RAM_DATA+0x7fff01b0>
     9b4:	02000002 	slti	$r2,$r0,0
     9b8:	02750502 	sltui	$r2,$r8,-703(0xd41)
     9bc:	1c030000 	pcaddu12i	$r0,6144(0x1800)
     9c0:	02000005 	slti	$r5,$r0,0
     9c4:	0052192b 	0x0052192b
     9c8:	02020000 	slti	$r0,$r0,128(0x80)
     9cc:	00015807 	0x00015807
     9d0:	05040200 	0x05040200
     9d4:	00000101 	0x00000101
     9d8:	00013103 	0x00013103
     9dc:	19410200 	pcaddi	$r0,-391152(0xa0810)
     9e0:	0000006c 	0x0000006c
     9e4:	d4070402 	0xd4070402
     9e8:	02000000 	slti	$r0,$r0,0
     9ec:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
     9f0:	08020000 	0x08020000
     9f4:	0000cf07 	0x0000cf07
     9f8:	05040400 	0x05040400
     9fc:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     a00:	d9070402 	0xd9070402
     a04:	03000000 	lu52i.d	$r0,$r0,0
     a08:	000000c7 	0x000000c7
     a0c:	2c131403 	vld	$vr3,$r0,1221(0x4c5)
     a10:	05000000 	0x05000000
     a14:	0000008f 	0x0000008f
     a18:	00051e03 	alsl.w	$r3,$r16,$r7,0x3
     a1c:	141a0300 	lu12i.w	$r0,53272(0xd018)
     a20:	00000046 	0x00000046
     a24:	00013303 	0x00013303
     a28:	14200300 	lu12i.w	$r0,65560(0x10018)
     a2c:	00000060 	0x00000060
     a30:	61040402 	blt	$r0,$r2,66564(0x10404) # 10e34 <_start-0x1bfef1cc>
     a34:	06000002 	cacop	0x2,$r0,0
     a38:	00880407 	bstrins.d	$r7,$r0,0x8,0x1
     a3c:	31040000 	0x31040000
     a40:	0000da0e 	0x0000da0e
     a44:	04910700 	csrxchg	$r0,$r24,0x2441
     a48:	08000000 	0x08000000
     a4c:	00544553 	0x00544553
     a50:	3a030001 	0x3a030001
     a54:	0400000a 	csrrd	$r10,0x0
     a58:	00bf2831 	bstrins.d	$r17,$r1,0x3f,0xa
     a5c:	80030000 	0x80030000
     a60:	0400000a 	csrrd	$r10,0x0
     a64:	00bf3431 	bstrins.d	$r17,$r1,0x3f,0xd
     a68:	07060000 	0x07060000
     a6c:	00008804 	0x00008804
     a70:	0e330400 	0x0e330400
     a74:	0000010d 	0x0000010d
     a78:	00036907 	0x00036907
     a7c:	97070000 	0x97070000
     a80:	01000003 	0x01000003
     a84:	046a0300 	csrxchg	$r0,$r24,0x1a80
     a88:	33040000 	0x33040000
     a8c:	0000f22f 	0x0000f22f
     a90:	06010200 	cacop	0x0,$r16,64(0x40)
     a94:	00000270 	0x00000270
     a98:	00029a09 	0x00029a09
     a9c:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
     aa0:	000000ac 	0x000000ac
     aa4:	00011409 	0x00011409
     aa8:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
     aac:	000000ac 	0x000000ac
     ab0:	00025009 	0x00025009
     ab4:	0c6d0400 	0x0c6d0400
     ab8:	00000081 	0x00000081
     abc:	cd05080a 	0xcd05080a
     ac0:	0001b609 	0x0001b609
     ac4:	02a30b00 	addi.w	$r0,$r24,-1854(0x8c2)
     ac8:	cf050000 	0xcf050000
     acc:	00009b14 	0x00009b14
     ad0:	e60b0000 	0xe60b0000
     ad4:	05000000 	0x05000000
     ad8:	009b14d0 	bstrins.d	$r16,$r6,0x1b,0x5
     adc:	0b010000 	0x0b010000
     ae0:	000000b1 	0x000000b1
     ae4:	9b14d105 	0x9b14d105
     ae8:	02000000 	slti	$r0,$r0,0
     aec:	52434c0c 	b	3294028(0x32434c) # 324e38 <_start-0x1bcdb1c8>
     af0:	14d20500 	lu12i.w	$r0,430120(0x69028)
     af4:	0000009b 	0x0000009b
     af8:	018a0b03 	0x018a0b03
     afc:	d3050000 	0xd3050000
     b00:	00009b14 	0x00009b14
     b04:	4c0c0400 	jirl	$r0,$r0,3076(0xc04)
     b08:	05005253 	0x05005253
     b0c:	009b14d4 	bstrins.d	$r20,$r6,0x1b,0x5
     b10:	0b050000 	0x0b050000
     b14:	000000be 	0x000000be
     b18:	9b14d505 	0x9b14d505
     b1c:	06000000 	cacop	0x0,$r0,0
     b20:	0002b50b 	0x0002b50b
     b24:	14d60500 	lu12i.w	$r0,438312(0x6b028)
     b28:	0000009b 	0x0000009b
     b2c:	ef030007 	0xef030007
     b30:	05000000 	0x05000000
     b34:	014403d8 	0x014403d8
     b38:	100a0000 	addu16i.d	$r0,$r0,640(0x280)
     b3c:	41091506 	beqz	$r8,1640724(0x190914) # 191450 <_start-0x1be6ebb0>
     b40:	0b000002 	0x0b000002
     b44:	00000538 	0x00000538
     b48:	ac0c1706 	0xac0c1706
     b4c:	00000000 	0x00000000
     b50:	0003da0b 	0x0003da0b
     b54:	0c1b0600 	0x0c1b0600
     b58:	000000ac 	0x000000ac
     b5c:	04850b04 	csrxchg	$r4,$r24,0x2142
     b60:	1d060000 	pcaddu12i	$r0,-512000(0x83000)
     b64:	0000a00c 	0x0000a00c
     b68:	870b0800 	0x870b0800
     b6c:	06000003 	cacop	0x3,$r0,0
     b70:	008f0b1f 	bstrins.d	$r31,$r24,0xf,0x2
     b74:	0b0a0000 	0x0b0a0000
     b78:	00000567 	0x00000567
     b7c:	8f0b2206 	0x8f0b2206
     b80:	0b000000 	0x0b000000
     b84:	0003ef0b 	0x0003ef0b
     b88:	0b250600 	0x0b250600
     b8c:	0000008f 	0x0000008f
     b90:	05100b0c 	0x05100b0c
     b94:	27060000 	stptr.d	$r0,$r0,1536(0x600)
     b98:	00008f0b 	0x00008f0b
     b9c:	da0b0d00 	0xda0b0d00
     ba0:	06000004 	cacop	0x4,$r0,0
     ba4:	008f0b29 	bstrins.d	$r9,$r25,0xf,0x2
     ba8:	0b0e0000 	0x0b0e0000
     bac:	00000497 	0x00000497
     bb0:	8f0b2b06 	0x8f0b2b06
     bb4:	0f000000 	0x0f000000
     bb8:	05270300 	0x05270300
     bbc:	2d060000 	0x2d060000
     bc0:	0001c203 	0x0001c203
     bc4:	04f20900 	csrxchg	$r0,$r8,0x3c82
     bc8:	02010000 	slti	$r0,$r0,64(0x40)
     bcc:	0000ac11 	0x0000ac11
     bd0:	047a0d00 	csrxchg	$r0,$r8,0x1e83
     bd4:	77010000 	0x77010000
     bd8:	00000601 	0x00000601
     bdc:	00540000 	0x00540000
     be0:	9c010000 	0x9c010000
     be4:	000002e4 	0x000002e4
     be8:	0100660e 	0x0100660e
     bec:	81150177 	0x81150177
     bf0:	55000000 	bl	65536(0x10000) # 10bf0 <_start-0x1bfef410>
     bf4:	4f000009 	jirl	$r9,$r0,-65536(0x30000)
     bf8:	0f000009 	0x0f000009
     bfc:	00000371 	0x00000371
     c00:	16017801 	lu32i.d	$r1,3008(0xbc0)
     c04:	00000241 	0x00000241
     c08:	10609102 	addu16i.d	$r2,$r8,6180(0x1824)
     c0c:	00000000 	0x00000000
     c10:	0000060f 	0x0000060f
     c14:	000002a7 	0x000002a7
     c18:	02540111 	sltui	$r17,$r8,1280(0x500)
     c1c:	10000073 	addu16i.d	$r19,$r3,0
     c20:	00000000 	0x00000000
     c24:	00000680 	0x00000680
     c28:	000002c5 	0x000002c5
     c2c:	06540111 	0x06540111
     c30:	a2808011 	0xa2808011
     c34:	01117bff 	fscaleb.d	$f31,$f31,$f30
     c38:	00730255 	bstrins.w	$r21,$r18,0x13,0x0
     c3c:	00001200 	clo.w	$r0,$r16
     c40:	05c80000 	0x05c80000
     c44:	01110000 	fscaleb.d	$f0,$f0,$f0
     c48:	80110654 	0x80110654
     c4c:	7bffa280 	0x7bffa280
     c50:	01550111 	0x01550111
     c54:	56011131 	bl	80085264(0x4c60110) # 4c60d64 <_start-0x1739f29c>
     c58:	00003101 	revb.2h	$r1,$r8
     c5c:	0004b30d 	alsl.w	$r13,$r24,$r12,0x2
     c60:	016a0100 	0x016a0100
     c64:	00000006 	0x00000006
     c68:	00006800 	rdtime.d	$r0,$r0
     c6c:	6f9c0100 	bgeu	$r8,$r0,-25600(0x39c00) # ffffa86c <_RAM_DATA+0x7fff986c>
     c70:	0e000003 	0x0e000003
     c74:	6a010066 	bltu	$r3,$r6,-130816(0x20100) # fffe0d74 <_RAM_DATA+0x7ffdfd74>
     c78:	00811a01 	bstrins.d	$r1,$r16,0x1,0x6
     c7c:	09870000 	0x09870000
     c80:	09810000 	0x09810000
     c84:	710f0000 	vbitset.w	$vr0,$vr0,$vr0
     c88:	01000003 	0x01000003
     c8c:	4116016b 	beqz	$r11,2954752(0x2d1600) # 2d228c <_start-0x1bd2dd74>
     c90:	02000002 	slti	$r2,$r0,0
     c94:	00106091 	add.w	$r17,$r4,$r24
     c98:	0f000000 	0x0f000000
     c9c:	32000006 	0x32000006
     ca0:	11000003 	addu16i.d	$r3,$r0,16384(0x4000)
     ca4:	73025401 	0x73025401
     ca8:	00100000 	add.w	$r0,$r0,$r0
     cac:	80000000 	0x80000000
     cb0:	50000006 	b	1572864(0x180000) # 180cb0 <_start-0x1be7f350>
     cb4:	11000003 	addu16i.d	$r3,$r0,16384(0x4000)
     cb8:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
     cbc:	ffa08080 	0xffa08080
     cc0:	5501117b 	bl	99418384(0x5ed0110) # 5ed0dd0 <_start-0x1612f230>
     cc4:	00007302 	0x00007302
     cc8:	00000012 	0x00000012
     ccc:	0005c800 	alsl.w	$r0,$r0,$r18,0x4
     cd0:	54011100 	bl	67109136(0x4000110) # 4000de0 <_start-0x17fff220>
     cd4:	80801106 	0x80801106
     cd8:	117bffa0 	addu16i.d	$r0,$r29,24319(0x5eff)
     cdc:	31015501 	0x31015501
     ce0:	01560111 	0x01560111
     ce4:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
     ce8:	000004aa 	0x000004aa
     cec:	06015e01 	cacop	0x1,$r16,87(0x57)
     cf0:	00000000 	0x00000000
     cf4:	00000064 	0x00000064
     cf8:	04249c01 	csrrd	$r1,0x927
     cfc:	710f0000 	vbitset.w	$vr0,$vr0,$vr0
     d00:	01000003 	0x01000003
     d04:	411a0160 	beqz	$r11,72192(0x11a00) # 12704 <_start-0x1bfed8fc>
     d08:	02000002 	slti	$r2,$r0,0
     d0c:	07136091 	0x07136091
     d10:	01000005 	0x01000005
     d14:	81090167 	0x81090167
     d18:	a9000000 	0xa9000000
     d1c:	14000003 	lu12i.w	$r3,0
     d20:	00001000 	clo.w	$r0,$r0
     d24:	060f0000 	cacop	0x0,$r0,960(0x3c0)
     d28:	03bd0000 	ori	$r0,$r0,0xf40
     d2c:	01110000 	fscaleb.d	$f0,$f0,$f0
     d30:	00730254 	bstrins.w	$r20,$r18,0x13,0x0
     d34:	00001000 	clo.w	$r0,$r0
     d38:	06800000 	0x06800000
     d3c:	03db0000 	xori	$r0,$r0,0x6c0
     d40:	01110000 	fscaleb.d	$f0,$f0,$f0
     d44:	80110654 	0x80110654
     d48:	7bffa080 	0x7bffa080
     d4c:	02550111 	sltui	$r17,$r8,1344(0x540)
     d50:	10000073 	addu16i.d	$r19,$r3,0
     d54:	00000000 	0x00000000
     d58:	000005c8 	0x000005c8
     d5c:	000003fd 	0x000003fd
     d60:	06540111 	0x06540111
     d64:	a0808011 	0xa0808011
     d68:	01117bff 	fscaleb.d	$f31,$f31,$f30
     d6c:	11310155 	addu16i.d	$r21,$r10,19520(0x4c40)
     d70:	30015601 	0x30015601
     d74:	00001000 	clo.w	$r0,$r0
     d78:	06db0000 	0x06db0000
     d7c:	04100000 	csrrd	$r0,0x400
     d80:	01110000 	fscaleb.d	$f0,$f0,$f0
     d84:	003a0154 	0x003a0154
     d88:	00000012 	0x00000012
     d8c:	0006e800 	alsl.wu	$r0,$r0,$r26,0x2
     d90:	54011100 	bl	67109136(0x4000110) # 4000ea0 <_start-0x17fff160>
     d94:	00000305 	0x00000305
     d98:	00000000 	0x00000000
     d9c:	0004fd15 	alsl.w	$r21,$r8,$r31,0x2
     da0:	01560100 	0x01560100
     da4:	00008f09 	0x00008f09
     da8:	00000000 	0x00000000
     dac:	00001000 	clo.w	$r0,$r0
     db0:	559c0100 	bl	67214336(0x4019c00) # 401a9b0 <_start-0x17fe5650>
     db4:	16000004 	lu32i.d	$r4,0
     db8:	00726863 	bstrins.w	$r3,$r3,0x12,0x1a
     dbc:	0a015801 	0x0a015801
     dc0:	0000008f 	0x0000008f
     dc4:	000009b5 	0x000009b5
     dc8:	000009b3 	0x000009b3
     dcc:	04c30d00 	csrxchg	$r0,$r8,0x30c3
     dd0:	3a010000 	0x3a010000
     dd4:	00000601 	0x00000601
     dd8:	00480000 	0x00480000
     ddc:	9c010000 	0x9c010000
     de0:	000004a0 	0x000004a0
     de4:	00038117 	0x00038117
     de8:	013a0100 	0x013a0100
     dec:	0004a02b 	alsl.w	$r11,$r1,$r8,0x2
     df0:	17540100 	lu32i.d	$r0,-352248(0xaa008)
     df4:	0000039e 	0x0000039e
     df8:	3b013a01 	0x3b013a01
     dfc:	000000a0 	0x000000a0
     e00:	d5185501 	0xd5185501
     e04:	01000003 	0x01000003
     e08:	8f0a013c 	0x8f0a013c
     e0c:	d0000000 	0xd0000000
     e10:	c8000009 	0xc8000009
     e14:	00000009 	0x00000009
     e18:	01b60419 	0x01b60419
     e1c:	c41a0000 	0xc41a0000
     e20:	01000003 	0x01000003
     e24:	00e60af6 	bstrpick.d	$r22,$r23,0x26,0x2
     e28:	00000000 	0x00000000
     e2c:	00200000 	div.w	$r0,$r0,$r0
     e30:	9c010000 	0x9c010000
     e34:	000004f6 	0x000004f6
     e38:	0003811b 	0x0003811b
     e3c:	29f60100 	st.d	$r0,$r8,-640(0xd80)
     e40:	000004a0 	0x000004a0
     e44:	00000a10 	0x00000a10
     e48:	00000a08 	0x00000a08
     e4c:	0004031b 	alsl.w	$r27,$r24,$r0,0x1
     e50:	38f60100 	0x38f60100
     e54:	0000008f 	0x0000008f
     e58:	00000a4e 	0x00000a4e
     e5c:	00000a4a 	0x00000a4a
     e60:	0003ba1c 	0x0003ba1c
     e64:	0df80100 	0x0df80100
     e68:	000000da 	0x000000da
     e6c:	541a0000 	bl	6656(0x1a00) # 286c <_start-0x1bffd794>
     e70:	01000005 	0x01000005
     e74:	00da0cd3 	bstrpick.d	$r19,$r6,0x1a,0x3
     e78:	00000000 	0x00000000
     e7c:	00200000 	div.w	$r0,$r0,$r0
     e80:	9c010000 	0x9c010000
     e84:	00000546 	0x00000546
     e88:	0003811b 	0x0003811b
     e8c:	2dd30100 	0x2dd30100
     e90:	000004a0 	0x000004a0
     e94:	00000a77 	0x00000a77
     e98:	00000a6f 	0x00000a6f
     e9c:	0003e51b 	0x0003e51b
     ea0:	3cd30100 	0x3cd30100
     ea4:	0000008f 	0x0000008f
     ea8:	00000ab5 	0x00000ab5
     eac:	00000ab1 	0x00000ab1
     eb0:	0003ba1c 	0x0003ba1c
     eb4:	0dd50100 	0x0dd50100
     eb8:	000000da 	0x000000da
     ebc:	3f1a0000 	0x3f1a0000
     ec0:	01000003 	0x01000003
     ec4:	008f09b8 	bstrins.d	$r24,$r13,0xf,0x2
     ec8:	00000000 	0x00000000
     ecc:	00180000 	sra.w	$r0,$r0,$r0
     ed0:	9c010000 	0x9c010000
     ed4:	00000589 	0x00000589
     ed8:	0003811b 	0x0003811b
     edc:	28b80100 	ld.w	$r0,$r8,-512(0xe00)
     ee0:	000004a0 	0x000004a0
     ee4:	00000ada 	0x00000ada
     ee8:	00000ad6 	0x00000ad6
     eec:	0003d51d 	0x0003d51d
     ef0:	0aba0100 	0x0aba0100
     ef4:	0000008f 	0x0000008f
     ef8:	00000afd 	0x00000afd
     efc:	00000afb 	0x00000afb
     f00:	017c1e00 	0x017c1e00
     f04:	a8010000 	0xa8010000
     f08:	00149806 	and	$r6,$r0,$r6
     f0c:	0000141c 	clz.w	$r28,$r0
     f10:	c89c0100 	0xc89c0100
     f14:	1b000005 	pcalau12i	$r5,-524288(0x80000)
     f18:	00000381 	0x00000381
     f1c:	a022a801 	0xa022a801
     f20:	12000004 	addu16i.d	$r4,$r0,-32768(0x8000)
     f24:	1000000b 	addu16i.d	$r11,$r0,0
     f28:	1b00000b 	pcalau12i	$r11,-524288(0x80000)
     f2c:	00000185 	0x00000185
     f30:	8f31a801 	0x8f31a801
     f34:	27000000 	stptr.d	$r0,$r0,0
     f38:	2500000b 	stptr.w	$r11,$r0,0
     f3c:	0000000b 	0x0000000b
     f40:	0005461e 	alsl.w	$r30,$r16,$r17,0x3
     f44:	06720100 	0x06720100
     f48:	00000000 	0x00000000
     f4c:	0000002c 	0x0000002c
     f50:	060f9c01 	cacop	0x1,$r0,999(0x3e7)
     f54:	811f0000 	0x811f0000
     f58:	01000003 	0x01000003
     f5c:	04a02272 	csrxchg	$r18,$r19,0x2808
     f60:	54010000 	bl	256(0x100) # 1060 <_start-0x1bffefa0>
     f64:	00039e1b 	0x00039e1b
     f68:	31720100 	0x31720100
     f6c:	0000008f 	0x0000008f
     f70:	00000b42 	0x00000b42
     f74:	00000b3a 	0x00000b3a
     f78:	0003501f 	0x0003501f
     f7c:	4a720100 	bcnez	$fcc0,160256(0x27200) # 2817c <_start-0x1bfd7e84>
     f80:	0000010d 	0x0000010d
     f84:	1e005601 	pcaddu18i	$r1,688(0x2b0)
     f88:	00000359 	0x00000359
     f8c:	00065501 	alsl.wu	$r1,$r8,$r21,0x1
     f90:	3c000000 	0x3c000000
     f94:	01000000 	0x01000000
     f98:	0006349c 	alsl.wu	$r28,$r4,$r13,0x1
     f9c:	03711f00 	andi	$r0,$r24,0xc47
     fa0:	55010000 	bl	65792(0x10100) # 110a0 <_start-0x1bfeef60>
     fa4:	00063428 	alsl.wu	$r8,$r1,$r13,0x1
     fa8:	00540100 	0x00540100
     fac:	02410419 	sltui	$r25,$r0,65(0x41)
     fb0:	b01e0000 	0xb01e0000
     fb4:	01000003 	0x01000003
     fb8:	00000632 	0x00000632
     fbc:	004c0000 	0x004c0000
     fc0:	9c010000 	0x9c010000
     fc4:	00000680 	0x00000680
     fc8:	0003811f 	0x0003811f
     fcc:	1e320100 	pcaddu18i	$r0,102408(0x19008)
     fd0:	000004a0 	0x000004a0
     fd4:	d51d5401 	0xd51d5401
     fd8:	01000003 	0x01000003
     fdc:	008f0d35 	bstrins.d	$r21,$r9,0xf,0x3
     fe0:	0b7e0000 	0x0b7e0000
     fe4:	0b7c0000 	0x0b7c0000
     fe8:	64200000 	bge	$r0,$r0,8192(0x2000) # 2fe8 <_start-0x1bffd018>
     fec:	01007669 	0x01007669
     ff0:	00ac0e36 	bstrins.d	$r22,$r17,0x2c,0x3
     ff4:	00000000 	0x00000000
     ff8:	0003a61e 	0x0003a61e
     ffc:	06040100 	cacop	0x0,$r8,256(0x100)
    1000:	00000000 	0x00000000
    1004:	000000e8 	0x000000e8
    1008:	06db9c01 	0x06db9c01
    100c:	811f0000 	0x811f0000
    1010:	01000003 	0x01000003
    1014:	04a01e04 	csrxchg	$r4,$r16,0x2807
    1018:	54010000 	bl	256(0x100) # 1118 <_start-0x1bffeee8>
    101c:	0003711f 	0x0003711f
    1020:	37040100 	0x37040100
    1024:	00000634 	0x00000634
    1028:	d51d5501 	0xd51d5501
    102c:	01000003 	0x01000003
    1030:	008f0d07 	bstrins.d	$r7,$r8,0xf,0x3
    1034:	0b940000 	0x0b940000
    1038:	0b920000 	0x0b920000
    103c:	64210000 	bge	$r0,$r0,8448(0x2100) # 313c <_start-0x1bffcec4>
    1040:	01007669 	0x01007669
    1044:	00ac0e08 	bstrins.d	$r8,$r16,0x2c,0x3
    1048:	0bb20000 	0x0bb20000
    104c:	0ba80000 	0x0ba80000
    1050:	22000000 	ll.d	$r0,$r0,0
    1054:	00000507 	0x00000507
    1058:	00000507 	0x00000507
    105c:	09016701 	0x09016701
    1060:	00071423 	alsl.wu	$r3,$r1,$r5,0x3
    1064:	00071400 	alsl.wu	$r0,$r0,$r5,0x3
    1068:	0d0f0700 	0x0d0f0700
    106c:	00023a00 	0x00023a00
    1070:	bb000400 	0xbb000400
    1074:	04000004 	csrrd	$r4,0x0
    1078:	00019601 	0x00019601
    107c:	05a90c00 	0x05a90c00
    1080:	00560000 	0x00560000
    1084:	00d80000 	bstrpick.d	$r0,$r0,0x18,0x0
    1088:	00000000 	0x00000000
    108c:	0efc0000 	0x0efc0000
    1090:	01020000 	0x01020000
    1094:	00026906 	0x00026906
    1098:	08010200 	0x08010200
    109c:	00000267 	0x00000267
    10a0:	75050202 	xvssrln.hu.w	$xr2,$xr16,$xr0
    10a4:	02000002 	slti	$r2,$r0,0
    10a8:	01580702 	0x01580702
    10ac:	04020000 	csrrd	$r0,0x80
    10b0:	00010105 	0x00010105
    10b4:	01310300 	0x01310300
    10b8:	41020000 	beqz	$r0,66048(0x10200) # 112b8 <_start-0x1bfeed48>
    10bc:	00005419 	bitrev.d	$r25,$r0
    10c0:	07040200 	0x07040200
    10c4:	000000d4 	0x000000d4
    10c8:	fc050802 	0xfc050802
    10cc:	02000000 	slti	$r0,$r0,0
    10d0:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    10d4:	04040000 	csrrd	$r0,0x100
    10d8:	746e6905 	0x746e6905
    10dc:	07040200 	0x07040200
    10e0:	000000d9 	0x000000d9
    10e4:	00013303 	0x00013303
    10e8:	14200300 	lu12i.w	$r0,65560(0x10018)
    10ec:	00000048 	0x00000048
    10f0:	00062f03 	alsl.wu	$r3,$r24,$r11,0x1
    10f4:	17170400 	lu32i.d	$r0,-477152(0x8b820)
    10f8:	0000002c 	0x0000002c
    10fc:	00059803 	alsl.w	$r3,$r0,$r6,0x4
    1100:	161b0400 	lu32i.d	$r0,55328(0xd820)
    1104:	00000070 	0x00000070
    1108:	61040402 	blt	$r0,$r2,66564(0x10404) # 1150c <_start-0x1bfeeaf4>
    110c:	02000002 	slti	$r2,$r0,0
    1110:	02700601 	sltui	$r1,$r16,-1023(0xc01)
    1114:	9a050000 	0x9a050000
    1118:	04000002 	csrrd	$r2,0x0
    111c:	00771169 	bstrins.w	$r9,$r11,0x17,0x4
    1120:	14050000 	lu12i.w	$r0,10240(0x2800)
    1124:	04000001 	csrrd	$r1,0x0
    1128:	0077116b 	bstrins.w	$r11,$r11,0x17,0x4
    112c:	50050000 	b	1280(0x500) # 162c <_start-0x1bffe9d4>
    1130:	04000002 	csrrd	$r2,0x0
    1134:	00690c6d 	bstrins.w	$r13,$r3,0x9,0x3
    1138:	75060000 	0x75060000
    113c:	01000005 	0x01000005
    1140:	0000065c 	0x0000065c
    1144:	00500000 	0x00500000
    1148:	9c010000 	0x9c010000
    114c:	00000124 	0x00000124
    1150:	00058507 	alsl.w	$r7,$r8,$r1,0x4
    1154:	1d5c0100 	pcaddu12i	$r0,-335864(0xae008)
    1158:	0000008f 	0x0000008f
    115c:	00085401 	bytepick.w	$r1,$r0,$r21,0x0
    1160:	2c000000 	vld	$vr0,$r0,0
    1164:	09000000 	0x09000000
    1168:	00000654 	0x00000654
    116c:	8f106001 	0x8f106001
    1170:	fc000000 	0xfc000000
    1174:	fa00000b 	0xfa00000b
    1178:	0900000b 	0x0900000b
    117c:	00000678 	0x00000678
    1180:	8f106101 	0x8f106101
    1184:	15000000 	lu12i.w	$r0,-524288(0x80000)
    1188:	0f00000c 	0x0f00000c
    118c:	0000000c 	0x0000000c
    1190:	06190600 	cacop	0x0,$r16,1601(0x641)
    1194:	4d010000 	jirl	$r0,$r0,65792(0x10100)
    1198:	00000006 	0x00000006
    119c:	00005400 	bitrev.d	$r0,$r0
    11a0:	819c0100 	0x819c0100
    11a4:	0a000001 	0x0a000001
    11a8:	00636573 	bstrins.w	$r19,$r11,0x3,0x19
    11ac:	8f164d01 	0x8f164d01
    11b0:	46000000 	bnez	$r0,131072(0x20000) # 211b0 <_start-0x1bfdee50>
    11b4:	4000000c 	beqz	$r0,3145728(0x300000) # 3011b4 <_start-0x1bcfee4c>
    11b8:	0800000c 	0x0800000c
    11bc:	00000000 	0x00000000
    11c0:	00000030 	0x00000030
    11c4:	00065409 	alsl.wu	$r9,$r0,$r21,0x1
    11c8:	10510100 	addu16i.d	$r0,$r8,5184(0x1440)
    11cc:	0000008f 	0x0000008f
    11d0:	00000c76 	0x00000c76
    11d4:	00000c72 	0x00000c72
    11d8:	00067809 	alsl.wu	$r9,$r0,$r30,0x1
    11dc:	10520100 	addu16i.d	$r0,$r8,5248(0x1480)
    11e0:	0000008f 	0x0000008f
    11e4:	00000c9d 	0x00000c9d
    11e8:	00000c99 	0x00000c99
    11ec:	69060000 	bltu	$r0,$r0,67072(0x10600) # 117ec <_start-0x1bfee814>
    11f0:	01000006 	0x01000006
    11f4:	00000641 	0x00000641
    11f8:	00100000 	add.w	$r0,$r0,$r0
    11fc:	9c010000 	0x9c010000
    1200:	000001a6 	0x000001a6
    1204:	00060507 	alsl.wu	$r7,$r8,$r1,0x1
    1208:	1c410100 	pcaddu12i	$r0,133128(0x20808)
    120c:	0000008f 	0x0000008f
    1210:	0b005401 	0x0b005401
    1214:	00000659 	0x00000659
    1218:	c0063701 	0xc0063701
    121c:	0c1c0014 	0x0c1c0014
    1220:	01000000 	0x01000000
    1224:	06450b9c 	0x06450b9c
    1228:	30010000 	0x30010000
    122c:	0014b806 	and	$r6,$r0,$r14
    1230:	0000081c 	0x0000081c
    1234:	0b9c0100 	0x0b9c0100
    1238:	0000060b 	0x0000060b
    123c:	00062701 	alsl.wu	$r1,$r24,$r9,0x1
    1240:	0c000000 	0x0c000000
    1244:	01000000 	0x01000000
    1248:	06220b9c 	cacop	0x1c,$r28,-1918(0x882)
    124c:	1e010000 	pcaddu18i	$r0,2048(0x800)
    1250:	00000006 	0x00000006
    1254:	00000c00 	0x00000c00
    1258:	0b9c0100 	0x0b9c0100
    125c:	0000059f 	0x0000059f
    1260:	ac061501 	0xac061501
    1264:	0c1c0014 	0x0c1c0014
    1268:	01000000 	0x01000000
    126c:	058d0b9c 	0x058d0b9c
    1270:	0c010000 	0x0c010000
    1274:	00000006 	0x00000006
    1278:	00000c00 	0x00000c00
    127c:	0c9c0100 	xvfcmp.cune.s	$xr0,$xr8,$xr0
    1280:	00000635 	0x00000635
    1284:	83070401 	0x83070401
    1288:	00000000 	0x00000000
    128c:	0c000000 	0x0c000000
    1290:	01000000 	0x01000000
    1294:	61760d9c 	blt	$r12,$r28,95756(0x1760c) # 188a0 <_start-0x1bfe7760>
    1298:	0601006c 	cacop	0xc,$r3,64(0x40)
    129c:	00007012 	0x00007012
    12a0:	000cc000 	bytepick.d	$r0,$r0,$r16,0x1
    12a4:	000cbc00 	bytepick.d	$r0,$r0,$r15,0x1
    12a8:	6d000000 	bgeu	$r0,$r0,65536(0x10000) # 112a8 <_start-0x1bfeed58>
    12ac:	04000003 	csrrd	$r3,0x0
    12b0:	0005af00 	alsl.w	$r0,$r24,$r11,0x4
    12b4:	96010400 	0x96010400
    12b8:	0c000001 	0x0c000001
    12bc:	0000069e 	0x0000069e
    12c0:	00000056 	0x00000056
    12c4:	00000130 	0x00000130
    12c8:	00000000 	0x00000000
    12cc:	00001254 	clo.w	$r20,$r18
    12d0:	00071002 	alsl.wu	$r2,$r0,$r4,0x3
    12d4:	05390100 	0x05390100
    12d8:	000001af 	0x000001af
    12dc:	1c00164c 	pcaddu12i	$r12,178(0xb2)
    12e0:	00000250 	0x00000250
    12e4:	01af9c01 	0x01af9c01
    12e8:	66030000 	bge	$r0,$r0,-130304(0x20300) # fffe15e8 <_RAM_DATA+0x7ffe05e8>
    12ec:	0100746d 	0x0100746d
    12f0:	01b61839 	0x01b61839
    12f4:	0ce50000 	0x0ce50000
    12f8:	0cdf0000 	0x0cdf0000
    12fc:	05040000 	0x05040000
    1300:	3b010069 	0x3b010069
    1304:	0001af06 	0x0001af06
    1308:	000d1500 	bytepick.d	$r0,$r8,$r5,0x2
    130c:	000d1100 	bytepick.d	$r0,$r8,$r4,0x2
    1310:	00630500 	bstrins.w	$r0,$r8,0x3,0x1
    1314:	bc073c01 	0xbc073c01
    1318:	38000001 	ldx.b	$r1,$r0,$r0
    131c:	3400000d 	0x3400000d
    1320:	0500000d 	0x0500000d
    1324:	00677261 	bstrins.w	$r1,$r19,0x7,0x1c
    1328:	c8093d01 	0xc8093d01
    132c:	58000001 	beq	$r0,$r1,0 # 132c <_start-0x1bffecd4>
    1330:	5600000d 	bl	3538944(0x360000) # 361330 <_start-0x1bc9ecd0>
    1334:	0600000d 	cacop	0xd,$r0,0
    1338:	01007061 	0x01007061
    133c:	01ce083e 	0x01ce083e
    1340:	91030000 	0x91030000
    1344:	77057fbc 	0x77057fbc
    1348:	063f0100 	cacop	0x0,$r8,-64(0xfc0)
    134c:	000001af 	0x000001af
    1350:	00000d87 	0x00000d87
    1354:	00000d6b 	0x00000d6b
    1358:	00024a07 	0x00024a07
    135c:	01480100 	0x01480100
    1360:	1c001694 	pcaddu12i	$r20,180(0xb4)
    1364:	00185408 	sra.w	$r8,$r0,$r21
    1368:	0000281c 	cto.d	$r28,$r0
    136c:	0000d900 	0x0000d900
    1370:	00640500 	bstrins.w	$r0,$r8,0x4,0x1
    1374:	d0048d01 	0xd0048d01
    1378:	2e000001 	0x2e000001
    137c:	2a00000e 	ld.bu	$r14,$r0,0
    1380:	0000000e 	0x0000000e
    1384:	0016cc09 	andn	$r9,$r0,$r19
    1388:	0002d31c 	0x0002d31c
    138c:	16e00900 	lu32i.d	$r0,458824(0x70048)
    1390:	03351c00 	lu52i.d	$r0,$r0,-697(0xd47)
    1394:	fc0a0000 	0xfc0a0000
    1398:	d71c0016 	0xd71c0016
    139c:	03000001 	lu52i.d	$r1,$r0,0
    13a0:	0b000001 	0x0b000001
    13a4:	3a015601 	0x3a015601
    13a8:	0157010b 	0x0157010b
    13ac:	180a0030 	pcaddi	$r16,20481(0x5001)
    13b0:	d71c0017 	0xd71c0017
    13b4:	1b000001 	pcalau12i	$r1,-524288(0x80000)
    13b8:	0b000001 	0x0b000001
    13bc:	3a015601 	0x3a015601
    13c0:	0157010b 	0x0157010b
    13c4:	340a0031 	0x340a0031
    13c8:	d71c0017 	0xd71c0017
    13cc:	33000001 	0x33000001
    13d0:	0b000001 	0x0b000001
    13d4:	38015601 	0x38015601
    13d8:	0157010b 	0x0157010b
    13dc:	500a0030 	b	12585472(0xc00a00) # c01ddc <_start-0x1b3fe224>
    13e0:	d71c0017 	0xd71c0017
    13e4:	4b000001 	bceqz	$fcc0,458752(0x70000) # 713e4 <_start-0x1bf8ec1c>
    13e8:	0b000001 	0x0b000001
    13ec:	32015601 	0x32015601
    13f0:	0157010b 	0x0157010b
    13f4:	6c0a0030 	bgeu	$r1,$r16,2560(0xa00) # 1df4 <_start-0x1bffe20c>
    13f8:	d71c0017 	0xd71c0017
    13fc:	63000001 	blt	$r0,$r1,-65536(0x30000) # ffff13fc <_RAM_DATA+0x7fff03fc>
    1400:	0b000001 	0x0b000001
    1404:	40015601 	beqz	$r16,262484(0x40154) # 41558 <_start-0x1bfbeaa8>
    1408:	0157010b 	0x0157010b
    140c:	800a0030 	0x800a0030
    1410:	351c0017 	0x351c0017
    1414:	77000003 	0x77000003
    1418:	0b000001 	0x0b000001
    141c:	08025401 	0x08025401
    1420:	040a0025 	csrwr	$r5,0x280
    1424:	351c0018 	0x351c0018
    1428:	8b000003 	0x8b000003
    142c:	0b000001 	0x0b000001
    1430:	08025401 	0x08025401
    1434:	100a0025 	addu16i.d	$r5,$r1,640(0x280)
    1438:	351c0018 	0x351c0018
    143c:	9e000003 	0x9e000003
    1440:	0b000001 	0x0b000001
    1444:	3d015401 	0x3d015401
    1448:	183c0c00 	pcaddi	$r0,122976(0x1e060)
    144c:	03351c00 	lu52i.d	$r0,$r0,-697(0xd47)
    1450:	010b0000 	fmin.d	$f0,$f0,$f0
    1454:	00880254 	bstrins.d	$r20,$r18,0x8,0x0
    1458:	040d0000 	csrrd	$r0,0x340
    145c:	746e6905 	0x746e6905
    1460:	bc040e00 	0xbc040e00
    1464:	0f000001 	0x0f000001
    1468:	02700601 	sltui	$r1,$r16,-1023(0xc01)
    146c:	bc100000 	0xbc100000
    1470:	0e000001 	0x0e000001
    1474:	0001ce04 	0x0001ce04
    1478:	0f041100 	0x0f041100
    147c:	00d90704 	bstrpick.d	$r4,$r24,0x19,0x1
    1480:	80020000 	0x80020000
    1484:	01000006 	0x01000006
    1488:	01af0520 	0x01af0520
    148c:	155c0000 	lu12i.w	$r0,-335872(0xae000)
    1490:	00f01c00 	bstrpick.d	$r0,$r0,0x30,0x7
    1494:	9c010000 	0x9c010000
    1498:	000002b5 	0x000002b5
    149c:	01007603 	0x01007603
    14a0:	02b51820 	addi.w	$r0,$r1,-698(0xd46)
    14a4:	0e560000 	0x0e560000
    14a8:	0e4c0000 	0x0e4c0000
    14ac:	77030000 	0x77030000
    14b0:	1e200100 	pcaddu18i	$r0,65544(0x10008)
    14b4:	000001af 	0x000001af
    14b8:	00000ea8 	0x00000ea8
    14bc:	00000e9e 	0x00000e9e
    14c0:	00068912 	alsl.wu	$r18,$r8,$r2,0x2
    14c4:	24200100 	ldptr.w	$r0,$r8,8192(0x2000)
    14c8:	000001af 	0x000001af
    14cc:	00000ef4 	0x00000ef4
    14d0:	00000eea 	0x00000eea
    14d4:	0002bc12 	0x0002bc12
    14d8:	2d200100 	0x2d200100
    14dc:	000001af 	0x000001af
    14e0:	00000f3e 	0x00000f3e
    14e4:	00000f36 	0x00000f36
    14e8:	01006905 	0x01006905
    14ec:	01af0922 	0x01af0922
    14f0:	0f7c0000 	0x0f7c0000
    14f4:	0f780000 	0x0f780000
    14f8:	6a050000 	bltu	$r0,$r0,-129792(0x20500) # fffe19f8 <_RAM_DATA+0x7ffe09f8>
    14fc:	0b220100 	0x0b220100
    1500:	000001af 	0x000001af
    1504:	00000f9c 	0x00000f9c
    1508:	00000f9a 	0x00000f9a
    150c:	01006305 	0x01006305
    1510:	01af0923 	0x01af0923
    1514:	0fb30000 	0x0fb30000
    1518:	0faf0000 	0x0faf0000
    151c:	62060000 	blt	$r0,$r0,-129536(0x20600) # fffe1b1c <_RAM_DATA+0x7ffe0b1c>
    1520:	01006675 	0x01006675
    1524:	02bc0a24 	addi.w	$r4,$r17,-254(0xf02)
    1528:	91030000 	0x91030000
    152c:	3c137fa0 	0x3c137fa0
    1530:	01000001 	0x01000001
    1534:	02cc1325 	addi.d	$r5,$r25,772(0x304)
    1538:	0fe30000 	0x0fe30000
    153c:	0fdf0000 	0x0fdf0000
    1540:	cc0a0000 	0xcc0a0000
    1544:	351c0015 	0x351c0015
    1548:	ab000003 	0xab000003
    154c:	0b000002 	0x0b000002
    1550:	08025401 	0x08025401
    1554:	f809002d 	0xf809002d
    1558:	351c0015 	0x351c0015
    155c:	00000003 	0x00000003
    1560:	0105040f 	fmul.d	$f15,$f0,$f1
    1564:	14000001 	lu12i.w	$r1,0
    1568:	000001bc 	0x000001bc
    156c:	000002cc 	0x000002cc
    1570:	0001d015 	0x0001d015
    1574:	0f003f00 	0x0f003f00
    1578:	00d40704 	bstrpick.d	$r4,$r24,0x14,0x1
    157c:	f9020000 	0xf9020000
    1580:	01000006 	0x01000006
    1584:	01af0515 	0x01af0515
    1588:	15040000 	lu12i.w	$r0,-516096(0x82000)
    158c:	00581c00 	0x00581c00
    1590:	9c010000 	0x9c010000
    1594:	00000335 	0x00000335
    1598:	01007303 	0x01007303
    159c:	01b61415 	0x01b61415
    15a0:	10050000 	addu16i.d	$r0,$r0,320(0x140)
    15a4:	10010000 	addu16i.d	$r0,$r0,64(0x40)
    15a8:	63050000 	blt	$r0,$r0,-64256(0x30500) # ffff1aa8 <_RAM_DATA+0x7fff0aa8>
    15ac:	07160100 	0x07160100
    15b0:	000001bc 	0x000001bc
    15b4:	00001029 	clo.w	$r9,$r1
    15b8:	00001023 	clo.w	$r3,$r1
    15bc:	0015240a 	or	$r10,$r0,$r9
    15c0:	0003351c 	0x0003351c
    15c4:	00032400 	0x00032400
    15c8:	54010b00 	bl	-67108600(0xc000108) # fc0016d0 <_RAM_DATA+0x7c0006d0>
    15cc:	0c003d01 	0x0c003d01
    15d0:	1c00152c 	pcaddu12i	$r12,169(0xa9)
    15d4:	00000335 	0x00000335
    15d8:	0254010b 	sltui	$r11,$r8,1280(0x500)
    15dc:	00000087 	0x00000087
    15e0:	00070216 	alsl.wu	$r22,$r16,$r0,0x3
    15e4:	060c0100 	cacop	0x0,$r8,768(0x300)
    15e8:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
    15ec:	00000038 	0x00000038
    15f0:	03699c01 	andi	$r1,$r0,0xa67
    15f4:	63170000 	blt	$r0,$r0,-59648(0x31700) # ffff2cf4 <_RAM_DATA+0x7fff1cf4>
    15f8:	01007268 	0x01007268
    15fc:	0369220c 	andi	$r12,$r16,0xa48
    1600:	54010000 	bl	256(0x100) # 1700 <_start-0x1bffe900>
    1604:	00068e18 	alsl.wu	$r24,$r16,$r3,0x2
    1608:	100d0100 	addu16i.d	$r0,$r8,832(0x340)
    160c:	000001c3 	0x000001c3
    1610:	007f9102 	bstrpick.w	$r2,$r8,0x1f,0x4
    1614:	6708010f 	bge	$r8,$r15,-63488(0x30800) # ffff1e14 <_RAM_DATA+0x7fff0e14>
    1618:	00000002 	0x00000002
    161c:	0000031d 	0x0000031d
    1620:	070d0004 	0x070d0004
    1624:	01040000 	0x01040000
    1628:	00000196 	0x00000196
    162c:	00079b0c 	alsl.wu	$r12,$r24,$r6,0x4
    1630:	00005600 	bitrev.d	$r0,$r16
    1634:	00015800 	asrtle.d	$r0,$r22
    1638:	00000000 	0x00000000
    163c:	00161800 	orn	$r0,$r0,$r6
    1640:	06010200 	cacop	0x0,$r16,64(0x40)
    1644:	00000269 	0x00000269
    1648:	67080102 	bge	$r8,$r2,-63488(0x30800) # ffff1e48 <_RAM_DATA+0x7fff0e48>
    164c:	03000002 	lu52i.d	$r2,$r0,0
    1650:	0000002c 	0x0000002c
    1654:	75050202 	xvssrln.hu.w	$xr2,$xr16,$xr0
    1658:	02000002 	slti	$r2,$r0,0
    165c:	01580702 	0x01580702
    1660:	04020000 	csrrd	$r0,0x80
    1664:	00010105 	0x00010105
    1668:	07040200 	0x07040200
    166c:	000000d4 	0x000000d4
    1670:	fc050802 	0xfc050802
    1674:	02000000 	slti	$r0,$r0,0
    1678:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    167c:	04040000 	csrrd	$r0,0x100
    1680:	746e6905 	0x746e6905
    1684:	07040200 	0x07040200
    1688:	000000d9 	0x000000d9
    168c:	00006903 	rdtime.d	$r3,$r8
    1690:	02c00500 	addi.d	$r0,$r8,1(0x1)
    1694:	0212090f 	slti	$r15,$r8,1154(0x482)
    1698:	f4060000 	0xf4060000
    169c:	02000007 	slti	$r7,$r0,0
    16a0:	00701b11 	bstrins.w	$r17,$r24,0x10,0x6
    16a4:	06000000 	cacop	0x0,$r0,0
    16a8:	00000779 	0x00000779
    16ac:	701b1202 	0x701b1202
    16b0:	04000000 	csrrd	$r0,0x0
    16b4:	00080f06 	bytepick.w	$r6,$r24,$r3,0x0
    16b8:	1b130200 	pcalau12i	$r0,-485360(0x89810)
    16bc:	00000070 	0x00000070
    16c0:	0c6e0608 	0x0c6e0608
    16c4:	14020000 	lu12i.w	$r0,4096(0x1000)
    16c8:	0000701b 	0x0000701b
    16cc:	1d060c00 	pcaddu12i	$r0,-511904(0x83060)
    16d0:	02000007 	slti	$r7,$r0,0
    16d4:	00701b15 	bstrins.w	$r21,$r24,0x10,0x6
    16d8:	06100000 	cacop	0x0,$r0,1024(0x400)
    16dc:	00000724 	0x00000724
    16e0:	701b1602 	0x701b1602
    16e4:	14000000 	lu12i.w	$r0,0
    16e8:	00072b06 	alsl.wu	$r6,$r24,$r10,0x3
    16ec:	1b170200 	pcalau12i	$r0,-477168(0x8b810)
    16f0:	00000070 	0x00000070
    16f4:	07320618 	0x07320618
    16f8:	18020000 	pcaddi	$r0,4096(0x1000)
    16fc:	0000701b 	0x0000701b
    1700:	57061c00 	bl	198172(0x3061c) # 31d1c <_start-0x1bfce2e4>
    1704:	02000007 	slti	$r7,$r0,0
    1708:	00701b19 	bstrins.w	$r25,$r24,0x10,0x6
    170c:	06200000 	cacop	0x0,$r0,-2048(0x800)
    1710:	00000864 	0x00000864
    1714:	701b1a02 	0x701b1a02
    1718:	24000000 	ldptr.w	$r0,$r0,0
    171c:	00080506 	bytepick.w	$r6,$r8,$r1,0x0
    1720:	1b1b0200 	pcalau12i	$r0,-468976(0x8d810)
    1724:	00000070 	0x00000070
    1728:	07800628 	0x07800628
    172c:	1c020000 	pcaddu12i	$r0,4096(0x1000)
    1730:	0000701b 	0x0000701b
    1734:	67062c00 	bge	$r0,$r0,-63956(0x3062c) # ffff1d60 <_RAM_DATA+0x7fff0d60>
    1738:	02000007 	slti	$r7,$r0,0
    173c:	00701b1d 	bstrins.w	$r29,$r24,0x10,0x6
    1740:	06300000 	cacop	0x0,$r0,-1024(0xc00)
    1744:	00000880 	0x00000880
    1748:	701b1e02 	0x701b1e02
    174c:	34000000 	0x34000000
    1750:	00079206 	alsl.wu	$r6,$r16,$r4,0x4
    1754:	1b1f0200 	pcalau12i	$r0,-460784(0x8f810)
    1758:	00000070 	0x00000070
    175c:	08560638 	fmsub.s	$f24,$f17,$f1,$f12
    1760:	20020000 	ll.w	$r0,$r0,512(0x200)
    1764:	0000701b 	0x0000701b
    1768:	89063c00 	0x89063c00
    176c:	02000007 	slti	$r7,$r0,0
    1770:	00701b21 	bstrins.w	$r1,$r25,0x10,0x6
    1774:	06400000 	lddir	$r0,$r0,0x0
    1778:	00000834 	0x00000834
    177c:	701b2202 	0x701b2202
    1780:	44000000 	bnez	$r0,0 # 1780 <_start-0x1bffe880>
    1784:	00075f06 	alsl.wu	$r6,$r24,$r23,0x3
    1788:	1b230200 	pcalau12i	$r0,-452592(0x91810)
    178c:	00000070 	0x00000070
    1790:	07400648 	0x07400648
    1794:	24020000 	ldptr.w	$r0,$r0,512(0x200)
    1798:	0000701b 	0x0000701b
    179c:	2b064c00 	fld.s	$f0,$r0,403(0x193)
    17a0:	02000008 	slti	$r8,$r0,0
    17a4:	00701b25 	bstrins.w	$r5,$r25,0x10,0x6
    17a8:	06500000 	0x06500000
    17ac:	0000074f 	0x0000074f
    17b0:	701b2602 	0x701b2602
    17b4:	54000000 	bl	0 # 17b4 <_start-0x1bffe84c>
    17b8:	0007fd06 	alsl.wu	$r6,$r8,$r31,0x4
    17bc:	1b270200 	pcalau12i	$r0,-444400(0x93810)
    17c0:	00000070 	0x00000070
    17c4:	07450658 	0x07450658
    17c8:	28020000 	ld.b	$r0,$r0,128(0x80)
    17cc:	0000701b 	0x0000701b
    17d0:	1d065c00 	pcaddu12i	$r0,-511264(0x832e0)
    17d4:	02000008 	slti	$r8,$r0,0
    17d8:	00701b29 	bstrins.w	$r9,$r25,0x10,0x6
    17dc:	06600000 	0x06600000
    17e0:	00000824 	0x00000824
    17e4:	701b2a02 	0x701b2a02
    17e8:	64000000 	bge	$r0,$r0,0 # 17e8 <_start-0x1bffe818>
    17ec:	00083c06 	bytepick.w	$r6,$r0,$r15,0x0
    17f0:	1b2b0200 	pcalau12i	$r0,-436208(0x95810)
    17f4:	00000070 	0x00000070
    17f8:	08150668 	fmadd.s	$f8,$f19,$f1,$f10
    17fc:	2c020000 	vld	$vr0,$r0,128(0x80)
    1800:	0000701b 	0x0000701b
    1804:	39066c00 	0x39066c00
    1808:	02000007 	slti	$r7,$r0,0
    180c:	00701b2d 	bstrins.w	$r13,$r25,0x10,0x6
    1810:	06700000 	0x06700000
    1814:	0000074a 	0x0000074a
    1818:	221b2e02 	ll.d	$r2,$r16,6956(0x1b2c)
    181c:	74000002 	xvseq.b	$xr2,$xr0,$xr0
    1820:	00084e06 	bytepick.w	$r6,$r16,$r19,0x0
    1824:	1c2f0200 	pcaddu12i	$r0,96272(0x17810)
    1828:	00000237 	0x00000237
    182c:	70070080 	vslt.w	$vr0,$vr4,$vr0
    1830:	22000000 	ll.d	$r0,$r0,0
    1834:	08000002 	0x08000002
    1838:	00000069 	0x00000069
    183c:	12030002 	addu16i.d	$r2,$r0,-32576(0x80c0)
    1840:	07000002 	0x07000002
    1844:	00000033 	0x00000033
    1848:	00000237 	0x00000237
    184c:	00006908 	rdtime.d	$r8,$r8
    1850:	03003f00 	lu52i.d	$r0,$r24,15(0xf)
    1854:	00000227 	0x00000227
    1858:	00086d09 	bytepick.w	$r9,$r8,$r27,0x0
    185c:	03300200 	lu52i.d	$r0,$r16,-1024(0xc00)
    1860:	00000075 	0x00000075
    1864:	0008760a 	bytepick.w	$r10,$r16,$r29,0x0
    1868:	053f0100 	0x053f0100
    186c:	00000062 	0x00000062
    1870:	00000000 	0x00000000
    1874:	00000058 	0x00000058
    1878:	028b9c01 	addi.w	$r1,$r0,743(0x2e7)
    187c:	5f0b0000 	bne	$r0,$r0,-62720(0x30b00) # ffff237c <_RAM_DATA+0x7fff137c>
    1880:	01000008 	0x01000008
    1884:	0062133f 	bstrins.w	$r31,$r25,0x2,0x4
    1888:	105b0000 	addu16i.d	$r0,$r0,5824(0x16c0)
    188c:	10530000 	addu16i.d	$r0,$r0,5312(0x14c0)
    1890:	620c0000 	blt	$r0,$r0,-128000(0x20c00) # fffe2490 <_RAM_DATA+0x7ffe1490>
    1894:	01007469 	0x01007469
    1898:	00620940 	bstrins.w	$r0,$r10,0x2,0x2
    189c:	109d0000 	addu16i.d	$r0,$r0,10048(0x2740)
    18a0:	10950000 	addu16i.d	$r0,$r0,9536(0x2540)
    18a4:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
    18a8:	0000076e 	0x0000076e
    18ac:	9c062c01 	0x9c062c01
    18b0:	841c0018 	0x841c0018
    18b4:	01000000 	0x01000000
    18b8:	0002d89c 	0x0002d89c
    18bc:	085f0b00 	fmsub.s	$f0,$f24,$f2,$f30
    18c0:	2c010000 	vld	$vr0,$r0,64(0x40)
    18c4:	00006215 	rdtimel.w	$r21,$r16
    18c8:	0010ea00 	add.d	$r0,$r16,$r26
    18cc:	0010dc00 	add.d	$r0,$r0,$r23
    18d0:	61760e00 	blt	$r16,$r0,95756(0x1760c) # 18edc <_start-0x1bfe7124>
    18d4:	2c01006c 	vld	$vr12,$r3,64(0x40)
    18d8:	0000621f 	rdtimel.w	$r31,$r16
    18dc:	0c550100 	vfcmp.cult.s	$vr0,$vr8,$vr0
    18e0:	00746962 	bstrins.w	$r2,$r11,0x14,0x1a
    18e4:	62092d01 	blt	$r8,$r1,-128724(0x2092c) # fffe2210 <_RAM_DATA+0x7ffe1210>
    18e8:	5a000000 	beq	$r0,$r0,-131072(0x20000) # fffe18e8 <_RAM_DATA+0x7ffe08e8>
    18ec:	4a000011 	bceqz	$fcc0,-3801088(0x460000) # ffc618ec <_RAM_DATA+0x7fc608ec>
    18f0:	00000011 	0x00000011
    18f4:	0008440f 	bytepick.w	$r15,$r0,$r17,0x0
    18f8:	06180100 	cacop	0x0,$r8,1536(0x600)
    18fc:	00000000 	0x00000000
    1900:	00000084 	0x00000084
    1904:	5f0b9c01 	bne	$r0,$r1,-62564(0x30b9c) # ffff24a0 <_RAM_DATA+0x7fff14a0>
    1908:	01000008 	0x01000008
    190c:	00621418 	bstrins.w	$r24,$r0,0x2,0x5
    1910:	11da0000 	addu16i.d	$r0,$r0,30336(0x7680)
    1914:	11cc0000 	addu16i.d	$r0,$r0,29440(0x7300)
    1918:	690e0000 	bltu	$r0,$r0,69120(0x10e00) # 12718 <_start-0x1bfed8e8>
    191c:	1801006f 	pcaddi	$r15,2051(0x803)
    1920:	0000621e 	rdtimel.w	$r30,$r16
    1924:	0c550100 	vfcmp.cult.s	$vr0,$vr8,$vr0
    1928:	00746962 	bstrins.w	$r2,$r11,0x14,0x1a
    192c:	62091901 	blt	$r8,$r1,-128744(0x20918) # fffe2244 <_RAM_DATA+0x7ffe1244>
    1930:	4a000000 	bceqz	$fcc0,131072(0x20000) # 21930 <_start-0x1bfde6d0>
    1934:	3a000012 	0x3a000012
    1938:	00000012 	0x00000012
    193c:	0000ef00 	0x0000ef00
    1940:	0c000400 	0x0c000400
    1944:	04000008 	csrrd	$r8,0x0
    1948:	00019601 	0x00019601
    194c:	08990c00 	fnmadd.s	$f0,$f0,$f3,$f18
    1950:	00560000 	0x00560000
    1954:	01780000 	0x01780000
    1958:	00000000 	0x00000000
    195c:	18060000 	pcaddi	$r0,12288(0x3000)
    1960:	01020000 	0x01020000
    1964:	00026906 	0x00026906
    1968:	08010200 	0x08010200
    196c:	00000267 	0x00000267
    1970:	00002c03 	ctz.d	$r3,$r0
    1974:	05020200 	0x05020200
    1978:	00000275 	0x00000275
    197c:	58070202 	beq	$r16,$r2,1792(0x700) # 207c <_start-0x1bffdf84>
    1980:	02000001 	slti	$r1,$r0,0
    1984:	01010504 	fadd.d	$f4,$f8,$f1
    1988:	04020000 	csrrd	$r0,0x80
    198c:	0000d407 	0x0000d407
    1990:	05080200 	0x05080200
    1994:	000000fc 	0x000000fc
    1998:	cf070802 	0xcf070802
    199c:	04000000 	csrrd	$r0,0x0
    19a0:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe82a4 <_RAM_DATA+0x7ffe72a4>
    19a4:	04020074 	csrxchg	$r20,$r3,0x80
    19a8:	0000d907 	0x0000d907
    19ac:	02070500 	slti	$r0,$r8,449(0x1c1)
    19b0:	00d4094a 	bstrpick.d	$r10,$r10,0x14,0x2
    19b4:	65060000 	bge	$r0,$r0,67072(0x10600) # 11fb4 <_start-0x1bfee04c>
    19b8:	4c02006e 	jirl	$r14,$r3,512(0x200)
    19bc:	0000331c 	revb.2h	$r28,$r24
    19c0:	f2070000 	0xf2070000
    19c4:	02000008 	slti	$r8,$r0,0
    19c8:	00331c4d 	0x00331c4d
    19cc:	06010000 	cacop	0x0,$r0,64(0x40)
    19d0:	006c6f70 	bstrins.w	$r16,$r27,0xc,0x1b
    19d4:	331c4e02 	xvstelm.d	$xr2,$r16,152(0x98),0x3
    19d8:	02000000 	slti	$r0,$r0,0
    19dc:	726c6306 	0x726c6306
    19e0:	1c4f0200 	pcaddu12i	$r0,161808(0x27810)
    19e4:	00000033 	0x00000033
    19e8:	65730603 	bge	$r16,$r3,94980(0x17304) # 18cec <_start-0x1bfe7314>
    19ec:	50020074 	b	30409216(0x1d00200) # 1d01bec <_start-0x1a2fe414>
    19f0:	0000331c 	revb.2h	$r28,$r24
    19f4:	6f060400 	bgeu	$r0,$r0,-63996(0x30604) # ffff1ff8 <_RAM_DATA+0x7fff0ff8>
    19f8:	02007475 	slti	$r21,$r3,29(0x1d)
    19fc:	00331c51 	0x00331c51
    1a00:	07050000 	0x07050000
    1a04:	00000888 	0x00000888
    1a08:	331c5202 	xvstelm.d	$xr2,$r16,160(0xa0),0x3
    1a0c:	06000000 	cacop	0x0,$r0,0
    1a10:	088f0800 	0x088f0800
    1a14:	53020000 	b	197120(0x30200) # 31c14 <_start-0x1bfce3ec>
    1a18:	00007003 	0x00007003
    1a1c:	08f70900 	0x08f70900
    1a20:	0b010000 	0x0b010000
    1a24:	00192006 	srl.d	$r6,$r0,$r8
    1a28:	0000181c 	cto.w	$r28,$r0
    1a2c:	009c0100 	bstrins.d	$r0,$r8,0x1c,0x0
    1a30:	000003ba 	0x000003ba
    1a34:	08950004 	fnmadd.s	$f4,$f0,$f0,$f10
    1a38:	01040000 	0x01040000
    1a3c:	00000196 	0x00000196
    1a40:	0009bf0c 	bytepick.w	$r12,$r24,$r15,0x3
    1a44:	00005600 	bitrev.d	$r0,$r16
    1a48:	00018800 	asrtgt.d	$r0,$r2
    1a4c:	00000000 	0x00000000
    1a50:	0018ac00 	sll.d	$r0,$r0,$r11
    1a54:	06010200 	cacop	0x0,$r16,64(0x40)
    1a58:	00000269 	0x00000269
    1a5c:	67080102 	bge	$r8,$r2,-63488(0x30800) # ffff225c <_RAM_DATA+0x7fff125c>
    1a60:	02000002 	slti	$r2,$r0,0
    1a64:	02750502 	sltui	$r2,$r8,-703(0xd41)
    1a68:	02020000 	slti	$r0,$r0,128(0x80)
    1a6c:	00015807 	0x00015807
    1a70:	05040200 	0x05040200
    1a74:	00000101 	0x00000101
    1a78:	00013103 	0x00013103
    1a7c:	19410200 	pcaddi	$r0,-391152(0xa0810)
    1a80:	00000054 	0x00000054
    1a84:	d4070402 	0xd4070402
    1a88:	02000000 	slti	$r0,$r0,0
    1a8c:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
    1a90:	08020000 	0x08020000
    1a94:	0000cf07 	0x0000cf07
    1a98:	05040400 	0x05040400
    1a9c:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
    1aa0:	d9070402 	0xd9070402
    1aa4:	03000000 	lu52i.d	$r0,$r0,0
    1aa8:	00000133 	0x00000133
    1aac:	48142003 	bceqz	$fcc0,791584(0xc1420) # c2ecc <_start-0x1bf3d134>
    1ab0:	03000000 	lu52i.d	$r0,$r0,0
    1ab4:	00000598 	0x00000598
    1ab8:	70161b04 	0x70161b04
    1abc:	02000000 	slti	$r0,$r0,0
    1ac0:	02610404 	sltui	$r4,$r0,-1983(0x841)
    1ac4:	07050000 	0x07050000
    1ac8:	00007004 	0x00007004
    1acc:	0e310400 	0x0e310400
    1ad0:	000000b1 	0x000000b1
    1ad4:	00049106 	alsl.w	$r6,$r8,$r4,0x2
    1ad8:	53070000 	b	198400(0x30700) # 321d8 <_start-0x1bfcde28>
    1adc:	01005445 	0x01005445
    1ae0:	0a3a0300 	0x0a3a0300
    1ae4:	31040000 	0x31040000
    1ae8:	00009628 	0x00009628
    1aec:	0a800300 	0x0a800300
    1af0:	31040000 	0x31040000
    1af4:	00009634 	0x00009634
    1af8:	04070500 	csrxchg	$r0,$r8,0x1c1
    1afc:	00000070 	0x00000070
    1b00:	e40e3304 	0xe40e3304
    1b04:	06000000 	cacop	0x0,$r0,0
    1b08:	00000369 	0x00000369
    1b0c:	03970600 	ori	$r0,$r16,0x5c1
    1b10:	00010000 	asrtle.d	$r0,$r0
    1b14:	00046a03 	alsl.w	$r3,$r16,$r26,0x1
    1b18:	2f330400 	0x2f330400
    1b1c:	000000c9 	0x000000c9
    1b20:	70060102 	vslt.b	$vr2,$vr8,$vr0
    1b24:	08000002 	0x08000002
    1b28:	0000029a 	0x0000029a
    1b2c:	77116904 	xvbitclri.d	$xr4,$xr8,0x1a
    1b30:	08000000 	0x08000000
    1b34:	00000114 	0x00000114
    1b38:	77116b04 	xvbitclri.d	$xr4,$xr24,0x1a
    1b3c:	08000000 	0x08000000
    1b40:	00000250 	0x00000250
    1b44:	690c6d04 	bltu	$r8,$r4,68716(0x10c6c) # 127b0 <_start-0x1bfed850>
    1b48:	09000000 	0x09000000
    1b4c:	01120510 	0x01120510
    1b50:	00015e09 	0x00015e09
    1b54:	09360a00 	0x09360a00
    1b58:	14050000 	lu12i.w	$r0,10240(0x2800)
    1b5c:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b60:	0a000000 	0x0a000000
    1b64:	00000a61 	0x00000a61
    1b68:	0c011505 	0x0c011505
    1b6c:	00000077 	0x00000077
    1b70:	09110a04 	vfmadd.s	$vr4,$vr16,$vr2,$vr2
    1b74:	16050000 	lu32i.d	$r0,10240(0x2800)
    1b78:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b7c:	0a080000 	0x0a080000
    1b80:	0000097c 	0x0000097c
    1b84:	0c011705 	0x0c011705
    1b88:	00000077 	0x00000077
    1b8c:	3f0b000c 	0x3f0b000c
    1b90:	05000009 	0x05000009
    1b94:	1b030118 	pcalau12i	$r24,-518136(0x81808)
    1b98:	05000001 	0x05000001
    1b9c:	00700407 	bstrins.w	$r7,$r0,0x10,0x1
    1ba0:	07060000 	0x07060000
    1ba4:	00018601 	0x00018601
    1ba8:	0aa00600 	xvfnmadd.d	$xr0,$xr16,$xr1,$xr0
    1bac:	06000000 	cacop	0x0,$r0,0
    1bb0:	0000094c 	0x0000094c
    1bb4:	ae030001 	0xae030001
    1bb8:	06000009 	cacop	0x9,$r0,0
    1bbc:	016b020a 	0x016b020a
    1bc0:	07050000 	0x07050000
    1bc4:	00007004 	0x00007004
    1bc8:	01130600 	fcopysign.d	$f0,$f16,$f1
    1bcc:	000001ad 	0x000001ad
    1bd0:	000ab006 	0x000ab006
    1bd4:	86060100 	0x86060100
    1bd8:	00000009 	0x00000009
    1bdc:	0ac90300 	0x0ac90300
    1be0:	16060000 	lu32i.d	$r0,12288(0x3000)
    1be4:	00019202 	0x00019202
    1be8:	06100c00 	cacop	0x0,$r0,1027(0x403)
    1bec:	01f7091e 	0x01f7091e
    1bf0:	280d0000 	ld.b	$r0,$r0,832(0x340)
    1bf4:	0600000a 	cacop	0xa,$r0,0
    1bf8:	00830a20 	bstrins.d	$r0,$r17,0x3,0x2
    1bfc:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
    1c00:	00000907 	0x00000907
    1c04:	86142306 	0x86142306
    1c08:	04000001 	csrrd	$r1,0x0
    1c0c:	0009290d 	bytepick.w	$r13,$r8,$r10,0x2
    1c10:	17260600 	lu32i.d	$r0,-446416(0x93030)
    1c14:	000001ad 	0x000001ad
    1c18:	0a6b0d08 	xvfmsub.d	$xr8,$xr8,$xr3,$xr22
    1c1c:	29060000 	st.b	$r0,$r0,384(0x180)
    1c20:	0000e413 	0x0000e413
    1c24:	03000c00 	lu52i.d	$r0,$r0,3(0x3)
    1c28:	0000095b 	0x0000095b
    1c2c:	b9022b06 	0xb9022b06
    1c30:	0e000001 	0x0e000001
    1c34:	00000a89 	0x00000a89
    1c38:	38067101 	0x38067101
    1c3c:	101c0019 	addu16i.d	$r25,$r0,1792(0x700)
    1c40:	01000000 	0x01000000
    1c44:	00023c9c 	0x00023c9c
    1c48:	0a190f00 	xvfmadd.s	$xr0,$xr24,$xr3,$xr18
    1c4c:	71010000 	vssrlrn.h.w	$vr0,$vr0,$vr0
    1c50:	00023c2b 	0x00023c2b
    1c54:	10540100 	addu16i.d	$r0,$r8,5376(0x1500)
    1c58:	00000a28 	0x00000a28
    1c5c:	83387101 	0x83387101
    1c60:	c0000000 	0xc0000000
    1c64:	bc000012 	0xbc000012
    1c68:	00000012 	0x00000012
    1c6c:	015e0411 	0x015e0411
    1c70:	78120000 	0x78120000
    1c74:	0100000a 	0x0100000a
    1c78:	00bd0a5d 	bstrins.d	$r29,$r18,0x3d,0x2
    1c7c:	00000000 	0x00000000
    1c80:	00300000 	0x00300000
    1c84:	9c010000 	0x9c010000
    1c88:	000002a7 	0x000002a7
    1c8c:	000a1910 	0x000a1910
    1c90:	295d0100 	st.h	$r0,$r8,1856(0x740)
    1c94:	0000023c 	0x0000023c
    1c98:	000012ed 	clo.w	$r13,$r23
    1c9c:	000012e1 	clo.w	$r1,$r23
    1ca0:	000a280f 	0x000a280f
    1ca4:	365d0100 	0x365d0100
    1ca8:	00000083 	0x00000083
    1cac:	ba135501 	0xba135501
    1cb0:	01000003 	0x01000003
    1cb4:	00bd0c5f 	bstrins.d	$r31,$r2,0x3d,0x3
    1cb8:	13440000 	addu16i.d	$r0,$r0,-12032(0xd100)
    1cbc:	13400000 	addu16i.d	$r0,$r0,-12288(0xd000)
    1cc0:	1c130000 	pcaddu12i	$r0,38912(0x9800)
    1cc4:	01000009 	0x01000009
    1cc8:	00830a60 	bstrins.d	$r0,$r19,0x3,0x2
    1ccc:	13680000 	addu16i.d	$r0,$r0,-9728(0xda00)
    1cd0:	13640000 	addu16i.d	$r0,$r0,-9984(0xd900)
    1cd4:	0e000000 	0x0e000000
    1cd8:	0000099f 	0x0000099f
    1cdc:	00065501 	alsl.wu	$r1,$r8,$r21,0x1
    1ce0:	10000000 	addu16i.d	$r0,$r0,0
    1ce4:	01000000 	0x01000000
    1ce8:	0002e09c 	0x0002e09c
    1cec:	0a190f00 	xvfmadd.s	$xr0,$xr24,$xr3,$xr18
    1cf0:	55010000 	bl	65792(0x10100) # 11df0 <_start-0x1bfee210>
    1cf4:	00023c23 	0x00023c23
    1cf8:	10540100 	addu16i.d	$r0,$r8,5376(0x1500)
    1cfc:	00000a28 	0x00000a28
    1d00:	83305501 	0x83305501
    1d04:	8b000000 	0x8b000000
    1d08:	87000013 	0x87000013
    1d0c:	00000013 	0x00000013
    1d10:	000a3212 	0x000a3212
    1d14:	0c440100 	0x0c440100
    1d18:	000000b1 	0x000000b1
    1d1c:	00000000 	0x00000000
    1d20:	00000014 	0x00000014
    1d24:	03319c01 	lu52i.d	$r1,$r0,-921(0xc67)
    1d28:	19100000 	pcaddi	$r0,-491520(0x88000)
    1d2c:	0100000a 	0x0100000a
    1d30:	023c2d44 	slti	$r4,$r10,-245(0xf0b)
    1d34:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
    1d38:	13ac0000 	addu16i.d	$r0,$r0,-5376(0xeb00)
    1d3c:	280f0000 	ld.b	$r0,$r0,960(0x3c0)
    1d40:	0100000a 	0x0100000a
    1d44:	00833a44 	bstrins.d	$r4,$r18,0x3,0xe
    1d48:	55010000 	bl	65792(0x10100) # 11e48 <_start-0x1bfee1b8>
    1d4c:	0003ba13 	0x0003ba13
    1d50:	0e460100 	0x0e460100
    1d54:	000000b1 	0x000000b1
    1d58:	000013d5 	clo.w	$r21,$r30
    1d5c:	000013d1 	clo.w	$r17,$r30
    1d60:	0a510e00 	xvfmsub.s	$xr0,$xr16,$xr3,$xr2
    1d64:	3c010000 	0x3c010000
    1d68:	00000006 	0x00000006
    1d6c:	00001800 	cto.w	$r0,$r0
    1d70:	569c0100 	bl	67279872(0x4029c00) # 402b970 <_start-0x17fd4690>
    1d74:	0f000003 	0x0f000003
    1d78:	0000096c 	0x0000096c
    1d7c:	56283c01 	bl	403516(0x6283c) # 645b8 <_start-0x1bf9ba48>
    1d80:	01000003 	0x01000003
    1d84:	04110054 	csrxchg	$r20,$r2,0x440
    1d88:	000001f7 	0x000001f7
    1d8c:	000a1e0e 	0x000a1e0e
    1d90:	060d0100 	cacop	0x0,$r8,832(0x340)
    1d94:	00000000 	0x00000000
    1d98:	000000d0 	0x000000d0
    1d9c:	039c9c01 	ori	$r1,$r0,0x727
    1da0:	190f0000 	pcaddi	$r0,-493568(0x87800)
    1da4:	0100000a 	0x0100000a
    1da8:	023c1e0d 	slti	$r13,$r16,-249(0xf07)
    1dac:	54010000 	bl	256(0x100) # 1eac <_start-0x1bffe154>
    1db0:	00096c0f 	bytepick.w	$r15,$r0,$r27,0x2
    1db4:	360d0100 	0x360d0100
    1db8:	00000356 	0x00000356
    1dbc:	74145501 	0x74145501
    1dc0:	0100706d 	0x0100706d
    1dc4:	00830a0f 	bstrins.d	$r15,$r16,0x3,0x2
    1dc8:	00000000 	0x00000000
    1dcc:	000a4515 	0x000a4515
    1dd0:	06050100 	cacop	0x0,$r8,320(0x140)
    1dd4:	00000000 	0x00000000
    1dd8:	00000014 	0x00000014
    1ddc:	190f9c01 	pcaddi	$r1,-492320(0x87ce0)
    1de0:	0100000a 	0x0100000a
    1de4:	023c2005 	slti	$r5,$r0,-248(0xf08)
    1de8:	54010000 	bl	256(0x100) # 1ee8 <_start-0x1bffe118>
    1dec:	02a40000 	addi.w	$r0,$r0,-1792(0x900)
    1df0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1df4:	000009fc 	0x000009fc
    1df8:	01960104 	0x01960104
    1dfc:	0b0c0000 	0x0b0c0000
    1e00:	5600000b 	bl	3014656(0x2e0000) # 2e1e00 <_start-0x1bd1e200>
    1e04:	c8000000 	0xc8000000
    1e08:	00000001 	0x00000001
    1e0c:	44000000 	bnez	$r0,0 # 1e0c <_start-0x1bffe1f4>
    1e10:	0200001c 	slti	$r28,$r0,0
    1e14:	02690601 	sltui	$r1,$r16,-1471(0xa41)
    1e18:	01020000 	0x01020000
    1e1c:	00026708 	0x00026708
    1e20:	05020200 	0x05020200
    1e24:	00000275 	0x00000275
    1e28:	58070202 	beq	$r16,$r2,1792(0x700) # 2528 <_start-0x1bffdad8>
    1e2c:	02000001 	slti	$r1,$r0,0
    1e30:	01010504 	fadd.d	$f4,$f8,$f1
    1e34:	31030000 	0x31030000
    1e38:	02000001 	slti	$r1,$r0,0
    1e3c:	00541941 	0x00541941
    1e40:	04020000 	csrrd	$r0,0x80
    1e44:	0000d407 	0x0000d407
    1e48:	05080200 	0x05080200
    1e4c:	000000fc 	0x000000fc
    1e50:	cf070802 	0xcf070802
    1e54:	04000000 	csrrd	$r0,0x0
    1e58:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe875c <_RAM_DATA+0x7ffe775c>
    1e5c:	04020074 	csrxchg	$r20,$r3,0x80
    1e60:	0000d907 	0x0000d907
    1e64:	01330300 	0x01330300
    1e68:	20030000 	ll.w	$r0,$r0,768(0x300)
    1e6c:	00004814 	bitrev.4b	$r20,$r0
    1e70:	00770500 	bstrins.w	$r0,$r8,0x17,0x1
    1e74:	04020000 	csrrd	$r0,0x80
    1e78:	00026104 	0x00026104
    1e7c:	06010200 	cacop	0x0,$r16,64(0x40)
    1e80:	00000270 	0x00000270
    1e84:	00029a06 	0x00029a06
    1e88:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    1e8c:	00000077 	0x00000077
    1e90:	00011406 	0x00011406
    1e94:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    1e98:	00000077 	0x00000077
    1e9c:	00025006 	0x00025006
    1ea0:	0c6d0400 	0x0c6d0400
    1ea4:	00000069 	0x00000069
    1ea8:	2d057407 	0x2d057407
    1eac:	00023d09 	0x00023d09
    1eb0:	0b6a0800 	0x0b6a0800
    1eb4:	2f050000 	0x2f050000
    1eb8:	00008315 	0x00008315
    1ebc:	e6080000 	0xe6080000
    1ec0:	0500000a 	0x0500000a
    1ec4:	00831530 	bstrins.d	$r16,$r9,0x3,0x5
    1ec8:	08040000 	0x08040000
    1ecc:	00000b64 	0x00000b64
    1ed0:	83153105 	0x83153105
    1ed4:	08000000 	0x08000000
    1ed8:	000aed08 	0x000aed08
    1edc:	15320500 	lu12i.w	$r0,-421848(0x99028)
    1ee0:	00000083 	0x00000083
    1ee4:	071d080c 	0x071d080c
    1ee8:	33050000 	0x33050000
    1eec:	00008315 	0x00008315
    1ef0:	24081000 	ldptr.w	$r0,$r0,2064(0x810)
    1ef4:	05000007 	0x05000007
    1ef8:	00831534 	bstrins.d	$r20,$r9,0x3,0x5
    1efc:	08140000 	fmadd.s	$f0,$f0,$f0,$f8
    1f00:	0000072b 	0x0000072b
    1f04:	83153505 	0x83153505
    1f08:	18000000 	pcaddi	$r0,0
    1f0c:	00073208 	alsl.wu	$r8,$r16,$r12,0x3
    1f10:	15360500 	lu12i.w	$r0,-413656(0x9b028)
    1f14:	00000083 	0x00000083
    1f18:	0be1081c 	0x0be1081c
    1f1c:	37050000 	0x37050000
    1f20:	00008315 	0x00008315
    1f24:	61082000 	blt	$r0,$r0,67616(0x10820) # 12744 <_start-0x1bfed8bc>
    1f28:	0500000a 	0x0500000a
    1f2c:	00831538 	bstrins.d	$r24,$r9,0x3,0x5
    1f30:	08240000 	fmadd.d	$f0,$f0,$f0,$f8
    1f34:	00000911 	0x00000911
    1f38:	83153905 	0x83153905
    1f3c:	28000000 	ld.b	$r0,$r0,0
    1f40:	00097c08 	bytepick.w	$r8,$r0,$r31,0x2
    1f44:	153a0500 	lu12i.w	$r0,-405464(0x9d028)
    1f48:	00000083 	0x00000083
    1f4c:	0bd9082c 	0x0bd9082c
    1f50:	3b050000 	0x3b050000
    1f54:	00008315 	0x00008315
    1f58:	dd083000 	0xdd083000
    1f5c:	0500000a 	0x0500000a
    1f60:	0083153c 	bstrins.d	$r28,$r9,0x3,0x5
    1f64:	08340000 	0x08340000
    1f68:	00000b73 	0x00000b73
    1f6c:	83153d05 	0x83153d05
    1f70:	38000000 	ldx.b	$r0,$r0,$r0
    1f74:	000b8708 	0x000b8708
    1f78:	153e0500 	lu12i.w	$r0,-397272(0x9f028)
    1f7c:	00000083 	0x00000083
    1f80:	0789083c 	0x0789083c
    1f84:	3f050000 	0x3f050000
    1f88:	00008315 	0x00008315
    1f8c:	34084000 	0x34084000
    1f90:	05000008 	0x05000008
    1f94:	00831540 	bstrins.d	$r0,$r10,0x3,0x5
    1f98:	08440000 	0x08440000
    1f9c:	0000075f 	0x0000075f
    1fa0:	83154105 	0x83154105
    1fa4:	48000000 	bceqz	$fcc0,0 # 1fa4 <_start-0x1bffe05c>
    1fa8:	000b9508 	0x000b9508
    1fac:	15420500 	lu12i.w	$r0,-389080(0xa1028)
    1fb0:	00000083 	0x00000083
    1fb4:	082b084c 	fmadd.d	$f12,$f2,$f2,$f22
    1fb8:	43050000 	beqz	$r0,197888(0x30500) # 324b8 <_start-0x1bfcdb48>
    1fbc:	00008315 	0x00008315
    1fc0:	4f085000 	jirl	$r0,$r0,-63408(0x30850)
    1fc4:	05000007 	0x05000007
    1fc8:	00831544 	bstrins.d	$r4,$r10,0x3,0x5
    1fcc:	08540000 	fmsub.s	$f0,$f0,$f0,$f8
    1fd0:	000007fd 	0x000007fd
    1fd4:	83154505 	0x83154505
    1fd8:	58000000 	beq	$r0,$r0,0 # 1fd8 <_start-0x1bffe028>
    1fdc:	000b9f08 	0x000b9f08
    1fe0:	15460500 	lu12i.w	$r0,-380888(0xa3028)
    1fe4:	00000083 	0x00000083
    1fe8:	0afd085c 	0x0afd085c
    1fec:	47050000 	bnez	$r0,197888(0x30500) # 324ec <_start-0x1bfcdb14>
    1ff0:	00008315 	0x00008315
    1ff4:	04086000 	csrrd	$r0,0x218
    1ff8:	0500000b 	0x0500000b
    1ffc:	00831548 	bstrins.d	$r8,$r10,0x3,0x5
    2000:	08640000 	fmsub.d	$f0,$f0,$f0,$f8
    2004:	00000b7d 	0x00000b7d
    2008:	83154905 	0x83154905
    200c:	68000000 	bltu	$r0,$r0,0 # 200c <_start-0x1bffdff4>
    2010:	000b8c08 	0x000b8c08
    2014:	154a0500 	lu12i.w	$r0,-372696(0xa5028)
    2018:	00000083 	0x00000083
    201c:	0af5086c 	0x0af5086c
    2020:	4b050000 	bceqz	$fcc0,197888(0x30500) # 32520 <_start-0x1bfcdae0>
    2024:	00008315 	0x00008315
    2028:	03007000 	lu52i.d	$r0,$r0,28(0x1c)
    202c:	00000ba9 	0x00000ba9
    2030:	ba034c05 	0xba034c05
    2034:	09000000 	0x09000000
    2038:	00000bd1 	0x00000bd1
    203c:	00061101 	alsl.wu	$r1,$r8,$r4,0x1
    2040:	20000000 	ll.w	$r0,$r0,0
    2044:	01000000 	0x01000000
    2048:	0002749c 	0x0002749c
    204c:	00000a00 	0x00000a00
    2050:	02860000 	addi.w	$r0,$r0,384(0x180)
    2054:	010b0000 	fmin.d	$f0,$f0,$f0
    2058:	ff110654 	0xff110654
    205c:	788081ff 	0x788081ff
    2060:	c50c0000 	0xc50c0000
    2064:	0100000b 	0x0100000b
    2068:	1948060b 	pcaddi	$r11,-376784(0xa4030)
    206c:	00141c00 	nor	$r0,$r0,$r7
    2070:	9c010000 	0x9c010000
    2074:	000bb50d 	0x000bb50d
    2078:	06050100 	cacop	0x0,$r8,320(0x140)
    207c:	00000000 	0x00000000
    2080:	00000024 	0x00000024
    2084:	540e9c01 	bl	265884(0x40e9c) # 42f20 <_start-0x1bfbd0e0>
    2088:	01000006 	0x01000006
    208c:	00771f05 	bstrins.w	$r5,$r24,0x17,0x7
    2090:	54010000 	bl	256(0x100) # 2190 <_start-0x1bffde70>
    2094:	03290000 	lu52i.d	$r0,$r0,-1472(0xa40)
    2098:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    209c:	00000ae7 	0x00000ae7
    20a0:	01960104 	0x01960104
    20a4:	b90c0000 	0xb90c0000
    20a8:	5600000c 	bl	3276800(0x320000) # 3220a8 <_start-0x1bcddf58>
    20ac:	e8000000 	0xe8000000
    20b0:	00000001 	0x00000001
    20b4:	aa000000 	0xaa000000
    20b8:	0200001e 	slti	$r30,$r0,0
    20bc:	02690601 	sltui	$r1,$r16,-1471(0xa41)
    20c0:	01020000 	0x01020000
    20c4:	00026708 	0x00026708
    20c8:	05020200 	0x05020200
    20cc:	00000275 	0x00000275
    20d0:	58070202 	beq	$r16,$r2,1792(0x700) # 27d0 <_start-0x1bffd830>
    20d4:	02000001 	slti	$r1,$r0,0
    20d8:	01010504 	fadd.d	$f4,$f8,$f1
    20dc:	31030000 	0x31030000
    20e0:	02000001 	slti	$r1,$r0,0
    20e4:	00541941 	0x00541941
    20e8:	04020000 	csrrd	$r0,0x80
    20ec:	0000d407 	0x0000d407
    20f0:	05080200 	0x05080200
    20f4:	000000fc 	0x000000fc
    20f8:	cf070802 	0xcf070802
    20fc:	04000000 	csrrd	$r0,0x0
    2100:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe8a04 <_RAM_DATA+0x7ffe7a04>
    2104:	04020074 	csrxchg	$r20,$r3,0x80
    2108:	0000d907 	0x0000d907
    210c:	01330300 	0x01330300
    2110:	20030000 	ll.w	$r0,$r0,768(0x300)
    2114:	00004814 	bitrev.4b	$r20,$r0
    2118:	04040200 	csrxchg	$r0,$r16,0x100
    211c:	00000261 	0x00000261
    2120:	70040705 	vsle.bu	$vr5,$vr24,$vr1
    2124:	04000000 	csrrd	$r0,0x0
    2128:	00a50e31 	bstrins.d	$r17,$r17,0x25,0x3
    212c:	91060000 	0x91060000
    2130:	00000004 	0x00000004
    2134:	54455307 	bl	-65256112(0xc1c4550) # fc1c6684 <_RAM_DATA+0x7c1c5684>
    2138:	03000100 	lu52i.d	$r0,$r8,0
    213c:	00000a3a 	0x00000a3a
    2140:	8a283104 	0x8a283104
    2144:	03000000 	lu52i.d	$r0,$r0,0
    2148:	00000a80 	0x00000a80
    214c:	8a343104 	0x8a343104
    2150:	05000000 	0x05000000
    2154:	00700407 	bstrins.w	$r7,$r0,0x10,0x1
    2158:	33040000 	0x33040000
    215c:	0000d80e 	0x0000d80e
    2160:	03690600 	andi	$r0,$r16,0xa41
    2164:	06000000 	cacop	0x0,$r0,0
    2168:	00000397 	0x00000397
    216c:	6a030001 	bltu	$r0,$r1,-130304(0x20300) # fffe246c <_RAM_DATA+0x7ffe146c>
    2170:	04000004 	csrrd	$r4,0x0
    2174:	00bd2f33 	bstrins.d	$r19,$r25,0x3d,0xb
    2178:	01020000 	0x01020000
    217c:	00027006 	0x00027006
    2180:	029a0800 	addi.w	$r0,$r0,1666(0x682)
    2184:	69040000 	bltu	$r0,$r0,66560(0x10400) # 12584 <_start-0x1bfeda7c>
    2188:	00007711 	0x00007711
    218c:	01140800 	fabs.d	$f0,$f0
    2190:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff2590 <_RAM_DATA+0x7fff1590>
    2194:	00007711 	0x00007711
    2198:	02500800 	sltui	$r0,$r0,1026(0x402)
    219c:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 1259c <_start-0x1bfeda64>
    21a0:	0000690c 	rdtime.d	$r12,$r8
    21a4:	051c0900 	0x051c0900
    21a8:	0174090f 	0x0174090f
    21ac:	da0a0000 	0xda0a0000
    21b0:	05000003 	0x05000003
    21b4:	00770c11 	bstrins.w	$r17,$r0,0x17,0x3
    21b8:	0a000000 	0x0a000000
    21bc:	00000beb 	0x00000beb
    21c0:	770c1305 	0x770c1305
    21c4:	04000000 	csrrd	$r0,0x0
    21c8:	000c190a 	bytepick.d	$r10,$r8,$r6,0x0
    21cc:	0c170500 	fcmp.cule.s	$fcc0,$f8,$f1
    21d0:	00000077 	0x00000077
    21d4:	0c4f0a08 	0x0c4f0a08
    21d8:	19050000 	pcaddi	$r0,-514048(0x82800)
    21dc:	0000770c 	0x0000770c
    21e0:	9e0a0c00 	0x9e0a0c00
    21e4:	0500000c 	0x0500000c
    21e8:	00770c1b 	bstrins.w	$r27,$r0,0x17,0x3
    21ec:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    21f0:	00000c22 	0x00000c22
    21f4:	770c1e05 	0x770c1e05
    21f8:	14000000 	lu12i.w	$r0,0
    21fc:	000c3c0a 	bytepick.d	$r10,$r0,$r15,0x0
    2200:	0c210500 	fcmp.clt.d	$fcc0,$f8,$f1
    2204:	00000077 	0x00000077
    2208:	09030018 	0x09030018
    220c:	0500000c 	0x0500000c
    2210:	010f0323 	fmina.d	$f3,$f25,$f0
    2214:	fd0b0000 	0xfd0b0000
    2218:	0100000b 	0x0100000b
    221c:	197406ae 	pcaddi	$r14,-286667(0xba035)
    2220:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
    2224:	9c010000 	0x9c010000
    2228:	000001ab 	0x000001ab
    222c:	000c850c 	bytepick.d	$r12,$r8,$r1,0x1
    2230:	1bae0100 	pcalau12i	$r0,-167928(0xd7008)
    2234:	00000077 	0x00000077
    2238:	000013f9 	clo.w	$r25,$r31
    223c:	000013f5 	clo.w	$r21,$r31
    2240:	0c8e0d00 	0x0c8e0d00
    2244:	99010000 	0x99010000
    2248:	0000a50c 	0x0000a50c
    224c:	00195c00 	srl.d	$r0,$r0,$r23
    2250:	0000181c 	cto.w	$r28,$r0
    2254:	ee9c0100 	0xee9c0100
    2258:	0c000001 	0x0c000001
    225c:	00000c85 	0x00000c85
    2260:	77259901 	xvsat.d	$xr1,$xr8,0x26
    2264:	1e000000 	pcaddu18i	$r0,0
    2268:	1a000014 	pcalau12i	$r20,0
    226c:	0e000014 	0x0e000014
    2270:	000003ba 	0x000003ba
    2274:	b10c9b01 	0xb10c9b01
    2278:	43000000 	beqz	$r0,196608(0x30000) # 32278 <_start-0x1bfcdd88>
    227c:	3f000014 	0x3f000014
    2280:	00000014 	0x00000014
    2284:	000c670d 	bytepick.d	$r13,$r24,$r25,0x0
    2288:	0a850100 	0x0a850100
    228c:	00000077 	0x00000077
    2290:	00000000 	0x00000000
    2294:	00000010 	0x00000010
    2298:	021d9c01 	slti	$r1,$r0,1895(0x767)
    229c:	d50e0000 	0xd50e0000
    22a0:	01000003 	0x01000003
    22a4:	00770b87 	bstrins.w	$r7,$r28,0x17,0x2
    22a8:	14670000 	lu12i.w	$r0,210944(0x33800)
    22ac:	14630000 	lu12i.w	$r0,202752(0x31800)
    22b0:	0b000000 	0x0b000000
    22b4:	00000d19 	0x00000d19
    22b8:	00067801 	alsl.wu	$r1,$r0,$r30,0x1
    22bc:	10000000 	addu16i.d	$r0,$r0,0
    22c0:	01000000 	0x01000000
    22c4:	0002429c 	0x0002429c
    22c8:	0c6e0f00 	0x0c6e0f00
    22cc:	78010000 	0x78010000
    22d0:	0000771e 	0x0000771e
    22d4:	00540100 	0x00540100
    22d8:	000c2d0b 	bytepick.d	$r11,$r8,$r11,0x0
    22dc:	066a0100 	0x066a0100
    22e0:	00000000 	0x00000000
    22e4:	00000010 	0x00000010
    22e8:	02679c01 	sltui	$r1,$r0,-1561(0x9e7)
    22ec:	2f0f0000 	0x2f0f0000
    22f0:	0100000d 	0x0100000d
    22f4:	00771e6a 	bstrins.w	$r10,$r19,0x17,0x7
    22f8:	54010000 	bl	256(0x100) # 23f8 <_start-0x1bffdc08>
    22fc:	0d280d00 	xvbitsel.v	$xr0,$xr8,$xr3,$xr16
    2300:	5a010000 	beq	$r0,$r0,-130816(0x20100) # fffe2400 <_RAM_DATA+0x7ffe1400>
    2304:	0000770a 	0x0000770a
    2308:	00000000 	0x00000000
    230c:	00001000 	clo.w	$r0,$r0
    2310:	969c0100 	0x969c0100
    2314:	0e000002 	0x0e000002
    2318:	000003d5 	0x000003d5
    231c:	770b5c01 	0x770b5c01
    2320:	8a000000 	0x8a000000
    2324:	86000014 	0x86000014
    2328:	00000014 	0x00000014
    232c:	000cac0b 	bytepick.d	$r11,$r0,$r11,0x1
    2330:	06440100 	ldpte	$r8,0x0
    2334:	00000000 	0x00000000
    2338:	00000050 	0x00000050
    233c:	02bb9c01 	addi.w	$r1,$r0,-281(0xee7)
    2340:	500f0000 	b	3840(0xf00) # 3240 <_start-0x1bffcdc0>
    2344:	01000003 	0x01000003
    2348:	00d82344 	bstrpick.d	$r4,$r26,0x18,0x8
    234c:	54010000 	bl	256(0x100) # 244c <_start-0x1bffdbb4>
    2350:	0c470b00 	0x0c470b00
    2354:	36010000 	0x36010000
    2358:	00000006 	0x00000006
    235c:	00002c00 	ctz.d	$r0,$r0
    2360:	e09c0100 	0xe09c0100
    2364:	0f000002 	0x0f000002
    2368:	00000350 	0x00000350
    236c:	d81e3601 	0xd81e3601
    2370:	01000000 	0x01000000
    2374:	760b0054 	0x760b0054
    2378:	0100000c 	0x0100000c
    237c:	00000622 	0x00000622
    2380:	00440000 	0x00440000
    2384:	9c010000 	0x9c010000
    2388:	00000305 	0x00000305
    238c:	000c580f 	bytepick.d	$r15,$r0,$r22,0x0
    2390:	26220100 	ldptr.d	$r0,$r8,8704(0x2200)
    2394:	00000305 	0x00000305
    2398:	10005401 	addu16i.d	$r1,$r0,21(0x15)
    239c:	00017404 	0x00017404
    23a0:	0bf41100 	0x0bf41100
    23a4:	0d010000 	fsel	$f0,$f0,$f0,$fcc2
    23a8:	00000006 	0x00000006
    23ac:	00007c00 	0x00007c00
    23b0:	0f9c0100 	0x0f9c0100
    23b4:	00000c58 	0x00000c58
    23b8:	05200d01 	0x05200d01
    23bc:	01000003 	0x01000003
    23c0:	31000054 	0x31000054
    23c4:	0400000a 	csrrd	$r10,0x0
    23c8:	000c0e00 	bytepick.d	$r0,$r16,$r3,0x0
    23cc:	96010400 	0x96010400
    23d0:	0c000001 	0x0c000001
    23d4:	00000d53 	0x00000d53
    23d8:	00000056 	0x00000056
    23dc:	00000240 	0x00000240
    23e0:	00000000 	0x00000000
    23e4:	0000228f 	clo.d	$r15,$r20
    23e8:	69060102 	bltu	$r8,$r2,67072(0x10600) # 129e8 <_start-0x1bfed618>
    23ec:	03000002 	lu52i.d	$r2,$r0,0
    23f0:	000000c5 	0x000000c5
    23f4:	38181d02 	stx.w	$r2,$r8,$r7
    23f8:	02000000 	slti	$r0,$r0,0
    23fc:	02670801 	sltui	$r1,$r0,-1598(0x9c2)
    2400:	02020000 	slti	$r0,$r0,128(0x80)
    2404:	00027505 	0x00027505
    2408:	07020200 	0x07020200
    240c:	00000158 	0x00000158
    2410:	000e2a03 	bytepick.d	$r3,$r16,$r10,0x4
    2414:	183f0200 	pcaddi	$r0,129040(0x1f810)
    2418:	00000059 	0x00000059
    241c:	01050402 	fmul.d	$f2,$f0,$f1
    2420:	03000001 	lu52i.d	$r1,$r0,0
    2424:	00000131 	0x00000131
    2428:	6c194102 	bgeu	$r8,$r2,6464(0x1940) # 3d68 <_start-0x1bffc298>
    242c:	02000000 	slti	$r0,$r0,0
    2430:	00d40704 	bstrpick.d	$r4,$r24,0x14,0x1
    2434:	08020000 	0x08020000
    2438:	0000fc05 	0x0000fc05
    243c:	07080200 	0x07080200
    2440:	000000cf 	0x000000cf
    2444:	69050404 	bltu	$r0,$r4,66820(0x10504) # 12948 <_start-0x1bfed6b8>
    2448:	0500746e 	0x0500746e
    244c:	00000081 	0x00000081
    2450:	d9070402 	0xd9070402
    2454:	03000000 	lu52i.d	$r0,$r0,0
    2458:	000000c7 	0x000000c7
    245c:	2c131403 	vld	$vr3,$r0,1221(0x4c5)
    2460:	03000000 	lu52i.d	$r0,$r0,0
    2464:	00000e2c 	0x00000e2c
    2468:	4d131f03 	jirl	$r3,$r24,70428(0x1131c)
    246c:	03000000 	lu52i.d	$r0,$r0,0
    2470:	00000133 	0x00000133
    2474:	60142003 	blt	$r0,$r3,5152(0x1420) # 3894 <_start-0x1bffc76c>
    2478:	02000000 	slti	$r0,$r0,0
    247c:	02610404 	sltui	$r4,$r0,-1983(0x841)
    2480:	01020000 	0x01020000
    2484:	00027006 	0x00027006
    2488:	00bf0600 	bstrins.d	$r0,$r16,0x3f,0x1
    248c:	9a070000 	0x9a070000
    2490:	04000002 	csrrd	$r2,0x0
    2494:	00ac1169 	bstrins.d	$r9,$r11,0x2c,0x4
    2498:	14070000 	lu12i.w	$r0,14336(0x3800)
    249c:	04000001 	csrrd	$r1,0x0
    24a0:	00ac116b 	bstrins.d	$r11,$r11,0x2c,0x4
    24a4:	50070000 	b	1792(0x700) # 2ba4 <_start-0x1bffd45c>
    24a8:	04000002 	csrrd	$r2,0x0
    24ac:	00810c6d 	bstrins.d	$r13,$r3,0x1,0x3
    24b0:	0d080000 	0x0d080000
    24b4:	1000000e 	addu16i.d	$r14,$r0,0
    24b8:	310f2e01 	0x310f2e01
    24bc:	09000001 	0x09000001
    24c0:	00000dd8 	0x00000dd8
    24c4:	310e2f01 	0x310e2f01
    24c8:	00000001 	0x00000001
    24cc:	000de809 	bytepick.d	$r9,$r0,$r26,0x3
    24d0:	08300100 	0x08300100
    24d4:	00000153 	0x00000153
    24d8:	0d470904 	0x0d470904
    24dc:	31010000 	0x31010000
    24e0:	0001310e 	0x0001310e
    24e4:	1f090800 	pcaddu18i	$r0,-505792(0x84840)
    24e8:	0100000e 	0x0100000e
    24ec:	01310e32 	0x01310e32
    24f0:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
    24f4:	00c6040a 	bstrpick.d	$r10,$r0,0x6,0x1
    24f8:	810b0000 	0x810b0000
    24fc:	4b000000 	bceqz	$fcc0,196608(0x30000) # 324fc <_start-0x1bfcdb04>
    2500:	0c000001 	0x0c000001
    2504:	00000081 	0x00000081
    2508:	00014b0c 	0x00014b0c
    250c:	040a0000 	csrrd	$r0,0x280
    2510:	00000151 	0x00000151
    2514:	040a040d 	csrrd	$r13,0x281
    2518:	00000137 	0x00000137
    251c:	0000ef0e 	0x0000ef0e
    2520:	00016900 	asrtle.d	$r8,$r26
    2524:	008d0f00 	bstrins.d	$r0,$r24,0xd,0x3
    2528:	001d0000 	mulh.wu	$r0,$r0,$r0
    252c:	646d6310 	bge	$r24,$r16,28000(0x6d60) # 928c <_start-0x1bff6d74>
    2530:	03330100 	lu52i.d	$r0,$r8,-832(0xcc0)
    2534:	00000159 	0x00000159
    2538:	00000305 	0x00000305
    253c:	960e0000 	0x960e0000
    2540:	8b000001 	0x8b000001
    2544:	0f000001 	0x0f000001
    2548:	0000008d 	0x0000008d
    254c:	7b06001f 	0x7b06001f
    2550:	0a000001 	0x0a000001
    2554:	00019b04 	0x00019b04
    2558:	01900600 	0x01900600
    255c:	12110000 	addu16i.d	$r0,$r0,-31680(0x8440)
    2560:	00000d37 	0x00000d37
    2564:	8b0f1705 	0x8b0f1705
    2568:	05000001 	0x05000001
    256c:	00000003 	0x00000003
    2570:	0dc01200 	0x0dc01200
    2574:	3d050000 	0x3d050000
    2578:	00018b0f 	0x00018b0f
    257c:	08030500 	0x08030500
    2580:	121c002c 	addu16i.d	$r12,$r1,-30976(0x8700)
    2584:	00000d4d 	0x00000d4d
    2588:	880e4e05 	0x880e4e05
    258c:	05000000 	0x05000000
    2590:	00000003 	0x00000003
    2594:	756e1380 	0x756e1380
    2598:	d001006d 	0xd001006d
    259c:	00880e01 	bstrins.d	$r1,$r16,0x8,0x3
    25a0:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    25a4:	00000000 	0x00000000
    25a8:	000df214 	bytepick.d	$r20,$r16,$r28,0x3
    25ac:	02090100 	slti	$r0,$r8,576(0x240)
    25b0:	001ae006 	0x001ae006
    25b4:	0000281c 	cto.d	$r28,$r0
    25b8:	069c0100 	0x069c0100
    25bc:	15000002 	lu12i.w	$r2,-524288(0x80000)
    25c0:	1c001afc 	pcaddu12i	$r28,215(0xd7)
    25c4:	000009e0 	0x000009e0
    25c8:	0dae1600 	0x0dae1600
    25cc:	d2010000 	0xd2010000
    25d0:	00810501 	bstrins.d	$r1,$r8,0x1,0x1
    25d4:	19a00000 	pcaddi	$r0,-196608(0xd0000)
    25d8:	01401c00 	0x01401c00
    25dc:	9c010000 	0x9c010000
    25e0:	00000374 	0x00000374
    25e4:	000dbb17 	bytepick.d	$r23,$r24,$r14,0x3
    25e8:	01dd0100 	0x01dd0100
    25ec:	0003740e 	0x0003740e
    25f0:	24030600 	ldptr.w	$r0,$r16,772(0x304)
    25f4:	9f1c0028 	0x9f1c0028
    25f8:	000e4718 	bytepick.d	$r24,$r24,$r17,0x4
    25fc:	01f90100 	0x01f90100
    2600:	00037a0d 	0x00037a0d
    2604:	756e1900 	0x756e1900
    2608:	fd01006d 	0xfd01006d
    260c:	00880f01 	bstrins.d	$r1,$r24,0x8,0x3
    2610:	91020000 	0x91020000
    2614:	19c81a6c 	pcaddi	$r12,-114477(0xe40d3)
    2618:	00281c00 	0x00281c00
    261c:	02730000 	sltui	$r0,$r0,-832(0xcc0)
    2620:	641b0000 	bge	$r0,$r0,6912(0x1b00) # 4120 <_start-0x1bffbee0>
    2624:	01d80100 	0x01d80100
    2628:	00008d05 	0x00008d05
    262c:	0014b100 	and	$r0,$r8,$r12
    2630:	0014a900 	and	$r0,$r8,$r10
    2634:	fc1a0000 	0xfc1a0000
    2638:	281c0019 	ld.b	$r25,$r0,1792(0x700)
    263c:	94000000 	0x94000000
    2640:	1b000002 	pcalau12i	$r2,-524288(0x80000)
    2644:	db010064 	0xdb010064
    2648:	008d0501 	bstrins.d	$r1,$r8,0xd,0x1
    264c:	14f20000 	lu12i.w	$r0,495616(0x79000)
    2650:	14ea0000 	lu12i.w	$r0,479232(0x75000)
    2654:	1a000000 	pcalau12i	$r0,0
    2658:	1c001a38 	pcaddu12i	$r24,209(0xd1)
    265c:	00000028 	0x00000028
    2660:	000002b5 	0x000002b5
    2664:	0100641b 	0x0100641b
    2668:	8d0201df 	0x8d0201df
    266c:	31000000 	0x31000000
    2670:	29000015 	st.b	$r21,$r0,0
    2674:	00000015 	0x00000015
    2678:	001a701a 	0x001a701a
    267c:	0000281c 	cto.d	$r28,$r0
    2680:	0002d600 	0x0002d600
    2684:	00641b00 	bstrins.w	$r0,$r24,0x4,0x6
    2688:	0201fb01 	slti	$r1,$r24,126(0x7e)
    268c:	0000008d 	0x0000008d
    2690:	00001570 	clz.w	$r16,$r11
    2694:	00001568 	clz.w	$r8,$r11
    2698:	1ab01a00 	pcalau12i	$r0,360656(0x580d0)
    269c:	00281c00 	0x00281c00
    26a0:	02f70000 	addi.d	$r0,$r0,-576(0xdc0)
    26a4:	641b0000 	bge	$r0,$r0,6912(0x1b00) # 41a4 <_start-0x1bffbe5c>
    26a8:	01ff0100 	0x01ff0100
    26ac:	00008d05 	0x00008d05
    26b0:	0015af00 	xor	$r0,$r24,$r11
    26b4:	0015a700 	xor	$r0,$r24,$r9
    26b8:	b8150000 	0xb8150000
    26bc:	ec1c0019 	0xec1c0019
    26c0:	1c000009 	pcaddu12i	$r9,0
    26c4:	1c0019fc 	pcaddu12i	$r28,207(0xcf)
    26c8:	000009f8 	0x000009f8
    26cc:	00000317 	0x00000317
    26d0:	0554011d 	0x0554011d
    26d4:	00284c03 	0x00284c03
    26d8:	381c001c 	stx.d	$r28,$r0,$r0
    26dc:	f81c001a 	0xf81c001a
    26e0:	37000009 	0x37000009
    26e4:	1d000003 	pcaddu12i	$r3,-524288(0x80000)
    26e8:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    26ec:	1c00282c 	pcaddu12i	$r12,321(0x141)
    26f0:	0555011d 	0x0555011d
    26f4:	00282403 	0x00282403
    26f8:	701c001c 	0x701c001c
    26fc:	f81c001a 	0xf81c001a
    2700:	53000009 	b	2555904(0x270000) # 272700 <_start-0x1bd8d900>
    2704:	1d000003 	pcaddu12i	$r3,-524288(0x80000)
    2708:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    270c:	1c002838 	pcaddu12i	$r24,321(0x141)
    2710:	0155011d 	0x0155011d
    2714:	b01c0034 	0xb01c0034
    2718:	f81c001a 	0xf81c001a
    271c:	6a000009 	bltu	$r0,$r9,-131072(0x20000) # fffe271c <_RAM_DATA+0x7ffe171c>
    2720:	1d000003 	pcaddu12i	$r3,-524288(0x80000)
    2724:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2728:	1c002844 	pcaddu12i	$r4,322(0x142)
    272c:	1adc1500 	pcalau12i	$r0,450728(0x6e0a8)
    2730:	09e01c00 	vfnmsub.d	$vr0,$vr0,$vr7,$vr0
    2734:	0a000000 	0x0a000000
    2738:	00009404 	0x00009404
    273c:	00940e00 	bstrins.d	$r0,$r16,0x14,0x3
    2740:	038a0000 	ori	$r0,$r0,0x280
    2744:	8d0f0000 	0x8d0f0000
    2748:	03000000 	lu52i.d	$r0,$r0,0
    274c:	0da61e00 	0x0da61e00
    2750:	80010000 	0x80010000
    2754:	00008105 	0x00008105
    2758:	00000000 	0x00000000
    275c:	00087800 	bytepick.w	$r0,$r0,$r30,0x0
    2760:	1c9c0100 	pcaddu12i	$r0,319496(0x4e008)
    2764:	1f000008 	pcaddu18i	$r8,-524288(0x80000)
    2768:	82010063 	0x82010063
    276c:	0000bf07 	0x0000bf07
    2770:	00160400 	orn	$r0,$r0,$r1
    2774:	0015e600 	xor	$r0,$r16,$r25
    2778:	0dce2000 	0x0dce2000
    277c:	83010000 	0x83010000
    2780:	00081c07 	bytepick.w	$r7,$r0,$r7,0x0
    2784:	90910300 	0x90910300
    2788:	0db3207f 	0x0db3207f
    278c:	84010000 	0x84010000
    2790:	00082c07 	bytepick.w	$r7,$r0,$r11,0x0
    2794:	a0910300 	0xa0910300
    2798:	706f1f7d 	0x706f1f7d
    279c:	08850100 	0x08850100
    27a0:	00000153 	0x00000153
    27a4:	000016b5 	clz.w	$r21,$r21
    27a8:	000016b3 	clz.w	$r19,$r21
    27ac:	01007010 	0x01007010
    27b0:	08420886 	0x08420886
    27b4:	91030000 	0x91030000
    27b8:	18217d80 	pcaddi	$r0,68588(0x10bec)
    27bc:	0100000e 	0x0100000e
    27c0:	08520887 	fmsub.s	$f7,$f4,$f2,$f4
    27c4:	16e20000 	lu32i.d	$r0,462848(0x71000)
    27c8:	16c80000 	lu32i.d	$r0,409600(0x64000)
    27cc:	631f0000 	blt	$r0,$r0,-57600(0x31f00) # ffff46cc <_RAM_DATA+0x7fff36cc>
    27d0:	88010070 	0x88010070
    27d4:	00003f08 	revb.d	$r8,$r24
    27d8:	0017af00 	srl.w	$r0,$r24,$r11
    27dc:	00179100 	srl.w	$r0,$r8,$r4
    27e0:	00691f00 	bstrins.w	$r0,$r24,0x9,0x7
    27e4:	3f0c8801 	0x3f0c8801
    27e8:	af000000 	0xaf000000
    27ec:	5d000018 	bne	$r0,$r24,65536(0x10000) # 127ec <_start-0x1bfed814>
    27f0:	1f000018 	pcaddu18i	$r24,-524288(0x80000)
    27f4:	8801006a 	0x8801006a
    27f8:	00003f0f 	revb.d	$r15,$r24
    27fc:	001aaa00 	0x001aaa00
    2800:	001a7c00 	0x001a7c00
    2804:	006b1f00 	bstrins.w	$r0,$r24,0xb,0x7
    2808:	3f128801 	0x3f128801
    280c:	b8000000 	0xb8000000
    2810:	b200001b 	0xb200001b
    2814:	1f00001b 	pcaddu18i	$r27,-524288(0x80000)
    2818:	006d756e 	bstrins.w	$r14,$r11,0xd,0x1d
    281c:	3f158801 	0x3f158801
    2820:	e7000000 	0xe7000000
    2824:	e100001b 	0xe100001b
    2828:	1f00001b 	pcaddu18i	$r27,-524288(0x80000)
    282c:	89010068 	0x89010068
    2830:	00003f08 	revb.d	$r8,$r24
    2834:	001c2600 	mul.w	$r0,$r16,$r9
    2838:	001c1000 	mul.w	$r0,$r0,$r4
    283c:	6d741f00 	bgeu	$r24,$r0,95260(0x1741c) # 19c58 <_start-0x1bfe63a8>
    2840:	8a010070 	0x8a010070
    2844:	00008106 	0x00008106
    2848:	001cbe00 	mulh.w	$r0,$r16,$r15
    284c:	001ca800 	mulh.w	$r0,$r0,$r10
    2850:	0e3b2000 	0x0e3b2000
    2854:	8b010000 	0x8b010000
    2858:	00085807 	bytepick.w	$r7,$r0,$r22,0x0
    285c:	f0910300 	0xf0910300
    2860:	0c412274 	0x0c412274
    2864:	96010000 	0x96010000
    2868:	00000001 	0x00000001
    286c:	00001c00 	ctz.w	$r0,$r0
    2870:	0a040000 	0x0a040000
    2874:	04c10000 	csrrd	$r0,0x3040
    2878:	011d0000 	0x011d0000
    287c:	00030554 	0x00030554
    2880:	00000000 	0x00000000
    2884:	0000001c 	0x0000001c
    2888:	000a1000 	0x000a1000
    288c:	0004e000 	alsl.w	$r0,$r0,$r24,0x2
    2890:	54011d00 	bl	67109148(0x400011c) # 40029ac <_start-0x17ffd654>
    2894:	8800910d 	0x8800910d
    2898:	00892200 	bstrins.d	$r0,$r16,0x9,0x8
    289c:	1c70081c 	pcaddu12i	$r28,229440(0x38040)
    28a0:	1c000194 	pcaddu12i	$r20,12(0xc)
    28a4:	00000000 	0x00000000
    28a8:	00000a10 	0x00000a10
    28ac:	000004f3 	0x000004f3
    28b0:	0154011d 	0x0154011d
    28b4:	001c0038 	mul.w	$r24,$r1,$r0
    28b8:	10000000 	addu16i.d	$r0,$r0,0
    28bc:	0700000a 	0x0700000a
    28c0:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    28c4:	08025401 	0x08025401
    28c8:	001c0020 	mul.w	$r0,$r1,$r0
    28cc:	10000000 	addu16i.d	$r0,$r0,0
    28d0:	1a00000a 	pcalau12i	$r10,0
    28d4:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    28d8:	38015401 	0x38015401
    28dc:	00001500 	clz.w	$r0,$r8
    28e0:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    28e4:	001c0000 	mul.w	$r0,$r0,$r0
    28e8:	10000000 	addu16i.d	$r0,$r0,0
    28ec:	3600000a 	0x3600000a
    28f0:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    28f4:	38015401 	0x38015401
    28f8:	00001500 	clz.w	$r0,$r8
    28fc:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2900:	00150000 	move	$r0,$r0
    2904:	1c000000 	pcaddu12i	$r0,0
    2908:	1500000a 	lu12i.w	$r10,-524288(0x80000)
    290c:	00000000 	0x00000000
    2910:	00000a1c 	0x00000a1c
    2914:	00000015 	0x00000015
    2918:	000a1c00 	0x000a1c00
    291c:	00001c00 	ctz.w	$r0,$r0
    2920:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2924:	056d0000 	0x056d0000
    2928:	011d0000 	0x011d0000
    292c:	00380154 	0x00380154
    2930:	0000001c 	0x0000001c
    2934:	000a1000 	0x000a1000
    2938:	00058100 	alsl.w	$r0,$r8,$r0,0x4
    293c:	54011d00 	bl	67109148(0x400011c) # 4002a58 <_start-0x17ffd5a8>
    2940:	00200802 	div.w	$r2,$r0,$r2
    2944:	0000001c 	0x0000001c
    2948:	000a1000 	0x000a1000
    294c:	00059400 	alsl.w	$r0,$r0,$r5,0x4
    2950:	54011d00 	bl	67109148(0x400011c) # 4002a6c <_start-0x17ffd594>
    2954:	1c003801 	pcaddu12i	$r1,448(0x1c0)
    2958:	00000000 	0x00000000
    295c:	00000a10 	0x00000a10
    2960:	000005b3 	0x000005b3
    2964:	0d54011d 	vshuf.b	$vr29,$vr8,$vr0,$vr8
    2968:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    296c:	1c008922 	pcaddu12i	$r2,1097(0x449)
    2970:	941c7008 	0x941c7008
    2974:	001c0001 	mul.w	$r1,$r0,$r0
    2978:	10000000 	addu16i.d	$r0,$r0,0
    297c:	c600000a 	0xc600000a
    2980:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    2984:	38015401 	0x38015401
    2988:	00001c00 	ctz.w	$r0,$r0
    298c:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2990:	05da0000 	0x05da0000
    2994:	011d0000 	0x011d0000
    2998:	20080254 	ll.w	$r20,$r18,2048(0x800)
    299c:	00001c00 	ctz.w	$r0,$r0
    29a0:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    29a4:	05ed0000 	0x05ed0000
    29a8:	011d0000 	0x011d0000
    29ac:	00380154 	0x00380154
    29b0:	00000015 	0x00000015
    29b4:	000a1000 	0x000a1000
    29b8:	00001c00 	ctz.w	$r0,$r0
    29bc:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    29c0:	06090000 	cacop	0x0,$r0,576(0x240)
    29c4:	011d0000 	0x011d0000
    29c8:	00380154 	0x00380154
    29cc:	0000001c 	0x0000001c
    29d0:	000a1000 	0x000a1000
    29d4:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
    29d8:	54011d00 	bl	67109148(0x400011c) # 4002af4 <_start-0x17ffd50c>
    29dc:	1c003801 	pcaddu12i	$r1,448(0x1c0)
    29e0:	00000000 	0x00000000
    29e4:	00000a10 	0x00000a10
    29e8:	0000063b 	0x0000063b
    29ec:	0d54011d 	vshuf.b	$vr29,$vr8,$vr0,$vr8
    29f0:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    29f4:	1c008a22 	pcaddu12i	$r2,1105(0x451)
    29f8:	941c7008 	0x941c7008
    29fc:	001c0001 	mul.w	$r1,$r0,$r0
    2a00:	10000000 	addu16i.d	$r0,$r0,0
    2a04:	4e00000a 	jirl	$r10,$r0,-131072(0x20000)
    2a08:	1d000006 	pcaddu12i	$r6,-524288(0x80000)
    2a0c:	38015401 	0x38015401
    2a10:	00001c00 	ctz.w	$r0,$r0
    2a14:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2a18:	06620000 	0x06620000
    2a1c:	011d0000 	0x011d0000
    2a20:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2a24:	00001c00 	ctz.w	$r0,$r0
    2a28:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2a2c:	06750000 	0x06750000
    2a30:	011d0000 	0x011d0000
    2a34:	00380154 	0x00380154
    2a38:	0000001c 	0x0000001c
    2a3c:	000a1000 	0x000a1000
    2a40:	00068800 	alsl.wu	$r0,$r0,$r2,0x2
    2a44:	54011d00 	bl	67109148(0x400011c) # 4002b60 <_start-0x17ffd4a0>
    2a48:	1c003801 	pcaddu12i	$r1,448(0x1c0)
    2a4c:	00000000 	0x00000000
    2a50:	00000a10 	0x00000a10
    2a54:	0000069c 	0x0000069c
    2a58:	0254011d 	sltui	$r29,$r8,1280(0x500)
    2a5c:	1c002008 	pcaddu12i	$r8,256(0x100)
    2a60:	00000000 	0x00000000
    2a64:	00000a10 	0x00000a10
    2a68:	000006af 	0x000006af
    2a6c:	0154011d 	0x0154011d
    2a70:	001c0038 	mul.w	$r24,$r1,$r0
    2a74:	10000000 	addu16i.d	$r0,$r0,0
    2a78:	cb00000a 	0xcb00000a
    2a7c:	1d000006 	pcaddu12i	$r6,-524288(0x80000)
    2a80:	910a5401 	0x910a5401
    2a84:	22008800 	ll.d	$r0,$r0,136(0x88)
    2a88:	941c7008 	0x941c7008
    2a8c:	001c0001 	mul.w	$r1,$r0,$r0
    2a90:	10000000 	addu16i.d	$r0,$r0,0
    2a94:	ea00000a 	0xea00000a
    2a98:	1d000006 	pcaddu12i	$r6,-524288(0x80000)
    2a9c:	910d5401 	0x910d5401
    2aa0:	22008800 	ll.d	$r0,$r0,136(0x88)
    2aa4:	081c008a 	fmadd.s	$f10,$f4,$f0,$f24
    2aa8:	01941c70 	0x01941c70
    2aac:	00001c00 	ctz.w	$r0,$r0
    2ab0:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2ab4:	07090000 	0x07090000
    2ab8:	011d0000 	0x011d0000
    2abc:	00910d54 	bstrins.d	$r20,$r10,0x11,0x3
    2ac0:	8a220088 	0x8a220088
    2ac4:	70081c00 	vslt.bu	$vr0,$vr0,$vr7
    2ac8:	0001941c 	0x0001941c
    2acc:	0000001c 	0x0000001c
    2ad0:	000a1000 	0x000a1000
    2ad4:	00071c00 	alsl.wu	$r0,$r0,$r7,0x3
    2ad8:	54011d00 	bl	67109148(0x400011c) # 4002bf4 <_start-0x17ffd40c>
    2adc:	1c003801 	pcaddu12i	$r1,448(0x1c0)
    2ae0:	00000000 	0x00000000
    2ae4:	00000a10 	0x00000a10
    2ae8:	00000730 	0x00000730
    2aec:	0254011d 	sltui	$r29,$r8,1280(0x500)
    2af0:	1c002008 	pcaddu12i	$r8,256(0x100)
    2af4:	00000000 	0x00000000
    2af8:	00000a10 	0x00000a10
    2afc:	00000743 	0x00000743
    2b00:	0154011d 	0x0154011d
    2b04:	001c0038 	mul.w	$r24,$r1,$r0
    2b08:	10000000 	addu16i.d	$r0,$r0,0
    2b0c:	5600000a 	bl	2752512(0x2a0000) # 2a2b0c <_start-0x1bd5d4f4>
    2b10:	1d000007 	pcaddu12i	$r7,-524288(0x80000)
    2b14:	38015401 	0x38015401
    2b18:	00001c00 	ctz.w	$r0,$r0
    2b1c:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2b20:	076a0000 	0x076a0000
    2b24:	011d0000 	0x011d0000
    2b28:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2b2c:	00001c00 	ctz.w	$r0,$r0
    2b30:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    2b34:	077d0000 	0x077d0000
    2b38:	011d0000 	0x011d0000
    2b3c:	00380154 	0x00380154
    2b40:	0000001c 	0x0000001c
    2b44:	000a1000 	0x000a1000
    2b48:	00079900 	alsl.wu	$r0,$r8,$r6,0x4
    2b4c:	54011d00 	bl	67109148(0x400011c) # 4002c68 <_start-0x17ffd398>
    2b50:	8800910a 	0x8800910a
    2b54:	70082200 	vslt.bu	$vr0,$vr16,$vr8
    2b58:	0001941c 	0x0001941c
    2b5c:	0000001c 	0x0000001c
    2b60:	000a2800 	0x000a2800
    2b64:	0007ae00 	alsl.wu	$r0,$r16,$r11,0x4
    2b68:	54011d00 	bl	67109148(0x400011c) # 4002c84 <_start-0x17ffd37c>
    2b6c:	7da09103 	0x7da09103
    2b70:	00001c00 	ctz.w	$r0,$r0
    2b74:	0a280000 	xvfmadd.d	$xr0,$xr0,$xr0,$xr16
    2b78:	07c50000 	0x07c50000
    2b7c:	011d0000 	0x011d0000
    2b80:	00030554 	0x00030554
    2b84:	00000000 	0x00000000
    2b88:	0000001c 	0x0000001c
    2b8c:	000a2800 	0x000a2800
    2b90:	0007da00 	alsl.wu	$r0,$r16,$r22,0x4
    2b94:	54011d00 	bl	67109148(0x400011c) # 4002cb0 <_start-0x17ffd350>
    2b98:	7da09103 	0x7da09103
    2b9c:	00002300 	clo.d	$r0,$r24
    2ba0:	07f10000 	0x07f10000
    2ba4:	011d0000 	0x011d0000
    2ba8:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
    2bac:	0355011d 	andi	$r29,$r8,0x540
    2bb0:	007d8091 	bstrpick.w	$r17,$r4,0x1d,0x0
    2bb4:	0000001c 	0x0000001c
    2bb8:	000a2800 	0x000a2800
    2bbc:	00080800 	bytepick.w	$r0,$r0,$r2,0x0
    2bc0:	54011d00 	bl	67109148(0x400011c) # 4002cdc <_start-0x17ffd324>
    2bc4:	00000305 	0x00000305
    2bc8:	24000000 	ldptr.w	$r0,$r0,0
    2bcc:	00000000 	0x00000000
    2bd0:	00000a04 	0x00000a04
    2bd4:	0554011d 	0x0554011d
    2bd8:	00000003 	0x00000003
    2bdc:	0e000000 	0x0e000000
    2be0:	000000bf 	0x000000bf
    2be4:	0000082c 	0x0000082c
    2be8:	00008d0f 	0x00008d0f
    2bec:	0e004f00 	0x0e004f00
    2bf0:	000000bf 	0x000000bf
    2bf4:	00000842 	0x00000842
    2bf8:	00008d0f 	0x00008d0f
    2bfc:	8d0f0700 	0x8d0f0700
    2c00:	1d000000 	pcaddu12i	$r0,-524288(0x80000)
    2c04:	08520e00 	fmsub.s	$f0,$f16,$f3,$f4
    2c08:	08520000 	fmsub.s	$f0,$f0,$f0,$f4
    2c0c:	8d0f0000 	0x8d0f0000
    2c10:	07000000 	0x07000000
    2c14:	bf040a00 	0xbf040a00
    2c18:	0e000000 	0x0e000000
    2c1c:	000000bf 	0x000000bf
    2c20:	0000086e 	0x0000086e
    2c24:	00008d0f 	0x00008d0f
    2c28:	8d0f0c00 	0x8d0f0c00
    2c2c:	4f000000 	jirl	$r0,$r0,-65536(0x30000)
    2c30:	0de01e00 	0x0de01e00
    2c34:	59010000 	beq	$r0,$r0,65792(0x10100) # 12d34 <_start-0x1bfed2cc>
    2c38:	00008105 	0x00008105
    2c3c:	00000000 	0x00000000
    2c40:	00014000 	asrtle.d	$r0,$r16
    2c44:	a39c0100 	0xa39c0100
    2c48:	25000009 	stptr.w	$r9,$r0,0
    2c4c:	00000ded 	0x00000ded
    2c50:	81115901 	0x81115901
    2c54:	4c000000 	jirl	$r0,$r0,0
    2c58:	4000001d 	beqz	$r0,-786432(0x740000) # fff42c58 <_RAM_DATA+0x7ff41c58>
    2c5c:	2500001d 	stptr.w	$r29,$r0,0
    2c60:	00000e00 	0x00000e00
    2c64:	4b1d5901 	bcnez	$fcc0,466264(0x71d58) # 749bc <_start-0x1bf8b644>
    2c68:	ab000001 	0xab000001
    2c6c:	9f00001d 	0x9f00001d
    2c70:	1f00001d 	pcaddu18i	$r29,-524288(0x80000)
    2c74:	5b010069 	beq	$r3,$r9,-65280(0x30100) # ffff2d74 <_RAM_DATA+0x7fff1d74>
    2c78:	00008d0f 	0x00008d0f
    2c7c:	001e0a00 	mulh.d	$r0,$r16,$r2
    2c80:	001dfe00 	mul.d	$r0,$r16,$r31
    2c84:	00731f00 	bstrins.w	$r0,$r24,0x13,0x7
    2c88:	52085c01 	b	395356(0x6085c) # 634e4 <_start-0x1bf9cb1c>
    2c8c:	5a000008 	beq	$r0,$r8,-131072(0x20000) # fffe2c8c <_RAM_DATA+0x7ffe1c8c>
    2c90:	5800001e 	beq	$r0,$r30,0 # 2c90 <_start-0x1bffd370>
    2c94:	1c00001e 	pcaddu12i	$r30,0
    2c98:	00000000 	0x00000000
    2c9c:	00000a04 	0x00000a04
    2ca0:	000008eb 	0x000008eb
    2ca4:	0554011d 	0x0554011d
    2ca8:	00000003 	0x00000003
    2cac:	001c0000 	mul.w	$r0,$r0,$r0
    2cb0:	04000000 	csrrd	$r0,0x0
    2cb4:	0200000a 	slti	$r10,$r0,0
    2cb8:	1d000009 	pcaddu12i	$r9,-524288(0x80000)
    2cbc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2cc0:	00000000 	0x00000000
    2cc4:	00001c00 	ctz.w	$r0,$r0
    2cc8:	0a280000 	xvfmadd.d	$xr0,$xr0,$xr0,$xr16
    2ccc:	09190000 	vfmadd.s	$vr0,$vr0,$vr0,$vr18
    2cd0:	011d0000 	0x011d0000
    2cd4:	00030554 	0x00030554
    2cd8:	00000000 	0x00000000
    2cdc:	0000001c 	0x0000001c
    2ce0:	000a0400 	0x000a0400
    2ce4:	00093600 	bytepick.w	$r0,$r16,$r13,0x2
    2ce8:	54011d00 	bl	67109148(0x400011c) # 4002e04 <_start-0x17ffd1fc>
    2cec:	00000305 	0x00000305
    2cf0:	011d0000 	0x011d0000
    2cf4:	00880255 	bstrins.d	$r21,$r18,0x8,0x0
    2cf8:	00001c00 	ctz.w	$r0,$r0
    2cfc:	0a280000 	xvfmadd.d	$xr0,$xr0,$xr0,$xr16
    2d00:	094d0000 	0x094d0000
    2d04:	011d0000 	0x011d0000
    2d08:	00030554 	0x00030554
    2d0c:	00000000 	0x00000000
    2d10:	0000001c 	0x0000001c
    2d14:	000a2800 	0x000a2800
    2d18:	00096100 	bytepick.w	$r0,$r8,$r24,0x2
    2d1c:	54011d00 	bl	67109148(0x400011c) # 4002e38 <_start-0x17ffd1c8>
    2d20:	00008802 	0x00008802
    2d24:	0000001c 	0x0000001c
    2d28:	000a0400 	0x000a0400
    2d2c:	00097800 	bytepick.w	$r0,$r0,$r30,0x2
    2d30:	54011d00 	bl	67109148(0x400011c) # 4002e4c <_start-0x17ffd1b4>
    2d34:	00000305 	0x00000305
    2d38:	1c000000 	pcaddu12i	$r0,0
    2d3c:	00000000 	0x00000000
    2d40:	00000a28 	0x00000a28
    2d44:	0000098f 	0x0000098f
    2d48:	0554011d 	0x0554011d
    2d4c:	00000003 	0x00000003
    2d50:	00240000 	crc.w.b.w	$r0,$r0,$r0
    2d54:	04000000 	csrrd	$r0,0x0
    2d58:	1d00000a 	pcaddu12i	$r10,-524288(0x80000)
    2d5c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2d60:	00000000 	0x00000000
    2d64:	051e0000 	0x051e0000
    2d68:	0100000e 	0x0100000e
    2d6c:	00810555 	bstrins.d	$r21,$r10,0x1,0x1
    2d70:	00000000 	0x00000000
    2d74:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    2d78:	9c010000 	0x9c010000
    2d7c:	000009e0 	0x000009e0
    2d80:	000ded25 	bytepick.d	$r5,$r9,$r27,0x3
    2d84:	11550100 	addu16i.d	$r0,$r8,21824(0x5540)
    2d88:	00000081 	0x00000081
    2d8c:	00001e71 	ctz.w	$r17,$r19
    2d90:	00001e6d 	ctz.w	$r13,$r19
    2d94:	000e0026 	bytepick.d	$r6,$r1,$r0,0x4
    2d98:	1d550100 	pcaddu12i	$r0,-350200(0xaa808)
    2d9c:	0000014b 	0x0000014b
    2da0:	27005501 	stptr.d	$r1,$r8,84(0x54)
    2da4:	000008f7 	0x000008f7
    2da8:	000008f7 	0x000008f7
    2dac:	27061206 	stptr.d	$r6,$r16,1552(0x610)
    2db0:	0000059f 	0x0000059f
    2db4:	0000059f 	0x0000059f
    2db8:	27060707 	stptr.d	$r7,$r24,1540(0x604)
    2dbc:	00000710 	0x00000710
    2dc0:	00000710 	0x00000710
    2dc4:	27051508 	stptr.d	$r8,$r8,1300(0x514)
    2dc8:	00000714 	0x00000714
    2dcc:	00000714 	0x00000714
    2dd0:	27050d09 	stptr.d	$r9,$r8,1292(0x50c)
    2dd4:	00000706 	0x00000706
    2dd8:	00000706 	0x00000706
    2ddc:	27060e09 	stptr.d	$r9,$r16,1548(0x60c)
    2de0:	0000010a 	0x0000010a
    2de4:	0000010a 	0x0000010a
    2de8:	27090f09 	stptr.d	$r9,$r24,2316(0x90c)
    2dec:	00000e34 	0x00000e34
    2df0:	00000e34 	0x00000e34
    2df4:	00050a0a 	alsl.w	$r10,$r16,$r2,0x3
    2df8:	00001207 	clo.w	$r7,$r16
    2dfc:	0e5e0004 	0x0e5e0004
    2e00:	01040000 	0x01040000
    2e04:	00000196 	0x00000196
    2e08:	000ea90c 	bytepick.d	$r12,$r8,$r10,0x5
    2e0c:	00005600 	bitrev.d	$r0,$r16
    2e10:	00027000 	0x00027000
    2e14:	00000000 	0x00000000
    2e18:	002e9200 	0x002e9200
    2e1c:	06010200 	cacop	0x0,$r16,64(0x40)
    2e20:	00000269 	0x00000269
    2e24:	67080102 	bge	$r8,$r2,-63488(0x30800) # ffff3624 <_RAM_DATA+0x7fff2624>
    2e28:	02000002 	slti	$r2,$r0,0
    2e2c:	02750502 	sltui	$r2,$r8,-703(0xd41)
    2e30:	02020000 	slti	$r0,$r0,128(0x80)
    2e34:	00015807 	0x00015807
    2e38:	05040200 	0x05040200
    2e3c:	00000101 	0x00000101
    2e40:	00013103 	0x00013103
    2e44:	19410200 	pcaddi	$r0,-391152(0xa0810)
    2e48:	00000054 	0x00000054
    2e4c:	d4070402 	0xd4070402
    2e50:	02000000 	slti	$r0,$r0,0
    2e54:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
    2e58:	08020000 	0x08020000
    2e5c:	0000cf07 	0x0000cf07
    2e60:	05040400 	0x05040400
    2e64:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
    2e68:	00006905 	rdtime.d	$r5,$r8
    2e6c:	07040200 	0x07040200
    2e70:	000000d9 	0x000000d9
    2e74:	00013303 	0x00013303
    2e78:	14200300 	lu12i.w	$r0,65560(0x10018)
    2e7c:	00000048 	0x00000048
    2e80:	00062f03 	alsl.wu	$r3,$r24,$r11,0x1
    2e84:	17170400 	lu32i.d	$r0,-477152(0x8b820)
    2e88:	0000002c 	0x0000002c
    2e8c:	000e8303 	bytepick.d	$r3,$r24,$r0,0x5
    2e90:	18190400 	pcaddi	$r0,51232(0xc820)
    2e94:	0000003a 	0x0000003a
    2e98:	00059803 	alsl.w	$r3,$r0,$r6,0x4
    2e9c:	161b0400 	lu32i.d	$r0,55328(0xd820)
    2ea0:	00000075 	0x00000075
    2ea4:	61040402 	blt	$r0,$r2,66564(0x10404) # 132a8 <_start-0x1bfecd58>
    2ea8:	02000002 	slti	$r2,$r0,0
    2eac:	02700601 	sltui	$r1,$r16,-1023(0xc01)
    2eb0:	b3060000 	0xb3060000
    2eb4:	07000000 	0x07000000
    2eb8:	0000029a 	0x0000029a
    2ebc:	7c116904 	0x7c116904
    2ec0:	07000000 	0x07000000
    2ec4:	00000114 	0x00000114
    2ec8:	7c116b04 	0x7c116b04
    2ecc:	07000000 	0x07000000
    2ed0:	00000250 	0x00000250
    2ed4:	690c6d04 	bltu	$r8,$r4,68716(0x10c6c) # 13b40 <_start-0x1bfec4c0>
    2ed8:	08000000 	0x08000000
    2edc:	01120510 	0x01120510
    2ee0:	00012609 	0x00012609
    2ee4:	09360900 	0x09360900
    2ee8:	14050000 	lu12i.w	$r0,10240(0x2800)
    2eec:	007c0c01 	bstrins.w	$r1,$r0,0x1c,0x3
    2ef0:	09000000 	0x09000000
    2ef4:	00000a61 	0x00000a61
    2ef8:	0c011505 	0x0c011505
    2efc:	0000007c 	0x0000007c
    2f00:	09110904 	vfmadd.s	$vr4,$vr8,$vr2,$vr2
    2f04:	16050000 	lu32i.d	$r0,10240(0x2800)
    2f08:	007c0c01 	bstrins.w	$r1,$r0,0x1c,0x3
    2f0c:	09080000 	0x09080000
    2f10:	0000097c 	0x0000097c
    2f14:	0c011705 	0x0c011705
    2f18:	0000007c 	0x0000007c
    2f1c:	3f0a000c 	0x3f0a000c
    2f20:	05000009 	0x05000009
    2f24:	e3030118 	0xe3030118
    2f28:	0b000000 	0x0b000000
    2f2c:	0000014e 	0x0000014e
    2f30:	00000143 	0x00000143
    2f34:	0000750c 	0x0000750c
    2f38:	06001f00 	cacop	0x0,$r24,7(0x7)
    2f3c:	00000133 	0x00000133
    2f40:	0153040d 	0x0153040d
    2f44:	48060000 	bceqz	$fcc0,1536(0x600) # 3544 <_start-0x1bffcabc>
    2f48:	0e000001 	0x0e000001
    2f4c:	000d370f 	bytepick.d	$r15,$r24,$r13,0x2
    2f50:	0f170600 	0x0f170600
    2f54:	00000143 	0x00000143
    2f58:	00000305 	0x00000305
    2f5c:	c00f0000 	0xc00f0000
    2f60:	0600000d 	cacop	0xd,$r0,0
    2f64:	01430f3d 	0x01430f3d
    2f68:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    2f6c:	1c002c08 	pcaddu12i	$r8,352(0x160)
    2f70:	000d4d0f 	bytepick.d	$r15,$r8,$r19,0x2
    2f74:	0e4e0600 	0x0e4e0600
    2f78:	00000070 	0x00000070
    2f7c:	00000305 	0x00000305
    2f80:	b9108000 	0xb9108000
    2f84:	0100000f 	0x0100000f
    2f88:	5c06019e 	bne	$r12,$r30,1536(0x600) # 3588 <_start-0x1bffca78>
    2f8c:	281c0025 	ld.b	$r5,$r1,1792(0x700)
    2f90:	01000000 	0x01000000
    2f94:	0001cb9c 	0x0001cb9c
    2f98:	25681100 	stptr.w	$r0,$r8,26640(0x6810)
    2f9c:	11861c00 	addu16i.d	$r0,$r0,24967(0x6187)
    2fa0:	74120000 	0x74120000
    2fa4:	921c0025 	0x921c0025
    2fa8:	c1000011 	0xc1000011
    2fac:	13000001 	addu16i.d	$r1,$r0,-16384(0xc000)
    2fb0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2fb4:	1c0028dc 	pcaddu12i	$r28,326(0x146)
    2fb8:	25781100 	stptr.w	$r0,$r8,30736(0x7810)
    2fbc:	119e1c00 	addu16i.d	$r0,$r0,26503(0x6787)
    2fc0:	10000000 	addu16i.d	$r0,$r0,0
    2fc4:	00001210 	clo.w	$r16,$r16
    2fc8:	06016601 	cacop	0x1,$r16,89(0x59)
    2fcc:	1c00244c 	pcaddu12i	$r12,290(0x122)
    2fd0:	00000110 	0x00000110
    2fd4:	02879c01 	addi.w	$r1,$r0,487(0x1e7)
    2fd8:	4d140000 	jirl	$r0,$r0,70656(0x11400)
    2fdc:	01000012 	0x01000012
    2fe0:	88080168 	0x88080168
    2fe4:	96000000 	0x96000000
    2fe8:	9200001e 	0x9200001e
    2fec:	1500001e 	lu12i.w	$r30,-524288(0x80000)
    2ff0:	1c0024e8 	pcaddu12i	$r8,295(0x127)
    2ff4:	00000074 	0x00000074
    2ff8:	0000024d 	0x0000024d
    2ffc:	00068e14 	alsl.wu	$r20,$r16,$r3,0x2
    3000:	017d0100 	0x017d0100
    3004:	0000b308 	0x0000b308
    3008:	001eb800 	mulh.du	$r0,$r0,$r14
    300c:	001eb400 	mulh.du	$r0,$r0,$r13
    3010:	0f071400 	0x0f071400
    3014:	7e010000 	0x7e010000
    3018:	00690701 	bstrins.w	$r1,$r24,0x9,0x1
    301c:	1edc0000 	pcaddu18i	$r0,450560(0x6e000)
    3020:	1ed60000 	pcaddu18i	$r0,438272(0x6b000)
    3024:	bb140000 	0xbb140000
    3028:	01000010 	0x01000010
    302c:	6907017f 	bltu	$r11,$r31,67328(0x10700) # 1372c <_start-0x1bfec8d4>
    3030:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
    3034:	0500001f 	0x0500001f
    3038:	1100001f 	addu16i.d	$r31,$r0,16384(0x4000)
    303c:	1c0024ec 	pcaddu12i	$r12,295(0x127)
    3040:	000011aa 	clo.w	$r10,$r13
    3044:	24b81200 	ldptr.w	$r0,$r16,-18416(0xb810)
    3048:	11b61c00 	addu16i.d	$r0,$r0,28039(0x6d87)
    304c:	02620000 	sltui	$r0,$r0,-1920(0x880)
    3050:	01130000 	fcopysign.d	$f0,$f0,$f0
    3054:	000a0354 	0x000a0354
    3058:	dc120001 	0xdc120001
    305c:	c21c0024 	0xc21c0024
    3060:	75000011 	0x75000011
    3064:	13000002 	addu16i.d	$r2,$r0,-16384(0xc000)
    3068:	44015401 	bnez	$r0,262484(0x40154) # 431bc <_start-0x1bfbce44>
    306c:	24e41600 	ldptr.w	$r0,$r16,-7148(0xe414)
    3070:	11ce1c00 	addu16i.d	$r0,$r0,29575(0x7387)
    3074:	01130000 	fcopysign.d	$f0,$f0,$f0
    3078:	000a0354 	0x000a0354
    307c:	10000001 	addu16i.d	$r1,$r0,0
    3080:	00000e96 	0x00000e96
    3084:	06014501 	cacop	0x1,$r8,81(0x51)
    3088:	1c0023bc 	pcaddu12i	$r28,285(0x11d)
    308c:	00000090 	0x00000090
    3090:	02de9c01 	addi.d	$r1,$r0,1959(0x7a7)
    3094:	74170000 	0x74170000
    3098:	0100706d 	0x0100706d
    309c:	7c0e0147 	0x7c0e0147
    30a0:	64000000 	bge	$r0,$r0,0 # 30a0 <_start-0x1bffcf60>
    30a4:	5e00001f 	bne	$r0,$r31,-131072(0x20000) # fffe30a4 <_RAM_DATA+0x7ffe20a4>
    30a8:	1200001f 	addu16i.d	$r31,$r0,-32768(0x8000)
    30ac:	1c002410 	pcaddu12i	$r16,288(0x120)
    30b0:	00001192 	clo.w	$r18,$r12
    30b4:	000002ca 	0x000002ca
    30b8:	05540113 	0x05540113
    30bc:	00289003 	0x00289003
    30c0:	2c16001c 	vld	$vr28,$r0,1408(0x580)
    30c4:	921c0024 	0x921c0024
    30c8:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    30cc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    30d0:	1c0028b8 	pcaddu12i	$r24,325(0x145)
    30d4:	9f100000 	0x9f100000
    30d8:	0100000e 	0x0100000e
    30dc:	9c060137 	0x9c060137
    30e0:	201c0023 	ll.w	$r3,$r1,7168(0x1c00)
    30e4:	01000000 	0x01000000
    30e8:	0003039c 	0x0003039c
    30ec:	0f4a1800 	0x0f4a1800
    30f0:	3a010000 	0x3a010000
    30f4:	00880801 	bstrins.d	$r1,$r0,0x8,0x2
    30f8:	10000000 	addu16i.d	$r0,$r0,0
    30fc:	00000e8a 	0x00000e8a
    3100:	06011f01 	cacop	0x1,$r24,71(0x47)
    3104:	1c002350 	pcaddu12i	$r16,282(0x11a)
    3108:	0000004c 	0x0000004c
    310c:	035b9c01 	andi	$r1,$r0,0x6e7
    3110:	69190000 	bltu	$r0,$r0,71936(0x11900) # 14a10 <_start-0x1bfeb5f0>
    3114:	01210100 	0x01210100
    3118:	0000880b 	0x0000880b
    311c:	0fcf1400 	0x0fcf1400
    3120:	22010000 	ll.d	$r0,$r0,256(0x100)
    3124:	00940c01 	bstrins.d	$r1,$r0,0x14,0x3
    3128:	1f8f0000 	pcaddu18i	$r0,-231424(0xc7800)
    312c:	1f8d0000 	pcaddu18i	$r0,-235520(0xc6800)
    3130:	c7180000 	0xc7180000
    3134:	0100000f 	0x0100000f
    3138:	880b0123 	0x880b0123
    313c:	16000000 	lu32i.d	$r0,0
    3140:	1c002390 	pcaddu12i	$r16,284(0x11c)
    3144:	00001192 	clo.w	$r18,$r12
    3148:	05540113 	0x05540113
    314c:	00287003 	0x00287003
    3150:	1000001c 	addu16i.d	$r28,$r0,0
    3154:	000011b9 	clo.w	$r25,$r13
    3158:	06010e01 	cacop	0x1,$r16,67(0x43)
    315c:	1c002320 	pcaddu12i	$r0,281(0x119)
    3160:	00000030 	0x00000030
    3164:	038b9c01 	ori	$r1,$r0,0x2e7
    3168:	a51a0000 	0xa51a0000
    316c:	01000011 	0x01000011
    3170:	a0090112 	0xa0090112
    3174:	01000000 	0x01000000
    3178:	2344115c 	sc.d	$r28,$r10,17424(0x4410)
    317c:	11da1c00 	addu16i.d	$r0,$r0,30343(0x7687)
    3180:	1b000000 	pcalau12i	$r0,-524288(0x80000)
    3184:	000010d8 	clo.w	$r24,$r6
    3188:	0006ff01 	alsl.wu	$r1,$r24,$r31,0x2
    318c:	34000000 	0x34000000
    3190:	01000000 	0x01000000
    3194:	0003be9c 	0x0003be9c
    3198:	00001100 	clo.w	$r0,$r8
    319c:	11860000 	addu16i.d	$r0,$r0,24960(0x6180)
    31a0:	00160000 	orn	$r0,$r0,$r0
    31a4:	e6000000 	0xe6000000
    31a8:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    31ac:	0c055401 	0x0c055401
    31b0:	00013880 	asrtle.d	$r4,$r14
    31b4:	521b0000 	b	137984(0x21b00) # 24cb4 <_start-0x1bfdb34c>
    31b8:	01000010 	0x01000010
    31bc:	000006f1 	0x000006f1
    31c0:	00240000 	crc.w.b.w	$r0,$r0,$r0
    31c4:	9c010000 	0x9c010000
    31c8:	000003f5 	0x000003f5
    31cc:	00000012 	0x00000012
    31d0:	00119200 	sub.d	$r0,$r16,$r4
    31d4:	0003eb00 	0x0003eb00
    31d8:	54011300 	bl	-67108592(0xc000110) # fc0032e8 <_RAM_DATA+0x7c0022e8>
    31dc:	00000305 	0x00000305
    31e0:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
    31e4:	00000000 	0x00000000
    31e8:	000011f2 	clo.w	$r18,$r15
    31ec:	11ad1b00 	addu16i.d	$r0,$r24,27462(0x6b46)
    31f0:	dc010000 	0xdc010000
    31f4:	00228806 	mod.d	$r6,$r0,$r2
    31f8:	0000981c 	0x0000981c
    31fc:	8e9c0100 	0x8e9c0100
    3200:	1c000004 	pcaddu12i	$r4,0
    3204:	00000f52 	0x00000f52
    3208:	a009df01 	0xa009df01
    320c:	ac000000 	0xac000000
    3210:	aa00001f 	0xaa00001f
    3214:	1c00001f 	pcaddu12i	$r31,0
    3218:	00000e90 	0x00000e90
    321c:	a009e001 	0xa009e001
    3220:	c1000000 	0xc1000000
    3224:	bf00001f 	0xbf00001f
    3228:	1c00001f 	pcaddu12i	$r31,0
    322c:	00000e7c 	0x00000e7c
    3230:	a009e101 	0xa009e101
    3234:	d8000000 	0xd8000000
    3238:	d400001f 	0xd400001f
    323c:	1d00001f 	pcaddu12i	$r31,-524288(0x80000)
    3240:	00000f0d 	0x00000f0d
    3244:	0000049e 	0x0000049e
    3248:	28fc0305 	ld.d	$r5,$r24,-256(0xf00)
    324c:	c0121c00 	0xc0121c00
    3250:	921c0022 	0x921c0022
    3254:	7c000011 	0x7c000011
    3258:	13000004 	addu16i.d	$r4,$r0,-16384(0xc000)
    325c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3260:	1c002850 	pcaddu12i	$r16,322(0x142)
    3264:	02550113 	sltui	$r19,$r8,1344(0x540)
    3268:	0113e208 	0x0113e208
    326c:	fc030556 	0xfc030556
    3270:	001c0028 	mul.w	$r8,$r1,$r0
    3274:	0023081e 	div.du	$r30,$r0,$r2
    3278:	00870b1c 	bstrins.d	$r28,$r24,0x7,0x2
    327c:	08032432 	0x08032432
    3280:	221c002c 	ll.d	$r12,$r1,7168(0x1c00)
    3284:	ba0b0006 	0xba0b0006
    3288:	9e000000 	0x9e000000
    328c:	0c000004 	0x0c000004
    3290:	00000075 	0x00000075
    3294:	8e06000b 	0x8e06000b
    3298:	1b000004 	pcalau12i	$r4,-524288(0x80000)
    329c:	00000e4c 	0x00000e4c
    32a0:	4c06b301 	jirl	$r1,$r24,1712(0x6b0)
    32a4:	3c1c0022 	0x3c1c0022
    32a8:	01000000 	0x01000000
    32ac:	00050b9c 	alsl.w	$r28,$r28,$r2,0x3
    32b0:	0f0d1d00 	0x0f0d1d00
    32b4:	051b0000 	0x051b0000
    32b8:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    32bc:	1c002908 	pcaddu12i	$r8,328(0x148)
    32c0:	00226c12 	div.d	$r18,$r0,$r27
    32c4:	0011921c 	sub.d	$r28,$r16,$r4
    32c8:	0004ee00 	alsl.w	$r0,$r16,$r27,0x2
    32cc:	54011300 	bl	-67108592(0xc000110) # fc0033dc <_RAM_DATA+0x7c0023dc>
    32d0:	28500305 	ld.h	$r5,$r24,1024(0x400)
    32d4:	01131c00 	fcopysign.d	$f0,$f0,$f7
    32d8:	b6080255 	0xb6080255
    32dc:	05560113 	0x05560113
    32e0:	00290803 	0x00290803
    32e4:	7c16001c 	0x7c16001c
    32e8:	fe1c0022 	0xfe1c0022
    32ec:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    32f0:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    32f4:	ffac80a0 	0xffac80a0
    32f8:	5501137b 	bl	-34799344(0xded0110) # fded3408 <_RAM_DATA+0x7ded2408>
    32fc:	244b4004 	ldptr.w	$r4,$r0,19264(0x4b40)
    3300:	0b00001f 	0x0b00001f
    3304:	000000ba 	0x000000ba
    3308:	0000051b 	0x0000051b
    330c:	0000750c 	0x0000750c
    3310:	06001700 	cacop	0x0,$r24,5(0x5)
    3314:	0000050b 	0x0000050b
    3318:	0011151b 	sub.w	$r27,$r8,$r5
    331c:	06ad0100 	0x06ad0100
    3320:	1c002210 	pcaddu12i	$r16,272(0x110)
    3324:	0000003c 	0x0000003c
    3328:	05879c01 	0x05879c01
    332c:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    3330:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3334:	05000005 	0x05000005
    3338:	00292003 	0x00292003
    333c:	2230121c 	ll.d	$r28,$r16,12304(0x3010)
    3340:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3344:	056b0000 	0x056b0000
    3348:	01130000 	fcopysign.d	$f0,$f0,$f0
    334c:	50030554 	b	89129732(0x5500304) # 5503650 <_start-0x16afc9b0>
    3350:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    3354:	08025501 	0x08025501
    3358:	560113b0 	bl	-20840176(0xec20110) # fec23468 <_RAM_DATA+0x7ec22468>
    335c:	29200305 	st.b	$r5,$r24,-2048(0x800)
    3360:	16001c00 	lu32i.d	$r0,224(0xe0)
    3364:	1c002240 	pcaddu12i	$r0,274(0x112)
    3368:	000011fe 	clo.w	$r30,$r15
    336c:	06540113 	0x06540113
    3370:	ac80a011 	0xac80a011
    3374:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3378:	4a400355 	0x4a400355
    337c:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3380:	00000ff2 	0x00000ff2
    3384:	d406a701 	0xd406a701
    3388:	3c1c0021 	0x3c1c0021
    338c:	01000000 	0x01000000
    3390:	0005ee9c 	alsl.w	$r28,$r20,$r27,0x4
    3394:	0f0d1d00 	0x0f0d1d00
    3398:	051b0000 	0x051b0000
    339c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    33a0:	1c002938 	pcaddu12i	$r24,329(0x149)
    33a4:	0021f412 	mod.wu	$r18,$r0,$r29
    33a8:	0011921c 	sub.d	$r28,$r16,$r4
    33ac:	0005d200 	alsl.w	$r0,$r16,$r20,0x4
    33b0:	54011300 	bl	-67108592(0xc000110) # fc0034c0 <_RAM_DATA+0x7c0024c0>
    33b4:	28500305 	ld.h	$r5,$r24,1024(0x400)
    33b8:	01131c00 	fcopysign.d	$f0,$f0,$f7
    33bc:	aa080255 	0xaa080255
    33c0:	05560113 	0x05560113
    33c4:	00293803 	0x00293803
    33c8:	0416001c 	csrrd	$r28,0x580
    33cc:	fe1c0022 	0xfe1c0022
    33d0:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    33d4:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    33d8:	ffac80a0 	0xffac80a0
    33dc:	5501137b 	bl	-34799344(0xded0110) # fded34ec <_RAM_DATA+0x7ded24ec>
    33e0:	24494003 	ldptr.w	$r3,$r0,18752(0x4940)
    33e4:	1d1b0000 	pcaddu12i	$r0,-468992(0x8d800)
    33e8:	01000012 	0x01000012
    33ec:	219806a0 	sc.w	$r0,$r21,-26620(0x9804)
    33f0:	003c1c00 	0x003c1c00
    33f4:	9c010000 	0x9c010000
    33f8:	00000655 	0x00000655
    33fc:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3400:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3404:	50030500 	b	67109636(0x4000304) # 4003708 <_start-0x17ffc8f8>
    3408:	121c0029 	addu16i.d	$r9,$r1,-30976(0x8700)
    340c:	1c0021b8 	pcaddu12i	$r24,269(0x10d)
    3410:	00001192 	clo.w	$r18,$r12
    3414:	00000639 	0x00000639
    3418:	05540113 	0x05540113
    341c:	00285003 	0x00285003
    3420:	5501131c 	bl	-59703024(0xc710110) # fc713530 <_RAM_DATA+0x7c712530>
    3424:	13a30802 	addu16i.d	$r2,$r0,-5950(0xe8c2)
    3428:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    342c:	1c002950 	pcaddu12i	$r16,330(0x14a)
    3430:	21c81600 	sc.w	$r0,$r16,-14316(0xc814)
    3434:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3438:	01130000 	fcopysign.d	$f0,$f0,$f0
    343c:	a0110654 	0xa0110654
    3440:	7bffac80 	0x7bffac80
    3444:	03550113 	andi	$r19,$r8,0x540
    3448:	00244840 	crc.w.b.w	$r0,$r2,$r18
    344c:	10e51b00 	addu16i.d	$r0,$r24,14662(0x3946)
    3450:	9a010000 	0x9a010000
    3454:	00215c06 	div.wu	$r6,$r0,$r23
    3458:	00003c1c 	revb.d	$r28,$r0
    345c:	bc9c0100 	0xbc9c0100
    3460:	1d000006 	pcaddu12i	$r6,-524288(0x80000)
    3464:	00000f0d 	0x00000f0d
    3468:	0000051b 	0x0000051b
    346c:	29680305 	st.h	$r5,$r24,-1536(0xa00)
    3470:	7c121c00 	0x7c121c00
    3474:	921c0021 	0x921c0021
    3478:	a0000011 	0xa0000011
    347c:	13000006 	addu16i.d	$r6,$r0,-16384(0xc000)
    3480:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3484:	1c002850 	pcaddu12i	$r16,322(0x142)
    3488:	02550113 	sltui	$r19,$r8,1344(0x540)
    348c:	01139d08 	0x01139d08
    3490:	68030556 	bltu	$r10,$r22,772(0x304) # 3794 <_start-0x1bffc86c>
    3494:	001c0029 	mul.w	$r9,$r1,$r0
    3498:	00218c16 	mod.wu	$r22,$r0,$r3
    349c:	0011fe1c 	sub.d	$r28,$r16,$r31
    34a0:	54011300 	bl	-67108592(0xc000110) # fc0035b0 <_RAM_DATA+0x7c0025b0>
    34a4:	80a01106 	0x80a01106
    34a8:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    34ac:	40035501 	beqz	$r8,262996(0x40354) # 43800 <_start-0x1bfbc800>
    34b0:	00002447 	clz.d	$r7,$r2
    34b4:	000fa11b 	bytepick.d	$r27,$r8,$r8,0x7
    34b8:	06940100 	0x06940100
    34bc:	1c002120 	pcaddu12i	$r0,265(0x109)
    34c0:	0000003c 	0x0000003c
    34c4:	07239c01 	0x07239c01
    34c8:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    34cc:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    34d0:	05000005 	0x05000005
    34d4:	00298003 	0x00298003
    34d8:	2140121c 	sc.w	$r28,$r16,16400(0x4010)
    34dc:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    34e0:	07070000 	0x07070000
    34e4:	01130000 	fcopysign.d	$f0,$f0,$f0
    34e8:	50030554 	b	89129732(0x5500304) # 55037ec <_start-0x16afc814>
    34ec:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    34f0:	08025501 	0x08025501
    34f4:	56011397 	bl	-27393776(0xe5e0110) # fe5e3604 <_RAM_DATA+0x7e5e2604>
    34f8:	29800305 	st.w	$r5,$r24,0
    34fc:	16001c00 	lu32i.d	$r0,224(0xe0)
    3500:	1c002150 	pcaddu12i	$r16,266(0x10a)
    3504:	000011fe 	clo.w	$r30,$r15
    3508:	06540113 	0x06540113
    350c:	ac80a011 	0xac80a011
    3510:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3514:	46400355 	bnez	$r26,-2736128(0x564000) # ffd67514 <_RAM_DATA+0x7fd66514>
    3518:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    351c:	000011e0 	clo.w	$r0,$r15
    3520:	e4068e01 	0xe4068e01
    3524:	3c1c0020 	0x3c1c0020
    3528:	01000000 	0x01000000
    352c:	00078a9c 	alsl.wu	$r28,$r20,$r2,0x4
    3530:	0f0d1d00 	0x0f0d1d00
    3534:	051b0000 	0x051b0000
    3538:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    353c:	1c002998 	pcaddu12i	$r24,332(0x14c)
    3540:	00210412 	div.wu	$r18,$r0,$r1
    3544:	0011921c 	sub.d	$r28,$r16,$r4
    3548:	00076e00 	alsl.wu	$r0,$r16,$r27,0x3
    354c:	54011300 	bl	-67108592(0xc000110) # fc00365c <_RAM_DATA+0x7c00265c>
    3550:	28500305 	ld.h	$r5,$r24,1024(0x400)
    3554:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3558:	91080255 	0x91080255
    355c:	05560113 	0x05560113
    3560:	00299803 	0x00299803
    3564:	1416001c 	lu12i.w	$r28,45056(0xb000)
    3568:	fe1c0021 	0xfe1c0021
    356c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3570:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3574:	ffac80a0 	0xffac80a0
    3578:	5501137b 	bl	-34799344(0xded0110) # fded3688 <_RAM_DATA+0x7ded2688>
    357c:	24454003 	ldptr.w	$r3,$r0,17728(0x4540)
    3580:	a31b0000 	0xa31b0000
    3584:	01000010 	0x01000010
    3588:	20a80688 	ll.w	$r8,$r20,-22524(0xa804)
    358c:	003c1c00 	0x003c1c00
    3590:	9c010000 	0x9c010000
    3594:	000007f1 	0x000007f1
    3598:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    359c:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    35a0:	b0030500 	0xb0030500
    35a4:	121c0029 	addu16i.d	$r9,$r1,-30976(0x8700)
    35a8:	1c0020c8 	pcaddu12i	$r8,262(0x106)
    35ac:	00001192 	clo.w	$r18,$r12
    35b0:	000007d5 	0x000007d5
    35b4:	05540113 	0x05540113
    35b8:	00285003 	0x00285003
    35bc:	5501131c 	bl	-59703024(0xc710110) # fc7136cc <_RAM_DATA+0x7c7126cc>
    35c0:	138b0802 	addu16i.d	$r2,$r0,-7486(0xe2c2)
    35c4:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    35c8:	1c0029b0 	pcaddu12i	$r16,333(0x14d)
    35cc:	20d81600 	ll.w	$r0,$r16,-10220(0xd814)
    35d0:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    35d4:	01130000 	fcopysign.d	$f0,$f0,$f0
    35d8:	a0110654 	0xa0110654
    35dc:	7bffac80 	0x7bffac80
    35e0:	03550113 	andi	$r19,$r8,0x540
    35e4:	00244440 	crc.w.b.w	$r0,$r2,$r17
    35e8:	0f891b00 	0x0f891b00
    35ec:	82010000 	0x82010000
    35f0:	00206c06 	div.w	$r6,$r0,$r27
    35f4:	00003c1c 	revb.d	$r28,$r0
    35f8:	589c0100 	beq	$r8,$r0,39936(0x9c00) # d1f8 <_start-0x1bff2e08>
    35fc:	1d000008 	pcaddu12i	$r8,-524288(0x80000)
    3600:	00000f0d 	0x00000f0d
    3604:	0000051b 	0x0000051b
    3608:	29c80305 	st.d	$r5,$r24,512(0x200)
    360c:	8c121c00 	0x8c121c00
    3610:	921c0020 	0x921c0020
    3614:	3c000011 	0x3c000011
    3618:	13000008 	addu16i.d	$r8,$r0,-16384(0xc000)
    361c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3620:	1c002850 	pcaddu12i	$r16,322(0x142)
    3624:	02550113 	sltui	$r19,$r8,1344(0x540)
    3628:	01138508 	0x01138508
    362c:	c8030556 	0xc8030556
    3630:	001c0029 	mul.w	$r9,$r1,$r0
    3634:	00209c16 	mod.w	$r22,$r0,$r7
    3638:	0011fe1c 	sub.d	$r28,$r16,$r31
    363c:	54011300 	bl	-67108592(0xc000110) # fc00374c <_RAM_DATA+0x7c00274c>
    3640:	80a01106 	0x80a01106
    3644:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3648:	40035501 	beqz	$r8,262996(0x40354) # 4399c <_start-0x1bfbc664>
    364c:	00002443 	clz.d	$r3,$r2
    3650:	0011c81b 	sub.d	$r27,$r0,$r18
    3654:	067d0100 	0x067d0100
    3658:	1c002030 	pcaddu12i	$r16,257(0x101)
    365c:	0000003c 	0x0000003c
    3660:	08bf9c01 	0x08bf9c01
    3664:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    3668:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    366c:	05000005 	0x05000005
    3670:	0029e003 	0x0029e003
    3674:	2050121c 	ll.w	$r28,$r16,20496(0x5010)
    3678:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    367c:	08a30000 	fnmadd.d	$f0,$f0,$f0,$f6
    3680:	01130000 	fcopysign.d	$f0,$f0,$f0
    3684:	50030554 	b	89129732(0x5500304) # 5503988 <_start-0x16afc678>
    3688:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    368c:	08025501 	0x08025501
    3690:	5601137f 	bl	-33685232(0xdfe0110) # fdfe37a0 <_RAM_DATA+0x7dfe27a0>
    3694:	29e00305 	st.d	$r5,$r24,-2048(0x800)
    3698:	16001c00 	lu32i.d	$r0,224(0xe0)
    369c:	1c002060 	pcaddu12i	$r0,259(0x103)
    36a0:	000011fe 	clo.w	$r30,$r15
    36a4:	06540113 	0x06540113
    36a8:	ac80a011 	0xac80a011
    36ac:	01137bff 	fcopysign.d	$f31,$f31,$f30
    36b0:	42400355 	beqz	$r26,-2736128(0x564000) # ffd676b0 <_RAM_DATA+0x7fd666b0>
    36b4:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    36b8:	0000108b 	clo.w	$r11,$r4
    36bc:	f4067801 	0xf4067801
    36c0:	3c1c001f 	0x3c1c001f
    36c4:	01000000 	0x01000000
    36c8:	0009269c 	bytepick.w	$r28,$r20,$r9,0x2
    36cc:	0f0d1d00 	0x0f0d1d00
    36d0:	051b0000 	0x051b0000
    36d4:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    36d8:	1c0029f8 	pcaddu12i	$r24,335(0x14f)
    36dc:	00201412 	div.w	$r18,$r0,$r5
    36e0:	0011921c 	sub.d	$r28,$r16,$r4
    36e4:	00090a00 	bytepick.w	$r0,$r16,$r2,0x2
    36e8:	54011300 	bl	-67108592(0xc000110) # fc0037f8 <_RAM_DATA+0x7c0027f8>
    36ec:	28500305 	ld.h	$r5,$r24,1024(0x400)
    36f0:	01131c00 	fcopysign.d	$f0,$f0,$f7
    36f4:	7a080255 	0x7a080255
    36f8:	05560113 	0x05560113
    36fc:	0029f803 	0x0029f803
    3700:	2416001c 	ldptr.w	$r28,$r0,5632(0x1600)
    3704:	fe1c0020 	0xfe1c0020
    3708:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    370c:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3710:	ffac80a0 	0xffac80a0
    3714:	5501137b 	bl	-34799344(0xded0110) # fded3824 <_RAM_DATA+0x7ded2824>
    3718:	24414003 	ldptr.w	$r3,$r0,16704(0x4140)
    371c:	591b0000 	beq	$r0,$r0,72448(0x11b00) # 1521c <_start-0x1bfeade4>
    3720:	0100000f 	0x0100000f
    3724:	1fb80672 	pcaddu18i	$r18,-147405(0xdc033)
    3728:	003c1c00 	0x003c1c00
    372c:	9c010000 	0x9c010000
    3730:	0000098d 	0x0000098d
    3734:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3738:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    373c:	10030500 	addu16i.d	$r0,$r8,193(0xc1)
    3740:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    3744:	1c001fd8 	pcaddu12i	$r24,254(0xfe)
    3748:	00001192 	clo.w	$r18,$r12
    374c:	00000971 	0x00000971
    3750:	05540113 	0x05540113
    3754:	00285003 	0x00285003
    3758:	5501131c 	bl	-59703024(0xc710110) # fc713868 <_RAM_DATA+0x7c712868>
    375c:	13750802 	addu16i.d	$r2,$r0,-8894(0xdd42)
    3760:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3764:	1c002a10 	pcaddu12i	$r16,336(0x150)
    3768:	1fe81600 	pcaddu18i	$r0,-48976(0xf40b0)
    376c:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3770:	01130000 	fcopysign.d	$f0,$f0,$f0
    3774:	a0110654 	0xa0110654
    3778:	7bffac80 	0x7bffac80
    377c:	03550113 	andi	$r19,$r8,0x540
    3780:	00244040 	crc.w.b.w	$r0,$r2,$r16
    3784:	118d1b00 	addu16i.d	$r0,$r24,25414(0x6346)
    3788:	6c010000 	bgeu	$r0,$r0,256(0x100) # 3888 <_start-0x1bffc778>
    378c:	001f7c06 	mulw.d.w	$r6,$r0,$r31
    3790:	00003c1c 	revb.d	$r28,$r0
    3794:	f49c0100 	0xf49c0100
    3798:	1d000009 	pcaddu12i	$r9,-524288(0x80000)
    379c:	00000f0d 	0x00000f0d
    37a0:	0000051b 	0x0000051b
    37a4:	2a280305 	ld.bu	$r5,$r24,-1536(0xa00)
    37a8:	9c121c00 	0x9c121c00
    37ac:	921c001f 	0x921c001f
    37b0:	d8000011 	0xd8000011
    37b4:	13000009 	addu16i.d	$r9,$r0,-16384(0xc000)
    37b8:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    37bc:	1c002850 	pcaddu12i	$r16,322(0x142)
    37c0:	02550113 	sltui	$r19,$r8,1344(0x540)
    37c4:	01136f08 	fcopysign.d	$f8,$f24,$f27
    37c8:	28030556 	ld.b	$r22,$r10,193(0xc1)
    37cc:	001c002a 	mul.w	$r10,$r1,$r0
    37d0:	001fac16 	mulw.d.wu	$r22,$r0,$r11
    37d4:	0011fe1c 	sub.d	$r28,$r16,$r31
    37d8:	54011300 	bl	-67108592(0xc000110) # fc0038e8 <_RAM_DATA+0x7c0028e8>
    37dc:	80a01106 	0x80a01106
    37e0:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    37e4:	40035501 	beqz	$r8,262996(0x40354) # 43b38 <_start-0x1bfbc4c8>
    37e8:	0000243f 	clz.d	$r31,$r1
    37ec:	0010731b 	add.w	$r27,$r24,$r28
    37f0:	06660100 	0x06660100
    37f4:	1c001f40 	pcaddu12i	$r0,250(0xfa)
    37f8:	0000003c 	0x0000003c
    37fc:	0a5b9c01 	xvfmsub.s	$xr1,$xr0,$xr7,$xr23
    3800:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    3804:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3808:	05000005 	0x05000005
    380c:	002a4003 	break	0x4003
    3810:	1f60121c 	pcaddu18i	$r28,-327536(0xb0090)
    3814:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3818:	0a3f0000 	0x0a3f0000
    381c:	01130000 	fcopysign.d	$f0,$f0,$f0
    3820:	50030554 	b	89129732(0x5500304) # 5503b24 <_start-0x16afc4dc>
    3824:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    3828:	08025501 	0x08025501
    382c:	56011369 	bl	-39452400(0xda60110) # fda6393c <_RAM_DATA+0x7da6293c>
    3830:	2a400305 	ld.hu	$r5,$r24,0
    3834:	16001c00 	lu32i.d	$r0,224(0xe0)
    3838:	1c001f70 	pcaddu12i	$r16,251(0xfb)
    383c:	000011fe 	clo.w	$r30,$r15
    3840:	06540113 	0x06540113
    3844:	ac80a011 	0xac80a011
    3848:	01137bff 	fcopysign.d	$f31,$f31,$f30
    384c:	3e400355 	0x3e400355
    3850:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3854:	00000f32 	0x00000f32
    3858:	04066001 	csrrd	$r1,0x198
    385c:	3c1c001f 	0x3c1c001f
    3860:	01000000 	0x01000000
    3864:	000ac29c 	0x000ac29c
    3868:	0f0d1d00 	0x0f0d1d00
    386c:	051b0000 	0x051b0000
    3870:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3874:	1c002a58 	pcaddu12i	$r24,338(0x152)
    3878:	001f2412 	mulw.d.w	$r18,$r0,$r9
    387c:	0011921c 	sub.d	$r28,$r16,$r4
    3880:	000aa600 	0x000aa600
    3884:	54011300 	bl	-67108592(0xc000110) # fc003994 <_RAM_DATA+0x7c002994>
    3888:	28500305 	ld.h	$r5,$r24,1024(0x400)
    388c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3890:	63080255 	blt	$r18,$r21,-63488(0x30800) # ffff4090 <_RAM_DATA+0x7fff3090>
    3894:	05560113 	0x05560113
    3898:	002a5803 	break	0x5803
    389c:	3416001c 	0x3416001c
    38a0:	fe1c001f 	0xfe1c001f
    38a4:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    38a8:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    38ac:	ffac80a0 	0xffac80a0
    38b0:	5501137b 	bl	-34799344(0xded0110) # fded39c0 <_RAM_DATA+0x7ded29c0>
    38b4:	243d4003 	ldptr.w	$r3,$r0,15680(0x3d40)
    38b8:	751b0000 	xvilvl.w	$xr0,$xr0,$xr0
    38bc:	01000011 	0x01000011
    38c0:	1ec8065a 	pcaddu18i	$r26,409650(0x64032)
    38c4:	003c1c00 	0x003c1c00
    38c8:	9c010000 	0x9c010000
    38cc:	00000b29 	0x00000b29
    38d0:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    38d4:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    38d8:	70030500 	vsle.w	$vr0,$vr8,$vr1
    38dc:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    38e0:	1c001ee8 	pcaddu12i	$r8,247(0xf7)
    38e4:	00001192 	clo.w	$r18,$r12
    38e8:	00000b0d 	0x00000b0d
    38ec:	05540113 	0x05540113
    38f0:	00285003 	0x00285003
    38f4:	5501131c 	bl	-59703024(0xc710110) # fc713a04 <_RAM_DATA+0x7c712a04>
    38f8:	135d0802 	addu16i.d	$r2,$r0,-10430(0xd742)
    38fc:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3900:	1c002a70 	pcaddu12i	$r16,339(0x153)
    3904:	1ef81600 	pcaddu18i	$r0,508080(0x7c0b0)
    3908:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    390c:	01130000 	fcopysign.d	$f0,$f0,$f0
    3910:	a0110654 	0xa0110654
    3914:	7bffac80 	0x7bffac80
    3918:	03550113 	andi	$r19,$r8,0x540
    391c:	00243c40 	crc.w.b.w	$r0,$r2,$r15
    3920:	105b1b00 	addu16i.d	$r0,$r24,5830(0x16c6)
    3924:	53010000 	b	196864(0x30100) # 33a24 <_start-0x1bfcc5dc>
    3928:	001e8c06 	mulh.du	$r6,$r0,$r3
    392c:	00003c1c 	revb.d	$r28,$r0
    3930:	909c0100 	0x909c0100
    3934:	1d00000b 	pcaddu12i	$r11,-524288(0x80000)
    3938:	00000f0d 	0x00000f0d
    393c:	0000051b 	0x0000051b
    3940:	2a880305 	ld.wu	$r5,$r24,512(0x200)
    3944:	ac121c00 	0xac121c00
    3948:	921c001e 	0x921c001e
    394c:	74000011 	xvseq.b	$xr17,$xr0,$xr0
    3950:	1300000b 	addu16i.d	$r11,$r0,-16384(0xc000)
    3954:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3958:	1c002850 	pcaddu12i	$r16,322(0x142)
    395c:	02550113 	sltui	$r19,$r8,1344(0x540)
    3960:	01135608 	fcopysign.d	$f8,$f16,$f21
    3964:	88030556 	0x88030556
    3968:	001c002a 	mul.w	$r10,$r1,$r0
    396c:	001ebc16 	mulh.du	$r22,$r0,$r15
    3970:	0011fe1c 	sub.d	$r28,$r16,$r31
    3974:	54011300 	bl	-67108592(0xc000110) # fc003a84 <_RAM_DATA+0x7c002a84>
    3978:	80a01106 	0x80a01106
    397c:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3980:	0a035501 	0x0a035501
    3984:	00008000 	0x00008000
    3988:	000f1a1b 	bytepick.d	$r27,$r16,$r6,0x6
    398c:	064d0100 	0x064d0100
    3990:	1c001e50 	pcaddu12i	$r16,242(0xf2)
    3994:	0000003c 	0x0000003c
    3998:	0bf79c01 	0x0bf79c01
    399c:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    39a0:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    39a4:	05000005 	0x05000005
    39a8:	002aa003 	dbcl	0x2003
    39ac:	1e70121c 	pcaddu18i	$r28,229520(0x38090)
    39b0:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    39b4:	0bdb0000 	0x0bdb0000
    39b8:	01130000 	fcopysign.d	$f0,$f0,$f0
    39bc:	50030554 	b	89129732(0x5500304) # 5503cc0 <_start-0x16afc340>
    39c0:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    39c4:	08025501 	0x08025501
    39c8:	56011350 	bl	-46006000(0xd420110) # fd423ad8 <_RAM_DATA+0x7d422ad8>
    39cc:	2aa00305 	ld.wu	$r5,$r24,-2048(0x800)
    39d0:	16001c00 	lu32i.d	$r0,224(0xe0)
    39d4:	1c001e80 	pcaddu12i	$r0,244(0xf4)
    39d8:	000011fe 	clo.w	$r30,$r15
    39dc:	06540113 	0x06540113
    39e0:	ac80a011 	0xac80a011
    39e4:	01137bff 	fcopysign.d	$f31,$f31,$f30
    39e8:	000a0355 	0x000a0355
    39ec:	1b000040 	pcalau12i	$r0,-524286(0x80002)
    39f0:	0000115d 	clo.w	$r29,$r10
    39f4:	14064801 	lu12i.w	$r1,12864(0x3240)
    39f8:	3c1c001e 	0x3c1c001e
    39fc:	01000000 	0x01000000
    3a00:	000c5e9c 	bytepick.d	$r28,$r20,$r23,0x0
    3a04:	0f0d1d00 	0x0f0d1d00
    3a08:	051b0000 	0x051b0000
    3a0c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3a10:	1c002ab8 	pcaddu12i	$r24,341(0x155)
    3a14:	001e3412 	mulh.d	$r18,$r0,$r13
    3a18:	0011921c 	sub.d	$r28,$r16,$r4
    3a1c:	000c4200 	bytepick.d	$r0,$r16,$r16,0x0
    3a20:	54011300 	bl	-67108592(0xc000110) # fc003b30 <_RAM_DATA+0x7c002b30>
    3a24:	28500305 	ld.h	$r5,$r24,1024(0x400)
    3a28:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3a2c:	4a080255 	0x4a080255
    3a30:	05560113 	0x05560113
    3a34:	002ab803 	dbcl	0x3803
    3a38:	4416001c 	bnez	$r0,-1042944(0x701600) # fff05038 <_RAM_DATA+0x7ff04038>
    3a3c:	fe1c001e 	0xfe1c001e
    3a40:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3a44:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3a48:	ffac80a0 	0xffac80a0
    3a4c:	5501137b 	bl	-34799344(0xded0110) # fded3b5c <_RAM_DATA+0x7ded2b5c>
    3a50:	20000a03 	ll.w	$r3,$r16,8(0x8)
    3a54:	3a1b0000 	0x3a1b0000
    3a58:	01000010 	0x01000010
    3a5c:	1dd80643 	pcaddu12i	$r3,-81870(0xec032)
    3a60:	003c1c00 	0x003c1c00
    3a64:	9c010000 	0x9c010000
    3a68:	00000cc5 	0x00000cc5
    3a6c:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3a70:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3a74:	d0030500 	0xd0030500
    3a78:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    3a7c:	1c001df8 	pcaddu12i	$r24,239(0xef)
    3a80:	00001192 	clo.w	$r18,$r12
    3a84:	00000ca9 	0x00000ca9
    3a88:	05540113 	0x05540113
    3a8c:	00285003 	0x00285003
    3a90:	5501131c 	bl	-59703024(0xc710110) # fc713ba0 <_RAM_DATA+0x7c712ba0>
    3a94:	13450802 	addu16i.d	$r2,$r0,-11966(0xd142)
    3a98:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3a9c:	1c002ad0 	pcaddu12i	$r16,342(0x156)
    3aa0:	1e081600 	pcaddu18i	$r0,16560(0x40b0)
    3aa4:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3aa8:	01130000 	fcopysign.d	$f0,$f0,$f0
    3aac:	a0110654 	0xa0110654
    3ab0:	7bffac80 	0x7bffac80
    3ab4:	03550113 	andi	$r19,$r8,0x540
    3ab8:	0010000a 	add.w	$r10,$r0,$r0
    3abc:	0e641b00 	0x0e641b00
    3ac0:	3d010000 	0x3d010000
    3ac4:	001d9c06 	mul.d	$r6,$r0,$r7
    3ac8:	00003c1c 	revb.d	$r28,$r0
    3acc:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
    3ad0:	1d00000d 	pcaddu12i	$r13,-524288(0x80000)
    3ad4:	00000f0d 	0x00000f0d
    3ad8:	0000051b 	0x0000051b
    3adc:	2ae80305 	preld	0x5,$r24,-1536(0xa00)
    3ae0:	bc121c00 	0xbc121c00
    3ae4:	921c001d 	0x921c001d
    3ae8:	10000011 	addu16i.d	$r17,$r0,0
    3aec:	1300000d 	addu16i.d	$r13,$r0,-16384(0xc000)
    3af0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3af4:	1c002850 	pcaddu12i	$r16,322(0x142)
    3af8:	02550113 	sltui	$r19,$r8,1344(0x540)
    3afc:	01134008 	fcopysign.d	$f8,$f0,$f16
    3b00:	e8030556 	0xe8030556
    3b04:	001c002a 	mul.w	$r10,$r1,$r0
    3b08:	001dcc16 	mul.d	$r22,$r0,$r19
    3b0c:	0011fe1c 	sub.d	$r28,$r16,$r31
    3b10:	54011300 	bl	-67108592(0xc000110) # fc003c20 <_RAM_DATA+0x7c002c20>
    3b14:	80a01106 	0x80a01106
    3b18:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3b1c:	0a035501 	0x0a035501
    3b20:	00000800 	0x00000800
    3b24:	0011451b 	sub.w	$r27,$r8,$r17
    3b28:	06370100 	cacop	0x0,$r8,-576(0xdc0)
    3b2c:	1c001d60 	pcaddu12i	$r0,235(0xeb)
    3b30:	0000003c 	0x0000003c
    3b34:	0d939c01 	0x0d939c01
    3b38:	0d1d0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr26
    3b3c:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3b40:	05000005 	0x05000005
    3b44:	002b0003 	syscall	0x3
    3b48:	1d80121c 	pcaddu12i	$r28,-262000(0xc0090)
    3b4c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3b50:	0d770000 	0x0d770000
    3b54:	01130000 	fcopysign.d	$f0,$f0,$f0
    3b58:	50030554 	b	89129732(0x5500304) # 5503e5c <_start-0x16afc1a4>
    3b5c:	131c0028 	addu16i.d	$r8,$r1,-14592(0xc700)
    3b60:	08025501 	0x08025501
    3b64:	5601133a 	bl	-51773168(0xcea0110) # fcea3c74 <_RAM_DATA+0x7cea2c74>
    3b68:	2b000305 	fld.s	$f5,$r24,0
    3b6c:	16001c00 	lu32i.d	$r0,224(0xe0)
    3b70:	1c001d90 	pcaddu12i	$r16,236(0xec)
    3b74:	000011fe 	clo.w	$r30,$r15
    3b78:	06540113 	0x06540113
    3b7c:	ac80a011 	0xac80a011
    3b80:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3b84:	000a0355 	0x000a0355
    3b88:	1b000004 	pcalau12i	$r4,-524288(0x80000)
    3b8c:	00001022 	clo.w	$r2,$r1
    3b90:	24063101 	ldptr.w	$r1,$r8,1584(0x630)
    3b94:	3c1c001d 	0x3c1c001d
    3b98:	01000000 	0x01000000
    3b9c:	000dfa9c 	bytepick.d	$r28,$r20,$r30,0x3
    3ba0:	0f0d1d00 	0x0f0d1d00
    3ba4:	051b0000 	0x051b0000
    3ba8:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3bac:	1c002b18 	pcaddu12i	$r24,344(0x158)
    3bb0:	001d4412 	mulh.wu	$r18,$r0,$r17
    3bb4:	0011921c 	sub.d	$r28,$r16,$r4
    3bb8:	000dde00 	bytepick.d	$r0,$r16,$r23,0x3
    3bbc:	54011300 	bl	-67108592(0xc000110) # fc003ccc <_RAM_DATA+0x7c002ccc>
    3bc0:	28500305 	ld.h	$r5,$r24,1024(0x400)
    3bc4:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3bc8:	34080255 	0x34080255
    3bcc:	05560113 	0x05560113
    3bd0:	002b1803 	syscall	0x1803
    3bd4:	5416001c 	bl	7345664(0x701600) # 7051d4 <_start-0x1b8fae2c>
    3bd8:	fe1c001d 	0xfe1c001d
    3bdc:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3be0:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3be4:	ffac80a0 	0xffac80a0
    3be8:	5501137b 	bl	-34799344(0xded0110) # fded3cf8 <_RAM_DATA+0x7ded2cf8>
    3bec:	02000a03 	slti	$r3,$r16,2(0x2)
    3bf0:	541b0000 	bl	6912(0x1b00) # 56f0 <_start-0x1bffa910>
    3bf4:	01000012 	0x01000012
    3bf8:	1ce8062c 	pcaddu12i	$r12,475185(0x74031)
    3bfc:	003c1c00 	0x003c1c00
    3c00:	9c010000 	0x9c010000
    3c04:	00000e61 	0x00000e61
    3c08:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3c0c:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3c10:	30030500 	0x30030500
    3c14:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3c18:	1c001d08 	pcaddu12i	$r8,232(0xe8)
    3c1c:	00001192 	clo.w	$r18,$r12
    3c20:	00000e45 	0x00000e45
    3c24:	05540113 	0x05540113
    3c28:	00285003 	0x00285003
    3c2c:	5501131c 	bl	-59703024(0xc710110) # fc713d3c <_RAM_DATA+0x7c712d3c>
    3c30:	132e0802 	addu16i.d	$r2,$r0,-13438(0xcb82)
    3c34:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3c38:	1c002b30 	pcaddu12i	$r16,345(0x159)
    3c3c:	1d181600 	pcaddu12i	$r0,-474960(0x8c0b0)
    3c40:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3c44:	01130000 	fcopysign.d	$f0,$f0,$f0
    3c48:	a0110654 	0xa0110654
    3c4c:	7bffac80 	0x7bffac80
    3c50:	03550113 	andi	$r19,$r8,0x540
    3c54:	0001000a 	0x0001000a
    3c58:	112d1b00 	addu16i.d	$r0,$r24,19270(0x4b46)
    3c5c:	26010000 	ldptr.d	$r0,$r0,256(0x100)
    3c60:	001cac06 	mulh.w	$r6,$r0,$r11
    3c64:	00003c1c 	revb.d	$r28,$r0
    3c68:	c79c0100 	0xc79c0100
    3c6c:	1d00000e 	pcaddu12i	$r14,-524288(0x80000)
    3c70:	00000f0d 	0x00000f0d
    3c74:	0000051b 	0x0000051b
    3c78:	2b480305 	fst.s	$f5,$r24,512(0x200)
    3c7c:	cc121c00 	0xcc121c00
    3c80:	921c001c 	0x921c001c
    3c84:	ac000011 	0xac000011
    3c88:	1300000e 	addu16i.d	$r14,$r0,-16384(0xc000)
    3c8c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3c90:	1c002850 	pcaddu12i	$r16,322(0x142)
    3c94:	02550113 	sltui	$r19,$r8,1344(0x540)
    3c98:	01132908 	fcopysign.d	$f8,$f8,$f10
    3c9c:	48030556 	bcnez	$fcc2,-2620668(0x580304) # ffd83fa0 <_RAM_DATA+0x7fd82fa0>
    3ca0:	001c002b 	mul.w	$r11,$r1,$r0
    3ca4:	001cdc16 	mulh.w	$r22,$r0,$r23
    3ca8:	0011fe1c 	sub.d	$r28,$r16,$r31
    3cac:	54011300 	bl	-67108592(0xc000110) # fc003dbc <_RAM_DATA+0x7c002dbc>
    3cb0:	80a01106 	0x80a01106
    3cb4:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3cb8:	08025501 	0x08025501
    3cbc:	1b000080 	pcalau12i	$r0,-524284(0x80004)
    3cc0:	0000100a 	clo.w	$r10,$r0
    3cc4:	70062101 	vslt.b	$vr1,$vr8,$vr8
    3cc8:	3c1c001c 	0x3c1c001c
    3ccc:	01000000 	0x01000000
    3cd0:	000f2d9c 	bytepick.d	$r28,$r12,$r11,0x6
    3cd4:	0f0d1d00 	0x0f0d1d00
    3cd8:	051b0000 	0x051b0000
    3cdc:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3ce0:	1c002b60 	pcaddu12i	$r0,347(0x15b)
    3ce4:	001c9012 	mulh.w	$r18,$r0,$r4
    3ce8:	0011921c 	sub.d	$r28,$r16,$r4
    3cec:	000f1200 	bytepick.d	$r0,$r16,$r4,0x6
    3cf0:	54011300 	bl	-67108592(0xc000110) # fc003e00 <_RAM_DATA+0x7c002e00>
    3cf4:	28500305 	ld.h	$r5,$r24,1024(0x400)
    3cf8:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3cfc:	23080255 	sc.d	$r21,$r18,2048(0x800)
    3d00:	05560113 	0x05560113
    3d04:	002b6003 	syscall	0x6003
    3d08:	a016001c 	0xa016001c
    3d0c:	fe1c001c 	0xfe1c001c
    3d10:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3d14:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3d18:	ffac80a0 	0xffac80a0
    3d1c:	5501137b 	bl	-34799344(0xded0110) # fded3e2c <_RAM_DATA+0x7ded2e2c>
    3d20:	00400802 	0x00400802
    3d24:	12351b00 	addu16i.d	$r0,$r24,-29370(0x8d46)
    3d28:	1c010000 	pcaddu12i	$r0,2048(0x800)
    3d2c:	001c3406 	mul.w	$r6,$r0,$r13
    3d30:	00003c1c 	revb.d	$r28,$r0
    3d34:	929c0100 	0x929c0100
    3d38:	1d00000f 	pcaddu12i	$r15,-524288(0x80000)
    3d3c:	00000f0d 	0x00000f0d
    3d40:	0000051b 	0x0000051b
    3d44:	2b780305 	fst.s	$f5,$r24,-512(0xe00)
    3d48:	54121c00 	bl	4636(0x121c) # 4f64 <_start-0x1bffb09c>
    3d4c:	921c001c 	0x921c001c
    3d50:	77000011 	0x77000011
    3d54:	1300000f 	addu16i.d	$r15,$r0,-16384(0xc000)
    3d58:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3d5c:	1c002850 	pcaddu12i	$r16,322(0x142)
    3d60:	01550113 	0x01550113
    3d64:	5601134e 	bl	-46530288(0xd3a0110) # fd3a3e74 <_RAM_DATA+0x7d3a2e74>
    3d68:	2b780305 	fst.s	$f5,$r24,-512(0xe00)
    3d6c:	16001c00 	lu32i.d	$r0,224(0xe0)
    3d70:	1c001c64 	pcaddu12i	$r4,227(0xe3)
    3d74:	000011fe 	clo.w	$r30,$r15
    3d78:	06540113 	0x06540113
    3d7c:	ac80a011 	0xac80a011
    3d80:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3d84:	20080255 	ll.w	$r21,$r18,2048(0x800)
    3d88:	fd1b0000 	0xfd1b0000
    3d8c:	01000010 	0x01000010
    3d90:	1bf80617 	pcalau12i	$r23,-16336(0xfc030)
    3d94:	003c1c00 	0x003c1c00
    3d98:	9c010000 	0x9c010000
    3d9c:	00000ff6 	0x00000ff6
    3da0:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3da4:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3da8:	90030500 	0x90030500
    3dac:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3db0:	1c001c18 	pcaddu12i	$r24,224(0xe0)
    3db4:	00001192 	clo.w	$r18,$r12
    3db8:	00000fdc 	0x00000fdc
    3dbc:	05540113 	0x05540113
    3dc0:	00285003 	0x00285003
    3dc4:	5501131c 	bl	-59703024(0xc710110) # fc713ed4 <_RAM_DATA+0x7c712ed4>
    3dc8:	01134901 	fcopysign.d	$f1,$f8,$f18
    3dcc:	90030556 	0x90030556
    3dd0:	001c002b 	mul.w	$r11,$r1,$r0
    3dd4:	001c2816 	mul.w	$r22,$r0,$r10
    3dd8:	0011fe1c 	sub.d	$r28,$r16,$r31
    3ddc:	54011300 	bl	-67108592(0xc000110) # fc003eec <_RAM_DATA+0x7c002eec>
    3de0:	80a01106 	0x80a01106
    3de4:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3de8:	40015501 	beqz	$r8,262484(0x40154) # 43f3c <_start-0x1bfbc0c4>
    3dec:	da1b0000 	0xda1b0000
    3df0:	0100000f 	0x0100000f
    3df4:	1bbc0612 	pcalau12i	$r18,-139216(0xde030)
    3df8:	003c1c00 	0x003c1c00
    3dfc:	9c010000 	0x9c010000
    3e00:	0000105a 	clo.w	$r26,$r2
    3e04:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3e08:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3e0c:	a8030500 	0xa8030500
    3e10:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3e14:	1c001bdc 	pcaddu12i	$r28,222(0xde)
    3e18:	00001192 	clo.w	$r18,$r12
    3e1c:	00001040 	clo.w	$r0,$r2
    3e20:	05540113 	0x05540113
    3e24:	00285003 	0x00285003
    3e28:	5501131c 	bl	-59703024(0xc710110) # fc713f38 <_RAM_DATA+0x7c712f38>
    3e2c:	01134401 	fcopysign.d	$f1,$f0,$f17
    3e30:	a8030556 	0xa8030556
    3e34:	001c002b 	mul.w	$r11,$r1,$r0
    3e38:	001bec16 	rotr.d	$r22,$r0,$r27
    3e3c:	0011fe1c 	sub.d	$r28,$r16,$r31
    3e40:	54011300 	bl	-67108592(0xc000110) # fc003f50 <_RAM_DATA+0x7c002f50>
    3e44:	80a01106 	0x80a01106
    3e48:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3e4c:	38015501 	0x38015501
    3e50:	f81b0000 	0xf81b0000
    3e54:	01000011 	0x01000011
    3e58:	1b80060d 	pcalau12i	$r13,-262096(0xc0030)
    3e5c:	003c1c00 	0x003c1c00
    3e60:	9c010000 	0x9c010000
    3e64:	000010be 	clo.w	$r30,$r5
    3e68:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3e6c:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3e70:	c0030500 	0xc0030500
    3e74:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3e78:	1c001ba0 	pcaddu12i	$r0,221(0xdd)
    3e7c:	00001192 	clo.w	$r18,$r12
    3e80:	000010a4 	clo.w	$r4,$r5
    3e84:	05540113 	0x05540113
    3e88:	00285003 	0x00285003
    3e8c:	5501131c 	bl	-59703024(0xc710110) # fc713f9c <_RAM_DATA+0x7c712f9c>
    3e90:	01133f01 	fcopysign.d	$f1,$f24,$f15
    3e94:	c0030556 	0xc0030556
    3e98:	001c002b 	mul.w	$r11,$r1,$r0
    3e9c:	001bb016 	rotr.d	$r22,$r0,$r12
    3ea0:	0011fe1c 	sub.d	$r28,$r16,$r31
    3ea4:	54011300 	bl	-67108592(0xc000110) # fc003fb4 <_RAM_DATA+0x7c002fb4>
    3ea8:	80a01106 	0x80a01106
    3eac:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3eb0:	34015501 	0x34015501
    3eb4:	c01b0000 	0xc01b0000
    3eb8:	01000010 	0x01000010
    3ebc:	1b440608 	pcalau12i	$r8,-384976(0xa2030)
    3ec0:	003c1c00 	0x003c1c00
    3ec4:	9c010000 	0x9c010000
    3ec8:	00001122 	clo.w	$r2,$r9
    3ecc:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3ed0:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3ed4:	d8030500 	0xd8030500
    3ed8:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3edc:	1c001b64 	pcaddu12i	$r4,219(0xdb)
    3ee0:	00001192 	clo.w	$r18,$r12
    3ee4:	00001108 	clo.w	$r8,$r8
    3ee8:	05540113 	0x05540113
    3eec:	00285003 	0x00285003
    3ef0:	5501131c 	bl	-59703024(0xc710110) # fc714000 <_RAM_DATA+0x7c713000>
    3ef4:	01133a01 	fcopysign.d	$f1,$f16,$f14
    3ef8:	d8030556 	0xd8030556
    3efc:	001c002b 	mul.w	$r11,$r1,$r0
    3f00:	001b7416 	rotr.w	$r22,$r0,$r29
    3f04:	0011fe1c 	sub.d	$r28,$r16,$r31
    3f08:	54011300 	bl	-67108592(0xc000110) # fc004018 <_RAM_DATA+0x7c003018>
    3f0c:	80a01106 	0x80a01106
    3f10:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3f14:	32015501 	0x32015501
    3f18:	711b0000 	vilvl.w	$vr0,$vr0,$vr0
    3f1c:	0100000f 	0x0100000f
    3f20:	1b080603 	pcalau12i	$r3,-507856(0x84030)
    3f24:	003c1c00 	0x003c1c00
    3f28:	9c010000 	0x9c010000
    3f2c:	00001186 	clo.w	$r6,$r12
    3f30:	000f0d1d 	bytepick.d	$r29,$r8,$r3,0x6
    3f34:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3f38:	f0030500 	0xf0030500
    3f3c:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3f40:	1c001b28 	pcaddu12i	$r8,217(0xd9)
    3f44:	00001192 	clo.w	$r18,$r12
    3f48:	0000116c 	clo.w	$r12,$r11
    3f4c:	05540113 	0x05540113
    3f50:	00285003 	0x00285003
    3f54:	5501131c 	bl	-59703024(0xc710110) # fc714064 <_RAM_DATA+0x7c713064>
    3f58:	01133501 	fcopysign.d	$f1,$f8,$f13
    3f5c:	f0030556 	0xf0030556
    3f60:	001c002b 	mul.w	$r11,$r1,$r0
    3f64:	001b3816 	rotr.w	$r22,$r0,$r14
    3f68:	0011fe1c 	sub.d	$r28,$r16,$r31
    3f6c:	54011300 	bl	-67108592(0xc000110) # fc00407c <_RAM_DATA+0x7c00307c>
    3f70:	80a01106 	0x80a01106
    3f74:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3f78:	31015501 	0x31015501
    3f7c:	591f0000 	beq	$r0,$r0,73472(0x11f00) # 15e7c <_start-0x1bfea184>
    3f80:	59000006 	beq	$r0,$r6,65536(0x10000) # 13f80 <_start-0x1bfec080>
    3f84:	07000006 	0x07000006
    3f88:	141f060b 	lu12i.w	$r11,63536(0xf830)
    3f8c:	14000007 	lu12i.w	$r7,0
    3f90:	08000007 	0x08000007
    3f94:	451f0d0f 	bnez	$r8,4005644(0x3d1f0c) # 3d5ea0 <_start-0x1bc2a160>
    3f98:	45000006 	bnez	$r0,1638400(0x190000) # 193f98 <_start-0x1be6c068>
    3f9c:	07000006 	0x07000006
    3fa0:	f21f060a 	0xf21f060a
    3fa4:	f200000d 	0xf200000d
    3fa8:	0600000d 	cacop	0xd,$r0,0
    3fac:	8e1f0652 	0x8e1f0652
    3fb0:	8e00000c 	0x8e00000c
    3fb4:	0900000c 	0x0900000c
    3fb8:	6e1f0c4d 	bgeu	$r2,$r13,-123124(0x21f0c) # fffe5ec4 <_RAM_DATA+0x7ffe4ec4>
    3fbc:	6e000007 	bgeu	$r0,$r7,-131072(0x20000) # fffe3fbc <_RAM_DATA+0x7ffe2fbc>
    3fc0:	0a000007 	0x0a000007
    3fc4:	fd1f0616 	0xfd1f0616
    3fc8:	fd00000b 	0xfd00000b
    3fcc:	0900000b 	0x0900000b
    3fd0:	c51f064e 	0xc51f064e
    3fd4:	c500000b 	0xc500000b
    3fd8:	0b00000b 	0x0b00000b
    3fdc:	691f0607 	bltu	$r16,$r7,73476(0x11f04) # 15ee0 <_start-0x1bfea120>
    3fe0:	69000006 	bltu	$r0,$r6,65536(0x10000) # 13fe0 <_start-0x1bfec020>
    3fe4:	07000006 	0x07000006
    3fe8:	0b1f060c 	0x0b1f060c
    3fec:	0b000006 	0x0b000006
    3ff0:	07000006 	0x07000006
    3ff4:	891f0609 	0x891f0609
    3ff8:	8900000a 	0x8900000a
    3ffc:	0c00000a 	0x0c00000a
    4000:	Address 0x0000000000004000 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
       0:	10001101 	addu16i.d	$r1,$r8,4(0x4)
       4:	12011106 	addu16i.d	$r6,$r8,-32700(0x8044)
       8:	1b0e0301 	pcalau12i	$r1,-495592(0x87018)
       c:	130e250e 	addu16i.d	$r14,$r8,-15479(0xc389)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
      10:	00000005 	0x00000005
      14:	25011101 	stptr.w	$r1,$r8,272(0x110)
      18:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
      1c:	550e1b0e 	bl	-63369704(0xc390e18) # fc390e34 <_RAM_DATA+0x7c38fe34>
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
      20:	10011117 	addu16i.d	$r23,$r8,68(0x44)
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
      24:	02000017 	slti	$r23,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
      28:	0b0b0024 	0x0b0b0024
      2c:	0e030b3e 	0x0e030b3e
      30:	16030000 	lu32i.d	$r0,6144(0x1800)
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
      34:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      38:	390b3b0b 	0x390b3b0b
      3c:	0013490b 	maskeqz	$r11,$r8,$r18
      40:	00240400 	crc.w.b.w	$r0,$r0,$r1
      44:	0b3e0b0b 	0x0b3e0b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      48:	00000803 	0x00000803
      4c:	49003505 	bcnez	$fcc0,1376308(0x150034) # 150080 <_start-0x1beaff80>
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	06000013 	cacop	0x13,$r0,0
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
      54:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 1)
      58:	34070000 	0x34070000
      5c:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
      60:	390b3b0b 	0x390b3b0b
      64:	3f13490b 	0x3f13490b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	00193c19 	srl.d	$r25,$r0,$r15
      6c:	01130800 	fcopysign.d	$f0,$f0,$f2
      70:	0b3a0b0b 	0x0b3a0b0b
      74:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
      78:	00001301 	clo.w	$r1,$r24
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:33
      7c:	03000d09 	lu52i.d	$r9,$r8,3(0x3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
      80:	3b0b3a0e 	0x3b0b3a0e
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
      84:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0bbc <_start-0x1bd2f444>
      88:	000b3813 	0x000b3813
      8c:	000d0a00 	bytepick.d	$r0,$r16,$r2,0x2
      90:	0b3a0803 	0x0b3a0803
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 1)
      94:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
      98:	0b381349 	0x0b381349
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
      9c:	340b0000 	0x340b0000
      a0:	3a0e0300 	0x3a0e0300
      a4:	39053b0b 	0x39053b0b
      a8:	3f13490b 	0x3f13490b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
      ac:	00180219 	sra.w	$r25,$r16,$r0
      b0:	002e0c00 	0x002e0c00
      b4:	0e03193f 	0x0e03193f
      b8:	053b0b3a 	0x053b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
      bc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
      c0:	06120111 	cacop	0x11,$r8,1152(0x480)
      c4:	42971840 	beqz	$r2,169752(0x29718) # 297dc <_start-0x1bfd6824>
      c8:	0d000019 	fsel	$f25,$f0,$f0,$fcc0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	193f012e 	pcaddi	$r14,-395255(0x9f809)
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	0b3a0e03 	0x0b3a0e03
      d4:	0b39053b 	0x0b39053b
      d8:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
      dc:	06120111 	cacop	0x11,$r8,1152(0x480)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	42971840 	beqz	$r2,169752(0x29718) # 297f8 <_start-0x1bfd6808>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	00130119 	maskeqz	$r25,$r8,$r0
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	00050e00 	alsl.w	$r0,$r16,$r3,0x3
      ec:	0b3a0803 	0x0b3a0803
      f0:	0b39053b 	0x0b39053b
      f4:	17021349 	lu32i.d	$r9,-520038(0x8109a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	001742b7 	sll.w	$r23,$r21,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	00050f00 	alsl.w	$r0,$r24,$r3,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	0b3a0e03 	0x0b3a0e03
     104:	0b39053b 	0x0b39053b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     108:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     10c:	001742b7 	sll.w	$r23,$r21,$r16
     110:	00181000 	sra.w	$r0,$r0,$r4
     114:	34110000 	0x34110000
     118:	3a080300 	0x3a080300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	39053b0b 	0x39053b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	12000018 	addu16i.d	$r24,$r0,-32768(0x8000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	0e030034 	0x0e030034
     12c:	053b0b3a 	0x053b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     130:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     134:	42b71702 	beqz	$r24,702228(0xab714) # ab848 <_start-0x1bf547b8>
     138:	13000017 	addu16i.d	$r23,$r0,-16384(0xc000)
     13c:	01018289 	0x01018289
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	8a140000 	0x8a140000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	02000182 	slti	$r2,$r12,0
     14c:	18429118 	pcaddi	$r24,136328(0x21488)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	0f150000 	0x0f150000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	490b0b00 	0x490b0b00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	16000013 	lu32i.d	$r19,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	0b0b000f 	0x0b0b000f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	00000e03 	0x00000e03
     164:	3f012e17 	0x3f012e17
     168:	3a0e0319 	0x3a0e0319
     16c:	390b3b0b 	0x390b3b0b
     170:	4919270b 	0x4919270b
     174:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	97184006 	0x97184006
     17c:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     180:	05180000 	0x05180000
     184:	3a080300 	0x3a080300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	390b3b0b 	0x390b3b0b
     18c:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	05190000 	0x05190000
     198:	3a0e0300 	0x3a0e0300
     19c:	390b3b0b 	0x390b3b0b
     1a0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     1a4:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     1a8:	341a0000 	0x341a0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	3a080300 	0x3a080300
     1b0:	390b3b0b 	0x390b3b0b
     1b4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     1b8:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	341b0000 	0x341b0000
     1c0:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	390b3b0b 	0x390b3b0b
     1c8:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
     1cc:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d0:	0a1c0000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr24
     1d4:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	390b3b0b 	0x390b3b0b
     1dc:	0001110b 	0x0001110b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	82891d00 	0x82891d00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	01110001 	fscaleb.d	$f1,$f0,$f0
     1e8:	00001331 	clo.w	$r17,$r25
     1ec:	0182891e 	0x0182891e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	31011101 	0x31011101
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	00130113 	maskeqz	$r19,$r8,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     1f8:	00341f00 	0x00341f00
     1fc:	0b3a0803 	0x0b3a0803
     200:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	18021349 	pcaddi	$r9,4250(0x109a)
     208:	01200000 	0x01200000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	01134901 	fcopysign.d	$f1,$f8,$f18
     210:	21000013 	sc.w	$r19,$r0,0
     214:	13490021 	addu16i.d	$r1,$r1,-11712(0xd240)
     218:	00000b2f 	0x00000b2f
     21c:	03000522 	lu52i.d	$r2,$r9,1(0x1)
     220:	3b0b3a08 	0x3b0b3a08
     224:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0d5c <_start-0x1bd2f2a4>
     228:	00180213 	sra.w	$r19,$r16,$r0
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	000f2300 	bytepick.d	$r0,$r24,$r8,0x6
     230:	00000b0b 	0x00000b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	3f012e24 	0x3f012e24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	3a0e0319 	0x3a0e0319
     23c:	390b3b0b 	0x390b3b0b
     240:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	40061201 	beqz	$r16,263696(0x40610) # 40854 <_start-0x1bfbf7ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	19429718 	pcaddi	$r24,-387912(0xa14b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	00001301 	clo.w	$r1,$r24
     250:	3f002e25 	0x3f002e25
     254:	6e193c19 	bgeu	$r0,$r25,-124612(0x2193c) # fffe1b90 <_RAM_DATA+0x7ffe0b90>
     258:	3a0e030e 	0x3a0e030e
     25c:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	0000000b 	0x0000000b
     264:	25011101 	stptr.w	$r1,$r8,272(0x110)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
     26c:	550e1b0e 	bl	-63369704(0xc390e18) # fc391084 <_RAM_DATA+0x7c390084>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	10011117 	addu16i.d	$r23,$r8,68(0x44)
     274:	02000017 	slti	$r23,$r0,0
     278:	0b0b0024 	0x0b0b0024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	0e030b3e 	0x0e030b3e
     280:	16030000 	lu32i.d	$r0,6144(0x1800)
     284:	3a0e0300 	0x3a0e0300
     288:	390b3b0b 	0x390b3b0b
     28c:	0013490b 	maskeqz	$r11,$r8,$r18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	00240400 	crc.w.b.w	$r0,$r0,$r1
     294:	0b3e0b0b 	0x0b3e0b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	00000803 	0x00000803
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	49003505 	bcnez	$fcc0,1376308(0x150034) # 1502d0 <_start-0x1beafd30>
     2a0:	06000013 	cacop	0x13,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	0b3e0104 	0x0b3e0104
     2a8:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	0b3b0b3a 	0x0b3b0b3a
     2b0:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	28070000 	ld.b	$r0,$r0,448(0x1c0)
     2b8:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	0800000b 	0x0800000b
     2c0:	08030028 	0x08030028
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	00000b1c 	0x00000b1c
     2c8:	03003409 	lu52i.d	$r9,$r0,13(0xd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0e08 <_start-0x1bd2f1f8>
     2d4:	3c193f13 	0x3c193f13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	0a000019 	0x0a000019
     2dc:	0b0b0113 	0x0b0b0113
     2e0:	0b3b0b3a 	0x0b3b0b3a
     2e4:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     2e8:	0d0b0000 	0x0d0b0000
     2ec:	3a0e0300 	0x3a0e0300
     2f0:	390b3b0b 	0x390b3b0b
     2f4:	3813490b 	0x3813490b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	0c00000b 	0x0c00000b
     2fc:	0803000d 	0x0803000d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	0b3b0b3a 	0x0b3b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     308:	00000b38 	0x00000b38
     30c:	3f012e0d 	0x3f012e0d
     310:	3a0e0319 	0x3a0e0319
     314:	39053b0b 	0x39053b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     31c:	40061201 	beqz	$r16,263696(0x40610) # 4092c <_start-0x1bfbf6d4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     324:	00001301 	clo.w	$r1,$r24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	0300050e 	lu52i.d	$r14,$r8,1(0x1)
     32c:	3b0b3a08 	0x3b0b3a08
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 150e68 <_start-0x1beaf198>
     334:	b7170213 	0xb7170213
     338:	00001742 	clz.w	$r2,$r26
     33c:	0300340f 	lu52i.d	$r15,$r0,13(0xd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 150e7c <_start-0x1beaf184>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	00180213 	sra.w	$r19,$r16,$r0
     34c:	82891000 	0x82891000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	01110101 	fscaleb.d	$f1,$f8,$f0
     354:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
     358:	8a110000 	0x8a110000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	02000182 	slti	$r2,$r12,0
     360:	18429118 	pcaddi	$r24,136328(0x21488)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	89120000 	0x89120000
     368:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	00133101 	maskeqz	$r1,$r8,$r12
     370:	012e1300 	0x012e1300
     374:	0e03193f 	0x0e03193f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	053b0b3a 	0x053b0b3a
     37c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	1301193c 	addu16i.d	$r28,$r9,-16314(0xc046)
     384:	18140000 	pcaddi	$r0,40960(0xa000)
     388:	15000000 	lu12i.w	$r0,-524288(0x80000)
     38c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	0b3a0e03 	0x0b3a0e03
     394:	0b39053b 	0x0b39053b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
     39c:	06120111 	cacop	0x11,$r8,1152(0x480)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	42971840 	beqz	$r2,169752(0x29718) # 29ab8 <_start-0x1bfd6548>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	00130119 	maskeqz	$r25,$r8,$r0
     3a8:	00341600 	0x00341600
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	0b3a0803 	0x0b3a0803
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	0b39053b 	0x0b39053b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     3b8:	001742b7 	sll.w	$r23,$r21,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	00051700 	alsl.w	$r0,$r24,$r5,0x3
     3c0:	0b3a0e03 	0x0b3a0e03
     3c4:	0b39053b 	0x0b39053b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	18021349 	pcaddi	$r9,4250(0x109a)
     3cc:	34180000 	0x34180000
     3d0:	3a0e0300 	0x3a0e0300
     3d4:	39053b0b 	0x39053b0b
     3d8:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     3e0:	0f190000 	0x0f190000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	490b0b00 	0x490b0b00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	1a000013 	pcalau12i	$r19,0
     3ec:	193f012e 	pcaddi	$r14,-395255(0x9f809)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	0b3a0e03 	0x0b3a0e03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	0b390b3b 	0x0b390b3b
     3f8:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	06120111 	cacop	0x11,$r8,1152(0x480)
     400:	42971840 	beqz	$r2,169752(0x29718) # 29b18 <_start-0x1bfd64e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	00130119 	maskeqz	$r25,$r8,$r0
     408:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	0b3a0e03 	0x0b3a0e03
     410:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     418:	001742b7 	sll.w	$r23,$r21,$r16
     41c:	00341c00 	0x00341c00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	0b3a0e03 	0x0b3a0e03
     424:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	0b1c1349 	0x0b1c1349
     42c:	341d0000 	0x341d0000
     430:	3a0e0300 	0x3a0e0300
     434:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     43c:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     440:	2e1e0000 	0x2e1e0000
     444:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	3b0b3a0e 	0x3b0b3a0e
     44c:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     454:	97184006 	0x97184006
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     45c:	051f0000 	0x051f0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	3a0e0300 	0x3a0e0300
     464:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     46c:	20000018 	ll.w	$r24,$r0,0
     470:	08030034 	0x08030034
     474:	0b3b0b3a 	0x0b3b0b3a
     478:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     47c:	00000b1c 	0x00000b1c
     480:	03003421 	lu52i.d	$r1,$r1,13(0xd)
     484:	3b0b3a08 	0x3b0b3a08
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d0fc0 <_start-0x1bd2f040>
     48c:	b7170213 	0xb7170213
     490:	00001742 	clz.w	$r2,$r26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	3f002e22 	0x3f002e22
     498:	6e193c19 	bgeu	$r0,$r25,-124612(0x2193c) # fffe1dd4 <_RAM_DATA+0x7ffe0dd4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	3a0e030e 	0x3a0e030e
     4a0:	39053b0b 	0x39053b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	2300000b 	sc.d	$r11,$r0,0
     4a8:	193f002e 	pcaddi	$r14,-395263(0x9f801)
     4ac:	0e6e193c 	0x0e6e193c
     4b0:	0b3a0e03 	0x0b3a0e03
     4b4:	0b390b3b 	0x0b390b3b
     4b8:	01000000 	0x01000000
     4bc:	0e250111 	0x0e250111
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	0e030b13 	0x0e030b13
     4c4:	17550e1b 	lu32i.d	$r27,-350096(0xaa870)
     4c8:	17100111 	lu32i.d	$r17,-491512(0x88008)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	24020000 	ldptr.w	$r0,$r0,512(0x200)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	3e0b0b00 	0x3e0b0b00
     4d4:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	00160300 	orn	$r0,$r24,$r0
     4dc:	0b3a0e03 	0x0b3a0e03
     4e0:	0b390b3b 	0x0b390b3b
     4e4:	00001349 	clo.w	$r9,$r26
     4e8:	0b002404 	0x0b002404
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     4f0:	05000008 	0x05000008
     4f4:	0e030034 	0x0e030034
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	0b3b0b3a 	0x0b3b0b3a
     4fc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	2e060000 	0x2e060000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	3b0b3a0e 	0x3b0b3a0e
     510:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     514:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     518:	97184006 	0x97184006
     51c:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	05070000 	0x05070000
     524:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     530:	08000018 	0x08000018
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	0111010b 	fscaleb.d	$f11,$f8,$f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	00000612 	0x00000612
     53c:	03003409 	lu52i.d	$r9,$r0,13(0xd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	3b0b3a0e 	0x3b0b3a0e
     544:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d107c <_start-0x1bd2ef84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	b7170213 	0xb7170213
     54c:	00001742 	clz.w	$r2,$r26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	0300050a 	lu52i.d	$r10,$r8,1(0x1)
     554:	3b0b3a08 	0x3b0b3a08
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1090 <_start-0x1bd2ef70>
     55c:	b7170213 	0xb7170213
     560:	00001742 	clz.w	$r2,$r26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	3f002e0b 	0x3f002e0b
     568:	3a0e0319 	0x3a0e0319
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	390b3b0b 	0x390b3b0b
     570:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     574:	40061201 	beqz	$r16,263696(0x40610) # 40b84 <_start-0x1bfbf47c>
     578:	19429718 	pcaddi	$r24,-387912(0xa14b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	2e0c0000 	0x2e0c0000
     580:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     584:	3b0b3a0e 	0x3b0b3a0e
     588:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	11134919 	addu16i.d	$r25,$r8,17618(0x44d2)
     590:	40061201 	beqz	$r16,263696(0x40610) # 40ba0 <_start-0x1bfbf460>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     598:	340d0000 	0x340d0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	3a080300 	0x3a080300
     5a0:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     5a8:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	01000000 	0x01000000
     5b0:	0e250111 	0x0e250111
     5b4:	0e030b13 	0x0e030b13
     5b8:	17550e1b 	lu32i.d	$r27,-350096(0xaa870)
     5bc:	17100111 	lu32i.d	$r17,-491512(0x88008)
     5c0:	2e020000 	0x2e020000
     5c4:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     5c8:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     5d0:	11134919 	addu16i.d	$r25,$r8,17618(0x44d2)
     5d4:	40061201 	beqz	$r16,263696(0x40610) # 40be4 <_start-0x1bfbf41c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     5dc:	00001301 	clo.w	$r1,$r24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	03000503 	lu52i.d	$r3,$r8,1(0x1)
     5e4:	3b0b3a08 	0x3b0b3a08
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1120 <_start-0x1bd2eee0>
     5ec:	b7170213 	0xb7170213
     5f0:	00001742 	clz.w	$r2,$r26
     5f4:	00001804 	cto.w	$r4,$r0
     5f8:	00340500 	0x00340500
     5fc:	0b3a0803 	0x0b3a0803
     600:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     608:	001742b7 	sll.w	$r23,$r21,$r16
     60c:	00340600 	0x00340600
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	0b3a0803 	0x0b3a0803
     614:	0b390b3b 	0x0b390b3b
     618:	18021349 	pcaddi	$r9,4250(0x109a)
     61c:	0a070000 	0x0a070000
     620:	3a0e0300 	0x3a0e0300
     624:	390b3b0b 	0x390b3b0b
     628:	0001110b 	0x0001110b
     62c:	010b0800 	fmin.d	$f0,$f0,$f2
     630:	06120111 	cacop	0x11,$r8,1152(0x480)
     634:	00001301 	clo.w	$r1,$r24
     638:	01828909 	0x01828909
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	31011100 	0x31011100
     640:	0a000013 	0x0a000013
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	01018289 	0x01018289
     648:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	00001301 	clo.w	$r1,$r24
     650:	01828a0b 	0x01828a0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	91180200 	0x91180200
     658:	00001842 	cto.w	$r2,$r2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	0182890c 	0x0182890c
     660:	31011101 	0x31011101
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
     668:	0b0b0024 	0x0b0b0024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	08030b3e 	0x08030b3e
     670:	0f0e0000 	0x0f0e0000
     674:	490b0b00 	0x490b0b00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	0f000013 	0x0f000013
     67c:	0b0b0024 	0x0b0b0024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	0e030b3e 	0x0e030b3e
     684:	35100000 	0x35100000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	00134900 	maskeqz	$r0,$r8,$r18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	000f1100 	bytepick.d	$r0,$r8,$r4,0x6
     690:	00000b0b 	0x00000b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	03000512 	lu52i.d	$r18,$r8,1(0x1)
     698:	3b0b3a0e 	0x3b0b3a0e
     69c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d11d4 <_start-0x1bd2ee2c>
     6a0:	b7170213 	0xb7170213
     6a4:	00001742 	clz.w	$r2,$r26
     6a8:	03003413 	lu52i.d	$r19,$r0,13(0xd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	3b0b3a0e 	0x3b0b3a0e
     6b0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d11e8 <_start-0x1bd2ee18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	b7170213 	0xb7170213
     6b8:	00001742 	clz.w	$r2,$r26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	49010114 	bcnez	$fcc0,-3079936(0x510100) # ffd107bc <_RAM_DATA+0x7fd0f7bc>
     6c0:	00130113 	maskeqz	$r19,$r8,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	00211500 	div.wu	$r0,$r8,$r5
     6c8:	0b2f1349 	0x0b2f1349
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	2e160000 	0x2e160000
     6d0:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     6dc:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	97184006 	0x97184006
     6e4:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	05170000 	0x05170000
     6ec:	3a080300 	0x3a080300
     6f0:	390b3b0b 	0x390b3b0b
     6f4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     6f8:	18000018 	pcaddi	$r24,0
     6fc:	0e030034 	0x0e030034
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	0b3b0b3a 	0x0b3b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     708:	00001802 	cto.w	$r2,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	01110100 	fscaleb.d	$f0,$f8,$f0
     710:	0b130e25 	0x0b130e25
     714:	0e1b0e03 	0x0e1b0e03
     718:	01111755 	fscaleb.d	$f21,$f26,$f5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	00001710 	clz.w	$r16,$r24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	0b002402 	0x0b002402
     724:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	0300000e 	lu52i.d	$r14,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	13490035 	addu16i.d	$r21,$r1,-11712(0xd240)
     730:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
     734:	3e0b0b00 	0x3e0b0b00
     738:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
     73c:	01130500 	fcopysign.d	$f0,$f8,$f1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	0b3a0b0b 	0x0b3a0b0b
     744:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	00001301 	clo.w	$r1,$r24
     74c:	03000d06 	lu52i.d	$r6,$r8,3(0x3)
     750:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d128c <_start-0x1bd2ed74>
     758:	000b3813 	0x000b3813
     75c:	01010700 	fadd.d	$f0,$f24,$f1
     760:	13011349 	addu16i.d	$r9,$r26,-16316(0xc044)
     764:	21080000 	sc.w	$r0,$r0,2048(0x800)
     768:	2f134900 	0x2f134900
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	0900000b 	0x0900000b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	0e030016 	0x0e030016
     774:	0b3b0b3a 	0x0b3b0b3a
     778:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     77c:	2e0a0000 	0x2e0a0000
     780:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     784:	3b0b3a0e 	0x3b0b3a0e
     788:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     78c:	11134919 	addu16i.d	$r25,$r8,17618(0x44d2)
     790:	40061201 	beqz	$r16,263696(0x40610) # 40da0 <_start-0x1bfbf260>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     798:	00001301 	clo.w	$r1,$r24
     79c:	0300050b 	lu52i.d	$r11,$r8,1(0x1)
     7a0:	3b0b3a0e 	0x3b0b3a0e
     7a4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d12dc <_start-0x1bd2ed24>
     7a8:	b7170213 	0xb7170213
     7ac:	00001742 	clz.w	$r2,$r26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	0300340c 	lu52i.d	$r12,$r0,13(0xd)
     7b4:	3b0b3a08 	0x3b0b3a08
     7b8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d12f0 <_start-0x1bd2ed10>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	b7170213 	0xb7170213
     7c0:	00001742 	clz.w	$r2,$r26
     7c4:	3f012e0d 	0x3f012e0d
     7c8:	3a0e0319 	0x3a0e0319
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	390b3b0b 	0x390b3b0b
     7d0:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	40061201 	beqz	$r16,263696(0x40610) # 40de4 <_start-0x1bfbf21c>
     7d8:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     7dc:	00001301 	clo.w	$r1,$r24
     7e0:	0300050e 	lu52i.d	$r14,$r8,1(0x1)
     7e4:	3b0b3a08 	0x3b0b3a08
     7e8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1320 <_start-0x1bd2ece0>
     7ec:	00180213 	sra.w	$r19,$r16,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	012e0f00 	0x012e0f00
     7f4:	0e03193f 	0x0e03193f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	0b3b0b3a 	0x0b3b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	19270b39 	pcaddi	$r25,-444327(0x93859)
     800:	06120111 	cacop	0x11,$r8,1152(0x480)
     804:	42971840 	beqz	$r2,169752(0x29718) # 29f1c <_start-0x1bfd60e4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	00000019 	0x00000019
     80c:	25011101 	stptr.w	$r1,$r8,272(0x110)
     810:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
     814:	550e1b0e 	bl	-63369704(0xc390e18) # fc39162c <_RAM_DATA+0x7c39062c>
     818:	10011117 	addu16i.d	$r23,$r8,68(0x44)
     81c:	02000017 	slti	$r23,$r0,0
     820:	0b0b0024 	0x0b0b0024
     824:	0e030b3e 	0x0e030b3e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	35030000 	0x35030000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	00134900 	maskeqz	$r0,$r8,$r18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	00240400 	crc.w.b.w	$r0,$r0,$r1
     834:	0b3e0b0b 	0x0b3e0b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	00000803 	0x00000803
     83c:	0b011305 	0x0b011305
     840:	3b0b3a0b 	0x3b0b3a0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	010b390b 	fmin.d	$f11,$f8,$f14
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	06000013 	cacop	0x13,$r0,0
     84c:	0803000d 	0x0803000d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	0b3b0b3a 	0x0b3b0b3a
     854:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     858:	00000b38 	0x00000b38
     85c:	03000d07 	lu52i.d	$r7,$r8,3(0x3)
     860:	3b0b3a0e 	0x3b0b3a0e
     864:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d139c <_start-0x1bd2ec64>
     868:	000b3813 	0x000b3813
     86c:	00160800 	orn	$r0,$r0,$r2
     870:	0b3a0e03 	0x0b3a0e03
     874:	0b390b3b 	0x0b390b3b
     878:	00001349 	clo.w	$r9,$r26
     87c:	3f002e09 	0x3f002e09
     880:	3a0e0319 	0x3a0e0319
     884:	390b3b0b 	0x390b3b0b
     888:	1201110b 	addu16i.d	$r11,$r8,-32700(0x8044)
     88c:	97184006 	0x97184006
     890:	00001942 	cto.w	$r2,$r10
     894:	01110100 	fscaleb.d	$f0,$f8,$f0
     898:	0b130e25 	0x0b130e25
     89c:	0e1b0e03 	0x0e1b0e03
     8a0:	01111755 	fscaleb.d	$f21,$f26,$f5
     8a4:	00001710 	clz.w	$r16,$r24
     8a8:	0b002402 	0x0b002402
     8ac:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     8b0:	0300000e 	lu52i.d	$r14,$r0,0
     8b4:	0e030016 	0x0e030016
     8b8:	0b3b0b3a 	0x0b3b0b3a
     8bc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     8c0:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
     8c4:	3e0b0b00 	0x3e0b0b00
     8c8:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
     8cc:	01040500 	0x01040500
     8d0:	0b0b0b3e 	0x0b0b0b3e
     8d4:	0b3a1349 	0x0b3a1349
     8d8:	0b390b3b 	0x0b390b3b
     8dc:	00001301 	clo.w	$r1,$r24
     8e0:	03002806 	lu52i.d	$r6,$r0,10(0xa)
     8e4:	000b1c0e 	0x000b1c0e
     8e8:	00280700 	0x00280700
     8ec:	0b1c0803 	0x0b1c0803
     8f0:	34080000 	0x34080000
     8f4:	3a0e0300 	0x3a0e0300
     8f8:	390b3b0b 	0x390b3b0b
     8fc:	3f13490b 	0x3f13490b
     900:	00193c19 	srl.d	$r25,$r0,$r15
     904:	01130900 	fcopysign.d	$f0,$f8,$f2
     908:	0b3a0b0b 	0x0b3a0b0b
     90c:	0b39053b 	0x0b39053b
     910:	00001301 	clo.w	$r1,$r24
     914:	03000d0a 	lu52i.d	$r10,$r8,3(0x3)
     918:	3b0b3a0e 	0x3b0b3a0e
     91c:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151454 <_start-0x1beaebac>
     920:	000b3813 	0x000b3813
     924:	00160b00 	orn	$r0,$r24,$r2
     928:	0b3a0e03 	0x0b3a0e03
     92c:	0b39053b 	0x0b39053b
     930:	00001349 	clo.w	$r9,$r26
     934:	0b01130c 	0x0b01130c
     938:	3b0b3a0b 	0x3b0b3a0b
     93c:	010b390b 	fmin.d	$f11,$f8,$f14
     940:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
     944:	0e03000d 	0x0e03000d
     948:	0b3b0b3a 	0x0b3b0b3a
     94c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     950:	00000b38 	0x00000b38
     954:	3f012e0e 	0x3f012e0e
     958:	3a0e0319 	0x3a0e0319
     95c:	390b3b0b 	0x390b3b0b
     960:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     964:	40061201 	beqz	$r16,263696(0x40610) # 40f74 <_start-0x1bfbf08c>
     968:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     96c:	00001301 	clo.w	$r1,$r24
     970:	0300050f 	lu52i.d	$r15,$r8,1(0x1)
     974:	3b0b3a0e 	0x3b0b3a0e
     978:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d14b0 <_start-0x1bd2eb50>
     97c:	00180213 	sra.w	$r19,$r16,$r0
     980:	00051000 	alsl.w	$r0,$r0,$r4,0x3
     984:	0b3a0e03 	0x0b3a0e03
     988:	0b390b3b 	0x0b390b3b
     98c:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     990:	001742b7 	sll.w	$r23,$r21,$r16
     994:	000f1100 	bytepick.d	$r0,$r8,$r4,0x6
     998:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
     99c:	2e120000 	0x2e120000
     9a0:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     9a4:	3b0b3a0e 	0x3b0b3a0e
     9a8:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     9ac:	11134919 	addu16i.d	$r25,$r8,17618(0x44d2)
     9b0:	40061201 	beqz	$r16,263696(0x40610) # 40fc0 <_start-0x1bfbf040>
     9b4:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     9b8:	00001301 	clo.w	$r1,$r24
     9bc:	03003413 	lu52i.d	$r19,$r0,13(0xd)
     9c0:	3b0b3a0e 	0x3b0b3a0e
     9c4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d14fc <_start-0x1bd2eb04>
     9c8:	b7170213 	0xb7170213
     9cc:	00001742 	clz.w	$r2,$r26
     9d0:	03003414 	lu52i.d	$r20,$r0,13(0xd)
     9d4:	3b0b3a08 	0x3b0b3a08
     9d8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1510 <_start-0x1bd2eaf0>
     9dc:	000b1c13 	0x000b1c13
     9e0:	012e1500 	0x012e1500
     9e4:	0e03193f 	0x0e03193f
     9e8:	0b3b0b3a 	0x0b3b0b3a
     9ec:	19270b39 	pcaddi	$r25,-444327(0x93859)
     9f0:	06120111 	cacop	0x11,$r8,1152(0x480)
     9f4:	42971840 	beqz	$r2,169752(0x29718) # 2a10c <_start-0x1bfd5ef4>
     9f8:	00000019 	0x00000019
     9fc:	25011101 	stptr.w	$r1,$r8,272(0x110)
     a00:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
     a04:	550e1b0e 	bl	-63369704(0xc390e18) # fc39181c <_RAM_DATA+0x7c39081c>
     a08:	10011117 	addu16i.d	$r23,$r8,68(0x44)
     a0c:	02000017 	slti	$r23,$r0,0
     a10:	0b0b0024 	0x0b0b0024
     a14:	0e030b3e 	0x0e030b3e
     a18:	16030000 	lu32i.d	$r0,6144(0x1800)
     a1c:	3a0e0300 	0x3a0e0300
     a20:	390b3b0b 	0x390b3b0b
     a24:	0013490b 	maskeqz	$r11,$r8,$r18
     a28:	00240400 	crc.w.b.w	$r0,$r0,$r1
     a2c:	0b3e0b0b 	0x0b3e0b0b
     a30:	00000803 	0x00000803
     a34:	49003505 	bcnez	$fcc0,1376308(0x150034) # 150a68 <_start-0x1beaf598>
     a38:	06000013 	cacop	0x13,$r0,0
     a3c:	0e030034 	0x0e030034
     a40:	0b3b0b3a 	0x0b3b0b3a
     a44:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     a48:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
     a4c:	13070000 	addu16i.d	$r0,$r0,-15936(0xc1c0)
     a50:	3a0b0b01 	0x3a0b0b01
     a54:	390b3b0b 	0x390b3b0b
     a58:	0013010b 	maskeqz	$r11,$r8,$r0
     a5c:	000d0800 	bytepick.d	$r0,$r0,$r2,0x2
     a60:	0b3a0e03 	0x0b3a0e03
     a64:	0b390b3b 	0x0b390b3b
     a68:	0b381349 	0x0b381349
     a6c:	2e090000 	0x2e090000
     a70:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     a74:	3b0b3a0e 	0x3b0b3a0e
     a78:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     a7c:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     a80:	97184006 	0x97184006
     a84:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     a88:	890a0000 	0x890a0000
     a8c:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     a90:	00133101 	maskeqz	$r1,$r8,$r12
     a94:	828a0b00 	0x828a0b00
     a98:	18020001 	pcaddi	$r1,4096(0x1000)
     a9c:	00184291 	sra.w	$r17,$r20,$r16
     aa0:	002e0c00 	0x002e0c00
     aa4:	0e03193f 	0x0e03193f
     aa8:	0b3b0b3a 	0x0b3b0b3a
     aac:	19270b39 	pcaddi	$r25,-444327(0x93859)
     ab0:	06120111 	cacop	0x11,$r8,1152(0x480)
     ab4:	42971840 	beqz	$r2,169752(0x29718) # 2a1cc <_start-0x1bfd5e34>
     ab8:	0d000019 	fsel	$f25,$f0,$f0,$fcc0
     abc:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     ac0:	0b3a0e03 	0x0b3a0e03
     ac4:	0b390b3b 	0x0b390b3b
     ac8:	01111927 	fscaleb.d	$f7,$f9,$f6
     acc:	18400612 	pcaddi	$r18,131120(0x20030)
     ad0:	00194297 	srl.d	$r23,$r20,$r16
     ad4:	00050e00 	alsl.w	$r0,$r16,$r3,0x3
     ad8:	0b3a0e03 	0x0b3a0e03
     adc:	0b390b3b 	0x0b390b3b
     ae0:	18021349 	pcaddi	$r9,4250(0x109a)
     ae4:	01000000 	0x01000000
     ae8:	0e250111 	0x0e250111
     aec:	0e030b13 	0x0e030b13
     af0:	17550e1b 	lu32i.d	$r27,-350096(0xaa870)
     af4:	17100111 	lu32i.d	$r17,-491512(0x88008)
     af8:	24020000 	ldptr.w	$r0,$r0,512(0x200)
     afc:	3e0b0b00 	0x3e0b0b00
     b00:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
     b04:	00160300 	orn	$r0,$r24,$r0
     b08:	0b3a0e03 	0x0b3a0e03
     b0c:	0b390b3b 	0x0b390b3b
     b10:	00001349 	clo.w	$r9,$r26
     b14:	0b002404 	0x0b002404
     b18:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     b1c:	05000008 	0x05000008
     b20:	0b3e0104 	0x0b3e0104
     b24:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
     b28:	0b3b0b3a 	0x0b3b0b3a
     b2c:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     b30:	28060000 	ld.b	$r0,$r0,384(0x180)
     b34:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
     b38:	0700000b 	0x0700000b
     b3c:	08030028 	0x08030028
     b40:	00000b1c 	0x00000b1c
     b44:	03003408 	lu52i.d	$r8,$r0,13(0xd)
     b48:	3b0b3a0e 	0x3b0b3a0e
     b4c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1684 <_start-0x1bd2e97c>
     b50:	3c193f13 	0x3c193f13
     b54:	09000019 	0x09000019
     b58:	0b0b0113 	0x0b0b0113
     b5c:	0b3b0b3a 	0x0b3b0b3a
     b60:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     b64:	0d0a0000 	0x0d0a0000
     b68:	3a0e0300 	0x3a0e0300
     b6c:	390b3b0b 	0x390b3b0b
     b70:	3813490b 	0x3813490b
     b74:	0b00000b 	0x0b00000b
     b78:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     b7c:	0b3a0e03 	0x0b3a0e03
     b80:	0b390b3b 	0x0b390b3b
     b84:	01111927 	fscaleb.d	$f7,$f9,$f6
     b88:	18400612 	pcaddi	$r18,131120(0x20030)
     b8c:	01194297 	0x01194297
     b90:	0c000013 	0x0c000013
     b94:	0e030005 	0x0e030005
     b98:	0b3b0b3a 	0x0b3b0b3a
     b9c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     ba0:	42b71702 	beqz	$r24,702228(0xab714) # ac2b4 <_start-0x1bf53d4c>
     ba4:	0d000017 	fsel	$f23,$f0,$f0,$fcc0
     ba8:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     bac:	0b3a0e03 	0x0b3a0e03
     bb0:	0b390b3b 	0x0b390b3b
     bb4:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
     bb8:	06120111 	cacop	0x11,$r8,1152(0x480)
     bbc:	42971840 	beqz	$r2,169752(0x29718) # 2a2d4 <_start-0x1bfd5d2c>
     bc0:	00130119 	maskeqz	$r25,$r8,$r0
     bc4:	00340e00 	0x00340e00
     bc8:	0b3a0e03 	0x0b3a0e03
     bcc:	0b390b3b 	0x0b390b3b
     bd0:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     bd4:	001742b7 	sll.w	$r23,$r21,$r16
     bd8:	00050f00 	alsl.w	$r0,$r24,$r3,0x3
     bdc:	0b3a0e03 	0x0b3a0e03
     be0:	0b390b3b 	0x0b390b3b
     be4:	18021349 	pcaddi	$r9,4250(0x109a)
     be8:	0f100000 	0x0f100000
     bec:	490b0b00 	0x490b0b00
     bf0:	11000013 	addu16i.d	$r19,$r0,16384(0x4000)
     bf4:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     bf8:	0b3a0e03 	0x0b3a0e03
     bfc:	0b390b3b 	0x0b390b3b
     c00:	01111927 	fscaleb.d	$f7,$f9,$f6
     c04:	18400612 	pcaddi	$r18,131120(0x20030)
     c08:	00194297 	srl.d	$r23,$r20,$r16
     c0c:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     c10:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     c14:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     c18:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     c1c:	00171001 	sll.w	$r1,$r0,$r4
     c20:	00240200 	crc.w.b.w	$r0,$r16,$r0
     c24:	0b3e0b0b 	0x0b3e0b0b
     c28:	00000e03 	0x00000e03
     c2c:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     c30:	3b0b3a0e 	0x3b0b3a0e
     c34:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d176c <_start-0x1bd2e894>
     c38:	04000013 	csrrd	$r19,0x0
     c3c:	0b0b0024 	0x0b0b0024
     c40:	08030b3e 	0x08030b3e
     c44:	35050000 	0x35050000
     c48:	00134900 	maskeqz	$r0,$r8,$r18
     c4c:	00260600 	crcc.w.b.w	$r0,$r16,$r1
     c50:	00001349 	clo.w	$r9,$r26
     c54:	03003407 	lu52i.d	$r7,$r0,13(0xd)
     c58:	3b0b3a0e 	0x3b0b3a0e
     c5c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1794 <_start-0x1bd2e86c>
     c60:	3c193f13 	0x3c193f13
     c64:	08000019 	0x08000019
     c68:	0e030113 	0x0e030113
     c6c:	0b3a0b0b 	0x0b3a0b0b
     c70:	0b390b3b 	0x0b390b3b
     c74:	00001301 	clo.w	$r1,$r24
     c78:	03000d09 	lu52i.d	$r9,$r8,3(0x3)
     c7c:	3b0b3a0e 	0x3b0b3a0e
     c80:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d17b8 <_start-0x1bd2e848>
     c84:	000b3813 	0x000b3813
     c88:	000f0a00 	bytepick.d	$r0,$r16,$r2,0x6
     c8c:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
     c90:	150b0000 	lu12i.w	$r0,-501760(0x85800)
     c94:	49192701 	0x49192701
     c98:	00130113 	maskeqz	$r19,$r8,$r0
     c9c:	00050c00 	alsl.w	$r0,$r0,$r3,0x3
     ca0:	00001349 	clo.w	$r9,$r26
     ca4:	0b000f0d 	0x0b000f0d
     ca8:	0e00000b 	0x0e00000b
     cac:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
     cb0:	00001301 	clo.w	$r1,$r24
     cb4:	4900210f 	bcnez	$fcc0,3997728(0x3d0020) # 3d0cd4 <_start-0x1bc2f32c>
     cb8:	000b2f13 	0x000b2f13
     cbc:	00341000 	0x00341000
     cc0:	0b3a0803 	0x0b3a0803
     cc4:	0b390b3b 	0x0b390b3b
     cc8:	18021349 	pcaddi	$r9,4250(0x109a)
     ccc:	15110000 	lu12i.w	$r0,-489472(0x88800)
     cd0:	00192700 	srl.d	$r0,$r24,$r9
     cd4:	00341200 	0x00341200
     cd8:	0b3a0e03 	0x0b3a0e03
     cdc:	0b390b3b 	0x0b390b3b
     ce0:	193f1349 	pcaddi	$r9,-395110(0x9f89a)
     ce4:	00001802 	cto.w	$r2,$r0
     ce8:	03003413 	lu52i.d	$r19,$r0,13(0xd)
     cec:	3b0b3a08 	0x3b0b3a08
     cf0:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151828 <_start-0x1beae7d8>
     cf4:	02193f13 	slti	$r19,$r24,1615(0x64f)
     cf8:	14000018 	lu12i.w	$r24,0
     cfc:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     d00:	0b3a0e03 	0x0b3a0e03
     d04:	0b39053b 	0x0b39053b
     d08:	01111927 	fscaleb.d	$f7,$f9,$f6
     d0c:	18400612 	pcaddi	$r18,131120(0x20030)
     d10:	01194297 	0x01194297
     d14:	15000013 	lu12i.w	$r19,-524288(0x80000)
     d18:	00018289 	0x00018289
     d1c:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     d20:	2e160000 	0x2e160000
     d24:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     d28:	3b0b3a0e 	0x3b0b3a0e
     d2c:	270b3905 	stptr.d	$r5,$r8,2872(0xb38)
     d30:	11134919 	addu16i.d	$r25,$r8,17618(0x44d2)
     d34:	40061201 	beqz	$r16,263696(0x40610) # 41344 <_start-0x1bfbecbc>
     d38:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     d3c:	00001301 	clo.w	$r1,$r24
     d40:	03003417 	lu52i.d	$r23,$r0,13(0xd)
     d44:	3b0b3a0e 	0x3b0b3a0e
     d48:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151880 <_start-0x1beae780>
     d4c:	00180213 	sra.w	$r19,$r16,$r0
     d50:	00341800 	0x00341800
     d54:	0b3a0e03 	0x0b3a0e03
     d58:	0b39053b 	0x0b39053b
     d5c:	00001349 	clo.w	$r9,$r26
     d60:	03003419 	lu52i.d	$r25,$r0,13(0xd)
     d64:	3b0b3a08 	0x3b0b3a08
     d68:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 1518a0 <_start-0x1beae760>
     d6c:	00180213 	sra.w	$r19,$r16,$r0
     d70:	010b1a00 	fmin.d	$f0,$f16,$f6
     d74:	06120111 	cacop	0x11,$r8,1152(0x480)
     d78:	00001301 	clo.w	$r1,$r24
     d7c:	0300341b 	lu52i.d	$r27,$r0,13(0xd)
     d80:	3b0b3a08 	0x3b0b3a08
     d84:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 1518bc <_start-0x1beae744>
     d88:	b7170213 	0xb7170213
     d8c:	00001742 	clz.w	$r2,$r26
     d90:	0182891c 	0x0182891c
     d94:	31011101 	0x31011101
     d98:	00130113 	maskeqz	$r19,$r8,$r0
     d9c:	828a1d00 	0x828a1d00
     da0:	18020001 	pcaddi	$r1,4096(0x1000)
     da4:	00184291 	sra.w	$r17,$r20,$r16
     da8:	012e1e00 	0x012e1e00
     dac:	0e03193f 	0x0e03193f
     db0:	0b3b0b3a 	0x0b3b0b3a
     db4:	19270b39 	pcaddi	$r25,-444327(0x93859)
     db8:	01111349 	fscaleb.d	$f9,$f26,$f4
     dbc:	18400612 	pcaddi	$r18,131120(0x20030)
     dc0:	01194297 	0x01194297
     dc4:	1f000013 	pcaddu18i	$r19,-524288(0x80000)
     dc8:	08030034 	0x08030034
     dcc:	0b3b0b3a 	0x0b3b0b3a
     dd0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     dd4:	42b71702 	beqz	$r24,702228(0xab714) # ac4e8 <_start-0x1bf53b18>
     dd8:	20000017 	ll.w	$r23,$r0,0
     ddc:	0e030034 	0x0e030034
     de0:	0b3b0b3a 	0x0b3b0b3a
     de4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     de8:	00001802 	cto.w	$r2,$r0
     dec:	03003421 	lu52i.d	$r1,$r1,13(0xd)
     df0:	3b0b3a0e 	0x3b0b3a0e
     df4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d192c <_start-0x1bd2e6d4>
     df8:	b7170213 	0xb7170213
     dfc:	00001742 	clz.w	$r2,$r26
     e00:	03000a22 	lu52i.d	$r2,$r17,2(0x2)
     e04:	3b0b3a0e 	0x3b0b3a0e
     e08:	110b390b 	addu16i.d	$r11,$r8,17102(0x42ce)
     e0c:	23000001 	sc.d	$r1,$r0,0
     e10:	01018289 	0x01018289
     e14:	13010111 	addu16i.d	$r17,$r8,-16320(0xc040)
     e18:	89240000 	0x89240000
     e1c:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     e20:	00133101 	maskeqz	$r1,$r8,$r12
     e24:	00052500 	alsl.w	$r0,$r8,$r9,0x3
     e28:	0b3a0e03 	0x0b3a0e03
     e2c:	0b390b3b 	0x0b390b3b
     e30:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     e34:	001742b7 	sll.w	$r23,$r21,$r16
     e38:	00052600 	alsl.w	$r0,$r16,$r9,0x3
     e3c:	0b3a0e03 	0x0b3a0e03
     e40:	0b390b3b 	0x0b390b3b
     e44:	18021349 	pcaddi	$r9,4250(0x109a)
     e48:	2e270000 	0x2e270000
     e4c:	3c193f00 	0x3c193f00
     e50:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
     e54:	3b0b3a0e 	0x3b0b3a0e
     e58:	000b390b 	0x000b390b
     e5c:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     e60:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     e64:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     e68:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     e6c:	00171001 	sll.w	$r1,$r0,$r4
     e70:	00240200 	crc.w.b.w	$r0,$r16,$r0
     e74:	0b3e0b0b 	0x0b3e0b0b
     e78:	00000e03 	0x00000e03
     e7c:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     e80:	3b0b3a0e 	0x3b0b3a0e
     e84:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d19bc <_start-0x1bd2e644>
     e88:	04000013 	csrrd	$r19,0x0
     e8c:	0b0b0024 	0x0b0b0024
     e90:	08030b3e 	0x08030b3e
     e94:	35050000 	0x35050000
     e98:	00134900 	maskeqz	$r0,$r8,$r18
     e9c:	00260600 	crcc.w.b.w	$r0,$r16,$r1
     ea0:	00001349 	clo.w	$r9,$r26
     ea4:	03003407 	lu52i.d	$r7,$r0,13(0xd)
     ea8:	3b0b3a0e 	0x3b0b3a0e
     eac:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d19e4 <_start-0x1bd2e61c>
     eb0:	3c193f13 	0x3c193f13
     eb4:	08000019 	0x08000019
     eb8:	0b0b0113 	0x0b0b0113
     ebc:	053b0b3a 	0x053b0b3a
     ec0:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     ec4:	0d090000 	0x0d090000
     ec8:	3a0e0300 	0x3a0e0300
     ecc:	39053b0b 	0x39053b0b
     ed0:	3813490b 	0x3813490b
     ed4:	0a00000b 	0x0a00000b
     ed8:	0e030016 	0x0e030016
     edc:	053b0b3a 	0x053b0b3a
     ee0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     ee4:	010b0000 	fmin.d	$f0,$f0,$f0
     ee8:	01134901 	fcopysign.d	$f1,$f8,$f18
     eec:	0c000013 	0x0c000013
     ef0:	13490021 	addu16i.d	$r1,$r1,-11712(0xd240)
     ef4:	00000b2f 	0x00000b2f
     ef8:	0b000f0d 	0x0b000f0d
     efc:	0013490b 	maskeqz	$r11,$r8,$r18
     f00:	00150e00 	or	$r0,$r16,$r3
     f04:	00001927 	cto.w	$r7,$r9
     f08:	0300340f 	lu52i.d	$r15,$r0,13(0xd)
     f0c:	3b0b3a0e 	0x3b0b3a0e
     f10:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1a48 <_start-0x1bd2e5b8>
     f14:	02193f13 	slti	$r19,$r24,1615(0x64f)
     f18:	10000018 	addu16i.d	$r24,$r0,0
     f1c:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     f20:	0b3a0e03 	0x0b3a0e03
     f24:	0b39053b 	0x0b39053b
     f28:	01111927 	fscaleb.d	$f7,$f9,$f6
     f2c:	18400612 	pcaddi	$r18,131120(0x20030)
     f30:	01194297 	0x01194297
     f34:	11000013 	addu16i.d	$r19,$r0,16384(0x4000)
     f38:	00018289 	0x00018289
     f3c:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     f40:	89120000 	0x89120000
     f44:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     f48:	01133101 	fcopysign.d	$f1,$f8,$f12
     f4c:	13000013 	addu16i.d	$r19,$r0,-16384(0xc000)
     f50:	0001828a 	0x0001828a
     f54:	42911802 	beqz	$r0,692504(0xa9118) # aa06c <_start-0x1bf55f94>
     f58:	14000018 	lu12i.w	$r24,0
     f5c:	0e030034 	0x0e030034
     f60:	053b0b3a 	0x053b0b3a
     f64:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     f68:	42b71702 	beqz	$r24,702228(0xab714) # ac67c <_start-0x1bf53984>
     f6c:	15000017 	lu12i.w	$r23,-524288(0x80000)
     f70:	0111010b 	fscaleb.d	$f11,$f8,$f0
     f74:	13010612 	addu16i.d	$r18,$r16,-16319(0xc041)
     f78:	89160000 	0x89160000
     f7c:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     f80:	00133101 	maskeqz	$r1,$r8,$r12
     f84:	00341700 	0x00341700
     f88:	0b3a0803 	0x0b3a0803
     f8c:	0b39053b 	0x0b39053b
     f90:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     f94:	001742b7 	sll.w	$r23,$r21,$r16
     f98:	00341800 	0x00341800
     f9c:	0b3a0e03 	0x0b3a0e03
     fa0:	0b39053b 	0x0b39053b
     fa4:	00001349 	clo.w	$r9,$r26
     fa8:	03003419 	lu52i.d	$r25,$r0,13(0xd)
     fac:	3b0b3a08 	0x3b0b3a08
     fb0:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151ae8 <_start-0x1beae518>
     fb4:	1a000013 	pcalau12i	$r19,0
     fb8:	0e030034 	0x0e030034
     fbc:	053b0b3a 	0x053b0b3a
     fc0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     fc4:	00001802 	cto.w	$r2,$r0
     fc8:	3f012e1b 	0x3f012e1b
     fcc:	3a0e0319 	0x3a0e0319
     fd0:	390b3b0b 	0x390b3b0b
     fd4:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     fd8:	40061201 	beqz	$r16,263696(0x40610) # 415e8 <_start-0x1bfbea18>
     fdc:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     fe0:	00001301 	clo.w	$r1,$r24
     fe4:	0300341c 	lu52i.d	$r28,$r0,13(0xd)
     fe8:	3b0b3a0e 	0x3b0b3a0e
     fec:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1b24 <_start-0x1bd2e4dc>
     ff0:	b7170213 	0xb7170213
     ff4:	00001742 	clz.w	$r2,$r26
     ff8:	0300341d 	lu52i.d	$r29,$r0,13(0xd)
     ffc:	3413490e 	0x3413490e
    1000:	00180219 	sra.w	$r25,$r16,$r0
    1004:	82891e00 	0x82891e00
    1008:	01110001 	fscaleb.d	$f1,$f0,$f0
    100c:	00184293 	sra.w	$r19,$r20,$r16
    1010:	002e1f00 	0x002e1f00
    1014:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
    1018:	0e030e6e 	0x0e030e6e
    101c:	0b3b0b3a 	0x0b3b0b3a
    1020:	00000b39 	0x00000b39
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
   0:	0000001c 	0x0000001c
   4:	00000002 	0x00000002
   8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
   c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
  10:	1c000000 	pcaddu12i	$r0,0
  14:	00001128 	clo.w	$r8,$r9
	...
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
  20:	00000074 	0x00000074
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
  24:	00260002 	crcc.w.b.w	$r2,$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
  28:	00040000 	alsl.w	$r0,$r0,$r0,0x1
  2c:	00000000 	0x00000000
  30:	1c001128 	pcaddu12i	$r8,137(0x89)
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
  34:	00000020 	0x00000020
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
  38:	00000000 	0x00000000
  3c:	0000001c 	0x0000001c
  40:	1c001148 	pcaddu12i	$r8,138(0x8a)
  44:	000000f0 	0x000000f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
  48:	1c001238 	pcaddu12i	$r24,145(0x91)
  4c:	00000058 	0x00000058
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
  50:	1c001290 	pcaddu12i	$r16,148(0x94)
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
  54:	00000208 	0x00000208
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 1)
  58:	00000000 	0x00000000
  5c:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
  60:	00000000 	0x00000000
  64:	00000050 	0x00000050
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
  68:	00000000 	0x00000000
  6c:	0000000c 	0x0000000c
  70:	00000000 	0x00000000
  74:	000000e4 	0x000000e4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
  78:	00000000 	0x00000000
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:33
  7c:	0000022c 	0x0000022c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
  80:	00000000 	0x00000000
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
  84:	00000038 	0x00000038
  88:	00000000 	0x00000000
  8c:	00000030 	0x00000030
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
  98:	0000007c 	0x0000007c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
  9c:	09780002 	0x09780002
  a0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
  ac:	000000e8 	0x000000e8
  b0:	00000000 	0x00000000
  b4:	0000004c 	0x0000004c
  b8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
  bc:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
  c0:	00000000 	0x00000000
  c4:	0000002c 	0x0000002c
  c8:	1c001498 	pcaddu12i	$r24,164(0xa4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
  cc:	00000014 	0x00000014
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
  d0:	00000000 	0x00000000
  d4:	00000018 	0x00000018
  d8:	00000000 	0x00000000
  dc:	00000020 	0x00000020
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
  e0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
  e4:	00000020 	0x00000020
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
  e8:	00000000 	0x00000000
  ec:	00000048 	0x00000048
  f0:	00000000 	0x00000000
  f4:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
  f8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
  fc:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
 100:	00000000 	0x00000000
 104:	00000068 	0x00000068
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
 108:	00000000 	0x00000000
 10c:	00000054 	0x00000054
	...
 118:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
 11c:	106d0002 	addu16i.d	$r2,$r0,6976(0x1b40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
 120:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
 12c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
 130:	00000000 	0x00000000
 134:	0000000c 	0x0000000c
 138:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
 13c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
 140:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
 144:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
 148:	00000000 	0x00000000
 14c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
 150:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
 154:	00000008 	0x00000008
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
 158:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
 15c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
 160:	00000000 	0x00000000
 164:	00000010 	0x00000010
 168:	00000000 	0x00000000
 16c:	00000054 	0x00000054
 170:	00000000 	0x00000000
 174:	00000050 	0x00000050
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
 180:	00000034 	0x00000034
 184:	12ab0002 	addu16i.d	$r2,$r0,-21824(0xaac0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
 188:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 18c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
 190:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
 194:	00000038 	0x00000038
 198:	1c001504 	pcaddu12i	$r4,168(0xa8)
 19c:	00000058 	0x00000058
 1a0:	1c00155c 	pcaddu12i	$r28,170(0xaa)
 1a4:	000000f0 	0x000000f0
 1a8:	1c00164c 	pcaddu12i	$r12,178(0xb2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
 1ac:	00000250 	0x00000250
	...
 1b8:	0000002c 	0x0000002c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
 1bc:	161c0002 	lu32i.d	$r2,57344(0xe000)
 1c0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
 1cc:	00000084 	0x00000084
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
 1d0:	1c00189c 	pcaddu12i	$r28,196(0xc4)
 1d4:	00000084 	0x00000084
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
 1d8:	00000000 	0x00000000
 1dc:	00000058 	0x00000058
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
 1e8:	0000001c 	0x0000001c
 1ec:	193d0002 	pcaddi	$r2,-399360(0x9e800)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
 1f0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
 1f4:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
 1f8:	1c001920 	pcaddu12i	$r0,201(0xc9)
 1fc:	00000018 	0x00000018
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
 208:	0000004c 	0x0000004c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
 20c:	1a300002 	pcalau12i	$r2,98304(0x18000)
 210:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
 21c:	00000014 	0x00000014
 220:	00000000 	0x00000000
 224:	000000d0 	0x000000d0
 228:	00000000 	0x00000000
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
 22c:	00000018 	0x00000018
 230:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
 234:	00000014 	0x00000014
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
 238:	00000000 	0x00000000
 23c:	00000010 	0x00000010
 240:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
 244:	00000030 	0x00000030
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
 248:	1c001938 	pcaddu12i	$r24,201(0xc9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
 24c:	00000010 	0x00000010
	...
 258:	0000002c 	0x0000002c
 25c:	1dee0002 	pcaddu12i	$r2,-36864(0xf7000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
 260:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
 26c:	00000024 	0x00000024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
 270:	1c001948 	pcaddu12i	$r8,202(0xca)
 274:	00000014 	0x00000014
 278:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
 27c:	00000020 	0x00000020
	...
 288:	00000064 	0x00000064
 28c:	20960002 	ll.w	$r2,$r0,-27136(0x9600)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
 290:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 29c:	0000007c 	0x0000007c
 2a0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	00000044 	0x00000044
 2a8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
 2ac:	0000002c 	0x0000002c
 2b0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b4:	00000050 	0x00000050
 2b8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	00000010 	0x00000010
 2c0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	00000010 	0x00000010
 2c8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	00000000 	0x00000000
 2d4:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	1c00195c 	pcaddu12i	$r28,202(0xca)
 2dc:	00000018 	0x00000018
 2e0:	1c001974 	pcaddu12i	$r20,203(0xcb)
 2e4:	0000002c 	0x0000002c
	...
 2f0:	0000003c 	0x0000003c
 2f4:	23c30002 	sc.d	$r2,$r0,-15616(0xc300)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	00000004 	0x00000004
 308:	00000000 	0x00000000
 30c:	00000140 	0x00000140
 310:	00000000 	0x00000000
 314:	00000878 	0x00000878
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
 31c:	00000140 	0x00000140
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 324:	00000028 	0x00000028
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	0000015c 	0x0000015c
 334:	2df80002 	0x2df80002
 338:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 33c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	1c001b08 	pcaddu12i	$r8,216(0xd8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	1c001b44 	pcaddu12i	$r4,218(0xda)
 34c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c001b80 	pcaddu12i	$r0,220(0xdc)
 354:	0000003c 	0x0000003c
 358:	1c001bbc 	pcaddu12i	$r28,221(0xdd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	0000003c 	0x0000003c
 360:	1c001bf8 	pcaddu12i	$r24,223(0xdf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	0000003c 	0x0000003c
 368:	1c001c34 	pcaddu12i	$r20,225(0xe1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	0000003c 	0x0000003c
 370:	1c001c70 	pcaddu12i	$r16,227(0xe3)
 374:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	1c001cac 	pcaddu12i	$r12,229(0xe5)
 37c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	1c001ce8 	pcaddu12i	$r8,231(0xe7)
 384:	0000003c 	0x0000003c
 388:	1c001d24 	pcaddu12i	$r4,233(0xe9)
 38c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c001d60 	pcaddu12i	$r0,235(0xeb)
 394:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c001d9c 	pcaddu12i	$r28,236(0xec)
 39c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c001dd8 	pcaddu12i	$r24,238(0xee)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	0000003c 	0x0000003c
 3a8:	1c001e14 	pcaddu12i	$r20,240(0xf0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c001e50 	pcaddu12i	$r16,242(0xf2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	0000003c 	0x0000003c
 3b8:	1c001e8c 	pcaddu12i	$r12,244(0xf4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	0000003c 	0x0000003c
 3c0:	1c001ec8 	pcaddu12i	$r8,246(0xf6)
 3c4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c001f04 	pcaddu12i	$r4,248(0xf8)
 3cc:	0000003c 	0x0000003c
 3d0:	1c001f40 	pcaddu12i	$r0,250(0xfa)
 3d4:	0000003c 	0x0000003c
 3d8:	1c001f7c 	pcaddu12i	$r28,251(0xfb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	0000003c 	0x0000003c
 3e0:	1c001fb8 	pcaddu12i	$r24,253(0xfd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
 3e4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
 3e8:	1c001ff4 	pcaddu12i	$r20,255(0xff)
 3ec:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
 3f0:	1c002030 	pcaddu12i	$r16,257(0x101)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
 3f4:	0000003c 	0x0000003c
 3f8:	1c00206c 	pcaddu12i	$r12,259(0x103)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
 3fc:	0000003c 	0x0000003c
 400:	1c0020a8 	pcaddu12i	$r8,261(0x105)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
 404:	0000003c 	0x0000003c
 408:	1c0020e4 	pcaddu12i	$r4,263(0x107)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
 40c:	0000003c 	0x0000003c
 410:	1c002120 	pcaddu12i	$r0,265(0x109)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
 414:	0000003c 	0x0000003c
 418:	1c00215c 	pcaddu12i	$r28,266(0x10a)
 41c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
 420:	1c002198 	pcaddu12i	$r24,268(0x10c)
 424:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
 428:	1c0021d4 	pcaddu12i	$r20,270(0x10e)
 42c:	0000003c 	0x0000003c
 430:	1c002210 	pcaddu12i	$r16,272(0x110)
 434:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 438:	1c00224c 	pcaddu12i	$r12,274(0x112)
 43c:	0000003c 	0x0000003c
 440:	1c002288 	pcaddu12i	$r8,276(0x114)
 444:	00000098 	0x00000098
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
 448:	00000000 	0x00000000
 44c:	00000024 	0x00000024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
 450:	00000000 	0x00000000
 454:	00000034 	0x00000034
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
 458:	1c002320 	pcaddu12i	$r0,281(0x119)
 45c:	00000030 	0x00000030
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
 460:	1c002350 	pcaddu12i	$r16,282(0x11a)
 464:	0000004c 	0x0000004c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 468:	1c00239c 	pcaddu12i	$r28,284(0x11c)
 46c:	00000020 	0x00000020
 470:	1c0023bc 	pcaddu12i	$r28,285(0x11d)
 474:	00000090 	0x00000090
 478:	1c00244c 	pcaddu12i	$r12,290(0x122)
 47c:	00000110 	0x00000110
 480:	1c00255c 	pcaddu12i	$r28,298(0x12a)
 484:	00000028 	0x00000028
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
       0:	552f3a44 	bl	-116314312(0x9112f38) # f9112f38 <_RAM_DATA+0x79111f38>
       4:	73726573 	0x73726573
       8:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe617c <_RAM_DATA+0x7ffe517c>
       c:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c2f7c <_start-0x1be3d084>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
      10:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 17570 <_start-0x1bfe8a90>
      14:	73746e65 	0x73746e65
      18:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 6f58 <_start-0x1bff90a8>
      1c:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff4c48 <_RAM_DATA+0x7fff3c48>
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
      20:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d678c <_start-0x1bc29874>
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
      24:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff6884 <_RAM_DATA+0x7fff5884>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
      28:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff6f98 <_RAM_DATA+0x7fff5f98>
      2c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1739c <_start-0x1bfe8c64>
      30:	535f676e 	b	-38051996(0xdbb5f64) # fdbb5f94 <_RAM_DATA+0x7dbb4f94>
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
      34:	65747379 	bge	$r27,$r25,95344(0x17470) # 174a4 <_start-0x1bfe8b5c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      38:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373164 <_start-0x1bc8ce9c>
      3c:	2f323031 	0x2f323031
      40:	2f637273 	0x2f637273
      44:	742f7773 	xvaddwev.d.wu	$xr19,$xr27,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      48:	65677261 	bge	$r19,$r1,92016(0x16770) # 167b8 <_start-0x1bfe9848>
      4c:	74735c74 	xvmin.w	$xr20,$xr3,$xr23
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	2e747261 	0x2e747261
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
      54:	3a440053 	0x3a440053
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 1)
      58:	6573555c 	bge	$r10,$r28,95060(0x17354) # 173ac <_start-0x1bfe8c54>
      5c:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
      60:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
      64:	636f445c 	blt	$r2,$r28,-37052(0x36f44) # ffff6fa8 <_RAM_DATA+0x7fff5fa8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe65d4 <_RAM_DATA+0x7ffe55d4>
      6c:	435c7374 	beqz	$r27,-2925456(0x535c70) # ffd35cdc <_RAM_DATA+0x7fd34cdc>
      70:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 65d4 <_start-0x1bff9a2c>
      74:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe6fe0 <_RAM_DATA+0x7ffe5fe0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
      78:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff72b8 <_RAM_DATA+0x7fff62b8>
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:33
      7c:	72505f68 	0x72505f68
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
      80:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
      84:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff6eec <_RAM_DATA+0x7fff5eec>
      88:	7379535f 	0x7379535f
      8c:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 6df0 <_start-0x1bff9210>
      90:	30314331 	0x30314331
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 1)
      94:	72735c32 	0x72735c32
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
      98:	77735c63 	0x77735c63
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
      9c:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 175fc <_start-0x1bfe8a04>
      a0:	4700646c 	bnez	$r3,3342436(0x330064) # 330104 <_start-0x1bccfefc>
      a4:	4120554e 	beqz	$r10,3743828(0x392054) # 3920f8 <_start-0x1bc6df08>
      a8:	2e322053 	0x2e322053
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
      ac:	312e3133 	vstelm.w	$vr19,$r9,-464(0x230),0x3
      b0:	52494900 	b	67258696(0x4024948) # 40249f8 <_start-0x17fdb608>
      b4:	5243465f 	b	-109165756(0x97e4344) # f97e43f8 <_RAM_DATA+0x797e33f8>
      b8:	5f4c445f 	bne	$r2,$r31,-46012(0x34c44) # ffff4cfc <_RAM_DATA+0x7fff3cfc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
      bc:	46540044 	bnez	$r2,1201152(0x125400) # 1254bc <_start-0x1bedab44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
      c0:	544e435f 	bl	-42185152(0xd7c4e40) # fd7c4f00 <_RAM_DATA+0x7d7c3f00>
      c4:	755f5f00 	0x755f5f00
      c8:	38746e69 	fldgt.s	$f9,$r19,$r27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	6c00745f 	bgeu	$r2,$r31,116(0x74) # 140 <_start-0x1bfffec0>
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
      d4:	676e6f6c 	bge	$r27,$r12,-37268(0x36e6c) # ffff6f40 <_RAM_DATA+0x7fff5f40>
      d8:	736e7520 	vssrarni.du.q	$vr0,$vr9,0x1d
      dc:	656e6769 	bge	$r27,$r9,93796(0x16e64) # 16f40 <_start-0x1bfe90c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	6e692064 	bgeu	$r3,$r4,-104160(0x26920) # fffe6a00 <_RAM_DATA+0x7ffe5a00>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	45490074 	bnez	$r3,-3061504(0x514900) # ffd149e4 <_RAM_DATA+0x7fd139e4>
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	4c445f52 	jirl	$r18,$r26,17500(0x445c)
      ec:	5500485f 	bl	24969288(0x17d0048) # 17d0134 <_start-0x1a82fecc>
      f0:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5540 <_RAM_DATA+0x7fff4540>
      f4:	65707954 	bge	$r10,$r20,94328(0x17078) # 1716c <_start-0x1bfe8e94>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	676e6f6c 	bge	$r27,$r12,-37268(0x36e6c) # ffff6f68 <_RAM_DATA+0x7fff5f68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	6e6f6c20 	bgeu	$r1,$r0,-102548(0x26f6c) # fffe706c <_RAM_DATA+0x7ffe606c>
     104:	6e692067 	bgeu	$r3,$r7,-104160(0x26920) # fffe6a24 <_RAM_DATA+0x7ffe5a24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     108:	796d0074 	0x796d0074
     10c:	63746567 	blt	$r11,$r7,-35740(0x37464) # ffff7570 <_RAM_DATA+0x7fff6570>
     110:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
     114:	5f746477 	bne	$r3,$r23,-35740(0x37464) # ffff7578 <_RAM_DATA+0x7fff6578>
     118:	6c6c6163 	bgeu	$r11,$r3,27744(0x6c60) # 6d78 <_start-0x1bff9288>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	5f007265 	bne	$r19,$r5,-65424(0x30070) # ffff018c <_RAM_DATA+0x7ffef18c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	6975625f 	bltu	$r18,$r31,95584(0x17560) # 17680 <_start-0x1bfe8980>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	6e69746c 	bgeu	$r3,$r12,-104076(0x26974) # fffe6a98 <_RAM_DATA+0x7ffe5a98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	5f61765f 	bne	$r18,$r31,-40588(0x36174) # ffff629c <_RAM_DATA+0x7fff529c>
     12c:	7473696c 	xvmin.w	$xr12,$xr11,$xr26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     130:	755f5f00 	0x755f5f00
     134:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
     138:	00745f32 	bstrins.w	$r18,$r25,0x14,0x17
     13c:	756c6176 	0x756c6176
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	74730065 	xvmin.w	$xr5,$xr3,$xr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	6e656c72 	bgeu	$r3,$r18,-105108(0x2656c) # fffe66b0 <_RAM_DATA+0x7ffe56b0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	6e617200 	bgeu	$r16,$r0,-106128(0x26170) # fffe62b8 <_RAM_DATA+0x7ffe52b8>
     14c:	73760064 	0x73760064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff75c4 <_RAM_DATA+0x7fff65c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	726f6873 	0x726f6873
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	6e752074 	bgeu	$r3,$r20,-101088(0x27520) # fffe767c <_RAM_DATA+0x7ffe667c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # fffe68c8 <_RAM_DATA+0x7ffe58c8>
     164:	69206465 	bltu	$r3,$r5,73828(0x12064) # 121c8 <_start-0x1bfede38>
     168:	6c00746e 	bgeu	$r3,$r14,116(0x74) # 1dc <_start-0x1bfffe24>
     16c:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff799c <_RAM_DATA+0x7fff699c>
     170:	73747570 	0x73747570
     174:	72747300 	0x72747300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	00797063 	bstrins.w	$r3,$r3,0x19,0x1c
     17c:	54524155 	bl	89412160(0x5545240) # 55453bc <_start-0x16abac44>
     180:	6e65535f 	bgeu	$r26,$r31,-105136(0x26550) # fffe66d0 <_RAM_DATA+0x7ffe56d0>
     184:	74614464 	xvabsd.w	$xr4,$xr3,$xr17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	41530061 	beqz	$r3,348928(0x55300) # 55488 <_start-0x1bfaab78>
     18c:	454c504d 	bnez	$r2,3492944(0x354c50) # 354ddc <_start-0x1bcab224>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	5254435f 	b	-42052544(0xd7e5440) # fd7e55d0 <_RAM_DATA+0x7d7e45d0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	4e47004c 	jirl	$r12,$r2,-112896(0x24700)
     198:	39432055 	0x39432055
     19c:	2e382039 	0x2e382039
     1a0:	20302e33 	ll.w	$r19,$r17,12332(0x302c)
     1a4:	62616d2d 	blt	$r9,$r13,-106132(0x2616c) # fffe6310 <_RAM_DATA+0x7ffe5310>
     1a8:	6c693d69 	bgeu	$r11,$r9,26940(0x693c) # 6ae4 <_start-0x1bff951c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	73323370 	0x73323370
     1b0:	616d2d20 	blt	$r9,$r0,93484(0x16d2c) # 16edc <_start-0x1bfe9124>
     1b4:	3d686372 	0x3d686372
     1b8:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe7124 <_RAM_DATA+0x7ffe6124>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff741c <_RAM_DATA+0x7fff641c>
     1c0:	20323368 	ll.w	$r8,$r27,12848(0x3230)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	70666d2d 	vavg.bu	$vr13,$vr9,$vr27
     1c8:	6f6e3d75 	bgeu	$r11,$r21,-37316(0x36e3c) # ffff7004 <_RAM_DATA+0x7fff6004>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
     1cc:	2d20656e 	0x2d20656e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d0:	6f6d636d 	bgeu	$r27,$r13,-37536(0x36d60) # ffff6f30 <_RAM_DATA+0x7fff5f30>
     1d4:	3d6c6564 	0x3d6c6564
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	6d726f6e 	bgeu	$r27,$r14,94828(0x1726c) # 17444 <_start-0x1bfe8bbc>
     1dc:	2d206c61 	0x2d206c61
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	6e75746d 	bgeu	$r3,$r13,-101004(0x27574) # fffe7754 <_RAM_DATA+0x7ffe6754>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	6f6c3d65 	bgeu	$r11,$r5,-37828(0x36c3c) # ffff6e20 <_RAM_DATA+0x7fff5e20>
     1e8:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 16954 <_start-0x1bfe96ac>
     1ec:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	672d2032 	bge	$r1,$r18,-53984(0x32d20) # ffff2f10 <_RAM_DATA+0x7fff1f10>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	304f2d20 	vldrepl.h	$vr0,$r9,1942(0x796)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     1f8:	674f2d20 	bge	$r9,$r0,-45268(0x34f2c) # ffff5124 <_RAM_DATA+0x7fff4124>
     1fc:	74732d20 	xvmin.w	$xr0,$xr9,$xr11
     200:	6e673d64 	bgeu	$r11,$r4,-104644(0x2673c) # fffe693c <_RAM_DATA+0x7ffe593c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	20393975 	ll.w	$r21,$r11,14648(0x3938)
     208:	7566662d 	0x7566662d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	6974636e 	bltu	$r27,$r14,95328(0x17460) # 1766c <_start-0x1bfe8994>
     210:	732d6e6f 	vslli.d	$vr15,$vr19,0x1b
     214:	69746365 	bltu	$r27,$r5,95328(0x17460) # 17674 <_start-0x1bfe898c>
     218:	20736e6f 	ll.w	$r15,$r19,29548(0x736c)
     21c:	6164662d 	blt	$r17,$r13,91236(0x16464) # 16680 <_start-0x1bfe9980>
     220:	732d6174 	vslli.d	$vr20,$vr11,0x18
     224:	69746365 	bltu	$r27,$r5,95328(0x17460) # 17684 <_start-0x1bfe897c>
     228:	20736e6f 	ll.w	$r15,$r19,29548(0x736c)
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	6373662d 	blt	$r17,$r13,-35996(0x37364) # ffff7590 <_RAM_DATA+0x7fff6590>
     230:	2d646568 	0x2d646568
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	73657270 	vssrani.wu.d	$vr16,$vr19,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	65727573 	bge	$r11,$r19,94836(0x17274) # 174ac <_start-0x1bfe8b54>
     23c:	6e662d20 	bgeu	$r9,$r0,-104916(0x2662c) # fffe6868 <_RAM_DATA+0x7ffe5868>
     240:	75622d6f 	0x75622d6f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	69746c69 	bltu	$r3,$r9,95340(0x1746c) # 176b0 <_start-0x1bfe8950>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	6761006e 	bge	$r3,$r14,-40704(0x36100) # ffff6348 <_RAM_DATA+0x7fff5348>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	006e6961 	bstrins.w	$r1,$r11,0xe,0x1a
     250:	5f676663 	bne	$r19,$r3,-39068(0x36764) # ffff69b4 <_RAM_DATA+0x7fff59b4>
     254:	74696177 	xvavgr.w	$xr23,$xr11,$xr24
     258:	735f706f 	vsrarni.d.q	$vr15,$vr3,0x5c
     25c:	7065656c 	vavg.w	$vr12,$vr11,$vr25
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	6f6c6600 	bgeu	$r16,$r0,-37788(0x36c64) # ffff6ec4 <_RAM_DATA+0x7fff5ec4>
     264:	75007461 	0x75007461
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	6769736e 	bge	$r27,$r14,-38544(0x36970) # ffff6bd8 <_RAM_DATA+0x7fff5bd8>
     26c:	2064656e 	ll.w	$r14,$r11,25700(0x6464)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	72616863 	0x72616863
     274:	6f687300 	bgeu	$r24,$r0,-38800(0x36870) # ffff6ae4 <_RAM_DATA+0x7fff5ae4>
     278:	69207472 	bltu	$r3,$r18,73844(0x12074) # 122ec <_start-0x1bfedd14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	5f00746e 	bne	$r3,$r14,-65420(0x30074) # ffff02f0 <_RAM_DATA+0x7ffef2f0>
     280:	646e6172 	bge	$r11,$r18,28256(0x6e60) # 70e0 <_start-0x1bff8f20>
     284:	78656e5f 	0x78656e5f
     288:	6f660074 	bgeu	$r3,$r20,-39424(0x36600) # ffff6888 <_RAM_DATA+0x7fff5888>
     28c:	74616d72 	xvabsd.w	$xr18,$xr11,$xr27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	69727000 	bltu	$r0,$r0,94832(0x17270) # 17500 <_start-0x1bfe8b00>
     294:	7542746e 	0x7542746e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	78650066 	0x78650066
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	6e695f74 	bgeu	$r27,$r20,-104100(0x2695c) # fffe6bf8 <_RAM_DATA+0x7ffe5bf8>
     2a0:	44007274 	bnez	$r19,-3145616(0x500070) # ffd00310 <_RAM_DATA+0x7fcff310>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	445f5441 	bnez	$r2,286548(0x45f54) # 461f8 <_start-0x1bfb9e08>
     2a8:	004c5f4c 	0x004c5f4c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	72707376 	0x72707376
     2b0:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe771c <_RAM_DATA+0x7ffe671c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	41545300 	beqz	$r24,87120(0x15450) # 15704 <_start-0x1bfea8fc>
     2b8:	00535554 	0x00535554
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # fffe6a24 <_RAM_DATA+0x7ffe5a24>
     2c0:	2f3a4400 	0x2f3a4400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	72657355 	0x72657355
     2c8:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 179f4 <_start-0x1bfe860c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	2f73676e 	0x2f73676e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	75636f44 	0x75636f44
     2d4:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4604 <_RAM_DATA+0x7fff3604>
     2dc:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     2e0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff714c <_RAM_DATA+0x7fff614c>
     2e4:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6654 <_start-0x1bff99ac>
     2e8:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7538 <_RAM_DATA+0x7fff6538>
     2ec:	73736563 	0x73736563
     2f0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6a5c <_RAM_DATA+0x7fff5a5c>
     2f4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     2fc:	32303143 	0x32303143
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7570 <_RAM_DATA+0x7fff6570>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	2f77732f 	0x2f77732f
     308:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 657c <_start-0x1bff9a84>
     30c:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 326c <_start-0x1bffcd94>
     310:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7b40 <_RAM_DATA+0x7fff6b40>
     314:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6c84 <_RAM_DATA+0x7ffe5c84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff317c <_RAM_DATA+0x7fff217c>
     31c:	70737600 	vmin.w	$vr0,$vr16,$vr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	00737475 	bstrins.w	$r21,$r3,0x13,0x1d
     324:	72707376 	0x72707376
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	62746e69 	blt	$r19,$r9,-101268(0x2746c) # fffe7794 <_RAM_DATA+0x7ffe6794>
     32c:	00657361 	bstrins.w	$r1,$r27,0x5,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	75736572 	0x75736572
     334:	7300746c 	0x7300746c
     338:	6f5f7274 	bgeu	$r19,$r20,-41104(0x35f70) # ffff62a8 <_RAM_DATA+0x7fff52a8>
     33c:	5500646c 	bl	28377188(0x1b10064) # 1b103a0 <_start-0x1a4efc60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5790 <_RAM_DATA+0x7fff4790>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	65636552 	bge	$r10,$r18,90980(0x16364) # 166a8 <_start-0x1bfe9958>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	44657669 	bnez	$r19,2385268(0x246574) # 2468bc <_start-0x1bdb9744>
     34c:	00617461 	bstrins.w	$r1,$r3,0x1,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	5377654e 	b	87783268(0x53b7764) # 53b7ab4 <_start-0x16c4854c>
     354:	65746174 	bge	$r11,$r20,95328(0x17460) # 177b4 <_start-0x1bfe884c>
     358:	52415500 	b	67256660(0x4024154) # 40244ac <_start-0x17fdbb54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	74535f54 	0x74535f54
     360:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     368:	53494400 	b	215364(0x34944) # 34cac <_start-0x1bfcb354>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	454c4241 	bnez	$r18,347200(0x54c40) # 54fac <_start-0x1bfab054>
     370:	52415500 	b	67256660(0x4024154) # 40244c4 <_start-0x17fdbb3c>
     374:	6e495f54 	bgeu	$r26,$r20,-112292(0x2495c) # fffe4cd0 <_RAM_DATA+0x7ffe3cd0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	74537469 	0x74537469
     37c:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	52415500 	b	67256660(0x4024154) # 40244d4 <_start-0x17fdbb2c>
     384:	55007854 	bl	22085752(0x1510078) # 15103fc <_start-0x1aaefc04>
     388:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff57d8 <_RAM_DATA+0x7fff47d8>
     38c:	64726f57 	bge	$r26,$r23,29292(0x726c) # 75f8 <_start-0x1bff8a08>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	676e654c 	bge	$r10,$r12,-37276(0x36e64) # ffff71f4 <_RAM_DATA+0x7fff61f4>
     394:	45006874 	bnez	$r3,-3080088(0x510068) # ffd103fc <_RAM_DATA+0x7fd0f3fc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	4c42414e 	jirl	$r14,$r10,16960(0x4240)
     39c:	41550045 	beqz	$r2,1398016(0x155500) # 15589c <_start-0x1beaa764>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc962f4 <_RAM_DATA+0x7fc952f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	41550054 	beqz	$r2,-3058432(0x515500) # ffd158a4 <_RAM_DATA+0x7fd148a4>
     3a8:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc962fc <_RAM_DATA+0x7fc952fc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	74726155 	xvmin.b	$xr21,$xr10,$xr24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 1721c <_start-0x1bfe8de4>
     3b8:	69620074 	bltu	$r3,$r20,90624(0x16200) # 165b8 <_start-0x1bfe9a48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	61747374 	blt	$r27,$r20,95344(0x17470) # 1782c <_start-0x1bfe87d4>
     3c0:	00737574 	bstrins.w	$r20,$r11,0x13,0x1d
     3c4:	54524155 	bl	89412160(0x5545240) # 5545604 <_start-0x16aba9fc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
     3cc:	74535449 	0x74535449
     3d0:	73757461 	0x73757461
     3d4:	74616400 	xvabsd.w	$xr0,$xr0,$xr25
     3d8:	6c430061 	bgeu	$r3,$r1,17152(0x4300) # 46d8 <_start-0x1bffb928>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	5f6b636f 	bne	$r27,$r15,-38048(0x36b60) # ffff6f3c <_RAM_DATA+0x7fff5f3c>
     3e0:	71657246 	0x71657246
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	52415500 	b	67256660(0x4024154) # 4024538 <_start-0x17fdbac8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	4c465f54 	jirl	$r20,$r26,18012(0x465c)
     3ec:	55004741 	bl	-50003900(0xd050044) # fd050430 <_RAM_DATA+0x7d04f430>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5840 <_RAM_DATA+0x7fff4840>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	69726150 	bltu	$r10,$r16,94816(0x17260) # 17654 <_start-0x1bfe89ac>
     3f8:	435f7974 	beqz	$r11,-2924680(0x535f78) # ffd36370 <_RAM_DATA+0x7fd35370>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	72746e6f 	0x72746e6f
     400:	55006c6f 	bl	29163628(0x1bd006c) # 1bd046c <_start-0x1a42fb94>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5854 <_RAM_DATA+0x7fff4854>
     408:	465f5449 	bnez	$r2,2514772(0x265f54) # 26635c <_start-0x1bd99ca4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	0047414c 	0x0047414c
     410:	552f3a44 	bl	-116314312(0x9112f38) # f9113348 <_RAM_DATA+0x79112348>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	73726573 	0x73726573
     418:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe658c <_RAM_DATA+0x7ffe558c>
     41c:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c338c <_start-0x1be3cc74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 17980 <_start-0x1bfe8680>
     424:	73746e65 	0x73746e65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 7368 <_start-0x1bff8c98>
     42c:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff5058 <_RAM_DATA+0x7fff4058>
     430:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d6b9c <_start-0x1bc29464>
     434:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff6c94 <_RAM_DATA+0x7fff5c94>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff73a8 <_RAM_DATA+0x7fff63a8>
     43c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 177ac <_start-0x1bfe8854>
     440:	535f676e 	b	-38051996(0xdbb5f64) # fdbb63a4 <_RAM_DATA+0x7dbb53a4>
     444:	65747379 	bge	$r27,$r25,95344(0x17470) # 178b4 <_start-0x1bfe874c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373574 <_start-0x1bc8ca8c>
     44c:	2f323031 	0x2f323031
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	2f637273 	0x2f637273
     454:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 170b8 <_start-0x1bfe8f48>
     45c:	736c2f63 	0x736c2f63
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	755f7831 	0x755f7831
     464:	2e747261 	0x2e747261
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	75460063 	xvfcvt.h.s	$xr3,$xr3,$xr0
     46c:	6974636e 	bltu	$r27,$r14,95328(0x17460) # 178cc <_start-0x1bfe8734>
     470:	6c616e6f 	bgeu	$r19,$r15,24940(0x616c) # 65dc <_start-0x1bff9a24>
     474:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
     478:	61550065 	blt	$r3,$r5,87296(0x15500) # 15978 <_start-0x1bfea688>
     47c:	5f317472 	bne	$r3,$r18,-52876(0x33174) # ffff35f0 <_RAM_DATA+0x7fff25f0>
     480:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
     484:	52415500 	b	67256660(0x4024154) # 40245d8 <_start-0x17fdba28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	72545f54 	0x72545f54
     48c:	72656769 	0x72656769
     490:	53455200 	b	-134003376(0x8034550) # f80349e0 <_RAM_DATA+0x780339e0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	55005445 	bl	18153556(0x1150054) # 11504e8 <_start-0x1aeafb18>
     498:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff58e8 <_RAM_DATA+0x7fff48e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	61657242 	blt	$r18,$r2,91504(0x16570) # 16a0c <_start-0x1bfe95f4>
     4a0:	6f435f6b 	bgeu	$r27,$r11,-48292(0x3435c) # ffff47fc <_RAM_DATA+0x7fff37fc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	6f72746e 	bgeu	$r3,$r14,-36236(0x37274) # ffff7718 <_RAM_DATA+0x7fff6718>
     4a8:	6155006c 	blt	$r3,$r12,87296(0x15500) # 159a8 <_start-0x1bfea658>
     4ac:	6e497472 	bgeu	$r3,$r18,-112268(0x24974) # fffe4e20 <_RAM_DATA+0x7ffe3e20>
     4b0:	55007469 	bl	27590772(0x1a50074) # 1a50524 <_start-0x1a5afadc>
     4b4:	30747261 	0x30747261
     4b8:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 17320 <_start-0x1bfe8ce0>
     4bc:	75625f74 	0x75625f74
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	55006461 	bl	25493604(0x1850064) # 1850524 <_start-0x1a7afadc>
     4c4:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5914 <_RAM_DATA+0x7fff4914>
     4c8:	61656c43 	blt	$r2,$r3,91500(0x1656c) # 16a34 <_start-0x1bfe95cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	50544972 	b	97014856(0x5c85448) # 5c85914 <_start-0x1637a6ec>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	69646e65 	bltu	$r19,$r5,91244(0x1646c) # 1693c <_start-0x1bfe96c4>
     4d4:	6942676e 	bltu	$r27,$r14,82532(0x14264) # 14738 <_start-0x1bfeb8c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	41550074 	beqz	$r3,-3058432(0x515500) # ffd159d8 <_RAM_DATA+0x7fd149d8>
     4dc:	505f5452 	b	21520212(0x1485f54) # 1486430 <_start-0x1ab79bd0>
     4e0:	74697261 	xvavgr.w	$xr1,$xr19,$xr28
     4e4:	69425f79 	bltu	$r27,$r25,82524(0x1425c) # 14740 <_start-0x1bfeb8c0>
     4e8:	6f435f64 	bgeu	$r27,$r4,-48292(0x3435c) # ffff4844 <_RAM_DATA+0x7fff3844>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	6f72746e 	bgeu	$r3,$r14,-36236(0x37274) # ffff7760 <_RAM_DATA+0x7fff6760>
     4f0:	7953006c 	0x7953006c
     4f4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16a68 <_start-0x1bfe9598>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	71657246 	0x71657246
     4fc:	675f7800 	bge	$r0,$r0,-41096(0x35f78) # ffff6474 <_RAM_DATA+0x7fff5474>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	68637465 	bltu	$r3,$r5,25460(0x6374) # 6874 <_start-0x1bff978c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	64007261 	bge	$r19,$r1,112(0x70) # 574 <_start-0x1bfffa8c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	79616c65 	0x79616c65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	00736d5f 	bstrins.w	$r31,$r10,0x13,0x1b
     510:	54524155 	bl	89412160(0x5545240) # 5545750 <_start-0x16aba8b0>
     514:	7261505f 	0x7261505f
     518:	00797469 	bstrins.w	$r9,$r3,0x19,0x1d
     51c:	69755f5f 	bltu	$r26,$r31,95580(0x1755c) # 17a78 <_start-0x1bfe8588>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	3631746e 	0x3631746e
     524:	5500745f 	bl	24969332(0x17d0074) # 17d0598 <_start-0x1a82fa68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5978 <_RAM_DATA+0x7fff4978>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     530:	65707954 	bge	$r10,$r20,94328(0x17078) # 175a8 <_start-0x1bfe8a58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	54524155 	bl	89412160(0x5545240) # 5545778 <_start-0x16aba888>
     53c:	7561425f 	0x7561425f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	74615264 	xvabsd.w	$xr4,$xr19,$xr20
     544:	41550065 	beqz	$r3,1398016(0x155500) # 155a44 <_start-0x1beaa5bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc9649c <_RAM_DATA+0x7fc9549c>
     54c:	6e6f4354 	bgeu	$r26,$r20,-102592(0x26f40) # fffe748c <_RAM_DATA+0x7ffe648c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	00676966 	bstrins.w	$r6,$r11,0x7,0x1a
     554:	54524155 	bl	89412160(0x5545240) # 5545794 <_start-0x16aba86c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
     55c:	67616c46 	bge	$r2,$r6,-40596(0x3616c) # ffff66c8 <_RAM_DATA+0x7fff56c8>
     560:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	55007375 	bl	-36372368(0xdd50070) # fdd505d4 <_RAM_DATA+0x7dd4f5d4>
     568:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff59b8 <_RAM_DATA+0x7fff49b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	706f7453 	0x706f7453
     570:	73746942 	0x73746942
     574:	6b615700 	bltu	$r24,$r0,-40620(0x36154) # ffff66c8 <_RAM_DATA+0x7fff56c8>
     578:	35325f65 	0x35325f65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	63657336 	blt	$r25,$r22,-39568(0x36570) # ffff6aec <_RAM_DATA+0x7fff5aec>
     580:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     584:	35327000 	0x35327000
     588:	63657336 	blt	$r25,$r22,-39568(0x36570) # ffff6af8 <_RAM_DATA+0x7fff5af8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	73694400 	vssrarni.w.d	$vr0,$vr0,0x11
     590:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 171f0 <_start-0x1bfe8e10>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	00746e49 	bstrins.w	$r9,$r18,0x14,0x1b
     598:	33544e49 	xvstelm.h	$xr9,$r18,38(0x26),0x5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	45005532 	bnez	$r9,-3604396(0x490054) # ffc905f0 <_RAM_DATA+0x7fc8f5f0>
     5a0:	6c62616e 	bgeu	$r11,$r14,25184(0x6260) # 6800 <_start-0x1bff9800>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	746e4965 	0x746e4965
     5a8:	2f3a4400 	0x2f3a4400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	72657355 	0x72657355
     5b0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17cdc <_start-0x1bfe8324>
     5b4:	2f73676e 	0x2f73676e
     5b8:	75636f44 	0x75636f44
     5bc:	746e656d 	0x746e656d
     5c0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff48ec <_RAM_DATA+0x7fff38ec>
     5c4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     5c8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7434 <_RAM_DATA+0x7fff6434>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 693c <_start-0x1bff96c4>
     5d0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7820 <_RAM_DATA+0x7fff6820>
     5d4:	73736563 	0x73736563
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6d44 <_RAM_DATA+0x7fff5d44>
     5dc:	74737953 	xvmin.w	$xr19,$xr10,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     5e4:	32303143 	0x32303143
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7858 <_RAM_DATA+0x7fff6858>
     5ec:	2f77732f 	0x2f77732f
     5f0:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 6864 <_start-0x1bff979c>
     5f4:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 3554 <_start-0x1bffcaac>
     5f8:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7e28 <_RAM_DATA+0x7fff6e28>
     5fc:	6d6d6f63 	bgeu	$r27,$r3,93548(0x16d6c) # 17368 <_start-0x1bfe8c98>
     600:	632e6e6f 	blt	$r19,$r15,-53652(0x32e6c) # ffff346c <_RAM_DATA+0x7fff246c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 16f78 <_start-0x1bfe9088>
     608:	53007265 	b	-107544464(0x9970070) # f9970678 <_RAM_DATA+0x7996f678>
     60c:	735f7465 	vsrarni.d.q	$vr5,$vr3,0x5d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	5f74666f 	bne	$r19,$r15,-35740(0x37464) # ffff7a74 <_RAM_DATA+0x7fff6a74>
     614:	706f7473 	0x706f7473
     618:	6b615700 	bltu	$r24,$r0,-40620(0x36154) # ffff676c <_RAM_DATA+0x7fff576c>
     61c:	65535f65 	bge	$r27,$r5,86876(0x1535c) # 15978 <_start-0x1bfea688>
     620:	65530074 	bge	$r3,$r20,86784(0x15300) # 15920 <_start-0x1bfea6e0>
     624:	6f735f74 	bgeu	$r27,$r20,-36004(0x3735c) # ffff7980 <_RAM_DATA+0x7fff6980>
     628:	695f7466 	bltu	$r3,$r6,89972(0x15f74) # 1659c <_start-0x1bfe9a64>
     62c:	4900746e 	bceqz	$fcc3,3735668(0x390074) # 3906a0 <_start-0x1bc6f960>
     630:	5538544e 	bl	20527188(0x1393854) # 1393e84 <_start-0x1ac6c17c>
     634:	47734900 	bnez	$r8,226120(0x37348) # 3797c <_start-0x1bfc8684>
     638:	61626f6c 	blt	$r27,$r12,90732(0x1626c) # 168a4 <_start-0x1bfe975c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	746e496c 	0x746e496c
     640:	6e65704f 	bgeu	$r2,$r15,-105104(0x26570) # fffe6bb0 <_RAM_DATA+0x7ffe5bb0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	74655300 	xvavg.w	$xr0,$xr24,$xr20
     648:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16f9c <_start-0x1bfe9064>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	735f7265 	vsrarni.d.q	$vr5,$vr19,0x5c
     650:	00706f74 	bstrins.w	$r20,$r27,0x10,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 173bc <_start-0x1bfe8c44>
     658:	74655300 	xvavg.w	$xr0,$xr24,$xr20
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16fb0 <_start-0x1bfe9050>
     660:	635f7265 	blt	$r19,$r5,-41104(0x35f70) # ffff65d0 <_RAM_DATA+0x7fff55d0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	7261656c 	0x7261656c
     668:	74655300 	xvavg.w	$xr0,$xr24,$xr20
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16fc0 <_start-0x1bfe9040>
     670:	495f7265 	0x495f7265
     674:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	706d6f63 	0x706d6f63
     67c:	00657261 	bstrins.w	$r1,$r19,0x5,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff69ec <_RAM_DATA+0x7fff59ec>
     684:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6ff4 <_RAM_DATA+0x7ffe5ff4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	73616274 	vssrani.w.d	$vr20,$vr19,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	61750065 	blt	$r3,$r5,95488(0x17500) # 17b8c <_start-0x1bfe8474>
     690:	665f7472 	bge	$r3,$r18,-106636(0x25f74) # fffe6604 <_RAM_DATA+0x7ffe5604>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	306f6669 	0x306f6669
     698:	7274635f 	0x7274635f
     69c:	3a44006c 	0x3a44006c
     6a0:	6573552f 	bge	$r9,$r15,95060(0x17354) # 179f4 <_start-0x1bfe860c>
     6a4:	772f7372 	0x772f7372
     6a8:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff75f0 <_RAM_DATA+0x7fff65f0>
     6b0:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe6c1c <_RAM_DATA+0x7ffe5c1c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33624 <_RAM_DATA+0x7fd32624>
     6b8:	2f65646f 	0x2f65646f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe7628 <_RAM_DATA+0x7ffe6628>
     6c0:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff7900 <_RAM_DATA+0x7fff6900>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	72505f68 	0x72505f68
     6c8:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7534 <_RAM_DATA+0x7fff6534>
     6d0:	7379535f 	0x7379535f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	2f6d6574 	0x2f6d6574
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	30314331 	0x30314331
     6dc:	72732f32 	0x72732f32
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	77732f63 	0x77732f63
     6e4:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe7c54 <_RAM_DATA+0x7ffe6c54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	2f63696c 	0x2f63696c
     6ec:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff6a58 <_RAM_DATA+0x7fff5a58>
     6f0:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe7060 <_RAM_DATA+0x7ffe6060>
     6f4:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff3558 <_RAM_DATA+0x7fff2558>
     6f8:	636f7300 	blt	$r24,$r0,-37008(0x36f70) # ffff7668 <_RAM_DATA+0x7fff6668>
     6fc:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	6f730073 	bgeu	$r3,$r19,-36096(0x37300) # ffff7a00 <_RAM_DATA+0x7fff6a00>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	796d5f63 	0x796d5f63
     708:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff7b7c <_RAM_DATA+0x7fff6b7c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
     710:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff6a7c <_RAM_DATA+0x7fff5a7c>
     714:	7270796d 	0x7270796d
     718:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe7b84 <_RAM_DATA+0x7ffe6b84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	534f4900 	b	67325768(0x4034f48) # 4035664 <_start-0x17fca99c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	00304c45 	0x00304c45
     724:	45534f49 	bnez	$r26,2446156(0x25534c) # 255a70 <_start-0x1bdaa590>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	4900314c 	bcnez	$fcc2,3211312(0x310030) # 310758 <_start-0x1bcef8a8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	4c45534f 	jirl	$r15,$r26,17744(0x4550)
     730:	4f490032 	jirl	$r18,$r1,-46848(0x34900)
     734:	334c4553 	xvstelm.h	$xr19,$r10,34(0x22),0x3
     738:	63644100 	blt	$r8,$r0,-39872(0x36440) # ffff6b78 <_RAM_DATA+0x7fff5b78>
     73c:	00746144 	bstrins.w	$r4,$r10,0x14,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	31767372 	0x31767372
     744:	76737200 	0x76737200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	73720032 	0x73720032
     74c:	47003376 	bnez	$r27,-2424784(0x5b0030) # ffdb077c <_RAM_DATA+0x7fdaf77c>
     750:	424f4950 	beqz	$r10,-4042936(0x424f48) # ffc25698 <_RAM_DATA+0x7fc24698>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	45004f5f 	bnez	$r26,-196532(0x7d004c) # fffd07a0 <_RAM_DATA+0x7ffcf7a0>
     758:	746e4978 	0x746e4978
     75c:	47006e45 	bnez	$r18,1507436(0x17006c) # 1707c8 <_start-0x1be8f838>
     760:	414f4950 	beqz	$r10,-4108472(0x414f48) # ffc156a8 <_RAM_DATA+0x7fc146a8>
     764:	5700495f 	bl	92209224(0x57f0048) # 57f07ac <_start-0x1680f854>
     768:	66437464 	bge	$r3,$r4,-113804(0x24374) # fffe4adc <_RAM_DATA+0x7ffe3adc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	70670067 	vavg.wu	$vr7,$vr3,$vr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	775f6f69 	xvsrarni.d.q	$xr9,$xr27,0x5b
     774:	65746972 	bge	$r11,$r18,95336(0x17468) # 17bdc <_start-0x1bfe8424>
     778:	646d4300 	bge	$r24,$r0,27968(0x6d40) # 74b8 <_start-0x1bff8b48>
     77c:	00737453 	bstrins.w	$r19,$r2,0x13,0x1d
     780:	6e497845 	bgeu	$r2,$r5,-112264(0x24978) # fffe50f8 <_RAM_DATA+0x7ffe40f8>
     784:	63725374 	blt	$r27,$r20,-36272(0x37250) # ffff79d4 <_RAM_DATA+0x7fff69d4>
     788:	49504700 	0x49504700
     78c:	4f5f414f 	jirl	$r15,$r10,-41152(0x35f40)
     790:	6f500045 	bgeu	$r2,$r5,-45056(0x35000) # ffff5790 <_RAM_DATA+0x7fff4790>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	43726577 	beqz	$r11,-2133404(0x5f7264) # ffdf79f8 <_RAM_DATA+0x7fdf69f8>
     798:	44006766 	bnez	$r27,1572964(0x180064) # 1807fc <_start-0x1be7f804>
     79c:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     7a0:	2f737265 	0x2f737265
     7a4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7604 <_RAM_DATA+0x7fff6604>
     7a8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4bd4 <_RAM_DATA+0x7fff3bd4>
     7ac:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17520 <_start-0x1bfe8ae0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	2f73746e 	0x2f73746e
     7b4:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16c20 <_start-0x1bfe93e0>
     7b8:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7704 <_RAM_DATA+0x7fff6704>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	7241676e 	0x7241676e
     7c0:	505f6863 	b	25976680(0x18c5f68) # 18c6728 <_start-0x1a7398d8>
     7c4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16b30 <_start-0x1bfe94d0>
     7c8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7138 <_RAM_DATA+0x7ffe6138>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	79535f67 	0x79535f67
     7d0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16d44 <_start-0x1bfe92bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     7d8:	732f3230 	0x732f3230
     7dc:	732f6372 	0x732f6372
     7e0:	75702f77 	0x75702f77
     7e4:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7150 <_RAM_DATA+0x7fff6150>
     7e8:	636f732f 	blt	$r25,$r15,-37008(0x36f70) # ffff7758 <_RAM_DATA+0x7fff6758>
     7ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 17850 <_start-0x1bfe87b0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	00632e6f 	bstrins.w	$r15,$r19,0x3,0xb
     7f4:	70696843 	vavgr.w	$vr3,$vr2,$vr26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	6c727443 	bgeu	$r2,$r3,29300(0x7274) # 7a6c <_start-0x1bff8594>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	49504700 	0x49504700
     800:	495f424f 	0x495f424f
     804:	49784500 	bcnez	$fcc0,96324(0x17844) # 18048 <_start-0x1bfe7fb8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	6445746e 	bge	$r3,$r14,17780(0x4574) # 4d7c <_start-0x1bffb284>
     80c:	43006567 	beqz	$r11,2031716(0x1f0064) # 1f0870 <_start-0x1be0f790>
     810:	746e756f 	0x746e756f
     814:	63644100 	blt	$r8,$r0,-39872(0x36440) # ffff6c54 <_RAM_DATA+0x7fff5c54>
     818:	6c727443 	bgeu	$r2,$r3,29300(0x7274) # 7a8c <_start-0x1bff8574>
     81c:	6c755000 	bgeu	$r0,$r0,30032(0x7550) # 7d6c <_start-0x1bff8294>
     820:	00306573 	0x00306573
     824:	736c7550 	vssrarni.bu.h	$vr16,$vr10,0xd
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	47003165 	bnez	$r11,1507376(0x170030) # 170858 <_start-0x1be8f7a8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	424f4950 	beqz	$r10,-4042936(0x424f48) # ffc25774 <_RAM_DATA+0x7fc24774>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	00454f5f 	srli.d	$r31,$r26,0x13
     834:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	004f5f41 	0x004f5f41
     83c:	72657355 	0x72657355
     840:	00746144 	bstrins.w	$r4,$r10,0x14,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff71b4 <_RAM_DATA+0x7fff61b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 176b0 <_start-0x1bfe8950>
     84c:	50470074 	b	30426880(0x1d04700) # 1d04f4c <_start-0x1a2fb0b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	69424f49 	bltu	$r26,$r9,82508(0x1424c) # 14a9c <_start-0x1bfeb564>
     854:	6f430074 	bgeu	$r3,$r20,-48384(0x34300) # ffff4b54 <_RAM_DATA+0x7fff3b54>
     858:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # fffe69c4 <_RAM_DATA+0x7ffe59c4>
     85c:	67005764 	bge	$r27,$r4,-65452(0x30054) # ffff08b0 <_RAM_DATA+0x7ffef8b0>
     860:	006f6970 	bstrins.w	$r16,$r11,0xf,0x1a
     864:	6e497845 	bgeu	$r2,$r5,-112264(0x24978) # fffe51dc <_RAM_DATA+0x7ffe41dc>
     868:	6c6f5074 	bgeu	$r3,$r20,28496(0x6f50) # 77b8 <_start-0x1bff8848>
     86c:	5f574800 	bne	$r0,$r0,-43192(0x35748) # ffff5fb4 <_RAM_DATA+0x7fff4fb4>
     870:	5f554d50 	bne	$r10,$r16,-43700(0x3554c) # ffff5dbc <_RAM_DATA+0x7fff4dbc>
     874:	70670074 	vavg.wu	$vr20,$vr3,$vr0
     878:	725f6f69 	0x725f6f69
     87c:	00646165 	bstrins.w	$r5,$r11,0x4,0x18
     880:	46746457 	bnez	$r2,-2198428(0x5e7464) # ffde7ce4 <_RAM_DATA+0x7fde6ce4>
     884:	00646565 	bstrins.w	$r5,$r11,0x4,0x19
     888:	72707273 	0x72707273
     88c:	4800746f 	bceqz	$fcc3,3932276(0x3c0074) # 3c0900 <_start-0x1bc3f700>
     890:	4e495f57 	jirl	$r23,$r26,-112292(0x2495c)
     894:	745f4354 	0x745f4354
     898:	2f3a4400 	0x2f3a4400
     89c:	72657355 	0x72657355
     8a0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17fcc <_start-0x1bfe8034>
     8a4:	2f73676e 	0x2f73676e
     8a8:	75636f44 	0x75636f44
     8ac:	746e656d 	0x746e656d
     8b0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4bdc <_RAM_DATA+0x7fff3bdc>
     8b4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     8b8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7724 <_RAM_DATA+0x7fff6724>
     8bc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6c2c <_start-0x1bff93d4>
     8c0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7b10 <_RAM_DATA+0x7fff6b10>
     8c4:	73736563 	0x73736563
     8c8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7034 <_RAM_DATA+0x7fff6034>
     8cc:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     8d0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     8d4:	32303143 	0x32303143
     8d8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7b48 <_RAM_DATA+0x7fff6b48>
     8dc:	2f77732f 	0x2f77732f
     8e0:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 6b54 <_start-0x1bff94ac>
     8e4:	732f6369 	0x732f6369
     8e8:	755f636f 	0x755f636f
     8ec:	2e747261 	0x2e747261
     8f0:	64650063 	bge	$r3,$r3,25856(0x6500) # 6df0 <_start-0x1bff9210>
     8f4:	75006567 	0x75006567
     8f8:	31747261 	0x31747261
     8fc:	746e695f 	0x746e695f
     900:	75727265 	0x75727265
     904:	45007470 	bnez	$r3,-4128652(0x410074) # ffc10978 <_RAM_DATA+0x7fc0f978>
     908:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff525c <_RAM_DATA+0x7fff425c>
     90c:	65646f4d 	bge	$r26,$r13,91244(0x1646c) # 16d78 <_start-0x1bfe9288>
     910:	49584500 	bcnez	$fcc0,88132(0x15844) # 16154 <_start-0x1bfe9eac>
     914:	455f544e 	bnez	$r2,3759956(0x395f54) # 396868 <_start-0x1bc69798>
     918:	00454744 	srli.d	$r4,$r26,0x11
     91c:	62616e65 	blt	$r19,$r5,-106132(0x2616c) # fffe6a88 <_RAM_DATA+0x7ffe5a88>
     920:	7473656c 	xvmin.w	$xr12,$xr11,$xr25
     924:	73757461 	0x73757461
     928:	54584500 	bl	67131460(0x4005844) # 400616c <_start-0x17ff9e94>
     92c:	72545f49 	0x72545f49
     930:	65676769 	bge	$r27,$r9,92004(0x16764) # 17094 <_start-0x1bfe8f6c>
     934:	58450072 	beq	$r3,$r18,17664(0x4500) # 4e34 <_start-0x1bffb1cc>
     938:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff5d84 <_RAM_DATA+0x7fff4d84>
     93c:	45004e45 	bnez	$r18,1376332(0x15004c) # 150988 <_start-0x1beaf678>
     940:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5294 <_RAM_DATA+0x7fff4294>
     944:	65707954 	bge	$r10,$r20,94328(0x17078) # 179bc <_start-0x1bfe8644>
     948:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
     94c:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155da4 <_start-0x1beaa25c>
     950:	646f4d5f 	bge	$r10,$r31,28492(0x6f4c) # 789c <_start-0x1bff8764>
     954:	64455f65 	bge	$r27,$r5,17756(0x455c) # 4eb0 <_start-0x1bffb150>
     958:	45006567 	bnez	$r11,1900644(0x1d0064) # 1d09bc <_start-0x1be2f644>
     95c:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff52b0 <_RAM_DATA+0x7fff42b0>
     960:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     964:	65707954 	bge	$r10,$r20,94328(0x17078) # 179dc <_start-0x1bfe8624>
     968:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
     96c:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155dc4 <_start-0x1beaa23c>
     970:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 177b8 <_start-0x1bfe8848>
     974:	72745374 	0x72745374
     978:	00746375 	bstrins.w	$r21,$r27,0x14,0x18
     97c:	4e495845 	jirl	$r5,$r2,-112296(0x24958)
     980:	52535f54 	b	-44936356(0xd52535c) # fd525cdc <_RAM_DATA+0x7d524cdc>
     984:	58450043 	beq	$r2,$r3,17664(0x4500) # 4e84 <_start-0x1bffb17c>
     988:	545f4954 	bl	89153352(0x5505f48) # 55068d0 <_start-0x16af9730>
     98c:	67676972 	bge	$r11,$r18,-39064(0x36768) # ffff70f4 <_RAM_DATA+0x7fff60f4>
     990:	465f7265 	bnez	$r19,1466224(0x165f70) # 166900 <_start-0x1be99700>
     994:	696c6c61 	bltu	$r3,$r1,93292(0x16c6c) # 17600 <_start-0x1bfe8a00>
     998:	4c5f676e 	jirl	$r14,$r27,24420(0x5f64)
     99c:	4500776f 	bnez	$r27,3997812(0x3d0074) # 3d0a10 <_start-0x1bc2f5f0>
     9a0:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff52f4 <_RAM_DATA+0x7fff42f4>
     9a4:	61656c43 	blt	$r2,$r3,91500(0x1656c) # 16f10 <_start-0x1bfe90f0>
     9a8:	616c4672 	blt	$r19,$r18,93252(0x16c44) # 175ec <_start-0x1bfe8a14>
     9ac:	58450067 	beq	$r3,$r7,17664(0x4500) # 4eac <_start-0x1bffb154>
     9b0:	6f4d4954 	bgeu	$r10,$r20,-45752(0x34d48) # ffff56f8 <_RAM_DATA+0x7fff46f8>
     9b4:	545f6564 	bl	93347684(0x5905f64) # 5906918 <_start-0x166f96e8>
     9b8:	44657079 	bnez	$r3,-1809040(0x646570) # ffe46f28 <_RAM_DATA+0x7fe45f28>
     9bc:	44006665 	bnez	$r19,1310820(0x140064) # 140a20 <_start-0x1bebf5e0>
     9c0:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     9c4:	2f737265 	0x2f737265
     9c8:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7828 <_RAM_DATA+0x7fff6828>
     9cc:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4df8 <_RAM_DATA+0x7fff3df8>
     9d0:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17744 <_start-0x1bfe88bc>
     9d4:	2f73746e 	0x2f73746e
     9d8:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16e44 <_start-0x1bfe91bc>
     9dc:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7928 <_RAM_DATA+0x7fff6928>
     9e0:	7241676e 	0x7241676e
     9e4:	505f6863 	b	25976680(0x18c5f68) # 18c694c <_start-0x1a7396b4>
     9e8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16d54 <_start-0x1bfe92ac>
     9ec:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe735c <_RAM_DATA+0x7ffe635c>
     9f0:	79535f67 	0x79535f67
     9f4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16f68 <_start-0x1bfe9098>
     9f8:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     9fc:	732f3230 	0x732f3230
     a00:	732f6372 	0x732f6372
     a04:	75702f77 	0x75702f77
     a08:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7374 <_RAM_DATA+0x7fff6374>
     a0c:	31736c2f 	0x31736c2f
     a10:	78655f78 	0x78655f78
     a14:	632e6974 	blt	$r11,$r20,-53656(0x32e68) # ffff387c <_RAM_DATA+0x7fff287c>
     a18:	74786500 	0x74786500
     a1c:	58450069 	beq	$r3,$r9,17664(0x4500) # 4f1c <_start-0x1bffb0e4>
     a20:	495f4954 	bcnez	$fcc2,-3055800(0x515f48) # ffd16968 <_RAM_DATA+0x7fd15968>
     a24:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
     a28:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155e80 <_start-0x1beaa180>
     a2c:	4950475f 	0x4950475f
     a30:	5845004f 	beq	$r2,$r15,17664(0x4500) # 4f30 <_start-0x1bffb0d0>
     a34:	475f4954 	bnez	$r10,-2924728(0x535f48) # ffd3697c <_RAM_DATA+0x7fd3597c>
     a38:	6c467465 	bgeu	$r3,$r5,18036(0x4674) # 50ac <_start-0x1bffaf54>
     a3c:	74536761 	0x74536761
     a40:	73757461 	0x73757461
     a44:	54584500 	bl	67131460(0x4005844) # 4006288 <_start-0x17ff9d78>
     a48:	65445f49 	bge	$r26,$r9,83036(0x1445c) # 14ea4 <_start-0x1bfeb15c>
     a4c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a50:	54584500 	bl	67131460(0x4005844) # 4006294 <_start-0x17ff9d6c>
     a54:	74535f49 	0x74535f49
     a58:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
     a5c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a60:	49584500 	bcnez	$fcc0,88132(0x15844) # 162a4 <_start-0x1bfe9d5c>
     a64:	505f544e 	b	20471636(0x1385f54) # 13869b8 <_start-0x1ac79648>
     a68:	45004c4f 	bnez	$r2,3997772(0x3d004c) # 3d0ab4 <_start-0x1bc2f54c>
     a6c:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff53c0 <_RAM_DATA+0x7fff43c0>
     a70:	6f697047 	bgeu	$r2,$r7,-38544(0x36970) # ffff73e0 <_RAM_DATA+0x7fff63e0>
     a74:	00646d43 	bstrins.w	$r3,$r10,0x4,0x1b
     a78:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155ed0 <_start-0x1beaa130>
     a7c:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
     a80:	74535449 	0x74535449
     a84:	73757461 	0x73757461
     a88:	54584500 	bl	67131460(0x4005844) # 40062cc <_start-0x17ff9d34>
     a8c:	6c435f49 	bgeu	$r26,$r9,17244(0x435c) # 4de8 <_start-0x1bffb218>
     a90:	49726165 	bcnez	$fcc3,1405536(0x157260) # 157cf0 <_start-0x1bea8310>
     a94:	6e655054 	bgeu	$r2,$r20,-105136(0x26550) # fffe6fe4 <_RAM_DATA+0x7ffe5fe4>
     a98:	676e6964 	bge	$r11,$r4,-37272(0x36e68) # ffff7900 <_RAM_DATA+0x7fff6900>
     a9c:	00746942 	bstrins.w	$r2,$r10,0x14,0x1a
     aa0:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155ef8 <_start-0x1beaa108>
     aa4:	646f4d5f 	bge	$r10,$r31,28492(0x6f4c) # 79f0 <_start-0x1bff8610>
     aa8:	654c5f65 	bge	$r27,$r5,85084(0x14c5c) # 15704 <_start-0x1bfea8fc>
     aac:	006c6576 	bstrins.w	$r22,$r11,0xc,0x19
     ab0:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155f08 <_start-0x1beaa0f8>
     ab4:	6972545f 	bltu	$r2,$r31,94804(0x17254) # 17d08 <_start-0x1bfe82f8>
     ab8:	72656767 	0x72656767
     abc:	7369525f 	vssrarni.w.d	$vr31,$vr18,0x14
     ac0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff722c <_RAM_DATA+0x7fff622c>
     ac4:	68676948 	bltu	$r10,$r8,26472(0x6768) # 722c <_start-0x1bff8dd4>
     ac8:	54584500 	bl	67131460(0x4005844) # 400630c <_start-0x17ff9cf4>
     acc:	69725449 	bltu	$r2,$r9,94804(0x17254) # 17d20 <_start-0x1bfe82e0>
     ad0:	72656767 	0x72656767
     ad4:	7079545f 	0x7079545f
     ad8:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe701c <_RAM_DATA+0x7ffe601c>
     adc:	54445700 	bl	-67091372(0xc004454) # fc004f30 <_RAM_DATA+0x7c003f30>
     ae0:	4545465f 	bnez	$r18,-178876(0x7d4544) # fffd5024 <_RAM_DATA+0x7ffd4024>
     ae4:	4d430044 	jirl	$r4,$r2,82688(0x14300)
     ae8:	53545344 	b	-49064880(0xd135450) # fd135f38 <_RAM_DATA+0x7d134f38>
     aec:	4d4f4300 	jirl	$r0,$r24,85824(0x14f40)
     af0:	45524150 	bnez	$r10,-4107712(0x415240) # ffc15d30 <_RAM_DATA+0x7fc14d30>
     af4:	43444100 	beqz	$r8,214080(0x34440) # 34f34 <_start-0x1bfcb0cc>
     af8:	5441445f 	bl	24920388(0x17c4144) # 17c4c3c <_start-0x1a83b3c4>
     afc:	4c555000 	jirl	$r0,$r0,21840(0x5550)
     b00:	00304553 	0x00304553
     b04:	534c5550 	b	88296532(0x5434c54) # 5435758 <_start-0x16bca8a8>
     b08:	44003145 	bnez	$r10,1310768(0x140030) # 140b38 <_start-0x1bebf4c8>
     b0c:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     b10:	2f737265 	0x2f737265
     b14:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7974 <_RAM_DATA+0x7fff6974>
     b18:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4f44 <_RAM_DATA+0x7fff3f44>
     b1c:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17890 <_start-0x1bfe8770>
     b20:	2f73746e 	0x2f73746e
     b24:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16f90 <_start-0x1bfe9070>
     b28:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7a74 <_RAM_DATA+0x7fff6a74>
     b2c:	7241676e 	0x7241676e
     b30:	505f6863 	b	25976680(0x18c5f68) # 18c6a98 <_start-0x1a739568>
     b34:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16ea0 <_start-0x1bfe9160>
     b38:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe74a8 <_RAM_DATA+0x7ffe64a8>
     b3c:	79535f67 	0x79535f67
     b40:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 170b4 <_start-0x1bfe8f4c>
     b44:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     b48:	732f3230 	0x732f3230
     b4c:	732f6372 	0x732f6372
     b50:	75702f77 	0x75702f77
     b54:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff74c0 <_RAM_DATA+0x7fff64c0>
     b58:	31736c2f 	0x31736c2f
     b5c:	64775f78 	bge	$r27,$r24,30556(0x775c) # 82b8 <_start-0x1bff7d48>
     b60:	00632e67 	bstrins.w	$r7,$r19,0x3,0xb
     b64:	4e554f43 	jirl	$r3,$r26,-109236(0x2554c)
     b68:	48430054 	bceqz	$fcc2,-3128576(0x504300) # ffd04e68 <_RAM_DATA+0x7fd03e68>
     b6c:	54435049 	bl	19153744(0x1244350) # 1244ebc <_start-0x1adbb144>
     b70:	50004c52 	b	21495884(0x148004c) # 1480bbc <_start-0x1ab7f444>
     b74:	5245574f 	b	-46250668(0xd3e4554) # fd3e50c8 <_RAM_DATA+0x7d3e40c8>
     b78:	4746435f 	bnez	$r26,-47552(0x7f4640) # ffff51b8 <_RAM_DATA+0x7fff41b8>
     b7c:	45535500 	bnez	$r8,86868(0x15354) # 15ed0 <_start-0x1bfea130>
     b80:	41445f52 	beqz	$r26,-3586980(0x49445c) # ffc94fdc <_RAM_DATA+0x7fc93fdc>
     b84:	43003054 	beqz	$r2,-2949072(0x530030) # ffd30bb4 <_RAM_DATA+0x7fd2fbb4>
     b88:	0057444d 	0x0057444d
     b8c:	5f434441 	bne	$r2,$r1,-48316(0x34344) # ffff4ed0 <_RAM_DATA+0x7fff3ed0>
     b90:	4c525443 	jirl	$r3,$r2,21076(0x5254)
     b94:	53455200 	b	-134003376(0x8034550) # f80350e4 <_RAM_DATA+0x780340e4>
     b98:	45565245 	bnez	$r18,1398352(0x155650) # 1561e8 <_start-0x1bea9e18>
     b9c:	52003044 	b	17956912(0x1120030) # 1120bcc <_start-0x1aedf434>
     ba0:	52455345 	b	-48872112(0xd164550) # fd1650f0 <_RAM_DATA+0x7d1640f0>
     ba4:	31444556 	vstelm.h	$vr22,$r10,34(0x22),0x1
     ba8:	554d5000 	bl	85328(0x14d50) # 158f8 <_start-0x1bfea708>
     bac:	7079545f 	0x7079545f
     bb0:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe70f4 <_RAM_DATA+0x7ffe60f4>
     bb4:	47445700 	bnez	$r24,214100(0x34454) # 35008 <_start-0x1bfcaff8>
     bb8:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     bbc:	63746157 	blt	$r10,$r23,-35744(0x37460) # ffff801c <_RAM_DATA+0x7fff701c>
     bc0:	676f4468 	bge	$r3,$r8,-37052(0x36f44) # ffff7b04 <_RAM_DATA+0x7fff6b04>
     bc4:	47445700 	bnez	$r24,214100(0x34454) # 35018 <_start-0x1bfcafe8>
     bc8:	676f445f 	bge	$r2,$r31,-37052(0x36f44) # ffff7b0c <_RAM_DATA+0x7fff6b0c>
     bcc:	64656546 	bge	$r10,$r6,25956(0x6564) # 7130 <_start-0x1bff8ed0>
     bd0:	67645700 	bge	$r24,$r0,-39852(0x36454) # ffff7024 <_RAM_DATA+0x7fff6024>
     bd4:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     bd8:	54445700 	bl	-67091372(0xc004454) # fc00502c <_RAM_DATA+0x7c00402c>
     bdc:	4746435f 	bnez	$r26,-47552(0x7f4640) # ffff521c <_RAM_DATA+0x7fff421c>
     be0:	54584500 	bl	67131460(0x4005844) # 4006424 <_start-0x17ff9bdc>
     be4:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff6030 <_RAM_DATA+0x7fff5030>
     be8:	54004e45 	bl	-116129716(0x914004c) # f9140c34 <_RAM_DATA+0x7913fc34>
     bec:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff5138 <_RAM_DATA+0x7fff4138>
     bf0:	00504d43 	0x00504d43
     bf4:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff593c <_RAM_DATA+0x7fff493c>
     bf8:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     bfc:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c00:	656c435f 	bge	$r26,$r31,93248(0x16c40) # 17840 <_start-0x1bfe87c0>
     c04:	54497261 	bl	-108770960(0x9844970) # f9845574 <_RAM_DATA+0x79844574>
     c08:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c0c:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 17a54 <_start-0x1bfe85ac>
     c10:	70795474 	0x70795474
     c14:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe7158 <_RAM_DATA+0x7ffe6158>
     c18:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c1c:	54535f45 	bl	-48999588(0xd14535c) # fd145f78 <_RAM_DATA+0x7d144f78>
     c20:	49540050 	bceqz	$fcc2,-4107264(0x415400) # ffc16020 <_RAM_DATA+0x7fc15020>
     c24:	495f454d 	bcnez	$fcc2,3497796(0x355f44) # 356b68 <_start-0x1bca9498>
     c28:	4e45544e 	jirl	$r14,$r2,-113324(0x24554)
     c2c:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c30:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     c34:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # fffe81a0 <_RAM_DATA+0x7ffe71a0>
     c38:	00726574 	bstrins.w	$r20,$r11,0x12,0x19
     c3c:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd15984 <_RAM_DATA+0x7fd14984>
     c40:	4154535f 	beqz	$r26,-175024(0x7d5450) # fffd6090 <_RAM_DATA+0x7ffd5090>
     c44:	54005452 	bl	21495892(0x1480054) # 1480c98 <_start-0x1ab7f368>
     c48:	435f4d49 	beqz	$r10,2580300(0x275f4c) # 276b94 <_start-0x1bd8946c>
     c4c:	5400646d 	bl	28573796(0x1b40064) # 1b40cb0 <_start-0x1a4bf350>
     c50:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff519c <_RAM_DATA+0x7fff419c>
     c54:	00544e43 	0x00544e43
     c58:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff59a0 <_RAM_DATA+0x7fff49a0>
     c5c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     c60:	75727453 	0x75727453
     c64:	54007463 	bl	25952372(0x18c0074) # 18c0cd8 <_start-0x1a73f328>
     c68:	475f4d49 	bnez	$r10,2580300(0x275f4c) # 276bb4 <_start-0x1bd8944c>
     c6c:	6f437465 	bgeu	$r3,$r5,-48268(0x34374) # ffff4fe0 <_RAM_DATA+0x7fff3fe0>
     c70:	7261706d 	0x7261706d
     c74:	49540065 	bceqz	$fcc3,1397760(0x155400) # 156074 <_start-0x1bea9f8c>
     c78:	74535f4d 	0x74535f4d
     c7c:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
     c80:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     c84:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c88:	414c465f 	beqz	$r18,-177084(0x7d4c44) # fffd58cc <_RAM_DATA+0x7ffd48cc>
     c8c:	49540047 	bceqz	$fcc2,1922048(0x1d5400) # 1d608c <_start-0x1be29f74>
     c90:	65475f4d 	bge	$r26,$r13,83804(0x1475c) # 153ec <_start-0x1bfeac14>
     c94:	53544974 	b	97735752(0x5d35448) # 5d360dc <_start-0x162c9f24>
     c98:	75746174 	0x75746174
     c9c:	49540073 	bceqz	$fcc3,-3320832(0x4d5400) # ffcd609c <_RAM_DATA+0x7fcd509c>
     ca0:	505f454d 	b	87318340(0x5345f44) # 5346be4 <_start-0x16cb941c>
     ca4:	4f495245 	jirl	$r5,$r18,-46768(0x34950)
     ca8:	00434944 	0x00434944
     cac:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff59f4 <_RAM_DATA+0x7fff49f4>
     cb0:	6f435449 	bgeu	$r2,$r9,-48300(0x34354) # ffff5004 <_RAM_DATA+0x7fff4004>
     cb4:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffff7618 <_RAM_DATA+0x7fff6618>
     cb8:	2f3a4400 	0x2f3a4400
     cbc:	72657355 	0x72657355
     cc0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 183ec <_start-0x1bfe7c14>
     cc4:	2f73676e 	0x2f73676e
     cc8:	75636f44 	0x75636f44
     ccc:	746e656d 	0x746e656d
     cd0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4ffc <_RAM_DATA+0x7fff3ffc>
     cd4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     cd8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7b44 <_RAM_DATA+0x7fff6b44>
     cdc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 704c <_start-0x1bff8fb4>
     ce0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7f30 <_RAM_DATA+0x7fff6f30>
     ce4:	73736563 	0x73736563
     ce8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7454 <_RAM_DATA+0x7fff6454>
     cec:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     cf0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     cf4:	32303143 	0x32303143
     cf8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7f68 <_RAM_DATA+0x7fff6f68>
     cfc:	2f77732f 	0x2f77732f
     d00:	76697270 	0x76697270
     d04:	2f657461 	0x2f657461
     d08:	6331736c 	blt	$r27,$r12,-52880(0x33170) # ffff3e78 <_RAM_DATA+0x7fff2e78>
     d0c:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff3f3c <_RAM_DATA+0x7fff2f3c>
     d10:	6d697470 	bgeu	$r3,$r16,92532(0x16974) # 17684 <_start-0x1bfe897c>
     d14:	632e7265 	blt	$r19,$r5,-53648(0x32e70) # ffff3b84 <_RAM_DATA+0x7fff2b84>
     d18:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     d1c:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     d20:	706d6f43 	0x706d6f43
     d24:	00657261 	bstrins.w	$r1,$r19,0x5,0x1c
     d28:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5a70 <_RAM_DATA+0x7fff4a70>
     d2c:	43746547 	beqz	$r10,2061412(0x1f7464) # 1f8190 <_start-0x1be07e70>
     d30:	746e756f 	0x746e756f
     d34:	65007265 	bge	$r19,$r5,65648(0x10070) # 10da4 <_start-0x1bfef25c>
     d38:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff76ac <_RAM_DATA+0x7fff66ac>
     d3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff7eac <_RAM_DATA+0x7fff6eac>
     d40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7ba0 <_start-0x1bff8460>
     d44:	7500656c 	0x7500656c
     d48:	65676173 	bge	$r11,$r19,92000(0x16760) # 174a8 <_start-0x1bfe8b58>
     d4c:	61747300 	blt	$r24,$r0,95344(0x17470) # 181bc <_start-0x1bfe7e44>
     d50:	44006574 	bnez	$r11,-3145628(0x500064) # ffd00db4 <_RAM_DATA+0x7fcffdb4>
     d54:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     d58:	2f737265 	0x2f737265
     d5c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7bbc <_RAM_DATA+0x7fff6bbc>
     d60:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff518c <_RAM_DATA+0x7fff418c>
     d64:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17ad8 <_start-0x1bfe8528>
     d68:	2f73746e 	0x2f73746e
     d6c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 171d8 <_start-0x1bfe8e28>
     d70:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7cbc <_RAM_DATA+0x7fff6cbc>
     d74:	7241676e 	0x7241676e
     d78:	505f6863 	b	25976680(0x18c5f68) # 18c6ce0 <_start-0x1a739320>
     d7c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 170e8 <_start-0x1bfe8f18>
     d80:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe76f0 <_RAM_DATA+0x7ffe66f0>
     d84:	79535f67 	0x79535f67
     d88:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 172fc <_start-0x1bfe8d04>
     d8c:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     d90:	732f3230 	0x732f3230
     d94:	732f6372 	0x732f6372
     d98:	73752f77 	0x73752f77
     d9c:	6d2f7265 	bgeu	$r19,$r5,77680(0x12f70) # 13d0c <_start-0x1bfec2f4>
     da0:	2e6e6961 	0x2e6e6961
     da4:	6d630063 	bgeu	$r3,$r3,90880(0x16300) # 170a4 <_start-0x1bfe8f5c>
     da8:	6e696c64 	bgeu	$r3,$r4,-104084(0x2696c) # fffe7714 <_RAM_DATA+0x7ffe6714>
     dac:	616d0065 	blt	$r3,$r5,93440(0x16d00) # 17aac <_start-0x1bfe8554>
     db0:	63006e69 	blt	$r19,$r9,-65428(0x3006c) # ffff0e1c <_RAM_DATA+0x7ffefe1c>
     db4:	6170646d 	blt	$r3,$r13,94308(0x17064) # 17e18 <_start-0x1bfe81e8>
     db8:	73006172 	0x73006172
     dbc:	00307274 	0x00307274
     dc0:	5f747845 	bne	$r2,$r5,-35720(0x37478) # ffff8238 <_RAM_DATA+0x7fff7238>
     dc4:	48717249 	0x48717249
     dc8:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7234 <_start-0x1bff8dcc>
     dcc:	6d630065 	bgeu	$r3,$r5,90880(0x16300) # 170cc <_start-0x1bfe8f34>
     dd0:	66756264 	bge	$r19,$r4,-101024(0x27560) # fffe8330 <_RAM_DATA+0x7ffe7330>
     dd4:	00726566 	bstrins.w	$r6,$r11,0x12,0x19
     dd8:	6e646d63 	bgeu	$r11,$r3,-105364(0x2646c) # fffe7244 <_RAM_DATA+0x7ffe6244>
     ddc:	00656d61 	bstrins.w	$r1,$r11,0x5,0x1b
     de0:	685f6f64 	bltu	$r27,$r4,24428(0x5f6c) # 6d4c <_start-0x1bff92b4>
     de4:	00706c65 	bstrins.w	$r5,$r3,0x10,0x1b
     de8:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # ffff7c5c <_RAM_DATA+0x7fff6c5c>
     dec:	67726100 	bge	$r8,$r0,-36256(0x37260) # ffff804c <_RAM_DATA+0x7fff704c>
     df0:	41550063 	beqz	$r3,873728(0xd5500) # d62f0 <_start-0x1bf29d10>
     df4:	5f315452 	bne	$r2,$r18,-52908(0x33154) # ffff3f48 <_RAM_DATA+0x7fff2f48>
     df8:	444e4148 	bnez	$r10,2117184(0x204e40) # 205c38 <_start-0x1bdfa3c8>
     dfc:	0052454c 	0x0052454c
     e00:	76677261 	0x76677261
     e04:	5f6f6400 	bne	$r0,$r0,-37020(0x36f64) # ffff7d68 <_RAM_DATA+0x7fff6d68>
     e08:	74697865 	xvavgr.w	$xr5,$xr3,$xr30
     e0c:	646d6300 	bge	$r24,$r0,28000(0x6d60) # 7b6c <_start-0x1bff8494>
     e10:	7274735f 	0x7274735f
     e14:	00746375 	bstrins.w	$r21,$r27,0x14,0x18
     e18:	70646d63 	vavg.b	$vr3,$vr11,$vr27
     e1c:	65007274 	bge	$r19,$r20,65648(0x10070) # 10e8c <_start-0x1bfef174>
     e20:	65727078 	bge	$r3,$r24,94832(0x17270) # 18090 <_start-0x1bfe7f70>
     e24:	6f697373 	bgeu	$r27,$r19,-38544(0x36970) # ffff7794 <_RAM_DATA+0x7fff6794>
     e28:	5f5f006e 	bne	$r3,$r14,-41216(0x35f00) # ffff6d28 <_RAM_DATA+0x7fff5d28>
     e2c:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
     e30:	00745f32 	bstrins.w	$r18,$r25,0x14,0x17
     e34:	63727473 	blt	$r3,$r19,-36236(0x37274) # ffff80a8 <_RAM_DATA+0x7fff70a8>
     e38:	6800706d 	bltu	$r3,$r13,112(0x70) # ea8 <_start-0x1bfff158>
     e3c:	6f747369 	bgeu	$r27,$r9,-35728(0x37470) # ffff82ac <_RAM_DATA+0x7fff72ac>
     e40:	735f7972 	vsrarni.d.q	$vr18,$vr11,0x5e
     e44:	62007274 	blt	$r19,$r20,-130960(0x20070) # fffe0eb4 <_RAM_DATA+0x7ffdfeb4>
     e48:	00306675 	0x00306675
     e4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 182c4 <_start-0x1bfe7d3c>
     e50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 17eb4 <_start-0x1bfe814c>
     e54:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # ffff45b8 <_RAM_DATA+0x7fff35b8>
     e58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff7fc8 <_RAM_DATA+0x7fff6fc8>
     e5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7cbc <_start-0x1bff8344>
     e60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
     e64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 182dc <_start-0x1bfe7d24>
     e68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 17ecc <_start-0x1bfe8134>
     e6c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # ffff41cc <_RAM_DATA+0x7fff31cc>
     e70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff7fe0 <_RAM_DATA+0x7fff6fe0>
     e74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7cd4 <_start-0x1bff832c>
     e78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
     e7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff7fec <_RAM_DATA+0x7fff6fec>
     e80:	49006f6e 	0x49006f6e
     e84:	3631544e 	0x3631544e
     e88:	4f540055 	jirl	$r21,$r2,-44032(0x35400)
     e8c:	00484355 	0x00484355
     e90:	65676572 	bge	$r11,$r18,92004(0x16764) # 175f4 <_start-0x1bfe8a0c>
     e94:	4142006e 	beqz	$r3,3752448(0x394200) # 395094 <_start-0x1bc6af6c>
     e98:	41465f54 	beqz	$r26,-3062180(0x51465c) # ffd154f4 <_RAM_DATA+0x7fd144f4>
     e9c:	55004c49 	bl	19202124(0x125004c) # 1250ee8 <_start-0x1adaf118>
     ea0:	32545241 	xvldrepl.h	$xr1,$r18,-1496(0xa28)
     ea4:	544e495f 	bl	92032584(0x57c4e48) # 57c5cec <_start-0x1683a314>
     ea8:	2f3a4400 	0x2f3a4400
     eac:	72657355 	0x72657355
     eb0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 185dc <_start-0x1bfe7a24>
     eb4:	2f73676e 	0x2f73676e
     eb8:	75636f44 	0x75636f44
     ebc:	746e656d 	0x746e656d
     ec0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff51ec <_RAM_DATA+0x7fff41ec>
     ec4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     ec8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7d34 <_RAM_DATA+0x7fff6d34>
     ecc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 723c <_start-0x1bff8dc4>
     ed0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff8120 <_RAM_DATA+0x7fff7120>
     ed4:	73736563 	0x73736563
     ed8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7644 <_RAM_DATA+0x7fff6644>
     edc:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     ee0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     ee4:	32303143 	0x32303143
     ee8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff8158 <_RAM_DATA+0x7fff7158>
     eec:	2f77732f 	0x2f77732f
     ef0:	72657375 	0x72657375
     ef4:	3163312f 	0x3163312f
     ef8:	495f3230 	0x495f3230
     efc:	7265746e 	0x7265746e
     f00:	74707572 	xvmax.b	$xr18,$xr11,$xr29
     f04:	7500632e 	0x7500632e
     f08:	30747261 	0x30747261
     f0c:	465f5f00 	bnez	$r24,155484(0x25f5c) # 26e68 <_start-0x1bfd9198>
     f10:	54434e55 	bl	-111918260(0x954434c) # f954525c <_RAM_DATA+0x7954425c>
     f14:	5f4e4f49 	bne	$r26,$r9,-45492(0x34e4c) # ffff5d60 <_RAM_DATA+0x7fff4d60>
     f18:	7865005f 	0x7865005f
     f1c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6e84 <_RAM_DATA+0x7fff5e84>
     f20:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7e88 <_RAM_DATA+0x7ffe6e88>
     f24:	72695f36 	0x72695f36
     f28:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17784 <_start-0x1bfe887c>
     f2c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17b90 <_start-0x1bfe8470>
     f30:	78650072 	0x78650072
     f34:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6e9c <_RAM_DATA+0x7fff5e9c>
     f38:	636f6970 	blt	$r11,$r16,-37016(0x36f68) # ffff7ea0 <_RAM_DATA+0x7fff6ea0>
     f3c:	72695f31 	0x72695f31
     f40:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 1779c <_start-0x1bfe8864>
     f44:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17ba8 <_start-0x1bfe8458>
     f48:	61750072 	blt	$r3,$r18,95488(0x17500) # 18448 <_start-0x1bfe7bb8>
     f4c:	735f7472 	vsrarni.d.q	$vr18,$vr3,0x5d
     f50:	65720072 	bge	$r3,$r18,94720(0x17200) # 18150 <_start-0x1bfe7eb0>
     f54:	63727367 	blt	$r27,$r7,-36240(0x37270) # ffff81c4 <_RAM_DATA+0x7fff71c4>
     f58:	74786500 	0x74786500
     f5c:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     f60:	34636f69 	0x34636f69
     f64:	7172695f 	0x7172695f
     f68:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe70d0 <_RAM_DATA+0x7ffe60d0>
     f6c:	72656c64 	0x72656c64
     f70:	74786500 	0x74786500
     f74:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     f78:	30616f69 	0x30616f69
     f7c:	7172695f 	0x7172695f
     f80:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe70e8 <_RAM_DATA+0x7ffe60e8>
     f84:	72656c64 	0x72656c64
     f88:	74786500 	0x74786500
     f8c:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     f90:	37636f69 	0x37636f69
     f94:	7172695f 	0x7172695f
     f98:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7100 <_RAM_DATA+0x7ffe6100>
     f9c:	72656c64 	0x72656c64
     fa0:	74786500 	0x74786500
     fa4:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     fa8:	32646f69 	0x32646f69
     fac:	7172695f 	0x7172695f
     fb0:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7118 <_RAM_DATA+0x7ffe6118>
     fb4:	72656c64 	0x72656c64
     fb8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     fbc:	485f5245 	0x485f5245
     fc0:	4c444e41 	jirl	$r1,$r18,17484(0x444c)
     fc4:	4b005245 	0x4b005245
     fc8:	79547965 	0x79547965
     fcc:	4b006570 	bcnez	$fcc3,-3997596(0x430064) # ffc31030 <_RAM_DATA+0x7fc30030>
     fd0:	68437965 	bltu	$r11,$r5,17272(0x4378) # 5348 <_start-0x1bffacb8>
     fd4:	656e6e61 	bge	$r19,$r1,93804(0x16e6c) # 17e40 <_start-0x1bfe81c0>
     fd8:	7865006c 	0x7865006c
     fdc:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f44 <_RAM_DATA+0x7fff5f44>
     fe0:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 17f48 <_start-0x1bfe80b8>
     fe4:	72695f33 	0x72695f33
     fe8:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17844 <_start-0x1bfe87bc>
     fec:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c50 <_start-0x1bfe83b0>
     ff0:	78650072 	0x78650072
     ff4:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f5c <_RAM_DATA+0x7fff5f5c>
     ff8:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 7f60 <_start-0x1bff80a0>
     ffc:	72695f35 	0x72695f35
    1000:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 1785c <_start-0x1bfe87a4>
    1004:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c68 <_start-0x1bfe8398>
    1008:	78650072 	0x78650072
    100c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f74 <_RAM_DATA+0x7fff5f74>
    1010:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 17f78 <_start-0x1bfe8088>
    1014:	72695f36 	0x72695f36
    1018:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17874 <_start-0x1bfe878c>
    101c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c80 <_start-0x1bfe8380>
    1020:	78650072 	0x78650072
    1024:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f8c <_RAM_DATA+0x7fff5f8c>
    1028:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7f90 <_RAM_DATA+0x7ffe6f90>
    102c:	72695f31 	0x72695f31
    1030:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 1788c <_start-0x1bfe8774>
    1034:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c98 <_start-0x1bfe8368>
    1038:	78650072 	0x78650072
    103c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6fa4 <_RAM_DATA+0x7fff5fa4>
    1040:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7fa8 <_RAM_DATA+0x7ffe6fa8>
    1044:	72695f34 	0x72695f34
    1048:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 178a4 <_start-0x1bfe875c>
    104c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17cb0 <_start-0x1bfe8350>
    1050:	4f530072 	jirl	$r18,$r3,-44288(0x35300)
    1054:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 196fa8 <_start-0x1be69058>
    1058:	6500544e 	bge	$r2,$r14,65620(0x10054) # 110ac <_start-0x1bfeef54>
    105c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79d0 <_RAM_DATA+0x7fff69d0>
    1060:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79d0 <_RAM_DATA+0x7fff69d0>
    1064:	695f3762 	bltu	$r27,$r2,89908(0x15f34) # 16f98 <_start-0x1bfe9068>
    1068:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6fd8 <_start-0x1bff9028>
    106c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74d8 <_start-0x1bff8b28>
    1070:	65007265 	bge	$r19,$r5,65648(0x10070) # 110e0 <_start-0x1bfeef20>
    1074:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79e8 <_RAM_DATA+0x7fff69e8>
    1078:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79e8 <_RAM_DATA+0x7fff69e8>
    107c:	695f3263 	bltu	$r19,$r3,89904(0x15f30) # 16fac <_start-0x1bfe9054>
    1080:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6ff0 <_start-0x1bff9010>
    1084:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74f0 <_start-0x1bff8b10>
    1088:	65007265 	bge	$r19,$r5,65648(0x10070) # 110f8 <_start-0x1bfeef08>
    108c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a00 <_RAM_DATA+0x7fff6a00>
    1090:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a00 <_RAM_DATA+0x7fff6a00>
    1094:	695f3563 	bltu	$r11,$r3,89908(0x15f34) # 16fc8 <_start-0x1bfe9038>
    1098:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7008 <_start-0x1bff8ff8>
    109c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7508 <_start-0x1bff8af8>
    10a0:	65007265 	bge	$r19,$r5,65648(0x10070) # 11110 <_start-0x1bfeeef0>
    10a4:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a18 <_RAM_DATA+0x7fff6a18>
    10a8:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a18 <_RAM_DATA+0x7fff6a18>
    10ac:	695f3064 	bltu	$r3,$r4,89904(0x15f30) # 16fdc <_start-0x1bfe9024>
    10b0:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7020 <_start-0x1bff8fe0>
    10b4:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7520 <_start-0x1bff8ae0>
    10b8:	66007265 	bge	$r19,$r5,-130960(0x20070) # fffe1128 <_RAM_DATA+0x7ffe0128>
    10bc:	0067616c 	bstrins.w	$r12,$r11,0x7,0x18
    10c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18538 <_start-0x1bfe7ac8>
    10c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18128 <_start-0x1bfe7ed8>
    10c8:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # ffff4228 <_RAM_DATA+0x7fff3228>
    10cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff823c <_RAM_DATA+0x7fff723c>
    10d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f30 <_start-0x1bff80d0>
    10d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    10d8:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd15e20 <_RAM_DATA+0x7fd14e20>
    10dc:	4d385f52 	jirl	$r18,$r26,79964(0x1385c)
    10e0:	544e495f 	bl	92032584(0x57c4e48) # 57c5f28 <_start-0x1683a0d8>
    10e4:	74786500 	0x74786500
    10e8:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    10ec:	33646f69 	xvstelm.h	$xr9,$r27,54(0x36),0x9
    10f0:	7172695f 	0x7172695f
    10f4:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe725c <_RAM_DATA+0x7ffe625c>
    10f8:	72656c64 	0x72656c64
    10fc:	74786500 	0x74786500
    1100:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1104:	34616f69 	0x34616f69
    1108:	7172695f 	0x7172695f
    110c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7274 <_RAM_DATA+0x7ffe6274>
    1110:	72656c64 	0x72656c64
    1114:	74786500 	0x74786500
    1118:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    111c:	36646f69 	0x36646f69
    1120:	7172695f 	0x7172695f
    1124:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe728c <_RAM_DATA+0x7ffe628c>
    1128:	72656c64 	0x72656c64
    112c:	74786500 	0x74786500
    1130:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1134:	37616f69 	0x37616f69
    1138:	7172695f 	0x7172695f
    113c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72a4 <_RAM_DATA+0x7ffe62a4>
    1140:	72656c64 	0x72656c64
    1144:	74786500 	0x74786500
    1148:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    114c:	32626f69 	0x32626f69
    1150:	7172695f 	0x7172695f
    1154:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72bc <_RAM_DATA+0x7ffe62bc>
    1158:	72656c64 	0x72656c64
    115c:	74786500 	0x74786500
    1160:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1164:	35626f69 	0x35626f69
    1168:	7172695f 	0x7172695f
    116c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72d4 <_RAM_DATA+0x7ffe62d4>
    1170:	72656c64 	0x72656c64
    1174:	74786500 	0x74786500
    1178:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    117c:	30636f69 	0x30636f69
    1180:	7172695f 	0x7172695f
    1184:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72ec <_RAM_DATA+0x7ffe62ec>
    1188:	72656c64 	0x72656c64
    118c:	74786500 	0x74786500
    1190:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1194:	33636f69 	xvstelm.h	$xr9,$r27,-74(0x1b6),0x8
    1198:	7172695f 	0x7172695f
    119c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7304 <_RAM_DATA+0x7ffe6304>
    11a0:	72656c64 	0x72656c64
    11a4:	656c5300 	bge	$r24,$r0,93264(0x16c50) # 17df4 <_start-0x1bfe820c>
    11a8:	6e457065 	bgeu	$r3,$r5,-113296(0x24570) # fffe5718 <_RAM_DATA+0x7ffe4718>
    11ac:	74786500 	0x74786500
    11b0:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7318 <_RAM_DATA+0x7ffe6318>
    11b4:	72656c64 	0x72656c64
    11b8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
    11bc:	575f5245 	bl	-115908784(0x9175f50) # f917710c <_RAM_DATA+0x7917610c>
    11c0:	5f454b41 	bne	$r26,$r1,-47800(0x34548) # ffff5708 <_RAM_DATA+0x7fff4708>
    11c4:	00544e49 	0x00544e49
    11c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18640 <_start-0x1bfe79c0>
    11cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18230 <_start-0x1bfe7dd0>
    11d0:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # ffff4830 <_RAM_DATA+0x7fff3830>
    11d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8344 <_RAM_DATA+0x7fff7344>
    11d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8038 <_start-0x1bff7fc8>
    11dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    11e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18658 <_start-0x1bfe79a8>
    11e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18248 <_start-0x1bfe7db8>
    11e8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # ffff434c <_RAM_DATA+0x7fff334c>
    11ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff835c <_RAM_DATA+0x7fff735c>
    11f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8050 <_start-0x1bff7fb0>
    11f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    11f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18670 <_start-0x1bfe7990>
    11fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18260 <_start-0x1bfe7da0>
    1200:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # ffff4460 <_RAM_DATA+0x7fff3460>
    1204:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8374 <_RAM_DATA+0x7fff7374>
    1208:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8068 <_start-0x1bff7f98>
    120c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1210:	63746e69 	blt	$r19,$r9,-35732(0x3746c) # ffff867c <_RAM_DATA+0x7fff767c>
    1214:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe737c <_RAM_DATA+0x7ffe637c>
    1218:	72656c64 	0x72656c64
    121c:	74786500 	0x74786500
    1220:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1224:	34646f69 	0x34646f69
    1228:	7172695f 	0x7172695f
    122c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7394 <_RAM_DATA+0x7ffe6394>
    1230:	72656c64 	0x72656c64
    1234:	74786500 	0x74786500
    1238:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    123c:	35616f69 	0x35616f69
    1240:	7172695f 	0x7172695f
    1244:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe73ac <_RAM_DATA+0x7ffe63ac>
    1248:	72656c64 	0x72656c64
    124c:	746e4900 	0x746e4900
    1250:	00676552 	bstrins.w	$r18,$r10,0x7,0x19
    1254:	69747865 	bltu	$r3,$r5,95352(0x17478) # 186cc <_start-0x1bfe7934>
    1258:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 182bc <_start-0x1bfe7d44>
    125c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # ffff42bc <_RAM_DATA+0x7fff32bc>
    1260:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff83d0 <_RAM_DATA+0x7fff73d0>
    1264:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 80c4 <_start-0x1bff7f3c>
    1268:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
       c:	00540001 	0x00540001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
      10:	00000000 	0x00000000
      14:	04000000 	csrrd	$r0,0x0
      18:	5401f300 	bl	-67108368(0xc0001f0) # fc000208 <_RAM_DATA+0x7bfff208>
      1c:	0000009f 	0x0000009f
	...
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:260
      30:	55000100 	bl	67174400(0x4010000) # 4010030 <_start-0x17feffd0>
	...
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      3c:	01f30004 	0x01f30004
      40:	00009f55 	0x00009f55
	...
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24 (discriminator 2)
      54:	00540001 	0x00540001
	...
gpio_init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/soc_gpio.c:35 (discriminator 3)
      80:	54000100 	bl	67108864(0x4000000) # 4000080 <_start-0x17ffff80>
	...
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
      8c:	00540001 	0x00540001
      90:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 1)
      94:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35 (discriminator 1)
      98:	00005400 	bitrev.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:35
      9c:	00000000 	0x00000000
      a0:	00010000 	asrtle.d	$r0,$r0
      a4:	00000054 	0x00000054
      a8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:45
      ac:	54000100 	bl	67108864(0x4000000) # 40000ac <_start-0x17ffff54>
	...
      b8:	00540001 	0x00540001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56
      bc:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:56 (discriminator 3)
      c0:	01000000 	0x01000000
      c4:	00005400 	bitrev.d	$r0,$r0
      c8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	00010000 	asrtle.d	$r0,$r0
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	00000054 	0x00000054
      d4:	00000000 	0x00000000
      d8:	54000100 	bl	67108864(0x4000000) # 40000d8 <_start-0x17ffff28>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	00540001 	0x00540001
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	00000000 	0x00000000
      ec:	01000000 	0x01000000
      f0:	00005400 	bitrev.d	$r0,$r0
      f4:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	00000054 	0x00000054
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	00000000 	0x00000000
     104:	54000100 	bl	67108864(0x4000000) # 4000104 <_start-0x17fffefc>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	00000055 	0x00000055
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	69000100 	bltu	$r8,$r0,65536(0x10000) # 10128 <_start-0x1bfefed8>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     134:	01f30004 	0x01f30004
     138:	00009f55 	0x00009f55
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     14c:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	06000000 	cacop	0x0,$r0,0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	02000000 	slti	$r0,$r0,0
     164:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
     168:	00000000 	0x00000000
     16c:	01000000 	0x01000000
     170:	00006800 	rdtime.d	$r0,$r0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     17c:	00000001 	0x00000001
     180:	00000000 	0x00000000
     184:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	00000067 	0x00000067
     18c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0190 <_RAM_DATA+0x7ffef190>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	00010100 	asrtle.d	$r8,$r0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	00010000 	asrtle.d	$r0,$r0
     1c0:	00000056 	0x00000056
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	00000000 	0x00000000
     1c8:	56000100 	bl	67239936(0x4020000) # 40201c8 <_start-0x17fdfe38>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d4:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	00000000 	0x00000000
     1dc:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	00005600 	bitrev.d	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	00000000 	0x00000000
     1e8:	00010000 	asrtle.d	$r0,$r0
     1ec:	00000056 	0x00000056
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	56000100 	bl	67239936(0x4020000) # 40201f4 <_start-0x17fdfe0c>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     200:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	00000000 	0x00000000
     208:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	00005600 	bitrev.d	$r0,$r16
     210:	00000000 	0x00000000
     214:	00010000 	asrtle.d	$r0,$r0
     218:	00000056 	0x00000056
     21c:	00000000 	0x00000000
     220:	30000200 	0x30000200
     224:	0000009f 	0x0000009f
     228:	00000000 	0x00000000
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	56000100 	bl	67239936(0x4020000) # 402022c <_start-0x17fdfdd4>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	00560001 	0x00560001
     23c:	00000000 	0x00000000
     240:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	00005600 	bitrev.d	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	00050000 	alsl.w	$r0,$r0,$r0,0x3
	...
     25c:	00540001 	0x00540001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	00000000 	0x00000000
     264:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	00006a00 	rdtime.d	$r0,$r16
     26c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     274:	9f5401f3 	0x9f5401f3
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	00540001 	0x00540001
     294:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	04000000 	csrrd	$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	5401f300 	bl	-67108368(0xc0001f0) # fc00048c <_RAM_DATA+0x7bfff48c>
     2a0:	0000009f 	0x0000009f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	00000000 	0x00000000
     2a8:	54000100 	bl	67108864(0x4000000) # 40002a8 <_start-0x17fffd58>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	00540001 	0x00540001
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	55000100 	bl	67174400(0x4010000) # 40102d0 <_start-0x17fefd30>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2dc:	01f30004 	0x01f30004
     2e0:	00009f55 	0x00009f55
     2e4:	00000000 	0x00000000
     2e8:	00010000 	asrtle.d	$r0,$r0
     2ec:	00000055 	0x00000055
     2f0:	00000000 	0x00000000
     2f4:	87000400 	0x87000400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	009f1f00 	bstrins.d	$r0,$r24,0x1f,0x7
     2fc:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	04000000 	csrrd	$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	5501f300 	bl	-67042832(0xc0101f0) # fc0104f4 <_RAM_DATA+0x7c00f4f4>
     308:	0000009f 	0x0000009f
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	01000000 	0x01000000
     324:	00005600 	bitrev.d	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	00000000 	0x00000000
     32c:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	0000006a 	0x0000006a
     334:	00000000 	0x00000000
     338:	56000100 	bl	67239936(0x4020000) # 4020338 <_start-0x17fdfcc8>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	00000000 	0x00000000
     34c:	04000000 	csrrd	$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	5601f300 	bl	-66977296(0xc0201f0) # fc020540 <_RAM_DATA+0x7c01f540>
     354:	0000009f 	0x0000009f
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	01000000 	0x01000000
     370:	00005700 	bitrev.d	$r0,$r24
     374:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	00010000 	asrtle.d	$r0,$r0
     37c:	00000069 	0x00000069
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	00000000 	0x00000000
     384:	57000100 	bl	67305472(0x4030000) # 4030384 <_start-0x17fcfc7c>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
     394:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	04000000 	csrrd	$r0,0x0
     39c:	5701f300 	bl	-66911760(0xc0301f0) # fc03058c <_RAM_DATA+0x7c02f58c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	0000009f 	0x0000009f
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b8:	58000100 	beq	$r8,$r0,0 # 3b8 <_start-0x1bfffc48>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3c4:	01f30004 	0x01f30004
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	00009f58 	0x00009f58
     3cc:	00000000 	0x00000000
     3d0:	00010000 	asrtle.d	$r0,$r0
     3d4:	00000058 	0x00000058
     3d8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	f3000400 	0xf3000400
     3e0:	009f5801 	bstrins.d	$r1,$r0,0x1f,0x16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	01000000 	0x01000000
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f8:	30000200 	0x30000200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	0000009f 	0x0000009f
     400:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	68000100 	bltu	$r8,$r0,0 # 404 <_start-0x1bfffbfc>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     410:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     424:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0424 <_RAM_DATA+0x7ffef424>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     43c:	00010000 	asrtle.d	$r0,$r0
     440:	00000055 	0x00000055
     444:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	75000400 	0x75000400
     44c:	009f7fa9 	bstrins.d	$r9,$r29,0x1f,0x1f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	00000000 	0x00000000
     454:	0f000000 	0x0f000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	87007d00 	0x87007d00
     45c:	41082200 	beqz	$r16,67616(0x10820) # 10c7c <_start-0x1bfef384>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	4801941c 	bceqz	$fcc0,-1048172(0x700194) # fff005f4 <_RAM_DATA+0x7feff5f4>
     464:	9f264824 	0x9f264824
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     47c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
     480:	00000000 	0x00000000
     484:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	00006700 	rdtimeh.w	$r0,$r24
     48c:	00000000 	0x00000000
     490:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	00000001 	0x00000001
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     4a0:	00540001 	0x00540001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	00000000 	0x00000000
     4a8:	03000000 	lu52i.d	$r0,$r0,0
     4ac:	9f017400 	0x9f017400
	...
     4b8:	00540001 	0x00540001
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	54000100 	bl	67108864(0x4000000) # 40004d0 <_start-0x17fffb30>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4dc:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
     4e0:	00000000 	0x00000000
     4e4:	04000000 	csrrd	$r0,0x0
     4e8:	5401f300 	bl	-67108368(0xc0001f0) # fc0006d8 <_RAM_DATA+0x7bfff6d8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	0000009f 	0x0000009f
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	00005500 	bitrev.d	$r0,$r8
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	00010000 	asrtle.d	$r0,$r0
     510:	00000068 	0x00000068
     514:	00000000 	0x00000000
     518:	f3000400 	0xf3000400
     51c:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     530:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	00005400 	bitrev.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	00000000 	0x00000000
     53c:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	00000069 	0x00000069
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     54c:	90000000 	0x90000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	d81c0012 	0xd81c0012
     554:	011c0012 	0x011c0012
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	12d85400 	addu16i.d	$r0,$r0,-18923(0xb615)
     55c:	148c1c00 	lu12i.w	$r0,286944(0x460e0)
     560:	00011c00 	asrtle.d	$r0,$r7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	00148c69 	and	$r9,$r3,$r3
     568:	0014981c 	and	$r28,$r0,$r6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	f300041c 	0xf300041c
     570:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
     574:	00000000 	0x00000000
     578:	02000000 	slti	$r0,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	d0000000 	0xd0000000
     580:	d81c0012 	0xd81c0012
     584:	021c0012 	slti	$r18,$r0,1792(0x700)
     588:	d89f3000 	0xd89f3000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	881c0012 	0x881c0012
     590:	011c0014 	0x011c0014
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	00006800 	rdtime.d	$r0,$r0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     5a0:	12d80001 	addu16i.d	$r1,$r0,-18944(0xb600)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	14581c00 	lu12i.w	$r0,180448(0x2c0e0)
     5a8:	00011c00 	asrtle.d	$r0,$r7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	00146467 	nor	$r7,$r3,$r25
     5b0:	0014781c 	nor	$r28,$r0,$r30
     5b4:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff05b4 <_RAM_DATA+0x7ffef5b4>
	...
     5c0:	12d00001 	addu16i.d	$r1,$r0,-19456(0xb400)
     5c4:	14901c00 	lu12i.w	$r0,295136(0x480e0)
     5c8:	00011c00 	asrtle.d	$r0,$r7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	0000006a 	0x0000006a
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e4:	01010000 	fadd.d	$f0,$f0,$f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	00000000 	0x00000000
     5ec:	dc000000 	0xdc000000
     5f0:	0f1c0012 	0x0f1c0012
     5f4:	011c0013 	0x011c0013
     5f8:	131c5500 	addu16i.d	$r0,$r8,-14571(0xc715)
     5fc:	13231c00 	addu16i.d	$r0,$r0,-14137(0xc8c7)
     600:	00011c00 	asrtle.d	$r0,$r7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	00133055 	maskeqz	$r21,$r2,$r12
     608:	00133f1c 	maskeqz	$r28,$r24,$r15
     60c:	5500011c 	bl	74514432(0x4710000) # 471060c <_start-0x178ef9f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	1c00134c 	pcaddu12i	$r12,154(0x9a)
     614:	1c00135b 	pcaddu12i	$r27,154(0x9a)
     618:	68550001 	bltu	$r0,$r1,21760(0x5500) # 5b18 <_start-0x1bffa4e8>
     61c:	771c0013 	0x771c0013
     620:	011c0013 	0x011c0013
     624:	13845500 	addu16i.d	$r0,$r8,-7915(0xe115)
     628:	13931c00 	addu16i.d	$r0,$r0,-6969(0xe4c7)
     62c:	00011c00 	asrtle.d	$r0,$r7
     630:	0013a055 	masknez	$r21,$r2,$r8
     634:	0013af1c 	masknez	$r28,$r24,$r11
     638:	5500011c 	bl	74514432(0x4710000) # 4710638 <_start-0x178ef9c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	1c0013bc 	pcaddu12i	$r28,157(0x9d)
     640:	1c0013c3 	pcaddu12i	$r3,158(0x9e)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	cc550001 	0xcc550001
     648:	d01c0013 	0xd01c0013
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	011c0013 	0x011c0013
     650:	13d05500 	addu16i.d	$r0,$r8,-3051(0xf415)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	13d41c00 	addu16i.d	$r0,$r0,-2809(0xf507)
     658:	00021c00 	0x00021c00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	13d49f30 	addu16i.d	$r16,$r25,-2777(0xf527)
     660:	13f41c00 	addu16i.d	$r0,$r0,-761(0xfd07)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	00011c00 	asrtle.d	$r0,$r7
     668:	0013fc55 	masknez	$r21,$r2,$r31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	0014281c 	nor	$r28,$r0,$r10
     670:	5500011c 	bl	74514432(0x4710000) # 4710670 <_start-0x178ef990>
     674:	1c001430 	pcaddu12i	$r16,161(0xa1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	1c00143f 	pcaddu12i	$r31,161(0xa1)
     67c:	00550001 	0x00550001
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	38000000 	ldx.b	$r0,$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	501c0012 	b	4725760(0x481c00) # 48228c <_start-0x1bb7dd74>
     690:	011c0012 	0x011c0012
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	12505400 	addu16i.d	$r0,$r0,-27627(0x9415)
     698:	12881c00 	addu16i.d	$r0,$r0,-24057(0xa207)
     69c:	00011c00 	asrtle.d	$r0,$r7
     6a0:	00000068 	0x00000068
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	50000000 	b	0 # 6ac <_start-0x1bfff954>
     6b0:	641c0012 	bge	$r0,$r18,7168(0x1c00) # 22b0 <_start-0x1bffdd50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	011c0012 	0x011c0012
     6b8:	12686700 	addu16i.d	$r0,$r24,-26087(0x9a19)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	12841c00 	addu16i.d	$r0,$r0,-24313(0xa107)
     6c0:	00011c00 	asrtle.d	$r0,$r7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	00128467 	sltu	$r7,$r3,$r1
     6c8:	0012881c 	sltu	$r28,$r0,$r2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	8800021c 	0x8800021c
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	48000000 	bceqz	$fcc0,0 # 6e0 <_start-0x1bfff920>
     6e4:	741c0011 	0x741c0011
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	011c0011 	0x011c0011
     6ec:	11745400 	addu16i.d	$r0,$r0,23829(0x5d15)
     6f0:	11ac1c00 	addu16i.d	$r0,$r0,27399(0x6b07)
     6f4:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     6f8:	9f5401f3 	0x9f5401f3
     6fc:	1c0011ac 	pcaddu12i	$r12,141(0x8d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	1c0011b4 	pcaddu12i	$r20,141(0x8d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	b4540001 	0xb4540001
     708:	bc1c0011 	0xbc1c0011
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	041c0011 	csrrd	$r17,0x700
     710:	1f008700 	pcaddu18i	$r0,-523208(0x80438)
     714:	0011bc9f 	sub.d	$r31,$r4,$r15
     718:	0012381c 	slt	$r28,$r0,$r14
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	f300041c 	0xf300041c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     734:	00114800 	sub.w	$r0,$r0,$r18
     738:	0011741c 	sub.w	$r28,$r0,$r29
     73c:	5500011c 	bl	74514432(0x4710000) # 471073c <_start-0x178ef8c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	1c001174 	pcaddu12i	$r20,139(0x8b)
     744:	1c0011ac 	pcaddu12i	$r12,141(0x8d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	ac6a0001 	0xac6a0001
     74c:	b71c0011 	0xb71c0011
     750:	011c0011 	0x011c0011
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	11b75500 	addu16i.d	$r0,$r8,28117(0x6dd5)
     758:	12301c00 	addu16i.d	$r0,$r0,-29689(0x8c07)
     75c:	00011c00 	asrtle.d	$r0,$r7
     760:	0012306a 	slt	$r10,$r3,$r12
     764:	0012381c 	slt	$r28,$r0,$r14
     768:	f300041c 	0xf300041c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     780:	00114800 	sub.w	$r0,$r0,$r18
     784:	0011741c 	sub.w	$r28,$r0,$r29
     788:	5600011c 	bl	74579968(0x4720000) # 4720788 <_start-0x178df878>
     78c:	1c001174 	pcaddu12i	$r20,139(0x8b)
     790:	1c0011ac 	pcaddu12i	$r12,141(0x8d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	ac690001 	0xac690001
     798:	b71c0011 	0xb71c0011
     79c:	011c0011 	0x011c0011
     7a0:	11b75600 	addu16i.d	$r0,$r16,28117(0x6dd5)
     7a4:	122c1c00 	addu16i.d	$r0,$r0,-29945(0x8b07)
     7a8:	00011c00 	asrtle.d	$r0,$r7
     7ac:	00122c69 	slt	$r9,$r3,$r11
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	0012381c 	slt	$r28,$r0,$r14
     7b4:	f300041c 	0xf300041c
     7b8:	009f5601 	bstrins.d	$r1,$r16,0x1f,0x15
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7c8:	48000000 	bceqz	$fcc0,0 # 7c8 <_start-0x1bfff838>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	741c0011 	0x741c0011
     7d0:	011c0011 	0x011c0011
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	11745700 	addu16i.d	$r0,$r24,23829(0x5d15)
     7d8:	11ac1c00 	addu16i.d	$r0,$r0,27399(0x6b07)
     7dc:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     7e0:	9f5701f3 	0x9f5701f3
     7e4:	1c0011ac 	pcaddu12i	$r12,141(0x8d)
     7e8:	1c0011b7 	pcaddu12i	$r23,141(0x8d)
     7ec:	b7570001 	0xb7570001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	381c0011 	stx.d	$r17,$r0,$r0
     7f4:	041c0012 	csrrd	$r18,0x700
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	5701f300 	bl	-66911760(0xc0301f0) # fc0309e8 <_RAM_DATA+0x7c02f9e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	0000009f 	0x0000009f
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	00117800 	sub.w	$r0,$r0,$r30
     80c:	0011ac1c 	sub.d	$r28,$r0,$r11
     810:	6800011c 	bltu	$r8,$r28,0 # 810 <_start-0x1bfff7f0>
     814:	1c0011bc 	pcaddu12i	$r28,141(0x8d)
     818:	1c001228 	pcaddu12i	$r8,145(0x91)
     81c:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	0011cc00 	sub.d	$r0,$r0,$r19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	0012241c 	slt	$r28,$r0,$r9
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff0830 <_RAM_DATA+0x7ffef830>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     840:	1c001200 	pcaddu12i	$r0,144(0x90)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	1c00120c 	pcaddu12i	$r12,144(0x90)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	0c540001 	vfcmp.cun.s	$vr1,$vr0,$vr0
     84c:	181c0012 	pcaddi	$r18,57344(0xe000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	0f1c0012 	0x0f1c0012
     854:	87007d00 	0x87007d00
     858:	41082200 	beqz	$r16,67616(0x10820) # 11078 <_start-0x1bfeef88>
     85c:	4801941c 	bceqz	$fcc0,-1048172(0x700194) # fff009f0 <_RAM_DATA+0x7feff9f0>
     860:	9f264824 	0x9f264824
	...
     870:	1c001178 	pcaddu12i	$r24,139(0x8b)
     874:	1c0011ac 	pcaddu12i	$r12,141(0x8d)
     878:	b0670001 	0xb0670001
     87c:	c41c0011 	0xc41c0011
     880:	011c0011 	0x011c0011
     884:	00006700 	rdtimeh.w	$r0,$r24
	...
     898:	00540001 	0x00540001
	...
     8a4:	28000000 	ld.b	$r0,$r0,0
     8a8:	381c0011 	stx.d	$r17,$r0,$r0
     8ac:	011c0011 	0x011c0011
     8b0:	11385400 	addu16i.d	$r0,$r0,19989(0x4e15)
     8b4:	11481c00 	addu16i.d	$r0,$r0,20999(0x5207)
     8b8:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     8bc:	9f5401f3 	0x9f5401f3
	...
     8d4:	00010000 	asrtle.d	$r0,$r0
     8d8:	00000054 	0x00000054
     8dc:	00000000 	0x00000000
     8e0:	69000100 	bltu	$r8,$r0,65536(0x10000) # 108e0 <_start-0x1bfef720>
	...
     8ec:	01f30004 	0x01f30004
     8f0:	00009f54 	0x00009f54
	...
     908:	00550001 	0x00550001
     90c:	00000000 	0x00000000
     910:	01000000 	0x01000000
     914:	00006800 	rdtime.d	$r0,$r0
     918:	00000000 	0x00000000
     91c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     920:	9f5501f3 	0x9f5501f3
	...
     92c:	00000002 	0x00000002
	...
     938:	9f300002 	0x9f300002
	...
     944:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
     95c:	54000100 	bl	67108864(0x4000000) # 400095c <_start-0x17fff6a4>
	...
     968:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
     96c:	00000000 	0x00000000
     970:	04000000 	csrrd	$r0,0x0
     974:	5401f300 	bl	-67108368(0xc0001f0) # fc000b64 <_RAM_DATA+0x7bfffb64>
     978:	0000009f 	0x0000009f
	...
     98c:	01000000 	0x01000000
     990:	00005400 	bitrev.d	$r0,$r0
     994:	00000000 	0x00000000
     998:	00010000 	asrtle.d	$r0,$r0
     99c:	00000067 	0x00000067
     9a0:	00000000 	0x00000000
     9a4:	f3000400 	0xf3000400
     9a8:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
     9bc:	54000100 	bl	67108864(0x4000000) # 40009bc <_start-0x17fff644>
	...
     9c8:	00000002 	0x00000002
	...
     9d8:	9f300002 	0x9f300002
	...
     9e4:	9f300002 	0x9f300002
	...
     9f0:	9f300002 	0x9f300002
	...
     9fc:	9f300002 	0x9f300002
	...
     a18:	00540001 	0x00540001
     a1c:	00000000 	0x00000000
     a20:	04000000 	csrrd	$r0,0x0
     a24:	5401f300 	bl	-67108368(0xc0001f0) # fc000c14 <_RAM_DATA+0x7bfffc14>
     a28:	0000009f 	0x0000009f
     a2c:	00000000 	0x00000000
     a30:	54000100 	bl	67108864(0x4000000) # 4000a30 <_start-0x17fff5d0>
	...
     a3c:	01f30004 	0x01f30004
     a40:	00009f54 	0x00009f54
	...
     a54:	00010000 	asrtle.d	$r0,$r0
     a58:	00000055 	0x00000055
     a5c:	00000000 	0x00000000
     a60:	f3000400 	0xf3000400
     a64:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
     a7c:	01000000 	0x01000000
     a80:	00005400 	bitrev.d	$r0,$r0
     a84:	00000000 	0x00000000
     a88:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     a8c:	9f5401f3 	0x9f5401f3
	...
     a98:	00540001 	0x00540001
     a9c:	00000000 	0x00000000
     aa0:	04000000 	csrrd	$r0,0x0
     aa4:	5401f300 	bl	-67108368(0xc0001f0) # fc000c94 <_RAM_DATA+0x7bfffc94>
     aa8:	0000009f 	0x0000009f
	...
     abc:	55000100 	bl	67174400(0x4010000) # 4010abc <_start-0x17fef544>
	...
     ac8:	01f30004 	0x01f30004
     acc:	00009f55 	0x00009f55
     ad0:	00000000 	0x00000000
     ad4:	00010000 	asrtle.d	$r0,$r0
	...
     ae0:	00010000 	asrtle.d	$r0,$r0
     ae4:	00000054 	0x00000054
     ae8:	00000000 	0x00000000
     aec:	f3000400 	0xf3000400
     af0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
     b04:	54000100 	bl	67108864(0x4000000) # 4000b04 <_start-0x17fff4fc>
	...
     b10:	14980001 	lu12i.w	$r1,311296(0x4c000)
     b14:	14ac1c00 	lu12i.w	$r0,352480(0x560e0)
     b18:	00011c00 	asrtle.d	$r0,$r7
     b1c:	00000054 	0x00000054
     b20:	00000000 	0x00000000
     b24:	98000100 	0x98000100
     b28:	ac1c0014 	0xac1c0014
     b2c:	011c0014 	0x011c0014
     b30:	00005500 	bitrev.d	$r0,$r8
	...
     b48:	00010000 	asrtle.d	$r0,$r0
     b4c:	00000055 	0x00000055
     b50:	00000000 	0x00000000
     b54:	f3000400 	0xf3000400
     b58:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
     b5c:	00000000 	0x00000000
     b60:	01000000 	0x01000000
     b64:	00005500 	bitrev.d	$r0,$r8
     b68:	00000000 	0x00000000
     b6c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     b70:	9f5501f3 	0x9f5501f3
	...
     b7c:	00000002 	0x00000002
     b80:	00000000 	0x00000000
     b84:	00020000 	0x00020000
     b88:	00009f30 	0x00009f30
     b8c:	00000000 	0x00000000
     b90:	00020000 	0x00020000
	...
     b9c:	9f300002 	0x9f300002
	...
     ba8:	00000003 	0x00000003
     bac:	01010100 	fadd.d	$f0,$f8,$f0
     bb0:	00000001 	0x00000001
     bb4:	00000000 	0x00000000
     bb8:	00020000 	0x00020000
     bbc:	00009f30 	0x00009f30
     bc0:	00000000 	0x00000000
     bc4:	00010000 	asrtle.d	$r0,$r0
     bc8:	0000005d 	0x0000005d
     bcc:	00000000 	0x00000000
     bd0:	5c000100 	bne	$r8,$r0,0 # bd0 <_start-0x1bfff430>
	...
     bdc:	007c0005 	bstrins.w	$r5,$r0,0x1c,0x0
     be0:	009f2538 	bstrins.d	$r24,$r9,0x1f,0x9
     be4:	00000000 	0x00000000
     be8:	05000000 	0x05000000
     bec:	40007c00 	beqz	$r0,124(0x7c) # c68 <_start-0x1bfff398>
     bf0:	00009f25 	0x00009f25
     bf4:	00000000 	0x00000000
     bf8:	00010000 	asrtle.d	$r0,$r0
	...
     c04:	00540001 	0x00540001
     c08:	00000000 	0x00000000
     c0c:	02000000 	slti	$r0,$r0,0
	...
     c1c:	30000200 	0x30000200
     c20:	0000009f 	0x0000009f
     c24:	00000000 	0x00000000
     c28:	5d000100 	bne	$r8,$r0,65536(0x10000) # 10c28 <_start-0x1bfef3d8>
	...
     c34:	007e0002 	bstrins.w	$r2,$r0,0x1e,0x0
	...
     c4c:	00010000 	asrtle.d	$r0,$r0
     c50:	00000054 	0x00000054
     c54:	00000000 	0x00000000
     c58:	f3000400 	0xf3000400
     c5c:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
     c60:	00000000 	0x00000000
     c64:	01000000 	0x01000000
     c68:	00005400 	bitrev.d	$r0,$r0
	...
     c7c:	00010000 	asrtle.d	$r0,$r0
     c80:	00000054 	0x00000054
     c84:	00000000 	0x00000000
     c88:	f3000600 	0xf3000600
     c8c:	24385401 	ldptr.w	$r1,$r0,14420(0x3854)
     c90:	0000009f 	0x0000009f
     c94:	00000000 	0x00000000
     c98:	00000100 	0x00000100
	...
     ca4:	30000200 	0x30000200
     ca8:	0000009f 	0x0000009f
     cac:	00000000 	0x00000000
     cb0:	54000100 	bl	67108864(0x4000000) # 4000cb0 <_start-0x17fff350>
	...
     cbc:	00000002 	0x00000002
	...
     cc8:	9f300002 	0x9f300002
	...
     cd4:	00540001 	0x00540001
	...
     ce4:	00164c00 	orn	$r0,$r0,$r19
     ce8:	0016941c 	andn	$r28,$r0,$r5
     cec:	5400011c 	bl	74448896(0x4700000) # 4700cec <_start-0x178ff314>
     cf0:	1c001694 	pcaddu12i	$r20,180(0xb4)
     cf4:	1c001890 	pcaddu12i	$r16,196(0xc4)
     cf8:	90690001 	0x90690001
     cfc:	9c1c0018 	0x9c1c0018
     d00:	041c0018 	csrrd	$r24,0x700
     d04:	5401f300 	bl	-67108368(0xc0001f0) # fc000ef4 <_RAM_DATA+0x7bfffef4>
     d08:	0000009f 	0x0000009f
     d0c:	00000000 	0x00000000
     d10:	00000200 	0x00000200
     d14:	00168c00 	andn	$r0,$r0,$r3
     d18:	0016941c 	andn	$r28,$r0,$r5
     d1c:	3000021c 	0x3000021c
     d20:	0016949f 	andn	$r31,$r4,$r5
     d24:	0018881c 	sll.d	$r28,$r0,$r2
     d28:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff0d28 <_RAM_DATA+0x7ffefd28>
	...
     d34:	00010000 	asrtle.d	$r0,$r0
     d38:	1c001694 	pcaddu12i	$r20,180(0xb4)
     d3c:	1c001818 	pcaddu12i	$r24,192(0xc0)
     d40:	24680001 	ldptr.w	$r1,$r0,26624(0x6800)
     d44:	7c1c0018 	0x7c1c0018
     d48:	011c0018 	0x011c0018
     d4c:	00006800 	rdtime.d	$r0,$r0
     d50:	00000000 	0x00000000
     d54:	00010000 	asrtle.d	$r0,$r0
     d58:	1c00168c 	pcaddu12i	$r12,180(0xb4)
     d5c:	1c001894 	pcaddu12i	$r20,196(0xc4)
     d60:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
	...
     d7c:	00000101 	0x00000101
     d80:	00000000 	0x00000000
     d84:	98000000 	0x98000000
     d88:	cb1c0016 	0xcb1c0016
     d8c:	011c0016 	0x011c0016
     d90:	16d85500 	lu32i.d	$r0,443048(0x6c2a8)
     d94:	16df1c00 	lu32i.d	$r0,456928(0x6f8e0)
     d98:	00011c00 	asrtle.d	$r0,$r7
     d9c:	0016ec55 	andn	$r21,$r2,$r27
     da0:	0016fb1c 	andn	$r28,$r24,$r30
     da4:	5500011c 	bl	74514432(0x4710000) # 4710da4 <_start-0x178ef25c>
     da8:	1c001708 	pcaddu12i	$r8,184(0xb8)
     dac:	1c001717 	pcaddu12i	$r23,184(0xb8)
     db0:	24550001 	ldptr.w	$r1,$r0,21760(0x5500)
     db4:	331c0017 	xvstelm.d	$xr23,$r0,0,0x3
     db8:	011c0017 	0x011c0017
     dbc:	17405500 	lu32i.d	$r0,-392536(0xa02a8)
     dc0:	174f1c00 	lu32i.d	$r0,-362272(0xa78e0)
     dc4:	00011c00 	asrtle.d	$r0,$r7
     dc8:	00175c55 	sll.w	$r21,$r2,$r23
     dcc:	00176b1c 	sll.w	$r28,$r24,$r26
     dd0:	5500011c 	bl	74514432(0x4710000) # 4710dd0 <_start-0x178ef230>
     dd4:	1c001778 	pcaddu12i	$r24,187(0xbb)
     dd8:	1c00177f 	pcaddu12i	$r31,187(0xbb)
     ddc:	88550001 	0x88550001
     de0:	8c1c0017 	0x8c1c0017
     de4:	011c0017 	0x011c0017
     de8:	178c5500 	lu32i.d	$r0,-236888(0xc62a8)
     dec:	17941c00 	lu32i.d	$r0,-220960(0xca0e0)
     df0:	00021c00 	0x00021c00
     df4:	17949f30 	lu32i.d	$r16,-219911(0xca4f9)
     df8:	179c1c00 	lu32i.d	$r0,-204576(0xce0e0)
     dfc:	00011c00 	asrtle.d	$r0,$r7
     e00:	0017a455 	srl.w	$r21,$r2,$r9
     e04:	0017cc1c 	srl.w	$r28,$r0,$r19
     e08:	5500011c 	bl	74514432(0x4710000) # 4710e08 <_start-0x178ef1f8>
     e0c:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
     e10:	1c0017f8 	pcaddu12i	$r24,191(0xbf)
     e14:	fc550001 	0xfc550001
     e18:	031c0017 	lu52i.d	$r23,$r0,1792(0x700)
     e1c:	011c0018 	0x011c0018
     e20:	00005500 	bitrev.d	$r0,$r8
	...
     e2c:	185c0000 	pcaddi	$r0,188416(0x2e000)
     e30:	18601c00 	pcaddi	$r0,196832(0x300e0)
     e34:	00011c00 	asrtle.d	$r0,$r7
     e38:	0018605c 	sra.w	$r28,$r2,$r24
     e3c:	00187c1c 	sra.w	$r28,$r0,$r31
     e40:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 10e40 <_start-0x1bfef1c0>
	...
     e54:	155c0000 	lu12i.w	$r0,-335872(0xae000)
     e58:	15881c00 	lu12i.w	$r0,-245536(0xc40e0)
     e5c:	00011c00 	asrtle.d	$r0,$r7
     e60:	00158854 	xor	$r20,$r2,$r2
     e64:	0015c01c 	xor	$r28,$r0,$r16
     e68:	f300041c 	0xf300041c
     e6c:	c09f5401 	0xc09f5401
     e70:	c81c0015 	0xc81c0015
     e74:	011c0015 	0x011c0015
     e78:	15c85400 	lu12i.w	$r0,-114016(0xe42a0)
     e7c:	15d01c00 	lu12i.w	$r0,-98080(0xe80e0)
     e80:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     e84:	9f1f0087 	0x9f1f0087
     e88:	1c0015d0 	pcaddu12i	$r16,174(0xae)
     e8c:	1c00164c 	pcaddu12i	$r12,178(0xb2)
     e90:	01f30004 	0x01f30004
     e94:	00009f54 	0x00009f54
	...
     ea8:	1c00155c 	pcaddu12i	$r28,170(0xaa)
     eac:	1c001588 	pcaddu12i	$r8,172(0xac)
     eb0:	88550001 	0x88550001
     eb4:	c01c0015 	0xc01c0015
     eb8:	011c0015 	0x011c0015
     ebc:	15c06a00 	lu12i.w	$r0,-130224(0xe0350)
     ec0:	15cb1c00 	lu12i.w	$r0,-108320(0xe58e0)
     ec4:	00011c00 	asrtle.d	$r0,$r7
     ec8:	0015cb55 	xor	$r21,$r26,$r18
     ecc:	0016441c 	orn	$r28,$r0,$r17
     ed0:	6a00011c 	bltu	$r8,$r28,-131072(0x20000) # fffe0ed0 <_RAM_DATA+0x7ffdfed0>
     ed4:	1c001644 	pcaddu12i	$r4,178(0xb2)
     ed8:	1c00164c 	pcaddu12i	$r12,178(0xb2)
     edc:	01f30004 	0x01f30004
     ee0:	00009f55 	0x00009f55
	...
     ef4:	1c00155c 	pcaddu12i	$r28,170(0xaa)
     ef8:	1c001588 	pcaddu12i	$r8,172(0xac)
     efc:	88560001 	0x88560001
     f00:	c01c0015 	0xc01c0015
     f04:	011c0015 	0x011c0015
     f08:	15c06900 	lu12i.w	$r0,-130232(0xe0348)
     f0c:	15cb1c00 	lu12i.w	$r0,-108320(0xe58e0)
     f10:	00011c00 	asrtle.d	$r0,$r7
     f14:	0015cb56 	xor	$r22,$r26,$r18
     f18:	0016401c 	orn	$r28,$r0,$r16
     f1c:	6900011c 	bltu	$r8,$r28,65536(0x10000) # 10f1c <_start-0x1bfef0e4>
     f20:	1c001640 	pcaddu12i	$r0,178(0xb2)
     f24:	1c00164c 	pcaddu12i	$r12,178(0xb2)
     f28:	01f30004 	0x01f30004
     f2c:	00009f56 	0x00009f56
	...
     f3c:	155c0000 	lu12i.w	$r0,-335872(0xae000)
     f40:	15881c00 	lu12i.w	$r0,-245536(0xc40e0)
     f44:	00011c00 	asrtle.d	$r0,$r7
     f48:	00158857 	xor	$r23,$r2,$r2
     f4c:	0015c01c 	xor	$r28,$r0,$r16
     f50:	f300041c 	0xf300041c
     f54:	c09f5701 	0xc09f5701
     f58:	cb1c0015 	0xcb1c0015
     f5c:	011c0015 	0x011c0015
     f60:	15cb5700 	lu12i.w	$r0,-107848(0xe5ab8)
     f64:	164c1c00 	lu32i.d	$r0,155872(0x260e0)
     f68:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     f6c:	9f5701f3 	0x9f5701f3
	...
     f7c:	1c00158c 	pcaddu12i	$r12,172(0xac)
     f80:	1c0015c0 	pcaddu12i	$r0,174(0xae)
     f84:	d0680001 	0xd0680001
     f88:	3c1c0015 	0x3c1c0015
     f8c:	011c0016 	0x011c0016
     f90:	00006800 	rdtime.d	$r0,$r0
	...
     f9c:	1c0015e0 	pcaddu12i	$r0,175(0xaf)
     fa0:	1c001638 	pcaddu12i	$r24,177(0xb1)
     fa4:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
     fb0:	14000000 	lu12i.w	$r0,0
     fb4:	201c0016 	ll.w	$r22,$r0,7168(0x1c00)
     fb8:	011c0016 	0x011c0016
     fbc:	16205400 	lu32i.d	$r0,66208(0x102a0)
     fc0:	162c1c00 	lu32i.d	$r0,90336(0x160e0)
     fc4:	000f1c00 	bytepick.d	$r0,$r0,$r7,0x6
     fc8:	0087007d 	bstrins.d	$r29,$r3,0x7,0x0
     fcc:	1c410822 	pcaddu12i	$r2,133185(0x20841)
     fd0:	24480194 	ldptr.w	$r20,$r12,18432(0x4800)
     fd4:	009f2648 	bstrins.d	$r8,$r18,0x1f,0x9
	...
     fe0:	8c000000 	0x8c000000
     fe4:	c01c0015 	0xc01c0015
     fe8:	011c0015 	0x011c0015
     fec:	15c46700 	lu12i.w	$r0,-122056(0xe2338)
     ff0:	15d81c00 	lu12i.w	$r0,-81696(0xec0e0)
     ff4:	00011c00 	asrtle.d	$r0,$r7
     ff8:	00000067 	0x00000067
	...
    1004:	00150400 	or	$r0,$r0,$r1
    1008:	00151c1c 	or	$r28,$r0,$r7
    100c:	5400011c 	bl	74448896(0x4700000) # 470100c <_start-0x178feff4>
    1010:	1c00151c 	pcaddu12i	$r28,168(0xa8)
    1014:	1c001554 	pcaddu12i	$r20,170(0xaa)
    1018:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
    1028:	00151c00 	or	$r0,$r0,$r7
    102c:	0015301c 	or	$r28,$r0,$r12
    1030:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff1030 <_RAM_DATA+0x7fff0030>
    1034:	1c001534 	pcaddu12i	$r20,169(0xa9)
    1038:	1c001550 	pcaddu12i	$r16,170(0xaa)
    103c:	50670001 	b	288512(0x46700) # 4773c <_start-0x1bfb88c4>
    1040:	541c0015 	bl	5512192(0x541c00) # 542c40 <_start-0x1babd3c0>
    1044:	021c0015 	slti	$r21,$r0,1792(0x700)
    1048:	00008800 	0x00008800
	...
    1060:	01000000 	0x01000000
    1064:	00005400 	bitrev.d	$r0,$r0
    1068:	00000000 	0x00000000
    106c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1070:	9f5401f3 	0x9f5401f3
	...
    107c:	00540001 	0x00540001
    1080:	00000000 	0x00000000
    1084:	04000000 	csrrd	$r0,0x0
    1088:	5401f300 	bl	-67108368(0xc0001f0) # fc001278 <_RAM_DATA+0x7c000278>
    108c:	0000009f 	0x0000009f
    1090:	00000000 	0x00000000
    1094:	00000100 	0x00000100
    1098:	00000100 	0x00000100
	...
    10a4:	54000100 	bl	67108864(0x4000000) # 40010a4 <_start-0x17ffef5c>
	...
    10b0:	01f30004 	0x01f30004
    10b4:	00009f54 	0x00009f54
    10b8:	00000000 	0x00000000
    10bc:	00030000 	0x00030000
    10c0:	009f6074 	bstrins.d	$r20,$r3,0x1f,0x18
    10c4:	00000000 	0x00000000
    10c8:	07000000 	0x07000000
    10cc:	5401f300 	bl	-67108368(0xc0001f0) # fc0012bc <_RAM_DATA+0x7c0002bc>
    10d0:	9f1c2008 	0x9f1c2008
	...
    10e8:	189c0000 	pcaddi	$r0,319488(0x4e000)
    10ec:	18b81c00 	pcaddi	$r0,377056(0x5c0e0)
    10f0:	00011c00 	asrtle.d	$r0,$r7
    10f4:	0018b854 	sll.d	$r20,$r2,$r14
    10f8:	0018c41c 	sll.d	$r28,$r0,$r17
    10fc:	f300041c 	0xf300041c
    1100:	c49f5401 	0xc49f5401
    1104:	d41c0018 	0xd41c0018
    1108:	011c0018 	0x011c0018
    110c:	18d45400 	pcaddi	$r0,434848(0x6a2a0)
    1110:	18e01c00 	pcaddi	$r0,458976(0x700e0)
    1114:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
    1118:	9f5401f3 	0x9f5401f3
    111c:	1c0018e0 	pcaddu12i	$r0,199(0xc7)
    1120:	1c0018e4 	pcaddu12i	$r4,199(0xc7)
    1124:	e4540001 	0xe4540001
    1128:	f81c0018 	0xf81c0018
    112c:	031c0018 	lu52i.d	$r24,$r0,1792(0x700)
    1130:	9f207400 	0x9f207400
    1134:	1c0018f8 	pcaddu12i	$r24,199(0xc7)
    1138:	1c001920 	pcaddu12i	$r0,201(0xc9)
    113c:	01f30004 	0x01f30004
    1140:	00009f54 	0x00009f54
    1144:	00000000 	0x00000000
    1148:	00010000 	asrtle.d	$r0,$r0
	...
    1158:	18a40000 	pcaddi	$r0,335872(0x52000)
    115c:	18b81c00 	pcaddi	$r0,377056(0x5c0e0)
    1160:	00011c00 	asrtle.d	$r0,$r7
    1164:	0018b854 	sll.d	$r20,$r2,$r14
    1168:	0018c41c 	sll.d	$r28,$r0,$r17
    116c:	f300041c 	0xf300041c
    1170:	c49f5401 	0xc49f5401
    1174:	d41c0018 	0xd41c0018
    1178:	011c0018 	0x011c0018
    117c:	18d45400 	pcaddi	$r0,434848(0x6a2a0)
    1180:	18e01c00 	pcaddi	$r0,458976(0x700e0)
    1184:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
    1188:	9f5401f3 	0x9f5401f3
    118c:	1c0018e4 	pcaddu12i	$r4,199(0xc7)
    1190:	1c0018f8 	pcaddu12i	$r24,199(0xc7)
    1194:	f8540001 	0xf8540001
    1198:	041c0018 	csrrd	$r24,0x700
    119c:	071c0019 	0x071c0019
    11a0:	5401f300 	bl	-67108368(0xc0001f0) # fc001390 <_RAM_DATA+0x7c000390>
    11a4:	9f1c2008 	0x9f1c2008
    11a8:	1c001904 	pcaddu12i	$r4,200(0xc8)
    11ac:	1c001914 	pcaddu12i	$r20,200(0xc8)
    11b0:	14540001 	lu12i.w	$r1,172032(0x2a000)
    11b4:	201c0019 	ll.w	$r25,$r0,7168(0x1c00)
    11b8:	071c0019 	0x071c0019
    11bc:	5401f300 	bl	-67108368(0xc0001f0) # fc0013ac <_RAM_DATA+0x7c0003ac>
    11c0:	9f1c2008 	0x9f1c2008
	...
    11e0:	00010000 	asrtle.d	$r0,$r0
    11e4:	00000054 	0x00000054
    11e8:	00000000 	0x00000000
    11ec:	f3000400 	0xf3000400
    11f0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    11f4:	00000000 	0x00000000
    11f8:	01000000 	0x01000000
    11fc:	00005400 	bitrev.d	$r0,$r0
    1200:	00000000 	0x00000000
    1204:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1208:	9f5401f3 	0x9f5401f3
	...
    1214:	00540001 	0x00540001
    1218:	00000000 	0x00000000
    121c:	03000000 	lu52i.d	$r0,$r0,0
    1220:	9f207400 	0x9f207400
	...
    122c:	01f30004 	0x01f30004
    1230:	00009f54 	0x00009f54
    1234:	00000000 	0x00000000
    1238:	00010000 	asrtle.d	$r0,$r0
	...
    1250:	00010000 	asrtle.d	$r0,$r0
    1254:	00000054 	0x00000054
    1258:	00000000 	0x00000000
    125c:	f3000400 	0xf3000400
    1260:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    1264:	00000000 	0x00000000
    1268:	01000000 	0x01000000
    126c:	00005400 	bitrev.d	$r0,$r0
    1270:	00000000 	0x00000000
    1274:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1278:	9f5401f3 	0x9f5401f3
	...
    1284:	00540001 	0x00540001
    1288:	00000000 	0x00000000
    128c:	07000000 	0x07000000
    1290:	5401f300 	bl	-67108368(0xc0001f0) # fc001480 <_RAM_DATA+0x7c000480>
    1294:	9f1c2008 	0x9f1c2008
	...
    12a0:	00540001 	0x00540001
    12a4:	00000000 	0x00000000
    12a8:	07000000 	0x07000000
    12ac:	5401f300 	bl	-67108368(0xc0001f0) # fc00149c <_RAM_DATA+0x7c00049c>
    12b0:	9f1c2008 	0x9f1c2008
	...
    12c0:	1c001938 	pcaddu12i	$r24,201(0xc9)
    12c4:	1c001940 	pcaddu12i	$r0,202(0xca)
    12c8:	40550001 	beqz	$r0,283904(0x45500) # 467c8 <_start-0x1bfb9838>
    12cc:	481c0019 	bceqz	$fcc0,-1827840(0x641c00) # ffe42ecc <_RAM_DATA+0x7fe41ecc>
    12d0:	041c0019 	csrrd	$r25,0x700
    12d4:	5501f300 	bl	-67042832(0xc0101f0) # fc0114c4 <_RAM_DATA+0x7c0104c4>
    12d8:	0000009f 	0x0000009f
	...
    12f4:	54000100 	bl	67108864(0x4000000) # 40012f4 <_start-0x17ffed0c>
	...
    1300:	01f30004 	0x01f30004
    1304:	00009f54 	0x00009f54
    1308:	00000000 	0x00000000
    130c:	00010000 	asrtle.d	$r0,$r0
    1310:	00000054 	0x00000054
    1314:	00000000 	0x00000000
    1318:	f3000400 	0xf3000400
    131c:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    1320:	00000000 	0x00000000
    1324:	01000000 	0x01000000
    1328:	00005400 	bitrev.d	$r0,$r0
    132c:	00000000 	0x00000000
    1330:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1334:	9f5401f3 	0x9f5401f3
	...
    1340:	00000002 	0x00000002
	...
    134c:	9f300002 	0x9f300002
	...
    1358:	9f310002 	0x9f310002
	...
    1364:	00000003 	0x00000003
	...
    1370:	9f300002 	0x9f300002
	...
    137c:	005d0001 	0x005d0001
	...
    1390:	01000000 	0x01000000
    1394:	00005500 	bitrev.d	$r0,$r8
    1398:	00000000 	0x00000000
    139c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    13a0:	9f5501f3 	0x9f5501f3
	...
    13b8:	00540001 	0x00540001
    13bc:	00000000 	0x00000000
    13c0:	04000000 	csrrd	$r0,0x0
    13c4:	5401f300 	bl	-67108368(0xc0001f0) # fc0015b4 <_RAM_DATA+0x7c0005b4>
    13c8:	0000009f 	0x0000009f
    13cc:	00000000 	0x00000000
    13d0:	00000200 	0x00000200
    13d4:	00000001 	0x00000001
    13d8:	00000000 	0x00000000
    13dc:	30000200 	0x30000200
    13e0:	0000009f 	0x0000009f
    13e4:	00000000 	0x00000000
    13e8:	31000200 	0x31000200
    13ec:	0000009f 	0x0000009f
	...
    13f8:	00197400 	srl.d	$r0,$r0,$r29
    13fc:	0019801c 	sra.d	$r28,$r0,$r0
    1400:	5400011c 	bl	74448896(0x4700000) # 4701400 <_start-0x178fec00>
    1404:	1c001980 	pcaddu12i	$r0,204(0xcc)
    1408:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
    140c:	01f30004 	0x01f30004
    1410:	00009f54 	0x00009f54
	...
    141c:	195c0000 	pcaddi	$r0,-335872(0xae000)
    1420:	19681c00 	pcaddi	$r0,-311072(0xb40e0)
    1424:	00011c00 	asrtle.d	$r0,$r7
    1428:	00196854 	srl.d	$r20,$r2,$r26
    142c:	0019741c 	srl.d	$r28,$r0,$r29
    1430:	f300041c 	0xf300041c
    1434:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    1438:	00000000 	0x00000000
    143c:	02000000 	slti	$r0,$r0,0
    1440:	5c010000 	bne	$r0,$r0,256(0x100) # 1540 <_start-0x1bffeac0>
    1444:	701c0019 	0x701c0019
    1448:	021c0019 	slti	$r25,$r0,1792(0x700)
    144c:	709f3000 	0x709f3000
    1450:	701c0019 	0x701c0019
    1454:	021c0019 	slti	$r25,$r0,1792(0x700)
    1458:	009f3100 	bstrins.d	$r0,$r8,0x1f,0xc
    145c:	00000000 	0x00000000
    1460:	02000000 	slti	$r0,$r0,0
	...
    146c:	02000000 	slti	$r0,$r0,0
    1470:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1474:	00000000 	0x00000000
    1478:	01000000 	0x01000000
    147c:	00005400 	bitrev.d	$r0,$r0
    1480:	00000000 	0x00000000
    1484:	00020000 	0x00020000
	...
    1490:	00020000 	0x00020000
    1494:	00009f30 	0x00009f30
    1498:	00000000 	0x00000000
    149c:	00010000 	asrtle.d	$r0,$r0
    14a0:	00000054 	0x00000054
    14a4:	00000000 	0x00000000
    14a8:	00000200 	0x00000200
    14ac:	00000000 	0x00000000
    14b0:	0019c800 	sra.d	$r0,$r0,$r18
    14b4:	0019d41c 	sra.d	$r28,$r0,$r21
    14b8:	0c00061c 	0x0c00061c
    14bc:	001c7fc7 	mul.w	$r7,$r30,$r31
    14c0:	0019d49f 	sra.d	$r31,$r4,$r21
    14c4:	0019e81c 	sra.d	$r28,$r0,$r26
    14c8:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 114c8 <_start-0x1bfeeb38>
    14cc:	1c0019e8 	pcaddu12i	$r8,207(0xcf)
    14d0:	1c0019ec 	pcaddu12i	$r12,207(0xcf)
    14d4:	ec5c0001 	0xec5c0001
    14d8:	fb1c0019 	0xfb1c0019
    14dc:	011c0019 	0x011c0019
    14e0:	00005d00 	ext.w.b	$r0,$r8
    14e4:	00000000 	0x00000000
    14e8:	00020000 	0x00020000
    14ec:	00000000 	0x00000000
    14f0:	19fc0000 	pcaddi	$r0,-8192(0xfe000)
    14f4:	1a081c00 	pcalau12i	$r0,16608(0x40e0)
    14f8:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
    14fc:	9f5b330a 	0x9f5b330a
    1500:	1c001a08 	pcaddu12i	$r8,208(0xd0)
    1504:	1c001a1c 	pcaddu12i	$r28,208(0xd0)
    1508:	1c5d0001 	pcaddu12i	$r1,190464(0x2e800)
    150c:	201c001a 	ll.w	$r26,$r0,7168(0x1c00)
    1510:	011c001a 	0x011c001a
    1514:	1a205c00 	pcalau12i	$r0,66272(0x102e0)
    1518:	1a371c00 	pcalau12i	$r0,112864(0x1b8e0)
    151c:	00011c00 	asrtle.d	$r0,$r7
    1520:	0000005d 	0x0000005d
    1524:	00000000 	0x00000000
    1528:	00000200 	0x00000200
    152c:	00000000 	0x00000000
    1530:	001a3800 	0x001a3800
    1534:	001a441c 	0x001a441c
    1538:	0a00041c 	0x0a00041c
    153c:	449f5b33 	bnez	$r25,-3367080(0x4c9f58) # ffccb494 <_RAM_DATA+0x7fcca494>
    1540:	581c001a 	beq	$r0,$r26,7168(0x1c00) # 3140 <_start-0x1bffcec0>
    1544:	011c001a 	0x011c001a
    1548:	1a585d00 	pcalau12i	$r0,180968(0x2c2e8)
    154c:	1a5c1c00 	pcalau12i	$r0,188640(0x2e0e0)
    1550:	00011c00 	asrtle.d	$r0,$r7
    1554:	001a5c5c 	0x001a5c5c
    1558:	001a6f1c 	0x001a6f1c
    155c:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 1155c <_start-0x1bfeeaa4>
	...
    1568:	00000002 	0x00000002
    156c:	00000000 	0x00000000
    1570:	1c001a70 	pcaddu12i	$r16,211(0xd3)
    1574:	1c001a7c 	pcaddu12i	$r28,211(0xd3)
    1578:	330a0004 	0x330a0004
    157c:	1a7c9f5b 	pcalau12i	$r27,255226(0x3e4fa)
    1580:	1a901c00 	pcalau12i	$r0,295136(0x480e0)
    1584:	00011c00 	asrtle.d	$r0,$r7
    1588:	001a905d 	0x001a905d
    158c:	001a941c 	0x001a941c
    1590:	5c00011c 	bne	$r8,$r28,0 # 1590 <_start-0x1bffea70>
    1594:	1c001a94 	pcaddu12i	$r20,212(0xd4)
    1598:	1c001aaf 	pcaddu12i	$r15,213(0xd5)
    159c:	005d0001 	0x005d0001
    15a0:	00000000 	0x00000000
    15a4:	02000000 	slti	$r0,$r0,0
    15a8:	00000000 	0x00000000
    15ac:	b0000000 	0xb0000000
    15b0:	bc1c001a 	0xbc1c001a
    15b4:	041c001a 	csrrd	$r26,0x700
    15b8:	5b330a00 	beq	$r16,$r0,-52472(0x33308) # ffff48c0 <_RAM_DATA+0x7fff38c0>
    15bc:	001abc9f 	0x001abc9f
    15c0:	001ad01c 	0x001ad01c
    15c4:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 115c4 <_start-0x1bfeea3c>
    15c8:	1c001ad0 	pcaddu12i	$r16,214(0xd6)
    15cc:	1c001ad4 	pcaddu12i	$r20,214(0xd6)
    15d0:	d45c0001 	0xd45c0001
    15d4:	db1c001a 	0xdb1c001a
    15d8:	011c001a 	0x011c001a
    15dc:	00005d00 	ext.w.b	$r0,$r8
	...
    160c:	00540001 	0x00540001
    1610:	00000000 	0x00000000
    1614:	01000000 	0x01000000
    1618:	00005400 	bitrev.d	$r0,$r0
    161c:	00000000 	0x00000000
    1620:	00010000 	asrtle.d	$r0,$r0
    1624:	0000005f 	0x0000005f
    1628:	00000000 	0x00000000
    162c:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff162c <_RAM_DATA+0x7fff062c>
	...
    1638:	b0880003 	0xb0880003
    163c:	0000007f 	0x0000007f
    1640:	00000000 	0x00000000
    1644:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1644 <_RAM_DATA+0x7fff0644>
	...
    1650:	00540001 	0x00540001
    1654:	00000000 	0x00000000
    1658:	01000000 	0x01000000
    165c:	00005400 	bitrev.d	$r0,$r0
    1660:	00000000 	0x00000000
    1664:	00010000 	asrtle.d	$r0,$r0
    1668:	0000005f 	0x0000005f
    166c:	00000000 	0x00000000
    1670:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1670 <_RAM_DATA+0x7fff0670>
	...
    167c:	005f0001 	0x005f0001
    1680:	00000000 	0x00000000
    1684:	01000000 	0x01000000
    1688:	00005400 	bitrev.d	$r0,$r0
    168c:	00000000 	0x00000000
    1690:	00010000 	asrtle.d	$r0,$r0
    1694:	00000054 	0x00000054
    1698:	00000000 	0x00000000
    169c:	54000100 	bl	67108864(0x4000000) # 400169c <_start-0x17ffe964>
	...
    16a8:	00540001 	0x00540001
	...
    16bc:	5e000100 	bne	$r8,$r0,-131072(0x20000) # fffe16bc <_RAM_DATA+0x7ffe06bc>
	...
    16c8:	00010000 	asrtle.d	$r0,$r0
    16cc:	01000000 	0x01000000
    16d0:	00000001 	0x00000001
	...
    16e8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    16ec:	9f7da091 	0x9f7da091
	...
    16f8:	a0910004 	0xa0910004
    16fc:	00009f7d 	0x00009f7d
    1700:	00000000 	0x00000000
    1704:	00010000 	asrtle.d	$r0,$r0
    1708:	0000005f 	0x0000005f
    170c:	00000000 	0x00000000
    1710:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1710 <_RAM_DATA+0x7fff0710>
	...
    171c:	a0910004 	0xa0910004
    1720:	00009f7d 	0x00009f7d
    1724:	00000000 	0x00000000
    1728:	00010000 	asrtle.d	$r0,$r0
    172c:	00000054 	0x00000054
    1730:	00000000 	0x00000000
    1734:	91000400 	0x91000400
    1738:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    173c:	00000000 	0x00000000
    1740:	01000000 	0x01000000
    1744:	00005400 	bitrev.d	$r0,$r0
    1748:	00000000 	0x00000000
    174c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1750:	9f7da091 	0x9f7da091
	...
    175c:	005d0001 	0x005d0001
    1760:	00000000 	0x00000000
    1764:	04000000 	csrrd	$r0,0x0
    1768:	7da09100 	0x7da09100
    176c:	0000009f 	0x0000009f
    1770:	00000000 	0x00000000
    1774:	91000400 	0x91000400
    1778:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    177c:	00000000 	0x00000000
    1780:	04000000 	csrrd	$r0,0x0
    1784:	7da07300 	0x7da07300
    1788:	0000009f 	0x0000009f
    178c:	00000000 	0x00000000
    1790:	02000000 	slti	$r0,$r0,0
	...
    17b4:	01000000 	0x01000000
    17b8:	00006800 	rdtime.d	$r0,$r0
    17bc:	00000000 	0x00000000
    17c0:	00020000 	0x00020000
    17c4:	00009f30 	0x00009f30
    17c8:	00000000 	0x00000000
    17cc:	00010000 	asrtle.d	$r0,$r0
    17d0:	00000068 	0x00000068
    17d4:	00000000 	0x00000000
    17d8:	68000100 	bltu	$r8,$r0,0 # 17d8 <_start-0x1bffe828>
	...
    17e4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17e8:	00000000 	0x00000000
    17ec:	01000000 	0x01000000
    17f0:	00006800 	rdtime.d	$r0,$r0
    17f4:	00000000 	0x00000000
    17f8:	00010000 	asrtle.d	$r0,$r0
    17fc:	00000069 	0x00000069
    1800:	00000000 	0x00000000
    1804:	68000100 	bltu	$r8,$r0,0 # 1804 <_start-0x1bffe7fc>
	...
    1810:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1814:	00000000 	0x00000000
    1818:	01000000 	0x01000000
    181c:	00006800 	rdtime.d	$r0,$r0
    1820:	00000000 	0x00000000
    1824:	00010000 	asrtle.d	$r0,$r0
    1828:	00000068 	0x00000068
    182c:	00000000 	0x00000000
    1830:	68000100 	bltu	$r8,$r0,0 # 1830 <_start-0x1bffe7d0>
	...
    183c:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1840:	00000000 	0x00000000
    1844:	01000000 	0x01000000
    1848:	00006800 	rdtime.d	$r0,$r0
    184c:	00000000 	0x00000000
    1850:	00010000 	asrtle.d	$r0,$r0
    1854:	00000068 	0x00000068
	...
    1868:	00000100 	0x00000100
	...
    1884:	00000100 	0x00000100
	...
    18ac:	00000200 	0x00000200
    18b0:	00000000 	0x00000000
    18b4:	01000000 	0x01000000
    18b8:	00005d00 	ext.w.b	$r0,$r8
    18bc:	00000000 	0x00000000
    18c0:	00010000 	asrtle.d	$r0,$r0
    18c4:	0000005d 	0x0000005d
    18c8:	00000000 	0x00000000
    18cc:	5c000100 	bne	$r8,$r0,0 # 18cc <_start-0x1bffe734>
	...
    18d8:	005c0001 	0x005c0001
    18dc:	00000000 	0x00000000
    18e0:	01000000 	0x01000000
    18e4:	00005c00 	ext.w.b	$r0,$r0
    18e8:	00000000 	0x00000000
    18ec:	00010000 	asrtle.d	$r0,$r0
    18f0:	0000005c 	0x0000005c
    18f4:	00000000 	0x00000000
    18f8:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe18f8 <_RAM_DATA+0x7ffe08f8>
	...
    1904:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1908:	00000000 	0x00000000
    190c:	01000000 	0x01000000
    1910:	00006900 	rdtime.d	$r0,$r8
    1914:	00000000 	0x00000000
    1918:	00010000 	asrtle.d	$r0,$r0
    191c:	00000069 	0x00000069
    1920:	00000000 	0x00000000
    1924:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11924 <_start-0x1bfee6dc>
	...
    1930:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1934:	00000000 	0x00000000
    1938:	01000000 	0x01000000
    193c:	00006900 	rdtime.d	$r0,$r8
    1940:	00000000 	0x00000000
    1944:	00010000 	asrtle.d	$r0,$r0
    1948:	00000069 	0x00000069
    194c:	00000000 	0x00000000
    1950:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11950 <_start-0x1bfee6b0>
	...
    195c:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1960:	00000000 	0x00000000
    1964:	01000000 	0x01000000
    1968:	00006900 	rdtime.d	$r0,$r8
    196c:	00000000 	0x00000000
    1970:	00010000 	asrtle.d	$r0,$r0
    1974:	00000069 	0x00000069
    1978:	00000000 	0x00000000
    197c:	5c000100 	bne	$r8,$r0,0 # 197c <_start-0x1bffe684>
	...
    1988:	005c0001 	0x005c0001
    198c:	00000000 	0x00000000
    1990:	02000000 	slti	$r0,$r0,0
    1994:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1998:	00000000 	0x00000000
    199c:	01000000 	0x01000000
    19a0:	00006900 	rdtime.d	$r0,$r8
    19a4:	00000000 	0x00000000
    19a8:	00010000 	asrtle.d	$r0,$r0
    19ac:	00000069 	0x00000069
    19b0:	00000000 	0x00000000
    19b4:	69000100 	bltu	$r8,$r0,65536(0x10000) # 119b4 <_start-0x1bfee64c>
	...
    19c0:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19c4:	00000000 	0x00000000
    19c8:	01000000 	0x01000000
    19cc:	00006800 	rdtime.d	$r0,$r0
    19d0:	00000000 	0x00000000
    19d4:	00010000 	asrtle.d	$r0,$r0
    19d8:	00000068 	0x00000068
    19dc:	00000000 	0x00000000
    19e0:	68000100 	bltu	$r8,$r0,0 # 19e0 <_start-0x1bffe620>
	...
    19ec:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19f0:	00000000 	0x00000000
    19f4:	01000000 	0x01000000
    19f8:	00006800 	rdtime.d	$r0,$r0
    19fc:	00000000 	0x00000000
    1a00:	00010000 	asrtle.d	$r0,$r0
    1a04:	00000068 	0x00000068
    1a08:	00000000 	0x00000000
    1a0c:	68000100 	bltu	$r8,$r0,0 # 1a0c <_start-0x1bffe5f4>
	...
    1a18:	005e0001 	0x005e0001
    1a1c:	00000000 	0x00000000
    1a20:	01000000 	0x01000000
    1a24:	00005e00 	ext.w.b	$r0,$r16
    1a28:	00000000 	0x00000000
    1a2c:	00010000 	asrtle.d	$r0,$r0
    1a30:	0000005c 	0x0000005c
    1a34:	00000000 	0x00000000
    1a38:	5c000100 	bne	$r8,$r0,0 # 1a38 <_start-0x1bffe5c8>
	...
    1a44:	005e0001 	0x005e0001
    1a48:	00000000 	0x00000000
    1a4c:	01000000 	0x01000000
    1a50:	00005e00 	ext.w.b	$r0,$r16
    1a54:	00000000 	0x00000000
    1a58:	00010000 	asrtle.d	$r0,$r0
    1a5c:	0000005c 	0x0000005c
    1a60:	00000000 	0x00000000
    1a64:	5c000100 	bne	$r8,$r0,0 # 1a64 <_start-0x1bffe59c>
	...
    1a70:	9f300002 	0x9f300002
	...
    1a7c:	0000000b 	0x0000000b
	...
    1a9c:	00010100 	asrtle.d	$r8,$r0
    1aa0:	01000000 	0x01000000
    1aa4:	00000001 	0x00000001
	...
    1ab0:	00020000 	0x00020000
    1ab4:	00009f30 	0x00009f30
    1ab8:	00000000 	0x00000000
    1abc:	00010000 	asrtle.d	$r0,$r0
    1ac0:	00000067 	0x00000067
    1ac4:	00000000 	0x00000000
    1ac8:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1ac8 <_RAM_DATA+0x7fff0ac8>
	...
    1ad4:	005c0001 	0x005c0001
    1ad8:	00000000 	0x00000000
    1adc:	01000000 	0x01000000
    1ae0:	00005c00 	ext.w.b	$r0,$r0
    1ae4:	00000000 	0x00000000
    1ae8:	00010000 	asrtle.d	$r0,$r0
    1aec:	00000067 	0x00000067
    1af0:	00000000 	0x00000000
    1af4:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1af4 <_RAM_DATA+0x7fff0af4>
	...
    1b00:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1b04:	00000000 	0x00000000
    1b08:	01000000 	0x01000000
    1b0c:	00006800 	rdtime.d	$r0,$r0
    1b10:	00000000 	0x00000000
    1b14:	00010000 	asrtle.d	$r0,$r0
    1b18:	00000067 	0x00000067
    1b1c:	00000000 	0x00000000
    1b20:	68000100 	bltu	$r8,$r0,0 # 1b20 <_start-0x1bffe4e0>
	...
    1b2c:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1b30:	00000000 	0x00000000
    1b34:	01000000 	0x01000000
    1b38:	00006700 	rdtimeh.w	$r0,$r24
    1b3c:	00000000 	0x00000000
    1b40:	00010000 	asrtle.d	$r0,$r0
    1b44:	00000067 	0x00000067
    1b48:	00000000 	0x00000000
    1b4c:	5d000100 	bne	$r8,$r0,65536(0x10000) # 11b4c <_start-0x1bfee4b4>
	...
    1b58:	005d0001 	0x005d0001
    1b5c:	00000000 	0x00000000
    1b60:	01000000 	0x01000000
    1b64:	00006700 	rdtimeh.w	$r0,$r24
    1b68:	00000000 	0x00000000
    1b6c:	00020000 	0x00020000
    1b70:	00009f30 	0x00009f30
    1b74:	00000000 	0x00000000
    1b78:	00010000 	asrtle.d	$r0,$r0
    1b7c:	00000067 	0x00000067
    1b80:	00000000 	0x00000000
    1b84:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1b84 <_RAM_DATA+0x7fff0b84>
	...
    1b90:	9f300002 	0x9f300002
	...
    1b9c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1ba0:	00000000 	0x00000000
    1ba4:	01000000 	0x01000000
    1ba8:	00006700 	rdtimeh.w	$r0,$r24
	...
    1bc0:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1bc4:	00000000 	0x00000000
    1bc8:	01000000 	0x01000000
    1bcc:	00006800 	rdtime.d	$r0,$r0
    1bd0:	00000000 	0x00000000
    1bd4:	00010000 	asrtle.d	$r0,$r0
    1bd8:	00000068 	0x00000068
	...
    1bec:	01000000 	0x01000000
    1bf0:	00006900 	rdtime.d	$r0,$r8
    1bf4:	00000000 	0x00000000
    1bf8:	00010000 	asrtle.d	$r0,$r0
    1bfc:	00000069 	0x00000069
    1c00:	00000000 	0x00000000
    1c04:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11c04 <_start-0x1bfee3fc>
	...
    1c10:	00000008 	0x00000008
	...
    1c2c:	00020000 	0x00020000
    1c30:	00009f30 	0x00009f30
    1c34:	00000000 	0x00000000
    1c38:	00010000 	asrtle.d	$r0,$r0
    1c3c:	0000006a 	0x0000006a
    1c40:	00000000 	0x00000000
    1c44:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c44 <_RAM_DATA+0x7ffe0c44>
	...
    1c50:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c54:	00000000 	0x00000000
    1c58:	01000000 	0x01000000
    1c5c:	00006a00 	rdtime.d	$r0,$r16
    1c60:	00000000 	0x00000000
    1c64:	00010000 	asrtle.d	$r0,$r0
    1c68:	0000006a 	0x0000006a
    1c6c:	00000000 	0x00000000
    1c70:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c70 <_RAM_DATA+0x7ffe0c70>
	...
    1c7c:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c80:	00000000 	0x00000000
    1c84:	01000000 	0x01000000
    1c88:	00006a00 	rdtime.d	$r0,$r16
    1c8c:	00000000 	0x00000000
    1c90:	00010000 	asrtle.d	$r0,$r0
    1c94:	0000006a 	0x0000006a
    1c98:	00000000 	0x00000000
    1c9c:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c9c <_RAM_DATA+0x7ffe0c9c>
	...
    1ca8:	00000009 	0x00000009
	...
    1cc4:	00020000 	0x00020000
    1cc8:	00009f3b 	0x00009f3b
    1ccc:	00000000 	0x00000000
    1cd0:	00010000 	asrtle.d	$r0,$r0
    1cd4:	0000006b 	0x0000006b
    1cd8:	00000000 	0x00000000
    1cdc:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1cdc <_RAM_DATA+0x7fff0cdc>
	...
    1ce8:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1cec:	00000000 	0x00000000
    1cf0:	01000000 	0x01000000
    1cf4:	00006b00 	rdtime.d	$r0,$r24
    1cf8:	00000000 	0x00000000
    1cfc:	00010000 	asrtle.d	$r0,$r0
    1d00:	00000067 	0x00000067
    1d04:	00000000 	0x00000000
    1d08:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1d08 <_RAM_DATA+0x7fff0d08>
	...
    1d14:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1d18:	00000000 	0x00000000
    1d1c:	01000000 	0x01000000
    1d20:	00006b00 	rdtime.d	$r0,$r24
    1d24:	00000000 	0x00000000
    1d28:	00010000 	asrtle.d	$r0,$r0
    1d2c:	0000006b 	0x0000006b
    1d30:	00000000 	0x00000000
    1d34:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1d34 <_RAM_DATA+0x7fff0d34>
	...
    1d54:	00540001 	0x00540001
    1d58:	00000000 	0x00000000
    1d5c:	04000000 	csrrd	$r0,0x0
    1d60:	5401f300 	bl	-67108368(0xc0001f0) # fc001f50 <_RAM_DATA+0x7c000f50>
    1d64:	0000009f 	0x0000009f
    1d68:	00000000 	0x00000000
    1d6c:	54000100 	bl	67108864(0x4000000) # 4001d6c <_start-0x17ffe294>
	...
    1d78:	01f30004 	0x01f30004
    1d7c:	00009f54 	0x00009f54
    1d80:	00000000 	0x00000000
    1d84:	00010000 	asrtle.d	$r0,$r0
    1d88:	00000054 	0x00000054
    1d8c:	00000000 	0x00000000
    1d90:	f3000400 	0xf3000400
    1d94:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
    1db0:	01000000 	0x01000000
    1db4:	00005500 	bitrev.d	$r0,$r8
    1db8:	00000000 	0x00000000
    1dbc:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1dc0:	9f5501f3 	0x9f5501f3
	...
    1dcc:	00550001 	0x00550001
    1dd0:	00000000 	0x00000000
    1dd4:	04000000 	csrrd	$r0,0x0
    1dd8:	5501f300 	bl	-67042832(0xc0101f0) # fc011fc8 <_RAM_DATA+0x7c010fc8>
    1ddc:	0000009f 	0x0000009f
    1de0:	00000000 	0x00000000
    1de4:	55000100 	bl	67174400(0x4010000) # 4011de4 <_start-0x17fee21c>
	...
    1df0:	01f30004 	0x01f30004
    1df4:	00009f55 	0x00009f55
    1df8:	00000000 	0x00000000
    1dfc:	00010000 	asrtle.d	$r0,$r0
    1e00:	00000000 	0x00000000
    1e04:	00010000 	asrtle.d	$r0,$r0
	...
    1e10:	00020000 	0x00020000
    1e14:	00009f30 	0x00009f30
    1e18:	00000000 	0x00000000
    1e1c:	00010000 	asrtle.d	$r0,$r0
    1e20:	00000067 	0x00000067
    1e24:	00000000 	0x00000000
    1e28:	88000300 	0x88000300
    1e2c:	00009f7f 	0x00009f7f
    1e30:	00000000 	0x00000000
    1e34:	00010000 	asrtle.d	$r0,$r0
    1e38:	00000068 	0x00000068
    1e3c:	00000000 	0x00000000
    1e40:	30000200 	0x30000200
    1e44:	0000009f 	0x0000009f
    1e48:	00000000 	0x00000000
    1e4c:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1e4c <_RAM_DATA+0x7fff0e4c>
	...
    1e60:	00010000 	asrtle.d	$r0,$r0
    1e64:	00000068 	0x00000068
    1e68:	00000000 	0x00000000
    1e6c:	02020000 	slti	$r0,$r0,128(0x80)
	...
    1e78:	54000100 	bl	67108864(0x4000000) # 4001e78 <_start-0x17ffe188>
	...
    1e84:	01f30004 	0x01f30004
    1e88:	00009f54 	0x00009f54
	...
    1e94:	24680000 	ldptr.w	$r0,$r0,26624(0x6800)
    1e98:	247c1c00 	ldptr.w	$r0,$r0,31772(0x7c1c)
    1e9c:	00011c00 	asrtle.d	$r0,$r7
    1ea0:	0024b067 	crc.w.h.w	$r7,$r3,$r12
    1ea4:	00255c1c 	crc.w.w.w	$r28,$r0,$r23
    1ea8:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff1ea8 <_RAM_DATA+0x7fff0ea8>
	...
    1eb8:	1c0024fc 	pcaddu12i	$r28,295(0x127)
    1ebc:	1c002504 	pcaddu12i	$r4,296(0x128)
    1ec0:	205c0001 	ll.w	$r1,$r0,23552(0x5c00)
    1ec4:	241c0025 	ldptr.w	$r5,$r1,7168(0x1c00)
    1ec8:	011c0025 	0x011c0025
    1ecc:	00005c00 	ext.w.b	$r0,$r0
	...
    1edc:	1c002504 	pcaddu12i	$r4,296(0x128)
    1ee0:	1c002508 	pcaddu12i	$r8,296(0x128)
    1ee4:	305c0001 	vldrepl.h	$vr1,$r0,-512(0xe00)
    1ee8:	401c0025 	beqz	$r1,1317888(0x141c00) # 143ae8 <_start-0x1bebc518>
    1eec:	011c0025 	0x011c0025
    1ef0:	25505c00 	stptr.w	$r0,$r0,20572(0x505c)
    1ef4:	255c1c00 	stptr.w	$r0,$r0,23580(0x5c1c)
    1ef8:	00011c00 	asrtle.d	$r0,$r7
    1efc:	0000005c 	0x0000005c
    1f00:	00000000 	0x00000000
    1f04:	00000300 	0x00000300
    1f08:	00000101 	0x00000101
    1f0c:	00000101 	0x00000101
    1f10:	0024ec00 	crc.w.h.w	$r0,$r0,$r27
    1f14:	0025041c 	crc.w.w.w	$r28,$r0,$r1
    1f18:	3000021c 	0x3000021c
    1f1c:	0025049f 	crc.w.w.w	$r31,$r4,$r1
    1f20:	00250c1c 	crc.w.w.w	$r28,$r0,$r3
    1f24:	5e00011c 	bne	$r8,$r28,-131072(0x20000) # fffe1f24 <_RAM_DATA+0x7ffe0f24>
    1f28:	1c00250c 	pcaddu12i	$r12,296(0x128)
    1f2c:	1c002510 	pcaddu12i	$r16,296(0x128)
    1f30:	9f310002 	0x9f310002
    1f34:	1c002510 	pcaddu12i	$r16,296(0x128)
    1f38:	1c00253c 	pcaddu12i	$r28,297(0x129)
    1f3c:	3c5e0001 	0x3c5e0001
    1f40:	501c0025 	b	9706496(0x941c00) # 943b40 <_start-0x1b6bc4c0>
    1f44:	021c0025 	slti	$r5,$r1,1792(0x700)
    1f48:	509f3000 	b	40752(0x9f30) # be78 <_start-0x1bff4188>
    1f4c:	5c1c0025 	bne	$r1,$r5,7168(0x1c00) # 3b4c <_start-0x1bffc4b4>
    1f50:	011c0025 	0x011c0025
    1f54:	00005e00 	ext.w.b	$r0,$r16
	...
    1f64:	1c0023d4 	pcaddu12i	$r20,286(0x11e)
    1f68:	1c0023f8 	pcaddu12i	$r24,287(0x11f)
    1f6c:	045c0001 	csrrd	$r1,0x1700
    1f70:	0f1c0024 	0x0f1c0024
    1f74:	011c0024 	0x011c0024
    1f78:	24205c00 	ldptr.w	$r0,$r0,8284(0x205c)
    1f7c:	242b1c00 	ldptr.w	$r0,$r0,11036(0x2b1c)
    1f80:	00011c00 	asrtle.d	$r0,$r7
    1f84:	0000005c 	0x0000005c
    1f88:	00000000 	0x00000000
    1f8c:	64000000 	bge	$r0,$r0,0 # 1f8c <_start-0x1bffe074>
    1f90:	841c0023 	0x841c0023
    1f94:	091c0023 	vfmadd.s	$vr3,$vr1,$vr0,$vr24
    1f98:	09007500 	0x09007500
    1f9c:	f80924e8 	0xf80924e8
    1fa0:	00009f25 	0x00009f25
	...
    1fac:	1c0022c8 	pcaddu12i	$r8,278(0x116)
    1fb0:	1c002318 	pcaddu12i	$r24,280(0x118)
    1fb4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
	...
    1fc0:	0022cc00 	mod.d	$r0,$r0,$r19
    1fc4:	0022dc1c 	mod.d	$r28,$r0,$r23
    1fc8:	5c00011c 	bne	$r8,$r28,0 # 1fc8 <_start-0x1bffe038>
	...
    1fd4:	00000001 	0x00000001
    1fd8:	1c0022d4 	pcaddu12i	$r20,278(0x116)
    1fdc:	1c0022dc 	pcaddu12i	$r28,278(0x116)
    1fe0:	9f300002 	0x9f300002
    1fe4:	1c0022dc 	pcaddu12i	$r28,278(0x116)
    1fe8:	1c002314 	pcaddu12i	$r20,280(0x118)
    1fec:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1ff0:	00000000 	0x00000000
    1ff4:	Address 0x0000000000001ff4 is out of bounds.


Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
   0:	1c001128 	pcaddu12i	$r8,137(0x89)
   4:	1c001148 	pcaddu12i	$r8,138(0x8a)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:8
  10:	1c001148 	pcaddu12i	$r8,138(0x8a)
  14:	1c001238 	pcaddu12i	$r24,145(0x91)
  18:	1c001238 	pcaddu12i	$r24,145(0x91)
  1c:	1c001290 	pcaddu12i	$r16,148(0x94)
WDG_SetWatchDog():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:9
  20:	1c001290 	pcaddu12i	$r16,148(0x94)
TIMER_8M_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:259
  24:	1c001498 	pcaddu12i	$r24,164(0xa4)
	...
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:52 (discriminator 3)
  88:	1c001498 	pcaddu12i	$r24,164(0xa4)
  8c:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
	...
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
  e8:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
  ec:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
 100:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
 104:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
 108:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
 10c:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
 130:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
 134:	1c001504 	pcaddu12i	$r4,168(0xa8)
 138:	1c001504 	pcaddu12i	$r4,168(0xa8)
 13c:	1c00155c 	pcaddu12i	$r28,170(0xaa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
 140:	1c00155c 	pcaddu12i	$r28,170(0xaa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
 144:	1c00164c 	pcaddu12i	$r12,178(0xb2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
 148:	1c00164c 	pcaddu12i	$r12,178(0xb2)
 14c:	1c00189c 	pcaddu12i	$r28,196(0xc4)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
 160:	1c00189c 	pcaddu12i	$r28,196(0xc4)
 164:	1c001920 	pcaddu12i	$r0,201(0xc9)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
 178:	1c001920 	pcaddu12i	$r0,201(0xc9)
 17c:	1c001938 	pcaddu12i	$r24,201(0xc9)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
 1b8:	1c001938 	pcaddu12i	$r24,201(0xc9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
 1bc:	1c001948 	pcaddu12i	$r8,202(0xca)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
 1d0:	1c001948 	pcaddu12i	$r8,202(0xca)
 1d4:	1c00195c 	pcaddu12i	$r28,202(0xca)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
 228:	1c00195c 	pcaddu12i	$r28,202(0xca)
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
 22c:	1c001974 	pcaddu12i	$r20,203(0xcb)
 230:	1c001974 	pcaddu12i	$r20,203(0xcb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
 234:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
 258:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
 25c:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
 260:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 264:	1c001b08 	pcaddu12i	$r8,216(0xd8)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
 270:	1c001b08 	pcaddu12i	$r8,216(0xd8)
 274:	1c001b44 	pcaddu12i	$r4,218(0xda)
 278:	1c001b44 	pcaddu12i	$r4,218(0xda)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
 27c:	1c001b80 	pcaddu12i	$r0,220(0xdc)
 280:	1c001b80 	pcaddu12i	$r0,220(0xdc)
 284:	1c001bbc 	pcaddu12i	$r28,221(0xdd)
 288:	1c001bbc 	pcaddu12i	$r28,221(0xdd)
 28c:	1c001bf8 	pcaddu12i	$r24,223(0xdf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
 290:	1c001bf8 	pcaddu12i	$r24,223(0xdf)
 294:	1c001c34 	pcaddu12i	$r20,225(0xe1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
 298:	1c001c34 	pcaddu12i	$r20,225(0xe1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 29c:	1c001c70 	pcaddu12i	$r16,227(0xe3)
 2a0:	1c001c70 	pcaddu12i	$r16,227(0xe3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	1c001cac 	pcaddu12i	$r12,229(0xe5)
 2a8:	1c001cac 	pcaddu12i	$r12,229(0xe5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
 2ac:	1c001ce8 	pcaddu12i	$r8,231(0xe7)
 2b0:	1c001ce8 	pcaddu12i	$r8,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b4:	1c001d24 	pcaddu12i	$r4,233(0xe9)
 2b8:	1c001d24 	pcaddu12i	$r4,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	1c001d60 	pcaddu12i	$r0,235(0xeb)
 2c0:	1c001d60 	pcaddu12i	$r0,235(0xeb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	1c001d9c 	pcaddu12i	$r28,236(0xec)
 2c8:	1c001d9c 	pcaddu12i	$r28,236(0xec)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	1c001dd8 	pcaddu12i	$r24,238(0xee)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	1c001dd8 	pcaddu12i	$r24,238(0xee)
 2d4:	1c001e14 	pcaddu12i	$r20,240(0xf0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	1c001e14 	pcaddu12i	$r20,240(0xf0)
 2dc:	1c001e50 	pcaddu12i	$r16,242(0xf2)
 2e0:	1c001e50 	pcaddu12i	$r16,242(0xf2)
 2e4:	1c001e8c 	pcaddu12i	$r12,244(0xf4)
 2e8:	1c001e8c 	pcaddu12i	$r12,244(0xf4)
 2ec:	1c001ec8 	pcaddu12i	$r8,246(0xf6)
 2f0:	1c001ec8 	pcaddu12i	$r8,246(0xf6)
 2f4:	1c001f04 	pcaddu12i	$r4,248(0xf8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	1c001f04 	pcaddu12i	$r4,248(0xf8)
 2fc:	1c001f40 	pcaddu12i	$r0,250(0xfa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	1c001f40 	pcaddu12i	$r0,250(0xfa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	1c001f7c 	pcaddu12i	$r28,251(0xfb)
 308:	1c001f7c 	pcaddu12i	$r28,251(0xfb)
 30c:	1c001fb8 	pcaddu12i	$r24,253(0xfd)
 310:	1c001fb8 	pcaddu12i	$r24,253(0xfd)
 314:	1c001ff4 	pcaddu12i	$r20,255(0xff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	1c001ff4 	pcaddu12i	$r20,255(0xff)
 31c:	1c002030 	pcaddu12i	$r16,257(0x101)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c002030 	pcaddu12i	$r16,257(0x101)
 324:	1c00206c 	pcaddu12i	$r12,259(0x103)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
 328:	1c00206c 	pcaddu12i	$r12,259(0x103)
 32c:	1c0020a8 	pcaddu12i	$r8,261(0x105)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	1c0020a8 	pcaddu12i	$r8,261(0x105)
 334:	1c0020e4 	pcaddu12i	$r4,263(0x107)
 338:	1c0020e4 	pcaddu12i	$r4,263(0x107)
 33c:	1c002120 	pcaddu12i	$r0,265(0x109)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	1c002120 	pcaddu12i	$r0,265(0x109)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	1c00215c 	pcaddu12i	$r28,266(0x10a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	1c00215c 	pcaddu12i	$r28,266(0x10a)
 34c:	1c002198 	pcaddu12i	$r24,268(0x10c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c002198 	pcaddu12i	$r24,268(0x10c)
 354:	1c0021d4 	pcaddu12i	$r20,270(0x10e)
 358:	1c0021d4 	pcaddu12i	$r20,270(0x10e)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	1c002210 	pcaddu12i	$r16,272(0x110)
 360:	1c002210 	pcaddu12i	$r16,272(0x110)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	1c00224c 	pcaddu12i	$r12,274(0x112)
 368:	1c00224c 	pcaddu12i	$r12,274(0x112)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	1c002288 	pcaddu12i	$r8,276(0x114)
 370:	1c002288 	pcaddu12i	$r8,276(0x114)
 374:	1c002320 	pcaddu12i	$r0,281(0x119)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 388:	1c002320 	pcaddu12i	$r0,281(0x119)
 38c:	1c002350 	pcaddu12i	$r16,282(0x11a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c002350 	pcaddu12i	$r16,282(0x11a)
 394:	1c00239c 	pcaddu12i	$r28,284(0x11c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c00239c 	pcaddu12i	$r28,284(0x11c)
 39c:	1c0023bc 	pcaddu12i	$r28,285(0x11d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c0023bc 	pcaddu12i	$r28,285(0x11d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	1c00244c 	pcaddu12i	$r12,290(0x122)
 3a8:	1c00244c 	pcaddu12i	$r12,290(0x122)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	1c00255c 	pcaddu12i	$r28,298(0x12a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c00255c 	pcaddu12i	$r28,298(0x12a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	1c002584 	pcaddu12i	$r4,300(0x12c)
	...

Disassembly of section .comment:

00000000 <.comment>:
WdgInit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:7
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
