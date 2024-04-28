
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
1c00000c:	03b5a1ef 	ori	$r15,$r15,0xd68
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
1c0000a0:	541a8400 	bl	6788(0x1a84) # 1c001b24 <main>
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
1c001090:	54134000 	bl	4928(0x1340) # 1c0023d0 <TIMER_WAKE_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:111
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:114
1c001098:	54136800 	bl	4968(0x1368) # 1c002400 <TOUCH>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:115
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:118
1c0010a0:	5413ac00 	bl	5036(0x13ac) # 1c00244c <UART2_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:119
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:122
1c0010a8:	5413c400 	bl	5060(0x13c4) # 1c00246c <BAT_FAIL>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:123
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:126
1c0010b0:	54128800 	bl	4744(0x1288) # 1c002338 <ext_handler>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:127
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:130
1c0010b8:	54155400 	bl	5460(0x1554) # 1c00260c <TIMER_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:131
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:134
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:135
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:136
1c0010c8:	54143400 	bl	5172(0x1434) # 1c0024fc <intc_handler>
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
1c0012f8:	028d01ad 	addi.w	$r13,$r13,832(0x340)
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
1c0016b4:	028351ad 	addi.w	$r13,$r13,212(0xd4)
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

1c0019a0 <SD_Init>:
SD_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:6
1c0019a0:	0015000d 	move	$r13,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:7
1c0019a4:	157ffe0c 	lu12i.w	$r12,-262160(0xbfff0)
1c0019a8:	2880018e 	ld.w	$r14,$r12,0
1c0019ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0019b0:	58001dcc 	beq	$r14,$r12,28(0x1c) # 1c0019cc <SD_Init+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:9
1c0019b4:	028005ad 	addi.w	$r13,$r13,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:10
1c0019b8:	1400018c 	lu12i.w	$r12,12(0xc)
1c0019bc:	038d418c 	ori	$r12,$r12,0x350
1c0019c0:	5fffe5ac 	bne	$r13,$r12,-28(0x3ffe4) # 1c0019a4 <SD_Init+0x4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:12
1c0019c4:	00150004 	move	$r4,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:16
1c0019c8:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/sd.c:15
1c0019cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0019d0:	4c000020 	jirl	$r0,$r1,0

1c0019d4 <DDR_Init>:
DDR_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:6
1c0019d4:	0015000d 	move	$r13,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:7
1c0019d8:	157ffe2c 	lu12i.w	$r12,-262159(0xbfff1)
1c0019dc:	2880018e 	ld.w	$r14,$r12,0
1c0019e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0019e4:	58001dcc 	beq	$r14,$r12,28(0x1c) # 1c001a00 <DDR_Init+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:9
1c0019e8:	028005ad 	addi.w	$r13,$r13,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:10
1c0019ec:	1400018c 	lu12i.w	$r12,12(0xc)
1c0019f0:	038d418c 	ori	$r12,$r12,0x350
1c0019f4:	5fffe5ac 	bne	$r13,$r12,-28(0x3ffe4) # 1c0019d8 <DDR_Init+0x4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:12
1c0019f8:	00150004 	move	$r4,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:16
1c0019fc:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/driver/ddr.c:15
1c001a00:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001a04:	4c000020 	jirl	$r0,$r1,0

1c001a08 <System_Init>:
System_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467
1c001a08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001a10:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:468
1c001a14:	57fa9bff 	bl	-1384(0xffffa98) # 1c0014ac <EnableInt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:469
1c001a18:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001a1c:	0380118c 	ori	$r12,$r12,0x4
1c001a20:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c001a24:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:470
1c001a28:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c001a2c:	03bf1d8c 	ori	$r12,$r12,0xfc7
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:470 (discriminator 1)
1c001a30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a34:	40001d80 	beqz	$r12,28(0x1c) # 1c001a50 <System_Init+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:470 (discriminator 3)
1c001a38:	03400000 	andi	$r0,$r0,0x0
1c001a3c:	03400000 	andi	$r0,$r0,0x0
1c001a40:	03400000 	andi	$r0,$r0,0x0
1c001a44:	03400000 	andi	$r0,$r0,0x0
1c001a48:	001501ac 	move	$r12,$r13
1c001a4c:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a30 <System_Init+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472
1c001a50:	57ff87ff 	bl	-124(0xfffff84) # 1c0019d4 <DDR_Init>
1c001a54:	00150097 	move	$r23,$r4
1c001a58:	40004480 	beqz	$r4,68(0x44) # 1c001a9c <System_Init+0x94>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:479
1c001a5c:	57ff47ff 	bl	-188(0xfffff44) # 1c0019a0 <SD_Init>
1c001a60:	00150097 	move	$r23,$r4
1c001a64:	40007080 	beqz	$r4,112(0x70) # 1c001ad4 <System_Init+0xcc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:486
1c001a68:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a6c:	02ba9084 	addi.w	$r4,$r4,-348(0xea4)
1c001a70:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:487
1c001a74:	140000ac 	lu12i.w	$r12,5(0x5)
1c001a78:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:487 (discriminator 1)
1c001a7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a80:	40008980 	beqz	$r12,136(0x88) # 1c001b08 <System_Init+0x100>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:487 (discriminator 3)
1c001a84:	03400000 	andi	$r0,$r0,0x0
1c001a88:	03400000 	andi	$r0,$r0,0x0
1c001a8c:	03400000 	andi	$r0,$r0,0x0
1c001a90:	03400000 	andi	$r0,$r0,0x0
1c001a94:	001501ac 	move	$r12,$r13
1c001a98:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a7c <System_Init+0x74>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:474
1c001a9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001aa0:	02b8e084 	addi.w	$r4,$r4,-456(0xe38)
1c001aa4:	57fbabff 	bl	-1112(0xffffba8) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475
1c001aa8:	140000ac 	lu12i.w	$r12,5(0x5)
1c001aac:	03accd8c 	ori	$r12,$r12,0xb33
1c001ab0:	50001800 	b	24(0x18) # 1c001ac8 <System_Init+0xc0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475 (discriminator 3)
1c001ab4:	03400000 	andi	$r0,$r0,0x0
1c001ab8:	03400000 	andi	$r0,$r0,0x0
1c001abc:	03400000 	andi	$r0,$r0,0x0
1c001ac0:	03400000 	andi	$r0,$r0,0x0
1c001ac4:	001501ac 	move	$r12,$r13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:475 (discriminator 1)
1c001ac8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001acc:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1c001ab4 <System_Init+0xac>
1c001ad0:	50004000 	b	64(0x40) # 1c001b10 <System_Init+0x108>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:481
1c001ad4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ad8:	02b87084 	addi.w	$r4,$r4,-484(0xe1c)
1c001adc:	57fb73ff 	bl	-1168(0xffffb70) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:482
1c001ae0:	140000ac 	lu12i.w	$r12,5(0x5)
1c001ae4:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:482 (discriminator 1)
1c001ae8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001aec:	40002580 	beqz	$r12,36(0x24) # 1c001b10 <System_Init+0x108>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:482 (discriminator 3)
1c001af0:	03400000 	andi	$r0,$r0,0x0
1c001af4:	03400000 	andi	$r0,$r0,0x0
1c001af8:	03400000 	andi	$r0,$r0,0x0
1c001afc:	03400000 	andi	$r0,$r0,0x0
1c001b00:	001501ac 	move	$r12,$r13
1c001b04:	53ffe7ff 	b	-28(0xfffffe4) # 1c001ae8 <System_Init+0xe0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:489
1c001b08:	57fe1bff 	bl	-488(0xffffe18) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:491
1c001b0c:	02800417 	addi.w	$r23,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:492
1c001b10:	001502e4 	move	$r4,$r23
1c001b14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b18:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001b1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <main>:
main():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:495
1c001b24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b28:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:496
1c001b2c:	57fedfff 	bl	-292(0xffffedc) # 1c001a08 <System_Init>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:497
1c001b30:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001b34:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c001b38:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:499
1c001b3c:	157ffe0c 	lu12i.w	$r12,-262160(0xbfff0)
1c001b40:	0380218e 	ori	$r14,$r12,0x8
1c001b44:	1400020d 	lu12i.w	$r13,16(0x10)
1c001b48:	039801ad 	ori	$r13,$r13,0x600
1c001b4c:	298001cd 	st.w	$r13,$r14,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:500
1c001b50:	0380318d 	ori	$r13,$r12,0xc
1c001b54:	0292f00e 	addi.w	$r14,$r0,1212(0x4bc)
1c001b58:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:501
1c001b5c:	0380418d 	ori	$r13,$r12,0x10
1c001b60:	298001a0 	st.w	$r0,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:503
1c001b64:	0380118c 	ori	$r12,$r12,0x4
1c001b68:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001b6c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:505 (discriminator 1)
1c001b70:	157ffe0c 	lu12i.w	$r12,-262160(0xbfff0)
1c001b74:	0380518c 	ori	$r12,$r12,0x14
1c001b78:	2880018c 	ld.w	$r12,$r12,0
1c001b7c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c001b70 <main+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:509
1c001b80:	00150004 	move	$r4,$r0
1c001b84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b8c:	4c000020 	jirl	$r0,$r1,0

1c001b90 <UART1_HANDLER>:
UART1_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:512
1c001b90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b94:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:513
1c001b98:	157fe00d 	lu12i.w	$r13,-262400(0xbff00)
1c001b9c:	288001ac 	ld.w	$r12,$r13,0
1c001ba0:	03c0058c 	xori	$r12,$r12,0x1
1c001ba4:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:514
1c001ba8:	57fd7bff 	bl	-648(0xffffd78) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:515
1c001bac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bb4:	4c000020 	jirl	$r0,$r1,0

1c001bb8 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:4
1c001bb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bbc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:5
1c001bc0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001bc4:	028440c6 	addi.w	$r6,$r6,272(0x110)
1c001bc8:	02801405 	addi.w	$r5,$r0,5(0x5)
1c001bcc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001bd0:	02b59084 	addi.w	$r4,$r4,-668(0xd64)
1c001bd4:	57f6bfff 	bl	-2372(0xffff6bc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:6
1c001bd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bdc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001be0:	03808084 	ori	$r4,$r4,0x20
1c001be4:	57fd57ff 	bl	-684(0xffffd54) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:7
1c001be8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bf0:	4c000020 	jirl	$r0,$r1,0

1c001bf4 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:9
1c001bf4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bf8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:10
1c001bfc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c00:	0282f0c6 	addi.w	$r6,$r6,188(0xbc)
1c001c04:	02802805 	addi.w	$r5,$r0,10(0xa)
1c001c08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c0c:	02b4a084 	addi.w	$r4,$r4,-728(0xd28)
1c001c10:	57f683ff 	bl	-2432(0xffff680) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:11
1c001c14:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001c18:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c1c:	03808084 	ori	$r4,$r4,0x20
1c001c20:	57fd1bff 	bl	-744(0xffffd18) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:12
1c001c24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c2c:	4c000020 	jirl	$r0,$r1,0

1c001c30 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:14
1c001c30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c34:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:15
1c001c38:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c3c:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c001c40:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c001c44:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c48:	02b3b084 	addi.w	$r4,$r4,-788(0xcec)
1c001c4c:	57f647ff 	bl	-2492(0xffff644) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:16
1c001c50:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001c54:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c58:	03808084 	ori	$r4,$r4,0x20
1c001c5c:	57fcdfff 	bl	-804(0xffffcdc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:17
1c001c60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c68:	4c000020 	jirl	$r0,$r1,0

1c001c6c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:19
1c001c6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c70:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:20
1c001c74:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c78:	028050c6 	addi.w	$r6,$r6,20(0x14)
1c001c7c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001c80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c84:	02b2c084 	addi.w	$r4,$r4,-848(0xcb0)
1c001c88:	57f60bff 	bl	-2552(0xffff608) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:21
1c001c8c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001c90:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c94:	03808084 	ori	$r4,$r4,0x20
1c001c98:	57fca3ff 	bl	-864(0xffffca0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:22
1c001c9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ca0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ca4:	4c000020 	jirl	$r0,$r1,0

1c001ca8 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:24
1c001ca8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cac:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:25
1c001cb0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cb4:	02bf00c6 	addi.w	$r6,$r6,-64(0xfc0)
1c001cb8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c001cbc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cc0:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c001cc4:	57f5cfff 	bl	-2612(0xffff5cc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:26
1c001cc8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001ccc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001cd0:	03808084 	ori	$r4,$r4,0x20
1c001cd4:	57fc67ff 	bl	-924(0xffffc64) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:27
1c001cd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ce0:	4c000020 	jirl	$r0,$r1,0

1c001ce4 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:29
1c001ce4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ce8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:30
1c001cec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cf0:	02bdb0c6 	addi.w	$r6,$r6,-148(0xf6c)
1c001cf4:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c001cf8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cfc:	02b0e084 	addi.w	$r4,$r4,-968(0xc38)
1c001d00:	57f593ff 	bl	-2672(0xffff590) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:31
1c001d04:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001d08:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d0c:	03808084 	ori	$r4,$r4,0x20
1c001d10:	57fc2bff 	bl	-984(0xffffc28) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:32
1c001d14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d1c:	4c000020 	jirl	$r0,$r1,0

1c001d20 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:34
1c001d20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d24:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:35
1c001d28:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d2c:	02bc60c6 	addi.w	$r6,$r6,-232(0xf18)
1c001d30:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001d34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d38:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c001d3c:	57f557ff 	bl	-2732(0xffff554) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:36
1c001d40:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001d44:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d48:	03808084 	ori	$r4,$r4,0x20
1c001d4c:	57fbefff 	bl	-1044(0xffffbec) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:37
1c001d50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d58:	4c000020 	jirl	$r0,$r1,0

1c001d5c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:39
1c001d5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d60:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:41
1c001d64:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d68:	02bb10c6 	addi.w	$r6,$r6,-316(0xec4)
1c001d6c:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c001d70:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d74:	02af0084 	addi.w	$r4,$r4,-1088(0xbc0)
1c001d78:	57f51bff 	bl	-2792(0xffff518) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:42
1c001d7c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001d80:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d84:	03808084 	ori	$r4,$r4,0x20
1c001d88:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:43
1c001d8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d94:	4c000020 	jirl	$r0,$r1,0

1c001d98 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:45
1c001d98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d9c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:46
1c001da0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001da4:	02b9c0c6 	addi.w	$r6,$r6,-400(0xe70)
1c001da8:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c001dac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001db0:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c001db4:	57f4dfff 	bl	-2852(0xffff4dc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:47
1c001db8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c001dbc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001dc0:	03808084 	ori	$r4,$r4,0x20
1c001dc4:	57fb77ff 	bl	-1164(0xffffb74) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:48
1c001dc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001dcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dd0:	4c000020 	jirl	$r0,$r1,0

1c001dd4 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:50
1c001dd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001dd8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:52
1c001ddc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001de0:	02b870c6 	addi.w	$r6,$r6,-484(0xe1c)
1c001de4:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c001de8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001dec:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c001df0:	57f4a3ff 	bl	-2912(0xffff4a0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:53
1c001df4:	02880005 	addi.w	$r5,$r0,512(0x200)
1c001df8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001dfc:	03808084 	ori	$r4,$r4,0x20
1c001e00:	57fb3bff 	bl	-1224(0xffffb38) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:54
1c001e04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e0c:	4c000020 	jirl	$r0,$r1,0

1c001e10 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:56
1c001e10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e14:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:58
1c001e18:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e1c:	02b720c6 	addi.w	$r6,$r6,-568(0xdc8)
1c001e20:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c001e24:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e28:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c001e2c:	57f467ff 	bl	-2972(0xffff464) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:59
1c001e30:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001e34:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e38:	03808084 	ori	$r4,$r4,0x20
1c001e3c:	57faffff 	bl	-1284(0xffffafc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:60
1c001e40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e48:	4c000020 	jirl	$r0,$r1,0

1c001e4c <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:62
1c001e4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e50:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:64
1c001e54:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e58:	02b5d0c6 	addi.w	$r6,$r6,-652(0xd74)
1c001e5c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001e60:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e64:	02ab4084 	addi.w	$r4,$r4,-1328(0xad0)
1c001e68:	57f42bff 	bl	-3032(0xffff428) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:65
1c001e6c:	03a00005 	ori	$r5,$r0,0x800
1c001e70:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e74:	03808084 	ori	$r4,$r4,0x20
1c001e78:	57fac3ff 	bl	-1344(0xffffac0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:66
1c001e7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e84:	4c000020 	jirl	$r0,$r1,0

1c001e88 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:68
1c001e88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e8c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:69
1c001e90:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e94:	02b480c6 	addi.w	$r6,$r6,-736(0xd20)
1c001e98:	02811405 	addi.w	$r5,$r0,69(0x45)
1c001e9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ea0:	02aa5084 	addi.w	$r4,$r4,-1388(0xa94)
1c001ea4:	57f3efff 	bl	-3092(0xffff3ec) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:70
1c001ea8:	14000025 	lu12i.w	$r5,1(0x1)
1c001eac:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001eb0:	03808084 	ori	$r4,$r4,0x20
1c001eb4:	57fa87ff 	bl	-1404(0xffffa84) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:71
1c001eb8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ebc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ec0:	4c000020 	jirl	$r0,$r1,0

1c001ec4 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:73
1c001ec4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ec8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:74
1c001ecc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ed0:	02b330c6 	addi.w	$r6,$r6,-820(0xccc)
1c001ed4:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c001ed8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001edc:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c001ee0:	57f3b3ff 	bl	-3152(0xffff3b0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:75
1c001ee4:	14000045 	lu12i.w	$r5,2(0x2)
1c001ee8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001eec:	03808084 	ori	$r4,$r4,0x20
1c001ef0:	57fa4bff 	bl	-1464(0xffffa48) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:76
1c001ef4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001efc:	4c000020 	jirl	$r0,$r1,0

1c001f00 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:78
1c001f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f04:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:80
1c001f08:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f0c:	02b1e0c6 	addi.w	$r6,$r6,-904(0xc78)
1c001f10:	02814005 	addi.w	$r5,$r0,80(0x50)
1c001f14:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f18:	02a87084 	addi.w	$r4,$r4,-1508(0xa1c)
1c001f1c:	57f377ff 	bl	-3212(0xffff374) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:81
1c001f20:	14000085 	lu12i.w	$r5,4(0x4)
1c001f24:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f28:	03808084 	ori	$r4,$r4,0x20
1c001f2c:	57fa0fff 	bl	-1524(0xffffa0c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:82
1c001f30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f38:	4c000020 	jirl	$r0,$r1,0

1c001f3c <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:84
1c001f3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f40:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:86
1c001f44:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f48:	02b090c6 	addi.w	$r6,$r6,-988(0xc24)
1c001f4c:	02815805 	addi.w	$r5,$r0,86(0x56)
1c001f50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f54:	02a78084 	addi.w	$r4,$r4,-1568(0x9e0)
1c001f58:	57f33bff 	bl	-3272(0xffff338) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:87
1c001f5c:	14000105 	lu12i.w	$r5,8(0x8)
1c001f60:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f64:	03808084 	ori	$r4,$r4,0x20
1c001f68:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:88
1c001f6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f74:	4c000020 	jirl	$r0,$r1,0

1c001f78 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:91
1c001f78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f7c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:93
1c001f80:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f84:	02af40c6 	addi.w	$r6,$r6,-1072(0xbd0)
1c001f88:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c001f8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f90:	02a69084 	addi.w	$r4,$r4,-1628(0x9a4)
1c001f94:	57f2ffff 	bl	-3332(0xffff2fc) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:94
1c001f98:	14000205 	lu12i.w	$r5,16(0x10)
1c001f9c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001fa0:	03808084 	ori	$r4,$r4,0x20
1c001fa4:	57f997ff 	bl	-1644(0xffff994) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:95
1c001fa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fb0:	4c000020 	jirl	$r0,$r1,0

1c001fb4 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:97
1c001fb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fb8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:99
1c001fbc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fc0:	02adf0c6 	addi.w	$r6,$r6,-1156(0xb7c)
1c001fc4:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c001fc8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fcc:	02a5a084 	addi.w	$r4,$r4,-1688(0x968)
1c001fd0:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:100
1c001fd4:	14000405 	lu12i.w	$r5,32(0x20)
1c001fd8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001fdc:	03808084 	ori	$r4,$r4,0x20
1c001fe0:	57f95bff 	bl	-1704(0xffff958) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:101
1c001fe4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fe8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fec:	4c000020 	jirl	$r0,$r1,0

1c001ff0 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:103
1c001ff0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ff4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:105
1c001ff8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ffc:	02aca0c6 	addi.w	$r6,$r6,-1240(0xb28)
1c002000:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c002004:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002008:	02a4b084 	addi.w	$r4,$r4,-1748(0x92c)
1c00200c:	57f287ff 	bl	-3452(0xffff284) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:106
1c002010:	14000805 	lu12i.w	$r5,64(0x40)
1c002014:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002018:	03808084 	ori	$r4,$r4,0x20
1c00201c:	57f91fff 	bl	-1764(0xffff91c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:107
1c002020:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002024:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002028:	4c000020 	jirl	$r0,$r1,0

1c00202c <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:109
1c00202c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002030:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:111
1c002034:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002038:	02ab50c6 	addi.w	$r6,$r6,-1324(0xad4)
1c00203c:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c002040:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002044:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c002048:	57f24bff 	bl	-3512(0xffff248) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:112
1c00204c:	14001005 	lu12i.w	$r5,128(0x80)
1c002050:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002054:	03808084 	ori	$r4,$r4,0x20
1c002058:	57f8e3ff 	bl	-1824(0xffff8e0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:113
1c00205c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002064:	4c000020 	jirl	$r0,$r1,0

1c002068 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:115
1c002068:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00206c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:117
1c002070:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002074:	02aa00c6 	addi.w	$r6,$r6,-1408(0xa80)
1c002078:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c00207c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002080:	02a2d084 	addi.w	$r4,$r4,-1868(0x8b4)
1c002084:	57f20fff 	bl	-3572(0xffff20c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:118
1c002088:	14002005 	lu12i.w	$r5,256(0x100)
1c00208c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002090:	03808084 	ori	$r4,$r4,0x20
1c002094:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:119
1c002098:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00209c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020a0:	4c000020 	jirl	$r0,$r1,0

1c0020a4 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:121
1c0020a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020a8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:122
1c0020ac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020b0:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c0020b4:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c0020b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0020bc:	02a1e084 	addi.w	$r4,$r4,-1928(0x878)
1c0020c0:	57f1d3ff 	bl	-3632(0xffff1d0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:123
1c0020c4:	14004005 	lu12i.w	$r5,512(0x200)
1c0020c8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0020cc:	03808084 	ori	$r4,$r4,0x20
1c0020d0:	57f86bff 	bl	-1944(0xffff868) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:124
1c0020d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020dc:	4c000020 	jirl	$r0,$r1,0

1c0020e0 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:126
1c0020e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020e4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:127
1c0020e8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020ec:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c0020f0:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c0020f4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0020f8:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c0020fc:	57f197ff 	bl	-3692(0xffff194) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:128
1c002100:	14008005 	lu12i.w	$r5,1024(0x400)
1c002104:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002108:	03808084 	ori	$r4,$r4,0x20
1c00210c:	57f82fff 	bl	-2004(0xffff82c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:129
1c002110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002114:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002118:	4c000020 	jirl	$r0,$r1,0

1c00211c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:131
1c00211c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002120:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:133
1c002124:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002128:	02a610c6 	addi.w	$r6,$r6,-1660(0x984)
1c00212c:	02821405 	addi.w	$r5,$r0,133(0x85)
1c002130:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002134:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c002138:	57f15bff 	bl	-3752(0xffff158) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:134
1c00213c:	14010005 	lu12i.w	$r5,2048(0x800)
1c002140:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002144:	03808084 	ori	$r4,$r4,0x20
1c002148:	57f7f3ff 	bl	-2064(0xffff7f0) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:135
1c00214c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:137
1c002158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00215c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:139
1c002160:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002164:	02a4c0c6 	addi.w	$r6,$r6,-1744(0x930)
1c002168:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c00216c:	1c000004 	pcaddu12i	$r4,0
1c002170:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c002174:	57f11fff 	bl	-3812(0xffff11c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:140
1c002178:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00217c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002180:	03808084 	ori	$r4,$r4,0x20
1c002184:	57f7b7ff 	bl	-2124(0xffff7b4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:141
1c002188:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00218c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002190:	4c000020 	jirl	$r0,$r1,0

1c002194 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:143
1c002194:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002198:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:145
1c00219c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021a0:	02a370c6 	addi.w	$r6,$r6,-1828(0x8dc)
1c0021a4:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0021a8:	1c000004 	pcaddu12i	$r4,0
1c0021ac:	029e2084 	addi.w	$r4,$r4,1928(0x788)
1c0021b0:	57f0e3ff 	bl	-3872(0xffff0e0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:146
1c0021b4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0021b8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0021bc:	03808084 	ori	$r4,$r4,0x20
1c0021c0:	57f77bff 	bl	-2184(0xffff778) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:147
1c0021c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021cc:	4c000020 	jirl	$r0,$r1,0

1c0021d0 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:149
1c0021d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021d4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:151
1c0021d8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021dc:	02a220c6 	addi.w	$r6,$r6,-1912(0x888)
1c0021e0:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c0021e4:	1c000004 	pcaddu12i	$r4,0
1c0021e8:	029d3084 	addi.w	$r4,$r4,1868(0x74c)
1c0021ec:	57f0a7ff 	bl	-3932(0xffff0a4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:152
1c0021f0:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0021f4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0021f8:	03808084 	ori	$r4,$r4,0x20
1c0021fc:	57f73fff 	bl	-2244(0xffff73c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:153
1c002200:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002204:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002208:	4c000020 	jirl	$r0,$r1,0

1c00220c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:155
1c00220c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002210:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:157
1c002214:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002218:	02a0d0c6 	addi.w	$r6,$r6,-1996(0x834)
1c00221c:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c002220:	1c000004 	pcaddu12i	$r4,0
1c002224:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c002228:	57f06bff 	bl	-3992(0xffff068) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:158
1c00222c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c002230:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002234:	03808084 	ori	$r4,$r4,0x20
1c002238:	57f703ff 	bl	-2304(0xffff700) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:159
1c00223c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002244:	4c000020 	jirl	$r0,$r1,0

1c002248 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:161
1c002248:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00224c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:163
1c002250:	1c000006 	pcaddu12i	$r6,0
1c002254:	029f80c6 	addi.w	$r6,$r6,2016(0x7e0)
1c002258:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c00225c:	1c000004 	pcaddu12i	$r4,0
1c002260:	029b5084 	addi.w	$r4,$r4,1748(0x6d4)
1c002264:	57f02fff 	bl	-4052(0xffff02c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:164
1c002268:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00226c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002270:	03808084 	ori	$r4,$r4,0x20
1c002274:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:165
1c002278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00227c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002280:	4c000020 	jirl	$r0,$r1,0

1c002284 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:168
1c002284:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002288:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:170
1c00228c:	1c000006 	pcaddu12i	$r6,0
1c002290:	029e30c6 	addi.w	$r6,$r6,1932(0x78c)
1c002294:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c002298:	1c000004 	pcaddu12i	$r4,0
1c00229c:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c0022a0:	57eff3ff 	bl	-4112(0xfffeff0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:171
1c0022a4:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0022a8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0022ac:	03808084 	ori	$r4,$r4,0x20
1c0022b0:	57f68bff 	bl	-2424(0xffff688) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:172
1c0022b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022bc:	4c000020 	jirl	$r0,$r1,0

1c0022c0 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:174
1c0022c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022c4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:176
1c0022c8:	1c000006 	pcaddu12i	$r6,0
1c0022cc:	029ce0c6 	addi.w	$r6,$r6,1848(0x738)
1c0022d0:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0022d4:	1c000004 	pcaddu12i	$r4,0
1c0022d8:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c0022dc:	57efb7ff 	bl	-4172(0xfffefb4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:177
1c0022e0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0022e4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0022e8:	03808084 	ori	$r4,$r4,0x20
1c0022ec:	57f64fff 	bl	-2484(0xffff64c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:178
1c0022f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022f8:	4c000020 	jirl	$r0,$r1,0

1c0022fc <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:180
1c0022fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002300:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:182
1c002304:	1c000006 	pcaddu12i	$r6,0
1c002308:	029b90c6 	addi.w	$r6,$r6,1764(0x6e4)
1c00230c:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c002310:	1c000004 	pcaddu12i	$r4,0
1c002314:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c002318:	57ef7bff 	bl	-4232(0xfffef78) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:183
1c00231c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c002320:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002324:	03808084 	ori	$r4,$r4,0x20
1c002328:	57f613ff 	bl	-2544(0xffff610) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:184
1c00232c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002330:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002334:	4c000020 	jirl	$r0,$r1,0

1c002338 <ext_handler>:
ext_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:221
1c002338:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00233c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002340:	29802077 	st.w	$r23,$r3,8(0x8)
1c002344:	29801078 	st.w	$r24,$r3,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:222
1c002348:	157fd617 	lu12i.w	$r23,-262480(0xbfeb0)
1c00234c:	0380f2ec 	ori	$r12,$r23,0x3c
1c002350:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c002354:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:226
1c002358:	1c000006 	pcaddu12i	$r6,0
1c00235c:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c002360:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c002364:	1c000004 	pcaddu12i	$r4,0
1c002368:	02973084 	addi.w	$r4,$r4,1484(0x5cc)
1c00236c:	57ef27ff 	bl	-4316(0xfffef24) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:227
1c002370:	038082f7 	ori	$r23,$r23,0x20
1c002374:	288032f8 	ld.w	$r24,$r23,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:228
1c002378:	288002ec 	ld.w	$r12,$r23,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:229
1c00237c:	0014b318 	and	$r24,$r24,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:230
1c002380:	03400000 	andi	$r0,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232
1c002384:	00150017 	move	$r23,$r0
1c002388:	50000800 	b	8(0x8) # 1c002390 <ext_handler+0x58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 2)
1c00238c:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 1)
1c002390:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002394:	68002997 	bltu	$r12,$r23,40(0x28) # 1c0023bc <ext_handler+0x84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:234
1c002398:	0017df0c 	srl.w	$r12,$r24,$r23
1c00239c:	0340058c 	andi	$r12,$r12,0x1
1c0023a0:	43ffed9f 	beqz	$r12,-20(0x7fffec) # 1c00238c <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:236
1c0023a4:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0023a8:	02a5118c 	addi.w	$r12,$r12,-1724(0x944)
1c0023ac:	0004b2ec 	alsl.w	$r12,$r23,$r12,0x2
1c0023b0:	2880018c 	ld.w	$r12,$r12,0
1c0023b4:	4c000181 	jirl	$r1,$r12,0
1c0023b8:	53ffd7ff 	b	-44(0xfffffd4) # 1c00238c <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:239
1c0023bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023c0:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0023c4:	28801078 	ld.w	$r24,$r3,4(0x4)
1c0023c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023cc:	4c000020 	jirl	$r0,$r1,0

1c0023d0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:271
1c0023d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023d4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:273
1c0023d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023dc:	0380f18d 	ori	$r13,$r12,0x3c
1c0023e0:	1400020e 	lu12i.w	$r14,16(0x10)
1c0023e4:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:274
1c0023e8:	0380118c 	ori	$r12,$r12,0x4
1c0023ec:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:275
1c0023f0:	57f55bff 	bl	-2728(0xffff558) # 1c001948 <WDG_DogFeed>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:277
1c0023f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023fc:	4c000020 	jirl	$r0,$r1,0

1c002400 <TOUCH>:
TOUCH():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:288
1c002400:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002404:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:292
1c002408:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00240c:	0380118c 	ori	$r12,$r12,0x4
1c002410:	28800185 	ld.w	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:293
1c002414:	2880018d 	ld.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:294
1c002418:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00241c:	0380f1ad 	ori	$r13,$r13,0x3c
1c002420:	1400040e 	lu12i.w	$r14,32(0x20)
1c002424:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:295
1c002428:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00242c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:296
1c002430:	007bc0a5 	bstrpick.w	$r5,$r5,0x1b,0x10
1c002434:	1c000004 	pcaddu12i	$r4,0
1c002438:	02947084 	addi.w	$r4,$r4,1308(0x51c)
1c00243c:	57ee57ff 	bl	-4524(0xfffee54) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:301
1c002440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002444:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002448:	4c000020 	jirl	$r0,$r1,0

1c00244c <UART2_INT>:
UART2_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:313
1c00244c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002450:	0380f18c 	ori	$r12,$r12,0x3c
1c002454:	1400080d 	lu12i.w	$r13,64(0x40)
1c002458:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:314
1c00245c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002460:	0380098c 	ori	$r12,$r12,0x2
1c002464:	2a00018c 	ld.bu	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:315
1c002468:	4c000020 	jirl	$r0,$r1,0

1c00246c <BAT_FAIL>:
BAT_FAIL():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:326
1c00246c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002470:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:327
1c002474:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c002478:	038011ae 	ori	$r14,$r13,0x4
1c00247c:	288001cc 	ld.w	$r12,$r14,0
1c002480:	0077cd8c 	bstrpick.w	$r12,$r12,0x17,0x13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:328
1c002484:	288001ce 	ld.w	$r14,$r14,0
1c002488:	1401f00f 	lu12i.w	$r15,3968(0xf80)
1c00248c:	0014bdce 	and	$r14,$r14,$r15
1c002490:	0380f1ad 	ori	$r13,$r13,0x3c
1c002494:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:329
1c002498:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00249c:	5800198d 	beq	$r12,$r13,24(0x18) # 1c0024b4 <BAT_FAIL+0x48>
1c0024a0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0024a4:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c0024d0 <BAT_FAIL+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c0024a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024b0:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:331
1c0024b4:	1c000004 	pcaddu12i	$r4,0
1c0024b8:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c0024bc:	57edd7ff 	bl	-4652(0xfffedd4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:332
1c0024c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024c4:	0380118c 	ori	$r12,$r12,0x4
1c0024c8:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:333
1c0024cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0024a8 <BAT_FAIL+0x3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:341
1c0024d0:	1c000004 	pcaddu12i	$r4,0
1c0024d4:	02932084 	addi.w	$r4,$r4,1224(0x4c8)
1c0024d8:	57edbbff 	bl	-4680(0xfffedb8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:342
1c0024dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024e0:	0380118c 	ori	$r12,$r12,0x4
1c0024e4:	2880018d 	ld.w	$r13,$r12,0
1c0024e8:	15fffeee 	lu12i.w	$r14,-9(0xffff7)
1c0024ec:	03bffdce 	ori	$r14,$r14,0xfff
1c0024f0:	0014b9ad 	and	$r13,$r13,$r14
1c0024f4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c0024f8:	53ffb3ff 	b	-80(0xfffffb0) # 1c0024a8 <BAT_FAIL+0x3c>

1c0024fc <intc_handler>:
intc_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:359
1c0024fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002500:	29803061 	st.w	$r1,$r3,12(0xc)
1c002504:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:360
1c002508:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00250c:	0380158c 	ori	$r12,$r12,0x5
1c002510:	2a000197 	ld.bu	$r23,$r12,0
1c002514:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:362
1c002518:	034006ec 	andi	$r12,$r23,0x1
1c00251c:	44004580 	bnez	$r12,68(0x44) # 1c002560 <intc_handler+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:374
1c002520:	034012ec 	andi	$r12,$r23,0x4
1c002524:	44007580 	bnez	$r12,116(0x74) # 1c002598 <intc_handler+0x9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:403
1c002528:	034022f7 	andi	$r23,$r23,0x8
1c00252c:	400016e0 	beqz	$r23,20(0x14) # 1c002540 <intc_handler+0x44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:408
1c002530:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002534:	03800d8c 	ori	$r12,$r12,0x3
1c002538:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00253c:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:411
1c002540:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002544:	03800d8c 	ori	$r12,$r12,0x3
1c002548:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00254c:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:412
1c002550:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002554:	28802077 	ld.w	$r23,$r3,8(0x8)
1c002558:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00255c:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:364
1c002560:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002564:	57f3fbff 	bl	-3080(0xffff3f8) # 1c00195c <TIM_GetITStatus>
1c002568:	43ffb89f 	beqz	$r4,-72(0x7fffb8) # 1c002520 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:367
1c00256c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002570:	02aa518c 	addi.w	$r12,$r12,-1388(0xa94)
1c002574:	2880018d 	ld.w	$r13,$r12,0
1c002578:	024005ad 	sltui	$r13,$r13,1(0x1)
1c00257c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:368
1c002580:	28800185 	ld.w	$r5,$r12,0
1c002584:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002588:	57f317ff 	bl	-3308(0xffff314) # 1c00189c <gpio_write>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:370
1c00258c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002590:	57f3e7ff 	bl	-3100(0xffff3e4) # 1c001974 <TIM_ClearIT>
1c002594:	53ff8fff 	b	-116(0xfffff8c) # 1c002520 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:376
1c002598:	57f5fbff 	bl	-2568(0xffff5f8) # 1c001b90 <UART1_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:385
1c00259c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025a0:	0380118c 	ori	$r12,$r12,0x4
1c0025a4:	2880018c 	ld.w	$r12,$r12,0
1c0025a8:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:383
1c0025ac:	0015000e 	move	$r14,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c0025b0:	50002000 	b	32(0x20) # 1c0025d0 <intc_handler+0xd4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:389
1c0025b4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025b8:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:390
1c0025bc:	0280040e 	addi.w	$r14,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:397
1c0025c0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025c4:	0380118c 	ori	$r12,$r12,0x4
1c0025c8:	2880018c 	ld.w	$r12,$r12,0
1c0025cc:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c0025d0:	0340058c 	andi	$r12,$r12,0x1
1c0025d4:	47ff559f 	bnez	$r12,-172(0x7fff54) # 1c002528 <intc_handler+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:387
1c0025d8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025dc:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:388
1c0025e0:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c0025e4:	5bffd18d 	beq	$r12,$r13,-48(0x3ffd0) # 1c0025b4 <intc_handler+0xb8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:391
1c0025e8:	400019c0 	beqz	$r14,24(0x18) # 1c002600 <intc_handler+0x104>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:393
1c0025ec:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025f0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0025f4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:392
1c0025f8:	0015000e 	move	$r14,$r0
1c0025fc:	53ffc7ff 	b	-60(0xfffffc4) # 1c0025c0 <intc_handler+0xc4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:395
1c002600:	157fd10d 	lu12i.w	$r13,-262520(0xbfe88)
1c002604:	298001ac 	st.w	$r12,$r13,0
1c002608:	53ffbbff 	b	-72(0xfffffb8) # 1c0025c0 <intc_handler+0xc4>

1c00260c <TIMER_HANDLER>:
TIMER_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:415
1c00260c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002610:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:416
1c002614:	57eeafff 	bl	-4436(0xfffeeac) # 1c0014c0 <Set_Timer_clear>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:417
1c002618:	1c000004 	pcaddu12i	$r4,0
1c00261c:	028e9084 	addi.w	$r4,$r4,932(0x3a4)
1c002620:	57ec73ff 	bl	-5008(0xfffec70) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:418
1c002624:	57ee97ff 	bl	-4460(0xfffee94) # 1c0014b8 <Set_Timer_stop>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:419
1c002628:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00262c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002630:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002634 <__FUNCTION__.1776-0x3a8>:
1c002634:	1c0013bc 	pcaddu12i	$r28,157(0x9d)
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
1c002660:	1c0013cc 	pcaddu12i	$r12,158(0x9e)
1c002664:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002668:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c00266c:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002670:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002674:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002678:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c00267c:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002680:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002684:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c002688:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00268c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002690:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002694:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002698:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00269c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026a8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026ac:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026b0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026b4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026b8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026bc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026c0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026c4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026c8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026cc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026d0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026d4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026d8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026dc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026e0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026e4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026e8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026ec:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026f0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026f4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026f8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0026fc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002700:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002704:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002708:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00270c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002710:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002714:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002718:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00271c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002720:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002724:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002728:	1c001384 	pcaddu12i	$r4,156(0x9c)
1c00272c:	1c00131c 	pcaddu12i	$r28,152(0x98)
1c002730:	1c00134c 	pcaddu12i	$r12,154(0x9a)
1c002734:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002738:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00273c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002740:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002744:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002748:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00274c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002750:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002754:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002758:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00275c:	1c001368 	pcaddu12i	$r8,155(0x9b)
1c002760:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c002764:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002768:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00276c:	1c001308 	pcaddu12i	$r8,152(0x98)
1c002770:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002774:	1c001330 	pcaddu12i	$r16,153(0x99)
1c002778:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00277c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002780:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c002784:	1c001778 	pcaddu12i	$r24,187(0xbb)
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
1c0027b0:	1c001788 	pcaddu12i	$r8,188(0xbc)
1c0027b4:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027b8:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027bc:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027c0:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027c4:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027c8:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027cc:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027d0:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027d4:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c0027d8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027dc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027e8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027ec:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027f8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0027fc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002800:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002804:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002808:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00280c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002810:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002814:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002818:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00281c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002820:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002824:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002828:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00282c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002830:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002834:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002838:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00283c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002840:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002844:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002848:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00284c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002850:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002854:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002858:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00285c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002860:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002864:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002868:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00286c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002870:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002874:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002878:	1c001740 	pcaddu12i	$r0,186(0xba)
1c00287c:	1c0016d8 	pcaddu12i	$r24,182(0xb6)
1c002880:	1c001708 	pcaddu12i	$r8,184(0xb8)
1c002884:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002888:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00288c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002890:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002894:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002898:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00289c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028a0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028a4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028a8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028ac:	1c001724 	pcaddu12i	$r4,185(0xb9)
1c0028b0:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c0028b4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028b8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028bc:	1c0016c4 	pcaddu12i	$r4,182(0xb6)
1c0028c0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028c4:	1c0016ec 	pcaddu12i	$r12,183(0xb7)
1c0028c8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028cc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028d0:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c0028d4:	20524444 	ll.w	$r4,$r2,21060(0x5244)
1c0028d8:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c009238 <_sidata+0x64d0>
1c0028dc:	74206465 	xvsubwev.h.b	$xr5,$xr3,$xr25
1c0028e0:	6e69206f 	bgeu	$r3,$r15,-104160(0x26920) # 1bfe9200 <_start-0x16e00>
1c0028e4:	61697469 	blt	$r3,$r9,92532(0x16974) # 1c019258 <_sidata+0x164f0>
1c0028e8:	657a696c 	bge	$r11,$r12,96872(0x17a68) # 1c01a350 <_sidata+0x175e8>
1c0028ec:	00000a0d 	0x00000a0d
1c0028f0:	66204453 	bge	$r2,$r19,-122812(0x22044) # 1bfe4934 <_start-0x1b6cc>
1c0028f4:	656c6961 	bge	$r11,$r1,93288(0x16c68) # 1c01955c <_sidata+0x167f4>
1c0028f8:	6f742064 	bgeu	$r3,$r4,-35808(0x37420) # 1bff9d18 <_start-0x62e8>
1c0028fc:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c019764 <_sidata+0x169fc>
1c002900:	6c616974 	bgeu	$r11,$r20,24936(0x6168) # 1c008a68 <_sidata+0x5d00>
1c002904:	0d657a69 	xvshuf.b	$xr9,$xr19,$xr30,$xr10
1c002908:	0000000a 	0x0000000a
1c00290c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
1c002910:	49206d65 	bcnez	$fcc3,1384556(0x15206c) # 1c15497c <_sidata+0x151c14>
1c002914:	6974696e 	bltu	$r11,$r14,95336(0x17468) # 1c019d7c <_sidata+0x17014>
1c002918:	7a696c61 	0x7a696c61
1c00291c:	53206465 	b	26681444(0x1972064) # 1d974980 <_sidata+0x1971c18>
1c002920:	65636375 	bge	$r27,$r21,90976(0x16360) # 1c018c80 <_sidata+0x15f18>
1c002924:	75667373 	0x75667373
1c002928:	0d796c6c 	0x0d796c6c
1c00292c:	0000000a 	0x0000000a
1c002930:	3c200a0d 	0x3c200a0d
1c002934:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c019554 <_sidata+0x167ec>
1c002938:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00293c:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe49a0 <_start-0x1b660>
1c002940:	3a636e75 	0x3a636e75
1c002944:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c002948:	0a0d3e20 	0x0a0d3e20
1c00294c:	00000000 	0x00000000
1c002950:	2d2d2d0a 	0x2d2d2d0a
1c002954:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bff9ec0 <_start-0x6140>
1c002958:	746e4968 	0x746e4968
1c00295c:	79654b3a 	0x79654b3a
1c002960:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe8ac8 <_start-0x17538>
1c002964:	3a6c656e 	0x3a6c656e
1c002968:	78257830 	0x78257830
1c00296c:	0000000a 	0x0000000a
1c002970:	2e2e2e0a 	0x2e2e2e0a
1c002974:	2e2e2e2e 	0x2e2e2e2e
1c002978:	2e2e2e2e 	0x2e2e2e2e
1c00297c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396ba8 <_sidata+0x393e40>
1c002980:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd16fdc <_start-0x2e9024>
1c002984:	2e2e4c49 	0x2e2e4c49
1c002988:	2e2e2e2e 	0x2e2e2e2e
1c00298c:	2e2e2e2e 	0x2e2e2e2e
1c002990:	2e2e2e2e 	0x2e2e2e2e
1c002994:	00000d0a 	0x00000d0a
1c002998:	2e2e2e0a 	0x2e2e2e0a
1c00299c:	2e2e2e2e 	0x2e2e2e2e
1c0029a0:	2e2e2e2e 	0x2e2e2e2e
1c0029a4:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c386ad0 <_sidata+0x383d68>
1c0029a8:	2e2e2e43 	0x2e2e2e43
1c0029ac:	2e2e2e2e 	0x2e2e2e2e
1c0029b0:	2e2e2e2e 	0x2e2e2e2e
1c0029b4:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0029b8:	0000000d 	0x0000000d
1c0029bc:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019c28 <_sidata+0x16ec0>
1c0029c0:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019314 <_sidata+0x165ac>
1c0029c4:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff4a34 <_start-0xb5cc>
1c0029c8:	7261656c 	0x7261656c
1c0029cc:	746e6920 	0x746e6920
1c0029d0:	75727265 	0x75727265
1c0029d4:	2e2e7470 	0x2e2e7470
1c0029d8:	0000000a 	0x0000000a

1c0029dc <__FUNCTION__.1776>:
1c0029dc:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bff9e54 <_start-0x61ac>
1c0029e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009840 <_sidata+0x6ad8>
1c0029e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0029e8 <__FUNCTION__.1767>:
1c0029e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e60 <_sidata+0x170f8>
1c0029ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a50 <_sidata+0x16ce8>
1c0029f0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff6154 <_start-0x9eac>
1c0029f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b64 <_start-0x649c>
1c0029f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009858 <_sidata+0x6af0>
1c0029fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a00 <__FUNCTION__.1763>:
1c002a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e78 <_sidata+0x17110>
1c002a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a68 <_sidata+0x16d00>
1c002a08:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff606c <_start-0x9f94>
1c002a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b7c <_start-0x6484>
1c002a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009870 <_sidata+0x6b08>
1c002a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a18 <__FUNCTION__.1759>:
1c002a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019e90 <_sidata+0x17128>
1c002a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a80 <_sidata+0x16d18>
1c002a20:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff5f84 <_start-0xa07c>
1c002a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9b94 <_start-0x646c>
1c002a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009888 <_sidata+0x6b20>
1c002a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a30 <__FUNCTION__.1755>:
1c002a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ea8 <_sidata+0x17140>
1c002a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019a98 <_sidata+0x16d30>
1c002a38:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff5e9c <_start-0xa164>
1c002a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bac <_start-0x6454>
1c002a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098a0 <_sidata+0x6b38>
1c002a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a48 <__FUNCTION__.1751>:
1c002a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ec0 <_sidata+0x17158>
1c002a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ab0 <_sidata+0x16d48>
1c002a50:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff5db4 <_start-0xa24c>
1c002a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bc4 <_start-0x643c>
1c002a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098b8 <_sidata+0x6b50>
1c002a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a60 <__FUNCTION__.1747>:
1c002a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ed8 <_sidata+0x17170>
1c002a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ac8 <_sidata+0x16d60>
1c002a68:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff5ccc <_start-0xa334>
1c002a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bdc <_start-0x6424>
1c002a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098d0 <_sidata+0x6b68>
1c002a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a78 <__FUNCTION__.1743>:
1c002a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ef0 <_sidata+0x17188>
1c002a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ae0 <_sidata+0x16d78>
1c002a80:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff5be4 <_start-0xa41c>
1c002a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bf4 <_start-0x640c>
1c002a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098e8 <_sidata+0x6b80>
1c002a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a90 <__FUNCTION__.1739>:
1c002a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f08 <_sidata+0x171a0>
1c002a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019af8 <_sidata+0x16d90>
1c002a98:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5afc <_start-0xa504>
1c002a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c0c <_start-0x63f4>
1c002aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009900 <_sidata+0x6b98>
1c002aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002aa8 <__FUNCTION__.1735>:
1c002aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f20 <_sidata+0x171b8>
1c002aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b10 <_sidata+0x16da8>
1c002ab0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6210 <_start-0x9df0>
1c002ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c24 <_start-0x63dc>
1c002ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009918 <_sidata+0x6bb0>
1c002abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ac0 <__FUNCTION__.1731>:
1c002ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f38 <_sidata+0x171d0>
1c002ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b28 <_sidata+0x16dc0>
1c002ac8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff6128 <_start-0x9ed8>
1c002acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c3c <_start-0x63c4>
1c002ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009930 <_sidata+0x6bc8>
1c002ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ad8 <__FUNCTION__.1727>:
1c002ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f50 <_sidata+0x171e8>
1c002adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b40 <_sidata+0x16dd8>
1c002ae0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff6040 <_start-0x9fc0>
1c002ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c54 <_start-0x63ac>
1c002ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009948 <_sidata+0x6be0>
1c002aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002af0 <__FUNCTION__.1723>:
1c002af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f68 <_sidata+0x17200>
1c002af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b58 <_sidata+0x16df0>
1c002af8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff5f58 <_start-0xa0a8>
1c002afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c6c <_start-0x6394>
1c002b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009960 <_sidata+0x6bf8>
1c002b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b08 <__FUNCTION__.1719>:
1c002b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f80 <_sidata+0x17218>
1c002b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b70 <_sidata+0x16e08>
1c002b10:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff5e70 <_start-0xa190>
1c002b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c84 <_start-0x637c>
1c002b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009978 <_sidata+0x6c10>
1c002b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b20 <__FUNCTION__.1715>:
1c002b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f98 <_sidata+0x17230>
1c002b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b88 <_sidata+0x16e20>
1c002b28:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff5d88 <_start-0xa278>
1c002b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c9c <_start-0x6364>
1c002b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009990 <_sidata+0x6c28>
1c002b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b38 <__FUNCTION__.1711>:
1c002b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fb0 <_sidata+0x17248>
1c002b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ba0 <_sidata+0x16e38>
1c002b40:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff5ca0 <_start-0xa360>
1c002b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cb4 <_start-0x634c>
1c002b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099a8 <_sidata+0x6c40>
1c002b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b50 <__FUNCTION__.1707>:
1c002b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fc8 <_sidata+0x17260>
1c002b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bb8 <_sidata+0x16e50>
1c002b58:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff5bb8 <_start-0xa448>
1c002b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ccc <_start-0x6334>
1c002b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099c0 <_sidata+0x6c58>
1c002b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b68 <__FUNCTION__.1703>:
1c002b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fe0 <_sidata+0x17278>
1c002b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bd0 <_sidata+0x16e68>
1c002b70:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff62d0 <_start-0x9d30>
1c002b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ce4 <_start-0x631c>
1c002b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099d8 <_sidata+0x6c70>
1c002b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b80 <__FUNCTION__.1699>:
1c002b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ff8 <_sidata+0x17290>
1c002b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019be8 <_sidata+0x16e80>
1c002b88:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff61e8 <_start-0x9e18>
1c002b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cfc <_start-0x6304>
1c002b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099f0 <_sidata+0x6c88>
1c002b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b98 <__FUNCTION__.1695>:
1c002b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a010 <_sidata+0x172a8>
1c002b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c00 <_sidata+0x16e98>
1c002ba0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6100 <_start-0x9f00>
1c002ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d14 <_start-0x62ec>
1c002ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a08 <_sidata+0x6ca0>
1c002bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bb0 <__FUNCTION__.1691>:
1c002bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a028 <_sidata+0x172c0>
1c002bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c18 <_sidata+0x16eb0>
1c002bb8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff6018 <_start-0x9fe8>
1c002bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d2c <_start-0x62d4>
1c002bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a20 <_sidata+0x6cb8>
1c002bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bc8 <__FUNCTION__.1687>:
1c002bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a040 <_sidata+0x172d8>
1c002bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c30 <_sidata+0x16ec8>
1c002bd0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5f30 <_start-0xa0d0>
1c002bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d44 <_start-0x62bc>
1c002bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a38 <_sidata+0x6cd0>
1c002bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002be0 <__FUNCTION__.1683>:
1c002be0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a058 <_sidata+0x172f0>
1c002be4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c48 <_sidata+0x16ee0>
1c002be8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5e48 <_start-0xa1b8>
1c002bec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d5c <_start-0x62a4>
1c002bf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a50 <_sidata+0x6ce8>
1c002bf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bf8 <__FUNCTION__.1679>:
1c002bf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a070 <_sidata+0x17308>
1c002bfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c60 <_sidata+0x16ef8>
1c002c00:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5d60 <_start-0xa2a0>
1c002c04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d74 <_start-0x628c>
1c002c08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a68 <_sidata+0x6d00>
1c002c0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c10 <__FUNCTION__.1675>:
1c002c10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a088 <_sidata+0x17320>
1c002c14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c78 <_sidata+0x16f10>
1c002c18:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5c78 <_start-0xa388>
1c002c1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d8c <_start-0x6274>
1c002c20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a80 <_sidata+0x6d18>
1c002c24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c28 <__FUNCTION__.1671>:
1c002c28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0a0 <_sidata+0x17338>
1c002c2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c90 <_sidata+0x16f28>
1c002c30:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff6390 <_start-0x9c70>
1c002c34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9da4 <_start-0x625c>
1c002c38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a98 <_sidata+0x6d30>
1c002c3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c40 <__FUNCTION__.1667>:
1c002c40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0b8 <_sidata+0x17350>
1c002c44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ca8 <_sidata+0x16f40>
1c002c48:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff62a8 <_start-0x9d58>
1c002c4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dbc <_start-0x6244>
1c002c50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ab0 <_sidata+0x6d48>
1c002c54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c58 <__FUNCTION__.1663>:
1c002c58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0d0 <_sidata+0x17368>
1c002c5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cc0 <_sidata+0x16f58>
1c002c60:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff61c0 <_start-0x9e40>
1c002c64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dd4 <_start-0x622c>
1c002c68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ac8 <_sidata+0x6d60>
1c002c6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c70 <__FUNCTION__.1659>:
1c002c70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0e8 <_sidata+0x17380>
1c002c74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cd8 <_sidata+0x16f70>
1c002c78:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff60d8 <_start-0x9f28>
1c002c7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dec <_start-0x6214>
1c002c80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ae0 <_sidata+0x6d78>
1c002c84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c88 <__FUNCTION__.1655>:
1c002c88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a100 <_sidata+0x17398>
1c002c8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cf0 <_sidata+0x16f88>
1c002c90:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff5ff0 <_start-0xa010>
1c002c94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e04 <_start-0x61fc>
1c002c98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009af8 <_sidata+0x6d90>
1c002c9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ca0 <__FUNCTION__.1651>:
1c002ca0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a118 <_sidata+0x173b0>
1c002ca4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d08 <_sidata+0x16fa0>
1c002ca8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5f08 <_start-0xa0f8>
1c002cac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e1c <_start-0x61e4>
1c002cb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b10 <_sidata+0x6da8>
1c002cb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cb8 <__FUNCTION__.1647>:
1c002cb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a130 <_sidata+0x173c8>
1c002cbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d20 <_sidata+0x16fb8>
1c002cc0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5e20 <_start-0xa1e0>
1c002cc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e34 <_start-0x61cc>
1c002cc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b28 <_sidata+0x6dc0>
1c002ccc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cd0 <__FUNCTION__.1643>:
1c002cd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a148 <_sidata+0x173e0>
1c002cd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d38 <_sidata+0x16fd0>
1c002cd8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5d38 <_start-0xa2c8>
1c002cdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e4c <_start-0x61b4>
1c002ce0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b40 <_sidata+0x6dd8>
1c002ce4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ce8 <Ext_IrqHandle>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:61
1c002ce8:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
1c002cec:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
1c002cf0:	1c001c30 	pcaddu12i	$r16,225(0xe1)
1c002cf4:	1c001c6c 	pcaddu12i	$r12,227(0xe3)
1c002cf8:	1c001ca8 	pcaddu12i	$r8,229(0xe5)
1c002cfc:	1c001ce4 	pcaddu12i	$r4,231(0xe7)
1c002d00:	1c001d20 	pcaddu12i	$r0,233(0xe9)
1c002d04:	1c001d5c 	pcaddu12i	$r28,234(0xea)
1c002d08:	1c001d98 	pcaddu12i	$r24,236(0xec)
1c002d0c:	1c001dd4 	pcaddu12i	$r20,238(0xee)
1c002d10:	1c001e10 	pcaddu12i	$r16,240(0xf0)
1c002d14:	1c001e4c 	pcaddu12i	$r12,242(0xf2)
1c002d18:	1c001e88 	pcaddu12i	$r8,244(0xf4)
1c002d1c:	1c001ec4 	pcaddu12i	$r4,246(0xf6)
1c002d20:	1c001f00 	pcaddu12i	$r0,248(0xf8)
1c002d24:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
1c002d28:	1c001f78 	pcaddu12i	$r24,251(0xfb)
1c002d2c:	1c001fb4 	pcaddu12i	$r20,253(0xfd)
1c002d30:	1c001ff0 	pcaddu12i	$r16,255(0xff)
1c002d34:	1c00202c 	pcaddu12i	$r12,257(0x101)
1c002d38:	1c002068 	pcaddu12i	$r8,259(0x103)
1c002d3c:	1c0020a4 	pcaddu12i	$r4,261(0x105)
1c002d40:	1c0020e0 	pcaddu12i	$r0,263(0x107)
1c002d44:	1c00211c 	pcaddu12i	$r28,264(0x108)
1c002d48:	1c002158 	pcaddu12i	$r24,266(0x10a)
1c002d4c:	1c002194 	pcaddu12i	$r20,268(0x10c)
1c002d50:	1c0021d0 	pcaddu12i	$r16,270(0x10e)
1c002d54:	1c00220c 	pcaddu12i	$r12,272(0x110)
1c002d58:	1c002248 	pcaddu12i	$r8,274(0x112)
1c002d5c:	1c002284 	pcaddu12i	$r4,276(0x114)
1c002d60:	1c0022c0 	pcaddu12i	$r0,278(0x116)
1c002d64:	1c0022fc 	pcaddu12i	$r28,279(0x117)

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
    228c:	2b010100 	fld.s	$f0,$r8,64(0x40)
    2290:	02000002 	slti	$r2,$r0,0
    2294:	0001ef00 	asrtgt.d	$r24,$r27
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
    22f0:	6972642f 	bltu	$r1,$r15,94820(0x17264) # 19554 <_start-0x1bfe6aac>
    22f4:	00726576 	bstrins.w	$r22,$r11,0x12,0x19
    22f8:	755c3a64 	0x755c3a64
    22fc:	73726573 	0x73726573
    2300:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe8474 <_RAM_DATA+0x7ffe7474>
    2304:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 7f74 <_start-0x1bff808c>
    2308:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19868 <_start-0x1bfe6798>
    230c:	73746e65 	0x73746e65
    2310:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 9270 <_start-0x1bff6d90>
    2314:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff8f70 <_RAM_DATA+0x7fff7f70>
    2318:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18a84 <_start-0x1bfe757c>
    231c:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff8b7c <_RAM_DATA+0x7fff7b7c>
    2320:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff9290 <_RAM_DATA+0x7fff8290>
    2324:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19694 <_start-0x1bfe696c>
    2328:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    232c:	65747379 	bge	$r27,$r25,95344(0x17470) # 1979c <_start-0x1bfe6864>
    2330:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff548c <_RAM_DATA+0x7fff448c>
    2334:	5c323031 	bne	$r1,$r17,12848(0x3230) # 5564 <_start-0x1bffaa9c>
    2338:	5c637273 	bne	$r19,$r19,25456(0x6370) # 86a8 <_start-0x1bff7958>
    233c:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 7fb0 <_start-0x1bff8050>
    2340:	65646961 	bge	$r11,$r1,91240(0x16468) # 187a8 <_start-0x1bfe7858>
    2344:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 198a4 <_start-0x1bfe675c>
    2348:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff97ac <_RAM_DATA+0x7fff87ac>
    234c:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 7fb8 <_start-0x1bff8048>
    2350:	2d323361 	0x2d323361
    2354:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 92c0 <_start-0x1bff6d40>
    2358:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff92c4 <_RAM_DATA+0x7fff82c4>
    235c:	7261676e 	0x7261676e
    2360:	32336863 	0x32336863
    2364:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    2368:	2d62696c 	0x2d62696c
    236c:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 89d8 <_start-0x1bff7628>
    2370:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 86dc <_start-0x1bff7924>
    2374:	2f656475 	0x2f656475
    2378:	6863616d 	bltu	$r11,$r13,25440(0x6360) # 86d8 <_start-0x1bff7928>
    237c:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
    2380:	755c3a64 	0x755c3a64
    2384:	73726573 	0x73726573
    2388:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe84fc <_RAM_DATA+0x7ffe74fc>
    238c:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 7ffc <_start-0x1bff8004>
    2390:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 198f0 <_start-0x1bfe6710>
    2394:	73746e65 	0x73746e65
    2398:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 92f8 <_start-0x1bff6d08>
    239c:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff8ff8 <_RAM_DATA+0x7fff7ff8>
    23a0:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18b0c <_start-0x1bfe74f4>
    23a4:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff8c04 <_RAM_DATA+0x7fff7c04>
    23a8:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff9318 <_RAM_DATA+0x7fff8318>
    23ac:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1971c <_start-0x1bfe68e4>
    23b0:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    23b4:	65747379 	bge	$r27,$r25,95344(0x17470) # 19824 <_start-0x1bfe67dc>
    23b8:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff5514 <_RAM_DATA+0x7fff4514>
    23bc:	5c323031 	bne	$r1,$r17,12848(0x3230) # 55ec <_start-0x1bffaa14>
    23c0:	5c637273 	bne	$r19,$r19,25456(0x6370) # 8730 <_start-0x1bff78d0>
    23c4:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 8038 <_start-0x1bff7fc8>
    23c8:	65646961 	bge	$r11,$r1,91240(0x16468) # 18830 <_start-0x1bfe77d0>
    23cc:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 1992c <_start-0x1bfe66d4>
    23d0:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff9834 <_RAM_DATA+0x7fff8834>
    23d4:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 8040 <_start-0x1bff7fc0>
    23d8:	2d323361 	0x2d323361
    23dc:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 9348 <_start-0x1bff6cb8>
    23e0:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff934c <_RAM_DATA+0x7fff834c>
    23e4:	7261676e 	0x7261676e
    23e8:	32336863 	0x32336863
    23ec:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    23f0:	2d62696c 	0x2d62696c
    23f4:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 8a60 <_start-0x1bff75a0>
    23f8:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 8764 <_start-0x1bff789c>
    23fc:	2f656475 	0x2f656475
    2400:	00737973 	bstrins.w	$r19,$r11,0x13,0x1e
    2404:	552f3a44 	bl	-116314312(0x9112f38) # f911533c <_RAM_DATA+0x7911433c>
    2408:	73726573 	0x73726573
    240c:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe8580 <_RAM_DATA+0x7ffe7580>
    2410:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c5380 <_start-0x1be3ac80>
    2414:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19974 <_start-0x1bfe668c>
    2418:	73746e65 	0x73746e65
    241c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 935c <_start-0x1bff6ca4>
    2420:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff704c <_RAM_DATA+0x7fff604c>
    2424:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d8b90 <_start-0x1bc27470>
    2428:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff8c88 <_RAM_DATA+0x7fff7c88>
    242c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff939c <_RAM_DATA+0x7fff839c>
    2430:	69737365 	bltu	$r27,$r5,95088(0x17370) # 197a0 <_start-0x1bfe6860>
    2434:	535f676e 	b	-38051996(0xdbb5f64) # fdbb8398 <_RAM_DATA+0x7dbb7398>
    2438:	65747379 	bge	$r27,$r25,95344(0x17470) # 198a8 <_start-0x1bfe6758>
    243c:	43312f6d 	beqz	$r27,3617068(0x37312c) # 375568 <_start-0x1bc8aa98>
    2440:	2f323031 	0x2f323031
    2444:	2f637273 	0x2f637273
    2448:	692f7773 	bltu	$r27,$r19,77684(0x12f74) # 153bc <_start-0x1bfeac44>
    244c:	756c636e 	0x756c636e
    2450:	00006564 	rdtimeh.w	$r4,$r11
    2454:	632e6473 	blt	$r3,$r19,-53660(0x32e64) # ffff52b8 <_RAM_DATA+0x7fff42b8>
    2458:	00000100 	0x00000100
    245c:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe89c0 <_RAM_DATA+0x7ffe79c0>
    2460:	746c7561 	0x746c7561
    2464:	7079745f 	0x7079745f
    2468:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 52d8 <_start-0x1bffad28>
    246c:	00000200 	0x00000200
    2470:	6474735f 	bge	$r26,$r31,29808(0x7470) # 98e0 <_start-0x1bff6720>
    2474:	2e746e69 	0x2e746e69
    2478:	00030068 	0x00030068
    247c:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
    2480:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    2484:	00000004 	0x00000004
    2488:	05000105 	0x05000105
    248c:	0019a002 	sra.d	$r2,$r0,$r8
    2490:	0505161c 	0x0505161c
    2494:	09051313 	0x09051313
    2498:	0b051106 	0x0b051106
    249c:	820a054b 	0x820a054b
    24a0:	84060905 	0x84060905
    24a4:	01060d05 	0x01060d05
    24a8:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 172ab0 <_start-0x1be8d550>
    24ac:	01060c05 	0x01060c05
    24b0:	05bc1405 	0x05bc1405
    24b4:	0c054e01 	0x0c054e01
    24b8:	00080249 	bytepick.w	$r9,$r18,$r0,0x0
    24bc:	022c0101 	slti	$r1,$r8,-1280(0xb00)
    24c0:	00020000 	0x00020000
    24c4:	000001f0 	0x000001f0
    24c8:	0efb0101 	0x0efb0101
    24cc:	0101000d 	fadd.d	$f13,$f0,$f0
    24d0:	00000101 	0x00000101
    24d4:	00000100 	0x00000100
    24d8:	2f3a4401 	0x2f3a4401
    24dc:	72657355 	0x72657355
    24e0:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19c0c <_start-0x1bfe63f4>
    24e4:	2f73676e 	0x2f73676e
    24e8:	75636f44 	0x75636f44
    24ec:	746e656d 	0x746e656d
    24f0:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff681c <_RAM_DATA+0x7fff581c>
    24f4:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    24f8:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9364 <_RAM_DATA+0x7fff8364>
    24fc:	68637241 	bltu	$r18,$r1,25456(0x6370) # 886c <_start-0x1bff7794>
    2500:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9750 <_RAM_DATA+0x7fff8750>
    2504:	73736563 	0x73736563
    2508:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8c74 <_RAM_DATA+0x7fff7c74>
    250c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2510:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    2514:	32303143 	0x32303143
    2518:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9788 <_RAM_DATA+0x7fff8788>
    251c:	2f77732f 	0x2f77732f
    2520:	76697264 	0x76697264
    2524:	64007265 	bge	$r19,$r5,112(0x70) # 2594 <_start-0x1bffda6c>
    2528:	73755c3a 	0x73755c3a
    252c:	5c737265 	bne	$r19,$r5,29552(0x7370) # 989c <_start-0x1bff6764>
    2530:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff9390 <_RAM_DATA+0x7fff8390>
    2534:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff8990 <_RAM_DATA+0x7fff7990>
    2538:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 192ac <_start-0x1bfe6d54>
    253c:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 98b0 <_start-0x1bff6750>
    2540:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 189ac <_start-0x1bfe7654>
    2544:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff94b0 <_RAM_DATA+0x7fff84b0>
    2548:	7261676e 	0x7261676e
    254c:	705f6863 	0x705f6863
    2550:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 188bc <_start-0x1bfe7744>
    2554:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8ec4 <_RAM_DATA+0x7ffe7ec4>
    2558:	79735f67 	0x79735f67
    255c:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18ad0 <_start-0x1bfe7530>
    2560:	3163315c 	0x3163315c
    2564:	735c3230 	0x735c3230
    2568:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    256c:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 191c8 <_start-0x1bfe6e38>
    2570:	5c656469 	bne	$r3,$r9,25956(0x6564) # 8ad4 <_start-0x1bff752c>
    2574:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 8ee8 <_start-0x1bff7118>
    2578:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff94ec <_RAM_DATA+0x7fff84ec>
    257c:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 191d8 <_start-0x1bfe6e28>
    2580:	742d3233 	0x742d3233
    2584:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 91f0 <_start-0x1bff6e10>
    2588:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe94f4 <_RAM_DATA+0x7ffe84f4>
    258c:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff97ec <_RAM_DATA+0x7fff87ec>
    2590:	2d323368 	0x2d323368
    2594:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 9cf8 <_start-0x1bff6308>
    2598:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 152f8 <_start-0x1bfead08>
    259c:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 18200 <_start-0x1bfe7e00>
    25a0:	756c636e 	0x756c636e
    25a4:	6d2f6564 	bgeu	$r11,$r4,77668(0x12f64) # 15508 <_start-0x1bfeaaf8>
    25a8:	69686361 	bltu	$r27,$r1,92256(0x16860) # 18e08 <_start-0x1bfe71f8>
    25ac:	6400656e 	bge	$r11,$r14,100(0x64) # 2610 <_start-0x1bffd9f0>
    25b0:	73755c3a 	0x73755c3a
    25b4:	5c737265 	bne	$r19,$r5,29552(0x7370) # 9924 <_start-0x1bff66dc>
    25b8:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff9418 <_RAM_DATA+0x7fff8418>
    25bc:	6f645c73 	bgeu	$r3,$r19,-39844(0x3645c) # ffff8a18 <_RAM_DATA+0x7fff7a18>
    25c0:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 19334 <_start-0x1bfe6ccc>
    25c4:	5c73746e 	bne	$r3,$r14,29556(0x7374) # 9938 <_start-0x1bff66c8>
    25c8:	65646f63 	bge	$r27,$r3,91244(0x1646c) # 18a34 <_start-0x1bfe75cc>
    25cc:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff9538 <_RAM_DATA+0x7fff8538>
    25d0:	7261676e 	0x7261676e
    25d4:	705f6863 	0x705f6863
    25d8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 18944 <_start-0x1bfe76bc>
    25dc:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8f4c <_RAM_DATA+0x7ffe7f4c>
    25e0:	79735f67 	0x79735f67
    25e4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18b58 <_start-0x1bfe74a8>
    25e8:	3163315c 	0x3163315c
    25ec:	735c3230 	0x735c3230
    25f0:	735c6372 	vsrarni.b.h	$vr18,$vr27,0x8
    25f4:	616c5c77 	blt	$r3,$r23,93276(0x16c5c) # 19250 <_start-0x1bfe6db0>
    25f8:	5c656469 	bne	$r3,$r9,25956(0x6564) # 8b5c <_start-0x1bff74a4>
    25fc:	6c697562 	bgeu	$r11,$r2,26996(0x6974) # 8f70 <_start-0x1bff7090>
    2600:	6f6f7464 	bgeu	$r3,$r4,-37004(0x36f74) # ffff9574 <_RAM_DATA+0x7fff8574>
    2604:	616c5c6c 	blt	$r3,$r12,93276(0x16c5c) # 19260 <_start-0x1bfe6da0>
    2608:	742d3233 	0x742d3233
    260c:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 9278 <_start-0x1bff6d88>
    2610:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe957c <_RAM_DATA+0x7ffe857c>
    2614:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff9874 <_RAM_DATA+0x7fff8874>
    2618:	2d323368 	0x2d323368
    261c:	6c77656e 	bgeu	$r11,$r14,30564(0x7764) # 9d80 <_start-0x1bff6280>
    2620:	652d6269 	bge	$r19,$r9,77152(0x12d60) # 15380 <_start-0x1bfeac80>
    2624:	695c666c 	bltu	$r19,$r12,89188(0x15c64) # 18288 <_start-0x1bfe7d78>
    2628:	756c636e 	0x756c636e
    262c:	732f6564 	0x732f6564
    2630:	44007379 	bnez	$r27,-1834896(0x640070) # ffe426a0 <_RAM_DATA+0x7fe416a0>
    2634:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    2638:	2f737265 	0x2f737265
    263c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff949c <_RAM_DATA+0x7fff849c>
    2640:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff6a6c <_RAM_DATA+0x7fff5a6c>
    2644:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 193b8 <_start-0x1bfe6c48>
    2648:	2f73746e 	0x2f73746e
    264c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 18ab8 <_start-0x1bfe7548>
    2650:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff959c <_RAM_DATA+0x7fff859c>
    2654:	7241676e 	0x7241676e
    2658:	505f6863 	b	25976680(0x18c5f68) # 18c85c0 <_start-0x1a737a40>
    265c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 189c8 <_start-0x1bfe7638>
    2660:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe8fd0 <_RAM_DATA+0x7ffe7fd0>
    2664:	79535f67 	0x79535f67
    2668:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 18bdc <_start-0x1bfe7424>
    266c:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    2670:	732f3230 	0x732f3230
    2674:	732f6372 	0x732f6372
    2678:	6e692f77 	bgeu	$r27,$r23,-104148(0x2692c) # fffe8fa4 <_RAM_DATA+0x7ffe7fa4>
    267c:	64756c63 	bge	$r3,$r3,30060(0x756c) # 9be8 <_start-0x1bff6418>
    2680:	64000065 	bge	$r3,$r5,0 # 2680 <_start-0x1bffd980>
    2684:	632e7264 	blt	$r19,$r4,-53648(0x32e70) # ffff54f4 <_RAM_DATA+0x7fff44f4>
    2688:	00000100 	0x00000100
    268c:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe8bf0 <_RAM_DATA+0x7ffe7bf0>
    2690:	746c7561 	0x746c7561
    2694:	7079745f 	0x7079745f
    2698:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 5508 <_start-0x1bffaaf8>
    269c:	00000200 	0x00000200
    26a0:	6474735f 	bge	$r26,$r31,29808(0x7470) # 9b10 <_start-0x1bff64f0>
    26a4:	2e746e69 	0x2e746e69
    26a8:	00030068 	0x00030068
    26ac:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
    26b0:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    26b4:	00000004 	0x00000004
    26b8:	05000105 	0x05000105
    26bc:	0019d402 	sra.d	$r2,$r0,$r21
    26c0:	0505161c 	0x0505161c
    26c4:	09051313 	0x09051313
    26c8:	0b051106 	0x0b051106
    26cc:	820a054b 	0x820a054b
    26d0:	84060905 	0x84060905
    26d4:	01060d05 	0x01060d05
    26d8:	4b060905 	bcnez	$fcc0,1508872(0x170608) # 172ce0 <_start-0x1be8d320>
    26dc:	01060c05 	0x01060c05
    26e0:	05bc1405 	0x05bc1405
    26e4:	0c054e01 	0x0c054e01
    26e8:	00080249 	bytepick.w	$r9,$r18,$r0,0x0
    26ec:	0cb90101 	0x0cb90101
    26f0:	00020000 	0x00020000
    26f4:	00000302 	0x00000302
    26f8:	0efb0101 	0x0efb0101
    26fc:	0101000d 	fadd.d	$f13,$f0,$f0
    2700:	00000101 	0x00000101
    2704:	00000100 	0x00000100
    2708:	2f3a4401 	0x2f3a4401
    270c:	72657355 	0x72657355
    2710:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19e3c <_start-0x1bfe61c4>
    2714:	2f73676e 	0x2f73676e
    2718:	75636f44 	0x75636f44
    271c:	746e656d 	0x746e656d
    2720:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6a4c <_RAM_DATA+0x7fff5a4c>
    2724:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    2728:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9594 <_RAM_DATA+0x7fff8594>
    272c:	68637241 	bltu	$r18,$r1,25456(0x6370) # 8a9c <_start-0x1bff7564>
    2730:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9980 <_RAM_DATA+0x7fff8980>
    2734:	73736563 	0x73736563
    2738:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8ea4 <_RAM_DATA+0x7fff7ea4>
    273c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2740:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    2744:	32303143 	0x32303143
    2748:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff99b8 <_RAM_DATA+0x7fff89b8>
    274c:	2f77732f 	0x2f77732f
    2750:	72657375 	0x72657375
    2754:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 61b8 <_start-0x1bff9e48>
    2758:	72657375 	0x72657375
    275c:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19eb8 <_start-0x1bfe6148>
    2760:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 9ac4 <_start-0x1bff653c>
    2764:	75636f64 	0x75636f64
    2768:	746e656d 	0x746e656d
    276c:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff8ac8 <_RAM_DATA+0x7fff7ac8>
    2770:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 83d4 <_start-0x1bff7c2c>
    2774:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff95e0 <_RAM_DATA+0x7fff85e0>
    2778:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8ae8 <_start-0x1bff7518>
    277c:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff99ec <_RAM_DATA+0x7fff89ec>
    2780:	73736563 	0x73736563
    2784:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8ef0 <_RAM_DATA+0x7fff7ef0>
    2788:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    278c:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    2790:	32303163 	0x32303163
    2794:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff9a04 <_RAM_DATA+0x7fff8a04>
    2798:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9f08 <_start-0x1bff60f8>
    279c:	6469616c 	bge	$r11,$r12,26976(0x6960) # 90fc <_start-0x1bff6f04>
    27a0:	75625c65 	0x75625c65
    27a4:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    27a8:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 9414 <_start-0x1bff6bec>
    27ac:	3233616c 	0x3233616c
    27b0:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff9724 <_RAM_DATA+0x7fff8724>
    27b4:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff9410 <_RAM_DATA+0x7fff8410>
    27b8:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18f24 <_start-0x1bfe70dc>
    27bc:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    27c0:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 195ec <_start-0x1bfe6a14>
    27c4:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe9130 <_RAM_DATA+0x7ffe8130>
    27c8:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe942c <_RAM_DATA+0x7ffe842c>
    27cc:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff9634 <_RAM_DATA+0x7fff8634>
    27d0:	6564756c 	bge	$r11,$r12,91252(0x16474) # 18c44 <_start-0x1bfe73bc>
    27d4:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff8940 <_RAM_DATA+0x7fff7940>
    27d8:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 19640 <_start-0x1bfe69c0>
    27dc:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 6240 <_start-0x1bff9dc0>
    27e0:	72657375 	0x72657375
    27e4:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 19f40 <_start-0x1bfe60c0>
    27e8:	5c73676e 	bne	$r27,$r14,29540(0x7364) # 9b4c <_start-0x1bff64b4>
    27ec:	75636f64 	0x75636f64
    27f0:	746e656d 	0x746e656d
    27f4:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff8b50 <_RAM_DATA+0x7fff7b50>
    27f8:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 845c <_start-0x1bff7ba4>
    27fc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff9668 <_RAM_DATA+0x7fff8668>
    2800:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8b70 <_start-0x1bff7490>
    2804:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffff9a74 <_RAM_DATA+0x7fff8a74>
    2808:	73736563 	0x73736563
    280c:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8f78 <_RAM_DATA+0x7fff7f78>
    2810:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    2814:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    2818:	32303163 	0x32303163
    281c:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffff9a8c <_RAM_DATA+0x7fff8a8c>
    2820:	5c77735c 	bne	$r26,$r28,30576(0x7770) # 9f90 <_start-0x1bff6070>
    2824:	6469616c 	bge	$r11,$r12,26976(0x6960) # 9184 <_start-0x1bff6e7c>
    2828:	75625c65 	0x75625c65
    282c:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    2830:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # 949c <_start-0x1bff6b64>
    2834:	3233616c 	0x3233616c
    2838:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffff97ac <_RAM_DATA+0x7fff87ac>
    283c:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffff9498 <_RAM_DATA+0x7fff8498>
    2840:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 18fac <_start-0x1bfe7054>
    2844:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    2848:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 19674 <_start-0x1bfe698c>
    284c:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe91b8 <_RAM_DATA+0x7ffe81b8>
    2850:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffe94b4 <_RAM_DATA+0x7ffe84b4>
    2854:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffff96bc <_RAM_DATA+0x7fff86bc>
    2858:	6564756c 	bge	$r11,$r12,91252(0x16474) # 18ccc <_start-0x1bfe7334>
    285c:	7379732f 	0x7379732f
    2860:	2f3a4400 	0x2f3a4400
    2864:	72657355 	0x72657355
    2868:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 19f94 <_start-0x1bfe606c>
    286c:	2f73676e 	0x2f73676e
    2870:	75636f44 	0x75636f44
    2874:	746e656d 	0x746e656d
    2878:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff6ba4 <_RAM_DATA+0x7fff5ba4>
    287c:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    2880:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff96ec <_RAM_DATA+0x7fff86ec>
    2884:	68637241 	bltu	$r18,$r1,25456(0x6370) # 8bf4 <_start-0x1bff740c>
    2888:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff9ad8 <_RAM_DATA+0x7fff8ad8>
    288c:	73736563 	0x73736563
    2890:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff8ffc <_RAM_DATA+0x7fff7ffc>
    2894:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    2898:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    289c:	32303143 	0x32303143
    28a0:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff9b10 <_RAM_DATA+0x7fff8b10>
    28a4:	2f77732f 	0x2f77732f
    28a8:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 8c14 <_start-0x1bff73ec>
    28ac:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    28b0:	552f3a44 	bl	-116314312(0x9112f38) # f91157e8 <_RAM_DATA+0x791147e8>
    28b4:	73726573 	0x73726573
    28b8:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe8a2c <_RAM_DATA+0x7ffe7a2c>
    28bc:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c582c <_start-0x1be3a7d4>
    28c0:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19e20 <_start-0x1bfe61e0>
    28c4:	73746e65 	0x73746e65
    28c8:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 9808 <_start-0x1bff67f8>
    28cc:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff74f8 <_RAM_DATA+0x7fff64f8>
    28d0:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d903c <_start-0x1bc26fc4>
    28d4:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9134 <_RAM_DATA+0x7fff8134>
    28d8:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff9848 <_RAM_DATA+0x7fff8848>
    28dc:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19c4c <_start-0x1bfe63b4>
    28e0:	535f676e 	b	-38051996(0xdbb5f64) # fdbb8844 <_RAM_DATA+0x7dbb7844>
    28e4:	65747379 	bge	$r27,$r25,95344(0x17470) # 19d54 <_start-0x1bfe62ac>
    28e8:	43312f6d 	beqz	$r27,3617068(0x37312c) # 375a14 <_start-0x1bc8a5ec>
    28ec:	2f323031 	0x2f323031
    28f0:	2f637273 	0x2f637273
    28f4:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
    28f8:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 19558 <_start-0x1bfe6aa8>
    28fc:	3a440063 	0x3a440063
    2900:	6573552f 	bge	$r9,$r15,95060(0x17354) # 19c54 <_start-0x1bfe63ac>
    2904:	772f7372 	0x772f7372
    2908:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    290c:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff9850 <_RAM_DATA+0x7fff8850>
    2910:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8e7c <_RAM_DATA+0x7ffe7e7c>
    2914:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd35884 <_RAM_DATA+0x7fd34884>
    2918:	2f65646f 	0x2f65646f
    291c:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe9888 <_RAM_DATA+0x7ffe8888>
    2920:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff9b60 <_RAM_DATA+0x7fff8b60>
    2924:	72505f68 	0x72505f68
    2928:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    292c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9794 <_RAM_DATA+0x7fff8794>
    2930:	7379535f 	0x7379535f
    2934:	2f6d6574 	0x2f6d6574
    2938:	30314331 	0x30314331
    293c:	72732f32 	0x72732f32
    2940:	77732f63 	0x77732f63
    2944:	6972642f 	bltu	$r1,$r15,94820(0x17264) # 19ba8 <_start-0x1bfe6458>
    2948:	00726576 	bstrins.w	$r22,$r11,0x12,0x19
    294c:	69616d00 	bltu	$r8,$r0,90476(0x1616c) # 18ab8 <_start-0x1bfe7548>
    2950:	00632e6e 	bstrins.w	$r14,$r19,0x3,0xb
    2954:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff2954 <_RAM_DATA+0x7fff1954>
    2958:	61666564 	blt	$r11,$r4,91748(0x16664) # 18fbc <_start-0x1bfe7044>
    295c:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffff9dc8 <_RAM_DATA+0x7fff8dc8>
    2960:	65707974 	bge	$r11,$r20,94328(0x17078) # 199d8 <_start-0x1bfe6628>
    2964:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    2968:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff2968 <_RAM_DATA+0x7fff1968>
    296c:	69647473 	bltu	$r3,$r19,91252(0x16474) # 18de0 <_start-0x1bfe7220>
    2970:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 57e4 <_start-0x1bffa81c>
    2974:	00000300 	0x00000300
    2978:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    297c:	0400682e 	csrwr	$r14,0x1a
    2980:	63310000 	blt	$r0,$r0,-52992(0x33100) # ffff5a80 <_RAM_DATA+0x7fff4a80>
    2984:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff5bb4 <_RAM_DATA+0x7fff4bb4>
    2988:	65746e49 	bge	$r18,$r9,95340(0x1746c) # 19df4 <_start-0x1bfe620c>
    298c:	70757272 	vmax.wu	$vr18,$vr19,$vr28
    2990:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    2994:	73000001 	0x73000001
    2998:	755f636f 	0x755f636f
    299c:	2e747261 	0x2e747261
    29a0:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    29a4:	31736c00 	0x31736c00
    29a8:	6f635f78 	bgeu	$r27,$r24,-40100(0x3635c) # ffff8d04 <_RAM_DATA+0x7fff7d04>
    29ac:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffe9918 <_RAM_DATA+0x7ffe8918>
    29b0:	0500682e 	0x0500682e
    29b4:	64640000 	bge	$r0,$r0,25600(0x6400) # 8db4 <_start-0x1bff724c>
    29b8:	00682e72 	bstrins.w	$r18,$r19,0x8,0xb
    29bc:	73000006 	0x73000006
    29c0:	00682e64 	bstrins.w	$r4,$r19,0x8,0xb
    29c4:	73000006 	0x73000006
    29c8:	705f636f 	0x705f636f
    29cc:	746e6972 	0x746e6972
    29d0:	00682e66 	bstrins.w	$r6,$r19,0x8,0xb
    29d4:	6c000005 	bgeu	$r0,$r5,0 # 29d4 <_start-0x1bffd62c>
    29d8:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffffa208 <_RAM_DATA+0x7fff9208>
    29dc:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe934c <_RAM_DATA+0x7ffe834c>
    29e0:	682e6674 	bltu	$r19,$r20,11876(0x2e64) # 5844 <_start-0x1bffa7bc>
    29e4:	00000500 	0x00000500
    29e8:	7831736c 	0x7831736c
    29ec:	7274735f 	0x7274735f
    29f0:	2e676e69 	0x2e676e69
    29f4:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    29f8:	01050000 	fmul.d	$f0,$f0,$f0
    29fc:	00020500 	0x00020500
    2a00:	03000000 	lu52i.d	$r0,$r0,0
    2a04:	130100d5 	addu16i.d	$r21,$r6,-16320(0xc040)
    2a08:	04020106 	csrxchg	$r6,$r8,0x80
    2a0c:	05010100 	0x05010100
    2a10:	02050001 	slti	$r1,$r0,320(0x140)
    2a14:	00000000 	0x00000000
    2a18:	0100d903 	fadd.s	$f3,$f8,$f22
    2a1c:	02050106 	slti	$r6,$r8,320(0x140)
    2a20:	1313f306 	addu16i.d	$r6,$r24,-15108(0xc4fc)
    2a24:	1d030405 	pcaddu12i	$r5,-518112(0x81820)
    2a28:	068206f2 	0x068206f2
    2a2c:	1402054b 	lu12i.w	$r11,4138(0x102a)
    2a30:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    2a34:	03060505 	lu52i.d	$r5,$r8,385(0x181)
    2a38:	06740863 	0x06740863
    2a3c:	054b0682 	0x054b0682
    2a40:	0501060a 	0x0501060a
    2a44:	0402000d 	csrrd	$r13,0x80
    2a48:	05054a01 	0x05054a01
    2a4c:	01040200 	0x01040200
    2a50:	0605ac08 	cacop	0x8,$r0,363(0x16b)
    2a54:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2a58:	02004c06 	slti	$r6,$r0,19(0x13)
    2a5c:	f2060304 	0xf2060304
    2a60:	02003105 	slti	$r5,$r8,12(0xc)
    2a64:	3a080304 	0x3a080304
    2a68:	8a060505 	0x8a060505
    2a6c:	01060705 	0x01060705
    2a70:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 173074 <_start-0x1be8cf8c>
    2a74:	01060a05 	0x01060a05
    2a78:	02000e05 	slti	$r5,$r16,3(0x3)
    2a7c:	054a0104 	0x054a0104
    2a80:	04020005 	csrrd	$r5,0x80
    2a84:	05ac0801 	0x05ac0801
    2a88:	054c0606 	0x054c0606
    2a8c:	05010609 	0x05010609
    2a90:	05740808 	0x05740808
    2a94:	04020032 	csrwr	$r18,0x80
    2a98:	02004802 	slti	$r2,$r0,18(0x12)
    2a9c:	054a0204 	0x054a0204
    2aa0:	024e0607 	sltui	$r7,$r16,897(0x381)
    2aa4:	05051324 	0x05051324
    2aa8:	06080515 	cacop	0x15,$r8,513(0x201)
    2aac:	0705ba01 	0x0705ba01
    2ab0:	060605f2 	cacop	0x12,$r15,385(0x181)
    2ab4:	0010024c 	add.w	$r12,$r18,$r0
    2ab8:	01050101 	fmul.d	$f1,$f8,$f0
    2abc:	00020500 	0x00020500
    2ac0:	03000000 	lu52i.d	$r0,$r0,0
    2ac4:	05010180 	0x05010180
    2ac8:	13e50802 	addu16i.d	$r2,$r0,-1726(0xf942)
    2acc:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2ad0:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2ad4:	06070513 	cacop	0x13,$r8,449(0x1c1)
    2ad8:	4a020501 	bcnez	$fcc0,393732(0x60204) # 62cdc <_start-0x1bf9d324>
    2adc:	02000405 	slti	$r5,$r0,1(0x1)
    2ae0:	4e060304 	jirl	$r4,$r24,-129536(0x20600)
    2ae4:	02001605 	slti	$r5,$r16,5(0x5)
    2ae8:	01060304 	0x01060304
    2aec:	02001305 	slti	$r5,$r24,4(0x4)
    2af0:	72080304 	0x72080304
    2af4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2af8:	0003054a 	0x0003054a
    2afc:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2c00 <_start-0x1bf5d400>
    2b00:	02001005 	slti	$r5,$r0,4(0x4)
    2b04:	00800204 	bstrins.d	$r4,$r16,0x0,0x0
    2b08:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2d0c <_start-0x1bf5d2f4>
    2b0c:	02000205 	slti	$r5,$r16,0
    2b10:	054a0104 	0x054a0104
    2b14:	06058408 	cacop	0x8,$r0,353(0x161)
    2b18:	4908057e 	bcnez	$fcc3,-456700(0x790804) # fff9331c <_RAM_DATA+0x7ff9231c>
    2b1c:	e8030705 	0xe8030705
    2b20:	09058200 	0x09058200
    2b24:	04054a4b 	csrxchg	$r11,$r18,0x152
    2b28:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b2c:	7fa70306 	0x7fa70306
    2b30:	0011054a 	sub.w	$r10,$r10,$r1
    2b34:	06030402 	cacop	0x2,$r0,193(0xc1)
    2b38:	00130501 	maskeqz	$r1,$r8,$r1
    2b3c:	b8030402 	0xb8030402
    2b40:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b44:	0003054a 	0x0003054a
    2b48:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2c4c <_start-0x1bf5d3b4>
    2b4c:	13bb8606 	addu16i.d	$r6,$r16,-4383(0xeee1)
    2b50:	01060605 	0x01060605
    2b54:	4a4a4a82 	0x4a4a4a82
    2b58:	02000705 	slti	$r5,$r24,1(0x1)
    2b5c:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2b60:	25054a0a 	stptr.w	$r10,$r16,1352(0x548)
    2b64:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b68:	27050106 	stptr.d	$r6,$r8,1280(0x500)
    2b6c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2b70:	0022054a 	div.d	$r10,$r10,$r1
    2b74:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2e78 <_start-0x1bf5d188>
    2b78:	02001705 	slti	$r5,$r24,5(0x5)
    2b7c:	05ba0304 	0x05ba0304
    2b80:	04020016 	csrrd	$r22,0x80
    2b84:	02008003 	slti	$r3,$r0,32(0x20)
    2b88:	054a0304 	0x054a0304
    2b8c:	04020006 	csrrd	$r6,0x80
    2b90:	4e064a01 	jirl	$r1,$r16,-129464(0x20648)
    2b94:	01061205 	0x01061205
    2b98:	054a1605 	0x054a1605
    2b9c:	05bb0606 	0x05bb0606
    2ba0:	4a010608 	0x4a010608
    2ba4:	4b060605 	0x4b060605
    2ba8:	01060b05 	0x01060b05
    2bac:	054a0605 	0x054a0605
    2bb0:	04020007 	csrrd	$r7,0x80
    2bb4:	004c0603 	0x004c0603
    2bb8:	06030402 	cacop	0x2,$r0,193(0xc1)
    2bbc:	00160582 	orn	$r2,$r12,$r1
    2bc0:	b8030402 	0xb8030402
    2bc4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2bc8:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2bcc:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2cd0 <_start-0x1bf5d330>
    2bd0:	4a4e0b05 	0x4a4e0b05
    2bd4:	02000705 	slti	$r5,$r24,1(0x1)
    2bd8:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2bdc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2be0:	04020083 	csrxchg	$r3,$r4,0x80
    2be4:	18058303 	pcaddi	$r3,11288(0x2c18)
    2be8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2bec:	02007e06 	slti	$r6,$r16,31(0x1f)
    2bf0:	054a0304 	0x054a0304
    2bf4:	04020013 	csrrd	$r19,0x80
    2bf8:	06054a01 	cacop	0x1,$r16,338(0x152)
    2bfc:	01040200 	0x01040200
    2c00:	500b054a 	b	86510340(0x5280b04) # 5283704 <_start-0x16d7c8fc>
    2c04:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2c08:	06030402 	cacop	0x2,$r0,193(0xc1)
    2c0c:	001e054c 	mulh.d	$r12,$r10,$r1
    2c10:	06030402 	cacop	0x2,$r0,193(0xc1)
    2c14:	04020080 	csrxchg	$r0,$r4,0x80
    2c18:	18054a03 	pcaddi	$r3,10832(0x2a50)
    2c1c:	01040200 	0x01040200
    2c20:	0402004a 	csrxchg	$r10,$r2,0x80
    2c24:	02004a01 	slti	$r1,$r16,18(0x12)
    2c28:	054a0104 	0x054a0104
    2c2c:	04020006 	csrrd	$r6,0x80
    2c30:	0b054a01 	0x0b054a01
    2c34:	0006054e 	alsl.wu	$r14,$r10,$r1,0x1
    2c38:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2d3c <_start-0x1bf5d2c4>
    2c3c:	02000705 	slti	$r5,$r24,1(0x1)
    2c40:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2c44:	02001505 	slti	$r5,$r8,5(0x5)
    2c48:	80060304 	0x80060304
    2c4c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c50:	0402004a 	csrxchg	$r10,$r2,0x80
    2c54:	06054a03 	cacop	0x3,$r16,338(0x152)
    2c58:	12055106 	addu16i.d	$r6,$r8,-32428(0x8154)
    2c5c:	16050106 	lu32i.d	$r6,10248(0x2808)
    2c60:	06060582 	cacop	0x2,$r12,385(0x181)
    2c64:	061205bb 	cacop	0x1b,$r13,1153(0x481)
    2c68:	06030549 	cacop	0x9,$r10,193(0xc1)
    2c6c:	054a5e03 	0x054a5e03
    2c70:	08051404 	0x08051404
    2c74:	06050106 	cacop	0x6,$r8,320(0x140)
    2c78:	0604054a 	cacop	0xa,$r10,257(0x101)
    2c7c:	060f054b 	cacop	0xb,$r10,961(0x3c1)
    2c80:	82060501 	0x82060501
    2c84:	84060505 	0x84060505
    2c88:	01060705 	0x01060705
    2c8c:	054c0b05 	0x054c0b05
    2c90:	1f030609 	pcaddu18i	$r9,-518096(0x81830)
    2c94:	060b0582 	cacop	0x2,$r12,705(0x2c1)
    2c98:	06090501 	cacop	0x1,$r8,577(0x241)
    2c9c:	05822703 	0x05822703
    2ca0:	0501060b 	0x0501060b
    2ca4:	04020015 	csrrd	$r21,0x80
    2ca8:	09058201 	0x09058201
    2cac:	82120306 	0x82120306
    2cb0:	01060b05 	0x01060b05
    2cb4:	84060505 	0x84060505
    2cb8:	01060905 	0x01060905
    2cbc:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 1732c0 <_start-0x1be8cd40>
    2cc0:	01060705 	0x01060705
    2cc4:	84060605 	0x84060605
    2cc8:	01060a05 	0x01060a05
    2ccc:	4b060605 	0x4b060605
    2cd0:	af080a05 	0xaf080a05
    2cd4:	01060c05 	0x01060c05
    2cd8:	4a500d05 	bcnez	$fcc0,1462284(0x16500c) # 167ce4 <_start-0x1be9831c>
    2cdc:	03060505 	lu52i.d	$r5,$r8,385(0x181)
    2ce0:	054a7fba 	0x054a7fba
    2ce4:	05010607 	0x05010607
    2ce8:	04020017 	csrrd	$r23,0x80
    2cec:	11054a01 	addu16i.d	$r1,$r16,16722(0x4152)
    2cf0:	01040200 	0x01040200
    2cf4:	06060582 	cacop	0x2,$r12,385(0x181)
    2cf8:	054a1c03 	0x054a1c03
    2cfc:	05010608 	0x05010608
    2d00:	04020013 	csrrd	$r19,0x80
    2d04:	07054a01 	0x07054a01
    2d08:	11054c06 	addu16i.d	$r6,$r0,16723(0x4153)
    2d0c:	17050106 	lu32i.d	$r6,-514040(0x82808)
    2d10:	07054a4a 	0x07054a4a
    2d14:	8383bb06 	0x8383bb06
    2d18:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d1c:	05ba6303 	0x05ba6303
    2d20:	04020016 	csrrd	$r22,0x80
    2d24:	3a080603 	0x3a080603
    2d28:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d2c:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2d30:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2e34 <_start-0x1bf5d1cc>
    2d34:	4a4e0b05 	0x4a4e0b05
    2d38:	00070546 	alsl.wu	$r6,$r10,$r1,0x3
    2d3c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d40:	04020088 	csrxchg	$r8,$r4,0x80
    2d44:	02008303 	slti	$r3,$r24,32(0x20)
    2d48:	05830304 	0x05830304
    2d4c:	04020016 	csrrd	$r22,0x80
    2d50:	007e0603 	bstrins.w	$r3,$r16,0x1e,0x1
    2d54:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3058 <_start-0x1bf5cfa8>
    2d58:	02000605 	slti	$r5,$r16,1(0x1)
    2d5c:	054a0104 	0x054a0104
    2d60:	0705500b 	0x0705500b
    2d64:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d68:	27058406 	stptr.d	$r6,$r0,1412(0x584)
    2d6c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d70:	15050106 	lu12i.w	$r6,-514040(0x82808)
    2d74:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d78:	0024054a 	crc.w.b.w	$r10,$r10,$r1
    2d7c:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3080 <_start-0x1bf5cf80>
    2d80:	02001905 	slti	$r5,$r8,6(0x6)
    2d84:	05ba0304 	0x05ba0304
    2d88:	04020016 	csrrd	$r22,0x80
    2d8c:	0200b803 	slti	$r3,$r0,46(0x2e)
    2d90:	054a0304 	0x054a0304
    2d94:	04020006 	csrrd	$r6,0x80
    2d98:	4e064a01 	jirl	$r1,$r16,-129464(0x20648)
    2d9c:	01061005 	0x01061005
    2da0:	4a4a1605 	0x4a4a1605
    2da4:	0606054a 	cacop	0xa,$r10,385(0x181)
    2da8:	060b0583 	cacop	0x3,$r12,705(0x2c1)
    2dac:	4a060501 	bcnez	$fcc0,394756(0x60604) # 633b0 <_start-0x1bf9cc50>
    2db0:	02000705 	slti	$r5,$r24,1(0x1)
    2db4:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2db8:	02001e05 	slti	$r5,$r16,7(0x7)
    2dbc:	80060304 	0x80060304
    2dc0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2dc4:	0018054a 	sra.w	$r10,$r10,$r1
    2dc8:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2ecc <_start-0x1bf5d134>
    2dcc:	02000605 	slti	$r5,$r16,1(0x1)
    2dd0:	05ba0104 	0x05ba0104
    2dd4:	06054e0b 	cacop	0xb,$r16,339(0x153)
    2dd8:	01040200 	0x01040200
    2ddc:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2de0:	06030402 	cacop	0x2,$r0,193(0xc1)
    2de4:	0015054c 	or	$r12,$r10,$r1
    2de8:	06030402 	cacop	0x2,$r0,193(0xc1)
    2dec:	04020080 	csrxchg	$r0,$r4,0x80
    2df0:	02004a03 	slti	$r3,$r16,18(0x12)
    2df4:	054a0304 	0x054a0304
    2df8:	12030605 	addu16i.d	$r5,$r16,-32575(0x80c1)
    2dfc:	0611054a 	cacop	0xa,$r10,1089(0x441)
    2e00:	4a070501 	bcnez	$fcc0,395012(0x60704) # 63504 <_start-0x1bf9cafc>
    2e04:	05500a05 	0x05500a05
    2e08:	04020006 	csrrd	$r6,0x80
    2e0c:	05840603 	0x05840603
    2e10:	04020019 	csrrd	$r25,0x80
    2e14:	05010603 	0x05010603
    2e18:	0402001b 	csrrd	$r27,0x80
    2e1c:	0200b803 	slti	$r3,$r0,46(0x2e)
    2e20:	054a0304 	0x054a0304
    2e24:	04020016 	csrrd	$r22,0x80
    2e28:	05054a01 	0x05054a01
    2e2c:	01040200 	0x01040200
    2e30:	030905ba 	lu52i.d	$r26,$r13,577(0x241)
    2e34:	054a0182 	0x054a0182
    2e38:	7f8e0306 	0x7f8e0306
    2e3c:	060a0582 	cacop	0x2,$r12,641(0x281)
    2e40:	05820c03 	0x05820c03
    2e44:	0501060c 	0x0501060c
    2e48:	054c060b 	0x054c060b
    2e4c:	0501060d 	0x0501060d
    2e50:	0588060c 	0x0588060c
    2e54:	0501060f 	0x0501060f
    2e58:	034b060b 	andi	$r11,$r16,0x2c1
    2e5c:	4a064a70 	0x4a064a70
    2e60:	0c054b06 	0x0c054b06
    2e64:	4a4a0106 	bcnez	$fcc0,1722880(0x1a4a00) # 1a7864 <_start-0x1be5879c>
    2e68:	02040200 	slti	$r0,$r16,256(0x100)
    2e6c:	4a110306 	0x4a110306
    2e70:	02001a05 	slti	$r5,$r16,6(0x6)
    2e74:	08060204 	0x08060204
    2e78:	0402003a 	csrwr	$r26,0x80
    2e7c:	0b054a02 	0x0b054a02
    2e80:	01040200 	0x01040200
    2e84:	054e064a 	0x054e064a
    2e88:	05010618 	0x05010618
    2e8c:	21054a0d 	sc.w	$r13,$r16,1352(0x548)
    2e90:	01040200 	0x01040200
    2e94:	0311054a 	lu52i.d	$r10,$r10,1089(0x441)
    2e98:	054a4a0c 	0x054a4a0c
    2e9c:	0402000d 	csrrd	$r13,0x80
    2ea0:	78030603 	0x78030603
    2ea4:	0402004a 	csrxchg	$r10,$r2,0x80
    2ea8:	02008303 	slti	$r3,$r24,32(0x20)
    2eac:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2eb0:	83030402 	0x83030402
    2eb4:	02001a05 	slti	$r5,$r16,6(0x6)
    2eb8:	01060304 	0x01060304
    2ebc:	02002205 	slti	$r5,$r16,8(0x8)
    2ec0:	00b50304 	bstrins.d	$r4,$r24,0x35,0x0
    2ec4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a31c8 <_start-0x1bf5ce38>
    2ec8:	02001d05 	slti	$r5,$r8,7(0x7)
    2ecc:	054a0104 	0x054a0104
    2ed0:	0402000c 	csrrd	$r12,0x80
    2ed4:	1105ba01 	addu16i.d	$r1,$r16,16750(0x416e)
    2ed8:	01040200 	0x01040200
    2edc:	004a0a03 	0x004a0a03
    2ee0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2fe4 <_start-0x1bf5d01c>
    2ee4:	01040200 	0x01040200
    2ee8:	0402004a 	csrxchg	$r10,$r2,0x80
    2eec:	0d054a01 	0x0d054a01
    2ef0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2ef4:	02004c06 	slti	$r6,$r0,19(0x13)
    2ef8:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2efc:	83030402 	0x83030402
    2f00:	02002b05 	slti	$r5,$r24,10(0xa)
    2f04:	7e060304 	0x7e060304
    2f08:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f0c:	0026054a 	crcc.w.b.w	$r10,$r10,$r1
    2f10:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3014 <_start-0x1bf5cfec>
    2f14:	02000c05 	slti	$r5,$r0,3(0x3)
    2f18:	74080104 	xvslt.bu	$xr4,$xr8,$xr0
    2f1c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f20:	82090306 	0x82090306
    2f24:	02001905 	slti	$r5,$r8,6(0x6)
    2f28:	01060304 	0x01060304
    2f2c:	02000c05 	slti	$r5,$r0,3(0x3)
    2f30:	bb060304 	0xbb060304
    2f34:	02002805 	slti	$r5,$r0,10(0xa)
    2f38:	7f060304 	0x7f060304
    2f3c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f40:	0023054a 	div.du	$r10,$r10,$r1
    2f44:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3048 <_start-0x1bf5cfb8>
    2f48:	02000b05 	slti	$r5,$r24,2(0x2)
    2f4c:	74080104 	xvslt.bu	$xr4,$xr8,$xr0
    2f50:	68030f05 	bltu	$r24,$r5,780(0x30c) # 325c <_start-0x1bffcda4>
    2f54:	0a05824a 	0x0a05824a
    2f58:	4a210306 	0x4a210306
    2f5c:	01060c05 	0x01060c05
    2f60:	4a500d05 	bcnez	$fcc0,1462284(0x16500c) # 167f6c <_start-0x1be98094>
    2f64:	46060b05 	bnez	$r24,1443336(0x160608) # 16356c <_start-0x1be9ca94>
    2f68:	4b06f206 	0x4b06f206
    2f6c:	01060c05 	0x01060c05
    2f70:	0a054a4a 	0x0a054a4a
    2f74:	0c055006 	0x0c055006
    2f78:	0b050106 	0x0b050106
    2f7c:	0d058406 	0x0d058406
    2f80:	0c050106 	0x0c050106
    2f84:	0f055006 	0x0f055006
    2f88:	0b050106 	0x0b050106
    2f8c:	0c054b06 	0x0c054b06
    2f90:	02040200 	slti	$r0,$r16,256(0x100)
    2f94:	001a054c 	0x001a054c
    2f98:	06020402 	cacop	0x2,$r0,129(0x81)
    2f9c:	02003a08 	slti	$r8,$r16,14(0xe)
    2fa0:	054a0204 	0x054a0204
    2fa4:	0402000b 	csrrd	$r11,0x80
    2fa8:	4e064a01 	jirl	$r1,$r16,-129464(0x20648)
    2fac:	01061805 	0x01061805
    2fb0:	054a0d05 	0x054a0d05
    2fb4:	04020021 	csrwr	$r1,0x80
    2fb8:	11054a01 	addu16i.d	$r1,$r16,16722(0x4152)
    2fbc:	4a4a0c03 	bceqz	$fcc0,936460(0xe4a0c) # e79c8 <_start-0x1bf18638>
    2fc0:	02000e05 	slti	$r5,$r16,3(0x3)
    2fc4:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2fc8:	02004a78 	slti	$r24,$r19,18(0x12)
    2fcc:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2fd0:	83030402 	0x83030402
    2fd4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fd8:	001b0583 	rotr.w	$r3,$r12,$r1
    2fdc:	06030402 	cacop	0x2,$r0,193(0xc1)
    2fe0:	00220501 	div.d	$r1,$r8,$r1
    2fe4:	b5030402 	0xb5030402
    2fe8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2fec:	001d054a 	mulh.wu	$r10,$r10,$r1
    2ff0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a30f4 <_start-0x1bf5cf0c>
    2ff4:	02000c05 	slti	$r5,$r0,3(0x3)
    2ff8:	05ba0104 	0x05ba0104
    2ffc:	04020011 	csrrd	$r17,0x80
    3000:	4a0a0301 	0x4a0a0301
    3004:	01040200 	0x01040200
    3008:	0402004a 	csrxchg	$r10,$r2,0x80
    300c:	02004a01 	slti	$r1,$r16,18(0x12)
    3010:	054a0104 	0x054a0104
    3014:	0402000d 	csrrd	$r13,0x80
    3018:	004c0603 	0x004c0603
    301c:	83030402 	0x83030402
    3020:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3024:	002b0583 	syscall	0x583
    3028:	06030402 	cacop	0x2,$r0,193(0xc1)
    302c:	0402007e 	csrxchg	$r30,$r3,0x80
    3030:	26054a03 	ldptr.d	$r3,$r16,1352(0x548)
    3034:	01040200 	0x01040200
    3038:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    303c:	08010402 	0x08010402
    3040:	04020074 	csrxchg	$r20,$r3,0x80
    3044:	09030603 	0x09030603
    3048:	00190582 	srl.d	$r2,$r12,$r1
    304c:	06030402 	cacop	0x2,$r0,193(0xc1)
    3050:	000c0501 	bytepick.d	$r1,$r8,$r1,0x0
    3054:	06030402 	cacop	0x2,$r0,193(0xc1)
    3058:	002805bb 	0x002805bb
    305c:	06030402 	cacop	0x2,$r0,193(0xc1)
    3060:	0402007f 	csrxchg	$r31,$r3,0x80
    3064:	23054a03 	sc.d	$r3,$r16,1352(0x548)
    3068:	01040200 	0x01040200
    306c:	000b054a 	0x000b054a
    3070:	08010402 	0x08010402
    3074:	030f0574 	lu52i.d	$r20,$r11,961(0x3c1)
    3078:	05824a68 	0x05824a68
    307c:	04020006 	csrrd	$r6,0x80
    3080:	2f030603 	0x2f030603
    3084:	0025054a 	crc.w.w.w	$r10,$r10,$r1
    3088:	06030402 	cacop	0x2,$r0,193(0xc1)
    308c:	00280501 	0x00280501
    3090:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3394 <_start-0x1bf5cc6c>
    3094:	02001705 	slti	$r5,$r24,5(0x5)
    3098:	74080304 	xvslt.bu	$xr4,$xr24,$xr0
    309c:	02001305 	slti	$r5,$r24,4(0x4)
    30a0:	00f10304 	bstrpick.d	$r4,$r24,0x31,0x0
    30a4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a33a8 <_start-0x1bf5cc58>
    30a8:	02000505 	slti	$r5,$r8,1(0x1)
    30ac:	054a0104 	0x054a0104
    30b0:	04020012 	csrrd	$r18,0x80
    30b4:	02008002 	slti	$r2,$r0,32(0x20)
    30b8:	054a0204 	0x054a0204
    30bc:	04020004 	csrrd	$r4,0x80
    30c0:	0a054a01 	0x0a054a01
    30c4:	85090584 	0x85090584
    30c8:	02000505 	slti	$r5,$r8,1(0x1)
    30cc:	84060304 	0x84060304
    30d0:	02001805 	slti	$r5,$r0,6(0x6)
    30d4:	01060304 	0x01060304
    30d8:	02001405 	slti	$r5,$r0,5(0x5)
    30dc:	00b80304 	bstrins.d	$r4,$r24,0x38,0x0
    30e0:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a33e4 <_start-0x1bf5cc1c>
    30e4:	02000405 	slti	$r5,$r0,1(0x1)
    30e8:	054a0104 	0x054a0104
    30ec:	05890603 	0x05890603
    30f0:	05010605 	0x05010605
    30f4:	06055009 	cacop	0x9,$r0,340(0x154)
    30f8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    30fc:	14058406 	lu12i.w	$r6,11296(0x2c20)
    3100:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3104:	15050106 	lu12i.w	$r6,-514040(0x82808)
    3108:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    310c:	02007308 	slti	$r8,$r24,28(0x1c)
    3110:	054a0304 	0x054a0304
    3114:	04020005 	csrrd	$r5,0x80
    3118:	13054a01 	addu16i.d	$r1,$r16,-16046(0xc152)
    311c:	02040200 	slti	$r0,$r16,256(0x100)
    3120:	04020081 	csrxchg	$r1,$r4,0x80
    3124:	04054a02 	csrxchg	$r2,$r16,0x152
    3128:	01040200 	0x01040200
    312c:	830a054a 	0x830a054a
    3130:	05840805 	0x05840805
    3134:	0f054d0a 	0x0f054d0a
    3138:	030a054a 	lu52i.d	$r10,$r10,641(0x281)
    313c:	4a4a7e8f 	0x4a4a7e8f
    3140:	03060605 	lu52i.d	$r5,$r16,385(0x181)
    3144:	054a01f5 	0x054a01f5
    3148:	05010615 	0x05010615
    314c:	08054a13 	0x08054a13
    3150:	002205ba 	div.d	$r26,$r13,$r1
    3154:	82010402 	0x82010402
    3158:	4c060705 	jirl	$r5,$r24,1540(0x604)
    315c:	060a0513 	cacop	0x13,$r8,641(0x281)
    3160:	07054a01 	0x07054a01
    3164:	0e054b06 	0x0e054b06
    3168:	054a0106 	0x054a0106
    316c:	1a05b809 	pcalau12i	$r9,11712(0x2dc0)
    3170:	02040200 	slti	$r0,$r16,256(0x100)
    3174:	004a7a03 	0x004a7a03
    3178:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a337c <_start-0x1bf5cc84>
    317c:	02000405 	slti	$r5,$r0,1(0x1)
    3180:	054a0104 	0x054a0104
    3184:	054c0605 	0x054c0605
    3188:	05010611 	0x05010611
    318c:	0605ba07 	cacop	0x7,$r16,366(0x16e)
    3190:	820b0306 	0x820b0306
    3194:	01060f05 	0x01060f05
    3198:	054a1405 	0x054a1405
    319c:	054b0606 	0x054b0606
    31a0:	4a010607 	0x4a010607
    31a4:	0604054a 	cacop	0xa,$r10,257(0x101)
    31a8:	0705134e 	0x0705134e
    31ac:	82820106 	0x82820106
    31b0:	054a0605 	0x054a0605
    31b4:	0e05500a 	0x0e05500a
    31b8:	01040200 	0x01040200
    31bc:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    31c0:	08010402 	0x08010402
    31c4:	060605e4 	cacop	0x4,$r15,385(0x181)
    31c8:	0609054c 	cacop	0xc,$r10,577(0x241)
    31cc:	053c0801 	0x053c0801
    31d0:	32054a08 	0x32054a08
    31d4:	02040200 	slti	$r0,$r16,256(0x100)
    31d8:	04020048 	csrxchg	$r8,$r2,0x80
    31dc:	02004a02 	slti	$r2,$r16,18(0x12)
    31e0:	054a0204 	0x054a0204
    31e4:	054e0607 	0x054e0607
    31e8:	0501060a 	0x0501060a
    31ec:	05f30607 	0x05f30607
    31f0:	0501060c 	0x0501060c
    31f4:	08054a07 	0x08054a07
    31f8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31fc:	17054c06 	lu32i.d	$r6,-513440(0x82a60)
    3200:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3204:	02000106 	slti	$r6,$r8,0
    3208:	05ba0304 	0x05ba0304
    320c:	0402000d 	csrrd	$r13,0x80
    3210:	02004a03 	slti	$r3,$r16,18(0x12)
    3214:	054a0304 	0x054a0304
    3218:	04020019 	csrrd	$r25,0x80
    321c:	02008003 	slti	$r3,$r0,32(0x20)
    3220:	054a0304 	0x054a0304
    3224:	04020007 	csrrd	$r7,0x80
    3228:	4f064a01 	jirl	$r1,$r16,-63928(0x30648)
    322c:	150505bb 	lu12i.w	$r27,-514003(0x8282d)
    3230:	01060805 	0x01060805
    3234:	ac080705 	0xac080705
    3238:	be030905 	0xbe030905
    323c:	07054a7e 	0x07054a7e
    3240:	06020549 	cacop	0x9,$r10,129(0x81)
    3244:	4a7fa303 	0x4a7fa303
    3248:	05150305 	0x05150305
    324c:	05010608 	0x05010608
    3250:	06054a03 	cacop	0x3,$r16,338(0x152)
    3254:	029f0306 	addi.w	$r6,$r24,1984(0x7c0)
    3258:	0609054a 	cacop	0xa,$r10,577(0x241)
    325c:	ba7ebc03 	0xba7ebc03
    3260:	05490705 	0x05490705
    3264:	ca030602 	0xca030602
    3268:	01058201 	0x01058201
    326c:	4aba1306 	0x4aba1306
    3270:	824a4a4a 	0x824a4a4a
    3274:	01000402 	0x01000402
    3278:	00010501 	0x00010501
    327c:	1a080205 	pcalau12i	$r5,16400(0x4010)
    3280:	d2031c00 	0xd2031c00
    3284:	02050103 	slti	$r3,$r8,320(0x140)
    3288:	11054bbb 	addu16i.d	$r27,$r29,16722(0x4152)
    328c:	02050106 	slti	$r6,$r8,320(0x140)
    3290:	0101f306 	0x0101f306
    3294:	01040200 	0x01040200
    3298:	02008206 	slti	$r6,$r16,32(0x20)
    329c:	004a0104 	0x004a0104
    32a0:	06030402 	cacop	0x2,$r0,193(0xc1)
    32a4:	0402004a 	csrxchg	$r10,$r2,0x80
    32a8:	74080603 	xvslt.bu	$xr3,$xr16,$xr1
    32ac:	07051406 	0x07051406
    32b0:	054a0106 	0x054a0106
    32b4:	02054a05 	slti	$r5,$r16,338(0x152)
    32b8:	07055106 	0x07055106
    32bc:	05050106 	0x05050106
    32c0:	06020582 	cacop	0x2,$r12,129(0x81)
    32c4:	0101bb51 	0x0101bb51
    32c8:	01040200 	0x01040200
    32cc:	02008206 	slti	$r6,$r16,32(0x20)
    32d0:	004a0104 	0x004a0104
    32d4:	06030402 	cacop	0x2,$r0,193(0xc1)
    32d8:	0402004a 	csrxchg	$r10,$r2,0x80
    32dc:	74080603 	xvslt.bu	$xr3,$xr16,$xr1
    32e0:	03060305 	lu52i.d	$r5,$r24,384(0x180)
    32e4:	01bb0173 	0x01bb0173
    32e8:	04020001 	csrrd	$r1,0x80
    32ec:	0200ba03 	slti	$r3,$r16,46(0x2e)
    32f0:	08060104 	0x08060104
    32f4:	0402003c 	csrwr	$r28,0x80
    32f8:	02004a01 	slti	$r1,$r16,18(0x12)
    32fc:	06820104 	0x06820104
    3300:	0101bb18 	0x0101bb18
    3304:	01040200 	0x01040200
    3308:	02008206 	slti	$r6,$r16,32(0x20)
    330c:	004a0104 	0x004a0104
    3310:	06030402 	cacop	0x2,$r0,193(0xc1)
    3314:	0402004a 	csrxchg	$r10,$r2,0x80
    3318:	74080603 	xvslt.bu	$xr3,$xr16,$xr1
    331c:	19060205 	pcaddi	$r5,-511984(0x83010)
    3320:	0609054c 	cacop	0xc,$r10,577(0x241)
    3324:	4b010501 	bcnez	$fcc0,459012(0x70104) # 73428 <_start-0x1bf8cbd8>
    3328:	01001402 	0x01001402
    332c:	00010501 	0x00010501
    3330:	1b240205 	pcalau12i	$r5,-450544(0x92010)
    3334:	ee031c00 	0xee031c00
    3338:	02050103 	slti	$r3,$r8,320(0x140)
    333c:	06054b83 	cacop	0x3,$r28,338(0x152)
    3340:	02050106 	slti	$r6,$r8,320(0x140)
    3344:	1605bc06 	lu32i.d	$r6,11744(0x2de0)
    3348:	02050106 	slti	$r6,$r8,320(0x140)
    334c:	053d0806 	0x053d0806
    3350:	05010614 	0x05010614
    3354:	05bb0602 	0x05bb0602
    3358:	05010612 	0x05010612
    335c:	05840602 	0x05840602
    3360:	0501060f 	0x0501060f
    3364:	05bc0602 	0x05bc0602
    3368:	04020016 	csrrd	$r22,0x80
    336c:	0a050101 	0x0a050101
    3370:	01040200 	0x01040200
    3374:	08050106 	0x08050106
    3378:	01040200 	0x01040200
    337c:	060505ba 	cacop	0x1a,$r13,321(0x141)
    3380:	0601054d 	cacop	0xd,$r10,65(0x41)
    3384:	00100213 	add.w	$r19,$r16,$r0
    3388:	01050101 	fmul.d	$f1,$f8,$f0
    338c:	90020500 	0x90020500
    3390:	031c001b 	lu52i.d	$r27,$r0,1792(0x700)
    3394:	050103ff 	0x050103ff
    3398:	06058302 	cacop	0x2,$r24,352(0x160)
    339c:	02050106 	slti	$r6,$r8,320(0x140)
    33a0:	0105f306 	0x0105f306
    33a4:	0c024b06 	0x0c024b06
    33a8:	df010100 	0xdf010100
    33ac:	02000008 	slti	$r8,$r0,0
    33b0:	00031200 	0x00031200
    33b4:	fb010100 	0xfb010100
    33b8:	01000d0e 	0x01000d0e
    33bc:	00010101 	0x00010101
    33c0:	00010000 	asrtle.d	$r0,$r0
    33c4:	3a440100 	0x3a440100
    33c8:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1a71c <_start-0x1bfe58e4>
    33cc:	772f7372 	0x772f7372
    33d0:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    33d4:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffffa318 <_RAM_DATA+0x7fff9318>
    33d8:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9944 <_RAM_DATA+0x7ffe8944>
    33dc:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd3634c <_RAM_DATA+0x7fd3534c>
    33e0:	2f65646f 	0x2f65646f
    33e4:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffea350 <_RAM_DATA+0x7ffe9350>
    33e8:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffffa628 <_RAM_DATA+0x7fff9628>
    33ec:	72505f68 	0x72505f68
    33f0:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    33f4:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffffa25c <_RAM_DATA+0x7fff925c>
    33f8:	7379535f 	0x7379535f
    33fc:	2f6d6574 	0x2f6d6574
    3400:	30314331 	0x30314331
    3404:	72732f32 	0x72732f32
    3408:	77732f63 	0x77732f63
    340c:	6573752f 	bge	$r9,$r15,95092(0x17374) # 1a780 <_start-0x1bfe5880>
    3410:	3a640072 	0x3a640072
    3414:	6573755c 	bge	$r10,$r28,95092(0x17374) # 1a788 <_start-0x1bfe5878>
    3418:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
    341c:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    3420:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffffa384 <_RAM_DATA+0x7fff9384>
    3424:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9990 <_RAM_DATA+0x7ffe8990>
    3428:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff9098 <_RAM_DATA+0x7fff8098>
    342c:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 9990 <_start-0x1bff6670>
    3430:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffea39c <_RAM_DATA+0x7ffe939c>
    3434:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffffa694 <_RAM_DATA+0x7fff9694>
    3438:	72705f68 	0x72705f68
    343c:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    3440:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffffa2a8 <_RAM_DATA+0x7fff92a8>
    3444:	7379735f 	0x7379735f
    3448:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # a1ac <_start-0x1bff5e54>
    344c:	30316331 	0x30316331
    3450:	72735c32 	0x72735c32
    3454:	77735c63 	0x77735c63
    3458:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 195c4 <_start-0x1bfe6a3c>
    345c:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe90c0 <_RAM_DATA+0x7ffe80c0>
    3460:	646c6975 	bge	$r11,$r21,27752(0x6c68) # a0c8 <_start-0x1bff5f38>
    3464:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # a3d0 <_start-0x1bff5c30>
    3468:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
    346c:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffffa898 <_RAM_DATA+0x7fff9898>
    3470:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 90dc <_start-0x1bff6f24>
    3474:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa2e0 <_RAM_DATA+0x7fff92e0>
    3478:	68637261 	bltu	$r19,$r1,25456(0x6370) # 97e8 <_start-0x1bff6818>
    347c:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe61ac <_RAM_DATA+0x7ffe51ac>
    3480:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 1a0f4 <_start-0x1bfe5f0c>
    3484:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 99b0 <_start-0x1bff6650>
    3488:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe9de4 <_RAM_DATA+0x7ffe8de4>
    348c:	64756c63 	bge	$r3,$r3,30060(0x756c) # a9f8 <_start-0x1bff5608>
    3490:	616d2f65 	blt	$r27,$r5,93484(0x16d2c) # 1a1bc <_start-0x1bfe5e44>
    3494:	6e696863 	bgeu	$r3,$r3,-104088(0x26968) # fffe9dfc <_RAM_DATA+0x7ffe8dfc>
    3498:	3a640065 	0x3a640065
    349c:	6573755c 	bge	$r10,$r28,95092(0x17374) # 1a810 <_start-0x1bfe57f0>
    34a0:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
    34a4:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    34a8:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffffa40c <_RAM_DATA+0x7fff940c>
    34ac:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9a18 <_RAM_DATA+0x7ffe8a18>
    34b0:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff9120 <_RAM_DATA+0x7fff8120>
    34b4:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 9a18 <_start-0x1bff65e8>
    34b8:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffea424 <_RAM_DATA+0x7ffe9424>
    34bc:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffffa71c <_RAM_DATA+0x7fff971c>
    34c0:	72705f68 	0x72705f68
    34c4:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    34c8:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffffa330 <_RAM_DATA+0x7fff9330>
    34cc:	7379735f 	0x7379735f
    34d0:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # a234 <_start-0x1bff5dcc>
    34d4:	30316331 	0x30316331
    34d8:	72735c32 	0x72735c32
    34dc:	77735c63 	0x77735c63
    34e0:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 1964c <_start-0x1bfe69b4>
    34e4:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe9148 <_RAM_DATA+0x7ffe8148>
    34e8:	646c6975 	bge	$r11,$r21,27752(0x6c68) # a150 <_start-0x1bff5eb0>
    34ec:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # a458 <_start-0x1bff5ba8>
    34f0:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
    34f4:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffffa920 <_RAM_DATA+0x7fff9920>
    34f8:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 9164 <_start-0x1bff6e9c>
    34fc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa368 <_RAM_DATA+0x7fff9368>
    3500:	68637261 	bltu	$r19,$r1,25456(0x6370) # 9870 <_start-0x1bff6790>
    3504:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe6234 <_RAM_DATA+0x7ffe5234>
    3508:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 1a17c <_start-0x1bfe5e84>
    350c:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 9a38 <_start-0x1bff65c8>
    3510:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe9e6c <_RAM_DATA+0x7ffe8e6c>
    3514:	64756c63 	bge	$r3,$r3,30060(0x756c) # aa80 <_start-0x1bff5580>
    3518:	79732f65 	0x79732f65
    351c:	3a440073 	0x3a440073
    3520:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1a874 <_start-0x1bfe578c>
    3524:	772f7372 	0x772f7372
    3528:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    352c:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffffa470 <_RAM_DATA+0x7fff9470>
    3530:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9a9c <_RAM_DATA+0x7ffe8a9c>
    3534:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd364a4 <_RAM_DATA+0x7fd354a4>
    3538:	2f65646f 	0x2f65646f
    353c:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffea4a8 <_RAM_DATA+0x7ffe94a8>
    3540:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffffa780 <_RAM_DATA+0x7fff9780>
    3544:	72505f68 	0x72505f68
    3548:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    354c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffffa3b4 <_RAM_DATA+0x7fff93b4>
    3550:	7379535f 	0x7379535f
    3554:	2f6d6574 	0x2f6d6574
    3558:	30314331 	0x30314331
    355c:	72732f32 	0x72732f32
    3560:	77732f63 	0x77732f63
    3564:	636e692f 	blt	$r9,$r15,-37272(0x36e68) # ffffa3cc <_RAM_DATA+0x7fff93cc>
    3568:	6564756c 	bge	$r11,$r12,91252(0x16474) # 199dc <_start-0x1bfe6624>
    356c:	2f3a4400 	0x2f3a4400
    3570:	72657355 	0x72657355
    3574:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1aca0 <_start-0x1bfe5360>
    3578:	2f73676e 	0x2f73676e
    357c:	75636f44 	0x75636f44
    3580:	746e656d 	0x746e656d
    3584:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff78b0 <_RAM_DATA+0x7fff68b0>
    3588:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    358c:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa3f8 <_RAM_DATA+0x7fff93f8>
    3590:	68637241 	bltu	$r18,$r1,25456(0x6370) # 9900 <_start-0x1bff6700>
    3594:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa7e4 <_RAM_DATA+0x7fff97e4>
    3598:	73736563 	0x73736563
    359c:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9d08 <_RAM_DATA+0x7fff8d08>
    35a0:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    35a4:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    35a8:	32303143 	0x32303143
    35ac:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa81c <_RAM_DATA+0x7fff981c>
    35b0:	2f77732f 	0x2f77732f
    35b4:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 9828 <_start-0x1bff67d8>
    35b8:	44006369 	bnez	$r27,2359392(0x240060) # 243618 <_start-0x1bdbc9e8>
    35bc:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
    35c0:	2f737265 	0x2f737265
    35c4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffffa424 <_RAM_DATA+0x7fff9424>
    35c8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff79f4 <_RAM_DATA+0x7fff69f4>
    35cc:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 1a340 <_start-0x1bfe5cc0>
    35d0:	2f73746e 	0x2f73746e
    35d4:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 19a40 <_start-0x1bfe65c0>
    35d8:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffffa524 <_RAM_DATA+0x7fff9524>
    35dc:	7241676e 	0x7241676e
    35e0:	505f6863 	b	25976680(0x18c5f68) # 18c9548 <_start-0x1a736ab8>
    35e4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 19950 <_start-0x1bfe66b0>
    35e8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe9f58 <_RAM_DATA+0x7ffe8f58>
    35ec:	79535f67 	0x79535f67
    35f0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 19b64 <_start-0x1bfe649c>
    35f4:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
    35f8:	732f3230 	0x732f3230
    35fc:	732f6372 	0x732f6372
    3600:	72702f77 	0x72702f77
    3604:	74617669 	xvabsd.w	$xr9,$xr19,$xr29
    3608:	31000065 	0x31000065
    360c:	32303163 	0x32303163
    3610:	746e495f 	0x746e495f
    3614:	75727265 	0x75727265
    3618:	632e7470 	blt	$r3,$r16,-53644(0x32e74) # ffff648c <_RAM_DATA+0x7fff548c>
    361c:	00000100 	0x00000100
    3620:	6665645f 	bge	$r2,$r31,-105116(0x26564) # fffe9b84 <_RAM_DATA+0x7ffe8b84>
    3624:	746c7561 	0x746c7561
    3628:	7079745f 	0x7079745f
    362c:	682e7365 	bltu	$r27,$r5,11888(0x2e70) # 649c <_start-0x1bff9b64>
    3630:	00000200 	0x00000200
    3634:	6474735f 	bge	$r26,$r31,29808(0x7470) # aaa4 <_start-0x1bff555c>
    3638:	2e746e69 	0x2e746e69
    363c:	00030068 	0x00030068
    3640:	73657400 	vssrani.wu.d	$vr0,$vr0,0x1d
    3644:	00682e74 	bstrins.w	$r20,$r19,0x8,0xb
    3648:	6c000004 	bgeu	$r0,$r4,0 # 3648 <_start-0x1bffc9b8>
    364c:	2e783173 	0x2e783173
    3650:	00040068 	alsl.w	$r8,$r3,$r0,0x1
    3654:	31633100 	0x31633100
    3658:	495f3230 	0x495f3230
    365c:	7265746e 	0x7265746e
    3660:	74707572 	xvmax.b	$xr18,$xr11,$xr29
    3664:	0100682e 	0x0100682e
    3668:	736c0000 	0x736c0000
    366c:	635f7831 	blt	$r1,$r17,-41096(0x35f78) # ffff95e4 <_RAM_DATA+0x7fff85e4>
    3670:	6f6d6d6f 	bgeu	$r11,$r15,-37524(0x36d6c) # ffffa3dc <_RAM_DATA+0x7fff93dc>
    3674:	00682e6e 	bstrins.w	$r14,$r19,0x8,0xb
    3678:	43000005 	beqz	$r0,1507328(0x170000) # 173678 <_start-0x1be8c988>
    367c:	69666e6f 	bltu	$r19,$r15,91756(0x1666c) # 19ce8 <_start-0x1bfe6318>
    3680:	00682e67 	bstrins.w	$r7,$r19,0x8,0xb
    3684:	6c000004 	bgeu	$r0,$r4,0 # 3684 <_start-0x1bffc97c>
    3688:	31633173 	0x31633173
    368c:	705f3230 	0x705f3230
    3690:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1a3f8 <_start-0x1bfe5c08>
    3694:	00682e72 	bstrins.w	$r18,$r19,0x8,0xb
    3698:	73000006 	0x73000006
    369c:	675f636f 	bge	$r27,$r15,-41120(0x35f60) # ffff95fc <_RAM_DATA+0x7fff85fc>
    36a0:	2e6f6970 	0x2e6f6970
    36a4:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    36a8:	31736c00 	0x31736c00
    36ac:	64775f78 	bge	$r27,$r24,30556(0x775c) # ae08 <_start-0x1bff51f8>
    36b0:	00682e67 	bstrins.w	$r7,$r19,0x8,0xb
    36b4:	6c000005 	bgeu	$r0,$r5,0 # 36b4 <_start-0x1bffc94c>
    36b8:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffffaee8 <_RAM_DATA+0x7fff9ee8>
    36bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1ab34 <_start-0x1bfe54cc>
    36c0:	0500682e 	0x0500682e
    36c4:	05000000 	0x05000000
    36c8:	02050001 	slti	$r1,$r0,320(0x140)
    36cc:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
    36d0:	83020515 	0x83020515
    36d4:	01057508 	fmul.d	$f8,$f8,$f29
    36d8:	0c02f306 	0x0c02f306
    36dc:	05010100 	0x05010100
    36e0:	02050001 	slti	$r1,$r0,320(0x140)
    36e4:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
    36e8:	8302051a 	0x8302051a
    36ec:	01057508 	fmul.d	$f8,$f8,$f29
    36f0:	0c02f306 	0x0c02f306
    36f4:	05010100 	0x05010100
    36f8:	02050001 	slti	$r1,$r0,320(0x140)
    36fc:	1c001c30 	pcaddu12i	$r16,225(0xe1)
    3700:	05010d03 	0x05010d03
    3704:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3708:	f3060105 	0xf3060105
    370c:	01000c02 	0x01000c02
    3710:	00010501 	0x00010501
    3714:	1c6c0205 	pcaddu12i	$r5,221200(0x36010)
    3718:	12031c00 	addu16i.d	$r0,$r0,-32569(0x80c7)
    371c:	83020501 	0x83020501
    3720:	01057508 	fmul.d	$f8,$f8,$f29
    3724:	0c02f306 	0x0c02f306
    3728:	05010100 	0x05010100
    372c:	02050001 	slti	$r1,$r0,320(0x140)
    3730:	1c001ca8 	pcaddu12i	$r8,229(0xe5)
    3734:	05011703 	0x05011703
    3738:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    373c:	f3060105 	0xf3060105
    3740:	01000c02 	0x01000c02
    3744:	00010501 	0x00010501
    3748:	1ce40205 	pcaddu12i	$r5,466960(0x72010)
    374c:	1c031c00 	pcaddu12i	$r0,6368(0x18e0)
    3750:	83020501 	0x83020501
    3754:	01057508 	fmul.d	$f8,$f8,$f29
    3758:	0c02f306 	0x0c02f306
    375c:	05010100 	0x05010100
    3760:	02050001 	slti	$r1,$r0,320(0x140)
    3764:	1c001d20 	pcaddu12i	$r0,233(0xe9)
    3768:	05012103 	0x05012103
    376c:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3770:	f3060105 	0xf3060105
    3774:	01000c02 	0x01000c02
    3778:	00010501 	0x00010501
    377c:	1d5c0205 	pcaddu12i	$r5,-335856(0xae010)
    3780:	26031c00 	ldptr.d	$r0,$r0,796(0x31c)
    3784:	84020501 	0x84020501
    3788:	01057508 	fmul.d	$f8,$f8,$f29
    378c:	0c02f306 	0x0c02f306
    3790:	05010100 	0x05010100
    3794:	02050001 	slti	$r1,$r0,320(0x140)
    3798:	1c001d98 	pcaddu12i	$r24,236(0xec)
    379c:	05012c03 	0x05012c03
    37a0:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    37a4:	f3060105 	0xf3060105
    37a8:	01000c02 	0x01000c02
    37ac:	00010501 	0x00010501
    37b0:	1dd40205 	pcaddu12i	$r5,-90096(0xea010)
    37b4:	31031c00 	0x31031c00
    37b8:	84020501 	0x84020501
    37bc:	01057508 	fmul.d	$f8,$f8,$f29
    37c0:	0c02f306 	0x0c02f306
    37c4:	05010100 	0x05010100
    37c8:	02050001 	slti	$r1,$r0,320(0x140)
    37cc:	1c001e10 	pcaddu12i	$r16,240(0xf0)
    37d0:	05013703 	0x05013703
    37d4:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    37d8:	f3060105 	0xf3060105
    37dc:	01000c02 	0x01000c02
    37e0:	00010501 	0x00010501
    37e4:	1e4c0205 	pcaddu18i	$r5,155664(0x26010)
    37e8:	3d031c00 	0x3d031c00
    37ec:	84020501 	0x84020501
    37f0:	01057508 	fmul.d	$f8,$f8,$f29
    37f4:	0c02f306 	0x0c02f306
    37f8:	05010100 	0x05010100
    37fc:	02050001 	slti	$r1,$r0,320(0x140)
    3800:	1c001e88 	pcaddu12i	$r8,244(0xf4)
    3804:	0100c303 	fadd.s	$f3,$f24,$f16
    3808:	08830205 	0x08830205
    380c:	06010575 	cacop	0x15,$r11,65(0x41)
    3810:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3814:	01050101 	fmul.d	$f1,$f8,$f0
    3818:	c4020500 	0xc4020500
    381c:	031c001e 	lu52i.d	$r30,$r0,1792(0x700)
    3820:	050100c8 	0x050100c8
    3824:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3828:	f3060105 	0xf3060105
    382c:	01000c02 	0x01000c02
    3830:	00010501 	0x00010501
    3834:	1f000205 	pcaddu18i	$r5,-524272(0x80010)
    3838:	cd031c00 	0xcd031c00
    383c:	02050100 	slti	$r0,$r8,320(0x140)
    3840:	05750884 	0x05750884
    3844:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3848:	0101000c 	fadd.d	$f12,$f0,$f0
    384c:	05000105 	0x05000105
    3850:	001f3c02 	mulw.d.w	$r2,$r0,$r15
    3854:	00d3031c 	bstrpick.d	$r28,$r24,0x13,0x0
    3858:	84020501 	0x84020501
    385c:	01057508 	fmul.d	$f8,$f8,$f29
    3860:	0c02f306 	0x0c02f306
    3864:	05010100 	0x05010100
    3868:	02050001 	slti	$r1,$r0,320(0x140)
    386c:	1c001f78 	pcaddu12i	$r24,251(0xfb)
    3870:	0100da03 	fadd.s	$f3,$f16,$f22
    3874:	08840205 	0x08840205
    3878:	06010575 	cacop	0x15,$r11,65(0x41)
    387c:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3880:	01050101 	fmul.d	$f1,$f8,$f0
    3884:	b4020500 	0xb4020500
    3888:	031c001f 	lu52i.d	$r31,$r0,1792(0x700)
    388c:	050100e0 	0x050100e0
    3890:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3894:	f3060105 	0xf3060105
    3898:	01000c02 	0x01000c02
    389c:	00010501 	0x00010501
    38a0:	1ff00205 	pcaddu18i	$r5,-32752(0xf8010)
    38a4:	e6031c00 	0xe6031c00
    38a8:	02050100 	slti	$r0,$r8,320(0x140)
    38ac:	05750884 	0x05750884
    38b0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    38b4:	0101000c 	fadd.d	$f12,$f0,$f0
    38b8:	05000105 	0x05000105
    38bc:	00202c02 	div.w	$r2,$r0,$r11
    38c0:	00ec031c 	bstrpick.d	$r28,$r24,0x2c,0x0
    38c4:	84020501 	0x84020501
    38c8:	01057508 	fmul.d	$f8,$f8,$f29
    38cc:	0c02f306 	0x0c02f306
    38d0:	05010100 	0x05010100
    38d4:	02050001 	slti	$r1,$r0,320(0x140)
    38d8:	1c002068 	pcaddu12i	$r8,259(0x103)
    38dc:	0100f203 	fadd.s	$f3,$f16,$f28
    38e0:	08840205 	0x08840205
    38e4:	06010575 	cacop	0x15,$r11,65(0x41)
    38e8:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    38ec:	01050101 	fmul.d	$f1,$f8,$f0
    38f0:	a4020500 	0xa4020500
    38f4:	031c0020 	lu52i.d	$r0,$r1,1792(0x700)
    38f8:	050100f8 	0x050100f8
    38fc:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3900:	f3060105 	0xf3060105
    3904:	01000c02 	0x01000c02
    3908:	00010501 	0x00010501
    390c:	20e00205 	ll.w	$r5,$r16,-8192(0xe000)
    3910:	fd031c00 	0xfd031c00
    3914:	02050100 	slti	$r0,$r8,320(0x140)
    3918:	05750883 	0x05750883
    391c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3920:	0101000c 	fadd.d	$f12,$f0,$f0
    3924:	05000105 	0x05000105
    3928:	00211c02 	div.wu	$r2,$r0,$r7
    392c:	0182031c 	0x0182031c
    3930:	84020501 	0x84020501
    3934:	01057508 	fmul.d	$f8,$f8,$f29
    3938:	0c02f306 	0x0c02f306
    393c:	05010100 	0x05010100
    3940:	02050001 	slti	$r1,$r0,320(0x140)
    3944:	1c002158 	pcaddu12i	$r24,266(0x10a)
    3948:	01018803 	0x01018803
    394c:	08840205 	0x08840205
    3950:	06010575 	cacop	0x15,$r11,65(0x41)
    3954:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3958:	01050101 	fmul.d	$f1,$f8,$f0
    395c:	94020500 	0x94020500
    3960:	031c0021 	lu52i.d	$r1,$r1,1792(0x700)
    3964:	0501018e 	0x0501018e
    3968:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    396c:	f3060105 	0xf3060105
    3970:	01000c02 	0x01000c02
    3974:	00010501 	0x00010501
    3978:	21d00205 	sc.w	$r5,$r16,-12288(0xd000)
    397c:	94031c00 	0x94031c00
    3980:	02050101 	slti	$r1,$r8,320(0x140)
    3984:	05750884 	0x05750884
    3988:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    398c:	0101000c 	fadd.d	$f12,$f0,$f0
    3990:	05000105 	0x05000105
    3994:	00220c02 	div.d	$r2,$r0,$r3
    3998:	019a031c 	0x019a031c
    399c:	84020501 	0x84020501
    39a0:	01057508 	fmul.d	$f8,$f8,$f29
    39a4:	0c02f306 	0x0c02f306
    39a8:	05010100 	0x05010100
    39ac:	02050001 	slti	$r1,$r0,320(0x140)
    39b0:	1c002248 	pcaddu12i	$r8,274(0x112)
    39b4:	0101a003 	0x0101a003
    39b8:	08840205 	0x08840205
    39bc:	06010575 	cacop	0x15,$r11,65(0x41)
    39c0:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    39c4:	01050101 	fmul.d	$f1,$f8,$f0
    39c8:	84020500 	0x84020500
    39cc:	031c0022 	lu52i.d	$r2,$r1,1792(0x700)
    39d0:	050101a7 	0x050101a7
    39d4:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    39d8:	f3060105 	0xf3060105
    39dc:	01000c02 	0x01000c02
    39e0:	00010501 	0x00010501
    39e4:	22c00205 	ll.d	$r5,$r16,-16384(0xc000)
    39e8:	ad031c00 	0xad031c00
    39ec:	02050101 	slti	$r1,$r8,320(0x140)
    39f0:	05750884 	0x05750884
    39f4:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    39f8:	0101000c 	fadd.d	$f12,$f0,$f0
    39fc:	05000105 	0x05000105
    3a00:	0022fc02 	mod.d	$r2,$r0,$r31
    3a04:	01b3031c 	0x01b3031c
    3a08:	84020501 	0x84020501
    3a0c:	01057508 	fmul.d	$f8,$f8,$f29
    3a10:	0c02f306 	0x0c02f306
    3a14:	05010100 	0x05010100
    3a18:	02050001 	slti	$r1,$r0,320(0x140)
    3a1c:	1c002338 	pcaddu12i	$r24,281(0x119)
    3a20:	0101dc03 	0x0101dc03
    3a24:	05f30205 	0x05f30205
    3a28:	0501060b 	0x0501060b
    3a2c:	13f30602 	addu16i.d	$r2,$r16,-831(0xfcc1)
    3a30:	75081313 	0x75081313
    3a34:	01060905 	0x01060905
    3a38:	83060205 	0x83060205
    3a3c:	01060805 	0x01060805
    3a40:	4b060205 	0x4b060205
    3a44:	01060905 	0x01060905
    3a48:	4b060205 	0x4b060205
    3a4c:	060d054c 	cacop	0xc,$r10,833(0x341)
    3a50:	4a020501 	bcnez	$fcc0,393732(0x60204) # 63c54 <_start-0x1bf9c3ac>
    3a54:	02002505 	slti	$r5,$r8,9(0x9)
    3a58:	054a0204 	0x054a0204
    3a5c:	04020002 	csrrd	$r2,0x80
    3a60:	03054a01 	lu52i.d	$r1,$r16,338(0x152)
    3a64:	0d058406 	0x0d058406
    3a68:	17050106 	lu32i.d	$r6,-514040(0x82808)
    3a6c:	4a05054a 	bcnez	$fcc2,2753796(0x2a0504) # 2a3f70 <_start-0x1bd5c090>
    3a70:	4c060605 	jirl	$r5,$r16,1540(0x604)
    3a74:	01061305 	0x01061305
    3a78:	05f20605 	0x05f20605
    3a7c:	4a828501 	bcnez	$fcc0,426628(0x68284) # 6bd00 <_start-0x1bf94300>
    3a80:	01000802 	0x01000802
    3a84:	00010501 	0x00010501
    3a88:	00000205 	0x00000205
    3a8c:	f1030000 	0xf1030000
    3a90:	02050101 	slti	$r1,$r8,320(0x140)
    3a94:	0105bb83 	0x0105bb83
    3a98:	0c024b06 	0x0c024b06
    3a9c:	05010100 	0x05010100
    3aa0:	02050001 	slti	$r1,$r0,320(0x140)
    3aa4:	00000000 	0x00000000
    3aa8:	0101ff03 	0x0101ff03
    3aac:	05830205 	0x05830205
    3ab0:	0501060b 	0x0501060b
    3ab4:	4bf30602 	0x4bf30602
    3ab8:	bb060105 	0xbb060105
    3abc:	01000c02 	0x01000c02
    3ac0:	00010501 	0x00010501
    3ac4:	23d00205 	sc.d	$r5,$r16,-12288(0xd000)
    3ac8:	8e031c00 	0x8e031c00
    3acc:	02050102 	slti	$r2,$r8,320(0x140)
    3ad0:	060b0584 	cacop	0x4,$r12,705(0x2c1)
    3ad4:	06020501 	cacop	0x1,$r8,129(0x81)
    3ad8:	060905f3 	cacop	0x13,$r15,577(0x241)
    3adc:	06020501 	cacop	0x1,$r8,129(0x81)
    3ae0:	06010583 	cacop	0x3,$r12,65(0x41)
    3ae4:	000c024c 	bytepick.d	$r12,$r18,$r0,0x0
    3ae8:	01050101 	fmul.d	$f1,$f8,$f0
    3aec:	00020500 	0x00020500
    3af0:	031c0024 	lu52i.d	$r4,$r1,1792(0x700)
    3af4:	0501029f 	0x0501029f
    3af8:	13138305 	addu16i.d	$r5,$r24,-15136(0xc4e0)
    3afc:	06130513 	cacop	0x13,$r8,1217(0x4c1)
    3b00:	06050501 	cacop	0x1,$r8,321(0x141)
    3b04:	060f05bb 	cacop	0x1b,$r13,961(0x3c1)
    3b08:	06050501 	cacop	0x1,$r8,321(0x141)
    3b0c:	060e054b 	cacop	0xb,$r10,897(0x381)
    3b10:	06050501 	cacop	0x1,$r8,321(0x141)
    3b14:	060d05f3 	cacop	0x13,$r15,833(0x341)
    3b18:	06020501 	cacop	0x1,$r8,129(0x81)
    3b1c:	054a0683 	0x054a0683
    3b20:	0c02bf01 	0x0c02bf01
    3b24:	05010100 	0x05010100
    3b28:	02050001 	slti	$r1,$r0,320(0x140)
    3b2c:	1c00244c 	pcaddu12i	$r12,290(0x122)
    3b30:	0102b703 	fsub.s	$f3,$f24,$f13
    3b34:	05130205 	0x05130205
    3b38:	0501060b 	0x0501060b
    3b3c:	05f30602 	0x05f30602
    3b40:	05010608 	0x05010608
    3b44:	0402bb01 	csrxchg	$r1,$r24,0xae
    3b48:	05010100 	0x05010100
    3b4c:	02050001 	slti	$r1,$r0,320(0x140)
    3b50:	1c00246c 	pcaddu12i	$r12,291(0x123)
    3b54:	0102c503 	fsub.s	$f3,$f8,$f17
    3b58:	05830505 	0x05830505
    3b5c:	05010615 	0x05010615
    3b60:	0505ba0e 	0x0505ba0e
    3b64:	11054b06 	addu16i.d	$r6,$r24,16722(0x4152)
    3b68:	1c050106 	pcaddu12i	$r6,10248(0x2808)
    3b6c:	820e054a 	0x820e054a
    3b70:	83060505 	0x83060505
    3b74:	03060105 	lu52i.d	$r5,$r8,384(0x180)
    3b78:	0a05f212 	0x0a05f212
    3b7c:	ba700306 	0xba700306
    3b80:	05bb0d05 	0x05bb0d05
    3b84:	05010619 	0x05010619
    3b88:	05bb060d 	0x05bb060d
    3b8c:	0d05520a 	0x0d05520a
    3b90:	061905bb 	cacop	0x1b,$r13,1601(0x641)
    3b94:	060d0501 	cacop	0x1,$r8,833(0x341)
    3b98:	0105ad08 	0x0105ad08
    3b9c:	04021606 	csrxchg	$r6,$r16,0x85
    3ba0:	05010100 	0x05010100
    3ba4:	02050001 	slti	$r1,$r0,320(0x140)
    3ba8:	1c0024fc 	pcaddu12i	$r28,295(0x127)
    3bac:	0102e603 	fsub.s	$f3,$f16,$f25
    3bb0:	05bb0205 	0x05bb0205
    3bb4:	05010608 	0x05010608
    3bb8:	05f40605 	0x05f40605
    3bbc:	05010607 	0x05010607
    3bc0:	0c030605 	0x0c030605
    3bc4:	06080582 	cacop	0x2,$r12,513(0x201)
    3bc8:	06020501 	cacop	0x1,$r8,129(0x81)
    3bcc:	05821d03 	0x05821d03
    3bd0:	4a010605 	0x4a010605
    3bd4:	4f060305 	jirl	$r5,$r24,-64000(0x30600)
    3bd8:	01060b05 	0x01060b05
    3bdc:	f5060205 	0xf5060205
    3be0:	01060a05 	0x01060a05
    3be4:	05f30105 	0x05f30105
    3be8:	50030609 	b	-131857660(0x8240304) # f8243eec <_RAM_DATA+0x78242eec>
    3bec:	060c05f2 	cacop	0x12,$r15,769(0x301)
    3bf0:	820b0501 	0x820b0501
    3bf4:	4d060405 	jirl	$r5,$r0,67076(0x10604)
    3bf8:	01060c05 	0x01060c05
    3bfc:	05f20a05 	0x05f20a05
    3c00:	054b0604 	0x054b0604
    3c04:	0305bc0d 	lu52i.d	$r13,$r0,367(0x16f)
    3c08:	13134fc0 	addu16i.d	$r0,$r30,-15149(0xc4d3)
    3c0c:	06150514 	cacop	0x14,$r8,1345(0x541)
    3c10:	ba130501 	0xba130501
    3c14:	4b060305 	0x4b060305
    3c18:	0f060705 	0x0f060705
    3c1c:	054d0905 	0x054d0905
    3c20:	054d0605 	0x054d0605
    3c24:	4a01060f 	0x4a01060f
    3c28:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 17422c <_start-0x1be8bdd4>
    3c2c:	01060a05 	0x01060a05
    3c30:	51060405 	b	1377796(0x150604) # 154234 <_start-0x1beabdcc>
    3c34:	01061605 	0x01061605
    3c38:	05ba1405 	0x05ba1405
    3c3c:	4a750309 	0x4a750309
    3c40:	0604054a 	cacop	0xa,$r10,257(0x101)
    3c44:	060a054b 	cacop	0xb,$r10,641(0x281)
    3c48:	06040501 	cacop	0x1,$r8,257(0x101)
    3c4c:	06060583 	cacop	0x3,$r12,385(0x181)
    3c50:	060b0501 	cacop	0x1,$r8,705(0x2c1)
    3c54:	060d0585 	cacop	0x5,$r12,833(0x341)
    3c58:	06050501 	cacop	0x1,$r8,321(0x141)
    3c5c:	0f05134b 	0x0f05134b
    3c60:	054a0106 	0x054a0106
    3c64:	0505810a 	0x0505810a
    3c68:	0f058506 	0x0f058506
    3c6c:	0c020106 	0x0c020106
    3c70:	05010100 	0x05010100
    3c74:	02050001 	slti	$r1,$r0,320(0x140)
    3c78:	1c00260c 	pcaddu12i	$r12,304(0x130)
    3c7c:	01039e03 	0x01039e03
    3c80:	4b830505 	bcnez	$fcc0,1540868(0x178304) # 17bf84 <_start-0x1be8407c>
    3c84:	060105bb 	cacop	0x1b,$r13,65(0x41)
    3c88:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    3c8c:	Address 0x0000000000003c8c is out of bounds.


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
     100:	014909de 	0x014909de
     104:	a3090000 	0xa3090000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237 (discriminator 3)
     108:	05000002 	0x05000002
     10c:	008f14e0 	bstrins.d	$r0,$r7,0xf,0x5
     110:	09000000 	0x09000000
     114:	000000e6 	0x000000e6
     118:	8f14e105 	0x8f14e105
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:238 (discriminator 3)
     11c:	01000000 	0x01000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:239 (discriminator 3)
     120:	0000b109 	0x0000b109
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 1)
     124:	14e20500 	lu12i.w	$r0,462888(0x71028)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242
     128:	0000008f 	0x0000008f
     12c:	434c0a02 	beqz	$r16,740360(0xb4c08) # b4d34 <_start-0x1bf4b2cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:242 (discriminator 3)
     130:	e3050052 	0xe3050052
     134:	00008f14 	0x00008f14
     138:	8a090300 	0x8a090300
     13c:	05000001 	0x05000001
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	008f14e4 	bstrins.d	$r4,$r7,0xf,0x5
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	0a040000 	0x0a040000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	0052534c 	0x0052534c
     14c:	8f14e505 	0x8f14e505
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	05000000 	0x05000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	0000be09 	0x0000be09
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	14e60500 	lu12i.w	$r0,471080(0x73028)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	0000008f 	0x0000008f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	02b50906 	addi.w	$r6,$r8,-702(0xd42)
     164:	e7050000 	0xe7050000
     168:	00008f14 	0x00008f14
     16c:	03000700 	lu52i.d	$r0,$r24,1(0x1)
     170:	000000ef 	0x000000ef
     174:	d703e905 	0xd703e905
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
     abc:	de05080a 	0xde05080a
     ac0:	0001b609 	0x0001b609
     ac4:	02a30b00 	addi.w	$r0,$r24,-1854(0x8c2)
     ac8:	e0050000 	0xe0050000
     acc:	00009b14 	0x00009b14
     ad0:	e60b0000 	0xe60b0000
     ad4:	05000000 	0x05000000
     ad8:	009b14e1 	bstrins.d	$r1,$r7,0x1b,0x5
     adc:	0b010000 	0x0b010000
     ae0:	000000b1 	0x000000b1
     ae4:	9b14e205 	0x9b14e205
     ae8:	02000000 	slti	$r0,$r0,0
     aec:	52434c0c 	b	3294028(0x32434c) # 324e38 <_start-0x1bcdb1c8>
     af0:	14e30500 	lu12i.w	$r0,464936(0x71828)
     af4:	0000009b 	0x0000009b
     af8:	018a0b03 	0x018a0b03
     afc:	e4050000 	0xe4050000
     b00:	00009b14 	0x00009b14
     b04:	4c0c0400 	jirl	$r0,$r0,3076(0xc04)
     b08:	05005253 	0x05005253
     b0c:	009b14e5 	bstrins.d	$r5,$r7,0x1b,0x5
     b10:	0b050000 	0x0b050000
     b14:	000000be 	0x000000be
     b18:	9b14e605 	0x9b14e605
     b1c:	06000000 	cacop	0x0,$r0,0
     b20:	0002b50b 	0x0002b50b
     b24:	14e70500 	lu12i.w	$r0,473128(0x73828)
     b28:	0000009b 	0x0000009b
     b2c:	ef030007 	0xef030007
     b30:	05000000 	0x05000000
     b34:	014403e9 	0x014403e9
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
    1b4c:	01230510 	0x01230510
    1b50:	00015e09 	0x00015e09
    1b54:	09360a00 	0x09360a00
    1b58:	25050000 	stptr.w	$r0,$r0,1280(0x500)
    1b5c:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b60:	0a000000 	0x0a000000
    1b64:	00000a61 	0x00000a61
    1b68:	0c012605 	0x0c012605
    1b6c:	00000077 	0x00000077
    1b70:	09110a04 	vfmadd.s	$vr4,$vr16,$vr2,$vr2
    1b74:	27050000 	stptr.d	$r0,$r0,1280(0x500)
    1b78:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b7c:	0a080000 	0x0a080000
    1b80:	0000097c 	0x0000097c
    1b84:	0c012805 	0x0c012805
    1b88:	00000077 	0x00000077
    1b8c:	3f0b000c 	0x3f0b000c
    1b90:	05000009 	0x05000009
    1b94:	1b030129 	pcalau12i	$r9,-518135(0x81809)
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
    1ea8:	3e057407 	0x3e057407
    1eac:	00023d09 	0x00023d09
    1eb0:	0b6a0800 	0x0b6a0800
    1eb4:	40050000 	beqz	$r0,1280(0x500) # 23b4 <_start-0x1bffdc4c>
    1eb8:	00008315 	0x00008315
    1ebc:	e6080000 	0xe6080000
    1ec0:	0500000a 	0x0500000a
    1ec4:	00831541 	bstrins.d	$r1,$r10,0x3,0x5
    1ec8:	08040000 	0x08040000
    1ecc:	00000b64 	0x00000b64
    1ed0:	83154205 	0x83154205
    1ed4:	08000000 	0x08000000
    1ed8:	000aed08 	0x000aed08
    1edc:	15430500 	lu12i.w	$r0,-387032(0xa1828)
    1ee0:	00000083 	0x00000083
    1ee4:	071d080c 	0x071d080c
    1ee8:	44050000 	bnez	$r0,1280(0x500) # 23e8 <_start-0x1bffdc18>
    1eec:	00008315 	0x00008315
    1ef0:	24081000 	ldptr.w	$r0,$r0,2064(0x810)
    1ef4:	05000007 	0x05000007
    1ef8:	00831545 	bstrins.d	$r5,$r10,0x3,0x5
    1efc:	08140000 	fmadd.s	$f0,$f0,$f0,$f8
    1f00:	0000072b 	0x0000072b
    1f04:	83154605 	0x83154605
    1f08:	18000000 	pcaddi	$r0,0
    1f0c:	00073208 	alsl.wu	$r8,$r16,$r12,0x3
    1f10:	15470500 	lu12i.w	$r0,-378840(0xa3828)
    1f14:	00000083 	0x00000083
    1f18:	0be1081c 	0x0be1081c
    1f1c:	48050000 	bceqz	$fcc0,1280(0x500) # 241c <_start-0x1bffdbe4>
    1f20:	00008315 	0x00008315
    1f24:	61082000 	blt	$r0,$r0,67616(0x10820) # 12744 <_start-0x1bfed8bc>
    1f28:	0500000a 	0x0500000a
    1f2c:	00831549 	bstrins.d	$r9,$r10,0x3,0x5
    1f30:	08240000 	fmadd.d	$f0,$f0,$f0,$f8
    1f34:	00000911 	0x00000911
    1f38:	83154a05 	0x83154a05
    1f3c:	28000000 	ld.b	$r0,$r0,0
    1f40:	00097c08 	bytepick.w	$r8,$r0,$r31,0x2
    1f44:	154b0500 	lu12i.w	$r0,-370648(0xa5828)
    1f48:	00000083 	0x00000083
    1f4c:	0bd9082c 	0x0bd9082c
    1f50:	4c050000 	jirl	$r0,$r0,1280(0x500)
    1f54:	00008315 	0x00008315
    1f58:	dd083000 	0xdd083000
    1f5c:	0500000a 	0x0500000a
    1f60:	0083154d 	bstrins.d	$r13,$r10,0x3,0x5
    1f64:	08340000 	0x08340000
    1f68:	00000b73 	0x00000b73
    1f6c:	83154e05 	0x83154e05
    1f70:	38000000 	ldx.b	$r0,$r0,$r0
    1f74:	000b8708 	0x000b8708
    1f78:	154f0500 	lu12i.w	$r0,-362456(0xa7828)
    1f7c:	00000083 	0x00000083
    1f80:	0789083c 	0x0789083c
    1f84:	50050000 	b	1280(0x500) # 2484 <_start-0x1bffdb7c>
    1f88:	00008315 	0x00008315
    1f8c:	34084000 	0x34084000
    1f90:	05000008 	0x05000008
    1f94:	00831551 	bstrins.d	$r17,$r10,0x3,0x5
    1f98:	08440000 	0x08440000
    1f9c:	0000075f 	0x0000075f
    1fa0:	83155205 	0x83155205
    1fa4:	48000000 	bceqz	$fcc0,0 # 1fa4 <_start-0x1bffe05c>
    1fa8:	000b9508 	0x000b9508
    1fac:	15530500 	lu12i.w	$r0,-354264(0xa9828)
    1fb0:	00000083 	0x00000083
    1fb4:	082b084c 	fmadd.d	$f12,$f2,$f2,$f22
    1fb8:	54050000 	bl	1280(0x500) # 24b8 <_start-0x1bffdb48>
    1fbc:	00008315 	0x00008315
    1fc0:	4f085000 	jirl	$r0,$r0,-63408(0x30850)
    1fc4:	05000007 	0x05000007
    1fc8:	00831555 	bstrins.d	$r21,$r10,0x3,0x5
    1fcc:	08540000 	fmsub.s	$f0,$f0,$f0,$f8
    1fd0:	000007fd 	0x000007fd
    1fd4:	83155605 	0x83155605
    1fd8:	58000000 	beq	$r0,$r0,0 # 1fd8 <_start-0x1bffe028>
    1fdc:	000b9f08 	0x000b9f08
    1fe0:	15570500 	lu12i.w	$r0,-346072(0xab828)
    1fe4:	00000083 	0x00000083
    1fe8:	0afd085c 	0x0afd085c
    1fec:	58050000 	beq	$r0,$r0,1280(0x500) # 24ec <_start-0x1bffdb14>
    1ff0:	00008315 	0x00008315
    1ff4:	04086000 	csrrd	$r0,0x218
    1ff8:	0500000b 	0x0500000b
    1ffc:	00831559 	bstrins.d	$r25,$r10,0x3,0x5
    2000:	08640000 	fmsub.d	$f0,$f0,$f0,$f8
    2004:	00000b7d 	0x00000b7d
    2008:	83155a05 	0x83155a05
    200c:	68000000 	bltu	$r0,$r0,0 # 200c <_start-0x1bffdff4>
    2010:	000b8c08 	0x000b8c08
    2014:	155b0500 	lu12i.w	$r0,-337880(0xad828)
    2018:	00000083 	0x00000083
    201c:	0af5086c 	0x0af5086c
    2020:	5c050000 	bne	$r0,$r0,1280(0x500) # 2520 <_start-0x1bffdae0>
    2024:	00008315 	0x00008315
    2028:	03007000 	lu52i.d	$r0,$r0,28(0x1c)
    202c:	00000ba9 	0x00000ba9
    2030:	ba035d05 	0xba035d05
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
    23c0:	dd000054 	0xdd000054
    23c4:	04000000 	csrrd	$r0,0x0
    23c8:	000c0e00 	bytepick.d	$r0,$r16,$r3,0x0
    23cc:	96010400 	0x96010400
    23d0:	0c000001 	0x0c000001
    23d4:	00000d3f 	0x00000d3f
    23d8:	00000056 	0x00000056
    23dc:	00000240 	0x00000240
    23e0:	00000000 	0x00000000
    23e4:	0000228f 	clo.d	$r15,$r20
    23e8:	69060102 	bltu	$r8,$r2,67072(0x10600) # 129e8 <_start-0x1bfed618>
    23ec:	02000002 	slti	$r2,$r0,0
    23f0:	02670801 	sltui	$r1,$r0,-1598(0x9c2)
    23f4:	02020000 	slti	$r0,$r0,128(0x80)
    23f8:	00027505 	0x00027505
    23fc:	07020200 	0x07020200
    2400:	00000158 	0x00000158
    2404:	01050402 	fmul.d	$f2,$f0,$f1
    2408:	03000001 	lu52i.d	$r1,$r0,0
    240c:	00000131 	0x00000131
    2410:	54194102 	bl	67639616(0x4081940) # 4083d50 <_start-0x17f7c2b0>
    2414:	02000000 	slti	$r0,$r0,0
    2418:	00d40704 	bstrpick.d	$r4,$r24,0x14,0x1
    241c:	08020000 	0x08020000
    2420:	0000fc05 	0x0000fc05
    2424:	07080200 	0x07080200
    2428:	000000cf 	0x000000cf
    242c:	69050404 	bltu	$r0,$r4,66820(0x10504) # 12930 <_start-0x1bfed6d0>
    2430:	0200746e 	slti	$r14,$r3,29(0x1d)
    2434:	00d90704 	bstrpick.d	$r4,$r24,0x19,0x1
    2438:	33030000 	0x33030000
    243c:	03000001 	lu52i.d	$r1,$r0,0
    2440:	00481420 	0x00481420
    2444:	04020000 	csrrd	$r0,0x80
    2448:	00026104 	0x00026104
    244c:	06010200 	cacop	0x0,$r16,64(0x40)
    2450:	00000270 	0x00000270
    2454:	00029a05 	0x00029a05
    2458:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    245c:	00000077 	0x00000077
    2460:	00011405 	0x00011405
    2464:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    2468:	00000077 	0x00000077
    246c:	00025005 	0x00025005
    2470:	0c6d0400 	0x0c6d0400
    2474:	00000069 	0x00000069
    2478:	000d3706 	bytepick.d	$r6,$r24,$r13,0x2
    247c:	05040100 	0x05040100
    2480:	00000069 	0x00000069
    2484:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
    2488:	00000034 	0x00000034
    248c:	63079c01 	blt	$r0,$r1,-63588(0x3079c) # ffff2c28 <_RAM_DATA+0x7fff1c28>
    2490:	0100746e 	0x0100746e
    2494:	00690906 	bstrins.w	$r6,$r8,0x9,0x2
    2498:	14ad0000 	lu12i.w	$r0,354304(0x56800)
    249c:	14a90000 	lu12i.w	$r0,346112(0x54800)
    24a0:	00000000 	0x00000000
    24a4:	000000dd 	0x000000dd
    24a8:	0c8a0004 	0x0c8a0004
    24ac:	01040000 	0x01040000
    24b0:	00000196 	0x00000196
    24b4:	000d9b0c 	bytepick.d	$r12,$r24,$r6,0x3
    24b8:	00005600 	bitrev.d	$r0,$r16
    24bc:	00025000 	0x00025000
    24c0:	00000000 	0x00000000
    24c4:	0024be00 	crc.w.h.w	$r0,$r16,$r15
    24c8:	06010200 	cacop	0x0,$r16,64(0x40)
    24cc:	00000269 	0x00000269
    24d0:	67080102 	bge	$r8,$r2,-63488(0x30800) # ffff2cd0 <_RAM_DATA+0x7fff1cd0>
    24d4:	02000002 	slti	$r2,$r0,0
    24d8:	02750502 	sltui	$r2,$r8,-703(0xd41)
    24dc:	02020000 	slti	$r0,$r0,128(0x80)
    24e0:	00015807 	0x00015807
    24e4:	05040200 	0x05040200
    24e8:	00000101 	0x00000101
    24ec:	00013103 	0x00013103
    24f0:	19410200 	pcaddi	$r0,-391152(0xa0810)
    24f4:	00000054 	0x00000054
    24f8:	d4070402 	0xd4070402
    24fc:	02000000 	slti	$r0,$r0,0
    2500:	00fc0508 	bstrpick.d	$r8,$r8,0x3c,0x1
    2504:	08020000 	0x08020000
    2508:	0000cf07 	0x0000cf07
    250c:	05040400 	0x05040400
    2510:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
    2514:	d9070402 	0xd9070402
    2518:	03000000 	lu52i.d	$r0,$r0,0
    251c:	00000133 	0x00000133
    2520:	48142003 	bceqz	$fcc0,791584(0xc1420) # c3940 <_start-0x1bf3c6c0>
    2524:	02000000 	slti	$r0,$r0,0
    2528:	02610404 	sltui	$r4,$r0,-1983(0x841)
    252c:	01020000 	0x01020000
    2530:	00027006 	0x00027006
    2534:	029a0500 	addi.w	$r0,$r8,1665(0x681)
    2538:	69040000 	bltu	$r0,$r0,66560(0x10400) # 12938 <_start-0x1bfed6c8>
    253c:	00007711 	0x00007711
    2540:	01140500 	fabs.s	$f0,$f8
    2544:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff2944 <_RAM_DATA+0x7fff1944>
    2548:	00007711 	0x00007711
    254c:	02500500 	sltui	$r0,$r8,1025(0x401)
    2550:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 12950 <_start-0x1bfed6b0>
    2554:	0000690c 	rdtime.d	$r12,$r8
    2558:	0d920600 	0x0d920600
    255c:	04010000 	csrrd	$r0,0x40
    2560:	00006905 	rdtime.d	$r5,$r8
    2564:	0019d400 	sra.d	$r0,$r0,$r21
    2568:	0000341c 	revb.4h	$r28,$r0
    256c:	079c0100 	0x079c0100
    2570:	00746e63 	bstrins.w	$r3,$r19,0x14,0x1b
    2574:	69090601 	bltu	$r16,$r1,67844(0x10904) # 12e78 <_start-0x1bfed188>
    2578:	d0000000 	0xd0000000
    257c:	cc000014 	0xcc000014
    2580:	00000014 	0x00000014
    2584:	0009c800 	bytepick.w	$r0,$r0,$r18,0x3
    2588:	06000400 	cacop	0x0,$r0,1(0x1)
    258c:	0400000d 	csrrd	$r13,0x0
    2590:	00019601 	0x00019601
    2594:	0e190c00 	0x0e190c00
    2598:	00560000 	0x00560000
    259c:	02600000 	sltui	$r0,$r0,-2048(0x800)
    25a0:	00000000 	0x00000000
    25a4:	26ee0000 	ldptr.d	$r0,$r0,-4608(0xee00)
    25a8:	01020000 	0x01020000
    25ac:	00026906 	0x00026906
    25b0:	08010200 	0x08010200
    25b4:	00000267 	0x00000267
    25b8:	75050202 	xvssrln.hu.w	$xr2,$xr16,$xr0
    25bc:	02000002 	slti	$r2,$r0,0
    25c0:	01580702 	0x01580702
    25c4:	e9030000 	0xe9030000
    25c8:	0200000e 	slti	$r14,$r0,0
    25cc:	004d183f 	rotri.d	$r31,$r1,0x6
    25d0:	04020000 	csrrd	$r0,0x80
    25d4:	00010105 	0x00010105
    25d8:	01310300 	0x01310300
    25dc:	41020000 	beqz	$r0,66048(0x10200) # 127dc <_start-0x1bfed824>
    25e0:	00006019 	rdtimel.w	$r25,$r0
    25e4:	07040200 	0x07040200
    25e8:	000000d4 	0x000000d4
    25ec:	fc050802 	0xfc050802
    25f0:	02000000 	slti	$r0,$r0,0
    25f4:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    25f8:	04040000 	csrrd	$r0,0x100
    25fc:	746e6905 	0x746e6905
    2600:	00750500 	bstrins.w	$r0,$r8,0x15,0x1
    2604:	04020000 	csrrd	$r0,0x80
    2608:	0000d907 	0x0000d907
    260c:	0eeb0300 	0x0eeb0300
    2610:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
    2614:	00004113 	revh.2w	$r19,$r8
    2618:	01330300 	0x01330300
    261c:	20030000 	ll.w	$r0,$r0,768(0x300)
    2620:	00005414 	bitrev.d	$r20,$r0
    2624:	04040200 	csrxchg	$r0,$r16,0x100
    2628:	00000261 	0x00000261
    262c:	70060102 	vslt.b	$vr2,$vr8,$vr0
    2630:	06000002 	cacop	0x2,$r0,0
    2634:	000000a7 	0x000000a7
    2638:	00029a07 	0x00029a07
    263c:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    2640:	00000094 	0x00000094
    2644:	00011407 	0x00011407
    2648:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    264c:	00000094 	0x00000094
    2650:	00025007 	0x00025007
    2654:	0c6d0400 	0x0c6d0400
    2658:	00000075 	0x00000075
    265c:	000ecc08 	bytepick.d	$r8,$r0,$r19,0x5
    2660:	2e011000 	0x2e011000
    2664:	0001190f 	0x0001190f
    2668:	0e970900 	0x0e970900
    266c:	2f010000 	0x2f010000
    2670:	0001190e 	0x0001190e
    2674:	a7090000 	0xa7090000
    2678:	0100000e 	0x0100000e
    267c:	013b0830 	0x013b0830
    2680:	09040000 	0x09040000
    2684:	00000e0d 	0x00000e0d
    2688:	190e3101 	pcaddi	$r1,-495224(0x87188)
    268c:	08000001 	0x08000001
    2690:	000ede09 	bytepick.d	$r9,$r16,$r23,0x5
    2694:	0e320100 	0x0e320100
    2698:	00000119 	0x00000119
    269c:	040a000c 	csrrd	$r12,0x280
    26a0:	000000ae 	0x000000ae
    26a4:	0000750b 	0x0000750b
    26a8:	00013300 	asrtle.d	$r24,$r12
    26ac:	00750c00 	bstrins.w	$r0,$r0,0x15,0x3
    26b0:	330c0000 	0x330c0000
    26b4:	00000001 	0x00000001
    26b8:	0139040a 	0x0139040a
    26bc:	040d0000 	csrrd	$r0,0x340
    26c0:	011f040a 	0x011f040a
    26c4:	d70e0000 	0xd70e0000
    26c8:	51000000 	b	65536(0x10000) # 126c8 <_start-0x1bfed938>
    26cc:	0f000001 	0x0f000001
    26d0:	00000081 	0x00000081
    26d4:	6310001d 	blt	$r0,$r29,-61440(0x31000) # ffff36d4 <_RAM_DATA+0x7fff26d4>
    26d8:	0100646d 	0x0100646d
    26dc:	01410333 	0x01410333
    26e0:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    26e4:	00000000 	0x00000000
    26e8:	00017e0e 	0x00017e0e
    26ec:	00017300 	asrtle.d	$r24,$r28
    26f0:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    26f4:	001f0000 	mulw.d.w	$r0,$r0,$r0
    26f8:	00016306 	0x00016306
    26fc:	83040a00 	0x83040a00
    2700:	06000001 	cacop	0x1,$r0,0
    2704:	00000178 	0x00000178
    2708:	0dfd1211 	0x0dfd1211
    270c:	17050000 	lu32i.d	$r0,-514048(0x82800)
    2710:	0001730f 	0x0001730f
    2714:	00030500 	0x00030500
    2718:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
    271c:	00000def 	0x00000def
    2720:	730f3d05 	0x730f3d05
    2724:	05000001 	0x05000001
    2728:	002ce803 	alsl.d	$r3,$r0,$r26,0x2
    272c:	0e13121c 	0x0e13121c
    2730:	4e050000 	jirl	$r0,$r0,-129792(0x20500)
    2734:	00007c0e 	0x00007c0e
    2738:	00030500 	0x00030500
    273c:	13800000 	addu16i.d	$r0,$r0,-8192(0xe000)
    2740:	00000eb1 	0x00000eb1
    2744:	0601ff01 	cacop	0x1,$r24,127(0x7f)
    2748:	1c001b90 	pcaddu12i	$r16,220(0xdc)
    274c:	00000028 	0x00000028
    2750:	01db9c01 	0x01db9c01
    2754:	ac140000 	0xac140000
    2758:	5f1c001b 	bne	$r0,$r27,-58368(0x31c00) # ffff4358 <_RAM_DATA+0x7fff3358>
    275c:	00000009 	0x00000009
    2760:	000e7415 	bytepick.d	$r21,$r0,$r29,0x4
    2764:	01ee0100 	0x01ee0100
    2768:	00007505 	0x00007505
    276c:	001b2400 	rotr.w	$r0,$r0,$r9
    2770:	00006c1c 	cpucfg	$r28,$r0
    2774:	009c0100 	bstrins.d	$r0,$r8,0x1c,0x0
    2778:	14000002 	lu12i.w	$r2,0
    277c:	1c001b30 	pcaddu12i	$r16,217(0xd9)
    2780:	00000200 	0x00000200
    2784:	0e811500 	0x0e811500
    2788:	d2010000 	0xd2010000
    278c:	00750501 	bstrins.w	$r1,$r8,0x15,0x1
    2790:	1a080000 	pcalau12i	$r0,16384(0x4000)
    2794:	011c1c00 	0x011c1c00
    2798:	9c010000 	0x9c010000
    279c:	00000309 	0x00000309
    27a0:	001a2816 	0x001a2816
    27a4:	0000281c 	cto.d	$r28,$r0
    27a8:	00023c00 	0x00023c00
    27ac:	00641700 	bstrins.w	$r0,$r24,0x4,0x5
    27b0:	0201d601 	slti	$r1,$r16,117(0x75)
    27b4:	00000081 	0x00000081
    27b8:	000014f5 	clz.w	$r21,$r7
    27bc:	000014ef 	clz.w	$r15,$r7
    27c0:	1aa81600 	pcalau12i	$r0,344240(0x540b0)
    27c4:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
    27c8:	025d0000 	sltui	$r0,$r0,1856(0x740)
    27cc:	64170000 	bge	$r0,$r0,5888(0x1700) # 3ecc <_start-0x1bffc134>
    27d0:	01db0100 	0x01db0100
    27d4:	00008103 	0x00008103
    27d8:	00152b00 	or	$r0,$r24,$r10
    27dc:	00152300 	or	$r0,$r24,$r8
    27e0:	e0160000 	0xe0160000
    27e4:	281c001a 	ld.b	$r26,$r0,1792(0x700)
    27e8:	7e000000 	0x7e000000
    27ec:	17000002 	lu32i.d	$r2,-524288(0x80000)
    27f0:	e2010064 	0xe2010064
    27f4:	00810301 	bstrins.d	$r1,$r24,0x1,0x0
    27f8:	15680000 	lu12i.w	$r0,-311296(0xb4000)
    27fc:	15620000 	lu12i.w	$r0,-323584(0xb1000)
    2800:	16000000 	lu32i.d	$r0,0
    2804:	1c001a74 	pcaddu12i	$r20,211(0xd3)
    2808:	00000028 	0x00000028
    280c:	0000029f 	0x0000029f
    2810:	01006417 	0x01006417
    2814:	810201e7 	0x810201e7
    2818:	9c000000 	0x9c000000
    281c:	94000015 	0x94000015
    2820:	00000015 	0x00000015
    2824:	001a1814 	0x001a1814
    2828:	00096b1c 	bytepick.w	$r28,$r24,$r26,0x2
    282c:	1a541400 	pcalau12i	$r0,172192(0x2a0a0)
    2830:	09771c00 	0x09771c00
    2834:	60140000 	blt	$r0,$r0,5120(0x1400) # 3c34 <_start-0x1bffc3cc>
    2838:	831c001a 	0x831c001a
    283c:	18000009 	pcaddi	$r9,0
    2840:	1c001a74 	pcaddu12i	$r20,211(0xd3)
    2844:	0000098f 	0x0000098f
    2848:	000002d1 	0x000002d1
    284c:	05540119 	0x05540119
    2850:	00290c03 	0x00290c03
    2854:	a818001c 	0xa818001c
    2858:	8f1c001a 	0x8f1c001a
    285c:	e8000009 	0xe8000009
    2860:	19000002 	pcaddi	$r2,-524288(0x80000)
    2864:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2868:	1c0028d4 	pcaddu12i	$r20,326(0x146)
    286c:	1ae01800 	pcalau12i	$r0,458944(0x700c0)
    2870:	098f1c00 	0x098f1c00
    2874:	02ff0000 	addi.d	$r0,$r0,-64(0xfc0)
    2878:	01190000 	0x01190000
    287c:	f0030554 	0xf0030554
    2880:	001c0028 	mul.w	$r8,$r1,$r0
    2884:	001b0c14 	rotr.w	$r20,$r0,$r3
    2888:	00095f1c 	bytepick.w	$r28,$r24,$r23,0x2
    288c:	6c1a0000 	bgeu	$r0,$r0,6656(0x1a00) # 428c <_start-0x1bffbd74>
    2890:	0100000e 	0x0100000e
    2894:	00750580 	bstrins.w	$r0,$r12,0x15,0x1
    2898:	00000000 	0x00000000
    289c:	08780000 	0x08780000
    28a0:	9c010000 	0x9c010000
    28a4:	0000079b 	0x0000079b
    28a8:	0100631b 	0x0100631b
    28ac:	00a70782 	bstrins.d	$r2,$r28,0x27,0x1
    28b0:	15f10000 	lu12i.w	$r0,-30720(0xf8800)
    28b4:	15d30000 	lu12i.w	$r0,-92160(0xe9800)
    28b8:	8d1c0000 	0x8d1c0000
    28bc:	0100000e 	0x0100000e
    28c0:	079b0783 	0x079b0783
    28c4:	91030000 	0x91030000
    28c8:	791c7f90 	0x791c7f90
    28cc:	0100000e 	0x0100000e
    28d0:	07ab0784 	0x07ab0784
    28d4:	91030000 	0x91030000
    28d8:	6f1b7da0 	bgeu	$r13,$r0,-58500(0x31b7c) # ffff4454 <_RAM_DATA+0x7fff3454>
    28dc:	85010070 	0x85010070
    28e0:	00013b08 	0x00013b08
    28e4:	0016a200 	andn	$r0,$r16,$r8
    28e8:	0016a000 	andn	$r0,$r0,$r8
    28ec:	00701000 	bstrins.w	$r0,$r0,0x10,0x4
    28f0:	c1088601 	0xc1088601
    28f4:	03000007 	lu52i.d	$r7,$r0,0
    28f8:	1d7d8091 	pcaddu12i	$r17,-267260(0xbec04)
    28fc:	00000ed7 	0x00000ed7
    2900:	d1088701 	0xd1088701
    2904:	cf000007 	0xcf000007
    2908:	b5000016 	0xb5000016
    290c:	1b000016 	pcalau12i	$r22,-524288(0x80000)
    2910:	01007063 	0x01007063
    2914:	00330888 	0x00330888
    2918:	179c0000 	lu32i.d	$r0,-204800(0xce000)
    291c:	177e0000 	lu32i.d	$r0,-266240(0xbf000)
    2920:	691b0000 	bltu	$r0,$r0,72448(0x11b00) # 14420 <_start-0x1bfebbe0>
    2924:	0c880100 	0x0c880100
    2928:	00000033 	0x00000033
    292c:	0000189c 	cto.w	$r28,$r4
    2930:	0000184a 	cto.w	$r10,$r2
    2934:	01006a1b 	0x01006a1b
    2938:	00330f88 	0x00330f88
    293c:	1a970000 	pcalau12i	$r0,309248(0x4b800)
    2940:	1a690000 	pcalau12i	$r0,215040(0x34800)
    2944:	6b1b0000 	bltu	$r0,$r0,-58624(0x31b00) # ffff4444 <_RAM_DATA+0x7fff3444>
    2948:	12880100 	addu16i.d	$r0,$r8,-24064(0xa200)
    294c:	00000033 	0x00000033
    2950:	00001ba5 	cto.w	$r5,$r29
    2954:	00001b9f 	cto.w	$r31,$r28
    2958:	6d756e1b 	bgeu	$r16,$r27,95596(0x1756c) # 19ec4 <_start-0x1bfe613c>
    295c:	15880100 	lu12i.w	$r0,-245752(0xc4008)
    2960:	00000033 	0x00000033
    2964:	00001bd4 	cto.w	$r20,$r30
    2968:	00001bce 	cto.w	$r14,$r30
    296c:	0100681b 	0x0100681b
    2970:	00330889 	0x00330889
    2974:	1c130000 	pcaddu12i	$r0,38912(0x9800)
    2978:	1bfd0000 	pcalau12i	$r0,-6144(0xfe800)
    297c:	741b0000 	0x741b0000
    2980:	0100706d 	0x0100706d
    2984:	0075068a 	bstrins.w	$r10,$r20,0x15,0x1
    2988:	1cab0000 	pcaddu12i	$r0,350208(0x55800)
    298c:	1c950000 	pcaddu12i	$r0,305152(0x4a800)
    2990:	fa1c0000 	0xfa1c0000
    2994:	0100000e 	0x0100000e
    2998:	07d7078b 	0x07d7078b
    299c:	91030000 	0x91030000
    29a0:	411e74f0 	beqz	$r7,-4120972(0x411e74) # ffc14814 <_RAM_DATA+0x7fc13814>
    29a4:	0100000c 	0x0100000c
    29a8:	00000196 	0x00000196
    29ac:	00180000 	sra.w	$r0,$r0,$r0
    29b0:	9b000000 	0x9b000000
    29b4:	40000009 	beqz	$r0,2359296(0x240000) # 2429b4 <_start-0x1bdbd64c>
    29b8:	19000004 	pcaddi	$r4,-524288(0x80000)
    29bc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    29c0:	00000000 	0x00000000
    29c4:	00001800 	cto.w	$r0,$r0
    29c8:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    29cc:	045f0000 	csrrd	$r0,0x17c0
    29d0:	01190000 	0x01190000
    29d4:	00910d54 	bstrins.d	$r20,$r10,0x11,0x3
    29d8:	89220088 	0x89220088
    29dc:	70081c00 	vslt.bu	$vr0,$vr0,$vr7
    29e0:	0001941c 	0x0001941c
    29e4:	00000018 	0x00000018
    29e8:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    29ec:	00047200 	alsl.w	$r0,$r16,$r28,0x1
    29f0:	54011900 	bl	67109144(0x4000118) # 4002b08 <_start-0x17ffd4f8>
    29f4:	18003801 	pcaddi	$r1,448(0x1c0)
    29f8:	00000000 	0x00000000
    29fc:	000009a7 	0x000009a7
    2a00:	00000486 	0x00000486
    2a04:	02540119 	sltui	$r25,$r8,1280(0x500)
    2a08:	18002008 	pcaddi	$r8,256(0x100)
    2a0c:	00000000 	0x00000000
    2a10:	000009a7 	0x000009a7
    2a14:	00000499 	0x00000499
    2a18:	01540119 	0x01540119
    2a1c:	00140038 	nor	$r24,$r1,$r0
    2a20:	a7000000 	0xa7000000
    2a24:	18000009 	pcaddi	$r9,0
    2a28:	00000000 	0x00000000
    2a2c:	000009a7 	0x000009a7
    2a30:	000004b5 	0x000004b5
    2a34:	01540119 	0x01540119
    2a38:	00140038 	nor	$r24,$r1,$r0
    2a3c:	a7000000 	0xa7000000
    2a40:	14000009 	lu12i.w	$r9,0
    2a44:	00000000 	0x00000000
    2a48:	000009b3 	0x000009b3
    2a4c:	00000014 	0x00000014
    2a50:	0009b300 	bytepick.w	$r0,$r24,$r12,0x3
    2a54:	00001400 	clz.w	$r0,$r0
    2a58:	09b30000 	0x09b30000
    2a5c:	00180000 	sra.w	$r0,$r0,$r0
    2a60:	a7000000 	0xa7000000
    2a64:	ec000009 	0xec000009
    2a68:	19000004 	pcaddi	$r4,-524288(0x80000)
    2a6c:	38015401 	0x38015401
    2a70:	00001800 	cto.w	$r0,$r0
    2a74:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2a78:	05000000 	0x05000000
    2a7c:	01190000 	0x01190000
    2a80:	20080254 	ll.w	$r20,$r18,2048(0x800)
    2a84:	00001800 	cto.w	$r0,$r0
    2a88:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2a8c:	05130000 	0x05130000
    2a90:	01190000 	0x01190000
    2a94:	00380154 	0x00380154
    2a98:	00000018 	0x00000018
    2a9c:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2aa0:	00053200 	alsl.w	$r0,$r16,$r12,0x3
    2aa4:	54011900 	bl	67109144(0x4000118) # 4002bbc <_start-0x17ffd444>
    2aa8:	8800910d 	0x8800910d
    2aac:	00892200 	bstrins.d	$r0,$r16,0x9,0x8
    2ab0:	1c70081c 	pcaddu12i	$r28,229440(0x38040)
    2ab4:	18000194 	pcaddi	$r20,12(0xc)
    2ab8:	00000000 	0x00000000
    2abc:	000009a7 	0x000009a7
    2ac0:	00000545 	0x00000545
    2ac4:	01540119 	0x01540119
    2ac8:	00180038 	sra.w	$r24,$r1,$r0
    2acc:	a7000000 	0xa7000000
    2ad0:	59000009 	beq	$r0,$r9,65536(0x10000) # 12ad0 <_start-0x1bfed530>
    2ad4:	19000005 	pcaddi	$r5,-524288(0x80000)
    2ad8:	08025401 	0x08025401
    2adc:	00180020 	sra.w	$r0,$r1,$r0
    2ae0:	a7000000 	0xa7000000
    2ae4:	6c000009 	bgeu	$r0,$r9,0 # 2ae4 <_start-0x1bffd51c>
    2ae8:	19000005 	pcaddi	$r5,-524288(0x80000)
    2aec:	38015401 	0x38015401
    2af0:	00001400 	clz.w	$r0,$r0
    2af4:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2af8:	00180000 	sra.w	$r0,$r0,$r0
    2afc:	a7000000 	0xa7000000
    2b00:	88000009 	0x88000009
    2b04:	19000005 	pcaddi	$r5,-524288(0x80000)
    2b08:	38015401 	0x38015401
    2b0c:	00001800 	cto.w	$r0,$r0
    2b10:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2b14:	059b0000 	0x059b0000
    2b18:	01190000 	0x01190000
    2b1c:	00380154 	0x00380154
    2b20:	00000018 	0x00000018
    2b24:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2b28:	0005ba00 	alsl.w	$r0,$r16,$r14,0x4
    2b2c:	54011900 	bl	67109144(0x4000118) # 4002c44 <_start-0x17ffd3bc>
    2b30:	8800910d 	0x8800910d
    2b34:	008a2200 	bstrins.d	$r0,$r16,0xa,0x8
    2b38:	1c70081c 	pcaddu12i	$r28,229440(0x38040)
    2b3c:	18000194 	pcaddi	$r20,12(0xc)
    2b40:	00000000 	0x00000000
    2b44:	000009a7 	0x000009a7
    2b48:	000005cd 	0x000005cd
    2b4c:	01540119 	0x01540119
    2b50:	00180038 	sra.w	$r24,$r1,$r0
    2b54:	a7000000 	0xa7000000
    2b58:	e1000009 	0xe1000009
    2b5c:	19000005 	pcaddi	$r5,-524288(0x80000)
    2b60:	08025401 	0x08025401
    2b64:	00180020 	sra.w	$r0,$r1,$r0
    2b68:	a7000000 	0xa7000000
    2b6c:	f4000009 	0xf4000009
    2b70:	19000005 	pcaddi	$r5,-524288(0x80000)
    2b74:	38015401 	0x38015401
    2b78:	00001800 	cto.w	$r0,$r0
    2b7c:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2b80:	06070000 	cacop	0x0,$r0,448(0x1c0)
    2b84:	01190000 	0x01190000
    2b88:	00380154 	0x00380154
    2b8c:	00000018 	0x00000018
    2b90:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2b94:	00061b00 	alsl.wu	$r0,$r24,$r6,0x1
    2b98:	54011900 	bl	67109144(0x4000118) # 4002cb0 <_start-0x17ffd350>
    2b9c:	00200802 	div.w	$r2,$r0,$r2
    2ba0:	00000018 	0x00000018
    2ba4:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2ba8:	00062e00 	alsl.wu	$r0,$r16,$r11,0x1
    2bac:	54011900 	bl	67109144(0x4000118) # 4002cc4 <_start-0x17ffd33c>
    2bb0:	18003801 	pcaddi	$r1,448(0x1c0)
    2bb4:	00000000 	0x00000000
    2bb8:	000009a7 	0x000009a7
    2bbc:	0000064a 	0x0000064a
    2bc0:	0a540119 	xvfmsub.s	$xr25,$xr8,$xr0,$xr8
    2bc4:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    2bc8:	1c700822 	pcaddu12i	$r2,229441(0x38041)
    2bcc:	18000194 	pcaddi	$r20,12(0xc)
    2bd0:	00000000 	0x00000000
    2bd4:	000009a7 	0x000009a7
    2bd8:	00000669 	0x00000669
    2bdc:	0d540119 	vshuf.b	$vr25,$vr8,$vr0,$vr8
    2be0:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    2be4:	1c008a22 	pcaddu12i	$r2,1105(0x451)
    2be8:	941c7008 	0x941c7008
    2bec:	00180001 	sra.w	$r1,$r0,$r0
    2bf0:	a7000000 	0xa7000000
    2bf4:	88000009 	0x88000009
    2bf8:	19000006 	pcaddi	$r6,-524288(0x80000)
    2bfc:	910d5401 	0x910d5401
    2c00:	22008800 	ll.d	$r0,$r0,136(0x88)
    2c04:	081c008a 	fmadd.s	$f10,$f4,$f0,$f24
    2c08:	01941c70 	0x01941c70
    2c0c:	00001800 	cto.w	$r0,$r0
    2c10:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2c14:	069b0000 	0x069b0000
    2c18:	01190000 	0x01190000
    2c1c:	00380154 	0x00380154
    2c20:	00000018 	0x00000018
    2c24:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2c28:	0006af00 	alsl.wu	$r0,$r24,$r11,0x2
    2c2c:	54011900 	bl	67109144(0x4000118) # 4002d44 <_start-0x17ffd2bc>
    2c30:	00200802 	div.w	$r2,$r0,$r2
    2c34:	00000018 	0x00000018
    2c38:	0009a700 	bytepick.w	$r0,$r24,$r9,0x3
    2c3c:	0006c200 	alsl.wu	$r0,$r16,$r16,0x2
    2c40:	54011900 	bl	67109144(0x4000118) # 4002d58 <_start-0x17ffd2a8>
    2c44:	18003801 	pcaddi	$r1,448(0x1c0)
    2c48:	00000000 	0x00000000
    2c4c:	000009a7 	0x000009a7
    2c50:	000006d5 	0x000006d5
    2c54:	01540119 	0x01540119
    2c58:	00180038 	sra.w	$r24,$r1,$r0
    2c5c:	a7000000 	0xa7000000
    2c60:	e9000009 	0xe9000009
    2c64:	19000006 	pcaddi	$r6,-524288(0x80000)
    2c68:	08025401 	0x08025401
    2c6c:	00180020 	sra.w	$r0,$r1,$r0
    2c70:	a7000000 	0xa7000000
    2c74:	fc000009 	0xfc000009
    2c78:	19000006 	pcaddi	$r6,-524288(0x80000)
    2c7c:	38015401 	0x38015401
    2c80:	00001800 	cto.w	$r0,$r0
    2c84:	09a70000 	vfnmadd.d	$vr0,$vr0,$vr0,$vr14
    2c88:	07180000 	0x07180000
    2c8c:	01190000 	0x01190000
    2c90:	00910a54 	bstrins.d	$r20,$r18,0x11,0x2
    2c94:	08220088 	fmadd.d	$f8,$f4,$f0,$f4
    2c98:	01941c70 	0x01941c70
    2c9c:	00001800 	cto.w	$r0,$r0
    2ca0:	09bf0000 	0x09bf0000
    2ca4:	072d0000 	0x072d0000
    2ca8:	01190000 	0x01190000
    2cac:	a0910354 	0xa0910354
    2cb0:	0018007d 	sra.w	$r29,$r3,$r0
    2cb4:	bf000000 	0xbf000000
    2cb8:	44000009 	bnez	$r0,2359296(0x240000) # 242cb8 <_start-0x1bdbd348>
    2cbc:	19000007 	pcaddi	$r7,-524288(0x80000)
    2cc0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2cc4:	00000000 	0x00000000
    2cc8:	00001800 	cto.w	$r0,$r0
    2ccc:	09bf0000 	0x09bf0000
    2cd0:	07590000 	0x07590000
    2cd4:	01190000 	0x01190000
    2cd8:	a0910354 	0xa0910354
    2cdc:	001f007d 	mulw.d.w	$r29,$r3,$r0
    2ce0:	70000000 	vseq.b	$vr0,$vr0,$vr0
    2ce4:	19000007 	pcaddi	$r7,-524288(0x80000)
    2ce8:	87025401 	0x87025401
    2cec:	55011900 	bl	67174680(0x4010118) # 4012e04 <_start-0x17fed1fc>
    2cf0:	7d809103 	0x7d809103
    2cf4:	00001800 	cto.w	$r0,$r0
    2cf8:	09bf0000 	0x09bf0000
    2cfc:	07870000 	0x07870000
    2d00:	01190000 	0x01190000
    2d04:	00030554 	0x00030554
    2d08:	00000000 	0x00000000
    2d0c:	00000020 	0x00000020
    2d10:	00099b00 	bytepick.w	$r0,$r24,$r6,0x3
    2d14:	54011900 	bl	67109144(0x4000118) # 4002e2c <_start-0x17ffd1d4>
    2d18:	00000305 	0x00000305
    2d1c:	00000000 	0x00000000
    2d20:	0000a70e 	0x0000a70e
    2d24:	0007ab00 	alsl.wu	$r0,$r24,$r10,0x4
    2d28:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2d2c:	004f0000 	0x004f0000
    2d30:	0000a70e 	0x0000a70e
    2d34:	0007c100 	alsl.wu	$r0,$r8,$r16,0x4
    2d38:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2d3c:	0f070000 	0x0f070000
    2d40:	00000081 	0x00000081
    2d44:	d10e001d 	0xd10e001d
    2d48:	d1000007 	0xd1000007
    2d4c:	0f000007 	0x0f000007
    2d50:	00000081 	0x00000081
    2d54:	040a0007 	csrrd	$r7,0x280
    2d58:	000000a7 	0x000000a7
    2d5c:	0000a70e 	0x0000a70e
    2d60:	0007ed00 	alsl.wu	$r0,$r8,$r27,0x4
    2d64:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2d68:	0f0c0000 	0x0f0c0000
    2d6c:	00000081 	0x00000081
    2d70:	9f1a004f 	0x9f1a004f
    2d74:	0100000e 	0x0100000e
    2d78:	00750559 	bstrins.w	$r25,$r10,0x15,0x1
    2d7c:	00000000 	0x00000000
    2d80:	01400000 	0x01400000
    2d84:	9c010000 	0x9c010000
    2d88:	00000922 	0x00000922
    2d8c:	000eac21 	bytepick.d	$r1,$r1,$r11,0x5
    2d90:	11590100 	addu16i.d	$r0,$r8,22080(0x5640)
    2d94:	00000075 	0x00000075
    2d98:	00001d39 	ctz.w	$r25,$r9
    2d9c:	00001d2d 	ctz.w	$r13,$r9
    2da0:	000ebf21 	bytepick.d	$r1,$r25,$r15,0x5
    2da4:	1d590100 	pcaddu12i	$r0,-342008(0xac808)
    2da8:	00000133 	0x00000133
    2dac:	00001d98 	ctz.w	$r24,$r12
    2db0:	00001d8c 	ctz.w	$r12,$r12
    2db4:	0100691b 	0x0100691b
    2db8:	00810f5b 	bstrins.d	$r27,$r26,0x1,0x3
    2dbc:	1df70000 	pcaddu12i	$r0,-18432(0xfb800)
    2dc0:	1deb0000 	pcaddu12i	$r0,-43008(0xf5800)
    2dc4:	731b0000 	0x731b0000
    2dc8:	085c0100 	fmsub.s	$f0,$f8,$f0,$f24
    2dcc:	000007d1 	0x000007d1
    2dd0:	00001e47 	ctz.w	$r7,$r18
    2dd4:	00001e45 	ctz.w	$r5,$r18
    2dd8:	00000018 	0x00000018
    2ddc:	00099b00 	bytepick.w	$r0,$r24,$r6,0x3
    2de0:	00086a00 	bytepick.w	$r0,$r16,$r26,0x0
    2de4:	54011900 	bl	67109144(0x4000118) # 4002efc <_start-0x17ffd104>
    2de8:	00000305 	0x00000305
    2dec:	18000000 	pcaddi	$r0,0
    2df0:	00000000 	0x00000000
    2df4:	0000099b 	0x0000099b
    2df8:	00000881 	0x00000881
    2dfc:	05540119 	0x05540119
    2e00:	00000003 	0x00000003
    2e04:	00180000 	sra.w	$r0,$r0,$r0
    2e08:	bf000000 	0xbf000000
    2e0c:	98000009 	0x98000009
    2e10:	19000008 	pcaddi	$r8,-524288(0x80000)
    2e14:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2e18:	00000000 	0x00000000
    2e1c:	00001800 	cto.w	$r0,$r0
    2e20:	099b0000 	vfnmadd.s	$vr0,$vr0,$vr0,$vr22
    2e24:	08b50000 	0x08b50000
    2e28:	01190000 	0x01190000
    2e2c:	00030554 	0x00030554
    2e30:	19000000 	pcaddi	$r0,-524288(0x80000)
    2e34:	88025501 	0x88025501
    2e38:	00180000 	sra.w	$r0,$r0,$r0
    2e3c:	bf000000 	0xbf000000
    2e40:	cc000009 	0xcc000009
    2e44:	19000008 	pcaddi	$r8,-524288(0x80000)
    2e48:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    2e4c:	00000000 	0x00000000
    2e50:	00001800 	cto.w	$r0,$r0
    2e54:	09bf0000 	0x09bf0000
    2e58:	08e00000 	fnmsub.d	$f0,$f0,$f0,$f0
    2e5c:	01190000 	0x01190000
    2e60:	00880254 	bstrins.d	$r20,$r18,0x8,0x0
    2e64:	00001800 	cto.w	$r0,$r0
    2e68:	099b0000 	vfnmadd.s	$vr0,$vr0,$vr0,$vr22
    2e6c:	08f70000 	0x08f70000
    2e70:	01190000 	0x01190000
    2e74:	00030554 	0x00030554
    2e78:	00000000 	0x00000000
    2e7c:	00000018 	0x00000018
    2e80:	0009bf00 	bytepick.w	$r0,$r24,$r15,0x3
    2e84:	00090e00 	bytepick.w	$r0,$r16,$r3,0x2
    2e88:	54011900 	bl	67109144(0x4000118) # 4002fa0 <_start-0x17ffd060>
    2e8c:	00000305 	0x00000305
    2e90:	20000000 	ll.w	$r0,$r0,0
    2e94:	00000000 	0x00000000
    2e98:	0000099b 	0x0000099b
    2e9c:	05540119 	0x05540119
    2ea0:	00000003 	0x00000003
    2ea4:	1a000000 	pcalau12i	$r0,0
    2ea8:	00000ec4 	0x00000ec4
    2eac:	75055501 	xvssrln.hu.w	$xr1,$xr8,$xr21
    2eb0:	00000000 	0x00000000
    2eb4:	04000000 	csrrd	$r0,0x0
    2eb8:	01000000 	0x01000000
    2ebc:	00095f9c 	bytepick.w	$r28,$r28,$r23,0x2
    2ec0:	0eac2100 	0x0eac2100
    2ec4:	55010000 	bl	65792(0x10100) # 12fc4 <_start-0x1bfed03c>
    2ec8:	00007511 	0x00007511
    2ecc:	001e5e00 	mulh.d	$r0,$r16,$r23
    2ed0:	001e5a00 	mulh.d	$r0,$r16,$r22
    2ed4:	0ebf2200 	0x0ebf2200
    2ed8:	55010000 	bl	65792(0x10100) # 12fd8 <_start-0x1bfed028>
    2edc:	0001331d 	0x0001331d
    2ee0:	00550100 	0x00550100
    2ee4:	0008f723 	bytepick.w	$r3,$r25,$r29,0x1
    2ee8:	0008f700 	bytepick.w	$r0,$r24,$r29,0x1
    2eec:	06120600 	cacop	0x0,$r16,1153(0x481)
    2ef0:	00059f23 	alsl.w	$r3,$r25,$r7,0x4
    2ef4:	00059f00 	alsl.w	$r0,$r24,$r7,0x4
    2ef8:	06070700 	cacop	0x0,$r24,449(0x1c1)
    2efc:	000d9223 	bytepick.d	$r3,$r17,$r4,0x3
    2f00:	000d9200 	bytepick.d	$r0,$r16,$r4,0x3
    2f04:	05040800 	0x05040800
    2f08:	000d3723 	bytepick.d	$r3,$r25,$r13,0x2
    2f0c:	000d3700 	bytepick.d	$r0,$r24,$r13,0x2
    2f10:	05040900 	0x05040900
    2f14:	00071023 	alsl.wu	$r3,$r1,$r4,0x3
    2f18:	00071000 	alsl.wu	$r0,$r0,$r4,0x3
    2f1c:	05150a00 	0x05150a00
    2f20:	00071423 	alsl.wu	$r3,$r1,$r5,0x3
    2f24:	00071400 	alsl.wu	$r0,$r0,$r5,0x3
    2f28:	050d0b00 	0x050d0b00
    2f2c:	00070623 	alsl.wu	$r3,$r17,$r1,0x3
    2f30:	00070600 	alsl.wu	$r0,$r16,$r1,0x3
    2f34:	060e0b00 	cacop	0x0,$r24,898(0x382)
    2f38:	00010a23 	0x00010a23
    2f3c:	00010a00 	asrtle.d	$r16,$r2
    2f40:	090f0b00 	0x090f0b00
    2f44:	000ef323 	bytepick.d	$r3,$r25,$r28,0x5
    2f48:	000ef300 	bytepick.d	$r0,$r24,$r28,0x5
    2f4c:	050a0c00 	0x050a0c00
    2f50:	00120700 	slt	$r0,$r24,$r1
    2f54:	12000400 	addu16i.d	$r0,$r0,-32767(0x8001)
    2f58:	0400000f 	csrrd	$r15,0x0
    2f5c:	00019601 	0x00019601
    2f60:	0f630c00 	0x0f630c00
    2f64:	00560000 	0x00560000
    2f68:	02980000 	addi.w	$r0,$r0,1536(0x600)
    2f6c:	00000000 	0x00000000
    2f70:	33ab0000 	xvstelm.b	$xr0,$r0,-64(0xc0),0xa
    2f74:	01020000 	0x01020000
    2f78:	00026906 	0x00026906
    2f7c:	08010200 	0x08010200
    2f80:	00000267 	0x00000267
    2f84:	75050202 	xvssrln.hu.w	$xr2,$xr16,$xr0
    2f88:	02000002 	slti	$r2,$r0,0
    2f8c:	01580702 	0x01580702
    2f90:	04020000 	csrrd	$r0,0x80
    2f94:	00010105 	0x00010105
    2f98:	01310300 	0x01310300
    2f9c:	41020000 	beqz	$r0,66048(0x10200) # 1319c <_start-0x1bfece64>
    2fa0:	00005419 	bitrev.d	$r25,$r0
    2fa4:	07040200 	0x07040200
    2fa8:	000000d4 	0x000000d4
    2fac:	fc050802 	0xfc050802
    2fb0:	02000000 	slti	$r0,$r0,0
    2fb4:	00cf0708 	bstrpick.d	$r8,$r24,0xf,0x1
    2fb8:	04040000 	csrrd	$r0,0x100
    2fbc:	746e6905 	0x746e6905
    2fc0:	00690500 	bstrins.w	$r0,$r8,0x9,0x1
    2fc4:	04020000 	csrrd	$r0,0x80
    2fc8:	0000d907 	0x0000d907
    2fcc:	01330300 	0x01330300
    2fd0:	20030000 	ll.w	$r0,$r0,768(0x300)
    2fd4:	00004814 	bitrev.4b	$r20,$r0
    2fd8:	062f0300 	cacop	0x0,$r24,-1088(0xbc0)
    2fdc:	17040000 	lu32i.d	$r0,-516096(0x82000)
    2fe0:	00002c17 	ctz.d	$r23,$r0
    2fe4:	0f3d0300 	0x0f3d0300
    2fe8:	19040000 	pcaddi	$r0,-516096(0x82000)
    2fec:	00003a18 	revb.2w	$r24,$r16
    2ff0:	05980300 	0x05980300
    2ff4:	1b040000 	pcalau12i	$r0,-516096(0x82000)
    2ff8:	00007516 	0x00007516
    2ffc:	04040200 	csrxchg	$r0,$r16,0x100
    3000:	00000261 	0x00000261
    3004:	70060102 	vslt.b	$vr2,$vr8,$vr0
    3008:	06000002 	cacop	0x2,$r0,0
    300c:	000000b3 	0x000000b3
    3010:	00029a07 	0x00029a07
    3014:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    3018:	0000007c 	0x0000007c
    301c:	00011407 	0x00011407
    3020:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    3024:	0000007c 	0x0000007c
    3028:	00025007 	0x00025007
    302c:	0c6d0400 	0x0c6d0400
    3030:	00000069 	0x00000069
    3034:	23051008 	sc.d	$r8,$r0,1296(0x510)
    3038:	01260901 	0x01260901
    303c:	36090000 	0x36090000
    3040:	05000009 	0x05000009
    3044:	7c0c0125 	0x7c0c0125
    3048:	00000000 	0x00000000
    304c:	000a6109 	0x000a6109
    3050:	01260500 	0x01260500
    3054:	00007c0c 	0x00007c0c
    3058:	11090400 	addu16i.d	$r0,$r0,16961(0x4241)
    305c:	05000009 	0x05000009
    3060:	7c0c0127 	0x7c0c0127
    3064:	08000000 	0x08000000
    3068:	00097c09 	bytepick.w	$r9,$r0,$r31,0x2
    306c:	01280500 	0x01280500
    3070:	00007c0c 	0x00007c0c
    3074:	0a000c00 	0x0a000c00
    3078:	0000093f 	0x0000093f
    307c:	03012905 	lu52i.d	$r5,$r8,74(0x4a)
    3080:	000000e3 	0x000000e3
    3084:	00014e0b 	0x00014e0b
    3088:	00014300 	asrtle.d	$r24,$r16
    308c:	00750c00 	bstrins.w	$r0,$r0,0x15,0x3
    3090:	001f0000 	mulw.d.w	$r0,$r0,$r0
    3094:	00013306 	0x00013306
    3098:	53040d00 	b	67306508(0x403040c) # 40334a4 <_start-0x17fccb5c>
    309c:	06000001 	cacop	0x1,$r0,0
    30a0:	00000148 	0x00000148
    30a4:	0dfd0f0e 	0x0dfd0f0e
    30a8:	17060000 	lu32i.d	$r0,-512000(0x83000)
    30ac:	0001430f 	0x0001430f
    30b0:	00030500 	0x00030500
    30b4:	0f000000 	0x0f000000
    30b8:	00000def 	0x00000def
    30bc:	430f3d06 	beqz	$r8,1773372(0x1b0f3c) # 1b3ff8 <_start-0x1be4c008>
    30c0:	05000001 	0x05000001
    30c4:	002ce803 	alsl.d	$r3,$r0,$r26,0x2
    30c8:	0e130f1c 	0x0e130f1c
    30cc:	4e060000 	jirl	$r0,$r0,-129536(0x20600)
    30d0:	0000700e 	0x0000700e
    30d4:	00030500 	0x00030500
    30d8:	10800000 	addu16i.d	$r0,$r0,8192(0x2000)
    30dc:	00001073 	clo.w	$r19,$r3
    30e0:	06019e01 	cacop	0x1,$r16,103(0x67)
    30e4:	1c00260c 	pcaddu12i	$r12,304(0x130)
    30e8:	00000028 	0x00000028
    30ec:	01cb9c01 	0x01cb9c01
    30f0:	18110000 	pcaddi	$r0,34816(0x8800)
    30f4:	861c0026 	0x861c0026
    30f8:	12000011 	addu16i.d	$r17,$r0,-32768(0x8000)
    30fc:	1c002624 	pcaddu12i	$r4,305(0x131)
    3100:	00001192 	clo.w	$r18,$r12
    3104:	000001c1 	0x000001c1
    3108:	05540113 	0x05540113
    310c:	0029bc03 	0x0029bc03
    3110:	2811001c 	ld.b	$r28,$r0,1088(0x440)
    3114:	9e1c0026 	0x9e1c0026
    3118:	00000011 	0x00000011
    311c:	0012ca10 	sltu	$r16,$r16,$r18
    3120:	01660100 	0x01660100
    3124:	0024fc06 	crc.w.h.w	$r6,$r0,$r31
    3128:	0001101c 	0x0001101c
    312c:	879c0100 	0x879c0100
    3130:	14000002 	lu12i.w	$r2,0
    3134:	00001307 	clo.w	$r7,$r24
    3138:	08016801 	0x08016801
    313c:	00000088 	0x00000088
    3140:	00001e83 	ctz.w	$r3,$r20
    3144:	00001e7f 	ctz.w	$r31,$r19
    3148:	00259815 	crc.w.d.w	$r21,$r0,$r6
    314c:	0000741c 	0x0000741c
    3150:	00024d00 	0x00024d00
    3154:	068e1400 	0x068e1400
    3158:	7d010000 	0x7d010000
    315c:	00b30801 	bstrins.d	$r1,$r0,0x33,0x2
    3160:	1ea50000 	pcaddu18i	$r0,337920(0x52800)
    3164:	1ea10000 	pcaddu18i	$r0,329728(0x50800)
    3168:	c1140000 	0xc1140000
    316c:	0100000f 	0x0100000f
    3170:	6907017e 	bltu	$r11,$r30,67328(0x10700) # 13870 <_start-0x1bfec790>
    3174:	c9000000 	0xc9000000
    3178:	c300001e 	0xc300001e
    317c:	1400001e 	lu12i.w	$r30,0
    3180:	00001175 	clo.w	$r21,$r11
    3184:	07017f01 	0x07017f01
    3188:	00000069 	0x00000069
    318c:	00001efe 	ctz.w	$r30,$r23
    3190:	00001ef2 	ctz.w	$r18,$r23
    3194:	00259c11 	crc.w.d.w	$r17,$r0,$r7
    3198:	0011aa1c 	sub.d	$r28,$r16,$r10
    319c:	68120000 	bltu	$r0,$r0,4608(0x1200) # 439c <_start-0x1bffbc64>
    31a0:	b61c0025 	0xb61c0025
    31a4:	62000011 	blt	$r0,$r17,-131072(0x20000) # fffe31a4 <_RAM_DATA+0x7ffe21a4>
    31a8:	13000002 	addu16i.d	$r2,$r0,-16384(0xc000)
    31ac:	0a035401 	0x0a035401
    31b0:	12000100 	addu16i.d	$r0,$r8,-32768(0x8000)
    31b4:	1c00258c 	pcaddu12i	$r12,300(0x12c)
    31b8:	000011c2 	clo.w	$r2,$r14
    31bc:	00000275 	0x00000275
    31c0:	01540113 	0x01540113
    31c4:	94160044 	0x94160044
    31c8:	ce1c0025 	0xce1c0025
    31cc:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    31d0:	0a035401 	0x0a035401
    31d4:	00000100 	0x00000100
    31d8:	000f5010 	bytepick.d	$r16,$r0,$r20,0x6
    31dc:	01450100 	0x01450100
    31e0:	00246c06 	crc.w.b.w	$r6,$r0,$r27
    31e4:	0000901c 	0x0000901c
    31e8:	de9c0100 	0xde9c0100
    31ec:	17000002 	lu32i.d	$r2,-524288(0x80000)
    31f0:	00706d74 	bstrins.w	$r20,$r11,0x10,0x1b
    31f4:	0e014701 	0x0e014701
    31f8:	0000007c 	0x0000007c
    31fc:	00001f51 	ctz.w	$r17,$r26
    3200:	00001f4b 	ctz.w	$r11,$r26
    3204:	0024c012 	crc.w.h.w	$r18,$r0,$r16
    3208:	0011921c 	sub.d	$r28,$r16,$r4
    320c:	0002ca00 	0x0002ca00
    3210:	54011300 	bl	-67108592(0xc000110) # fc003320 <_RAM_DATA+0x7c002320>
    3214:	29700305 	st.h	$r5,$r24,-1024(0xc00)
    3218:	16001c00 	lu32i.d	$r0,224(0xe0)
    321c:	1c0024dc 	pcaddu12i	$r28,294(0x126)
    3220:	00001192 	clo.w	$r18,$r12
    3224:	05540113 	0x05540113
    3228:	00299803 	0x00299803
    322c:	1000001c 	addu16i.d	$r28,$r0,0
    3230:	00000f59 	0x00000f59
    3234:	06013701 	cacop	0x1,$r24,77(0x4d)
    3238:	1c00244c 	pcaddu12i	$r12,290(0x122)
    323c:	00000020 	0x00000020
    3240:	03039c01 	lu52i.d	$r1,$r0,231(0xe7)
    3244:	04180000 	csrrd	$r0,0x600
    3248:	01000010 	0x01000010
    324c:	8808013a 	0x8808013a
    3250:	00000000 	0x00000000
    3254:	000f4410 	bytepick.d	$r16,$r0,$r17,0x6
    3258:	011f0100 	0x011f0100
    325c:	00240006 	crc.w.b.w	$r6,$r0,$r0
    3260:	00004c1c 	bitrev.8b	$r28,$r0
    3264:	5b9c0100 	beq	$r8,$r0,-25600(0x39c00) # ffffce64 <_RAM_DATA+0x7fffbe64>
    3268:	19000003 	pcaddi	$r3,-524288(0x80000)
    326c:	21010069 	sc.w	$r9,$r3,256(0x100)
    3270:	00880b01 	bstrins.d	$r1,$r24,0x8,0x2
    3274:	89140000 	0x89140000
    3278:	01000010 	0x01000010
    327c:	940c0122 	0x940c0122
    3280:	7c000000 	0x7c000000
    3284:	7a00001f 	0x7a00001f
    3288:	1800001f 	pcaddi	$r31,0
    328c:	00001081 	clo.w	$r1,$r4
    3290:	0b012301 	0x0b012301
    3294:	00000088 	0x00000088
    3298:	00244016 	crc.w.b.w	$r22,$r0,$r16
    329c:	0011921c 	sub.d	$r28,$r16,$r4
    32a0:	54011300 	bl	-67108592(0xc000110) # fc0033b0 <_RAM_DATA+0x7c0023b0>
    32a4:	29500305 	st.h	$r5,$r24,1024(0x400)
    32a8:	00001c00 	ctz.w	$r0,$r0
    32ac:	00127310 	slt	$r16,$r24,$r28
    32b0:	010e0100 	0x010e0100
    32b4:	0023d006 	mod.du	$r6,$r0,$r20
    32b8:	0000301c 	revb.2h	$r28,$r0
    32bc:	8b9c0100 	0x8b9c0100
    32c0:	1a000003 	pcalau12i	$r3,0
    32c4:	0000125f 	clo.w	$r31,$r18
    32c8:	09011201 	0x09011201
    32cc:	000000a0 	0x000000a0
    32d0:	f4115c01 	0xf4115c01
    32d4:	da1c0023 	0xda1c0023
    32d8:	00000011 	0x00000011
    32dc:	0011921b 	sub.d	$r27,$r16,$r4
    32e0:	06ff0100 	0x06ff0100
    32e4:	00000000 	0x00000000
    32e8:	00000034 	0x00000034
    32ec:	03be9c01 	ori	$r1,$r0,0xfa7
    32f0:	00110000 	sub.w	$r0,$r0,$r0
    32f4:	86000000 	0x86000000
    32f8:	16000011 	lu32i.d	$r17,0
    32fc:	00000000 	0x00000000
    3300:	000011e6 	clo.w	$r6,$r15
    3304:	05540113 	0x05540113
    3308:	0138800c 	0x0138800c
    330c:	1b000000 	pcalau12i	$r0,-524288(0x80000)
    3310:	0000110c 	clo.w	$r12,$r8
    3314:	0006f101 	alsl.wu	$r1,$r8,$r28,0x2
    3318:	24000000 	ldptr.w	$r0,$r0,0
    331c:	01000000 	0x01000000
    3320:	0003f59c 	0x0003f59c
    3324:	00001200 	clo.w	$r0,$r16
    3328:	11920000 	addu16i.d	$r0,$r0,25728(0x6480)
    332c:	03eb0000 	xori	$r0,$r0,0xac0
    3330:	01130000 	fcopysign.d	$f0,$f0,$f0
    3334:	00030554 	0x00030554
    3338:	00000000 	0x00000000
    333c:	00000011 	0x00000011
    3340:	0011f200 	sub.d	$r0,$r16,$r28
    3344:	671b0000 	bge	$r0,$r0,-58624(0x31b00) # ffff4e44 <_RAM_DATA+0x7fff3e44>
    3348:	01000012 	0x01000012
    334c:	233806dc 	sc.d	$r28,$r22,14340(0x3804)
    3350:	00981c00 	bstrins.d	$r0,$r0,0x18,0x7
    3354:	9c010000 	0x9c010000
    3358:	0000048e 	0x0000048e
    335c:	00100c1c 	add.w	$r28,$r0,$r3
    3360:	09df0100 	vfnmsub.s	$vr0,$vr8,$vr0,$vr30
    3364:	000000a0 	0x000000a0
    3368:	00001f99 	ctz.w	$r25,$r28
    336c:	00001f97 	ctz.w	$r23,$r28
    3370:	000f4a1c 	bytepick.d	$r28,$r16,$r18,0x6
    3374:	09e00100 	vfnmsub.d	$vr0,$vr8,$vr0,$vr0
    3378:	000000a0 	0x000000a0
    337c:	00001fae 	ctz.w	$r14,$r29
    3380:	00001fac 	ctz.w	$r12,$r29
    3384:	000f361c 	bytepick.d	$r28,$r16,$r13,0x6
    3388:	09e10100 	vfnmsub.d	$vr0,$vr8,$vr0,$vr2
    338c:	000000a0 	0x000000a0
    3390:	00001fc5 	ctz.w	$r5,$r30
    3394:	00001fc1 	ctz.w	$r1,$r30
    3398:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    339c:	00049e00 	alsl.w	$r0,$r16,$r7,0x2
    33a0:	dc030500 	0xdc030500
    33a4:	121c0029 	addu16i.d	$r9,$r1,-30976(0x8700)
    33a8:	1c002370 	pcaddu12i	$r16,283(0x11b)
    33ac:	00001192 	clo.w	$r18,$r12
    33b0:	0000047c 	0x0000047c
    33b4:	05540113 	0x05540113
    33b8:	00293003 	0x00293003
    33bc:	5501131c 	bl	-59703024(0xc710110) # fc7134cc <_RAM_DATA+0x7c7124cc>
    33c0:	13e20802 	addu16i.d	$r2,$r0,-1918(0xf882)
    33c4:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    33c8:	1c0029dc 	pcaddu12i	$r28,334(0x14e)
    33cc:	23b81e00 	sc.d	$r0,$r16,-18404(0xb81c)
    33d0:	870b1c00 	0x870b1c00
    33d4:	03243200 	lu52i.d	$r0,$r16,-1780(0x90c)
    33d8:	1c002ce8 	pcaddu12i	$r8,359(0x167)
    33dc:	0b000622 	0x0b000622
    33e0:	000000ba 	0x000000ba
    33e4:	0000049e 	0x0000049e
    33e8:	0000750c 	0x0000750c
    33ec:	06000b00 	cacop	0x0,$r24,2(0x2)
    33f0:	0000048e 	0x0000048e
    33f4:	000f061b 	bytepick.d	$r27,$r16,$r1,0x6
    33f8:	06b30100 	0x06b30100
    33fc:	1c0022fc 	pcaddu12i	$r28,279(0x117)
    3400:	0000003c 	0x0000003c
    3404:	050b9c01 	0x050b9c01
    3408:	c71d0000 	0xc71d0000
    340c:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3410:	05000005 	0x05000005
    3414:	0029e803 	0x0029e803
    3418:	231c121c 	sc.d	$r28,$r16,7184(0x1c10)
    341c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3420:	04ee0000 	csrrd	$r0,0x3b80
    3424:	01130000 	fcopysign.d	$f0,$f0,$f0
    3428:	30030554 	0x30030554
    342c:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3430:	08025501 	0x08025501
    3434:	560113b6 	bl	-19267312(0xeda0110) # feda3544 <_RAM_DATA+0x7eda2544>
    3438:	29e80305 	st.d	$r5,$r24,-1536(0xa00)
    343c:	16001c00 	lu32i.d	$r0,224(0xe0)
    3440:	1c00232c 	pcaddu12i	$r12,281(0x119)
    3444:	000011fe 	clo.w	$r30,$r15
    3448:	06540113 	0x06540113
    344c:	ac80a011 	0xac80a011
    3450:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3454:	4b400455 	bceqz	$fcc2,-2670588(0x574004) # ffd77458 <_RAM_DATA+0x7fd76458>
    3458:	00001f24 	ctz.w	$r4,$r25
    345c:	0000ba0b 	0x0000ba0b
    3460:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3464:	00750c00 	bstrins.w	$r0,$r0,0x15,0x3
    3468:	00170000 	sll.w	$r0,$r0,$r0
    346c:	00050b06 	alsl.w	$r6,$r24,$r2,0x3
    3470:	11cf1b00 	addu16i.d	$r0,$r24,29638(0x73c6)
    3474:	ad010000 	0xad010000
    3478:	0022c006 	mod.d	$r6,$r0,$r16
    347c:	00003c1c 	revb.d	$r28,$r0
    3480:	879c0100 	0x879c0100
    3484:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    3488:	00000fc7 	0x00000fc7
    348c:	0000051b 	0x0000051b
    3490:	2a000305 	ld.bu	$r5,$r24,0
    3494:	e0121c00 	0xe0121c00
    3498:	921c0022 	0x921c0022
    349c:	6b000011 	bltu	$r0,$r17,-65536(0x30000) # ffff349c <_RAM_DATA+0x7fff249c>
    34a0:	13000005 	addu16i.d	$r5,$r0,-16384(0xc000)
    34a4:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    34a8:	1c002930 	pcaddu12i	$r16,329(0x149)
    34ac:	02550113 	sltui	$r19,$r8,1344(0x540)
    34b0:	0113b008 	0x0113b008
    34b4:	00030556 	0x00030556
    34b8:	001c002a 	mul.w	$r10,$r1,$r0
    34bc:	0022f016 	mod.d	$r22,$r0,$r28
    34c0:	0011fe1c 	sub.d	$r28,$r16,$r31
    34c4:	54011300 	bl	-67108592(0xc000110) # fc0035d4 <_RAM_DATA+0x7c0025d4>
    34c8:	80a01106 	0x80a01106
    34cc:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    34d0:	40035501 	beqz	$r8,262996(0x40354) # 43824 <_start-0x1bfbc7dc>
    34d4:	0000244a 	clz.d	$r10,$r2
    34d8:	0010ac1b 	add.d	$r27,$r0,$r11
    34dc:	06a70100 	0x06a70100
    34e0:	1c002284 	pcaddu12i	$r4,276(0x114)
    34e4:	0000003c 	0x0000003c
    34e8:	05ee9c01 	0x05ee9c01
    34ec:	c71d0000 	0xc71d0000
    34f0:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    34f4:	05000005 	0x05000005
    34f8:	002a1803 	break	0x1803
    34fc:	22a4121c 	ll.d	$r28,$r16,-23536(0xa410)
    3500:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3504:	05d20000 	0x05d20000
    3508:	01130000 	fcopysign.d	$f0,$f0,$f0
    350c:	30030554 	0x30030554
    3510:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3514:	08025501 	0x08025501
    3518:	560113aa 	bl	-22413040(0xeaa0110) # feaa3628 <_RAM_DATA+0x7eaa2628>
    351c:	2a180305 	ld.bu	$r5,$r24,1536(0x600)
    3520:	16001c00 	lu32i.d	$r0,224(0xe0)
    3524:	1c0022b4 	pcaddu12i	$r20,277(0x115)
    3528:	000011fe 	clo.w	$r30,$r15
    352c:	06540113 	0x06540113
    3530:	ac80a011 	0xac80a011
    3534:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3538:	49400355 	0x49400355
    353c:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3540:	000012d7 	clo.w	$r23,$r22
    3544:	4806a001 	bceqz	$fcc0,263840(0x406a0) # 43be4 <_start-0x1bfbc41c>
    3548:	3c1c0022 	0x3c1c0022
    354c:	01000000 	0x01000000
    3550:	0006559c 	alsl.wu	$r28,$r12,$r21,0x1
    3554:	0fc71d00 	0x0fc71d00
    3558:	051b0000 	0x051b0000
    355c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3560:	1c002a30 	pcaddu12i	$r16,337(0x151)
    3564:	00226812 	div.d	$r18,$r0,$r26
    3568:	0011921c 	sub.d	$r28,$r16,$r4
    356c:	00063900 	alsl.wu	$r0,$r8,$r14,0x1
    3570:	54011300 	bl	-67108592(0xc000110) # fc003680 <_RAM_DATA+0x7c002680>
    3574:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3578:	01131c00 	fcopysign.d	$f0,$f0,$f7
    357c:	a3080255 	0xa3080255
    3580:	05560113 	0x05560113
    3584:	002a3003 	break	0x3003
    3588:	7816001c 	0x7816001c
    358c:	fe1c0022 	0xfe1c0022
    3590:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3594:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3598:	ffac80a0 	0xffac80a0
    359c:	5501137b 	bl	-34799344(0xded0110) # fded36ac <_RAM_DATA+0x7ded26ac>
    35a0:	24484003 	ldptr.w	$r3,$r0,18496(0x4840)
    35a4:	9f1b0000 	0x9f1b0000
    35a8:	01000011 	0x01000011
    35ac:	220c069a 	ll.d	$r26,$r20,3076(0xc04)
    35b0:	003c1c00 	0x003c1c00
    35b4:	9c010000 	0x9c010000
    35b8:	000006bc 	0x000006bc
    35bc:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    35c0:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    35c4:	48030500 	bcnez	$fcc0,772(0x304) # 38c8 <_start-0x1bffc738>
    35c8:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    35cc:	1c00222c 	pcaddu12i	$r12,273(0x111)
    35d0:	00001192 	clo.w	$r18,$r12
    35d4:	000006a0 	0x000006a0
    35d8:	05540113 	0x05540113
    35dc:	00293003 	0x00293003
    35e0:	5501131c 	bl	-59703024(0xc710110) # fc7136f0 <_RAM_DATA+0x7c7126f0>
    35e4:	139d0802 	addu16i.d	$r2,$r0,-6334(0xe742)
    35e8:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    35ec:	1c002a48 	pcaddu12i	$r8,338(0x152)
    35f0:	223c1600 	ll.d	$r0,$r16,15380(0x3c14)
    35f4:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    35f8:	01130000 	fcopysign.d	$f0,$f0,$f0
    35fc:	a0110654 	0xa0110654
    3600:	7bffac80 	0x7bffac80
    3604:	03550113 	andi	$r19,$r8,0x540
    3608:	00244740 	crc.w.b.w	$r0,$r26,$r17
    360c:	105b1b00 	addu16i.d	$r0,$r24,5830(0x16c6)
    3610:	94010000 	0x94010000
    3614:	0021d006 	mod.wu	$r6,$r0,$r20
    3618:	00003c1c 	revb.d	$r28,$r0
    361c:	239c0100 	sc.d	$r0,$r8,-25600(0x9c00)
    3620:	1d000007 	pcaddu12i	$r7,-524288(0x80000)
    3624:	00000fc7 	0x00000fc7
    3628:	0000051b 	0x0000051b
    362c:	2a600305 	ld.hu	$r5,$r24,-2048(0x800)
    3630:	f0121c00 	0xf0121c00
    3634:	921c0021 	0x921c0021
    3638:	07000011 	0x07000011
    363c:	13000007 	addu16i.d	$r7,$r0,-16384(0xc000)
    3640:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3644:	1c002930 	pcaddu12i	$r16,329(0x149)
    3648:	02550113 	sltui	$r19,$r8,1344(0x540)
    364c:	01139708 	0x01139708
    3650:	60030556 	blt	$r10,$r22,772(0x304) # 3954 <_start-0x1bffc6ac>
    3654:	001c002a 	mul.w	$r10,$r1,$r0
    3658:	00220016 	div.d	$r22,$r0,$r0
    365c:	0011fe1c 	sub.d	$r28,$r16,$r31
    3660:	54011300 	bl	-67108592(0xc000110) # fc003770 <_RAM_DATA+0x7c002770>
    3664:	80a01106 	0x80a01106
    3668:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    366c:	40035501 	beqz	$r8,262996(0x40354) # 439c0 <_start-0x1bfbc640>
    3670:	00002446 	clz.d	$r6,$r2
    3674:	00129a1b 	sltu	$r27,$r16,$r6
    3678:	068e0100 	0x068e0100
    367c:	1c002194 	pcaddu12i	$r20,268(0x10c)
    3680:	0000003c 	0x0000003c
    3684:	078a9c01 	0x078a9c01
    3688:	c71d0000 	0xc71d0000
    368c:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3690:	05000005 	0x05000005
    3694:	002a7803 	break	0x7803
    3698:	21b4121c 	sc.w	$r28,$r16,-19440(0xb410)
    369c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    36a0:	076e0000 	0x076e0000
    36a4:	01130000 	fcopysign.d	$f0,$f0,$f0
    36a8:	30030554 	0x30030554
    36ac:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    36b0:	08025501 	0x08025501
    36b4:	56011391 	bl	-28966640(0xe460110) # fe4637c4 <_RAM_DATA+0x7e4627c4>
    36b8:	2a780305 	ld.hu	$r5,$r24,-512(0xe00)
    36bc:	16001c00 	lu32i.d	$r0,224(0xe0)
    36c0:	1c0021c4 	pcaddu12i	$r4,270(0x10e)
    36c4:	000011fe 	clo.w	$r30,$r15
    36c8:	06540113 	0x06540113
    36cc:	ac80a011 	0xac80a011
    36d0:	01137bff 	fcopysign.d	$f31,$f31,$f30
    36d4:	45400355 	bnez	$r26,-2801664(0x554000) # ffd576d4 <_RAM_DATA+0x7fd566d4>
    36d8:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    36dc:	0000115d 	clo.w	$r29,$r10
    36e0:	58068801 	beq	$r0,$r1,1672(0x688) # 3d68 <_start-0x1bffc298>
    36e4:	3c1c0021 	0x3c1c0021
    36e8:	01000000 	0x01000000
    36ec:	0007f19c 	alsl.wu	$r28,$r12,$r28,0x4
    36f0:	0fc71d00 	0x0fc71d00
    36f4:	051b0000 	0x051b0000
    36f8:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    36fc:	1c002a90 	pcaddu12i	$r16,340(0x154)
    3700:	00217812 	div.wu	$r18,$r0,$r30
    3704:	0011921c 	sub.d	$r28,$r16,$r4
    3708:	0007d500 	alsl.wu	$r0,$r8,$r21,0x4
    370c:	54011300 	bl	-67108592(0xc000110) # fc00381c <_RAM_DATA+0x7c00281c>
    3710:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3714:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3718:	8b080255 	0x8b080255
    371c:	05560113 	0x05560113
    3720:	002a9003 	dbcl	0x1003
    3724:	8816001c 	0x8816001c
    3728:	fe1c0021 	0xfe1c0021
    372c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3730:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3734:	ffac80a0 	0xffac80a0
    3738:	5501137b 	bl	-34799344(0xded0110) # fded3848 <_RAM_DATA+0x7ded2848>
    373c:	24444003 	ldptr.w	$r3,$r0,17472(0x4440)
    3740:	431b0000 	beqz	$r0,203520(0x31b00) # 35240 <_start-0x1bfcadc0>
    3744:	01000010 	0x01000010
    3748:	211c0682 	sc.w	$r2,$r20,7172(0x1c04)
    374c:	003c1c00 	0x003c1c00
    3750:	9c010000 	0x9c010000
    3754:	00000858 	0x00000858
    3758:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    375c:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3760:	a8030500 	0xa8030500
    3764:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    3768:	1c00213c 	pcaddu12i	$r28,265(0x109)
    376c:	00001192 	clo.w	$r18,$r12
    3770:	0000083c 	0x0000083c
    3774:	05540113 	0x05540113
    3778:	00293003 	0x00293003
    377c:	5501131c 	bl	-59703024(0xc710110) # fc71388c <_RAM_DATA+0x7c71288c>
    3780:	13850802 	addu16i.d	$r2,$r0,-7870(0xe142)
    3784:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3788:	1c002aa8 	pcaddu12i	$r8,341(0x155)
    378c:	214c1600 	sc.w	$r0,$r16,19476(0x4c14)
    3790:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3794:	01130000 	fcopysign.d	$f0,$f0,$f0
    3798:	a0110654 	0xa0110654
    379c:	7bffac80 	0x7bffac80
    37a0:	03550113 	andi	$r19,$r8,0x540
    37a4:	00244340 	crc.w.b.w	$r0,$r26,$r16
    37a8:	12821b00 	addu16i.d	$r0,$r24,-24442(0xa086)
    37ac:	7d010000 	0x7d010000
    37b0:	0020e006 	mod.w	$r6,$r0,$r24
    37b4:	00003c1c 	revb.d	$r28,$r0
    37b8:	bf9c0100 	0xbf9c0100
    37bc:	1d000008 	pcaddu12i	$r8,-524288(0x80000)
    37c0:	00000fc7 	0x00000fc7
    37c4:	0000051b 	0x0000051b
    37c8:	2ac00305 	preld	0x5,$r24,0
    37cc:	00121c00 	slt	$r0,$r0,$r7
    37d0:	921c0021 	0x921c0021
    37d4:	a3000011 	0xa3000011
    37d8:	13000008 	addu16i.d	$r8,$r0,-16384(0xc000)
    37dc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    37e0:	1c002930 	pcaddu12i	$r16,329(0x149)
    37e4:	02550113 	sltui	$r19,$r8,1344(0x540)
    37e8:	01137f08 	fcopysign.d	$f8,$f24,$f31
    37ec:	c0030556 	0xc0030556
    37f0:	001c002a 	mul.w	$r10,$r1,$r0
    37f4:	00211016 	div.wu	$r22,$r0,$r4
    37f8:	0011fe1c 	sub.d	$r28,$r16,$r31
    37fc:	54011300 	bl	-67108592(0xc000110) # fc00390c <_RAM_DATA+0x7c00290c>
    3800:	80a01106 	0x80a01106
    3804:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3808:	40035501 	beqz	$r8,262996(0x40354) # 43b5c <_start-0x1bfbc4a4>
    380c:	00002442 	clz.d	$r2,$r2
    3810:	0011451b 	sub.w	$r27,$r8,$r17
    3814:	06780100 	0x06780100
    3818:	1c0020a4 	pcaddu12i	$r4,261(0x105)
    381c:	0000003c 	0x0000003c
    3820:	09269c01 	vfmadd.d	$vr1,$vr0,$vr7,$vr13
    3824:	c71d0000 	0xc71d0000
    3828:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    382c:	05000005 	0x05000005
    3830:	002ad803 	dbcl	0x5803
    3834:	20c4121c 	ll.w	$r28,$r16,-15344(0xc410)
    3838:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    383c:	090a0000 	0x090a0000
    3840:	01130000 	fcopysign.d	$f0,$f0,$f0
    3844:	30030554 	0x30030554
    3848:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    384c:	08025501 	0x08025501
    3850:	5601137a 	bl	-34995952(0xdea0110) # fdea3960 <_RAM_DATA+0x7dea2960>
    3854:	2ad80305 	preld	0x5,$r24,1536(0x600)
    3858:	16001c00 	lu32i.d	$r0,224(0xe0)
    385c:	1c0020d4 	pcaddu12i	$r20,262(0x106)
    3860:	000011fe 	clo.w	$r30,$r15
    3864:	06540113 	0x06540113
    3868:	ac80a011 	0xac80a011
    386c:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3870:	41400355 	beqz	$r26,-2801664(0x554000) # ffd57870 <_RAM_DATA+0x7fd56870>
    3874:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3878:	00001013 	clo.w	$r19,$r0
    387c:	68067201 	bltu	$r16,$r1,1648(0x670) # 3eec <_start-0x1bffc114>
    3880:	3c1c0020 	0x3c1c0020
    3884:	01000000 	0x01000000
    3888:	00098d9c 	bytepick.w	$r28,$r12,$r3,0x3
    388c:	0fc71d00 	0x0fc71d00
    3890:	051b0000 	0x051b0000
    3894:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3898:	1c002af0 	pcaddu12i	$r16,343(0x157)
    389c:	00208812 	mod.w	$r18,$r0,$r2
    38a0:	0011921c 	sub.d	$r28,$r16,$r4
    38a4:	00097100 	bytepick.w	$r0,$r8,$r28,0x2
    38a8:	54011300 	bl	-67108592(0xc000110) # fc0039b8 <_RAM_DATA+0x7c0029b8>
    38ac:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    38b0:	01131c00 	fcopysign.d	$f0,$f0,$f7
    38b4:	75080255 	0x75080255
    38b8:	05560113 	0x05560113
    38bc:	002af003 	dbcl	0x7003
    38c0:	9816001c 	0x9816001c
    38c4:	fe1c0020 	0xfe1c0020
    38c8:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    38cc:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    38d0:	ffac80a0 	0xffac80a0
    38d4:	5501137b 	bl	-34799344(0xded0110) # fded39e4 <_RAM_DATA+0x7ded29e4>
    38d8:	24404003 	ldptr.w	$r3,$r0,16448(0x4040)
    38dc:	471b0000 	bnez	$r0,203520(0x31b00) # 353dc <_start-0x1bfcac24>
    38e0:	01000012 	0x01000012
    38e4:	202c066c 	ll.w	$r12,$r19,11268(0x2c04)
    38e8:	003c1c00 	0x003c1c00
    38ec:	9c010000 	0x9c010000
    38f0:	000009f4 	0x000009f4
    38f4:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    38f8:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    38fc:	08030500 	0x08030500
    3900:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3904:	1c00204c 	pcaddu12i	$r12,258(0x102)
    3908:	00001192 	clo.w	$r18,$r12
    390c:	000009d8 	0x000009d8
    3910:	05540113 	0x05540113
    3914:	00293003 	0x00293003
    3918:	5501131c 	bl	-59703024(0xc710110) # fc713a28 <_RAM_DATA+0x7c712a28>
    391c:	136f0802 	addu16i.d	$r2,$r0,-9278(0xdbc2)
    3920:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3924:	1c002b08 	pcaddu12i	$r8,344(0x158)
    3928:	205c1600 	ll.w	$r0,$r16,23572(0x5c14)
    392c:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3930:	01130000 	fcopysign.d	$f0,$f0,$f0
    3934:	a0110654 	0xa0110654
    3938:	7bffac80 	0x7bffac80
    393c:	03550113 	andi	$r19,$r8,0x540
    3940:	00243f40 	crc.w.b.w	$r0,$r26,$r15
    3944:	112d1b00 	addu16i.d	$r0,$r24,19270(0x4b46)
    3948:	66010000 	bge	$r0,$r0,-130816(0x20100) # fffe3a48 <_RAM_DATA+0x7ffe2a48>
    394c:	001ff006 	mulw.d.wu	$r6,$r0,$r28
    3950:	00003c1c 	revb.d	$r28,$r0
    3954:	5b9c0100 	beq	$r8,$r0,-25600(0x39c00) # ffffd554 <_RAM_DATA+0x7fffc554>
    3958:	1d00000a 	pcaddu12i	$r10,-524288(0x80000)
    395c:	00000fc7 	0x00000fc7
    3960:	0000051b 	0x0000051b
    3964:	2b200305 	fld.s	$f5,$r24,-2048(0x800)
    3968:	10121c00 	addu16i.d	$r0,$r0,1159(0x487)
    396c:	921c0020 	0x921c0020
    3970:	3f000011 	0x3f000011
    3974:	1300000a 	addu16i.d	$r10,$r0,-16384(0xc000)
    3978:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    397c:	1c002930 	pcaddu12i	$r16,329(0x149)
    3980:	02550113 	sltui	$r19,$r8,1344(0x540)
    3984:	01136908 	fcopysign.d	$f8,$f8,$f26
    3988:	20030556 	ll.w	$r22,$r10,772(0x304)
    398c:	001c002b 	mul.w	$r11,$r1,$r0
    3990:	00202016 	div.w	$r22,$r0,$r8
    3994:	0011fe1c 	sub.d	$r28,$r16,$r31
    3998:	54011300 	bl	-67108592(0xc000110) # fc003aa8 <_RAM_DATA+0x7c002aa8>
    399c:	80a01106 	0x80a01106
    39a0:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    39a4:	40035501 	beqz	$r8,262996(0x40354) # 43cf8 <_start-0x1bfbc308>
    39a8:	0000243e 	clz.d	$r30,$r1
    39ac:	000fec1b 	bytepick.d	$r27,$r0,$r27,0x7
    39b0:	06600100 	0x06600100
    39b4:	1c001fb4 	pcaddu12i	$r20,253(0xfd)
    39b8:	0000003c 	0x0000003c
    39bc:	0ac29c01 	0x0ac29c01
    39c0:	c71d0000 	0xc71d0000
    39c4:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    39c8:	05000005 	0x05000005
    39cc:	002b3803 	syscall	0x3803
    39d0:	1fd4121c 	pcaddu18i	$r28,-89968(0xea090)
    39d4:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    39d8:	0aa60000 	xvfnmadd.d	$xr0,$xr0,$xr0,$xr12
    39dc:	01130000 	fcopysign.d	$f0,$f0,$f0
    39e0:	30030554 	0x30030554
    39e4:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    39e8:	08025501 	0x08025501
    39ec:	56011363 	bl	-41025264(0xd8e0110) # fd8e3afc <_RAM_DATA+0x7d8e2afc>
    39f0:	2b380305 	fld.s	$f5,$r24,-512(0xe00)
    39f4:	16001c00 	lu32i.d	$r0,224(0xe0)
    39f8:	1c001fe4 	pcaddu12i	$r4,255(0xff)
    39fc:	000011fe 	clo.w	$r30,$r15
    3a00:	06540113 	0x06540113
    3a04:	ac80a011 	0xac80a011
    3a08:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3a0c:	3d400355 	0x3d400355
    3a10:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3a14:	0000122f 	clo.w	$r15,$r17
    3a18:	78065a01 	0x78065a01
    3a1c:	3c1c001f 	0x3c1c001f
    3a20:	01000000 	0x01000000
    3a24:	000b299c 	0x000b299c
    3a28:	0fc71d00 	0x0fc71d00
    3a2c:	051b0000 	0x051b0000
    3a30:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3a34:	1c002b50 	pcaddu12i	$r16,346(0x15a)
    3a38:	001f9812 	mulw.d.wu	$r18,$r0,$r6
    3a3c:	0011921c 	sub.d	$r28,$r16,$r4
    3a40:	000b0d00 	0x000b0d00
    3a44:	54011300 	bl	-67108592(0xc000110) # fc003b54 <_RAM_DATA+0x7c002b54>
    3a48:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3a4c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3a50:	5d080255 	bne	$r18,$r21,67584(0x10800) # 14250 <_start-0x1bfebdb0>
    3a54:	05560113 	0x05560113
    3a58:	002b5003 	syscall	0x5003
    3a5c:	a816001c 	0xa816001c
    3a60:	fe1c001f 	0xfe1c001f
    3a64:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3a68:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3a6c:	ffac80a0 	0xffac80a0
    3a70:	5501137b 	bl	-34799344(0xded0110) # fded3b80 <_RAM_DATA+0x7ded2b80>
    3a74:	243c4003 	ldptr.w	$r3,$r0,15424(0x3c40)
    3a78:	151b0000 	lu12i.w	$r0,-468992(0x8d800)
    3a7c:	01000011 	0x01000011
    3a80:	1f3c0653 	pcaddu18i	$r19,-401358(0x9e032)
    3a84:	003c1c00 	0x003c1c00
    3a88:	9c010000 	0x9c010000
    3a8c:	00000b90 	0x00000b90
    3a90:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    3a94:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3a98:	68030500 	bltu	$r8,$r0,772(0x304) # 3d9c <_start-0x1bffc264>
    3a9c:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3aa0:	1c001f5c 	pcaddu12i	$r28,250(0xfa)
    3aa4:	00001192 	clo.w	$r18,$r12
    3aa8:	00000b74 	0x00000b74
    3aac:	05540113 	0x05540113
    3ab0:	00293003 	0x00293003
    3ab4:	5501131c 	bl	-59703024(0xc710110) # fc713bc4 <_RAM_DATA+0x7c712bc4>
    3ab8:	13560802 	addu16i.d	$r2,$r0,-10878(0xd582)
    3abc:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3ac0:	1c002b68 	pcaddu12i	$r8,347(0x15b)
    3ac4:	1f6c1600 	pcaddu18i	$r0,-302928(0xb60b0)
    3ac8:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3acc:	01130000 	fcopysign.d	$f0,$f0,$f0
    3ad0:	a0110654 	0xa0110654
    3ad4:	7bffac80 	0x7bffac80
    3ad8:	03550113 	andi	$r19,$r8,0x540
    3adc:	0080000a 	bstrins.d	$r10,$r0,0x0,0x0
    3ae0:	0fd41b00 	0x0fd41b00
    3ae4:	4d010000 	jirl	$r0,$r0,65792(0x10100)
    3ae8:	001f0006 	mulw.d.w	$r6,$r0,$r0
    3aec:	00003c1c 	revb.d	$r28,$r0
    3af0:	f79c0100 	0xf79c0100
    3af4:	1d00000b 	pcaddu12i	$r11,-524288(0x80000)
    3af8:	00000fc7 	0x00000fc7
    3afc:	0000051b 	0x0000051b
    3b00:	2b800305 	fld.d	$f5,$r24,0
    3b04:	20121c00 	ll.w	$r0,$r0,4636(0x121c)
    3b08:	921c001f 	0x921c001f
    3b0c:	db000011 	0xdb000011
    3b10:	1300000b 	addu16i.d	$r11,$r0,-16384(0xc000)
    3b14:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3b18:	1c002930 	pcaddu12i	$r16,329(0x149)
    3b1c:	02550113 	sltui	$r19,$r8,1344(0x540)
    3b20:	01135008 	fcopysign.d	$f8,$f0,$f20
    3b24:	80030556 	0x80030556
    3b28:	001c002b 	mul.w	$r11,$r1,$r0
    3b2c:	001f3016 	mulw.d.w	$r22,$r0,$r12
    3b30:	0011fe1c 	sub.d	$r28,$r16,$r31
    3b34:	54011300 	bl	-67108592(0xc000110) # fc003c44 <_RAM_DATA+0x7c002c44>
    3b38:	80a01106 	0x80a01106
    3b3c:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3b40:	0a035501 	0x0a035501
    3b44:	00004000 	revh.2w	$r0,$r0
    3b48:	0012171b 	slt	$r27,$r24,$r5
    3b4c:	06480100 	iocsrrd.b	$r0,$r8
    3b50:	1c001ec4 	pcaddu12i	$r4,246(0xf6)
    3b54:	0000003c 	0x0000003c
    3b58:	0c5e9c01 	0x0c5e9c01
    3b5c:	c71d0000 	0xc71d0000
    3b60:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3b64:	05000005 	0x05000005
    3b68:	002b9803 	0x002b9803
    3b6c:	1ee4121c 	pcaddu18i	$r28,467088(0x72090)
    3b70:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3b74:	0c420000 	0x0c420000
    3b78:	01130000 	fcopysign.d	$f0,$f0,$f0
    3b7c:	30030554 	0x30030554
    3b80:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3b84:	08025501 	0x08025501
    3b88:	5601134a 	bl	-47578864(0xd2a0110) # fd2a3c98 <_RAM_DATA+0x7d2a2c98>
    3b8c:	2b980305 	fld.d	$f5,$r24,1536(0x600)
    3b90:	16001c00 	lu32i.d	$r0,224(0xe0)
    3b94:	1c001ef4 	pcaddu12i	$r20,247(0xf7)
    3b98:	000011fe 	clo.w	$r30,$r15
    3b9c:	06540113 	0x06540113
    3ba0:	ac80a011 	0xac80a011
    3ba4:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3ba8:	000a0355 	0x000a0355
    3bac:	1b000020 	pcalau12i	$r0,-524287(0x80001)
    3bb0:	000010f4 	clo.w	$r20,$r7
    3bb4:	88064301 	0x88064301
    3bb8:	3c1c001e 	0x3c1c001e
    3bbc:	01000000 	0x01000000
    3bc0:	000cc59c 	bytepick.d	$r28,$r12,$r17,0x1
    3bc4:	0fc71d00 	0x0fc71d00
    3bc8:	051b0000 	0x051b0000
    3bcc:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3bd0:	1c002bb0 	pcaddu12i	$r16,349(0x15d)
    3bd4:	001ea812 	mulh.du	$r18,$r0,$r10
    3bd8:	0011921c 	sub.d	$r28,$r16,$r4
    3bdc:	000ca900 	bytepick.d	$r0,$r8,$r10,0x1
    3be0:	54011300 	bl	-67108592(0xc000110) # fc003cf0 <_RAM_DATA+0x7c002cf0>
    3be4:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3be8:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3bec:	45080255 	bnez	$r18,-2816000(0x550800) # ffd543ec <_RAM_DATA+0x7fd533ec>
    3bf0:	05560113 	0x05560113
    3bf4:	002bb003 	0x002bb003
    3bf8:	b816001c 	0xb816001c
    3bfc:	fe1c001e 	0xfe1c001e
    3c00:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3c04:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3c08:	ffac80a0 	0xffac80a0
    3c0c:	5501137b 	bl	-34799344(0xded0110) # fded3d1c <_RAM_DATA+0x7ded2d1c>
    3c10:	10000a03 	addu16i.d	$r3,$r16,2(0x2)
    3c14:	1e1b0000 	pcaddu18i	$r0,55296(0xd800)
    3c18:	0100000f 	0x0100000f
    3c1c:	1e4c063d 	pcaddu18i	$r29,155697(0x26031)
    3c20:	003c1c00 	0x003c1c00
    3c24:	9c010000 	0x9c010000
    3c28:	00000d2c 	0x00000d2c
    3c2c:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    3c30:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3c34:	c8030500 	0xc8030500
    3c38:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    3c3c:	1c001e6c 	pcaddu12i	$r12,243(0xf3)
    3c40:	00001192 	clo.w	$r18,$r12
    3c44:	00000d10 	0x00000d10
    3c48:	05540113 	0x05540113
    3c4c:	00293003 	0x00293003
    3c50:	5501131c 	bl	-59703024(0xc710110) # fc713d60 <_RAM_DATA+0x7c712d60>
    3c54:	13400802 	addu16i.d	$r2,$r0,-12286(0xd002)
    3c58:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3c5c:	1c002bc8 	pcaddu12i	$r8,350(0x15e)
    3c60:	1e7c1600 	pcaddu18i	$r0,254128(0x3e0b0)
    3c64:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3c68:	01130000 	fcopysign.d	$f0,$f0,$f0
    3c6c:	a0110654 	0xa0110654
    3c70:	7bffac80 	0x7bffac80
    3c74:	03550113 	andi	$r19,$r8,0x540
    3c78:	0008000a 	bytepick.w	$r10,$r0,$r0,0x0
    3c7c:	11ff1b00 	addu16i.d	$r0,$r24,32710(0x7fc6)
    3c80:	37010000 	0x37010000
    3c84:	001e1006 	mulh.d	$r6,$r0,$r4
    3c88:	00003c1c 	revb.d	$r28,$r0
    3c8c:	939c0100 	0x939c0100
    3c90:	1d00000d 	pcaddu12i	$r13,-524288(0x80000)
    3c94:	00000fc7 	0x00000fc7
    3c98:	0000051b 	0x0000051b
    3c9c:	2be00305 	fst.d	$f5,$r24,-2048(0x800)
    3ca0:	30121c00 	vldrepl.d	$vr0,$r0,1080(0x438)
    3ca4:	921c001e 	0x921c001e
    3ca8:	77000011 	0x77000011
    3cac:	1300000d 	addu16i.d	$r13,$r0,-16384(0xc000)
    3cb0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3cb4:	1c002930 	pcaddu12i	$r16,329(0x149)
    3cb8:	02550113 	sltui	$r19,$r8,1344(0x540)
    3cbc:	01133a08 	fcopysign.d	$f8,$f16,$f14
    3cc0:	e0030556 	0xe0030556
    3cc4:	001c002b 	mul.w	$r11,$r1,$r0
    3cc8:	001e4016 	mulh.d	$r22,$r0,$r16
    3ccc:	0011fe1c 	sub.d	$r28,$r16,$r31
    3cd0:	54011300 	bl	-67108592(0xc000110) # fc003de0 <_RAM_DATA+0x7c002de0>
    3cd4:	80a01106 	0x80a01106
    3cd8:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3cdc:	0a035501 	0x0a035501
    3ce0:	00000400 	0x00000400
    3ce4:	0010dc1b 	add.d	$r27,$r0,$r23
    3ce8:	06310100 	cacop	0x0,$r8,-960(0xc40)
    3cec:	1c001dd4 	pcaddu12i	$r20,238(0xee)
    3cf0:	0000003c 	0x0000003c
    3cf4:	0dfa9c01 	0x0dfa9c01
    3cf8:	c71d0000 	0xc71d0000
    3cfc:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3d00:	05000005 	0x05000005
    3d04:	002bf803 	0x002bf803
    3d08:	1df4121c 	pcaddu12i	$r28,-24432(0xfa090)
    3d0c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3d10:	0dde0000 	0x0dde0000
    3d14:	01130000 	fcopysign.d	$f0,$f0,$f0
    3d18:	30030554 	0x30030554
    3d1c:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3d20:	08025501 	0x08025501
    3d24:	56011334 	bl	-53346032(0xcd20110) # fcd23e34 <_RAM_DATA+0x7cd22e34>
    3d28:	2bf80305 	fst.d	$f5,$r24,-512(0xe00)
    3d2c:	16001c00 	lu32i.d	$r0,224(0xe0)
    3d30:	1c001e04 	pcaddu12i	$r4,240(0xf0)
    3d34:	000011fe 	clo.w	$r30,$r15
    3d38:	06540113 	0x06540113
    3d3c:	ac80a011 	0xac80a011
    3d40:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3d44:	000a0355 	0x000a0355
    3d48:	1b000002 	pcalau12i	$r2,-524288(0x80000)
    3d4c:	0000130e 	clo.w	$r14,$r24
    3d50:	98062c01 	0x98062c01
    3d54:	3c1c001d 	0x3c1c001d
    3d58:	01000000 	0x01000000
    3d5c:	000e619c 	bytepick.d	$r28,$r12,$r24,0x4
    3d60:	0fc71d00 	0x0fc71d00
    3d64:	051b0000 	0x051b0000
    3d68:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3d6c:	1c002c10 	pcaddu12i	$r16,352(0x160)
    3d70:	001db812 	mul.d	$r18,$r0,$r14
    3d74:	0011921c 	sub.d	$r28,$r16,$r4
    3d78:	000e4500 	bytepick.d	$r0,$r8,$r17,0x4
    3d7c:	54011300 	bl	-67108592(0xc000110) # fc003e8c <_RAM_DATA+0x7c002e8c>
    3d80:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3d84:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3d88:	2e080255 	0x2e080255
    3d8c:	05560113 	0x05560113
    3d90:	002c1003 	alsl.d	$r3,$r0,$r4,0x1
    3d94:	c816001c 	0xc816001c
    3d98:	fe1c001d 	0xfe1c001d
    3d9c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3da0:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3da4:	ffac80a0 	0xffac80a0
    3da8:	5501137b 	bl	-34799344(0xded0110) # fded3eb8 <_RAM_DATA+0x7ded2eb8>
    3dac:	01000a03 	0x01000a03
    3db0:	e71b0000 	0xe71b0000
    3db4:	01000011 	0x01000011
    3db8:	1d5c0626 	pcaddu12i	$r6,-335823(0xae031)
    3dbc:	003c1c00 	0x003c1c00
    3dc0:	9c010000 	0x9c010000
    3dc4:	00000ec7 	0x00000ec7
    3dc8:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    3dcc:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3dd0:	28030500 	ld.b	$r0,$r8,193(0xc1)
    3dd4:	121c002c 	addu16i.d	$r12,$r1,-30976(0x8700)
    3dd8:	1c001d7c 	pcaddu12i	$r28,235(0xeb)
    3ddc:	00001192 	clo.w	$r18,$r12
    3de0:	00000eac 	0x00000eac
    3de4:	05540113 	0x05540113
    3de8:	00293003 	0x00293003
    3dec:	5501131c 	bl	-59703024(0xc710110) # fc713efc <_RAM_DATA+0x7c712efc>
    3df0:	13290802 	addu16i.d	$r2,$r0,-13758(0xca42)
    3df4:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3df8:	1c002c28 	pcaddu12i	$r8,353(0x161)
    3dfc:	1d8c1600 	pcaddu12i	$r0,-237392(0xc60b0)
    3e00:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3e04:	01130000 	fcopysign.d	$f0,$f0,$f0
    3e08:	a0110654 	0xa0110654
    3e0c:	7bffac80 	0x7bffac80
    3e10:	02550113 	sltui	$r19,$r8,1344(0x540)
    3e14:	00008008 	0x00008008
    3e18:	0010c41b 	add.d	$r27,$r0,$r17
    3e1c:	06210100 	cacop	0x0,$r8,-1984(0x840)
    3e20:	1c001d20 	pcaddu12i	$r0,233(0xe9)
    3e24:	0000003c 	0x0000003c
    3e28:	0f2d9c01 	0x0f2d9c01
    3e2c:	c71d0000 	0xc71d0000
    3e30:	1b00000f 	pcalau12i	$r15,-524288(0x80000)
    3e34:	05000005 	0x05000005
    3e38:	002c4003 	alsl.d	$r3,$r0,$r16,0x1
    3e3c:	1d40121c 	pcaddu12i	$r28,-393072(0xa0090)
    3e40:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3e44:	0f120000 	0x0f120000
    3e48:	01130000 	fcopysign.d	$f0,$f0,$f0
    3e4c:	30030554 	0x30030554
    3e50:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3e54:	08025501 	0x08025501
    3e58:	56011323 	bl	-57802480(0xc8e0110) # fc8e3f68 <_RAM_DATA+0x7c8e2f68>
    3e5c:	2c400305 	vst	$vr5,$r24,0
    3e60:	16001c00 	lu32i.d	$r0,224(0xe0)
    3e64:	1c001d50 	pcaddu12i	$r16,234(0xea)
    3e68:	000011fe 	clo.w	$r30,$r15
    3e6c:	06540113 	0x06540113
    3e70:	ac80a011 	0xac80a011
    3e74:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3e78:	40080255 	beqz	$r18,-2881536(0x540800) # ffd44678 <_RAM_DATA+0x7fd43678>
    3e7c:	ef1b0000 	0xef1b0000
    3e80:	01000012 	0x01000012
    3e84:	1ce4061c 	pcaddu12i	$r28,466992(0x72030)
    3e88:	003c1c00 	0x003c1c00
    3e8c:	9c010000 	0x9c010000
    3e90:	00000f92 	0x00000f92
    3e94:	000fc71d 	bytepick.d	$r29,$r24,$r17,0x7
    3e98:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3e9c:	58030500 	beq	$r8,$r0,772(0x304) # 41a0 <_start-0x1bffbe60>
    3ea0:	121c002c 	addu16i.d	$r12,$r1,-30976(0x8700)
    3ea4:	1c001d04 	pcaddu12i	$r4,232(0xe8)
    3ea8:	00001192 	clo.w	$r18,$r12
    3eac:	00000f77 	0x00000f77
    3eb0:	05540113 	0x05540113
    3eb4:	00293003 	0x00293003
    3eb8:	5501131c 	bl	-59703024(0xc710110) # fc713fc8 <_RAM_DATA+0x7c712fc8>
    3ebc:	01134e01 	fcopysign.d	$f1,$f16,$f19
    3ec0:	58030556 	beq	$r10,$r22,772(0x304) # 41c4 <_start-0x1bffbe3c>
    3ec4:	001c002c 	mul.w	$r12,$r1,$r0
    3ec8:	001d1416 	mulh.wu	$r22,$r0,$r5
    3ecc:	0011fe1c 	sub.d	$r28,$r16,$r31
    3ed0:	54011300 	bl	-67108592(0xc000110) # fc003fe0 <_RAM_DATA+0x7c002fe0>
    3ed4:	80a01106 	0x80a01106
    3ed8:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3edc:	08025501 	0x08025501
    3ee0:	1b000020 	pcalau12i	$r0,-524287(0x80001)
    3ee4:	000011b7 	clo.w	$r23,$r13
    3ee8:	a8061701 	0xa8061701
    3eec:	3c1c001c 	0x3c1c001c
    3ef0:	01000000 	0x01000000
    3ef4:	000ff69c 	bytepick.d	$r28,$r20,$r29,0x7
    3ef8:	0fc71d00 	0x0fc71d00
    3efc:	051b0000 	0x051b0000
    3f00:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3f04:	1c002c70 	pcaddu12i	$r16,355(0x163)
    3f08:	001cc812 	mulh.w	$r18,$r0,$r18
    3f0c:	0011921c 	sub.d	$r28,$r16,$r4
    3f10:	000fdc00 	bytepick.d	$r0,$r0,$r23,0x7
    3f14:	54011300 	bl	-67108592(0xc000110) # fc004024 <_RAM_DATA+0x7c003024>
    3f18:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3f1c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3f20:	13490155 	addu16i.d	$r21,$r10,-11712(0xd240)
    3f24:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3f28:	1c002c70 	pcaddu12i	$r16,355(0x163)
    3f2c:	1cd81600 	pcaddu12i	$r0,442544(0x6c0b0)
    3f30:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3f34:	01130000 	fcopysign.d	$f0,$f0,$f0
    3f38:	a0110654 	0xa0110654
    3f3c:	7bffac80 	0x7bffac80
    3f40:	01550113 	0x01550113
    3f44:	1b000040 	pcalau12i	$r0,-524286(0x80002)
    3f48:	00001094 	clo.w	$r20,$r4
    3f4c:	6c061201 	bgeu	$r16,$r1,1552(0x610) # 455c <_start-0x1bffbaa4>
    3f50:	3c1c001c 	0x3c1c001c
    3f54:	01000000 	0x01000000
    3f58:	00105a9c 	add.w	$r28,$r20,$r22
    3f5c:	0fc71d00 	0x0fc71d00
    3f60:	051b0000 	0x051b0000
    3f64:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3f68:	1c002c88 	pcaddu12i	$r8,356(0x164)
    3f6c:	001c8c12 	mulh.w	$r18,$r0,$r3
    3f70:	0011921c 	sub.d	$r28,$r16,$r4
    3f74:	00104000 	add.w	$r0,$r0,$r16
    3f78:	54011300 	bl	-67108592(0xc000110) # fc004088 <_RAM_DATA+0x7c003088>
    3f7c:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3f80:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3f84:	13440155 	addu16i.d	$r21,$r10,-12032(0xd100)
    3f88:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3f8c:	1c002c88 	pcaddu12i	$r8,356(0x164)
    3f90:	1c9c1600 	pcaddu12i	$r0,319664(0x4e0b0)
    3f94:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3f98:	01130000 	fcopysign.d	$f0,$f0,$f0
    3f9c:	a0110654 	0xa0110654
    3fa0:	7bffac80 	0x7bffac80
    3fa4:	01550113 	0x01550113
    3fa8:	1b000038 	pcalau12i	$r24,-524287(0x80001)
    3fac:	000012b2 	clo.w	$r18,$r21
    3fb0:	30060d01 	0x30060d01
    3fb4:	3c1c001c 	0x3c1c001c
    3fb8:	01000000 	0x01000000
    3fbc:	0010be9c 	add.d	$r28,$r20,$r15
    3fc0:	0fc71d00 	0x0fc71d00
    3fc4:	051b0000 	0x051b0000
    3fc8:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3fcc:	1c002ca0 	pcaddu12i	$r0,357(0x165)
    3fd0:	001c5012 	mul.w	$r18,$r0,$r20
    3fd4:	0011921c 	sub.d	$r28,$r16,$r4
    3fd8:	0010a400 	add.d	$r0,$r0,$r9
    3fdc:	54011300 	bl	-67108592(0xc000110) # fc0040ec <_RAM_DATA+0x7c0030ec>
    3fe0:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    3fe4:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3fe8:	133f0155 	addu16i.d	$r21,$r10,-12352(0xcfc0)
    3fec:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3ff0:	1c002ca0 	pcaddu12i	$r0,357(0x165)
    3ff4:	1c601600 	pcaddu12i	$r0,196784(0x300b0)
    3ff8:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3ffc:	01130000 	fcopysign.d	$f0,$f0,$f0
    4000:	a0110654 	0xa0110654
    4004:	7bffac80 	0x7bffac80
    4008:	01550113 	0x01550113
    400c:	1b000034 	pcalau12i	$r20,-524287(0x80001)
    4010:	0000117a 	clo.w	$r26,$r11
    4014:	f4060801 	0xf4060801
    4018:	3c1c001b 	0x3c1c001b
    401c:	01000000 	0x01000000
    4020:	0011229c 	sub.w	$r28,$r20,$r8
    4024:	0fc71d00 	0x0fc71d00
    4028:	051b0000 	0x051b0000
    402c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4030:	1c002cb8 	pcaddu12i	$r24,357(0x165)
    4034:	001c1412 	mul.w	$r18,$r0,$r5
    4038:	0011921c 	sub.d	$r28,$r16,$r4
    403c:	00110800 	sub.w	$r0,$r0,$r2
    4040:	54011300 	bl	-67108592(0xc000110) # fc004150 <_RAM_DATA+0x7c003150>
    4044:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    4048:	01131c00 	fcopysign.d	$f0,$f0,$f7
    404c:	133a0155 	addu16i.d	$r21,$r10,-12672(0xce80)
    4050:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    4054:	1c002cb8 	pcaddu12i	$r24,357(0x165)
    4058:	1c241600 	pcaddu12i	$r0,73904(0x120b0)
    405c:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    4060:	01130000 	fcopysign.d	$f0,$f0,$f0
    4064:	a0110654 	0xa0110654
    4068:	7bffac80 	0x7bffac80
    406c:	01550113 	0x01550113
    4070:	1b000032 	pcalau12i	$r18,-524287(0x80001)
    4074:	0000102b 	clo.w	$r11,$r1
    4078:	b8060301 	0xb8060301
    407c:	3c1c001b 	0x3c1c001b
    4080:	01000000 	0x01000000
    4084:	0011869c 	sub.d	$r28,$r20,$r1
    4088:	0fc71d00 	0x0fc71d00
    408c:	051b0000 	0x051b0000
    4090:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4094:	1c002cd0 	pcaddu12i	$r16,358(0x166)
    4098:	001bd812 	rotr.d	$r18,$r0,$r22
    409c:	0011921c 	sub.d	$r28,$r16,$r4
    40a0:	00116c00 	sub.w	$r0,$r0,$r27
    40a4:	54011300 	bl	-67108592(0xc000110) # fc0041b4 <_RAM_DATA+0x7c0031b4>
    40a8:	29300305 	st.b	$r5,$r24,-1024(0xc00)
    40ac:	01131c00 	fcopysign.d	$f0,$f0,$f7
    40b0:	13350155 	addu16i.d	$r21,$r10,-12992(0xcd40)
    40b4:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    40b8:	1c002cd0 	pcaddu12i	$r16,358(0x166)
    40bc:	1be81600 	pcalau12i	$r0,-48976(0xf40b0)
    40c0:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    40c4:	01130000 	fcopysign.d	$f0,$f0,$f0
    40c8:	a0110654 	0xa0110654
    40cc:	7bffac80 	0x7bffac80
    40d0:	01550113 	0x01550113
    40d4:	1f000031 	pcaddu18i	$r17,-524287(0x80001)
    40d8:	00000659 	0x00000659
    40dc:	00000659 	0x00000659
    40e0:	1f060b07 	pcaddu18i	$r7,-511912(0x83058)
    40e4:	00000714 	0x00000714
    40e8:	00000714 	0x00000714
    40ec:	1f0d0f08 	pcaddu18i	$r8,-497544(0x86878)
    40f0:	00000645 	0x00000645
    40f4:	00000645 	0x00000645
    40f8:	1f060a07 	pcaddu18i	$r7,-511920(0x83050)
    40fc:	00000eb1 	0x00000eb1
    4100:	00000eb1 	0x00000eb1
    4104:	1f065206 	pcaddu18i	$r6,-511344(0x83290)
    4108:	00000c8e 	0x00000c8e
    410c:	00000c8e 	0x00000c8e
    4110:	1f0c4d09 	pcaddu18i	$r9,-499096(0x86268)
    4114:	0000076e 	0x0000076e
    4118:	0000076e 	0x0000076e
    411c:	1f06160a 	pcaddu18i	$r10,-511824(0x830b0)
    4120:	00000bfd 	0x00000bfd
    4124:	00000bfd 	0x00000bfd
    4128:	1f064e09 	pcaddu18i	$r9,-511376(0x83270)
    412c:	00000bc5 	0x00000bc5
    4130:	00000bc5 	0x00000bc5
    4134:	1f06070b 	pcaddu18i	$r11,-511944(0x83038)
    4138:	00000669 	0x00000669
    413c:	00000669 	0x00000669
    4140:	1f060c07 	pcaddu18i	$r7,-511904(0x83060)
    4144:	0000060b 	0x0000060b
    4148:	0000060b 	0x0000060b
    414c:	1f060907 	pcaddu18i	$r7,-511928(0x83048)
    4150:	00000a89 	0x00000a89
    4154:	00000a89 	0x00000a89
    4158:	0006910c 	alsl.wu	$r12,$r8,$r4,0x2

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
     c44:	34050000 	0x34050000
     c48:	3a0e0300 	0x3a0e0300
     c4c:	390b3b0b 	0x390b3b0b
     c50:	3f13490b 	0x3f13490b
     c54:	00193c19 	srl.d	$r25,$r0,$r15
     c58:	012e0600 	0x012e0600
     c5c:	0e03193f 	0x0e03193f
     c60:	0b3b0b3a 	0x0b3b0b3a
     c64:	19270b39 	pcaddi	$r25,-444327(0x93859)
     c68:	01111349 	fscaleb.d	$f9,$f26,$f4
     c6c:	18400612 	pcaddi	$r18,131120(0x20030)
     c70:	00194297 	srl.d	$r23,$r20,$r16
     c74:	00340700 	0x00340700
     c78:	0b3a0803 	0x0b3a0803
     c7c:	0b390b3b 	0x0b390b3b
     c80:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     c84:	001742b7 	sll.w	$r23,$r21,$r16
     c88:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     c8c:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     c90:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     c94:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     c98:	00171001 	sll.w	$r1,$r0,$r4
     c9c:	00240200 	crc.w.b.w	$r0,$r16,$r0
     ca0:	0b3e0b0b 	0x0b3e0b0b
     ca4:	00000e03 	0x00000e03
     ca8:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     cac:	3b0b3a0e 	0x3b0b3a0e
     cb0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d17e8 <_start-0x1bd2e818>
     cb4:	04000013 	csrrd	$r19,0x0
     cb8:	0b0b0024 	0x0b0b0024
     cbc:	08030b3e 	0x08030b3e
     cc0:	34050000 	0x34050000
     cc4:	3a0e0300 	0x3a0e0300
     cc8:	390b3b0b 	0x390b3b0b
     ccc:	3f13490b 	0x3f13490b
     cd0:	00193c19 	srl.d	$r25,$r0,$r15
     cd4:	012e0600 	0x012e0600
     cd8:	0e03193f 	0x0e03193f
     cdc:	0b3b0b3a 	0x0b3b0b3a
     ce0:	19270b39 	pcaddi	$r25,-444327(0x93859)
     ce4:	01111349 	fscaleb.d	$f9,$f26,$f4
     ce8:	18400612 	pcaddi	$r18,131120(0x20030)
     cec:	00194297 	srl.d	$r23,$r20,$r16
     cf0:	00340700 	0x00340700
     cf4:	0b3a0803 	0x0b3a0803
     cf8:	0b390b3b 	0x0b390b3b
     cfc:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     d00:	001742b7 	sll.w	$r23,$r21,$r16
     d04:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     d08:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     d0c:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     d10:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     d14:	00171001 	sll.w	$r1,$r0,$r4
     d18:	00240200 	crc.w.b.w	$r0,$r16,$r0
     d1c:	0b3e0b0b 	0x0b3e0b0b
     d20:	00000e03 	0x00000e03
     d24:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     d28:	3b0b3a0e 	0x3b0b3a0e
     d2c:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1864 <_start-0x1bd2e79c>
     d30:	04000013 	csrrd	$r19,0x0
     d34:	0b0b0024 	0x0b0b0024
     d38:	08030b3e 	0x08030b3e
     d3c:	35050000 	0x35050000
     d40:	00134900 	maskeqz	$r0,$r8,$r18
     d44:	00260600 	crcc.w.b.w	$r0,$r16,$r1
     d48:	00001349 	clo.w	$r9,$r26
     d4c:	03003407 	lu52i.d	$r7,$r0,13(0xd)
     d50:	3b0b3a0e 	0x3b0b3a0e
     d54:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d188c <_start-0x1bd2e774>
     d58:	3c193f13 	0x3c193f13
     d5c:	08000019 	0x08000019
     d60:	0e030113 	0x0e030113
     d64:	0b3a0b0b 	0x0b3a0b0b
     d68:	0b390b3b 	0x0b390b3b
     d6c:	00001301 	clo.w	$r1,$r24
     d70:	03000d09 	lu52i.d	$r9,$r8,3(0x3)
     d74:	3b0b3a0e 	0x3b0b3a0e
     d78:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d18b0 <_start-0x1bd2e750>
     d7c:	000b3813 	0x000b3813
     d80:	000f0a00 	bytepick.d	$r0,$r16,$r2,0x6
     d84:	13490b0b 	addu16i.d	$r11,$r24,-11710(0xd242)
     d88:	150b0000 	lu12i.w	$r0,-501760(0x85800)
     d8c:	49192701 	0x49192701
     d90:	00130113 	maskeqz	$r19,$r8,$r0
     d94:	00050c00 	alsl.w	$r0,$r0,$r3,0x3
     d98:	00001349 	clo.w	$r9,$r26
     d9c:	0b000f0d 	0x0b000f0d
     da0:	0e00000b 	0x0e00000b
     da4:	13490101 	addu16i.d	$r1,$r8,-11712(0xd240)
     da8:	00001301 	clo.w	$r1,$r24
     dac:	4900210f 	bcnez	$fcc0,3997728(0x3d0020) # 3d0dcc <_start-0x1bc2f234>
     db0:	000b2f13 	0x000b2f13
     db4:	00341000 	0x00341000
     db8:	0b3a0803 	0x0b3a0803
     dbc:	0b390b3b 	0x0b390b3b
     dc0:	18021349 	pcaddi	$r9,4250(0x109a)
     dc4:	15110000 	lu12i.w	$r0,-489472(0x88800)
     dc8:	00192700 	srl.d	$r0,$r24,$r9
     dcc:	00341200 	0x00341200
     dd0:	0b3a0e03 	0x0b3a0e03
     dd4:	0b390b3b 	0x0b390b3b
     dd8:	193f1349 	pcaddi	$r9,-395110(0x9f89a)
     ddc:	00001802 	cto.w	$r2,$r0
     de0:	3f012e13 	0x3f012e13
     de4:	3a0e0319 	0x3a0e0319
     de8:	39053b0b 	0x39053b0b
     dec:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
     df0:	40061201 	beqz	$r16,263696(0x40610) # 41400 <_start-0x1bfbec00>
     df4:	19429718 	pcaddi	$r24,-387912(0xa14b8)
     df8:	00001301 	clo.w	$r1,$r24
     dfc:	01828914 	0x01828914
     e00:	31011100 	0x31011100
     e04:	15000013 	lu12i.w	$r19,-524288(0x80000)
     e08:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     e0c:	0b3a0e03 	0x0b3a0e03
     e10:	0b39053b 	0x0b39053b
     e14:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
     e18:	06120111 	cacop	0x11,$r8,1152(0x480)
     e1c:	42971840 	beqz	$r2,169752(0x29718) # 2a534 <_start-0x1bfd5acc>
     e20:	00130119 	maskeqz	$r25,$r8,$r0
     e24:	010b1600 	fmin.d	$f0,$f16,$f5
     e28:	06120111 	cacop	0x11,$r8,1152(0x480)
     e2c:	00001301 	clo.w	$r1,$r24
     e30:	03003417 	lu52i.d	$r23,$r0,13(0xd)
     e34:	3b0b3a08 	0x3b0b3a08
     e38:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151970 <_start-0x1beae690>
     e3c:	b7170213 	0xb7170213
     e40:	00001742 	clz.w	$r2,$r26
     e44:	01828918 	0x01828918
     e48:	31011101 	0x31011101
     e4c:	00130113 	maskeqz	$r19,$r8,$r0
     e50:	828a1900 	0x828a1900
     e54:	18020001 	pcaddi	$r1,4096(0x1000)
     e58:	00184291 	sra.w	$r17,$r20,$r16
     e5c:	012e1a00 	0x012e1a00
     e60:	0e03193f 	0x0e03193f
     e64:	0b3b0b3a 	0x0b3b0b3a
     e68:	19270b39 	pcaddi	$r25,-444327(0x93859)
     e6c:	01111349 	fscaleb.d	$f9,$f26,$f4
     e70:	18400612 	pcaddi	$r18,131120(0x20030)
     e74:	01194297 	0x01194297
     e78:	1b000013 	pcalau12i	$r19,-524288(0x80000)
     e7c:	08030034 	0x08030034
     e80:	0b3b0b3a 	0x0b3b0b3a
     e84:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     e88:	42b71702 	beqz	$r24,702228(0xab714) # ac59c <_start-0x1bf53a64>
     e8c:	1c000017 	pcaddu12i	$r23,0
     e90:	0e030034 	0x0e030034
     e94:	0b3b0b3a 	0x0b3b0b3a
     e98:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     e9c:	00001802 	cto.w	$r2,$r0
     ea0:	0300341d 	lu52i.d	$r29,$r0,13(0xd)
     ea4:	3b0b3a0e 	0x3b0b3a0e
     ea8:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d19e0 <_start-0x1bd2e620>
     eac:	b7170213 	0xb7170213
     eb0:	00001742 	clz.w	$r2,$r26
     eb4:	03000a1e 	lu52i.d	$r30,$r16,2(0x2)
     eb8:	3b0b3a0e 	0x3b0b3a0e
     ebc:	110b390b 	addu16i.d	$r11,$r8,17102(0x42ce)
     ec0:	1f000001 	pcaddu18i	$r1,-524288(0x80000)
     ec4:	01018289 	0x01018289
     ec8:	13010111 	addu16i.d	$r17,$r8,-16320(0xc040)
     ecc:	89200000 	0x89200000
     ed0:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     ed4:	00133101 	maskeqz	$r1,$r8,$r12
     ed8:	00052100 	alsl.w	$r0,$r8,$r8,0x3
     edc:	0b3a0e03 	0x0b3a0e03
     ee0:	0b390b3b 	0x0b390b3b
     ee4:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     ee8:	001742b7 	sll.w	$r23,$r21,$r16
     eec:	00052200 	alsl.w	$r0,$r16,$r8,0x3
     ef0:	0b3a0e03 	0x0b3a0e03
     ef4:	0b390b3b 	0x0b390b3b
     ef8:	18021349 	pcaddi	$r9,4250(0x109a)
     efc:	2e230000 	0x2e230000
     f00:	3c193f00 	0x3c193f00
     f04:	030e6e19 	lu52i.d	$r25,$r16,923(0x39b)
     f08:	3b0b3a0e 	0x3b0b3a0e
     f0c:	000b390b 	0x000b390b
     f10:	11010000 	addu16i.d	$r0,$r0,16448(0x4040)
     f14:	130e2501 	addu16i.d	$r1,$r8,-15479(0xc389)
     f18:	1b0e030b 	pcalau12i	$r11,-495592(0x87018)
     f1c:	1117550e 	addu16i.d	$r14,$r8,17877(0x45d5)
     f20:	00171001 	sll.w	$r1,$r0,$r4
     f24:	00240200 	crc.w.b.w	$r0,$r16,$r0
     f28:	0b3e0b0b 	0x0b3e0b0b
     f2c:	00000e03 	0x00000e03
     f30:	03001603 	lu52i.d	$r3,$r16,5(0x5)
     f34:	3b0b3a0e 	0x3b0b3a0e
     f38:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1a70 <_start-0x1bd2e590>
     f3c:	04000013 	csrrd	$r19,0x0
     f40:	0b0b0024 	0x0b0b0024
     f44:	08030b3e 	0x08030b3e
     f48:	35050000 	0x35050000
     f4c:	00134900 	maskeqz	$r0,$r8,$r18
     f50:	00260600 	crcc.w.b.w	$r0,$r16,$r1
     f54:	00001349 	clo.w	$r9,$r26
     f58:	03003407 	lu52i.d	$r7,$r0,13(0xd)
     f5c:	3b0b3a0e 	0x3b0b3a0e
     f60:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1a98 <_start-0x1bd2e568>
     f64:	3c193f13 	0x3c193f13
     f68:	08000019 	0x08000019
     f6c:	0b0b0113 	0x0b0b0113
     f70:	053b0b3a 	0x053b0b3a
     f74:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     f78:	0d090000 	0x0d090000
     f7c:	3a0e0300 	0x3a0e0300
     f80:	39053b0b 	0x39053b0b
     f84:	3813490b 	0x3813490b
     f88:	0a00000b 	0x0a00000b
     f8c:	0e030016 	0x0e030016
     f90:	053b0b3a 	0x053b0b3a
     f94:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     f98:	010b0000 	fmin.d	$f0,$f0,$f0
     f9c:	01134901 	fcopysign.d	$f1,$f8,$f18
     fa0:	0c000013 	0x0c000013
     fa4:	13490021 	addu16i.d	$r1,$r1,-11712(0xd240)
     fa8:	00000b2f 	0x00000b2f
     fac:	0b000f0d 	0x0b000f0d
     fb0:	0013490b 	maskeqz	$r11,$r8,$r18
     fb4:	00150e00 	or	$r0,$r16,$r3
     fb8:	00001927 	cto.w	$r7,$r9
     fbc:	0300340f 	lu52i.d	$r15,$r0,13(0xd)
     fc0:	3b0b3a0e 	0x3b0b3a0e
     fc4:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1afc <_start-0x1bd2e504>
     fc8:	02193f13 	slti	$r19,$r24,1615(0x64f)
     fcc:	10000018 	addu16i.d	$r24,$r0,0
     fd0:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     fd4:	0b3a0e03 	0x0b3a0e03
     fd8:	0b39053b 	0x0b39053b
     fdc:	01111927 	fscaleb.d	$f7,$f9,$f6
     fe0:	18400612 	pcaddi	$r18,131120(0x20030)
     fe4:	01194297 	0x01194297
     fe8:	11000013 	addu16i.d	$r19,$r0,16384(0x4000)
     fec:	00018289 	0x00018289
     ff0:	13310111 	addu16i.d	$r17,$r8,-13248(0xcc40)
     ff4:	89120000 	0x89120000
     ff8:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     ffc:	01133101 	fcopysign.d	$f1,$f8,$f12
    1000:	13000013 	addu16i.d	$r19,$r0,-16384(0xc000)
    1004:	0001828a 	0x0001828a
    1008:	42911802 	beqz	$r0,692504(0xa9118) # aa120 <_start-0x1bf55ee0>
    100c:	14000018 	lu12i.w	$r24,0
    1010:	0e030034 	0x0e030034
    1014:	053b0b3a 	0x053b0b3a
    1018:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    101c:	42b71702 	beqz	$r24,702228(0xab714) # ac730 <_start-0x1bf538d0>
    1020:	15000017 	lu12i.w	$r23,-524288(0x80000)
    1024:	0111010b 	fscaleb.d	$f11,$f8,$f0
    1028:	13010612 	addu16i.d	$r18,$r16,-16319(0xc041)
    102c:	89160000 	0x89160000
    1030:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
    1034:	00133101 	maskeqz	$r1,$r8,$r12
    1038:	00341700 	0x00341700
    103c:	0b3a0803 	0x0b3a0803
    1040:	0b39053b 	0x0b39053b
    1044:	17021349 	lu32i.d	$r9,-520038(0x8109a)
    1048:	001742b7 	sll.w	$r23,$r21,$r16
    104c:	00341800 	0x00341800
    1050:	0b3a0e03 	0x0b3a0e03
    1054:	0b39053b 	0x0b39053b
    1058:	00001349 	clo.w	$r9,$r26
    105c:	03003419 	lu52i.d	$r25,$r0,13(0xd)
    1060:	3b0b3a08 	0x3b0b3a08
    1064:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151b9c <_start-0x1beae464>
    1068:	1a000013 	pcalau12i	$r19,0
    106c:	0e030034 	0x0e030034
    1070:	053b0b3a 	0x053b0b3a
    1074:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    1078:	00001802 	cto.w	$r2,$r0
    107c:	3f012e1b 	0x3f012e1b
    1080:	3a0e0319 	0x3a0e0319
    1084:	390b3b0b 	0x390b3b0b
    1088:	1119270b 	addu16i.d	$r11,$r24,17993(0x4649)
    108c:	40061201 	beqz	$r16,263696(0x40610) # 4169c <_start-0x1bfbe964>
    1090:	19429718 	pcaddi	$r24,-387912(0xa14b8)
    1094:	00001301 	clo.w	$r1,$r24
    1098:	0300341c 	lu52i.d	$r28,$r0,13(0xd)
    109c:	3b0b3a0e 	0x3b0b3a0e
    10a0:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d1bd8 <_start-0x1bd2e428>
    10a4:	b7170213 	0xb7170213
    10a8:	00001742 	clz.w	$r2,$r26
    10ac:	0300341d 	lu52i.d	$r29,$r0,13(0xd)
    10b0:	3413490e 	0x3413490e
    10b4:	00180219 	sra.w	$r25,$r16,$r0
    10b8:	82891e00 	0x82891e00
    10bc:	01110001 	fscaleb.d	$f1,$f0,$f0
    10c0:	00184293 	sra.w	$r19,$r20,$r16
    10c4:	002e1f00 	0x002e1f00
    10c8:	193c193f 	pcaddi	$r31,-401207(0x9e0c9)
    10cc:	0e030e6e 	0x0e030e6e
    10d0:	0b3b0b3a 	0x0b3b0b3a
    10d4:	00000b39 	0x00000b39
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
 2f0:	0000001c 	0x0000001c
 2f4:	23c30002 	sc.d	$r2,$r0,-15616(0xc300)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 2fc:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	00000034 	0x00000034
	...
 310:	0000001c 	0x0000001c
 314:	24a40002 	ldptr.w	$r2,$r0,-23552(0xa400)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 31c:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c0019d4 	pcaddu12i	$r20,206(0xce)
 324:	00000034 	0x00000034
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	00000044 	0x00000044
 334:	25850002 	stptr.w	$r2,$r0,-31488(0x8500)
 338:	00040000 	alsl.w	$r0,$r0,$r0,0x1
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	00000004 	0x00000004
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	00000000 	0x00000000
 34c:	00000140 	0x00000140
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	00000000 	0x00000000
 354:	00000878 	0x00000878
 358:	1c001a08 	pcaddu12i	$r8,208(0xd0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	0000011c 	0x0000011c
 360:	1c001b24 	pcaddu12i	$r4,217(0xd9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	0000006c 	0x0000006c
 368:	1c001b90 	pcaddu12i	$r16,220(0xdc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	00000028 	0x00000028
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	0000015c 	0x0000015c
 37c:	2f510002 	0x2f510002
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 384:	00000000 	0x00000000
 388:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
 38c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
 394:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c001c30 	pcaddu12i	$r16,225(0xe1)
 39c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c001c6c 	pcaddu12i	$r12,227(0xe3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	0000003c 	0x0000003c
 3a8:	1c001ca8 	pcaddu12i	$r8,229(0xe5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c001ce4 	pcaddu12i	$r4,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	0000003c 	0x0000003c
 3b8:	1c001d20 	pcaddu12i	$r0,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	0000003c 	0x0000003c
 3c0:	1c001d5c 	pcaddu12i	$r28,234(0xea)
 3c4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c001d98 	pcaddu12i	$r24,236(0xec)
 3cc:	0000003c 	0x0000003c
 3d0:	1c001dd4 	pcaddu12i	$r20,238(0xee)
 3d4:	0000003c 	0x0000003c
 3d8:	1c001e10 	pcaddu12i	$r16,240(0xf0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	0000003c 	0x0000003c
 3e0:	1c001e4c 	pcaddu12i	$r12,242(0xf2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
 3e4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
 3e8:	1c001e88 	pcaddu12i	$r8,244(0xf4)
 3ec:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
 3f0:	1c001ec4 	pcaddu12i	$r4,246(0xf6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
 3f4:	0000003c 	0x0000003c
 3f8:	1c001f00 	pcaddu12i	$r0,248(0xf8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
 3fc:	0000003c 	0x0000003c
 400:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
 404:	0000003c 	0x0000003c
 408:	1c001f78 	pcaddu12i	$r24,251(0xfb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
 40c:	0000003c 	0x0000003c
 410:	1c001fb4 	pcaddu12i	$r20,253(0xfd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
 414:	0000003c 	0x0000003c
 418:	1c001ff0 	pcaddu12i	$r16,255(0xff)
 41c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
 420:	1c00202c 	pcaddu12i	$r12,257(0x101)
 424:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
 428:	1c002068 	pcaddu12i	$r8,259(0x103)
 42c:	0000003c 	0x0000003c
 430:	1c0020a4 	pcaddu12i	$r4,261(0x105)
 434:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 438:	1c0020e0 	pcaddu12i	$r0,263(0x107)
 43c:	0000003c 	0x0000003c
 440:	1c00211c 	pcaddu12i	$r28,264(0x108)
 444:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
 448:	1c002158 	pcaddu12i	$r24,266(0x10a)
 44c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
 450:	1c002194 	pcaddu12i	$r20,268(0x10c)
 454:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
 458:	1c0021d0 	pcaddu12i	$r16,270(0x10e)
 45c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
 460:	1c00220c 	pcaddu12i	$r12,272(0x110)
 464:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 468:	1c002248 	pcaddu12i	$r8,274(0x112)
 46c:	0000003c 	0x0000003c
 470:	1c002284 	pcaddu12i	$r4,276(0x114)
 474:	0000003c 	0x0000003c
 478:	1c0022c0 	pcaddu12i	$r0,278(0x116)
 47c:	0000003c 	0x0000003c
 480:	1c0022fc 	pcaddu12i	$r28,279(0x117)
 484:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
 488:	1c002338 	pcaddu12i	$r24,281(0x119)
 48c:	00000098 	0x00000098
 490:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
 494:	00000024 	0x00000024
 498:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
 49c:	00000034 	0x00000034
 4a0:	1c0023d0 	pcaddu12i	$r16,286(0x11e)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
 4a4:	00000030 	0x00000030
 4a8:	1c002400 	pcaddu12i	$r0,288(0x120)
 4ac:	0000004c 	0x0000004c
 4b0:	1c00244c 	pcaddu12i	$r12,290(0x122)
 4b4:	00000020 	0x00000020
 4b8:	1c00246c 	pcaddu12i	$r12,291(0x123)
 4bc:	00000090 	0x00000090
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 4c0:	1c0024fc 	pcaddu12i	$r28,295(0x127)
 4c4:	00000110 	0x00000110
 4c8:	1c00260c 	pcaddu12i	$r12,304(0x130)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
 4cc:	00000028 	0x00000028
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
     d34:	53007265 	b	-107544464(0x9970070) # f9970da4 <_RAM_DATA+0x7996fda4>
     d38:	6e495f44 	bgeu	$r26,$r4,-112292(0x2495c) # fffe5694 <_RAM_DATA+0x7ffe4694>
     d3c:	44007469 	bnez	$r3,2359412(0x240074) # 240db0 <_start-0x1bdbf250>
     d40:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     d44:	2f737265 	0x2f737265
     d48:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7ba8 <_RAM_DATA+0x7fff6ba8>
     d4c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff5178 <_RAM_DATA+0x7fff4178>
     d50:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17ac4 <_start-0x1bfe853c>
     d54:	2f73746e 	0x2f73746e
     d58:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 171c4 <_start-0x1bfe8e3c>
     d5c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7ca8 <_RAM_DATA+0x7fff6ca8>
     d60:	7241676e 	0x7241676e
     d64:	505f6863 	b	25976680(0x18c5f68) # 18c6ccc <_start-0x1a739334>
     d68:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 170d4 <_start-0x1bfe8f2c>
     d6c:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe76dc <_RAM_DATA+0x7ffe66dc>
     d70:	79535f67 	0x79535f67
     d74:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 172e8 <_start-0x1bfe8d18>
     d78:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     d7c:	732f3230 	0x732f3230
     d80:	732f6372 	0x732f6372
     d84:	72642f77 	0x72642f77
     d88:	72657669 	0x72657669
     d8c:	2e64732f 	0x2e64732f
     d90:	44440063 	bnez	$r3,803840(0xc4400) # c5190 <_start-0x1bf3ae70>
     d94:	6e495f52 	bgeu	$r26,$r18,-112292(0x2495c) # fffe56f0 <_RAM_DATA+0x7ffe46f0>
     d98:	44007469 	bnez	$r3,2359412(0x240074) # 240e0c <_start-0x1bdbf1f4>
     d9c:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     da0:	2f737265 	0x2f737265
     da4:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7c04 <_RAM_DATA+0x7fff6c04>
     da8:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff51d4 <_RAM_DATA+0x7fff41d4>
     dac:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17b20 <_start-0x1bfe84e0>
     db0:	2f73746e 	0x2f73746e
     db4:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17220 <_start-0x1bfe8de0>
     db8:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7d04 <_RAM_DATA+0x7fff6d04>
     dbc:	7241676e 	0x7241676e
     dc0:	505f6863 	b	25976680(0x18c5f68) # 18c6d28 <_start-0x1a7392d8>
     dc4:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17130 <_start-0x1bfe8ed0>
     dc8:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7738 <_RAM_DATA+0x7ffe6738>
     dcc:	79535f67 	0x79535f67
     dd0:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17344 <_start-0x1bfe8cbc>
     dd4:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     dd8:	732f3230 	0x732f3230
     ddc:	732f6372 	0x732f6372
     de0:	72642f77 	0x72642f77
     de4:	72657669 	0x72657669
     de8:	7264642f 	0x7264642f
     dec:	4500632e 	bnez	$r25,3735648(0x390060) # 390e4c <_start-0x1bc6f1b4>
     df0:	495f7478 	bceqz	$fcc3,-2007180(0x615f74) # ffe16d64 <_RAM_DATA+0x7fe15d64>
     df4:	61487172 	blt	$r11,$r18,84080(0x14870) # 15664 <_start-0x1bfea99c>
     df8:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17a5c <_start-0x1bfe85a4>
     dfc:	74786500 	0x74786500
     e00:	72695f69 	0x72695f69
     e04:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17660 <_start-0x1bfe89a0>
     e08:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17a6c <_start-0x1bfe8594>
     e0c:	61737500 	blt	$r8,$r0,95092(0x17374) # 18180 <_start-0x1bfe7e80>
     e10:	73006567 	0x73006567
     e14:	65746174 	bge	$r11,$r20,95328(0x17460) # 18274 <_start-0x1bfe7d8c>
     e18:	2f3a4400 	0x2f3a4400
     e1c:	72657355 	0x72657355
     e20:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1854c <_start-0x1bfe7ab4>
     e24:	2f73676e 	0x2f73676e
     e28:	75636f44 	0x75636f44
     e2c:	746e656d 	0x746e656d
     e30:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff515c <_RAM_DATA+0x7fff415c>
     e34:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     e38:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7ca4 <_RAM_DATA+0x7fff6ca4>
     e3c:	68637241 	bltu	$r18,$r1,25456(0x6370) # 71ac <_start-0x1bff8e54>
     e40:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff8090 <_RAM_DATA+0x7fff7090>
     e44:	73736563 	0x73736563
     e48:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff75b4 <_RAM_DATA+0x7fff65b4>
     e4c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     e50:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     e54:	32303143 	0x32303143
     e58:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff80c8 <_RAM_DATA+0x7fff70c8>
     e5c:	2f77732f 	0x2f77732f
     e60:	72657375 	0x72657375
     e64:	69616d2f 	bltu	$r9,$r15,90476(0x1616c) # 16fd0 <_start-0x1bfe9030>
     e68:	00632e6e 	bstrins.w	$r14,$r19,0x3,0xb
     e6c:	6c646d63 	bgeu	$r11,$r3,25708(0x646c) # 72d8 <_start-0x1bff8d28>
     e70:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
     e74:	6e69616d 	bgeu	$r11,$r13,-104096(0x26960) # fffe77d4 <_RAM_DATA+0x7ffe67d4>
     e78:	646d6300 	bge	$r24,$r0,28000(0x6d60) # 7bd8 <_start-0x1bff8428>
     e7c:	61726170 	blt	$r11,$r16,94816(0x17260) # 180dc <_start-0x1bfe7f24>
     e80:	73795300 	0x73795300
     e84:	5f6d6574 	bne	$r11,$r20,-37532(0x36d64) # ffff7be8 <_RAM_DATA+0x7fff6be8>
     e88:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     e8c:	646d6300 	bge	$r24,$r0,28000(0x6d60) # 7bec <_start-0x1bff8414>
     e90:	66667562 	bge	$r11,$r2,-104844(0x26674) # fffe7504 <_RAM_DATA+0x7ffe6504>
     e94:	63007265 	blt	$r19,$r5,-65424(0x30070) # ffff0f04 <_RAM_DATA+0x7ffeff04>
     e98:	616e646d 	blt	$r3,$r13,93796(0x16e64) # 17cfc <_start-0x1bfe8304>
     e9c:	6400656d 	bge	$r11,$r13,100(0x64) # f00 <_start-0x1bfff100>
     ea0:	65685f6f 	bge	$r27,$r15,92252(0x1685c) # 176fc <_start-0x1bfe8904>
     ea4:	6600706c 	bge	$r3,$r12,-130960(0x20070) # fffe0f14 <_RAM_DATA+0x7ffdff14>
     ea8:	00636e75 	bstrins.w	$r21,$r19,0x3,0x1b
     eac:	63677261 	blt	$r19,$r1,-39056(0x36770) # ffff761c <_RAM_DATA+0x7fff661c>
     eb0:	52415500 	b	67256660(0x4024154) # 4025004 <_start-0x17fdaffc>
     eb4:	485f3154 	bcnez	$fcc2,-3121360(0x505f30) # ffd06de4 <_RAM_DATA+0x7fd05de4>
     eb8:	4c444e41 	jirl	$r1,$r18,17484(0x444c)
     ebc:	61005245 	blt	$r18,$r5,65616(0x10050) # 10f0c <_start-0x1bfef0f4>
     ec0:	00766772 	bstrins.w	$r18,$r27,0x16,0x19
     ec4:	655f6f64 	bge	$r27,$r4,89964(0x15f6c) # 16e30 <_start-0x1bfe91d0>
     ec8:	00746978 	bstrins.w	$r24,$r11,0x14,0x1a
     ecc:	5f646d63 	bne	$r11,$r3,-39828(0x3646c) # ffff7338 <_RAM_DATA+0x7fff6338>
     ed0:	75727473 	0x75727473
     ed4:	63007463 	blt	$r3,$r3,-65420(0x30074) # ffff0f48 <_RAM_DATA+0x7ffeff48>
     ed8:	7470646d 	xvmax.b	$xr13,$xr3,$xr25
     edc:	78650072 	0x78650072
     ee0:	73657270 	vssrani.wu.d	$vr16,$vr19,0x1c
     ee4:	6e6f6973 	bgeu	$r11,$r19,-102552(0x26f68) # fffe7e4c <_RAM_DATA+0x7ffe6e4c>
     ee8:	695f5f00 	bltu	$r24,$r0,89948(0x15f5c) # 16e44 <_start-0x1bfe91bc>
     eec:	3233746e 	0x3233746e
     ef0:	7300745f 	0x7300745f
     ef4:	6d637274 	bgeu	$r19,$r20,90992(0x16370) # 17264 <_start-0x1bfe8d9c>
     ef8:	69680070 	bltu	$r3,$r16,92160(0x16800) # 176f8 <_start-0x1bfe8908>
     efc:	726f7473 	0x726f7473
     f00:	74735f79 	xvmin.w	$xr25,$xr27,$xr23
     f04:	78650072 	0x78650072
     f08:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6e70 <_RAM_DATA+0x7fff5e70>
     f0c:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 7e74 <_start-0x1bff818c>
     f10:	72695f37 	0x72695f37
     f14:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17770 <_start-0x1bfe8890>
     f18:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17b7c <_start-0x1bfe8484>
     f1c:	78650072 	0x78650072
     f20:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff6e88 <_RAM_DATA+0x7fff5e88>
     f24:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe7e8c <_RAM_DATA+0x7ffe6e8c>
     f28:	72695f33 	0x72695f33
     f2c:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17788 <_start-0x1bfe8878>
     f30:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17b94 <_start-0x1bfe846c>
     f34:	72690072 	0x72690072
     f38:	6f6e5f71 	bgeu	$r27,$r17,-37284(0x36e5c) # ffff7d94 <_RAM_DATA+0x7fff6d94>
     f3c:	544e4900 	bl	67128904(0x4004e48) # 4005d84 <_start-0x17ffa27c>
     f40:	00553631 	0x00553631
     f44:	43554f54 	beqz	$r26,-2927284(0x53554c) # ffd36490 <_RAM_DATA+0x7fd35490>
     f48:	65720048 	bge	$r2,$r8,94720(0x17200) # 18148 <_start-0x1bfe7eb8>
     f4c:	006e6567 	bstrins.w	$r7,$r11,0xe,0x19
     f50:	5f544142 	bne	$r10,$r2,-43968(0x35440) # ffff6390 <_RAM_DATA+0x7fff5390>
     f54:	4c494146 	jirl	$r6,$r10,18752(0x4940)
     f58:	52415500 	b	67256660(0x4024154) # 40250ac <_start-0x17fdaf54>
     f5c:	495f3254 	0x495f3254
     f60:	4400544e 	bnez	$r2,3670100(0x380054) # 380fb4 <_start-0x1bc7f04c>
     f64:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     f68:	2f737265 	0x2f737265
     f6c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7dcc <_RAM_DATA+0x7fff6dcc>
     f70:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff539c <_RAM_DATA+0x7fff439c>
     f74:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17ce8 <_start-0x1bfe8318>
     f78:	2f73746e 	0x2f73746e
     f7c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 173e8 <_start-0x1bfe8c18>
     f80:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7ecc <_RAM_DATA+0x7fff6ecc>
     f84:	7241676e 	0x7241676e
     f88:	505f6863 	b	25976680(0x18c5f68) # 18c6ef0 <_start-0x1a739110>
     f8c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 172f8 <_start-0x1bfe8d08>
     f90:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7900 <_RAM_DATA+0x7ffe6900>
     f94:	79535f67 	0x79535f67
     f98:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 1750c <_start-0x1bfe8af4>
     f9c:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     fa0:	732f3230 	0x732f3230
     fa4:	732f6372 	0x732f6372
     fa8:	73752f77 	0x73752f77
     fac:	312f7265 	vstelm.w	$vr5,$r19,-144(0x370),0x3
     fb0:	32303163 	0x32303163
     fb4:	746e495f 	0x746e495f
     fb8:	75727265 	0x75727265
     fbc:	632e7470 	blt	$r3,$r16,-53644(0x32e74) # ffff3e30 <_RAM_DATA+0x7fff2e30>
     fc0:	72617500 	0x72617500
     fc4:	5f003074 	bne	$r3,$r20,-65488(0x30030) # ffff0ff4 <_RAM_DATA+0x7ffefff4>
     fc8:	4e55465f 	jirl	$r31,$r18,-109244(0x25544)
     fcc:	4f495443 	jirl	$r3,$r2,-46764(0x34954)
     fd0:	005f5f4e 	0x005f5f4e
     fd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1844c <_start-0x1bfe7bb4>
     fd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1803c <_start-0x1bfe7fc4>
     fdc:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # ffff463c <_RAM_DATA+0x7fff363c>
     fe0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8150 <_RAM_DATA+0x7fff7150>
     fe4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7e44 <_start-0x1bff81bc>
     fe8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
     fec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18464 <_start-0x1bfe7b9c>
     ff0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18054 <_start-0x1bfe7fac>
     ff4:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # ffff4154 <_RAM_DATA+0x7fff3154>
     ff8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8168 <_RAM_DATA+0x7fff7168>
     ffc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7e5c <_start-0x1bff81a4>
    1000:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1004:	74726175 	xvmin.b	$xr21,$xr11,$xr24
    1008:	0072735f 	bstrins.w	$r31,$r26,0x12,0x1c
    100c:	73676572 	vssrani.du.q	$vr18,$vr11,0x59
    1010:	65006372 	bge	$r27,$r18,65632(0x10060) # 11070 <_start-0x1bfeef90>
    1014:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7988 <_RAM_DATA+0x7fff6988>
    1018:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7988 <_RAM_DATA+0x7fff6988>
    101c:	695f3463 	bltu	$r3,$r3,89908(0x15f34) # 16f50 <_start-0x1bfe90b0>
    1020:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6f90 <_start-0x1bff9070>
    1024:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7490 <_start-0x1bff8b70>
    1028:	65007265 	bge	$r19,$r5,65648(0x10070) # 11098 <_start-0x1bfeef68>
    102c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79a0 <_RAM_DATA+0x7fff69a0>
    1030:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79a0 <_RAM_DATA+0x7fff69a0>
    1034:	695f3061 	bltu	$r3,$r1,89904(0x15f30) # 16f64 <_start-0x1bfe909c>
    1038:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6fa8 <_start-0x1bff9058>
    103c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74a8 <_start-0x1bff8b58>
    1040:	65007265 	bge	$r19,$r5,65648(0x10070) # 110b0 <_start-0x1bfeef50>
    1044:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79b8 <_RAM_DATA+0x7fff69b8>
    1048:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79b8 <_RAM_DATA+0x7fff69b8>
    104c:	695f3763 	bltu	$r27,$r3,89908(0x15f34) # 16f80 <_start-0x1bfe9080>
    1050:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6fc0 <_start-0x1bff9040>
    1054:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74c0 <_start-0x1bff8b40>
    1058:	65007265 	bge	$r19,$r5,65648(0x10070) # 110c8 <_start-0x1bfeef38>
    105c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff79d0 <_RAM_DATA+0x7fff69d0>
    1060:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff79d0 <_RAM_DATA+0x7fff69d0>
    1064:	695f3264 	bltu	$r19,$r4,89904(0x15f30) # 16f94 <_start-0x1bfe906c>
    1068:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 6fd8 <_start-0x1bff9028>
    106c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 74d8 <_start-0x1bff8b28>
    1070:	54007265 	bl	-107741072(0x9940070) # f99410e0 <_RAM_DATA+0x799400e0>
    1074:	52454d49 	b	86394188(0x526454c) # 52655c0 <_start-0x16d9aa40>
    1078:	4e41485f 	jirl	$r31,$r2,-114360(0x24148)
    107c:	52454c44 	b	17974604(0x112454c) # 11255c8 <_start-0x1aedaa38>
    1080:	79654b00 	0x79654b00
    1084:	65707954 	bge	$r10,$r20,94328(0x17078) # 180fc <_start-0x1bfe7f04>
    1088:	79654b00 	0x79654b00
    108c:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # fffe71f4 <_RAM_DATA+0x7ffe61f4>
    1090:	006c656e 	bstrins.w	$r14,$r11,0xc,0x19
    1094:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1850c <_start-0x1bfe7af4>
    1098:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 180fc <_start-0x1bfe7f04>
    109c:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # ffff43fc <_RAM_DATA+0x7fff33fc>
    10a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8210 <_RAM_DATA+0x7fff7210>
    10a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f04 <_start-0x1bff80fc>
    10a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    10ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18524 <_start-0x1bfe7adc>
    10b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18114 <_start-0x1bfe7eec>
    10b4:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # ffff4618 <_RAM_DATA+0x7fff3618>
    10b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8228 <_RAM_DATA+0x7fff7228>
    10bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f1c <_start-0x1bff80e4>
    10c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    10c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1853c <_start-0x1bfe7ac4>
    10c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1812c <_start-0x1bfe7ed4>
    10cc:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # ffff472c <_RAM_DATA+0x7fff372c>
    10d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8240 <_RAM_DATA+0x7fff7240>
    10d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f34 <_start-0x1bff80cc>
    10d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    10dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18554 <_start-0x1bfe7aac>
    10e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18144 <_start-0x1bfe7ebc>
    10e4:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # ffff4244 <_RAM_DATA+0x7fff3244>
    10e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8258 <_RAM_DATA+0x7fff7258>
    10ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f4c <_start-0x1bff80b4>
    10f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    10f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1856c <_start-0x1bfe7a94>
    10f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1815c <_start-0x1bfe7ea4>
    10fc:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # ffff455c <_RAM_DATA+0x7fff355c>
    1100:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8270 <_RAM_DATA+0x7fff7270>
    1104:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 7f64 <_start-0x1bff809c>
    1108:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    110c:	54464f53 	bl	-45332916(0xd4c464c) # fd4c5758 <_RAM_DATA+0x7d4c4758>
    1110:	544e495f 	bl	92032584(0x57c4e48) # 57c5f58 <_start-0x1683a0a8>
    1114:	74786500 	0x74786500
    1118:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    111c:	37626f69 	0x37626f69
    1120:	7172695f 	0x7172695f
    1124:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe728c <_RAM_DATA+0x7ffe628c>
    1128:	72656c64 	0x72656c64
    112c:	74786500 	0x74786500
    1130:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1134:	32636f69 	0x32636f69
    1138:	7172695f 	0x7172695f
    113c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72a4 <_RAM_DATA+0x7ffe62a4>
    1140:	72656c64 	0x72656c64
    1144:	74786500 	0x74786500
    1148:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    114c:	35636f69 	0x35636f69
    1150:	7172695f 	0x7172695f
    1154:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72bc <_RAM_DATA+0x7ffe62bc>
    1158:	72656c64 	0x72656c64
    115c:	74786500 	0x74786500
    1160:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    1164:	30646f69 	0x30646f69
    1168:	7172695f 	0x7172695f
    116c:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe72d4 <_RAM_DATA+0x7ffe62d4>
    1170:	72656c64 	0x72656c64
    1174:	616c6600 	blt	$r16,$r0,93284(0x16c64) # 17dd8 <_start-0x1bfe8228>
    1178:	78650067 	0x78650067
    117c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff70e4 <_RAM_DATA+0x7fff60e4>
    1180:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 180e8 <_start-0x1bfe7f18>
    1184:	72695f31 	0x72695f31
    1188:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 179e4 <_start-0x1bfe861c>
    118c:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17df0 <_start-0x1bfe8210>
    1190:	49540072 	bceqz	$fcc3,-3582976(0x495400) # ffc96590 <_RAM_DATA+0x7fc95590>
    1194:	5f52454d 	bne	$r10,$r13,-44476(0x35244) # ffff63d8 <_RAM_DATA+0x7fff53d8>
    1198:	495f4d38 	bcnez	$fcc1,-2007220(0x615f4c) # ffe170e4 <_RAM_DATA+0x7fe160e4>
    119c:	6500544e 	bge	$r2,$r14,65620(0x10054) # 111f0 <_start-0x1bfeee10>
    11a0:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b14 <_RAM_DATA+0x7fff6b14>
    11a4:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b14 <_RAM_DATA+0x7fff6b14>
    11a8:	695f3364 	bltu	$r27,$r4,89904(0x15f30) # 170d8 <_start-0x1bfe8f28>
    11ac:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 711c <_start-0x1bff8ee4>
    11b0:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 761c <_start-0x1bff89e4>
    11b4:	65007265 	bge	$r19,$r5,65648(0x10070) # 11224 <_start-0x1bfeeddc>
    11b8:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b2c <_RAM_DATA+0x7fff6b2c>
    11bc:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b2c <_RAM_DATA+0x7fff6b2c>
    11c0:	695f3461 	bltu	$r3,$r1,89908(0x15f34) # 170f4 <_start-0x1bfe8f0c>
    11c4:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7134 <_start-0x1bff8ecc>
    11c8:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7634 <_start-0x1bff89cc>
    11cc:	65007265 	bge	$r19,$r5,65648(0x10070) # 1123c <_start-0x1bfeedc4>
    11d0:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b44 <_RAM_DATA+0x7fff6b44>
    11d4:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b44 <_RAM_DATA+0x7fff6b44>
    11d8:	695f3664 	bltu	$r19,$r4,89908(0x15f34) # 1710c <_start-0x1bfe8ef4>
    11dc:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 714c <_start-0x1bff8eb4>
    11e0:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 764c <_start-0x1bff89b4>
    11e4:	65007265 	bge	$r19,$r5,65648(0x10070) # 11254 <_start-0x1bfeedac>
    11e8:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b5c <_RAM_DATA+0x7fff6b5c>
    11ec:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b5c <_RAM_DATA+0x7fff6b5c>
    11f0:	695f3761 	bltu	$r27,$r1,89908(0x15f34) # 17124 <_start-0x1bfe8edc>
    11f4:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7164 <_start-0x1bff8e9c>
    11f8:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7664 <_start-0x1bff899c>
    11fc:	65007265 	bge	$r19,$r5,65648(0x10070) # 1126c <_start-0x1bfeed94>
    1200:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b74 <_RAM_DATA+0x7fff6b74>
    1204:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b74 <_RAM_DATA+0x7fff6b74>
    1208:	695f3262 	bltu	$r19,$r2,89904(0x15f30) # 17138 <_start-0x1bfe8ec8>
    120c:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 717c <_start-0x1bff8e84>
    1210:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 767c <_start-0x1bff8984>
    1214:	65007265 	bge	$r19,$r5,65648(0x10070) # 11284 <_start-0x1bfeed7c>
    1218:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7b8c <_RAM_DATA+0x7fff6b8c>
    121c:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7b8c <_RAM_DATA+0x7fff6b8c>
    1220:	695f3562 	bltu	$r11,$r2,89908(0x15f34) # 17154 <_start-0x1bfe8eac>
    1224:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7194 <_start-0x1bff8e6c>
    1228:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7694 <_start-0x1bff896c>
    122c:	65007265 	bge	$r19,$r5,65648(0x10070) # 1129c <_start-0x1bfeed64>
    1230:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7ba4 <_RAM_DATA+0x7fff6ba4>
    1234:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7ba4 <_RAM_DATA+0x7fff6ba4>
    1238:	695f3063 	bltu	$r3,$r3,89904(0x15f30) # 17168 <_start-0x1bfe8e98>
    123c:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 71ac <_start-0x1bff8e54>
    1240:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 76ac <_start-0x1bff8954>
    1244:	65007265 	bge	$r19,$r5,65648(0x10070) # 112b4 <_start-0x1bfeed4c>
    1248:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7bbc <_RAM_DATA+0x7fff6bbc>
    124c:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7bbc <_RAM_DATA+0x7fff6bbc>
    1250:	695f3363 	bltu	$r27,$r3,89904(0x15f30) # 17180 <_start-0x1bfe8e80>
    1254:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 71c4 <_start-0x1bff8e3c>
    1258:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 76c4 <_start-0x1bff893c>
    125c:	53007265 	b	-107544464(0x9970070) # f99712cc <_RAM_DATA+0x799702cc>
    1260:	7065656c 	vavg.w	$vr12,$vr11,$vr25
    1264:	65006e45 	bge	$r18,$r5,65644(0x1006c) # 112d0 <_start-0x1bfeed30>
    1268:	685f7478 	bltu	$r3,$r24,24436(0x5f74) # 71dc <_start-0x1bff8e24>
    126c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 76d8 <_start-0x1bff8928>
    1270:	54007265 	bl	-107741072(0x9940070) # f99412e0 <_RAM_DATA+0x799402e0>
    1274:	52454d49 	b	86394188(0x526454c) # 52657c0 <_start-0x16d9a840>
    1278:	4b41575f 	0x4b41575f
    127c:	4e495f45 	jirl	$r5,$r26,-112292(0x2495c)
    1280:	78650054 	0x78650054
    1284:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff71ec <_RAM_DATA+0x7fff61ec>
    1288:	636f6970 	blt	$r11,$r16,-37016(0x36f68) # ffff81f0 <_RAM_DATA+0x7fff71f0>
    128c:	72695f36 	0x72695f36
    1290:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17aec <_start-0x1bfe8514>
    1294:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17ef8 <_start-0x1bfe8108>
    1298:	78650072 	0x78650072
    129c:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff7204 <_RAM_DATA+0x7fff6204>
    12a0:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 8208 <_start-0x1bff7df8>
    12a4:	72695f31 	0x72695f31
    12a8:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17b04 <_start-0x1bfe84fc>
    12ac:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17f10 <_start-0x1bfe80f0>
    12b0:	78650072 	0x78650072
    12b4:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff721c <_RAM_DATA+0x7fff621c>
    12b8:	616f6970 	blt	$r11,$r16,94056(0x16f68) # 18220 <_start-0x1bfe7de0>
    12bc:	72695f32 	0x72695f32
    12c0:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17b1c <_start-0x1bfe84e4>
    12c4:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17f28 <_start-0x1bfe80d8>
    12c8:	6e690072 	bgeu	$r3,$r18,-104192(0x26900) # fffe7bc8 <_RAM_DATA+0x7ffe6bc8>
    12cc:	685f6374 	bltu	$r27,$r20,24416(0x5f60) # 722c <_start-0x1bff8dd4>
    12d0:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 773c <_start-0x1bff88c4>
    12d4:	65007265 	bge	$r19,$r5,65648(0x10070) # 11344 <_start-0x1bfeecbc>
    12d8:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7c4c <_RAM_DATA+0x7fff6c4c>
    12dc:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7c4c <_RAM_DATA+0x7fff6c4c>
    12e0:	695f3464 	bltu	$r3,$r4,89908(0x15f34) # 17214 <_start-0x1bfe8dec>
    12e4:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7254 <_start-0x1bff8dac>
    12e8:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7754 <_start-0x1bff88ac>
    12ec:	65007265 	bge	$r19,$r5,65648(0x10070) # 1135c <_start-0x1bfeeca4>
    12f0:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7c64 <_RAM_DATA+0x7fff6c64>
    12f4:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7c64 <_RAM_DATA+0x7fff6c64>
    12f8:	695f3561 	bltu	$r11,$r1,89908(0x15f34) # 1722c <_start-0x1bfe8dd4>
    12fc:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 726c <_start-0x1bff8d94>
    1300:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 776c <_start-0x1bff8894>
    1304:	49007265 	0x49007265
    1308:	6552746e 	bge	$r3,$r14,86644(0x15274) # 1657c <_start-0x1bfe9a84>
    130c:	78650067 	0x78650067
    1310:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff7278 <_RAM_DATA+0x7fff6278>
    1314:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe827c <_RAM_DATA+0x7ffe727c>
    1318:	72695f30 	0x72695f30
    131c:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17b78 <_start-0x1bfe8488>
    1320:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 17f84 <_start-0x1bfe807c>
    1324:	Address 0x0000000000001324 is out of bounds.


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
    14ac:	0019a000 	sra.d	$r0,$r0,$r8
    14b0:	0019a41c 	sra.d	$r28,$r0,$r9
    14b4:	3000021c 	0x3000021c
    14b8:	0019a49f 	sra.d	$r31,$r4,$r9
    14bc:	0019d41c 	sra.d	$r28,$r0,$r21
    14c0:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 114c0 <_start-0x1bfeeb40>
	...
    14cc:	00000002 	0x00000002
    14d0:	1c0019d4 	pcaddu12i	$r20,206(0xce)
    14d4:	1c0019d8 	pcaddu12i	$r24,206(0xce)
    14d8:	9f300002 	0x9f300002
    14dc:	1c0019d8 	pcaddu12i	$r24,206(0xce)
    14e0:	1c001a08 	pcaddu12i	$r8,208(0xd0)
    14e4:	005d0001 	0x005d0001
    14e8:	00000000 	0x00000000
    14ec:	02000000 	slti	$r0,$r0,0
    14f0:	00000000 	0x00000000
    14f4:	001a2800 	0x001a2800
    14f8:	001a301c 	0x001a301c
    14fc:	0c00061c 	0x0c00061c
    1500:	001c7fc7 	mul.w	$r7,$r30,$r31
    1504:	001a309f 	0x001a309f
    1508:	001a341c 	0x001a341c
    150c:	5c00011c 	bne	$r8,$r28,0 # 150c <_start-0x1bffeaf4>
    1510:	1c001a34 	pcaddu12i	$r20,209(0xd1)
    1514:	1c001a53 	pcaddu12i	$r19,210(0xd2)
    1518:	005d0001 	0x005d0001
    151c:	00000000 	0x00000000
    1520:	02000000 	slti	$r0,$r0,0
    1524:	00000000 	0x00000000
    1528:	a8000000 	0xa8000000
    152c:	b41c001a 	0xb41c001a
    1530:	041c001a 	csrrd	$r26,0x700
    1534:	5b330a00 	beq	$r16,$r0,-52472(0x33308) # ffff483c <_RAM_DATA+0x7fff383c>
    1538:	001ab49f 	0x001ab49f
    153c:	001ac81c 	0x001ac81c
    1540:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 11540 <_start-0x1bfeeac0>
    1544:	1c001ac8 	pcaddu12i	$r8,214(0xd6)
    1548:	1c001acc 	pcaddu12i	$r12,214(0xd6)
    154c:	cc5c0001 	0xcc5c0001
    1550:	d41c001a 	0xd41c001a
    1554:	011c001a 	0x011c001a
    1558:	00005d00 	ext.w.b	$r0,$r8
    155c:	00000000 	0x00000000
    1560:	00020000 	0x00020000
    1564:	00000000 	0x00000000
    1568:	1c001ae0 	pcaddu12i	$r0,215(0xd7)
    156c:	1c001ae8 	pcaddu12i	$r8,215(0xd7)
    1570:	330a0004 	0x330a0004
    1574:	1ae89f5b 	pcalau12i	$r27,476410(0x744fa)
    1578:	1aec1c00 	pcalau12i	$r0,483552(0x760e0)
    157c:	00011c00 	asrtle.d	$r0,$r7
    1580:	001aec5c 	0x001aec5c
    1584:	001b081c 	rotr.w	$r28,$r0,$r2
    1588:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 11588 <_start-0x1bfeea78>
	...
    1594:	00000002 	0x00000002
    1598:	00000000 	0x00000000
    159c:	1c001a74 	pcaddu12i	$r20,211(0xd3)
    15a0:	1c001a7c 	pcaddu12i	$r28,211(0xd3)
    15a4:	330a0004 	0x330a0004
    15a8:	1a7c9f5b 	pcalau12i	$r27,255226(0x3e4fa)
    15ac:	1a801c00 	pcalau12i	$r0,262368(0x400e0)
    15b0:	00011c00 	asrtle.d	$r0,$r7
    15b4:	001a805c 	0x001a805c
    15b8:	001a9c1c 	0x001a9c1c
    15bc:	5d00011c 	bne	$r8,$r28,65536(0x10000) # 115bc <_start-0x1bfeea44>
    15c0:	1c001b08 	pcaddu12i	$r8,216(0xd8)
    15c4:	1c001b0b 	pcaddu12i	$r11,216(0xd8)
    15c8:	005d0001 	0x005d0001
	...
    15f8:	54000100 	bl	67108864(0x4000000) # 40015f8 <_start-0x17ffea08>
	...
    1604:	00540001 	0x00540001
    1608:	00000000 	0x00000000
    160c:	01000000 	0x01000000
    1610:	00005f00 	ext.w.b	$r0,$r24
    1614:	00000000 	0x00000000
    1618:	00010000 	asrtle.d	$r0,$r0
    161c:	0000005f 	0x0000005f
    1620:	00000000 	0x00000000
    1624:	88000300 	0x88000300
    1628:	00007fb0 	0x00007fb0
    162c:	00000000 	0x00000000
    1630:	00010000 	asrtle.d	$r0,$r0
    1634:	0000005f 	0x0000005f
    1638:	00000000 	0x00000000
    163c:	54000100 	bl	67108864(0x4000000) # 400163c <_start-0x17ffe9c4>
	...
    1648:	00540001 	0x00540001
    164c:	00000000 	0x00000000
    1650:	01000000 	0x01000000
    1654:	00005f00 	ext.w.b	$r0,$r24
    1658:	00000000 	0x00000000
    165c:	00010000 	asrtle.d	$r0,$r0
    1660:	0000005f 	0x0000005f
    1664:	00000000 	0x00000000
    1668:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1668 <_RAM_DATA+0x7fff0668>
	...
    1674:	00540001 	0x00540001
    1678:	00000000 	0x00000000
    167c:	01000000 	0x01000000
    1680:	00005400 	bitrev.d	$r0,$r0
    1684:	00000000 	0x00000000
    1688:	00010000 	asrtle.d	$r0,$r0
    168c:	00000054 	0x00000054
    1690:	00000000 	0x00000000
    1694:	54000100 	bl	67108864(0x4000000) # 4001694 <_start-0x17ffe96c>
	...
    16a8:	00010000 	asrtle.d	$r0,$r0
    16ac:	0000005e 	0x0000005e
    16b0:	00000000 	0x00000000
    16b4:	01000000 	0x01000000
    16b8:	00000000 	0x00000000
    16bc:	00000101 	0x00000101
	...
    16d4:	04000000 	csrrd	$r0,0x0
    16d8:	7da09100 	0x7da09100
    16dc:	0000009f 	0x0000009f
    16e0:	00000000 	0x00000000
    16e4:	91000400 	0x91000400
    16e8:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    16ec:	00000000 	0x00000000
    16f0:	01000000 	0x01000000
    16f4:	00005f00 	ext.w.b	$r0,$r24
    16f8:	00000000 	0x00000000
    16fc:	00010000 	asrtle.d	$r0,$r0
    1700:	0000005f 	0x0000005f
    1704:	00000000 	0x00000000
    1708:	91000400 	0x91000400
    170c:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    1710:	00000000 	0x00000000
    1714:	01000000 	0x01000000
    1718:	00005400 	bitrev.d	$r0,$r0
    171c:	00000000 	0x00000000
    1720:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1724:	9f7da091 	0x9f7da091
	...
    1730:	00540001 	0x00540001
    1734:	00000000 	0x00000000
    1738:	04000000 	csrrd	$r0,0x0
    173c:	7da09100 	0x7da09100
    1740:	0000009f 	0x0000009f
    1744:	00000000 	0x00000000
    1748:	5d000100 	bne	$r8,$r0,65536(0x10000) # 11748 <_start-0x1bfee8b8>
	...
    1754:	a0910004 	0xa0910004
    1758:	00009f7d 	0x00009f7d
    175c:	00000000 	0x00000000
    1760:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1764:	9f7da091 	0x9f7da091
	...
    1770:	a0730004 	0xa0730004
    1774:	00009f7d 	0x00009f7d
	...
    1780:	00000002 	0x00000002
	...
    17a4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17a8:	00000000 	0x00000000
    17ac:	02000000 	slti	$r0,$r0,0
    17b0:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    17b4:	00000000 	0x00000000
    17b8:	01000000 	0x01000000
    17bc:	00006800 	rdtime.d	$r0,$r0
    17c0:	00000000 	0x00000000
    17c4:	00010000 	asrtle.d	$r0,$r0
    17c8:	00000068 	0x00000068
    17cc:	00000000 	0x00000000
    17d0:	68000100 	bltu	$r8,$r0,0 # 17d0 <_start-0x1bffe830>
	...
    17dc:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17e0:	00000000 	0x00000000
    17e4:	01000000 	0x01000000
    17e8:	00006900 	rdtime.d	$r0,$r8
    17ec:	00000000 	0x00000000
    17f0:	00010000 	asrtle.d	$r0,$r0
    17f4:	00000068 	0x00000068
    17f8:	00000000 	0x00000000
    17fc:	68000100 	bltu	$r8,$r0,0 # 17fc <_start-0x1bffe804>
	...
    1808:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    180c:	00000000 	0x00000000
    1810:	01000000 	0x01000000
    1814:	00006800 	rdtime.d	$r0,$r0
    1818:	00000000 	0x00000000
    181c:	00010000 	asrtle.d	$r0,$r0
    1820:	00000068 	0x00000068
    1824:	00000000 	0x00000000
    1828:	68000100 	bltu	$r8,$r0,0 # 1828 <_start-0x1bffe7d8>
	...
    1834:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1838:	00000000 	0x00000000
    183c:	01000000 	0x01000000
    1840:	00006800 	rdtime.d	$r0,$r0
	...
    1854:	00010000 	asrtle.d	$r0,$r0
	...
    1870:	00010000 	asrtle.d	$r0,$r0
	...
    1898:	00020000 	0x00020000
	...
    18a4:	005d0001 	0x005d0001
    18a8:	00000000 	0x00000000
    18ac:	01000000 	0x01000000
    18b0:	00005d00 	ext.w.b	$r0,$r8
    18b4:	00000000 	0x00000000
    18b8:	00010000 	asrtle.d	$r0,$r0
    18bc:	0000005c 	0x0000005c
    18c0:	00000000 	0x00000000
    18c4:	5c000100 	bne	$r8,$r0,0 # 18c4 <_start-0x1bffe73c>
	...
    18d0:	005c0001 	0x005c0001
    18d4:	00000000 	0x00000000
    18d8:	01000000 	0x01000000
    18dc:	00005c00 	ext.w.b	$r0,$r0
    18e0:	00000000 	0x00000000
    18e4:	00010000 	asrtle.d	$r0,$r0
    18e8:	0000006a 	0x0000006a
    18ec:	00000000 	0x00000000
    18f0:	69000100 	bltu	$r8,$r0,65536(0x10000) # 118f0 <_start-0x1bfee710>
	...
    18fc:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1900:	00000000 	0x00000000
    1904:	01000000 	0x01000000
    1908:	00006900 	rdtime.d	$r0,$r8
    190c:	00000000 	0x00000000
    1910:	00010000 	asrtle.d	$r0,$r0
    1914:	00000069 	0x00000069
    1918:	00000000 	0x00000000
    191c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 1191c <_start-0x1bfee6e4>
	...
    1928:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    192c:	00000000 	0x00000000
    1930:	01000000 	0x01000000
    1934:	00006900 	rdtime.d	$r0,$r8
    1938:	00000000 	0x00000000
    193c:	00010000 	asrtle.d	$r0,$r0
    1940:	00000069 	0x00000069
    1944:	00000000 	0x00000000
    1948:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11948 <_start-0x1bfee6b8>
	...
    1954:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1958:	00000000 	0x00000000
    195c:	01000000 	0x01000000
    1960:	00006900 	rdtime.d	$r0,$r8
    1964:	00000000 	0x00000000
    1968:	00010000 	asrtle.d	$r0,$r0
    196c:	0000005c 	0x0000005c
    1970:	00000000 	0x00000000
    1974:	5c000100 	bne	$r8,$r0,0 # 1974 <_start-0x1bffe68c>
	...
    1980:	9f300002 	0x9f300002
	...
    198c:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1990:	00000000 	0x00000000
    1994:	01000000 	0x01000000
    1998:	00006900 	rdtime.d	$r0,$r8
    199c:	00000000 	0x00000000
    19a0:	00010000 	asrtle.d	$r0,$r0
    19a4:	00000069 	0x00000069
    19a8:	00000000 	0x00000000
    19ac:	68000100 	bltu	$r8,$r0,0 # 19ac <_start-0x1bffe654>
	...
    19b8:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19bc:	00000000 	0x00000000
    19c0:	01000000 	0x01000000
    19c4:	00006800 	rdtime.d	$r0,$r0
    19c8:	00000000 	0x00000000
    19cc:	00010000 	asrtle.d	$r0,$r0
    19d0:	00000068 	0x00000068
    19d4:	00000000 	0x00000000
    19d8:	68000100 	bltu	$r8,$r0,0 # 19d8 <_start-0x1bffe628>
	...
    19e4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19e8:	00000000 	0x00000000
    19ec:	01000000 	0x01000000
    19f0:	00006800 	rdtime.d	$r0,$r0
    19f4:	00000000 	0x00000000
    19f8:	00010000 	asrtle.d	$r0,$r0
    19fc:	00000068 	0x00000068
    1a00:	00000000 	0x00000000
    1a04:	5e000100 	bne	$r8,$r0,-131072(0x20000) # fffe1a04 <_RAM_DATA+0x7ffe0a04>
	...
    1a10:	005e0001 	0x005e0001
    1a14:	00000000 	0x00000000
    1a18:	01000000 	0x01000000
    1a1c:	00005c00 	ext.w.b	$r0,$r0
    1a20:	00000000 	0x00000000
    1a24:	00010000 	asrtle.d	$r0,$r0
    1a28:	0000005c 	0x0000005c
    1a2c:	00000000 	0x00000000
    1a30:	5e000100 	bne	$r8,$r0,-131072(0x20000) # fffe1a30 <_RAM_DATA+0x7ffe0a30>
	...
    1a3c:	005e0001 	0x005e0001
    1a40:	00000000 	0x00000000
    1a44:	01000000 	0x01000000
    1a48:	00005c00 	ext.w.b	$r0,$r0
    1a4c:	00000000 	0x00000000
    1a50:	00010000 	asrtle.d	$r0,$r0
    1a54:	0000005c 	0x0000005c
    1a58:	00000000 	0x00000000
    1a5c:	30000200 	0x30000200
    1a60:	0000009f 	0x0000009f
    1a64:	00000000 	0x00000000
    1a68:	00000b00 	0x00000b00
	...
    1a88:	01010000 	fadd.d	$f0,$f0,$f0
    1a8c:	00000000 	0x00000000
    1a90:	00000101 	0x00000101
	...
    1a9c:	02000000 	slti	$r0,$r0,0
    1aa0:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1aa4:	00000000 	0x00000000
    1aa8:	01000000 	0x01000000
    1aac:	00006700 	rdtimeh.w	$r0,$r24
    1ab0:	00000000 	0x00000000
    1ab4:	00010000 	asrtle.d	$r0,$r0
    1ab8:	00000067 	0x00000067
    1abc:	00000000 	0x00000000
    1ac0:	5c000100 	bne	$r8,$r0,0 # 1ac0 <_start-0x1bffe540>
	...
    1acc:	005c0001 	0x005c0001
    1ad0:	00000000 	0x00000000
    1ad4:	01000000 	0x01000000
    1ad8:	00006700 	rdtimeh.w	$r0,$r24
    1adc:	00000000 	0x00000000
    1ae0:	00010000 	asrtle.d	$r0,$r0
    1ae4:	00000067 	0x00000067
    1ae8:	00000000 	0x00000000
    1aec:	68000100 	bltu	$r8,$r0,0 # 1aec <_start-0x1bffe514>
	...
    1af8:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1afc:	00000000 	0x00000000
    1b00:	01000000 	0x01000000
    1b04:	00006700 	rdtimeh.w	$r0,$r24
    1b08:	00000000 	0x00000000
    1b0c:	00010000 	asrtle.d	$r0,$r0
    1b10:	00000068 	0x00000068
    1b14:	00000000 	0x00000000
    1b18:	68000100 	bltu	$r8,$r0,0 # 1b18 <_start-0x1bffe4e8>
	...
    1b24:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1b28:	00000000 	0x00000000
    1b2c:	01000000 	0x01000000
    1b30:	00006700 	rdtimeh.w	$r0,$r24
    1b34:	00000000 	0x00000000
    1b38:	00010000 	asrtle.d	$r0,$r0
    1b3c:	0000005d 	0x0000005d
    1b40:	00000000 	0x00000000
    1b44:	5d000100 	bne	$r8,$r0,65536(0x10000) # 11b44 <_start-0x1bfee4bc>
	...
    1b50:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1b54:	00000000 	0x00000000
    1b58:	02000000 	slti	$r0,$r0,0
    1b5c:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1b60:	00000000 	0x00000000
    1b64:	01000000 	0x01000000
    1b68:	00006700 	rdtimeh.w	$r0,$r24
    1b6c:	00000000 	0x00000000
    1b70:	00010000 	asrtle.d	$r0,$r0
    1b74:	00000067 	0x00000067
    1b78:	00000000 	0x00000000
    1b7c:	30000200 	0x30000200
    1b80:	0000009f 	0x0000009f
    1b84:	00000000 	0x00000000
    1b88:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1b88 <_RAM_DATA+0x7fff0b88>
	...
    1b94:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    1bac:	68000100 	bltu	$r8,$r0,0 # 1bac <_start-0x1bffe454>
	...
    1bb8:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1bbc:	00000000 	0x00000000
    1bc0:	01000000 	0x01000000
    1bc4:	00006800 	rdtime.d	$r0,$r0
	...
    1bdc:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1be0:	00000000 	0x00000000
    1be4:	01000000 	0x01000000
    1be8:	00006900 	rdtime.d	$r0,$r8
    1bec:	00000000 	0x00000000
    1bf0:	00010000 	asrtle.d	$r0,$r0
    1bf4:	00000069 	0x00000069
    1bf8:	00000000 	0x00000000
    1bfc:	00000800 	0x00000800
	...
    1c18:	02000000 	slti	$r0,$r0,0
    1c1c:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1c20:	00000000 	0x00000000
    1c24:	01000000 	0x01000000
    1c28:	00006a00 	rdtime.d	$r0,$r16
    1c2c:	00000000 	0x00000000
    1c30:	00010000 	asrtle.d	$r0,$r0
    1c34:	0000006a 	0x0000006a
    1c38:	00000000 	0x00000000
    1c3c:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c3c <_RAM_DATA+0x7ffe0c3c>
	...
    1c48:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c4c:	00000000 	0x00000000
    1c50:	01000000 	0x01000000
    1c54:	00006a00 	rdtime.d	$r0,$r16
    1c58:	00000000 	0x00000000
    1c5c:	00010000 	asrtle.d	$r0,$r0
    1c60:	0000006a 	0x0000006a
    1c64:	00000000 	0x00000000
    1c68:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c68 <_RAM_DATA+0x7ffe0c68>
	...
    1c74:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c78:	00000000 	0x00000000
    1c7c:	01000000 	0x01000000
    1c80:	00006a00 	rdtime.d	$r0,$r16
    1c84:	00000000 	0x00000000
    1c88:	00010000 	asrtle.d	$r0,$r0
    1c8c:	0000006a 	0x0000006a
    1c90:	00000000 	0x00000000
    1c94:	00000900 	0x00000900
	...
    1cb0:	02000000 	slti	$r0,$r0,0
    1cb4:	009f3b00 	bstrins.d	$r0,$r24,0x1f,0xe
    1cb8:	00000000 	0x00000000
    1cbc:	01000000 	0x01000000
    1cc0:	00006b00 	rdtime.d	$r0,$r24
    1cc4:	00000000 	0x00000000
    1cc8:	00010000 	asrtle.d	$r0,$r0
    1ccc:	0000006b 	0x0000006b
    1cd0:	00000000 	0x00000000
    1cd4:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1cd4 <_RAM_DATA+0x7fff0cd4>
	...
    1ce0:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1ce4:	00000000 	0x00000000
    1ce8:	01000000 	0x01000000
    1cec:	00006700 	rdtimeh.w	$r0,$r24
    1cf0:	00000000 	0x00000000
    1cf4:	00010000 	asrtle.d	$r0,$r0
    1cf8:	0000006b 	0x0000006b
    1cfc:	00000000 	0x00000000
    1d00:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1d00 <_RAM_DATA+0x7fff0d00>
	...
    1d0c:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1d10:	00000000 	0x00000000
    1d14:	01000000 	0x01000000
    1d18:	00006b00 	rdtime.d	$r0,$r24
    1d1c:	00000000 	0x00000000
    1d20:	00010000 	asrtle.d	$r0,$r0
    1d24:	0000006b 	0x0000006b
	...
    1d40:	54000100 	bl	67108864(0x4000000) # 4001d40 <_start-0x17ffe2c0>
	...
    1d4c:	01f30004 	0x01f30004
    1d50:	00009f54 	0x00009f54
    1d54:	00000000 	0x00000000
    1d58:	00010000 	asrtle.d	$r0,$r0
    1d5c:	00000054 	0x00000054
    1d60:	00000000 	0x00000000
    1d64:	f3000400 	0xf3000400
    1d68:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
    1d6c:	00000000 	0x00000000
    1d70:	01000000 	0x01000000
    1d74:	00005400 	bitrev.d	$r0,$r0
    1d78:	00000000 	0x00000000
    1d7c:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1d80:	9f5401f3 	0x9f5401f3
	...
    1da0:	00550001 	0x00550001
    1da4:	00000000 	0x00000000
    1da8:	04000000 	csrrd	$r0,0x0
    1dac:	5501f300 	bl	-67042832(0xc0101f0) # fc011f9c <_RAM_DATA+0x7c010f9c>
    1db0:	0000009f 	0x0000009f
    1db4:	00000000 	0x00000000
    1db8:	55000100 	bl	67174400(0x4010000) # 4011db8 <_start-0x17fee248>
	...
    1dc4:	01f30004 	0x01f30004
    1dc8:	00009f55 	0x00009f55
    1dcc:	00000000 	0x00000000
    1dd0:	00010000 	asrtle.d	$r0,$r0
    1dd4:	00000055 	0x00000055
    1dd8:	00000000 	0x00000000
    1ddc:	f3000400 	0xf3000400
    1de0:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
    1de4:	00000000 	0x00000000
    1de8:	01000000 	0x01000000
    1dec:	00000000 	0x00000000
    1df0:	01000000 	0x01000000
	...
    1dfc:	02000000 	slti	$r0,$r0,0
    1e00:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1e04:	00000000 	0x00000000
    1e08:	01000000 	0x01000000
    1e0c:	00006700 	rdtimeh.w	$r0,$r24
    1e10:	00000000 	0x00000000
    1e14:	00030000 	0x00030000
    1e18:	009f7f88 	bstrins.d	$r8,$r28,0x1f,0x1f
    1e1c:	00000000 	0x00000000
    1e20:	01000000 	0x01000000
    1e24:	00006800 	rdtime.d	$r0,$r0
    1e28:	00000000 	0x00000000
    1e2c:	00020000 	0x00020000
    1e30:	00009f30 	0x00009f30
    1e34:	00000000 	0x00000000
    1e38:	00010000 	asrtle.d	$r0,$r0
    1e3c:	00000067 	0x00000067
	...
    1e4c:	01000000 	0x01000000
    1e50:	00006800 	rdtime.d	$r0,$r0
    1e54:	00000000 	0x00000000
    1e58:	02000000 	slti	$r0,$r0,0
    1e5c:	00000002 	0x00000002
    1e60:	00000000 	0x00000000
    1e64:	00010000 	asrtle.d	$r0,$r0
    1e68:	00000054 	0x00000054
    1e6c:	00000000 	0x00000000
    1e70:	f3000400 	0xf3000400
    1e74:	009f5401 	bstrins.d	$r1,$r0,0x1f,0x15
	...
    1e80:	18000000 	pcaddi	$r0,0
    1e84:	2c1c0025 	vld	$vr5,$r1,1792(0x700)
    1e88:	011c0025 	0x011c0025
    1e8c:	25606700 	stptr.w	$r0,$r24,24676(0x6064)
    1e90:	260c1c00 	ldptr.d	$r0,$r0,3100(0xc1c)
    1e94:	00011c00 	asrtle.d	$r0,$r7
    1e98:	00000067 	0x00000067
	...
    1ea4:	0025ac00 	crc.w.d.w	$r0,$r0,$r11
    1ea8:	0025b41c 	crc.w.d.w	$r28,$r0,$r13
    1eac:	5c00011c 	bne	$r8,$r28,0 # 1eac <_start-0x1bffe154>
    1eb0:	1c0025d0 	pcaddu12i	$r16,302(0x12e)
    1eb4:	1c0025d4 	pcaddu12i	$r20,302(0x12e)
    1eb8:	005c0001 	0x005c0001
	...
    1ec8:	0025b400 	crc.w.d.w	$r0,$r0,$r13
    1ecc:	0025b81c 	crc.w.d.w	$r28,$r0,$r14
    1ed0:	5c00011c 	bne	$r8,$r28,0 # 1ed0 <_start-0x1bffe130>
    1ed4:	1c0025e0 	pcaddu12i	$r0,303(0x12f)
    1ed8:	1c0025f0 	pcaddu12i	$r16,303(0x12f)
    1edc:	005c0001 	0x005c0001
    1ee0:	0c1c0026 	fcmp.cune.s	$fcc6,$f1,$f0
    1ee4:	011c0026 	0x011c0026
    1ee8:	00005c00 	ext.w.b	$r0,$r0
    1eec:	00000000 	0x00000000
    1ef0:	00030000 	0x00030000
    1ef4:	00010100 	asrtle.d	$r8,$r0
    1ef8:	00010100 	asrtle.d	$r8,$r0
    1efc:	259c0000 	stptr.w	$r0,$r0,-25600(0x9c00)
    1f00:	25b41c00 	stptr.w	$r0,$r0,-19428(0xb41c)
    1f04:	00021c00 	0x00021c00
    1f08:	25b49f30 	stptr.w	$r16,$r25,-19300(0xb49c)
    1f0c:	25bc1c00 	stptr.w	$r0,$r0,-17380(0xbc1c)
    1f10:	00011c00 	asrtle.d	$r0,$r7
    1f14:	0025bc5e 	crc.w.d.w	$r30,$r2,$r15
    1f18:	0025c01c 	crc.w.d.w	$r28,$r0,$r16
    1f1c:	3100021c 	0x3100021c
    1f20:	0025c09f 	crc.w.d.w	$r31,$r4,$r16
    1f24:	0025ec1c 	crc.w.d.w	$r28,$r0,$r27
    1f28:	5e00011c 	bne	$r8,$r28,-131072(0x20000) # fffe1f28 <_RAM_DATA+0x7ffe0f28>
    1f2c:	1c0025ec 	pcaddu12i	$r12,303(0x12f)
    1f30:	1c002600 	pcaddu12i	$r0,304(0x130)
    1f34:	9f300002 	0x9f300002
    1f38:	1c002600 	pcaddu12i	$r0,304(0x130)
    1f3c:	1c00260c 	pcaddu12i	$r12,304(0x130)
    1f40:	005e0001 	0x005e0001
	...
    1f50:	00248400 	crc.w.h.w	$r0,$r0,$r1
    1f54:	0024a81c 	crc.w.h.w	$r28,$r0,$r10
    1f58:	5c00011c 	bne	$r8,$r28,0 # 1f58 <_start-0x1bffe0a8>
    1f5c:	1c0024b4 	pcaddu12i	$r20,293(0x125)
    1f60:	1c0024bf 	pcaddu12i	$r31,293(0x125)
    1f64:	d05c0001 	0xd05c0001
    1f68:	db1c0024 	0xdb1c0024
    1f6c:	011c0024 	0x011c0024
    1f70:	00005c00 	ext.w.b	$r0,$r0
	...
    1f7c:	1c002414 	pcaddu12i	$r20,288(0x120)
    1f80:	1c002434 	pcaddu12i	$r20,289(0x121)
    1f84:	00750009 	bstrins.w	$r9,$r0,0x15,0x0
    1f88:	0924e809 	vfmadd.d	$vr9,$vr0,$vr26,$vr9
    1f8c:	009f25f8 	bstrins.d	$r24,$r15,0x1f,0x9
	...
    1f98:	00237800 	div.du	$r0,$r0,$r30
    1f9c:	0023c81c 	mod.du	$r28,$r0,$r18
    1fa0:	6800011c 	bltu	$r8,$r28,0 # 1fa0 <_start-0x1bffe060>
	...
    1fac:	237c0000 	sc.d	$r0,$r0,31744(0x7c00)
    1fb0:	238c1c00 	sc.d	$r0,$r0,-29668(0x8c1c)
    1fb4:	00011c00 	asrtle.d	$r0,$r7
    1fb8:	0000005c 	0x0000005c
    1fbc:	00000000 	0x00000000
    1fc0:	00000100 	0x00000100
    1fc4:	00238400 	mod.du	$r0,$r0,$r1
    1fc8:	00238c1c 	mod.du	$r28,$r0,$r3
    1fcc:	3000021c 	0x3000021c
    1fd0:	00238c9f 	mod.du	$r31,$r4,$r3
    1fd4:	0023c41c 	mod.du	$r28,$r0,$r17
    1fd8:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff1fd8 <_RAM_DATA+0x7fff0fd8>
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
 240:	1c0019a0 	pcaddu12i	$r0,205(0xcd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
 244:	1c0019d4 	pcaddu12i	$r20,206(0xce)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
 250:	1c0019d4 	pcaddu12i	$r20,206(0xce)
 254:	1c001a08 	pcaddu12i	$r8,208(0xd0)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
 278:	1c001a08 	pcaddu12i	$r8,208(0xd0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
 27c:	1c001b24 	pcaddu12i	$r4,217(0xd9)
 280:	1c001b24 	pcaddu12i	$r4,217(0xd9)
 284:	1c001b90 	pcaddu12i	$r16,220(0xdc)
 288:	1c001b90 	pcaddu12i	$r16,220(0xdc)
 28c:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
 298:	1c001bb8 	pcaddu12i	$r24,221(0xdd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 29c:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
 2a0:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	1c001c30 	pcaddu12i	$r16,225(0xe1)
 2a8:	1c001c30 	pcaddu12i	$r16,225(0xe1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
 2ac:	1c001c6c 	pcaddu12i	$r12,227(0xe3)
 2b0:	1c001c6c 	pcaddu12i	$r12,227(0xe3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b4:	1c001ca8 	pcaddu12i	$r8,229(0xe5)
 2b8:	1c001ca8 	pcaddu12i	$r8,229(0xe5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	1c001ce4 	pcaddu12i	$r4,231(0xe7)
 2c0:	1c001ce4 	pcaddu12i	$r4,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	1c001d20 	pcaddu12i	$r0,233(0xe9)
 2c8:	1c001d20 	pcaddu12i	$r0,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	1c001d5c 	pcaddu12i	$r28,234(0xea)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	1c001d5c 	pcaddu12i	$r28,234(0xea)
 2d4:	1c001d98 	pcaddu12i	$r24,236(0xec)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	1c001d98 	pcaddu12i	$r24,236(0xec)
 2dc:	1c001dd4 	pcaddu12i	$r20,238(0xee)
 2e0:	1c001dd4 	pcaddu12i	$r20,238(0xee)
 2e4:	1c001e10 	pcaddu12i	$r16,240(0xf0)
 2e8:	1c001e10 	pcaddu12i	$r16,240(0xf0)
 2ec:	1c001e4c 	pcaddu12i	$r12,242(0xf2)
 2f0:	1c001e4c 	pcaddu12i	$r12,242(0xf2)
 2f4:	1c001e88 	pcaddu12i	$r8,244(0xf4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	1c001e88 	pcaddu12i	$r8,244(0xf4)
 2fc:	1c001ec4 	pcaddu12i	$r4,246(0xf6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	1c001ec4 	pcaddu12i	$r4,246(0xf6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	1c001f00 	pcaddu12i	$r0,248(0xf8)
 308:	1c001f00 	pcaddu12i	$r0,248(0xf8)
 30c:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
 310:	1c001f3c 	pcaddu12i	$r28,249(0xf9)
 314:	1c001f78 	pcaddu12i	$r24,251(0xfb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	1c001f78 	pcaddu12i	$r24,251(0xfb)
 31c:	1c001fb4 	pcaddu12i	$r20,253(0xfd)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c001fb4 	pcaddu12i	$r20,253(0xfd)
 324:	1c001ff0 	pcaddu12i	$r16,255(0xff)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
 328:	1c001ff0 	pcaddu12i	$r16,255(0xff)
 32c:	1c00202c 	pcaddu12i	$r12,257(0x101)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	1c00202c 	pcaddu12i	$r12,257(0x101)
 334:	1c002068 	pcaddu12i	$r8,259(0x103)
 338:	1c002068 	pcaddu12i	$r8,259(0x103)
 33c:	1c0020a4 	pcaddu12i	$r4,261(0x105)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	1c0020a4 	pcaddu12i	$r4,261(0x105)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	1c0020e0 	pcaddu12i	$r0,263(0x107)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	1c0020e0 	pcaddu12i	$r0,263(0x107)
 34c:	1c00211c 	pcaddu12i	$r28,264(0x108)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c00211c 	pcaddu12i	$r28,264(0x108)
 354:	1c002158 	pcaddu12i	$r24,266(0x10a)
 358:	1c002158 	pcaddu12i	$r24,266(0x10a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	1c002194 	pcaddu12i	$r20,268(0x10c)
 360:	1c002194 	pcaddu12i	$r20,268(0x10c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	1c0021d0 	pcaddu12i	$r16,270(0x10e)
 368:	1c0021d0 	pcaddu12i	$r16,270(0x10e)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	1c00220c 	pcaddu12i	$r12,272(0x110)
 370:	1c00220c 	pcaddu12i	$r12,272(0x110)
 374:	1c002248 	pcaddu12i	$r8,274(0x112)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	1c002248 	pcaddu12i	$r8,274(0x112)
 37c:	1c002284 	pcaddu12i	$r4,276(0x114)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	1c002284 	pcaddu12i	$r4,276(0x114)
 384:	1c0022c0 	pcaddu12i	$r0,278(0x116)
 388:	1c0022c0 	pcaddu12i	$r0,278(0x116)
 38c:	1c0022fc 	pcaddu12i	$r28,279(0x117)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c0022fc 	pcaddu12i	$r28,279(0x117)
 394:	1c002338 	pcaddu12i	$r24,281(0x119)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c002338 	pcaddu12i	$r24,281(0x119)
 39c:	1c0023d0 	pcaddu12i	$r16,286(0x11e)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c0023d0 	pcaddu12i	$r16,286(0x11e)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	1c002400 	pcaddu12i	$r0,288(0x120)
 3b8:	1c002400 	pcaddu12i	$r0,288(0x120)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	1c00244c 	pcaddu12i	$r12,290(0x122)
 3c0:	1c00244c 	pcaddu12i	$r12,290(0x122)
 3c4:	1c00246c 	pcaddu12i	$r12,291(0x123)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c00246c 	pcaddu12i	$r12,291(0x123)
 3cc:	1c0024fc 	pcaddu12i	$r28,295(0x127)
 3d0:	1c0024fc 	pcaddu12i	$r28,295(0x127)
 3d4:	1c00260c 	pcaddu12i	$r12,304(0x130)
 3d8:	1c00260c 	pcaddu12i	$r12,304(0x130)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	1c002634 	pcaddu12i	$r20,305(0x131)
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
