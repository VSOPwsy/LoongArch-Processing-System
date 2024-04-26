
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
1c00000c:	039a81ef 	ori	$r15,$r15,0x6a0
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
1c0000a0:	54151c00 	bl	5404(0x151c) # 1c0015bc <main>
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
1c001090:	540e3000 	bl	3632(0xe30) # 1c001ec0 <TIMER_WAKE_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:111
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:114
1c001098:	540e5800 	bl	3672(0xe58) # 1c001ef0 <TOUCH>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:115
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:118
1c0010a0:	540e9c00 	bl	3740(0xe9c) # 1c001f3c <UART2_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:119
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:122
1c0010a8:	540eb400 	bl	3764(0xeb4) # 1c001f5c <BAT_FAIL>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:123
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:126
1c0010b0:	540d7800 	bl	3448(0xd78) # 1c001e28 <ext_handler>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:127
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:130
1c0010b8:	540ffc00 	bl	4092(0xffc) # 1c0020b4 <TIMER_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:131
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:134
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:135
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:136
1c0010c8:	540f2400 	bl	3876(0xf24) # 1c001fec <intc_handler>
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

1c001238 <puts>:
puts():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:60
1c001238:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00123c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001240:	29802077 	st.w	$r23,$r3,8(0x8)
1c001244:	29801078 	st.w	$r24,$r3,4(0x4)
1c001248:	00150098 	move	$r24,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:62
1c00124c:	50001800 	b	24(0x18) # 1c001264 <puts+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:64 (discriminator 1)
1c001250:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001254:	57fed7ff 	bl	-300(0xffffed4) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:65
1c001258:	006782e4 	bstrpick.w	$r4,$r23,0x7,0x0
1c00125c:	57fecfff 	bl	-308(0xffffecc) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:66
1c001260:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:62
1c001264:	28000317 	ld.b	$r23,$r24,0
1c001268:	400012e0 	beqz	$r23,16(0x10) # 1c001278 <puts+0x40>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:64
1c00126c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001270:	5fffeaec 	bne	$r23,$r12,-24(0x3ffe8) # 1c001258 <puts+0x20>
1c001274:	53ffdfff 	b	-36(0xfffffdc) # 1c001250 <puts+0x18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:70
1c001278:	00150004 	move	$r4,$r0
1c00127c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001280:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001284:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00128c:	4c000020 	jirl	$r0,$r1,0

1c001290 <myprintf>:
myprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:73
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:79
1c0012c8:	0280d07a 	addi.w	$r26,$r3,52(0x34)
1c0012cc:	2980307a 	st.w	$r26,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:81
1c0012d0:	00150018 	move	$r24,$r0
1c0012d4:	50018400 	b	388(0x184) # 1c001458 <myprintf+0x1c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:86
1c0012d8:	02800405 	addi.w	$r5,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:88
1c0012dc:	0010632c 	add.w	$r12,$r25,$r24
1c0012e0:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0012e4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0012e8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0012ec:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0012f0:	680149ae 	bltu	$r13,$r14,328(0x148) # 1c001438 <myprintf+0x1a8>
1c0012f4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0012f8:	02b7a1ad 	addi.w	$r13,$r13,-536(0xde8)
1c0012fc:	0004b5cc 	alsl.w	$r12,$r14,$r13,0x2
1c001300:	2880018c 	ld.w	$r12,$r12,0
1c001304:	4c000180 	jirl	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:91
1c001308:	28800344 	ld.w	$r4,$r26,0
1c00130c:	57ff2fff 	bl	-212(0xfffff2c) # 1c001238 <puts>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:92
1c001310:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:93
1c001314:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:94
1c001318:	50013c00 	b	316(0x13c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:96
1c00131c:	2a000344 	ld.bu	$r4,$r26,0
1c001320:	57fe0bff 	bl	-504(0xffffe08) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:97
1c001324:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:98
1c001328:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:99
1c00132c:	50012800 	b	296(0x128) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:101
1c001330:	00150007 	move	$r7,$r0
1c001334:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001338:	28800344 	ld.w	$r4,$r26,0
1c00133c:	57fe0fff 	bl	-500(0xffffe0c) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:102
1c001340:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:103
1c001344:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:104
1c001348:	50010c00 	b	268(0x10c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:106
1c00134c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001350:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001354:	28800344 	ld.w	$r4,$r26,0
1c001358:	57fdf3ff 	bl	-528(0xffffdf0) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:107
1c00135c:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:108
1c001360:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:109
1c001364:	5000f000 	b	240(0xf0) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:111
1c001368:	00150007 	move	$r7,$r0
1c00136c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001370:	28800344 	ld.w	$r4,$r26,0
1c001374:	57fdd7ff 	bl	-556(0xffffdd4) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:112
1c001378:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:113
1c00137c:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:114
1c001380:	5000d400 	b	212(0xd4) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:116
1c001384:	00150007 	move	$r7,$r0
1c001388:	02800806 	addi.w	$r6,$r0,2(0x2)
1c00138c:	28800344 	ld.w	$r4,$r26,0
1c001390:	57fdbbff 	bl	-584(0xffffdb8) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:117
1c001394:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:118
1c001398:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:119
1c00139c:	5000b800 	b	184(0xb8) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:122
1c0013a0:	00150007 	move	$r7,$r0
1c0013a4:	02804006 	addi.w	$r6,$r0,16(0x10)
1c0013a8:	28800344 	ld.w	$r4,$r26,0
1c0013ac:	57fd9fff 	bl	-612(0xffffd9c) # 1c001148 <printbase>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:123
1c0013b0:	0280135a 	addi.w	$r26,$r26,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:124
1c0013b4:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:125
1c0013b8:	50009c00 	b	156(0x9c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:127
1c0013bc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0013c0:	57fd6bff 	bl	-664(0xffffd68) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:128
1c0013c4:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:129
1c0013c8:	50008c00 	b	140(0x8c) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:131
1c0013cc:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:132
1c0013d0:	00150005 	move	$r5,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:132 (discriminator 1)
1c0013d4:	0010632c 	add.w	$r12,$r25,$r24
1c0013d8:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c0013dc:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c0013e0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0013e4:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c0013e8:	6bfef5cd 	bltu	$r14,$r13,-268(0x3fef4) # 1c0012dc <myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:133 (discriminator 3)
1c0013ec:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0013f0:	001c34a5 	mul.w	$r5,$r5,$r13
1c0013f4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0013f8:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:132 (discriminator 3)
1c0013fc:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001400:	53ffd7ff 	b	-44(0xfffffd4) # 1c0013d4 <myprintf+0x144>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137
1c001404:	00150005 	move	$r5,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137 (discriminator 1)
1c001408:	0010632c 	add.w	$r12,$r25,$r24
1c00140c:	2800058c 	ld.b	$r12,$r12,1(0x1)
1c001410:	02bf3d8d 	addi.w	$r13,$r12,-49(0xfcf)
1c001414:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001418:	0280200e 	addi.w	$r14,$r0,8(0x8)
1c00141c:	6bfec1cd 	bltu	$r14,$r13,-320(0x3fec0) # 1c0012dc <myprintf+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:138 (discriminator 3)
1c001420:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c001424:	001c34a5 	mul.w	$r5,$r5,$r13
1c001428:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00142c:	001030a5 	add.w	$r5,$r5,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:137 (discriminator 3)
1c001430:	02800718 	addi.w	$r24,$r24,1(0x1)
1c001434:	53ffd7ff 	b	-44(0xfffffd4) # 1c001408 <myprintf+0x178>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:143
1c001438:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00143c:	57fcefff 	bl	-788(0xffffcec) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:144
1c001440:	50001400 	b	20(0x14) # 1c001454 <myprintf+0x1c4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:148 (discriminator 1)
1c001444:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001448:	57fce3ff 	bl	-800(0xffffce0) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:149
1c00144c:	006782e4 	bstrpick.w	$r4,$r23,0x7,0x0
1c001450:	57fcdbff 	bl	-808(0xffffcd8) # 1c001128 <myputchar>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:81 (discriminator 2)
1c001454:	02800718 	addi.w	$r24,$r24,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:81 (discriminator 1)
1c001458:	0010632c 	add.w	$r12,$r25,$r24
1c00145c:	28000197 	ld.b	$r23,$r12,0
1c001460:	40001ae0 	beqz	$r23,24(0x18) # 1c001478 <myprintf+0x1e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:84
1c001464:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001468:	5bfe72ec 	beq	$r23,$r12,-400(0x3fe70) # 1c0012d8 <myprintf+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:148
1c00146c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001470:	5fffdeec 	bne	$r23,$r12,-36(0x3ffdc) # 1c00144c <myprintf+0x1bc>
1c001474:	53ffd3ff 	b	-48(0xfffffd0) # 1c001444 <myprintf+0x1b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:154
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

1c0014cc <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:118
1c0014cc:	2880308c 	ld.w	$r12,$r4,12(0xc)
1c0014d0:	00151585 	or	$r5,$r12,$r5
1c0014d4:	29803085 	st.w	$r5,$r4,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:119
1c0014d8:	4c000020 	jirl	$r0,$r1,0

1c0014dc <WDG_DogFeed>:
WDG_DogFeed():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:13
1c0014dc:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0014e0:	154ab4ac 	lu12i.w	$r12,-371291(0xa55a5)
1c0014e4:	0396a98c 	ori	$r12,$r12,0x5aa
1c0014e8:	2980d1ac 	st.w	$r12,$r13,52(0x34)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_wdg.c:14
1c0014ec:	4c000020 	jirl	$r0,$r1,0

1c0014f0 <TIM_GetITStatus>:
TIM_GetITStatus():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:156
1c0014f0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0014f4:	2880018c 	ld.w	$r12,$r12,0
1c0014f8:	00149184 	and	$r4,$r12,$r4
1c0014fc:	40000880 	beqz	$r4,8(0x8) # 1c001504 <TIM_GetITStatus+0x14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:158
1c001500:	02800404 	addi.w	$r4,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:165
1c001504:	4c000020 	jirl	$r0,$r1,0

1c001508 <TIM_ClearIT>:
TIM_ClearIT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:177
1c001508:	157fda0d 	lu12i.w	$r13,-262448(0xbfed0)
1c00150c:	288001ac 	ld.w	$r12,$r13,0
1c001510:	00151184 	or	$r4,$r12,$r4
1c001514:	298001a4 	st.w	$r4,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:178
1c001518:	157fd40d 	lu12i.w	$r13,-262496(0xbfea0)
1c00151c:	03800dad 	ori	$r13,$r13,0x3
1c001520:	2a0001ac 	ld.bu	$r12,$r13,0
1c001524:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001528:	0380058c 	ori	$r12,$r12,0x1
1c00152c:	290001ac 	st.b	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:179
1c001530:	4c000020 	jirl	$r0,$r1,0

1c001534 <recv_dat_int>:
recv_dat_int():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:24
1c001534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001538:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:25
1c00153c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001540:	02ab618c 	addi.w	$r12,$r12,-1320(0xad8)
1c001544:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001548:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:26
1c00154c:	00150085 	move	$r5,$r4
1c001550:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c001554:	02aac084 	addi.w	$r4,$r4,-1360(0xab0)
1c001558:	54001000 	bl	16(0x10) # 1c001568 <Buffer_write>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:27
1c00155c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001560:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001564:	4c000020 	jirl	$r0,$r1,0

1c001568 <Buffer_write>:
Buffer_write():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:133
1c001568:	2880008c 	ld.w	$r12,$r4,0
1c00156c:	2880308d 	ld.w	$r13,$r4,12(0xc)
1c001570:	0010358c 	add.w	$r12,$r12,$r13
1c001574:	29000185 	st.b	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:134
1c001578:	2880308c 	ld.w	$r12,$r4,12(0xc)
1c00157c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001580:	2980308c 	st.w	$r12,$r4,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:135
1c001584:	2880108d 	ld.w	$r13,$r4,4(0x4)
1c001588:	6000098d 	blt	$r12,$r13,8(0x8) # 1c001590 <Buffer_write+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:136
1c00158c:	29803080 	st.w	$r0,$r4,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:139
1c001590:	2880408c 	ld.w	$r12,$r4,16(0x10)
1c001594:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001598:	2980408c 	st.w	$r12,$r4,16(0x10)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:140
1c00159c:	64001dac 	bge	$r13,$r12,28(0x1c) # 1c0015b8 <Buffer_write+0x50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:141
1c0015a0:	2980408d 	st.w	$r13,$r4,16(0x10)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:142
1c0015a4:	2880208c 	ld.w	$r12,$r4,8(0x8)
1c0015a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015ac:	2980208c 	st.w	$r12,$r4,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:143
1c0015b0:	6000098d 	blt	$r12,$r13,8(0x8) # 1c0015b8 <Buffer_write+0x50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:144
1c0015b4:	29802080 	st.w	$r0,$r4,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/tool/Buffer.c:146
1c0015b8:	4c000020 	jirl	$r0,$r1,0

1c0015bc <main>:
main():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:466
1c0015bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015c0:	29807061 	st.w	$r1,$r3,28(0x1c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467
1c0015c4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0015c8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0015cc:	50001800 	b	24(0x18) # 1c0015e4 <main+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467 (discriminator 3)
1c0015d0:	03400000 	andi	$r0,$r0,0x0
1c0015d4:	03400000 	andi	$r0,$r0,0x0
1c0015d8:	03400000 	andi	$r0,$r0,0x0
1c0015dc:	03400000 	andi	$r0,$r0,0x0
1c0015e0:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467 (discriminator 1)
1c0015e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0015e8:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c0015d0 <main+0x14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:468
1c0015ec:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c0015f0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0015f4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:469
1c0015f8:	57feb7ff 	bl	-332(0xffffeb4) # 1c0014ac <EnableInt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:471
1c0015fc:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001600:	0380118c 	ori	$r12,$r12,0x4
1c001604:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c001608:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:514
1c00160c:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c001610:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c001614:	50001800 	b	24(0x18) # 1c00162c <main+0x70>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:514 (discriminator 3)
1c001618:	03400000 	andi	$r0,$r0,0x0
1c00161c:	03400000 	andi	$r0,$r0,0x0
1c001620:	03400000 	andi	$r0,$r0,0x0
1c001624:	03400000 	andi	$r0,$r0,0x0
1c001628:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:514 (discriminator 1)
1c00162c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001630:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001618 <main+0x5c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:515
1c001634:	29803060 	st.w	$r0,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:516
1c001638:	29802060 	st.w	$r0,$r3,8(0x8)
1c00163c:	50002400 	b	36(0x24) # 1c001660 <main+0xa4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:524
1c001640:	29802060 	st.w	$r0,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:525
1c001644:	157fe00d 	lu12i.w	$r13,-262400(0xbff00)
1c001648:	288001ac 	ld.w	$r12,$r13,0
1c00164c:	03c0058c 	xori	$r12,$r12,0x1
1c001650:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:531
1c001654:	2880306c 	ld.w	$r12,$r3,12(0xc)
1c001658:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00165c:	2980306c 	st.w	$r12,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:519
1c001660:	2880306d 	ld.w	$r13,$r3,12(0xc)
1c001664:	1480000c 	lu12i.w	$r12,262144(0x40000)
1c001668:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:520
1c00166c:	2880018d 	ld.w	$r13,$r12,0
1c001670:	2880306c 	ld.w	$r12,$r3,12(0xc)
1c001674:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001698 <main+0xdc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:522
1c001678:	2880206d 	ld.w	$r13,$r3,8(0x8)
1c00167c:	1400008c 	lu12i.w	$r12,4(0x4)
1c001680:	03b8818c 	ori	$r12,$r12,0xe20
1c001684:	5bffbdac 	beq	$r13,$r12,-68(0x3ffbc) # 1c001640 <main+0x84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:529
1c001688:	2880206c 	ld.w	$r12,$r3,8(0x8)
1c00168c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001690:	2980206c 	st.w	$r12,$r3,8(0x8)
1c001694:	53ffc3ff 	b	-64(0xfffffc0) # 1c001654 <main+0x98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:541 (discriminator 1)
1c001698:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c00169c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0016a0:	2980018d 	st.w	$r13,$r12,0
1c0016a4:	53fff7ff 	b	-12(0xffffff4) # 1c001698 <main+0xdc>

1c0016a8 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:4
1c0016a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0016ac:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:5
1c0016b0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0016b4:	02bd60c6 	addi.w	$r6,$r6,-168(0xf58)
1c0016b8:	02801405 	addi.w	$r5,$r0,5(0x5)
1c0016bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0016c0:	02adc084 	addi.w	$r4,$r4,-1168(0xb70)
1c0016c4:	57fbcfff 	bl	-1076(0xffffbcc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:6
1c0016c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0016cc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0016d0:	03808084 	ori	$r4,$r4,0x20
1c0016d4:	57fdfbff 	bl	-520(0xffffdf8) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:7
1c0016d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0016dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016e0:	4c000020 	jirl	$r0,$r1,0

1c0016e4 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:9
1c0016e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0016e8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:10
1c0016ec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0016f0:	02bc10c6 	addi.w	$r6,$r6,-252(0xf04)
1c0016f4:	02802805 	addi.w	$r5,$r0,10(0xa)
1c0016f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0016fc:	02acd084 	addi.w	$r4,$r4,-1228(0xb34)
1c001700:	57fb93ff 	bl	-1136(0xffffb90) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:11
1c001704:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001708:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00170c:	03808084 	ori	$r4,$r4,0x20
1c001710:	57fdbfff 	bl	-580(0xffffdbc) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:12
1c001714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001718:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00171c:	4c000020 	jirl	$r0,$r1,0

1c001720 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:14
1c001720:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001724:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:15
1c001728:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00172c:	02bac0c6 	addi.w	$r6,$r6,-336(0xeb0)
1c001730:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c001734:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001738:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c00173c:	57fb57ff 	bl	-1196(0xffffb54) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:16
1c001740:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001744:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001748:	03808084 	ori	$r4,$r4,0x20
1c00174c:	57fd83ff 	bl	-640(0xffffd80) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:17
1c001750:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001754:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001758:	4c000020 	jirl	$r0,$r1,0

1c00175c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:19
1c00175c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001760:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:20
1c001764:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001768:	02b970c6 	addi.w	$r6,$r6,-420(0xe5c)
1c00176c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001770:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001774:	02aaf084 	addi.w	$r4,$r4,-1348(0xabc)
1c001778:	57fb1bff 	bl	-1256(0xffffb18) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:21
1c00177c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001780:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001784:	03808084 	ori	$r4,$r4,0x20
1c001788:	57fd47ff 	bl	-700(0xffffd44) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:22
1c00178c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001790:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001794:	4c000020 	jirl	$r0,$r1,0

1c001798 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:24
1c001798:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00179c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:25
1c0017a0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0017a4:	02b820c6 	addi.w	$r6,$r6,-504(0xe08)
1c0017a8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0017ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0017b0:	02aa0084 	addi.w	$r4,$r4,-1408(0xa80)
1c0017b4:	57fadfff 	bl	-1316(0xffffadc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:26
1c0017b8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0017bc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0017c0:	03808084 	ori	$r4,$r4,0x20
1c0017c4:	57fd0bff 	bl	-760(0xffffd08) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:27
1c0017c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0017cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017d0:	4c000020 	jirl	$r0,$r1,0

1c0017d4 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:29
1c0017d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017d8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:30
1c0017dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0017e0:	02b6d0c6 	addi.w	$r6,$r6,-588(0xdb4)
1c0017e4:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c0017e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0017ec:	02a91084 	addi.w	$r4,$r4,-1468(0xa44)
1c0017f0:	57faa3ff 	bl	-1376(0xffffaa0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:31
1c0017f4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0017f8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0017fc:	03808084 	ori	$r4,$r4,0x20
1c001800:	57fccfff 	bl	-820(0xffffccc) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:32
1c001804:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001808:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00180c:	4c000020 	jirl	$r0,$r1,0

1c001810 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:34
1c001810:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001814:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:35
1c001818:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00181c:	02b580c6 	addi.w	$r6,$r6,-672(0xd60)
1c001820:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001824:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001828:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c00182c:	57fa67ff 	bl	-1436(0xffffa64) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:36
1c001830:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001834:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001838:	03808084 	ori	$r4,$r4,0x20
1c00183c:	57fc93ff 	bl	-880(0xffffc90) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:37
1c001840:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001844:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001848:	4c000020 	jirl	$r0,$r1,0

1c00184c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:39
1c00184c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001850:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:41
1c001854:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001858:	02b430c6 	addi.w	$r6,$r6,-756(0xd0c)
1c00185c:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c001860:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001864:	02a73084 	addi.w	$r4,$r4,-1588(0x9cc)
1c001868:	57fa2bff 	bl	-1496(0xffffa28) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:42
1c00186c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001870:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001874:	03808084 	ori	$r4,$r4,0x20
1c001878:	57fc57ff 	bl	-940(0xffffc54) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:43
1c00187c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001880:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001884:	4c000020 	jirl	$r0,$r1,0

1c001888 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:45
1c001888:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00188c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:46
1c001890:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001894:	02b2e0c6 	addi.w	$r6,$r6,-840(0xcb8)
1c001898:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c00189c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0018a0:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c0018a4:	57f9efff 	bl	-1556(0xffff9ec) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:47
1c0018a8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0018ac:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0018b0:	03808084 	ori	$r4,$r4,0x20
1c0018b4:	57fc1bff 	bl	-1000(0xffffc18) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:48
1c0018b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0018bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0018c0:	4c000020 	jirl	$r0,$r1,0

1c0018c4 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:50
1c0018c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0018c8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:52
1c0018cc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0018d0:	02b190c6 	addi.w	$r6,$r6,-924(0xc64)
1c0018d4:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c0018d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0018dc:	02a55084 	addi.w	$r4,$r4,-1708(0x954)
1c0018e0:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:53
1c0018e4:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0018e8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0018ec:	03808084 	ori	$r4,$r4,0x20
1c0018f0:	57fbdfff 	bl	-1060(0xffffbdc) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:54
1c0018f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0018f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0018fc:	4c000020 	jirl	$r0,$r1,0

1c001900 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:56
1c001900:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001904:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:58
1c001908:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00190c:	02b040c6 	addi.w	$r6,$r6,-1008(0xc10)
1c001910:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c001914:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001918:	02a46084 	addi.w	$r4,$r4,-1768(0x918)
1c00191c:	57f977ff 	bl	-1676(0xffff974) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:59
1c001920:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001924:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001928:	03808084 	ori	$r4,$r4,0x20
1c00192c:	57fba3ff 	bl	-1120(0xffffba0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:60
1c001930:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001934:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001938:	4c000020 	jirl	$r0,$r1,0

1c00193c <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:62
1c00193c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001940:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:64
1c001944:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001948:	02aef0c6 	addi.w	$r6,$r6,-1092(0xbbc)
1c00194c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001950:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001954:	02a37084 	addi.w	$r4,$r4,-1828(0x8dc)
1c001958:	57f93bff 	bl	-1736(0xffff938) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:65
1c00195c:	03a00005 	ori	$r5,$r0,0x800
1c001960:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001964:	03808084 	ori	$r4,$r4,0x20
1c001968:	57fb67ff 	bl	-1180(0xffffb64) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:66
1c00196c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001970:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001974:	4c000020 	jirl	$r0,$r1,0

1c001978 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:68
1c001978:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00197c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:69
1c001980:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001984:	02ada0c6 	addi.w	$r6,$r6,-1176(0xb68)
1c001988:	02811405 	addi.w	$r5,$r0,69(0x45)
1c00198c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001990:	02a28084 	addi.w	$r4,$r4,-1888(0x8a0)
1c001994:	57f8ffff 	bl	-1796(0xffff8fc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:70
1c001998:	14000025 	lu12i.w	$r5,1(0x1)
1c00199c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0019a0:	03808084 	ori	$r4,$r4,0x20
1c0019a4:	57fb2bff 	bl	-1240(0xffffb28) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:71
1c0019a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0019ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0019b0:	4c000020 	jirl	$r0,$r1,0

1c0019b4 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:73
1c0019b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0019b8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:74
1c0019bc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0019c0:	02ac50c6 	addi.w	$r6,$r6,-1260(0xb14)
1c0019c4:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0019c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0019cc:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c0019d0:	57f8c3ff 	bl	-1856(0xffff8c0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:75
1c0019d4:	14000045 	lu12i.w	$r5,2(0x2)
1c0019d8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0019dc:	03808084 	ori	$r4,$r4,0x20
1c0019e0:	57faefff 	bl	-1300(0xffffaec) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:76
1c0019e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0019e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0019ec:	4c000020 	jirl	$r0,$r1,0

1c0019f0 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:78
1c0019f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0019f4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:80
1c0019f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0019fc:	02ab00c6 	addi.w	$r6,$r6,-1344(0xac0)
1c001a00:	02814005 	addi.w	$r5,$r0,80(0x50)
1c001a04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a08:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c001a0c:	57f887ff 	bl	-1916(0xffff884) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:81
1c001a10:	14000085 	lu12i.w	$r5,4(0x4)
1c001a14:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001a18:	03808084 	ori	$r4,$r4,0x20
1c001a1c:	57fab3ff 	bl	-1360(0xffffab0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:82
1c001a20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001a24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001a28:	4c000020 	jirl	$r0,$r1,0

1c001a2c <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:84
1c001a2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a30:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:86
1c001a34:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001a38:	02a9b0c6 	addi.w	$r6,$r6,-1428(0xa6c)
1c001a3c:	02815805 	addi.w	$r5,$r0,86(0x56)
1c001a40:	1c000004 	pcaddu12i	$r4,0
1c001a44:	029fb084 	addi.w	$r4,$r4,2028(0x7ec)
1c001a48:	57f84bff 	bl	-1976(0xffff848) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:87
1c001a4c:	14000105 	lu12i.w	$r5,8(0x8)
1c001a50:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001a54:	03808084 	ori	$r4,$r4,0x20
1c001a58:	57fa77ff 	bl	-1420(0xffffa74) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:88
1c001a5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001a60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001a64:	4c000020 	jirl	$r0,$r1,0

1c001a68 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:91
1c001a68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a6c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:93
1c001a70:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001a74:	02a860c6 	addi.w	$r6,$r6,-1512(0xa18)
1c001a78:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c001a7c:	1c000004 	pcaddu12i	$r4,0
1c001a80:	029ec084 	addi.w	$r4,$r4,1968(0x7b0)
1c001a84:	57f80fff 	bl	-2036(0xffff80c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:94
1c001a88:	14000205 	lu12i.w	$r5,16(0x10)
1c001a8c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001a90:	03808084 	ori	$r4,$r4,0x20
1c001a94:	57fa3bff 	bl	-1480(0xffffa38) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:95
1c001a98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001a9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001aa0:	4c000020 	jirl	$r0,$r1,0

1c001aa4 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:97
1c001aa4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001aa8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:99
1c001aac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ab0:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c001ab4:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c001ab8:	1c000004 	pcaddu12i	$r4,0
1c001abc:	029dd084 	addi.w	$r4,$r4,1908(0x774)
1c001ac0:	57f7d3ff 	bl	-2096(0xffff7d0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:100
1c001ac4:	14000405 	lu12i.w	$r5,32(0x20)
1c001ac8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001acc:	03808084 	ori	$r4,$r4,0x20
1c001ad0:	57f9ffff 	bl	-1540(0xffff9fc) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:101
1c001ad4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ad8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001adc:	4c000020 	jirl	$r0,$r1,0

1c001ae0 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:103
1c001ae0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ae4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:105
1c001ae8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001aec:	02a5c0c6 	addi.w	$r6,$r6,-1680(0x970)
1c001af0:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c001af4:	1c000004 	pcaddu12i	$r4,0
1c001af8:	029ce084 	addi.w	$r4,$r4,1848(0x738)
1c001afc:	57f797ff 	bl	-2156(0xffff794) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:106
1c001b00:	14000805 	lu12i.w	$r5,64(0x40)
1c001b04:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001b08:	03808084 	ori	$r4,$r4,0x20
1c001b0c:	57f9c3ff 	bl	-1600(0xffff9c0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:107
1c001b10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b18:	4c000020 	jirl	$r0,$r1,0

1c001b1c <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:109
1c001b1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b20:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:111
1c001b24:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b28:	02a470c6 	addi.w	$r6,$r6,-1764(0x91c)
1c001b2c:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c001b30:	1c000004 	pcaddu12i	$r4,0
1c001b34:	029bf084 	addi.w	$r4,$r4,1788(0x6fc)
1c001b38:	57f75bff 	bl	-2216(0xffff758) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:112
1c001b3c:	14001005 	lu12i.w	$r5,128(0x80)
1c001b40:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001b44:	03808084 	ori	$r4,$r4,0x20
1c001b48:	57f987ff 	bl	-1660(0xffff984) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:113
1c001b4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b54:	4c000020 	jirl	$r0,$r1,0

1c001b58 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:115
1c001b58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b5c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:117
1c001b60:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b64:	02a320c6 	addi.w	$r6,$r6,-1848(0x8c8)
1c001b68:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c001b6c:	1c000004 	pcaddu12i	$r4,0
1c001b70:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c001b74:	57f71fff 	bl	-2276(0xffff71c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:118
1c001b78:	14002005 	lu12i.w	$r5,256(0x100)
1c001b7c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001b80:	03808084 	ori	$r4,$r4,0x20
1c001b84:	57f94bff 	bl	-1720(0xffff948) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:119
1c001b88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:121
1c001b94:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b98:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:122
1c001b9c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ba0:	02a1d0c6 	addi.w	$r6,$r6,-1932(0x874)
1c001ba4:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c001ba8:	1c000004 	pcaddu12i	$r4,0
1c001bac:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c001bb0:	57f6e3ff 	bl	-2336(0xffff6e0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:123
1c001bb4:	14004005 	lu12i.w	$r5,512(0x200)
1c001bb8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001bbc:	03808084 	ori	$r4,$r4,0x20
1c001bc0:	57f90fff 	bl	-1780(0xffff90c) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:124
1c001bc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bc8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bcc:	4c000020 	jirl	$r0,$r1,0

1c001bd0 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:126
1c001bd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bd4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:127
1c001bd8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001bdc:	02a080c6 	addi.w	$r6,$r6,-2016(0x820)
1c001be0:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c001be4:	1c000004 	pcaddu12i	$r4,0
1c001be8:	02992084 	addi.w	$r4,$r4,1608(0x648)
1c001bec:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:128
1c001bf0:	14008005 	lu12i.w	$r5,1024(0x400)
1c001bf4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001bf8:	03808084 	ori	$r4,$r4,0x20
1c001bfc:	57f8d3ff 	bl	-1840(0xffff8d0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:129
1c001c00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c08:	4c000020 	jirl	$r0,$r1,0

1c001c0c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:131
1c001c0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c10:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:133
1c001c14:	1c000006 	pcaddu12i	$r6,0
1c001c18:	029f30c6 	addi.w	$r6,$r6,1996(0x7cc)
1c001c1c:	02821405 	addi.w	$r5,$r0,133(0x85)
1c001c20:	1c000004 	pcaddu12i	$r4,0
1c001c24:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c001c28:	57f66bff 	bl	-2456(0xffff668) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:134
1c001c2c:	14010005 	lu12i.w	$r5,2048(0x800)
1c001c30:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c34:	03808084 	ori	$r4,$r4,0x20
1c001c38:	57f897ff 	bl	-1900(0xffff894) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:135
1c001c3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c44:	4c000020 	jirl	$r0,$r1,0

1c001c48 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:137
1c001c48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c4c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:139
1c001c50:	1c000006 	pcaddu12i	$r6,0
1c001c54:	029de0c6 	addi.w	$r6,$r6,1912(0x778)
1c001c58:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c001c5c:	1c000004 	pcaddu12i	$r4,0
1c001c60:	02974084 	addi.w	$r4,$r4,1488(0x5d0)
1c001c64:	57f62fff 	bl	-2516(0xffff62c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:140
1c001c68:	14020005 	lu12i.w	$r5,4096(0x1000)
1c001c6c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c70:	03808084 	ori	$r4,$r4,0x20
1c001c74:	57f85bff 	bl	-1960(0xffff858) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:141
1c001c78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c80:	4c000020 	jirl	$r0,$r1,0

1c001c84 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:143
1c001c84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c88:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:145
1c001c8c:	1c000006 	pcaddu12i	$r6,0
1c001c90:	029c90c6 	addi.w	$r6,$r6,1828(0x724)
1c001c94:	02824405 	addi.w	$r5,$r0,145(0x91)
1c001c98:	1c000004 	pcaddu12i	$r4,0
1c001c9c:	02965084 	addi.w	$r4,$r4,1428(0x594)
1c001ca0:	57f5f3ff 	bl	-2576(0xffff5f0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:146
1c001ca4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c001ca8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001cac:	03808084 	ori	$r4,$r4,0x20
1c001cb0:	57f81fff 	bl	-2020(0xffff81c) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:147
1c001cb4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cbc:	4c000020 	jirl	$r0,$r1,0

1c001cc0 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:149
1c001cc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cc4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:151
1c001cc8:	1c000006 	pcaddu12i	$r6,0
1c001ccc:	029b40c6 	addi.w	$r6,$r6,1744(0x6d0)
1c001cd0:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c001cd4:	1c000004 	pcaddu12i	$r4,0
1c001cd8:	02956084 	addi.w	$r4,$r4,1368(0x558)
1c001cdc:	57f5b7ff 	bl	-2636(0xffff5b4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:152
1c001ce0:	14080005 	lu12i.w	$r5,16384(0x4000)
1c001ce4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ce8:	03808084 	ori	$r4,$r4,0x20
1c001cec:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:153
1c001cf0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:155
1c001cfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d00:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:157
1c001d04:	1c000006 	pcaddu12i	$r6,0
1c001d08:	0299f0c6 	addi.w	$r6,$r6,1660(0x67c)
1c001d0c:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c001d10:	1c000004 	pcaddu12i	$r4,0
1c001d14:	02947084 	addi.w	$r4,$r4,1308(0x51c)
1c001d18:	57f57bff 	bl	-2696(0xffff578) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:158
1c001d1c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c001d20:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d24:	03808084 	ori	$r4,$r4,0x20
1c001d28:	57f7a7ff 	bl	-2140(0xffff7a4) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:159
1c001d2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d34:	4c000020 	jirl	$r0,$r1,0

1c001d38 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:161
1c001d38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d3c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:163
1c001d40:	1c000006 	pcaddu12i	$r6,0
1c001d44:	0298a0c6 	addi.w	$r6,$r6,1576(0x628)
1c001d48:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c001d4c:	1c000004 	pcaddu12i	$r4,0
1c001d50:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c001d54:	57f53fff 	bl	-2756(0xffff53c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:164
1c001d58:	14200005 	lu12i.w	$r5,65536(0x10000)
1c001d5c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d60:	03808084 	ori	$r4,$r4,0x20
1c001d64:	57f76bff 	bl	-2200(0xffff768) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:165
1c001d68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d70:	4c000020 	jirl	$r0,$r1,0

1c001d74 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:168
1c001d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d78:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:170
1c001d7c:	1c000006 	pcaddu12i	$r6,0
1c001d80:	029750c6 	addi.w	$r6,$r6,1492(0x5d4)
1c001d84:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c001d88:	1c000004 	pcaddu12i	$r4,0
1c001d8c:	02929084 	addi.w	$r4,$r4,1188(0x4a4)
1c001d90:	57f503ff 	bl	-2816(0xffff500) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:171
1c001d94:	14400005 	lu12i.w	$r5,131072(0x20000)
1c001d98:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d9c:	03808084 	ori	$r4,$r4,0x20
1c001da0:	57f72fff 	bl	-2260(0xffff72c) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:172
1c001da4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001da8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dac:	4c000020 	jirl	$r0,$r1,0

1c001db0 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:174
1c001db0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001db4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:176
1c001db8:	1c000006 	pcaddu12i	$r6,0
1c001dbc:	029600c6 	addi.w	$r6,$r6,1408(0x580)
1c001dc0:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c001dc4:	1c000004 	pcaddu12i	$r4,0
1c001dc8:	0291a084 	addi.w	$r4,$r4,1128(0x468)
1c001dcc:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:177
1c001dd0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c001dd4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001dd8:	03808084 	ori	$r4,$r4,0x20
1c001ddc:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:178
1c001de0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001de4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001de8:	4c000020 	jirl	$r0,$r1,0

1c001dec <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:180
1c001dec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001df0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:182
1c001df4:	1c000006 	pcaddu12i	$r6,0
1c001df8:	0294b0c6 	addi.w	$r6,$r6,1324(0x52c)
1c001dfc:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c001e00:	1c000004 	pcaddu12i	$r4,0
1c001e04:	0290b084 	addi.w	$r4,$r4,1068(0x42c)
1c001e08:	57f48bff 	bl	-2936(0xffff488) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:183
1c001e0c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c001e10:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e14:	03808084 	ori	$r4,$r4,0x20
1c001e18:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c0014cc <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:184
1c001e1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e24:	4c000020 	jirl	$r0,$r1,0

1c001e28 <ext_handler>:
ext_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:221
1c001e28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e30:	29802077 	st.w	$r23,$r3,8(0x8)
1c001e34:	29801078 	st.w	$r24,$r3,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:222
1c001e38:	157fd617 	lu12i.w	$r23,-262480(0xbfeb0)
1c001e3c:	0380f2ec 	ori	$r12,$r23,0x3c
1c001e40:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c001e44:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:226
1c001e48:	1c000006 	pcaddu12i	$r6,0
1c001e4c:	029330c6 	addi.w	$r6,$r6,1228(0x4cc)
1c001e50:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c001e54:	1c000004 	pcaddu12i	$r4,0
1c001e58:	028f6084 	addi.w	$r4,$r4,984(0x3d8)
1c001e5c:	57f437ff 	bl	-3020(0xffff434) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:227
1c001e60:	038082f7 	ori	$r23,$r23,0x20
1c001e64:	288032f8 	ld.w	$r24,$r23,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:228
1c001e68:	288002ec 	ld.w	$r12,$r23,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:229
1c001e6c:	0014b318 	and	$r24,$r24,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:230
1c001e70:	03400000 	andi	$r0,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232
1c001e74:	00150017 	move	$r23,$r0
1c001e78:	50000800 	b	8(0x8) # 1c001e80 <ext_handler+0x58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 2)
1c001e7c:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 1)
1c001e80:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001e84:	68002997 	bltu	$r12,$r23,40(0x28) # 1c001eac <ext_handler+0x84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:234
1c001e88:	0017df0c 	srl.w	$r12,$r24,$r23
1c001e8c:	0340058c 	andi	$r12,$r12,0x1
1c001e90:	43ffed9f 	beqz	$r12,-20(0x7fffec) # 1c001e7c <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:236
1c001e94:	1c00000c 	pcaddu12i	$r12,0
1c001e98:	029e318c 	addi.w	$r12,$r12,1932(0x78c)
1c001e9c:	0004b2ec 	alsl.w	$r12,$r23,$r12,0x2
1c001ea0:	2880018c 	ld.w	$r12,$r12,0
1c001ea4:	4c000181 	jirl	$r1,$r12,0
1c001ea8:	53ffd7ff 	b	-44(0xfffffd4) # 1c001e7c <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:239
1c001eac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001eb0:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001eb4:	28801078 	ld.w	$r24,$r3,4(0x4)
1c001eb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ebc:	4c000020 	jirl	$r0,$r1,0

1c001ec0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:271
1c001ec0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ec4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:273
1c001ec8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ecc:	0380f18d 	ori	$r13,$r12,0x3c
1c001ed0:	1400020e 	lu12i.w	$r14,16(0x10)
1c001ed4:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:274
1c001ed8:	0380118c 	ori	$r12,$r12,0x4
1c001edc:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:275
1c001ee0:	57f5ffff 	bl	-2564(0xffff5fc) # 1c0014dc <WDG_DogFeed>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:277
1c001ee4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ee8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001eec:	4c000020 	jirl	$r0,$r1,0

1c001ef0 <TOUCH>:
TOUCH():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:288
1c001ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ef4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:292
1c001ef8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c001efc:	0380118c 	ori	$r12,$r12,0x4
1c001f00:	28800185 	ld.w	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:293
1c001f04:	2880018d 	ld.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:294
1c001f08:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001f0c:	0380f1ad 	ori	$r13,$r13,0x3c
1c001f10:	1400040e 	lu12i.w	$r14,32(0x20)
1c001f14:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:295
1c001f18:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c001f1c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:296
1c001f20:	007bc0a5 	bstrpick.w	$r5,$r5,0x1b,0x10
1c001f24:	1c000004 	pcaddu12i	$r4,0
1c001f28:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c001f2c:	57f367ff 	bl	-3228(0xffff364) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:301
1c001f30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f38:	4c000020 	jirl	$r0,$r1,0

1c001f3c <UART2_INT>:
UART2_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:313
1c001f3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f40:	0380f18c 	ori	$r12,$r12,0x3c
1c001f44:	1400080d 	lu12i.w	$r13,64(0x40)
1c001f48:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:314
1c001f4c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c001f50:	0380098c 	ori	$r12,$r12,0x2
1c001f54:	2a00018c 	ld.bu	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:315
1c001f58:	4c000020 	jirl	$r0,$r1,0

1c001f5c <BAT_FAIL>:
BAT_FAIL():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:326
1c001f5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f60:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:327
1c001f64:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001f68:	038011ae 	ori	$r14,$r13,0x4
1c001f6c:	288001cc 	ld.w	$r12,$r14,0
1c001f70:	0077cd8c 	bstrpick.w	$r12,$r12,0x17,0x13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:328
1c001f74:	288001ce 	ld.w	$r14,$r14,0
1c001f78:	1401f00f 	lu12i.w	$r15,3968(0xf80)
1c001f7c:	0014bdce 	and	$r14,$r14,$r15
1c001f80:	0380f1ad 	ori	$r13,$r13,0x3c
1c001f84:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:329
1c001f88:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001f8c:	5800198d 	beq	$r12,$r13,24(0x18) # 1c001fa4 <BAT_FAIL+0x48>
1c001f90:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001f94:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c001fc0 <BAT_FAIL+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c001f98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fa0:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:331
1c001fa4:	1c000004 	pcaddu12i	$r4,0
1c001fa8:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c001fac:	57f2e7ff 	bl	-3356(0xffff2e4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:332
1c001fb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001fb4:	0380118c 	ori	$r12,$r12,0x4
1c001fb8:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:333
1c001fbc:	53ffdfff 	b	-36(0xfffffdc) # 1c001f98 <BAT_FAIL+0x3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:341
1c001fc0:	1c000004 	pcaddu12i	$r4,0
1c001fc4:	028b5084 	addi.w	$r4,$r4,724(0x2d4)
1c001fc8:	57f2cbff 	bl	-3384(0xffff2c8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:342
1c001fcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001fd0:	0380118c 	ori	$r12,$r12,0x4
1c001fd4:	2880018d 	ld.w	$r13,$r12,0
1c001fd8:	15fffeee 	lu12i.w	$r14,-9(0xffff7)
1c001fdc:	03bffdce 	ori	$r14,$r14,0xfff
1c001fe0:	0014b9ad 	and	$r13,$r13,$r14
1c001fe4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c001fe8:	53ffb3ff 	b	-80(0xfffffb0) # 1c001f98 <BAT_FAIL+0x3c>

1c001fec <intc_handler>:
intc_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:358
1c001fec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ff0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ff4:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:360
1c001ff8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001ffc:	0380158c 	ori	$r12,$r12,0x5
1c002000:	2a000197 	ld.bu	$r23,$r12,0
1c002004:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:362
1c002008:	034006ec 	andi	$r12,$r23,0x1
1c00200c:	44003580 	bnez	$r12,52(0x34) # 1c002040 <intc_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:370
1c002010:	034012ec 	andi	$r12,$r23,0x4
1c002014:	44005180 	bnez	$r12,80(0x50) # 1c002064 <intc_handler+0x78>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:378
1c002018:	034022f7 	andi	$r23,$r23,0x8
1c00201c:	440076e0 	bnez	$r23,116(0x74) # 1c002090 <intc_handler+0xa4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c002020:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002024:	03800d8c 	ori	$r12,$r12,0x3
1c002028:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00202c:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:387
1c002030:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002034:	28802077 	ld.w	$r23,$r3,8(0x8)
1c002038:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00203c:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:364
1c002040:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002044:	57f4afff 	bl	-2900(0xffff4ac) # 1c0014f0 <TIM_GetITStatus>
1c002048:	43ffc89f 	beqz	$r4,-56(0x7fffc8) # 1c002010 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:366
1c00204c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002050:	57f4bbff 	bl	-2888(0xffff4b8) # 1c001508 <TIM_ClearIT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:367
1c002054:	1c000004 	pcaddu12i	$r4,0
1c002058:	02899084 	addi.w	$r4,$r4,612(0x264)
1c00205c:	57f237ff 	bl	-3532(0xffff234) # 1c001290 <myprintf>
1c002060:	53ffb3ff 	b	-80(0xfffffb0) # 1c002010 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:372
1c002064:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002068:	2a000185 	ld.bu	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:373
1c00206c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
1c002070:	1c000004 	pcaddu12i	$r4,0
1c002074:	0289c084 	addi.w	$r4,$r4,624(0x270)
1c002078:	57f21bff 	bl	-3560(0xffff218) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:376
1c00207c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002080:	03800d8c 	ori	$r12,$r12,0x3
1c002084:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002088:	2900018d 	st.b	$r13,$r12,0
1c00208c:	53ff8fff 	b	-116(0xfffff8c) # 1c002018 <intc_handler+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:380
1c002090:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002094:	2a000184 	ld.bu	$r4,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:382
1c002098:	00678084 	bstrpick.w	$r4,$r4,0x7,0x0
1c00209c:	57f49bff 	bl	-2920(0xffff498) # 1c001534 <recv_dat_int>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:383
1c0020a0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0020a4:	03800d8c 	ori	$r12,$r12,0x3
1c0020a8:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0020ac:	2900018d 	st.b	$r13,$r12,0
1c0020b0:	53ff73ff 	b	-144(0xfffff70) # 1c002020 <intc_handler+0x34>

1c0020b4 <TIMER_HANDLER>:
TIMER_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:391
1c0020b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020b8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:392
1c0020bc:	57f407ff 	bl	-3068(0xffff404) # 1c0014c0 <Set_Timer_clear>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:393
1c0020c0:	1c000004 	pcaddu12i	$r4,0
1c0020c4:	0288d084 	addi.w	$r4,$r4,564(0x234)
1c0020c8:	57f1cbff 	bl	-3640(0xffff1c8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:394
1c0020cc:	57f3efff 	bl	-3092(0xffff3ec) # 1c0014b8 <Set_Timer_stop>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:395
1c0020d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020d8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0020dc <__FUNCTION__.1776-0x238>:
1c0020dc:	1c0013bc 	pcaddu12i	$r28,157(0x9d)
1c0020e0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020e4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020e8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020ec:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020f0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020f4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020f8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0020fc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002100:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002104:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002108:	1c0013cc 	pcaddu12i	$r12,158(0x9e)
1c00210c:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002110:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002114:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002118:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c00211c:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002120:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002124:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002128:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c00212c:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002130:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002134:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002138:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00213c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002140:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002144:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002148:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00214c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002150:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002154:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002158:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00215c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002160:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002164:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002168:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00216c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002170:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002174:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002178:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00217c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002180:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002184:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002188:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00218c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002190:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002194:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002198:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00219c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021a0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021a4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021a8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021ac:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021b0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021b4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021b8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021bc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021c0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021c4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021c8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021cc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021d0:	1c001384 	pcaddu12i	$r4,156(0x9c)
1c0021d4:	1c00131c 	pcaddu12i	$r28,152(0x98)
1c0021d8:	1c00134c 	pcaddu12i	$r12,154(0x9a)
1c0021dc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021e0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021e4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021e8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021ec:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021f0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021f4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021f8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0021fc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002200:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002204:	1c001368 	pcaddu12i	$r8,155(0x9b)
1c002208:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c00220c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002210:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002214:	1c001308 	pcaddu12i	$r8,152(0x98)
1c002218:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00221c:	1c001330 	pcaddu12i	$r16,153(0x99)
1c002220:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002224:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002228:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c00222c:	3c200a0d 	0x3c200a0d
1c002230:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c018e50 <_sidata+0x167b0>
1c002234:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c002238:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe429c <_start-0x1bd64>
1c00223c:	3a636e75 	0x3a636e75
1c002240:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c002244:	0a0d3e20 	0x0a0d3e20
1c002248:	00000000 	0x00000000
1c00224c:	2d2d2d0a 	0x2d2d2d0a
1c002250:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bff97bc <_start-0x6844>
1c002254:	746e4968 	0x746e4968
1c002258:	79654b3a 	0x79654b3a
1c00225c:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe83c4 <_start-0x17c3c>
1c002260:	3a6c656e 	0x3a6c656e
1c002264:	78257830 	0x78257830
1c002268:	0000000a 	0x0000000a
1c00226c:	2e2e2e0a 	0x2e2e2e0a
1c002270:	2e2e2e2e 	0x2e2e2e2e
1c002274:	2e2e2e2e 	0x2e2e2e2e
1c002278:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c3964a4 <_sidata+0x393e04>
1c00227c:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd168d8 <_start-0x2e9728>
1c002280:	2e2e4c49 	0x2e2e4c49
1c002284:	2e2e2e2e 	0x2e2e2e2e
1c002288:	2e2e2e2e 	0x2e2e2e2e
1c00228c:	2e2e2e2e 	0x2e2e2e2e
1c002290:	00000d0a 	0x00000d0a
1c002294:	2e2e2e0a 	0x2e2e2e0a
1c002298:	2e2e2e2e 	0x2e2e2e2e
1c00229c:	2e2e2e2e 	0x2e2e2e2e
1c0022a0:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c3863cc <_sidata+0x383d2c>
1c0022a4:	2e2e2e43 	0x2e2e2e43
1c0022a8:	2e2e2e2e 	0x2e2e2e2e
1c0022ac:	2e2e2e2e 	0x2e2e2e2e
1c0022b0:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0022b4:	0000000d 	0x0000000d
1c0022b8:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c01951c <_sidata+0x16e7c>
1c0022bc:	72656870 	0x72656870
1c0022c0:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c0022c4:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01902c <_sidata+0x1698c>
1c0022c8:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c0085e8 <_sidata+0x5f48>
1c0022cc:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0022d0:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01973c <_sidata+0x1709c>
1c0022d4:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0022d8:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c0022dc:	00000000 	0x00000000
1c0022e0:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c0022e4:	65722031 	bge	$r1,$r17,94752(0x17220) # 1c019504 <_sidata+0x16e64>
1c0022e8:	303a7663 	0x303a7663
1c0022ec:	0a782578 	0x0a782578
1c0022f0:	00000000 	0x00000000
1c0022f4:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019560 <_sidata+0x16ec0>
1c0022f8:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c018c4c <_sidata+0x165ac>
1c0022fc:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff436c <_start-0xbc94>
1c002300:	7261656c 	0x7261656c
1c002304:	746e6920 	0x746e6920
1c002308:	75727265 	0x75727265
1c00230c:	2e2e7470 	0x2e2e7470
1c002310:	0000000a 	0x0000000a

1c002314 <__FUNCTION__.1776>:
1c002314:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bff978c <_start-0x6874>
1c002318:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009178 <_sidata+0x6ad8>
1c00231c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002320 <__FUNCTION__.1767>:
1c002320:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019798 <_sidata+0x170f8>
1c002324:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019388 <_sidata+0x16ce8>
1c002328:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff5a8c <_start-0xa574>
1c00232c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff949c <_start-0x6b64>
1c002330:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009190 <_sidata+0x6af0>
1c002334:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002338 <__FUNCTION__.1763>:
1c002338:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0197b0 <_sidata+0x17110>
1c00233c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0193a0 <_sidata+0x16d00>
1c002340:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff59a4 <_start-0xa65c>
1c002344:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff94b4 <_start-0x6b4c>
1c002348:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0091a8 <_sidata+0x6b08>
1c00234c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002350 <__FUNCTION__.1759>:
1c002350:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0197c8 <_sidata+0x17128>
1c002354:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0193b8 <_sidata+0x16d18>
1c002358:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff58bc <_start-0xa744>
1c00235c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff94cc <_start-0x6b34>
1c002360:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0091c0 <_sidata+0x6b20>
1c002364:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002368 <__FUNCTION__.1755>:
1c002368:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0197e0 <_sidata+0x17140>
1c00236c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0193d0 <_sidata+0x16d30>
1c002370:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff57d4 <_start-0xa82c>
1c002374:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff94e4 <_start-0x6b1c>
1c002378:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0091d8 <_sidata+0x6b38>
1c00237c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002380 <__FUNCTION__.1751>:
1c002380:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0197f8 <_sidata+0x17158>
1c002384:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0193e8 <_sidata+0x16d48>
1c002388:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff56ec <_start-0xa914>
1c00238c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff94fc <_start-0x6b04>
1c002390:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0091f0 <_sidata+0x6b50>
1c002394:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002398 <__FUNCTION__.1747>:
1c002398:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019810 <_sidata+0x17170>
1c00239c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019400 <_sidata+0x16d60>
1c0023a0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff5604 <_start-0xa9fc>
1c0023a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9514 <_start-0x6aec>
1c0023a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009208 <_sidata+0x6b68>
1c0023ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0023b0 <__FUNCTION__.1743>:
1c0023b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019828 <_sidata+0x17188>
1c0023b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019418 <_sidata+0x16d78>
1c0023b8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff551c <_start-0xaae4>
1c0023bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff952c <_start-0x6ad4>
1c0023c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009220 <_sidata+0x6b80>
1c0023c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0023c8 <__FUNCTION__.1739>:
1c0023c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019840 <_sidata+0x171a0>
1c0023cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019430 <_sidata+0x16d90>
1c0023d0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5434 <_start-0xabcc>
1c0023d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9544 <_start-0x6abc>
1c0023d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009238 <_sidata+0x6b98>
1c0023dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0023e0 <__FUNCTION__.1735>:
1c0023e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019858 <_sidata+0x171b8>
1c0023e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019448 <_sidata+0x16da8>
1c0023e8:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff5b48 <_start-0xa4b8>
1c0023ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff955c <_start-0x6aa4>
1c0023f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009250 <_sidata+0x6bb0>
1c0023f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0023f8 <__FUNCTION__.1731>:
1c0023f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019870 <_sidata+0x171d0>
1c0023fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019460 <_sidata+0x16dc0>
1c002400:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff5a60 <_start-0xa5a0>
1c002404:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9574 <_start-0x6a8c>
1c002408:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009268 <_sidata+0x6bc8>
1c00240c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002410 <__FUNCTION__.1727>:
1c002410:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019888 <_sidata+0x171e8>
1c002414:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019478 <_sidata+0x16dd8>
1c002418:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff5978 <_start-0xa688>
1c00241c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff958c <_start-0x6a74>
1c002420:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009280 <_sidata+0x6be0>
1c002424:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002428 <__FUNCTION__.1723>:
1c002428:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0198a0 <_sidata+0x17200>
1c00242c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019490 <_sidata+0x16df0>
1c002430:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff5890 <_start-0xa770>
1c002434:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff95a4 <_start-0x6a5c>
1c002438:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009298 <_sidata+0x6bf8>
1c00243c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002440 <__FUNCTION__.1719>:
1c002440:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0198b8 <_sidata+0x17218>
1c002444:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0194a8 <_sidata+0x16e08>
1c002448:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff57a8 <_start-0xa858>
1c00244c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff95bc <_start-0x6a44>
1c002450:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0092b0 <_sidata+0x6c10>
1c002454:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002458 <__FUNCTION__.1715>:
1c002458:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0198d0 <_sidata+0x17230>
1c00245c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0194c0 <_sidata+0x16e20>
1c002460:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff56c0 <_start-0xa940>
1c002464:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff95d4 <_start-0x6a2c>
1c002468:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0092c8 <_sidata+0x6c28>
1c00246c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002470 <__FUNCTION__.1711>:
1c002470:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0198e8 <_sidata+0x17248>
1c002474:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0194d8 <_sidata+0x16e38>
1c002478:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff55d8 <_start-0xaa28>
1c00247c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff95ec <_start-0x6a14>
1c002480:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0092e0 <_sidata+0x6c40>
1c002484:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002488 <__FUNCTION__.1707>:
1c002488:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019900 <_sidata+0x17260>
1c00248c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0194f0 <_sidata+0x16e50>
1c002490:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff54f0 <_start-0xab10>
1c002494:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9604 <_start-0x69fc>
1c002498:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0092f8 <_sidata+0x6c58>
1c00249c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0024a0 <__FUNCTION__.1703>:
1c0024a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019918 <_sidata+0x17278>
1c0024a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019508 <_sidata+0x16e68>
1c0024a8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff5c08 <_start-0xa3f8>
1c0024ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff961c <_start-0x69e4>
1c0024b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009310 <_sidata+0x6c70>
1c0024b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0024b8 <__FUNCTION__.1699>:
1c0024b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019930 <_sidata+0x17290>
1c0024bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019520 <_sidata+0x16e80>
1c0024c0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff5b20 <_start-0xa4e0>
1c0024c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9634 <_start-0x69cc>
1c0024c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009328 <_sidata+0x6c88>
1c0024cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0024d0 <__FUNCTION__.1695>:
1c0024d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019948 <_sidata+0x172a8>
1c0024d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019538 <_sidata+0x16e98>
1c0024d8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff5a38 <_start-0xa5c8>
1c0024dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff964c <_start-0x69b4>
1c0024e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009340 <_sidata+0x6ca0>
1c0024e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0024e8 <__FUNCTION__.1691>:
1c0024e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019960 <_sidata+0x172c0>
1c0024ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019550 <_sidata+0x16eb0>
1c0024f0:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff5950 <_start-0xa6b0>
1c0024f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9664 <_start-0x699c>
1c0024f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009358 <_sidata+0x6cb8>
1c0024fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002500 <__FUNCTION__.1687>:
1c002500:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019978 <_sidata+0x172d8>
1c002504:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019568 <_sidata+0x16ec8>
1c002508:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5868 <_start-0xa798>
1c00250c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff967c <_start-0x6984>
1c002510:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009370 <_sidata+0x6cd0>
1c002514:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002518 <__FUNCTION__.1683>:
1c002518:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019990 <_sidata+0x172f0>
1c00251c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019580 <_sidata+0x16ee0>
1c002520:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5780 <_start-0xa880>
1c002524:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9694 <_start-0x696c>
1c002528:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009388 <_sidata+0x6ce8>
1c00252c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002530 <__FUNCTION__.1679>:
1c002530:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0199a8 <_sidata+0x17308>
1c002534:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019598 <_sidata+0x16ef8>
1c002538:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5698 <_start-0xa968>
1c00253c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff96ac <_start-0x6954>
1c002540:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0093a0 <_sidata+0x6d00>
1c002544:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002548 <__FUNCTION__.1675>:
1c002548:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0199c0 <_sidata+0x17320>
1c00254c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0195b0 <_sidata+0x16f10>
1c002550:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff55b0 <_start-0xaa50>
1c002554:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff96c4 <_start-0x693c>
1c002558:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0093b8 <_sidata+0x6d18>
1c00255c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002560 <__FUNCTION__.1671>:
1c002560:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0199d8 <_sidata+0x17338>
1c002564:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0195c8 <_sidata+0x16f28>
1c002568:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff5cc8 <_start-0xa338>
1c00256c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff96dc <_start-0x6924>
1c002570:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0093d0 <_sidata+0x6d30>
1c002574:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002578 <__FUNCTION__.1667>:
1c002578:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0199f0 <_sidata+0x17350>
1c00257c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0195e0 <_sidata+0x16f40>
1c002580:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff5be0 <_start-0xa420>
1c002584:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff96f4 <_start-0x690c>
1c002588:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0093e8 <_sidata+0x6d48>
1c00258c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002590 <__FUNCTION__.1663>:
1c002590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a08 <_sidata+0x17368>
1c002594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0195f8 <_sidata+0x16f58>
1c002598:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff5af8 <_start-0xa508>
1c00259c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff970c <_start-0x68f4>
1c0025a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009400 <_sidata+0x6d60>
1c0025a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0025a8 <__FUNCTION__.1659>:
1c0025a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a20 <_sidata+0x17380>
1c0025ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019610 <_sidata+0x16f70>
1c0025b0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff5a10 <_start-0xa5f0>
1c0025b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9724 <_start-0x68dc>
1c0025b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009418 <_sidata+0x6d78>
1c0025bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0025c0 <__FUNCTION__.1655>:
1c0025c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a38 <_sidata+0x17398>
1c0025c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019628 <_sidata+0x16f88>
1c0025c8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff5928 <_start-0xa6d8>
1c0025cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff973c <_start-0x68c4>
1c0025d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009430 <_sidata+0x6d90>
1c0025d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0025d8 <__FUNCTION__.1651>:
1c0025d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a50 <_sidata+0x173b0>
1c0025dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019640 <_sidata+0x16fa0>
1c0025e0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5840 <_start-0xa7c0>
1c0025e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9754 <_start-0x68ac>
1c0025e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009448 <_sidata+0x6da8>
1c0025ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0025f0 <__FUNCTION__.1647>:
1c0025f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a68 <_sidata+0x173c8>
1c0025f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019658 <_sidata+0x16fb8>
1c0025f8:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5758 <_start-0xa8a8>
1c0025fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff976c <_start-0x6894>
1c002600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009460 <_sidata+0x6dc0>
1c002604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002608 <__FUNCTION__.1643>:
1c002608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019a80 <_sidata+0x173e0>
1c00260c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019670 <_sidata+0x16fd0>
1c002610:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5670 <_start-0xa990>
1c002614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9784 <_start-0x687c>
1c002618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009478 <_sidata+0x6dd8>
1c00261c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002620 <Ext_IrqHandle>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:61
1c002620:	1c0016a8 	pcaddu12i	$r8,181(0xb5)
1c002624:	1c0016e4 	pcaddu12i	$r4,183(0xb7)
1c002628:	1c001720 	pcaddu12i	$r0,185(0xb9)
1c00262c:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c002630:	1c001798 	pcaddu12i	$r24,188(0xbc)
1c002634:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
1c002638:	1c001810 	pcaddu12i	$r16,192(0xc0)
1c00263c:	1c00184c 	pcaddu12i	$r12,194(0xc2)
1c002640:	1c001888 	pcaddu12i	$r8,196(0xc4)
1c002644:	1c0018c4 	pcaddu12i	$r4,198(0xc6)
1c002648:	1c001900 	pcaddu12i	$r0,200(0xc8)
1c00264c:	1c00193c 	pcaddu12i	$r28,201(0xc9)
1c002650:	1c001978 	pcaddu12i	$r24,203(0xcb)
1c002654:	1c0019b4 	pcaddu12i	$r20,205(0xcd)
1c002658:	1c0019f0 	pcaddu12i	$r16,207(0xcf)
1c00265c:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
1c002660:	1c001a68 	pcaddu12i	$r8,211(0xd3)
1c002664:	1c001aa4 	pcaddu12i	$r4,213(0xd5)
1c002668:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
1c00266c:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
1c002670:	1c001b58 	pcaddu12i	$r24,218(0xda)
1c002674:	1c001b94 	pcaddu12i	$r20,220(0xdc)
1c002678:	1c001bd0 	pcaddu12i	$r16,222(0xde)
1c00267c:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
1c002680:	1c001c48 	pcaddu12i	$r8,226(0xe2)
1c002684:	1c001c84 	pcaddu12i	$r4,228(0xe4)
1c002688:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
1c00268c:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
1c002690:	1c001d38 	pcaddu12i	$r24,233(0xe9)
1c002694:	1c001d74 	pcaddu12i	$r20,235(0xeb)
1c002698:	1c001db0 	pcaddu12i	$r16,237(0xed)
1c00269c:	1c001dec 	pcaddu12i	$r12,239(0xef)

Disassembly of section .bss.g_recvBuff:

80000000 <g_recvBuff>:
	...

Disassembly of section .bss.g_recv_flag:

80000014 <g_recv_flag>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:14
80000014:	00000000 	0x00000000

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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 1)
      34:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 164a0 <_start-0x1bfe9b60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      38:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff6f84 <_RAM_DATA+0x7fff5f84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      3c:	7241676e 	0x7241676e
      40:	505f6863 	b	25976680(0x18c5f68) # 18c5fa8 <_start-0x1a73a058>
      44:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 163b0 <_start-0x1bfe9c50>
      48:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe69b8 <_RAM_DATA+0x7ffe59b8>
      4c:	79535f67 	0x79535f67
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 165c4 <_start-0x1bfe9a3c>
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
      54:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      58:	732f3230 	0x732f3230
test_uart_send():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      5c:	732f6372 	0x732f6372
TIM_Init():
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
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49
      7c:	011b031c 	0x011b031c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
      80:	4b834c4b 	bceqz	$fcc2,3113804(0x2f834c) # 2f83cc <_start-0x1bd07c34>
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
      d0:	000008c4 	0x000008c4
      d4:	02220002 	slti	$r2,$r0,-1920(0x880)
      d8:	01010000 	fadd.d	$f0,$f0,$f0
      dc:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	01010101 	fadd.d	$f1,$f8,$f0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	01000000 	0x01000000
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
      e8:	44010000 	bnez	$r0,256(0x100) # 1e8 <_start-0x1bfffe18>
      ec:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
      f0:	2f737265 	0x2f737265
      f4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff6f54 <_RAM_DATA+0x7fff5f54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
      f8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4524 <_RAM_DATA+0x7fff3524>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
      fc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 16e70 <_start-0x1bfe9190>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
     100:	2f73746e 	0x2f73746e
     104:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16570 <_start-0x1bfe9a90>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
     108:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7054 <_RAM_DATA+0x7fff6054>
     10c:	7241676e 	0x7241676e
     110:	505f6863 	b	25976680(0x18c5f68) # 18c6078 <_start-0x1a739f88>
     114:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16480 <_start-0x1bfe9b80>
     118:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe6a88 <_RAM_DATA+0x7ffe5a88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
     11c:	79535f67 	0x79535f67
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
     120:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16694 <_start-0x1bfe996c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 1)
     124:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     128:	732f3230 	0x732f3230
     12c:	732f6372 	0x732f6372
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     130:	75702f77 	0x75702f77
     134:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff6aa0 <_RAM_DATA+0x7fff5aa0>
     138:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 3b9c <_start-0x1bffc464>
     13c:	72657375 	0x72657375
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     140:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1789c <_start-0x1bfe8764>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     144:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 74a8 <_start-0x1bff8b58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
     148:	75636f64 	0x75636f64
     14c:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     150:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff64ac <_RAM_DATA+0x7fff54ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
     154:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 5db8 <_start-0x1bffa248>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:245
     158:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff6fc4 <_RAM_DATA+0x7fff5fc4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246
     15c:	68637261 	bltu	$r19,$r1,25456(0x6370) # 64cc <_start-0x1bff9b34>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
     160:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff73d0 <_RAM_DATA+0x7fff63d0>
     164:	73736563 	0x73736563
     168:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff68d4 <_RAM_DATA+0x7fff58d4>
     16c:	74737973 	xvmin.w	$xr19,$xr11,$xr30
     170:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     174:	32303163 	0x32303163
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
     178:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff73e8 <_RAM_DATA+0x7fff63e8>
     17c:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 78ec <_start-0x1bff8714>
     180:	6469616c 	bge	$r11,$r12,26976(0x6960) # 6ae0 <_start-0x1bff9520>
     184:	75625c65 	0x75625c65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     188:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     18c:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 6df8 <_start-0x1bff9208>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     190:	3233616c 	0x3233616c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     194:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7108 <_RAM_DATA+0x7fff6108>
     198:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff6df4 <_RAM_DATA+0x7fff5df4>
     19c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 16908 <_start-0x1bfe96f8>
     1a0:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
     1a4:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 16fd0 <_start-0x1bfe9030>
     1a8:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe6b14 <_RAM_DATA+0x7ffe5b14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     1ac:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe6e10 <_RAM_DATA+0x7ffe5e10>
     1b0:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff7018 <_RAM_DATA+0x7fff6018>
     1b4:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16628 <_start-0x1bfe99d8>
     1b8:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff6324 <_RAM_DATA+0x7fff5324>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     1bc:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 17024 <_start-0x1bfe8fdc>
     1c0:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 3c24 <_start-0x1bffc3dc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
     1c4:	72657375 	0x72657375
     1c8:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 17924 <_start-0x1bfe86dc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257
     1cc:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 7530 <_start-0x1bff8ad0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
     1d0:	75636f64 	0x75636f64
     1d4:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
     1d8:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff6534 <_RAM_DATA+0x7fff5534>
     1dc:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 5e40 <_start-0x1bffa1c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 2)
     1e0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff704c <_RAM_DATA+0x7fff604c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
     1e4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6554 <_start-0x1bff9aac>
     1e8:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff7458 <_RAM_DATA+0x7fff6458>
     1ec:	73736563 	0x73736563
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
     1f0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff695c <_RAM_DATA+0x7fff595c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
     1f4:	74737973 	xvmin.w	$xr19,$xr11,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
     1f8:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     1fc:	32303163 	0x32303163
     200:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff7470 <_RAM_DATA+0x7fff6470>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     204:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 7974 <_start-0x1bff868c>
     208:	6469616c 	bge	$r11,$r12,26976(0x6960) # 6b68 <_start-0x1bff9498>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
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
     430:	3b031c00 	0x3b031c00
     434:	05010601 	0x05010601
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	3d080602 	0x3d080602
     43c:	06070513 	cacop	0x13,$r8,449(0x1c1)
     440:	00110501 	sub.w	$r1,$r8,$r1
     444:	06010402 	cacop	0x2,$r0,65(0x41)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	8303054c 	0x8303054c
     44c:	06040583 	cacop	0x3,$r12,257(0x101)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	460a0501 	bnez	$r8,395780(0x60a04) # 60e54 <_start-0x1bf9f1ac>
     454:	054a0705 	0x054a0705
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	054c0603 	0x054c0603
     45c:	05010605 	0x05010605
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	05bf0602 	0x05bf0602
     464:	ba130601 	0xba130601
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	0008024a 	bytepick.w	$r10,$r18,$r0,0x0
     46c:	01050101 	fmul.d	$f1,$f8,$f0
     470:	90020500 	0x90020500
     474:	031c0012 	lu52i.d	$r18,$r0,1792(0x700)
     478:	060100c8 	cacop	0x8,$r6,64(0x40)
     47c:	06020501 	cacop	0x1,$r8,129(0x81)
     480:	13133802 	addu16i.d	$r2,$r0,-15154(0xc4ce)
     484:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	07051383 	0x07051383
     48c:	02050106 	slti	$r6,$r8,320(0x140)
     490:	4f05054a 	jirl	$r10,$r10,-64252(0x30504)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	4c060905 	jirl	$r5,$r8,1544(0x608)
     498:	01061305 	0x01061305
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	f2820905 	0xf2820905
     4a0:	08061105 	0x08061105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	1405833f 	lu12i.w	$r31,11289(0x2c19)
     4a8:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     4ac:	12054b06 	addu16i.d	$r6,$r24,-32430(0x8152)
     4b0:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     4b4:	834c4b06 	0x834c4b06
     4b8:	01061405 	0x01061405
     4bc:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170acc <_start-0x1be8f534>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	01061205 	0x01061205
     4c4:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170ad4 <_start-0x1be8f52c>
     4c8:	1405f34c 	lu12i.w	$r12,12186(0x2f9a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	12054b06 	addu16i.d	$r6,$r24,-32430(0x8152)
     4d4:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	f34c4b06 	0xf34c4b06
     4dc:	01061405 	0x01061405
     4e0:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170af0 <_start-0x1be8f510>
     4e4:	01061205 	0x01061205
     4e8:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170af8 <_start-0x1be8f508>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	1405f34c 	lu12i.w	$r12,12186(0x2f9a)
     4f0:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     4f4:	12054b06 	addu16i.d	$r6,$r24,-32430(0x8152)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     4fc:	f34c4b06 	0xf34c4b06
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	01061405 	0x01061405
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170b14 <_start-0x1be8f4ec>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	01061205 	0x01061205
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170b1c <_start-0x1be8f4e4>
     510:	1405f34d 	lu12i.w	$r13,12186(0x2f9a)
     514:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     518:	12054b06 	addu16i.d	$r6,$r24,-32430(0x8152)
     51c:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	834c4b06 	0x834c4b06
     524:	01061205 	0x01061205
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170b38 <_start-0x1be8f4c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	0612054c 	cacop	0xc,$r10,1153(0x481)
     530:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	0616054b 	cacop	0xb,$r10,1409(0x581)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	001c0501 	mul.w	$r1,$r8,$r1
     53c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0640 <_start-0x1bf5f9c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	02002605 	slti	$r5,$r16,9(0x9)
     544:	05820104 	0x05820104
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	04020011 	csrrd	$r17,0x80
     54c:	12058201 	addu16i.d	$r1,$r16,-32416(0x8160)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     554:	15058306 	lu12i.w	$r6,-513000(0x82c18)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     55c:	22050106 	ll.d	$r6,$r8,1280(0x500)
     560:	03040200 	lu52i.d	$r0,$r16,256(0x100)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	00130582 	maskeqz	$r2,$r12,$r1
     568:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a086c <_start-0x1bf5f794>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	02003805 	slti	$r5,$r0,14(0xe)
     570:	00490304 	srai.d	$r4,$r24,0x0
     574:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a0878 <_start-0x1bf5f788>
     578:	054f1605 	0x054f1605
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	0402001c 	csrrd	$r28,0x80
     580:	26054a01 	ldptr.d	$r1,$r16,1352(0x548)
     584:	01040200 	0x01040200
     588:	00110582 	sub.w	$r2,$r12,$r1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	82010402 	0x82010402
     590:	02001205 	slti	$r5,$r16,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	83060304 	0x83060304
     598:	02001505 	slti	$r5,$r8,5(0x5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	01060304 	0x01060304
     5a0:	02002205 	slti	$r5,$r16,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	05820304 	0x05820304
     5a8:	04020013 	csrrd	$r19,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	38054a03 	0x38054a03
     5b0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     5b4:	04020049 	csrxchg	$r9,$r2,0x80
     5b8:	12054a03 	addu16i.d	$r3,$r16,-32430(0x8152)
     5bc:	11054d06 	addu16i.d	$r6,$r8,16723(0x4153)
     5c0:	15058315 	lu12i.w	$r21,-513000(0x82c18)
     5c4:	01040200 	0x01040200
     5c8:	8309054e 	0x8309054e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	02001205 	slti	$r5,$r16,4(0x4)
     5d0:	03060204 	lu52i.d	$r4,$r16,384(0x180)
     5d4:	05827fbc 	0x05827fbc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	0402000d 	csrrd	$r13,0x80
     5dc:	02054a01 	slti	$r1,$r16,338(0x152)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	01040200 	0x01040200
     5e4:	06030582 	cacop	0x2,$r12,193(0xc1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	1306054c 	addu16i.d	$r12,$r10,-15999(0xc181)
     5ec:	01060805 	0x01060805
     5f0:	03060905 	lu52i.d	$r5,$r8,386(0x182)
     5f4:	058200c0 	0x058200c0
     5f8:	0501060b 	0x0501060b
     5fc:	05be0605 	0x05be0605
     600:	f2140601 	0xf2140601
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	08024a4a 	0x08024a4a
     608:	05010100 	0x05010100
     60c:	02050001 	slti	$r1,$r0,320(0x140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	00000000 	0x00000000
     614:	0501061a 	0x0501061a
     618:	ad080605 	0xad080605
     61c:	060c0513 	cacop	0x13,$r8,769(0x301)
     620:	00050501 	alsl.w	$r1,$r8,$r1,0x3
     624:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0728 <_start-0x1bf5f8d8>
     628:	02000a05 	slti	$r5,$r16,2(0x2)
     62c:	4c060304 	jirl	$r4,$r24,1536(0x600)
     630:	02001b05 	slti	$r5,$r24,6(0x6)
     634:	08060304 	0x08060304
     638:	0402003a 	csrwr	$r26,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	05054a03 	0x05054a03
     640:	01054e06 	fmul.d	$f6,$f16,$f19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	4a82bb06 	0x4a82bb06
     648:	0008024a 	bytepick.w	$r10,$r18,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	01050101 	fmul.d	$f1,$f8,$f0
     650:	00020500 	0x00020500
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	03000000 	lu52i.d	$r0,$r0,0
     658:	0601019c 	cacop	0x1c,$r12,64(0x40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	06050501 	cacop	0x1,$r8,321(0x141)
     660:	1405ad08 	lu12i.w	$r8,11624(0x2d68)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	4a4a0106 	bcnez	$fcc0,1722880(0x1a4a00) # 1a5064 <_start-0x1be5af9c>
     668:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 170c6c <_start-0x1be8f394>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	4b068206 	0x4b068206
     670:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     674:	024a4aba 	sltui	$r26,$r21,658(0x292)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	01010008 	fadd.d	$f8,$f0,$f0
     67c:	05000105 	0x05000105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	00000002 	0x00000002
     684:	01a20300 	0x01a20300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	01060c05 	0x01060c05
     690:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 170c94 <_start-0x1be8f36c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     698:	0004024a 	alsl.w	$r10,$r18,$r0,0x1
     69c:	01050101 	fmul.d	$f1,$f8,$f0
     6a0:	00020500 	0x00020500
     6a4:	03000000 	lu52i.d	$r0,$r0,0
     6a8:	060101a8 	cacop	0x8,$r13,64(0x40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	06050501 	cacop	0x1,$r8,321(0x141)
     6b0:	1313e508 	addu16i.d	$r8,$r8,-15111(0xc4f9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	07051313 	0x07051313
     6b8:	0d050106 	0x0d050106
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	01040200 	0x01040200
     6c0:	0609054a 	cacop	0xa,$r10,577(0x241)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	060f0550 	cacop	0x10,$r10,961(0x3c1)
     6c8:	06050501 	cacop	0x1,$r8,321(0x141)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	060b054c 	cacop	0xc,$r10,705(0x2c1)
     6d0:	00050501 	alsl.w	$r1,$r8,$r1,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a07d8 <_start-0x1bf5f828>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	02000905 	slti	$r5,$r8,2(0x2)
     6dc:	4c060304 	jirl	$r4,$r24,1536(0x600)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	02001805 	slti	$r5,$r0,6(0x6)
     6e4:	01060304 	0x01060304
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	02001005 	slti	$r5,$r0,4(0x4)
     6ec:	05ba0304 	0x05ba0304
     6f0:	04020009 	csrrd	$r9,0x80
     6f4:	05bb0603 	0x05bb0603
     6f8:	0402000f 	csrrd	$r15,0x80
     6fc:	05010603 	0x05010603
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	04020018 	csrrd	$r24,0x80
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	0200ef03 	slti	$r3,$r24,59(0x3b)
     708:	054a0304 	0x054a0304
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	7a030609 	0x7a030609
     710:	0611054a 	cacop	0xa,$r10,1089(0x441)
     714:	06090501 	cacop	0x1,$r8,577(0x241)
     718:	060f054b 	cacop	0xb,$r10,961(0x3c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	0d054a01 	0x0d054a01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	0605054a 	cacop	0xa,$r10,321(0x141)
     724:	054a0a03 	0x054a0a03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	8201060b 	0x8201060b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	4a05054a 	bcnez	$fcc2,2753796(0x2a0504) # 2a0c30 <_start-0x1bd5f3d0>
     730:	054c1705 	0x054c1705
     734:	0402002b 	csrwr	$r11,0x80
     738:	0f054b01 	0x0f054b01
     73c:	01040200 	0x01040200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	0402004a 	csrxchg	$r10,$r2,0x80
     744:	20054a04 	ll.w	$r4,$r16,1352(0x548)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	04040200 	csrxchg	$r0,$r16,0x100
     74c:	00050547 	alsl.w	$r7,$r10,$r1,0x3
     750:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a0954 <_start-0x1bf5f6ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	4c060905 	jirl	$r5,$r8,1544(0x608)
     758:	01061705 	0x01061705
     75c:	02001f05 	slti	$r5,$r24,7(0x7)
     760:	054a0104 	0x054a0104
     764:	0402001c 	csrrd	$r28,0x80
     768:	09054a01 	0x09054a01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	01040200 	0x01040200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	0f05bb06 	0x0f05bb06
     774:	01040200 	0x01040200
     778:	3b050106 	0x3b050106
     77c:	02040200 	slti	$r0,$r16,256(0x100)
     780:	000f0582 	bytepick.d	$r2,$r12,$r1,0x6
     784:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a0988 <_start-0x1bf5f678>
     788:	02040200 	slti	$r0,$r16,256(0x100)
     78c:	4d01054a 	jirl	$r10,$r10,65796(0x10104)
     790:	024a4a82 	sltui	$r2,$r20,658(0x292)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	0101000c 	fadd.d	$f12,$f0,$f0
     798:	05000105 	0x05000105
     79c:	00000002 	0x00000002
     7a0:	01c30300 	0x01c30300
     7a4:	05010601 	0x05010601
     7a8:	24020605 	ldptr.w	$r5,$r16,516(0x204)
     7ac:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	0b051313 	0x0b051313
     7b4:	05050106 	0x05050106
     7b8:	4f0f054a 	jirl	$r10,$r10,-61692(0x30f04)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	4c060d05 	jirl	$r5,$r8,1548(0x60c)
     7c0:	01061a05 	0x01061a05
     7c4:	f2820d05 	0xf2820d05
     7c8:	08061105 	0x08061105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	0617053f 	cacop	0x1f,$r9,1473(0x5c1)
     7d0:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	12053d08 	addu16i.d	$r8,$r8,-32433(0x814f)
     7d8:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     7dc:	054c4b06 	0x054c4b06
     7e0:	05010641 	0x05010641
     7e4:	1105ba17 	addu16i.d	$r23,$r16,16750(0x416e)
     7e8:	12058306 	addu16i.d	$r6,$r24,-32416(0x8160)
     7ec:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	054c4b06 	0x054c4b06
     7f4:	05010617 	0x05010617
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	ad080611 	0xad080611
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	01061205 	0x01061205
     800:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170e10 <_start-0x1be8f1f0>
     804:	0617054c 	cacop	0xc,$r10,1473(0x5c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	06110501 	cacop	0x1,$r8,1089(0x441)
     80c:	1205ad08 	addu16i.d	$r8,$r8,-32405(0x816b)
     810:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     814:	054c4b06 	0x054c4b06
     818:	05010617 	0x05010617
     81c:	ad080611 	0xad080611
     820:	01061205 	0x01061205
     824:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170e34 <_start-0x1be8f1cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	0617054c 	cacop	0xc,$r10,1473(0x5c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	06110501 	cacop	0x1,$r8,1089(0x441)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	1205ad08 	addu16i.d	$r8,$r8,-32405(0x816b)
     834:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	054d4b06 	0x054d4b06
     83c:	05010617 	0x05010617
     840:	ad080611 	0xad080611
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	01061205 	0x01061205
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	4b061105 	bcnez	$fcc0,1508880(0x170610) # 170e58 <_start-0x1be8f1a8>
     84c:	0617054c 	cacop	0xc,$r10,1473(0x5c1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	06110501 	cacop	0x1,$r8,1089(0x441)
     854:	06120583 	cacop	0x3,$r12,1153(0x481)
     858:	06110501 	cacop	0x1,$r8,1089(0x441)
     85c:	12054c4b 	addu16i.d	$r11,$r2,-32429(0x8153)
     860:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
     864:	17054b06 	lu32i.d	$r6,-513448(0x82a58)
     868:	22050106 	ll.d	$r6,$r8,1280(0x500)
     86c:	01040200 	0x01040200
     870:	0030054a 	0x0030054a
     874:	82010402 	0x82010402
     878:	02001105 	slti	$r5,$r8,4(0x4)
     87c:	05820104 	0x05820104
     880:	04020015 	csrrd	$r21,0x80
     884:	05830603 	0x05830603
     888:	0402001b 	csrrd	$r27,0x80
     88c:	05010603 	0x05010603
     890:	04020031 	csrwr	$r17,0x80
     894:	17058203 	lu32i.d	$r3,-513008(0x82c10)
     898:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     89c:	004a054a 	0x004a054a
     8a0:	49030402 	bceqz	$fcc0,590596(0x90304) # 90ba4 <_start-0x1bf6f45c>
     8a4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
     8a8:	4f17054a 	jirl	$r10,$r10,-59644(0x31704)
     8ac:	02002205 	slti	$r5,$r16,8(0x8)
     8b0:	054a0104 	0x054a0104
     8b4:	04020030 	csrwr	$r16,0x80
     8b8:	11058201 	addu16i.d	$r1,$r16,16736(0x4160)
     8bc:	01040200 	0x01040200
     8c0:	00150582 	or	$r2,$r12,$r1
     8c4:	06030402 	cacop	0x2,$r0,193(0xc1)
     8c8:	001b0583 	rotr.w	$r3,$r12,$r1
     8cc:	06030402 	cacop	0x2,$r0,193(0xc1)
     8d0:	00310501 	0x00310501
     8d4:	82030402 	0x82030402
     8d8:	02001705 	slti	$r5,$r24,5(0x5)
     8dc:	054a0304 	0x054a0304
     8e0:	0402004a 	csrxchg	$r10,$r2,0x80
     8e4:	02004903 	slti	$r3,$r8,18(0x12)
     8e8:	054a0304 	0x054a0304
     8ec:	144d0611 	lu12i.w	$r17,157744(0x26830)
     8f0:	01061705 	0x01061705
     8f4:	83061105 	0x83061105
     8f8:	06170551 	cacop	0x11,$r10,1473(0x5c1)
     8fc:	060d0501 	cacop	0x1,$r8,833(0x341)
     900:	06130583 	cacop	0x3,$r12,1217(0x4c1)
     904:	001c0501 	mul.w	$r1,$r8,$r1
     908:	03020402 	lu52i.d	$r2,$r0,129(0x81)
     90c:	16058241 	lu32i.d	$r1,11282(0x2c12)
     910:	01040200 	0x01040200
     914:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
     918:	82010402 	0x82010402
     91c:	4c060905 	jirl	$r5,$r8,1544(0x608)
     920:	060b0513 	cacop	0x13,$r8,705(0x2c1)
     924:	060d0501 	cacop	0x1,$r8,833(0x341)
     928:	05823a03 	0x05823a03
     92c:	0501060f 	0x0501060f
     930:	05bf0605 	0x05bf0605
     934:	0501060b 	0x0501060b
     938:	05830605 	0x05830605
     93c:	4a130601 	0x4a130601
     940:	024a4aba 	sltui	$r26,$r21,658(0x292)
     944:	01010008 	fadd.d	$f8,$f0,$f0
     948:	05000105 	0x05000105
     94c:	00000002 	0x00000002
     950:	028f0300 	addi.w	$r0,$r24,960(0x3c0)
     954:	05010601 	0x05010601
     958:	e5080605 	0xe5080605
     95c:	12058313 	addu16i.d	$r19,$r24,-32416(0x8160)
     960:	05050106 	0x05050106
     964:	05134b06 	0x05134b06
     968:	02130601 	slti	$r1,$r16,1217(0x4c1)
     96c:	0101000c 	fadd.d	$f12,$f0,$f0
     970:	05000105 	0x05000105
     974:	00000002 	0x00000002
     978:	02980300 	addi.w	$r0,$r24,1536(0x600)
     97c:	13020501 	addu16i.d	$r1,$r8,-16255(0xc081)
     980:	01061a05 	0x01061a05
     984:	74082705 	xvslt.bu	$xr5,$xr24,$xr9
     988:	05ba0d05 	0x05ba0d05
     98c:	054b0602 	0x054b0602
     990:	02130601 	slti	$r1,$r16,1217(0x4c1)
     994:	01010008 	fadd.d	$f8,$f0,$f0
     998:	0000055f 	0x0000055f
     99c:	021b0002 	slti	$r2,$r0,1728(0x6c0)
     9a0:	01010000 	fadd.d	$f0,$f0,$f0
     9a4:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
     9a8:	01010101 	fadd.d	$f1,$f8,$f0
     9ac:	01000000 	0x01000000
     9b0:	44010000 	bnez	$r0,256(0x100) # ab0 <_start-0x1bfff550>
     9b4:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     9b8:	2f737265 	0x2f737265
     9bc:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff781c <_RAM_DATA+0x7fff681c>
     9c0:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4dec <_RAM_DATA+0x7fff3dec>
     9c4:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17738 <_start-0x1bfe88c8>
     9c8:	2f73746e 	0x2f73746e
     9cc:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16e38 <_start-0x1bfe91c8>
     9d0:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff791c <_RAM_DATA+0x7fff691c>
     9d4:	7241676e 	0x7241676e
     9d8:	505f6863 	b	25976680(0x18c5f68) # 18c6940 <_start-0x1a7396c0>
     9dc:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16d48 <_start-0x1bfe92b8>
     9e0:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7350 <_RAM_DATA+0x7ffe6350>
     9e4:	79535f67 	0x79535f67
     9e8:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16f5c <_start-0x1bfe90a4>
     9ec:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     9f0:	732f3230 	0x732f3230
     9f4:	732f6372 	0x732f6372
     9f8:	75702f77 	0x75702f77
     9fc:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7368 <_RAM_DATA+0x7fff6368>
     a00:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 4464 <_start-0x1bffbb9c>
     a04:	72657375 	0x72657375
     a08:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 18164 <_start-0x1bfe7e9c>
     a0c:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 7d70 <_start-0x1bff8290>
     a10:	75636f64 	0x75636f64
     a14:	746e656d 	0x746e656d
     a18:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff6d74 <_RAM_DATA+0x7fff5d74>
     a1c:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 6680 <_start-0x1bff9980>
     a20:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff788c <_RAM_DATA+0x7fff688c>
     a24:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6d94 <_start-0x1bff926c>
     a28:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff7c98 <_RAM_DATA+0x7fff6c98>
     a2c:	73736563 	0x73736563
     a30:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff719c <_RAM_DATA+0x7fff619c>
     a34:	74737973 	xvmin.w	$xr19,$xr11,$xr30
     a38:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     a3c:	32303163 	0x32303163
     a40:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff7cb0 <_RAM_DATA+0x7fff6cb0>
     a44:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 81b4 <_start-0x1bff7e4c>
     a48:	6469616c 	bge	$r11,$r12,26976(0x6960) # 73a8 <_start-0x1bff8c58>
     a4c:	75625c65 	0x75625c65
     a50:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     a54:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 76c0 <_start-0x1bff8940>
     a58:	3233616c 	0x3233616c
     a5c:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff79d0 <_RAM_DATA+0x7fff69d0>
     a60:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff76bc <_RAM_DATA+0x7fff66bc>
     a64:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 171d0 <_start-0x1bfe8e30>
     a68:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
     a6c:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 17898 <_start-0x1bfe8768>
     a70:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe73dc <_RAM_DATA+0x7ffe63dc>
     a74:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe76d8 <_RAM_DATA+0x7ffe66d8>
     a78:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff78e0 <_RAM_DATA+0x7fff68e0>
     a7c:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16ef0 <_start-0x1bfe9110>
     a80:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff6bec <_RAM_DATA+0x7fff5bec>
     a84:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 178ec <_start-0x1bfe8714>
     a88:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 44ec <_start-0x1bffbb14>
     a8c:	72657375 	0x72657375
     a90:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 181ec <_start-0x1bfe7e14>
     a94:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 7df8 <_start-0x1bff8208>
     a98:	75636f64 	0x75636f64
     a9c:	746e656d 	0x746e656d
     aa0:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff6dfc <_RAM_DATA+0x7fff5dfc>
     aa4:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 6708 <_start-0x1bff98f8>
     aa8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7914 <_RAM_DATA+0x7fff6914>
     aac:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6e1c <_start-0x1bff91e4>
     ab0:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff7d20 <_RAM_DATA+0x7fff6d20>
     ab4:	73736563 	0x73736563
     ab8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7224 <_RAM_DATA+0x7fff6224>
     abc:	74737973 	xvmin.w	$xr19,$xr11,$xr30
     ac0:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
     ac4:	32303163 	0x32303163
     ac8:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff7d38 <_RAM_DATA+0x7fff6d38>
     acc:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 823c <_start-0x1bff7dc4>
     ad0:	6469616c 	bge	$r11,$r12,26976(0x6960) # 7430 <_start-0x1bff8bd0>
     ad4:	75625c65 	0x75625c65
     ad8:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
     adc:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 7748 <_start-0x1bff88b8>
     ae0:	3233616c 	0x3233616c
     ae4:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff7a58 <_RAM_DATA+0x7fff6a58>
     ae8:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff7744 <_RAM_DATA+0x7fff6744>
     aec:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17258 <_start-0x1bfe8da8>
     af0:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
     af4:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 17920 <_start-0x1bfe86e0>
     af8:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe7464 <_RAM_DATA+0x7ffe6464>
     afc:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe7760 <_RAM_DATA+0x7ffe6760>
     b00:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff7968 <_RAM_DATA+0x7fff6968>
     b04:	6564756c 	bge	$r11,$r12,91252(0x16474) # 16f78 <_start-0x1bfe9088>
     b08:	7379732f 	0x7379732f
     b0c:	2f3a4400 	0x2f3a4400
     b10:	72657355 	0x72657355
     b14:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 18240 <_start-0x1bfe7dc0>
     b18:	2f73676e 	0x2f73676e
     b1c:	75636f44 	0x75636f44
     b20:	746e656d 	0x746e656d
     b24:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4e50 <_RAM_DATA+0x7fff3e50>
     b28:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     b2c:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7998 <_RAM_DATA+0x7fff6998>
     b30:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6ea0 <_start-0x1bff9160>
     b34:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7d84 <_RAM_DATA+0x7fff6d84>
     b38:	73736563 	0x73736563
     b3c:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff72a8 <_RAM_DATA+0x7fff62a8>
     b40:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     b44:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     b48:	32303143 	0x32303143
     b4c:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7dbc <_RAM_DATA+0x7fff6dbc>
     b50:	2f77732f 	0x2f77732f
     b54:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 6ec0 <_start-0x1bff9140>
     b58:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
     b5c:	31736c00 	0x31736c00
     b60:	61755f78 	blt	$r27,$r24,95580(0x1755c) # 180bc <_start-0x1bfe7f44>
     b64:	632e7472 	blt	$r3,$r18,-53644(0x32e74) # ffff39d8 <_RAM_DATA+0x7fff29d8>
     b68:	00000100 	0x00000100
     b6c:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe70d0 <_RAM_DATA+0x7ffe60d0>
     b70:	746c7561 	0x746c7561
     b74:	7079745f 	0x7079745f
     b78:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 39e8 <_start-0x1bffc618>
     b7c:	00000200 	0x00000200
     b80:	6474735f 	bge	$r26,$r31,29808(0x7470) # 7ff0 <_start-0x1bff8010>
     b84:	2e746e69 	0x2e746e69
     b88:	00030068 	0x00030068
     b8c:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
     b90:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
     b94:	6c000004 	bgeu	$r0,$r4,0 # b94 <_start-0x1bfff46c>
     b98:	2e783173 	0x2e783173
     b9c:	00040068 	alsl.w	$r8,$r3,$r0,0x1
     ba0:	31736c00 	0x31736c00
     ba4:	61755f78 	blt	$r27,$r24,95580(0x1755c) # 18100 <_start-0x1bfe7f00>
     ba8:	682e7472 	bltu	$r3,$r18,11892(0x2e74) # 3a1c <_start-0x1bffc5e4>
     bac:	00000100 	0x00000100
     bb0:	666e6f43 	bge	$r26,$r3,-102804(0x26e6c) # fffe7a1c <_RAM_DATA+0x7ffe6a1c>
     bb4:	682e6769 	bltu	$r27,$r9,11876(0x2e64) # 3a18 <_start-0x1bffc5e8>
     bb8:	00000400 	0x00000400
     bbc:	00010500 	asrtle.d	$r8,$r1
     bc0:	00000205 	0x00000205
     bc4:	05160000 	0x05160000
     bc8:	13131405 	addu16i.d	$r5,$r0,-15163(0xc4c5)
     bcc:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
     bd0:	10051513 	addu16i.d	$r19,$r8,325(0x145)
     bd4:	05050106 	0x05050106
     bd8:	1b058406 	pcalau12i	$r6,-512992(0x82c20)
     bdc:	09050106 	0x09050106
     be0:	0605054a 	cacop	0xa,$r10,321(0x141)
     be4:	0622054b 	cacop	0xb,$r10,-1919(0x881)
     be8:	4a090501 	bcnez	$fcc0,395524(0x60904) # 614ec <_start-0x1bf9eb14>
     bec:	bb060505 	0xbb060505
     bf0:	061905f4 	cacop	0x14,$r15,1601(0x641)
     bf4:	06050501 	cacop	0x1,$r8,321(0x141)
     bf8:	15051383 	lu12i.w	$r3,-513892(0x8289c)
     bfc:	05050106 	0x05050106
     c00:	05138306 	0x05138306
     c04:	4a010615 	0x4a010615
     c08:	4c060505 	jirl	$r5,$r8,1540(0x604)
     c0c:	061505bc 	cacop	0x1c,$r13,1345(0x541)
     c10:	06050501 	cacop	0x1,$r8,321(0x141)
     c14:	062a054c 	cacop	0xc,$r10,-1407(0xa81)
     c18:	4a190501 	bcnez	$fcc0,399620(0x61904) # 6251c <_start-0x1bf9dae4>
     c1c:	bc060505 	0xbc060505
     c20:	3e083e08 	0x3e083e08
     c24:	3e083e08 	0x3e083e08
     c28:	3e083e08 	0x3e083e08
     c2c:	01060a05 	0x01060a05
     c30:	024b0105 	sltui	$r5,$r8,704(0x2c0)
     c34:	01010004 	fadd.d	$f4,$f0,$f0
     c38:	05000105 	0x05000105
     c3c:	00000002 	0x00000002
     c40:	01320300 	0x01320300
     c44:	13140505 	addu16i.d	$r5,$r8,-15103(0xc501)
     c48:	10051513 	addu16i.d	$r19,$r8,325(0x145)
     c4c:	05050106 	0x05050106
     c50:	05f58406 	0x05f58406
     c54:	05010619 	0x05010619
     c58:	05840605 	0x05840605
     c5c:	05010615 	0x05010615
     c60:	05830605 	0x05830605
     c64:	05010615 	0x05010615
     c68:	bc4c0605 	0xbc4c0605
     c6c:	01061505 	0x01061505
     c70:	4c060505 	jirl	$r5,$r8,1540(0x604)
     c74:	01061905 	0x01061905
     c78:	84060505 	0x84060505
     c7c:	01060a05 	0x01060a05
     c80:	024b0105 	sltui	$r5,$r8,704(0x2c0)
     c84:	01010004 	fadd.d	$f4,$f0,$f0
     c88:	05000105 	0x05000105
     c8c:	00000002 	0x00000002
     c90:	00d50300 	bstrpick.d	$r0,$r24,0x15,0x0
     c94:	14020501 	lu12i.w	$r1,4136(0x1028)
     c98:	01062105 	0x01062105
     c9c:	bb060205 	0xbb060205
     ca0:	01061e05 	0x01061e05
     ca4:	bb060205 	0xbb060205
     ca8:	01062305 	0x01062305
     cac:	83060205 	0x83060205
     cb0:	01062105 	0x01062105
     cb4:	4b060205 	0x4b060205
     cb8:	01061f05 	0x01061f05
     cbc:	4b060205 	0x4b060205
     cc0:	01062705 	0x01062705
     cc4:	4b060205 	0x4b060205
     cc8:	01062605 	0x01062605
     ccc:	4b060205 	0x4b060205
     cd0:	01062b05 	0x01062b05
     cd4:	4b060205 	0x4b060205
     cd8:	01061f05 	0x01061f05
     cdc:	024c0105 	sltui	$r5,$r8,768(0x300)
     ce0:	01010004 	fadd.d	$f4,$f0,$f0
     ce4:	05000105 	0x05000105
     ce8:	00000002 	0x00000002
     cec:	00f20300 	bstrpick.d	$r0,$r24,0x32,0x0
     cf0:	14020501 	lu12i.w	$r1,4136(0x1028)
     cf4:	05051313 	0x05051313
     cf8:	063f0514 	cacop	0x14,$r8,-63(0xfc1)
     cfc:	001d0501 	mulh.wu	$r1,$r8,$r1
     d00:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0e04 <_start-0x1bf5f1fc>
     d04:	01040200 	0x01040200
     d08:	004205ba 	0x004205ba
     d0c:	82020402 	0x82020402
     d10:	02040200 	slti	$r0,$r16,256(0x100)
     d14:	00010582 	0x00010582
     d18:	83020402 	0x83020402
     d1c:	01000402 	0x01000402
     d20:	00010501 	0x00010501
     d24:	14980205 	lu12i.w	$r5,311312(0x4c010)
     d28:	a8031c00 	0xa8031c00
     d2c:	31050101 	0x31050101
     d30:	01040200 	0x01040200
     d34:	000a0515 	0x000a0515
     d38:	06010402 	cacop	0x2,$r0,65(0x41)
     d3c:	00080501 	bytepick.w	$r1,$r8,$r1,0x0
     d40:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a0e44 <_start-0x1bf5f1bc>
     d44:	83060205 	0x83060205
     d48:	01061205 	0x01061205
     d4c:	024b0105 	sltui	$r5,$r8,704(0x2c0)
     d50:	01010004 	fadd.d	$f4,$f0,$f0
     d54:	05000105 	0x05000105
     d58:	00000002 	0x00000002
     d5c:	01b80300 	0x01b80300
     d60:	00320501 	0x00320501
     d64:	15010402 	lu12i.w	$r2,-522208(0x80820)
     d68:	02000a05 	slti	$r5,$r16,2(0x2)
     d6c:	01060104 	0x01060104
     d70:	02000805 	slti	$r5,$r0,2(0x2)
     d74:	054a0104 	0x054a0104
     d78:	05830602 	0x05830602
     d7c:	05010607 	0x05010607
     d80:	054b0602 	0x054b0602
     d84:	4a130601 	0x4a130601
     d88:	01000402 	0x01000402
     d8c:	00010501 	0x00010501
     d90:	00000205 	0x00000205
     d94:	d3030000 	0xd3030000
     d98:	02050101 	slti	$r1,$r8,320(0x140)
     d9c:	14131313 	lu12i.w	$r19,39064(0x9898)
     da0:	01060a05 	0x01060a05
     da4:	054a1c05 	0x054a1c05
     da8:	04054a10 	csrxchg	$r16,$r16,0x152
     dac:	4c0d054a 	jirl	$r10,$r10,3332(0xd04)
     db0:	02054e4a 	slti	$r10,$r18,339(0x153)
     db4:	01054c06 	fmul.d	$f6,$f0,$f19
     db8:	04021306 	csrxchg	$r6,$r24,0x84
     dbc:	05010100 	0x05010100
     dc0:	02050001 	slti	$r1,$r0,320(0x140)
     dc4:	00000000 	0x00000000
     dc8:	0101f603 	0x0101f603
     dcc:	13130205 	addu16i.d	$r5,$r16,-15168(0xc4c0)
     dd0:	060a0514 	cacop	0x14,$r8,641(0x281)
     dd4:	82280501 	0x82280501
     dd8:	054a0405 	0x054a0405
     ddc:	4e4a4c0d 	jirl	$r13,$r0,-112052(0x24a4c)
     de0:	4d060205 	jirl	$r5,$r16,67072(0x10600)
     de4:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     de8:	01000402 	0x01000402
     dec:	00010501 	0x00010501
     df0:	00000205 	0x00000205
     df4:	ba030000 	0xba030000
     df8:	02050102 	slti	$r2,$r8,320(0x140)
     dfc:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
     e00:	af080305 	0xaf080305
     e04:	01060805 	0x01060805
     e08:	4b060305 	0x4b060305
     e0c:	46060205 	bnez	$r16,1443328(0x160600) # 16140c <_start-0x1be9ebf4>
     e10:	03060305 	lu52i.d	$r5,$r24,384(0x180)
     e14:	0805820c 	0x0805820c
     e18:	03050106 	lu52i.d	$r6,$r8,320(0x140)
     e1c:	01054b06 	fmul.d	$f6,$f24,$f18
     e20:	054a1a06 	0x054a1a06
     e24:	71030603 	vssrarn.h.w	$vr3,$vr16,$vr1
     e28:	0608054a 	cacop	0xa,$r10,513(0x201)
     e2c:	06030501 	cacop	0x1,$r8,193(0xc1)
     e30:	08054c4b 	0x08054c4b
     e34:	03050106 	lu52i.d	$r6,$r8,320(0x140)
     e38:	04024b06 	csrxchg	$r6,$r24,0x92
     e3c:	05010100 	0x05010100
     e40:	02050001 	slti	$r1,$r0,320(0x140)
     e44:	00000000 	0x00000000
     e48:	0102d603 	fsub.s	$f3,$f16,$f21
     e4c:	13130205 	addu16i.d	$r5,$r16,-15168(0xc4c0)
     e50:	01060605 	0x01060605
     e54:	83060205 	0x83060205
     e58:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
     e5c:	0004024a 	alsl.w	$r10,$r18,$r0,0x1
     e60:	01050101 	fmul.d	$f1,$f8,$f0
     e64:	00020500 	0x00020500
     e68:	03000000 	lu52i.d	$r0,$r0,0
     e6c:	050102de 	0x050102de
     e70:	84138309 	0x84138309
     e74:	01062405 	0x01062405
     e78:	bb060905 	0xbb060905
     e7c:	01062705 	0x01062705
     e80:	bb060905 	0xbb060905
     e84:	0583f3bb 	0x0583f3bb
     e88:	02bb0601 	addi.w	$r1,$r16,-319(0xec1)
     e8c:	0101000c 	fadd.d	$f12,$f0,$f0
     e90:	05001c05 	0x05001c05
     e94:	00000002 	0x00000002
     e98:	02e90300 	addi.d	$r0,$r24,-1472(0xa40)
     e9c:	05010601 	0x05010601
     ea0:	13f30605 	addu16i.d	$r5,$r16,-831(0xfcc1)
     ea4:	4c064a06 	jirl	$r6,$r16,1608(0x648)
     ea8:	01062005 	0x01062005
     eac:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 1714b0 <_start-0x1be8eb50>
     eb0:	01062305 	0x01062305
     eb4:	bb060505 	0xbb060505
     eb8:	0c05f3bb 	0x0c05f3bb
     ebc:	01050106 	fmul.d	$f6,$f8,$f0
     ec0:	02823f08 	addi.w	$r8,$r24,143(0x8f)
     ec4:	01010008 	fadd.d	$f8,$f0,$f0
     ec8:	05001705 	0x05001705
     ecc:	00000002 	0x00000002
     ed0:	02f60300 	addi.d	$r0,$r24,-640(0xd80)
     ed4:	05010601 	0x05010601
     ed8:	13f30605 	addu16i.d	$r5,$r16,-831(0xfcc1)
     edc:	4c064a06 	jirl	$r6,$r16,1608(0x648)
     ee0:	01062005 	0x01062005
     ee4:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 1714e8 <_start-0x1be8eb18>
     ee8:	01062305 	0x01062305
     eec:	bb060505 	0xbb060505
     ef0:	060105bb 	cacop	0x1b,$r13,65(0x41)
     ef4:	080282f7 	0x080282f7
     ef8:	54010100 	bl	67109120(0x4000100) # 4000ff8 <_start-0x17fff008>
     efc:	02000003 	slti	$r3,$r0,0
     f00:	0001f800 	asrtgt.d	$r0,$r30
     f04:	fb010100 	0xfb010100
     f08:	01000d0e 	0x01000d0e
     f0c:	00010101 	0x00010101
     f10:	00010000 	asrtle.d	$r0,$r0
     f14:	3a440100 	0x3a440100
     f18:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1826c <_start-0x1bfe7d94>
     f1c:	772f7372 	0x772f7372
     f20:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     f24:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff7e68 <_RAM_DATA+0x7fff6e68>
     f28:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe7494 <_RAM_DATA+0x7ffe6494>
     f2c:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33e9c <_RAM_DATA+0x7fd32e9c>
     f30:	2f65646f 	0x2f65646f
     f34:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe7ea0 <_RAM_DATA+0x7ffe6ea0>
     f38:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff8178 <_RAM_DATA+0x7fff7178>
     f3c:	72505f68 	0x72505f68
     f40:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
     f44:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7dac <_RAM_DATA+0x7fff6dac>
     f48:	7379535f 	0x7379535f
     f4c:	2f6d6574 	0x2f6d6574
     f50:	30314331 	0x30314331
     f54:	72732f32 	0x72732f32
     f58:	77732f63 	0x77732f63
     f5c:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe84cc <_RAM_DATA+0x7ffe74cc>
     f60:	0063696c 	bstrins.w	$r12,$r11,0x3,0x1a
     f64:	755c3a64 	0x755c3a64
     f68:	73726573 	0x73726573
     f6c:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe70e0 <_RAM_DATA+0x7ffe60e0>
     f70:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 6be0 <_start-0x1bff9420>
     f74:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 184d4 <_start-0x1bfe7b2c>
     f78:	73746e65 	0x73746e65
     f7c:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 7edc <_start-0x1bff8124>
     f80:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff7bdc <_RAM_DATA+0x7fff6bdc>
     f84:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 176f0 <_start-0x1bfe8910>
     f88:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff77e8 <_RAM_DATA+0x7fff67e8>
     f8c:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff7efc <_RAM_DATA+0x7fff6efc>
     f90:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18300 <_start-0x1bfe7d00>
     f94:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
     f98:	65747379 	bge	$r27,$r25,95344(0x17470) # 18408 <_start-0x1bfe7bf8>
     f9c:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff40f8 <_RAM_DATA+0x7fff30f8>
     fa0:	5c323031 	bne	$r1,$r17,12848(0x3230) # 41d0 <_start-0x1bffbe30>
     fa4:	5c637273 	bne	$r19,$r19,25456(0x6370) # 7314 <_start-0x1bff8cec>
     fa8:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 6c1c <_start-0x1bff93e4>
     fac:	65646961 	bge	$r11,$r1,91240(0x16468) # 17414 <_start-0x1bfe8bec>
     fb0:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 18510 <_start-0x1bfe7af0>
     fb4:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff8418 <_RAM_DATA+0x7fff7418>
     fb8:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 6c24 <_start-0x1bff93dc>
     fbc:	2d323361 	0x2d323361
     fc0:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 7f2c <_start-0x1bff80d4>
     fc4:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff7f30 <_RAM_DATA+0x7fff6f30>
     fc8:	7261676e 	0x7261676e
     fcc:	32336863 	0x32336863
     fd0:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
     fd4:	2d62696c 	0x2d62696c
     fd8:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 7644 <_start-0x1bff89bc>
     fdc:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7348 <_start-0x1bff8cb8>
     fe0:	2f656475 	0x2f656475
     fe4:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 7344 <_start-0x1bff8cbc>
     fe8:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
     fec:	755c3a64 	0x755c3a64
     ff0:	73726573 	0x73726573
     ff4:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe7168 <_RAM_DATA+0x7ffe6168>
     ff8:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 6c68 <_start-0x1bff9398>
     ffc:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1855c <_start-0x1bfe7aa4>
    1000:	73746e65 	0x73746e65
    1004:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 7f64 <_start-0x1bff809c>
    1008:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff7c64 <_RAM_DATA+0x7fff6c64>
    100c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17778 <_start-0x1bfe8888>
    1010:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7870 <_RAM_DATA+0x7fff6870>
    1014:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff7f84 <_RAM_DATA+0x7fff6f84>
    1018:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18388 <_start-0x1bfe7c78>
    101c:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1020:	65747379 	bge	$r27,$r25,95344(0x17470) # 18490 <_start-0x1bfe7b70>
    1024:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff4180 <_RAM_DATA+0x7fff3180>
    1028:	5c323031 	bne	$r1,$r17,12848(0x3230) # 4258 <_start-0x1bffbda8>
    102c:	5c637273 	bne	$r19,$r19,25456(0x6370) # 739c <_start-0x1bff8c64>
    1030:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 6ca4 <_start-0x1bff935c>
    1034:	65646961 	bge	$r11,$r1,91240(0x16468) # 1749c <_start-0x1bfe8b64>
    1038:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 18598 <_start-0x1bfe7a68>
    103c:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff84a0 <_RAM_DATA+0x7fff74a0>
    1040:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 6cac <_start-0x1bff9354>
    1044:	2d323361 	0x2d323361
    1048:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 7fb4 <_start-0x1bff804c>
    104c:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff7fb8 <_RAM_DATA+0x7fff6fb8>
    1050:	7261676e 	0x7261676e
    1054:	32336863 	0x32336863
    1058:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    105c:	2d62696c 	0x2d62696c
    1060:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 76cc <_start-0x1bff8934>
    1064:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 73d0 <_start-0x1bff8c30>
    1068:	2f656475 	0x2f656475
    106c:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    1070:	552f3a44 	bl	-116314312(0x9112f38) # f9113fa8 <_RAM_DATA+0x79112fa8>
    1074:	73726573 	0x73726573
    1078:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe71ec <_RAM_DATA+0x7ffe61ec>
    107c:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c3fec <_start-0x1be3c014>
    1080:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 185e0 <_start-0x1bfe7a20>
    1084:	73746e65 	0x73746e65
    1088:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 7fc8 <_start-0x1bff8038>
    108c:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff5cb8 <_RAM_DATA+0x7fff4cb8>
    1090:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d77fc <_start-0x1bc28804>
    1094:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff78f4 <_RAM_DATA+0x7fff68f4>
    1098:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff8008 <_RAM_DATA+0x7fff7008>
    109c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1840c <_start-0x1bfe7bf4>
    10a0:	535f676e 	b	-38051996(0xdbb5f64) # fdbb7004 <_RAM_DATA+0x7dbb6004>
    10a4:	65747379 	bge	$r27,$r25,95344(0x17470) # 18514 <_start-0x1bfe7aec>
    10a8:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3741d4 <_start-0x1bc8be2c>
    10ac:	2f323031 	0x2f323031
    10b0:	2f637273 	0x2f637273
    10b4:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 14028 <_start-0x1bfebfd8>
    10b8:	756c636e 	0x756c636e
    10bc:	00006564 	rdtimeh.w	$r4,$r11
    10c0:	7831736c 	0x7831736c
    10c4:	6d6f635f 	bgeu	$r26,$r31,94048(0x16f60) # 18024 <_start-0x1bfe7fdc>
    10c8:	2e6e6f6d 	0x2e6e6f6d
    10cc:	00010063 	0x00010063
    10d0:	65645f00 	bge	$r24,$r0,91228(0x1645c) # 1752c <_start-0x1bfe8ad4>
    10d4:	6c756166 	bgeu	$r11,$r6,30048(0x7560) # 8634 <_start-0x1bff79cc>
    10d8:	79745f74 	0x79745f74
    10dc:	2e736570 	0x2e736570
    10e0:	00020068 	0x00020068
    10e4:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
    10e8:	746e6964 	0x746e6964
    10ec:	0300682e 	lu52i.d	$r14,$r1,26(0x1a)
    10f0:	65740000 	bge	$r0,$r0,95232(0x17400) # 184f0 <_start-0x1bfe7b10>
    10f4:	682e7473 	bltu	$r3,$r19,11892(0x2e74) # 3f68 <_start-0x1bffc098>
    10f8:	00000400 	0x00000400
    10fc:	00010500 	asrtle.d	$r8,$r1
    1100:	00000205 	0x00000205
    1104:	05160000 	0x05160000
    1108:	4c131305 	jirl	$r5,$r24,4880(0x1310)
    110c:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    1110:	0004024a 	alsl.w	$r10,$r18,$r0,0x1
    1114:	01050101 	fmul.d	$f1,$f8,$f0
    1118:	00020500 	0x00020500
    111c:	03000000 	lu52i.d	$r0,$r0,0
    1120:	0505010c 	0x0505010c
    1124:	06010513 	cacop	0x13,$r8,65(0x41)
    1128:	00040287 	alsl.w	$r7,$r20,$r0,0x1
    112c:	01050101 	fmul.d	$f1,$f8,$f0
    1130:	ac020500 	0xac020500
    1134:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
    1138:	05050115 	0x05050115
    113c:	06010513 	cacop	0x13,$r8,65(0x41)
    1140:	00040287 	alsl.w	$r7,$r20,$r0,0x1
    1144:	01050101 	fmul.d	$f1,$f8,$f0
    1148:	00020500 	0x00020500
    114c:	03000000 	lu52i.d	$r0,$r0,0
    1150:	0505011e 	0x0505011e
    1154:	06010513 	cacop	0x13,$r8,65(0x41)
    1158:	00040287 	alsl.w	$r7,$r20,$r0,0x1
    115c:	01050101 	fmul.d	$f1,$f8,$f0
    1160:	00020500 	0x00020500
    1164:	03000000 	lu52i.d	$r0,$r0,0
    1168:	05050127 	0x05050127
    116c:	06010513 	cacop	0x13,$r8,65(0x41)
    1170:	00040287 	alsl.w	$r7,$r20,$r0,0x1
    1174:	01050101 	fmul.d	$f1,$f8,$f0
    1178:	b8020500 	0xb8020500
    117c:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
    1180:	05050130 	0x05050130
    1184:	06010513 	cacop	0x13,$r8,65(0x41)
    1188:	0004024d 	alsl.w	$r13,$r18,$r0,0x1
    118c:	01050101 	fmul.d	$f1,$f8,$f0
    1190:	c0020500 	0xc0020500
    1194:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
    1198:	05050137 	0x05050137
    119c:	06010513 	cacop	0x13,$r8,65(0x41)
    11a0:	00040288 	alsl.w	$r8,$r20,$r0,0x1
    11a4:	01050101 	fmul.d	$f1,$f8,$f0
    11a8:	00020500 	0x00020500
    11ac:	03000000 	lu52i.d	$r0,$r0,0
    11b0:	050100c1 	0x050100c1
    11b4:	01051305 	fmul.d	$f5,$f24,$f4
    11b8:	0402c206 	csrxchg	$r6,$r16,0xb0
    11bc:	05010100 	0x05010100
    11c0:	02050001 	slti	$r1,$r0,320(0x140)
    11c4:	00000000 	0x00000000
    11c8:	0100cd03 	fadd.s	$f3,$f8,$f19
    11cc:	05130505 	0x05130505
    11d0:	05010607 	0x05010607
    11d4:	054c0609 	0x054c0609
    11d8:	05010610 	0x05010610
    11dc:	134b0609 	addu16i.d	$r9,$r16,-11583(0xd2c1)
    11e0:	01061405 	0x01061405
    11e4:	05ba1e05 	0x05ba1e05
    11e8:	09054a11 	0x09054a11
    11ec:	16054b06 	lu32i.d	$r6,10840(0x2a58)
    11f0:	09050106 	0x09050106
    11f4:	14058306 	lu12i.w	$r6,11288(0x2c18)
    11f8:	09050106 	0x09050106
    11fc:	05400806 	0x05400806
    1200:	05010614 	0x05010614
    1204:	02760801 	sltui	$r1,$r0,-638(0xd82)
    1208:	01010004 	fadd.d	$f4,$f0,$f0
    120c:	05000105 	0x05000105
    1210:	00000002 	0x00000002
    1214:	00dc0300 	bstrpick.d	$r0,$r24,0x1c,0x0
    1218:	13050501 	addu16i.d	$r1,$r8,-16063(0xc141)
    121c:	01060705 	0x01060705
    1220:	4c060905 	jirl	$r5,$r8,1544(0x608)
    1224:	14051313 	lu12i.w	$r19,10392(0x2898)
    1228:	1e050106 	pcaddu18i	$r6,10248(0x2808)
    122c:	4a1105ba 	bcnez	$fcc5,-1437436(0x6a1104) # ffea2330 <_RAM_DATA+0x7fea1330>
    1230:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 171838 <_start-0x1be8e7c8>
    1234:	01061605 	0x01061605
    1238:	83060905 	0x83060905
    123c:	01061405 	0x01061405
    1240:	09058282 	0x09058282
    1244:	14054e06 	lu12i.w	$r6,10864(0x2a70)
    1248:	01050106 	fmul.d	$f6,$f8,$f0
    124c:	04027608 	csrxchg	$r8,$r16,0x9d
    1250:	94010100 	0x94010100
    1254:	02000003 	slti	$r3,$r0,0
    1258:	00020f00 	0x00020f00
    125c:	fb010100 	0xfb010100
    1260:	01000d0e 	0x01000d0e
    1264:	00010101 	0x00010101
    1268:	00010000 	asrtle.d	$r0,$r0
    126c:	3a440100 	0x3a440100
    1270:	6573552f 	bge	$r9,$r15,95060(0x17354) # 185c4 <_start-0x1bfe7a3c>
    1274:	772f7372 	0x772f7372
    1278:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    127c:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff81c0 <_RAM_DATA+0x7fff71c0>
    1280:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe77ec <_RAM_DATA+0x7ffe67ec>
    1284:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd341f4 <_RAM_DATA+0x7fd331f4>
    1288:	2f65646f 	0x2f65646f
    128c:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe81f8 <_RAM_DATA+0x7ffe71f8>
    1290:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff84d0 <_RAM_DATA+0x7fff74d0>
    1294:	72505f68 	0x72505f68
    1298:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    129c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff8104 <_RAM_DATA+0x7fff7104>
    12a0:	7379535f 	0x7379535f
    12a4:	2f6d6574 	0x2f6d6574
    12a8:	30314331 	0x30314331
    12ac:	72732f32 	0x72732f32
    12b0:	77732f63 	0x77732f63
    12b4:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe8824 <_RAM_DATA+0x7ffe7824>
    12b8:	0063696c 	bstrins.w	$r12,$r11,0x3,0x1a
    12bc:	755c3a64 	0x755c3a64
    12c0:	73726573 	0x73726573
    12c4:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe7438 <_RAM_DATA+0x7ffe6438>
    12c8:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 6f38 <_start-0x1bff90c8>
    12cc:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1882c <_start-0x1bfe77d4>
    12d0:	73746e65 	0x73746e65
    12d4:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 8234 <_start-0x1bff7dcc>
    12d8:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff7f34 <_RAM_DATA+0x7fff6f34>
    12dc:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17a48 <_start-0x1bfe85b8>
    12e0:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7b40 <_RAM_DATA+0x7fff6b40>
    12e4:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff8254 <_RAM_DATA+0x7fff7254>
    12e8:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18658 <_start-0x1bfe79a8>
    12ec:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    12f0:	65747379 	bge	$r27,$r25,95344(0x17470) # 18760 <_start-0x1bfe78a0>
    12f4:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff4450 <_RAM_DATA+0x7fff3450>
    12f8:	5c323031 	bne	$r1,$r17,12848(0x3230) # 4528 <_start-0x1bffbad8>
    12fc:	5c637273 	bne	$r19,$r19,25456(0x6370) # 766c <_start-0x1bff8994>
    1300:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 6f74 <_start-0x1bff908c>
    1304:	65646961 	bge	$r11,$r1,91240(0x16468) # 1776c <_start-0x1bfe8894>
    1308:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 18868 <_start-0x1bfe7798>
    130c:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff8770 <_RAM_DATA+0x7fff7770>
    1310:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 6f7c <_start-0x1bff9084>
    1314:	2d323361 	0x2d323361
    1318:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 8284 <_start-0x1bff7d7c>
    131c:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8288 <_RAM_DATA+0x7fff7288>
    1320:	7261676e 	0x7261676e
    1324:	32336863 	0x32336863
    1328:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    132c:	2d62696c 	0x2d62696c
    1330:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 799c <_start-0x1bff8664>
    1334:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 76a0 <_start-0x1bff8960>
    1338:	2f656475 	0x2f656475
    133c:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 769c <_start-0x1bff8964>
    1340:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
    1344:	755c3a64 	0x755c3a64
    1348:	73726573 	0x73726573
    134c:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe74c0 <_RAM_DATA+0x7ffe64c0>
    1350:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 6fc0 <_start-0x1bff9040>
    1354:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 188b4 <_start-0x1bfe774c>
    1358:	73746e65 	0x73746e65
    135c:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 82bc <_start-0x1bff7d44>
    1360:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff7fbc <_RAM_DATA+0x7fff6fbc>
    1364:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17ad0 <_start-0x1bfe8530>
    1368:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7bc8 <_RAM_DATA+0x7fff6bc8>
    136c:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff82dc <_RAM_DATA+0x7fff72dc>
    1370:	69737365 	bltu	$r27,$r5,95088(0x17370) # 186e0 <_start-0x1bfe7920>
    1374:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1378:	65747379 	bge	$r27,$r25,95344(0x17470) # 187e8 <_start-0x1bfe7818>
    137c:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff44d8 <_RAM_DATA+0x7fff34d8>
    1380:	5c323031 	bne	$r1,$r17,12848(0x3230) # 45b0 <_start-0x1bffba50>
    1384:	5c637273 	bne	$r19,$r19,25456(0x6370) # 76f4 <_start-0x1bff890c>
    1388:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 6ffc <_start-0x1bff9004>
    138c:	65646961 	bge	$r11,$r1,91240(0x16468) # 177f4 <_start-0x1bfe880c>
    1390:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 188f0 <_start-0x1bfe7710>
    1394:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff87f8 <_RAM_DATA+0x7fff77f8>
    1398:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7004 <_start-0x1bff8ffc>
    139c:	2d323361 	0x2d323361
    13a0:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 830c <_start-0x1bff7cf4>
    13a4:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8310 <_RAM_DATA+0x7fff7310>
    13a8:	7261676e 	0x7261676e
    13ac:	32336863 	0x32336863
    13b0:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    13b4:	2d62696c 	0x2d62696c
    13b8:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 7a24 <_start-0x1bff85dc>
    13bc:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7728 <_start-0x1bff88d8>
    13c0:	2f656475 	0x2f656475
    13c4:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    13c8:	552f3a44 	bl	-116314312(0x9112f38) # f9114300 <_RAM_DATA+0x79113300>
    13cc:	73726573 	0x73726573
    13d0:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe7544 <_RAM_DATA+0x7ffe6544>
    13d4:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c4344 <_start-0x1be3bcbc>
    13d8:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 18938 <_start-0x1bfe76c8>
    13dc:	73746e65 	0x73746e65
    13e0:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 8320 <_start-0x1bff7ce0>
    13e4:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff6010 <_RAM_DATA+0x7fff5010>
    13e8:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d7b54 <_start-0x1bc284ac>
    13ec:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7c4c <_RAM_DATA+0x7fff6c4c>
    13f0:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff8360 <_RAM_DATA+0x7fff7360>
    13f4:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18764 <_start-0x1bfe789c>
    13f8:	535f676e 	b	-38051996(0xdbb5f64) # fdbb735c <_RAM_DATA+0x7dbb635c>
    13fc:	65747379 	bge	$r27,$r25,95344(0x17470) # 1886c <_start-0x1bfe7794>
    1400:	43312f6d 	beqz	$r27,3617068(0x37312c) # 37452c <_start-0x1bc8bad4>
    1404:	2f323031 	0x2f323031
    1408:	2f637273 	0x2f637273
    140c:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 14380 <_start-0x1bfebc80>
    1410:	756c636e 	0x756c636e
    1414:	00006564 	rdtimeh.w	$r4,$r11
    1418:	7831736c 	0x7831736c
    141c:	7478655f 	0x7478655f
    1420:	00632e69 	bstrins.w	$r9,$r19,0x3,0xb
    1424:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff1424 <_RAM_DATA+0x7fff0424>
    1428:	61666564 	blt	$r11,$r4,91748(0x16664) # 17a8c <_start-0x1bfe8574>
    142c:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff8898 <_RAM_DATA+0x7fff7898>
    1430:	65707974 	bge	$r11,$r20,94328(0x17078) # 184a8 <_start-0x1bfe7b58>
    1434:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    1438:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff1438 <_RAM_DATA+0x7fff0438>
    143c:	69647473 	bltu	$r3,$r19,91252(0x16474) # 178b0 <_start-0x1bfe8750>
    1440:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 42b4 <_start-0x1bffbd4c>
    1444:	00000300 	0x00000300
    1448:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    144c:	0400682e 	csrwr	$r14,0x1a
    1450:	736c0000 	0x736c0000
    1454:	682e7831 	bltu	$r1,$r17,11896(0x2e78) # 42cc <_start-0x1bffbd34>
    1458:	00000400 	0x00000400
    145c:	7831736c 	0x7831736c
    1460:	7478655f 	0x7478655f
    1464:	00682e69 	bstrins.w	$r9,$r19,0x8,0xb
    1468:	00000001 	0x00000001
    146c:	05000105 	0x05000105
    1470:	00000002 	0x00000002
    1474:	03051700 	lu52i.d	$r0,$r24,325(0x145)
    1478:	06130513 	cacop	0x13,$r8,1217(0x4c1)
    147c:	06030501 	cacop	0x1,$r8,193(0xc1)
    1480:	0614054b 	cacop	0xb,$r10,1281(0x501)
    1484:	06030501 	cacop	0x1,$r8,193(0xc1)
    1488:	0613054b 	cacop	0xb,$r10,1217(0x4c1)
    148c:	06030501 	cacop	0x1,$r8,193(0xc1)
    1490:	0612054b 	cacop	0xb,$r10,1153(0x481)
    1494:	4b010501 	bcnez	$fcc0,459012(0x70104) # 71598 <_start-0x1bf8ea68>
    1498:	01000402 	0x01000402
    149c:	00010501 	0x00010501
    14a0:	00000205 	0x00000205
    14a4:	0d030000 	fsel	$f0,$f0,$f0,$fcc6
    14a8:	13030501 	addu16i.d	$r1,$r8,-16191(0xc0c1)
    14ac:	13131315 	addu16i.d	$r21,$r24,-15164(0xc4c4)
    14b0:	06160514 	cacop	0x14,$r8,1409(0x581)
    14b4:	4a060501 	bcnez	$fcc0,394756(0x60604) # 61ab8 <_start-0x1bf9e548>
    14b8:	4e060305 	jirl	$r5,$r24,-129536(0x20600)
    14bc:	01060e05 	0x01060e05
    14c0:	08060305 	0x08060305
    14c4:	060e05ad 	cacop	0xd,$r13,897(0x381)
    14c8:	06030501 	cacop	0x1,$r8,193(0xc1)
    14cc:	061505f3 	cacop	0x13,$r15,1345(0x541)
    14d0:	4a050501 	bcnez	$fcc0,394500(0x60504) # 619d4 <_start-0x1bf9e62c>
    14d4:	03054c06 	lu52i.d	$r6,$r0,339(0x153)
    14d8:	f50605f9 	0xf50605f9
    14dc:	01062905 	0x01062905
    14e0:	054a1605 	0x054a1605
    14e4:	05bc0606 	0x05bc0606
    14e8:	05010619 	0x05010619
    14ec:	88064a09 	0x88064a09
    14f0:	05bd0605 	0x05bd0605
    14f4:	086f0305 	fmsub.d	$f5,$f24,$f0,$f30
    14f8:	0306053c 	lu52i.d	$r28,$r9,385(0x181)
    14fc:	053c080a 	0x053c080a
    1500:	f20b0304 	0xf20b0304
    1504:	f4060105 	0xf4060105
    1508:	01000402 	0x01000402
    150c:	00010501 	0x00010501
    1510:	00000205 	0x00000205
    1514:	3c030000 	0x3c030000
    1518:	13030501 	addu16i.d	$r1,$r8,-16191(0xc0c1)
    151c:	01061e05 	0x01061e05
    1520:	4b060305 	0x4b060305
    1524:	01061e05 	0x01061e05
    1528:	83060305 	0x83060305
    152c:	01062105 	0x01062105
    1530:	4b060305 	0x4b060305
    1534:	01062105 	0x01062105
    1538:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    153c:	01010004 	fadd.d	$f4,$f0,$f0
    1540:	05000105 	0x05000105
    1544:	00000002 	0x00000002
    1548:	00c40300 	bstrpick.d	$r0,$r24,0x4,0x0
    154c:	13030501 	addu16i.d	$r1,$r8,-16191(0xc0c1)
    1550:	0c051414 	0x0c051414
    1554:	18050106 	pcaddi	$r6,10248(0x2808)
    1558:	4a06054a 	bcnez	$fcc2,2754052(0x2a0604) # 2a1b5c <_start-0x1bd5e4a4>
    155c:	054c0f05 	0x054c0f05
    1560:	05500603 	0x05500603
    1564:	02130601 	slti	$r1,$r16,1217(0x4c1)
    1568:	01010004 	fadd.d	$f4,$f0,$f0
    156c:	05000105 	0x05000105
    1570:	00000002 	0x00000002
    1574:	00d50300 	bstrpick.d	$r0,$r24,0x15,0x0
    1578:	14030501 	lu12i.w	$r1,6184(0x1828)
    157c:	06130514 	cacop	0x14,$r8,1217(0x4c1)
    1580:	01058201 	0x01058201
    1584:	0004024b 	alsl.w	$r11,$r18,$r0,0x1
    1588:	01050101 	fmul.d	$f1,$f8,$f0
    158c:	00020500 	0x00020500
    1590:	03000000 	lu52i.d	$r0,$r0,0
    1594:	050100dd 	0x050100dd
    1598:	14131303 	lu12i.w	$r3,39064(0x9898)
    159c:	06170514 	cacop	0x14,$r8,1473(0x5c1)
    15a0:	4a100501 	bcnez	$fcc0,397316(0x61004) # 625a4 <_start-0x1bf9da5c>
    15a4:	4c060305 	jirl	$r5,$r24,1536(0x600)
    15a8:	01060d05 	0x01060d05
    15ac:	054a1905 	0x054a1905
    15b0:	38054a06 	0x38054a06
    15b4:	01040200 	0x01040200
    15b8:	500f054a 	b	86511364(0x5280f04) # 52824bc <_start-0x16d7db44>
    15bc:	464a4a4a 	bnez	$r18,2771528(0x2a4a48) # 2a6004 <_start-0x1bd59ffc>
    15c0:	50060305 	b	-65796608(0xc140600) # fc141bc0 <_RAM_DATA+0x7c140bc0>
    15c4:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    15c8:	01000402 	0x01000402
    15cc:	00010501 	0x00010501
    15d0:	14cc0205 	lu12i.w	$r5,417808(0x66010)
    15d4:	f1031c00 	0xf1031c00
    15d8:	03050100 	lu52i.d	$r0,$r8,320(0x140)
    15dc:	13051414 	addu16i.d	$r20,$r0,-16059(0xc145)
    15e0:	05820106 	0x05820106
    15e4:	04024b01 	csrxchg	$r1,$r24,0x92
    15e8:	62010100 	blt	$r8,$r0,-130816(0x20100) # fffe16e8 <_RAM_DATA+0x7ffe06e8>
    15ec:	02000002 	slti	$r2,$r0,0
    15f0:	0001ff00 	asrtgt.d	$r24,$r31
    15f4:	fb010100 	0xfb010100
    15f8:	01000d0e 	0x01000d0e
    15fc:	00010101 	0x00010101
    1600:	00010000 	asrtle.d	$r0,$r0
    1604:	3a440100 	0x3a440100
    1608:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1895c <_start-0x1bfe76a4>
    160c:	772f7372 	0x772f7372
    1610:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    1614:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff8558 <_RAM_DATA+0x7fff7558>
    1618:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe7b84 <_RAM_DATA+0x7ffe6b84>
    161c:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd3458c <_RAM_DATA+0x7fd3358c>
    1620:	2f65646f 	0x2f65646f
    1624:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe8590 <_RAM_DATA+0x7ffe7590>
    1628:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff8868 <_RAM_DATA+0x7fff7868>
    162c:	72505f68 	0x72505f68
    1630:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    1634:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff849c <_RAM_DATA+0x7fff749c>
    1638:	7379535f 	0x7379535f
    163c:	2f6d6574 	0x2f6d6574
    1640:	30314331 	0x30314331
    1644:	72732f32 	0x72732f32
    1648:	77732f63 	0x77732f63
    164c:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe8bbc <_RAM_DATA+0x7ffe7bbc>
    1650:	0063696c 	bstrins.w	$r12,$r11,0x3,0x1a
    1654:	755c3a64 	0x755c3a64
    1658:	73726573 	0x73726573
    165c:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe77d0 <_RAM_DATA+0x7ffe67d0>
    1660:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 72d0 <_start-0x1bff8d30>
    1664:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 18bc4 <_start-0x1bfe743c>
    1668:	73746e65 	0x73746e65
    166c:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 85cc <_start-0x1bff7a34>
    1670:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff82cc <_RAM_DATA+0x7fff72cc>
    1674:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17de0 <_start-0x1bfe8220>
    1678:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7ed8 <_RAM_DATA+0x7fff6ed8>
    167c:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff85ec <_RAM_DATA+0x7fff75ec>
    1680:	69737365 	bltu	$r27,$r5,95088(0x17370) # 189f0 <_start-0x1bfe7610>
    1684:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1688:	65747379 	bge	$r27,$r25,95344(0x17470) # 18af8 <_start-0x1bfe7508>
    168c:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff47e8 <_RAM_DATA+0x7fff37e8>
    1690:	5c323031 	bne	$r1,$r17,12848(0x3230) # 48c0 <_start-0x1bffb740>
    1694:	5c637273 	bne	$r19,$r19,25456(0x6370) # 7a04 <_start-0x1bff85fc>
    1698:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 730c <_start-0x1bff8cf4>
    169c:	65646961 	bge	$r11,$r1,91240(0x16468) # 17b04 <_start-0x1bfe84fc>
    16a0:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 18c00 <_start-0x1bfe7400>
    16a4:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff8b08 <_RAM_DATA+0x7fff7b08>
    16a8:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7314 <_start-0x1bff8cec>
    16ac:	2d323361 	0x2d323361
    16b0:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 861c <_start-0x1bff79e4>
    16b4:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8620 <_RAM_DATA+0x7fff7620>
    16b8:	7261676e 	0x7261676e
    16bc:	32336863 	0x32336863
    16c0:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    16c4:	2d62696c 	0x2d62696c
    16c8:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 7d34 <_start-0x1bff82cc>
    16cc:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7a38 <_start-0x1bff85c8>
    16d0:	2f656475 	0x2f656475
    16d4:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 7a34 <_start-0x1bff85cc>
    16d8:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
    16dc:	755c3a64 	0x755c3a64
    16e0:	73726573 	0x73726573
    16e4:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe7858 <_RAM_DATA+0x7ffe6858>
    16e8:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 7358 <_start-0x1bff8ca8>
    16ec:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 18c4c <_start-0x1bfe73b4>
    16f0:	73746e65 	0x73746e65
    16f4:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 8654 <_start-0x1bff79ac>
    16f8:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff8354 <_RAM_DATA+0x7fff7354>
    16fc:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 17e68 <_start-0x1bfe8198>
    1700:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7f60 <_RAM_DATA+0x7fff6f60>
    1704:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff8674 <_RAM_DATA+0x7fff7674>
    1708:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18a78 <_start-0x1bfe7588>
    170c:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    1710:	65747379 	bge	$r27,$r25,95344(0x17470) # 18b80 <_start-0x1bfe7480>
    1714:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff4870 <_RAM_DATA+0x7fff3870>
    1718:	5c323031 	bne	$r1,$r17,12848(0x3230) # 4948 <_start-0x1bffb6b8>
    171c:	5c637273 	bne	$r19,$r19,25456(0x6370) # 7a8c <_start-0x1bff8574>
    1720:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 7394 <_start-0x1bff8c6c>
    1724:	65646961 	bge	$r11,$r1,91240(0x16468) # 17b8c <_start-0x1bfe8474>
    1728:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 18c88 <_start-0x1bfe7378>
    172c:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff8b90 <_RAM_DATA+0x7fff7b90>
    1730:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 739c <_start-0x1bff8c64>
    1734:	2d323361 	0x2d323361
    1738:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 86a4 <_start-0x1bff795c>
    173c:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff86a8 <_RAM_DATA+0x7fff76a8>
    1740:	7261676e 	0x7261676e
    1744:	32336863 	0x32336863
    1748:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    174c:	2d62696c 	0x2d62696c
    1750:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 7dbc <_start-0x1bff8244>
    1754:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 7ac0 <_start-0x1bff8540>
    1758:	2f656475 	0x2f656475
    175c:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    1760:	552f3a44 	bl	-116314312(0x9112f38) # f9114698 <_RAM_DATA+0x79113698>
    1764:	73726573 	0x73726573
    1768:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe78dc <_RAM_DATA+0x7ffe68dc>
    176c:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c46dc <_start-0x1be3b924>
    1770:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 18cd0 <_start-0x1bfe7330>
    1774:	73746e65 	0x73746e65
    1778:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 86b8 <_start-0x1bff7948>
    177c:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff63a8 <_RAM_DATA+0x7fff53a8>
    1780:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d7eec <_start-0x1bc28114>
    1784:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7fe4 <_RAM_DATA+0x7fff6fe4>
    1788:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff86f8 <_RAM_DATA+0x7fff76f8>
    178c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18afc <_start-0x1bfe7504>
    1790:	535f676e 	b	-38051996(0xdbb5f64) # fdbb76f4 <_RAM_DATA+0x7dbb66f4>
    1794:	65747379 	bge	$r27,$r25,95344(0x17470) # 18c04 <_start-0x1bfe73fc>
    1798:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3748c4 <_start-0x1bc8b73c>
    179c:	2f323031 	0x2f323031
    17a0:	2f637273 	0x2f637273
    17a4:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 14718 <_start-0x1bfeb8e8>
    17a8:	756c636e 	0x756c636e
    17ac:	00006564 	rdtimeh.w	$r4,$r11
    17b0:	7831736c 	0x7831736c
    17b4:	6764775f 	bge	$r26,$r31,-39820(0x36474) # ffff7c28 <_RAM_DATA+0x7fff6c28>
    17b8:	0100632e 	0x0100632e
    17bc:	645f0000 	bge	$r0,$r0,24320(0x5f00) # 76bc <_start-0x1bff8944>
    17c0:	75616665 	0x75616665
    17c4:	745f746c 	0x745f746c
    17c8:	73657079 	vssrani.wu.d	$vr25,$vr3,0x1c
    17cc:	0200682e 	slti	$r14,$r1,26(0x1a)
    17d0:	735f0000 	vsrarni.d.q	$vr0,$vr0,0x40
    17d4:	6e696474 	bgeu	$r3,$r20,-104092(0x26964) # fffe8138 <_RAM_DATA+0x7ffe7138>
    17d8:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    17dc:	74000003 	xvseq.b	$xr3,$xr0,$xr0
    17e0:	2e747365 	0x2e747365
    17e4:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    17e8:	31736c00 	0x31736c00
    17ec:	00682e78 	bstrins.w	$r24,$r19,0x8,0xb
    17f0:	00000004 	0x00000004
    17f4:	05000105 	0x05000105
    17f8:	00000002 	0x00000002
    17fc:	05051700 	0x05051700
    1800:	06130513 	cacop	0x13,$r8,1217(0x4c1)
    1804:	06050501 	cacop	0x1,$r8,321(0x141)
    1808:	061705f3 	cacop	0x13,$r15,1473(0x5c1)
    180c:	4a1d0501 	bcnez	$fcc0,400644(0x61d04) # 63510 <_start-0x1bf9caf0>
    1810:	054a2305 	0x054a2305
    1814:	01054a12 	fmul.d	$f18,$f16,$f18
    1818:	0004024b 	alsl.w	$r11,$r18,$r0,0x1
    181c:	01050101 	fmul.d	$f1,$f8,$f0
    1820:	dc020500 	0xdc020500
    1824:	031c0014 	lu52i.d	$r20,$r0,1792(0x700)
    1828:	0505010b 	0x0505010b
    182c:	06130513 	cacop	0x13,$r8,1217(0x4c1)
    1830:	f3010501 	0xf3010501
    1834:	01000402 	0x01000402
    1838:	00010501 	0x00010501
    183c:	00000205 	0x00000205
    1840:	11030000 	addu16i.d	$r0,$r0,16576(0x40c0)
    1844:	83050501 	0x83050501
    1848:	bb060105 	0xbb060105
    184c:	01000c02 	0x01000c02
    1850:	0003e101 	0x0003e101
    1854:	10000200 	addu16i.d	$r0,$r16,0
    1858:	01000002 	0x01000002
    185c:	0d0efb01 	0x0d0efb01
    1860:	01010100 	fadd.d	$f0,$f8,$f0
    1864:	00000001 	0x00000001
    1868:	01000001 	0x01000001
    186c:	552f3a44 	bl	-116314312(0x9112f38) # f91147a4 <_RAM_DATA+0x791137a4>
    1870:	73726573 	0x73726573
    1874:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe79e8 <_RAM_DATA+0x7ffe69e8>
    1878:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c47e8 <_start-0x1be3b818>
    187c:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 18ddc <_start-0x1bfe7224>
    1880:	73746e65 	0x73746e65
    1884:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 87c4 <_start-0x1bff783c>
    1888:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff64b4 <_RAM_DATA+0x7fff54b4>
    188c:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d7ff8 <_start-0x1bc28008>
    1890:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff80f0 <_RAM_DATA+0x7fff70f0>
    1894:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff8804 <_RAM_DATA+0x7fff7804>
    1898:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18c08 <_start-0x1bfe73f8>
    189c:	535f676e 	b	-38051996(0xdbb5f64) # fdbb7800 <_RAM_DATA+0x7dbb6800>
    18a0:	65747379 	bge	$r27,$r25,95344(0x17470) # 18d10 <_start-0x1bfe72f0>
    18a4:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3749d0 <_start-0x1bc8b630>
    18a8:	2f323031 	0x2f323031
    18ac:	2f637273 	0x2f637273
    18b0:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
    18b4:	61766972 	blt	$r11,$r18,95848(0x17668) # 18f1c <_start-0x1bfe70e4>
    18b8:	64006574 	bge	$r11,$r20,100(0x64) # 191c <_start-0x1bffe6e4>
    18bc:	73755c3a 	0x73755c3a
    18c0:	5c737265 	bne	$r19,$r5,29552(0x7370) # 8c30 <_start-0x1bff73d0>
    18c4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8724 <_RAM_DATA+0x7fff7724>
    18c8:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff7d24 <_RAM_DATA+0x7fff6d24>
    18cc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18640 <_start-0x1bfe79c0>
    18d0:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 8c44 <_start-0x1bff73bc>
    18d4:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 17d40 <_start-0x1bfe82c0>
    18d8:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8844 <_RAM_DATA+0x7fff7844>
    18dc:	7261676e 	0x7261676e
    18e0:	705f6863 	0x705f6863
    18e4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17c50 <_start-0x1bfe83b0>
    18e8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8258 <_RAM_DATA+0x7ffe7258>
    18ec:	79735f67 	0x79735f67
    18f0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17e64 <_start-0x1bfe819c>
    18f4:	3163315c 	0x3163315c
    18f8:	735c3230 	0x735c3230
    18fc:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    1900:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 1855c <_start-0x1bfe7aa4>
    1904:	5c656469 	bne	$r3,$r9,25956(0x6564) # 7e68 <_start-0x1bff8198>
    1908:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 827c <_start-0x1bff7d84>
    190c:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff8880 <_RAM_DATA+0x7fff7880>
    1910:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 1856c <_start-0x1bfe7a94>
    1914:	742d3233 	0x742d3233
    1918:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 8584 <_start-0x1bff7a7c>
    191c:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe8888 <_RAM_DATA+0x7ffe7888>
    1920:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff8b80 <_RAM_DATA+0x7fff7b80>
    1924:	2d323368 	0x2d323368
    1928:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 908c <_start-0x1bff6f74>
    192c:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 1468c <_start-0x1bfeb974>
    1930:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 17594 <_start-0x1bfe8a6c>
    1934:	756c636e 	0x756c636e
    1938:	6d2f6564 	bgeu	$r11,$r4,77668(0x12f64) # 1489c <_start-0x1bfeb764>
    193c:	69686361 	bltu	$r27,$r1,92256(0x16860) # 1819c <_start-0x1bfe7e64>
    1940:	6400656e 	bge	$r11,$r14,100(0x64) # 19a4 <_start-0x1bffe65c>
    1944:	73755c3a 	0x73755c3a
    1948:	5c737265 	bne	$r19,$r5,29552(0x7370) # 8cb8 <_start-0x1bff7348>
    194c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff87ac <_RAM_DATA+0x7fff77ac>
    1950:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff7dac <_RAM_DATA+0x7fff6dac>
    1954:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 186c8 <_start-0x1bfe7938>
    1958:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 8ccc <_start-0x1bff7334>
    195c:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 17dc8 <_start-0x1bfe8238>
    1960:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff88cc <_RAM_DATA+0x7fff78cc>
    1964:	7261676e 	0x7261676e
    1968:	705f6863 	0x705f6863
    196c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17cd8 <_start-0x1bfe8328>
    1970:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe82e0 <_RAM_DATA+0x7ffe72e0>
    1974:	79735f67 	0x79735f67
    1978:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17eec <_start-0x1bfe8114>
    197c:	3163315c 	0x3163315c
    1980:	735c3230 	0x735c3230
    1984:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    1988:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 185e4 <_start-0x1bfe7a1c>
    198c:	5c656469 	bne	$r3,$r9,25956(0x6564) # 7ef0 <_start-0x1bff8110>
    1990:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 8304 <_start-0x1bff7cfc>
    1994:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff8908 <_RAM_DATA+0x7fff7908>
    1998:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 185f4 <_start-0x1bfe7a0c>
    199c:	742d3233 	0x742d3233
    19a0:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 860c <_start-0x1bff79f4>
    19a4:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe8910 <_RAM_DATA+0x7ffe7910>
    19a8:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff8c08 <_RAM_DATA+0x7fff7c08>
    19ac:	2d323368 	0x2d323368
    19b0:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 9114 <_start-0x1bff6eec>
    19b4:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 14714 <_start-0x1bfeb8ec>
    19b8:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 1761c <_start-0x1bfe89e4>
    19bc:	756c636e 	0x756c636e
    19c0:	732f6564 	0x732f6564
    19c4:	44007379 	bnez	$r27,-1834896(0x640070) # ffe41a34 <_RAM_DATA+0x7fe40a34>
    19c8:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    19cc:	2f737265 	0x2f737265
    19d0:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8830 <_RAM_DATA+0x7fff7830>
    19d4:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5e00 <_RAM_DATA+0x7fff4e00>
    19d8:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 1874c <_start-0x1bfe78b4>
    19dc:	2f73746e 	0x2f73746e
    19e0:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17e4c <_start-0x1bfe81b4>
    19e4:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff8930 <_RAM_DATA+0x7fff7930>
    19e8:	7241676e 	0x7241676e
    19ec:	505f6863 	b	25976680(0x18c5f68) # 18c7954 <_start-0x1a7386ac>
    19f0:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17d5c <_start-0x1bfe82a4>
    19f4:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8364 <_RAM_DATA+0x7ffe7364>
    19f8:	79535f67 	0x79535f67
    19fc:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17f70 <_start-0x1bfe8090>
    1a00:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    1a04:	732f3230 	0x732f3230
    1a08:	732f6372 	0x732f6372
    1a0c:	6e692f77 	bgeu	$r27,$r23,-104148(0x2692c) # fffe8338 <_RAM_DATA+0x7ffe7338>
    1a10:	64756c63 	bge	$r3,$r3,30060(0x756c) # 8f7c <_start-0x1bff7084>
    1a14:	6c000065 	bgeu	$r3,$r5,0 # 1a14 <_start-0x1bffe5ec>
    1a18:	31633173 	0x31633173
    1a1c:	705f3230 	0x705f3230
    1a20:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 18788 <_start-0x1bfe7878>
    1a24:	00632e72 	bstrins.w	$r18,$r19,0x3,0xb
    1a28:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff1a28 <_RAM_DATA+0x7fff0a28>
    1a2c:	61666564 	blt	$r11,$r4,91748(0x16664) # 18090 <_start-0x1bfe7f70>
    1a30:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff8e9c <_RAM_DATA+0x7fff7e9c>
    1a34:	65707974 	bge	$r11,$r20,94328(0x17078) # 18aac <_start-0x1bfe7554>
    1a38:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    1a3c:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff1a3c <_RAM_DATA+0x7fff0a3c>
    1a40:	69647473 	bltu	$r3,$r19,91252(0x16474) # 17eb4 <_start-0x1bfe814c>
    1a44:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 48b8 <_start-0x1bffb748>
    1a48:	00000300 	0x00000300
    1a4c:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    1a50:	0400682e 	csrwr	$r14,0x1a
    1a54:	736c0000 	0x736c0000
    1a58:	30316331 	0x30316331
    1a5c:	74705f32 	xvmax.b	$xr18,$xr25,$xr23
    1a60:	72656d69 	0x72656d69
    1a64:	0100682e 	0x0100682e
    1a68:	05000000 	0x05000000
    1a6c:	02050001 	slti	$r1,$r0,320(0x140)
    1a70:	00000000 	0x00000000
    1a74:	05010d03 	0x05010d03
    1a78:	0e051305 	0x0e051305
    1a7c:	05050106 	0x05050106
    1a80:	0e058306 	0x0e058306
    1a84:	05050106 	0x05050106
    1a88:	1d058306 	pcaddu12i	$r6,-513000(0x82c18)
    1a8c:	0e050106 	0x0e050106
    1a90:	0605054a 	cacop	0xa,$r10,321(0x141)
    1a94:	061d0583 	cacop	0x3,$r12,1857(0x741)
    1a98:	4a0e0501 	bcnez	$fcc0,396804(0x60e04) # 6289c <_start-0x1bf9d764>
    1a9c:	83060505 	0x83060505
    1aa0:	061705f3 	cacop	0x13,$r15,1473(0x5c1)
    1aa4:	4a080501 	bcnez	$fcc0,395268(0x60804) # 622a8 <_start-0x1bf9dd58>
    1aa8:	4c060605 	jirl	$r5,$r16,1540(0x604)
    1aac:	3e080505 	0x3e080505
    1ab0:	01053d08 	fmul.d	$f8,$f8,$f15
    1ab4:	0402f306 	csrxchg	$r6,$r24,0xbc
    1ab8:	05010100 	0x05010100
    1abc:	02050001 	slti	$r1,$r0,320(0x140)
    1ac0:	00000000 	0x00000000
    1ac4:	05012203 	0x05012203
    1ac8:	1d051402 	pcaddu12i	$r2,-513888(0x828a0)
    1acc:	02050106 	slti	$r6,$r8,320(0x140)
    1ad0:	1d05bb06 	pcaddu12i	$r6,-512552(0x82dd8)
    1ad4:	02050106 	slti	$r6,$r8,320(0x140)
    1ad8:	1d058306 	pcaddu12i	$r6,-513000(0x82c18)
    1adc:	02050106 	slti	$r6,$r8,320(0x140)
    1ae0:	20058306 	ll.w	$r6,$r24,1408(0x580)
    1ae4:	02050106 	slti	$r6,$r8,320(0x140)
    1ae8:	1b058306 	pcalau12i	$r6,-513000(0x82c18)
    1aec:	02050106 	slti	$r6,$r8,320(0x140)
    1af0:	1b05bb06 	pcalau12i	$r6,-512552(0x82dd8)
    1af4:	02050106 	slti	$r6,$r8,320(0x140)
    1af8:	1b05bb06 	pcalau12i	$r6,-512552(0x82dd8)
    1afc:	01050106 	fmul.d	$f6,$f8,$f0
    1b00:	0004024b 	alsl.w	$r11,$r18,$r0,0x1
    1b04:	01050101 	fmul.d	$f1,$f8,$f0
    1b08:	00020500 	0x00020500
    1b0c:	03000000 	lu52i.d	$r0,$r0,0
    1b10:	04050136 	csrxchg	$r22,$r9,0x140
    1b14:	06070513 	cacop	0x13,$r8,449(0x1c1)
    1b18:	06060501 	cacop	0x1,$r8,385(0x181)
    1b1c:	0610054d 	cacop	0xd,$r10,1025(0x401)
    1b20:	06060501 	cacop	0x1,$r8,385(0x181)
    1b24:	10054108 	addu16i.d	$r8,$r8,336(0x150)
    1b28:	01050106 	fmul.d	$f6,$f8,$f0
    1b2c:	000402f4 	alsl.w	$r20,$r23,$r0,0x1
    1b30:	01050101 	fmul.d	$f1,$f8,$f0
    1b34:	00020500 	0x00020500
    1b38:	03000000 	lu52i.d	$r0,$r0,0
    1b3c:	050100c4 	0x050100c4
    1b40:	07051304 	0x07051304
    1b44:	06050106 	cacop	0x6,$r8,320(0x140)
    1b48:	10054d06 	addu16i.d	$r6,$r8,339(0x153)
    1b4c:	06050106 	cacop	0x6,$r8,320(0x140)
    1b50:	7908f306 	0x7908f306
    1b54:	01061005 	0x01061005
    1b58:	f3060605 	0xf3060605
    1b5c:	f4060105 	0xf4060105
    1b60:	01000402 	0x01000402
    1b64:	00010501 	0x00010501
    1b68:	00000205 	0x00000205
    1b6c:	da030000 	0xda030000
    1b70:	02050100 	slti	$r0,$r8,320(0x140)
    1b74:	14050513 	lu12i.w	$r19,10280(0x2828)
    1b78:	01060a05 	0x01060a05
    1b7c:	bc060205 	0xbc060205
    1b80:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    1b84:	01000402 	0x01000402
    1b88:	00010501 	0x00010501
    1b8c:	00000205 	0x00000205
    1b90:	ea030000 	0xea030000
    1b94:	03050100 	lu52i.d	$r0,$r8,320(0x140)
    1b98:	060d0514 	cacop	0x14,$r8,833(0x341)
    1b9c:	bb010501 	0xbb010501
    1ba0:	01000402 	0x01000402
    1ba4:	00010501 	0x00010501
    1ba8:	00000205 	0x00000205
    1bac:	f8030000 	0xf8030000
    1bb0:	04050100 	csrxchg	$r0,$r8,0x140
    1bb4:	060e0514 	cacop	0x14,$r8,897(0x381)
    1bb8:	bb010501 	0xbb010501
    1bbc:	01000402 	0x01000402
    1bc0:	00010501 	0x00010501
    1bc4:	00000205 	0x00000205
    1bc8:	85030000 	0x85030000
    1bcc:	02050101 	slti	$r1,$r8,320(0x140)
    1bd0:	14050513 	lu12i.w	$r19,10280(0x2828)
    1bd4:	01060a05 	0x01060a05
    1bd8:	bc060205 	0xbc060205
    1bdc:	14060105 	lu12i.w	$r5,12296(0x3008)
    1be0:	01000402 	0x01000402
    1be4:	00010501 	0x00010501
    1be8:	14f00205 	lu12i.w	$r5,491536(0x78010)
    1bec:	99031c00 	0x99031c00
    1bf0:	03050101 	lu52i.d	$r1,$r8,320(0x140)
    1bf4:	08051313 	0x08051313
    1bf8:	12050106 	addu16i.d	$r6,$r8,-32448(0x8140)
    1bfc:	4a060582 	bcnez	$fcc4,656900(0xa0604) # a2200 <_start-0x1bf5de00>
    1c00:	054c0f05 	0x054c0f05
    1c04:	05500603 	0x05500603
    1c08:	02130601 	slti	$r1,$r16,1217(0x4c1)
    1c0c:	01010004 	fadd.d	$f4,$f0,$f0
    1c10:	05000105 	0x05000105
    1c14:	00150802 	or	$r2,$r0,$r2
    1c18:	01ae031c 	0x01ae031c
    1c1c:	14040501 	lu12i.w	$r1,8232(0x2028)
    1c20:	01060e05 	0x01060e05
    1c24:	060405ba 	cacop	0x1a,$r13,257(0x101)
    1c28:	060c054b 	cacop	0xb,$r10,769(0x301)
    1c2c:	08010501 	0x08010501
    1c30:	00040275 	alsl.w	$r21,$r19,$r0,0x1
    1c34:	03820101 	ori	$r1,$r8,0x80
    1c38:	00020000 	0x00020000
    1c3c:	000002c5 	0x000002c5
    1c40:	0efb0101 	0x0efb0101
    1c44:	0101000d 	fadd.d	$f13,$f0,$f0
    1c48:	00000101 	0x00000101
    1c4c:	00000100 	0x00000100
    1c50:	2f3a4401 	0x2f3a4401
    1c54:	72657355 	0x72657355
    1c58:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19384 <_start-0x1bfe6c7c>
    1c5c:	2f73676e 	0x2f73676e
    1c60:	75636f44 	0x75636f44
    1c64:	746e656d 	0x746e656d
    1c68:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff5f94 <_RAM_DATA+0x7fff4f94>
    1c6c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    1c70:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff8adc <_RAM_DATA+0x7fff7adc>
    1c74:	68637241 	bltu	$r18,$r1,25456(0x6370) # 7fe4 <_start-0x1bff801c>
    1c78:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff8ec8 <_RAM_DATA+0x7fff7ec8>
    1c7c:	73736563 	0x73736563
    1c80:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff83ec <_RAM_DATA+0x7fff73ec>
    1c84:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    1c88:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    1c8c:	32303143 	0x32303143
    1c90:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff8f00 <_RAM_DATA+0x7fff7f00>
    1c94:	2f77732f 	0x2f77732f
    1c98:	76697264 	0x76697264
    1c9c:	64007265 	bge	$r19,$r5,112(0x70) # 1d0c <_start-0x1bffe2f4>
    1ca0:	73755c3a 	0x73755c3a
    1ca4:	5c737265 	bne	$r19,$r5,29552(0x7370) # 9014 <_start-0x1bff6fec>
    1ca8:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8b08 <_RAM_DATA+0x7fff7b08>
    1cac:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff8108 <_RAM_DATA+0x7fff7108>
    1cb0:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18a24 <_start-0x1bfe75dc>
    1cb4:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 9028 <_start-0x1bff6fd8>
    1cb8:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 18124 <_start-0x1bfe7edc>
    1cbc:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8c28 <_RAM_DATA+0x7fff7c28>
    1cc0:	7261676e 	0x7261676e
    1cc4:	705f6863 	0x705f6863
    1cc8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 18034 <_start-0x1bfe7fcc>
    1ccc:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe863c <_RAM_DATA+0x7ffe763c>
    1cd0:	79735f67 	0x79735f67
    1cd4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18248 <_start-0x1bfe7db8>
    1cd8:	3163315c 	0x3163315c
    1cdc:	735c3230 	0x735c3230
    1ce0:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    1ce4:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 18940 <_start-0x1bfe76c0>
    1ce8:	5c656469 	bne	$r3,$r9,25956(0x6564) # 824c <_start-0x1bff7db4>
    1cec:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 8660 <_start-0x1bff79a0>
    1cf0:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff8c64 <_RAM_DATA+0x7fff7c64>
    1cf4:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 18950 <_start-0x1bfe76b0>
    1cf8:	742d3233 	0x742d3233
    1cfc:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 8968 <_start-0x1bff7698>
    1d00:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe8c6c <_RAM_DATA+0x7ffe7c6c>
    1d04:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff8f64 <_RAM_DATA+0x7fff7f64>
    1d08:	2d323368 	0x2d323368
    1d0c:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 9470 <_start-0x1bff6b90>
    1d10:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 14a70 <_start-0x1bfeb590>
    1d14:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 17978 <_start-0x1bfe8688>
    1d18:	756c636e 	0x756c636e
    1d1c:	6d2f6564 	bgeu	$r11,$r4,77668(0x12f64) # 14c80 <_start-0x1bfeb380>
    1d20:	69686361 	bltu	$r27,$r1,92256(0x16860) # 18580 <_start-0x1bfe7a80>
    1d24:	6400656e 	bge	$r11,$r14,100(0x64) # 1d88 <_start-0x1bffe278>
    1d28:	73755c3a 	0x73755c3a
    1d2c:	5c737265 	bne	$r19,$r5,29552(0x7370) # 909c <_start-0x1bff6f64>
    1d30:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8b90 <_RAM_DATA+0x7fff7b90>
    1d34:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff8190 <_RAM_DATA+0x7fff7190>
    1d38:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18aac <_start-0x1bfe7554>
    1d3c:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 90b0 <_start-0x1bff6f50>
    1d40:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 181ac <_start-0x1bfe7e54>
    1d44:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8cb0 <_RAM_DATA+0x7fff7cb0>
    1d48:	7261676e 	0x7261676e
    1d4c:	705f6863 	0x705f6863
    1d50:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 180bc <_start-0x1bfe7f44>
    1d54:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe86c4 <_RAM_DATA+0x7ffe76c4>
    1d58:	79735f67 	0x79735f67
    1d5c:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 182d0 <_start-0x1bfe7d30>
    1d60:	3163315c 	0x3163315c
    1d64:	735c3230 	0x735c3230
    1d68:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    1d6c:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 189c8 <_start-0x1bfe7638>
    1d70:	5c656469 	bne	$r3,$r9,25956(0x6564) # 82d4 <_start-0x1bff7d2c>
    1d74:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 86e8 <_start-0x1bff7918>
    1d78:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff8cec <_RAM_DATA+0x7fff7cec>
    1d7c:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 189d8 <_start-0x1bfe7628>
    1d80:	742d3233 	0x742d3233
    1d84:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 89f0 <_start-0x1bff7610>
    1d88:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe8cf4 <_RAM_DATA+0x7ffe7cf4>
    1d8c:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff8fec <_RAM_DATA+0x7fff7fec>
    1d90:	2d323368 	0x2d323368
    1d94:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 94f8 <_start-0x1bff6b08>
    1d98:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 14af8 <_start-0x1bfeb508>
    1d9c:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 17a00 <_start-0x1bfe8600>
    1da0:	756c636e 	0x756c636e
    1da4:	732f6564 	0x732f6564
    1da8:	44007379 	bnez	$r27,-1834896(0x640070) # ffe41e18 <_RAM_DATA+0x7fe40e18>
    1dac:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    1db0:	2f737265 	0x2f737265
    1db4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8c14 <_RAM_DATA+0x7fff7c14>
    1db8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff61e4 <_RAM_DATA+0x7fff51e4>
    1dbc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18b30 <_start-0x1bfe74d0>
    1dc0:	2f73746e 	0x2f73746e
    1dc4:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 18230 <_start-0x1bfe7dd0>
    1dc8:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff8d14 <_RAM_DATA+0x7fff7d14>
    1dcc:	7241676e 	0x7241676e
    1dd0:	505f6863 	b	25976680(0x18c5f68) # 18c7d38 <_start-0x1a7382c8>
    1dd4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 18140 <_start-0x1bfe7ec0>
    1dd8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8748 <_RAM_DATA+0x7ffe7748>
    1ddc:	79535f67 	0x79535f67
    1de0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18354 <_start-0x1bfe7cac>
    1de4:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    1de8:	732f3230 	0x732f3230
    1dec:	732f6372 	0x732f6372
    1df0:	6e692f77 	bgeu	$r27,$r23,-104148(0x2692c) # fffe871c <_RAM_DATA+0x7ffe771c>
    1df4:	64756c63 	bge	$r3,$r3,30060(0x756c) # 9360 <_start-0x1bff6ca0>
    1df8:	3a440065 	0x3a440065
    1dfc:	6573552f 	bge	$r9,$r15,95060(0x17354) # 19150 <_start-0x1bfe6eb0>
    1e00:	772f7372 	0x772f7372
    1e04:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    1e08:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff8d4c <_RAM_DATA+0x7fff7d4c>
    1e0c:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8378 <_RAM_DATA+0x7ffe7378>
    1e10:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd34d80 <_RAM_DATA+0x7fd33d80>
    1e14:	2f65646f 	0x2f65646f
    1e18:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe8d84 <_RAM_DATA+0x7ffe7d84>
    1e1c:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff905c <_RAM_DATA+0x7fff805c>
    1e20:	72505f68 	0x72505f68
    1e24:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    1e28:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff8c90 <_RAM_DATA+0x7fff7c90>
    1e2c:	7379535f 	0x7379535f
    1e30:	2f6d6574 	0x2f6d6574
    1e34:	30314331 	0x30314331
    1e38:	72732f32 	0x72732f32
    1e3c:	77732f63 	0x77732f63
    1e40:	6f6f742f 	bgeu	$r1,$r15,-37004(0x36f74) # ffff8db4 <_RAM_DATA+0x7fff7db4>
    1e44:	3a44006c 	0x3a44006c
    1e48:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1919c <_start-0x1bfe6e64>
    1e4c:	772f7372 	0x772f7372
    1e50:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    1e54:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff8d98 <_RAM_DATA+0x7fff7d98>
    1e58:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe83c4 <_RAM_DATA+0x7ffe73c4>
    1e5c:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd34dcc <_RAM_DATA+0x7fd33dcc>
    1e60:	2f65646f 	0x2f65646f
    1e64:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe8dd0 <_RAM_DATA+0x7ffe7dd0>
    1e68:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff90a8 <_RAM_DATA+0x7fff80a8>
    1e6c:	72505f68 	0x72505f68
    1e70:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    1e74:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff8cdc <_RAM_DATA+0x7fff7cdc>
    1e78:	7379535f 	0x7379535f
    1e7c:	2f6d6574 	0x2f6d6574
    1e80:	30314331 	0x30314331
    1e84:	72732f32 	0x72732f32
    1e88:	77732f63 	0x77732f63
    1e8c:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe93fc <_RAM_DATA+0x7ffe83fc>
    1e90:	0063696c 	bstrins.w	$r12,$r11,0x3,0x1a
    1e94:	72617500 	0x72617500
    1e98:	73655474 	vssrani.wu.d	$vr20,$vr3,0x15
    1e9c:	00632e74 	bstrins.w	$r20,$r19,0x3,0xb
    1ea0:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff1ea0 <_RAM_DATA+0x7fff0ea0>
    1ea4:	61666564 	blt	$r11,$r4,91748(0x16664) # 18508 <_start-0x1bfe7af8>
    1ea8:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff9314 <_RAM_DATA+0x7fff8314>
    1eac:	65707974 	bge	$r11,$r20,94328(0x17078) # 18f24 <_start-0x1bfe70dc>
    1eb0:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    1eb4:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff1eb4 <_RAM_DATA+0x7fff0eb4>
    1eb8:	69647473 	bltu	$r3,$r19,91252(0x16474) # 1832c <_start-0x1bfe7cd4>
    1ebc:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 4d30 <_start-0x1bffb2d0>
    1ec0:	00000300 	0x00000300
    1ec4:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    1ec8:	0400682e 	csrwr	$r14,0x1a
    1ecc:	736c0000 	0x736c0000
    1ed0:	682e7831 	bltu	$r1,$r17,11896(0x2e78) # 4d48 <_start-0x1bffb2b8>
    1ed4:	00000400 	0x00000400
    1ed8:	66667542 	bge	$r10,$r2,-104844(0x26674) # fffe854c <_RAM_DATA+0x7ffe754c>
    1edc:	682e7265 	bltu	$r19,$r5,11888(0x2e70) # 4d4c <_start-0x1bffb2b4>
    1ee0:	00000500 	0x00000500
    1ee4:	7831736c 	0x7831736c
    1ee8:	74616c5f 	xvabsd.w	$xr31,$xr2,$xr27
    1eec:	72656d69 	0x72656d69
    1ef0:	0600682e 	cacop	0xe,$r1,26(0x1a)
    1ef4:	736c0000 	0x736c0000
    1ef8:	775f7831 	xvsrarni.d.q	$xr17,$xr1,0x5e
    1efc:	682e6764 	bltu	$r27,$r4,11876(0x2e64) # 4d60 <_start-0x1bffb2a0>
    1f00:	00000600 	0x00000600
    1f04:	00010500 	asrtle.d	$r8,$r1
    1f08:	00000205 	0x00000205
    1f0c:	11030000 	addu16i.d	$r0,$r0,16576(0x40c0)
    1f10:	83020501 	0x83020501
    1f14:	01060e05 	0x01060e05
    1f18:	bb060205 	0xbb060205
    1f1c:	01053d08 	fmul.d	$f8,$f8,$f15
    1f20:	02760806 	sltui	$r6,$r0,-638(0xd82)
    1f24:	0101000c 	fadd.d	$f12,$f0,$f0
    1f28:	05001d05 	0x05001d05
    1f2c:	00153402 	or	$r2,$r0,$r13
    1f30:	0117031c 	0x0117031c
    1f34:	02050106 	slti	$r6,$r8,320(0x140)
    1f38:	0e058306 	0x0e058306
    1f3c:	02050106 	slti	$r6,$r8,320(0x140)
    1f40:	ba06f306 	0xba06f306
    1f44:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    1f48:	0101000c 	fadd.d	$f12,$f0,$f0
    1f4c:	05001605 	0x05001605
    1f50:	00000002 	0x00000002
    1f54:	011c0300 	0x011c0300
    1f58:	83f60405 	0x83f60405
    1f5c:	05837508 	0x05837508
    1f60:	05010610 	0x05010610
    1f64:	7a030602 	0x7a030602
    1f68:	130305ba 	addu16i.d	$r26,$r13,-16191(0xc0c1)
    1f6c:	0606054b 	cacop	0xb,$r10,385(0x181)
    1f70:	ba050501 	0xba050501
    1f74:	01000802 	0x01000802
    1f78:	00010501 	0x00010501
    1f7c:	00000205 	0x00000205
    1f80:	29030000 	st.b	$r0,$r0,192(0xc0)
    1f84:	bb020501 	0xbb020501
    1f88:	05bb13bb 	0x05bb13bb
    1f8c:	0501060e 	0x0501060e
    1f90:	05bb0602 	0x05bb0602
    1f94:	05010607 	0x05010607
    1f98:	04020002 	csrrd	$r2,0x80
    1f9c:	03054a01 	lu52i.d	$r1,$r16,338(0x152)
    1fa0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    1fa4:	11058306 	addu16i.d	$r6,$r24,16736(0x4160)
    1fa8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    1fac:	0200b906 	slti	$r6,$r8,46(0x2e)
    1fb0:	054a0304 	0x054a0304
    1fb4:	02824d01 	addi.w	$r1,$r8,147(0x93)
    1fb8:	01010008 	fadd.d	$f8,$f0,$f0
    1fbc:	000006f2 	0x000006f2
    1fc0:	01fd0002 	0x01fd0002
    1fc4:	01010000 	fadd.d	$f0,$f0,$f0
    1fc8:	000d0efb 	bytepick.d	$r27,$r23,$r3,0x2
    1fcc:	01010101 	fadd.d	$f1,$f8,$f0
    1fd0:	01000000 	0x01000000
    1fd4:	44010000 	bnez	$r0,256(0x100) # 20d4 <_start-0x1bffdf2c>
    1fd8:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    1fdc:	2f737265 	0x2f737265
    1fe0:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8e40 <_RAM_DATA+0x7fff7e40>
    1fe4:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff6410 <_RAM_DATA+0x7fff5410>
    1fe8:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18d5c <_start-0x1bfe72a4>
    1fec:	2f73746e 	0x2f73746e
    1ff0:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 1845c <_start-0x1bfe7ba4>
    1ff4:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff8f40 <_RAM_DATA+0x7fff7f40>
    1ff8:	7241676e 	0x7241676e
    1ffc:	505f6863 	b	25976680(0x18c5f68) # 18c7f64 <_start-0x1a73809c>
    2000:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 1836c <_start-0x1bfe7c94>
    2004:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8974 <_RAM_DATA+0x7ffe7974>
    2008:	79535f67 	0x79535f67
    200c:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18580 <_start-0x1bfe7a80>
    2010:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    2014:	732f3230 	0x732f3230
    2018:	732f6372 	0x732f6372
    201c:	6f742f77 	bgeu	$r27,$r23,-35796(0x3742c) # ffff9448 <_RAM_DATA+0x7fff8448>
    2020:	64006c6f 	bge	$r3,$r15,108(0x6c) # 208c <_start-0x1bffdf74>
    2024:	73755c3a 	0x73755c3a
    2028:	5c737265 	bne	$r19,$r5,29552(0x7370) # 9398 <_start-0x1bff6c68>
    202c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8e8c <_RAM_DATA+0x7fff7e8c>
    2030:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff848c <_RAM_DATA+0x7fff748c>
    2034:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18da8 <_start-0x1bfe7258>
    2038:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 93ac <_start-0x1bff6c54>
    203c:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 184a8 <_start-0x1bfe7b58>
    2040:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff8fac <_RAM_DATA+0x7fff7fac>
    2044:	7261676e 	0x7261676e
    2048:	705f6863 	0x705f6863
    204c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 183b8 <_start-0x1bfe7c48>
    2050:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe89c0 <_RAM_DATA+0x7ffe79c0>
    2054:	79735f67 	0x79735f67
    2058:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 185cc <_start-0x1bfe7a34>
    205c:	3163315c 	0x3163315c
    2060:	735c3230 	0x735c3230
    2064:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    2068:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 18cc4 <_start-0x1bfe733c>
    206c:	5c656469 	bne	$r3,$r9,25956(0x6564) # 85d0 <_start-0x1bff7a30>
    2070:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 89e4 <_start-0x1bff761c>
    2074:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff8fe8 <_RAM_DATA+0x7fff7fe8>
    2078:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 18cd4 <_start-0x1bfe732c>
    207c:	742d3233 	0x742d3233
    2080:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 8cec <_start-0x1bff7314>
    2084:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe8ff0 <_RAM_DATA+0x7ffe7ff0>
    2088:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff92e8 <_RAM_DATA+0x7fff82e8>
    208c:	2d323368 	0x2d323368
    2090:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 97f4 <_start-0x1bff680c>
    2094:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 14df4 <_start-0x1bfeb20c>
    2098:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 17cfc <_start-0x1bfe8304>
    209c:	756c636e 	0x756c636e
    20a0:	6d2f6564 	bgeu	$r11,$r4,77668(0x12f64) # 15004 <_start-0x1bfeaffc>
    20a4:	69686361 	bltu	$r27,$r1,92256(0x16860) # 18904 <_start-0x1bfe76fc>
    20a8:	6400656e 	bge	$r11,$r14,100(0x64) # 210c <_start-0x1bffdef4>
    20ac:	73755c3a 	0x73755c3a
    20b0:	5c737265 	bne	$r19,$r5,29552(0x7370) # 9420 <_start-0x1bff6be0>
    20b4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8f14 <_RAM_DATA+0x7fff7f14>
    20b8:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff8514 <_RAM_DATA+0x7fff7514>
    20bc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18e30 <_start-0x1bfe71d0>
    20c0:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 9434 <_start-0x1bff6bcc>
    20c4:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 18530 <_start-0x1bfe7ad0>
    20c8:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff9034 <_RAM_DATA+0x7fff8034>
    20cc:	7261676e 	0x7261676e
    20d0:	705f6863 	0x705f6863
    20d4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 18440 <_start-0x1bfe7bc0>
    20d8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8a48 <_RAM_DATA+0x7ffe7a48>
    20dc:	79735f67 	0x79735f67
    20e0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18654 <_start-0x1bfe79ac>
    20e4:	3163315c 	0x3163315c
    20e8:	735c3230 	0x735c3230
    20ec:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    20f0:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 18d4c <_start-0x1bfe72b4>
    20f4:	5c656469 	bne	$r3,$r9,25956(0x6564) # 8658 <_start-0x1bff79a8>
    20f8:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 8a6c <_start-0x1bff7594>
    20fc:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff9070 <_RAM_DATA+0x7fff8070>
    2100:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 18d5c <_start-0x1bfe72a4>
    2104:	742d3233 	0x742d3233
    2108:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 8d74 <_start-0x1bff728c>
    210c:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe9078 <_RAM_DATA+0x7ffe8078>
    2110:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff9370 <_RAM_DATA+0x7fff8370>
    2114:	2d323368 	0x2d323368
    2118:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 987c <_start-0x1bff6784>
    211c:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 14e7c <_start-0x1bfeb184>
    2120:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 17d84 <_start-0x1bfe827c>
    2124:	756c636e 	0x756c636e
    2128:	732f6564 	0x732f6564
    212c:	44007379 	bnez	$r27,-1834896(0x640070) # ffe4219c <_RAM_DATA+0x7fe4119c>
    2130:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    2134:	2f737265 	0x2f737265
    2138:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff8f98 <_RAM_DATA+0x7fff7f98>
    213c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff6568 <_RAM_DATA+0x7fff5568>
    2140:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 18eb4 <_start-0x1bfe714c>
    2144:	2f73746e 	0x2f73746e
    2148:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 185b4 <_start-0x1bfe7a4c>
    214c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff9098 <_RAM_DATA+0x7fff8098>
    2150:	7241676e 	0x7241676e
    2154:	505f6863 	b	25976680(0x18c5f68) # 18c80bc <_start-0x1a737f44>
    2158:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 184c4 <_start-0x1bfe7b3c>
    215c:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8acc <_RAM_DATA+0x7ffe7acc>
    2160:	79535f67 	0x79535f67
    2164:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 186d8 <_start-0x1bfe7928>
    2168:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    216c:	732f3230 	0x732f3230
    2170:	732f6372 	0x732f6372
    2174:	6e692f77 	bgeu	$r27,$r23,-104148(0x2692c) # fffe8aa0 <_RAM_DATA+0x7ffe7aa0>
    2178:	64756c63 	bge	$r3,$r3,30060(0x756c) # 96e4 <_start-0x1bff691c>
    217c:	42000065 	beqz	$r3,1441792(0x160000) # 16217c <_start-0x1be9de84>
    2180:	65666675 	bge	$r19,$r21,91748(0x16664) # 187e4 <_start-0x1bfe781c>
    2184:	00632e72 	bstrins.w	$r18,$r19,0x3,0xb
    2188:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff2188 <_RAM_DATA+0x7fff1188>
    218c:	61666564 	blt	$r11,$r4,91748(0x16664) # 187f0 <_start-0x1bfe7810>
    2190:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff95fc <_RAM_DATA+0x7fff85fc>
    2194:	65707974 	bge	$r11,$r20,94328(0x17078) # 1920c <_start-0x1bfe6df4>
    2198:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    219c:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff219c <_RAM_DATA+0x7fff119c>
    21a0:	69647473 	bltu	$r3,$r19,91252(0x16474) # 18614 <_start-0x1bfe79ec>
    21a4:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 5018 <_start-0x1bffafe8>
    21a8:	00000300 	0x00000300
    21ac:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    21b0:	0400682e 	csrwr	$r14,0x1a
    21b4:	75420000 	0x75420000
    21b8:	72656666 	0x72656666
    21bc:	0100682e 	0x0100682e
    21c0:	05000000 	0x05000000
    21c4:	02050043 	slti	$r3,$r2,320(0x140)
    21c8:	00000000 	0x00000000
    21cc:	05010b03 	0x05010b03
    21d0:	04051302 	csrxchg	$r2,$r24,0x144
    21d4:	11050106 	addu16i.d	$r6,$r8,16704(0x4140)
    21d8:	01040200 	0x01040200
    21dc:	0602054a 	cacop	0xa,$r10,129(0x81)
    21e0:	060c054e 	cacop	0xe,$r10,769(0x301)
    21e4:	06020501 	cacop	0x1,$r8,129(0x81)
    21e8:	060f054b 	cacop	0xb,$r10,961(0x3c1)
    21ec:	06020501 	cacop	0x1,$r8,129(0x81)
    21f0:	0610054b 	cacop	0xb,$r10,1025(0x401)
    21f4:	06020501 	cacop	0x1,$r8,129(0x81)
    21f8:	060f054b 	cacop	0xb,$r10,961(0x3c1)
    21fc:	06020501 	cacop	0x1,$r8,129(0x81)
    2200:	0611054b 	cacop	0xb,$r10,1089(0x441)
    2204:	06030501 	cacop	0x1,$r8,193(0xc1)
    2208:	0610054e 	cacop	0xe,$r10,1025(0x401)
    220c:	4d090501 	jirl	$r1,$r8,67844(0x10904)
    2210:	0603054a 	cacop	0xa,$r10,193(0xc1)
    2214:	054a7a03 	0x054a7a03
    2218:	05010610 	0x05010610
    221c:	10055009 	addu16i.d	$r9,$r0,340(0x154)
    2220:	054a7a03 	0x054a7a03
    2224:	4a78030a 	0x4a78030a
    2228:	01054a4a 	fmul.d	$f10,$f18,$f18
    222c:	024a0f03 	sltui	$r3,$r24,643(0x283)
    2230:	01010004 	fadd.d	$f4,$f0,$f0
    2234:	05004e05 	0x05004e05
    2238:	00000002 	0x00000002
    223c:	011e0300 	0x011e0300
    2240:	05130205 	0x05130205
    2244:	05010604 	0x05010604
    2248:	04020011 	csrrd	$r17,0x80
    224c:	02054a01 	slti	$r1,$r16,338(0x152)
    2250:	0c054e06 	0x0c054e06
    2254:	02050106 	slti	$r6,$r8,320(0x140)
    2258:	0f054b06 	0x0f054b06
    225c:	02050106 	slti	$r6,$r8,320(0x140)
    2260:	10054b06 	addu16i.d	$r6,$r24,338(0x152)
    2264:	02050106 	slti	$r6,$r8,320(0x140)
    2268:	0f054b06 	0x0f054b06
    226c:	02050106 	slti	$r6,$r8,320(0x140)
    2270:	11054b06 	addu16i.d	$r6,$r24,16722(0x4152)
    2274:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    2278:	10054e06 	addu16i.d	$r6,$r16,339(0x153)
    227c:	09050106 	0x09050106
    2280:	03054a4d 	lu52i.d	$r13,$r18,338(0x152)
    2284:	4a7a0306 	0x4a7a0306
    2288:	01061005 	0x01061005
    228c:	05500905 	0x05500905
    2290:	4a7a0310 	0x4a7a0310
    2294:	78030a05 	0x78030a05
    2298:	054a4a4a 	0x054a4a4a
    229c:	4a0f0301 	0x4a0f0301
    22a0:	01000402 	0x01000402
    22a4:	00280501 	0x00280501
    22a8:	00000205 	0x00000205
    22ac:	31030000 	0x31030000
    22b0:	13020501 	addu16i.d	$r1,$r8,-16255(0xc081)
    22b4:	01060405 	0x01060405
    22b8:	4e060205 	jirl	$r5,$r16,-129536(0x20600)
    22bc:	01060f05 	0x01060f05
    22c0:	4b060205 	0x4b060205
    22c4:	01061005 	0x01061005
    22c8:	4b060205 	0x4b060205
    22cc:	01060f05 	0x01060f05
    22d0:	4c060205 	jirl	$r5,$r16,1536(0x600)
    22d4:	01060905 	0x01060905
    22d8:	030a054a 	lu52i.d	$r10,$r10,641(0x281)
    22dc:	01054a79 	fmul.d	$f25,$f19,$f18
    22e0:	00040252 	alsl.w	$r18,$r18,$r0,0x1
    22e4:	28050101 	ld.b	$r1,$r8,320(0x140)
    22e8:	00020500 	0x00020500
    22ec:	03000000 	lu52i.d	$r0,$r0,0
    22f0:	0205013d 	slti	$r29,$r9,320(0x140)
    22f4:	04051313 	csrxchg	$r19,$r24,0x144
    22f8:	17050106 	lu32i.d	$r6,-514040(0x82808)
    22fc:	01040200 	0x01040200
    2300:	0011054a 	sub.w	$r10,$r10,$r1
    2304:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2408 <_start-0x1bf5dbf8>
    2308:	05482805 	0x05482805
    230c:	4bf80602 	0x4bf80602
    2310:	01060805 	0x01060805
    2314:	02001205 	slti	$r5,$r16,4(0x4)
    2318:	054a0104 	0x054a0104
    231c:	04020002 	csrrd	$r2,0x80
    2320:	03054a01 	lu52i.d	$r1,$r16,338(0x152)
    2324:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2328:	06054b06 	cacop	0x6,$r24,338(0x152)
    232c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2330:	0c050106 	0x0c050106
    2334:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2338:	0010054a 	add.w	$r10,$r10,$r1
    233c:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2640 <_start-0x1bf5d9c0>
    2340:	02001e05 	slti	$r5,$r16,7(0x7)
    2344:	00490304 	srai.d	$r4,$r24,0x0
    2348:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a264c <_start-0x1bf5d9b4>
    234c:	054d0905 	0x054d0905
    2350:	05824b01 	0x05824b01
    2354:	8278030a 	0x8278030a
    2358:	01054a4a 	fmul.d	$f10,$f18,$f18
    235c:	00040252 	alsl.w	$r18,$r18,$r0,0x1
    2360:	2a050101 	ld.bu	$r1,$r8,320(0x140)
    2364:	00020500 	0x00020500
    2368:	03000000 	lu52i.d	$r0,$r0,0
    236c:	050100ca 	0x050100ca
    2370:	08051302 	0x08051302
    2374:	17050106 	lu32i.d	$r6,-514040(0x82808)
    2378:	4a04054a 	bcnez	$fcc2,2753540(0x2a0404) # 2a277c <_start-0x1bd5d884>
    237c:	4a4d0905 	bcnez	$fcc0,1461512(0x164d08) # 167084 <_start-0x1be98f7c>
    2380:	05480a05 	0x05480a05
    2384:	04024d01 	csrxchg	$r1,$r8,0x93
    2388:	05010100 	0x05010100
    238c:	02050029 	slti	$r9,$r1,320(0x140)
    2390:	00000000 	0x00000000
    2394:	0100d103 	fadd.s	$f3,$f8,$f20
    2398:	05130205 	0x05130205
    239c:	05010604 	0x05010604
    23a0:	054b0603 	0x054b0603
    23a4:	0501060d 	0x0501060d
    23a8:	17054a1c 	lu32i.d	$r28,-513456(0x82a50)
    23ac:	8509054a 	0x8509054a
    23b0:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    23b4:	01010004 	fadd.d	$f4,$f0,$f0
    23b8:	05002505 	0x05002505
    23bc:	00000002 	0x00000002
    23c0:	00da0300 	bstrpick.d	$r0,$r24,0x1a,0x0
    23c4:	13020501 	addu16i.d	$r1,$r8,-16255(0xc081)
    23c8:	06080514 	cacop	0x14,$r8,513(0x201)
    23cc:	4a040501 	bcnez	$fcc0,394244(0x60404) # 627d0 <_start-0x1bf9d830>
    23d0:	4b060305 	0x4b060305
    23d4:	01060a05 	0x01060a05
    23d8:	054a1405 	0x054a1405
    23dc:	05054a10 	0x05054a10
    23e0:	0603054a 	cacop	0xa,$r10,193(0xc1)
    23e4:	060f054b 	cacop	0xb,$r10,961(0x3c1)
    23e8:	06030501 	cacop	0x1,$r8,193(0xc1)
    23ec:	06190583 	cacop	0x3,$r12,1601(0x641)
    23f0:	4a050501 	bcnez	$fcc0,394500(0x60504) # 628f4 <_start-0x1bf9d70c>
    23f4:	4b060405 	bceqz	$fcc0,1508868(0x170604) # 1729f8 <_start-0x1be8d608>
    23f8:	01061105 	0x01061105
    23fc:	4c060305 	jirl	$r5,$r24,1536(0x600)
    2400:	01060f05 	0x01060f05
    2404:	83060305 	0x83060305
    2408:	01060a05 	0x01060a05
    240c:	4d09054a 	jirl	$r10,$r10,67844(0x10904)
    2410:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    2414:	01010004 	fadd.d	$f4,$f0,$f0
    2418:	05002b05 	0x05002b05
    241c:	00000002 	0x00000002
    2420:	00ea0300 	bstrpick.d	$r0,$r24,0x2a,0x0
    2424:	05010601 	0x05010601
    2428:	75080602 	0x75080602
    242c:	05131413 	0x05131413
    2430:	05110604 	0x05110604
    2434:	02054b08 	slti	$r8,$r24,338(0x152)
    2438:	0003054a 	0x0003054a
    243c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2440:	000b054b 	0x000b054b
    2444:	06030402 	cacop	0x2,$r0,193(0xc1)
    2448:	00100501 	add.w	$r1,$r8,$r1
    244c:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2750 <_start-0x1bf5d8b0>
    2450:	02001205 	slti	$r5,$r16,4(0x4)
    2454:	054a0304 	0x054a0304
    2458:	04020010 	csrrd	$r16,0x80
    245c:	05058203 	0x05058203
    2460:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2464:	0012054a 	slt	$r10,$r10,$r1
    2468:	49030402 	bceqz	$fcc0,590596(0x90304) # 9276c <_start-0x1bf6d894>
    246c:	02000205 	slti	$r5,$r16,0
    2470:	054a0104 	0x054a0104
    2474:	4aba8701 	0x4aba8701
    2478:	01000802 	0x01000802
    247c:	00290501 	0x00290501
    2480:	00000205 	0x00000205
    2484:	f6030000 	0xf6030000
    2488:	01060100 	0x01060100
    248c:	08060205 	0x08060205
    2490:	13141375 	addu16i.d	$r21,$r27,-15100(0xc504)
    2494:	01060805 	0x01060805
    2498:	05490405 	0x05490405
    249c:	03054b02 	lu52i.d	$r2,$r24,338(0x152)
    24a0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    24a4:	0b054b06 	0x0b054b06
    24a8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    24ac:	12050106 	addu16i.d	$r6,$r8,-32448(0x8140)
    24b0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    24b4:	0402004a 	csrxchg	$r10,$r2,0x80
    24b8:	05054a03 	0x05054a03
    24bc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    24c0:	0012054a 	slt	$r10,$r10,$r1
    24c4:	49030402 	bceqz	$fcc0,590596(0x90304) # 927c8 <_start-0x1bf6d838>
    24c8:	02000205 	slti	$r5,$r16,0
    24cc:	054a0104 	0x054a0104
    24d0:	4aba8701 	0x4aba8701
    24d4:	01000802 	0x01000802
    24d8:	00380501 	0x00380501
    24dc:	15680205 	lu12i.w	$r5,-311280(0xb4010)
    24e0:	83031c00 	0x83031c00
    24e4:	02050101 	slti	$r1,$r8,320(0x140)
    24e8:	06050513 	cacop	0x13,$r8,321(0x141)
    24ec:	4a0f0501 	bcnez	$fcc0,397060(0x60f04) # 633f0 <_start-0x1bf9cc10>
    24f0:	054a0b05 	0x054a0b05
    24f4:	02054a1b 	slti	$r27,$r16,338(0x152)
    24f8:	05054b06 	0x05054b06
    24fc:	0f050106 	0x0f050106
    2500:	0602054a 	cacop	0xa,$r10,129(0x81)
    2504:	06190583 	cacop	0x3,$r12,1601(0x641)
    2508:	4a040501 	bcnez	$fcc0,394244(0x60404) # 6290c <_start-0x1bf9d6f4>
    250c:	4b060305 	0x4b060305
    2510:	01061105 	0x01061105
    2514:	4d060205 	jirl	$r5,$r16,67072(0x10600)
    2518:	01060505 	0x01060505
    251c:	054a0e05 	0x054a0e05
    2520:	05830602 	0x05830602
    2524:	05010604 	0x05010604
    2528:	054b0603 	0x054b0603
    252c:	05010610 	0x05010610
    2530:	054b0603 	0x054b0603
    2534:	05010606 	0x05010606
    2538:	05054a0f 	0x05054a0f
    253c:	07058306 	0x07058306
    2540:	4b060106 	bcnez	$fcc0,1771008(0x1b0600) # 1b2b40 <_start-0x1be4d4c0>
    2544:	01061405 	0x01061405
    2548:	024c0105 	sltui	$r5,$r8,768(0x300)
    254c:	01010004 	fadd.d	$f4,$f0,$f0
    2550:	05003505 	0x05003505
    2554:	00000002 	0x00000002
    2558:	01930300 	0x01930300
    255c:	05010601 	0x05010601
    2560:	ad080602 	0xad080602
    2564:	06080514 	cacop	0x14,$r8,513(0x201)
    2568:	4a020501 	bcnez	$fcc0,393732(0x60204) # 6276c <_start-0x1bf9d894>
    256c:	02000305 	slti	$r5,$r24,0
    2570:	4b060304 	0x4b060304
    2574:	02001b05 	slti	$r5,$r24,6(0x6)
    2578:	01060304 	0x01060304
    257c:	02001705 	slti	$r5,$r24,5(0x5)
    2580:	054a0304 	0x054a0304
    2584:	04020003 	csrrd	$r3,0x80
    2588:	13054a03 	addu16i.d	$r3,$r16,-16046(0xc152)
    258c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2590:	000205b9 	0x000205b9
    2594:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2698 <_start-0x1bf5d968>
    2598:	824d0105 	0x824d0105
    259c:	00080282 	bytepick.w	$r2,$r20,$r0,0x0
    25a0:	32050101 	0x32050101
    25a4:	00020500 	0x00020500
    25a8:	03000000 	lu52i.d	$r0,$r0,0
    25ac:	0601019b 	cacop	0x1b,$r12,64(0x40)
    25b0:	06020501 	cacop	0x1,$r8,129(0x81)
    25b4:	0514ad08 	0x0514ad08
    25b8:	05010608 	0x05010608
    25bc:	03054a02 	lu52i.d	$r2,$r16,338(0x152)
    25c0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    25c4:	1b054b06 	pcalau12i	$r6,-513448(0x82a58)
    25c8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    25cc:	17050106 	lu32i.d	$r6,-514040(0x82808)
    25d0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    25d4:	0003054a 	0x0003054a
    25d8:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a28dc <_start-0x1bf5d724>
    25dc:	02001305 	slti	$r5,$r24,4(0x4)
    25e0:	05b90304 	0x05b90304
    25e4:	04020002 	csrrd	$r2,0x80
    25e8:	01054a01 	fmul.d	$f1,$f16,$f18
    25ec:	4a4a824d 	0x4a4a824d
    25f0:	01000802 	0x01000802
    25f4:	00250501 	crc.w.w.w	$r1,$r8,$r1
    25f8:	00000205 	0x00000205
    25fc:	a3030000 	0xa3030000
    2600:	01060101 	0x01060101
    2604:	4b060305 	0x4b060305
    2608:	0d051314 	0x0d051314
    260c:	05050106 	0x05050106
    2610:	06080582 	cacop	0x2,$r12,513(0x201)
    2614:	06120584 	cacop	0x4,$r12,1153(0x481)
    2618:	820a0501 	0x820a0501
    261c:	83060505 	0x83060505
    2620:	01060705 	0x01060705
    2624:	06080582 	cacop	0x2,$r12,513(0x201)
    2628:	0612054b 	cacop	0xb,$r10,1153(0x481)
    262c:	820a0501 	0x820a0501
    2630:	83060505 	0x83060505
    2634:	01060705 	0x01060705
    2638:	03050582 	lu52i.d	$r2,$r12,321(0x141)
    263c:	03054a7a 	lu52i.d	$r26,$r19,338(0x152)
    2640:	01055206 	fmul.d	$f6,$f16,$f20
    2644:	04021306 	csrxchg	$r6,$r24,0x84
    2648:	05010100 	0x05010100
    264c:	0205002c 	slti	$r12,$r1,320(0x140)
    2650:	00000000 	0x00000000
    2654:	0101b103 	0x0101b103
    2658:	14130305 	lu12i.w	$r5,38936(0x9818)
    265c:	01060905 	0x01060905
    2660:	054a0505 	0x054a0505
    2664:	03057f2c 	lu52i.d	$r12,$r25,351(0x15f)
    2668:	057a0806 	0x057a0806
    266c:	05010607 	0x05010607
    2670:	03054a05 	lu52i.d	$r5,$r16,338(0x152)
    2674:	07054b06 	0x07054b06
    2678:	05050106 	0x05050106
    267c:	06030582 	cacop	0x2,$r12,193(0xc1)
    2680:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    2684:	06030501 	cacop	0x1,$r8,193(0xc1)
    2688:	060705bb 	cacop	0x1b,$r13,449(0x1c1)
    268c:	06030501 	cacop	0x1,$r8,193(0xc1)
    2690:	06090583 	cacop	0x3,$r12,577(0x241)
    2694:	05054a01 	0x05054a01
    2698:	03054a4a 	lu52i.d	$r10,$r18,338(0x152)
    269c:	01054c06 	fmul.d	$f6,$f0,$f19
    26a0:	0c051306 	0x0c051306
    26a4:	74087703 	xvslt.bu	$xr3,$xr24,$xr29
    26a8:	09030105 	0x09030105
    26ac:	0004024a 	alsl.w	$r10,$r18,$r0,0x1
    26b0:	0bfb0101 	0x0bfb0101
    26b4:	00020000 	0x00020000
    26b8:	00000293 	0x00000293
    26bc:	0efb0101 	0x0efb0101
    26c0:	0101000d 	fadd.d	$f13,$f0,$f0
    26c4:	00000101 	0x00000101
    26c8:	00000100 	0x00000100
    26cc:	2f3a4401 	0x2f3a4401
    26d0:	72657355 	0x72657355
    26d4:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19e00 <_start-0x1bfe6200>
    26d8:	2f73676e 	0x2f73676e
    26dc:	75636f44 	0x75636f44
    26e0:	746e656d 	0x746e656d
    26e4:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6a10 <_RAM_DATA+0x7fff5a10>
    26e8:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    26ec:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9558 <_RAM_DATA+0x7fff8558>
    26f0:	68637241 	bltu	$r18,$r1,25456(0x6370) # 8a60 <_start-0x1bff75a0>
    26f4:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9944 <_RAM_DATA+0x7fff8944>
    26f8:	73736563 	0x73736563
    26fc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8e68 <_RAM_DATA+0x7fff7e68>
    2700:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2704:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    2708:	32303143 	0x32303143
    270c:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff997c <_RAM_DATA+0x7fff897c>
    2710:	2f77732f 	0x2f77732f
    2714:	72657375 	0x72657375
    2718:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 617c <_start-0x1bff9e84>
    271c:	72657375 	0x72657375
    2720:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19e7c <_start-0x1bfe6184>
    2724:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 9a88 <_start-0x1bff6578>
    2728:	75636f64 	0x75636f64
    272c:	746e656d 	0x746e656d
    2730:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff8a8c <_RAM_DATA+0x7fff7a8c>
    2734:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 8398 <_start-0x1bff7c68>
    2738:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff95a4 <_RAM_DATA+0x7fff85a4>
    273c:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8aac <_start-0x1bff7554>
    2740:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff99b0 <_RAM_DATA+0x7fff89b0>
    2744:	73736563 	0x73736563
    2748:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8eb4 <_RAM_DATA+0x7fff7eb4>
    274c:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    2750:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    2754:	32303163 	0x32303163
    2758:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff99c8 <_RAM_DATA+0x7fff89c8>
    275c:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9ecc <_start-0x1bff6134>
    2760:	6469616c 	bge	$r11,$r12,26976(0x6960) # 90c0 <_start-0x1bff6f40>
    2764:	75625c65 	0x75625c65
    2768:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    276c:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 93d8 <_start-0x1bff6c28>
    2770:	3233616c 	0x3233616c
    2774:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff96e8 <_RAM_DATA+0x7fff86e8>
    2778:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff93d4 <_RAM_DATA+0x7fff83d4>
    277c:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18ee8 <_start-0x1bfe7118>
    2780:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    2784:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 195b0 <_start-0x1bfe6a50>
    2788:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe90f4 <_RAM_DATA+0x7ffe80f4>
    278c:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe93f0 <_RAM_DATA+0x7ffe83f0>
    2790:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff95f8 <_RAM_DATA+0x7fff85f8>
    2794:	6564756c 	bge	$r11,$r12,91252(0x16474) # 18c08 <_start-0x1bfe73f8>
    2798:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff8904 <_RAM_DATA+0x7fff7904>
    279c:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 19604 <_start-0x1bfe69fc>
    27a0:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 6204 <_start-0x1bff9dfc>
    27a4:	72657375 	0x72657375
    27a8:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19f04 <_start-0x1bfe60fc>
    27ac:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 9b10 <_start-0x1bff64f0>
    27b0:	75636f64 	0x75636f64
    27b4:	746e656d 	0x746e656d
    27b8:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff8b14 <_RAM_DATA+0x7fff7b14>
    27bc:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 8420 <_start-0x1bff7be0>
    27c0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff962c <_RAM_DATA+0x7fff862c>
    27c4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8b34 <_start-0x1bff74cc>
    27c8:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff9a38 <_RAM_DATA+0x7fff8a38>
    27cc:	73736563 	0x73736563
    27d0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8f3c <_RAM_DATA+0x7fff7f3c>
    27d4:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    27d8:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    27dc:	32303163 	0x32303163
    27e0:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff9a50 <_RAM_DATA+0x7fff8a50>
    27e4:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9f54 <_start-0x1bff60ac>
    27e8:	6469616c 	bge	$r11,$r12,26976(0x6960) # 9148 <_start-0x1bff6eb8>
    27ec:	75625c65 	0x75625c65
    27f0:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    27f4:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 9460 <_start-0x1bff6ba0>
    27f8:	3233616c 	0x3233616c
    27fc:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff9770 <_RAM_DATA+0x7fff8770>
    2800:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff945c <_RAM_DATA+0x7fff845c>
    2804:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18f70 <_start-0x1bfe7090>
    2808:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    280c:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 19638 <_start-0x1bfe69c8>
    2810:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe917c <_RAM_DATA+0x7ffe817c>
    2814:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe9478 <_RAM_DATA+0x7ffe8478>
    2818:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff9680 <_RAM_DATA+0x7fff8680>
    281c:	6564756c 	bge	$r11,$r12,91252(0x16474) # 18c90 <_start-0x1bfe7370>
    2820:	7379732f 	0x7379732f
    2824:	2f3a4400 	0x2f3a4400
    2828:	72657355 	0x72657355
    282c:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19f58 <_start-0x1bfe60a8>
    2830:	2f73676e 	0x2f73676e
    2834:	75636f44 	0x75636f44
    2838:	746e656d 	0x746e656d
    283c:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6b68 <_RAM_DATA+0x7fff5b68>
    2840:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    2844:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff96b0 <_RAM_DATA+0x7fff86b0>
    2848:	68637241 	bltu	$r18,$r1,25456(0x6370) # 8bb8 <_start-0x1bff7448>
    284c:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9a9c <_RAM_DATA+0x7fff8a9c>
    2850:	73736563 	0x73736563
    2854:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8fc0 <_RAM_DATA+0x7fff7fc0>
    2858:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    285c:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    2860:	32303143 	0x32303143
    2864:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9ad4 <_RAM_DATA+0x7fff8ad4>
    2868:	2f77732f 	0x2f77732f
    286c:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 8bd8 <_start-0x1bff7428>
    2870:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    2874:	552f3a44 	bl	-116314312(0x9112f38) # f91157ac <_RAM_DATA+0x791147ac>
    2878:	73726573 	0x73726573
    287c:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe89f0 <_RAM_DATA+0x7ffe79f0>
    2880:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c57f0 <_start-0x1be3a810>
    2884:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19de4 <_start-0x1bfe621c>
    2888:	73746e65 	0x73746e65
    288c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 97cc <_start-0x1bff6834>
    2890:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff74bc <_RAM_DATA+0x7fff64bc>
    2894:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d9000 <_start-0x1bc27000>
    2898:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff90f8 <_RAM_DATA+0x7fff80f8>
    289c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff980c <_RAM_DATA+0x7fff880c>
    28a0:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19c10 <_start-0x1bfe63f0>
    28a4:	535f676e 	b	-38051996(0xdbb5f64) # fdbb8808 <_RAM_DATA+0x7dbb7808>
    28a8:	65747379 	bge	$r27,$r25,95344(0x17470) # 19d18 <_start-0x1bfe62e8>
    28ac:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3759d8 <_start-0x1bc8a628>
    28b0:	2f323031 	0x2f323031
    28b4:	2f637273 	0x2f637273
    28b8:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
    28bc:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 1951c <_start-0x1bfe6ae4>
    28c0:	6d000063 	bgeu	$r3,$r3,65536(0x10000) # 128c0 <_start-0x1bfed740>
    28c4:	2e6e6961 	0x2e6e6961
    28c8:	00010063 	0x00010063
    28cc:	65645f00 	bge	$r24,$r0,91228(0x1645c) # 18d28 <_start-0x1bfe72d8>
    28d0:	6c756166 	bgeu	$r11,$r6,30048(0x7560) # 9e30 <_start-0x1bff61d0>
    28d4:	79745f74 	0x79745f74
    28d8:	2e736570 	0x2e736570
    28dc:	00020068 	0x00020068
    28e0:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
    28e4:	746e6964 	0x746e6964
    28e8:	0300682e 	lu52i.d	$r14,$r1,26(0x1a)
    28ec:	65740000 	bge	$r0,$r0,95232(0x17400) # 19cec <_start-0x1bfe6314>
    28f0:	682e7473 	bltu	$r3,$r19,11892(0x2e74) # 5764 <_start-0x1bffa89c>
    28f4:	00000400 	0x00000400
    28f8:	30316331 	0x30316331
    28fc:	6e495f32 	bgeu	$r25,$r18,-112292(0x2495c) # fffe7258 <_RAM_DATA+0x7ffe6258>
    2900:	72726574 	0x72726574
    2904:	2e747075 	0x2e747075
    2908:	00010068 	0x00010068
    290c:	636f7300 	blt	$r24,$r0,-37008(0x36f70) # ffff987c <_RAM_DATA+0x7fff887c>
    2910:	7261755f 	0x7261755f
    2914:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    2918:	6c000005 	bgeu	$r0,$r5,0 # 2918 <_start-0x1bffd6e8>
    291c:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffffa14c <_RAM_DATA+0x7fff914c>
    2920:	6d6d6f63 	bgeu	$r27,$r3,93548(0x16d6c) # 1968c <_start-0x1bfe6974>
    2924:	682e6e6f 	bltu	$r19,$r15,11884(0x2e6c) # 5790 <_start-0x1bffa870>
    2928:	00000500 	0x00000500
    292c:	7831736c 	0x7831736c
    2930:	6972705f 	bltu	$r2,$r31,94832(0x17270) # 19ba0 <_start-0x1bfe6460>
    2934:	2e66746e 	0x2e66746e
    2938:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    293c:	31736c00 	0x31736c00
    2940:	74735f78 	xvmin.w	$xr24,$xr27,$xr23
    2944:	676e6972 	bge	$r11,$r18,-37272(0x36e68) # ffff97ac <_RAM_DATA+0x7fff87ac>
    2948:	0500682e 	0x0500682e
    294c:	05000000 	0x05000000
    2950:	02050001 	slti	$r1,$r0,320(0x140)
    2954:	00000000 	0x00000000
    2958:	0100d503 	fadd.s	$f3,$f8,$f21
    295c:	02010613 	slti	$r19,$r16,65(0x41)
    2960:	01010004 	fadd.d	$f4,$f0,$f0
    2964:	05000105 	0x05000105
    2968:	00000002 	0x00000002
    296c:	00d90300 	bstrpick.d	$r0,$r24,0x19,0x0
    2970:	05010601 	0x05010601
    2974:	13f30602 	addu16i.d	$r2,$r16,-831(0xfcc1)
    2978:	03040513 	lu52i.d	$r19,$r8,257(0x101)
    297c:	8206f21d 	0x8206f21d
    2980:	02054b06 	slti	$r6,$r24,338(0x152)
    2984:	06010514 	cacop	0x14,$r8,65(0x41)
    2988:	06050513 	cacop	0x13,$r8,321(0x141)
    298c:	74086303 	xvslt.bu	$xr3,$xr24,$xr24
    2990:	4b068206 	0x4b068206
    2994:	01060a05 	0x01060a05
    2998:	02000d05 	slti	$r5,$r8,3(0x3)
    299c:	054a0104 	0x054a0104
    29a0:	04020005 	csrrd	$r5,0x80
    29a4:	05ac0801 	0x05ac0801
    29a8:	04020006 	csrrd	$r6,0x80
    29ac:	004c0603 	0x004c0603
    29b0:	06030402 	cacop	0x2,$r0,193(0xc1)
    29b4:	003105f2 	0x003105f2
    29b8:	08030402 	0x08030402
    29bc:	0605053a 	cacop	0x1a,$r9,321(0x141)
    29c0:	0607058a 	cacop	0xa,$r12,449(0x1c1)
    29c4:	06050501 	cacop	0x1,$r8,321(0x141)
    29c8:	060a054b 	cacop	0xb,$r10,641(0x281)
    29cc:	000e0501 	bytepick.d	$r1,$r8,$r1,0x4
    29d0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2ad4 <_start-0x1bf5d52c>
    29d4:	02000505 	slti	$r5,$r8,1(0x1)
    29d8:	ac080104 	0xac080104
    29dc:	4c060605 	jirl	$r5,$r16,1540(0x604)
    29e0:	01060905 	0x01060905
    29e4:	74080805 	xvslt.bu	$xr5,$xr0,$xr2
    29e8:	02003205 	slti	$r5,$r16,12(0xc)
    29ec:	00480204 	0x00480204
    29f0:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2bf4 <_start-0x1bf5d40c>
    29f4:	4e060705 	jirl	$r5,$r24,-129532(0x20604)
    29f8:	05132402 	0x05132402
    29fc:	08051505 	0x08051505
    2a00:	05ba0106 	0x05ba0106
    2a04:	0605f207 	cacop	0x7,$r16,380(0x17c)
    2a08:	10024c06 	addu16i.d	$r6,$r0,147(0x93)
    2a0c:	05010100 	0x05010100
    2a10:	02050001 	slti	$r1,$r0,320(0x140)
    2a14:	00000000 	0x00000000
    2a18:	01018003 	0x01018003
    2a1c:	e5080205 	0xe5080205
    2a20:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2a24:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2a28:	07051313 	0x07051313
    2a2c:	02050106 	slti	$r6,$r8,320(0x140)
    2a30:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    2a34:	06030402 	cacop	0x2,$r0,193(0xc1)
    2a38:	0016054e 	orn	$r14,$r10,$r1
    2a3c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2a40:	00130501 	maskeqz	$r1,$r8,$r1
    2a44:	08030402 	0x08030402
    2a48:	04020072 	csrxchg	$r18,$r3,0x80
    2a4c:	03054a03 	lu52i.d	$r3,$r16,338(0x152)
    2a50:	01040200 	0x01040200
    2a54:	0010054a 	add.w	$r10,$r10,$r1
    2a58:	80020402 	0x80020402
    2a5c:	02040200 	slti	$r0,$r16,256(0x100)
    2a60:	0002054a 	0x0002054a
    2a64:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2b68 <_start-0x1bf5d498>
    2a68:	05840805 	0x05840805
    2a6c:	08057e06 	0x08057e06
    2a70:	03070549 	lu52i.d	$r9,$r10,449(0x1c1)
    2a74:	058200e8 	0x058200e8
    2a78:	054a4b09 	0x054a4b09
    2a7c:	04020004 	csrrd	$r4,0x80
    2a80:	a7030603 	0xa7030603
    2a84:	11054a7f 	addu16i.d	$r31,$r19,16722(0x4152)
    2a88:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a8c:	13050106 	addu16i.d	$r6,$r8,-16064(0xc140)
    2a90:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a94:	040200b8 	csrxchg	$r24,$r5,0x80
    2a98:	03054a03 	lu52i.d	$r3,$r16,338(0x152)
    2a9c:	01040200 	0x01040200
    2aa0:	bb86064a 	0xbb86064a
    2aa4:	06060513 	cacop	0x13,$r8,385(0x181)
    2aa8:	4a4a8201 	0x4a4a8201
    2aac:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2ab0:	06030402 	cacop	0x2,$r0,193(0xc1)
    2ab4:	054a0a03 	0x054a0a03
    2ab8:	04020025 	csrwr	$r5,0x80
    2abc:	05010603 	0x05010603
    2ac0:	04020027 	csrwr	$r7,0x80
    2ac4:	22054a03 	ll.d	$r3,$r16,1352(0x548)
    2ac8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2acc:	0017054a 	sll.w	$r10,$r10,$r1
    2ad0:	ba030402 	0xba030402
    2ad4:	02001605 	slti	$r5,$r16,5(0x5)
    2ad8:	00800304 	bstrins.d	$r4,$r24,0x0,0x0
    2adc:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2de0 <_start-0x1bf5d220>
    2ae0:	02000605 	slti	$r5,$r16,1(0x1)
    2ae4:	064a0104 	0x064a0104
    2ae8:	0612054e 	cacop	0xe,$r10,1153(0x481)
    2aec:	4a160501 	bcnez	$fcc0,398852(0x61604) # 640f0 <_start-0x1bf9bf10>
    2af0:	bb060605 	0xbb060605
    2af4:	01060805 	0x01060805
    2af8:	0606054a 	cacop	0xa,$r10,385(0x181)
    2afc:	060b054b 	cacop	0xb,$r10,705(0x2c1)
    2b00:	4a060501 	bcnez	$fcc0,394756(0x60604) # 63104 <_start-0x1bf9cefc>
    2b04:	02000705 	slti	$r5,$r24,1(0x1)
    2b08:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2b0c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b10:	16058206 	lu32i.d	$r6,11280(0x2c10)
    2b14:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b18:	040200b8 	csrxchg	$r24,$r5,0x80
    2b1c:	06054a03 	cacop	0x3,$r16,338(0x152)
    2b20:	01040200 	0x01040200
    2b24:	4e0b054a 	jirl	$r10,$r10,-128252(0x20b04)
    2b28:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2b2c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2b30:	0402004c 	csrxchg	$r12,$r2,0x80
    2b34:	02008303 	slti	$r3,$r24,32(0x20)
    2b38:	05830304 	0x05830304
    2b3c:	04020018 	csrrd	$r24,0x80
    2b40:	007e0603 	bstrins.w	$r3,$r16,0x1e,0x1
    2b44:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2e48 <_start-0x1bf5d1b8>
    2b48:	02001305 	slti	$r5,$r24,4(0x4)
    2b4c:	054a0104 	0x054a0104
    2b50:	04020006 	csrrd	$r6,0x80
    2b54:	0b054a01 	0x0b054a01
    2b58:	07054a50 	0x07054a50
    2b5c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b60:	1e054c06 	pcaddu18i	$r6,10848(0x2a60)
    2b64:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b68:	02008006 	slti	$r6,$r0,32(0x20)
    2b6c:	054a0304 	0x054a0304
    2b70:	04020018 	csrrd	$r24,0x80
    2b74:	02004a01 	slti	$r1,$r16,18(0x12)
    2b78:	004a0104 	0x004a0104
    2b7c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2c80 <_start-0x1bf5d380>
    2b80:	02000605 	slti	$r5,$r16,1(0x1)
    2b84:	054a0104 	0x054a0104
    2b88:	06054e0b 	cacop	0xb,$r16,339(0x153)
    2b8c:	01040200 	0x01040200
    2b90:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2b94:	06030402 	cacop	0x2,$r0,193(0xc1)
    2b98:	0015054c 	or	$r12,$r10,$r1
    2b9c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2ba0:	04020080 	csrxchg	$r0,$r4,0x80
    2ba4:	02004a03 	slti	$r3,$r16,18(0x12)
    2ba8:	054a0304 	0x054a0304
    2bac:	05510606 	0x05510606
    2bb0:	05010612 	0x05010612
    2bb4:	06058216 	cacop	0x16,$r16,352(0x160)
    2bb8:	1205bb06 	addu16i.d	$r6,$r24,-32402(0x816e)
    2bbc:	03054906 	lu52i.d	$r6,$r8,338(0x152)
    2bc0:	4a5e0306 	0x4a5e0306
    2bc4:	05140405 	0x05140405
    2bc8:	05010608 	0x05010608
    2bcc:	04054a06 	csrxchg	$r6,$r16,0x152
    2bd0:	0f054b06 	0x0f054b06
    2bd4:	06050106 	cacop	0x6,$r8,320(0x140)
    2bd8:	06050582 	cacop	0x2,$r12,321(0x141)
    2bdc:	06070584 	cacop	0x4,$r12,449(0x1c1)
    2be0:	4c0b0501 	jirl	$r1,$r8,2820(0xb04)
    2be4:	03060905 	lu52i.d	$r5,$r8,386(0x182)
    2be8:	0b05821f 	0x0b05821f
    2bec:	09050106 	0x09050106
    2bf0:	82270306 	0x82270306
    2bf4:	01060b05 	0x01060b05
    2bf8:	02001505 	slti	$r5,$r8,5(0x5)
    2bfc:	05820104 	0x05820104
    2c00:	12030609 	addu16i.d	$r9,$r16,-32575(0x80c1)
    2c04:	060b0582 	cacop	0x2,$r12,705(0x2c1)
    2c08:	06050501 	cacop	0x1,$r8,321(0x141)
    2c0c:	06090584 	cacop	0x4,$r12,577(0x241)
    2c10:	06050501 	cacop	0x1,$r8,321(0x141)
    2c14:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    2c18:	06060501 	cacop	0x1,$r8,385(0x181)
    2c1c:	060a0584 	cacop	0x4,$r12,641(0x281)
    2c20:	06060501 	cacop	0x1,$r8,385(0x181)
    2c24:	080a054b 	0x080a054b
    2c28:	060c05af 	cacop	0xf,$r13,769(0x301)
    2c2c:	500d0501 	b	67374340(0x4040d04) # 4043930 <_start-0x17fbc6d0>
    2c30:	0605054a 	cacop	0xa,$r10,321(0x141)
    2c34:	4a7fba03 	0x4a7fba03
    2c38:	01060705 	0x01060705
    2c3c:	02001705 	slti	$r5,$r24,5(0x5)
    2c40:	054a0104 	0x054a0104
    2c44:	04020011 	csrrd	$r17,0x80
    2c48:	06058201 	cacop	0x1,$r16,352(0x160)
    2c4c:	4a1c0306 	0x4a1c0306
    2c50:	01060805 	0x01060805
    2c54:	02001305 	slti	$r5,$r24,4(0x4)
    2c58:	054a0104 	0x054a0104
    2c5c:	054c0607 	0x054c0607
    2c60:	05010611 	0x05010611
    2c64:	054a4a17 	0x054a4a17
    2c68:	83bb0607 	0x83bb0607
    2c6c:	04020083 	csrxchg	$r3,$r4,0x80
    2c70:	ba630303 	0xba630303
    2c74:	02001605 	slti	$r5,$r16,5(0x5)
    2c78:	08060304 	0x08060304
    2c7c:	0402003a 	csrwr	$r26,0x80
    2c80:	06054a03 	cacop	0x3,$r16,338(0x152)
    2c84:	01040200 	0x01040200
    2c88:	4e0b054a 	jirl	$r10,$r10,-128252(0x20b04)
    2c8c:	0705464a 	0x0705464a
    2c90:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c94:	02008806 	slti	$r6,$r0,34(0x22)
    2c98:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2c9c:	83030402 	0x83030402
    2ca0:	02001605 	slti	$r5,$r16,5(0x5)
    2ca4:	7e060304 	0x7e060304
    2ca8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2cac:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2cb0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2db4 <_start-0x1bf5d24c>
    2cb4:	05500b05 	0x05500b05
    2cb8:	04020007 	csrrd	$r7,0x80
    2cbc:	05840603 	0x05840603
    2cc0:	04020027 	csrwr	$r7,0x80
    2cc4:	05010603 	0x05010603
    2cc8:	04020015 	csrrd	$r21,0x80
    2ccc:	24054a03 	ldptr.w	$r3,$r16,1352(0x548)
    2cd0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2cd4:	0019054a 	srl.d	$r10,$r10,$r1
    2cd8:	ba030402 	0xba030402
    2cdc:	02001605 	slti	$r5,$r16,5(0x5)
    2ce0:	00b80304 	bstrins.d	$r4,$r24,0x38,0x0
    2ce4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2fe8 <_start-0x1bf5d018>
    2ce8:	02000605 	slti	$r5,$r16,1(0x1)
    2cec:	064a0104 	0x064a0104
    2cf0:	0610054e 	cacop	0xe,$r10,1025(0x401)
    2cf4:	4a160501 	bcnez	$fcc0,398852(0x61604) # 642f8 <_start-0x1bf9bd08>
    2cf8:	06054a4a 	cacop	0xa,$r18,338(0x152)
    2cfc:	0b058306 	0x0b058306
    2d00:	06050106 	cacop	0x6,$r8,320(0x140)
    2d04:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2d08:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d0c:	001e054c 	mulh.d	$r12,$r10,$r1
    2d10:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d14:	04020080 	csrxchg	$r0,$r4,0x80
    2d18:	18054a03 	pcaddi	$r3,10832(0x2a50)
    2d1c:	01040200 	0x01040200
    2d20:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2d24:	ba010402 	0xba010402
    2d28:	054e0b05 	0x054e0b05
    2d2c:	04020006 	csrrd	$r6,0x80
    2d30:	07054a01 	0x07054a01
    2d34:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d38:	15054c06 	lu12i.w	$r6,-513440(0x82a60)
    2d3c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d40:	02008006 	slti	$r6,$r0,32(0x20)
    2d44:	004a0304 	0x004a0304
    2d48:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a304c <_start-0x1bf5cfb4>
    2d4c:	03060505 	lu52i.d	$r5,$r8,385(0x181)
    2d50:	11054a12 	addu16i.d	$r18,$r16,16722(0x4152)
    2d54:	07050106 	0x07050106
    2d58:	500a054a 	b	86510084(0x5280a04) # 528375c <_start-0x16d7c8a4>
    2d5c:	02000605 	slti	$r5,$r16,1(0x1)
    2d60:	84060304 	0x84060304
    2d64:	02001905 	slti	$r5,$r8,6(0x6)
    2d68:	01060304 	0x01060304
    2d6c:	02001b05 	slti	$r5,$r24,6(0x6)
    2d70:	00b80304 	bstrins.d	$r4,$r24,0x38,0x0
    2d74:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3078 <_start-0x1bf5cf88>
    2d78:	02001605 	slti	$r5,$r16,5(0x5)
    2d7c:	054a0104 	0x054a0104
    2d80:	04020005 	csrrd	$r5,0x80
    2d84:	0905ba01 	0x0905ba01
    2d88:	4a018203 	0x4a018203
    2d8c:	8e030605 	0x8e030605
    2d90:	0a05827f 	0x0a05827f
    2d94:	820c0306 	0x820c0306
    2d98:	01060c05 	0x01060c05
    2d9c:	4c060b05 	jirl	$r5,$r24,1544(0x608)
    2da0:	01060d05 	0x01060d05
    2da4:	88060c05 	0x88060c05
    2da8:	01060f05 	0x01060f05
    2dac:	4b060b05 	0x4b060b05
    2db0:	064a7003 	0x064a7003
    2db4:	054b064a 	0x054b064a
    2db8:	4a01060c 	0x4a01060c
    2dbc:	0402004a 	csrxchg	$r10,$r2,0x80
    2dc0:	11030602 	addu16i.d	$r2,$r16,16577(0x40c1)
    2dc4:	001a054a 	0x001a054a
    2dc8:	06020402 	cacop	0x2,$r0,129(0x81)
    2dcc:	02003a08 	slti	$r8,$r16,14(0xe)
    2dd0:	054a0204 	0x054a0204
    2dd4:	0402000b 	csrrd	$r11,0x80
    2dd8:	4e064a01 	jirl	$r1,$r16,-129464(0x20648)
    2ddc:	01061805 	0x01061805
    2de0:	054a0d05 	0x054a0d05
    2de4:	04020021 	csrwr	$r1,0x80
    2de8:	11054a01 	addu16i.d	$r1,$r16,16722(0x4152)
    2dec:	4a4a0c03 	bceqz	$fcc0,936460(0xe4a0c) # e77f8 <_start-0x1bf18808>
    2df0:	02000d05 	slti	$r5,$r8,3(0x3)
    2df4:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2df8:	02004a78 	slti	$r24,$r19,18(0x12)
    2dfc:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2e00:	83030402 	0x83030402
    2e04:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e08:	001a0583 	0x001a0583
    2e0c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2e10:	00220501 	div.d	$r1,$r8,$r1
    2e14:	b5030402 	0xb5030402
    2e18:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e1c:	001d054a 	mulh.wu	$r10,$r10,$r1
    2e20:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2f24 <_start-0x1bf5d0dc>
    2e24:	02000c05 	slti	$r5,$r0,3(0x3)
    2e28:	05ba0104 	0x05ba0104
    2e2c:	04020011 	csrrd	$r17,0x80
    2e30:	4a0a0301 	0x4a0a0301
    2e34:	01040200 	0x01040200
    2e38:	0402004a 	csrxchg	$r10,$r2,0x80
    2e3c:	02004a01 	slti	$r1,$r16,18(0x12)
    2e40:	054a0104 	0x054a0104
    2e44:	0402000d 	csrrd	$r13,0x80
    2e48:	004c0603 	0x004c0603
    2e4c:	83030402 	0x83030402
    2e50:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e54:	002b0583 	syscall	0x583
    2e58:	06030402 	cacop	0x2,$r0,193(0xc1)
    2e5c:	0402007e 	csrxchg	$r30,$r3,0x80
    2e60:	26054a03 	ldptr.d	$r3,$r16,1352(0x548)
    2e64:	01040200 	0x01040200
    2e68:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    2e6c:	08010402 	0x08010402
    2e70:	04020074 	csrxchg	$r20,$r3,0x80
    2e74:	09030603 	0x09030603
    2e78:	00190582 	srl.d	$r2,$r12,$r1
    2e7c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2e80:	000c0501 	bytepick.d	$r1,$r8,$r1,0x0
    2e84:	06030402 	cacop	0x2,$r0,193(0xc1)
    2e88:	002805bb 	0x002805bb
    2e8c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2e90:	0402007f 	csrxchg	$r31,$r3,0x80
    2e94:	23054a03 	sc.d	$r3,$r16,1352(0x548)
    2e98:	01040200 	0x01040200
    2e9c:	000b054a 	0x000b054a
    2ea0:	08010402 	0x08010402
    2ea4:	030f0574 	lu52i.d	$r20,$r11,961(0x3c1)
    2ea8:	05824a68 	0x05824a68
    2eac:	2103060a 	sc.w	$r10,$r16,772(0x304)
    2eb0:	060c054a 	cacop	0xa,$r10,769(0x301)
    2eb4:	500d0501 	b	67374340(0x4040d04) # 4043bb8 <_start-0x17fbc448>
    2eb8:	060b054a 	cacop	0xa,$r10,705(0x2c1)
    2ebc:	06f20646 	0x06f20646
    2ec0:	060c054b 	cacop	0xb,$r10,769(0x301)
    2ec4:	054a4a01 	0x054a4a01
    2ec8:	0550060a 	0x0550060a
    2ecc:	0501060c 	0x0501060c
    2ed0:	0584060b 	0x0584060b
    2ed4:	0501060d 	0x0501060d
    2ed8:	0550060c 	0x0550060c
    2edc:	0501060f 	0x0501060f
    2ee0:	054b060b 	0x054b060b
    2ee4:	0402000c 	csrrd	$r12,0x80
    2ee8:	1a054c02 	pcalau12i	$r2,10848(0x2a60)
    2eec:	02040200 	slti	$r0,$r16,256(0x100)
    2ef0:	003a0806 	0x003a0806
    2ef4:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a30f8 <_start-0x1bf5cf08>
    2ef8:	02000b05 	slti	$r5,$r24,2(0x2)
    2efc:	064a0104 	0x064a0104
    2f00:	0618054e 	cacop	0xe,$r10,1537(0x601)
    2f04:	4a0d0501 	bcnez	$fcc0,396548(0x60d04) # 63c08 <_start-0x1bf9c3f8>
    2f08:	02002105 	slti	$r5,$r8,8(0x8)
    2f0c:	054a0104 	0x054a0104
    2f10:	4a0c0311 	0x4a0c0311
    2f14:	000e054a 	bytepick.d	$r10,$r10,$r1,0x4
    2f18:	06030402 	cacop	0x2,$r0,193(0xc1)
    2f1c:	004a7803 	0x004a7803
    2f20:	83030402 	0x83030402
    2f24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f28:	04020083 	csrxchg	$r3,$r4,0x80
    2f2c:	1b058303 	pcalau12i	$r3,-513000(0x82c18)
    2f30:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f34:	22050106 	ll.d	$r6,$r8,1280(0x500)
    2f38:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f3c:	040200b5 	csrxchg	$r21,$r5,0x80
    2f40:	1d054a03 	pcaddu12i	$r3,-513456(0x82a50)
    2f44:	01040200 	0x01040200
    2f48:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    2f4c:	ba010402 	0xba010402
    2f50:	02001105 	slti	$r5,$r8,4(0x4)
    2f54:	0a030104 	0x0a030104
    2f58:	0402004a 	csrxchg	$r10,$r2,0x80
    2f5c:	02004a01 	slti	$r1,$r16,18(0x12)
    2f60:	004a0104 	0x004a0104
    2f64:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3068 <_start-0x1bf5cf98>
    2f68:	02000d05 	slti	$r5,$r8,3(0x3)
    2f6c:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2f70:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f74:	04020083 	csrxchg	$r3,$r4,0x80
    2f78:	2b058303 	fld.s	$f3,$r24,352(0x160)
    2f7c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f80:	02007e06 	slti	$r6,$r16,31(0x1f)
    2f84:	054a0304 	0x054a0304
    2f88:	04020026 	csrwr	$r6,0x80
    2f8c:	0c054a01 	0x0c054a01
    2f90:	01040200 	0x01040200
    2f94:	02007408 	slti	$r8,$r0,29(0x1d)
    2f98:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2f9c:	19058209 	pcaddi	$r9,-513008(0x82c10)
    2fa0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fa4:	0c050106 	0x0c050106
    2fa8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fac:	2805bb06 	ld.b	$r6,$r24,366(0x16e)
    2fb0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fb4:	02007f06 	slti	$r6,$r24,31(0x1f)
    2fb8:	054a0304 	0x054a0304
    2fbc:	04020023 	csrwr	$r3,0x80
    2fc0:	0b054a01 	0x0b054a01
    2fc4:	01040200 	0x01040200
    2fc8:	0f057408 	0x0f057408
    2fcc:	824a6803 	0x824a6803
    2fd0:	02000605 	slti	$r5,$r16,1(0x1)
    2fd4:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2fd8:	25054a2f 	stptr.w	$r15,$r17,1352(0x548)
    2fdc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fe0:	28050106 	ld.b	$r6,$r8,320(0x140)
    2fe4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fe8:	0017054a 	sll.w	$r10,$r10,$r1
    2fec:	08030402 	0x08030402
    2ff0:	00130574 	maskeqz	$r20,$r11,$r1
    2ff4:	f1030402 	0xf1030402
    2ff8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2ffc:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    3000:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3104 <_start-0x1bf5cefc>
    3004:	02001205 	slti	$r5,$r16,4(0x4)
    3008:	00800204 	bstrins.d	$r4,$r16,0x0,0x0
    300c:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a3210 <_start-0x1bf5cdf0>
    3010:	02000405 	slti	$r5,$r0,1(0x1)
    3014:	054a0104 	0x054a0104
    3018:	0905840a 	0x0905840a
    301c:	00050585 	alsl.w	$r5,$r12,$r1,0x3
    3020:	06030402 	cacop	0x2,$r0,193(0xc1)
    3024:	00180584 	sra.w	$r4,$r12,$r1
    3028:	06030402 	cacop	0x2,$r0,193(0xc1)
    302c:	00140501 	nor	$r1,$r8,$r1
    3030:	b8030402 	0xb8030402
    3034:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3038:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    303c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3140 <_start-0x1bf5cec0>
    3040:	89060305 	0x89060305
    3044:	01060505 	0x01060505
    3048:	05500905 	0x05500905
    304c:	04020006 	csrrd	$r6,0x80
    3050:	05840603 	0x05840603
    3054:	04020014 	csrrd	$r20,0x80
    3058:	05010603 	0x05010603
    305c:	04020015 	csrrd	$r21,0x80
    3060:	00730803 	bstrins.w	$r3,$r0,0x13,0x2
    3064:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3368 <_start-0x1bf5cc98>
    3068:	02000505 	slti	$r5,$r8,1(0x1)
    306c:	054a0104 	0x054a0104
    3070:	04020013 	csrrd	$r19,0x80
    3074:	02008102 	slti	$r2,$r8,32(0x20)
    3078:	054a0204 	0x054a0204
    307c:	04020004 	csrrd	$r4,0x80
    3080:	0a054a01 	0x0a054a01
    3084:	84080583 	0x84080583
    3088:	054d0a05 	0x054d0a05
    308c:	0a054a0f 	0x0a054a0f
    3090:	4a7e8f03 	0x4a7e8f03
    3094:	0606054a 	cacop	0xa,$r10,385(0x181)
    3098:	4a01f503 	bcnez	$fcc0,918004(0xe01f4) # e328c <_start-0x1bf1cd74>
    309c:	01061505 	0x01061505
    30a0:	054a1305 	0x054a1305
    30a4:	2205ba08 	ll.d	$r8,$r16,1464(0x5b8)
    30a8:	01040200 	0x01040200
    30ac:	06070582 	cacop	0x2,$r12,449(0x1c1)
    30b0:	0a05134c 	0x0a05134c
    30b4:	054a0106 	0x054a0106
    30b8:	054b0607 	0x054b0607
    30bc:	4a01060e 	0x4a01060e
    30c0:	05b80905 	0x05b80905
    30c4:	0402001a 	csrrd	$r26,0x80
    30c8:	4a7a0302 	0x4a7a0302
    30cc:	02040200 	slti	$r0,$r16,256(0x100)
    30d0:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    30d4:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a31d8 <_start-0x1bf5ce28>
    30d8:	4c060505 	jirl	$r5,$r8,1540(0x604)
    30dc:	01061105 	0x01061105
    30e0:	05ba0705 	0x05ba0705
    30e4:	0b030606 	0x0b030606
    30e8:	060f0582 	cacop	0x2,$r12,961(0x3c1)
    30ec:	4a140501 	bcnez	$fcc0,398340(0x61404) # 644f0 <_start-0x1bf9bb10>
    30f0:	4b060605 	0x4b060605
    30f4:	01060705 	0x01060705
    30f8:	04054a4a 	csrxchg	$r10,$r18,0x152
    30fc:	05134e06 	0x05134e06
    3100:	82010607 	0x82010607
    3104:	4a060582 	bcnez	$fcc4,656900(0xa0604) # a3708 <_start-0x1bf5c8f8>
    3108:	05500a05 	0x05500a05
    310c:	0402000e 	csrrd	$r14,0x80
    3110:	05054a01 	0x05054a01
    3114:	01040200 	0x01040200
    3118:	0605e408 	cacop	0x8,$r0,377(0x179)
    311c:	09054c06 	0x09054c06
    3120:	3c080106 	0x3c080106
    3124:	054a0805 	0x054a0805
    3128:	04020032 	csrwr	$r18,0x80
    312c:	02004802 	slti	$r2,$r0,18(0x12)
    3130:	004a0204 	0x004a0204
    3134:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a3338 <_start-0x1bf5ccc8>
    3138:	4e060705 	jirl	$r5,$r24,-129532(0x20604)
    313c:	01060a05 	0x01060a05
    3140:	f3060705 	0xf3060705
    3144:	01060c05 	0x01060c05
    3148:	054a0705 	0x054a0705
    314c:	04020008 	csrrd	$r8,0x80
    3150:	054c0603 	0x054c0603
    3154:	04020017 	csrrd	$r23,0x80
    3158:	00010603 	0x00010603
    315c:	ba030402 	0xba030402
    3160:	02000d05 	slti	$r5,$r8,3(0x3)
    3164:	004a0304 	0x004a0304
    3168:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a346c <_start-0x1bf5cb94>
    316c:	02001905 	slti	$r5,$r8,6(0x6)
    3170:	00800304 	bstrins.d	$r4,$r24,0x0,0x0
    3174:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3478 <_start-0x1bf5cb88>
    3178:	02000705 	slti	$r5,$r24,1(0x1)
    317c:	064a0104 	0x064a0104
    3180:	0505bb4f 	0x0505bb4f
    3184:	06080515 	cacop	0x15,$r8,513(0x201)
    3188:	08070501 	0x08070501
    318c:	030905ac 	lu52i.d	$r12,$r13,577(0x241)
    3190:	054a7ebe 	0x054a7ebe
    3194:	02054907 	slti	$r7,$r8,338(0x152)
    3198:	7fa30306 	0x7fa30306
    319c:	1503054a 	lu12i.w	$r10,-518102(0x8182a)
    31a0:	01060805 	0x01060805
    31a4:	054a0305 	0x054a0305
    31a8:	9f030606 	0x9f030606
    31ac:	09054a02 	0x09054a02
    31b0:	7ebc0306 	0x7ebc0306
    31b4:	490705ba 	bcnez	$fcc5,-1505532(0x690704) # ffe938b8 <_RAM_DATA+0x7fe928b8>
    31b8:	03060205 	lu52i.d	$r5,$r16,384(0x180)
    31bc:	058201ca 	0x058201ca
    31c0:	ba130601 	0xba130601
    31c4:	4a4a4a4a 	0x4a4a4a4a
    31c8:	00040282 	alsl.w	$r2,$r20,$r0,0x1
    31cc:	10050101 	addu16i.d	$r1,$r8,320(0x140)
    31d0:	bc020500 	0xbc020500
    31d4:	031c0015 	lu52i.d	$r21,$r0,1792(0x700)
    31d8:	050103d1 	0x050103d1
    31dc:	01018305 	0x01018305
    31e0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31e4:	040200ba 	csrxchg	$r26,$r5,0x80
    31e8:	3c080601 	0x3c080601
    31ec:	01040200 	0x01040200
    31f0:	0602054a 	cacop	0xa,$r10,129(0x81)
    31f4:	0606054b 	cacop	0xb,$r10,385(0x181)
    31f8:	05058201 	0x05058201
    31fc:	02054b06 	slti	$r6,$r24,338(0x152)
    3200:	0611054c 	cacop	0xc,$r10,1089(0x441)
    3204:	06020501 	cacop	0x1,$r8,129(0x81)
    3208:	01f22b03 	0x01f22b03
    320c:	04020001 	csrrd	$r1,0x80
    3210:	0200ba03 	slti	$r3,$r16,46(0x2e)
    3214:	08060104 	0x08060104
    3218:	0402003c 	csrwr	$r28,0x80
    321c:	4b064a01 	0x4b064a01
    3220:	01061405 	0x01061405
    3224:	4b060205 	0x4b060205
    3228:	01061405 	0x01061405
    322c:	8a060505 	0x8a060505
    3230:	01060905 	0x01060905
    3234:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 173838 <_start-0x1be8c7c8>
    3238:	01060905 	0x01060905
    323c:	f8060405 	0xf8060405
    3240:	01060605 	0x01060605
    3244:	03060505 	lu52i.d	$r5,$r8,385(0x181)
    3248:	0305ba73 	lu52i.d	$r19,$r19,366(0x16e)
    324c:	060c0513 	cacop	0x13,$r8,769(0x301)
    3250:	06030501 	cacop	0x1,$r8,193(0xc1)
    3254:	060705bb 	cacop	0x1b,$r13,449(0x1c1)
    3258:	4a100501 	bcnez	$fcc0,397316(0x61004) # 6425c <_start-0x1bf9bda4>
    325c:	054a0605 	0x054a0605
    3260:	054c0604 	0x054c0604
    3264:	0501060c 	0x0501060c
    3268:	05054a07 	0x05054a07
    326c:	0905c106 	0x0905c106
    3270:	02050106 	slti	$r6,$r8,320(0x140)
    3274:	01040200 	0x01040200
    3278:	f20a0306 	0xf20a0306
    327c:	02000305 	slti	$r5,$r24,0
    3280:	05140104 	0x05140104
    3284:	04020007 	csrrd	$r7,0x80
    3288:	02010601 	slti	$r1,$r16,65(0x41)
    328c:	01010010 	fadd.d	$f16,$f0,$f0
    3290:	05000105 	0x05000105
    3294:	00000002 	0x00000002
    3298:	04a30300 	csrxchg	$r0,$r24,0x28c0
    329c:	83020501 	0x83020501
    32a0:	01060605 	0x01060605
    32a4:	f3060205 	0xf3060205
    32a8:	4b060105 	bcnez	$fcc0,1508864(0x170600) # 1738a8 <_start-0x1be8c758>
    32ac:	01000c02 	0x01000c02
    32b0:	00087d01 	bytepick.w	$r1,$r8,$r31,0x0
    32b4:	04000200 	csrxchg	$r0,$r16,0x0
    32b8:	01000003 	0x01000003
    32bc:	0d0efb01 	0x0d0efb01
    32c0:	01010100 	fadd.d	$f0,$f8,$f0
    32c4:	00000001 	0x00000001
    32c8:	01000001 	0x01000001
    32cc:	552f3a44 	bl	-116314312(0x9112f38) # f9116204 <_RAM_DATA+0x79115204>
    32d0:	73726573 	0x73726573
    32d4:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe9448 <_RAM_DATA+0x7ffe8448>
    32d8:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c6248 <_start-0x1be39db8>
    32dc:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1a83c <_start-0x1bfe57c4>
    32e0:	73746e65 	0x73746e65
    32e4:	646f432f 	bge	$r25,$r15,28480(0x6f40) # a224 <_start-0x1bff5ddc>
    32e8:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff7f14 <_RAM_DATA+0x7fff6f14>
    32ec:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d9a58 <_start-0x1bc265a8>
    32f0:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9b50 <_RAM_DATA+0x7fff8b50>
    32f4:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffffa264 <_RAM_DATA+0x7fff9264>
    32f8:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1a668 <_start-0x1bfe5998>
    32fc:	535f676e 	b	-38051996(0xdbb5f64) # fdbb9260 <_RAM_DATA+0x7dbb8260>
    3300:	65747379 	bge	$r27,$r25,95344(0x17470) # 1a770 <_start-0x1bfe5890>
    3304:	43312f6d 	beqz	$r27,3617068(0x37312c) # 376430 <_start-0x1bc89bd0>
    3308:	2f323031 	0x2f323031
    330c:	2f637273 	0x2f637273
    3310:	752f7773 	xvsigncov.w	$xr19,$xr27,$xr29
    3314:	00726573 	bstrins.w	$r19,$r11,0x12,0x19
    3318:	755c3a64 	0x755c3a64
    331c:	73726573 	0x73726573
    3320:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe9494 <_RAM_DATA+0x7ffe8494>
    3324:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 8f94 <_start-0x1bff706c>
    3328:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1a888 <_start-0x1bfe5778>
    332c:	73746e65 	0x73746e65
    3330:	646f635c 	bge	$r26,$r28,28512(0x6f60) # a290 <_start-0x1bff5d70>
    3334:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff9f90 <_RAM_DATA+0x7fff8f90>
    3338:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 19aa4 <_start-0x1bfe655c>
    333c:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9b9c <_RAM_DATA+0x7fff8b9c>
    3340:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffffa2b0 <_RAM_DATA+0x7fff92b0>
    3344:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1a6b4 <_start-0x1bfe594c>
    3348:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    334c:	65747379 	bge	$r27,$r25,95344(0x17470) # 1a7bc <_start-0x1bfe5844>
    3350:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff64ac <_RAM_DATA+0x7fff54ac>
    3354:	5c323031 	bne	$r1,$r17,12848(0x3230) # 6584 <_start-0x1bff9a7c>
    3358:	5c637273 	bne	$r19,$r19,25456(0x6370) # 96c8 <_start-0x1bff6938>
    335c:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 8fd0 <_start-0x1bff7030>
    3360:	65646961 	bge	$r11,$r1,91240(0x16468) # 197c8 <_start-0x1bfe6838>
    3364:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 1a8c4 <_start-0x1bfe573c>
    3368:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffffa7cc <_RAM_DATA+0x7fff97cc>
    336c:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 8fd8 <_start-0x1bff7028>
    3370:	2d323361 	0x2d323361
    3374:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # a2e0 <_start-0x1bff5d20>
    3378:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffffa2e4 <_RAM_DATA+0x7fff92e4>
    337c:	7261676e 	0x7261676e
    3380:	32336863 	0x32336863
    3384:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    3388:	2d62696c 	0x2d62696c
    338c:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 99f8 <_start-0x1bff6608>
    3390:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 96fc <_start-0x1bff6904>
    3394:	2f656475 	0x2f656475
    3398:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 96f8 <_start-0x1bff6908>
    339c:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
    33a0:	755c3a64 	0x755c3a64
    33a4:	73726573 	0x73726573
    33a8:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe951c <_RAM_DATA+0x7ffe851c>
    33ac:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 901c <_start-0x1bff6fe4>
    33b0:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1a910 <_start-0x1bfe56f0>
    33b4:	73746e65 	0x73746e65
    33b8:	646f635c 	bge	$r26,$r28,28512(0x6f60) # a318 <_start-0x1bff5ce8>
    33bc:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffffa018 <_RAM_DATA+0x7fff9018>
    33c0:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 19b2c <_start-0x1bfe64d4>
    33c4:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9c24 <_RAM_DATA+0x7fff8c24>
    33c8:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffffa338 <_RAM_DATA+0x7fff9338>
    33cc:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1a73c <_start-0x1bfe58c4>
    33d0:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    33d4:	65747379 	bge	$r27,$r25,95344(0x17470) # 1a844 <_start-0x1bfe57bc>
    33d8:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff6534 <_RAM_DATA+0x7fff5534>
    33dc:	5c323031 	bne	$r1,$r17,12848(0x3230) # 660c <_start-0x1bff99f4>
    33e0:	5c637273 	bne	$r19,$r19,25456(0x6370) # 9750 <_start-0x1bff68b0>
    33e4:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 9058 <_start-0x1bff6fa8>
    33e8:	65646961 	bge	$r11,$r1,91240(0x16468) # 19850 <_start-0x1bfe67b0>
    33ec:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 1a94c <_start-0x1bfe56b4>
    33f0:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffffa854 <_RAM_DATA+0x7fff9854>
    33f4:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 9060 <_start-0x1bff6fa0>
    33f8:	2d323361 	0x2d323361
    33fc:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # a368 <_start-0x1bff5c98>
    3400:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffffa36c <_RAM_DATA+0x7fff936c>
    3404:	7261676e 	0x7261676e
    3408:	32336863 	0x32336863
    340c:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    3410:	2d62696c 	0x2d62696c
    3414:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 9a80 <_start-0x1bff6580>
    3418:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 9784 <_start-0x1bff687c>
    341c:	2f656475 	0x2f656475
    3420:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    3424:	552f3a44 	bl	-116314312(0x9112f38) # f911635c <_RAM_DATA+0x7911535c>
    3428:	73726573 	0x73726573
    342c:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe95a0 <_RAM_DATA+0x7ffe85a0>
    3430:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c63a0 <_start-0x1be39c60>
    3434:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1a994 <_start-0x1bfe566c>
    3438:	73746e65 	0x73746e65
    343c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # a37c <_start-0x1bff5c84>
    3440:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff806c <_RAM_DATA+0x7fff706c>
    3444:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d9bb0 <_start-0x1bc26450>
    3448:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9ca8 <_RAM_DATA+0x7fff8ca8>
    344c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffffa3bc <_RAM_DATA+0x7fff93bc>
    3450:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1a7c0 <_start-0x1bfe5840>
    3454:	535f676e 	b	-38051996(0xdbb5f64) # fdbb93b8 <_RAM_DATA+0x7dbb83b8>
    3458:	65747379 	bge	$r27,$r25,95344(0x17470) # 1a8c8 <_start-0x1bfe5738>
    345c:	43312f6d 	beqz	$r27,3617068(0x37312c) # 376588 <_start-0x1bc89a78>
    3460:	2f323031 	0x2f323031
    3464:	2f637273 	0x2f637273
    3468:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 163dc <_start-0x1bfe9c24>
    346c:	756c636e 	0x756c636e
    3470:	44006564 	bnez	$r11,1048676(0x100064) # 1034d4 <_start-0x1befcb2c>
    3474:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    3478:	2f737265 	0x2f737265
    347c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffffa2dc <_RAM_DATA+0x7fff92dc>
    3480:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff78ac <_RAM_DATA+0x7fff68ac>
    3484:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 1a1f8 <_start-0x1bfe5e08>
    3488:	2f73746e 	0x2f73746e
    348c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 198f8 <_start-0x1bfe6708>
    3490:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffffa3dc <_RAM_DATA+0x7fff93dc>
    3494:	7241676e 	0x7241676e
    3498:	505f6863 	b	25976680(0x18c5f68) # 18c9400 <_start-0x1a736c00>
    349c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 19808 <_start-0x1bfe67f8>
    34a0:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe9e10 <_RAM_DATA+0x7ffe8e10>
    34a4:	79535f67 	0x79535f67
    34a8:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 19a1c <_start-0x1bfe65e4>
    34ac:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    34b0:	732f3230 	0x732f3230
    34b4:	732f6372 	0x732f6372
    34b8:	75702f77 	0x75702f77
    34bc:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff9e28 <_RAM_DATA+0x7fff8e28>
    34c0:	2f3a4400 	0x2f3a4400
    34c4:	72657355 	0x72657355
    34c8:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1abf4 <_start-0x1bfe540c>
    34cc:	2f73676e 	0x2f73676e
    34d0:	75636f44 	0x75636f44
    34d4:	746e656d 	0x746e656d
    34d8:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff7804 <_RAM_DATA+0x7fff6804>
    34dc:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    34e0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa34c <_RAM_DATA+0x7fff934c>
    34e4:	68637241 	bltu	$r18,$r1,25456(0x6370) # 9854 <_start-0x1bff67ac>
    34e8:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa738 <_RAM_DATA+0x7fff9738>
    34ec:	73736563 	0x73736563
    34f0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9c5c <_RAM_DATA+0x7fff8c5c>
    34f4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    34f8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    34fc:	32303143 	0x32303143
    3500:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa770 <_RAM_DATA+0x7fff9770>
    3504:	2f77732f 	0x2f77732f
    3508:	76697270 	0x76697270
    350c:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
    3510:	31633100 	0x31633100
    3514:	495f3230 	0x495f3230
    3518:	7265746e 	0x7265746e
    351c:	74707572 	xvmax.b	$xr18,$xr11,$xr29
    3520:	0100632e 	0x0100632e
    3524:	645f0000 	bge	$r0,$r0,24320(0x5f00) # 9424 <_start-0x1bff6bdc>
    3528:	75616665 	0x75616665
    352c:	745f746c 	0x745f746c
    3530:	73657079 	vssrani.wu.d	$vr25,$vr3,0x1c
    3534:	0200682e 	slti	$r14,$r1,26(0x1a)
    3538:	735f0000 	vsrarni.d.q	$vr0,$vr0,0x40
    353c:	6e696474 	bgeu	$r3,$r20,-104092(0x26964) # fffe9ea0 <_RAM_DATA+0x7ffe8ea0>
    3540:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    3544:	74000003 	xvseq.b	$xr3,$xr0,$xr0
    3548:	2e747365 	0x2e747365
    354c:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    3550:	31736c00 	0x31736c00
    3554:	00682e78 	bstrins.w	$r24,$r19,0x8,0xb
    3558:	31000004 	0x31000004
    355c:	32303163 	0x32303163
    3560:	746e495f 	0x746e495f
    3564:	75727265 	0x75727265
    3568:	682e7470 	bltu	$r3,$r16,11892(0x2e74) # 63dc <_start-0x1bff9c24>
    356c:	00000100 	0x00000100
    3570:	7831736c 	0x7831736c
    3574:	6d6f635f 	bgeu	$r26,$r31,94048(0x16f60) # 1a4d4 <_start-0x1bfe5b2c>
    3578:	2e6e6f6d 	0x2e6e6f6d
    357c:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    3580:	6e6f4300 	bgeu	$r24,$r0,-102592(0x26f40) # fffea4c0 <_RAM_DATA+0x7ffe94c0>
    3584:	2e676966 	0x2e676966
    3588:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    358c:	31736c00 	0x31736c00
    3590:	32303163 	0x32303163
    3594:	6974705f 	bltu	$r2,$r31,95344(0x17470) # 1aa04 <_start-0x1bfe55fc>
    3598:	2e72656d 	0x2e72656d
    359c:	00060068 	alsl.wu	$r8,$r3,$r0,0x1
    35a0:	31736c00 	0x31736c00
    35a4:	64775f78 	bge	$r27,$r24,30556(0x775c) # ad00 <_start-0x1bff5300>
    35a8:	00682e67 	bstrins.w	$r7,$r19,0x8,0xb
    35ac:	6c000005 	bgeu	$r0,$r5,0 # 35ac <_start-0x1bffca54>
    35b0:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffffade0 <_RAM_DATA+0x7fff9de0>
    35b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1aa2c <_start-0x1bfe55d4>
    35b8:	0500682e 	0x0500682e
    35bc:	05000000 	0x05000000
    35c0:	02050001 	slti	$r1,$r0,320(0x140)
    35c4:	1c0016a8 	pcaddu12i	$r8,181(0xb5)
    35c8:	83020515 	0x83020515
    35cc:	01057508 	fmul.d	$f8,$f8,$f29
    35d0:	0c02f306 	0x0c02f306
    35d4:	05010100 	0x05010100
    35d8:	02050001 	slti	$r1,$r0,320(0x140)
    35dc:	1c0016e4 	pcaddu12i	$r4,183(0xb7)
    35e0:	8302051a 	0x8302051a
    35e4:	01057508 	fmul.d	$f8,$f8,$f29
    35e8:	0c02f306 	0x0c02f306
    35ec:	05010100 	0x05010100
    35f0:	02050001 	slti	$r1,$r0,320(0x140)
    35f4:	1c001720 	pcaddu12i	$r0,185(0xb9)
    35f8:	05010d03 	0x05010d03
    35fc:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3600:	f3060105 	0xf3060105
    3604:	01000c02 	0x01000c02
    3608:	00010501 	0x00010501
    360c:	175c0205 	lu32i.d	$r5,-335856(0xae010)
    3610:	12031c00 	addu16i.d	$r0,$r0,-32569(0x80c7)
    3614:	83020501 	0x83020501
    3618:	01057508 	fmul.d	$f8,$f8,$f29
    361c:	0c02f306 	0x0c02f306
    3620:	05010100 	0x05010100
    3624:	02050001 	slti	$r1,$r0,320(0x140)
    3628:	1c001798 	pcaddu12i	$r24,188(0xbc)
    362c:	05011703 	0x05011703
    3630:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3634:	f3060105 	0xf3060105
    3638:	01000c02 	0x01000c02
    363c:	00010501 	0x00010501
    3640:	17d40205 	lu32i.d	$r5,-90096(0xea010)
    3644:	1c031c00 	pcaddu12i	$r0,6368(0x18e0)
    3648:	83020501 	0x83020501
    364c:	01057508 	fmul.d	$f8,$f8,$f29
    3650:	0c02f306 	0x0c02f306
    3654:	05010100 	0x05010100
    3658:	02050001 	slti	$r1,$r0,320(0x140)
    365c:	1c001810 	pcaddu12i	$r16,192(0xc0)
    3660:	05012103 	0x05012103
    3664:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3668:	f3060105 	0xf3060105
    366c:	01000c02 	0x01000c02
    3670:	00010501 	0x00010501
    3674:	184c0205 	pcaddi	$r5,155664(0x26010)
    3678:	26031c00 	ldptr.d	$r0,$r0,796(0x31c)
    367c:	84020501 	0x84020501
    3680:	01057508 	fmul.d	$f8,$f8,$f29
    3684:	0c02f306 	0x0c02f306
    3688:	05010100 	0x05010100
    368c:	02050001 	slti	$r1,$r0,320(0x140)
    3690:	1c001888 	pcaddu12i	$r8,196(0xc4)
    3694:	05012c03 	0x05012c03
    3698:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    369c:	f3060105 	0xf3060105
    36a0:	01000c02 	0x01000c02
    36a4:	00010501 	0x00010501
    36a8:	18c40205 	pcaddi	$r5,401424(0x62010)
    36ac:	31031c00 	0x31031c00
    36b0:	84020501 	0x84020501
    36b4:	01057508 	fmul.d	$f8,$f8,$f29
    36b8:	0c02f306 	0x0c02f306
    36bc:	05010100 	0x05010100
    36c0:	02050001 	slti	$r1,$r0,320(0x140)
    36c4:	1c001900 	pcaddu12i	$r0,200(0xc8)
    36c8:	05013703 	0x05013703
    36cc:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    36d0:	f3060105 	0xf3060105
    36d4:	01000c02 	0x01000c02
    36d8:	00010501 	0x00010501
    36dc:	193c0205 	pcaddi	$r5,-401392(0x9e010)
    36e0:	3d031c00 	0x3d031c00
    36e4:	84020501 	0x84020501
    36e8:	01057508 	fmul.d	$f8,$f8,$f29
    36ec:	0c02f306 	0x0c02f306
    36f0:	05010100 	0x05010100
    36f4:	02050001 	slti	$r1,$r0,320(0x140)
    36f8:	1c001978 	pcaddu12i	$r24,203(0xcb)
    36fc:	0100c303 	fadd.s	$f3,$f24,$f16
    3700:	08830205 	0x08830205
    3704:	06010575 	cacop	0x15,$r11,65(0x41)
    3708:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    370c:	01050101 	fmul.d	$f1,$f8,$f0
    3710:	b4020500 	0xb4020500
    3714:	031c0019 	lu52i.d	$r25,$r0,1792(0x700)
    3718:	050100c8 	0x050100c8
    371c:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3720:	f3060105 	0xf3060105
    3724:	01000c02 	0x01000c02
    3728:	00010501 	0x00010501
    372c:	19f00205 	pcaddi	$r5,-32752(0xf8010)
    3730:	cd031c00 	0xcd031c00
    3734:	02050100 	slti	$r0,$r8,320(0x140)
    3738:	05750884 	0x05750884
    373c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3740:	0101000c 	fadd.d	$f12,$f0,$f0
    3744:	05000105 	0x05000105
    3748:	001a2c02 	0x001a2c02
    374c:	00d3031c 	bstrpick.d	$r28,$r24,0x13,0x0
    3750:	84020501 	0x84020501
    3754:	01057508 	fmul.d	$f8,$f8,$f29
    3758:	0c02f306 	0x0c02f306
    375c:	05010100 	0x05010100
    3760:	02050001 	slti	$r1,$r0,320(0x140)
    3764:	1c001a68 	pcaddu12i	$r8,211(0xd3)
    3768:	0100da03 	fadd.s	$f3,$f16,$f22
    376c:	08840205 	0x08840205
    3770:	06010575 	cacop	0x15,$r11,65(0x41)
    3774:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3778:	01050101 	fmul.d	$f1,$f8,$f0
    377c:	a4020500 	0xa4020500
    3780:	031c001a 	lu52i.d	$r26,$r0,1792(0x700)
    3784:	050100e0 	0x050100e0
    3788:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    378c:	f3060105 	0xf3060105
    3790:	01000c02 	0x01000c02
    3794:	00010501 	0x00010501
    3798:	1ae00205 	pcalau12i	$r5,458768(0x70010)
    379c:	e6031c00 	0xe6031c00
    37a0:	02050100 	slti	$r0,$r8,320(0x140)
    37a4:	05750884 	0x05750884
    37a8:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    37ac:	0101000c 	fadd.d	$f12,$f0,$f0
    37b0:	05000105 	0x05000105
    37b4:	001b1c02 	rotr.w	$r2,$r0,$r7
    37b8:	00ec031c 	bstrpick.d	$r28,$r24,0x2c,0x0
    37bc:	84020501 	0x84020501
    37c0:	01057508 	fmul.d	$f8,$f8,$f29
    37c4:	0c02f306 	0x0c02f306
    37c8:	05010100 	0x05010100
    37cc:	02050001 	slti	$r1,$r0,320(0x140)
    37d0:	1c001b58 	pcaddu12i	$r24,218(0xda)
    37d4:	0100f203 	fadd.s	$f3,$f16,$f28
    37d8:	08840205 	0x08840205
    37dc:	06010575 	cacop	0x15,$r11,65(0x41)
    37e0:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    37e4:	01050101 	fmul.d	$f1,$f8,$f0
    37e8:	94020500 	0x94020500
    37ec:	031c001b 	lu52i.d	$r27,$r0,1792(0x700)
    37f0:	050100f8 	0x050100f8
    37f4:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    37f8:	f3060105 	0xf3060105
    37fc:	01000c02 	0x01000c02
    3800:	00010501 	0x00010501
    3804:	1bd00205 	pcalau12i	$r5,-98288(0xe8010)
    3808:	fd031c00 	0xfd031c00
    380c:	02050100 	slti	$r0,$r8,320(0x140)
    3810:	05750883 	0x05750883
    3814:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3818:	0101000c 	fadd.d	$f12,$f0,$f0
    381c:	05000105 	0x05000105
    3820:	001c0c02 	mul.w	$r2,$r0,$r3
    3824:	0182031c 	0x0182031c
    3828:	84020501 	0x84020501
    382c:	01057508 	fmul.d	$f8,$f8,$f29
    3830:	0c02f306 	0x0c02f306
    3834:	05010100 	0x05010100
    3838:	02050001 	slti	$r1,$r0,320(0x140)
    383c:	1c001c48 	pcaddu12i	$r8,226(0xe2)
    3840:	01018803 	0x01018803
    3844:	08840205 	0x08840205
    3848:	06010575 	cacop	0x15,$r11,65(0x41)
    384c:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3850:	01050101 	fmul.d	$f1,$f8,$f0
    3854:	84020500 	0x84020500
    3858:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
    385c:	0501018e 	0x0501018e
    3860:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3864:	f3060105 	0xf3060105
    3868:	01000c02 	0x01000c02
    386c:	00010501 	0x00010501
    3870:	1cc00205 	pcaddu12i	$r5,393232(0x60010)
    3874:	94031c00 	0x94031c00
    3878:	02050101 	slti	$r1,$r8,320(0x140)
    387c:	05750884 	0x05750884
    3880:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3884:	0101000c 	fadd.d	$f12,$f0,$f0
    3888:	05000105 	0x05000105
    388c:	001cfc02 	mulh.w	$r2,$r0,$r31
    3890:	019a031c 	0x019a031c
    3894:	84020501 	0x84020501
    3898:	01057508 	fmul.d	$f8,$f8,$f29
    389c:	0c02f306 	0x0c02f306
    38a0:	05010100 	0x05010100
    38a4:	02050001 	slti	$r1,$r0,320(0x140)
    38a8:	1c001d38 	pcaddu12i	$r24,233(0xe9)
    38ac:	0101a003 	0x0101a003
    38b0:	08840205 	0x08840205
    38b4:	06010575 	cacop	0x15,$r11,65(0x41)
    38b8:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    38bc:	01050101 	fmul.d	$f1,$f8,$f0
    38c0:	74020500 	xvsle.b	$xr0,$xr8,$xr1
    38c4:	031c001d 	lu52i.d	$r29,$r0,1792(0x700)
    38c8:	050101a7 	0x050101a7
    38cc:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    38d0:	f3060105 	0xf3060105
    38d4:	01000c02 	0x01000c02
    38d8:	00010501 	0x00010501
    38dc:	1db00205 	pcaddu12i	$r5,-163824(0xd8010)
    38e0:	ad031c00 	0xad031c00
    38e4:	02050101 	slti	$r1,$r8,320(0x140)
    38e8:	05750884 	0x05750884
    38ec:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    38f0:	0101000c 	fadd.d	$f12,$f0,$f0
    38f4:	05000105 	0x05000105
    38f8:	001dec02 	mul.d	$r2,$r0,$r27
    38fc:	01b3031c 	0x01b3031c
    3900:	84020501 	0x84020501
    3904:	01057508 	fmul.d	$f8,$f8,$f29
    3908:	0c02f306 	0x0c02f306
    390c:	05010100 	0x05010100
    3910:	02050001 	slti	$r1,$r0,320(0x140)
    3914:	1c001e28 	pcaddu12i	$r8,241(0xf1)
    3918:	0101dc03 	0x0101dc03
    391c:	05f30205 	0x05f30205
    3920:	0501060b 	0x0501060b
    3924:	13f30602 	addu16i.d	$r2,$r16,-831(0xfcc1)
    3928:	75081313 	0x75081313
    392c:	01060905 	0x01060905
    3930:	83060205 	0x83060205
    3934:	01060805 	0x01060805
    3938:	4b060205 	0x4b060205
    393c:	01060905 	0x01060905
    3940:	4b060205 	0x4b060205
    3944:	060d054c 	cacop	0xc,$r10,833(0x341)
    3948:	4a020501 	bcnez	$fcc0,393732(0x60204) # 63b4c <_start-0x1bf9c4b4>
    394c:	02002505 	slti	$r5,$r8,9(0x9)
    3950:	054a0204 	0x054a0204
    3954:	04020002 	csrrd	$r2,0x80
    3958:	03054a01 	lu52i.d	$r1,$r16,338(0x152)
    395c:	0d058406 	0x0d058406
    3960:	17050106 	lu32i.d	$r6,-514040(0x82808)
    3964:	4a05054a 	bcnez	$fcc2,2753796(0x2a0504) # 2a3e68 <_start-0x1bd5c198>
    3968:	4c060605 	jirl	$r5,$r16,1540(0x604)
    396c:	01061305 	0x01061305
    3970:	05f20605 	0x05f20605
    3974:	4a828501 	bcnez	$fcc0,426628(0x68284) # 6bbf8 <_start-0x1bf94408>
    3978:	01000802 	0x01000802
    397c:	00010501 	0x00010501
    3980:	00000205 	0x00000205
    3984:	f1030000 	0xf1030000
    3988:	02050101 	slti	$r1,$r8,320(0x140)
    398c:	0105bb83 	0x0105bb83
    3990:	0c024b06 	0x0c024b06
    3994:	05010100 	0x05010100
    3998:	02050001 	slti	$r1,$r0,320(0x140)
    399c:	00000000 	0x00000000
    39a0:	0101ff03 	0x0101ff03
    39a4:	05830205 	0x05830205
    39a8:	0501060b 	0x0501060b
    39ac:	4bf30602 	0x4bf30602
    39b0:	bb060105 	0xbb060105
    39b4:	01000c02 	0x01000c02
    39b8:	00010501 	0x00010501
    39bc:	1ec00205 	pcaddu18i	$r5,393232(0x60010)
    39c0:	8e031c00 	0x8e031c00
    39c4:	02050102 	slti	$r2,$r8,320(0x140)
    39c8:	060b0584 	cacop	0x4,$r12,705(0x2c1)
    39cc:	06020501 	cacop	0x1,$r8,129(0x81)
    39d0:	060905f3 	cacop	0x13,$r15,577(0x241)
    39d4:	06020501 	cacop	0x1,$r8,129(0x81)
    39d8:	06010583 	cacop	0x3,$r12,65(0x41)
    39dc:	000c024c 	bytepick.d	$r12,$r18,$r0,0x0
    39e0:	01050101 	fmul.d	$f1,$f8,$f0
    39e4:	f0020500 	0xf0020500
    39e8:	031c001e 	lu52i.d	$r30,$r0,1792(0x700)
    39ec:	0501029f 	0x0501029f
    39f0:	13138305 	addu16i.d	$r5,$r24,-15136(0xc4e0)
    39f4:	06130513 	cacop	0x13,$r8,1217(0x4c1)
    39f8:	06050501 	cacop	0x1,$r8,321(0x141)
    39fc:	060f05bb 	cacop	0x1b,$r13,961(0x3c1)
    3a00:	06050501 	cacop	0x1,$r8,321(0x141)
    3a04:	060e054b 	cacop	0xb,$r10,897(0x381)
    3a08:	06050501 	cacop	0x1,$r8,321(0x141)
    3a0c:	060d05f3 	cacop	0x13,$r15,833(0x341)
    3a10:	06020501 	cacop	0x1,$r8,129(0x81)
    3a14:	054a0683 	0x054a0683
    3a18:	0c02bf01 	0x0c02bf01
    3a1c:	05010100 	0x05010100
    3a20:	02050001 	slti	$r1,$r0,320(0x140)
    3a24:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
    3a28:	0102b703 	fsub.s	$f3,$f24,$f13
    3a2c:	05130205 	0x05130205
    3a30:	0501060b 	0x0501060b
    3a34:	05f30602 	0x05f30602
    3a38:	05010608 	0x05010608
    3a3c:	0402bb01 	csrxchg	$r1,$r24,0xae
    3a40:	05010100 	0x05010100
    3a44:	02050001 	slti	$r1,$r0,320(0x140)
    3a48:	1c001f5c 	pcaddu12i	$r28,250(0xfa)
    3a4c:	0102c503 	fsub.s	$f3,$f8,$f17
    3a50:	05830505 	0x05830505
    3a54:	05010615 	0x05010615
    3a58:	0505ba0e 	0x0505ba0e
    3a5c:	11054b06 	addu16i.d	$r6,$r24,16722(0x4152)
    3a60:	1c050106 	pcaddu12i	$r6,10248(0x2808)
    3a64:	820e054a 	0x820e054a
    3a68:	83060505 	0x83060505
    3a6c:	03060105 	lu52i.d	$r5,$r8,384(0x180)
    3a70:	0a05f212 	0x0a05f212
    3a74:	ba700306 	0xba700306
    3a78:	05bb0d05 	0x05bb0d05
    3a7c:	05010619 	0x05010619
    3a80:	05bb060d 	0x05bb060d
    3a84:	0d05520a 	0x0d05520a
    3a88:	061905bb 	cacop	0x1b,$r13,1601(0x641)
    3a8c:	060d0501 	cacop	0x1,$r8,833(0x341)
    3a90:	0105ad08 	0x0105ad08
    3a94:	04021606 	csrxchg	$r6,$r16,0x85
    3a98:	05010100 	0x05010100
    3a9c:	02050001 	slti	$r1,$r0,320(0x140)
    3aa0:	1c001fec 	pcaddu12i	$r12,255(0xff)
    3aa4:	0102e503 	fsub.s	$f3,$f8,$f25
    3aa8:	05bc0205 	0x05bc0205
    3aac:	05010608 	0x05010608
    3ab0:	05f40605 	0x05f40605
    3ab4:	05010607 	0x05010607
    3ab8:	058a0605 	0x058a0605
    3abc:	05010608 	0x05010608
    3ac0:	058a0602 	0x058a0602
    3ac4:	4a010605 	0x4a010605
    3ac8:	52060205 	b	-132774400(0x8160600) # f81640c8 <_RAM_DATA+0x781630c8>
    3acc:	01060a05 	0x01060a05
    3ad0:	05f30105 	0x05f30105
    3ad4:	69030609 	bltu	$r16,$r9,66308(0x10304) # 13dd8 <_start-0x1bfec228>
    3ad8:	060c05f2 	cacop	0x12,$r15,769(0x301)
    3adc:	820b0501 	0x820b0501
    3ae0:	4c060d05 	jirl	$r5,$r8,1548(0x60c)
    3ae4:	f7060583 	0xf7060583
    3ae8:	01060e05 	0x01060e05
    3aec:	83060905 	0x83060905
    3af0:	03054a06 	lu52i.d	$r6,$r16,338(0x152)
    3af4:	0b05bd06 	0x0b05bd06
    3af8:	3c080106 	0x3c080106
    3afc:	16060605 	lu32i.d	$r5,12336(0x3030)
    3b00:	01060e05 	0x01060e05
    3b04:	84060605 	0x84060605
    3b08:	03054a06 	lu52i.d	$r6,$r16,338(0x152)
    3b0c:	0b054b06 	0x0b054b06
    3b10:	14020106 	lu12i.w	$r6,4104(0x1008)
    3b14:	05010100 	0x05010100
    3b18:	02050001 	slti	$r1,$r0,320(0x140)
    3b1c:	1c0020b4 	pcaddu12i	$r20,261(0x105)
    3b20:	01038603 	0x01038603
    3b24:	4b830505 	bcnez	$fcc0,1540868(0x178304) # 17be28 <_start-0x1be841d8>
    3b28:	060105bb 	cacop	0x1b,$r13,65(0x41)
    3b2c:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    3b30:	Address 0x0000000000003b30 is out of bounds.


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
      30:	019f0104 	0x019f0104
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 1)
      34:	ca0c0000 	0xca0c0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      38:	56000002 	bl	655360(0xa0000) # a0038 <_start-0x1bf5ffc8>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      44:	d0000000 	0xd0000000
      48:	02000000 	slti	$r0,$r0,0
      4c:	02720601 	sltui	$r1,$r16,-895(0xc81)
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	c5030000 	0xc5030000
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
      54:	02000000 	slti	$r0,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      58:	0038181d 	0x0038181d
test_uart_send():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      5c:	01020000 	0x01020000
TIM_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:24
      60:	00027008 	0x00027008
      64:	05020200 	0x05020200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	0000027e 	0x0000027e
      6c:	61070202 	blt	$r16,$r2,67328(0x10700) # 1076c <_start-0x1bfef894>
      70:	02000001 	slti	$r1,$r0,0
      74:	01010504 	fadd.d	$f4,$f8,$f1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:26
      78:	31030000 	0x31030000
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49
      7c:	02000001 	slti	$r1,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
      80:	00601941 	bstrins.w	$r1,$r10,0x0,0x6
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
      c8:	00026a04 	0x00026a04
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	06010200 	cacop	0x0,$r16,64(0x40)
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	00000279 	0x00000279
      d4:	0000a706 	0x0000a706
      d8:	02a30700 	addi.w	$r0,$r24,-1855(0x8c1)
      dc:	69040000 	bltu	$r0,$r0,66560(0x10400) # 104dc <_start-0x1bfefb24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	00009411 	0x00009411
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	01140700 	fabs.s	$f0,$f24
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
      e8:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff04e8 <_RAM_DATA+0x7ffef4e8>
      ec:	00009411 	0x00009411
      f0:	02590700 	sltui	$r0,$r24,1601(0x641)
      f4:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 104f4 <_start-0x1bfefb0c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
      f8:	0000750c 	0x0000750c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
      fc:	05080800 	0x05080800
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
     100:	014909cd 	0x014909cd
     104:	ac090000 	0xac090000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
     108:	05000002 	0x05000002
     10c:	008f14cf 	bstrins.d	$r15,$r6,0xf,0x5
     110:	09000000 	0x09000000
     114:	000000e6 	0x000000e6
     118:	8f14d005 	0x8f14d005
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
     11c:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
     120:	0000b109 	0x0000b109
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 1)
     124:	14d10500 	lu12i.w	$r0,428072(0x68828)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     128:	0000008f 	0x0000008f
     12c:	434c0a02 	beqz	$r16,740360(0xb4c08) # b4d34 <_start-0x1bf4b2cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     130:	d2050052 	0xd2050052
     134:	00008f14 	0x00008f14
     138:	93090300 	0x93090300
     13c:	05000001 	0x05000001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     140:	008f14d3 	bstrins.d	$r19,$r6,0xf,0x5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     144:	0a040000 	0x0a040000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
     148:	0052534c 	0x0052534c
     14c:	8f14d405 	0x8f14d405
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     150:	05000000 	0x05000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
     154:	0000be09 	0x0000be09
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:245
     158:	14d50500 	lu12i.w	$r0,436264(0x6a828)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246
     15c:	0000008f 	0x0000008f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
     160:	02be0906 	addi.w	$r6,$r8,-126(0xf82)
     164:	d6050000 	0xd6050000
     168:	00008f14 	0x00008f14
     16c:	03000700 	lu52i.d	$r0,$r24,1(0x1)
     170:	000000ef 	0x000000ef
     174:	d703d805 	0xd703d805
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
     178:	0b000000 	0x0b000000
     17c:	00000288 	0x00000288
     180:	06011701 	cacop	0x1,$r24,69(0x45)
     184:	0000004d 	0x0000004d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     188:	00000305 	0x00000305
     18c:	520c0000 	b	134144(0x20c00) # 20d8c <_start-0x1bfdf274>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     190:	01000001 	0x01000001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     194:	75050118 	xvssrln.hu.w	$xr24,$xr8,$xr0
     198:	00000000 	0x00000000
     19c:	30000000 	0x30000000
     1a0:	01000000 	0x01000000
     1a4:	02b60d9c 	addi.w	$r28,$r12,-637(0xd83)
     1a8:	0f010000 	0x0f010000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     1ac:	00750501 	bstrins.w	$r1,$r8,0x15,0x1
     1b0:	00000000 	0x00000000
     1b4:	00380000 	0x00380000
     1b8:	9c010000 	0x9c010000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     1bc:	00000208 	0x00000208
     1c0:	7274730e 	0x7274730e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
     1c4:	010f0100 	fmina.d	$f0,$f8,$f0
     1c8:	00020813 	0x00020813
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257
     1cc:	00000400 	0x00000400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
     1d0:	00000000 	0x00000000
     1d4:	02930f00 	addi.w	$r0,$r24,1219(0x4c3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
     1d8:	0f010000 	0x0f010000
     1dc:	020e2401 	slti	$r1,$r0,905(0x389)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 2)
     1e0:	00290000 	0x00290000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
     1e4:	00250000 	crc.w.w.w	$r0,$r0,$r0
     1e8:	11100000 	addu16i.d	$r0,$r0,17408(0x4400)
     1ec:	01007061 	0x01007061
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
     1f0:	14170111 	lu12i.w	$r17,47112(0xb808)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
     1f4:	02000002 	slti	$r2,$r0,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
     1f8:	39124c91 	0x39124c91
     1fc:	01000003 	0x01000003
     200:	75090113 	xvssrlrn.hu.w	$xr19,$xr8,$xr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     204:	4c000000 	jirl	$r0,$r0,0
     208:	4a000000 	bceqz	$fcc0,131072(0x20000) # 20208 <_start-0x1bfdfdf8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
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
     240:	0002b517 	0x0002b517
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	05c30100 	0x05c30100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	00000000 	0x00000000
     250:	0000022c 	0x0000022c
     254:	03ae9c01 	ori	$r1,$r0,0xba7
     258:	73180000 	0x73180000
     25c:	01007274 	0x01007274
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	020814c3 	slti	$r3,$r6,517(0x205)
     264:	00790000 	bstrins.w	$r0,$r0,0x19,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	005f0000 	0x005f0000
     26c:	93190000 	0x93190000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	01000002 	0x01000002
     274:	020e25c3 	slti	$r3,$r14,905(0x389)
     278:	01160000 	0x01160000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	01100000 	0x01100000
     280:	61180000 	blt	$r0,$r0,71680(0x11800) # 11a80 <_start-0x1bfee580>
     284:	c3010070 	0xc3010070
     288:	0002143f 	0x0002143f
     28c:	00014400 	asrtle.d	$r0,$r17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	00014200 	asrtle.d	$r16,$r16
     294:	00691a00 	bstrins.w	$r0,$r16,0x9,0x6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	7509c501 	xvssrlrn.wu.d	$xr1,$xr8,$xr17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	5b000000 	beq	$r0,$r0,-65536(0x30000) # ffff029c <_RAM_DATA+0x7ffef29c>
     2a0:	57000001 	bl	458752(0x70000) # 702a0 <_start-0x1bf8fd60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	1a000001 	pcalau12i	$r1,0
     2a8:	c6010063 	0xc6010063
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	0000a70a 	0x0000a70a
     2b0:	00017e00 	asrtle.d	$r16,$r31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	00017a00 	asrtle.d	$r16,$r30
     2b8:	00771a00 	bstrins.w	$r0,$r16,0x17,0x6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	7509c701 	xvssrlrn.wu.d	$xr1,$xr24,$xr17
     2c0:	b6000000 	0xb6000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	9c000001 	0x9c000001
     2c8:	1b000001 	pcalau12i	$r1,-524288(0x80000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	00000340 	0x00000340
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	080bc801 	0x080bc801
     2d4:	54000002 	bl	524288(0x80000) # 802d4 <_start-0x1bf7fd2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	4e000002 	jirl	$r2,$r0,-131072(0x20000)
     2dc:	1c000002 	pcaddu12i	$r2,0
     2e0:	00000253 	0x00000253
     2e4:	0001d001 	0x0001d001
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
     3d4:	00032d17 	0x00032d17
     3d8:	07a80100 	0x07a80100
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
     3f4:	020819a8 	slti	$r8,$r13,518(0x206)
     3f8:	02880000 	addi.w	$r0,$r0,512(0x200)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	02800000 	addi.w	$r0,$r0,0
     400:	76180000 	0x76180000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	23a80100 	sc.d	$r0,$r8,-22528(0xa800)
     408:	0000004d 	0x0000004d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	000002c9 	0x000002c9
     410:	000002bf 	0x000002bf
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	01007718 	0x01007718
     418:	00752aa8 	bstrins.w	$r8,$r21,0x15,0xa
     41c:	031b0000 	lu52i.d	$r0,$r0,1728(0x6c0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	03110000 	lu52i.d	$r0,$r0,1088(0x440)
     424:	34190000 	0x34190000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	01000003 	0x01000003
     42c:	007531a8 	bstrins.w	$r8,$r13,0x15,0xc
     430:	03670000 	andi	$r0,$r0,0x9c0
     434:	035d0000 	andi	$r0,$r0,0x740
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	c5190000 	0xc5190000
     43c:	01000002 	0x01000002
     440:	00753ba8 	bstrins.w	$r8,$r29,0x15,0xe
     444:	03b10000 	ori	$r0,$r0,0xc40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	03a90000 	ori	$r0,$r0,0xa40
     44c:	691a0000 	bltu	$r0,$r0,72192(0x11a00) # 11e4c <_start-0x1bfee1b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	09aa0100 	vfnmadd.d	$vr0,$vr8,$vr0,$vr20
     454:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	000003f1 	0x000003f1
     45c:	000003eb 	0x000003eb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	01006a1a 	0x01006a1a
     464:	00750caa 	bstrins.w	$r10,$r5,0x15,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	041d0000 	csrrd	$r0,0x740
     46c:	041b0000 	csrrd	$r0,0x6c0
     470:	631a0000 	blt	$r0,$r0,-58880(0x31a00) # ffff1e70 <_RAM_DATA+0x7fff0e70>
     474:	09ab0100 	vfnmadd.d	$vr0,$vr8,$vr0,$vr22
     478:	00000075 	0x00000075
     47c:	00000436 	0x00000436
     480:	00000430 	0x00000430
     484:	6675621f 	bge	$r16,$r31,-101024(0x27560) # fffe79e4 <_RAM_DATA+0x7ffe69e4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	0aac0100 	xvfnmadd.d	$xr0,$xr8,$xr0,$xr24
     48c:	000004a0 	0x000004a0
     490:	7fa09103 	0x7fa09103
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	00013c1b 	0x00013c1b
     498:	13ad0100 	addu16i.d	$r0,$r8,-5312(0xeb40)
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
     4d4:	5717003f 	bl	16717568(0xff1700) # ff1bd4 <_start-0x1b00e42c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	01000001 	0x01000001
     4dc:	020807a2 	slti	$r2,$r29,513(0x201)
     4e0:	00000000 	0x00000000
     4e4:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
     4e8:	9c010000 	0x9c010000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	000004ed 	0x000004ed
     4f0:	74736418 	xvmin.w	$xr24,$xr0,$xr25
     4f4:	17a20100 	lu32i.d	$r0,-192504(0xd1008)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	00000208 	0x00000208
     4fc:	00000498 	0x00000498
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	00000492 	0x00000492
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	72686322 	0x72686322
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	21a20100 	sc.w	$r0,$r8,-24064(0xa200)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	000000a7 	0x000000a7
     510:	17005501 	lu32i.d	$r1,-523608(0x802a8)
     514:	00000326 	0x00000326
     518:	08079c01 	0x08079c01
     51c:	00000002 	0x00000002
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	50000000 	b	0 # 520 <_start-0x1bfffae0>
     524:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	00056c9c 	alsl.w	$r28,$r4,$r27,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	73641800 	0x73641800
     530:	9c010074 	0x9c010074
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	00020814 	0x00020814
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	0004c900 	alsl.w	$r0,$r8,$r18,0x2
     53c:	0004c300 	alsl.w	$r0,$r24,$r16,0x2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	00731800 	bstrins.w	$r0,$r0,0x13,0x6
     544:	081f9c01 	fmadd.s	$f1,$f0,$f7,$f31
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	fb000002 	0xfb000002
     54c:	f5000004 	0xf5000004
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	1a000004 	pcalau12i	$r4,0
     554:	006e656c 	bstrins.w	$r12,$r11,0xe,0x19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	940e9e01 	0x940e9e01
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
     590:	42170000 	beqz	$r0,136960(0x21700) # 21c90 <_start-0x1bfde370>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	01000001 	0x01000001
     598:	00750548 	bstrins.w	$r8,$r10,0x15,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	12900000 	addu16i.d	$r0,$r0,-23552(0xa400)
     5a0:	02081c00 	slti	$r0,$r0,519(0x207)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	9c010000 	0x9c010000
     5a8:	000006d6 	0x000006d6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	746d6618 	0x746d6618
     5b0:	14480100 	lu12i.w	$r0,147464(0x24008)
     5b4:	00000208 	0x00000208
     5b8:	0000054f 	0x0000054f
     5bc:	00000549 	0x00000549
     5c0:	00691a10 	bstrins.w	$r16,$r16,0x9,0x6
     5c4:	75064a01 	0x75064a01
     5c8:	7f000000 	0x7f000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	7b000005 	0x7b000005
     5d0:	1a000005 	pcalau12i	$r5,0
     5d4:	4b010063 	bceqz	$fcc3,983296(0xf0100) # f06d4 <_start-0x1bf0f92c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	0000a707 	0x0000a707
     5dc:	0005a200 	alsl.w	$r0,$r16,$r8,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	00059e00 	alsl.w	$r0,$r16,$r7,0x4
     5e4:	72611a00 	0x72611a00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	4c010067 	jirl	$r7,$r3,256(0x100)
     5ec:	0006d609 	alsl.wu	$r9,$r16,$r21,0x2
     5f0:	0005c200 	alsl.w	$r0,$r16,$r16,0x4
     5f4:	0005c000 	alsl.w	$r0,$r0,$r16,0x4
     5f8:	70611f00 	vabsd.w	$vr0,$vr24,$vr7
     5fc:	084d0100 	0x084d0100
     600:	000006dc 	0x000006dc
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	7fbc9103 	0x7fbc9103
     608:	0100771a 	0x0100771a
     60c:	0075064e 	bstrins.w	$r14,$r18,0x15,0x1
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	05ef0000 	0x05ef0000
     614:	05d50000 	0x05d50000
     618:	531c0000 	b	203776(0x31c00) # 32218 <_start-0x1bfcdde8>
     61c:	01000002 	0x01000002
     620:	12d80157 	addu16i.d	$r23,$r10,-18944(0xb600)
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
     704:	00032817 	0x00032817
     708:	053b0100 	0x053b0100
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	00000075 	0x00000075
     710:	1c001238 	pcaddu12i	$r24,145(0x91)
     714:	00000058 	0x00000058
     718:	07409c01 	0x07409c01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	73180000 	0x73180000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	103b0100 	addu16i.d	$r0,$r8,3776(0xec0)
     724:	00000208 	0x00000208
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	0000068b 	0x0000068b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	00000687 	0x00000687
     730:	0100631a 	0x0100631a
     734:	00a7073d 	bstrins.d	$r29,$r25,0x27,0x1
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
     764:	2f170000 	0x2f170000
     768:	01000003 	0x01000003
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
     7a4:	00033419 	0x00033419
     7a8:	20200100 	ll.w	$r0,$r8,8192(0x2000)
     7ac:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	00000781 	0x00000781
     7b4:	00000777 	0x00000777
     7b8:	0002c519 	0x0002c519
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
     888:	00000189 	0x00000189
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
     8c4:	9a240000 	0x9a240000
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
     948:	0000014b 	0x0000014b
     94c:	0000014b 	0x0000014b
     950:	25050c06 	stptr.w	$r6,$r0,1292(0x50c)
     954:	00000174 	0x00000174
     958:	00000174 	0x00000174
     95c:	25070b06 	stptr.w	$r6,$r24,1800(0x708)
     960:	00000348 	0x00000348
     964:	00000348 	0x00000348
     968:	2509df07 	stptr.w	$r7,$r24,2524(0x9dc)
     96c:	0000017b 	0x0000017b
     970:	0000017b 	0x0000017b
     974:	0006de07 	alsl.wu	$r7,$r16,$r23,0x2
     978:	000006f1 	0x000006f1
     97c:	02640004 	sltui	$r4,$r0,-1792(0x900)
     980:	01040000 	0x01040000
     984:	0000019f 	0x0000019f
     988:	0004190c 	alsl.w	$r12,$r8,$r6,0x1
     98c:	00005600 	bitrev.d	$r0,$r16
     990:	00006800 	rdtime.d	$r0,$r0
     994:	00000000 	0x00000000
     998:	00099800 	bytepick.w	$r0,$r0,$r6,0x3
     99c:	06010200 	cacop	0x0,$r16,64(0x40)
     9a0:	00000272 	0x00000272
     9a4:	0000c503 	0x0000c503
     9a8:	181d0200 	pcaddi	$r0,59408(0xe810)
     9ac:	00000038 	0x00000038
     9b0:	70080102 	vslt.bu	$vr2,$vr8,$vr0
     9b4:	02000002 	slti	$r2,$r0,0
     9b8:	027e0502 	sltui	$r2,$r8,-127(0xf81)
     9bc:	25030000 	stptr.w	$r0,$r0,768(0x300)
     9c0:	02000005 	slti	$r5,$r0,0
     9c4:	0052192b 	0x0052192b
     9c8:	02020000 	slti	$r0,$r0,128(0x80)
     9cc:	00016107 	0x00016107
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
     a18:	00052703 	alsl.w	$r3,$r24,$r9,0x3
     a1c:	141a0300 	lu12i.w	$r0,53272(0xd018)
     a20:	00000046 	0x00000046
     a24:	00013303 	0x00013303
     a28:	14200300 	lu12i.w	$r0,65560(0x10018)
     a2c:	00000060 	0x00000060
     a30:	6a040402 	bltu	$r0,$r2,-130044(0x20404) # fffe0e34 <_RAM_DATA+0x7ffdfe34>
     a34:	06000002 	cacop	0x2,$r0,0
     a38:	00880407 	bstrins.d	$r7,$r0,0x8,0x1
     a3c:	31040000 	0x31040000
     a40:	0000da0e 	0x0000da0e
     a44:	049a0700 	csrxchg	$r0,$r24,0x2681
     a48:	08000000 	0x08000000
     a4c:	00544553 	0x00544553
     a50:	bc030001 	0xbc030001
     a54:	04000007 	csrrd	$r7,0x0
     a58:	00bf2831 	bstrins.d	$r17,$r1,0x3f,0xa
     a5c:	02030000 	slti	$r0,$r0,192(0xc0)
     a60:	04000008 	csrrd	$r8,0x0
     a64:	00bf3431 	bstrins.d	$r17,$r1,0x3f,0xd
     a68:	07060000 	0x07060000
     a6c:	00008804 	0x00008804
     a70:	0e330400 	0x0e330400
     a74:	0000010d 	0x0000010d
     a78:	00037207 	0x00037207
     a7c:	a0070000 	0xa0070000
     a80:	01000003 	0x01000003
     a84:	04730300 	csrxchg	$r0,$r24,0x1cc0
     a88:	33040000 	0x33040000
     a8c:	0000f22f 	0x0000f22f
     a90:	06010200 	cacop	0x0,$r16,64(0x40)
     a94:	00000279 	0x00000279
     a98:	0002a309 	0x0002a309
     a9c:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
     aa0:	000000ac 	0x000000ac
     aa4:	00011409 	0x00011409
     aa8:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
     aac:	000000ac 	0x000000ac
     ab0:	00025909 	0x00025909
     ab4:	0c6d0400 	0x0c6d0400
     ab8:	00000081 	0x00000081
     abc:	cd05080a 	0xcd05080a
     ac0:	0001b609 	0x0001b609
     ac4:	02ac0b00 	addi.w	$r0,$r24,-1278(0xb02)
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
     af8:	01930b03 	0x01930b03
     afc:	d3050000 	0xd3050000
     b00:	00009b14 	0x00009b14
     b04:	4c0c0400 	jirl	$r0,$r0,3076(0xc04)
     b08:	05005253 	0x05005253
     b0c:	009b14d4 	bstrins.d	$r20,$r6,0x1b,0x5
     b10:	0b050000 	0x0b050000
     b14:	000000be 	0x000000be
     b18:	9b14d505 	0x9b14d505
     b1c:	06000000 	cacop	0x0,$r0,0
     b20:	0002be0b 	0x0002be0b
     b24:	14d60500 	lu12i.w	$r0,438312(0x6b028)
     b28:	0000009b 	0x0000009b
     b2c:	ef030007 	0xef030007
     b30:	05000000 	0x05000000
     b34:	014403d8 	0x014403d8
     b38:	100a0000 	addu16i.d	$r0,$r0,640(0x280)
     b3c:	41091506 	beqz	$r8,1640724(0x190914) # 191450 <_start-0x1be6ebb0>
     b40:	0b000002 	0x0b000002
     b44:	00000541 	0x00000541
     b48:	ac0c1706 	0xac0c1706
     b4c:	00000000 	0x00000000
     b50:	0003e30b 	0x0003e30b
     b54:	0c1b0600 	0x0c1b0600
     b58:	000000ac 	0x000000ac
     b5c:	048e0b04 	csrxchg	$r4,$r24,0x2382
     b60:	1d060000 	pcaddu12i	$r0,-512000(0x83000)
     b64:	0000a00c 	0x0000a00c
     b68:	900b0800 	0x900b0800
     b6c:	06000003 	cacop	0x3,$r0,0
     b70:	008f0b1f 	bstrins.d	$r31,$r24,0xf,0x2
     b74:	0b0a0000 	0x0b0a0000
     b78:	00000570 	0x00000570
     b7c:	8f0b2206 	0x8f0b2206
     b80:	0b000000 	0x0b000000
     b84:	0003f80b 	0x0003f80b
     b88:	0b250600 	0x0b250600
     b8c:	0000008f 	0x0000008f
     b90:	05190b0c 	0x05190b0c
     b94:	27060000 	stptr.d	$r0,$r0,1536(0x600)
     b98:	00008f0b 	0x00008f0b
     b9c:	e30b0d00 	0xe30b0d00
     ba0:	06000004 	cacop	0x4,$r0,0
     ba4:	008f0b29 	bstrins.d	$r9,$r25,0xf,0x2
     ba8:	0b0e0000 	0x0b0e0000
     bac:	000004a0 	0x000004a0
     bb0:	8f0b2b06 	0x8f0b2b06
     bb4:	0f000000 	0x0f000000
     bb8:	05300300 	0x05300300
     bbc:	2d060000 	0x2d060000
     bc0:	0001c203 	0x0001c203
     bc4:	04fb0900 	csrxchg	$r0,$r8,0x3ec2
     bc8:	02010000 	slti	$r0,$r0,64(0x40)
     bcc:	0000ac11 	0x0000ac11
     bd0:	04830d00 	csrxchg	$r0,$r8,0x20c3
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
     bfc:	0000037a 	0x0000037a
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
     c5c:	0004bc0d 	alsl.w	$r13,$r0,$r15,0x2
     c60:	016a0100 	0x016a0100
     c64:	00000006 	0x00000006
     c68:	00006800 	rdtime.d	$r0,$r0
     c6c:	6f9c0100 	bgeu	$r8,$r0,-25600(0x39c00) # ffffa86c <_RAM_DATA+0x7fff986c>
     c70:	0e000003 	0x0e000003
     c74:	6a010066 	bltu	$r3,$r6,-130816(0x20100) # fffe0d74 <_RAM_DATA+0x7ffdfd74>
     c78:	00811a01 	bstrins.d	$r1,$r16,0x1,0x6
     c7c:	09870000 	0x09870000
     c80:	09810000 	0x09810000
     c84:	7a0f0000 	0x7a0f0000
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
     ce8:	000004b3 	0x000004b3
     cec:	06015e01 	cacop	0x1,$r16,87(0x57)
     cf0:	00000000 	0x00000000
     cf4:	00000064 	0x00000064
     cf8:	04249c01 	csrrd	$r1,0x927
     cfc:	7a0f0000 	0x7a0f0000
     d00:	01000003 	0x01000003
     d04:	411a0160 	beqz	$r11,72192(0x11a00) # 12704 <_start-0x1bfed8fc>
     d08:	02000002 	slti	$r2,$r0,0
     d0c:	10136091 	addu16i.d	$r17,$r4,1240(0x4d8)
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
     d9c:	00050615 	alsl.w	$r21,$r16,$r1,0x3
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
     dcc:	04cc0d00 	csrxchg	$r0,$r8,0x3303
     dd0:	3a010000 	0x3a010000
     dd4:	00000601 	0x00000601
     dd8:	00480000 	0x00480000
     ddc:	9c010000 	0x9c010000
     de0:	000004a0 	0x000004a0
     de4:	00038a17 	0x00038a17
     de8:	013a0100 	0x013a0100
     dec:	0004a02b 	alsl.w	$r11,$r1,$r8,0x2
     df0:	17540100 	lu32i.d	$r0,-352248(0xaa008)
     df4:	000003a7 	0x000003a7
     df8:	3b013a01 	0x3b013a01
     dfc:	000000a0 	0x000000a0
     e00:	de185501 	0xde185501
     e04:	01000003 	0x01000003
     e08:	8f0a013c 	0x8f0a013c
     e0c:	d0000000 	0xd0000000
     e10:	c8000009 	0xc8000009
     e14:	00000009 	0x00000009
     e18:	01b60419 	0x01b60419
     e1c:	cd1a0000 	0xcd1a0000
     e20:	01000003 	0x01000003
     e24:	00e60af6 	bstrpick.d	$r22,$r23,0x26,0x2
     e28:	00000000 	0x00000000
     e2c:	00200000 	div.w	$r0,$r0,$r0
     e30:	9c010000 	0x9c010000
     e34:	000004f6 	0x000004f6
     e38:	00038a1b 	0x00038a1b
     e3c:	29f60100 	st.d	$r0,$r8,-640(0xd80)
     e40:	000004a0 	0x000004a0
     e44:	00000a10 	0x00000a10
     e48:	00000a08 	0x00000a08
     e4c:	00040c1b 	alsl.w	$r27,$r0,$r3,0x1
     e50:	38f60100 	0x38f60100
     e54:	0000008f 	0x0000008f
     e58:	00000a4e 	0x00000a4e
     e5c:	00000a4a 	0x00000a4a
     e60:	0003c31c 	0x0003c31c
     e64:	0df80100 	0x0df80100
     e68:	000000da 	0x000000da
     e6c:	5d1a0000 	bne	$r0,$r0,72192(0x11a00) # 1286c <_start-0x1bfed794>
     e70:	01000005 	0x01000005
     e74:	00da0cd3 	bstrpick.d	$r19,$r6,0x1a,0x3
     e78:	00000000 	0x00000000
     e7c:	00200000 	div.w	$r0,$r0,$r0
     e80:	9c010000 	0x9c010000
     e84:	00000546 	0x00000546
     e88:	00038a1b 	0x00038a1b
     e8c:	2dd30100 	0x2dd30100
     e90:	000004a0 	0x000004a0
     e94:	00000a77 	0x00000a77
     e98:	00000a6f 	0x00000a6f
     e9c:	0003ee1b 	0x0003ee1b
     ea0:	3cd30100 	0x3cd30100
     ea4:	0000008f 	0x0000008f
     ea8:	00000ab5 	0x00000ab5
     eac:	00000ab1 	0x00000ab1
     eb0:	0003c31c 	0x0003c31c
     eb4:	0dd50100 	0x0dd50100
     eb8:	000000da 	0x000000da
     ebc:	481a0000 	bceqz	$fcc0,6656(0x1a00) # 28bc <_start-0x1bffd744>
     ec0:	01000003 	0x01000003
     ec4:	008f09b8 	bstrins.d	$r24,$r13,0xf,0x2
     ec8:	00000000 	0x00000000
     ecc:	00180000 	sra.w	$r0,$r0,$r0
     ed0:	9c010000 	0x9c010000
     ed4:	00000589 	0x00000589
     ed8:	00038a1b 	0x00038a1b
     edc:	28b80100 	ld.w	$r0,$r8,-512(0xe00)
     ee0:	000004a0 	0x000004a0
     ee4:	00000ada 	0x00000ada
     ee8:	00000ad6 	0x00000ad6
     eec:	0003de1d 	0x0003de1d
     ef0:	0aba0100 	0x0aba0100
     ef4:	0000008f 	0x0000008f
     ef8:	00000afd 	0x00000afd
     efc:	00000afb 	0x00000afb
     f00:	017b1e00 	0x017b1e00
     f04:	a8010000 	0xa8010000
     f08:	00149806 	and	$r6,$r0,$r6
     f0c:	0000141c 	clz.w	$r28,$r0
     f10:	c89c0100 	0xc89c0100
     f14:	1b000005 	pcalau12i	$r5,-524288(0x80000)
     f18:	0000038a 	0x0000038a
     f1c:	a022a801 	0xa022a801
     f20:	12000004 	addu16i.d	$r4,$r0,-32768(0x8000)
     f24:	1000000b 	addu16i.d	$r11,$r0,0
     f28:	1b00000b 	pcalau12i	$r11,-524288(0x80000)
     f2c:	00000cc6 	0x00000cc6
     f30:	8f31a801 	0x8f31a801
     f34:	27000000 	stptr.d	$r0,$r0,0
     f38:	2500000b 	stptr.w	$r11,$r0,0
     f3c:	0000000b 	0x0000000b
     f40:	00054f1e 	alsl.w	$r30,$r24,$r19,0x3
     f44:	06720100 	0x06720100
     f48:	00000000 	0x00000000
     f4c:	0000002c 	0x0000002c
     f50:	060f9c01 	cacop	0x1,$r0,999(0x3e7)
     f54:	8a1f0000 	0x8a1f0000
     f58:	01000003 	0x01000003
     f5c:	04a02272 	csrxchg	$r18,$r19,0x2808
     f60:	54010000 	bl	256(0x100) # 1060 <_start-0x1bffefa0>
     f64:	0003a71b 	0x0003a71b
     f68:	31720100 	0x31720100
     f6c:	0000008f 	0x0000008f
     f70:	00000b42 	0x00000b42
     f74:	00000b3a 	0x00000b3a
     f78:	0003591f 	0x0003591f
     f7c:	4a720100 	bcnez	$fcc0,160256(0x27200) # 2817c <_start-0x1bfd7e84>
     f80:	0000010d 	0x0000010d
     f84:	1e005601 	pcaddu18i	$r1,688(0x2b0)
     f88:	00000362 	0x00000362
     f8c:	00065501 	alsl.wu	$r1,$r8,$r21,0x1
     f90:	3c000000 	0x3c000000
     f94:	01000000 	0x01000000
     f98:	0006349c 	alsl.wu	$r28,$r4,$r13,0x1
     f9c:	037a1f00 	andi	$r0,$r24,0xe87
     fa0:	55010000 	bl	65792(0x10100) # 110a0 <_start-0x1bfeef60>
     fa4:	00063428 	alsl.wu	$r8,$r1,$r13,0x1
     fa8:	00540100 	0x00540100
     fac:	02410419 	sltui	$r25,$r0,65(0x41)
     fb0:	b91e0000 	0xb91e0000
     fb4:	01000003 	0x01000003
     fb8:	00000632 	0x00000632
     fbc:	004c0000 	0x004c0000
     fc0:	9c010000 	0x9c010000
     fc4:	00000680 	0x00000680
     fc8:	00038a1f 	0x00038a1f
     fcc:	1e320100 	pcaddu18i	$r0,102408(0x19008)
     fd0:	000004a0 	0x000004a0
     fd4:	de1d5401 	0xde1d5401
     fd8:	01000003 	0x01000003
     fdc:	008f0d35 	bstrins.d	$r21,$r9,0xf,0x3
     fe0:	0b7e0000 	0x0b7e0000
     fe4:	0b7c0000 	0x0b7c0000
     fe8:	64200000 	bge	$r0,$r0,8192(0x2000) # 2fe8 <_start-0x1bffd018>
     fec:	01007669 	0x01007669
     ff0:	00ac0e36 	bstrins.d	$r22,$r17,0x2c,0x3
     ff4:	00000000 	0x00000000
     ff8:	0003af1e 	0x0003af1e
     ffc:	06040100 	cacop	0x0,$r8,256(0x100)
    1000:	00000000 	0x00000000
    1004:	000000e8 	0x000000e8
    1008:	06db9c01 	0x06db9c01
    100c:	8a1f0000 	0x8a1f0000
    1010:	01000003 	0x01000003
    1014:	04a01e04 	csrxchg	$r4,$r16,0x2807
    1018:	54010000 	bl	256(0x100) # 1118 <_start-0x1bffeee8>
    101c:	00037a1f 	0x00037a1f
    1020:	37040100 	0x37040100
    1024:	00000634 	0x00000634
    1028:	de1d5501 	0xde1d5501
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
    1054:	00000510 	0x00000510
    1058:	00000510 	0x00000510
    105c:	09016701 	0x09016701
    1060:	00014223 	0x00014223
    1064:	00014200 	asrtle.d	$r16,$r16
    1068:	0d0f0700 	0x0d0f0700
    106c:	00023a00 	0x00023a00
    1070:	bb000400 	0xbb000400
    1074:	04000004 	csrrd	$r4,0x0
    1078:	00019f01 	0x00019f01
    107c:	05b20c00 	0x05b20c00
    1080:	00560000 	0x00560000
    1084:	00d80000 	bstrpick.d	$r0,$r0,0x18,0x0
    1088:	00000000 	0x00000000
    108c:	0efb0000 	0x0efb0000
    1090:	01020000 	0x01020000
    1094:	00027206 	0x00027206
    1098:	08010200 	0x08010200
    109c:	00000270 	0x00000270
    10a0:	7e050202 	0x7e050202
    10a4:	02000002 	slti	$r2,$r0,0
    10a8:	01610702 	0x01610702
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
    10f0:	00063803 	alsl.wu	$r3,$r0,$r14,0x1
    10f4:	17170400 	lu32i.d	$r0,-477152(0x8b820)
    10f8:	0000002c 	0x0000002c
    10fc:	0005a103 	alsl.w	$r3,$r8,$r8,0x4
    1100:	161b0400 	lu32i.d	$r0,55328(0xd820)
    1104:	00000070 	0x00000070
    1108:	6a040402 	bltu	$r0,$r2,-130044(0x20404) # fffe150c <_RAM_DATA+0x7ffe050c>
    110c:	02000002 	slti	$r2,$r0,0
    1110:	02790601 	sltui	$r1,$r16,-447(0xe41)
    1114:	a3050000 	0xa3050000
    1118:	04000002 	csrrd	$r2,0x0
    111c:	00771169 	bstrins.w	$r9,$r11,0x17,0x4
    1120:	14050000 	lu12i.w	$r0,10240(0x2800)
    1124:	04000001 	csrrd	$r1,0x0
    1128:	0077116b 	bstrins.w	$r11,$r11,0x17,0x4
    112c:	59050000 	beq	$r0,$r0,66816(0x10500) # 1162c <_start-0x1bfee9d4>
    1130:	04000002 	csrrd	$r2,0x0
    1134:	00690c6d 	bstrins.w	$r13,$r3,0x9,0x3
    1138:	7e060000 	0x7e060000
    113c:	01000005 	0x01000005
    1140:	0000065c 	0x0000065c
    1144:	00500000 	0x00500000
    1148:	9c010000 	0x9c010000
    114c:	00000124 	0x00000124
    1150:	00058e07 	alsl.w	$r7,$r16,$r3,0x4
    1154:	1d5c0100 	pcaddu12i	$r0,-335864(0xae008)
    1158:	0000008f 	0x0000008f
    115c:	00085401 	bytepick.w	$r1,$r0,$r21,0x0
    1160:	2c000000 	vld	$vr0,$r0,0
    1164:	09000000 	0x09000000
    1168:	0000065d 	0x0000065d
    116c:	8f106001 	0x8f106001
    1170:	fc000000 	0xfc000000
    1174:	fa00000b 	0xfa00000b
    1178:	0900000b 	0x0900000b
    117c:	00000681 	0x00000681
    1180:	8f106101 	0x8f106101
    1184:	15000000 	lu12i.w	$r0,-524288(0x80000)
    1188:	0f00000c 	0x0f00000c
    118c:	0000000c 	0x0000000c
    1190:	06220600 	cacop	0x0,$r16,-1919(0x881)
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
    11c4:	00065d09 	alsl.wu	$r9,$r8,$r23,0x1
    11c8:	10510100 	addu16i.d	$r0,$r8,5184(0x1440)
    11cc:	0000008f 	0x0000008f
    11d0:	00000c76 	0x00000c76
    11d4:	00000c72 	0x00000c72
    11d8:	00068109 	alsl.wu	$r9,$r8,$r0,0x2
    11dc:	10520100 	addu16i.d	$r0,$r8,5248(0x1480)
    11e0:	0000008f 	0x0000008f
    11e4:	00000c9d 	0x00000c9d
    11e8:	00000c99 	0x00000c99
    11ec:	72060000 	0x72060000
    11f0:	01000006 	0x01000006
    11f4:	00000641 	0x00000641
    11f8:	00100000 	add.w	$r0,$r0,$r0
    11fc:	9c010000 	0x9c010000
    1200:	000001a6 	0x000001a6
    1204:	00060e07 	alsl.wu	$r7,$r16,$r3,0x1
    1208:	1c410100 	pcaddu12i	$r0,133128(0x20808)
    120c:	0000008f 	0x0000008f
    1210:	0b005401 	0x0b005401
    1214:	00000662 	0x00000662
    1218:	c0063701 	0xc0063701
    121c:	0c1c0014 	0x0c1c0014
    1220:	01000000 	0x01000000
    1224:	064e0b9c 	0x064e0b9c
    1228:	30010000 	0x30010000
    122c:	0014b806 	and	$r6,$r0,$r14
    1230:	0000081c 	0x0000081c
    1234:	0b9c0100 	0x0b9c0100
    1238:	00000614 	0x00000614
    123c:	00062701 	alsl.wu	$r1,$r24,$r9,0x1
    1240:	0c000000 	0x0c000000
    1244:	01000000 	0x01000000
    1248:	062b0b9c 	cacop	0x1c,$r28,-1342(0xac2)
    124c:	1e010000 	pcaddu18i	$r0,2048(0x800)
    1250:	00000006 	0x00000006
    1254:	00000c00 	0x00000c00
    1258:	0b9c0100 	0x0b9c0100
    125c:	000005a8 	0x000005a8
    1260:	ac061501 	0xac061501
    1264:	0c1c0014 	0x0c1c0014
    1268:	01000000 	0x01000000
    126c:	05960b9c 	0x05960b9c
    1270:	0c010000 	0x0c010000
    1274:	00000006 	0x00000006
    1278:	00000c00 	0x00000c00
    127c:	0c9c0100 	xvfcmp.cune.s	$xr0,$xr8,$xr0
    1280:	0000063e 	0x0000063e
    1284:	83070401 	0x83070401
    1288:	00000000 	0x00000000
    128c:	0c000000 	0x0c000000
    1290:	01000000 	0x01000000
    1294:	61760d9c 	blt	$r12,$r28,95756(0x1760c) # 188a0 <_start-0x1bfe7760>
    1298:	0601006c 	cacop	0xc,$r3,64(0x40)
    129c:	00007012 	0x00007012
    12a0:	000cc000 	bytepick.d	$r0,$r0,$r16,0x1
    12a4:	000cbc00 	bytepick.d	$r0,$r0,$r15,0x1
    12a8:	ba000000 	0xba000000
    12ac:	04000003 	csrrd	$r3,0x0
    12b0:	0005af00 	alsl.w	$r0,$r24,$r11,0x4
    12b4:	9f010400 	0x9f010400
    12b8:	0c000001 	0x0c000001
    12bc:	00000741 	0x00000741
    12c0:	00000056 	0x00000056
    12c4:	00000130 	0x00000130
    12c8:	00000000 	0x00000000
    12cc:	00001253 	clo.w	$r19,$r18
    12d0:	72060102 	0x72060102
    12d4:	02000002 	slti	$r2,$r0,0
    12d8:	02700801 	sltui	$r1,$r0,-1022(0xc02)
    12dc:	02020000 	slti	$r0,$r0,128(0x80)
    12e0:	00027e05 	0x00027e05
    12e4:	07020200 	0x07020200
    12e8:	00000161 	0x00000161
    12ec:	01050402 	fmul.d	$f2,$f0,$f1
    12f0:	03000001 	lu52i.d	$r1,$r0,0
    12f4:	00000131 	0x00000131
    12f8:	54194102 	bl	67639616(0x4081940) # 4082c38 <_start-0x17f7d3c8>
    12fc:	02000000 	slti	$r0,$r0,0
    1300:	00d40704 	bstrpick.d	$r4,$r24,0x14,0x1
    1304:	08020000 	0x08020000
    1308:	0000fc05 	0x0000fc05
    130c:	07080200 	0x07080200
    1310:	000000cf 	0x000000cf
    1314:	69050404 	bltu	$r0,$r4,66820(0x10504) # 11818 <_start-0x1bfee7e8>
    1318:	0200746e 	slti	$r14,$r3,29(0x1d)
    131c:	00d90704 	bstrpick.d	$r4,$r24,0x19,0x1
    1320:	33030000 	0x33030000
    1324:	03000001 	lu52i.d	$r1,$r0,0
    1328:	00481420 	0x00481420
    132c:	a1030000 	0xa1030000
    1330:	04000005 	csrrd	$r5,0x0
    1334:	0070161b 	bstrins.w	$r27,$r16,0x10,0x5
    1338:	04020000 	csrrd	$r0,0x80
    133c:	00026a04 	0x00026a04
    1340:	04070500 	csrxchg	$r0,$r8,0x1c1
    1344:	00000070 	0x00000070
    1348:	b10e3104 	0xb10e3104
    134c:	06000000 	cacop	0x0,$r0,0
    1350:	0000049a 	0x0000049a
    1354:	45530700 	bnez	$r24,86788(0x15304) # 16658 <_start-0x1bfe99a8>
    1358:	00010054 	0x00010054
    135c:	0007bc03 	alsl.wu	$r3,$r0,$r15,0x4
    1360:	28310400 	ld.b	$r0,$r0,-959(0xc41)
    1364:	00000096 	0x00000096
    1368:	00080203 	bytepick.w	$r3,$r16,$r0,0x0
    136c:	34310400 	0x34310400
    1370:	00000096 	0x00000096
    1374:	70040705 	vsle.bu	$vr5,$vr24,$vr1
    1378:	04000000 	csrrd	$r0,0x0
    137c:	00e40e33 	bstrpick.d	$r19,$r17,0x24,0x3
    1380:	72060000 	0x72060000
    1384:	00000003 	0x00000003
    1388:	0003a006 	0x0003a006
    138c:	03000100 	lu52i.d	$r0,$r8,0
    1390:	00000473 	0x00000473
    1394:	c92f3304 	0xc92f3304
    1398:	02000000 	slti	$r0,$r0,0
    139c:	02790601 	sltui	$r1,$r16,-447(0xe41)
    13a0:	a3080000 	0xa3080000
    13a4:	04000002 	csrrd	$r2,0x0
    13a8:	00771169 	bstrins.w	$r9,$r11,0x17,0x4
    13ac:	14080000 	lu12i.w	$r0,16384(0x4000)
    13b0:	04000001 	csrrd	$r1,0x0
    13b4:	0077116b 	bstrins.w	$r11,$r11,0x17,0x4
    13b8:	59080000 	beq	$r0,$r0,67584(0x10800) # 11bb8 <_start-0x1bfee448>
    13bc:	04000002 	csrrd	$r2,0x0
    13c0:	00690c6d 	bstrins.w	$r13,$r3,0x9,0x3
    13c4:	10090000 	addu16i.d	$r0,$r0,576(0x240)
    13c8:	09011205 	0x09011205
    13cc:	0000015e 	0x0000015e
    13d0:	0006b80a 	alsl.wu	$r10,$r0,$r14,0x2
    13d4:	01140500 	fabs.s	$f0,$f8
    13d8:	0000770c 	0x0000770c
    13dc:	e30a0000 	0xe30a0000
    13e0:	05000007 	0x05000007
    13e4:	770c0115 	0x770c0115
    13e8:	04000000 	csrrd	$r0,0x0
    13ec:	0006930a 	alsl.wu	$r10,$r24,$r4,0x2
    13f0:	01160500 	0x01160500
    13f4:	0000770c 	0x0000770c
    13f8:	fe0a0800 	0xfe0a0800
    13fc:	05000006 	0x05000006
    1400:	770c0117 	0x770c0117
    1404:	0c000000 	0x0c000000
    1408:	06c10b00 	0x06c10b00
    140c:	18050000 	pcaddi	$r0,10240(0x2800)
    1410:	011b0301 	0x011b0301
    1414:	07050000 	0x07050000
    1418:	00007004 	0x00007004
    141c:	01070600 	fdiv.d	$f0,$f16,$f1
    1420:	00000186 	0x00000186
    1424:	00082206 	bytepick.w	$r6,$r16,$r8,0x0
    1428:	ce060000 	0xce060000
    142c:	01000006 	0x01000006
    1430:	07300300 	0x07300300
    1434:	0a060000 	0x0a060000
    1438:	00016b02 	0x00016b02
    143c:	04070500 	csrxchg	$r0,$r8,0x1c1
    1440:	00000070 	0x00000070
    1444:	ad011306 	0xad011306
    1448:	06000001 	cacop	0x1,$r0,0
    144c:	00000832 	0x00000832
    1450:	07080601 	0x07080601
    1454:	00000000 	0x00000000
    1458:	00084b03 	bytepick.w	$r3,$r24,$r18,0x0
    145c:	02160600 	slti	$r0,$r16,1409(0x581)
    1460:	00000192 	0x00000192
    1464:	1e06100c 	pcaddu18i	$r12,12416(0x3080)
    1468:	0001f709 	0x0001f709
    146c:	07aa0d00 	0x07aa0d00
    1470:	20060000 	ll.w	$r0,$r0,1536(0x600)
    1474:	0000830a 	0x0000830a
    1478:	890d0000 	0x890d0000
    147c:	06000006 	cacop	0x6,$r0,0
    1480:	01861423 	0x01861423
    1484:	0d040000 	0x0d040000
    1488:	000006ab 	0x000006ab
    148c:	ad172606 	0xad172606
    1490:	08000001 	0x08000001
    1494:	0007ed0d 	alsl.wu	$r13,$r8,$r27,0x4
    1498:	13290600 	addu16i.d	$r0,$r16,-13759(0xca41)
    149c:	000000e4 	0x000000e4
    14a0:	dd03000c 	0xdd03000c
    14a4:	06000006 	cacop	0x6,$r0,0
    14a8:	01b9022b 	0x01b9022b
    14ac:	0b0e0000 	0x0b0e0000
    14b0:	01000008 	0x01000008
    14b4:	14cc0671 	lu12i.w	$r17,417843(0x66033)
    14b8:	00101c00 	add.w	$r0,$r0,$r7
    14bc:	9c010000 	0x9c010000
    14c0:	0000023c 	0x0000023c
    14c4:	00079b0f 	alsl.wu	$r15,$r24,$r6,0x4
    14c8:	2b710100 	fst.s	$f0,$r8,-960(0xc40)
    14cc:	0000023c 	0x0000023c
    14d0:	aa105401 	0xaa105401
    14d4:	01000007 	0x01000007
    14d8:	00833871 	bstrins.d	$r17,$r3,0x3,0xe
    14dc:	0ce30000 	0x0ce30000
    14e0:	0cdf0000 	0x0cdf0000
    14e4:	11000000 	addu16i.d	$r0,$r0,16384(0x4000)
    14e8:	00015e04 	0x00015e04
    14ec:	07fa1200 	0x07fa1200
    14f0:	5d010000 	bne	$r0,$r0,65792(0x10100) # 115f0 <_start-0x1bfeea10>
    14f4:	0000bd0a 	0x0000bd0a
    14f8:	00000000 	0x00000000
    14fc:	00003000 	revb.2h	$r0,$r0
    1500:	a79c0100 	0xa79c0100
    1504:	10000002 	addu16i.d	$r2,$r0,0
    1508:	0000079b 	0x0000079b
    150c:	3c295d01 	0x3c295d01
    1510:	10000002 	addu16i.d	$r2,$r0,0
    1514:	0400000d 	csrrd	$r13,0x0
    1518:	0f00000d 	0x0f00000d
    151c:	000007aa 	0x000007aa
    1520:	83365d01 	0x83365d01
    1524:	01000000 	0x01000000
    1528:	03c31355 	xori	$r21,$r26,0xc4
    152c:	5f010000 	bne	$r0,$r0,-65280(0x30100) # ffff162c <_RAM_DATA+0x7fff062c>
    1530:	0000bd0c 	0x0000bd0c
    1534:	000d6700 	bytepick.d	$r0,$r24,$r25,0x2
    1538:	000d6300 	bytepick.d	$r0,$r24,$r24,0x2
    153c:	069e1300 	0x069e1300
    1540:	60010000 	blt	$r0,$r0,256(0x100) # 1640 <_start-0x1bffe9c0>
    1544:	0000830a 	0x0000830a
    1548:	000d8b00 	bytepick.d	$r0,$r24,$r2,0x3
    154c:	000d8700 	bytepick.d	$r0,$r24,$r1,0x3
    1550:	210e0000 	sc.w	$r0,$r0,3584(0xe00)
    1554:	01000007 	0x01000007
    1558:	00000655 	0x00000655
    155c:	00100000 	add.w	$r0,$r0,$r0
    1560:	9c010000 	0x9c010000
    1564:	000002e0 	0x000002e0
    1568:	00079b0f 	alsl.wu	$r15,$r24,$r6,0x4
    156c:	23550100 	sc.d	$r0,$r8,21760(0x5500)
    1570:	0000023c 	0x0000023c
    1574:	aa105401 	0xaa105401
    1578:	01000007 	0x01000007
    157c:	00833055 	bstrins.d	$r21,$r2,0x3,0xc
    1580:	0dae0000 	0x0dae0000
    1584:	0daa0000 	0x0daa0000
    1588:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
    158c:	000007b4 	0x000007b4
    1590:	b10c4401 	0xb10c4401
    1594:	00000000 	0x00000000
    1598:	14000000 	lu12i.w	$r0,0
    159c:	01000000 	0x01000000
    15a0:	0003319c 	0x0003319c
    15a4:	079b1000 	0x079b1000
    15a8:	44010000 	bnez	$r0,256(0x100) # 16a8 <_start-0x1bffe958>
    15ac:	00023c2d 	0x00023c2d
    15b0:	000dd300 	bytepick.d	$r0,$r24,$r20,0x3
    15b4:	000dcf00 	bytepick.d	$r0,$r24,$r19,0x3
    15b8:	07aa0f00 	0x07aa0f00
    15bc:	44010000 	bnez	$r0,256(0x100) # 16bc <_start-0x1bffe944>
    15c0:	0000833a 	0x0000833a
    15c4:	13550100 	addu16i.d	$r0,$r8,-10944(0xd540)
    15c8:	000003c3 	0x000003c3
    15cc:	b10e4601 	0xb10e4601
    15d0:	f8000000 	0xf8000000
    15d4:	f400000d 	0xf400000d
    15d8:	0000000d 	0x0000000d
    15dc:	0007d30e 	alsl.wu	$r14,$r24,$r20,0x4
    15e0:	063c0100 	cacop	0x0,$r8,-256(0xf00)
    15e4:	00000000 	0x00000000
    15e8:	00000018 	0x00000018
    15ec:	03569c01 	andi	$r1,$r0,0x5a7
    15f0:	ee0f0000 	0xee0f0000
    15f4:	01000006 	0x01000006
    15f8:	0356283c 	andi	$r28,$r1,0x58a
    15fc:	54010000 	bl	256(0x100) # 16fc <_start-0x1bffe904>
    1600:	f7041100 	0xf7041100
    1604:	0e000001 	0x0e000001
    1608:	000007a0 	0x000007a0
    160c:	00060d01 	alsl.wu	$r1,$r8,$r3,0x1
    1610:	d0000000 	0xd0000000
    1614:	01000000 	0x01000000
    1618:	00039c9c 	0x00039c9c
    161c:	079b0f00 	0x079b0f00
    1620:	0d010000 	fsel	$f0,$f0,$f0,$fcc2
    1624:	00023c1e 	0x00023c1e
    1628:	0f540100 	0x0f540100
    162c:	000006ee 	0x000006ee
    1630:	56360d01 	bl	67515916(0x406360c) # 4064c3c <_start-0x17f9b3c4>
    1634:	01000003 	0x01000003
    1638:	6d741455 	bgeu	$r2,$r21,95252(0x17414) # 18a4c <_start-0x1bfe75b4>
    163c:	0f010070 	0x0f010070
    1640:	0000830a 	0x0000830a
    1644:	15000000 	lu12i.w	$r0,-524288(0x80000)
    1648:	000007c7 	0x000007c7
    164c:	00060501 	alsl.wu	$r1,$r8,$r1,0x1
    1650:	14000000 	lu12i.w	$r0,0
    1654:	01000000 	0x01000000
    1658:	079b0f9c 	0x079b0f9c
    165c:	05010000 	0x05010000
    1660:	00023c20 	0x00023c20
    1664:	00540100 	0x00540100
    1668:	0002a400 	0x0002a400
    166c:	16000400 	lu32i.d	$r0,32(0x20)
    1670:	04000007 	csrrd	$r7,0x0
    1674:	00019f01 	0x00019f01
    1678:	08b10c00 	0x08b10c00
    167c:	00560000 	0x00560000
    1680:	01700000 	0x01700000
    1684:	00000000 	0x00000000
    1688:	15eb0000 	lu12i.w	$r0,-43008(0xf5800)
    168c:	01020000 	0x01020000
    1690:	00027206 	0x00027206
    1694:	08010200 	0x08010200
    1698:	00000270 	0x00000270
    169c:	7e050202 	0x7e050202
    16a0:	02000002 	slti	$r2,$r0,0
    16a4:	01610702 	0x01610702
    16a8:	04020000 	csrrd	$r0,0x80
    16ac:	00010105 	0x00010105
    16b0:	01310300 	0x01310300
    16b4:	41020000 	beqz	$r0,66048(0x10200) # 118b4 <_start-0x1bfee74c>
    16b8:	00005419 	bitrev.d	$r25,$r0
    16bc:	07040200 	0x07040200
    16c0:	000000d4 	0x000000d4
    16c4:	fc050802 	0xfc050802
    16c8:	02000000 	slti	$r0,$r0,0
    16cc:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    16d0:	04040000 	csrrd	$r0,0x100
    16d4:	746e6905 	0x746e6905
    16d8:	07040200 	0x07040200
    16dc:	000000d9 	0x000000d9
    16e0:	00013303 	0x00013303
    16e4:	14200300 	lu12i.w	$r0,65560(0x10018)
    16e8:	00000048 	0x00000048
    16ec:	00007705 	0x00007705
    16f0:	04040200 	csrxchg	$r0,$r16,0x100
    16f4:	0000026a 	0x0000026a
    16f8:	79060102 	0x79060102
    16fc:	06000002 	cacop	0x2,$r0,0
    1700:	000002a3 	0x000002a3
    1704:	77116904 	xvbitclri.d	$xr4,$xr8,0x1a
    1708:	06000000 	cacop	0x0,$r0,0
    170c:	00000114 	0x00000114
    1710:	77116b04 	xvbitclri.d	$xr4,$xr24,0x1a
    1714:	06000000 	cacop	0x0,$r0,0
    1718:	00000259 	0x00000259
    171c:	690c6d04 	bltu	$r8,$r4,68716(0x10c6c) # 12388 <_start-0x1bfedc78>
    1720:	07000000 	0x07000000
    1724:	092d0574 	vfmadd.d	$vr20,$vr11,$vr1,$vr26
    1728:	0000023d 	0x0000023d
    172c:	00091008 	bytepick.w	$r8,$r0,$r4,0x2
    1730:	152f0500 	lu12i.w	$r0,-427992(0x97828)
    1734:	00000083 	0x00000083
    1738:	08840800 	0x08840800
    173c:	30050000 	0x30050000
    1740:	00008315 	0x00008315
    1744:	0a080400 	0x0a080400
    1748:	05000009 	0x05000009
    174c:	00831531 	bstrins.d	$r17,$r9,0x3,0x5
    1750:	08080000 	0x08080000
    1754:	0000088b 	0x0000088b
    1758:	83153205 	0x83153205
    175c:	0c000000 	0x0c000000
    1760:	00085f08 	bytepick.w	$r8,$r24,$r23,0x0
    1764:	15330500 	lu12i.w	$r0,-419800(0x99828)
    1768:	00000083 	0x00000083
    176c:	08660810 	fmsub.d	$f16,$f0,$f2,$f12
    1770:	34050000 	0x34050000
    1774:	00008315 	0x00008315
    1778:	6d081400 	bgeu	$r0,$r0,67604(0x10814) # 11f8c <_start-0x1bfee074>
    177c:	05000008 	0x05000008
    1780:	00831535 	bstrins.d	$r21,$r9,0x3,0x5
    1784:	08180000 	fmadd.s	$f0,$f0,$f0,$f16
    1788:	00000874 	0x00000874
    178c:	83153605 	0x83153605
    1790:	1c000000 	pcaddu12i	$r0,0
    1794:	0009b108 	bytepick.w	$r8,$r8,$r12,0x3
    1798:	15370500 	lu12i.w	$r0,-411608(0x9b828)
    179c:	00000083 	0x00000083
    17a0:	07e30820 	0x07e30820
    17a4:	38050000 	0x38050000
    17a8:	00008315 	0x00008315
    17ac:	93082400 	0x93082400
    17b0:	05000006 	0x05000006
    17b4:	00831539 	bstrins.d	$r25,$r9,0x3,0x5
    17b8:	08280000 	fmadd.d	$f0,$f0,$f0,$f16
    17bc:	000006fe 	0x000006fe
    17c0:	83153a05 	0x83153a05
    17c4:	2c000000 	vld	$vr0,$r0,0
    17c8:	0009a908 	bytepick.w	$r8,$r8,$r10,0x3
    17cc:	153b0500 	lu12i.w	$r0,-403416(0x9d828)
    17d0:	00000083 	0x00000083
    17d4:	087b0830 	0x087b0830
    17d8:	3c050000 	0x3c050000
    17dc:	00008315 	0x00008315
    17e0:	22083400 	ll.d	$r0,$r0,2100(0x834)
    17e4:	05000009 	0x05000009
    17e8:	0083153d 	bstrins.d	$r29,$r9,0x3,0x5
    17ec:	08380000 	0x08380000
    17f0:	00000946 	0x00000946
    17f4:	83153e05 	0x83153e05
    17f8:	3c000000 	0x3c000000
    17fc:	00091908 	bytepick.w	$r8,$r8,$r6,0x2
    1800:	153f0500 	lu12i.w	$r0,-395224(0x9f828)
    1804:	00000083 	0x00000083
    1808:	095d0840 	vfmsub.s	$vr0,$vr2,$vr2,$vr26
    180c:	40050000 	beqz	$r0,1280(0x500) # 1d0c <_start-0x1bffe2f4>
    1810:	00008315 	0x00008315
    1814:	93084400 	0x93084400
    1818:	05000008 	0x05000008
    181c:	00831541 	bstrins.d	$r1,$r10,0x3,0x5
    1820:	08480000 	0x08480000
    1824:	00000965 	0x00000965
    1828:	83154205 	0x83154205
    182c:	4c000000 	jirl	$r0,$r0,0
    1830:	00094b08 	bytepick.w	$r8,$r24,$r18,0x2
    1834:	15430500 	lu12i.w	$r0,-387032(0xa1828)
    1838:	00000083 	0x00000083
    183c:	09340850 	0x09340850
    1840:	44050000 	bnez	$r0,1280(0x500) # 1d40 <_start-0x1bffe2c0>
    1844:	00008315 	0x00008315
    1848:	2c085400 	vld	$vr0,$r0,533(0x215)
    184c:	05000009 	0x05000009
    1850:	00831545 	bstrins.d	$r5,$r10,0x3,0x5
    1854:	08580000 	fmsub.s	$f0,$f0,$f0,$f16
    1858:	0000096f 	0x0000096f
    185c:	83154605 	0x83154605
    1860:	5c000000 	bne	$r0,$r0,0 # 1860 <_start-0x1bffe7a0>
    1864:	0008a308 	bytepick.w	$r8,$r24,$r8,0x1
    1868:	15470500 	lu12i.w	$r0,-378840(0xa3828)
    186c:	00000083 	0x00000083
    1870:	08aa0860 	fnmadd.d	$f0,$f3,$f2,$f20
    1874:	48050000 	bceqz	$fcc0,1280(0x500) # 1d74 <_start-0x1bffe28c>
    1878:	00008315 	0x00008315
    187c:	3c086400 	0x3c086400
    1880:	05000009 	0x05000009
    1884:	00831549 	bstrins.d	$r9,$r10,0x3,0x5
    1888:	08680000 	fmsub.d	$f0,$f0,$f0,$f16
    188c:	00000954 	0x00000954
    1890:	83154a05 	0x83154a05
    1894:	6c000000 	bgeu	$r0,$r0,0 # 1894 <_start-0x1bffe76c>
    1898:	00089b08 	bytepick.w	$r8,$r24,$r6,0x1
    189c:	154b0500 	lu12i.w	$r0,-370648(0xa5828)
    18a0:	00000083 	0x00000083
    18a4:	79030070 	0x79030070
    18a8:	05000009 	0x05000009
    18ac:	00ba034c 	bstrins.d	$r12,$r26,0x3a,0x0
    18b0:	a1090000 	0xa1090000
    18b4:	01000009 	0x01000009
    18b8:	00000611 	0x00000611
    18bc:	00200000 	div.w	$r0,$r0,$r0
    18c0:	9c010000 	0x9c010000
    18c4:	00000274 	0x00000274
    18c8:	0000000a 	0x0000000a
    18cc:	00028600 	0x00028600
    18d0:	54010b00 	bl	-67108600(0xc000108) # fc0019d8 <_RAM_DATA+0x7c0009d8>
    18d4:	ffff1106 	0xffff1106
    18d8:	00788081 	bstrpick.w	$r1,$r4,0x18,0x0
    18dc:	09950c00 	vfnmadd.s	$vr0,$vr0,$vr3,$vr10
    18e0:	0b010000 	0x0b010000
    18e4:	0014dc06 	and	$r6,$r0,$r23
    18e8:	0000141c 	clz.w	$r28,$r0
    18ec:	0d9c0100 	0x0d9c0100
    18f0:	00000985 	0x00000985
    18f4:	00060501 	alsl.wu	$r1,$r8,$r1,0x1
    18f8:	24000000 	ldptr.w	$r0,$r0,0
    18fc:	01000000 	0x01000000
    1900:	065d0e9c 	0x065d0e9c
    1904:	05010000 	0x05010000
    1908:	0000771f 	0x0000771f
    190c:	00540100 	0x00540100
    1910:	00032900 	0x00032900
    1914:	01000400 	0x01000400
    1918:	04000008 	csrrd	$r8,0x0
    191c:	00019f01 	0x00019f01
    1920:	0a890c00 	0x0a890c00
    1924:	00560000 	0x00560000
    1928:	01900000 	0x01900000
    192c:	00000000 	0x00000000
    1930:	18510000 	pcaddi	$r0,165888(0x28800)
    1934:	01020000 	0x01020000
    1938:	00027206 	0x00027206
    193c:	08010200 	0x08010200
    1940:	00000270 	0x00000270
    1944:	7e050202 	0x7e050202
    1948:	02000002 	slti	$r2,$r0,0
    194c:	01610702 	0x01610702
    1950:	04020000 	csrrd	$r0,0x80
    1954:	00010105 	0x00010105
    1958:	01310300 	0x01310300
    195c:	41020000 	beqz	$r0,66048(0x10200) # 11b5c <_start-0x1bfee4a4>
    1960:	00005419 	bitrev.d	$r25,$r0
    1964:	07040200 	0x07040200
    1968:	000000d4 	0x000000d4
    196c:	fc050802 	0xfc050802
    1970:	02000000 	slti	$r0,$r0,0
    1974:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    1978:	04040000 	csrrd	$r0,0x100
    197c:	746e6905 	0x746e6905
    1980:	07040200 	0x07040200
    1984:	000000d9 	0x000000d9
    1988:	00013303 	0x00013303
    198c:	14200300 	lu12i.w	$r0,65560(0x10018)
    1990:	00000048 	0x00000048
    1994:	6a040402 	bltu	$r0,$r2,-130044(0x20404) # fffe1d98 <_RAM_DATA+0x7ffe0d98>
    1998:	05000002 	0x05000002
    199c:	00700407 	bstrins.w	$r7,$r0,0x10,0x1
    19a0:	31040000 	0x31040000
    19a4:	0000a50e 	0x0000a50e
    19a8:	049a0600 	csrxchg	$r0,$r16,0x2681
    19ac:	07000000 	0x07000000
    19b0:	00544553 	0x00544553
    19b4:	bc030001 	0xbc030001
    19b8:	04000007 	csrrd	$r7,0x0
    19bc:	008a2831 	bstrins.d	$r17,$r1,0xa,0xa
    19c0:	02030000 	slti	$r0,$r0,192(0xc0)
    19c4:	04000008 	csrrd	$r8,0x0
    19c8:	008a3431 	bstrins.d	$r17,$r1,0xa,0xd
    19cc:	07050000 	0x07050000
    19d0:	00007004 	0x00007004
    19d4:	0e330400 	0x0e330400
    19d8:	000000d8 	0x000000d8
    19dc:	00037206 	0x00037206
    19e0:	a0060000 	0xa0060000
    19e4:	01000003 	0x01000003
    19e8:	04730300 	csrxchg	$r0,$r24,0x1cc0
    19ec:	33040000 	0x33040000
    19f0:	0000bd2f 	0x0000bd2f
    19f4:	06010200 	cacop	0x0,$r16,64(0x40)
    19f8:	00000279 	0x00000279
    19fc:	0002a308 	0x0002a308
    1a00:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    1a04:	00000077 	0x00000077
    1a08:	00011408 	0x00011408
    1a0c:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    1a10:	00000077 	0x00000077
    1a14:	00025908 	0x00025908
    1a18:	0c6d0400 	0x0c6d0400
    1a1c:	00000069 	0x00000069
    1a20:	0f051c09 	0x0f051c09
    1a24:	00017409 	0x00017409
    1a28:	03e30a00 	xori	$r0,$r16,0x8c2
    1a2c:	11050000 	addu16i.d	$r0,$r0,16704(0x4140)
    1a30:	0000770c 	0x0000770c
    1a34:	bb0a0000 	0xbb0a0000
    1a38:	05000009 	0x05000009
    1a3c:	00770c13 	bstrins.w	$r19,$r0,0x17,0x3
    1a40:	0a040000 	0x0a040000
    1a44:	000009e9 	0x000009e9
    1a48:	770c1705 	0x770c1705
    1a4c:	08000000 	0x08000000
    1a50:	000a1f0a 	0x000a1f0a
    1a54:	0c190500 	0x0c190500
    1a58:	00000077 	0x00000077
    1a5c:	0a6e0a0c 	xvfmsub.d	$xr12,$xr16,$xr2,$xr28
    1a60:	1b050000 	pcalau12i	$r0,-514048(0x82800)
    1a64:	0000770c 	0x0000770c
    1a68:	f20a1000 	0xf20a1000
    1a6c:	05000009 	0x05000009
    1a70:	00770c1e 	bstrins.w	$r30,$r0,0x17,0x3
    1a74:	0a140000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr8
    1a78:	00000a0c 	0x00000a0c
    1a7c:	770c2105 	xvsllwil.hu.bu	$xr5,$xr8,0x0
    1a80:	18000000 	pcaddi	$r0,0
    1a84:	09d90300 	vfnmsub.s	$vr0,$vr24,$vr0,$vr18
    1a88:	23050000 	sc.d	$r0,$r0,1280(0x500)
    1a8c:	00010f03 	0x00010f03
    1a90:	09cd0b00 	0x09cd0b00
    1a94:	ae010000 	0xae010000
    1a98:	00150806 	or	$r6,$r0,$r2
    1a9c:	00002c1c 	ctz.d	$r28,$r0
    1aa0:	ab9c0100 	0xab9c0100
    1aa4:	0c000001 	0x0c000001
    1aa8:	00000a55 	0x00000a55
    1aac:	771bae01 	0x771bae01
    1ab0:	1c000000 	pcaddu12i	$r0,0
    1ab4:	1800000e 	pcaddi	$r14,0
    1ab8:	0000000e 	0x0000000e
    1abc:	000a5e0d 	0x000a5e0d
    1ac0:	0c990100 	0x0c990100
    1ac4:	000000a5 	0x000000a5
    1ac8:	1c0014f0 	pcaddu12i	$r16,167(0xa7)
    1acc:	00000018 	0x00000018
    1ad0:	01ee9c01 	0x01ee9c01
    1ad4:	550c0000 	bl	68608(0x10c00) # 126d4 <_start-0x1bfed92c>
    1ad8:	0100000a 	0x0100000a
    1adc:	00772599 	bstrins.w	$r25,$r12,0x17,0x9
    1ae0:	0e410000 	0x0e410000
    1ae4:	0e3d0000 	0x0e3d0000
    1ae8:	c30e0000 	0xc30e0000
    1aec:	01000003 	0x01000003
    1af0:	00b10c9b 	bstrins.d	$r27,$r4,0x31,0x3
    1af4:	0e660000 	0x0e660000
    1af8:	0e620000 	0x0e620000
    1afc:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
    1b00:	00000a37 	0x00000a37
    1b04:	770a8501 	0x770a8501
    1b08:	00000000 	0x00000000
    1b0c:	10000000 	addu16i.d	$r0,$r0,0
    1b10:	01000000 	0x01000000
    1b14:	00021d9c 	0x00021d9c
    1b18:	03de0e00 	xori	$r0,$r16,0x783
    1b1c:	87010000 	0x87010000
    1b20:	0000770b 	0x0000770b
    1b24:	000e8a00 	bytepick.d	$r0,$r16,$r2,0x5
    1b28:	000e8600 	bytepick.d	$r0,$r16,$r1,0x5
    1b2c:	e90b0000 	0xe90b0000
    1b30:	0100000a 	0x0100000a
    1b34:	00000678 	0x00000678
    1b38:	00100000 	add.w	$r0,$r0,$r0
    1b3c:	9c010000 	0x9c010000
    1b40:	00000242 	0x00000242
    1b44:	000a3e0f 	0x000a3e0f
    1b48:	1e780100 	pcaddu18i	$r0,245768(0x3c008)
    1b4c:	00000077 	0x00000077
    1b50:	0b005401 	0x0b005401
    1b54:	000009fd 	0x000009fd
    1b58:	00066a01 	alsl.wu	$r1,$r16,$r26,0x1
    1b5c:	10000000 	addu16i.d	$r0,$r0,0
    1b60:	01000000 	0x01000000
    1b64:	0002679c 	0x0002679c
    1b68:	0aff0f00 	0x0aff0f00
    1b6c:	6a010000 	bltu	$r0,$r0,-130816(0x20100) # fffe1c6c <_RAM_DATA+0x7ffe0c6c>
    1b70:	0000771e 	0x0000771e
    1b74:	00540100 	0x00540100
    1b78:	000af80d 	0x000af80d
    1b7c:	0a5a0100 	xvfmsub.s	$xr0,$xr8,$xr0,$xr20
    1b80:	00000077 	0x00000077
    1b84:	00000000 	0x00000000
    1b88:	00000010 	0x00000010
    1b8c:	02969c01 	addi.w	$r1,$r0,1447(0x5a7)
    1b90:	de0e0000 	0xde0e0000
    1b94:	01000003 	0x01000003
    1b98:	00770b5c 	bstrins.w	$r28,$r26,0x17,0x2
    1b9c:	0ead0000 	0x0ead0000
    1ba0:	0ea90000 	0x0ea90000
    1ba4:	0b000000 	0x0b000000
    1ba8:	00000a7c 	0x00000a7c
    1bac:	00064401 	alsl.wu	$r1,$r0,$r17,0x1
    1bb0:	50000000 	b	0 # 1bb0 <_start-0x1bffe450>
    1bb4:	01000000 	0x01000000
    1bb8:	0002bb9c 	0x0002bb9c
    1bbc:	03590f00 	andi	$r0,$r24,0x643
    1bc0:	44010000 	bnez	$r0,256(0x100) # 1cc0 <_start-0x1bffe340>
    1bc4:	0000d823 	0x0000d823
    1bc8:	00540100 	0x00540100
    1bcc:	000a170b 	0x000a170b
    1bd0:	06360100 	cacop	0x0,$r8,-640(0xd80)
    1bd4:	00000000 	0x00000000
    1bd8:	0000002c 	0x0000002c
    1bdc:	02e09c01 	addi.d	$r1,$r0,-2009(0x827)
    1be0:	590f0000 	beq	$r0,$r0,69376(0x10f00) # 12ae0 <_start-0x1bfed520>
    1be4:	01000003 	0x01000003
    1be8:	00d81e36 	bstrpick.d	$r22,$r17,0x18,0x7
    1bec:	54010000 	bl	256(0x100) # 1cec <_start-0x1bffe314>
    1bf0:	0a460b00 	0x0a460b00
    1bf4:	22010000 	ll.d	$r0,$r0,256(0x100)
    1bf8:	00000006 	0x00000006
    1bfc:	00004400 	revh.d	$r0,$r0
    1c00:	059c0100 	0x059c0100
    1c04:	0f000003 	0x0f000003
    1c08:	00000a28 	0x00000a28
    1c0c:	05262201 	0x05262201
    1c10:	01000003 	0x01000003
    1c14:	04100054 	csrxchg	$r20,$r2,0x400
    1c18:	00000174 	0x00000174
    1c1c:	0009c411 	bytepick.w	$r17,$r0,$r17,0x3
    1c20:	060d0100 	cacop	0x0,$r8,832(0x340)
    1c24:	00000000 	0x00000000
    1c28:	0000007c 	0x0000007c
    1c2c:	280f9c01 	ld.b	$r1,$r0,999(0x3e7)
    1c30:	0100000a 	0x0100000a
    1c34:	0305200d 	lu52i.d	$r13,$r0,328(0x148)
    1c38:	54010000 	bl	256(0x100) # 1d38 <_start-0x1bffe2c8>
    1c3c:	043a0000 	csrrd	$r0,0xe80
    1c40:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1c44:	00000928 	0x00000928
    1c48:	019f0104 	0x019f0104
    1c4c:	170c0000 	lu32i.d	$r0,-499712(0x86000)
    1c50:	5600000b 	bl	3014656(0x2e0000) # 2e1c50 <_start-0x1bd1e3b0>
    1c54:	e8000000 	0xe8000000
    1c58:	00000001 	0x00000001
    1c5c:	36000000 	0x36000000
    1c60:	0200001c 	slti	$r28,$r0,0
    1c64:	02720601 	sltui	$r1,$r16,-895(0xc81)
    1c68:	c5030000 	0xc5030000
    1c6c:	02000000 	slti	$r0,$r0,0
    1c70:	0038181d 	0x0038181d
    1c74:	01020000 	0x01020000
    1c78:	00027008 	0x00027008
    1c7c:	05020200 	0x05020200
    1c80:	0000027e 	0x0000027e
    1c84:	61070202 	blt	$r16,$r2,67328(0x10700) # 12384 <_start-0x1bfedc7c>
    1c88:	02000001 	slti	$r1,$r0,0
    1c8c:	01010504 	fadd.d	$f4,$f8,$f1
    1c90:	31030000 	0x31030000
    1c94:	02000001 	slti	$r1,$r0,0
    1c98:	00601941 	bstrins.w	$r1,$r10,0x0,0x6
    1c9c:	04020000 	csrrd	$r0,0x80
    1ca0:	0000d407 	0x0000d407
    1ca4:	05080200 	0x05080200
    1ca8:	000000fc 	0x000000fc
    1cac:	cf070802 	0xcf070802
    1cb0:	04000000 	csrrd	$r0,0x0
    1cb4:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffe85b8 <_RAM_DATA+0x7ffe75b8>
    1cb8:	04020074 	csrxchg	$r20,$r3,0x80
    1cbc:	0000d907 	0x0000d907
    1cc0:	00c70300 	bstrpick.d	$r0,$r24,0x7,0x0
    1cc4:	14030000 	lu12i.w	$r0,6144(0x1800)
    1cc8:	00002c13 	ctz.d	$r19,$r0
    1ccc:	00830500 	bstrins.d	$r0,$r8,0x3,0x1
    1cd0:	33030000 	0x33030000
    1cd4:	03000001 	lu52i.d	$r1,$r0,0
    1cd8:	00541420 	0x00541420
    1cdc:	38030000 	0x38030000
    1ce0:	04000006 	csrrd	$r6,0x0
    1ce4:	00381717 	0x00381717
    1ce8:	04020000 	csrrd	$r0,0x80
    1cec:	00026a04 	0x00026a04
    1cf0:	06010200 	cacop	0x0,$r16,64(0x40)
    1cf4:	00000279 	0x00000279
    1cf8:	0002a306 	0x0002a306
    1cfc:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    1d00:	00000094 	0x00000094
    1d04:	00011406 	0x00011406
    1d08:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    1d0c:	00000094 	0x00000094
    1d10:	00025906 	0x00025906
    1d14:	0c6d0400 	0x0c6d0400
    1d18:	00000075 	0x00000075
    1d1c:	cd050807 	0xcd050807
    1d20:	00015009 	0x00015009
    1d24:	02ac0800 	addi.w	$r0,$r0,-1278(0xb02)
    1d28:	cf050000 	0xcf050000
    1d2c:	00008f14 	0x00008f14
    1d30:	e6080000 	0xe6080000
    1d34:	05000000 	0x05000000
    1d38:	008f14d0 	bstrins.d	$r16,$r6,0xf,0x5
    1d3c:	08010000 	0x08010000
    1d40:	000000b1 	0x000000b1
    1d44:	8f14d105 	0x8f14d105
    1d48:	02000000 	slti	$r0,$r0,0
    1d4c:	52434c09 	b	2507596(0x26434c) # 266098 <_start-0x1bd99f68>
    1d50:	14d20500 	lu12i.w	$r0,430120(0x69028)
    1d54:	0000008f 	0x0000008f
    1d58:	01930803 	0x01930803
    1d5c:	d3050000 	0xd3050000
    1d60:	00008f14 	0x00008f14
    1d64:	4c090400 	jirl	$r0,$r0,2308(0x904)
    1d68:	05005253 	0x05005253
    1d6c:	008f14d4 	bstrins.d	$r20,$r6,0xf,0x5
    1d70:	08050000 	0x08050000
    1d74:	000000be 	0x000000be
    1d78:	8f14d505 	0x8f14d505
    1d7c:	06000000 	cacop	0x0,$r0,0
    1d80:	0002be08 	0x0002be08
    1d84:	14d60500 	lu12i.w	$r0,438312(0x6b028)
    1d88:	0000008f 	0x0000008f
    1d8c:	ef030007 	0xef030007
    1d90:	05000000 	0x05000000
    1d94:	00de03d8 	bstrpick.d	$r24,$r30,0x1e,0x0
    1d98:	a0030000 	0xa0030000
    1d9c:	0600000b 	cacop	0xb,$r0,0
    1da0:	00381720 	0x00381720
    1da4:	08020000 	0x08020000
    1da8:	000b7b04 	0x000b7b04
    1dac:	0b8d0a00 	0x0b8d0a00
    1db0:	06140000 	cacop	0x0,$r0,1280(0x500)
    1db4:	01be102e 	0x01be102e
    1db8:	de080000 	0xde080000
    1dbc:	06000003 	cacop	0x3,$r0,0
    1dc0:	01be112f 	0x01be112f
    1dc4:	08000000 	0x08000000
    1dc8:	00000be3 	0x00000be3
    1dcc:	75063006 	0x75063006
    1dd0:	04000000 	csrrd	$r0,0x0
    1dd4:	000b0708 	0x000b0708
    1dd8:	06310600 	cacop	0x0,$r16,-959(0xc41)
    1ddc:	00000075 	0x00000075
    1de0:	0c140808 	0x0c140808
    1de4:	32060000 	0x32060000
    1de8:	00007506 	0x00007506
    1dec:	0f080c00 	0x0f080c00
    1df0:	0600000b 	cacop	0xb,$r0,0
    1df4:	00750633 	bstrins.w	$r19,$r17,0x15,0x1
    1df8:	00100000 	add.w	$r0,$r0,$r0
    1dfc:	0038040b 	0x0038040b
    1e00:	8d030000 	0x8d030000
    1e04:	0600000b 	cacop	0xb,$r0,0
    1e08:	016f0234 	0x016f0234
    1e0c:	c80c0000 	0xc80c0000
    1e10:	0100000b 	0x0100000b
    1e14:	00750c0e 	bstrins.w	$r14,$r0,0x15,0x3
    1e18:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    1e1c:	80000014 	0x80000014
    1e20:	00015c0d 	0x00015c0d
    1e24:	0001f200 	asrtgt.d	$r16,$r28
    1e28:	007c0e00 	bstrins.w	$r0,$r16,0x1c,0x3
    1e2c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
    1e30:	000b940c 	0x000b940c
    1e34:	0e0f0100 	0x0e0f0100
    1e38:	000001e2 	0x000001e2
    1e3c:	00000305 	0x00000305
    1e40:	700c0000 	vsub.b	$vr0,$vr0,$vr0
    1e44:	0100000b 	0x0100000b
    1e48:	01c40f10 	0x01c40f10
    1e4c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    1e50:	80000000 	0x80000000
    1e54:	000bd40f 	0x000bd40f
    1e58:	06290100 	cacop	0x0,$r8,-1472(0xa40)
    1e5c:	00000000 	0x00000000
    1e60:	00000060 	0x00000060
    1e64:	02b59c01 	addi.w	$r1,$r0,-665(0xd67)
    1e68:	b7100000 	0xb7100000
    1e6c:	01000002 	0x01000002
    1e70:	00750422 	bstrins.w	$r2,$r1,0x15,0x1
    1e74:	023e0000 	slti	$r0,$r0,-128(0xf80)
    1e78:	00110000 	sub.w	$r0,$r0,$r0
    1e7c:	01006912 	0x01006912
    1e80:	0075062c 	bstrins.w	$r12,$r17,0x15,0x1
    1e84:	0ed00000 	0x0ed00000
    1e88:	0ecc0000 	0x0ecc0000
    1e8c:	00130000 	maskeqz	$r0,$r0,$r0
    1e90:	0c000000 	0x0c000000
    1e94:	8a000000 	0x8a000000
    1e98:	10000002 	addu16i.d	$r2,$r0,0
    1e9c:	0000017b 	0x0000017b
    1ea0:	75033001 	xvssrarn.h.w	$xr1,$xr0,$xr12
    1ea4:	6f000000 	bgeu	$r0,$r0,-65536(0x30000) # ffff1ea4 <_RAM_DATA+0x7fff0ea4>
    1ea8:	11000002 	addu16i.d	$r2,$r0,16384(0x4000)
    1eac:	00001400 	clz.w	$r0,$r0
    1eb0:	03dd0000 	xori	$r0,$r0,0x740
    1eb4:	01150000 	0x01150000
    1eb8:	80110654 	0x80110654
    1ebc:	7bffa280 	0x7bffa280
    1ec0:	02550115 	sltui	$r21,$r8,1344(0x540)
    1ec4:	00000087 	0x00000087
    1ec8:	00000016 	0x00000016
    1ecc:	0003e900 	0x0003e900
    1ed0:	0002a100 	0x0002a100
    1ed4:	54011500 	bl	67109140(0x4000114) # 4001fe8 <_start-0x17ffe018>
    1ed8:	00000305 	0x00000305
    1edc:	14000000 	lu12i.w	$r0,0
    1ee0:	00000000 	0x00000000
    1ee4:	000003f5 	0x000003f5
    1ee8:	05540115 	0x05540115
    1eec:	00000003 	0x00000003
    1ef0:	0f000080 	0x0f000080
    1ef4:	00000bf8 	0x00000bf8
    1ef8:	00061d01 	alsl.wu	$r1,$r8,$r7,0x1
    1efc:	5c000000 	bne	$r0,$r0,0 # 1efc <_start-0x1bffe104>
    1f00:	01000000 	0x01000000
    1f04:	0003309c 	0x0003309c
    1f08:	00001300 	clo.w	$r0,$r24
    1f0c:	00340000 	0x00340000
    1f10:	03260000 	lu52i.d	$r0,$r0,-1664(0x980)
    1f14:	b7100000 	0xb7100000
    1f18:	01000002 	0x01000002
    1f1c:	00750422 	bstrins.w	$r2,$r1,0x15,0x1
    1f20:	02ea0000 	addi.d	$r0,$r0,-1408(0xa80)
    1f24:	00110000 	sub.w	$r0,$r0,$r0
    1f28:	00000016 	0x00000016
    1f2c:	00040100 	alsl.w	$r0,$r8,$r0,0x1
    1f30:	0002fe00 	0x0002fe00
    1f34:	54011500 	bl	67109140(0x4000114) # 4002048 <_start-0x17ffdfb8>
    1f38:	00640802 	bstrins.w	$r2,$r0,0x4,0x2
    1f3c:	00000016 	0x00000016
    1f40:	0003e900 	0x0003e900
    1f44:	00031500 	0x00031500
    1f48:	54011500 	bl	67109140(0x4000114) # 400205c <_start-0x17ffdfa4>
    1f4c:	00000305 	0x00000305
    1f50:	14000000 	lu12i.w	$r0,0
    1f54:	00000000 	0x00000000
    1f58:	000003f5 	0x000003f5
    1f5c:	02540115 	sltui	$r21,$r8,1280(0x500)
    1f60:	00000087 	0x00000087
    1f64:	00000017 	0x00000017
    1f68:	00040d00 	alsl.w	$r0,$r8,$r3,0x1
    1f6c:	eb180000 	0xeb180000
    1f70:	0100000b 	0x0100000b
    1f74:	15340618 	lu12i.w	$r24,-417744(0x9a030)
    1f78:	00341c00 	0x00341c00
    1f7c:	9c010000 	0x9c010000
    1f80:	0000036e 	0x0000036e
    1f84:	74616419 	xvabsd.w	$xr25,$xr0,$xr25
    1f88:	19180100 	pcaddi	$r0,-475128(0x8c008)
    1f8c:	000000a0 	0x000000a0
    1f90:	00000ef3 	0x00000ef3
    1f94:	00000eef 	0x00000eef
    1f98:	00155c14 	or	$r20,$r0,$r23
    1f9c:	0004191c 	alsl.w	$r28,$r8,$r6,0x1
    1fa0:	54011500 	bl	67109140(0x4000114) # 40020b4 <_start-0x17ffdf4c>
    1fa4:	00000305 	0x00000305
    1fa8:	00008000 	0x00008000
    1fac:	000bba0f 	0x000bba0f
    1fb0:	06110100 	cacop	0x0,$r8,1088(0x440)
    1fb4:	00000000 	0x00000000
    1fb8:	0000004c 	0x0000004c
    1fbc:	03dd9c01 	xori	$r1,$r0,0x767
    1fc0:	b3100000 	0xb3100000
    1fc4:	0100000b 	0x0100000b
    1fc8:	00750214 	bstrins.w	$r20,$r16,0x15,0x0
    1fcc:	03960000 	ori	$r0,$r0,0x580
    1fd0:	00110000 	sub.w	$r0,$r0,$r0
    1fd4:	00000016 	0x00000016
    1fd8:	00042500 	alsl.w	$r0,$r8,$r9,0x1
    1fdc:	0003b900 	0x0003b900
    1fe0:	54011500 	bl	67109140(0x4000114) # 40020f4 <_start-0x17ffdf0c>
    1fe4:	00000305 	0x00000305
    1fe8:	01150000 	0x01150000
    1fec:	15300155 	lu12i.w	$r21,-425974(0x9800a)
    1ff0:	0a035601 	0x0a035601
    1ff4:	140001f4 	lu12i.w	$r20,15(0xf)
    1ff8:	00000000 	0x00000000
    1ffc:	00000431 	0x00000431
    2000:	05540115 	0x05540115
    2004:	00000003 	0x00000003
    2008:	55011580 	bl	100729108(0x6010114) # 601211c <_start-0x15fedee4>
    200c:	00000305 	0x00000305
    2010:	01150000 	0x01150000
    2014:	f40a0356 	0xf40a0356
    2018:	1a000001 	pcalau12i	$r1,0
    201c:	0000017b 	0x0000017b
    2020:	0000017b 	0x0000017b
    2024:	1a033001 	pcalau12i	$r1,6528(0x1980)
    2028:	000002b7 	0x000002b7
    202c:	000002b7 	0x000002b7
    2030:	1a042201 	pcalau12i	$r1,8464(0x2110)
    2034:	00000c07 	0x00000c07
    2038:	00000c07 	0x00000c07
    203c:	1a0f3806 	pcalau12i	$r6,31168(0x79c0)
    2040:	00000510 	0x00000510
    2044:	00000510 	0x00000510
    2048:	1a081807 	pcalau12i	$r7,16576(0x40c0)
    204c:	00000995 	0x00000995
    2050:	00000995 	0x00000995
    2054:	1a060708 	pcalau12i	$r8,12344(0x3038)
    2058:	00000ba6 	0x00000ba6
    205c:	00000ba6 	0x00000ba6
    2060:	1a0d3b06 	pcalau12i	$r6,27096(0x69d8)
    2064:	00000bb3 	0x00000bb3
    2068:	00000bb3 	0x00000bb3
    206c:	1a021401 	pcalau12i	$r1,4256(0x10a0)
    2070:	00000b82 	0x00000b82
    2074:	00000b82 	0x00000b82
    2078:	000f3506 	bytepick.d	$r6,$r8,$r13,0x6
    207c:	000005cf 	0x000005cf
    2080:	0aae0004 	xvfnmadd.d	$xr4,$xr0,$xr0,$xr28
    2084:	01040000 	0x01040000
    2088:	0000019f 	0x0000019f
    208c:	000c2c0c 	bytepick.d	$r12,$r0,$r11,0x0
    2090:	00005600 	bitrev.d	$r0,$r16
    2094:	00021000 	0x00021000
    2098:	00000000 	0x00000000
    209c:	001fbc00 	mulw.d.wu	$r0,$r0,$r15
    20a0:	06010200 	cacop	0x0,$r16,64(0x40)
    20a4:	00000272 	0x00000272
    20a8:	70080102 	vslt.bu	$vr2,$vr8,$vr0
    20ac:	02000002 	slti	$r2,$r0,0
    20b0:	027e0502 	sltui	$r2,$r8,-127(0xf81)
    20b4:	02020000 	slti	$r0,$r0,128(0x80)
    20b8:	00016107 	0x00016107
    20bc:	05040200 	0x05040200
    20c0:	00000101 	0x00000101
    20c4:	00013103 	0x00013103
    20c8:	19410200 	pcaddi	$r0,-391152(0xa0810)
    20cc:	00000054 	0x00000054
    20d0:	d4070402 	0xd4070402
    20d4:	02000000 	slti	$r0,$r0,0
    20d8:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
    20dc:	08020000 	0x08020000
    20e0:	0000cf07 	0x0000cf07
    20e4:	05040400 	0x05040400
    20e8:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
    20ec:	d9070402 	0xd9070402
    20f0:	03000000 	lu52i.d	$r0,$r0,0
    20f4:	00000133 	0x00000133
    20f8:	48142003 	bceqz	$fcc0,791584(0xc1420) # c3518 <_start-0x1bf3cae8>
    20fc:	02000000 	slti	$r0,$r0,0
    2100:	026a0404 	sltui	$r4,$r0,-1407(0xa81)
    2104:	01020000 	0x01020000
    2108:	00027906 	0x00027906
    210c:	02a30500 	addi.w	$r0,$r8,-1855(0x8c1)
    2110:	69040000 	bltu	$r0,$r0,66560(0x10400) # 12510 <_start-0x1bfedaf0>
    2114:	00007711 	0x00007711
    2118:	01140500 	fabs.s	$f0,$f8
    211c:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff251c <_RAM_DATA+0x7fff151c>
    2120:	00007711 	0x00007711
    2124:	02590500 	sltui	$r0,$r8,1601(0x641)
    2128:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 12528 <_start-0x1bfedad8>
    212c:	0000690c 	rdtime.d	$r12,$r8
    2130:	04070600 	csrxchg	$r0,$r16,0x1c1
    2134:	00000070 	0x00000070
    2138:	d00e1e05 	0xd00e1e05
    213c:	07000000 	0x07000000
    2140:	00000ca4 	0x00000ca4
    2144:	0d420700 	0x0d420700
    2148:	00010000 	asrtle.d	$r0,$r0
    214c:	00033903 	0x00033903
    2150:	241e0500 	ldptr.w	$r0,$r8,7684(0x1e04)
    2154:	000000b5 	0x000000b5
    2158:	000ba003 	0x000ba003
    215c:	17200500 	lu32i.d	$r0,-458712(0x90028)
    2160:	0000002c 	0x0000002c
    2164:	000ba103 	0x000ba103
    2168:	15210500 	lu12i.w	$r0,-456664(0x90828)
    216c:	00000025 	0x00000025
    2170:	000c8103 	bytepick.d	$r3,$r8,$r0,0x1
    2174:	18220500 	pcaddi	$r0,69672(0x11028)
    2178:	0000003a 	0x0000003a
    217c:	000c8203 	bytepick.d	$r3,$r16,$r0,0x1
    2180:	16230500 	lu32i.d	$r0,71720(0x11828)
    2184:	00000033 	0x00000033
    2188:	000d1403 	bytepick.d	$r3,$r0,$r5,0x2
    218c:	14250500 	lu12i.w	$r0,75816(0x12828)
    2190:	00000069 	0x00000069
    2194:	7b040802 	0x7b040802
    2198:	0800000b 	0x0800000b
    219c:	00000b8d 	0x00000b8d
    21a0:	102e0514 	addu16i.d	$r20,$r8,2945(0xb81)
    21a4:	0000016e 	0x0000016e
    21a8:	0003de09 	0x0003de09
    21ac:	112f0500 	addu16i.d	$r0,$r8,19393(0x4bc1)
    21b0:	0000016e 	0x0000016e
    21b4:	0be30900 	0x0be30900
    21b8:	30050000 	0x30050000
    21bc:	00006906 	rdtime.d	$r6,$r8
    21c0:	07090400 	0x07090400
    21c4:	0500000b 	0x0500000b
    21c8:	00690631 	bstrins.w	$r17,$r17,0x9,0x1
    21cc:	09080000 	0x09080000
    21d0:	00000c14 	0x00000c14
    21d4:	69063205 	bltu	$r16,$r5,67120(0x10630) # 12804 <_start-0x1bfed7fc>
    21d8:	0c000000 	0x0c000000
    21dc:	000b0f09 	0x000b0f09
    21e0:	06330500 	cacop	0x0,$r8,-831(0xcc1)
    21e4:	00000069 	0x00000069
    21e8:	040a0010 	csrrd	$r16,0x280
    21ec:	0000002c 	0x0000002c
    21f0:	000d1f0b 	bytepick.d	$r11,$r24,$r7,0x2
    21f4:	05b20100 	0x05b20100
    21f8:	00000069 	0x00000069
    21fc:	00000000 	0x00000000
    2200:	0000007c 	0x0000007c
    2204:	02139c01 	slti	$r1,$r0,1255(0x4e7)
    2208:	620c0000 	blt	$r0,$r0,-128000(0x20c00) # fffe2e08 <_RAM_DATA+0x7ffe1e08>
    220c:	01006675 	0x01006675
    2210:	021328b2 	slti	$r18,$r5,1226(0x4ca)
    2214:	0f1e0000 	0x0f1e0000
    2218:	0f140000 	0x0f140000
    221c:	480d0000 	bceqz	$fcc0,3328(0xd00) # 2f1c <_start-0x1bffd0e4>
    2220:	09b30100 	0x09b30100
    2224:	000000dc 	0x000000dc
    2228:	00000f67 	0x00000f67
    222c:	00000f63 	0x00000f63
    2230:	01004c0d 	0x01004c0d
    2234:	00dc0bb3 	bstrpick.d	$r19,$r29,0x1c,0x2
    2238:	0f890000 	0x0f890000
    223c:	0f850000 	0x0f850000
    2240:	000e0000 	bytepick.d	$r0,$r0,$r0,0x4
    2244:	23000000 	sc.d	$r0,$r0,0
    2248:	da000004 	0xda000004
    224c:	0f000001 	0x0f000001
    2250:	87025401 	0x87025401
    2254:	000e0000 	bytepick.d	$r0,$r0,$r0,0x4
    2258:	23000000 	sc.d	$r0,$r0,0
    225c:	ee000004 	0xee000004
    2260:	0f000001 	0x0f000001
    2264:	87025401 	0x87025401
    2268:	000e0000 	bytepick.d	$r0,$r0,$r0,0x4
    226c:	19000000 	pcaddi	$r0,-524288(0x80000)
    2270:	02000002 	slti	$r2,$r0,0
    2274:	0f000002 	0x0f000002
    2278:	89025401 	0x89025401
    227c:	00100000 	add.w	$r0,$r0,$r0
    2280:	19000000 	pcaddi	$r0,-524288(0x80000)
    2284:	0f000002 	0x0f000002
    2288:	88025401 	0x88025401
    228c:	0a000000 	0x0a000000
    2290:	00011f04 	0x00011f04
    2294:	0ccb0b00 	0x0ccb0b00
    2298:	a4010000 	0xa4010000
    229c:	0000dc07 	0x0000dc07
    22a0:	00000000 	0x00000000
    22a4:	00005400 	bitrev.d	$r0,$r0
    22a8:	589c0100 	beq	$r8,$r0,39936(0x9c00) # bea8 <_start-0x1bff4158>
    22ac:	0c000002 	0x0c000002
    22b0:	a4010063 	0xa4010063
    22b4:	0000dc23 	0x0000dc23
    22b8:	000fab00 	bytepick.d	$r0,$r24,$r10,0x7
    22bc:	000fa700 	bytepick.d	$r0,$r24,$r9,0x7
    22c0:	00720d00 	bstrins.w	$r0,$r8,0x12,0x3
    22c4:	dc09a501 	0xdc09a501
    22c8:	da000000 	0xda000000
    22cc:	cc00000f 	0xcc00000f
    22d0:	0000000f 	0x0000000f
    22d4:	000c9411 	bytepick.d	$r17,$r0,$r5,0x1
    22d8:	069c0100 	0x069c0100
    22dc:	00000000 	0x00000000
    22e0:	00000058 	0x00000058
    22e4:	02c29c01 	addi.d	$r1,$r0,167(0xa7)
    22e8:	620c0000 	blt	$r0,$r0,-128000(0x20c00) # fffe2ee8 <_RAM_DATA+0x7ffe1ee8>
    22ec:	01006675 	0x01006675
    22f0:	0213259c 	slti	$r28,$r12,1225(0x4c9)
    22f4:	103e0000 	addu16i.d	$r0,$r0,3968(0xf80)
    22f8:	10380000 	addu16i.d	$r0,$r0,3584(0xe00)
    22fc:	760c0000 	0x760c0000
    2300:	309c0100 	vldrepl.b	$vr0,$r8,1792(0x700)
    2304:	0000010c 	0x0000010c
    2308:	00001070 	clo.w	$r16,$r3
    230c:	0000106a 	clo.w	$r10,$r3
    2310:	0100690d 	0x0100690d
    2314:	0069069d 	bstrins.w	$r29,$r20,0x9,0x1
    2318:	10a00000 	addu16i.d	$r0,$r0,10240(0x2800)
    231c:	109c0000 	addu16i.d	$r0,$r0,9984(0x2700)
    2320:	00100000 	add.w	$r0,$r0,$r0
    2324:	2c000000 	vld	$vr0,$r0,0
    2328:	0f000003 	0x0f000003
    232c:	89025401 	0x89025401
    2330:	55010f00 	bl	-67043060(0xc01010c) # fc01243c <_RAM_DATA+0x7c01143c>
    2334:	87008807 	0x87008807
    2338:	26243300 	ldptr.d	$r0,$r24,9264(0x2430)
    233c:	02110000 	slti	$r0,$r0,1088(0x440)
    2340:	0100000d 	0x0100000d
    2344:	00000694 	0x00000694
    2348:	00580000 	0x00580000
    234c:	9c010000 	0x9c010000
    2350:	0000032c 	0x0000032c
    2354:	6675620c 	bge	$r16,$r12,-101024(0x27560) # fffe98b4 <_RAM_DATA+0x7ffe88b4>
    2358:	27940100 	stptr.d	$r0,$r8,-27648(0x9400)
    235c:	00000213 	0x00000213
    2360:	000010c5 	clo.w	$r5,$r6
    2364:	000010bf 	clo.w	$r31,$r5
    2368:	0100760c 	0x0100760c
    236c:	00f43394 	bstrpick.d	$r20,$r28,0x34,0xc
    2370:	10f50000 	addu16i.d	$r0,$r0,15680(0x3d40)
    2374:	10f10000 	addu16i.d	$r0,$r0,15424(0x3c40)
    2378:	690d0000 	bltu	$r0,$r0,68864(0x10d00) # 13078 <_start-0x1bfecf88>
    237c:	06950100 	0x06950100
    2380:	00000069 	0x00000069
    2384:	0000111a 	clo.w	$r26,$r8
    2388:	00001116 	clo.w	$r22,$r8
    238c:	00000010 	0x00000010
    2390:	00032c00 	0x00032c00
    2394:	54010f00 	bl	-67108596(0xc00010c) # fc0024a0 <_RAM_DATA+0x7c0014a0>
    2398:	0f008902 	0x0f008902
    239c:	88075501 	0x88075501
    23a0:	33008700 	0x33008700
    23a4:	00002624 	clz.d	$r4,$r17
    23a8:	000ba611 	0x000ba611
    23ac:	06840100 	0x06840100
    23b0:	1c001568 	pcaddu12i	$r8,171(0xab)
    23b4:	00000054 	0x00000054
    23b8:	035d9c01 	andi	$r1,$r0,0x767
    23bc:	62120000 	blt	$r0,$r0,-126464(0x21200) # fffe35bc <_RAM_DATA+0x7ffe25bc>
    23c0:	01006675 	0x01006675
    23c4:	02132284 	slti	$r4,$r20,1224(0x4c8)
    23c8:	54010000 	bl	256(0x100) # 24c8 <_start-0x1bffdb38>
    23cc:	01006312 	0x01006312
    23d0:	002c3584 	alsl.d	$r4,$r12,$r13,0x1
    23d4:	55010000 	bl	65792(0x10100) # 124d4 <_start-0x1bfedb2c>
    23d8:	0c1d0b00 	0x0c1d0b00
    23dc:	77010000 	0x77010000
    23e0:	00010c07 	0x00010c07
    23e4:	00000000 	0x00000000
    23e8:	00005800 	ext.w.h	$r0,$r0
    23ec:	c09c0100 	0xc09c0100
    23f0:	0c000003 	0x0c000003
    23f4:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
    23f8:	13257701 	addu16i.d	$r1,$r24,-13987(0xc95d)
    23fc:	3f000002 	0x3f000002
    2400:	39000011 	0x39000011
    2404:	0d000011 	fsel	$f17,$f0,$f0,$fcc0
    2408:	78010076 	0x78010076
    240c:	00010c08 	0x00010c08
    2410:	00117100 	sub.w	$r0,$r8,$r28
    2414:	00116b00 	sub.w	$r0,$r24,$r26
    2418:	00690d00 	bstrins.w	$r0,$r8,0x9,0x3
    241c:	69067901 	bltu	$r8,$r1,67192(0x10678) # 12a94 <_start-0x1bfed56c>
    2420:	9f000000 	0x9f000000
    2424:	9b000011 	0x9b000011
    2428:	10000011 	addu16i.d	$r17,$r0,0
    242c:	00000000 	0x00000000
    2430:	00000423 	0x00000423
    2434:	0254010f 	sltui	$r15,$r8,1280(0x500)
    2438:	00000089 	0x00000089
    243c:	000cf10b 	bytepick.d	$r11,$r8,$r28,0x1
    2440:	076b0100 	0x076b0100
    2444:	00000100 	0x00000100
    2448:	00000000 	0x00000000
    244c:	00000060 	0x00000060
    2450:	04239c01 	csrrd	$r1,0x8e7
    2454:	620c0000 	blt	$r0,$r0,-128000(0x20c00) # fffe3054 <_RAM_DATA+0x7ffe2054>
    2458:	01006675 	0x01006675
    245c:	0213276b 	slti	$r11,$r27,1225(0x4c9)
    2460:	11c40000 	addu16i.d	$r0,$r0,28928(0x7100)
    2464:	11be0000 	addu16i.d	$r0,$r0,28544(0x6f80)
    2468:	690d0000 	bltu	$r0,$r0,68864(0x10d00) # 13168 <_start-0x1bfece98>
    246c:	066c0100 	0x066c0100
    2470:	00000069 	0x00000069
    2474:	000011f4 	clo.w	$r20,$r15
    2478:	000011f0 	clo.w	$r16,$r15
    247c:	0100760d 	0x0100760d
    2480:	0100086d 	0x0100086d
    2484:	12190000 	addu16i.d	$r0,$r0,-31168(0x8640)
    2488:	12130000 	addu16i.d	$r0,$r0,-31552(0x84c0)
    248c:	00100000 	add.w	$r0,$r0,$r0
    2490:	23000000 	sc.d	$r0,$r0,0
    2494:	0f000004 	0x0f000004
    2498:	89025401 	0x89025401
    249c:	0b000000 	0x0b000000
    24a0:	00000c88 	0x00000c88
    24a4:	69055b01 	bltu	$r24,$r1,66904(0x10558) # 129fc <_start-0x1bfed604>
    24a8:	00000000 	0x00000000
    24ac:	44000000 	bnez	$r0,0 # 24ac <_start-0x1bffdb54>
    24b0:	01000000 	0x01000000
    24b4:	0004649c 	alsl.w	$r28,$r4,$r25,0x1
    24b8:	75620c00 	0x75620c00
    24bc:	5b010066 	beq	$r3,$r6,-65280(0x30100) # ffff25bc <_RAM_DATA+0x7fff15bc>
    24c0:	00021320 	0x00021320
    24c4:	00124b00 	slt	$r0,$r24,$r18
    24c8:	00124300 	slt	$r0,$r24,$r16
    24cc:	00630d00 	bstrins.w	$r0,$r8,0x3,0x3
    24d0:	2c105c01 	vld	$vr1,$r0,1047(0x417)
    24d4:	87000000 	0x87000000
    24d8:	85000012 	0x85000012
    24dc:	00000012 	0x00000012
    24e0:	000ce10b 	bytepick.d	$r11,$r8,$r24,0x1
    24e4:	05520100 	0x05520100
    24e8:	00000069 	0x00000069
    24ec:	00000000 	0x00000000
    24f0:	0000001c 	0x0000001c
    24f4:	04939c01 	csrrd	$r1,0x24e7
    24f8:	620c0000 	blt	$r0,$r0,-128000(0x20c00) # fffe30f8 <_RAM_DATA+0x7ffe20f8>
    24fc:	01006675 	0x01006675
    2500:	02132452 	slti	$r18,$r2,1225(0x4c9)
    2504:	12a20000 	addu16i.d	$r0,$r0,-22400(0xa880)
    2508:	129a0000 	addu16i.d	$r0,$r0,-22912(0xa680)
    250c:	0b000000 	0x0b000000
    2510:	00000d32 	0x00000d32
    2514:	e8064b01 	0xe8064b01
    2518:	00000000 	0x00000000
    251c:	1c000000 	pcaddu12i	$r0,0
    2520:	01000000 	0x01000000
    2524:	0004c29c 	alsl.w	$r28,$r20,$r16,0x2
    2528:	75620c00 	0x75620c00
    252c:	4b010066 	bceqz	$fcc3,1769728(0x1b0100) # 1b262c <_start-0x1be4d9d4>
    2530:	00021325 	0x00021325
    2534:	0012e400 	sltu	$r0,$r0,$r25
    2538:	0012dc00 	sltu	$r0,$r0,$r23
    253c:	070b0000 	0x070b0000
    2540:	0100000c 	0x0100000c
    2544:	00d0083e 	bstrpick.d	$r30,$r1,0x10,0x2
    2548:	00000000 	0x00000000
    254c:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
    2550:	9c010000 	0x9c010000
    2554:	00000513 	0x00000513
    2558:	6675620c 	bge	$r16,$r12,-101024(0x27560) # fffe9ab8 <_RAM_DATA+0x7ffe8ab8>
    255c:	243e0100 	ldptr.w	$r0,$r8,15872(0x3e00)
    2560:	00000213 	0x00000213
    2564:	0000132c 	clo.w	$r12,$r25
    2568:	0000131e 	clo.w	$r30,$r24
    256c:	0100690d 	0x0100690d
    2570:	0069063f 	bstrins.w	$r31,$r17,0x9,0x1
    2574:	138e0000 	addu16i.d	$r0,$r0,-7296(0xe380)
    2578:	138a0000 	addu16i.d	$r0,$r0,-7552(0xe280)
    257c:	00100000 	add.w	$r0,$r0,$r0
    2580:	13000000 	addu16i.d	$r0,$r0,-16384(0xc000)
    2584:	0f000005 	0x0f000005
    2588:	87025401 	0x87025401
    258c:	0b000000 	0x0b000000
    2590:	00000cab 	0x00000cab
    2594:	d0083201 	0xd0083201
    2598:	00000000 	0x00000000
    259c:	20000000 	ll.w	$r0,$r0,0
    25a0:	01000000 	0x01000000
    25a4:	0005429c 	alsl.w	$r28,$r20,$r16,0x3
    25a8:	75620c00 	0x75620c00
    25ac:	32010066 	0x32010066
    25b0:	00021324 	0x00021324
    25b4:	0013b500 	masknez	$r0,$r8,$r13
    25b8:	0013ad00 	masknez	$r0,$r8,$r11
    25bc:	b80b0000 	0xb80b0000
    25c0:	0100000c 	0x0100000c
    25c4:	00d0081f 	bstrpick.d	$r31,$r0,0x10,0x2
    25c8:	00000000 	0x00000000
    25cc:	00440000 	0x00440000
    25d0:	9c010000 	0x9c010000
    25d4:	0000058c 	0x0000058c
    25d8:	6675620c 	bge	$r16,$r12,-101024(0x27560) # fffe9b38 <_RAM_DATA+0x7ffe8b38>
    25dc:	2a1f0100 	ld.bu	$r0,$r8,1984(0x7c0)
    25e0:	00000213 	0x00000213
    25e4:	000013ff 	clo.w	$r31,$r31
    25e8:	000013ef 	clo.w	$r15,$r31
    25ec:	00736312 	bstrins.w	$r18,$r24,0x13,0x18
    25f0:	6e3e1f01 	bgeu	$r24,$r1,-115172(0x23e1c) # fffe640c <_RAM_DATA+0x7ffe540c>
    25f4:	01000001 	0x01000001
    25f8:	0b0f1355 	0x0b0f1355
    25fc:	1f010000 	pcaddu18i	$r0,-522240(0x80800)
    2600:	00006946 	rdtime.d	$r6,$r10
    2604:	00560100 	0x00560100
    2608:	000b8214 	0x000b8214
    260c:	080c0100 	0x080c0100
    2610:	000000d0 	0x000000d0
    2614:	00000000 	0x00000000
    2618:	00000044 	0x00000044
    261c:	620c9c01 	blt	$r0,$r1,-127844(0x20c9c) # fffe32b8 <_RAM_DATA+0x7ffe22b8>
    2620:	01006675 	0x01006675
    2624:	0213220c 	slti	$r12,$r16,1224(0x4c8)
    2628:	147b0000 	lu12i.w	$r0,251904(0x3d800)
    262c:	146b0000 	lu12i.w	$r0,219136(0x35800)
    2630:	63120000 	blt	$r0,$r0,-60928(0x31200) # ffff3830 <_RAM_DATA+0x7fff2830>
    2634:	0c010073 	0x0c010073
    2638:	00016e36 	0x00016e36
    263c:	13550100 	addu16i.d	$r0,$r8,-10944(0xd540)
    2640:	00000d1a 	0x00000d1a
    2644:	693e0c01 	bltu	$r0,$r1,81420(0x13e0c) # 16450 <_start-0x1bfe9bb0>
    2648:	01000000 	0x01000000
    264c:	25000056 	stptr.w	$r22,$r2,0
    2650:	04000009 	csrrd	$r9,0x0
    2654:	000c0500 	bytepick.d	$r0,$r8,$r1,0x0
    2658:	9f010400 	0x9f010400
    265c:	0c000001 	0x0c000001
    2660:	00000d68 	0x00000d68
    2664:	00000056 	0x00000056
    2668:	00000288 	0x00000288
    266c:	00000000 	0x00000000
    2670:	000026b2 	clz.d	$r18,$r21
    2674:	72060102 	0x72060102
    2678:	02000002 	slti	$r2,$r0,0
    267c:	02700801 	sltui	$r1,$r0,-1022(0xc02)
    2680:	02020000 	slti	$r0,$r0,128(0x80)
    2684:	00027e05 	0x00027e05
    2688:	07020200 	0x07020200
    268c:	00000161 	0x00000161
    2690:	000e4503 	bytepick.d	$r3,$r8,$r17,0x4
    2694:	183f0200 	pcaddi	$r0,129040(0x1f810)
    2698:	0000004d 	0x0000004d
    269c:	01050402 	fmul.d	$f2,$f0,$f1
    26a0:	03000001 	lu52i.d	$r1,$r0,0
    26a4:	00000131 	0x00000131
    26a8:	60194102 	blt	$r8,$r2,6464(0x1940) # 3fe8 <_start-0x1bffc018>
    26ac:	02000000 	slti	$r0,$r0,0
    26b0:	00d40704 	bstrpick.d	$r4,$r24,0x14,0x1
    26b4:	08020000 	0x08020000
    26b8:	0000fc05 	0x0000fc05
    26bc:	07080200 	0x07080200
    26c0:	000000cf 	0x000000cf
    26c4:	69050404 	bltu	$r0,$r4,66820(0x10504) # 12bc8 <_start-0x1bfed438>
    26c8:	0500746e 	0x0500746e
    26cc:	00000075 	0x00000075
    26d0:	d9070402 	0xd9070402
    26d4:	03000000 	lu52i.d	$r0,$r0,0
    26d8:	00000e47 	0x00000e47
    26dc:	41131f03 	beqz	$r24,856860(0xd131c) # d39f8 <_start-0x1bf2c608>
    26e0:	03000000 	lu52i.d	$r0,$r0,0
    26e4:	00000133 	0x00000133
    26e8:	54142003 	bl	791584(0xc1420) # c3b08 <_start-0x1bf3c4f8>
    26ec:	05000000 	0x05000000
    26f0:	00000094 	0x00000094
    26f4:	6a040402 	bltu	$r0,$r2,-130044(0x20404) # fffe2af8 <_RAM_DATA+0x7ffe1af8>
    26f8:	02000002 	slti	$r2,$r0,0
    26fc:	02790601 	sltui	$r1,$r16,-447(0xe41)
    2700:	ac060000 	0xac060000
    2704:	07000000 	0x07000000
    2708:	000002a3 	0x000002a3
    270c:	94116904 	0x94116904
    2710:	07000000 	0x07000000
    2714:	00000114 	0x00000114
    2718:	94116b04 	0x94116b04
    271c:	07000000 	0x07000000
    2720:	00000259 	0x00000259
    2724:	750c6d04 	xvbitclr.b	$xr4,$xr8,$xr27
    2728:	08000000 	0x08000000
    272c:	00000dd0 	0x00000dd0
    2730:	810e2c01 	0x810e2c01
    2734:	05000000 	0x05000000
    2738:	00000003 	0x00000003
    273c:	0e280900 	0x0e280900
    2740:	01100000 	0x01100000
    2744:	01300f2e 	0x01300f2e
    2748:	f30a0000 	0xf30a0000
    274c:	0100000d 	0x0100000d
    2750:	01300e2f 	0x01300e2f
    2754:	0a000000 	0x0a000000
    2758:	00000e11 	0x00000e11
    275c:	52083001 	b	395312(0x60830) # 62f8c <_start-0x1bf9d074>
    2760:	04000001 	csrrd	$r1,0x0
    2764:	000d5c0a 	bytepick.d	$r10,$r0,$r23,0x2
    2768:	0e310100 	0x0e310100
    276c:	00000130 	0x00000130
    2770:	0e3a0a08 	0x0e3a0a08
    2774:	32010000 	0x32010000
    2778:	0001300e 	0x0001300e
    277c:	0b000c00 	0x0b000c00
    2780:	0000b304 	0x0000b304
    2784:	00750c00 	bstrins.w	$r0,$r0,0x15,0x3
    2788:	014a0000 	0x014a0000
    278c:	750d0000 	xvbitclr.w	$xr0,$xr0,$xr0
    2790:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
    2794:	0000014a 	0x0000014a
    2798:	50040b00 	b	-67107832(0xc000408) # fc002ba0 <_RAM_DATA+0x7c001ba0>
    279c:	0e000001 	0x0e000001
    27a0:	36040b04 	0x36040b04
    27a4:	0f000001 	0x0f000001
    27a8:	000000ee 	0x000000ee
    27ac:	00000168 	0x00000168
    27b0:	00008110 	0x00008110
    27b4:	11001d00 	addu16i.d	$r0,$r8,16391(0x4007)
    27b8:	00646d63 	bstrins.w	$r3,$r11,0x4,0x1b
    27bc:	58033301 	beq	$r24,$r1,816(0x330) # 2aec <_start-0x1bffd514>
    27c0:	05000001 	0x05000001
    27c4:	00000003 	0x00000003
    27c8:	01950f00 	0x01950f00
    27cc:	018a0000 	0x018a0000
    27d0:	81100000 	0x81100000
    27d4:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
    27d8:	017a0600 	0x017a0600
    27dc:	040b0000 	csrrd	$r0,0x2c0
    27e0:	0000019a 	0x0000019a
    27e4:	00018f06 	0x00018f06
    27e8:	4c081200 	jirl	$r0,$r16,2064(0x810)
    27ec:	0500000d 	0x0500000d
    27f0:	018a0f17 	0x018a0f17
    27f4:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    27f8:	00000000 	0x00000000
    27fc:	000ddb08 	bytepick.d	$r8,$r24,$r22,0x3
    2800:	0f3d0500 	0x0f3d0500
    2804:	0000018a 	0x0000018a
    2808:	26200305 	ldptr.d	$r5,$r24,8192(0x2000)
    280c:	62081c00 	blt	$r0,$r0,-128996(0x2081c) # fffe3028 <_RAM_DATA+0x7ffe2028>
    2810:	0500000d 	0x0500000d
    2814:	007c0e4e 	bstrins.w	$r14,$r18,0x1c,0x3
    2818:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    281c:	00000000 	0x00000000
    2820:	6d756e13 	bgeu	$r16,$r19,95596(0x1756c) # 19d8c <_start-0x1bfe6274>
    2824:	01d00100 	0x01d00100
    2828:	00007c0e 	0x00007c0e
    282c:	00030500 	0x00030500
    2830:	14000000 	lu12i.w	$r0,0
    2834:	00000dfb 	0x00000dfb
    2838:	06022301 	cacop	0x1,$r24,136(0x88)
    283c:	00000000 	0x00000000
    2840:	00000028 	0x00000028
    2844:	02059c01 	slti	$r1,$r0,359(0x167)
    2848:	00150000 	move	$r0,$r0
    284c:	e0000000 	0xe0000000
    2850:	00000008 	0x00000008
    2854:	000dc316 	bytepick.d	$r22,$r24,$r16,0x3
    2858:	01d20100 	0x01d20100
    285c:	00007505 	0x00007505
    2860:	0015bc00 	xor	$r0,$r0,$r15
    2864:	0000ec1c 	0x0000ec1c
    2868:	8a9c0100 	0x8a9c0100
    286c:	17000002 	lu32i.d	$r2,-524288(0x80000)
    2870:	03010061 	lu52i.d	$r1,$r3,64(0x40)
    2874:	00a01402 	bstrins.d	$r2,$r0,0x20,0x5
    2878:	91020000 	0x91020000
    287c:	6e63176c 	bgeu	$r27,$r12,-105708(0x26314) # fffe8b90 <_RAM_DATA+0x7ffe7b90>
    2880:	04010074 	csrxchg	$r20,$r3,0x40
    2884:	00a01402 	bstrins.d	$r2,$r0,0x20,0x5
    2888:	91020000 	0x91020000
    288c:	15c41868 	lu12i.w	$r8,-122685(0xe20c3)
    2890:	00281c00 	0x00281c00
    2894:	025f0000 	sltui	$r0,$r0,1984(0x7c0)
    2898:	64190000 	bge	$r0,$r0,6400(0x1900) # 4198 <_start-0x1bffbe68>
    289c:	01d30100 	0x01d30100
    28a0:	00008105 	0x00008105
    28a4:	0014ef00 	and	$r0,$r24,$r27
    28a8:	0014e700 	and	$r0,$r24,$r25
    28ac:	0c180000 	fcmp.cne.s	$fcc0,$f0,$f0
    28b0:	281c0016 	ld.b	$r22,$r0,1792(0x700)
    28b4:	80000000 	0x80000000
    28b8:	19000002 	pcaddi	$r2,-524288(0x80000)
    28bc:	02010064 	slti	$r4,$r3,64(0x40)
    28c0:	00810202 	bstrins.d	$r2,$r16,0x1,0x0
    28c4:	15300000 	lu12i.w	$r0,-425984(0x98000)
    28c8:	15280000 	lu12i.w	$r0,-442368(0x94000)
    28cc:	15000000 	lu12i.w	$r0,-524288(0x80000)
    28d0:	1c0015fc 	pcaddu12i	$r28,175(0xaf)
    28d4:	000008ec 	0x000008ec
    28d8:	0dbb1a00 	0x0dbb1a00
    28dc:	80010000 	0x80010000
    28e0:	00007505 	0x00007505
    28e4:	00000000 	0x00000000
    28e8:	00087800 	bytepick.w	$r0,$r0,$r30,0x0
    28ec:	1c9c0100 	pcaddu12i	$r0,319496(0x4e008)
    28f0:	1b000007 	pcalau12i	$r7,-524288(0x80000)
    28f4:	82010063 	0x82010063
    28f8:	0000ac07 	0x0000ac07
    28fc:	00158700 	xor	$r0,$r24,$r1
    2900:	00156900 	or	$r0,$r8,$r26
    2904:	0de91c00 	0x0de91c00
    2908:	83010000 	0x83010000
    290c:	00071c07 	alsl.wu	$r7,$r0,$r7,0x3
    2910:	90910300 	0x90910300
    2914:	0dc81c7f 	0x0dc81c7f
    2918:	84010000 	0x84010000
    291c:	00072c07 	alsl.wu	$r7,$r0,$r11,0x3
    2920:	a0910300 	0xa0910300
    2924:	706f1b7d 	0x706f1b7d
    2928:	08850100 	0x08850100
    292c:	00000152 	0x00000152
    2930:	00001638 	clz.w	$r24,$r17
    2934:	00001636 	clz.w	$r22,$r17
    2938:	01007011 	0x01007011
    293c:	07420886 	0x07420886
    2940:	91030000 	0x91030000
    2944:	331d7d80 	xvstelm.d	$xr0,$r12,760(0x2f8),0x3
    2948:	0100000e 	0x0100000e
    294c:	07520887 	0x07520887
    2950:	16650000 	lu32i.d	$r0,206848(0x32800)
    2954:	164b0000 	lu32i.d	$r0,153600(0x25800)
    2958:	631b0000 	blt	$r0,$r0,-58624(0x31b00) # ffff4458 <_RAM_DATA+0x7fff3458>
    295c:	88010070 	0x88010070
    2960:	00003308 	revb.2h	$r8,$r24
    2964:	00173200 	sll.w	$r0,$r16,$r12
    2968:	00171400 	sll.w	$r0,$r0,$r5
    296c:	00691b00 	bstrins.w	$r0,$r24,0x9,0x6
    2970:	330c8801 	0x330c8801
    2974:	32000000 	0x32000000
    2978:	e0000018 	0xe0000018
    297c:	1b000017 	pcalau12i	$r23,-524288(0x80000)
    2980:	8801006a 	0x8801006a
    2984:	0000330f 	revb.2h	$r15,$r24
    2988:	001a2d00 	0x001a2d00
    298c:	0019ff00 	sra.d	$r0,$r24,$r31
    2990:	006b1b00 	bstrins.w	$r0,$r24,0xb,0x6
    2994:	33128801 	xvstelm.d	$xr1,$r0,-752(0x510),0x0
    2998:	3b000000 	0x3b000000
    299c:	3500001b 	0x3500001b
    29a0:	1b00001b 	pcalau12i	$r27,-524288(0x80000)
    29a4:	006d756e 	bstrins.w	$r14,$r11,0xd,0x1d
    29a8:	33158801 	xvstelm.d	$xr1,$r0,784(0x310),0x1
    29ac:	6a000000 	bltu	$r0,$r0,-131072(0x20000) # fffe29ac <_RAM_DATA+0x7ffe19ac>
    29b0:	6400001b 	bge	$r0,$r27,0 # 29b0 <_start-0x1bffd650>
    29b4:	1b00001b 	pcalau12i	$r27,-524288(0x80000)
    29b8:	89010068 	0x89010068
    29bc:	00003308 	revb.2h	$r8,$r24
    29c0:	001ba900 	rotr.d	$r0,$r8,$r10
    29c4:	001b9300 	rotr.d	$r0,$r24,$r4
    29c8:	6d741b00 	bgeu	$r24,$r0,95256(0x17418) # 19de0 <_start-0x1bfe6220>
    29cc:	8a010070 	0x8a010070
    29d0:	00007506 	0x00007506
    29d4:	001c4100 	mul.w	$r0,$r8,$r16
    29d8:	001c2b00 	mul.w	$r0,$r24,$r10
    29dc:	0e561c00 	0x0e561c00
    29e0:	8b010000 	0x8b010000
    29e4:	00075807 	alsl.wu	$r7,$r0,$r22,0x3
    29e8:	f0910300 	0xf0910300
    29ec:	0a111e74 	xvfmadd.s	$xr20,$xr19,$xr7,$xr2
    29f0:	96010000 	0x96010000
    29f4:	00000001 	0x00000001
    29f8:	00001f00 	ctz.w	$r0,$r24
    29fc:	08f80000 	0x08f80000
    2a00:	03c10000 	xori	$r0,$r0,0x40
    2a04:	01200000 	0x01200000
    2a08:	00030554 	0x00030554
    2a0c:	00000000 	0x00000000
    2a10:	0000001f 	0x0000001f
    2a14:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2a18:	0003e000 	0x0003e000
    2a1c:	54012000 	bl	288(0x120) # 2b3c <_start-0x1bffd4c4>
    2a20:	8800910d 	0x8800910d
    2a24:	00892200 	bstrins.d	$r0,$r16,0x9,0x8
    2a28:	1c70081c 	pcaddu12i	$r28,229440(0x38040)
    2a2c:	1f000194 	pcaddu18i	$r20,-524276(0x8000c)
    2a30:	00000000 	0x00000000
    2a34:	00000904 	0x00000904
    2a38:	000003f3 	0x000003f3
    2a3c:	01540120 	0x01540120
    2a40:	001f0038 	mulw.d.w	$r24,$r1,$r0
    2a44:	04000000 	csrrd	$r0,0x0
    2a48:	07000009 	0x07000009
    2a4c:	20000004 	ll.w	$r4,$r0,0
    2a50:	08025401 	0x08025401
    2a54:	001f0020 	mulw.d.w	$r0,$r1,$r0
    2a58:	04000000 	csrrd	$r0,0x0
    2a5c:	1a000009 	pcalau12i	$r9,0
    2a60:	20000004 	ll.w	$r4,$r0,0
    2a64:	38015401 	0x38015401
    2a68:	00001500 	clz.w	$r0,$r8
    2a6c:	09040000 	0x09040000
    2a70:	001f0000 	mulw.d.w	$r0,$r0,$r0
    2a74:	04000000 	csrrd	$r0,0x0
    2a78:	36000009 	0x36000009
    2a7c:	20000004 	ll.w	$r4,$r0,0
    2a80:	38015401 	0x38015401
    2a84:	00001500 	clz.w	$r0,$r8
    2a88:	09040000 	0x09040000
    2a8c:	00150000 	move	$r0,$r0
    2a90:	10000000 	addu16i.d	$r0,$r0,0
    2a94:	15000009 	lu12i.w	$r9,-524288(0x80000)
    2a98:	00000000 	0x00000000
    2a9c:	00000910 	0x00000910
    2aa0:	00000015 	0x00000015
    2aa4:	00091000 	bytepick.w	$r0,$r0,$r4,0x2
    2aa8:	00001f00 	ctz.w	$r0,$r24
    2aac:	09040000 	0x09040000
    2ab0:	046d0000 	csrrd	$r0,0x1b40
    2ab4:	01200000 	0x01200000
    2ab8:	00380154 	0x00380154
    2abc:	0000001f 	0x0000001f
    2ac0:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2ac4:	00048100 	alsl.w	$r0,$r8,$r0,0x2
    2ac8:	54012000 	bl	288(0x120) # 2be8 <_start-0x1bffd418>
    2acc:	00200802 	div.w	$r2,$r0,$r2
    2ad0:	0000001f 	0x0000001f
    2ad4:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2ad8:	00049400 	alsl.w	$r0,$r0,$r5,0x2
    2adc:	54012000 	bl	288(0x120) # 2bfc <_start-0x1bffd404>
    2ae0:	1f003801 	pcaddu18i	$r1,-523840(0x801c0)
    2ae4:	00000000 	0x00000000
    2ae8:	00000904 	0x00000904
    2aec:	000004b3 	0x000004b3
    2af0:	0d540120 	vshuf.b	$vr0,$vr9,$vr0,$vr8
    2af4:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    2af8:	1c008922 	pcaddu12i	$r2,1097(0x449)
    2afc:	941c7008 	0x941c7008
    2b00:	001f0001 	mulw.d.w	$r1,$r0,$r0
    2b04:	04000000 	csrrd	$r0,0x0
    2b08:	c6000009 	0xc6000009
    2b0c:	20000004 	ll.w	$r4,$r0,0
    2b10:	38015401 	0x38015401
    2b14:	00001f00 	ctz.w	$r0,$r24
    2b18:	09040000 	0x09040000
    2b1c:	04da0000 	csrrd	$r0,0x3680
    2b20:	01200000 	0x01200000
    2b24:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2b28:	00001f00 	ctz.w	$r0,$r24
    2b2c:	09040000 	0x09040000
    2b30:	04ed0000 	csrrd	$r0,0x3b40
    2b34:	01200000 	0x01200000
    2b38:	00380154 	0x00380154
    2b3c:	00000015 	0x00000015
    2b40:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2b44:	00001f00 	ctz.w	$r0,$r24
    2b48:	09040000 	0x09040000
    2b4c:	05090000 	0x05090000
    2b50:	01200000 	0x01200000
    2b54:	00380154 	0x00380154
    2b58:	0000001f 	0x0000001f
    2b5c:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2b60:	00051c00 	alsl.w	$r0,$r0,$r7,0x3
    2b64:	54012000 	bl	288(0x120) # 2c84 <_start-0x1bffd37c>
    2b68:	1f003801 	pcaddu18i	$r1,-523840(0x801c0)
    2b6c:	00000000 	0x00000000
    2b70:	00000904 	0x00000904
    2b74:	0000053b 	0x0000053b
    2b78:	0d540120 	vshuf.b	$vr0,$vr9,$vr0,$vr8
    2b7c:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    2b80:	1c008a22 	pcaddu12i	$r2,1105(0x451)
    2b84:	941c7008 	0x941c7008
    2b88:	001f0001 	mulw.d.w	$r1,$r0,$r0
    2b8c:	04000000 	csrrd	$r0,0x0
    2b90:	4e000009 	jirl	$r9,$r0,-131072(0x20000)
    2b94:	20000005 	ll.w	$r5,$r0,0
    2b98:	38015401 	0x38015401
    2b9c:	00001f00 	ctz.w	$r0,$r24
    2ba0:	09040000 	0x09040000
    2ba4:	05620000 	0x05620000
    2ba8:	01200000 	0x01200000
    2bac:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2bb0:	00001f00 	ctz.w	$r0,$r24
    2bb4:	09040000 	0x09040000
    2bb8:	05750000 	0x05750000
    2bbc:	01200000 	0x01200000
    2bc0:	00380154 	0x00380154
    2bc4:	0000001f 	0x0000001f
    2bc8:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2bcc:	00058800 	alsl.w	$r0,$r0,$r2,0x4
    2bd0:	54012000 	bl	288(0x120) # 2cf0 <_start-0x1bffd310>
    2bd4:	1f003801 	pcaddu18i	$r1,-523840(0x801c0)
    2bd8:	00000000 	0x00000000
    2bdc:	00000904 	0x00000904
    2be0:	0000059c 	0x0000059c
    2be4:	02540120 	sltui	$r0,$r9,1280(0x500)
    2be8:	1f002008 	pcaddu18i	$r8,-524032(0x80100)
    2bec:	00000000 	0x00000000
    2bf0:	00000904 	0x00000904
    2bf4:	000005af 	0x000005af
    2bf8:	01540120 	0x01540120
    2bfc:	001f0038 	mulw.d.w	$r24,$r1,$r0
    2c00:	04000000 	csrrd	$r0,0x0
    2c04:	cb000009 	0xcb000009
    2c08:	20000005 	ll.w	$r5,$r0,0
    2c0c:	910a5401 	0x910a5401
    2c10:	22008800 	ll.d	$r0,$r0,136(0x88)
    2c14:	941c7008 	0x941c7008
    2c18:	001f0001 	mulw.d.w	$r1,$r0,$r0
    2c1c:	04000000 	csrrd	$r0,0x0
    2c20:	ea000009 	0xea000009
    2c24:	20000005 	ll.w	$r5,$r0,0
    2c28:	910d5401 	0x910d5401
    2c2c:	22008800 	ll.d	$r0,$r0,136(0x88)
    2c30:	081c008a 	fmadd.s	$f10,$f4,$f0,$f24
    2c34:	01941c70 	0x01941c70
    2c38:	00001f00 	ctz.w	$r0,$r24
    2c3c:	09040000 	0x09040000
    2c40:	06090000 	cacop	0x0,$r0,576(0x240)
    2c44:	01200000 	0x01200000
    2c48:	00910d54 	bstrins.d	$r20,$r10,0x11,0x3
    2c4c:	8a220088 	0x8a220088
    2c50:	70081c00 	vslt.bu	$vr0,$vr0,$vr7
    2c54:	0001941c 	0x0001941c
    2c58:	0000001f 	0x0000001f
    2c5c:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2c60:	00061c00 	alsl.wu	$r0,$r0,$r7,0x1
    2c64:	54012000 	bl	288(0x120) # 2d84 <_start-0x1bffd27c>
    2c68:	1f003801 	pcaddu18i	$r1,-523840(0x801c0)
    2c6c:	00000000 	0x00000000
    2c70:	00000904 	0x00000904
    2c74:	00000630 	0x00000630
    2c78:	02540120 	sltui	$r0,$r9,1280(0x500)
    2c7c:	1f002008 	pcaddu18i	$r8,-524032(0x80100)
    2c80:	00000000 	0x00000000
    2c84:	00000904 	0x00000904
    2c88:	00000643 	0x00000643
    2c8c:	01540120 	0x01540120
    2c90:	001f0038 	mulw.d.w	$r24,$r1,$r0
    2c94:	04000000 	csrrd	$r0,0x0
    2c98:	56000009 	bl	2490368(0x260000) # 262c98 <_start-0x1bd9d368>
    2c9c:	20000006 	ll.w	$r6,$r0,0
    2ca0:	38015401 	0x38015401
    2ca4:	00001f00 	ctz.w	$r0,$r24
    2ca8:	09040000 	0x09040000
    2cac:	066a0000 	0x066a0000
    2cb0:	01200000 	0x01200000
    2cb4:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2cb8:	00001f00 	ctz.w	$r0,$r24
    2cbc:	09040000 	0x09040000
    2cc0:	067d0000 	0x067d0000
    2cc4:	01200000 	0x01200000
    2cc8:	00380154 	0x00380154
    2ccc:	0000001f 	0x0000001f
    2cd0:	00090400 	bytepick.w	$r0,$r0,$r1,0x2
    2cd4:	00069900 	alsl.wu	$r0,$r8,$r6,0x2
    2cd8:	54012000 	bl	288(0x120) # 2df8 <_start-0x1bffd208>
    2cdc:	8800910a 	0x8800910a
    2ce0:	70082200 	vslt.bu	$vr0,$vr16,$vr8
    2ce4:	0001941c 	0x0001941c
    2ce8:	0000001f 	0x0000001f
    2cec:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    2cf0:	0006ae00 	alsl.wu	$r0,$r16,$r11,0x2
    2cf4:	54012000 	bl	288(0x120) # 2e14 <_start-0x1bffd1ec>
    2cf8:	7da09103 	0x7da09103
    2cfc:	00001f00 	ctz.w	$r0,$r24
    2d00:	091c0000 	vfmadd.s	$vr0,$vr0,$vr0,$vr24
    2d04:	06c50000 	0x06c50000
    2d08:	01200000 	0x01200000
    2d0c:	00030554 	0x00030554
    2d10:	00000000 	0x00000000
    2d14:	0000001f 	0x0000001f
    2d18:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    2d1c:	0006da00 	alsl.wu	$r0,$r16,$r22,0x2
    2d20:	54012000 	bl	288(0x120) # 2e40 <_start-0x1bffd1c0>
    2d24:	7da09103 	0x7da09103
    2d28:	00002100 	clo.d	$r0,$r8
    2d2c:	06f10000 	0x06f10000
    2d30:	01200000 	0x01200000
    2d34:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
    2d38:	03550120 	andi	$r0,$r9,0x540
    2d3c:	007d8091 	bstrpick.w	$r17,$r4,0x1d,0x0
    2d40:	0000001f 	0x0000001f
    2d44:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    2d48:	00070800 	alsl.wu	$r0,$r0,$r2,0x3
    2d4c:	54012000 	bl	288(0x120) # 2e6c <_start-0x1bffd194>
    2d50:	00000305 	0x00000305
    2d54:	22000000 	ll.d	$r0,$r0,0
    2d58:	00000000 	0x00000000
    2d5c:	000008f8 	0x000008f8
    2d60:	05540120 	0x05540120
    2d64:	00000003 	0x00000003
    2d68:	0f000000 	0x0f000000
    2d6c:	000000ac 	0x000000ac
    2d70:	0000072c 	0x0000072c
    2d74:	00008110 	0x00008110
    2d78:	0f004f00 	0x0f004f00
    2d7c:	000000ac 	0x000000ac
    2d80:	00000742 	0x00000742
    2d84:	00008110 	0x00008110
    2d88:	81100700 	0x81100700
    2d8c:	1d000000 	pcaddu12i	$r0,-524288(0x80000)
    2d90:	07520f00 	0x07520f00
    2d94:	07520000 	0x07520000
    2d98:	81100000 	0x81100000
    2d9c:	07000000 	0x07000000
    2da0:	ac040b00 	0xac040b00
    2da4:	0f000000 	0x0f000000
    2da8:	000000ac 	0x000000ac
    2dac:	0000076e 	0x0000076e
    2db0:	00008110 	0x00008110
    2db4:	81100c00 	0x81100c00
    2db8:	4f000000 	jirl	$r0,$r0,-65536(0x30000)
    2dbc:	0e091a00 	0x0e091a00
    2dc0:	59010000 	beq	$r0,$r0,65792(0x10100) # 12ec0 <_start-0x1bfed140>
    2dc4:	00007505 	0x00007505
    2dc8:	00000000 	0x00000000
    2dcc:	00014000 	asrtle.d	$r0,$r16
    2dd0:	a39c0100 	0xa39c0100
    2dd4:	23000008 	sc.d	$r8,$r0,0
    2dd8:	00000e16 	0x00000e16
    2ddc:	75115901 	xvbitrev.w	$xr1,$xr8,$xr22
    2de0:	cf000000 	0xcf000000
    2de4:	c300001c 	0xc300001c
    2de8:	2300001c 	sc.d	$r28,$r0,0
    2dec:	00000e1b 	0x00000e1b
    2df0:	4a1d5901 	bcnez	$fcc0,400728(0x61d58) # 64b48 <_start-0x1bf9b4b8>
    2df4:	2e000001 	0x2e000001
    2df8:	2200001d 	ll.d	$r29,$r0,0
    2dfc:	1b00001d 	pcalau12i	$r29,-524288(0x80000)
    2e00:	5b010069 	beq	$r3,$r9,-65280(0x30100) # ffff2f00 <_RAM_DATA+0x7fff1f00>
    2e04:	0000810f 	0x0000810f
    2e08:	001d8d00 	mul.d	$r0,$r8,$r3
    2e0c:	001d8100 	mul.d	$r0,$r8,$r0
    2e10:	00731b00 	bstrins.w	$r0,$r24,0x13,0x6
    2e14:	52085c01 	b	395356(0x6085c) # 63670 <_start-0x1bf9c990>
    2e18:	dd000007 	0xdd000007
    2e1c:	db00001d 	0xdb00001d
    2e20:	1f00001d 	pcaddu18i	$r29,-524288(0x80000)
    2e24:	00000000 	0x00000000
    2e28:	000008f8 	0x000008f8
    2e2c:	000007eb 	0x000007eb
    2e30:	05540120 	0x05540120
    2e34:	00000003 	0x00000003
    2e38:	001f0000 	mulw.d.w	$r0,$r0,$r0
    2e3c:	f8000000 	0xf8000000
    2e40:	02000008 	slti	$r8,$r0,0
    2e44:	20000008 	ll.w	$r8,$r0,0
    2e48:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2e4c:	00000000 	0x00000000
    2e50:	00001f00 	ctz.w	$r0,$r24
    2e54:	091c0000 	vfmadd.s	$vr0,$vr0,$vr0,$vr24
    2e58:	08190000 	fmadd.s	$f0,$f0,$f0,$f18
    2e5c:	01200000 	0x01200000
    2e60:	00030554 	0x00030554
    2e64:	00000000 	0x00000000
    2e68:	0000001f 	0x0000001f
    2e6c:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
    2e70:	00083600 	bytepick.w	$r0,$r16,$r13,0x0
    2e74:	54012000 	bl	288(0x120) # 2f94 <_start-0x1bffd06c>
    2e78:	00000305 	0x00000305
    2e7c:	01200000 	0x01200000
    2e80:	00880255 	bstrins.d	$r21,$r18,0x8,0x0
    2e84:	00001f00 	ctz.w	$r0,$r24
    2e88:	091c0000 	vfmadd.s	$vr0,$vr0,$vr0,$vr24
    2e8c:	084d0000 	0x084d0000
    2e90:	01200000 	0x01200000
    2e94:	00030554 	0x00030554
    2e98:	00000000 	0x00000000
    2e9c:	0000001f 	0x0000001f
    2ea0:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    2ea4:	00086100 	bytepick.w	$r0,$r8,$r24,0x0
    2ea8:	54012000 	bl	288(0x120) # 2fc8 <_start-0x1bffd038>
    2eac:	00008802 	0x00008802
    2eb0:	0000001f 	0x0000001f
    2eb4:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
    2eb8:	00087800 	bytepick.w	$r0,$r0,$r30,0x0
    2ebc:	54012000 	bl	288(0x120) # 2fdc <_start-0x1bffd024>
    2ec0:	00000305 	0x00000305
    2ec4:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
    2ec8:	00000000 	0x00000000
    2ecc:	0000091c 	0x0000091c
    2ed0:	0000088f 	0x0000088f
    2ed4:	05540120 	0x05540120
    2ed8:	00000003 	0x00000003
    2edc:	00220000 	div.d	$r0,$r0,$r0
    2ee0:	f8000000 	0xf8000000
    2ee4:	20000008 	ll.w	$r8,$r0,0
    2ee8:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2eec:	00000000 	0x00000000
    2ef0:	201a0000 	ll.w	$r0,$r0,6656(0x1a00)
    2ef4:	0100000e 	0x0100000e
    2ef8:	00750555 	bstrins.w	$r21,$r10,0x15,0x1
    2efc:	00000000 	0x00000000
    2f00:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    2f04:	9c010000 	0x9c010000
    2f08:	000008e0 	0x000008e0
    2f0c:	000e1623 	bytepick.d	$r3,$r17,$r5,0x4
    2f10:	11550100 	addu16i.d	$r0,$r8,21824(0x5540)
    2f14:	00000075 	0x00000075
    2f18:	00001df4 	ctz.w	$r20,$r15
    2f1c:	00001df0 	ctz.w	$r16,$r15
    2f20:	000e1b24 	bytepick.d	$r4,$r25,$r6,0x4
    2f24:	1d550100 	pcaddu12i	$r0,-350200(0xaa808)
    2f28:	0000014a 	0x0000014a
    2f2c:	25005501 	stptr.w	$r1,$r8,84(0x54)
    2f30:	00000e62 	0x00000e62
    2f34:	00000e62 	0x00000e62
    2f38:	25061206 	stptr.w	$r6,$r16,1552(0x610)
    2f3c:	000005a8 	0x000005a8
    2f40:	000005a8 	0x000005a8
    2f44:	25060707 	stptr.w	$r7,$r24,1540(0x604)
    2f48:	00000142 	0x00000142
    2f4c:	00000142 	0x00000142
    2f50:	25050d08 	stptr.w	$r8,$r8,1292(0x50c)
    2f54:	00000189 	0x00000189
    2f58:	00000189 	0x00000189
    2f5c:	25060e08 	stptr.w	$r8,$r16,1548(0x60c)
    2f60:	0000010a 	0x0000010a
    2f64:	0000010a 	0x0000010a
    2f68:	25090f08 	stptr.w	$r8,$r24,2316(0x90c)
    2f6c:	00000e4f 	0x00000e4f
    2f70:	00000e4f 	0x00000e4f
    2f74:	00050a09 	alsl.w	$r9,$r16,$r2,0x3
    2f78:	00001237 	clo.w	$r23,$r17
    2f7c:	0e350004 	0x0e350004
    2f80:	01040000 	0x01040000
    2f84:	0000019f 	0x0000019f
    2f88:	000ecf0c 	bytepick.d	$r12,$r24,$r19,0x5
    2f8c:	00005600 	bitrev.d	$r0,$r16
    2f90:	0002b800 	0x0002b800
    2f94:	00000000 	0x00000000
    2f98:	0032b100 	0x0032b100
    2f9c:	06010200 	cacop	0x0,$r16,64(0x40)
    2fa0:	00000272 	0x00000272
    2fa4:	0000c503 	0x0000c503
    2fa8:	181d0200 	pcaddi	$r0,59408(0xe810)
    2fac:	00000038 	0x00000038
    2fb0:	70080102 	vslt.bu	$vr2,$vr8,$vr0
    2fb4:	02000002 	slti	$r2,$r0,0
    2fb8:	027e0502 	sltui	$r2,$r8,-127(0xf81)
    2fbc:	02020000 	slti	$r0,$r0,128(0x80)
    2fc0:	00016107 	0x00016107
    2fc4:	05040200 	0x05040200
    2fc8:	00000101 	0x00000101
    2fcc:	00013103 	0x00013103
    2fd0:	19410200 	pcaddi	$r0,-391152(0xa0810)
    2fd4:	00000060 	0x00000060
    2fd8:	d4070402 	0xd4070402
    2fdc:	02000000 	slti	$r0,$r0,0
    2fe0:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
    2fe4:	08020000 	0x08020000
    2fe8:	0000cf07 	0x0000cf07
    2fec:	05040400 	0x05040400
    2ff0:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
    2ff4:	00007505 	0x00007505
    2ff8:	07040200 	0x07040200
    2ffc:	000000d9 	0x000000d9
    3000:	0000c703 	0x0000c703
    3004:	13140300 	addu16i.d	$r0,$r24,-15104(0xc500)
    3008:	0000002c 	0x0000002c
    300c:	00013303 	0x00013303
    3010:	14200300 	lu12i.w	$r0,65560(0x10018)
    3014:	00000054 	0x00000054
    3018:	00063803 	alsl.wu	$r3,$r0,$r14,0x1
    301c:	17170400 	lu32i.d	$r0,-477152(0x8b820)
    3020:	00000038 	0x00000038
    3024:	000ea903 	bytepick.d	$r3,$r8,$r10,0x5
    3028:	18190400 	pcaddi	$r0,51232(0xc820)
    302c:	00000046 	0x00000046
    3030:	0005a103 	alsl.w	$r3,$r8,$r8,0x4
    3034:	161b0400 	lu32i.d	$r0,55328(0xd820)
    3038:	00000081 	0x00000081
    303c:	6a040402 	bltu	$r0,$r2,-130044(0x20404) # fffe3440 <_RAM_DATA+0x7ffe2440>
    3040:	02000002 	slti	$r2,$r0,0
    3044:	02790601 	sltui	$r1,$r16,-447(0xe41)
    3048:	cb060000 	0xcb060000
    304c:	07000000 	0x07000000
    3050:	000002a3 	0x000002a3
    3054:	94116904 	0x94116904
    3058:	07000000 	0x07000000
    305c:	00000114 	0x00000114
    3060:	94116b04 	0x94116b04
    3064:	07000000 	0x07000000
    3068:	00000259 	0x00000259
    306c:	750c6d04 	xvbitclr.b	$xr4,$xr8,$xr27
    3070:	08000000 	0x08000000
    3074:	01120510 	0x01120510
    3078:	00013e09 	0x00013e09
    307c:	06b80900 	0x06b80900
    3080:	14050000 	lu12i.w	$r0,10240(0x2800)
    3084:	00940c01 	bstrins.d	$r1,$r0,0x14,0x3
    3088:	09000000 	0x09000000
    308c:	000007e3 	0x000007e3
    3090:	0c011505 	0x0c011505
    3094:	00000094 	0x00000094
    3098:	06930904 	0x06930904
    309c:	16050000 	lu32i.d	$r0,10240(0x2800)
    30a0:	00940c01 	bstrins.d	$r1,$r0,0x14,0x3
    30a4:	09080000 	0x09080000
    30a8:	000006fe 	0x000006fe
    30ac:	0c011705 	0x0c011705
    30b0:	00000094 	0x00000094
    30b4:	c10a000c 	0xc10a000c
    30b8:	05000006 	0x05000006
    30bc:	fb030118 	0xfb030118
    30c0:	0b000000 	0x0b000000
    30c4:	00000166 	0x00000166
    30c8:	0000015b 	0x0000015b
    30cc:	0000810c 	0x0000810c
    30d0:	06001f00 	cacop	0x0,$r24,7(0x7)
    30d4:	0000014b 	0x0000014b
    30d8:	016b040d 	0x016b040d
    30dc:	60060000 	blt	$r0,$r0,1536(0x600) # 36dc <_start-0x1bffc924>
    30e0:	0e000001 	0x0e000001
    30e4:	000d4c0f 	bytepick.d	$r15,$r0,$r19,0x2
    30e8:	0f170600 	0x0f170600
    30ec:	0000015b 	0x0000015b
    30f0:	00000305 	0x00000305
    30f4:	db0f0000 	0xdb0f0000
    30f8:	0600000d 	cacop	0xd,$r0,0
    30fc:	015b0f3d 	0x015b0f3d
    3100:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3104:	1c002620 	pcaddu12i	$r0,305(0x131)
    3108:	000d620f 	bytepick.d	$r15,$r16,$r24,0x2
    310c:	0e4e0600 	0x0e4e0600
    3110:	0000007c 	0x0000007c
    3114:	00000305 	0x00000305
    3118:	d9100000 	0xd9100000
    311c:	0100000f 	0x0100000f
    3120:	b4060186 	0xb4060186
    3124:	281c0020 	ld.b	$r0,$r1,1792(0x700)
    3128:	01000000 	0x01000000
    312c:	0001e39c 	0x0001e39c
    3130:	20c01100 	ll.w	$r0,$r8,-16368(0xc010)
    3134:	11c11c00 	addu16i.d	$r0,$r0,28743(0x7047)
    3138:	cc120000 	0xcc120000
    313c:	cd1c0020 	0xcd1c0020
    3140:	d9000011 	0xd9000011
    3144:	13000001 	addu16i.d	$r1,$r0,-16384(0xc000)
    3148:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    314c:	1c0022f4 	pcaddu12i	$r20,279(0x117)
    3150:	20d01100 	ll.w	$r0,$r8,-12272(0xd010)
    3154:	11d91c00 	addu16i.d	$r0,$r0,30279(0x7647)
    3158:	10000000 	addu16i.d	$r0,$r0,0
    315c:	0000122b 	clo.w	$r11,$r17
    3160:	06016501 	cacop	0x1,$r8,89(0x59)
    3164:	1c001fec 	pcaddu12i	$r12,255(0xff)
    3168:	000000c8 	0x000000c8
    316c:	02c29c01 	addi.d	$r1,$r0,167(0xa7)
    3170:	68140000 	bltu	$r0,$r0,5120(0x1400) # 4570 <_start-0x1bffba90>
    3174:	01000012 	0x01000012
    3178:	a0080168 	0xa0080168
    317c:	19000000 	pcaddi	$r0,-524288(0x80000)
    3180:	1500001e 	lu12i.w	$r30,-524288(0x80000)
    3184:	1500001e 	lu12i.w	$r30,-524288(0x80000)
    3188:	1c002064 	pcaddu12i	$r4,259(0x103)
    318c:	0000002c 	0x0000002c
    3190:	00000245 	0x00000245
    3194:	72686316 	0x72686316
    3198:	01740100 	0x01740100
    319c:	0000880e 	0x0000880e
    31a0:	001e3900 	mulh.d	$r0,$r8,$r14
    31a4:	001e3700 	mulh.d	$r0,$r24,$r13
    31a8:	207c1700 	ll.w	$r0,$r24,31764(0x7c14)
    31ac:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    31b0:	01130000 	fcopysign.d	$f0,$f0,$f0
    31b4:	e0030554 	0xe0030554
    31b8:	001c0022 	mul.w	$r2,$r1,$r0
    31bc:	20901500 	ll.w	$r0,$r8,-28652(0x9014)
    31c0:	00241c00 	crc.w.b.w	$r0,$r0,$r7
    31c4:	02840000 	addi.w	$r0,$r0,256(0x100)
    31c8:	63160000 	blt	$r0,$r0,-59904(0x31600) # ffff47c8 <_RAM_DATA+0x7fff37c8>
    31cc:	01007268 	0x01007268
    31d0:	880e017c 	0x880e017c
    31d4:	4e000000 	jirl	$r0,$r0,-131072(0x20000)
    31d8:	4c00001e 	jirl	$r30,$r0,0
    31dc:	1800001e 	pcaddi	$r30,0
    31e0:	00000beb 	0x00000beb
    31e4:	06017e01 	cacop	0x1,$r16,95(0x5f)
    31e8:	00000075 	0x00000075
    31ec:	0000027a 	0x0000027a
    31f0:	a0110019 	0xa0110019
    31f4:	e51c0020 	0xe51c0020
    31f8:	00000011 	0x00000011
    31fc:	00204812 	div.w	$r18,$r0,$r18
    3200:	0011f21c 	sub.d	$r28,$r16,$r28
    3204:	00029900 	0x00029900
    3208:	54011300 	bl	-67108592(0xc000110) # fc003318 <_RAM_DATA+0x7c002318>
    320c:	01000a03 	0x01000a03
    3210:	20541200 	ll.w	$r0,$r16,21520(0x5410)
    3214:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3218:	02ae0000 	addi.w	$r0,$r0,-1152(0xb80)
    321c:	01130000 	fcopysign.d	$f0,$f0,$f0
    3220:	000a0354 	0x000a0354
    3224:	60170001 	blt	$r0,$r1,5888(0x1700) # 4924 <_start-0x1bffb6dc>
    3228:	cd1c0020 	0xcd1c0020
    322c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3230:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3234:	1c0022b8 	pcaddu12i	$r24,277(0x115)
    3238:	bc100000 	0xbc100000
    323c:	0100000e 	0x0100000e
    3240:	5c060145 	bne	$r10,$r5,1536(0x600) # 3840 <_start-0x1bffc7c0>
    3244:	901c001f 	0x901c001f
    3248:	01000000 	0x01000000
    324c:	0003199c 	0x0003199c
    3250:	6d741600 	bgeu	$r16,$r0,95252(0x17414) # 1a664 <_start-0x1bfe599c>
    3254:	47010070 	bnez	$r3,-3997440(0x430100) # ffc33354 <_RAM_DATA+0x7fc32354>
    3258:	00940e01 	bstrins.d	$r1,$r16,0x14,0x3
    325c:	1e670000 	pcaddu18i	$r0,210944(0x33800)
    3260:	1e610000 	pcaddu18i	$r0,198656(0x30800)
    3264:	b0120000 	0xb0120000
    3268:	cd1c001f 	0xcd1c001f
    326c:	05000011 	0x05000011
    3270:	13000003 	addu16i.d	$r3,$r0,-16384(0xc000)
    3274:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3278:	1c00226c 	pcaddu12i	$r12,275(0x113)
    327c:	1fcc1700 	pcaddu18i	$r0,-106312(0xe60b8)
    3280:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3284:	01130000 	fcopysign.d	$f0,$f0,$f0
    3288:	94030554 	0x94030554
    328c:	001c0022 	mul.w	$r2,$r1,$r0
    3290:	0ec51000 	0x0ec51000
    3294:	37010000 	0x37010000
    3298:	1f3c0601 	pcaddu18i	$r1,-401360(0x9e030)
    329c:	00201c00 	div.w	$r0,$r0,$r7
    32a0:	9c010000 	0x9c010000
    32a4:	0000033e 	0x0000033e
    32a8:	000f6a1a 	bytepick.d	$r26,$r16,$r26,0x6
    32ac:	013a0100 	0x013a0100
    32b0:	0000a008 	0x0000a008
    32b4:	b0100000 	0xb0100000
    32b8:	0100000e 	0x0100000e
    32bc:	f006011f 	0xf006011f
    32c0:	4c1c001e 	jirl	$r30,$r0,7168(0x1c00)
    32c4:	01000000 	0x01000000
    32c8:	0003969c 	0x0003969c
    32cc:	00691b00 	bstrins.w	$r0,$r24,0x9,0x6
    32d0:	0b012101 	0x0b012101
    32d4:	000000a0 	0x000000a0
    32d8:	000fef14 	bytepick.d	$r20,$r24,$r27,0x7
    32dc:	01220100 	0x01220100
    32e0:	0000ac0c 	0x0000ac0c
    32e4:	001e9200 	mulh.du	$r0,$r16,$r4
    32e8:	001e9000 	mulh.du	$r0,$r0,$r4
    32ec:	0fe71a00 	0x0fe71a00
    32f0:	23010000 	sc.d	$r0,$r0,256(0x100)
    32f4:	00a00b01 	bstrins.d	$r1,$r24,0x20,0x2
    32f8:	30170000 	vldrepl.d	$vr0,$r0,-512(0xe00)
    32fc:	cd1c001f 	0xcd1c001f
    3300:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3304:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3308:	1c00224c 	pcaddu12i	$r12,274(0x112)
    330c:	d4100000 	0xd4100000
    3310:	01000011 	0x01000011
    3314:	c006010e 	0xc006010e
    3318:	301c001e 	0x301c001e
    331c:	01000000 	0x01000000
    3320:	0003c69c 	0x0003c69c
    3324:	11c01c00 	addu16i.d	$r0,$r0,28679(0x7007)
    3328:	12010000 	addu16i.d	$r0,$r0,-32704(0x8040)
    332c:	00b80901 	bstrins.d	$r1,$r8,0x38,0x2
    3330:	5c010000 	bne	$r0,$r0,256(0x100) # 3430 <_start-0x1bffcbd0>
    3334:	001ee411 	mulh.du	$r17,$r0,$r25
    3338:	00120a1c 	slt	$r28,$r16,$r2
    333c:	f31d0000 	0xf31d0000
    3340:	01000010 	0x01000010
    3344:	000006ff 	0x000006ff
    3348:	00340000 	0x00340000
    334c:	9c010000 	0x9c010000
    3350:	000003f9 	0x000003f9
    3354:	00000011 	0x00000011
    3358:	0011c100 	sub.d	$r0,$r8,$r16
    335c:	00001700 	clz.w	$r0,$r24
    3360:	12160000 	addu16i.d	$r0,$r0,-31360(0x8580)
    3364:	01130000 	fcopysign.d	$f0,$f0,$f0
    3368:	800c0554 	0x800c0554
    336c:	00000138 	0x00000138
    3370:	10721d00 	addu16i.d	$r0,$r8,7303(0x1c87)
    3374:	f1010000 	0xf1010000
    3378:	00000006 	0x00000006
    337c:	00002400 	clz.d	$r0,$r0
    3380:	309c0100 	vldrepl.b	$vr0,$r8,1792(0x700)
    3384:	12000004 	addu16i.d	$r4,$r0,-32768(0x8000)
    3388:	00000000 	0x00000000
    338c:	000011cd 	clo.w	$r13,$r14
    3390:	00000426 	0x00000426
    3394:	05540113 	0x05540113
    3398:	00000003 	0x00000003
    339c:	00110000 	sub.w	$r0,$r0,$r0
    33a0:	22000000 	ll.d	$r0,$r0,0
    33a4:	00000012 	0x00000012
    33a8:	0011c81d 	sub.d	$r29,$r0,$r18
    33ac:	06dc0100 	0x06dc0100
    33b0:	1c001e28 	pcaddu12i	$r8,241(0xf1)
    33b4:	00000098 	0x00000098
    33b8:	04c99c01 	csrrd	$r1,0x3267
    33bc:	721e0000 	0x721e0000
    33c0:	0100000f 	0x0100000f
    33c4:	00b809df 	bstrins.d	$r31,$r14,0x38,0x2
    33c8:	1eaf0000 	pcaddu18i	$r0,358400(0x57800)
    33cc:	1ead0000 	pcaddu18i	$r0,354304(0x56800)
    33d0:	b61e0000 	0xb61e0000
    33d4:	0100000e 	0x0100000e
    33d8:	00b809e0 	bstrins.d	$r0,$r15,0x38,0x2
    33dc:	1ec40000 	pcaddu18i	$r0,401408(0x62000)
    33e0:	1ec20000 	pcaddu18i	$r0,397312(0x61000)
    33e4:	a21e0000 	0xa21e0000
    33e8:	0100000e 	0x0100000e
    33ec:	00b809e1 	bstrins.d	$r1,$r15,0x38,0x2
    33f0:	1edb0000 	pcaddu18i	$r0,448512(0x6d800)
    33f4:	1ed70000 	pcaddu18i	$r0,440320(0x6b800)
    33f8:	2d1f0000 	0x2d1f0000
    33fc:	d900000f 	0xd900000f
    3400:	05000004 	0x05000004
    3404:	00231403 	div.du	$r3,$r0,$r5
    3408:	1e60121c 	pcaddu18i	$r28,196752(0x30090)
    340c:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3410:	04b70000 	csrrd	$r0,0x2dc0
    3414:	01130000 	fcopysign.d	$f0,$f0,$f0
    3418:	2c030554 	vld	$vr20,$r10,193(0xc1)
    341c:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3420:	08025501 	0x08025501
    3424:	560113e2 	bl	-7732976(0xf8a0110) # ff8a3534 <_RAM_DATA+0x7f8a2534>
    3428:	23140305 	sc.d	$r5,$r24,5120(0x1400)
    342c:	20001c00 	ll.w	$r0,$r0,28(0x1c)
    3430:	1c001ea8 	pcaddu12i	$r8,245(0xf5)
    3434:	3200870b 	0x3200870b
    3438:	26200324 	ldptr.d	$r4,$r25,8192(0x2000)
    343c:	06221c00 	cacop	0x0,$r0,-1913(0x887)
    3440:	00d20b00 	bstrpick.d	$r0,$r24,0x12,0x2
    3444:	04d90000 	csrrd	$r0,0x3640
    3448:	810c0000 	0x810c0000
    344c:	0b000000 	0x0b000000
    3450:	04c90600 	csrxchg	$r0,$r16,0x3241
    3454:	721d0000 	0x721d0000
    3458:	0100000e 	0x0100000e
    345c:	1dec06b3 	pcaddu12i	$r19,-40907(0xf6035)
    3460:	003c1c00 	0x003c1c00
    3464:	9c010000 	0x9c010000
    3468:	00000546 	0x00000546
    346c:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3470:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3474:	20030500 	ll.w	$r0,$r8,772(0x304)
    3478:	121c0023 	addu16i.d	$r3,$r1,-30976(0x8700)
    347c:	1c001e0c 	pcaddu12i	$r12,240(0xf0)
    3480:	000011cd 	clo.w	$r13,$r14
    3484:	00000529 	0x00000529
    3488:	05540113 	0x05540113
    348c:	00222c03 	div.d	$r3,$r0,$r11
    3490:	5501131c 	bl	-59703024(0xc710110) # fc7135a0 <_RAM_DATA+0x7c7125a0>
    3494:	13b60802 	addu16i.d	$r2,$r0,-4734(0xed82)
    3498:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    349c:	1c002320 	pcaddu12i	$r0,281(0x119)
    34a0:	1e1c1700 	pcaddu18i	$r0,57528(0xe0b8)
    34a4:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    34a8:	01130000 	fcopysign.d	$f0,$f0,$f0
    34ac:	a0110654 	0xa0110654
    34b0:	7bffac80 	0x7bffac80
    34b4:	04550113 	csrxchg	$r19,$r8,0x1540
    34b8:	1f244b40 	pcaddu18i	$r0,-449958(0x9225a)
    34bc:	d20b0000 	0xd20b0000
    34c0:	56000000 	bl	131072(0x20000) # 234c0 <_start-0x1bfdcb40>
    34c4:	0c000005 	0x0c000005
    34c8:	00000081 	0x00000081
    34cc:	46060017 	bnez	$r0,-2226688(0x5e0600) # ffde3acc <_RAM_DATA+0x7fde2acc>
    34d0:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    34d4:	00001130 	clo.w	$r16,$r9
    34d8:	b006ad01 	0xb006ad01
    34dc:	3c1c001d 	0x3c1c001d
    34e0:	01000000 	0x01000000
    34e4:	0005c29c 	alsl.w	$r28,$r20,$r16,0x4
    34e8:	0f2d1f00 	0x0f2d1f00
    34ec:	05560000 	0x05560000
    34f0:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    34f4:	1c002338 	pcaddu12i	$r24,281(0x119)
    34f8:	001dd012 	mul.d	$r18,$r0,$r20
    34fc:	0011cd1c 	sub.d	$r28,$r8,$r19
    3500:	0005a600 	alsl.w	$r0,$r16,$r9,0x4
    3504:	54011300 	bl	-67108592(0xc000110) # fc003614 <_RAM_DATA+0x7c002614>
    3508:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    350c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3510:	b0080255 	0xb0080255
    3514:	05560113 	0x05560113
    3518:	00233803 	div.du	$r3,$r0,$r14
    351c:	e017001c 	0xe017001c
    3520:	2e1c001d 	0x2e1c001d
    3524:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    3528:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    352c:	ffac80a0 	0xffac80a0
    3530:	5501137b 	bl	-34799344(0xded0110) # fded3640 <_RAM_DATA+0x7ded2640>
    3534:	244a4003 	ldptr.w	$r3,$r0,19008(0x4a40)
    3538:	121d0000 	addu16i.d	$r0,$r0,-30912(0x8740)
    353c:	01000010 	0x01000010
    3540:	1d7406a7 	pcaddu12i	$r7,-286667(0xba035)
    3544:	003c1c00 	0x003c1c00
    3548:	9c010000 	0x9c010000
    354c:	00000629 	0x00000629
    3550:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3554:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3558:	50030500 	b	67109636(0x4000304) # 400385c <_start-0x17ffc7a4>
    355c:	121c0023 	addu16i.d	$r3,$r1,-30976(0x8700)
    3560:	1c001d94 	pcaddu12i	$r20,236(0xec)
    3564:	000011cd 	clo.w	$r13,$r14
    3568:	0000060d 	0x0000060d
    356c:	05540113 	0x05540113
    3570:	00222c03 	div.d	$r3,$r0,$r11
    3574:	5501131c 	bl	-59703024(0xc710110) # fc713684 <_RAM_DATA+0x7c712684>
    3578:	13aa0802 	addu16i.d	$r2,$r0,-5502(0xea82)
    357c:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3580:	1c002350 	pcaddu12i	$r16,282(0x11a)
    3584:	1da41700 	pcaddu12i	$r0,-188232(0xd20b8)
    3588:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    358c:	01130000 	fcopysign.d	$f0,$f0,$f0
    3590:	a0110654 	0xa0110654
    3594:	7bffac80 	0x7bffac80
    3598:	03550113 	andi	$r19,$r8,0x540
    359c:	00244940 	crc.w.b.w	$r0,$r10,$r18
    35a0:	12381d00 	addu16i.d	$r0,$r8,-29177(0x8e07)
    35a4:	a0010000 	0xa0010000
    35a8:	001d3806 	mulh.wu	$r6,$r0,$r14
    35ac:	00003c1c 	revb.d	$r28,$r0
    35b0:	909c0100 	0x909c0100
    35b4:	1f000006 	pcaddu18i	$r6,-524288(0x80000)
    35b8:	00000f2d 	0x00000f2d
    35bc:	00000556 	0x00000556
    35c0:	23680305 	sc.d	$r5,$r24,26624(0x6800)
    35c4:	58121c00 	beq	$r0,$r0,4636(0x121c) # 47e0 <_start-0x1bffb820>
    35c8:	cd1c001d 	0xcd1c001d
    35cc:	74000011 	xvseq.b	$xr17,$xr0,$xr0
    35d0:	13000006 	addu16i.d	$r6,$r0,-16384(0xc000)
    35d4:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    35d8:	1c00222c 	pcaddu12i	$r12,273(0x111)
    35dc:	02550113 	sltui	$r19,$r8,1344(0x540)
    35e0:	0113a308 	0x0113a308
    35e4:	68030556 	bltu	$r10,$r22,772(0x304) # 38e8 <_start-0x1bffc718>
    35e8:	001c0023 	mul.w	$r3,$r1,$r0
    35ec:	001d6817 	mulh.wu	$r23,$r0,$r26
    35f0:	00122e1c 	slt	$r28,$r16,$r11
    35f4:	54011300 	bl	-67108592(0xc000110) # fc003704 <_RAM_DATA+0x7c002704>
    35f8:	80a01106 	0x80a01106
    35fc:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3600:	40035501 	beqz	$r8,262996(0x40354) # 43954 <_start-0x1bfbc6ac>
    3604:	00002448 	clz.d	$r8,$r2
    3608:	0011001d 	sub.w	$r29,$r0,$r0
    360c:	069a0100 	0x069a0100
    3610:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
    3614:	0000003c 	0x0000003c
    3618:	06f79c01 	0x06f79c01
    361c:	2d1f0000 	0x2d1f0000
    3620:	5600000f 	bl	4063232(0x3e0000) # 3e3620 <_start-0x1bc1c9e0>
    3624:	05000005 	0x05000005
    3628:	00238003 	mod.du	$r3,$r0,$r0
    362c:	1d1c121c 	pcaddu12i	$r28,-466800(0x8e090)
    3630:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3634:	06db0000 	0x06db0000
    3638:	01130000 	fcopysign.d	$f0,$f0,$f0
    363c:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3640:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3644:	08025501 	0x08025501
    3648:	5601139d 	bl	-25820912(0xe760110) # fe763758 <_RAM_DATA+0x7e762758>
    364c:	23800305 	sc.d	$r5,$r24,-32768(0x8000)
    3650:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3654:	1c001d2c 	pcaddu12i	$r12,233(0xe9)
    3658:	0000122e 	clo.w	$r14,$r17
    365c:	06540113 	0x06540113
    3660:	ac80a011 	0xac80a011
    3664:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3668:	47400355 	bnez	$r26,-2670592(0x574000) # ffd77668 <_RAM_DATA+0x7fd76668>
    366c:	1d000024 	pcaddu12i	$r4,-524287(0x80001)
    3670:	00000fc1 	0x00000fc1
    3674:	c0069401 	0xc0069401
    3678:	3c1c001c 	0x3c1c001c
    367c:	01000000 	0x01000000
    3680:	00075e9c 	alsl.wu	$r28,$r20,$r23,0x3
    3684:	0f2d1f00 	0x0f2d1f00
    3688:	05560000 	0x05560000
    368c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3690:	1c002398 	pcaddu12i	$r24,284(0x11c)
    3694:	001ce012 	mulh.w	$r18,$r0,$r24
    3698:	0011cd1c 	sub.d	$r28,$r8,$r19
    369c:	00074200 	alsl.wu	$r0,$r16,$r16,0x3
    36a0:	54011300 	bl	-67108592(0xc000110) # fc0037b0 <_RAM_DATA+0x7c0027b0>
    36a4:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    36a8:	01131c00 	fcopysign.d	$f0,$f0,$f7
    36ac:	97080255 	0x97080255
    36b0:	05560113 	0x05560113
    36b4:	00239803 	mod.du	$r3,$r0,$r6
    36b8:	f017001c 	0xf017001c
    36bc:	2e1c001c 	0x2e1c001c
    36c0:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    36c4:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    36c8:	ffac80a0 	0xffac80a0
    36cc:	5501137b 	bl	-34799344(0xded0110) # fded37dc <_RAM_DATA+0x7ded27dc>
    36d0:	24464003 	ldptr.w	$r3,$r0,17984(0x4640)
    36d4:	fb1d0000 	0xfb1d0000
    36d8:	01000011 	0x01000011
    36dc:	1c84068e 	pcaddu12i	$r14,270388(0x42034)
    36e0:	003c1c00 	0x003c1c00
    36e4:	9c010000 	0x9c010000
    36e8:	000007c5 	0x000007c5
    36ec:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    36f0:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    36f4:	b0030500 	0xb0030500
    36f8:	121c0023 	addu16i.d	$r3,$r1,-30976(0x8700)
    36fc:	1c001ca4 	pcaddu12i	$r4,229(0xe5)
    3700:	000011cd 	clo.w	$r13,$r14
    3704:	000007a9 	0x000007a9
    3708:	05540113 	0x05540113
    370c:	00222c03 	div.d	$r3,$r0,$r11
    3710:	5501131c 	bl	-59703024(0xc710110) # fc713820 <_RAM_DATA+0x7c712820>
    3714:	13910802 	addu16i.d	$r2,$r0,-7102(0xe442)
    3718:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    371c:	1c0023b0 	pcaddu12i	$r16,285(0x11d)
    3720:	1cb41700 	pcaddu12i	$r0,368824(0x5a0b8)
    3724:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    3728:	01130000 	fcopysign.d	$f0,$f0,$f0
    372c:	a0110654 	0xa0110654
    3730:	7bffac80 	0x7bffac80
    3734:	03550113 	andi	$r19,$r8,0x540
    3738:	00244540 	crc.w.b.w	$r0,$r10,$r17
    373c:	10c31d00 	addu16i.d	$r0,$r8,12487(0x30c7)
    3740:	88010000 	0x88010000
    3744:	001c4806 	mul.w	$r6,$r0,$r18
    3748:	00003c1c 	revb.d	$r28,$r0
    374c:	2c9c0100 	xvld	$xr0,$r8,1792(0x700)
    3750:	1f000008 	pcaddu18i	$r8,-524288(0x80000)
    3754:	00000f2d 	0x00000f2d
    3758:	00000556 	0x00000556
    375c:	23c80305 	sc.d	$r5,$r24,-14336(0xc800)
    3760:	68121c00 	bltu	$r0,$r0,4636(0x121c) # 497c <_start-0x1bffb684>
    3764:	cd1c001c 	0xcd1c001c
    3768:	10000011 	addu16i.d	$r17,$r0,0
    376c:	13000008 	addu16i.d	$r8,$r0,-16384(0xc000)
    3770:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3774:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3778:	02550113 	sltui	$r19,$r8,1344(0x540)
    377c:	01138b08 	0x01138b08
    3780:	c8030556 	0xc8030556
    3784:	001c0023 	mul.w	$r3,$r1,$r0
    3788:	001c7817 	mul.w	$r23,$r0,$r30
    378c:	00122e1c 	slt	$r28,$r16,$r11
    3790:	54011300 	bl	-67108592(0xc000110) # fc0038a0 <_RAM_DATA+0x7c0028a0>
    3794:	80a01106 	0x80a01106
    3798:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    379c:	40035501 	beqz	$r8,262996(0x40354) # 43af0 <_start-0x1bfbc510>
    37a0:	00002444 	clz.d	$r4,$r2
    37a4:	000fa91d 	bytepick.d	$r29,$r8,$r10,0x7
    37a8:	06820100 	0x06820100
    37ac:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
    37b0:	0000003c 	0x0000003c
    37b4:	08939c01 	fnmadd.s	$f1,$f0,$f7,$f7
    37b8:	2d1f0000 	0x2d1f0000
    37bc:	5600000f 	bl	4063232(0x3e0000) # 3e37bc <_start-0x1bc1c844>
    37c0:	05000005 	0x05000005
    37c4:	0023e003 	mod.du	$r3,$r0,$r24
    37c8:	1c2c121c 	pcaddu12i	$r28,90256(0x16090)
    37cc:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    37d0:	08770000 	0x08770000
    37d4:	01130000 	fcopysign.d	$f0,$f0,$f0
    37d8:	2c030554 	vld	$vr20,$r10,193(0xc1)
    37dc:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    37e0:	08025501 	0x08025501
    37e4:	56011385 	bl	-32112368(0xe160110) # fe1638f4 <_RAM_DATA+0x7e1628f4>
    37e8:	23e00305 	sc.d	$r5,$r24,-8192(0xe000)
    37ec:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    37f0:	1c001c3c 	pcaddu12i	$r28,225(0xe1)
    37f4:	0000122e 	clo.w	$r14,$r17
    37f8:	06540113 	0x06540113
    37fc:	ac80a011 	0xac80a011
    3800:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3804:	43400355 	beqz	$r26,-2670592(0x574000) # ffd77804 <_RAM_DATA+0x7fd76804>
    3808:	1d000024 	pcaddu12i	$r4,-524287(0x80001)
    380c:	000011e3 	clo.w	$r3,$r15
    3810:	d0067d01 	0xd0067d01
    3814:	3c1c001b 	0x3c1c001b
    3818:	01000000 	0x01000000
    381c:	0008fa9c 	bytepick.w	$r28,$r20,$r30,0x1
    3820:	0f2d1f00 	0x0f2d1f00
    3824:	05560000 	0x05560000
    3828:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    382c:	1c0023f8 	pcaddu12i	$r24,287(0x11f)
    3830:	001bf012 	rotr.d	$r18,$r0,$r28
    3834:	0011cd1c 	sub.d	$r28,$r8,$r19
    3838:	0008de00 	bytepick.w	$r0,$r16,$r23,0x1
    383c:	54011300 	bl	-67108592(0xc000110) # fc00394c <_RAM_DATA+0x7c00294c>
    3840:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    3844:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3848:	7f080255 	0x7f080255
    384c:	05560113 	0x05560113
    3850:	0023f803 	mod.du	$r3,$r0,$r30
    3854:	0017001c 	sll.w	$r28,$r0,$r0
    3858:	2e1c001c 	0x2e1c001c
    385c:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    3860:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3864:	ffac80a0 	0xffac80a0
    3868:	5501137b 	bl	-34799344(0xded0110) # fded3978 <_RAM_DATA+0x7ded2978>
    386c:	24424003 	ldptr.w	$r3,$r0,16960(0x4240)
    3870:	ab1d0000 	0xab1d0000
    3874:	01000010 	0x01000010
    3878:	1b940678 	pcalau12i	$r24,-221133(0xca033)
    387c:	003c1c00 	0x003c1c00
    3880:	9c010000 	0x9c010000
    3884:	00000961 	0x00000961
    3888:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    388c:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3890:	10030500 	addu16i.d	$r0,$r8,193(0xc1)
    3894:	121c0024 	addu16i.d	$r4,$r1,-30976(0x8700)
    3898:	1c001bb4 	pcaddu12i	$r20,221(0xdd)
    389c:	000011cd 	clo.w	$r13,$r14
    38a0:	00000945 	0x00000945
    38a4:	05540113 	0x05540113
    38a8:	00222c03 	div.d	$r3,$r0,$r11
    38ac:	5501131c 	bl	-59703024(0xc710110) # fc7139bc <_RAM_DATA+0x7c7129bc>
    38b0:	137a0802 	addu16i.d	$r2,$r0,-8574(0xde82)
    38b4:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    38b8:	1c002410 	pcaddu12i	$r16,288(0x120)
    38bc:	1bc41700 	pcalau12i	$r0,-122696(0xe20b8)
    38c0:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    38c4:	01130000 	fcopysign.d	$f0,$f0,$f0
    38c8:	a0110654 	0xa0110654
    38cc:	7bffac80 	0x7bffac80
    38d0:	03550113 	andi	$r19,$r8,0x540
    38d4:	00244140 	crc.w.b.w	$r0,$r10,$r16
    38d8:	0f791d00 	0x0f791d00
    38dc:	72010000 	0x72010000
    38e0:	001b5806 	rotr.w	$r6,$r0,$r22
    38e4:	00003c1c 	revb.d	$r28,$r0
    38e8:	c89c0100 	0xc89c0100
    38ec:	1f000009 	pcaddu18i	$r9,-524288(0x80000)
    38f0:	00000f2d 	0x00000f2d
    38f4:	00000556 	0x00000556
    38f8:	24280305 	ldptr.w	$r5,$r24,10240(0x2800)
    38fc:	78121c00 	0x78121c00
    3900:	cd1c001b 	0xcd1c001b
    3904:	ac000011 	0xac000011
    3908:	13000009 	addu16i.d	$r9,$r0,-16384(0xc000)
    390c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3910:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3914:	02550113 	sltui	$r19,$r8,1344(0x540)
    3918:	01137508 	fcopysign.d	$f8,$f8,$f29
    391c:	28030556 	ld.b	$r22,$r10,193(0xc1)
    3920:	001c0024 	mul.w	$r4,$r1,$r0
    3924:	001b8817 	rotr.d	$r23,$r0,$r2
    3928:	00122e1c 	slt	$r28,$r16,$r11
    392c:	54011300 	bl	-67108592(0xc000110) # fc003a3c <_RAM_DATA+0x7c002a3c>
    3930:	80a01106 	0x80a01106
    3934:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3938:	40035501 	beqz	$r8,262996(0x40354) # 43c8c <_start-0x1bfbc374>
    393c:	00002440 	clz.d	$r0,$r2
    3940:	0011a81d 	sub.d	$r29,$r0,$r10
    3944:	066c0100 	0x066c0100
    3948:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
    394c:	0000003c 	0x0000003c
    3950:	0a2f9c01 	xvfmadd.d	$xr1,$xr0,$xr7,$xr31
    3954:	2d1f0000 	0x2d1f0000
    3958:	5600000f 	bl	4063232(0x3e0000) # 3e3958 <_start-0x1bc1c6a8>
    395c:	05000005 	0x05000005
    3960:	00244003 	crc.w.b.w	$r3,$r0,$r16
    3964:	1b3c121c 	pcalau12i	$r28,-401264(0x9e090)
    3968:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    396c:	0a130000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr6
    3970:	01130000 	fcopysign.d	$f0,$f0,$f0
    3974:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3978:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    397c:	08025501 	0x08025501
    3980:	5601136f 	bl	-37879536(0xdbe0110) # fdbe3a90 <_RAM_DATA+0x7dbe2a90>
    3984:	24400305 	ldptr.w	$r5,$r24,16384(0x4000)
    3988:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    398c:	1c001b4c 	pcaddu12i	$r12,218(0xda)
    3990:	0000122e 	clo.w	$r14,$r17
    3994:	06540113 	0x06540113
    3998:	ac80a011 	0xac80a011
    399c:	01137bff 	fcopysign.d	$f31,$f31,$f30
    39a0:	3f400355 	0x3f400355
    39a4:	1d000024 	pcaddu12i	$r4,-524287(0x80001)
    39a8:	00001093 	clo.w	$r19,$r4
    39ac:	e0066601 	0xe0066601
    39b0:	3c1c001a 	0x3c1c001a
    39b4:	01000000 	0x01000000
    39b8:	000a969c 	0x000a969c
    39bc:	0f2d1f00 	0x0f2d1f00
    39c0:	05560000 	0x05560000
    39c4:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    39c8:	1c002458 	pcaddu12i	$r24,290(0x122)
    39cc:	001b0012 	rotr.w	$r18,$r0,$r0
    39d0:	0011cd1c 	sub.d	$r28,$r8,$r19
    39d4:	000a7a00 	0x000a7a00
    39d8:	54011300 	bl	-67108592(0xc000110) # fc003ae8 <_RAM_DATA+0x7c002ae8>
    39dc:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    39e0:	01131c00 	fcopysign.d	$f0,$f0,$f7
    39e4:	69080255 	bltu	$r18,$r21,67584(0x10800) # 141e4 <_start-0x1bfebe1c>
    39e8:	05560113 	0x05560113
    39ec:	00245803 	crc.w.b.w	$r3,$r0,$r22
    39f0:	1017001c 	addu16i.d	$r28,$r0,1472(0x5c0)
    39f4:	2e1c001b 	0x2e1c001b
    39f8:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    39fc:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3a00:	ffac80a0 	0xffac80a0
    3a04:	5501137b 	bl	-34799344(0xded0110) # fded3b14 <_RAM_DATA+0x7ded2b14>
    3a08:	243e4003 	ldptr.w	$r3,$r0,15936(0x3e40)
    3a0c:	521d0000 	b	138496(0x21d00) # 2570c <_start-0x1bfda8f4>
    3a10:	0100000f 	0x0100000f
    3a14:	1aa40660 	pcalau12i	$r0,335923(0x52033)
    3a18:	003c1c00 	0x003c1c00
    3a1c:	9c010000 	0x9c010000
    3a20:	00000afd 	0x00000afd
    3a24:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3a28:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3a2c:	70030500 	vsle.w	$vr0,$vr8,$vr1
    3a30:	121c0024 	addu16i.d	$r4,$r1,-30976(0x8700)
    3a34:	1c001ac4 	pcaddu12i	$r4,214(0xd6)
    3a38:	000011cd 	clo.w	$r13,$r14
    3a3c:	00000ae1 	0x00000ae1
    3a40:	05540113 	0x05540113
    3a44:	00222c03 	div.d	$r3,$r0,$r11
    3a48:	5501131c 	bl	-59703024(0xc710110) # fc713b58 <_RAM_DATA+0x7c712b58>
    3a4c:	13630802 	addu16i.d	$r2,$r0,-10046(0xd8c2)
    3a50:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3a54:	1c002470 	pcaddu12i	$r16,291(0x123)
    3a58:	1ad41700 	pcalau12i	$r0,434360(0x6a0b8)
    3a5c:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    3a60:	01130000 	fcopysign.d	$f0,$f0,$f0
    3a64:	a0110654 	0xa0110654
    3a68:	7bffac80 	0x7bffac80
    3a6c:	03550113 	andi	$r19,$r8,0x540
    3a70:	00243d40 	crc.w.b.w	$r0,$r10,$r15
    3a74:	11901d00 	addu16i.d	$r0,$r8,25607(0x6407)
    3a78:	5a010000 	beq	$r0,$r0,-130816(0x20100) # fffe3b78 <_RAM_DATA+0x7ffe2b78>
    3a7c:	001a6806 	0x001a6806
    3a80:	00003c1c 	revb.d	$r28,$r0
    3a84:	649c0100 	bge	$r8,$r0,39936(0x9c00) # d684 <_start-0x1bff297c>
    3a88:	1f00000b 	pcaddu18i	$r11,-524288(0x80000)
    3a8c:	00000f2d 	0x00000f2d
    3a90:	00000556 	0x00000556
    3a94:	24880305 	ldptr.w	$r5,$r24,-30720(0x8800)
    3a98:	88121c00 	0x88121c00
    3a9c:	cd1c001a 	0xcd1c001a
    3aa0:	48000011 	bceqz	$fcc0,-3932160(0x440000) # ffc43aa0 <_RAM_DATA+0x7fc42aa0>
    3aa4:	1300000b 	addu16i.d	$r11,$r0,-16384(0xc000)
    3aa8:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3aac:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3ab0:	02550113 	sltui	$r19,$r8,1344(0x540)
    3ab4:	01135d08 	fcopysign.d	$f8,$f8,$f23
    3ab8:	88030556 	0x88030556
    3abc:	001c0024 	mul.w	$r4,$r1,$r0
    3ac0:	001a9817 	0x001a9817
    3ac4:	00122e1c 	slt	$r28,$r16,$r11
    3ac8:	54011300 	bl	-67108592(0xc000110) # fc003bd8 <_RAM_DATA+0x7c002bd8>
    3acc:	80a01106 	0x80a01106
    3ad0:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3ad4:	40035501 	beqz	$r8,262996(0x40354) # 43e28 <_start-0x1bfbc1d8>
    3ad8:	0000243c 	clz.d	$r28,$r1
    3adc:	00107b1d 	add.w	$r29,$r24,$r30
    3ae0:	06530100 	0x06530100
    3ae4:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
    3ae8:	0000003c 	0x0000003c
    3aec:	0bcb9c01 	0x0bcb9c01
    3af0:	2d1f0000 	0x2d1f0000
    3af4:	5600000f 	bl	4063232(0x3e0000) # 3e3af4 <_start-0x1bc1c50c>
    3af8:	05000005 	0x05000005
    3afc:	0024a003 	crc.w.h.w	$r3,$r0,$r8
    3b00:	1a4c121c 	pcalau12i	$r28,155792(0x26090)
    3b04:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3b08:	0baf0000 	0x0baf0000
    3b0c:	01130000 	fcopysign.d	$f0,$f0,$f0
    3b10:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3b14:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3b18:	08025501 	0x08025501
    3b1c:	56011356 	bl	-44433136(0xd5a0110) # fd5a3c2c <_RAM_DATA+0x7d5a2c2c>
    3b20:	24a00305 	ldptr.w	$r5,$r24,-24576(0xa000)
    3b24:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3b28:	1c001a5c 	pcaddu12i	$r28,210(0xd2)
    3b2c:	0000122e 	clo.w	$r14,$r17
    3b30:	06540113 	0x06540113
    3b34:	ac80a011 	0xac80a011
    3b38:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3b3c:	000a0355 	0x000a0355
    3b40:	1d000080 	pcaddu12i	$r0,-524284(0x80004)
    3b44:	00000f3a 	0x00000f3a
    3b48:	f0064d01 	0xf0064d01
    3b4c:	3c1c0019 	0x3c1c0019
    3b50:	01000000 	0x01000000
    3b54:	000c329c 	bytepick.d	$r28,$r20,$r12,0x0
    3b58:	0f2d1f00 	0x0f2d1f00
    3b5c:	05560000 	0x05560000
    3b60:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3b64:	1c0024b8 	pcaddu12i	$r24,293(0x125)
    3b68:	001a1012 	0x001a1012
    3b6c:	0011cd1c 	sub.d	$r28,$r8,$r19
    3b70:	000c1600 	bytepick.d	$r0,$r16,$r5,0x0
    3b74:	54011300 	bl	-67108592(0xc000110) # fc003c84 <_RAM_DATA+0x7c002c84>
    3b78:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    3b7c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3b80:	50080255 	b	-111933440(0x9540800) # f9544380 <_RAM_DATA+0x79543380>
    3b84:	05560113 	0x05560113
    3b88:	0024b803 	crc.w.h.w	$r3,$r0,$r14
    3b8c:	2017001c 	ll.w	$r28,$r0,5888(0x1700)
    3b90:	2e1c001a 	0x2e1c001a
    3b94:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    3b98:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3b9c:	ffac80a0 	0xffac80a0
    3ba0:	5501137b 	bl	-34799344(0xded0110) # fded3cb0 <_RAM_DATA+0x7ded2cb0>
    3ba4:	40000a03 	beqz	$r16,786440(0xc0008) # c3bac <_start-0x1bf3c454>
    3ba8:	781d0000 	0x781d0000
    3bac:	01000011 	0x01000011
    3bb0:	19b40648 	pcaddi	$r8,-155598(0xda032)
    3bb4:	003c1c00 	0x003c1c00
    3bb8:	9c010000 	0x9c010000
    3bbc:	00000c99 	0x00000c99
    3bc0:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3bc4:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3bc8:	d0030500 	0xd0030500
    3bcc:	121c0024 	addu16i.d	$r4,$r1,-30976(0x8700)
    3bd0:	1c0019d4 	pcaddu12i	$r20,206(0xce)
    3bd4:	000011cd 	clo.w	$r13,$r14
    3bd8:	00000c7d 	0x00000c7d
    3bdc:	05540113 	0x05540113
    3be0:	00222c03 	div.d	$r3,$r0,$r11
    3be4:	5501131c 	bl	-59703024(0xc710110) # fc713cf4 <_RAM_DATA+0x7c712cf4>
    3be8:	134a0802 	addu16i.d	$r2,$r0,-11646(0xd282)
    3bec:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3bf0:	1c0024d0 	pcaddu12i	$r16,294(0x126)
    3bf4:	19e41700 	pcaddi	$r0,-57160(0xf20b8)
    3bf8:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    3bfc:	01130000 	fcopysign.d	$f0,$f0,$f0
    3c00:	a0110654 	0xa0110654
    3c04:	7bffac80 	0x7bffac80
    3c08:	03550113 	andi	$r19,$r8,0x540
    3c0c:	0020000a 	div.w	$r10,$r0,$r0
    3c10:	105a1d00 	addu16i.d	$r0,$r8,5767(0x1687)
    3c14:	43010000 	beqz	$r0,196864(0x30100) # 33d14 <_start-0x1bfcc2ec>
    3c18:	00197806 	srl.d	$r6,$r0,$r30
    3c1c:	00003c1c 	revb.d	$r28,$r0
    3c20:	009c0100 	bstrins.d	$r0,$r8,0x1c,0x0
    3c24:	1f00000d 	pcaddu18i	$r13,-524288(0x80000)
    3c28:	00000f2d 	0x00000f2d
    3c2c:	00000556 	0x00000556
    3c30:	24e80305 	ldptr.w	$r5,$r24,-6144(0xe800)
    3c34:	98121c00 	0x98121c00
    3c38:	cd1c0019 	0xcd1c0019
    3c3c:	e4000011 	0xe4000011
    3c40:	1300000c 	addu16i.d	$r12,$r0,-16384(0xc000)
    3c44:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3c48:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3c4c:	02550113 	sltui	$r19,$r8,1344(0x540)
    3c50:	01134508 	fcopysign.d	$f8,$f8,$f17
    3c54:	e8030556 	0xe8030556
    3c58:	001c0024 	mul.w	$r4,$r1,$r0
    3c5c:	0019a817 	sra.d	$r23,$r0,$r10
    3c60:	00122e1c 	slt	$r28,$r16,$r11
    3c64:	54011300 	bl	-67108592(0xc000110) # fc003d74 <_RAM_DATA+0x7c002d74>
    3c68:	80a01106 	0x80a01106
    3c6c:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3c70:	0a035501 	0x0a035501
    3c74:	00001000 	clo.w	$r0,$r0
    3c78:	000e8a1d 	bytepick.d	$r29,$r16,$r2,0x5
    3c7c:	063d0100 	cacop	0x0,$r8,-192(0xf40)
    3c80:	1c00193c 	pcaddu12i	$r28,201(0xc9)
    3c84:	0000003c 	0x0000003c
    3c88:	0d679c01 	xvshuf.b	$xr1,$xr0,$xr7,$xr15
    3c8c:	2d1f0000 	0x2d1f0000
    3c90:	5600000f 	bl	4063232(0x3e0000) # 3e3c90 <_start-0x1bc1c370>
    3c94:	05000005 	0x05000005
    3c98:	00250003 	crc.w.w.w	$r3,$r0,$r0
    3c9c:	195c121c 	pcaddi	$r28,-335728(0xae090)
    3ca0:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3ca4:	0d4b0000 	0x0d4b0000
    3ca8:	01130000 	fcopysign.d	$f0,$f0,$f0
    3cac:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3cb0:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3cb4:	08025501 	0x08025501
    3cb8:	56011340 	bl	-50200304(0xd020110) # fd023dc8 <_RAM_DATA+0x7d022dc8>
    3cbc:	25000305 	stptr.w	$r5,$r24,0
    3cc0:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3cc4:	1c00196c 	pcaddu12i	$r12,203(0xcb)
    3cc8:	0000122e 	clo.w	$r14,$r17
    3ccc:	06540113 	0x06540113
    3cd0:	ac80a011 	0xac80a011
    3cd4:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3cd8:	000a0355 	0x000a0355
    3cdc:	1d000008 	pcaddu12i	$r8,-524288(0x80000)
    3ce0:	00001160 	clo.w	$r0,$r11
    3ce4:	00063701 	alsl.wu	$r1,$r24,$r13,0x1
    3ce8:	3c1c0019 	0x3c1c0019
    3cec:	01000000 	0x01000000
    3cf0:	000dce9c 	bytepick.d	$r28,$r20,$r19,0x3
    3cf4:	0f2d1f00 	0x0f2d1f00
    3cf8:	05560000 	0x05560000
    3cfc:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3d00:	1c002518 	pcaddu12i	$r24,296(0x128)
    3d04:	00192012 	srl.d	$r18,$r0,$r8
    3d08:	0011cd1c 	sub.d	$r28,$r8,$r19
    3d0c:	000db200 	bytepick.d	$r0,$r16,$r12,0x3
    3d10:	54011300 	bl	-67108592(0xc000110) # fc003e20 <_RAM_DATA+0x7c002e20>
    3d14:	222c0305 	ll.d	$r5,$r24,11264(0x2c00)
    3d18:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3d1c:	3a080255 	0x3a080255
    3d20:	05560113 	0x05560113
    3d24:	00251803 	crc.w.w.w	$r3,$r0,$r6
    3d28:	3017001c 	vldrepl.d	$vr28,$r0,-512(0xe00)
    3d2c:	2e1c0019 	0x2e1c0019
    3d30:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    3d34:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3d38:	ffac80a0 	0xffac80a0
    3d3c:	5501137b 	bl	-34799344(0xded0110) # fded3e4c <_RAM_DATA+0x7ded2e4c>
    3d40:	04000a03 	csrxchg	$r3,$r16,0x2
    3d44:	421d0000 	beqz	$r0,138496(0x21d00) # 25a44 <_start-0x1bfda5bc>
    3d48:	01000010 	0x01000010
    3d4c:	18c40631 	pcaddi	$r17,401457(0x62031)
    3d50:	003c1c00 	0x003c1c00
    3d54:	9c010000 	0x9c010000
    3d58:	00000e35 	0x00000e35
    3d5c:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3d60:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3d64:	30030500 	0x30030500
    3d68:	121c0025 	addu16i.d	$r5,$r1,-30976(0x8700)
    3d6c:	1c0018e4 	pcaddu12i	$r4,199(0xc7)
    3d70:	000011cd 	clo.w	$r13,$r14
    3d74:	00000e19 	0x00000e19
    3d78:	05540113 	0x05540113
    3d7c:	00222c03 	div.d	$r3,$r0,$r11
    3d80:	5501131c 	bl	-59703024(0xc710110) # fc713e90 <_RAM_DATA+0x7c712e90>
    3d84:	13340802 	addu16i.d	$r2,$r0,-13054(0xcd02)
    3d88:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3d8c:	1c002530 	pcaddu12i	$r16,297(0x129)
    3d90:	18f41700 	pcaddi	$r0,499896(0x7a0b8)
    3d94:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    3d98:	01130000 	fcopysign.d	$f0,$f0,$f0
    3d9c:	a0110654 	0xa0110654
    3da0:	7bffac80 	0x7bffac80
    3da4:	03550113 	andi	$r19,$r8,0x540
    3da8:	0002000a 	0x0002000a
    3dac:	126f1d00 	addu16i.d	$r0,$r8,-25657(0x9bc7)
    3db0:	2c010000 	vld	$vr0,$r0,64(0x40)
    3db4:	00188806 	sll.d	$r6,$r0,$r2
    3db8:	00003c1c 	revb.d	$r28,$r0
    3dbc:	9c9c0100 	0x9c9c0100
    3dc0:	1f00000e 	pcaddu18i	$r14,-524288(0x80000)
    3dc4:	00000f2d 	0x00000f2d
    3dc8:	00000556 	0x00000556
    3dcc:	25480305 	stptr.w	$r5,$r24,18432(0x4800)
    3dd0:	a8121c00 	0xa8121c00
    3dd4:	cd1c0018 	0xcd1c0018
    3dd8:	80000011 	0x80000011
    3ddc:	1300000e 	addu16i.d	$r14,$r0,-16384(0xc000)
    3de0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3de4:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3de8:	02550113 	sltui	$r19,$r8,1344(0x540)
    3dec:	01132e08 	fcopysign.d	$f8,$f16,$f11
    3df0:	48030556 	bcnez	$fcc2,-2620668(0x580304) # ffd840f4 <_RAM_DATA+0x7fd830f4>
    3df4:	001c0025 	mul.w	$r5,$r1,$r0
    3df8:	0018b817 	sll.d	$r23,$r0,$r14
    3dfc:	00122e1c 	slt	$r28,$r16,$r11
    3e00:	54011300 	bl	-67108592(0xc000110) # fc003f10 <_RAM_DATA+0x7c002f10>
    3e04:	80a01106 	0x80a01106
    3e08:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3e0c:	0a035501 	0x0a035501
    3e10:	00000100 	0x00000100
    3e14:	0011481d 	sub.w	$r29,$r0,$r18
    3e18:	06260100 	cacop	0x0,$r8,-1664(0x980)
    3e1c:	1c00184c 	pcaddu12i	$r12,194(0xc2)
    3e20:	0000003c 	0x0000003c
    3e24:	0f029c01 	0x0f029c01
    3e28:	2d1f0000 	0x2d1f0000
    3e2c:	5600000f 	bl	4063232(0x3e0000) # 3e3e2c <_start-0x1bc1c1d4>
    3e30:	05000005 	0x05000005
    3e34:	00256003 	crc.w.w.w	$r3,$r0,$r24
    3e38:	186c121c 	pcaddi	$r28,221328(0x36090)
    3e3c:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3e40:	0ee70000 	0x0ee70000
    3e44:	01130000 	fcopysign.d	$f0,$f0,$f0
    3e48:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3e4c:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3e50:	08025501 	0x08025501
    3e54:	56011329 	bl	-56229616(0xca60110) # fca63f64 <_RAM_DATA+0x7ca62f64>
    3e58:	25600305 	stptr.w	$r5,$r24,24576(0x6000)
    3e5c:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3e60:	1c00187c 	pcaddu12i	$r28,195(0xc3)
    3e64:	0000122e 	clo.w	$r14,$r17
    3e68:	06540113 	0x06540113
    3e6c:	ac80a011 	0xac80a011
    3e70:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3e74:	80080255 	0x80080255
    3e78:	2a1d0000 	ld.bu	$r0,$r0,1856(0x740)
    3e7c:	01000010 	0x01000010
    3e80:	18100621 	pcaddi	$r1,32817(0x8031)
    3e84:	003c1c00 	0x003c1c00
    3e88:	9c010000 	0x9c010000
    3e8c:	00000f68 	0x00000f68
    3e90:	000f2d1f 	bytepick.d	$r31,$r8,$r11,0x6
    3e94:	00055600 	alsl.w	$r0,$r16,$r21,0x3
    3e98:	78030500 	0x78030500
    3e9c:	121c0025 	addu16i.d	$r5,$r1,-30976(0x8700)
    3ea0:	1c001830 	pcaddu12i	$r16,193(0xc1)
    3ea4:	000011cd 	clo.w	$r13,$r14
    3ea8:	00000f4d 	0x00000f4d
    3eac:	05540113 	0x05540113
    3eb0:	00222c03 	div.d	$r3,$r0,$r11
    3eb4:	5501131c 	bl	-59703024(0xc710110) # fc713fc4 <_RAM_DATA+0x7c712fc4>
    3eb8:	13230802 	addu16i.d	$r2,$r0,-14142(0xc8c2)
    3ebc:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3ec0:	1c002578 	pcaddu12i	$r24,299(0x12b)
    3ec4:	18401700 	pcaddi	$r0,131256(0x200b8)
    3ec8:	122e1c00 	addu16i.d	$r0,$r0,-29817(0x8b87)
    3ecc:	01130000 	fcopysign.d	$f0,$f0,$f0
    3ed0:	a0110654 	0xa0110654
    3ed4:	7bffac80 	0x7bffac80
    3ed8:	02550113 	sltui	$r19,$r8,1344(0x540)
    3edc:	00004008 	revh.2w	$r8,$r0
    3ee0:	0012501d 	slt	$r29,$r0,$r20
    3ee4:	061c0100 	cacop	0x0,$r8,1792(0x700)
    3ee8:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
    3eec:	0000003c 	0x0000003c
    3ef0:	0fcd9c01 	0x0fcd9c01
    3ef4:	2d1f0000 	0x2d1f0000
    3ef8:	5600000f 	bl	4063232(0x3e0000) # 3e3ef8 <_start-0x1bc1c108>
    3efc:	05000005 	0x05000005
    3f00:	00259003 	crc.w.d.w	$r3,$r0,$r4
    3f04:	17f4121c 	lu32i.d	$r28,-24432(0xfa090)
    3f08:	11cd1c00 	addu16i.d	$r0,$r0,29511(0x7347)
    3f0c:	0fb20000 	0x0fb20000
    3f10:	01130000 	fcopysign.d	$f0,$f0,$f0
    3f14:	2c030554 	vld	$vr20,$r10,193(0xc1)
    3f18:	131c0022 	addu16i.d	$r2,$r1,-14592(0xc700)
    3f1c:	4e015501 	jirl	$r1,$r8,-130732(0x20154)
    3f20:	05560113 	0x05560113
    3f24:	00259003 	crc.w.d.w	$r3,$r0,$r4
    3f28:	0417001c 	csrrd	$r28,0x5c0
    3f2c:	2e1c0018 	0x2e1c0018
    3f30:	13000012 	addu16i.d	$r18,$r0,-16384(0xc000)
    3f34:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3f38:	ffac80a0 	0xffac80a0
    3f3c:	5501137b 	bl	-34799344(0xded0110) # fded404c <_RAM_DATA+0x7ded304c>
    3f40:	00200802 	div.w	$r2,$r0,$r2
    3f44:	11181d00 	addu16i.d	$r0,$r8,17927(0x4607)
    3f48:	17010000 	lu32i.d	$r0,-522240(0x80800)
    3f4c:	00179806 	srl.w	$r6,$r0,$r6
    3f50:	00003c1c 	revb.d	$r28,$r0
    3f54:	319c0100 	vstelm.b	$vr0,$r8,0,0x7
    3f58:	1f000010 	pcaddu18i	$r16,-524288(0x80000)
    3f5c:	00000f2d 	0x00000f2d
    3f60:	00000556 	0x00000556
    3f64:	25a80305 	stptr.w	$r5,$r24,-22528(0xa800)
    3f68:	b8121c00 	0xb8121c00
    3f6c:	cd1c0017 	0xcd1c0017
    3f70:	17000011 	lu32i.d	$r17,-524288(0x80000)
    3f74:	13000010 	addu16i.d	$r16,$r0,-16384(0xc000)
    3f78:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3f7c:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3f80:	01550113 	0x01550113
    3f84:	56011349 	bl	-47841008(0xd260110) # fd264094 <_RAM_DATA+0x7d263094>
    3f88:	25a80305 	stptr.w	$r5,$r24,-22528(0xa800)
    3f8c:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3f90:	1c0017c8 	pcaddu12i	$r8,190(0xbe)
    3f94:	0000122e 	clo.w	$r14,$r17
    3f98:	06540113 	0x06540113
    3f9c:	ac80a011 	0xac80a011
    3fa0:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3fa4:	00400155 	0x00400155
    3fa8:	0ffa1d00 	0x0ffa1d00
    3fac:	12010000 	addu16i.d	$r0,$r0,-32704(0x8040)
    3fb0:	00175c06 	sll.w	$r6,$r0,$r23
    3fb4:	00003c1c 	revb.d	$r28,$r0
    3fb8:	959c0100 	0x959c0100
    3fbc:	1f000010 	pcaddu18i	$r16,-524288(0x80000)
    3fc0:	00000f2d 	0x00000f2d
    3fc4:	00000556 	0x00000556
    3fc8:	25c00305 	stptr.w	$r5,$r24,-16384(0xc000)
    3fcc:	7c121c00 	0x7c121c00
    3fd0:	cd1c0017 	0xcd1c0017
    3fd4:	7b000011 	0x7b000011
    3fd8:	13000010 	addu16i.d	$r16,$r0,-16384(0xc000)
    3fdc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3fe0:	1c00222c 	pcaddu12i	$r12,273(0x111)
    3fe4:	01550113 	0x01550113
    3fe8:	56011344 	bl	-49151728(0xd120110) # fd1240f8 <_RAM_DATA+0x7d1230f8>
    3fec:	25c00305 	stptr.w	$r5,$r24,-16384(0xc000)
    3ff0:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    3ff4:	1c00178c 	pcaddu12i	$r12,188(0xbc)
    3ff8:	0000122e 	clo.w	$r14,$r17
    3ffc:	06540113 	0x06540113
    4000:	ac80a011 	0xac80a011
    4004:	01137bff 	fcopysign.d	$f31,$f31,$f30
    4008:	00380155 	0x00380155
    400c:	12131d00 	addu16i.d	$r0,$r8,-31545(0x84c7)
    4010:	0d010000 	fsel	$f0,$f0,$f0,$fcc2
    4014:	00172006 	sll.w	$r6,$r0,$r8
    4018:	00003c1c 	revb.d	$r28,$r0
    401c:	f99c0100 	0xf99c0100
    4020:	1f000010 	pcaddu18i	$r16,-524288(0x80000)
    4024:	00000f2d 	0x00000f2d
    4028:	00000556 	0x00000556
    402c:	25d80305 	stptr.w	$r5,$r24,-10240(0xd800)
    4030:	40121c00 	beqz	$r0,4636(0x121c) # 524c <_start-0x1bffadb4>
    4034:	cd1c0017 	0xcd1c0017
    4038:	df000011 	0xdf000011
    403c:	13000010 	addu16i.d	$r16,$r0,-16384(0xc000)
    4040:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    4044:	1c00222c 	pcaddu12i	$r12,273(0x111)
    4048:	01550113 	0x01550113
    404c:	5601133f 	bl	-50462448(0xcfe0110) # fcfe415c <_RAM_DATA+0x7cfe315c>
    4050:	25d80305 	stptr.w	$r5,$r24,-10240(0xd800)
    4054:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    4058:	1c001750 	pcaddu12i	$r16,186(0xba)
    405c:	0000122e 	clo.w	$r14,$r17
    4060:	06540113 	0x06540113
    4064:	ac80a011 	0xac80a011
    4068:	01137bff 	fcopysign.d	$f31,$f31,$f30
    406c:	00340155 	0x00340155
    4070:	10db1d00 	addu16i.d	$r0,$r8,14023(0x36c7)
    4074:	08010000 	0x08010000
    4078:	0016e406 	andn	$r6,$r0,$r25
    407c:	00003c1c 	revb.d	$r28,$r0
    4080:	5d9c0100 	bne	$r8,$r0,105472(0x19c00) # 1dc80 <_start-0x1bfe2380>
    4084:	1f000011 	pcaddu18i	$r17,-524288(0x80000)
    4088:	00000f2d 	0x00000f2d
    408c:	00000556 	0x00000556
    4090:	25f00305 	stptr.w	$r5,$r24,-4096(0xf000)
    4094:	04121c00 	csrrd	$r0,0x487
    4098:	cd1c0017 	0xcd1c0017
    409c:	43000011 	beqz	$r0,-3735552(0x470000) # ffc7409c <_RAM_DATA+0x7fc7309c>
    40a0:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    40a4:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    40a8:	1c00222c 	pcaddu12i	$r12,273(0x111)
    40ac:	01550113 	0x01550113
    40b0:	5601133a 	bl	-51773168(0xcea0110) # fcea41c0 <_RAM_DATA+0x7cea31c0>
    40b4:	25f00305 	stptr.w	$r5,$r24,-4096(0xf000)
    40b8:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    40bc:	1c001714 	pcaddu12i	$r20,184(0xb8)
    40c0:	0000122e 	clo.w	$r14,$r17
    40c4:	06540113 	0x06540113
    40c8:	ac80a011 	0xac80a011
    40cc:	01137bff 	fcopysign.d	$f31,$f31,$f30
    40d0:	00320155 	0x00320155
    40d4:	0f911d00 	0x0f911d00
    40d8:	03010000 	lu52i.d	$r0,$r0,64(0x40)
    40dc:	0016a806 	andn	$r6,$r0,$r10
    40e0:	00003c1c 	revb.d	$r28,$r0
    40e4:	c19c0100 	0xc19c0100
    40e8:	1f000011 	pcaddu18i	$r17,-524288(0x80000)
    40ec:	00000f2d 	0x00000f2d
    40f0:	00000556 	0x00000556
    40f4:	26080305 	ldptr.d	$r5,$r24,2048(0x800)
    40f8:	c8121c00 	0xc8121c00
    40fc:	cd1c0016 	0xcd1c0016
    4100:	a7000011 	0xa7000011
    4104:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    4108:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    410c:	1c00222c 	pcaddu12i	$r12,273(0x111)
    4110:	01550113 	0x01550113
    4114:	56011335 	bl	-53083888(0xcd60110) # fcd64224 <_RAM_DATA+0x7cd63224>
    4118:	26080305 	ldptr.d	$r5,$r24,2048(0x800)
    411c:	17001c00 	lu32i.d	$r0,-524064(0x800e0)
    4120:	1c0016d8 	pcaddu12i	$r24,182(0xb6)
    4124:	0000122e 	clo.w	$r14,$r17
    4128:	06540113 	0x06540113
    412c:	ac80a011 	0xac80a011
    4130:	01137bff 	fcopysign.d	$f31,$f31,$f30
    4134:	00310155 	0x00310155
    4138:	06622100 	0x06622100
    413c:	06620000 	0x06620000
    4140:	0b070000 	0x0b070000
    4144:	01422106 	0x01422106
    4148:	01420000 	0x01420000
    414c:	0f080000 	0x0f080000
    4150:	064e210d 	0x064e210d
    4154:	064e0000 	0x064e0000
    4158:	0a070000 	0x0a070000
    415c:	0beb2206 	0x0beb2206
    4160:	0beb0000 	0x0beb0000
    4164:	7e010000 	0x7e010000
    4168:	5e210601 	bne	$r16,$r1,-122620(0x22104) # fffe626c <_RAM_DATA+0x7ffe526c>
    416c:	5e00000a 	bne	$r0,$r10,-131072(0x20000) # fffe416c <_RAM_DATA+0x7ffe316c>
    4170:	0900000a 	0x0900000a
    4174:	cd210c4d 	0xcd210c4d
    4178:	cd000009 	0xcd000009
    417c:	09000009 	0x09000009
    4180:	9521064e 	0x9521064e
    4184:	95000009 	0x95000009
    4188:	0a000009 	0x0a000009
    418c:	72210607 	0x72210607
    4190:	72000006 	0x72000006
    4194:	07000006 	0x07000006
    4198:	1421060c 	lu12i.w	$r12,67632(0x10830)
    419c:	14000006 	lu12i.w	$r6,0
    41a0:	07000006 	0x07000006
    41a4:	0b210609 	0x0b210609
    41a8:	0b000008 	0x0b000008
    41ac:	0b000008 	0x0b000008
    41b0:	Address 0x00000000000041b0 is out of bounds.


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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 1)
      34:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      38:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      3c:	0013490b 	maskeqz	$r11,$r8,$r18
      40:	00240400 	crc.w.b.w	$r0,$r0,$r1
      44:	0b3e0b0b 	0x0b3e0b0b
      48:	00000803 	0x00000803
      4c:	49003505 	bcnez	$fcc0,1376308(0x150034) # 150080 <_start-0x1beaff80>
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	06000013 	cacop	0x13,$r0,0
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
      54:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      58:	34070000 	0x34070000
test_uart_send():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      5c:	3a0e0300 	0x3a0e0300
TIM_Init():
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
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49
      7c:	03000d09 	lu52i.d	$r9,$r8,3(0x3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
      80:	3b0b3a0e 	0x3b0b3a0e
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
      e8:	00050e00 	alsl.w	$r0,$r16,$r3,0x3
      ec:	0b3a0803 	0x0b3a0803
      f0:	0b39053b 	0x0b39053b
      f4:	17021349 	lu32i.d	$r9,-520038(0x8109a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
      f8:	001742b7 	sll.w	$r23,$r21,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
      fc:	00050f00 	alsl.w	$r0,$r24,$r3,0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
     100:	0b3a0e03 	0x0b3a0e03
     104:	0b39053b 	0x0b39053b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
     108:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     10c:	001742b7 	sll.w	$r23,$r21,$r16
     110:	00181000 	sra.w	$r0,$r0,$r4
     114:	34110000 	0x34110000
     118:	3a080300 	0x3a080300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
     11c:	39053b0b 	0x39053b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
     120:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 1)
     124:	12000018 	addu16i.d	$r24,$r0,-32768(0x8000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     128:	0e030034 	0x0e030034
     12c:	053b0b3a 	0x053b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     130:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     134:	42b71702 	beqz	$r24,702228(0xab714) # ab848 <_start-0x1bf547b8>
     138:	13000017 	addu16i.d	$r23,$r0,-16384(0xc000)
     13c:	01018289 	0x01018289
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     140:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     144:	8a140000 	0x8a140000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
     148:	02000182 	slti	$r2,$r12,0
     14c:	18429118 	pcaddi	$r24,136328(0x21488)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     150:	0f150000 	0x0f150000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
     154:	490b0b00 	0x490b0b00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:245
     158:	16000013 	lu32i.d	$r19,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246
     15c:	0b0b000f 	0x0b0b000f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
     160:	00000e03 	0x00000e03
     164:	3f012e17 	0x3f012e17
     168:	3a0e0319 	0x3a0e0319
     16c:	390b3b0b 	0x390b3b0b
     170:	4919270b 	0x4919270b
     174:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
     178:	97184006 	0x97184006
     17c:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     180:	05180000 	0x05180000
     184:	3a080300 	0x3a080300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     188:	390b3b0b 	0x390b3b0b
     18c:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     190:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     194:	05190000 	0x05190000
     198:	3a0e0300 	0x3a0e0300
     19c:	390b3b0b 	0x390b3b0b
     1a0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     1a4:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     1a8:	341a0000 	0x341a0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     1ac:	3a080300 	0x3a080300
     1b0:	390b3b0b 	0x390b3b0b
     1b4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     1b8:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     1bc:	341b0000 	0x341b0000
     1c0:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
     1c4:	390b3b0b 	0x390b3b0b
     1c8:	0213490b 	slti	$r11,$r8,1234(0x4d2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257
     1cc:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
     1d0:	0a1c0000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr24
     1d4:	3a0e0300 	0x3a0e0300
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
     1d8:	390b3b0b 	0x390b3b0b
     1dc:	0001110b 	0x0001110b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 2)
     1e0:	82891d00 	0x82891d00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
     1e4:	01110001 	fscaleb.d	$f1,$f0,$f0
     1e8:	00001331 	clo.w	$r17,$r25
     1ec:	0182891e 	0x0182891e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
     1f0:	31011101 	0x31011101
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
     1f4:	00130113 	maskeqz	$r19,$r8,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
     1f8:	00341f00 	0x00341f00
     1fc:	0b3a0803 	0x0b3a0803
     200:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     204:	18021349 	pcaddi	$r9,4250(0x109a)
     208:	01200000 	0x01200000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
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
     5c0:	24020000 	ldptr.w	$r0,$r0,512(0x200)
     5c4:	3e0b0b00 	0x3e0b0b00
     5c8:	000e030b 	bytepick.d	$r11,$r24,$r0,0x4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	00160300 	orn	$r0,$r24,$r0
     5d0:	0b3a0e03 	0x0b3a0e03
     5d4:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	00001349 	clo.w	$r9,$r26
     5dc:	0b002404 	0x0b002404
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     5e4:	05000008 	0x05000008
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	0b3e0104 	0x0b3e0104
     5ec:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
     5f0:	0b3b0b3a 	0x0b3b0b3a
     5f4:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     5f8:	28060000 	ld.b	$r0,$r0,384(0x180)
     5fc:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
     600:	0700000b 	0x0700000b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	08030028 	0x08030028
     608:	00000b1c 	0x00000b1c
     60c:	03003408 	lu52i.d	$r8,$r0,13(0xd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	3b0b3a0e 	0x3b0b3a0e
     614:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d114c <_start-0x1bd2eeb4>
     618:	3c193f13 	0x3c193f13
     61c:	09000019 	0x09000019
     620:	0b0b0113 	0x0b0b0113
     624:	053b0b3a 	0x053b0b3a
     628:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     62c:	0d0a0000 	0x0d0a0000
     630:	3a0e0300 	0x3a0e0300
     634:	39053b0b 	0x39053b0b
     638:	3813490b 	0x3813490b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	0b00000b 	0x0b00000b
     640:	0e030016 	0x0e030016
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	053b0b3a 	0x053b0b3a
     648:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	130c0000 	addu16i.d	$r0,$r0,-15616(0xc300)
     650:	3a0b0b01 	0x3a0b0b01
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	390b3b0b 	0x390b3b0b
     658:	0013010b 	maskeqz	$r11,$r8,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	000d0d00 	bytepick.d	$r0,$r8,$r3,0x2
     660:	0b3a0e03 	0x0b3a0e03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	0b390b3b 	0x0b390b3b
     668:	0b381349 	0x0b381349
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	2e0e0000 	0x2e0e0000
     670:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     674:	3b0b3a0e 	0x3b0b3a0e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     67c:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	97184006 	0x97184006
     684:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	050f0000 	0x050f0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	3a0e0300 	0x3a0e0300
     690:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     698:	10000018 	addu16i.d	$r24,$r0,0
     69c:	0e030005 	0x0e030005
     6a0:	0b3b0b3a 	0x0b3b0b3a
     6a4:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     6a8:	42b71702 	beqz	$r24,702228(0xab714) # abdbc <_start-0x1bf54244>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	11000017 	addu16i.d	$r23,$r0,16384(0x4000)
     6b0:	0b0b000f 	0x0b0b000f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	00001349 	clo.w	$r9,$r26
     6b8:	3f012e12 	0x3f012e12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	3a0e0319 	0x3a0e0319
     6c0:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	4919270b 	0x4919270b
     6c8:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	97184006 	0x97184006
     6d0:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	34130000 	0x34130000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	3a0e0300 	0x3a0e0300
     6dc:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     6e4:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	34140000 	0x34140000
     6ec:	3a080300 	0x3a080300
     6f0:	390b3b0b 	0x390b3b0b
     6f4:	1c13490b 	pcaddu12i	$r11,39496(0x9a48)
     6f8:	1500000b 	lu12i.w	$r11,-524288(0x80000)
     6fc:	193f012e 	pcaddi	$r14,-395255(0x9f809)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	0b3a0e03 	0x0b3a0e03
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	0b390b3b 	0x0b390b3b
     708:	01111927 	fscaleb.d	$f7,$f9,$f6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	18400612 	pcaddi	$r18,131120(0x20030)
     710:	00194297 	srl.d	$r23,$r20,$r16
     714:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     718:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     724:	00171001 	sll.w	$r1,$r0,$r4
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	00240200 	crc.w.b.w	$r0,$r16,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	0b3e0b0b 	0x0b3e0b0b
     730:	00000e03 	0x00000e03
     734:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     738:	3b0b3a0e 	0x3b0b3a0e
     73c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1274 <_start-0x1bd2ed8c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	04000013 	csrrd	$r19,0x0
     744:	0b0b0024 	0x0b0b0024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	08030b3e 	0x08030b3e
     74c:	35050000 	0x35050000
     750:	00134900 	maskeqz	$r0,$r8,$r18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	00340600 	0x00340600
     758:	0b3a0e03 	0x0b3a0e03
     75c:	0b390b3b 	0x0b390b3b
     760:	193f1349 	pcaddi	$r9,-395110(0x9f89a)
     764:	0000193c 	cto.w	$r28,$r9
     768:	0b011307 	0x0b011307
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	3b0b3a0b 	0x3b0b3a0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	010b390b 	fmin.d	$f11,$f8,$f14
     774:	08000013 	0x08000013
     778:	0e03000d 	0x0e03000d
     77c:	0b3b0b3a 	0x0b3b0b3a
     780:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     784:	00000b38 	0x00000b38
     788:	3f012e09 	0x3f012e09
     78c:	3a0e0319 	0x3a0e0319
     790:	390b3b0b 	0x390b3b0b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     798:	40061201 	beqz	$r16,263696(0x40610) # 40da8 <_start-0x1bfbf258>
     79c:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     7a0:	00001301 	clo.w	$r1,$r24
     7a4:	0182890a 	0x0182890a
     7a8:	31011101 	0x31011101
     7ac:	0b000013 	0x0b000013
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	0001828a 	0x0001828a
     7b4:	42911802 	beqz	$r0,692504(0xa9118) # a98cc <_start-0x1bf56734>
     7b8:	0c000018 	0x0c000018
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	193f002e 	pcaddi	$r14,-395263(0x9f801)
     7c0:	0b3a0e03 	0x0b3a0e03
     7c4:	0b390b3b 	0x0b390b3b
     7c8:	01111927 	fscaleb.d	$f7,$f9,$f6
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	18400612 	pcaddi	$r18,131120(0x20030)
     7d0:	00194297 	srl.d	$r23,$r20,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	012e0d00 	0x012e0d00
     7d8:	0e03193f 	0x0e03193f
     7dc:	0b3b0b3a 	0x0b3b0b3a
     7e0:	19270b39 	pcaddi	$r25,-444327(0x93859)
     7e4:	06120111 	cacop	0x11,$r8,1152(0x480)
     7e8:	42971840 	beqz	$r2,169752(0x29718) # 29f00 <_start-0x1bfd6100>
     7ec:	0e000019 	0x0e000019
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	0e030005 	0x0e030005
     7f4:	0b3b0b3a 	0x0b3b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	00001802 	cto.w	$r2,$r0
     800:	01110100 	fscaleb.d	$f0,$f8,$f0
     804:	0b130e25 	0x0b130e25
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	0e1b0e03 	0x0e1b0e03
     80c:	01111755 	fscaleb.d	$f21,$f26,$f5
     810:	00001710 	clz.w	$r16,$r24
     814:	0b002402 	0x0b002402
     818:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     81c:	0300000e 	lu52i.d	$r14,$r0,0
     820:	0e030016 	0x0e030016
     824:	0b3b0b3a 	0x0b3b0b3a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	3e0b0b00 	0x3e0b0b00
     834:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	01040500 	0x01040500
     83c:	0b0b0b3e 	0x0b0b0b3e
     840:	0b3a1349 	0x0b3a1349
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	0b390b3b 	0x0b390b3b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	00001301 	clo.w	$r1,$r24
     84c:	03002806 	lu52i.d	$r6,$r0,10(0xa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	000b1c0e 	0x000b1c0e
     854:	00280700 	0x00280700
     858:	0b1c0803 	0x0b1c0803
     85c:	34080000 	0x34080000
     860:	3a0e0300 	0x3a0e0300
     864:	390b3b0b 	0x390b3b0b
     868:	3f13490b 	0x3f13490b
     86c:	00193c19 	srl.d	$r25,$r0,$r15
     870:	01130900 	fcopysign.d	$f0,$f8,$f2
     874:	0b3a0b0b 	0x0b3a0b0b
     878:	0b390b3b 	0x0b390b3b
     87c:	00001301 	clo.w	$r1,$r24
     880:	03000d0a 	lu52i.d	$r10,$r8,3(0x3)
     884:	3b0b3a0e 	0x3b0b3a0e
     888:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d13c0 <_start-0x1bd2ec40>
     88c:	000b3813 	0x000b3813
     890:	012e0b00 	0x012e0b00
     894:	0e03193f 	0x0e03193f
     898:	0b3b0b3a 	0x0b3b0b3a
     89c:	19270b39 	pcaddi	$r25,-444327(0x93859)
     8a0:	06120111 	cacop	0x11,$r8,1152(0x480)
     8a4:	42971840 	beqz	$r2,169752(0x29718) # 29fbc <_start-0x1bfd6044>
     8a8:	00130119 	maskeqz	$r25,$r8,$r0
     8ac:	00050c00 	alsl.w	$r0,$r0,$r3,0x3
     8b0:	0b3a0e03 	0x0b3a0e03
     8b4:	0b390b3b 	0x0b390b3b
     8b8:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     8bc:	001742b7 	sll.w	$r23,$r21,$r16
     8c0:	012e0d00 	0x012e0d00
     8c4:	0e03193f 	0x0e03193f
     8c8:	0b3b0b3a 	0x0b3b0b3a
     8cc:	19270b39 	pcaddi	$r25,-444327(0x93859)
     8d0:	01111349 	fscaleb.d	$f9,$f26,$f4
     8d4:	18400612 	pcaddi	$r18,131120(0x20030)
     8d8:	01194297 	0x01194297
     8dc:	0e000013 	0x0e000013
     8e0:	0e030034 	0x0e030034
     8e4:	0b3b0b3a 	0x0b3b0b3a
     8e8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     8ec:	42b71702 	beqz	$r24,702228(0xab714) # ac000 <_start-0x1bf54000>
     8f0:	0f000017 	0x0f000017
     8f4:	0e030005 	0x0e030005
     8f8:	0b3b0b3a 	0x0b3b0b3a
     8fc:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     900:	00001802 	cto.w	$r2,$r0
     904:	0b000f10 	0x0b000f10
     908:	0013490b 	maskeqz	$r11,$r8,$r18
     90c:	012e1100 	0x012e1100
     910:	0e03193f 	0x0e03193f
     914:	0b3b0b3a 	0x0b3b0b3a
     918:	19270b39 	pcaddi	$r25,-444327(0x93859)
     91c:	06120111 	cacop	0x11,$r8,1152(0x480)
     920:	42971840 	beqz	$r2,169752(0x29718) # 2a038 <_start-0x1bfd5fc8>
     924:	00000019 	0x00000019
     928:	25011101 	stptr.w	$r1,$r8,272(0x110)
     92c:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
     930:	550e1b0e 	bl	-63369704(0xc390e18) # fc391748 <_RAM_DATA+0x7c390748>
     934:	10011117 	addu16i.d	$r23,$r8,68(0x44)
     938:	02000017 	slti	$r23,$r0,0
     93c:	0b0b0024 	0x0b0b0024
     940:	0e030b3e 	0x0e030b3e
     944:	16030000 	lu32i.d	$r0,6144(0x1800)
     948:	3a0e0300 	0x3a0e0300
     94c:	390b3b0b 	0x390b3b0b
     950:	0013490b 	maskeqz	$r11,$r8,$r18
     954:	00240400 	crc.w.b.w	$r0,$r0,$r1
     958:	0b3e0b0b 	0x0b3e0b0b
     95c:	00000803 	0x00000803
     960:	49003505 	bcnez	$fcc0,1376308(0x150034) # 150994 <_start-0x1beaf66c>
     964:	06000013 	cacop	0x13,$r0,0
     968:	0e030034 	0x0e030034
     96c:	0b3b0b3a 	0x0b3b0b3a
     970:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     974:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
     978:	13070000 	addu16i.d	$r0,$r0,-15936(0xc1c0)
     97c:	3a0b0b01 	0x3a0b0b01
     980:	390b3b0b 	0x390b3b0b
     984:	0013010b 	maskeqz	$r11,$r8,$r0
     988:	000d0800 	bytepick.d	$r0,$r0,$r2,0x2
     98c:	0b3a0e03 	0x0b3a0e03
     990:	0b390b3b 	0x0b390b3b
     994:	0b381349 	0x0b381349
     998:	0d090000 	0x0d090000
     99c:	3a080300 	0x3a080300
     9a0:	390b3b0b 	0x390b3b0b
     9a4:	3813490b 	0x3813490b
     9a8:	0a00000b 	0x0a00000b
     9ac:	0e030113 	0x0e030113
     9b0:	0b3a0b0b 	0x0b3a0b0b
     9b4:	0b390b3b 	0x0b390b3b
     9b8:	00001301 	clo.w	$r1,$r24
     9bc:	0b000f0b 	0x0b000f0b
     9c0:	0013490b 	maskeqz	$r11,$r8,$r18
     9c4:	00340c00 	0x00340c00
     9c8:	0b3a0e03 	0x0b3a0e03
     9cc:	0b390b3b 	0x0b390b3b
     9d0:	18021349 	pcaddi	$r9,4250(0x109a)
     9d4:	010d0000 	fmaxa.d	$f0,$f0,$f0
     9d8:	01134901 	fcopysign.d	$f1,$f8,$f18
     9dc:	0e000013 	0x0e000013
     9e0:	13490021 	addu16i.d	$r1,$r1,-11712(0xd240)
     9e4:	00000b2f 	0x00000b2f
     9e8:	3f012e0f 	0x3f012e0f
     9ec:	3a0e0319 	0x3a0e0319
     9f0:	390b3b0b 	0x390b3b0b
     9f4:	1201110b 	addu16i.d	$r11,$r8,-32700(0x8044)
     9f8:	97184006 	0x97184006
     9fc:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     a00:	2e100000 	0x2e100000
     a04:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     a08:	3b0b3a0e 	0x3b0b3a0e
     a0c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1544 <_start-0x1bd2eabc>
     a10:	01193c13 	0x01193c13
     a14:	11000013 	addu16i.d	$r19,$r0,16384(0x4000)
     a18:	00000018 	0x00000018
     a1c:	03003412 	lu52i.d	$r18,$r0,13(0xd)
     a20:	3b0b3a08 	0x3b0b3a08
     a24:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d155c <_start-0x1bd2eaa4>
     a28:	b7170213 	0xb7170213
     a2c:	00001742 	clz.w	$r2,$r26
     a30:	11010b13 	addu16i.d	$r19,$r24,16450(0x4042)
     a34:	01061201 	0x01061201
     a38:	14000013 	lu12i.w	$r19,0
     a3c:	01018289 	0x01018289
     a40:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     a44:	8a150000 	0x8a150000
     a48:	02000182 	slti	$r2,$r12,0
     a4c:	18429118 	pcaddi	$r24,136328(0x21488)
     a50:	89160000 	0x89160000
     a54:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     a58:	01133101 	fcopysign.d	$f1,$f8,$f12
     a5c:	17000013 	lu32i.d	$r19,-524288(0x80000)
     a60:	00018289 	0x00018289
     a64:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     a68:	2e180000 	0x2e180000
     a6c:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     a70:	3b0b3a0e 	0x3b0b3a0e
     a74:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     a78:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     a7c:	97184006 	0x97184006
     a80:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     a84:	05190000 	0x05190000
     a88:	3a080300 	0x3a080300
     a8c:	390b3b0b 	0x390b3b0b
     a90:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     a94:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     a98:	2e1a0000 	0x2e1a0000
     a9c:	3c193f00 	0x3c193f00
     aa0:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
     aa4:	3b0b3a0e 	0x3b0b3a0e
     aa8:	000b390b 	0x000b390b
     aac:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     ab0:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     ab4:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     ab8:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     abc:	00171001 	sll.w	$r1,$r0,$r4
     ac0:	00240200 	crc.w.b.w	$r0,$r16,$r0
     ac4:	0b3e0b0b 	0x0b3e0b0b
     ac8:	00000e03 	0x00000e03
     acc:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     ad0:	3b0b3a0e 	0x3b0b3a0e
     ad4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d160c <_start-0x1bd2e9f4>
     ad8:	04000013 	csrrd	$r19,0x0
     adc:	0b0b0024 	0x0b0b0024
     ae0:	08030b3e 	0x08030b3e
     ae4:	34050000 	0x34050000
     ae8:	3a0e0300 	0x3a0e0300
     aec:	390b3b0b 	0x390b3b0b
     af0:	3f13490b 	0x3f13490b
     af4:	00193c19 	srl.d	$r25,$r0,$r15
     af8:	01040600 	0x01040600
     afc:	0b0b0b3e 	0x0b0b0b3e
     b00:	0b3a1349 	0x0b3a1349
     b04:	0b390b3b 	0x0b390b3b
     b08:	00001301 	clo.w	$r1,$r24
     b0c:	03002807 	lu52i.d	$r7,$r0,10(0xa)
     b10:	000b1c0e 	0x000b1c0e
     b14:	01130800 	fcopysign.d	$f0,$f0,$f2
     b18:	0b0b0e03 	0x0b0b0e03
     b1c:	0b3b0b3a 	0x0b3b0b3a
     b20:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     b24:	0d090000 	0x0d090000
     b28:	3a0e0300 	0x3a0e0300
     b2c:	390b3b0b 	0x390b3b0b
     b30:	3813490b 	0x3813490b
     b34:	0a00000b 	0x0a00000b
     b38:	0b0b000f 	0x0b0b000f
     b3c:	00001349 	clo.w	$r9,$r26
     b40:	3f012e0b 	0x3f012e0b
     b44:	3a0e0319 	0x3a0e0319
     b48:	390b3b0b 	0x390b3b0b
     b4c:	4919270b 	0x4919270b
     b50:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
     b54:	97184006 	0x97184006
     b58:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     b5c:	050c0000 	0x050c0000
     b60:	3a080300 	0x3a080300
     b64:	390b3b0b 	0x390b3b0b
     b68:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     b6c:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     b70:	340d0000 	0x340d0000
     b74:	3a080300 	0x3a080300
     b78:	390b3b0b 	0x390b3b0b
     b7c:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     b80:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     b84:	890e0000 	0x890e0000
     b88:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     b8c:	01133101 	fcopysign.d	$f1,$f8,$f12
     b90:	0f000013 	0x0f000013
     b94:	0001828a 	0x0001828a
     b98:	42911802 	beqz	$r0,692504(0xa9118) # a9cb0 <_start-0x1bf56350>
     b9c:	10000018 	addu16i.d	$r24,$r0,0
     ba0:	01018289 	0x01018289
     ba4:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     ba8:	2e110000 	0x2e110000
     bac:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     bb0:	3b0b3a0e 	0x3b0b3a0e
     bb4:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
     bb8:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     bbc:	97184006 	0x97184006
     bc0:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     bc4:	05120000 	0x05120000
     bc8:	3a080300 	0x3a080300
     bcc:	390b3b0b 	0x390b3b0b
     bd0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     bd4:	13000018 	addu16i.d	$r24,$r0,-16384(0xc000)
     bd8:	0e030005 	0x0e030005
     bdc:	0b3b0b3a 	0x0b3b0b3a
     be0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     be4:	00001802 	cto.w	$r2,$r0
     be8:	3f012e14 	0x3f012e14
     bec:	3a0e0319 	0x3a0e0319
     bf0:	390b3b0b 	0x390b3b0b
     bf4:	4919270b 	0x4919270b
     bf8:	12011113 	addu16i.d	$r19,$r8,-32700(0x8044)
     bfc:	97184006 	0x97184006
     c00:	00001942 	cto.w	$r2,$r10
     c04:	01110100 	fscaleb.d	$f0,$f8,$f0
     c08:	0b130e25 	0x0b130e25
     c0c:	0e1b0e03 	0x0e1b0e03
     c10:	01111755 	fscaleb.d	$f21,$f26,$f5
     c14:	00001710 	clz.w	$r16,$r24
     c18:	0b002402 	0x0b002402
     c1c:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     c20:	0300000e 	lu52i.d	$r14,$r0,0
     c24:	0e030016 	0x0e030016
     c28:	0b3b0b3a 	0x0b3b0b3a
     c2c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     c30:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
     c34:	3e0b0b00 	0x3e0b0b00
     c38:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
     c3c:	00350500 	0x00350500
     c40:	00001349 	clo.w	$r9,$r26
     c44:	49002606 	0x49002606
     c48:	07000013 	0x07000013
     c4c:	0e030034 	0x0e030034
     c50:	0b3b0b3a 	0x0b3b0b3a
     c54:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     c58:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
     c5c:	34080000 	0x34080000
     c60:	3a0e0300 	0x3a0e0300
     c64:	390b3b0b 	0x390b3b0b
     c68:	3f13490b 	0x3f13490b
     c6c:	00180219 	sra.w	$r25,$r16,$r0
     c70:	01130900 	fcopysign.d	$f0,$f8,$f2
     c74:	0b0b0e03 	0x0b0b0e03
     c78:	0b3b0b3a 	0x0b3b0b3a
     c7c:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     c80:	0d0a0000 	0x0d0a0000
     c84:	3a0e0300 	0x3a0e0300
     c88:	390b3b0b 	0x390b3b0b
     c8c:	3813490b 	0x3813490b
     c90:	0b00000b 	0x0b00000b
     c94:	0b0b000f 	0x0b0b000f
     c98:	00001349 	clo.w	$r9,$r26
     c9c:	2701150c 	stptr.d	$r12,$r8,276(0x114)
     ca0:	01134919 	fcopysign.d	$f25,$f8,$f18
     ca4:	0d000013 	fsel	$f19,$f0,$f0,$fcc0
     ca8:	13490005 	addu16i.d	$r5,$r0,-11712(0xd240)
     cac:	0f0e0000 	0x0f0e0000
     cb0:	000b0b00 	0x000b0b00
     cb4:	01010f00 	fadd.d	$f0,$f24,$f3
     cb8:	13011349 	addu16i.d	$r9,$r26,-16316(0xc044)
     cbc:	21100000 	sc.w	$r0,$r0,4096(0x1000)
     cc0:	2f134900 	0x2f134900
     cc4:	1100000b 	addu16i.d	$r11,$r0,16384(0x4000)
     cc8:	08030034 	0x08030034
     ccc:	0b3b0b3a 	0x0b3b0b3a
     cd0:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     cd4:	00001802 	cto.w	$r2,$r0
     cd8:	27001512 	stptr.d	$r18,$r8,20(0x14)
     cdc:	13000019 	addu16i.d	$r25,$r0,-16384(0xc000)
     ce0:	08030034 	0x08030034
     ce4:	053b0b3a 	0x053b0b3a
     ce8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     cec:	1802193f 	pcaddi	$r31,4297(0x10c9)
     cf0:	2e140000 	0x2e140000
     cf4:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     cf8:	3b0b3a0e 	0x3b0b3a0e
     cfc:	270b3905 	stptr.d	$r5,$r8,2872(0xb38)
     d00:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     d04:	97184006 	0x97184006
     d08:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     d0c:	89150000 	0x89150000
     d10:	11000182 	addu16i.d	$r2,$r12,16384(0x4000)
     d14:	00133101 	maskeqz	$r1,$r8,$r12
     d18:	012e1600 	0x012e1600
     d1c:	0e03193f 	0x0e03193f
     d20:	053b0b3a 	0x053b0b3a
     d24:	19270b39 	pcaddi	$r25,-444327(0x93859)
     d28:	01111349 	fscaleb.d	$f9,$f26,$f4
     d2c:	18400612 	pcaddi	$r18,131120(0x20030)
     d30:	01194297 	0x01194297
     d34:	17000013 	lu32i.d	$r19,-524288(0x80000)
     d38:	08030034 	0x08030034
     d3c:	053b0b3a 	0x053b0b3a
     d40:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     d44:	00001802 	cto.w	$r2,$r0
     d48:	11010b18 	addu16i.d	$r24,$r24,16450(0x4042)
     d4c:	01061201 	0x01061201
     d50:	19000013 	pcaddi	$r19,-524288(0x80000)
     d54:	08030034 	0x08030034
     d58:	053b0b3a 	0x053b0b3a
     d5c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     d60:	42b71702 	beqz	$r24,702228(0xab714) # ac474 <_start-0x1bf53b8c>
     d64:	1a000017 	pcalau12i	$r23,0
     d68:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     d6c:	0b3a0e03 	0x0b3a0e03
     d70:	0b390b3b 	0x0b390b3b
     d74:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
     d78:	06120111 	cacop	0x11,$r8,1152(0x480)
     d7c:	42971840 	beqz	$r2,169752(0x29718) # 2a494 <_start-0x1bfd5b6c>
     d80:	00130119 	maskeqz	$r25,$r8,$r0
     d84:	00341b00 	0x00341b00
     d88:	0b3a0803 	0x0b3a0803
     d8c:	0b390b3b 	0x0b390b3b
     d90:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     d94:	001742b7 	sll.w	$r23,$r21,$r16
     d98:	00341c00 	0x00341c00
     d9c:	0b3a0e03 	0x0b3a0e03
     da0:	0b390b3b 	0x0b390b3b
     da4:	18021349 	pcaddi	$r9,4250(0x109a)
     da8:	341d0000 	0x341d0000
     dac:	3a0e0300 	0x3a0e0300
     db0:	390b3b0b 	0x390b3b0b
     db4:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     db8:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     dbc:	0a1e0000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr28
     dc0:	3a0e0300 	0x3a0e0300
     dc4:	390b3b0b 	0x390b3b0b
     dc8:	0001110b 	0x0001110b
     dcc:	82891f00 	0x82891f00
     dd0:	01110101 	fscaleb.d	$f1,$f8,$f0
     dd4:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
     dd8:	8a200000 	0x8a200000
     ddc:	02000182 	slti	$r2,$r12,0
     de0:	18429118 	pcaddi	$r24,136328(0x21488)
     de4:	89210000 	0x89210000
     de8:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     dec:	00130101 	maskeqz	$r1,$r8,$r0
     df0:	82892200 	0x82892200
     df4:	01110101 	fscaleb.d	$f1,$f8,$f0
     df8:	00001331 	clo.w	$r17,$r25
     dfc:	03000523 	lu52i.d	$r3,$r9,1(0x1)
     e00:	3b0b3a0e 	0x3b0b3a0e
     e04:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d193c <_start-0x1bd2e6c4>
     e08:	b7170213 	0xb7170213
     e0c:	00001742 	clz.w	$r2,$r26
     e10:	03000524 	lu52i.d	$r4,$r9,1(0x1)
     e14:	3b0b3a0e 	0x3b0b3a0e
     e18:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1950 <_start-0x1bd2e6b0>
     e1c:	00180213 	sra.w	$r19,$r16,$r0
     e20:	002e2500 	0x002e2500
     e24:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
     e28:	0e030e6e 	0x0e030e6e
     e2c:	0b3b0b3a 	0x0b3b0b3a
     e30:	00000b39 	0x00000b39
     e34:	01110100 	fscaleb.d	$f0,$f8,$f0
     e38:	0b130e25 	0x0b130e25
     e3c:	0e1b0e03 	0x0e1b0e03
     e40:	01111755 	fscaleb.d	$f21,$f26,$f5
     e44:	00001710 	clz.w	$r16,$r24
     e48:	0b002402 	0x0b002402
     e4c:	030b3e0b 	lu52i.d	$r11,$r16,719(0x2cf)
     e50:	0300000e 	lu52i.d	$r14,$r0,0
     e54:	0e030016 	0x0e030016
     e58:	0b3b0b3a 	0x0b3b0b3a
     e5c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     e60:	24040000 	ldptr.w	$r0,$r0,1024(0x400)
     e64:	3e0b0b00 	0x3e0b0b00
     e68:	0008030b 	bytepick.w	$r11,$r24,$r0,0x0
     e6c:	00350500 	0x00350500
     e70:	00001349 	clo.w	$r9,$r26
     e74:	49002606 	0x49002606
     e78:	07000013 	0x07000013
     e7c:	0e030034 	0x0e030034
     e80:	0b3b0b3a 	0x0b3b0b3a
     e84:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     e88:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
     e8c:	13080000 	addu16i.d	$r0,$r0,-15872(0xc200)
     e90:	3a0b0b01 	0x3a0b0b01
     e94:	39053b0b 	0x39053b0b
     e98:	0013010b 	maskeqz	$r11,$r8,$r0
     e9c:	000d0900 	bytepick.d	$r0,$r8,$r2,0x2
     ea0:	0b3a0e03 	0x0b3a0e03
     ea4:	0b39053b 	0x0b39053b
     ea8:	0b381349 	0x0b381349
     eac:	160a0000 	lu32i.d	$r0,20480(0x5000)
     eb0:	3a0e0300 	0x3a0e0300
     eb4:	39053b0b 	0x39053b0b
     eb8:	0013490b 	maskeqz	$r11,$r8,$r18
     ebc:	01010b00 	fadd.d	$f0,$f24,$f2
     ec0:	13011349 	addu16i.d	$r9,$r26,-16316(0xc044)
     ec4:	210c0000 	sc.w	$r0,$r0,3072(0xc00)
     ec8:	2f134900 	0x2f134900
     ecc:	0d00000b 	fsel	$f11,$f0,$f0,$fcc0
     ed0:	0b0b000f 	0x0b0b000f
     ed4:	00001349 	clo.w	$r9,$r26
     ed8:	2700150e 	stptr.d	$r14,$r8,20(0x14)
     edc:	0f000019 	0x0f000019
     ee0:	0e030034 	0x0e030034
     ee4:	0b3b0b3a 	0x0b3b0b3a
     ee8:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     eec:	1802193f 	pcaddi	$r31,4297(0x10c9)
     ef0:	2e100000 	0x2e100000
     ef4:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     ef8:	3b0b3a0e 	0x3b0b3a0e
     efc:	270b3905 	stptr.d	$r5,$r8,2872(0xb38)
     f00:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     f04:	97184006 	0x97184006
     f08:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     f0c:	89110000 	0x89110000
     f10:	11000182 	addu16i.d	$r2,$r12,16384(0x4000)
     f14:	00133101 	maskeqz	$r1,$r8,$r12
     f18:	82891200 	0x82891200
     f1c:	01110101 	fscaleb.d	$f1,$f8,$f0
     f20:	13011331 	addu16i.d	$r17,$r25,-16316(0xc044)
     f24:	8a130000 	0x8a130000
     f28:	02000182 	slti	$r2,$r12,0
     f2c:	18429118 	pcaddi	$r24,136328(0x21488)
     f30:	34140000 	0x34140000
     f34:	3a0e0300 	0x3a0e0300
     f38:	39053b0b 	0x39053b0b
     f3c:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     f40:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     f44:	0b150000 	0x0b150000
     f48:	12011101 	addu16i.d	$r1,$r8,-32700(0x8044)
     f4c:	00130106 	maskeqz	$r6,$r8,$r0
     f50:	00341600 	0x00341600
     f54:	0b3a0803 	0x0b3a0803
     f58:	0b39053b 	0x0b39053b
     f5c:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     f60:	001742b7 	sll.w	$r23,$r21,$r16
     f64:	82891700 	0x82891700
     f68:	01110101 	fscaleb.d	$f1,$f8,$f0
     f6c:	00001331 	clo.w	$r17,$r25
     f70:	3f012e18 	0x3f012e18
     f74:	3a0e0319 	0x3a0e0319
     f78:	39053b0b 	0x39053b0b
     f7c:	3c13490b 	0x3c13490b
     f80:	00130119 	maskeqz	$r25,$r8,$r0
     f84:	00181900 	sra.w	$r0,$r8,$r6
     f88:	341a0000 	0x341a0000
     f8c:	3a0e0300 	0x3a0e0300
     f90:	39053b0b 	0x39053b0b
     f94:	0013490b 	maskeqz	$r11,$r8,$r18
     f98:	00341b00 	0x00341b00
     f9c:	0b3a0803 	0x0b3a0803
     fa0:	0b39053b 	0x0b39053b
     fa4:	00001349 	clo.w	$r9,$r26
     fa8:	0300341c 	lu52i.d	$r28,$r0,13(0xd)
     fac:	3b0b3a0e 	0x3b0b3a0e
     fb0:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151ae8 <_start-0x1beae518>
     fb4:	00180213 	sra.w	$r19,$r16,$r0
     fb8:	012e1d00 	0x012e1d00
     fbc:	0e03193f 	0x0e03193f
     fc0:	0b3b0b3a 	0x0b3b0b3a
     fc4:	19270b39 	pcaddi	$r25,-444327(0x93859)
     fc8:	06120111 	cacop	0x11,$r8,1152(0x480)
     fcc:	42971840 	beqz	$r2,169752(0x29718) # 2a6e4 <_start-0x1bfd591c>
     fd0:	00130119 	maskeqz	$r25,$r8,$r0
     fd4:	00341e00 	0x00341e00
     fd8:	0b3a0e03 	0x0b3a0e03
     fdc:	0b390b3b 	0x0b390b3b
     fe0:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     fe4:	001742b7 	sll.w	$r23,$r21,$r16
     fe8:	00341f00 	0x00341f00
     fec:	13490e03 	addu16i.d	$r3,$r16,-11709(0xd243)
     ff0:	18021934 	pcaddi	$r20,4297(0x10c9)
     ff4:	89200000 	0x89200000
     ff8:	11000182 	addu16i.d	$r2,$r12,16384(0x4000)
     ffc:	18429301 	pcaddi	$r1,136344(0x21498)
    1000:	2e210000 	0x2e210000
    1004:	3c193f00 	0x3c193f00
    1008:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
    100c:	3b0b3a0e 	0x3b0b3a0e
    1010:	000b390b 	0x000b390b
    1014:	002e2200 	0x002e2200
    1018:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
    101c:	0e030e6e 	0x0e030e6e
    1020:	053b0b3a 	0x053b0b3a
    1024:	00000b39 	0x00000b39
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 1)
  34:	00000020 	0x00000020
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
  38:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
  3c:	0000001c 	0x0000001c
  40:	1c001148 	pcaddu12i	$r8,138(0x8a)
  44:	000000f0 	0x000000f0
  48:	1c001238 	pcaddu12i	$r24,145(0x91)
  4c:	00000058 	0x00000058
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
  50:	1c001290 	pcaddu12i	$r16,148(0x94)
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
  54:	00000208 	0x00000208
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
  58:	00000000 	0x00000000
test_uart_send():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
  5c:	00000064 	0x00000064
TIM_Init():
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
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49
  7c:	0000022c 	0x0000022c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
  80:	00000000 	0x00000000
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
  e8:	00000000 	0x00000000
  ec:	00000048 	0x00000048
  f0:	00000000 	0x00000000
  f4:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
  f8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
  fc:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
 100:	00000000 	0x00000000
 104:	00000068 	0x00000068
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
 108:	00000000 	0x00000000
 10c:	00000054 	0x00000054
	...
 118:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
 11c:	106d0002 	addu16i.d	$r2,$r0,6976(0x1b40)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
 120:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
 12c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
 130:	00000000 	0x00000000
 134:	0000000c 	0x0000000c
 138:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
 13c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
 140:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
 144:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
 148:	00000000 	0x00000000
 14c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
 150:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
 154:	00000008 	0x00000008
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:245
 158:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246
 15c:	0000000c 	0x0000000c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
 160:	00000000 	0x00000000
 164:	00000010 	0x00000010
 168:	00000000 	0x00000000
 16c:	00000054 	0x00000054
 170:	00000000 	0x00000000
 174:	00000050 	0x00000050
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
 180:	0000004c 	0x0000004c
 184:	12ab0002 	addu16i.d	$r2,$r0,-21824(0xaac0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
 188:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
 194:	00000014 	0x00000014
 198:	00000000 	0x00000000
 19c:	000000d0 	0x000000d0
 1a0:	00000000 	0x00000000
 1a4:	00000018 	0x00000018
 1a8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
 1ac:	00000014 	0x00000014
 1b0:	00000000 	0x00000000
 1b4:	00000010 	0x00000010
 1b8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
 1bc:	00000030 	0x00000030
 1c0:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
 1c4:	00000010 	0x00000010
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
 1d0:	0000002c 	0x0000002c
 1d4:	16690002 	lu32i.d	$r2,215040(0x34800)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
 1d8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
 1e4:	00000024 	0x00000024
 1e8:	1c0014dc 	pcaddu12i	$r28,166(0xa6)
 1ec:	00000014 	0x00000014
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
 1f0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
 1f4:	00000020 	0x00000020
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
 200:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
 204:	19110002 	pcaddi	$r2,-489472(0x88800)
 208:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
 214:	0000007c 	0x0000007c
 218:	00000000 	0x00000000
 21c:	00000044 	0x00000044
 220:	00000000 	0x00000000
 224:	0000002c 	0x0000002c
 228:	00000000 	0x00000000
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
 22c:	00000050 	0x00000050
 230:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
 234:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
 238:	00000000 	0x00000000
 23c:	00000010 	0x00000010
 240:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
 244:	00000010 	0x00000010
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
 248:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
 24c:	00000010 	0x00000010
 250:	1c0014f0 	pcaddu12i	$r16,167(0xa7)
 254:	00000018 	0x00000018
 258:	1c001508 	pcaddu12i	$r8,168(0xa8)
 25c:	0000002c 	0x0000002c
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
 268:	00000034 	0x00000034
 26c:	1c3e0002 	pcaddu12i	$r2,126976(0x1f000)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
 270:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
 27c:	0000004c 	0x0000004c
 280:	1c001534 	pcaddu12i	$r20,169(0xa9)
 284:	00000034 	0x00000034
 288:	00000000 	0x00000000
 28c:	0000005c 	0x0000005c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
 290:	00000000 	0x00000000
 294:	00000060 	0x00000060
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 2a0:	00000084 	0x00000084
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	207c0002 	ll.w	$r2,$r0,31744(0x7c00)
 2a8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b4:	00000044 	0x00000044
 2b8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	00000044 	0x00000044
 2c0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	00000020 	0x00000020
 2c8:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	00000064 	0x00000064
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	00000000 	0x00000000
 2d4:	0000001c 	0x0000001c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	00000000 	0x00000000
 2dc:	0000001c 	0x0000001c
 2e0:	00000000 	0x00000000
 2e4:	00000044 	0x00000044
 2e8:	00000000 	0x00000000
 2ec:	00000060 	0x00000060
 2f0:	00000000 	0x00000000
 2f4:	00000058 	0x00000058
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	1c001568 	pcaddu12i	$r8,171(0xab)
 2fc:	00000054 	0x00000054
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	00000058 	0x00000058
 308:	00000000 	0x00000000
 30c:	00000058 	0x00000058
 310:	00000000 	0x00000000
 314:	00000054 	0x00000054
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	00000000 	0x00000000
 31c:	0000007c 	0x0000007c
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
 328:	0000003c 	0x0000003c
 32c:	264f0002 	ldptr.d	$r2,$r0,20224(0x4f00)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
 33c:	00000004 	0x00000004
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	00000140 	0x00000140
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	00000000 	0x00000000
 34c:	00000878 	0x00000878
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c0015bc 	pcaddu12i	$r28,173(0xad)
 354:	000000ec 	0x000000ec
 358:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	00000028 	0x00000028
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 368:	0000015c 	0x0000015c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	2f780002 	0x2f780002
 370:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 374:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	1c0016a8 	pcaddu12i	$r8,181(0xb5)
 37c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	1c0016e4 	pcaddu12i	$r4,183(0xb7)
 384:	0000003c 	0x0000003c
 388:	1c001720 	pcaddu12i	$r0,185(0xb9)
 38c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c00175c 	pcaddu12i	$r28,186(0xba)
 394:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c001798 	pcaddu12i	$r24,188(0xbc)
 39c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	0000003c 	0x0000003c
 3a8:	1c001810 	pcaddu12i	$r16,192(0xc0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c00184c 	pcaddu12i	$r12,194(0xc2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	0000003c 	0x0000003c
 3b8:	1c001888 	pcaddu12i	$r8,196(0xc4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	0000003c 	0x0000003c
 3c0:	1c0018c4 	pcaddu12i	$r4,198(0xc6)
 3c4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c001900 	pcaddu12i	$r0,200(0xc8)
 3cc:	0000003c 	0x0000003c
 3d0:	1c00193c 	pcaddu12i	$r28,201(0xc9)
 3d4:	0000003c 	0x0000003c
 3d8:	1c001978 	pcaddu12i	$r24,203(0xcb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	0000003c 	0x0000003c
 3e0:	1c0019b4 	pcaddu12i	$r20,205(0xcd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
 3e4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
 3e8:	1c0019f0 	pcaddu12i	$r16,207(0xcf)
 3ec:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
 3f0:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
 3f4:	0000003c 	0x0000003c
 3f8:	1c001a68 	pcaddu12i	$r8,211(0xd3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
 3fc:	0000003c 	0x0000003c
 400:	1c001aa4 	pcaddu12i	$r4,213(0xd5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
 404:	0000003c 	0x0000003c
 408:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
 40c:	0000003c 	0x0000003c
 410:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
 414:	0000003c 	0x0000003c
 418:	1c001b58 	pcaddu12i	$r24,218(0xda)
 41c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
 420:	1c001b94 	pcaddu12i	$r20,220(0xdc)
 424:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
 428:	1c001bd0 	pcaddu12i	$r16,222(0xde)
 42c:	0000003c 	0x0000003c
 430:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
 434:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 438:	1c001c48 	pcaddu12i	$r8,226(0xe2)
 43c:	0000003c 	0x0000003c
 440:	1c001c84 	pcaddu12i	$r4,228(0xe4)
 444:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
 448:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
 44c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
 450:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
 454:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
 458:	1c001d38 	pcaddu12i	$r24,233(0xe9)
 45c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
 460:	1c001d74 	pcaddu12i	$r20,235(0xeb)
 464:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 468:	1c001db0 	pcaddu12i	$r16,237(0xed)
 46c:	0000003c 	0x0000003c
 470:	1c001dec 	pcaddu12i	$r12,239(0xef)
 474:	0000003c 	0x0000003c
 478:	1c001e28 	pcaddu12i	$r8,241(0xf1)
 47c:	00000098 	0x00000098
 480:	00000000 	0x00000000
 484:	00000024 	0x00000024
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
 488:	00000000 	0x00000000
 48c:	00000034 	0x00000034
 490:	1c001ec0 	pcaddu12i	$r0,246(0xf6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
 494:	00000030 	0x00000030
 498:	1c001ef0 	pcaddu12i	$r16,247(0xf7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
 49c:	0000004c 	0x0000004c
 4a0:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
 4a4:	00000020 	0x00000020
 4a8:	1c001f5c 	pcaddu12i	$r28,250(0xfa)
 4ac:	00000090 	0x00000090
 4b0:	1c001fec 	pcaddu12i	$r12,255(0xff)
 4b4:	000000c8 	0x000000c8
 4b8:	1c0020b4 	pcaddu12i	$r20,261(0x105)
 4bc:	00000028 	0x00000028
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 1)
      34:	65747379 	bge	$r27,$r25,95344(0x17470) # 174a4 <_start-0x1bfe8b5c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      38:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373164 <_start-0x1bc8ce9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      3c:	2f323031 	0x2f323031
      40:	2f637273 	0x2f637273
      44:	742f7773 	xvaddwev.d.wu	$xr19,$xr27,$xr29
      48:	65677261 	bge	$r19,$r1,92016(0x16770) # 167b8 <_start-0x1bfe9848>
      4c:	74735c74 	xvmin.w	$xr20,$xr3,$xr23
Wake_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:91 (discriminator 2)
      50:	2e747261 	0x2e747261
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
      54:	3a440053 	0x3a440053
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      58:	6573555c 	bge	$r10,$r28,95060(0x17354) # 173ac <_start-0x1bfe8c54>
test_uart_send():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 1)
      5c:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
TIM_Init():
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
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49
      7c:	72505f68 	0x72505f68
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
      80:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
      e8:	4c445f52 	jirl	$r18,$r26,17500(0x445c)
      ec:	5500485f 	bl	24969288(0x17d0048) # 17d0134 <_start-0x1a82fecc>
      f0:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5540 <_RAM_DATA+0x7fff4540>
      f4:	65707954 	bge	$r10,$r20,94328(0x17078) # 1716c <_start-0x1bfe8e94>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
      f8:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
      fc:	676e6f6c 	bge	$r27,$r12,-37268(0x36e6c) # ffff6f68 <_RAM_DATA+0x7fff5f68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
     100:	6e6f6c20 	bgeu	$r1,$r0,-102548(0x26f6c) # fffe706c <_RAM_DATA+0x7ffe606c>
     104:	6e692067 	bgeu	$r3,$r7,-104160(0x26920) # fffe6a24 <_RAM_DATA+0x7ffe5a24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
     108:	796d0074 	0x796d0074
     10c:	63746567 	blt	$r11,$r7,-35740(0x37464) # ffff7570 <_RAM_DATA+0x7fff6570>
     110:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
     114:	5f746477 	bne	$r3,$r23,-35740(0x37464) # ffff7578 <_RAM_DATA+0x7fff6578>
     118:	6c6c6163 	bgeu	$r11,$r3,27744(0x6c60) # 6d78 <_start-0x1bff9288>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
     11c:	5f007265 	bne	$r19,$r5,-65424(0x30070) # ffff018c <_RAM_DATA+0x7ffef18c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
     120:	6975625f 	bltu	$r18,$r31,95584(0x17560) # 17680 <_start-0x1bfe8980>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 1)
     124:	6e69746c 	bgeu	$r3,$r12,-104076(0x26974) # fffe6a98 <_RAM_DATA+0x7ffe5a98>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     128:	5f61765f 	bne	$r18,$r31,-40588(0x36174) # ffff629c <_RAM_DATA+0x7fff529c>
     12c:	7473696c 	xvmin.w	$xr12,$xr11,$xr26
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     130:	755f5f00 	0x755f5f00
     134:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
     138:	00745f32 	bstrins.w	$r18,$r25,0x14,0x17
     13c:	756c6176 	0x756c6176
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     140:	796d0065 	0x796d0065
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     144:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6ab4 <_RAM_DATA+0x7ffe5ab4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
     148:	73006674 	0x73006674
     14c:	656c7274 	bge	$r19,$r20,93296(0x16c70) # 16dbc <_start-0x1bfe9244>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     150:	6172006e 	blt	$r3,$r14,94720(0x17200) # 17350 <_start-0x1bfe8cb0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
     154:	7600646e 	0x7600646e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:245
     158:	74757073 	xvmax.wu	$xr19,$xr3,$xr28
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246
     15c:	72616863 	0x72616863
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
     160:	6f687300 	bgeu	$r24,$r0,-38800(0x36870) # ffff69d0 <_RAM_DATA+0x7fff59d0>
     164:	75207472 	xvpickod.b	$xr18,$xr3,$xr29
     168:	6769736e 	bge	$r27,$r14,-38544(0x36970) # ffff6ad8 <_RAM_DATA+0x7fff5ad8>
     16c:	2064656e 	ll.w	$r14,$r11,25700(0x6464)
     170:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     174:	63727473 	blt	$r3,$r19,-36236(0x37274) # ffff73e8 <_RAM_DATA+0x7fff63e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
     178:	55007970 	bl	96534648(0x5c10078) # 5c101f0 <_start-0x163efe10>
     17c:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff55cc <_RAM_DATA+0x7fff45cc>
     180:	646e6553 	bge	$r10,$r19,28260(0x6e64) # 6fe4 <_start-0x1bff901c>
     184:	61746144 	blt	$r10,$r4,95328(0x17460) # 175e4 <_start-0x1bfe8a1c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     188:	70796d00 	0x70796d00
     18c:	68637475 	bltu	$r3,$r21,25460(0x6374) # 6500 <_start-0x1bff9b00>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     190:	53007261 	b	-108593040(0x9870070) # f9870200 <_RAM_DATA+0x7986f200>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     194:	4c504d41 	jirl	$r1,$r10,20556(0x504c)
     198:	54435f45 	bl	-49003684(0xd14435c) # fd1444f4 <_RAM_DATA+0x7d1434f4>
     19c:	47004c52 	bnez	$r2,-3473332(0x4b004c) # ffcb01e8 <_RAM_DATA+0x7fcaf1e8>
     1a0:	4320554e 	beqz	$r10,3874900(0x3b2054) # 3b21f4 <_start-0x1bc4de0c>
     1a4:	38203939 	ldx.bu	$r25,$r9,$r14
     1a8:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     1ac:	616d2d20 	blt	$r9,$r0,93484(0x16d2c) # 16ed8 <_start-0x1bfe9128>
     1b0:	693d6962 	bltu	$r11,$r2,81256(0x13d68) # 13f18 <_start-0x1bfec0e8>
     1b4:	3233706c 	0x3233706c
     1b8:	6d2d2073 	bgeu	$r3,$r19,77088(0x12d20) # 12ed8 <_start-0x1bfed128>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     1bc:	68637261 	bltu	$r19,$r1,25456(0x6370) # 652c <_start-0x1bff9ad4>
     1c0:	6f6f6c3d 	bgeu	$r1,$r29,-37012(0x36f6c) # ffff712c <_RAM_DATA+0x7fff612c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
     1c4:	7261676e 	0x7261676e
     1c8:	32336863 	0x32336863
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257
     1cc:	666d2d20 	bge	$r9,$r0,-103124(0x26d2c) # fffe6ef8 <_RAM_DATA+0x7ffe5ef8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
     1d0:	6e3d7570 	bgeu	$r11,$r16,-115340(0x23d74) # fffe3f44 <_RAM_DATA+0x7ffe2f44>
     1d4:	20656e6f 	ll.w	$r15,$r19,25964(0x656c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
     1d8:	6d636d2d 	bgeu	$r9,$r13,90988(0x1636c) # 16544 <_start-0x1bfe9abc>
     1dc:	6c65646f 	bgeu	$r3,$r15,25956(0x6564) # 6740 <_start-0x1bff98c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 2)
     1e0:	726f6e3d 	0x726f6e3d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
     1e4:	206c616d 	ll.w	$r13,$r11,27744(0x6c60)
     1e8:	75746d2d 	0x75746d2d
     1ec:	6c3d656e 	bgeu	$r11,$r14,15716(0x3d64) # 3f50 <_start-0x1bffc0b0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
     1f0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff705c <_RAM_DATA+0x7fff605c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
     1f4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6564 <_start-0x1bff9a9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
     1f8:	2d203233 	0x2d203233
     1fc:	4f2d2067 	jirl	$r7,$r3,-53984(0x32d20)
     200:	4f2d2030 	jirl	$r16,$r1,-53984(0x32d20)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     204:	732d2067 	vslli.d	$vr7,$vr3,0x8
     208:	673d6474 	bge	$r3,$r20,-49820(0x33d64) # ffff3f6c <_RAM_DATA+0x7fff2f6c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     20c:	3939756e 	0x3939756e
     210:	66662d20 	bge	$r9,$r0,-104916(0x2662c) # fffe683c <_RAM_DATA+0x7ffe583c>
     214:	74636e75 	xvabsd.wu	$xr21,$xr19,$xr27
     218:	2d6e6f69 	0x2d6e6f69
     21c:	74636573 	xvabsd.wu	$xr19,$xr11,$xr25
     220:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
     224:	64662d20 	bge	$r9,$r0,26156(0x662c) # 6850 <_start-0x1bff97b0>
     228:	2d617461 	0x2d617461
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	74636573 	xvabsd.wu	$xr19,$xr11,$xr25
     230:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	73662d20 	vssrani.du.q	$vr0,$vr9,0xb
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	64656863 	bge	$r3,$r3,25960(0x6568) # 67a0 <_start-0x1bff9860>
     23c:	6572702d 	bge	$r1,$r13,94832(0x17270) # 174ac <_start-0x1bfe8b54>
     240:	72757373 	0x72757373
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	662d2065 	bge	$r3,$r5,-119520(0x22d20) # fffe2f64 <_RAM_DATA+0x7ffe1f64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	622d6f6e 	blt	$r27,$r14,-119444(0x22d6c) # fffe2fb4 <_RAM_DATA+0x7ffe1fb4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	746c6975 	0x746c6975
     250:	61006e69 	blt	$r19,$r9,65644(0x1006c) # 102bc <_start-0x1bfefd44>
     254:	6e696167 	bgeu	$r11,$r7,-104096(0x26960) # fffe6bb4 <_RAM_DATA+0x7ffe5bb4>
     258:	67666300 	bge	$r24,$r0,-39328(0x36660) # ffff68b8 <_RAM_DATA+0x7fff58b8>
     25c:	6961775f 	bltu	$r26,$r31,90484(0x16174) # 163d0 <_start-0x1bfe9c30>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	5f706f74 	bne	$r27,$r20,-36756(0x3706c) # ffff72cc <_RAM_DATA+0x7fff62cc>
     264:	65656c73 	bge	$r3,$r19,91500(0x1656c) # 167d0 <_start-0x1bfe9830>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	6c660070 	bgeu	$r3,$r16,26112(0x6600) # 6868 <_start-0x1bff9798>
     26c:	0074616f 	bstrins.w	$r15,$r11,0x14,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	69736e75 	bltu	$r19,$r21,95084(0x1736c) # 175dc <_start-0x1bfe8a24>
     274:	64656e67 	bge	$r19,$r7,25964(0x656c) # 67e0 <_start-0x1bff9820>
     278:	61686320 	blt	$r25,$r0,92256(0x16860) # 16ad8 <_start-0x1bfe9528>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	68730072 	bltu	$r3,$r18,29440(0x7300) # 757c <_start-0x1bff8a84>
     280:	2074726f 	ll.w	$r15,$r19,29808(0x7470)
     284:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     288:	6e61725f 	bgeu	$r18,$r31,-106128(0x26170) # fffe63f8 <_RAM_DATA+0x7ffe53f8>
     28c:	656e5f64 	bge	$r27,$r4,93788(0x16e5c) # 170e8 <_start-0x1bfe8f18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	66007478 	bge	$r3,$r24,-130956(0x20074) # fffe0304 <_RAM_DATA+0x7ffdf304>
     294:	616d726f 	blt	$r19,$r15,93552(0x16d70) # 17004 <_start-0x1bfe8ffc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	72700074 	0x72700074
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	42746e69 	beqz	$r19,2520172(0x26746c) # 267708 <_start-0x1bd988f8>
     2a0:	65006675 	bge	$r19,$r21,65636(0x10064) # 10304 <_start-0x1bfefcfc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	695f7478 	bltu	$r3,$r24,89972(0x15f74) # 16218 <_start-0x1bfe9de8>
     2a8:	0072746e 	bstrins.w	$r14,$r3,0x12,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	5f544144 	bne	$r10,$r4,-43968(0x35440) # ffff56ec <_RAM_DATA+0x7fff46ec>
     2b0:	4c5f4c44 	jirl	$r4,$r2,24396(0x5f4c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	70737600 	vmin.w	$vr0,$vr16,$vr29
     2b8:	746e6972 	0x746e6972
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	54530066 	bl	26759936(0x1985300) # 19855bc <_start-0x1a67aa44>
     2c0:	53555441 	b	17257812(0x1075554) # 1075814 <_start-0x1af8a7ec>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	67697300 	bge	$r24,$r0,-38544(0x36970) # ffff6c34 <_RAM_DATA+0x7fff5c34>
     2c8:	3a44006e 	0x3a44006e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	6573552f 	bge	$r9,$r15,95060(0x17354) # 17620 <_start-0x1bfe89e0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	772f7372 	0x772f7372
     2d4:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff721c <_RAM_DATA+0x7fff621c>
     2dc:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe6848 <_RAM_DATA+0x7ffe5848>
     2e0:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33250 <_RAM_DATA+0x7fd32250>
     2e4:	2f65646f 	0x2f65646f
     2e8:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe7254 <_RAM_DATA+0x7ffe6254>
     2ec:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff752c <_RAM_DATA+0x7fff652c>
     2f0:	72505f68 	0x72505f68
     2f4:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7160 <_RAM_DATA+0x7fff6160>
     2fc:	7379535f 	0x7379535f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	2f6d6574 	0x2f6d6574
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	30314331 	0x30314331
     308:	72732f32 	0x72732f32
     30c:	77732f63 	0x77732f63
     310:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe7880 <_RAM_DATA+0x7ffe6880>
     314:	2f63696c 	0x2f63696c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	7831736c 	0x7831736c
     31c:	6972705f 	bltu	$r2,$r31,94832(0x17270) # 1758c <_start-0x1bfe8a74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	2e66746e 	0x2e66746e
     324:	73760063 	0x73760063
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	73747570 	0x73747570
     32c:	70737600 	vmin.w	$vr0,$vr16,$vr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	746e6972 	0x746e6972
     334:	65736162 	bge	$r11,$r2,95072(0x17360) # 17694 <_start-0x1bfe896c>
     338:	73657200 	vssrani.wu.d	$vr0,$vr16,0x1c
     33c:	00746c75 	bstrins.w	$r21,$r3,0x14,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	5f727473 	bne	$r3,$r19,-36236(0x37274) # ffff75b4 <_RAM_DATA+0x7fff65b4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	00646c6f 	bstrins.w	$r15,$r3,0x4,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	54524155 	bl	89412160(0x5545240) # 5545588 <_start-0x16abaa78>
     34c:	6365525f 	blt	$r18,$r31,-39600(0x36550) # ffff689c <_RAM_DATA+0x7fff589c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	65766965 	bge	$r11,$r5,95848(0x17668) # 179b8 <_start-0x1bfe8648>
     354:	61746144 	blt	$r10,$r4,95328(0x17460) # 177b4 <_start-0x1bfe884c>
     358:	77654e00 	xvssrani.wu.d	$xr0,$xr16,0x13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
     360:	41550065 	beqz	$r3,1398016(0x155500) # 155860 <_start-0x1beaa7a0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	535f5452 	b	21716820(0x14b5f54) # 14b62b8 <_start-0x1ab49d48>
     368:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff78d8 <_RAM_DATA+0x7fff68d8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	696e4974 	bltu	$r11,$r20,93768(0x16e48) # 171b4 <_start-0x1bfe8e4c>
     370:	49440074 	bceqz	$fcc3,-3062784(0x514400) # ffd14770 <_RAM_DATA+0x7fd13770>
     374:	4c424153 	jirl	$r19,$r10,16960(0x4240)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	41550045 	beqz	$r2,1398016(0x155500) # 155878 <_start-0x1beaa788>
     37c:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc962d0 <_RAM_DATA+0x7fc952d0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	5374696e 	b	96171112(0x5bb7468) # 5bb77e8 <_start-0x16448818>
     384:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff78f4 <_RAM_DATA+0x7fff68f4>
     388:	41550074 	beqz	$r3,-3058432(0x515500) # ffd15888 <_RAM_DATA+0x7fd14888>
     38c:	00785452 	bstrins.w	$r18,$r2,0x18,0x15
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	54524155 	bl	89412160(0x5545240) # 55455d0 <_start-0x16abaa30>
     394:	726f575f 	0x726f575f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	6e654c64 	bgeu	$r3,$r4,-105140(0x2654c) # fffe68e4 <_RAM_DATA+0x7ffe58e4>
     39c:	00687467 	bstrins.w	$r7,$r3,0x8,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	42414e45 	beqz	$r18,1458508(0x16414c) # 1644ec <_start-0x1be9bb14>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	5500454c 	bl	87097412(0x5310044) # 53103e8 <_start-0x16cefc18>
     3a8:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff57f8 <_RAM_DATA+0x7fff47f8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	55005449 	bl	19202132(0x1250054) # 1250400 <_start-0x1adafc00>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5800 <_RAM_DATA+0x7fff4800>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     3b8:	72615500 	0x72615500
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	6e695f74 	bgeu	$r27,$r20,-104100(0x2695c) # fffe6d18 <_RAM_DATA+0x7ffe5d18>
     3c0:	62007469 	blt	$r3,$r9,-130956(0x20074) # fffe0434 <_RAM_DATA+0x7ffdf434>
     3c4:	74737469 	xvmin.w	$xr9,$xr3,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	73757461 	0x73757461
     3cc:	52415500 	b	67256660(0x4024154) # 4024520 <_start-0x17fdbae0>
     3d0:	65475f54 	bge	$r26,$r20,83804(0x1475c) # 14b2c <_start-0x1bfeb4d4>
     3d4:	53544974 	b	97735752(0x5d35448) # 5d3581c <_start-0x162ca7e4>
     3d8:	75746174 	0x75746174
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	61640073 	blt	$r3,$r19,91136(0x16400) # 167dc <_start-0x1bfe9824>
     3e0:	43006174 	beqz	$r11,-2949024(0x530060) # ffd30440 <_RAM_DATA+0x7fd2f440>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	6b636f6c 	bltu	$r27,$r12,-40084(0x3636c) # ffff6750 <_RAM_DATA+0x7fff5750>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	6572465f 	bge	$r18,$r31,94788(0x17244) # 1762c <_start-0x1bfe89d4>
     3ec:	41550071 	beqz	$r3,-3844864(0x455500) # ffc558ec <_RAM_DATA+0x7fc548ec>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	465f5452 	bnez	$r2,-3514540(0x4a5f54) # ffca6344 <_RAM_DATA+0x7fca5344>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	0047414c 	0x0047414c
     3f8:	54524155 	bl	89412160(0x5545240) # 5545638 <_start-0x16aba9c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	7261505f 	0x7261505f
     400:	5f797469 	bne	$r3,$r9,-34444(0x37974) # ffff7d74 <_RAM_DATA+0x7fff6d74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	746e6f43 	0x746e6f43
     408:	006c6f72 	bstrins.w	$r18,$r27,0xc,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	54524155 	bl	89412160(0x5545240) # 554564c <_start-0x16aba9b4>
     410:	5f54495f 	bne	$r10,$r31,-43960(0x35448) # ffff5858 <_RAM_DATA+0x7fff4858>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	47414c46 	bnez	$r2,1786188(0x1b414c) # 1b4560 <_start-0x1be4baa0>
     418:	2f3a4400 	0x2f3a4400
     41c:	72657355 	0x72657355
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17b4c <_start-0x1bfe84b4>
     424:	2f73676e 	0x2f73676e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	75636f44 	0x75636f44
     42c:	746e656d 	0x746e656d
     430:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff475c <_RAM_DATA+0x7fff375c>
     434:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff72a4 <_RAM_DATA+0x7fff62a4>
     43c:	68637241 	bltu	$r18,$r1,25456(0x6370) # 67ac <_start-0x1bff9854>
     440:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7690 <_RAM_DATA+0x7fff6690>
     444:	73736563 	0x73736563
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6bb4 <_RAM_DATA+0x7fff5bb4>
     44c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     454:	32303143 	0x32303143
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff76c8 <_RAM_DATA+0x7fff66c8>
     45c:	2f77732f 	0x2f77732f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 66d4 <_start-0x1bff992c>
     464:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 33c4 <_start-0x1bffcc3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7c98 <_RAM_DATA+0x7fff6c98>
     46c:	74726175 	xvmin.b	$xr21,$xr11,$xr24
     470:	4600632e 	bnez	$r25,3801184(0x3a0060) # 3a04d0 <_start-0x1bc5fb30>
     474:	74636e75 	xvabsd.wu	$xr21,$xr19,$xr27
     478:	616e6f69 	blt	$r27,$r9,93804(0x16e6c) # 172e4 <_start-0x1bfe8d1c>
     47c:	6174536c 	blt	$r27,$r12,95312(0x17450) # 178cc <_start-0x1bfe8734>
     480:	55006574 	bl	97583204(0x5d10064) # 5d104e4 <_start-0x162efb1c>
     484:	31747261 	0x31747261
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 172f0 <_start-0x1bfe8d10>
     48c:	41550074 	beqz	$r3,-3058432(0x515500) # ffd1598c <_RAM_DATA+0x7fd1498c>
     490:	545f5452 	bl	21520212(0x1485f54) # 14863e4 <_start-0x1ab79c1c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	65676972 	bge	$r11,$r18,92008(0x16768) # 16bfc <_start-0x1bfe9404>
     498:	45520072 	bnez	$r3,-3583488(0x495200) # ffc95698 <_RAM_DATA+0x7fc94698>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	00544553 	0x00544553
     4a0:	54524155 	bl	89412160(0x5545240) # 55456e0 <_start-0x16aba920>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	6572425f 	bge	$r18,$r31,94784(0x17240) # 176e4 <_start-0x1bfe891c>
     4a8:	435f6b61 	beqz	$r27,483176(0x75f68) # 76410 <_start-0x1bf89bf0>
     4ac:	72746e6f 	0x72746e6f
     4b0:	55006c6f 	bl	29163628(0x1bd006c) # 1bd051c <_start-0x1a42fae4>
     4b4:	49747261 	0x49747261
     4b8:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
     4bc:	74726155 	xvmin.b	$xr21,$xr10,$xr24
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	6e695f30 	bgeu	$r25,$r16,-104100(0x2695c) # fffe6e1c <_RAM_DATA+0x7ffe5e1c>
     4c4:	625f7469 	blt	$r3,$r9,-106636(0x25f74) # fffe6438 <_RAM_DATA+0x7ffe5438>
     4c8:	00646175 	bstrins.w	$r21,$r11,0x4,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	54524155 	bl	89412160(0x5545240) # 554570c <_start-0x16aba8f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	656c435f 	bge	$r26,$r31,93248(0x16c40) # 17110 <_start-0x1bfe8ef0>
     4d4:	54497261 	bl	-108770960(0x9844970) # f9844e44 <_RAM_DATA+0x79843e44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	646e6550 	bge	$r10,$r16,28260(0x6e64) # 733c <_start-0x1bff8cc4>
     4dc:	42676e69 	beqz	$r19,2516844(0x26676c) # 266c48 <_start-0x1bd993b8>
     4e0:	55007469 	bl	27590772(0x1a50074) # 1a50554 <_start-0x1a5afaac>
     4e4:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5934 <_RAM_DATA+0x7fff4934>
     4e8:	69726150 	bltu	$r10,$r16,94816(0x17260) # 17748 <_start-0x1bfe88b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	425f7974 	beqz	$r11,-2990216(0x525f78) # ffd26464 <_RAM_DATA+0x7fd25464>
     4f0:	435f6469 	beqz	$r3,2580324(0x275f64) # 276454 <_start-0x1bd89bac>
     4f4:	72746e6f 	0x72746e6f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	53006c6f 	b	29294700(0x1bf006c) # 1bf0564 <_start-0x1a40fa9c>
     4fc:	65747379 	bge	$r27,$r25,95344(0x17470) # 1796c <_start-0x1bfe8694>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	6572466d 	bge	$r19,$r13,94788(0x17244) # 17744 <_start-0x1bfe88bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	5f780071 	bne	$r3,$r17,-34816(0x37800) # ffff7d04 <_RAM_DATA+0x7fff6d04>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	63746567 	blt	$r11,$r7,-35740(0x37464) # ffff796c <_RAM_DATA+0x7fff696c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
     510:	616c6564 	blt	$r11,$r4,93284(0x16c64) # 17174 <_start-0x1bfe8e8c>
     514:	736d5f79 	vssrarni.wu.d	$vr25,$vr27,0x17
     518:	52415500 	b	67256660(0x4024154) # 402466c <_start-0x17fdb994>
     51c:	61505f54 	blt	$r26,$r20,86108(0x1505c) # 15578 <_start-0x1bfeaa88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	79746972 	0x79746972
     524:	755f5f00 	0x755f5f00
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	31746e69 	0x31746e69
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	00745f36 	bstrins.w	$r22,$r25,0x14,0x17
     530:	54524155 	bl	89412160(0x5545240) # 5545770 <_start-0x16aba890>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 1737c <_start-0x1bfe8c84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	70795474 	0x70795474
     53c:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe6a80 <_RAM_DATA+0x7ffe5a80>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	52415500 	b	67256660(0x4024154) # 4024694 <_start-0x17fdb96c>
     544:	61425f54 	blt	$r26,$r20,82524(0x1425c) # 147a0 <_start-0x1bfeb860>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	61526475 	blt	$r3,$r21,86628(0x15264) # 157ac <_start-0x1bfea854>
     54c:	55006574 	bl	97583204(0x5d10064) # 5d105b0 <_start-0x162efa50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff59a0 <_RAM_DATA+0x7fff49a0>
     554:	6f435449 	bgeu	$r2,$r9,-48300(0x34354) # ffff48a8 <_RAM_DATA+0x7fff38a8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffff6ebc <_RAM_DATA+0x7fff5ebc>
     55c:	52415500 	b	67256660(0x4024154) # 40246b0 <_start-0x17fdb950>
     560:	65475f54 	bge	$r26,$r20,83804(0x1475c) # 14cbc <_start-0x1bfeb344>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	616c4674 	blt	$r19,$r20,93252(0x16c44) # 171a8 <_start-0x1bfe8e58>
     568:	61745367 	blt	$r27,$r7,95312(0x17450) # 179b8 <_start-0x1bfe8648>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	00737574 	bstrins.w	$r20,$r11,0x13,0x1d
     570:	54524155 	bl	89412160(0x5545240) # 55457b0 <_start-0x16aba850>
     574:	6f74535f 	bgeu	$r26,$r31,-35760(0x37450) # ffff79c4 <_RAM_DATA+0x7fff69c4>
     578:	74694270 	xvavgr.w	$xr16,$xr19,$xr16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	61570073 	blt	$r3,$r19,87808(0x15700) # 15c7c <_start-0x1bfea384>
     580:	325f656b 	xvldrepl.h	$xr11,$r11,-78(0xfb2)
     584:	65733635 	bge	$r17,$r21,95028(0x17334) # 178b8 <_start-0x1bfe8748>
     588:	65535f63 	bge	$r27,$r3,86876(0x1535c) # 158e4 <_start-0x1bfea71c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	32700074 	0x32700074
     590:	65733635 	bge	$r17,$r21,95028(0x17334) # 178c4 <_start-0x1bfe873c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	69440063 	bltu	$r3,$r3,82944(0x14400) # 14994 <_start-0x1bfeb66c>
     598:	6c626173 	bgeu	$r11,$r19,25184(0x6260) # 67f8 <_start-0x1bff9808>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	746e4965 	0x746e4965
     5a0:	544e4900 	bl	67128904(0x4004e48) # 40053e8 <_start-0x17ffac18>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	00553233 	0x00553233
     5a8:	62616e45 	blt	$r18,$r5,-106132(0x2616c) # fffe6714 <_RAM_DATA+0x7ffe5714>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	6e49656c 	bgeu	$r11,$r12,-112284(0x24964) # fffe4f10 <_RAM_DATA+0x7ffe3f10>
     5b0:	3a440074 	0x3a440074
     5b4:	6573552f 	bge	$r9,$r15,95060(0x17354) # 17908 <_start-0x1bfe86f8>
     5b8:	772f7372 	0x772f7372
     5bc:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     5c0:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff7504 <_RAM_DATA+0x7fff6504>
     5c4:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe6b30 <_RAM_DATA+0x7ffe5b30>
     5c8:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33538 <_RAM_DATA+0x7fd32538>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	2f65646f 	0x2f65646f
     5d0:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe753c <_RAM_DATA+0x7ffe653c>
     5d4:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff7814 <_RAM_DATA+0x7fff6814>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	72505f68 	0x72505f68
     5dc:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7448 <_RAM_DATA+0x7fff6448>
     5e4:	7379535f 	0x7379535f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	2f6d6574 	0x2f6d6574
     5ec:	30314331 	0x30314331
     5f0:	72732f32 	0x72732f32
     5f4:	77732f63 	0x77732f63
     5f8:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe7b68 <_RAM_DATA+0x7ffe6b68>
     5fc:	2f63696c 	0x2f63696c
     600:	7831736c 	0x7831736c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	6d6f635f 	bgeu	$r26,$r31,94048(0x16f60) # 17564 <_start-0x1bfe8a9c>
     608:	2e6e6f6d 	0x2e6e6f6d
     60c:	69740063 	bltu	$r3,$r3,95232(0x17400) # 17a0c <_start-0x1bfe85f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	0072656d 	bstrins.w	$r13,$r11,0x12,0x19
     614:	5f746553 	bne	$r10,$r19,-35740(0x37464) # ffff7a78 <_RAM_DATA+0x7fff6a78>
     618:	74666f73 	xvavg.bu	$xr19,$xr27,$xr27
     61c:	6f74735f 	bgeu	$r26,$r31,-35728(0x37470) # ffff7a8c <_RAM_DATA+0x7fff6a8c>
     620:	61570070 	blt	$r3,$r16,87808(0x15700) # 15d20 <_start-0x1bfea2e0>
     624:	535f656b 	b	95379300(0x5af5f64) # 5af6588 <_start-0x16509a78>
     628:	53007465 	b	26673268(0x1970074) # 197069c <_start-0x1a68f964>
     62c:	735f7465 	vsrarni.d.q	$vr5,$vr3,0x5d
     630:	5f74666f 	bne	$r19,$r15,-35740(0x37464) # ffff7a94 <_RAM_DATA+0x7fff6a94>
     634:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     638:	38544e49 	0x38544e49
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	73490055 	vssrlni.w.d	$vr21,$vr2,0x0
     640:	626f6c47 	blt	$r2,$r7,-102548(0x26f6c) # fffe75ac <_RAM_DATA+0x7ffe65ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	6e496c61 	bgeu	$r3,$r1,-112276(0x2496c) # fffe4fb0 <_RAM_DATA+0x7ffe3fb0>
     648:	65704f74 	bge	$r27,$r20,94284(0x1704c) # 17694 <_start-0x1bfe896c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	6553006e 	bge	$r3,$r14,86784(0x15300) # 1594c <_start-0x1bfea6b4>
     650:	69545f74 	bltu	$r27,$r20,87132(0x1545c) # 15aac <_start-0x1bfea554>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	5f72656d 	bne	$r11,$r13,-36252(0x37264) # ffff78b8 <_RAM_DATA+0x7fff68b8>
     658:	706f7473 	0x706f7473
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 16fd0 <_start-0x1bfe9030>
     660:	65530065 	bge	$r3,$r5,86784(0x15300) # 15960 <_start-0x1bfea6a0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	69545f74 	bltu	$r27,$r20,87132(0x1545c) # 15ac0 <_start-0x1bfea540>
     668:	5f72656d 	bne	$r11,$r13,-36252(0x37264) # ffff78cc <_RAM_DATA+0x7fff68cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	61656c63 	blt	$r3,$r3,91500(0x1656c) # 16bd8 <_start-0x1bfe9428>
     670:	65530072 	bge	$r3,$r18,86784(0x15300) # 15970 <_start-0x1bfea690>
     674:	69545f74 	bltu	$r27,$r20,87132(0x1545c) # 15ad0 <_start-0x1bfea530>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	5f72656d 	bne	$r11,$r13,-36252(0x37264) # ffff78dc <_RAM_DATA+0x7fff68dc>
     67c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	6d6f6300 	bgeu	$r24,$r0,94048(0x16f60) # 175e0 <_start-0x1bfe8a20>
     684:	65726170 	bge	$r11,$r16,94816(0x17260) # 178e4 <_start-0x1bfe871c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	54584500 	bl	67131460(0x4005844) # 4005ecc <_start-0x17ffa134>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	6f4d5f49 	bgeu	$r26,$r9,-45732(0x34d5c) # ffff53e8 <_RAM_DATA+0x7fff43e8>
     690:	45006564 	bnez	$r11,1114212(0x110064) # 1106f4 <_start-0x1beef90c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	544e4958 	bl	90197576(0x5604e48) # 56054dc <_start-0x169fab24>
     698:	4744455f 	bnez	$r10,-48060(0x7f4444) # ffff4adc <_RAM_DATA+0x7fff3adc>
     69c:	6e650045 	bgeu	$r2,$r5,-105216(0x26500) # fffe6b9c <_RAM_DATA+0x7ffe5b9c>
     6a0:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 17300 <_start-0x1bfe8d00>
     6a4:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
     6a8:	45007375 	bnez	$r27,-2817936(0x550070) # ffd50718 <_RAM_DATA+0x7fd4f718>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5000 <_RAM_DATA+0x7fff4000>
     6b0:	67697254 	bge	$r18,$r20,-38544(0x36970) # ffff7020 <_RAM_DATA+0x7fff6020>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	00726567 	bstrins.w	$r7,$r11,0x12,0x19
     6b8:	4e495845 	jirl	$r5,$r2,-112296(0x24958)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	4e455f54 	jirl	$r20,$r26,-113316(0x2455c)
     6c0:	54584500 	bl	67131460(0x4005844) # 4005f04 <_start-0x17ffa0fc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	79545f49 	0x79545f49
     6c8:	65446570 	bge	$r11,$r16,83044(0x14464) # 14b2c <_start-0x1bfeb4d4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	58450066 	beq	$r3,$r6,17664(0x4500) # 4bcc <_start-0x1bffb434>
     6d0:	4d5f4954 	jirl	$r20,$r10,89928(0x15f48)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	5f65646f 	bne	$r3,$r15,-39580(0x36564) # ffff6c38 <_RAM_DATA+0x7fff5c38>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	65676445 	bge	$r2,$r5,92004(0x16764) # 16e3c <_start-0x1bfe91c4>
     6dc:	54584500 	bl	67131460(0x4005844) # 4005f20 <_start-0x17ffa0e0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	6e495f49 	bgeu	$r26,$r9,-112292(0x2495c) # fffe503c <_RAM_DATA+0x7ffe403c>
     6e4:	79547469 	0x79547469
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	65446570 	bge	$r11,$r16,83044(0x14464) # 14b4c <_start-0x1bfeb4b4>
     6ec:	58450066 	beq	$r3,$r6,17664(0x4500) # 4bec <_start-0x1bffb414>
     6f0:	495f4954 	bcnez	$fcc2,-3055800(0x515f48) # ffd16638 <_RAM_DATA+0x7fd15638>
     6f4:	5374696e 	b	96171112(0x5bb7468) # 5bb7b5c <_start-0x164484a4>
     6f8:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff7c68 <_RAM_DATA+0x7fff6c68>
     6fc:	58450074 	beq	$r3,$r20,17664(0x4500) # 4bfc <_start-0x1bffb404>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff5b4c <_RAM_DATA+0x7fff4b4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	00435253 	0x00435253
     708:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155b60 <_start-0x1beaa4a0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	6972545f 	bltu	$r2,$r31,94804(0x17254) # 17960 <_start-0x1bfe86a0>
     710:	72656767 	0x72656767
     714:	6c61465f 	bgeu	$r18,$r31,24900(0x6144) # 6858 <_start-0x1bff97a8>
     718:	676e696c 	bge	$r11,$r12,-37272(0x36e68) # ffff7580 <_RAM_DATA+0x7fff6580>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	776f4c5f 	xvssrarni.du.q	$xr31,$xr2,0x53
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	54584500 	bl	67131460(0x4005844) # 4005f64 <_start-0x17ffa09c>
     724:	6c435f49 	bgeu	$r26,$r9,17244(0x435c) # 4a80 <_start-0x1bffb580>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	46726165 	bnez	$r11,1471072(0x167260) # 167988 <_start-0x1be98678>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	0067616c 	bstrins.w	$r12,$r11,0x7,0x18
     730:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155b88 <_start-0x1beaa478>
     734:	65646f4d 	bge	$r26,$r13,91244(0x1646c) # 16ba0 <_start-0x1bfe9460>
     738:	7079545f 	0x7079545f
     73c:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe6c80 <_RAM_DATA+0x7ffe5c80>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	2f3a4400 	0x2f3a4400
     744:	72657355 	0x72657355
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17e74 <_start-0x1bfe818c>
     74c:	2f73676e 	0x2f73676e
     750:	75636f44 	0x75636f44
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	746e656d 	0x746e656d
     758:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4a84 <_RAM_DATA+0x7fff3a84>
     75c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     760:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff75cc <_RAM_DATA+0x7fff65cc>
     764:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6ad4 <_start-0x1bff952c>
     768:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff79b8 <_RAM_DATA+0x7fff69b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	73736563 	0x73736563
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6edc <_RAM_DATA+0x7fff5edc>
     774:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     778:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     77c:	32303143 	0x32303143
     780:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff79f0 <_RAM_DATA+0x7fff69f0>
     784:	2f77732f 	0x2f77732f
     788:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 69fc <_start-0x1bff9604>
     78c:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 36ec <_start-0x1bffc914>
     790:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7fc0 <_RAM_DATA+0x7fff6fc0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	69747865 	bltu	$r3,$r5,95352(0x17478) # 17c0c <_start-0x1bfe83f4>
     798:	6500632e 	bge	$r25,$r14,65632(0x10060) # 107f8 <_start-0x1bfef808>
     79c:	00697478 	bstrins.w	$r24,$r3,0x9,0x1d
     7a0:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155bf8 <_start-0x1beaa408>
     7a4:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 175ec <_start-0x1bfe8a14>
     7a8:	58450074 	beq	$r3,$r20,17664(0x4500) # 4ca8 <_start-0x1bffb358>
     7ac:	475f4954 	bnez	$r10,-2924728(0x535f48) # ffd366f4 <_RAM_DATA+0x7fd356f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	004f4950 	0x004f4950
     7b4:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155c0c <_start-0x1beaa3f4>
     7b8:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	67616c46 	bge	$r2,$r6,-40596(0x3616c) # ffff6928 <_RAM_DATA+0x7fff5928>
     7c0:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
     7c4:	45007375 	bnez	$r27,-2817936(0x550070) # ffd50834 <_RAM_DATA+0x7fd4f834>
     7c8:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff511c <_RAM_DATA+0x7fff411c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	6e496544 	bgeu	$r10,$r4,-112284(0x24964) # fffe5130 <_RAM_DATA+0x7ffe4130>
     7d0:	45007469 	bnez	$r3,2424948(0x250074) # 250844 <_start-0x1bdaf7bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5128 <_RAM_DATA+0x7fff4128>
     7d8:	75727453 	0x75727453
     7dc:	6e497463 	bgeu	$r3,$r3,-112268(0x24974) # fffe5150 <_RAM_DATA+0x7ffe4150>
     7e0:	45007469 	bnez	$r3,2424948(0x250074) # 250854 <_start-0x1bdaf7ac>
     7e4:	544e4958 	bl	90197576(0x5604e48) # 560562c <_start-0x169fa9d4>
     7e8:	4c4f505f 	jirl	$r31,$r2,20304(0x4f50)
     7ec:	54584500 	bl	67131460(0x4005844) # 4006030 <_start-0x17ff9fd0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	70475f49 	vsadd.w	$vr9,$vr26,$vr23
     7f4:	6d436f69 	bgeu	$r27,$r9,82796(0x1436c) # 14b60 <_start-0x1bfeb4a0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	58450064 	beq	$r3,$r4,17664(0x4500) # 4cf8 <_start-0x1bffb308>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	475f4954 	bnez	$r10,-2924728(0x535f48) # ffd36744 <_RAM_DATA+0x7fd35744>
     800:	54497465 	bl	26495348(0x1944974) # 1945174 <_start-0x1a6bae8c>
     804:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	45007375 	bnez	$r27,-2817936(0x550070) # ffd50878 <_RAM_DATA+0x7fd4f878>
     80c:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5160 <_RAM_DATA+0x7fff4160>
     810:	61656c43 	blt	$r2,$r3,91500(0x1656c) # 16d7c <_start-0x1bfe9284>
     814:	50544972 	b	97014856(0x5c85448) # 5c85c5c <_start-0x1637a3a4>
     818:	69646e65 	bltu	$r19,$r5,91244(0x1646c) # 16c84 <_start-0x1bfe937c>
     81c:	6942676e 	bltu	$r27,$r14,82532(0x14264) # 14a80 <_start-0x1bfeb580>
     820:	58450074 	beq	$r3,$r20,17664(0x4500) # 4d20 <_start-0x1bffb2e0>
     824:	4d5f4954 	jirl	$r20,$r10,89928(0x15f48)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	5f65646f 	bne	$r3,$r15,-39580(0x36564) # ffff6d8c <_RAM_DATA+0x7fff5d8c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	6576654c 	bge	$r10,$r12,95844(0x17664) # 17e90 <_start-0x1bfe8170>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	5845006c 	beq	$r3,$r12,17664(0x4500) # 4d30 <_start-0x1bffb2d0>
     834:	545f4954 	bl	89153352(0x5505f48) # 550677c <_start-0x16af9884>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	67676972 	bge	$r11,$r18,-39064(0x36768) # ffff6fa0 <_RAM_DATA+0x7fff5fa0>
     83c:	525f7265 	b	-107585680(0x9965f70) # f99667ac <_RAM_DATA+0x799657ac>
     840:	6e697369 	bgeu	$r27,$r9,-104080(0x26970) # fffe71b0 <_RAM_DATA+0x7ffe61b0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	69485f67 	bltu	$r27,$r7,84060(0x1485c) # 150a0 <_start-0x1bfeaf60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	45006867 	bnez	$r3,1900648(0x1d0068) # 1d08b0 <_start-0x1be2f750>
     84c:	54495458 	bl	23087444(0x1604954) # 16051a0 <_start-0x1a9fae60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	67676972 	bge	$r11,$r18,-39064(0x36768) # ffff6fb8 <_RAM_DATA+0x7fff5fb8>
     854:	545f7265 	bl	-107716752(0x9945f70) # f99467c4 <_RAM_DATA+0x799457c4>
     858:	44657079 	bnez	$r3,-1809040(0x646570) # ffe46dc8 <_RAM_DATA+0x7fe45dc8>
     85c:	49006665 	0x49006665
     860:	4c45534f 	jirl	$r15,$r26,17744(0x4550)
     864:	4f490030 	jirl	$r16,$r1,-46848(0x34900)
     868:	314c4553 	vstelm.h	$vr19,$r10,34(0x22),0x3
     86c:	534f4900 	b	67325768(0x4034f48) # 40357b4 <_start-0x17fca84c>
     870:	00324c45 	0x00324c45
     874:	45534f49 	bnez	$r26,2446156(0x25534c) # 255bc0 <_start-0x1bdaa440>
     878:	5700334c 	bl	-46989264(0xd330030) # fd3308a8 <_RAM_DATA+0x7d32f8a8>
     87c:	465f5444 	bnez	$r2,1204052(0x125f54) # 1267d0 <_start-0x1bed9830>
     880:	00444545 	0x00444545
     884:	53444d43 	b	84886604(0x50f444c) # 50f4cd0 <_start-0x16f0b330>
     888:	43005354 	beqz	$r26,-2949040(0x530050) # ffd308d8 <_RAM_DATA+0x7fd2f8d8>
     88c:	41504d4f 	beqz	$r10,4018252(0x3d504c) # 3d58d8 <_start-0x1bc2a728>
     890:	47004552 	bnez	$r10,-3473340(0x4b0044) # ffcb08d4 <_RAM_DATA+0x7fcaf8d4>
     894:	414f4950 	beqz	$r10,-4108472(0x414f48) # ffc157dc <_RAM_DATA+0x7fc147dc>
     898:	4100495f 	beqz	$r10,-196536(0x7d0048) # fffd08e0 <_RAM_DATA+0x7ffcf8e0>
     89c:	445f4344 	bnez	$r26,1072960(0x105f40) # 1067dc <_start-0x1bef9824>
     8a0:	50005441 	b	17039444(0x1040054) # 10408f4 <_start-0x1afbf70c>
     8a4:	45534c55 	bnez	$r2,-2796724(0x55534c) # ffd55bf0 <_RAM_DATA+0x7fd54bf0>
     8a8:	55500030 	bl	12668928(0xc15000) # c158a8 <_start-0x1b3ea758>
     8ac:	3145534c 	vstelm.h	$vr12,$r26,168(0xa8),0x1
     8b0:	2f3a4400 	0x2f3a4400
     8b4:	72657355 	0x72657355
     8b8:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17fe4 <_start-0x1bfe801c>
     8bc:	2f73676e 	0x2f73676e
     8c0:	75636f44 	0x75636f44
     8c4:	746e656d 	0x746e656d
     8c8:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4bf4 <_RAM_DATA+0x7fff3bf4>
     8cc:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     8d0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff773c <_RAM_DATA+0x7fff673c>
     8d4:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6c44 <_start-0x1bff93bc>
     8d8:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7b28 <_RAM_DATA+0x7fff6b28>
     8dc:	73736563 	0x73736563
     8e0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff704c <_RAM_DATA+0x7fff604c>
     8e4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     8e8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     8ec:	32303143 	0x32303143
     8f0:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7b60 <_RAM_DATA+0x7fff6b60>
     8f4:	2f77732f 	0x2f77732f
     8f8:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 6b6c <_start-0x1bff9494>
     8fc:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 385c <_start-0x1bffc7a4>
     900:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff8130 <_RAM_DATA+0x7fff7130>
     904:	2e676477 	0x2e676477
     908:	4f430063 	jirl	$r3,$r3,-48384(0x34300)
     90c:	00544e55 	0x00544e55
     910:	50494843 	b	17582408(0x10c4948) # 10c5258 <_start-0x1af3ada8>
     914:	4c525443 	jirl	$r3,$r2,21076(0x5254)
     918:	49504700 	0x49504700
     91c:	4f5f414f 	jirl	$r15,$r10,-41152(0x35f40)
     920:	4f500045 	jirl	$r5,$r2,-45056(0x35000)
     924:	5f524557 	bne	$r10,$r23,-44476(0x35244) # ffff5b68 <_RAM_DATA+0x7fff4b68>
     928:	00474643 	0x00474643
     92c:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
     930:	00495f42 	srai.d	$r2,$r26,0x17
     934:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
     938:	004f5f42 	0x004f5f42
     93c:	52455355 	b	-44677808(0xd564550) # fd564e8c <_RAM_DATA+0x7d563e8c>
     940:	5441445f 	bl	24920388(0x17c4144) # 17c4a84 <_start-0x1a83b57c>
     944:	4d430030 	jirl	$r16,$r1,82688(0x14300)
     948:	47005744 	bnez	$r26,1245268(0x130054) # 13099c <_start-0x1becf664>
     94c:	424f4950 	beqz	$r10,-4042936(0x424f48) # ffc25894 <_RAM_DATA+0x7fc24894>
     950:	00454f5f 	srli.d	$r31,$r26,0x13
     954:	5f434441 	bne	$r2,$r1,-48316(0x34344) # ffff4c98 <_RAM_DATA+0x7fff3c98>
     958:	4c525443 	jirl	$r3,$r2,21076(0x5254)
     95c:	49504700 	0x49504700
     960:	4f5f414f 	jirl	$r15,$r10,-41152(0x35f40)
     964:	53455200 	b	-134003376(0x8034550) # f8034eb4 <_RAM_DATA+0x78033eb4>
     968:	45565245 	bnez	$r18,1398352(0x155650) # 155fb8 <_start-0x1beaa048>
     96c:	52003044 	b	17956912(0x1120030) # 112099c <_start-0x1aedf664>
     970:	52455345 	b	-48872112(0xd164550) # fd164ec0 <_RAM_DATA+0x7d163ec0>
     974:	31444556 	vstelm.h	$vr22,$r10,34(0x22),0x1
     978:	554d5000 	bl	85328(0x14d50) # 156c8 <_start-0x1bfea938>
     97c:	7079545f 	0x7079545f
     980:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe6ec4 <_RAM_DATA+0x7ffe5ec4>
     984:	47445700 	bnez	$r24,214100(0x34454) # 34dd8 <_start-0x1bfcb228>
     988:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     98c:	63746157 	blt	$r10,$r23,-35744(0x37460) # ffff7dec <_RAM_DATA+0x7fff6dec>
     990:	676f4468 	bge	$r3,$r8,-37052(0x36f44) # ffff78d4 <_RAM_DATA+0x7fff68d4>
     994:	47445700 	bnez	$r24,214100(0x34454) # 34de8 <_start-0x1bfcb218>
     998:	676f445f 	bge	$r2,$r31,-37052(0x36f44) # ffff78dc <_RAM_DATA+0x7fff68dc>
     99c:	64656546 	bge	$r10,$r6,25956(0x6564) # 6f00 <_start-0x1bff9100>
     9a0:	67645700 	bge	$r24,$r0,-39852(0x36454) # ffff6df4 <_RAM_DATA+0x7fff5df4>
     9a4:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     9a8:	54445700 	bl	-67091372(0xc004454) # fc004dfc <_RAM_DATA+0x7c003dfc>
     9ac:	4746435f 	bnez	$r26,-47552(0x7f4640) # ffff4fec <_RAM_DATA+0x7fff3fec>
     9b0:	54584500 	bl	67131460(0x4005844) # 40061f4 <_start-0x17ff9e0c>
     9b4:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff5e00 <_RAM_DATA+0x7fff4e00>
     9b8:	54004e45 	bl	-116129716(0x914004c) # f9140a04 <_RAM_DATA+0x7913fa04>
     9bc:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff4f08 <_RAM_DATA+0x7fff3f08>
     9c0:	00504d43 	0x00504d43
     9c4:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff570c <_RAM_DATA+0x7fff470c>
     9c8:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     9cc:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     9d0:	656c435f 	bge	$r26,$r31,93248(0x16c40) # 17610 <_start-0x1bfe89f0>
     9d4:	54497261 	bl	-108770960(0x9844970) # f9845344 <_RAM_DATA+0x79844344>
     9d8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     9dc:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 17824 <_start-0x1bfe87dc>
     9e0:	70795474 	0x70795474
     9e4:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe6f28 <_RAM_DATA+0x7ffe5f28>
     9e8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     9ec:	54535f45 	bl	-48999588(0xd14535c) # fd145d48 <_RAM_DATA+0x7d144d48>
     9f0:	49540050 	bceqz	$fcc2,-4107264(0x415400) # ffc15df0 <_RAM_DATA+0x7fc14df0>
     9f4:	495f454d 	bcnez	$fcc2,3497796(0x355f44) # 356938 <_start-0x1bca96c8>
     9f8:	4e45544e 	jirl	$r14,$r2,-113324(0x24554)
     9fc:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     a00:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     a04:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # fffe7f70 <_RAM_DATA+0x7ffe6f70>
     a08:	00726574 	bstrins.w	$r20,$r11,0x12,0x19
     a0c:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd15754 <_RAM_DATA+0x7fd14754>
     a10:	4154535f 	beqz	$r26,-175024(0x7d5450) # fffd5e60 <_RAM_DATA+0x7ffd4e60>
     a14:	54005452 	bl	21495892(0x1480054) # 1480a68 <_start-0x1ab7f598>
     a18:	435f4d49 	beqz	$r10,2580300(0x275f4c) # 276964 <_start-0x1bd8969c>
     a1c:	5400646d 	bl	28573796(0x1b40064) # 1b40a80 <_start-0x1a4bf580>
     a20:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff4f6c <_RAM_DATA+0x7fff3f6c>
     a24:	00544e43 	0x00544e43
     a28:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5770 <_RAM_DATA+0x7fff4770>
     a2c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a30:	75727453 	0x75727453
     a34:	54007463 	bl	25952372(0x18c0074) # 18c0aa8 <_start-0x1a73f558>
     a38:	475f4d49 	bnez	$r10,2580300(0x275f4c) # 276984 <_start-0x1bd8967c>
     a3c:	6f437465 	bgeu	$r3,$r5,-48268(0x34374) # ffff4db0 <_RAM_DATA+0x7fff3db0>
     a40:	7261706d 	0x7261706d
     a44:	49540065 	bceqz	$fcc3,1397760(0x155400) # 155e44 <_start-0x1beaa1bc>
     a48:	74535f4d 	0x74535f4d
     a4c:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
     a50:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a54:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     a58:	414c465f 	beqz	$r18,-177084(0x7d4c44) # fffd569c <_RAM_DATA+0x7ffd469c>
     a5c:	49540047 	bceqz	$fcc2,1922048(0x1d5400) # 1d5e5c <_start-0x1be2a1a4>
     a60:	65475f4d 	bge	$r26,$r13,83804(0x1475c) # 151bc <_start-0x1bfeae44>
     a64:	53544974 	b	97735752(0x5d35448) # 5d35eac <_start-0x162ca154>
     a68:	75746174 	0x75746174
     a6c:	49540073 	bceqz	$fcc3,-3320832(0x4d5400) # ffcd5e6c <_RAM_DATA+0x7fcd4e6c>
     a70:	505f454d 	b	87318340(0x5345f44) # 53469b4 <_start-0x16cb964c>
     a74:	4f495245 	jirl	$r5,$r18,-46768(0x34950)
     a78:	00434944 	0x00434944
     a7c:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff57c4 <_RAM_DATA+0x7fff47c4>
     a80:	6f435449 	bgeu	$r2,$r9,-48300(0x34354) # ffff4dd4 <_RAM_DATA+0x7fff3dd4>
     a84:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffff73e8 <_RAM_DATA+0x7fff63e8>
     a88:	2f3a4400 	0x2f3a4400
     a8c:	72657355 	0x72657355
     a90:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 181bc <_start-0x1bfe7e44>
     a94:	2f73676e 	0x2f73676e
     a98:	75636f44 	0x75636f44
     a9c:	746e656d 	0x746e656d
     aa0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4dcc <_RAM_DATA+0x7fff3dcc>
     aa4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     aa8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7914 <_RAM_DATA+0x7fff6914>
     aac:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6e1c <_start-0x1bff91e4>
     ab0:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7d00 <_RAM_DATA+0x7fff6d00>
     ab4:	73736563 	0x73736563
     ab8:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7224 <_RAM_DATA+0x7fff6224>
     abc:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     ac0:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     ac4:	32303143 	0x32303143
     ac8:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7d38 <_RAM_DATA+0x7fff6d38>
     acc:	2f77732f 	0x2f77732f
     ad0:	76697270 	0x76697270
     ad4:	2f657461 	0x2f657461
     ad8:	6331736c 	blt	$r27,$r12,-52880(0x33170) # ffff3c48 <_RAM_DATA+0x7fff2c48>
     adc:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff3d0c <_RAM_DATA+0x7fff2d0c>
     ae0:	6d697470 	bgeu	$r3,$r16,92532(0x16974) # 17454 <_start-0x1bfe8bac>
     ae4:	632e7265 	blt	$r19,$r5,-53648(0x32e70) # ffff3954 <_RAM_DATA+0x7fff2954>
     ae8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     aec:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     af0:	706d6f43 	0x706d6f43
     af4:	00657261 	bstrins.w	$r1,$r19,0x5,0x1c
     af8:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5840 <_RAM_DATA+0x7fff4840>
     afc:	43746547 	beqz	$r10,2061412(0x1f7464) # 1f7f60 <_start-0x1be080a0>
     b00:	746e756f 	0x746e756f
     b04:	72007265 	0x72007265
     b08:	4f646165 	jirl	$r5,$r11,-39840(0x36460)
     b0c:	64006666 	bge	$r19,$r6,100(0x64) # b70 <_start-0x1bfff490>
     b10:	4c617461 	jirl	$r1,$r3,24948(0x6174)
     b14:	44006e65 	bnez	$r19,1310828(0x14006c) # 140b80 <_start-0x1bebf480>
     b18:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     b1c:	2f737265 	0x2f737265
     b20:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7980 <_RAM_DATA+0x7fff6980>
     b24:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4f50 <_RAM_DATA+0x7fff3f50>
     b28:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 1789c <_start-0x1bfe8764>
     b2c:	2f73746e 	0x2f73746e
     b30:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16f9c <_start-0x1bfe9064>
     b34:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7a80 <_RAM_DATA+0x7fff6a80>
     b38:	7241676e 	0x7241676e
     b3c:	505f6863 	b	25976680(0x18c5f68) # 18c6aa4 <_start-0x1a73955c>
     b40:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16eac <_start-0x1bfe9154>
     b44:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe74b4 <_RAM_DATA+0x7ffe64b4>
     b48:	79535f67 	0x79535f67
     b4c:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 170c0 <_start-0x1bfe8f40>
     b50:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     b54:	732f3230 	0x732f3230
     b58:	732f6372 	0x732f6372
     b5c:	72642f77 	0x72642f77
     b60:	72657669 	0x72657669
     b64:	7261752f 	0x7261752f
     b68:	73655474 	vssrani.wu.d	$vr20,$vr3,0x15
     b6c:	00632e74 	bstrins.w	$r20,$r19,0x3,0xb
     b70:	65725f67 	bge	$r27,$r7,94812(0x1725c) # 17dcc <_start-0x1bfe8234>
     b74:	75427663 	0x75427663
     b78:	64006666 	bge	$r19,$r6,100(0x64) # bdc <_start-0x1bfff424>
     b7c:	6c62756f 	bgeu	$r11,$r15,25204(0x6274) # 6df0 <_start-0x1bff9210>
     b80:	75420065 	0x75420065
     b84:	72656666 	0x72656666
     b88:	7465735f 	xvavg.w	$xr31,$xr26,$xr28
     b8c:	66754200 	bge	$r16,$r0,-101056(0x27540) # fffe80cc <_RAM_DATA+0x7ffe70cc>
     b90:	00726566 	bstrins.w	$r6,$r11,0x12,0x19
     b94:	65725f67 	bge	$r27,$r7,94812(0x1725c) # 17df0 <_start-0x1bfe8210>
     b98:	61437663 	blt	$r19,$r3,82804(0x14374) # 14f0c <_start-0x1bfeb0f4>
     b9c:	00656863 	bstrins.w	$r3,$r3,0x5,0x1a
     ba0:	746e6975 	0x746e6975
     ba4:	75420038 	0x75420038
     ba8:	72656666 	0x72656666
     bac:	6972775f 	bltu	$r26,$r31,94836(0x17274) # 17e20 <_start-0x1bfe81e0>
     bb0:	6d006574 	bgeu	$r11,$r20,65636(0x10064) # 10c14 <_start-0x1bfef3ec>
     bb4:	65736d65 	bge	$r11,$r5,95084(0x1736c) # 17f20 <_start-0x1bfe80e0>
     bb8:	65720074 	bge	$r3,$r20,94720(0x17200) # 17db8 <_start-0x1bfe8248>
     bbc:	625f7663 	blt	$r19,$r3,-106636(0x25f74) # fffe6b30 <_RAM_DATA+0x7ffe5b30>
     bc0:	695f6675 	bltu	$r19,$r21,89956(0x15f64) # 16b24 <_start-0x1bfe94dc>
     bc4:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
     bc8:	65725f67 	bge	$r27,$r7,94812(0x1725c) # 17e24 <_start-0x1bfe81dc>
     bcc:	665f7663 	bge	$r19,$r3,-106636(0x25f74) # fffe6b40 <_RAM_DATA+0x7ffe5b40>
     bd0:	0067616c 	bstrins.w	$r12,$r11,0x7,0x18
     bd4:	74736574 	xvmin.w	$xr20,$xr11,$xr25
     bd8:	7261755f 	0x7261755f
     bdc:	65735f74 	bge	$r27,$r20,95068(0x1735c) # 17f38 <_start-0x1bfe80c8>
     be0:	6200646e 	blt	$r3,$r14,-130972(0x20064) # fffe0c44 <_RAM_DATA+0x7ffdfc44>
     be4:	69536675 	bltu	$r19,$r21,86884(0x15364) # 15f48 <_start-0x1bfea0b8>
     be8:	7200657a 	0x7200657a
     bec:	5f766365 	bne	$r27,$r5,-35232(0x37660) # ffff824c <_RAM_DATA+0x7fff724c>
     bf0:	5f746164 	bne	$r11,$r4,-35744(0x37460) # ffff8050 <_RAM_DATA+0x7fff7050>
     bf4:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     bf8:	74736574 	xvmin.w	$xr20,$xr11,$xr25
     bfc:	7261755f 	0x7261755f
     c00:	65725f74 	bge	$r27,$r20,94812(0x1725c) # 17e5c <_start-0x1bfe81a4>
     c04:	42007663 	beqz	$r19,917620(0xe0074) # e0c78 <_start-0x1bf1f388>
     c08:	65666675 	bge	$r19,$r21,91748(0x16664) # 1726c <_start-0x1bfe8d94>
     c0c:	6c635f72 	bgeu	$r27,$r18,25436(0x635c) # 6f68 <_start-0x1bff9098>
     c10:	00726165 	bstrins.w	$r5,$r11,0x12,0x18
     c14:	74697277 	xvavgr.w	$xr23,$xr19,$xr28
     c18:	66664f65 	bge	$r27,$r5,-104884(0x2664c) # fffe7264 <_RAM_DATA+0x7ffe6264>
     c1c:	66754200 	bge	$r16,$r0,-101056(0x27540) # fffe815c <_RAM_DATA+0x7ffe715c>
     c20:	5f726566 	bne	$r11,$r6,-36252(0x37264) # ffff7e84 <_RAM_DATA+0x7fff6e84>
     c24:	64616572 	bge	$r11,$r18,24932(0x6164) # 6d88 <_start-0x1bff9278>
     c28:	00746e49 	bstrins.w	$r9,$r18,0x14,0x1b
     c2c:	552f3a44 	bl	-116314312(0x9112f38) # f9113b64 <_RAM_DATA+0x79112b64>
     c30:	73726573 	0x73726573
     c34:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe6da8 <_RAM_DATA+0x7ffe5da8>
     c38:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c3ba8 <_start-0x1be3c458>
     c3c:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1819c <_start-0x1bfe7e64>
     c40:	73746e65 	0x73746e65
     c44:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 7b84 <_start-0x1bff847c>
     c48:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff5874 <_RAM_DATA+0x7fff4874>
     c4c:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d73b8 <_start-0x1bc28c48>
     c50:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff74b0 <_RAM_DATA+0x7fff64b0>
     c54:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff7bc4 <_RAM_DATA+0x7fff6bc4>
     c58:	69737365 	bltu	$r27,$r5,95088(0x17370) # 17fc8 <_start-0x1bfe8038>
     c5c:	535f676e 	b	-38051996(0xdbb5f64) # fdbb6bc0 <_RAM_DATA+0x7dbb5bc0>
     c60:	65747379 	bge	$r27,$r25,95344(0x17470) # 180d0 <_start-0x1bfe7f30>
     c64:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373d90 <_start-0x1bc8c270>
     c68:	2f323031 	0x2f323031
     c6c:	2f637273 	0x2f637273
     c70:	742f7773 	xvaddwev.d.wu	$xr19,$xr27,$xr29
     c74:	2f6c6f6f 	0x2f6c6f6f
     c78:	66667542 	bge	$r10,$r2,-104844(0x26674) # fffe72ec <_RAM_DATA+0x7ffe62ec>
     c7c:	632e7265 	blt	$r19,$r5,-53648(0x32e70) # ffff3aec <_RAM_DATA+0x7fff2aec>
     c80:	6e697500 	bgeu	$r8,$r0,-104076(0x26974) # fffe75f4 <_RAM_DATA+0x7ffe65f4>
     c84:	00363174 	0x00363174
     c88:	66667542 	bge	$r10,$r2,-104844(0x26674) # fffe72fc <_RAM_DATA+0x7ffe62fc>
     c8c:	725f7265 	0x725f7265
     c90:	00646165 	bstrins.w	$r5,$r11,0x4,0x18
     c94:	66667542 	bge	$r10,$r2,-104844(0x26674) # fffe7308 <_RAM_DATA+0x7ffe6308>
     c98:	775f7265 	xvsrarni.d.q	$xr5,$xr19,0x5c
     c9c:	65746972 	bge	$r11,$r18,95336(0x17468) # 18104 <_start-0x1bfe7efc>
     ca0:	00746e49 	bstrins.w	$r9,$r18,0x14,0x1b
     ca4:	5f545352 	bne	$r26,$r18,-43952(0x35450) # ffff60f4 <_RAM_DATA+0x7fff50f4>
     ca8:	42004b4f 	beqz	$r26,4063304(0x3e0048) # 3e0cf0 <_start-0x1bc1f310>
     cac:	65666675 	bge	$r19,$r21,91748(0x16664) # 17310 <_start-0x1bfe8cf0>
     cb0:	65725f72 	bge	$r27,$r18,94812(0x1725c) # 17f0c <_start-0x1bfe80f4>
     cb4:	00746573 	bstrins.w	$r19,$r11,0x14,0x19
     cb8:	66667542 	bge	$r10,$r2,-104844(0x26674) # fffe732c <_RAM_DATA+0x7ffe632c>
     cbc:	735f7265 	vsrarni.d.q	$vr5,$vr19,0x5c
     cc0:	65527465 	bge	$r3,$r5,86644(0x15274) # 15f34 <_start-0x1bfea0cc>
     cc4:	61446461 	blt	$r3,$r1,83044(0x14464) # 15128 <_start-0x1bfeaed8>
     cc8:	42006174 	beqz	$r11,-3014560(0x520060) # ffd20d28 <_RAM_DATA+0x7fd1fd28>
     ccc:	65666675 	bge	$r19,$r21,91748(0x16664) # 17330 <_start-0x1bfe8cd0>
     cd0:	68635f72 	bltu	$r27,$r18,25436(0x635c) # 702c <_start-0x1bff8fd4>
     cd4:	6f547261 	bgeu	$r19,$r1,-43920(0x35470) # ffff6144 <_RAM_DATA+0x7fff5144>
     cd8:	666c6148 	bge	$r10,$r8,-103328(0x26c60) # fffe7938 <_RAM_DATA+0x7ffe6938>
     cdc:	72616843 	0x72616843
     ce0:	66754200 	bge	$r16,$r0,-101056(0x27540) # fffe8220 <_RAM_DATA+0x7ffe7220>
     ce4:	5f726566 	bne	$r11,$r6,-36252(0x37264) # ffff7f48 <_RAM_DATA+0x7fff6f48>
     ce8:	65657266 	bge	$r19,$r6,91504(0x16570) # 17258 <_start-0x1bfe8da8>
     cec:	657a6953 	bge	$r10,$r19,96872(0x17a68) # 18754 <_start-0x1bfe78ac>
     cf0:	66754200 	bge	$r16,$r0,-101056(0x27540) # fffe8230 <_RAM_DATA+0x7ffe7230>
     cf4:	5f726566 	bne	$r11,$r6,-36252(0x37264) # ffff7f58 <_RAM_DATA+0x7fff6f58>
     cf8:	64616572 	bge	$r11,$r18,24932(0x6164) # 6e5c <_start-0x1bff91a4>
     cfc:	726f6853 	0x726f6853
     d00:	75420074 	0x75420074
     d04:	72656666 	0x72656666
     d08:	6972775f 	bltu	$r26,$r31,94836(0x17274) # 17f7c <_start-0x1bfe8084>
     d0c:	68536574 	bltu	$r11,$r20,21348(0x5364) # 6070 <_start-0x1bff9f90>
     d10:	0074726f 	bstrins.w	$r15,$r19,0x14,0x1c
     d14:	33746e69 	xvstelm.h	$xr9,$r19,54(0x36),0xd
     d18:	69730032 	bltu	$r1,$r18,94976(0x17300) # 18018 <_start-0x1bfe7fe8>
     d1c:	4200657a 	beqz	$r11,-1441692(0x6a0064) # ffea0d80 <_RAM_DATA+0x7fe9fd80>
     d20:	65666675 	bge	$r19,$r21,91748(0x16664) # 17384 <_start-0x1bfe8c7c>
     d24:	65725f72 	bge	$r27,$r18,94812(0x1725c) # 17f80 <_start-0x1bfe8080>
     d28:	65486461 	bge	$r3,$r1,84068(0x14864) # 1558c <_start-0x1bfeaa74>
     d2c:	61684378 	blt	$r27,$r24,92224(0x16840) # 1756c <_start-0x1bfe8a94>
     d30:	75420072 	0x75420072
     d34:	72656666 	0x72656666
     d38:	6e61635f 	bgeu	$r26,$r31,-106144(0x26160) # fffe6e98 <_RAM_DATA+0x7ffe5e98>
     d3c:	74697257 	xvavgr.w	$xr23,$xr18,$xr28
     d40:	53520065 	b	26694144(0x1975200) # 1975f40 <_start-0x1a68a0c0>
     d44:	52455f54 	b	-44939940(0xd52455c) # fd5252a0 <_RAM_DATA+0x7d5242a0>
     d48:	00524f52 	0x00524f52
     d4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 181c4 <_start-0x1bfe7e3c>
     d50:	7172695f 	0x7172695f
     d54:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe6ebc <_RAM_DATA+0x7ffe5ebc>
     d58:	00656c64 	bstrins.w	$r4,$r3,0x5,0x1b
     d5c:	67617375 	bge	$r27,$r21,-40592(0x36170) # ffff6ecc <_RAM_DATA+0x7fff5ecc>
     d60:	74730065 	xvmin.w	$xr5,$xr3,$xr0
     d64:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
     d68:	552f3a44 	bl	-116314312(0x9112f38) # f9113ca0 <_RAM_DATA+0x79112ca0>
     d6c:	73726573 	0x73726573
     d70:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe6ee4 <_RAM_DATA+0x7ffe5ee4>
     d74:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c3ce4 <_start-0x1be3c31c>
     d78:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 182d8 <_start-0x1bfe7d28>
     d7c:	73746e65 	0x73746e65
     d80:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 7cc0 <_start-0x1bff8340>
     d84:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff59b0 <_RAM_DATA+0x7fff49b0>
     d88:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d74f4 <_start-0x1bc28b0c>
     d8c:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff75ec <_RAM_DATA+0x7fff65ec>
     d90:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff7d00 <_RAM_DATA+0x7fff6d00>
     d94:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18104 <_start-0x1bfe7efc>
     d98:	535f676e 	b	-38051996(0xdbb5f64) # fdbb6cfc <_RAM_DATA+0x7dbb5cfc>
     d9c:	65747379 	bge	$r27,$r25,95344(0x17470) # 1820c <_start-0x1bfe7df4>
     da0:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373ecc <_start-0x1bc8c134>
     da4:	2f323031 	0x2f323031
     da8:	2f637273 	0x2f637273
     dac:	752f7773 	xvsigncov.w	$xr19,$xr27,$xr29
     db0:	2f726573 	0x2f726573
     db4:	6e69616d 	bgeu	$r11,$r13,-104096(0x26960) # fffe7714 <_RAM_DATA+0x7ffe6714>
     db8:	6300632e 	blt	$r25,$r14,-65440(0x30060) # ffff0e18 <_RAM_DATA+0x7ffefe18>
     dbc:	696c646d 	bltu	$r3,$r13,93284(0x16c64) # 17a20 <_start-0x1bfe85e0>
     dc0:	6d00656e 	bgeu	$r11,$r14,65636(0x10064) # 10e24 <_start-0x1bfef1dc>
     dc4:	006e6961 	bstrins.w	$r1,$r11,0xe,0x1a
     dc8:	70646d63 	vavg.b	$vr3,$vr11,$vr27
     dcc:	00617261 	bstrins.w	$r1,$r19,0x1,0x1c
     dd0:	5f696d6e 	bne	$r11,$r14,-38548(0x3696c) # ffff773c <_RAM_DATA+0x7fff673c>
     dd4:	6c6c6163 	bgeu	$r11,$r3,27744(0x6c60) # 7a34 <_start-0x1bff85cc>
     dd8:	45007265 	bnez	$r19,1376368(0x150070) # 150e48 <_start-0x1beaf1b8>
     ddc:	495f7478 	bceqz	$fcc3,-2007180(0x615f74) # ffe16d50 <_RAM_DATA+0x7fe15d50>
     de0:	61487172 	blt	$r11,$r18,84080(0x14870) # 15650 <_start-0x1bfea9b0>
     de4:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17a48 <_start-0x1bfe85b8>
     de8:	646d6300 	bge	$r24,$r0,28000(0x6d60) # 7b48 <_start-0x1bff84b8>
     dec:	66667562 	bge	$r11,$r2,-104844(0x26674) # fffe7460 <_RAM_DATA+0x7ffe6460>
     df0:	63007265 	blt	$r19,$r5,-65424(0x30070) # ffff0e60 <_RAM_DATA+0x7ffefe60>
     df4:	616e646d 	blt	$r3,$r13,93796(0x16e64) # 17c58 <_start-0x1bfe83a8>
     df8:	5500656d 	bl	95748196(0x5b50064) # 5b50e5c <_start-0x164af1a4>
     dfc:	31545241 	vstelm.h	$vr1,$r18,40(0x28),0x5
     e00:	4e41485f 	jirl	$r31,$r2,-114360(0x24148)
     e04:	52454c44 	b	17974604(0x112454c) # 1125350 <_start-0x1aedacb0>
     e08:	5f6f6400 	bne	$r0,$r0,-37020(0x36f64) # ffff7d6c <_RAM_DATA+0x7fff6d6c>
     e0c:	706c6568 	0x706c6568
     e10:	6e756600 	bgeu	$r16,$r0,-101020(0x27564) # fffe8374 <_RAM_DATA+0x7ffe7374>
     e14:	72610063 	0x72610063
     e18:	61006367 	blt	$r27,$r7,65632(0x10060) # 10e78 <_start-0x1bfef188>
     e1c:	00766772 	bstrins.w	$r18,$r27,0x16,0x19
     e20:	655f6f64 	bge	$r27,$r4,89964(0x15f6c) # 16d8c <_start-0x1bfe9274>
     e24:	00746978 	bstrins.w	$r24,$r11,0x14,0x1a
     e28:	5f646d63 	bne	$r11,$r3,-39828(0x3646c) # ffff7294 <_RAM_DATA+0x7fff6294>
     e2c:	75727473 	0x75727473
     e30:	63007463 	blt	$r3,$r3,-65420(0x30074) # ffff0ea4 <_RAM_DATA+0x7ffefea4>
     e34:	7470646d 	xvmax.b	$xr13,$xr3,$xr25
     e38:	78650072 	0x78650072
     e3c:	73657270 	vssrani.wu.d	$vr16,$vr19,0x1c
     e40:	6e6f6973 	bgeu	$r11,$r19,-102552(0x26f68) # fffe7da8 <_RAM_DATA+0x7ffe6da8>
     e44:	695f5f00 	bltu	$r24,$r0,89948(0x15f5c) # 16da0 <_start-0x1bfe9260>
     e48:	3233746e 	0x3233746e
     e4c:	7300745f 	0x7300745f
     e50:	6d637274 	bgeu	$r19,$r20,90992(0x16370) # 171c0 <_start-0x1bfe8e40>
     e54:	69680070 	bltu	$r3,$r16,92160(0x16800) # 17654 <_start-0x1bfe89ac>
     e58:	726f7473 	0x726f7473
     e5c:	74735f79 	xvmin.w	$xr25,$xr27,$xr23
     e60:	61750072 	blt	$r3,$r18,95488(0x17500) # 18360 <_start-0x1bfe7ca0>
     e64:	5f317472 	bne	$r3,$r18,-52876(0x33174) # ffff3fd8 <_RAM_DATA+0x7fff2fd8>
     e68:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 182d4 <_start-0x1bfe7d2c>
     e6c:	70757272 	vmax.wu	$vr18,$vr19,$vr28
     e70:	78650074 	0x78650074
     e74:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6ddc <_RAM_DATA+0x7fff5ddc>
     e78:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 7de0 <_start-0x1bff8220>
     e7c:	72695f37 	0x72695f37
     e80:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 176dc <_start-0x1bfe8924>
     e84:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17ae8 <_start-0x1bfe8518>
     e88:	78650072 	0x78650072
     e8c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6df4 <_RAM_DATA+0x7fff5df4>
     e90:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7df8 <_RAM_DATA+0x7ffe6df8>
     e94:	72695f33 	0x72695f33
     e98:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 176f4 <_start-0x1bfe890c>
     e9c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17b00 <_start-0x1bfe8500>
     ea0:	72690072 	0x72690072
     ea4:	6f6e5f71 	bgeu	$r27,$r17,-37284(0x36e5c) # ffff7d00 <_RAM_DATA+0x7fff6d00>
     ea8:	544e4900 	bl	67128904(0x4004e48) # 4005cf0 <_start-0x17ffa310>
     eac:	00553631 	0x00553631
     eb0:	43554f54 	beqz	$r26,-2927284(0x53554c) # ffd363fc <_RAM_DATA+0x7fd353fc>
     eb4:	65720048 	bge	$r2,$r8,94720(0x17200) # 180b4 <_start-0x1bfe7f4c>
     eb8:	006e6567 	bstrins.w	$r7,$r11,0xe,0x19
     ebc:	5f544142 	bne	$r10,$r2,-43968(0x35440) # ffff62fc <_RAM_DATA+0x7fff52fc>
     ec0:	4c494146 	jirl	$r6,$r10,18752(0x4940)
     ec4:	52415500 	b	67256660(0x4024154) # 4025018 <_start-0x17fdafe8>
     ec8:	495f3254 	0x495f3254
     ecc:	4400544e 	bnez	$r2,3670100(0x380054) # 380f20 <_start-0x1bc7f0e0>
     ed0:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     ed4:	2f737265 	0x2f737265
     ed8:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7d38 <_RAM_DATA+0x7fff6d38>
     edc:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5308 <_RAM_DATA+0x7fff4308>
     ee0:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17c54 <_start-0x1bfe83ac>
     ee4:	2f73746e 	0x2f73746e
     ee8:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17354 <_start-0x1bfe8cac>
     eec:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7e38 <_RAM_DATA+0x7fff6e38>
     ef0:	7241676e 	0x7241676e
     ef4:	505f6863 	b	25976680(0x18c5f68) # 18c6e5c <_start-0x1a7391a4>
     ef8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17264 <_start-0x1bfe8d9c>
     efc:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe786c <_RAM_DATA+0x7ffe686c>
     f00:	79535f67 	0x79535f67
     f04:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17478 <_start-0x1bfe8b88>
     f08:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     f0c:	732f3230 	0x732f3230
     f10:	732f6372 	0x732f6372
     f14:	73752f77 	0x73752f77
     f18:	312f7265 	vstelm.w	$vr5,$r19,-144(0x370),0x3
     f1c:	32303163 	0x32303163
     f20:	746e495f 	0x746e495f
     f24:	75727265 	0x75727265
     f28:	632e7470 	blt	$r3,$r16,-53644(0x32e74) # ffff3d9c <_RAM_DATA+0x7fff2d9c>
     f2c:	465f5f00 	bnez	$r24,155484(0x25f5c) # 26e88 <_start-0x1bfd9178>
     f30:	54434e55 	bl	-111918260(0x954434c) # f954527c <_RAM_DATA+0x7954427c>
     f34:	5f4e4f49 	bne	$r26,$r9,-45492(0x34e4c) # ffff5d80 <_RAM_DATA+0x7fff4d80>
     f38:	7865005f 	0x7865005f
     f3c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6ea4 <_RAM_DATA+0x7fff5ea4>
     f40:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7ea8 <_RAM_DATA+0x7ffe6ea8>
     f44:	72695f36 	0x72695f36
     f48:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 177a4 <_start-0x1bfe885c>
     f4c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17bb0 <_start-0x1bfe8450>
     f50:	78650072 	0x78650072
     f54:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6ebc <_RAM_DATA+0x7fff5ebc>
     f58:	636f6970 	blt	$r11,$r16,-37016(0x36f68) # ffff7ec0 <_RAM_DATA+0x7fff6ec0>
     f5c:	72695f31 	0x72695f31
     f60:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 177bc <_start-0x1bfe8844>
     f64:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17bc8 <_start-0x1bfe8438>
     f68:	61750072 	blt	$r3,$r18,95488(0x17500) # 18468 <_start-0x1bfe7b98>
     f6c:	735f7472 	vsrarni.d.q	$vr18,$vr3,0x5d
     f70:	65720072 	bge	$r3,$r18,94720(0x17200) # 18170 <_start-0x1bfe7e90>
     f74:	63727367 	blt	$r27,$r7,-36240(0x37270) # ffff81e4 <_RAM_DATA+0x7fff71e4>
     f78:	74786500 	0x74786500
     f7c:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     f80:	34636f69 	0x34636f69
     f84:	7172695f 	0x7172695f
     f88:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe70f0 <_RAM_DATA+0x7ffe60f0>
     f8c:	72656c64 	0x72656c64
     f90:	74786500 	0x74786500
     f94:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     f98:	30616f69 	0x30616f69
     f9c:	7172695f 	0x7172695f
     fa0:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7108 <_RAM_DATA+0x7ffe6108>
     fa4:	72656c64 	0x72656c64
     fa8:	74786500 	0x74786500
     fac:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     fb0:	37636f69 	0x37636f69
     fb4:	7172695f 	0x7172695f
     fb8:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7120 <_RAM_DATA+0x7ffe6120>
     fbc:	72656c64 	0x72656c64
     fc0:	74786500 	0x74786500
     fc4:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
     fc8:	32646f69 	0x32646f69
     fcc:	7172695f 	0x7172695f
     fd0:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7138 <_RAM_DATA+0x7ffe6138>
     fd4:	72656c64 	0x72656c64
     fd8:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     fdc:	485f5245 	0x485f5245
     fe0:	4c444e41 	jirl	$r1,$r18,17484(0x444c)
     fe4:	4b005245 	0x4b005245
     fe8:	79547965 	0x79547965
     fec:	4b006570 	bcnez	$fcc3,-3997596(0x430064) # ffc31050 <_RAM_DATA+0x7fc30050>
     ff0:	68437965 	bltu	$r11,$r5,17272(0x4378) # 5368 <_start-0x1bffac98>
     ff4:	656e6e61 	bge	$r19,$r1,93804(0x16e6c) # 17e60 <_start-0x1bfe81a0>
     ff8:	7865006c 	0x7865006c
     ffc:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f64 <_RAM_DATA+0x7fff5f64>
    1000:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 17f68 <_start-0x1bfe8098>
    1004:	72695f33 	0x72695f33
    1008:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17864 <_start-0x1bfe879c>
    100c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c70 <_start-0x1bfe8390>
    1010:	78650072 	0x78650072
    1014:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f7c <_RAM_DATA+0x7fff5f7c>
    1018:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 7f80 <_start-0x1bff8080>
    101c:	72695f35 	0x72695f35
    1020:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 1787c <_start-0x1bfe8784>
    1024:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17c88 <_start-0x1bfe8378>
    1028:	78650072 	0x78650072
    102c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6f94 <_RAM_DATA+0x7fff5f94>
    1030:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 17f98 <_start-0x1bfe8068>
    1034:	72695f36 	0x72695f36
    1038:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17894 <_start-0x1bfe876c>
    103c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17ca0 <_start-0x1bfe8360>
    1040:	78650072 	0x78650072
    1044:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6fac <_RAM_DATA+0x7fff5fac>
    1048:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7fb0 <_RAM_DATA+0x7ffe6fb0>
    104c:	72695f31 	0x72695f31
    1050:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 178ac <_start-0x1bfe8754>
    1054:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17cb8 <_start-0x1bfe8348>
    1058:	78650072 	0x78650072
    105c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6fc4 <_RAM_DATA+0x7fff5fc4>
    1060:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7fc8 <_RAM_DATA+0x7ffe6fc8>
    1064:	72695f34 	0x72695f34
    1068:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 178c4 <_start-0x1bfe873c>
    106c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17cd0 <_start-0x1bfe8330>
    1070:	4f530072 	jirl	$r18,$r3,-44288(0x35300)
    1074:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 196fc8 <_start-0x1be69038>
    1078:	6500544e 	bge	$r2,$r14,65620(0x10054) # 110cc <_start-0x1bfeef34>
    107c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79f0 <_RAM_DATA+0x7fff69f0>
    1080:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79f0 <_RAM_DATA+0x7fff69f0>
    1084:	695f3762 	bltu	$r27,$r2,89908(0x15f34) # 16fb8 <_start-0x1bfe9048>
    1088:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6ff8 <_start-0x1bff9008>
    108c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74f8 <_start-0x1bff8b08>
    1090:	65007265 	bge	$r19,$r5,65648(0x10070) # 11100 <_start-0x1bfeef00>
    1094:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a08 <_RAM_DATA+0x7fff6a08>
    1098:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a08 <_RAM_DATA+0x7fff6a08>
    109c:	695f3263 	bltu	$r19,$r3,89904(0x15f30) # 16fcc <_start-0x1bfe9034>
    10a0:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7010 <_start-0x1bff8ff0>
    10a4:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7510 <_start-0x1bff8af0>
    10a8:	65007265 	bge	$r19,$r5,65648(0x10070) # 11118 <_start-0x1bfeeee8>
    10ac:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a20 <_RAM_DATA+0x7fff6a20>
    10b0:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a20 <_RAM_DATA+0x7fff6a20>
    10b4:	695f3563 	bltu	$r11,$r3,89908(0x15f34) # 16fe8 <_start-0x1bfe9018>
    10b8:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7028 <_start-0x1bff8fd8>
    10bc:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7528 <_start-0x1bff8ad8>
    10c0:	65007265 	bge	$r19,$r5,65648(0x10070) # 11130 <_start-0x1bfeeed0>
    10c4:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a38 <_RAM_DATA+0x7fff6a38>
    10c8:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a38 <_RAM_DATA+0x7fff6a38>
    10cc:	695f3064 	bltu	$r3,$r4,89904(0x15f30) # 16ffc <_start-0x1bfe9004>
    10d0:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7040 <_start-0x1bff8fc0>
    10d4:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7540 <_start-0x1bff8ac0>
    10d8:	65007265 	bge	$r19,$r5,65648(0x10070) # 11148 <_start-0x1bfeeeb8>
    10dc:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7a50 <_RAM_DATA+0x7fff6a50>
    10e0:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7a50 <_RAM_DATA+0x7fff6a50>
    10e4:	695f3161 	bltu	$r11,$r1,89904(0x15f30) # 17014 <_start-0x1bfe8fec>
    10e8:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7058 <_start-0x1bff8fa8>
    10ec:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7558 <_start-0x1bff8aa8>
    10f0:	54007265 	bl	-107741072(0x9940070) # f9941160 <_RAM_DATA+0x79940160>
    10f4:	52454d49 	b	86394188(0x526454c) # 5265640 <_start-0x16d9a9c0>
    10f8:	5f4d385f 	bne	$r2,$r31,-45768(0x34d38) # ffff5e30 <_RAM_DATA+0x7fff4e30>
    10fc:	00544e49 	0x00544e49
    1100:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18578 <_start-0x1bfe7a88>
    1104:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18168 <_start-0x1bfe7e98>
    1108:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # ffff446c <_RAM_DATA+0x7fff346c>
    110c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff827c <_RAM_DATA+0x7fff727c>
    1110:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f70 <_start-0x1bff8090>
    1114:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1118:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18590 <_start-0x1bfe7a70>
    111c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18180 <_start-0x1bfe7e80>
    1120:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # ffff4580 <_RAM_DATA+0x7fff3580>
    1124:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8294 <_RAM_DATA+0x7fff7294>
    1128:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f88 <_start-0x1bff8078>
    112c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1130:	69747865 	bltu	$r3,$r5,95352(0x17478) # 185a8 <_start-0x1bfe7a58>
    1134:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18198 <_start-0x1bfe7e68>
    1138:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # ffff479c <_RAM_DATA+0x7fff379c>
    113c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff82ac <_RAM_DATA+0x7fff72ac>
    1140:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7fa0 <_start-0x1bff8060>
    1144:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1148:	69747865 	bltu	$r3,$r5,95352(0x17478) # 185c0 <_start-0x1bfe7a40>
    114c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 181b0 <_start-0x1bfe7e50>
    1150:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # ffff48b0 <_RAM_DATA+0x7fff38b0>
    1154:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff82c4 <_RAM_DATA+0x7fff72c4>
    1158:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7fb8 <_start-0x1bff8048>
    115c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1160:	69747865 	bltu	$r3,$r5,95352(0x17478) # 185d8 <_start-0x1bfe7a28>
    1164:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 181c8 <_start-0x1bfe7e38>
    1168:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # ffff43c8 <_RAM_DATA+0x7fff33c8>
    116c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff82dc <_RAM_DATA+0x7fff72dc>
    1170:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7fd0 <_start-0x1bff8030>
    1174:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1178:	69747865 	bltu	$r3,$r5,95352(0x17478) # 185f0 <_start-0x1bfe7a10>
    117c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 181e0 <_start-0x1bfe7e20>
    1180:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # ffff46e0 <_RAM_DATA+0x7fff36e0>
    1184:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff82f4 <_RAM_DATA+0x7fff72f4>
    1188:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7fe8 <_start-0x1bff8018>
    118c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1190:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18608 <_start-0x1bfe79f8>
    1194:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 181f8 <_start-0x1bfe7e08>
    1198:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # ffff41f8 <_RAM_DATA+0x7fff31f8>
    119c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff830c <_RAM_DATA+0x7fff730c>
    11a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8000 <_start-0x1bff8000>
    11a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    11a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18620 <_start-0x1bfe79e0>
    11ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18210 <_start-0x1bfe7df0>
    11b0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # ffff4510 <_RAM_DATA+0x7fff3510>
    11b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8324 <_RAM_DATA+0x7fff7324>
    11b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8018 <_start-0x1bff7fe8>
    11bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    11c0:	65656c53 	bge	$r2,$r19,91500(0x1656c) # 1772c <_start-0x1bfe88d4>
    11c4:	006e4570 	bstrins.w	$r16,$r11,0xe,0x11
    11c8:	5f747865 	bne	$r3,$r5,-35720(0x37478) # ffff8640 <_RAM_DATA+0x7fff7640>
    11cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 802c <_start-0x1bff7fd4>
    11d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    11d4:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd15f1c <_RAM_DATA+0x7fd14f1c>
    11d8:	41575f52 	beqz	$r26,-3582116(0x49575c) # ffc96934 <_RAM_DATA+0x7fc95934>
    11dc:	495f454b 	bcnez	$fcc2,2973508(0x2d5f44) # 2d7120 <_start-0x1bd28ee0>
    11e0:	6500544e 	bge	$r2,$r14,65620(0x10054) # 11234 <_start-0x1bfeedcc>
    11e4:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b58 <_RAM_DATA+0x7fff6b58>
    11e8:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b58 <_RAM_DATA+0x7fff6b58>
    11ec:	695f3663 	bltu	$r19,$r3,89908(0x15f34) # 17120 <_start-0x1bfe8ee0>
    11f0:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7160 <_start-0x1bff8ea0>
    11f4:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7660 <_start-0x1bff89a0>
    11f8:	65007265 	bge	$r19,$r5,65648(0x10070) # 11268 <_start-0x1bfeed98>
    11fc:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b70 <_RAM_DATA+0x7fff6b70>
    1200:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b70 <_RAM_DATA+0x7fff6b70>
    1204:	695f3164 	bltu	$r11,$r4,89904(0x15f30) # 17134 <_start-0x1bfe8ecc>
    1208:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7178 <_start-0x1bff8e88>
    120c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7678 <_start-0x1bff8988>
    1210:	65007265 	bge	$r19,$r5,65648(0x10070) # 11280 <_start-0x1bfeed80>
    1214:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b88 <_RAM_DATA+0x7fff6b88>
    1218:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b88 <_RAM_DATA+0x7fff6b88>
    121c:	695f3261 	bltu	$r19,$r1,89904(0x15f30) # 1714c <_start-0x1bfe8eb4>
    1220:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7190 <_start-0x1bff8e70>
    1224:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7690 <_start-0x1bff8970>
    1228:	69007265 	bltu	$r19,$r5,65648(0x10070) # 11298 <_start-0x1bfeed68>
    122c:	5f63746e 	bne	$r3,$r14,-40076(0x36374) # ffff75a0 <_RAM_DATA+0x7fff65a0>
    1230:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8090 <_start-0x1bff7f70>
    1234:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1238:	69747865 	bltu	$r3,$r5,95352(0x17478) # 186b0 <_start-0x1bfe7950>
    123c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 182a0 <_start-0x1bfe7d60>
    1240:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # ffff46a4 <_RAM_DATA+0x7fff36a4>
    1244:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff83b4 <_RAM_DATA+0x7fff73b4>
    1248:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 80a8 <_start-0x1bff7f58>
    124c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1250:	69747865 	bltu	$r3,$r5,95352(0x17478) # 186c8 <_start-0x1bfe7938>
    1254:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 182b8 <_start-0x1bfe7d48>
    1258:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # ffff47b8 <_RAM_DATA+0x7fff37b8>
    125c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff83cc <_RAM_DATA+0x7fff73cc>
    1260:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 80c0 <_start-0x1bff7f40>
    1264:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1268:	52746e49 	b	-114920340(0x926746c) # f92686d4 <_RAM_DATA+0x792676d4>
    126c:	65006765 	bge	$r27,$r5,65636(0x10064) # 112d0 <_start-0x1bfeed30>
    1270:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7be4 <_RAM_DATA+0x7fff6be4>
    1274:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7be4 <_RAM_DATA+0x7fff6be4>
    1278:	695f3062 	bltu	$r3,$r2,89904(0x15f30) # 171a8 <_start-0x1bfe8e58>
    127c:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 71ec <_start-0x1bff8e14>
    1280:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 76ec <_start-0x1bff8914>
    1284:	Address 0x0000000000001284 is out of bounds.


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
test_uart_recv():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/uartTest.c:50 (discriminator 2)
      54:	00540001 	0x00540001
	...
EXTI_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:49 (discriminator 3)
      80:	54000100 	bl	67108864(0x4000000) # 4000080 <_start-0x17ffff80>
	...
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
      e8:	00000000 	0x00000000
      ec:	01000000 	0x01000000
      f0:	00005400 	bitrev.d	$r0,$r0
      f4:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:229
      f8:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:230
      fc:	00000054 	0x00000054
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
     100:	00000000 	0x00000000
     104:	54000100 	bl	67108864(0x4000000) # 4000104 <_start-0x17fffefc>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233 (discriminator 3)
     11c:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234 (discriminator 3)
     120:	00000055 	0x00000055
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 1)
     124:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     128:	69000100 	bltu	$r8,$r0,65536(0x10000) # 10128 <_start-0x1bfefed8>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     134:	01f30004 	0x01f30004
     138:	00009f55 	0x00009f55
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:241 (discriminator 3)
     14c:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     150:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 1)
     154:	06000000 	cacop	0x0,$r0,0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
     160:	02000000 	slti	$r0,$r0,0
     164:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
     168:	00000000 	0x00000000
     16c:	01000000 	0x01000000
     170:	00006800 	rdtime.d	$r0,$r0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
     17c:	00000001 	0x00000001
     180:	00000000 	0x00000000
     184:	00010000 	asrtle.d	$r0,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     188:	00000067 	0x00000067
     18c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     190:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0190 <_RAM_DATA+0x7ffef190>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     1ac:	00010100 	asrtle.d	$r8,$r0
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     1bc:	00010000 	asrtle.d	$r0,$r0
     1c0:	00000056 	0x00000056
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256
     1c4:	00000000 	0x00000000
     1c8:	56000100 	bl	67239936(0x4020000) # 40201c8 <_start-0x17fdfe38>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
     1d4:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
     1d8:	00000000 	0x00000000
     1dc:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 2)
     1e0:	00005600 	bitrev.d	$r0,$r16
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:202 (discriminator 1)
     1e4:	00000000 	0x00000000
     1e8:	00010000 	asrtle.d	$r0,$r0
     1ec:	00000056 	0x00000056
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
     1f0:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
     1f4:	56000100 	bl	67239936(0x4020000) # 40201f4 <_start-0x17fdfe0c>
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:263
     200:	00560001 	0x00560001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     204:	00000000 	0x00000000
     208:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
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
     ce0:	cc000000 	0xcc000000
     ce4:	d41c0014 	0xd41c0014
     ce8:	011c0014 	0x011c0014
     cec:	14d45500 	lu12i.w	$r0,434856(0x6a2a8)
     cf0:	14dc1c00 	lu12i.w	$r0,450784(0x6e0e0)
     cf4:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     cf8:	9f5501f3 	0x9f5501f3
	...
     d18:	00540001 	0x00540001
     d1c:	00000000 	0x00000000
     d20:	04000000 	csrrd	$r0,0x0
     d24:	5401f300 	bl	-67108368(0xc0001f0) # fc000f14 <_RAM_DATA+0x7bffff14>
     d28:	0000009f 	0x0000009f
     d2c:	00000000 	0x00000000
     d30:	54000100 	bl	67108864(0x4000000) # 4000d30 <_start-0x17fff2d0>
	...
     d3c:	01f30004 	0x01f30004
     d40:	00009f54 	0x00009f54
     d44:	00000000 	0x00000000
     d48:	00010000 	asrtle.d	$r0,$r0
     d4c:	00000054 	0x00000054
     d50:	00000000 	0x00000000
     d54:	f3000400 	0xf3000400
     d58:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
     d5c:	00000000 	0x00000000
     d60:	02000000 	slti	$r0,$r0,0
	...
     d6c:	02000000 	slti	$r0,$r0,0
     d70:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
     d74:	00000000 	0x00000000
     d78:	02000000 	slti	$r0,$r0,0
     d7c:	009f3100 	bstrins.d	$r0,$r8,0x1f,0xc
     d80:	00000000 	0x00000000
     d84:	03000000 	lu52i.d	$r0,$r0,0
	...
     d90:	02000000 	slti	$r0,$r0,0
     d94:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
     d98:	00000000 	0x00000000
     d9c:	01000000 	0x01000000
     da0:	00005d00 	ext.w.b	$r0,$r8
	...
     db4:	00010000 	asrtle.d	$r0,$r0
     db8:	00000055 	0x00000055
     dbc:	00000000 	0x00000000
     dc0:	f3000400 	0xf3000400
     dc4:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
	...
     dd8:	01000000 	0x01000000
     ddc:	00005400 	bitrev.d	$r0,$r0
     de0:	00000000 	0x00000000
     de4:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     de8:	9f5401f3 	0x9f5401f3
	...
     df4:	01000002 	0x01000002
	...
     e00:	9f300002 	0x9f300002
	...
     e0c:	9f310002 	0x9f310002
	...
     e1c:	1c001508 	pcaddu12i	$r8,168(0xa8)
     e20:	1c001514 	pcaddu12i	$r20,168(0xa8)
     e24:	14540001 	lu12i.w	$r1,172032(0x2a000)
     e28:	341c0015 	0x341c0015
     e2c:	041c0015 	csrrd	$r21,0x700
     e30:	5401f300 	bl	-67108368(0xc0001f0) # fc001020 <_RAM_DATA+0x7c000020>
     e34:	0000009f 	0x0000009f
	...
     e40:	0014f000 	and	$r0,$r0,$r28
     e44:	0014fc1c 	and	$r28,$r0,$r31
     e48:	5400011c 	bl	74448896(0x4700000) # 4700e48 <_start-0x178ff1b8>
     e4c:	1c0014fc 	pcaddu12i	$r28,167(0xa7)
     e50:	1c001508 	pcaddu12i	$r8,168(0xa8)
     e54:	01f30004 	0x01f30004
     e58:	00009f54 	0x00009f54
     e5c:	00000000 	0x00000000
     e60:	00020000 	0x00020000
     e64:	14f00100 	lu12i.w	$r0,491528(0x78008)
     e68:	15041c00 	lu12i.w	$r0,-515872(0x820e0)
     e6c:	00021c00 	0x00021c00
     e70:	15049f30 	lu12i.w	$r16,-514823(0x824f9)
     e74:	15041c00 	lu12i.w	$r0,-515872(0x820e0)
     e78:	00021c00 	0x00021c00
     e7c:	00009f31 	0x00009f31
     e80:	00000000 	0x00000000
     e84:	00020000 	0x00020000
	...
     e90:	00020000 	0x00020000
     e94:	00009f30 	0x00009f30
     e98:	00000000 	0x00000000
     e9c:	00010000 	asrtle.d	$r0,$r0
     ea0:	00000054 	0x00000054
     ea4:	00000000 	0x00000000
     ea8:	00000200 	0x00000200
	...
     eb4:	30000200 	0x30000200
     eb8:	0000009f 	0x0000009f
     ebc:	00000000 	0x00000000
     ec0:	54000100 	bl	67108864(0x4000000) # 4000ec0 <_start-0x17fff140>
	...
     ecc:	00000001 	0x00000001
	...
     ed8:	9f300002 	0x9f300002
	...
     ee4:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
     ef0:	34000000 	0x34000000
     ef4:	581c0015 	beq	$r0,$r21,7168(0x1c00) # 2af4 <_start-0x1bffd50c>
     ef8:	011c0015 	0x011c0015
     efc:	15585400 	lu12i.w	$r0,-343392(0xac2a0)
     f00:	15681c00 	lu12i.w	$r0,-311072(0xb40e0)
     f04:	00041c00 	alsl.w	$r0,$r0,$r7,0x1
     f08:	9f5401f3 	0x9f5401f3
	...
     f24:	00010000 	asrtle.d	$r0,$r0
     f28:	00000054 	0x00000054
     f2c:	00000000 	0x00000000
     f30:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff0f30 <_RAM_DATA+0x7ffeff30>
	...
     f3c:	01f30004 	0x01f30004
     f40:	00009f54 	0x00009f54
     f44:	00000000 	0x00000000
     f48:	00010000 	asrtle.d	$r0,$r0
     f4c:	00000054 	0x00000054
     f50:	00000000 	0x00000000
     f54:	f3000400 	0xf3000400
     f58:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
     f6c:	01000000 	0x01000000
     f70:	00006900 	rdtime.d	$r0,$r8
     f74:	00000000 	0x00000000
     f78:	00010000 	asrtle.d	$r0,$r0
     f7c:	00000067 	0x00000067
	...
     f90:	68000100 	bltu	$r8,$r0,0 # f90 <_start-0x1bfff070>
	...
     f9c:	00540001 	0x00540001
	...
     fb0:	01000000 	0x01000000
     fb4:	00005400 	bitrev.d	$r0,$r0
     fb8:	00000000 	0x00000000
     fbc:	00040000 	alsl.w	$r0,$r0,$r0,0x1
     fc0:	9f5401f3 	0x9f5401f3
	...
     fcc:	00000002 	0x00000002
	...
     fe0:	00010000 	asrtle.d	$r0,$r0
     fe4:	00000054 	0x00000054
     fe8:	00000000 	0x00000000
     fec:	f3000400 	0xf3000400
     ff0:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
     ff4:	00000000 	0x00000000
     ff8:	01000000 	0x01000000
     ffc:	00005400 	bitrev.d	$r0,$r0
    1000:	00000000 	0x00000000
    1004:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1008:	9f5401f3 	0x9f5401f3
	...
    1014:	00540001 	0x00540001
    1018:	00000000 	0x00000000
    101c:	04000000 	csrrd	$r0,0x0
    1020:	5401f300 	bl	-67108368(0xc0001f0) # fc001210 <_RAM_DATA+0x7c000210>
    1024:	0000009f 	0x0000009f
    1028:	00000000 	0x00000000
    102c:	54000100 	bl	67108864(0x4000000) # 400102c <_start-0x17ffefd4>
	...
    1044:	00010000 	asrtle.d	$r0,$r0
    1048:	00000054 	0x00000054
    104c:	00000000 	0x00000000
    1050:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11050 <_start-0x1bfeefb0>
	...
    105c:	01f30004 	0x01f30004
    1060:	00009f54 	0x00009f54
	...
    1078:	00550001 	0x00550001
    107c:	00000000 	0x00000000
    1080:	01000000 	0x01000000
    1084:	00006800 	rdtime.d	$r0,$r0
    1088:	00000000 	0x00000000
    108c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1090:	9f5501f3 	0x9f5501f3
	...
    109c:	00000002 	0x00000002
	...
    10a8:	9f330002 	0x9f330002
	...
    10b4:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    10cc:	54000100 	bl	67108864(0x4000000) # 40010cc <_start-0x17ffef34>
	...
    10d8:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    10dc:	00000000 	0x00000000
    10e0:	04000000 	csrrd	$r0,0x0
    10e4:	5401f300 	bl	-67108368(0xc0001f0) # fc0012d4 <_RAM_DATA+0x7c0002d4>
    10e8:	0000009f 	0x0000009f
	...
    10fc:	55000100 	bl	67174400(0x4010000) # 40110fc <_start-0x17feef04>
	...
    1108:	01f30004 	0x01f30004
    110c:	00009f55 	0x00009f55
    1110:	00000000 	0x00000000
    1114:	00020000 	0x00020000
	...
    1120:	00020000 	0x00020000
    1124:	00009f31 	0x00009f31
    1128:	00000000 	0x00000000
    112c:	00010000 	asrtle.d	$r0,$r0
    1130:	00000067 	0x00000067
	...
    1144:	01000000 	0x01000000
    1148:	00005400 	bitrev.d	$r0,$r0
    114c:	00000000 	0x00000000
    1150:	00010000 	asrtle.d	$r0,$r0
    1154:	00000069 	0x00000069
    1158:	00000000 	0x00000000
    115c:	f3000400 	0xf3000400
    1160:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    1164:	00000000 	0x00000000
    1168:	03000000 	lu52i.d	$r0,$r0,0
	...
    1178:	30000200 	0x30000200
    117c:	0000009f 	0x0000009f
    1180:	00000000 	0x00000000
    1184:	54000100 	bl	67108864(0x4000000) # 4001184 <_start-0x17ffee7c>
	...
    1190:	00540001 	0x00540001
    1194:	00000000 	0x00000000
    1198:	04000000 	csrrd	$r0,0x0
	...
    11a4:	02000000 	slti	$r0,$r0,0
    11a8:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    11ac:	00000000 	0x00000000
    11b0:	01000000 	0x01000000
    11b4:	00006800 	rdtime.d	$r0,$r0
	...
    11cc:	00540001 	0x00540001
    11d0:	00000000 	0x00000000
    11d4:	01000000 	0x01000000
    11d8:	00006900 	rdtime.d	$r0,$r8
    11dc:	00000000 	0x00000000
    11e0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    11e4:	9f5401f3 	0x9f5401f3
	...
    11f0:	00000004 	0x00000004
	...
    11fc:	9f300002 	0x9f300002
	...
    1208:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    120c:	00000000 	0x00000000
    1210:	03000000 	lu52i.d	$r0,$r0,0
	...
    1220:	30000200 	0x30000200
    1224:	0000009f 	0x0000009f
    1228:	00000000 	0x00000000
    122c:	54000100 	bl	67108864(0x4000000) # 400122c <_start-0x17ffedd4>
	...
    1238:	00540001 	0x00540001
	...
    1250:	01000000 	0x01000000
    1254:	00005400 	bitrev.d	$r0,$r0
    1258:	00000000 	0x00000000
    125c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1260:	9f5401f3 	0x9f5401f3
	...
    126c:	00540001 	0x00540001
    1270:	00000000 	0x00000000
    1274:	04000000 	csrrd	$r0,0x0
    1278:	5401f300 	bl	-67108368(0xc0001f0) # fc001468 <_RAM_DATA+0x7c000468>
    127c:	0000009f 	0x0000009f
	...
    128c:	01000000 	0x01000000
    1290:	00005e00 	ext.w.b	$r0,$r16
	...
    12a8:	00010000 	asrtle.d	$r0,$r0
    12ac:	00000054 	0x00000054
    12b0:	00000000 	0x00000000
    12b4:	f3000400 	0xf3000400
    12b8:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    12bc:	00000000 	0x00000000
    12c0:	01000000 	0x01000000
    12c4:	00005400 	bitrev.d	$r0,$r0
    12c8:	00000000 	0x00000000
    12cc:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    12d0:	9f5401f3 	0x9f5401f3
	...
    12ec:	00540001 	0x00540001
    12f0:	00000000 	0x00000000
    12f4:	04000000 	csrrd	$r0,0x0
    12f8:	5401f300 	bl	-67108368(0xc0001f0) # fc0014e8 <_RAM_DATA+0x7c0004e8>
    12fc:	0000009f 	0x0000009f
    1300:	00000000 	0x00000000
    1304:	54000100 	bl	67108864(0x4000000) # 4001304 <_start-0x17ffecfc>
	...
    1310:	01f30004 	0x01f30004
    1314:	00009f54 	0x00009f54
	...
    1334:	00540001 	0x00540001
    1338:	00000000 	0x00000000
    133c:	01000000 	0x01000000
    1340:	00006700 	rdtimeh.w	$r0,$r24
    1344:	00000000 	0x00000000
    1348:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    134c:	9f5401f3 	0x9f5401f3
	...
    1358:	00540001 	0x00540001
    135c:	00000000 	0x00000000
    1360:	04000000 	csrrd	$r0,0x0
    1364:	5401f300 	bl	-67108368(0xc0001f0) # fc001554 <_RAM_DATA+0x7c000554>
    1368:	0000009f 	0x0000009f
    136c:	00000000 	0x00000000
    1370:	54000100 	bl	67108864(0x4000000) # 4001370 <_start-0x17ffec90>
	...
    137c:	01f30004 	0x01f30004
    1380:	00009f54 	0x00009f54
    1384:	00000000 	0x00000000
    1388:	00010000 	asrtle.d	$r0,$r0
	...
    1394:	00020000 	0x00020000
    1398:	00009f30 	0x00009f30
    139c:	00000000 	0x00000000
    13a0:	00010000 	asrtle.d	$r0,$r0
    13a4:	0000005c 	0x0000005c
	...
    13bc:	54000100 	bl	67108864(0x4000000) # 40013bc <_start-0x17ffec44>
	...
    13c8:	01f30004 	0x01f30004
    13cc:	00009f54 	0x00009f54
    13d0:	00000000 	0x00000000
    13d4:	00010000 	asrtle.d	$r0,$r0
    13d8:	00000054 	0x00000054
    13dc:	00000000 	0x00000000
    13e0:	f3000400 	0xf3000400
    13e4:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
    1404:	01000000 	0x01000000
    1408:	00005400 	bitrev.d	$r0,$r0
    140c:	00000000 	0x00000000
    1410:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1414:	9f5401f3 	0x9f5401f3
	...
    1420:	00540001 	0x00540001
    1424:	00000000 	0x00000000
    1428:	04000000 	csrrd	$r0,0x0
    142c:	5401f300 	bl	-67108368(0xc0001f0) # fc00161c <_RAM_DATA+0x7c00061c>
    1430:	0000009f 	0x0000009f
    1434:	00000000 	0x00000000
    1438:	54000100 	bl	67108864(0x4000000) # 4001438 <_start-0x17ffebc8>
	...
    1444:	01f30004 	0x01f30004
    1448:	00009f54 	0x00009f54
    144c:	00000000 	0x00000000
    1450:	00010000 	asrtle.d	$r0,$r0
    1454:	00000054 	0x00000054
    1458:	00000000 	0x00000000
    145c:	f3000400 	0xf3000400
    1460:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
    1480:	01000000 	0x01000000
    1484:	00005400 	bitrev.d	$r0,$r0
    1488:	00000000 	0x00000000
    148c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1490:	9f5401f3 	0x9f5401f3
	...
    149c:	00540001 	0x00540001
    14a0:	00000000 	0x00000000
    14a4:	04000000 	csrrd	$r0,0x0
    14a8:	5401f300 	bl	-67108368(0xc0001f0) # fc001698 <_RAM_DATA+0x7c000698>
    14ac:	0000009f 	0x0000009f
    14b0:	00000000 	0x00000000
    14b4:	54000100 	bl	67108864(0x4000000) # 40014b4 <_start-0x17ffeb4c>
	...
    14c0:	01f30004 	0x01f30004
    14c4:	00009f54 	0x00009f54
    14c8:	00000000 	0x00000000
    14cc:	00010000 	asrtle.d	$r0,$r0
    14d0:	00000054 	0x00000054
    14d4:	00000000 	0x00000000
    14d8:	f3000400 	0xf3000400
    14dc:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    14e0:	00000000 	0x00000000
    14e4:	02000000 	slti	$r0,$r0,0
    14e8:	00000000 	0x00000000
    14ec:	c4000000 	0xc4000000
    14f0:	d01c0015 	0xd01c0015
    14f4:	061c0015 	cacop	0x15,$r0,1792(0x700)
    14f8:	7fc70c00 	0x7fc70c00
    14fc:	d09f001c 	0xd09f001c
    1500:	e41c0015 	0xe41c0015
    1504:	011c0015 	0x011c0015
    1508:	15e45d00 	lu12i.w	$r0,-56600(0xf22e8)
    150c:	15e81c00 	lu12i.w	$r0,-48928(0xf40e0)
    1510:	00011c00 	asrtle.d	$r0,$r7
    1514:	0015e85c 	xor	$r28,$r2,$r26
    1518:	0015f41c 	xor	$r28,$r0,$r29
    151c:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 1151c <_start-0x1bfeeae4>
	...
    1528:	00000002 	0x00000002
    152c:	00000000 	0x00000000
    1530:	1c00160c 	pcaddu12i	$r12,176(0xb0)
    1534:	1c001618 	pcaddu12i	$r24,176(0xb0)
    1538:	c70c0006 	0xc70c0006
    153c:	9f001c7f 	0x9f001c7f
    1540:	1c001618 	pcaddu12i	$r24,176(0xb0)
    1544:	1c00162c 	pcaddu12i	$r12,177(0xb1)
    1548:	2c5d0001 	vst	$vr1,$r0,1856(0x740)
    154c:	301c0016 	0x301c0016
    1550:	011c0016 	0x011c0016
    1554:	16305c00 	lu32i.d	$r0,99040(0x182e0)
    1558:	16401c00 	lu32i.d	$r0,131296(0x200e0)
    155c:	00011c00 	asrtle.d	$r0,$r7
    1560:	0000005d 	0x0000005d
	...
    158c:	01000000 	0x01000000
    1590:	00005400 	bitrev.d	$r0,$r0
    1594:	00000000 	0x00000000
    1598:	00010000 	asrtle.d	$r0,$r0
    159c:	00000054 	0x00000054
    15a0:	00000000 	0x00000000
    15a4:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff15a4 <_RAM_DATA+0x7fff05a4>
	...
    15b0:	005f0001 	0x005f0001
    15b4:	00000000 	0x00000000
    15b8:	03000000 	lu52i.d	$r0,$r0,0
    15bc:	7fb08800 	0x7fb08800
	...
    15c8:	005f0001 	0x005f0001
    15cc:	00000000 	0x00000000
    15d0:	01000000 	0x01000000
    15d4:	00005400 	bitrev.d	$r0,$r0
    15d8:	00000000 	0x00000000
    15dc:	00010000 	asrtle.d	$r0,$r0
    15e0:	00000054 	0x00000054
    15e4:	00000000 	0x00000000
    15e8:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff15e8 <_RAM_DATA+0x7fff05e8>
	...
    15f4:	005f0001 	0x005f0001
    15f8:	00000000 	0x00000000
    15fc:	01000000 	0x01000000
    1600:	00005f00 	ext.w.b	$r0,$r24
    1604:	00000000 	0x00000000
    1608:	00010000 	asrtle.d	$r0,$r0
    160c:	00000054 	0x00000054
    1610:	00000000 	0x00000000
    1614:	54000100 	bl	67108864(0x4000000) # 4001614 <_start-0x17ffe9ec>
	...
    1620:	00540001 	0x00540001
    1624:	00000000 	0x00000000
    1628:	01000000 	0x01000000
    162c:	00005400 	bitrev.d	$r0,$r0
	...
    1640:	005e0001 	0x005e0001
	...
    164c:	00000100 	0x00000100
    1650:	01010000 	fadd.d	$f0,$f0,$f0
	...
    166c:	91000400 	0x91000400
    1670:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    1674:	00000000 	0x00000000
    1678:	04000000 	csrrd	$r0,0x0
    167c:	7da09100 	0x7da09100
    1680:	0000009f 	0x0000009f
    1684:	00000000 	0x00000000
    1688:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1688 <_RAM_DATA+0x7fff0688>
	...
    1694:	005f0001 	0x005f0001
    1698:	00000000 	0x00000000
    169c:	04000000 	csrrd	$r0,0x0
    16a0:	7da09100 	0x7da09100
    16a4:	0000009f 	0x0000009f
    16a8:	00000000 	0x00000000
    16ac:	54000100 	bl	67108864(0x4000000) # 40016ac <_start-0x17ffe954>
	...
    16b8:	a0910004 	0xa0910004
    16bc:	00009f7d 	0x00009f7d
    16c0:	00000000 	0x00000000
    16c4:	00010000 	asrtle.d	$r0,$r0
    16c8:	00000054 	0x00000054
    16cc:	00000000 	0x00000000
    16d0:	91000400 	0x91000400
    16d4:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    16d8:	00000000 	0x00000000
    16dc:	01000000 	0x01000000
    16e0:	00005d00 	ext.w.b	$r0,$r8
    16e4:	00000000 	0x00000000
    16e8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    16ec:	9f7da091 	0x9f7da091
	...
    16f8:	a0910004 	0xa0910004
    16fc:	00009f7d 	0x00009f7d
    1700:	00000000 	0x00000000
    1704:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1708:	9f7da073 	0x9f7da073
	...
    1714:	00020000 	0x00020000
	...
    1738:	00010000 	asrtle.d	$r0,$r0
    173c:	00000068 	0x00000068
    1740:	00000000 	0x00000000
    1744:	30000200 	0x30000200
    1748:	0000009f 	0x0000009f
    174c:	00000000 	0x00000000
    1750:	68000100 	bltu	$r8,$r0,0 # 1750 <_start-0x1bffe8b0>
	...
    175c:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1760:	00000000 	0x00000000
    1764:	01000000 	0x01000000
    1768:	00006800 	rdtime.d	$r0,$r0
    176c:	00000000 	0x00000000
    1770:	00010000 	asrtle.d	$r0,$r0
    1774:	00000068 	0x00000068
    1778:	00000000 	0x00000000
    177c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 1177c <_start-0x1bfee884>
	...
    1788:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    178c:	00000000 	0x00000000
    1790:	01000000 	0x01000000
    1794:	00006800 	rdtime.d	$r0,$r0
    1798:	00000000 	0x00000000
    179c:	00010000 	asrtle.d	$r0,$r0
    17a0:	00000068 	0x00000068
    17a4:	00000000 	0x00000000
    17a8:	68000100 	bltu	$r8,$r0,0 # 17a8 <_start-0x1bffe858>
	...
    17b4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17b8:	00000000 	0x00000000
    17bc:	01000000 	0x01000000
    17c0:	00006800 	rdtime.d	$r0,$r0
    17c4:	00000000 	0x00000000
    17c8:	00010000 	asrtle.d	$r0,$r0
    17cc:	00000068 	0x00000068
    17d0:	00000000 	0x00000000
    17d4:	68000100 	bltu	$r8,$r0,0 # 17d4 <_start-0x1bffe82c>
	...
    17ec:	00000001 	0x00000001
	...
    1808:	00000001 	0x00000001
	...
    1830:	00000002 	0x00000002
    1834:	00000000 	0x00000000
    1838:	00010000 	asrtle.d	$r0,$r0
    183c:	0000005d 	0x0000005d
    1840:	00000000 	0x00000000
    1844:	5d000100 	bne	$r8,$r0,65536(0x10000) # 11844 <_start-0x1bfee7bc>
	...
    1850:	005c0001 	0x005c0001
    1854:	00000000 	0x00000000
    1858:	01000000 	0x01000000
    185c:	00005c00 	ext.w.b	$r0,$r0
    1860:	00000000 	0x00000000
    1864:	00010000 	asrtle.d	$r0,$r0
    1868:	0000005c 	0x0000005c
    186c:	00000000 	0x00000000
    1870:	5c000100 	bne	$r8,$r0,0 # 1870 <_start-0x1bffe790>
	...
    187c:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1880:	00000000 	0x00000000
    1884:	01000000 	0x01000000
    1888:	00006900 	rdtime.d	$r0,$r8
    188c:	00000000 	0x00000000
    1890:	00010000 	asrtle.d	$r0,$r0
    1894:	00000069 	0x00000069
    1898:	00000000 	0x00000000
    189c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 1189c <_start-0x1bfee764>
	...
    18a8:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    18ac:	00000000 	0x00000000
    18b0:	01000000 	0x01000000
    18b4:	00006900 	rdtime.d	$r0,$r8
    18b8:	00000000 	0x00000000
    18bc:	00010000 	asrtle.d	$r0,$r0
    18c0:	00000069 	0x00000069
    18c4:	00000000 	0x00000000
    18c8:	69000100 	bltu	$r8,$r0,65536(0x10000) # 118c8 <_start-0x1bfee738>
	...
    18d4:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    18d8:	00000000 	0x00000000
    18dc:	01000000 	0x01000000
    18e0:	00006900 	rdtime.d	$r0,$r8
    18e4:	00000000 	0x00000000
    18e8:	00010000 	asrtle.d	$r0,$r0
    18ec:	00000069 	0x00000069
    18f0:	00000000 	0x00000000
    18f4:	69000100 	bltu	$r8,$r0,65536(0x10000) # 118f4 <_start-0x1bfee70c>
	...
    1900:	005c0001 	0x005c0001
    1904:	00000000 	0x00000000
    1908:	01000000 	0x01000000
    190c:	00005c00 	ext.w.b	$r0,$r0
    1910:	00000000 	0x00000000
    1914:	00020000 	0x00020000
    1918:	00009f30 	0x00009f30
    191c:	00000000 	0x00000000
    1920:	00010000 	asrtle.d	$r0,$r0
    1924:	00000069 	0x00000069
    1928:	00000000 	0x00000000
    192c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 1192c <_start-0x1bfee6d4>
	...
    1938:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    193c:	00000000 	0x00000000
    1940:	01000000 	0x01000000
    1944:	00006800 	rdtime.d	$r0,$r0
    1948:	00000000 	0x00000000
    194c:	00010000 	asrtle.d	$r0,$r0
    1950:	00000068 	0x00000068
    1954:	00000000 	0x00000000
    1958:	68000100 	bltu	$r8,$r0,0 # 1958 <_start-0x1bffe6a8>
	...
    1964:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1968:	00000000 	0x00000000
    196c:	01000000 	0x01000000
    1970:	00006800 	rdtime.d	$r0,$r0
    1974:	00000000 	0x00000000
    1978:	00010000 	asrtle.d	$r0,$r0
    197c:	00000068 	0x00000068
    1980:	00000000 	0x00000000
    1984:	68000100 	bltu	$r8,$r0,0 # 1984 <_start-0x1bffe67c>
	...
    1990:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1994:	00000000 	0x00000000
    1998:	01000000 	0x01000000
    199c:	00005e00 	ext.w.b	$r0,$r16
    19a0:	00000000 	0x00000000
    19a4:	00010000 	asrtle.d	$r0,$r0
    19a8:	0000005e 	0x0000005e
    19ac:	00000000 	0x00000000
    19b0:	5c000100 	bne	$r8,$r0,0 # 19b0 <_start-0x1bffe650>
	...
    19bc:	005c0001 	0x005c0001
    19c0:	00000000 	0x00000000
    19c4:	01000000 	0x01000000
    19c8:	00005e00 	ext.w.b	$r0,$r16
    19cc:	00000000 	0x00000000
    19d0:	00010000 	asrtle.d	$r0,$r0
    19d4:	0000005e 	0x0000005e
    19d8:	00000000 	0x00000000
    19dc:	5c000100 	bne	$r8,$r0,0 # 19dc <_start-0x1bffe624>
	...
    19e8:	005c0001 	0x005c0001
    19ec:	00000000 	0x00000000
    19f0:	02000000 	slti	$r0,$r0,0
    19f4:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    19f8:	00000000 	0x00000000
    19fc:	0b000000 	0x0b000000
	...
    1a20:	00000101 	0x00000101
    1a24:	01010000 	fadd.d	$f0,$f0,$f0
	...
    1a34:	30000200 	0x30000200
    1a38:	0000009f 	0x0000009f
    1a3c:	00000000 	0x00000000
    1a40:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1a40 <_RAM_DATA+0x7fff0a40>
	...
    1a4c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1a50:	00000000 	0x00000000
    1a54:	01000000 	0x01000000
    1a58:	00005c00 	ext.w.b	$r0,$r0
    1a5c:	00000000 	0x00000000
    1a60:	00010000 	asrtle.d	$r0,$r0
    1a64:	0000005c 	0x0000005c
    1a68:	00000000 	0x00000000
    1a6c:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1a6c <_RAM_DATA+0x7fff0a6c>
	...
    1a78:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1a7c:	00000000 	0x00000000
    1a80:	01000000 	0x01000000
    1a84:	00006800 	rdtime.d	$r0,$r0
    1a88:	00000000 	0x00000000
    1a8c:	00010000 	asrtle.d	$r0,$r0
    1a90:	00000068 	0x00000068
    1a94:	00000000 	0x00000000
    1a98:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1a98 <_RAM_DATA+0x7fff0a98>
	...
    1aa4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1aa8:	00000000 	0x00000000
    1aac:	01000000 	0x01000000
    1ab0:	00006800 	rdtime.d	$r0,$r0
    1ab4:	00000000 	0x00000000
    1ab8:	00010000 	asrtle.d	$r0,$r0
    1abc:	00000067 	0x00000067
    1ac0:	00000000 	0x00000000
    1ac4:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1ac4 <_RAM_DATA+0x7fff0ac4>
	...
    1ad0:	005d0001 	0x005d0001
    1ad4:	00000000 	0x00000000
    1ad8:	01000000 	0x01000000
    1adc:	00005d00 	ext.w.b	$r0,$r8
    1ae0:	00000000 	0x00000000
    1ae4:	00010000 	asrtle.d	$r0,$r0
    1ae8:	00000067 	0x00000067
    1aec:	00000000 	0x00000000
    1af0:	30000200 	0x30000200
    1af4:	0000009f 	0x0000009f
    1af8:	00000000 	0x00000000
    1afc:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1afc <_RAM_DATA+0x7fff0afc>
	...
    1b08:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1b0c:	00000000 	0x00000000
    1b10:	02000000 	slti	$r0,$r0,0
    1b14:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1b18:	00000000 	0x00000000
    1b1c:	01000000 	0x01000000
    1b20:	00006700 	rdtimeh.w	$r0,$r24
    1b24:	00000000 	0x00000000
    1b28:	00010000 	asrtle.d	$r0,$r0
    1b2c:	00000067 	0x00000067
	...
    1b40:	01000000 	0x01000000
    1b44:	00006800 	rdtime.d	$r0,$r0
    1b48:	00000000 	0x00000000
    1b4c:	00010000 	asrtle.d	$r0,$r0
    1b50:	00000068 	0x00000068
    1b54:	00000000 	0x00000000
    1b58:	68000100 	bltu	$r8,$r0,0 # 1b58 <_start-0x1bffe4a8>
	...
    1b70:	00010000 	asrtle.d	$r0,$r0
    1b74:	00000069 	0x00000069
    1b78:	00000000 	0x00000000
    1b7c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11b7c <_start-0x1bfee484>
	...
    1b88:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1b8c:	00000000 	0x00000000
    1b90:	08000000 	0x08000000
	...
    1bb0:	30000200 	0x30000200
    1bb4:	0000009f 	0x0000009f
    1bb8:	00000000 	0x00000000
    1bbc:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1bbc <_RAM_DATA+0x7ffe0bbc>
	...
    1bc8:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1bcc:	00000000 	0x00000000
    1bd0:	01000000 	0x01000000
    1bd4:	00006a00 	rdtime.d	$r0,$r16
    1bd8:	00000000 	0x00000000
    1bdc:	00010000 	asrtle.d	$r0,$r0
    1be0:	0000006a 	0x0000006a
    1be4:	00000000 	0x00000000
    1be8:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1be8 <_RAM_DATA+0x7ffe0be8>
	...
    1bf4:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1bf8:	00000000 	0x00000000
    1bfc:	01000000 	0x01000000
    1c00:	00006a00 	rdtime.d	$r0,$r16
    1c04:	00000000 	0x00000000
    1c08:	00010000 	asrtle.d	$r0,$r0
    1c0c:	0000006a 	0x0000006a
    1c10:	00000000 	0x00000000
    1c14:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c14 <_RAM_DATA+0x7ffe0c14>
	...
    1c20:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c24:	00000000 	0x00000000
    1c28:	09000000 	0x09000000
	...
    1c48:	3b000200 	0x3b000200
    1c4c:	0000009f 	0x0000009f
    1c50:	00000000 	0x00000000
    1c54:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1c54 <_RAM_DATA+0x7fff0c54>
	...
    1c60:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1c64:	00000000 	0x00000000
    1c68:	01000000 	0x01000000
    1c6c:	00006700 	rdtimeh.w	$r0,$r24
    1c70:	00000000 	0x00000000
    1c74:	00010000 	asrtle.d	$r0,$r0
    1c78:	0000006b 	0x0000006b
    1c7c:	00000000 	0x00000000
    1c80:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1c80 <_RAM_DATA+0x7fff0c80>
	...
    1c8c:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1c90:	00000000 	0x00000000
    1c94:	01000000 	0x01000000
    1c98:	00006700 	rdtimeh.w	$r0,$r24
    1c9c:	00000000 	0x00000000
    1ca0:	00010000 	asrtle.d	$r0,$r0
    1ca4:	0000006b 	0x0000006b
    1ca8:	00000000 	0x00000000
    1cac:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1cac <_RAM_DATA+0x7fff0cac>
	...
    1cb8:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
	...
    1cd4:	01000000 	0x01000000
    1cd8:	00005400 	bitrev.d	$r0,$r0
    1cdc:	00000000 	0x00000000
    1ce0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1ce4:	9f5401f3 	0x9f5401f3
	...
    1cf0:	00540001 	0x00540001
    1cf4:	00000000 	0x00000000
    1cf8:	04000000 	csrrd	$r0,0x0
    1cfc:	5401f300 	bl	-67108368(0xc0001f0) # fc001eec <_RAM_DATA+0x7c000eec>
    1d00:	0000009f 	0x0000009f
    1d04:	00000000 	0x00000000
    1d08:	54000100 	bl	67108864(0x4000000) # 4001d08 <_start-0x17ffe2f8>
	...
    1d14:	01f30004 	0x01f30004
    1d18:	00009f54 	0x00009f54
	...
    1d34:	00010000 	asrtle.d	$r0,$r0
    1d38:	00000055 	0x00000055
    1d3c:	00000000 	0x00000000
    1d40:	f3000400 	0xf3000400
    1d44:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
    1d48:	00000000 	0x00000000
    1d4c:	01000000 	0x01000000
    1d50:	00005500 	bitrev.d	$r0,$r8
    1d54:	00000000 	0x00000000
    1d58:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1d5c:	9f5501f3 	0x9f5501f3
	...
    1d68:	00550001 	0x00550001
    1d6c:	00000000 	0x00000000
    1d70:	04000000 	csrrd	$r0,0x0
    1d74:	5501f300 	bl	-67042832(0xc0101f0) # fc011f64 <_RAM_DATA+0x7c010f64>
    1d78:	0000009f 	0x0000009f
    1d7c:	00000000 	0x00000000
    1d80:	00000100 	0x00000100
    1d84:	00000000 	0x00000000
    1d88:	00000100 	0x00000100
	...
    1d94:	30000200 	0x30000200
    1d98:	0000009f 	0x0000009f
    1d9c:	00000000 	0x00000000
    1da0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1da0 <_RAM_DATA+0x7fff0da0>
	...
    1dac:	7f880003 	0x7f880003
    1db0:	0000009f 	0x0000009f
    1db4:	00000000 	0x00000000
    1db8:	68000100 	bltu	$r8,$r0,0 # 1db8 <_start-0x1bffe248>
	...
    1dc4:	9f300002 	0x9f300002
	...
    1dd0:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    1de4:	68000100 	bltu	$r8,$r0,0 # 1de4 <_start-0x1bffe21c>
	...
    1df0:	00020200 	0x00020200
	...
    1dfc:	00540001 	0x00540001
    1e00:	00000000 	0x00000000
    1e04:	04000000 	csrrd	$r0,0x0
    1e08:	5401f300 	bl	-67108368(0xc0001f0) # fc001ff8 <_RAM_DATA+0x7c000ff8>
    1e0c:	0000009f 	0x0000009f
	...
    1e18:	00200800 	div.w	$r0,$r0,$r2
    1e1c:	00201c1c 	div.w	$r28,$r0,$r7
    1e20:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff1e20 <_RAM_DATA+0x7fff0e20>
    1e24:	1c002040 	pcaddu12i	$r0,258(0x102)
    1e28:	1c002090 	pcaddu12i	$r16,260(0x104)
    1e2c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    1e38:	00206c00 	div.w	$r0,$r0,$r27
    1e3c:	00207b1c 	div.w	$r28,$r24,$r30
    1e40:	5500011c 	bl	74514432(0x4710000) # 4711e40 <_start-0x178ee1c0>
	...
    1e4c:	20980000 	ll.w	$r0,$r0,-26624(0x9800)
    1e50:	209f1c00 	ll.w	$r0,$r0,-24804(0x9f1c)
    1e54:	00011c00 	asrtle.d	$r0,$r7
    1e58:	00000054 	0x00000054
	...
    1e64:	74000000 	xvseq.b	$xr0,$xr0,$xr0
    1e68:	981c001f 	0x981c001f
    1e6c:	011c001f 	0x011c001f
    1e70:	1fa45c00 	pcaddu18i	$r0,-187680(0xd22e0)
    1e74:	1faf1c00 	pcaddu18i	$r0,-165664(0xd78e0)
    1e78:	00011c00 	asrtle.d	$r0,$r7
    1e7c:	001fc05c 	mulw.d.wu	$r28,$r2,$r16
    1e80:	001fcb1c 	mulw.d.wu	$r28,$r24,$r18
    1e84:	5c00011c 	bne	$r8,$r28,0 # 1e84 <_start-0x1bffe17c>
	...
    1e90:	1f040000 	pcaddu18i	$r0,-516096(0x82000)
    1e94:	1f241c00 	pcaddu18i	$r0,-450336(0x920e0)
    1e98:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    1e9c:	e8090075 	0xe8090075
    1ea0:	25f80924 	stptr.w	$r4,$r9,-2040(0xf808)
    1ea4:	0000009f 	0x0000009f
    1ea8:	00000000 	0x00000000
    1eac:	68000000 	bltu	$r0,$r0,0 # 1eac <_start-0x1bffe154>
    1eb0:	b81c001e 	0xb81c001e
    1eb4:	011c001e 	0x011c001e
    1eb8:	00006800 	rdtime.d	$r0,$r0
	...
    1ec4:	1c001e6c 	pcaddu12i	$r12,243(0xf3)
    1ec8:	1c001e7c 	pcaddu12i	$r28,243(0xf3)
    1ecc:	005c0001 	0x005c0001
    1ed0:	00000000 	0x00000000
    1ed4:	01000000 	0x01000000
    1ed8:	74000000 	xvseq.b	$xr0,$xr0,$xr0
    1edc:	7c1c001e 	0x7c1c001e
    1ee0:	021c001e 	slti	$r30,$r0,1792(0x700)
    1ee4:	7c9f3000 	0x7c9f3000
    1ee8:	b41c001e 	0xb41c001e
    1eec:	011c001e 	0x011c001e
    1ef0:	00006700 	rdtimeh.w	$r0,$r24
    1ef4:	00000000 	0x00000000
	...

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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:228
  e8:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
  ec:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232
 100:	1c0014b8 	pcaddu12i	$r24,165(0xa5)
 104:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:232 (discriminator 3)
 108:	1c0014c0 	pcaddu12i	$r0,166(0xa6)
 10c:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 1)
 160:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
 164:	1c0014dc 	pcaddu12i	$r28,166(0xa6)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 3)
 178:	1c0014dc 	pcaddu12i	$r28,166(0xa6)
 17c:	1c0014f0 	pcaddu12i	$r16,167(0xa7)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:264
 1d0:	1c0014f0 	pcaddu12i	$r16,167(0xa7)
 1d4:	1c001508 	pcaddu12i	$r8,168(0xa8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:265
 1d8:	1c001508 	pcaddu12i	$r8,168(0xa8)
 1dc:	1c001534 	pcaddu12i	$r20,169(0xa9)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205 (discriminator 1)
 1f0:	1c001534 	pcaddu12i	$r20,169(0xa9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:205
 1f4:	1c001568 	pcaddu12i	$r8,171(0xab)
	...
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
 258:	1c001568 	pcaddu12i	$r8,171(0xab)
 25c:	1c0015bc 	pcaddu12i	$r28,173(0xad)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 2a0:	1c0015bc 	pcaddu12i	$r28,173(0xad)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	1c0016a8 	pcaddu12i	$r8,181(0xb5)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b8:	1c0016a8 	pcaddu12i	$r8,181(0xb5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	1c0016e4 	pcaddu12i	$r4,183(0xb7)
 2c0:	1c0016e4 	pcaddu12i	$r4,183(0xb7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	1c001720 	pcaddu12i	$r0,185(0xb9)
 2c8:	1c001720 	pcaddu12i	$r0,185(0xb9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	1c00175c 	pcaddu12i	$r28,186(0xba)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	1c00175c 	pcaddu12i	$r28,186(0xba)
 2d4:	1c001798 	pcaddu12i	$r24,188(0xbc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	1c001798 	pcaddu12i	$r24,188(0xbc)
 2dc:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
 2e0:	1c0017d4 	pcaddu12i	$r20,190(0xbe)
 2e4:	1c001810 	pcaddu12i	$r16,192(0xc0)
 2e8:	1c001810 	pcaddu12i	$r16,192(0xc0)
 2ec:	1c00184c 	pcaddu12i	$r12,194(0xc2)
 2f0:	1c00184c 	pcaddu12i	$r12,194(0xc2)
 2f4:	1c001888 	pcaddu12i	$r8,196(0xc4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	1c001888 	pcaddu12i	$r8,196(0xc4)
 2fc:	1c0018c4 	pcaddu12i	$r4,198(0xc6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	1c0018c4 	pcaddu12i	$r4,198(0xc6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	1c001900 	pcaddu12i	$r0,200(0xc8)
 308:	1c001900 	pcaddu12i	$r0,200(0xc8)
 30c:	1c00193c 	pcaddu12i	$r28,201(0xc9)
 310:	1c00193c 	pcaddu12i	$r28,201(0xc9)
 314:	1c001978 	pcaddu12i	$r24,203(0xcb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	1c001978 	pcaddu12i	$r24,203(0xcb)
 31c:	1c0019b4 	pcaddu12i	$r20,205(0xcd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c0019b4 	pcaddu12i	$r20,205(0xcd)
 324:	1c0019f0 	pcaddu12i	$r16,207(0xcf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
 328:	1c0019f0 	pcaddu12i	$r16,207(0xcf)
 32c:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
 334:	1c001a68 	pcaddu12i	$r8,211(0xd3)
 338:	1c001a68 	pcaddu12i	$r8,211(0xd3)
 33c:	1c001aa4 	pcaddu12i	$r4,213(0xd5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	1c001aa4 	pcaddu12i	$r4,213(0xd5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
 34c:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
 354:	1c001b58 	pcaddu12i	$r24,218(0xda)
 358:	1c001b58 	pcaddu12i	$r24,218(0xda)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	1c001b94 	pcaddu12i	$r20,220(0xdc)
 360:	1c001b94 	pcaddu12i	$r20,220(0xdc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	1c001bd0 	pcaddu12i	$r16,222(0xde)
 368:	1c001bd0 	pcaddu12i	$r16,222(0xde)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
 370:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
 374:	1c001c48 	pcaddu12i	$r8,226(0xe2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	1c001c48 	pcaddu12i	$r8,226(0xe2)
 37c:	1c001c84 	pcaddu12i	$r4,228(0xe4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	1c001c84 	pcaddu12i	$r4,228(0xe4)
 384:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
 388:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
 38c:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
 394:	1c001d38 	pcaddu12i	$r24,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c001d38 	pcaddu12i	$r24,233(0xe9)
 39c:	1c001d74 	pcaddu12i	$r20,235(0xeb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c001d74 	pcaddu12i	$r20,235(0xeb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	1c001db0 	pcaddu12i	$r16,237(0xed)
 3a8:	1c001db0 	pcaddu12i	$r16,237(0xed)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	1c001dec 	pcaddu12i	$r12,239(0xef)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c001dec 	pcaddu12i	$r12,239(0xef)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	1c001e28 	pcaddu12i	$r8,241(0xf1)
 3b8:	1c001e28 	pcaddu12i	$r8,241(0xf1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	1c001ec0 	pcaddu12i	$r0,246(0xf6)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3d0:	1c001ec0 	pcaddu12i	$r0,246(0xf6)
 3d4:	1c001ef0 	pcaddu12i	$r16,247(0xf7)
 3d8:	1c001ef0 	pcaddu12i	$r16,247(0xf7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
 3e0:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
 3e4:	1c001f5c 	pcaddu12i	$r28,250(0xfa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
 3e8:	1c001f5c 	pcaddu12i	$r28,250(0xfa)
 3ec:	1c001fec 	pcaddu12i	$r12,255(0xff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
 3f0:	1c001fec 	pcaddu12i	$r12,255(0xff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
 3f4:	1c0020b4 	pcaddu12i	$r20,261(0x105)
 3f8:	1c0020b4 	pcaddu12i	$r20,261(0x105)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
 3fc:	1c0020dc 	pcaddu12i	$r28,262(0x106)
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
