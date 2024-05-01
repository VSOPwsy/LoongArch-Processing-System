
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
1c00000c:	03b6f1ef 	ori	$r15,$r15,0xdbc
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
1c0000a0:	541acc00 	bl	6860(0x1acc) # 1c001b6c <main>
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
1c001090:	54139400 	bl	5012(0x1394) # 1c002424 <TIMER_WAKE_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:111
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:114
1c001098:	5413bc00 	bl	5052(0x13bc) # 1c002454 <TOUCH>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:115
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:118
1c0010a0:	54140000 	bl	5120(0x1400) # 1c0024a0 <UART2_INT>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:119
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:122
1c0010a8:	54141800 	bl	5144(0x1418) # 1c0024c0 <BAT_FAIL>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:123
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:126
1c0010b0:	5412dc00 	bl	4828(0x12dc) # 1c00238c <ext_handler>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:127
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:130
1c0010b8:	5415a800 	bl	5544(0x15a8) # 1c002660 <TIMER_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:131
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:134
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:135
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/target/start.S:136
1c0010c8:	54148800 	bl	5256(0x1488) # 1c002550 <intc_handler>
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
1c0012f8:	028e51ad 	addi.w	$r13,$r13,916(0x394)
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
1c0016b4:	0284a1ad 	addi.w	$r13,$r13,296(0x128)
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
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:469
1c001a08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001a10:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:470
1c001a14:	57fa9bff 	bl	-1384(0xffffa98) # 1c0014ac <EnableInt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:471
1c001a18:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001a1c:	0380118c 	ori	$r12,$r12,0x4
1c001a20:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c001a24:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472
1c001a28:	14000e2c 	lu12i.w	$r12,113(0x71)
1c001a2c:	03bfc98c 	ori	$r12,$r12,0xff2
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472 (discriminator 1)
1c001a30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a34:	40001d80 	beqz	$r12,28(0x1c) # 1c001a50 <System_Init+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:472 (discriminator 3)
1c001a38:	03400000 	andi	$r0,$r0,0x0
1c001a3c:	03400000 	andi	$r0,$r0,0x0
1c001a40:	03400000 	andi	$r0,$r0,0x0
1c001a44:	03400000 	andi	$r0,$r0,0x0
1c001a48:	001501ac 	move	$r12,$r13
1c001a4c:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a30 <System_Init+0x28>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:474
1c001a50:	57ff87ff 	bl	-124(0xfffff84) # 1c0019d4 <DDR_Init>
1c001a54:	00150097 	move	$r23,$r4
1c001a58:	44005880 	bnez	$r4,88(0x58) # 1c001ab0 <System_Init+0xa8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:476
1c001a5c:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c001a60:	029691ad 	addi.w	$r13,$r13,1444(0x5a4)
1c001a64:	288001ac 	ld.w	$r12,$r13,0
1c001a68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a6c:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:477
1c001a70:	1400018d 	lu12i.w	$r13,12(0xc)
1c001a74:	038d41ad 	ori	$r13,$r13,0x350
1c001a78:	5fffd98d 	bne	$r12,$r13,-40(0x3ffd8) # 1c001a50 <System_Init+0x48>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:479
1c001a7c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a80:	02bab084 	addi.w	$r4,$r4,-340(0xeac)
1c001a84:	57fbcbff 	bl	-1080(0xffffbc8) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:480
1c001a88:	140000ac 	lu12i.w	$r12,5(0x5)
1c001a8c:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:480 (discriminator 1)
1c001a90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a94:	4000c580 	beqz	$r12,196(0xc4) # 1c001b58 <System_Init+0x150>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:480 (discriminator 3)
1c001a98:	03400000 	andi	$r0,$r0,0x0
1c001a9c:	03400000 	andi	$r0,$r0,0x0
1c001aa0:	03400000 	andi	$r0,$r0,0x0
1c001aa4:	03400000 	andi	$r0,$r0,0x0
1c001aa8:	001501ac 	move	$r12,$r13
1c001aac:	53ffe7ff 	b	-28(0xfffffe4) # 1c001a90 <System_Init+0x88>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:485
1c001ab0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c001ab4:	0295418c 	addi.w	$r12,$r12,1360(0x550)
1c001ab8:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:486
1c001abc:	57fee7ff 	bl	-284(0xffffee4) # 1c0019a0 <SD_Init>
1c001ac0:	00150097 	move	$r23,$r4
1c001ac4:	44005880 	bnez	$r4,88(0x58) # 1c001b1c <System_Init+0x114>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:488
1c001ac8:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c001acc:	0294e1ad 	addi.w	$r13,$r13,1336(0x538)
1c001ad0:	288001ac 	ld.w	$r12,$r13,0
1c001ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ad8:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:489
1c001adc:	1400018d 	lu12i.w	$r13,12(0xc)
1c001ae0:	038d41ad 	ori	$r13,$r13,0x350
1c001ae4:	5fffd98d 	bne	$r12,$r13,-40(0x3ffd8) # 1c001abc <System_Init+0xb4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:491
1c001ae8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001aec:	02b97084 	addi.w	$r4,$r4,-420(0xe5c)
1c001af0:	57fb5fff 	bl	-1188(0xffffb5c) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:492
1c001af4:	140000ac 	lu12i.w	$r12,5(0x5)
1c001af8:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:492 (discriminator 1)
1c001afc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001b00:	40005980 	beqz	$r12,88(0x58) # 1c001b58 <System_Init+0x150>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:492 (discriminator 3)
1c001b04:	03400000 	andi	$r0,$r0,0x0
1c001b08:	03400000 	andi	$r0,$r0,0x0
1c001b0c:	03400000 	andi	$r0,$r0,0x0
1c001b10:	03400000 	andi	$r0,$r0,0x0
1c001b14:	001501ac 	move	$r12,$r13
1c001b18:	53ffe7ff 	b	-28(0xfffffe4) # 1c001afc <System_Init+0xf4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:497
1c001b1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b20:	02b91084 	addi.w	$r4,$r4,-444(0xe44)
1c001b24:	57fb2bff 	bl	-1240(0xffffb28) # 1c00164c <soc_myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:498
1c001b28:	140000ac 	lu12i.w	$r12,5(0x5)
1c001b2c:	03accd8c 	ori	$r12,$r12,0xb33
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:498 (discriminator 1)
1c001b30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001b34:	40001d80 	beqz	$r12,28(0x1c) # 1c001b50 <System_Init+0x148>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:498 (discriminator 3)
1c001b38:	03400000 	andi	$r0,$r0,0x0
1c001b3c:	03400000 	andi	$r0,$r0,0x0
1c001b40:	03400000 	andi	$r0,$r0,0x0
1c001b44:	03400000 	andi	$r0,$r0,0x0
1c001b48:	001501ac 	move	$r12,$r13
1c001b4c:	53ffe7ff 	b	-28(0xfffffe4) # 1c001b30 <System_Init+0x128>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:500
1c001b50:	57fdd3ff 	bl	-560(0xffffdd0) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:502
1c001b54:	02800417 	addi.w	$r23,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:503
1c001b58:	001502e4 	move	$r4,$r23
1c001b5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b60:	28802077 	ld.w	$r23,$r3,8(0x8)
1c001b64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b68:	4c000020 	jirl	$r0,$r1,0

1c001b6c <main>:
main():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:506
1c001b6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b70:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:507
1c001b74:	57fe97ff 	bl	-364(0xffffe94) # 1c001a08 <System_Init>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:508
1c001b78:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001b7c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001b80:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:510
1c001b84:	157ffe0c 	lu12i.w	$r12,-262160(0xbfff0)
1c001b88:	0380218e 	ori	$r14,$r12,0x8
1c001b8c:	1400010d 	lu12i.w	$r13,8(0x8)
1c001b90:	03a081ad 	ori	$r13,$r13,0x820
1c001b94:	298001cd 	st.w	$r13,$r14,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:511
1c001b98:	0380318e 	ori	$r14,$r12,0xc
1c001b9c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001ba0:	298001cd 	st.w	$r13,$r14,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:512
1c001ba4:	0380418e 	ori	$r14,$r12,0x10
1c001ba8:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c001bac:	298001cf 	st.w	$r15,$r14,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:514
1c001bb0:	0380118c 	ori	$r12,$r12,0x4
1c001bb4:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:516 (discriminator 1)
1c001bb8:	157ffe0c 	lu12i.w	$r12,-262160(0xbfff0)
1c001bbc:	0380518c 	ori	$r12,$r12,0x14
1c001bc0:	2880018c 	ld.w	$r12,$r12,0
1c001bc4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c001bb8 <main+0x4c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:517
1c001bc8:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001bcc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c001bd0:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:521
1c001bd4:	00150004 	move	$r4,$r0
1c001bd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001be0:	4c000020 	jirl	$r0,$r1,0

1c001be4 <UART1_HANDLER>:
UART1_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:524
1c001be4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001be8:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:525
1c001bec:	157fe00d 	lu12i.w	$r13,-262400(0xbff00)
1c001bf0:	288001ac 	ld.w	$r12,$r13,0
1c001bf4:	03c0058c 	xori	$r12,$r12,0x1
1c001bf8:	298001ac 	st.w	$r12,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:526
1c001bfc:	57fd27ff 	bl	-732(0xffffd24) # 1c001920 <uart1_interrupt>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:527
1c001c00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c08:	4c000020 	jirl	$r0,$r1,0

1c001c0c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:4
1c001c0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c10:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:5
1c001c14:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c18:	028440c6 	addi.w	$r6,$r6,272(0x110)
1c001c1c:	02801405 	addi.w	$r5,$r0,5(0x5)
1c001c20:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c24:	02b59084 	addi.w	$r4,$r4,-668(0xd64)
1c001c28:	57f66bff 	bl	-2456(0xffff668) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:6
1c001c2c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001c30:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c34:	03808084 	ori	$r4,$r4,0x20
1c001c38:	57fd03ff 	bl	-768(0xffffd00) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:7
1c001c3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c44:	4c000020 	jirl	$r0,$r1,0

1c001c48 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:9
1c001c48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c4c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:10
1c001c50:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c54:	0282f0c6 	addi.w	$r6,$r6,188(0xbc)
1c001c58:	02802805 	addi.w	$r5,$r0,10(0xa)
1c001c5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c60:	02b4a084 	addi.w	$r4,$r4,-728(0xd28)
1c001c64:	57f62fff 	bl	-2516(0xffff62c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:11
1c001c68:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001c6c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001c70:	03808084 	ori	$r4,$r4,0x20
1c001c74:	57fcc7ff 	bl	-828(0xffffcc4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:12
1c001c78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c80:	4c000020 	jirl	$r0,$r1,0

1c001c84 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:14
1c001c84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c88:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:15
1c001c8c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c90:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c001c94:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c001c98:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c9c:	02b3b084 	addi.w	$r4,$r4,-788(0xcec)
1c001ca0:	57f5f3ff 	bl	-2576(0xffff5f0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:16
1c001ca4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001ca8:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001cac:	03808084 	ori	$r4,$r4,0x20
1c001cb0:	57fc8bff 	bl	-888(0xffffc88) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:17
1c001cb4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cbc:	4c000020 	jirl	$r0,$r1,0

1c001cc0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:19
1c001cc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cc4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:20
1c001cc8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ccc:	028050c6 	addi.w	$r6,$r6,20(0x14)
1c001cd0:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001cd4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cd8:	02b2c084 	addi.w	$r4,$r4,-848(0xcb0)
1c001cdc:	57f5b7ff 	bl	-2636(0xffff5b4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:21
1c001ce0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001ce4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ce8:	03808084 	ori	$r4,$r4,0x20
1c001cec:	57fc4fff 	bl	-948(0xffffc4c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:22
1c001cf0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:24
1c001cfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d00:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:25
1c001d04:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d08:	02bf00c6 	addi.w	$r6,$r6,-64(0xfc0)
1c001d0c:	02806405 	addi.w	$r5,$r0,25(0x19)
1c001d10:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d14:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c001d18:	57f57bff 	bl	-2696(0xffff578) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:26
1c001d1c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001d20:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d24:	03808084 	ori	$r4,$r4,0x20
1c001d28:	57fc13ff 	bl	-1008(0xffffc10) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:27
1c001d2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d34:	4c000020 	jirl	$r0,$r1,0

1c001d38 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:29
1c001d38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d3c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:30
1c001d40:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d44:	02bdb0c6 	addi.w	$r6,$r6,-148(0xf6c)
1c001d48:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c001d4c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d50:	02b0e084 	addi.w	$r4,$r4,-968(0xc38)
1c001d54:	57f53fff 	bl	-2756(0xffff53c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:31
1c001d58:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001d5c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d60:	03808084 	ori	$r4,$r4,0x20
1c001d64:	57fbd7ff 	bl	-1068(0xffffbd4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:32
1c001d68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d70:	4c000020 	jirl	$r0,$r1,0

1c001d74 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:34
1c001d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d78:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:35
1c001d7c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d80:	02bc60c6 	addi.w	$r6,$r6,-232(0xf18)
1c001d84:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001d88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d8c:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c001d90:	57f503ff 	bl	-2816(0xffff500) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:36
1c001d94:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001d98:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001d9c:	03808084 	ori	$r4,$r4,0x20
1c001da0:	57fb9bff 	bl	-1128(0xffffb98) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:37
1c001da4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001da8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dac:	4c000020 	jirl	$r0,$r1,0

1c001db0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:39
1c001db0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001db4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:41
1c001db8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001dbc:	02bb10c6 	addi.w	$r6,$r6,-316(0xec4)
1c001dc0:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c001dc4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001dc8:	02af0084 	addi.w	$r4,$r4,-1088(0xbc0)
1c001dcc:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:42
1c001dd0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001dd4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001dd8:	03808084 	ori	$r4,$r4,0x20
1c001ddc:	57fb5fff 	bl	-1188(0xffffb5c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:43
1c001de0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001de4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001de8:	4c000020 	jirl	$r0,$r1,0

1c001dec <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:45
1c001dec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001df0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:46
1c001df4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001df8:	02b9c0c6 	addi.w	$r6,$r6,-400(0xe70)
1c001dfc:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c001e00:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e04:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c001e08:	57f48bff 	bl	-2936(0xffff488) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:47
1c001e0c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c001e10:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e14:	03808084 	ori	$r4,$r4,0x20
1c001e18:	57fb23ff 	bl	-1248(0xffffb20) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:48
1c001e1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e24:	4c000020 	jirl	$r0,$r1,0

1c001e28 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:50
1c001e28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e2c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:52
1c001e30:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e34:	02b870c6 	addi.w	$r6,$r6,-484(0xe1c)
1c001e38:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c001e3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e40:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c001e44:	57f44fff 	bl	-2996(0xffff44c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:53
1c001e48:	02880005 	addi.w	$r5,$r0,512(0x200)
1c001e4c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e50:	03808084 	ori	$r4,$r4,0x20
1c001e54:	57fae7ff 	bl	-1308(0xffffae4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:54
1c001e58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e60:	4c000020 	jirl	$r0,$r1,0

1c001e64 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:56
1c001e64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e68:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:58
1c001e6c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e70:	02b720c6 	addi.w	$r6,$r6,-568(0xdc8)
1c001e74:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c001e78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e7c:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c001e80:	57f413ff 	bl	-3056(0xffff410) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:59
1c001e84:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001e88:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001e8c:	03808084 	ori	$r4,$r4,0x20
1c001e90:	57faabff 	bl	-1368(0xffffaa8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:60
1c001e94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e9c:	4c000020 	jirl	$r0,$r1,0

1c001ea0 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:62
1c001ea0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ea4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:64
1c001ea8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001eac:	02b5d0c6 	addi.w	$r6,$r6,-652(0xd74)
1c001eb0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001eb4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001eb8:	02ab4084 	addi.w	$r4,$r4,-1328(0xad0)
1c001ebc:	57f3d7ff 	bl	-3116(0xffff3d4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:65
1c001ec0:	03a00005 	ori	$r5,$r0,0x800
1c001ec4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ec8:	03808084 	ori	$r4,$r4,0x20
1c001ecc:	57fa6fff 	bl	-1428(0xffffa6c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:66
1c001ed0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ed4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ed8:	4c000020 	jirl	$r0,$r1,0

1c001edc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:68
1c001edc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ee0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:69
1c001ee4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ee8:	02b480c6 	addi.w	$r6,$r6,-736(0xd20)
1c001eec:	02811405 	addi.w	$r5,$r0,69(0x45)
1c001ef0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ef4:	02aa5084 	addi.w	$r4,$r4,-1388(0xa94)
1c001ef8:	57f39bff 	bl	-3176(0xffff398) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:70
1c001efc:	14000025 	lu12i.w	$r5,1(0x1)
1c001f00:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f04:	03808084 	ori	$r4,$r4,0x20
1c001f08:	57fa33ff 	bl	-1488(0xffffa30) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:71
1c001f0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f14:	4c000020 	jirl	$r0,$r1,0

1c001f18 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:73
1c001f18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f1c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:74
1c001f20:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f24:	02b330c6 	addi.w	$r6,$r6,-820(0xccc)
1c001f28:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c001f2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f30:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c001f34:	57f35fff 	bl	-3236(0xffff35c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:75
1c001f38:	14000045 	lu12i.w	$r5,2(0x2)
1c001f3c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f40:	03808084 	ori	$r4,$r4,0x20
1c001f44:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:76
1c001f48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f50:	4c000020 	jirl	$r0,$r1,0

1c001f54 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:78
1c001f54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f58:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:80
1c001f5c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f60:	02b1e0c6 	addi.w	$r6,$r6,-904(0xc78)
1c001f64:	02814005 	addi.w	$r5,$r0,80(0x50)
1c001f68:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f6c:	02a87084 	addi.w	$r4,$r4,-1508(0xa1c)
1c001f70:	57f323ff 	bl	-3296(0xffff320) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:81
1c001f74:	14000085 	lu12i.w	$r5,4(0x4)
1c001f78:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001f7c:	03808084 	ori	$r4,$r4,0x20
1c001f80:	57f9bbff 	bl	-1608(0xffff9b8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:82
1c001f84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f8c:	4c000020 	jirl	$r0,$r1,0

1c001f90 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:84
1c001f90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f94:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:86
1c001f98:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f9c:	02b090c6 	addi.w	$r6,$r6,-988(0xc24)
1c001fa0:	02815805 	addi.w	$r5,$r0,86(0x56)
1c001fa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fa8:	02a78084 	addi.w	$r4,$r4,-1568(0x9e0)
1c001fac:	57f2e7ff 	bl	-3356(0xffff2e4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:87
1c001fb0:	14000105 	lu12i.w	$r5,8(0x8)
1c001fb4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001fb8:	03808084 	ori	$r4,$r4,0x20
1c001fbc:	57f97fff 	bl	-1668(0xffff97c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:88
1c001fc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fc8:	4c000020 	jirl	$r0,$r1,0

1c001fcc <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:91
1c001fcc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fd0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:93
1c001fd4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fd8:	02af40c6 	addi.w	$r6,$r6,-1072(0xbd0)
1c001fdc:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c001fe0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fe4:	02a69084 	addi.w	$r4,$r4,-1628(0x9a4)
1c001fe8:	57f2abff 	bl	-3416(0xffff2a8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:94
1c001fec:	14000205 	lu12i.w	$r5,16(0x10)
1c001ff0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c001ff4:	03808084 	ori	$r4,$r4,0x20
1c001ff8:	57f943ff 	bl	-1728(0xffff940) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:95
1c001ffc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002000:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002004:	4c000020 	jirl	$r0,$r1,0

1c002008 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:97
1c002008:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00200c:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:99
1c002010:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002014:	02adf0c6 	addi.w	$r6,$r6,-1156(0xb7c)
1c002018:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c00201c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002020:	02a5a084 	addi.w	$r4,$r4,-1688(0x968)
1c002024:	57f26fff 	bl	-3476(0xffff26c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:100
1c002028:	14000405 	lu12i.w	$r5,32(0x20)
1c00202c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002030:	03808084 	ori	$r4,$r4,0x20
1c002034:	57f907ff 	bl	-1788(0xffff904) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:101
1c002038:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00203c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002040:	4c000020 	jirl	$r0,$r1,0

1c002044 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:103
1c002044:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002048:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:105
1c00204c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002050:	02aca0c6 	addi.w	$r6,$r6,-1240(0xb28)
1c002054:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c002058:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00205c:	02a4b084 	addi.w	$r4,$r4,-1748(0x92c)
1c002060:	57f233ff 	bl	-3536(0xffff230) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:106
1c002064:	14000805 	lu12i.w	$r5,64(0x40)
1c002068:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00206c:	03808084 	ori	$r4,$r4,0x20
1c002070:	57f8cbff 	bl	-1848(0xffff8c8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:107
1c002074:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00207c:	4c000020 	jirl	$r0,$r1,0

1c002080 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:109
1c002080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002084:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:111
1c002088:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00208c:	02ab50c6 	addi.w	$r6,$r6,-1324(0xad4)
1c002090:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c002094:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002098:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c00209c:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:112
1c0020a0:	14001005 	lu12i.w	$r5,128(0x80)
1c0020a4:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0020a8:	03808084 	ori	$r4,$r4,0x20
1c0020ac:	57f88fff 	bl	-1908(0xffff88c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:113
1c0020b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020b8:	4c000020 	jirl	$r0,$r1,0

1c0020bc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:115
1c0020bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020c0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:117
1c0020c4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020c8:	02aa00c6 	addi.w	$r6,$r6,-1408(0xa80)
1c0020cc:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c0020d0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0020d4:	02a2d084 	addi.w	$r4,$r4,-1868(0x8b4)
1c0020d8:	57f1bbff 	bl	-3656(0xffff1b8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:118
1c0020dc:	14002005 	lu12i.w	$r5,256(0x100)
1c0020e0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0020e4:	03808084 	ori	$r4,$r4,0x20
1c0020e8:	57f853ff 	bl	-1968(0xffff850) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:119
1c0020ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020f4:	4c000020 	jirl	$r0,$r1,0

1c0020f8 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:121
1c0020f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020fc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:122
1c002100:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002104:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c002108:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c00210c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002110:	02a1e084 	addi.w	$r4,$r4,-1928(0x878)
1c002114:	57f17fff 	bl	-3716(0xffff17c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:123
1c002118:	14004005 	lu12i.w	$r5,512(0x200)
1c00211c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002120:	03808084 	ori	$r4,$r4,0x20
1c002124:	57f817ff 	bl	-2028(0xffff814) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:124
1c002128:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00212c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002130:	4c000020 	jirl	$r0,$r1,0

1c002134 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:126
1c002134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002138:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:127
1c00213c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002140:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c002144:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c002148:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00214c:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c002150:	57f143ff 	bl	-3776(0xffff140) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:128
1c002154:	14008005 	lu12i.w	$r5,1024(0x400)
1c002158:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00215c:	03808084 	ori	$r4,$r4,0x20
1c002160:	57f7dbff 	bl	-2088(0xffff7d8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:129
1c002164:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002168:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00216c:	4c000020 	jirl	$r0,$r1,0

1c002170 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:131
1c002170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002174:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:133
1c002178:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00217c:	02a610c6 	addi.w	$r6,$r6,-1660(0x984)
1c002180:	02821405 	addi.w	$r5,$r0,133(0x85)
1c002184:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002188:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c00218c:	57f107ff 	bl	-3836(0xffff104) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:134
1c002190:	14010005 	lu12i.w	$r5,2048(0x800)
1c002194:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002198:	03808084 	ori	$r4,$r4,0x20
1c00219c:	57f79fff 	bl	-2148(0xffff79c) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:135
1c0021a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021a8:	4c000020 	jirl	$r0,$r1,0

1c0021ac <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:137
1c0021ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021b0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:139
1c0021b4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021b8:	02a4c0c6 	addi.w	$r6,$r6,-1744(0x930)
1c0021bc:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c0021c0:	1c000004 	pcaddu12i	$r4,0
1c0021c4:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c0021c8:	57f0cbff 	bl	-3896(0xffff0c8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:140
1c0021cc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0021d0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0021d4:	03808084 	ori	$r4,$r4,0x20
1c0021d8:	57f763ff 	bl	-2208(0xffff760) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:141
1c0021dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021e4:	4c000020 	jirl	$r0,$r1,0

1c0021e8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:143
1c0021e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021ec:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:145
1c0021f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021f4:	02a370c6 	addi.w	$r6,$r6,-1828(0x8dc)
1c0021f8:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0021fc:	1c000004 	pcaddu12i	$r4,0
1c002200:	029e2084 	addi.w	$r4,$r4,1928(0x788)
1c002204:	57f08fff 	bl	-3956(0xffff08c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:146
1c002208:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00220c:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002210:	03808084 	ori	$r4,$r4,0x20
1c002214:	57f727ff 	bl	-2268(0xffff724) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:147
1c002218:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00221c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002220:	4c000020 	jirl	$r0,$r1,0

1c002224 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:149
1c002224:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002228:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:151
1c00222c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002230:	02a220c6 	addi.w	$r6,$r6,-1912(0x888)
1c002234:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c002238:	1c000004 	pcaddu12i	$r4,0
1c00223c:	029d3084 	addi.w	$r4,$r4,1868(0x74c)
1c002240:	57f053ff 	bl	-4016(0xffff050) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:152
1c002244:	14080005 	lu12i.w	$r5,16384(0x4000)
1c002248:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00224c:	03808084 	ori	$r4,$r4,0x20
1c002250:	57f6ebff 	bl	-2328(0xffff6e8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:153
1c002254:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002258:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00225c:	4c000020 	jirl	$r0,$r1,0

1c002260 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:155
1c002260:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002264:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:157
1c002268:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00226c:	02a0d0c6 	addi.w	$r6,$r6,-1996(0x834)
1c002270:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c002274:	1c000004 	pcaddu12i	$r4,0
1c002278:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c00227c:	57f017ff 	bl	-4076(0xffff014) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:158
1c002280:	14100005 	lu12i.w	$r5,32768(0x8000)
1c002284:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002288:	03808084 	ori	$r4,$r4,0x20
1c00228c:	57f6afff 	bl	-2388(0xffff6ac) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:159
1c002290:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002294:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002298:	4c000020 	jirl	$r0,$r1,0

1c00229c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:161
1c00229c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022a0:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:163
1c0022a4:	1c000006 	pcaddu12i	$r6,0
1c0022a8:	029f80c6 	addi.w	$r6,$r6,2016(0x7e0)
1c0022ac:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c0022b0:	1c000004 	pcaddu12i	$r4,0
1c0022b4:	029b5084 	addi.w	$r4,$r4,1748(0x6d4)
1c0022b8:	57efdbff 	bl	-4136(0xfffefd8) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:164
1c0022bc:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0022c0:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c0022c4:	03808084 	ori	$r4,$r4,0x20
1c0022c8:	57f673ff 	bl	-2448(0xffff670) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:165
1c0022cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022d4:	4c000020 	jirl	$r0,$r1,0

1c0022d8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:168
1c0022d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022dc:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:170
1c0022e0:	1c000006 	pcaddu12i	$r6,0
1c0022e4:	029e30c6 	addi.w	$r6,$r6,1932(0x78c)
1c0022e8:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0022ec:	1c000004 	pcaddu12i	$r4,0
1c0022f0:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c0022f4:	57ef9fff 	bl	-4196(0xfffef9c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:171
1c0022f8:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0022fc:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002300:	03808084 	ori	$r4,$r4,0x20
1c002304:	57f637ff 	bl	-2508(0xffff634) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:172
1c002308:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00230c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002310:	4c000020 	jirl	$r0,$r1,0

1c002314 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:174
1c002314:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002318:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:176
1c00231c:	1c000006 	pcaddu12i	$r6,0
1c002320:	029ce0c6 	addi.w	$r6,$r6,1848(0x738)
1c002324:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c002328:	1c000004 	pcaddu12i	$r4,0
1c00232c:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c002330:	57ef63ff 	bl	-4256(0xfffef60) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:177
1c002334:	14800005 	lu12i.w	$r5,262144(0x40000)
1c002338:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c00233c:	03808084 	ori	$r4,$r4,0x20
1c002340:	57f5fbff 	bl	-2568(0xffff5f8) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:178
1c002344:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002348:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00234c:	4c000020 	jirl	$r0,$r1,0

1c002350 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:180
1c002350:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002354:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:182
1c002358:	1c000006 	pcaddu12i	$r6,0
1c00235c:	029b90c6 	addi.w	$r6,$r6,1764(0x6e4)
1c002360:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c002364:	1c000004 	pcaddu12i	$r4,0
1c002368:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c00236c:	57ef27ff 	bl	-4316(0xfffef24) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:183
1c002370:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c002374:	157fd604 	lu12i.w	$r4,-262480(0xbfeb0)
1c002378:	03808084 	ori	$r4,$r4,0x20
1c00237c:	57f5bfff 	bl	-2628(0xffff5bc) # 1c001938 <EXTI_ClearITPendingBit>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:184
1c002380:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002388:	4c000020 	jirl	$r0,$r1,0

1c00238c <ext_handler>:
ext_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:221
1c00238c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002390:	29803061 	st.w	$r1,$r3,12(0xc)
1c002394:	29802077 	st.w	$r23,$r3,8(0x8)
1c002398:	29801078 	st.w	$r24,$r3,4(0x4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:222
1c00239c:	157fd617 	lu12i.w	$r23,-262480(0xbfeb0)
1c0023a0:	0380f2ec 	ori	$r12,$r23,0x3c
1c0023a4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0023a8:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:226
1c0023ac:	1c000006 	pcaddu12i	$r6,0
1c0023b0:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c0023b4:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c0023b8:	1c000004 	pcaddu12i	$r4,0
1c0023bc:	02973084 	addi.w	$r4,$r4,1484(0x5cc)
1c0023c0:	57eed3ff 	bl	-4400(0xfffeed0) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:227
1c0023c4:	038082f7 	ori	$r23,$r23,0x20
1c0023c8:	288032f8 	ld.w	$r24,$r23,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:228
1c0023cc:	288002ec 	ld.w	$r12,$r23,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:229
1c0023d0:	0014b318 	and	$r24,$r24,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:230
1c0023d4:	03400000 	andi	$r0,$r0,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232
1c0023d8:	00150017 	move	$r23,$r0
1c0023dc:	50000800 	b	8(0x8) # 1c0023e4 <ext_handler+0x58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 2)
1c0023e0:	028006f7 	addi.w	$r23,$r23,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:232 (discriminator 1)
1c0023e4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0023e8:	68002997 	bltu	$r12,$r23,40(0x28) # 1c002410 <ext_handler+0x84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:234
1c0023ec:	0017df0c 	srl.w	$r12,$r24,$r23
1c0023f0:	0340058c 	andi	$r12,$r12,0x1
1c0023f4:	43ffed9f 	beqz	$r12,-20(0x7fffec) # 1c0023e0 <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:236
1c0023f8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0023fc:	02a5118c 	addi.w	$r12,$r12,-1724(0x944)
1c002400:	0004b2ec 	alsl.w	$r12,$r23,$r12,0x2
1c002404:	2880018c 	ld.w	$r12,$r12,0
1c002408:	4c000181 	jirl	$r1,$r12,0
1c00240c:	53ffd7ff 	b	-44(0xfffffd4) # 1c0023e0 <ext_handler+0x54>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:239
1c002410:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002414:	28802077 	ld.w	$r23,$r3,8(0x8)
1c002418:	28801078 	ld.w	$r24,$r3,4(0x4)
1c00241c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002420:	4c000020 	jirl	$r0,$r1,0

1c002424 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:271
1c002424:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002428:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:273
1c00242c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002430:	0380f18d 	ori	$r13,$r12,0x3c
1c002434:	1400020e 	lu12i.w	$r14,16(0x10)
1c002438:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:274
1c00243c:	0380118c 	ori	$r12,$r12,0x4
1c002440:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:275
1c002444:	57f507ff 	bl	-2812(0xffff504) # 1c001948 <WDG_DogFeed>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:277
1c002448:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00244c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002450:	4c000020 	jirl	$r0,$r1,0

1c002454 <TOUCH>:
TOUCH():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:288
1c002454:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002458:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:292
1c00245c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002460:	0380118c 	ori	$r12,$r12,0x4
1c002464:	28800185 	ld.w	$r5,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:293
1c002468:	2880018d 	ld.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:294
1c00246c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c002470:	0380f1ad 	ori	$r13,$r13,0x3c
1c002474:	1400040e 	lu12i.w	$r14,32(0x20)
1c002478:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:295
1c00247c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002480:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:296
1c002484:	007bc0a5 	bstrpick.w	$r5,$r5,0x1b,0x10
1c002488:	1c000004 	pcaddu12i	$r4,0
1c00248c:	02947084 	addi.w	$r4,$r4,1308(0x51c)
1c002490:	57ee03ff 	bl	-4608(0xfffee00) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:301
1c002494:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002498:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00249c:	4c000020 	jirl	$r0,$r1,0

1c0024a0 <UART2_INT>:
UART2_INT():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:313
1c0024a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024a4:	0380f18c 	ori	$r12,$r12,0x3c
1c0024a8:	1400080d 	lu12i.w	$r13,64(0x40)
1c0024ac:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:314
1c0024b0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024b4:	0380098c 	ori	$r12,$r12,0x2
1c0024b8:	2a00018c 	ld.bu	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:315
1c0024bc:	4c000020 	jirl	$r0,$r1,0

1c0024c0 <BAT_FAIL>:
BAT_FAIL():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:326
1c0024c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0024c4:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:327
1c0024c8:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0024cc:	038011ae 	ori	$r14,$r13,0x4
1c0024d0:	288001cc 	ld.w	$r12,$r14,0
1c0024d4:	0077cd8c 	bstrpick.w	$r12,$r12,0x17,0x13
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:328
1c0024d8:	288001ce 	ld.w	$r14,$r14,0
1c0024dc:	1401f00f 	lu12i.w	$r15,3968(0xf80)
1c0024e0:	0014bdce 	and	$r14,$r14,$r15
1c0024e4:	0380f1ad 	ori	$r13,$r13,0x3c
1c0024e8:	298001ae 	st.w	$r14,$r13,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:329
1c0024ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0024f0:	5800198d 	beq	$r12,$r13,24(0x18) # 1c002508 <BAT_FAIL+0x48>
1c0024f4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0024f8:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c002524 <BAT_FAIL+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c0024fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002500:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002504:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:331
1c002508:	1c000004 	pcaddu12i	$r4,0
1c00250c:	0292f084 	addi.w	$r4,$r4,1212(0x4bc)
1c002510:	57ed83ff 	bl	-4736(0xfffed80) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:332
1c002514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002518:	0380118c 	ori	$r12,$r12,0x4
1c00251c:	29800180 	st.w	$r0,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:333
1c002520:	53ffdfff 	b	-36(0xfffffdc) # 1c0024fc <BAT_FAIL+0x3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:341
1c002524:	1c000004 	pcaddu12i	$r4,0
1c002528:	02932084 	addi.w	$r4,$r4,1224(0x4c8)
1c00252c:	57ed67ff 	bl	-4764(0xfffed64) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:342
1c002530:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002534:	0380118c 	ori	$r12,$r12,0x4
1c002538:	2880018d 	ld.w	$r13,$r12,0
1c00253c:	15fffeee 	lu12i.w	$r14,-9(0xffff7)
1c002540:	03bffdce 	ori	$r14,$r14,0xfff
1c002544:	0014b9ad 	and	$r13,$r13,$r14
1c002548:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:347
1c00254c:	53ffb3ff 	b	-80(0xfffffb0) # 1c0024fc <BAT_FAIL+0x3c>

1c002550 <intc_handler>:
intc_handler():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:359
1c002550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002554:	29803061 	st.w	$r1,$r3,12(0xc)
1c002558:	29802077 	st.w	$r23,$r3,8(0x8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:360
1c00255c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002560:	0380158c 	ori	$r12,$r12,0x5
1c002564:	2a000197 	ld.bu	$r23,$r12,0
1c002568:	006782f7 	bstrpick.w	$r23,$r23,0x7,0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:362
1c00256c:	034006ec 	andi	$r12,$r23,0x1
1c002570:	44004580 	bnez	$r12,68(0x44) # 1c0025b4 <intc_handler+0x64>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:374
1c002574:	034012ec 	andi	$r12,$r23,0x4
1c002578:	44007580 	bnez	$r12,116(0x74) # 1c0025ec <intc_handler+0x9c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:403
1c00257c:	034022f7 	andi	$r23,$r23,0x8
1c002580:	400016e0 	beqz	$r23,20(0x14) # 1c002594 <intc_handler+0x44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:408
1c002584:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002588:	03800d8c 	ori	$r12,$r12,0x3
1c00258c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c002590:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:411
1c002594:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002598:	03800d8c 	ori	$r12,$r12,0x3
1c00259c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0025a0:	2900018d 	st.b	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:412
1c0025a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0025a8:	28802077 	ld.w	$r23,$r3,8(0x8)
1c0025ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0025b0:	4c000020 	jirl	$r0,$r1,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:364
1c0025b4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0025b8:	57f3a7ff 	bl	-3164(0xffff3a4) # 1c00195c <TIM_GetITStatus>
1c0025bc:	43ffb89f 	beqz	$r4,-72(0x7fffb8) # 1c002574 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:367
1c0025c0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0025c4:	02a9118c 	addi.w	$r12,$r12,-1468(0xa44)
1c0025c8:	2880018d 	ld.w	$r13,$r12,0
1c0025cc:	024005ad 	sltui	$r13,$r13,1(0x1)
1c0025d0:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:368
1c0025d4:	28800185 	ld.w	$r5,$r12,0
1c0025d8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0025dc:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c00189c <gpio_write>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:370
1c0025e0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0025e4:	57f393ff 	bl	-3184(0xffff390) # 1c001974 <TIM_ClearIT>
1c0025e8:	53ff8fff 	b	-116(0xfffff8c) # 1c002574 <intc_handler+0x24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:376
1c0025ec:	57f5fbff 	bl	-2568(0xffff5f8) # 1c001be4 <UART1_HANDLER>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:385
1c0025f0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0025f4:	0380118c 	ori	$r12,$r12,0x4
1c0025f8:	2880018c 	ld.w	$r12,$r12,0
1c0025fc:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:383
1c002600:	0015000e 	move	$r14,$r0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c002604:	50002000 	b	32(0x20) # 1c002624 <intc_handler+0xd4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:389
1c002608:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00260c:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:390
1c002610:	0280040e 	addi.w	$r14,$r0,1(0x1)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:397
1c002614:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002618:	0380118c 	ori	$r12,$r12,0x4
1c00261c:	2880018c 	ld.w	$r12,$r12,0
1c002620:	00005d8c 	ext.w.b	$r12,$r12
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:386
1c002624:	0340058c 	andi	$r12,$r12,0x1
1c002628:	47ff559f 	bnez	$r12,-172(0x7fff54) # 1c00257c <intc_handler+0x2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:387
1c00262c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002630:	2880018c 	ld.w	$r12,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:388
1c002634:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c002638:	5bffd18d 	beq	$r12,$r13,-48(0x3ffd0) # 1c002608 <intc_handler+0xb8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:391
1c00263c:	400019c0 	beqz	$r14,24(0x18) # 1c002654 <intc_handler+0x104>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:393
1c002640:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002644:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c002648:	2980018d 	st.w	$r13,$r12,0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:392
1c00264c:	0015000e 	move	$r14,$r0
1c002650:	53ffc7ff 	b	-60(0xfffffc4) # 1c002614 <intc_handler+0xc4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:395
1c002654:	157fd10d 	lu12i.w	$r13,-262520(0xbfe88)
1c002658:	298001ac 	st.w	$r12,$r13,0
1c00265c:	53ffbbff 	b	-72(0xfffffb8) # 1c002614 <intc_handler+0xc4>

1c002660 <TIMER_HANDLER>:
TIMER_HANDLER():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:415
1c002660:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002664:	29803061 	st.w	$r1,$r3,12(0xc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:416
1c002668:	57ee5bff 	bl	-4520(0xfffee58) # 1c0014c0 <Set_Timer_clear>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:417
1c00266c:	1c000004 	pcaddu12i	$r4,0
1c002670:	028e9084 	addi.w	$r4,$r4,932(0x3a4)
1c002674:	57ec1fff 	bl	-5092(0xfffec1c) # 1c001290 <myprintf>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:418
1c002678:	57ee43ff 	bl	-4544(0xfffee40) # 1c0014b8 <Set_Timer_stop>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.c:419
1c00267c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002680:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002684:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002688 <__FUNCTION__.1776-0x3a8>:
1c002688:	1c0013bc 	pcaddu12i	$r28,157(0x9d)
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
1c0026b4:	1c0013cc 	pcaddu12i	$r12,158(0x9e)
1c0026b8:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026bc:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026c0:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026c4:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026c8:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026cc:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026d0:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026d4:	1c001404 	pcaddu12i	$r4,160(0xa0)
1c0026d8:	1c001404 	pcaddu12i	$r4,160(0xa0)
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
1c002728:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00272c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002730:	1c001438 	pcaddu12i	$r24,161(0xa1)
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
1c00275c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002760:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002764:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002768:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00276c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002770:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002774:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002778:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00277c:	1c001384 	pcaddu12i	$r4,156(0x9c)
1c002780:	1c00131c 	pcaddu12i	$r28,152(0x98)
1c002784:	1c00134c 	pcaddu12i	$r12,154(0x9a)
1c002788:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00278c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002790:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002794:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c002798:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c00279c:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027a0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027a4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027a8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027ac:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027b0:	1c001368 	pcaddu12i	$r8,155(0x9b)
1c0027b4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0027b8:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027bc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027c0:	1c001308 	pcaddu12i	$r8,152(0x98)
1c0027c4:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027c8:	1c001330 	pcaddu12i	$r16,153(0x99)
1c0027cc:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027d0:	1c001438 	pcaddu12i	$r24,161(0xa1)
1c0027d4:	1c0013a0 	pcaddu12i	$r0,157(0x9d)
1c0027d8:	1c001778 	pcaddu12i	$r24,187(0xbb)
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
1c002804:	1c001788 	pcaddu12i	$r8,188(0xbc)
1c002808:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c00280c:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002810:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002814:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002818:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c00281c:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002820:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002824:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
1c002828:	1c0017f4 	pcaddu12i	$r20,191(0xbf)
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
1c002878:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00287c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002880:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
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
1c0028ac:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028b0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028b4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028b8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028bc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028c0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028c4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028c8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028cc:	1c001740 	pcaddu12i	$r0,186(0xba)
1c0028d0:	1c0016d8 	pcaddu12i	$r24,182(0xb6)
1c0028d4:	1c001708 	pcaddu12i	$r8,184(0xb8)
1c0028d8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028dc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028e0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028e4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028e8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028ec:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028f0:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028f4:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028f8:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c0028fc:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002900:	1c001724 	pcaddu12i	$r4,185(0xb9)
1c002904:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c002908:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c00290c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002910:	1c0016c4 	pcaddu12i	$r4,182(0xb6)
1c002914:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002918:	1c0016ec 	pcaddu12i	$r12,183(0xb7)
1c00291c:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002920:	1c0017fc 	pcaddu12i	$r28,191(0xbf)
1c002924:	1c00175c 	pcaddu12i	$r28,186(0xba)
1c002928:	20524444 	ll.w	$r4,$r2,21060(0x5244)
1c00292c:	6c696166 	bgeu	$r11,$r6,26976(0x6960) # 1c00928c <_sidata+0x64d0>
1c002930:	74206465 	xvsubwev.h.b	$xr5,$xr3,$xr25
1c002934:	6e69206f 	bgeu	$r3,$r15,-104160(0x26920) # 1bfe9254 <_start-0x16dac>
1c002938:	61697469 	blt	$r3,$r9,92532(0x16974) # 1c0192ac <_sidata+0x164f0>
1c00293c:	657a696c 	bge	$r11,$r12,96872(0x17a68) # 1c01a3a4 <_sidata+0x175e8>
1c002940:	00000a0d 	0x00000a0d
1c002944:	66204453 	bge	$r2,$r19,-122812(0x22044) # 1bfe4988 <_start-0x1b678>
1c002948:	656c6961 	bge	$r11,$r1,93288(0x16c68) # 1c0195b0 <_sidata+0x167f4>
1c00294c:	6f742064 	bgeu	$r3,$r4,-35808(0x37420) # 1bff9d6c <_start-0x6294>
1c002950:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c0197b8 <_sidata+0x169fc>
1c002954:	6c616974 	bgeu	$r11,$r20,24936(0x6168) # 1c008abc <_sidata+0x5d00>
1c002958:	0d657a69 	xvshuf.b	$xr9,$xr19,$xr30,$xr10
1c00295c:	0000000a 	0x0000000a
1c002960:	74737953 	xvmin.w	$xr19,$xr10,$xr30
1c002964:	49206d65 	bcnez	$fcc3,1384556(0x15206c) # 1c1549d0 <_sidata+0x151c14>
1c002968:	6974696e 	bltu	$r11,$r14,95336(0x17468) # 1c019dd0 <_sidata+0x17014>
1c00296c:	7a696c61 	0x7a696c61
1c002970:	53206465 	b	26681444(0x1972064) # 1d9749d4 <_sidata+0x1971c18>
1c002974:	65636375 	bge	$r27,$r21,90976(0x16360) # 1c018cd4 <_sidata+0x15f18>
1c002978:	75667373 	0x75667373
1c00297c:	0d796c6c 	0x0d796c6c
1c002980:	0000000a 	0x0000000a
1c002984:	3c200a0d 	0x3c200a0d
1c002988:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0195a8 <_sidata+0x167ec>
1c00298c:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c002990:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe49f4 <_start-0x1b60c>
1c002994:	3a636e75 	0x3a636e75
1c002998:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00299c:	0a0d3e20 	0x0a0d3e20
1c0029a0:	00000000 	0x00000000
1c0029a4:	2d2d2d0a 	0x2d2d2d0a
1c0029a8:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bff9f14 <_start-0x60ec>
1c0029ac:	746e4968 	0x746e4968
1c0029b0:	79654b3a 	0x79654b3a
1c0029b4:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe8b1c <_start-0x174e4>
1c0029b8:	3a6c656e 	0x3a6c656e
1c0029bc:	78257830 	0x78257830
1c0029c0:	0000000a 	0x0000000a
1c0029c4:	2e2e2e0a 	0x2e2e2e0a
1c0029c8:	2e2e2e2e 	0x2e2e2e2e
1c0029cc:	2e2e2e2e 	0x2e2e2e2e
1c0029d0:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396bfc <_sidata+0x393e40>
1c0029d4:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd17030 <_start-0x2e8fd0>
1c0029d8:	2e2e4c49 	0x2e2e4c49
1c0029dc:	2e2e2e2e 	0x2e2e2e2e
1c0029e0:	2e2e2e2e 	0x2e2e2e2e
1c0029e4:	2e2e2e2e 	0x2e2e2e2e
1c0029e8:	00000d0a 	0x00000d0a
1c0029ec:	2e2e2e0a 	0x2e2e2e0a
1c0029f0:	2e2e2e2e 	0x2e2e2e2e
1c0029f4:	2e2e2e2e 	0x2e2e2e2e
1c0029f8:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c386b24 <_sidata+0x383d68>
1c0029fc:	2e2e2e43 	0x2e2e2e43
1c002a00:	2e2e2e2e 	0x2e2e2e2e
1c002a04:	2e2e2e2e 	0x2e2e2e2e
1c002a08:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c002a0c:	0000000d 	0x0000000d
1c002a10:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019c7c <_sidata+0x16ec0>
1c002a14:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019368 <_sidata+0x165ac>
1c002a18:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff4a88 <_start-0xb578>
1c002a1c:	7261656c 	0x7261656c
1c002a20:	746e6920 	0x746e6920
1c002a24:	75727265 	0x75727265
1c002a28:	2e2e7470 	0x2e2e7470
1c002a2c:	0000000a 	0x0000000a

1c002a30 <__FUNCTION__.1776>:
1c002a30:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bff9ea8 <_start-0x6158>
1c002a34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009894 <_sidata+0x6ad8>
1c002a38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a3c <__FUNCTION__.1767>:
1c002a3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019eb4 <_sidata+0x170f8>
1c002a40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019aa4 <_sidata+0x16ce8>
1c002a44:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff61a8 <_start-0x9e58>
1c002a48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bb8 <_start-0x6448>
1c002a4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098ac <_sidata+0x6af0>
1c002a50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a54 <__FUNCTION__.1763>:
1c002a54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ecc <_sidata+0x17110>
1c002a58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019abc <_sidata+0x16d00>
1c002a5c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff60c0 <_start-0x9f40>
1c002a60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bd0 <_start-0x6430>
1c002a64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098c4 <_sidata+0x6b08>
1c002a68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a6c <__FUNCTION__.1759>:
1c002a6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ee4 <_sidata+0x17128>
1c002a70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ad4 <_sidata+0x16d18>
1c002a74:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff5fd8 <_start-0xa028>
1c002a78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9be8 <_start-0x6418>
1c002a7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098dc <_sidata+0x6b20>
1c002a80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a84 <__FUNCTION__.1755>:
1c002a84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019efc <_sidata+0x17140>
1c002a88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019aec <_sidata+0x16d30>
1c002a8c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff5ef0 <_start-0xa110>
1c002a90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c00 <_start-0x6400>
1c002a94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098f4 <_sidata+0x6b38>
1c002a98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a9c <__FUNCTION__.1751>:
1c002a9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f14 <_sidata+0x17158>
1c002aa0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b04 <_sidata+0x16d48>
1c002aa4:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff5e08 <_start-0xa1f8>
1c002aa8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c18 <_start-0x63e8>
1c002aac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00990c <_sidata+0x6b50>
1c002ab0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ab4 <__FUNCTION__.1747>:
1c002ab4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f2c <_sidata+0x17170>
1c002ab8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b1c <_sidata+0x16d60>
1c002abc:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff5d20 <_start-0xa2e0>
1c002ac0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c30 <_start-0x63d0>
1c002ac4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009924 <_sidata+0x6b68>
1c002ac8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002acc <__FUNCTION__.1743>:
1c002acc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f44 <_sidata+0x17188>
1c002ad0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b34 <_sidata+0x16d78>
1c002ad4:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff5c38 <_start-0xa3c8>
1c002ad8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c48 <_start-0x63b8>
1c002adc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00993c <_sidata+0x6b80>
1c002ae0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ae4 <__FUNCTION__.1739>:
1c002ae4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f5c <_sidata+0x171a0>
1c002ae8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b4c <_sidata+0x16d90>
1c002aec:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5b50 <_start-0xa4b0>
1c002af0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c60 <_start-0x63a0>
1c002af4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009954 <_sidata+0x6b98>
1c002af8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002afc <__FUNCTION__.1735>:
1c002afc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f74 <_sidata+0x171b8>
1c002b00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b64 <_sidata+0x16da8>
1c002b04:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6264 <_start-0x9d9c>
1c002b08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c78 <_start-0x6388>
1c002b0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00996c <_sidata+0x6bb0>
1c002b10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b14 <__FUNCTION__.1731>:
1c002b14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f8c <_sidata+0x171d0>
1c002b18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b7c <_sidata+0x16dc0>
1c002b1c:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff617c <_start-0x9e84>
1c002b20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c90 <_start-0x6370>
1c002b24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009984 <_sidata+0x6bc8>
1c002b28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b2c <__FUNCTION__.1727>:
1c002b2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fa4 <_sidata+0x171e8>
1c002b30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b94 <_sidata+0x16dd8>
1c002b34:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff6094 <_start-0x9f6c>
1c002b38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ca8 <_start-0x6358>
1c002b3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00999c <_sidata+0x6be0>
1c002b40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b44 <__FUNCTION__.1723>:
1c002b44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fbc <_sidata+0x17200>
1c002b48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bac <_sidata+0x16df0>
1c002b4c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff5fac <_start-0xa054>
1c002b50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cc0 <_start-0x6340>
1c002b54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099b4 <_sidata+0x6bf8>
1c002b58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b5c <__FUNCTION__.1719>:
1c002b5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fd4 <_sidata+0x17218>
1c002b60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bc4 <_sidata+0x16e08>
1c002b64:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff5ec4 <_start-0xa13c>
1c002b68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cd8 <_start-0x6328>
1c002b6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099cc <_sidata+0x6c10>
1c002b70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b74 <__FUNCTION__.1715>:
1c002b74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fec <_sidata+0x17230>
1c002b78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bdc <_sidata+0x16e20>
1c002b7c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff5ddc <_start-0xa224>
1c002b80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cf0 <_start-0x6310>
1c002b84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099e4 <_sidata+0x6c28>
1c002b88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b8c <__FUNCTION__.1711>:
1c002b8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a004 <_sidata+0x17248>
1c002b90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bf4 <_sidata+0x16e38>
1c002b94:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff5cf4 <_start-0xa30c>
1c002b98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d08 <_start-0x62f8>
1c002b9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099fc <_sidata+0x6c40>
1c002ba0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ba4 <__FUNCTION__.1707>:
1c002ba4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a01c <_sidata+0x17260>
1c002ba8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c0c <_sidata+0x16e50>
1c002bac:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff5c0c <_start-0xa3f4>
1c002bb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d20 <_start-0x62e0>
1c002bb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a14 <_sidata+0x6c58>
1c002bb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bbc <__FUNCTION__.1703>:
1c002bbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a034 <_sidata+0x17278>
1c002bc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c24 <_sidata+0x16e68>
1c002bc4:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff6324 <_start-0x9cdc>
1c002bc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d38 <_start-0x62c8>
1c002bcc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a2c <_sidata+0x6c70>
1c002bd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bd4 <__FUNCTION__.1699>:
1c002bd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a04c <_sidata+0x17290>
1c002bd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c3c <_sidata+0x16e80>
1c002bdc:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff623c <_start-0x9dc4>
1c002be0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d50 <_start-0x62b0>
1c002be4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a44 <_sidata+0x6c88>
1c002be8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bec <__FUNCTION__.1695>:
1c002bec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a064 <_sidata+0x172a8>
1c002bf0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c54 <_sidata+0x16e98>
1c002bf4:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6154 <_start-0x9eac>
1c002bf8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d68 <_start-0x6298>
1c002bfc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a5c <_sidata+0x6ca0>
1c002c00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c04 <__FUNCTION__.1691>:
1c002c04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a07c <_sidata+0x172c0>
1c002c08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c6c <_sidata+0x16eb0>
1c002c0c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff606c <_start-0x9f94>
1c002c10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d80 <_start-0x6280>
1c002c14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a74 <_sidata+0x6cb8>
1c002c18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c1c <__FUNCTION__.1687>:
1c002c1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a094 <_sidata+0x172d8>
1c002c20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c84 <_sidata+0x16ec8>
1c002c24:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5f84 <_start-0xa07c>
1c002c28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d98 <_start-0x6268>
1c002c2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a8c <_sidata+0x6cd0>
1c002c30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c34 <__FUNCTION__.1683>:
1c002c34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0ac <_sidata+0x172f0>
1c002c38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c9c <_sidata+0x16ee0>
1c002c3c:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5e9c <_start-0xa164>
1c002c40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9db0 <_start-0x6250>
1c002c44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009aa4 <_sidata+0x6ce8>
1c002c48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c4c <__FUNCTION__.1679>:
1c002c4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0c4 <_sidata+0x17308>
1c002c50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cb4 <_sidata+0x16ef8>
1c002c54:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5db4 <_start-0xa24c>
1c002c58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dc8 <_start-0x6238>
1c002c5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009abc <_sidata+0x6d00>
1c002c60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c64 <__FUNCTION__.1675>:
1c002c64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0dc <_sidata+0x17320>
1c002c68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ccc <_sidata+0x16f10>
1c002c6c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5ccc <_start-0xa334>
1c002c70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9de0 <_start-0x6220>
1c002c74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ad4 <_sidata+0x6d18>
1c002c78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c7c <__FUNCTION__.1671>:
1c002c7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0f4 <_sidata+0x17338>
1c002c80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ce4 <_sidata+0x16f28>
1c002c84:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff63e4 <_start-0x9c1c>
1c002c88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9df8 <_start-0x6208>
1c002c8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009aec <_sidata+0x6d30>
1c002c90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c94 <__FUNCTION__.1667>:
1c002c94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a10c <_sidata+0x17350>
1c002c98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cfc <_sidata+0x16f40>
1c002c9c:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff62fc <_start-0x9d04>
1c002ca0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e10 <_start-0x61f0>
1c002ca4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b04 <_sidata+0x6d48>
1c002ca8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cac <__FUNCTION__.1663>:
1c002cac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a124 <_sidata+0x17368>
1c002cb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d14 <_sidata+0x16f58>
1c002cb4:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff6214 <_start-0x9dec>
1c002cb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e28 <_start-0x61d8>
1c002cbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b1c <_sidata+0x6d60>
1c002cc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cc4 <__FUNCTION__.1659>:
1c002cc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a13c <_sidata+0x17380>
1c002cc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d2c <_sidata+0x16f70>
1c002ccc:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff612c <_start-0x9ed4>
1c002cd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e40 <_start-0x61c0>
1c002cd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b34 <_sidata+0x6d78>
1c002cd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cdc <__FUNCTION__.1655>:
1c002cdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a154 <_sidata+0x17398>
1c002ce0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d44 <_sidata+0x16f88>
1c002ce4:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff6044 <_start-0x9fbc>
1c002ce8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e58 <_start-0x61a8>
1c002cec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b4c <_sidata+0x6d90>
1c002cf0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cf4 <__FUNCTION__.1651>:
1c002cf4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a16c <_sidata+0x173b0>
1c002cf8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d5c <_sidata+0x16fa0>
1c002cfc:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5f5c <_start-0xa0a4>
1c002d00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e70 <_start-0x6190>
1c002d04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b64 <_sidata+0x6da8>
1c002d08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d0c <__FUNCTION__.1647>:
1c002d0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a184 <_sidata+0x173c8>
1c002d10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d74 <_sidata+0x16fb8>
1c002d14:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5e74 <_start-0xa18c>
1c002d18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e88 <_start-0x6178>
1c002d1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b7c <_sidata+0x6dc0>
1c002d20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d24 <__FUNCTION__.1643>:
1c002d24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a19c <_sidata+0x173e0>
1c002d28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d8c <_sidata+0x16fd0>
1c002d2c:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5d8c <_start-0xa274>
1c002d30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ea0 <_start-0x6160>
1c002d34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b94 <_sidata+0x6dd8>
1c002d38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d3c <Ext_IrqHandle>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:61
1c002d3c:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
1c002d40:	1c001c48 	pcaddu12i	$r8,226(0xe2)
1c002d44:	1c001c84 	pcaddu12i	$r4,228(0xe4)
1c002d48:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
1c002d4c:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
1c002d50:	1c001d38 	pcaddu12i	$r24,233(0xe9)
1c002d54:	1c001d74 	pcaddu12i	$r20,235(0xeb)
1c002d58:	1c001db0 	pcaddu12i	$r16,237(0xed)
1c002d5c:	1c001dec 	pcaddu12i	$r12,239(0xef)
1c002d60:	1c001e28 	pcaddu12i	$r8,241(0xf1)
1c002d64:	1c001e64 	pcaddu12i	$r4,243(0xf3)
1c002d68:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
1c002d6c:	1c001edc 	pcaddu12i	$r28,246(0xf6)
1c002d70:	1c001f18 	pcaddu12i	$r24,248(0xf8)
1c002d74:	1c001f54 	pcaddu12i	$r20,250(0xfa)
1c002d78:	1c001f90 	pcaddu12i	$r16,252(0xfc)
1c002d7c:	1c001fcc 	pcaddu12i	$r12,254(0xfe)
1c002d80:	1c002008 	pcaddu12i	$r8,256(0x100)
1c002d84:	1c002044 	pcaddu12i	$r4,258(0x102)
1c002d88:	1c002080 	pcaddu12i	$r0,260(0x104)
1c002d8c:	1c0020bc 	pcaddu12i	$r28,261(0x105)
1c002d90:	1c0020f8 	pcaddu12i	$r24,263(0x107)
1c002d94:	1c002134 	pcaddu12i	$r20,265(0x109)
1c002d98:	1c002170 	pcaddu12i	$r16,267(0x10b)
1c002d9c:	1c0021ac 	pcaddu12i	$r12,269(0x10d)
1c002da0:	1c0021e8 	pcaddu12i	$r8,271(0x10f)
1c002da4:	1c002224 	pcaddu12i	$r4,273(0x111)
1c002da8:	1c002260 	pcaddu12i	$r0,275(0x113)
1c002dac:	1c00229c 	pcaddu12i	$r28,276(0x114)
1c002db0:	1c0022d8 	pcaddu12i	$r24,278(0x116)
1c002db4:	1c002314 	pcaddu12i	$r20,280(0x118)
1c002db8:	1c002350 	pcaddu12i	$r16,282(0x11a)

Disassembly of section .bss.sys_init_cnt:

80000000 <sys_init_cnt>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:467
80000000:	00000000 	0x00000000

Disassembly of section .bss.state:

80000004 <state>:
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/1c102_Interrupt.h:78
80000004:	00000000 	0x00000000

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
    26ec:	0e2c0101 	0x0e2c0101
    26f0:	00020000 	0x00020000
    26f4:	00000447 	0x00000447
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
    28b0:	755c3a64 	0x755c3a64
    28b4:	73726573 	0x73726573
    28b8:	6e61775c 	bgeu	$r26,$r28,-106124(0x26174) # fffe8a2c <_RAM_DATA+0x7ffe7a2c>
    28bc:	645c7367 	bge	$r27,$r7,23664(0x5c70) # 852c <_start-0x1bff7ad4>
    28c0:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19e20 <_start-0x1bfe61e0>
    28c4:	73746e65 	0x73746e65
    28c8:	646f635c 	bge	$r26,$r28,28512(0x6f60) # 9828 <_start-0x1bff67d8>
    28cc:	6f6c5c65 	bgeu	$r3,$r5,-37796(0x36c5c) # ffff9528 <_RAM_DATA+0x7fff8528>
    28d0:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 1903c <_start-0x1bfe6fc4>
    28d4:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9134 <_RAM_DATA+0x7fff8134>
    28d8:	636f7270 	blt	$r19,$r16,-37008(0x36f70) # ffff9848 <_RAM_DATA+0x7fff8848>
    28dc:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19c4c <_start-0x1bfe63b4>
    28e0:	735f676e 	vsrarni.d.q	$vr14,$vr27,0x59
    28e4:	65747379 	bge	$r27,$r25,95344(0x17470) # 19d54 <_start-0x1bfe62ac>
    28e8:	63315c6d 	blt	$r3,$r13,-52900(0x3315c) # ffff5a44 <_RAM_DATA+0x7fff4a44>
    28ec:	5c323031 	bne	$r1,$r17,12848(0x3230) # 5b1c <_start-0x1bffa4e4>
    28f0:	5c637273 	bne	$r19,$r19,25456(0x6370) # 8c60 <_start-0x1bff73a0>
    28f4:	6c5c7773 	bgeu	$r27,$r19,23668(0x5c74) # 8568 <_start-0x1bff7a98>
    28f8:	65646961 	bge	$r11,$r1,91240(0x16468) # 18d60 <_start-0x1bfe72a0>
    28fc:	6975625c 	bltu	$r18,$r28,95584(0x17560) # 19e5c <_start-0x1bfe61a4>
    2900:	6f74646c 	bgeu	$r3,$r12,-35740(0x37464) # ffff9d64 <_RAM_DATA+0x7fff8d64>
    2904:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 8570 <_start-0x1bff7a90>
    2908:	2d323361 	0x2d323361
    290c:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 9878 <_start-0x1bff6788>
    2910:	62696c5c 	blt	$r2,$r28,-104084(0x2696c) # fffe927c <_RAM_DATA+0x7ffe827c>
    2914:	6363675c 	blt	$r26,$r28,-40092(0x36364) # ffff8c78 <_RAM_DATA+0x7fff7c78>
    2918:	6f6f6c5c 	bgeu	$r2,$r28,-37012(0x36f6c) # ffff9884 <_RAM_DATA+0x7fff8884>
    291c:	7261676e 	0x7261676e
    2920:	32336863 	0x32336863
    2924:	77656e2d 	xvssrani.wu.d	$xr13,$xr17,0x1b
    2928:	2d62696c 	0x2d62696c
    292c:	5c666c65 	bne	$r3,$r5,26220(0x666c) # 8f98 <_start-0x1bff7068>
    2930:	2e332e38 	0x2e332e38
    2934:	6e695c30 	bgeu	$r1,$r16,-104100(0x2695c) # fffe9290 <_RAM_DATA+0x7ffe8290>
    2938:	64756c63 	bge	$r3,$r3,30060(0x756c) # 9ea4 <_start-0x1bff615c>
    293c:	3a640065 	0x3a640065
    2940:	6573755c 	bge	$r10,$r28,95092(0x17374) # 19cb4 <_start-0x1bfe634c>
    2944:	775c7372 	xvsrarni.b.h	$xr18,$xr27,0xc
    2948:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    294c:	636f645c 	blt	$r2,$r28,-37020(0x36f64) # ffff98b0 <_RAM_DATA+0x7fff88b0>
    2950:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8ebc <_RAM_DATA+0x7ffe7ebc>
    2954:	635c7374 	blt	$r27,$r20,-41872(0x35c70) # ffff85c4 <_RAM_DATA+0x7fff75c4>
    2958:	5c65646f 	bne	$r3,$r15,25956(0x6564) # 8ebc <_start-0x1bff7144>
    295c:	6e6f6f6c 	bgeu	$r27,$r12,-102548(0x26f6c) # fffe98c8 <_RAM_DATA+0x7ffe88c8>
    2960:	63726167 	blt	$r11,$r7,-36256(0x37260) # ffff9bc0 <_RAM_DATA+0x7fff8bc0>
    2964:	72705f68 	0x72705f68
    2968:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    296c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff97d4 <_RAM_DATA+0x7fff87d4>
    2970:	7379735f 	0x7379735f
    2974:	5c6d6574 	bne	$r11,$r20,28004(0x6d64) # 96d8 <_start-0x1bff6928>
    2978:	30316331 	0x30316331
    297c:	72735c32 	0x72735c32
    2980:	77735c63 	0x77735c63
    2984:	69616c5c 	bltu	$r2,$r28,90476(0x1616c) # 18af0 <_start-0x1bfe7510>
    2988:	625c6564 	blt	$r11,$r4,-107420(0x25c64) # fffe85ec <_RAM_DATA+0x7ffe75ec>
    298c:	646c6975 	bge	$r11,$r21,27752(0x6c68) # 95f4 <_start-0x1bff6a0c>
    2990:	6c6f6f74 	bgeu	$r27,$r20,28524(0x6f6c) # 98fc <_start-0x1bff6704>
    2994:	33616c5c 	xvstelm.h	$xr28,$r2,182(0xb6),0x8
    2998:	6f742d32 	bgeu	$r9,$r18,-35796(0x3742c) # ffff9dc4 <_RAM_DATA+0x7fff8dc4>
    299c:	6c5c6c6f 	bgeu	$r3,$r15,23660(0x5c6c) # 8608 <_start-0x1bff79f8>
    29a0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff980c <_RAM_DATA+0x7fff880c>
    29a4:	68637261 	bltu	$r19,$r1,25456(0x6370) # 8d14 <_start-0x1bff72ec>
    29a8:	6e2d3233 	bgeu	$r17,$r19,-119504(0x22d30) # fffe56d8 <_RAM_DATA+0x7ffe46d8>
    29ac:	696c7765 	bltu	$r27,$r5,93300(0x16c74) # 19620 <_start-0x1bfe69e0>
    29b0:	6c652d62 	bgeu	$r11,$r2,25900(0x652c) # 8edc <_start-0x1bff7124>
    29b4:	6e695c66 	bgeu	$r3,$r6,-104100(0x2695c) # fffe9310 <_RAM_DATA+0x7ffe8310>
    29b8:	64756c63 	bge	$r3,$r3,30060(0x756c) # 9f24 <_start-0x1bff60dc>
    29bc:	3a440065 	0x3a440065
    29c0:	6573552f 	bge	$r9,$r15,95060(0x17354) # 19d14 <_start-0x1bfe62ec>
    29c4:	772f7372 	0x772f7372
    29c8:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    29cc:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff9910 <_RAM_DATA+0x7fff8910>
    29d0:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe8f3c <_RAM_DATA+0x7ffe7f3c>
    29d4:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd35944 <_RAM_DATA+0x7fd34944>
    29d8:	2f65646f 	0x2f65646f
    29dc:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe9948 <_RAM_DATA+0x7ffe8948>
    29e0:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff9c20 <_RAM_DATA+0x7fff8c20>
    29e4:	72505f68 	0x72505f68
    29e8:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    29ec:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff9854 <_RAM_DATA+0x7fff8854>
    29f0:	7379535f 	0x7379535f
    29f4:	2f6d6574 	0x2f6d6574
    29f8:	30314331 	0x30314331
    29fc:	72732f32 	0x72732f32
    2a00:	77732f63 	0x77732f63
    2a04:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe9f74 <_RAM_DATA+0x7ffe8f74>
    2a08:	0063696c 	bstrins.w	$r12,$r11,0x3,0x1a
    2a0c:	552f3a44 	bl	-116314312(0x9112f38) # f9115944 <_RAM_DATA+0x79114944>
    2a10:	73726573 	0x73726573
    2a14:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe8b88 <_RAM_DATA+0x7ffe7b88>
    2a18:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c5988 <_start-0x1be3a678>
    2a1c:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 19f7c <_start-0x1bfe6084>
    2a20:	73746e65 	0x73746e65
    2a24:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 9964 <_start-0x1bff669c>
    2a28:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff7654 <_RAM_DATA+0x7fff6654>
    2a2c:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d9198 <_start-0x1bc26e68>
    2a30:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9290 <_RAM_DATA+0x7fff8290>
    2a34:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff99a4 <_RAM_DATA+0x7fff89a4>
    2a38:	69737365 	bltu	$r27,$r5,95088(0x17370) # 19da8 <_start-0x1bfe6258>
    2a3c:	535f676e 	b	-38051996(0xdbb5f64) # fdbb89a0 <_RAM_DATA+0x7dbb79a0>
    2a40:	65747379 	bge	$r27,$r25,95344(0x17470) # 19eb0 <_start-0x1bfe6150>
    2a44:	43312f6d 	beqz	$r27,3617068(0x37312c) # 375b70 <_start-0x1bc8a490>
    2a48:	2f323031 	0x2f323031
    2a4c:	2f637273 	0x2f637273
    2a50:	642f7773 	bge	$r27,$r19,12148(0x2f74) # 59c4 <_start-0x1bffa63c>
    2a54:	65766972 	bge	$r11,$r18,95848(0x17668) # 1a0bc <_start-0x1bfe5f44>
    2a58:	6d000072 	bgeu	$r3,$r18,65536(0x10000) # 12a58 <_start-0x1bfed5a8>
    2a5c:	2e6e6961 	0x2e6e6961
    2a60:	00010063 	0x00010063
    2a64:	65645f00 	bge	$r24,$r0,91228(0x1645c) # 18ec0 <_start-0x1bfe7140>
    2a68:	6c756166 	bgeu	$r11,$r6,30048(0x7560) # 9fc8 <_start-0x1bff6038>
    2a6c:	79745f74 	0x79745f74
    2a70:	2e736570 	0x2e736570
    2a74:	00020068 	0x00020068
    2a78:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
    2a7c:	746e6964 	0x746e6964
    2a80:	0300682e 	lu52i.d	$r14,$r1,26(0x1a)
    2a84:	65740000 	bge	$r0,$r0,95232(0x17400) # 19e84 <_start-0x1bfe617c>
    2a88:	682e7473 	bltu	$r3,$r19,11892(0x2e74) # 58fc <_start-0x1bffa704>
    2a8c:	00000400 	0x00000400
    2a90:	30316331 	0x30316331
    2a94:	6e495f32 	bgeu	$r25,$r18,-112292(0x2495c) # fffe73f0 <_RAM_DATA+0x7ffe63f0>
    2a98:	72726574 	0x72726574
    2a9c:	2e747075 	0x2e747075
    2aa0:	00010068 	0x00010068
    2aa4:	636f6c00 	blt	$r0,$r0,-37012(0x36f6c) # ffff9a10 <_RAM_DATA+0x7fff8a10>
    2aa8:	00682e6b 	bstrins.w	$r11,$r19,0x8,0xb
    2aac:	5f000003 	bne	$r0,$r3,-65536(0x30000) # ffff2aac <_RAM_DATA+0x7fff1aac>
    2ab0:	65707974 	bge	$r11,$r20,94328(0x17078) # 19b28 <_start-0x1bfe64d8>
    2ab4:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    2ab8:	73000003 	0x73000003
    2abc:	65646474 	bge	$r3,$r20,91236(0x16464) # 18f20 <_start-0x1bfe70e0>
    2ac0:	00682e66 	bstrins.w	$r6,$r19,0x8,0xb
    2ac4:	72000005 	0x72000005
    2ac8:	746e6565 	0x746e6565
    2acc:	0300682e 	lu52i.d	$r14,$r1,26(0x1a)
    2ad0:	616d0000 	blt	$r0,$r0,93440(0x16d00) # 197d0 <_start-0x1bfe6830>
    2ad4:	682e6874 	bltu	$r3,$r20,11880(0x2e68) # 593c <_start-0x1bffa6c4>
    2ad8:	00000600 	0x00000600
    2adc:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff8e48 <_RAM_DATA+0x7fff7e48>
    2ae0:	74726175 	xvmin.b	$xr21,$xr11,$xr24
    2ae4:	0700682e 	0x0700682e
    2ae8:	736c0000 	0x736c0000
    2aec:	635f7831 	blt	$r1,$r17,-41096(0x35f78) # ffff8a64 <_RAM_DATA+0x7fff7a64>
    2af0:	6f6d6d6f 	bgeu	$r11,$r15,-37524(0x36d6c) # ffff985c <_RAM_DATA+0x7fff885c>
    2af4:	00682e6e 	bstrins.w	$r14,$r19,0x8,0xb
    2af8:	64000007 	bge	$r0,$r7,0 # 2af8 <_start-0x1bffd508>
    2afc:	682e7264 	bltu	$r19,$r4,11888(0x2e70) # 596c <_start-0x1bffa694>
    2b00:	00000800 	0x00000800
    2b04:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff8e70 <_RAM_DATA+0x7fff7e70>
    2b08:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe9478 <_RAM_DATA+0x7ffe8478>
    2b0c:	682e6674 	bltu	$r19,$r20,11876(0x2e64) # 5970 <_start-0x1bffa690>
    2b10:	00000700 	0x00000700
    2b14:	682e6473 	bltu	$r3,$r19,11876(0x2e64) # 5978 <_start-0x1bffa688>
    2b18:	00000800 	0x00000800
    2b1c:	7831736c 	0x7831736c
    2b20:	6972705f 	bltu	$r2,$r31,94832(0x17270) # 19d90 <_start-0x1bfe6270>
    2b24:	2e66746e 	0x2e66746e
    2b28:	00070068 	alsl.wu	$r8,$r3,$r0,0x3
    2b2c:	31736c00 	0x31736c00
    2b30:	74735f78 	xvmin.w	$xr24,$xr27,$xr23
    2b34:	676e6972 	bge	$r11,$r18,-37272(0x36e68) # ffff999c <_RAM_DATA+0x7fff899c>
    2b38:	0700682e 	0x0700682e
    2b3c:	05000000 	0x05000000
    2b40:	02050001 	slti	$r1,$r0,320(0x140)
    2b44:	00000000 	0x00000000
    2b48:	0100d503 	fadd.s	$f3,$f8,$f21
    2b4c:	02010613 	slti	$r19,$r16,65(0x41)
    2b50:	01010004 	fadd.d	$f4,$f0,$f0
    2b54:	05000105 	0x05000105
    2b58:	00000002 	0x00000002
    2b5c:	00d90300 	bstrpick.d	$r0,$r24,0x19,0x0
    2b60:	05010601 	0x05010601
    2b64:	13f30602 	addu16i.d	$r2,$r16,-831(0xfcc1)
    2b68:	03040513 	lu52i.d	$r19,$r8,257(0x101)
    2b6c:	8206f21d 	0x8206f21d
    2b70:	02054b06 	slti	$r6,$r24,338(0x152)
    2b74:	06010514 	cacop	0x14,$r8,65(0x41)
    2b78:	06050513 	cacop	0x13,$r8,321(0x141)
    2b7c:	74086303 	xvslt.bu	$xr3,$xr24,$xr24
    2b80:	4b068206 	0x4b068206
    2b84:	01060a05 	0x01060a05
    2b88:	02000d05 	slti	$r5,$r8,3(0x3)
    2b8c:	054a0104 	0x054a0104
    2b90:	04020005 	csrrd	$r5,0x80
    2b94:	05ac0801 	0x05ac0801
    2b98:	04020006 	csrrd	$r6,0x80
    2b9c:	004c0603 	0x004c0603
    2ba0:	06030402 	cacop	0x2,$r0,193(0xc1)
    2ba4:	003105f2 	0x003105f2
    2ba8:	08030402 	0x08030402
    2bac:	0605053a 	cacop	0x1a,$r9,321(0x141)
    2bb0:	0607058a 	cacop	0xa,$r12,449(0x1c1)
    2bb4:	06050501 	cacop	0x1,$r8,321(0x141)
    2bb8:	060a054b 	cacop	0xb,$r10,641(0x281)
    2bbc:	000e0501 	bytepick.d	$r1,$r8,$r1,0x4
    2bc0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2cc4 <_start-0x1bf5d33c>
    2bc4:	02000505 	slti	$r5,$r8,1(0x1)
    2bc8:	ac080104 	0xac080104
    2bcc:	4c060605 	jirl	$r5,$r16,1540(0x604)
    2bd0:	01060905 	0x01060905
    2bd4:	74080805 	xvslt.bu	$xr5,$xr0,$xr2
    2bd8:	02003205 	slti	$r5,$r16,12(0xc)
    2bdc:	00480204 	0x00480204
    2be0:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a2de4 <_start-0x1bf5d21c>
    2be4:	4e060705 	jirl	$r5,$r24,-129532(0x20604)
    2be8:	05132402 	0x05132402
    2bec:	08051505 	0x08051505
    2bf0:	05ba0106 	0x05ba0106
    2bf4:	0605f207 	cacop	0x7,$r16,380(0x17c)
    2bf8:	10024c06 	addu16i.d	$r6,$r0,147(0x93)
    2bfc:	05010100 	0x05010100
    2c00:	02050001 	slti	$r1,$r0,320(0x140)
    2c04:	00000000 	0x00000000
    2c08:	01018003 	0x01018003
    2c0c:	e5080205 	0xe5080205
    2c10:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2c14:	13131313 	addu16i.d	$r19,$r24,-15164(0xc4c4)
    2c18:	07051313 	0x07051313
    2c1c:	02050106 	slti	$r6,$r8,320(0x140)
    2c20:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    2c24:	06030402 	cacop	0x2,$r0,193(0xc1)
    2c28:	0016054e 	orn	$r14,$r10,$r1
    2c2c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2c30:	00130501 	maskeqz	$r1,$r8,$r1
    2c34:	08030402 	0x08030402
    2c38:	04020072 	csrxchg	$r18,$r3,0x80
    2c3c:	03054a03 	lu52i.d	$r3,$r16,338(0x152)
    2c40:	01040200 	0x01040200
    2c44:	0010054a 	add.w	$r10,$r10,$r1
    2c48:	80020402 	0x80020402
    2c4c:	02040200 	slti	$r0,$r16,256(0x100)
    2c50:	0002054a 	0x0002054a
    2c54:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2d58 <_start-0x1bf5d2a8>
    2c58:	05840805 	0x05840805
    2c5c:	08057e06 	0x08057e06
    2c60:	03070549 	lu52i.d	$r9,$r10,449(0x1c1)
    2c64:	058200e8 	0x058200e8
    2c68:	054a4b09 	0x054a4b09
    2c6c:	04020004 	csrrd	$r4,0x80
    2c70:	a7030603 	0xa7030603
    2c74:	11054a7f 	addu16i.d	$r31,$r19,16722(0x4152)
    2c78:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c7c:	13050106 	addu16i.d	$r6,$r8,-16064(0xc140)
    2c80:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2c84:	040200b8 	csrxchg	$r24,$r5,0x80
    2c88:	03054a03 	lu52i.d	$r3,$r16,338(0x152)
    2c8c:	01040200 	0x01040200
    2c90:	bb86064a 	0xbb86064a
    2c94:	06060513 	cacop	0x13,$r8,385(0x181)
    2c98:	4a4a8201 	0x4a4a8201
    2c9c:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2ca0:	06030402 	cacop	0x2,$r0,193(0xc1)
    2ca4:	054a0a03 	0x054a0a03
    2ca8:	04020025 	csrwr	$r5,0x80
    2cac:	05010603 	0x05010603
    2cb0:	04020027 	csrwr	$r7,0x80
    2cb4:	22054a03 	ll.d	$r3,$r16,1352(0x548)
    2cb8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2cbc:	0017054a 	sll.w	$r10,$r10,$r1
    2cc0:	ba030402 	0xba030402
    2cc4:	02001605 	slti	$r5,$r16,5(0x5)
    2cc8:	00800304 	bstrins.d	$r4,$r24,0x0,0x0
    2ccc:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a2fd0 <_start-0x1bf5d030>
    2cd0:	02000605 	slti	$r5,$r16,1(0x1)
    2cd4:	064a0104 	0x064a0104
    2cd8:	0612054e 	cacop	0xe,$r10,1153(0x481)
    2cdc:	4a160501 	bcnez	$fcc0,398852(0x61604) # 642e0 <_start-0x1bf9bd20>
    2ce0:	bb060605 	0xbb060605
    2ce4:	01060805 	0x01060805
    2ce8:	0606054a 	cacop	0xa,$r10,385(0x181)
    2cec:	060b054b 	cacop	0xb,$r10,705(0x2c1)
    2cf0:	4a060501 	bcnez	$fcc0,394756(0x60604) # 632f4 <_start-0x1bf9cd0c>
    2cf4:	02000705 	slti	$r5,$r24,1(0x1)
    2cf8:	4c060304 	jirl	$r4,$r24,1536(0x600)
    2cfc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d00:	16058206 	lu32i.d	$r6,11280(0x2c10)
    2d04:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d08:	040200b8 	csrxchg	$r24,$r5,0x80
    2d0c:	06054a03 	cacop	0x3,$r16,338(0x152)
    2d10:	01040200 	0x01040200
    2d14:	4e0b054a 	jirl	$r10,$r10,-128252(0x20b04)
    2d18:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2d1c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d20:	0402004c 	csrxchg	$r12,$r2,0x80
    2d24:	02008303 	slti	$r3,$r24,32(0x20)
    2d28:	05830304 	0x05830304
    2d2c:	04020018 	csrrd	$r24,0x80
    2d30:	007e0603 	bstrins.w	$r3,$r16,0x1e,0x1
    2d34:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3038 <_start-0x1bf5cfc8>
    2d38:	02001305 	slti	$r5,$r24,4(0x4)
    2d3c:	054a0104 	0x054a0104
    2d40:	04020006 	csrrd	$r6,0x80
    2d44:	0b054a01 	0x0b054a01
    2d48:	07054a50 	0x07054a50
    2d4c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d50:	1e054c06 	pcaddu18i	$r6,10848(0x2a60)
    2d54:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2d58:	02008006 	slti	$r6,$r0,32(0x20)
    2d5c:	054a0304 	0x054a0304
    2d60:	04020018 	csrrd	$r24,0x80
    2d64:	02004a01 	slti	$r1,$r16,18(0x12)
    2d68:	004a0104 	0x004a0104
    2d6c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2e70 <_start-0x1bf5d190>
    2d70:	02000605 	slti	$r5,$r16,1(0x1)
    2d74:	054a0104 	0x054a0104
    2d78:	06054e0b 	cacop	0xb,$r16,339(0x153)
    2d7c:	01040200 	0x01040200
    2d80:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2d84:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d88:	0015054c 	or	$r12,$r10,$r1
    2d8c:	06030402 	cacop	0x2,$r0,193(0xc1)
    2d90:	04020080 	csrxchg	$r0,$r4,0x80
    2d94:	02004a03 	slti	$r3,$r16,18(0x12)
    2d98:	054a0304 	0x054a0304
    2d9c:	05510606 	0x05510606
    2da0:	05010612 	0x05010612
    2da4:	06058216 	cacop	0x16,$r16,352(0x160)
    2da8:	1205bb06 	addu16i.d	$r6,$r24,-32402(0x816e)
    2dac:	03054906 	lu52i.d	$r6,$r8,338(0x152)
    2db0:	4a5e0306 	0x4a5e0306
    2db4:	05140405 	0x05140405
    2db8:	05010608 	0x05010608
    2dbc:	04054a06 	csrxchg	$r6,$r16,0x152
    2dc0:	0f054b06 	0x0f054b06
    2dc4:	06050106 	cacop	0x6,$r8,320(0x140)
    2dc8:	06050582 	cacop	0x2,$r12,321(0x141)
    2dcc:	06070584 	cacop	0x4,$r12,449(0x1c1)
    2dd0:	4c0b0501 	jirl	$r1,$r8,2820(0xb04)
    2dd4:	03060905 	lu52i.d	$r5,$r8,386(0x182)
    2dd8:	0b05821f 	0x0b05821f
    2ddc:	09050106 	0x09050106
    2de0:	82270306 	0x82270306
    2de4:	01060b05 	0x01060b05
    2de8:	02001505 	slti	$r5,$r8,5(0x5)
    2dec:	05820104 	0x05820104
    2df0:	12030609 	addu16i.d	$r9,$r16,-32575(0x80c1)
    2df4:	060b0582 	cacop	0x2,$r12,705(0x2c1)
    2df8:	06050501 	cacop	0x1,$r8,321(0x141)
    2dfc:	06090584 	cacop	0x4,$r12,577(0x241)
    2e00:	06050501 	cacop	0x1,$r8,321(0x141)
    2e04:	0607054b 	cacop	0xb,$r10,449(0x1c1)
    2e08:	06060501 	cacop	0x1,$r8,385(0x181)
    2e0c:	060a0584 	cacop	0x4,$r12,641(0x281)
    2e10:	06060501 	cacop	0x1,$r8,385(0x181)
    2e14:	080a054b 	0x080a054b
    2e18:	060c05af 	cacop	0xf,$r13,769(0x301)
    2e1c:	500d0501 	b	67374340(0x4040d04) # 4043b20 <_start-0x17fbc4e0>
    2e20:	0605054a 	cacop	0xa,$r10,321(0x141)
    2e24:	4a7fba03 	0x4a7fba03
    2e28:	01060705 	0x01060705
    2e2c:	02001705 	slti	$r5,$r24,5(0x5)
    2e30:	054a0104 	0x054a0104
    2e34:	04020011 	csrrd	$r17,0x80
    2e38:	06058201 	cacop	0x1,$r16,352(0x160)
    2e3c:	4a1c0306 	0x4a1c0306
    2e40:	01060805 	0x01060805
    2e44:	02001305 	slti	$r5,$r24,4(0x4)
    2e48:	054a0104 	0x054a0104
    2e4c:	054c0607 	0x054c0607
    2e50:	05010611 	0x05010611
    2e54:	054a4a17 	0x054a4a17
    2e58:	83bb0607 	0x83bb0607
    2e5c:	04020083 	csrxchg	$r3,$r4,0x80
    2e60:	ba630303 	0xba630303
    2e64:	02001605 	slti	$r5,$r16,5(0x5)
    2e68:	08060304 	0x08060304
    2e6c:	0402003a 	csrwr	$r26,0x80
    2e70:	06054a03 	cacop	0x3,$r16,338(0x152)
    2e74:	01040200 	0x01040200
    2e78:	4e0b054a 	jirl	$r10,$r10,-128252(0x20b04)
    2e7c:	0705464a 	0x0705464a
    2e80:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e84:	02008806 	slti	$r6,$r0,34(0x22)
    2e88:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2e8c:	83030402 	0x83030402
    2e90:	02001605 	slti	$r5,$r16,5(0x5)
    2e94:	7e060304 	0x7e060304
    2e98:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2e9c:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2ea0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a2fa4 <_start-0x1bf5d05c>
    2ea4:	05500b05 	0x05500b05
    2ea8:	04020007 	csrrd	$r7,0x80
    2eac:	05840603 	0x05840603
    2eb0:	04020027 	csrwr	$r7,0x80
    2eb4:	05010603 	0x05010603
    2eb8:	04020015 	csrrd	$r21,0x80
    2ebc:	24054a03 	ldptr.w	$r3,$r16,1352(0x548)
    2ec0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2ec4:	0019054a 	srl.d	$r10,$r10,$r1
    2ec8:	ba030402 	0xba030402
    2ecc:	02001605 	slti	$r5,$r16,5(0x5)
    2ed0:	00b80304 	bstrins.d	$r4,$r24,0x38,0x0
    2ed4:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a31d8 <_start-0x1bf5ce28>
    2ed8:	02000605 	slti	$r5,$r16,1(0x1)
    2edc:	064a0104 	0x064a0104
    2ee0:	0610054e 	cacop	0xe,$r10,1025(0x401)
    2ee4:	4a160501 	bcnez	$fcc0,398852(0x61604) # 644e8 <_start-0x1bf9bb18>
    2ee8:	06054a4a 	cacop	0xa,$r18,338(0x152)
    2eec:	0b058306 	0x0b058306
    2ef0:	06050106 	cacop	0x6,$r8,320(0x140)
    2ef4:	0007054a 	alsl.wu	$r10,$r10,$r1,0x3
    2ef8:	06030402 	cacop	0x2,$r0,193(0xc1)
    2efc:	001e054c 	mulh.d	$r12,$r10,$r1
    2f00:	06030402 	cacop	0x2,$r0,193(0xc1)
    2f04:	04020080 	csrxchg	$r0,$r4,0x80
    2f08:	18054a03 	pcaddi	$r3,10832(0x2a50)
    2f0c:	01040200 	0x01040200
    2f10:	0006054a 	alsl.wu	$r10,$r10,$r1,0x1
    2f14:	ba010402 	0xba010402
    2f18:	054e0b05 	0x054e0b05
    2f1c:	04020006 	csrrd	$r6,0x80
    2f20:	07054a01 	0x07054a01
    2f24:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f28:	15054c06 	lu12i.w	$r6,-513440(0x82a60)
    2f2c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2f30:	02008006 	slti	$r6,$r0,32(0x20)
    2f34:	004a0304 	0x004a0304
    2f38:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a323c <_start-0x1bf5cdc4>
    2f3c:	03060505 	lu52i.d	$r5,$r8,385(0x181)
    2f40:	11054a12 	addu16i.d	$r18,$r16,16722(0x4152)
    2f44:	07050106 	0x07050106
    2f48:	500a054a 	b	86510084(0x5280a04) # 528394c <_start-0x16d7c6b4>
    2f4c:	02000605 	slti	$r5,$r16,1(0x1)
    2f50:	84060304 	0x84060304
    2f54:	02001905 	slti	$r5,$r8,6(0x6)
    2f58:	01060304 	0x01060304
    2f5c:	02001b05 	slti	$r5,$r24,6(0x6)
    2f60:	00b80304 	bstrins.d	$r4,$r24,0x38,0x0
    2f64:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3268 <_start-0x1bf5cd98>
    2f68:	02001605 	slti	$r5,$r16,5(0x5)
    2f6c:	054a0104 	0x054a0104
    2f70:	04020005 	csrrd	$r5,0x80
    2f74:	0905ba01 	0x0905ba01
    2f78:	4a018203 	0x4a018203
    2f7c:	8e030605 	0x8e030605
    2f80:	0a05827f 	0x0a05827f
    2f84:	820c0306 	0x820c0306
    2f88:	01060c05 	0x01060c05
    2f8c:	4c060b05 	jirl	$r5,$r24,1544(0x608)
    2f90:	01060d05 	0x01060d05
    2f94:	88060c05 	0x88060c05
    2f98:	01060f05 	0x01060f05
    2f9c:	4b060b05 	0x4b060b05
    2fa0:	064a7003 	0x064a7003
    2fa4:	054b064a 	0x054b064a
    2fa8:	4a01060c 	0x4a01060c
    2fac:	0402004a 	csrxchg	$r10,$r2,0x80
    2fb0:	11030602 	addu16i.d	$r2,$r16,16577(0x40c1)
    2fb4:	001a054a 	0x001a054a
    2fb8:	06020402 	cacop	0x2,$r0,129(0x81)
    2fbc:	02003a08 	slti	$r8,$r16,14(0xe)
    2fc0:	054a0204 	0x054a0204
    2fc4:	0402000b 	csrrd	$r11,0x80
    2fc8:	4e064a01 	jirl	$r1,$r16,-129464(0x20648)
    2fcc:	01061805 	0x01061805
    2fd0:	054a0d05 	0x054a0d05
    2fd4:	04020021 	csrwr	$r1,0x80
    2fd8:	11054a01 	addu16i.d	$r1,$r16,16722(0x4152)
    2fdc:	4a4a0c03 	bceqz	$fcc0,936460(0xe4a0c) # e79e8 <_start-0x1bf18618>
    2fe0:	02000d05 	slti	$r5,$r8,3(0x3)
    2fe4:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    2fe8:	02004a78 	slti	$r24,$r19,18(0x12)
    2fec:	00830304 	bstrins.d	$r4,$r24,0x3,0x0
    2ff0:	83030402 	0x83030402
    2ff4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    2ff8:	001a0583 	0x001a0583
    2ffc:	06030402 	cacop	0x2,$r0,193(0xc1)
    3000:	00220501 	div.d	$r1,$r8,$r1
    3004:	b5030402 	0xb5030402
    3008:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    300c:	001d054a 	mulh.wu	$r10,$r10,$r1
    3010:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3114 <_start-0x1bf5ceec>
    3014:	02000c05 	slti	$r5,$r0,3(0x3)
    3018:	05ba0104 	0x05ba0104
    301c:	04020011 	csrrd	$r17,0x80
    3020:	4a0a0301 	0x4a0a0301
    3024:	01040200 	0x01040200
    3028:	0402004a 	csrxchg	$r10,$r2,0x80
    302c:	02004a01 	slti	$r1,$r16,18(0x12)
    3030:	054a0104 	0x054a0104
    3034:	0402000d 	csrrd	$r13,0x80
    3038:	004c0603 	0x004c0603
    303c:	83030402 	0x83030402
    3040:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3044:	002b0583 	syscall	0x583
    3048:	06030402 	cacop	0x2,$r0,193(0xc1)
    304c:	0402007e 	csrxchg	$r30,$r3,0x80
    3050:	26054a03 	ldptr.d	$r3,$r16,1352(0x548)
    3054:	01040200 	0x01040200
    3058:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    305c:	08010402 	0x08010402
    3060:	04020074 	csrxchg	$r20,$r3,0x80
    3064:	09030603 	0x09030603
    3068:	00190582 	srl.d	$r2,$r12,$r1
    306c:	06030402 	cacop	0x2,$r0,193(0xc1)
    3070:	000c0501 	bytepick.d	$r1,$r8,$r1,0x0
    3074:	06030402 	cacop	0x2,$r0,193(0xc1)
    3078:	002805bb 	0x002805bb
    307c:	06030402 	cacop	0x2,$r0,193(0xc1)
    3080:	0402007f 	csrxchg	$r31,$r3,0x80
    3084:	23054a03 	sc.d	$r3,$r16,1352(0x548)
    3088:	01040200 	0x01040200
    308c:	000b054a 	0x000b054a
    3090:	08010402 	0x08010402
    3094:	030f0574 	lu52i.d	$r20,$r11,961(0x3c1)
    3098:	05824a68 	0x05824a68
    309c:	2103060a 	sc.w	$r10,$r16,772(0x304)
    30a0:	060c054a 	cacop	0xa,$r10,769(0x301)
    30a4:	500d0501 	b	67374340(0x4040d04) # 4043da8 <_start-0x17fbc258>
    30a8:	060b054a 	cacop	0xa,$r10,705(0x2c1)
    30ac:	06f20646 	0x06f20646
    30b0:	060c054b 	cacop	0xb,$r10,769(0x301)
    30b4:	054a4a01 	0x054a4a01
    30b8:	0550060a 	0x0550060a
    30bc:	0501060c 	0x0501060c
    30c0:	0584060b 	0x0584060b
    30c4:	0501060d 	0x0501060d
    30c8:	0550060c 	0x0550060c
    30cc:	0501060f 	0x0501060f
    30d0:	054b060b 	0x054b060b
    30d4:	0402000c 	csrrd	$r12,0x80
    30d8:	1a054c02 	pcalau12i	$r2,10848(0x2a60)
    30dc:	02040200 	slti	$r0,$r16,256(0x100)
    30e0:	003a0806 	0x003a0806
    30e4:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a32e8 <_start-0x1bf5cd18>
    30e8:	02000b05 	slti	$r5,$r24,2(0x2)
    30ec:	064a0104 	0x064a0104
    30f0:	0618054e 	cacop	0xe,$r10,1537(0x601)
    30f4:	4a0d0501 	bcnez	$fcc0,396548(0x60d04) # 63df8 <_start-0x1bf9c208>
    30f8:	02002105 	slti	$r5,$r8,8(0x8)
    30fc:	054a0104 	0x054a0104
    3100:	4a0c0311 	0x4a0c0311
    3104:	000e054a 	bytepick.d	$r10,$r10,$r1,0x4
    3108:	06030402 	cacop	0x2,$r0,193(0xc1)
    310c:	004a7803 	0x004a7803
    3110:	83030402 	0x83030402
    3114:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3118:	04020083 	csrxchg	$r3,$r4,0x80
    311c:	1b058303 	pcalau12i	$r3,-513000(0x82c18)
    3120:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3124:	22050106 	ll.d	$r6,$r8,1280(0x500)
    3128:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    312c:	040200b5 	csrxchg	$r21,$r5,0x80
    3130:	1d054a03 	pcaddu12i	$r3,-513456(0x82a50)
    3134:	01040200 	0x01040200
    3138:	000c054a 	bytepick.d	$r10,$r10,$r1,0x0
    313c:	ba010402 	0xba010402
    3140:	02001105 	slti	$r5,$r8,4(0x4)
    3144:	0a030104 	0x0a030104
    3148:	0402004a 	csrxchg	$r10,$r2,0x80
    314c:	02004a01 	slti	$r1,$r16,18(0x12)
    3150:	004a0104 	0x004a0104
    3154:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3258 <_start-0x1bf5cda8>
    3158:	02000d05 	slti	$r5,$r8,3(0x3)
    315c:	4c060304 	jirl	$r4,$r24,1536(0x600)
    3160:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3164:	04020083 	csrxchg	$r3,$r4,0x80
    3168:	2b058303 	fld.s	$f3,$r24,352(0x160)
    316c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3170:	02007e06 	slti	$r6,$r16,31(0x1f)
    3174:	054a0304 	0x054a0304
    3178:	04020026 	csrwr	$r6,0x80
    317c:	0c054a01 	0x0c054a01
    3180:	01040200 	0x01040200
    3184:	02007408 	slti	$r8,$r0,29(0x1d)
    3188:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    318c:	19058209 	pcaddi	$r9,-513008(0x82c10)
    3190:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3194:	0c050106 	0x0c050106
    3198:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    319c:	2805bb06 	ld.b	$r6,$r24,366(0x16e)
    31a0:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31a4:	02007f06 	slti	$r6,$r24,31(0x1f)
    31a8:	054a0304 	0x054a0304
    31ac:	04020023 	csrwr	$r3,0x80
    31b0:	0b054a01 	0x0b054a01
    31b4:	01040200 	0x01040200
    31b8:	0f057408 	0x0f057408
    31bc:	824a6803 	0x824a6803
    31c0:	02000605 	slti	$r5,$r16,1(0x1)
    31c4:	03060304 	lu52i.d	$r4,$r24,384(0x180)
    31c8:	25054a2f 	stptr.w	$r15,$r17,1352(0x548)
    31cc:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31d0:	28050106 	ld.b	$r6,$r8,320(0x140)
    31d4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31d8:	0017054a 	sll.w	$r10,$r10,$r1
    31dc:	08030402 	0x08030402
    31e0:	00130574 	maskeqz	$r20,$r11,$r1
    31e4:	f1030402 	0xf1030402
    31e8:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    31ec:	0005054a 	alsl.w	$r10,$r10,$r1,0x3
    31f0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a32f4 <_start-0x1bf5cd0c>
    31f4:	02001205 	slti	$r5,$r16,4(0x4)
    31f8:	00800204 	bstrins.d	$r4,$r16,0x0,0x0
    31fc:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a3400 <_start-0x1bf5cc00>
    3200:	02000405 	slti	$r5,$r0,1(0x1)
    3204:	054a0104 	0x054a0104
    3208:	0905840a 	0x0905840a
    320c:	00050585 	alsl.w	$r5,$r12,$r1,0x3
    3210:	06030402 	cacop	0x2,$r0,193(0xc1)
    3214:	00180584 	sra.w	$r4,$r12,$r1
    3218:	06030402 	cacop	0x2,$r0,193(0xc1)
    321c:	00140501 	nor	$r1,$r8,$r1
    3220:	b8030402 	0xb8030402
    3224:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3228:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    322c:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a3330 <_start-0x1bf5ccd0>
    3230:	89060305 	0x89060305
    3234:	01060505 	0x01060505
    3238:	05500905 	0x05500905
    323c:	04020006 	csrrd	$r6,0x80
    3240:	05840603 	0x05840603
    3244:	04020014 	csrrd	$r20,0x80
    3248:	05010603 	0x05010603
    324c:	04020015 	csrrd	$r21,0x80
    3250:	00730803 	bstrins.w	$r3,$r0,0x13,0x2
    3254:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3558 <_start-0x1bf5caa8>
    3258:	02000505 	slti	$r5,$r8,1(0x1)
    325c:	054a0104 	0x054a0104
    3260:	04020013 	csrrd	$r19,0x80
    3264:	02008102 	slti	$r2,$r8,32(0x20)
    3268:	054a0204 	0x054a0204
    326c:	04020004 	csrrd	$r4,0x80
    3270:	0a054a01 	0x0a054a01
    3274:	84080583 	0x84080583
    3278:	054d0a05 	0x054d0a05
    327c:	0a054a0f 	0x0a054a0f
    3280:	4a7e8f03 	0x4a7e8f03
    3284:	0606054a 	cacop	0xa,$r10,385(0x181)
    3288:	4a01f503 	bcnez	$fcc0,918004(0xe01f4) # e347c <_start-0x1bf1cb84>
    328c:	01061505 	0x01061505
    3290:	054a1305 	0x054a1305
    3294:	2205ba08 	ll.d	$r8,$r16,1464(0x5b8)
    3298:	01040200 	0x01040200
    329c:	06070582 	cacop	0x2,$r12,449(0x1c1)
    32a0:	0a05134c 	0x0a05134c
    32a4:	054a0106 	0x054a0106
    32a8:	054b0607 	0x054b0607
    32ac:	4a01060e 	0x4a01060e
    32b0:	05b80905 	0x05b80905
    32b4:	0402001a 	csrrd	$r26,0x80
    32b8:	4a7a0302 	0x4a7a0302
    32bc:	02040200 	slti	$r0,$r16,256(0x100)
    32c0:	0004054a 	alsl.w	$r10,$r10,$r1,0x1
    32c4:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a33c8 <_start-0x1bf5cc38>
    32c8:	4c060505 	jirl	$r5,$r8,1540(0x604)
    32cc:	01061105 	0x01061105
    32d0:	05ba0705 	0x05ba0705
    32d4:	0b030606 	0x0b030606
    32d8:	060f0582 	cacop	0x2,$r12,961(0x3c1)
    32dc:	4a140501 	bcnez	$fcc0,398340(0x61404) # 646e0 <_start-0x1bf9b920>
    32e0:	4b060605 	0x4b060605
    32e4:	01060705 	0x01060705
    32e8:	04054a4a 	csrxchg	$r10,$r18,0x152
    32ec:	05134e06 	0x05134e06
    32f0:	82010607 	0x82010607
    32f4:	4a060582 	bcnez	$fcc4,656900(0xa0604) # a38f8 <_start-0x1bf5c708>
    32f8:	05500a05 	0x05500a05
    32fc:	0402000e 	csrrd	$r14,0x80
    3300:	05054a01 	0x05054a01
    3304:	01040200 	0x01040200
    3308:	0605e408 	cacop	0x8,$r0,377(0x179)
    330c:	09054c06 	0x09054c06
    3310:	3c080106 	0x3c080106
    3314:	054a0805 	0x054a0805
    3318:	04020032 	csrwr	$r18,0x80
    331c:	02004802 	slti	$r2,$r0,18(0x12)
    3320:	004a0204 	0x004a0204
    3324:	4a020402 	bceqz	$fcc0,655876(0xa0204) # a3528 <_start-0x1bf5cad8>
    3328:	4e060705 	jirl	$r5,$r24,-129532(0x20604)
    332c:	01060a05 	0x01060a05
    3330:	f3060705 	0xf3060705
    3334:	01060c05 	0x01060c05
    3338:	054a0705 	0x054a0705
    333c:	04020008 	csrrd	$r8,0x80
    3340:	054c0603 	0x054c0603
    3344:	04020017 	csrrd	$r23,0x80
    3348:	00010603 	0x00010603
    334c:	ba030402 	0xba030402
    3350:	02000d05 	slti	$r5,$r8,3(0x3)
    3354:	004a0304 	0x004a0304
    3358:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a365c <_start-0x1bf5c9a4>
    335c:	02001905 	slti	$r5,$r8,6(0x6)
    3360:	00800304 	bstrins.d	$r4,$r24,0x0,0x0
    3364:	4a030402 	bceqz	$fcc0,656132(0xa0304) # a3668 <_start-0x1bf5c998>
    3368:	02000705 	slti	$r5,$r24,1(0x1)
    336c:	064a0104 	0x064a0104
    3370:	0505bb4f 	0x0505bb4f
    3374:	06080515 	cacop	0x15,$r8,513(0x201)
    3378:	08070501 	0x08070501
    337c:	030905ac 	lu52i.d	$r12,$r13,577(0x241)
    3380:	054a7ebe 	0x054a7ebe
    3384:	02054907 	slti	$r7,$r8,338(0x152)
    3388:	7fa30306 	0x7fa30306
    338c:	1503054a 	lu12i.w	$r10,-518102(0x8182a)
    3390:	01060805 	0x01060805
    3394:	054a0305 	0x054a0305
    3398:	9f030606 	0x9f030606
    339c:	09054a02 	0x09054a02
    33a0:	7ebc0306 	0x7ebc0306
    33a4:	490705ba 	bcnez	$fcc5,-1505532(0x690704) # ffe93aa8 <_RAM_DATA+0x7fe92aa8>
    33a8:	03060205 	lu52i.d	$r5,$r16,384(0x180)
    33ac:	058201ca 	0x058201ca
    33b0:	ba130601 	0xba130601
    33b4:	4a4a4a4a 	0x4a4a4a4a
    33b8:	00040282 	alsl.w	$r2,$r20,$r0,0x1
    33bc:	01050101 	fmul.d	$f1,$f8,$f0
    33c0:	08020500 	0x08020500
    33c4:	031c001a 	lu52i.d	$r26,$r0,1792(0x700)
    33c8:	050103d4 	0x050103d4
    33cc:	054bbb02 	0x054bbb02
    33d0:	05010611 	0x05010611
    33d4:	01f30602 	0x01f30602
    33d8:	04020001 	csrrd	$r1,0x80
    33dc:	00820601 	bstrins.d	$r1,$r16,0x2,0x1
    33e0:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a34e4 <_start-0x1bf5cb1c>
    33e4:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    33e8:	02004a06 	slti	$r6,$r16,18(0x12)
    33ec:	08060304 	0x08060304
    33f0:	140a0574 	lu12i.w	$r20,20523(0x502b)
    33f4:	05820805 	0x05820805
    33f8:	054c0603 	0x054c0603
    33fc:	05010610 	0x05010610
    3400:	3d080603 	0x3d080603
    3404:	01060605 	0x01060605
    3408:	bc060405 	0xbc060405
    340c:	000101bb 	0x000101bb
    3410:	06010402 	cacop	0x2,$r0,65(0x41)
    3414:	04020082 	csrxchg	$r2,$r4,0x80
    3418:	02004a01 	slti	$r1,$r16,18(0x12)
    341c:	4a060304 	0x4a060304
    3420:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3424:	05740806 	0x05740806
    3428:	05170602 	0x05170602
    342c:	0501060f 	0x0501060f
    3430:	05bb0602 	0x05bb0602
    3434:	0501060a 	0x0501060a
    3438:	03058208 	lu52i.d	$r8,$r16,352(0x160)
    343c:	10054c06 	addu16i.d	$r6,$r0,339(0x153)
    3440:	03050106 	lu52i.d	$r6,$r8,320(0x140)
    3444:	053d0806 	0x053d0806
    3448:	05010606 	0x05010606
    344c:	bbbc0604 	0xbbbc0604
    3450:	02000101 	slti	$r1,$r8,0
    3454:	82060104 	0x82060104
    3458:	01040200 	0x01040200
    345c:	0402004a 	csrxchg	$r10,$r2,0x80
    3460:	004a0603 	0x004a0603
    3464:	06030402 	cacop	0x2,$r0,193(0xc1)
    3468:	02057408 	slti	$r8,$r0,349(0x15d)
    346c:	01bb1706 	0x01bb1706
    3470:	04020001 	csrrd	$r1,0x80
    3474:	00820601 	bstrins.d	$r1,$r16,0x2,0x1
    3478:	4a010402 	bceqz	$fcc0,655620(0xa0104) # a357c <_start-0x1bf5ca84>
    347c:	03040200 	lu52i.d	$r0,$r16,256(0x100)
    3480:	02004a06 	slti	$r6,$r16,18(0x12)
    3484:	08060304 	0x08060304
    3488:	4c140674 	jirl	$r20,$r19,5124(0x1404)
    348c:	01060905 	0x01060905
    3490:	024b0105 	sltui	$r5,$r8,704(0x2c0)
    3494:	01010014 	fadd.d	$f20,$f0,$f0
    3498:	05000105 	0x05000105
    349c:	001b6c02 	rotr.w	$r2,$r0,$r27
    34a0:	03f9031c 	xori	$r28,$r24,0xe40
    34a4:	83020501 	0x83020501
    34a8:	0606054b 	cacop	0xb,$r10,385(0x181)
    34ac:	06020501 	cacop	0x1,$r8,129(0x81)
    34b0:	061605bc 	cacop	0x1c,$r13,1409(0x581)
    34b4:	06020501 	cacop	0x1,$r8,129(0x81)
    34b8:	14053d08 	lu12i.w	$r8,10728(0x29e8)
    34bc:	02050106 	slti	$r6,$r8,320(0x140)
    34c0:	1205bb06 	addu16i.d	$r6,$r24,-32402(0x816e)
    34c4:	02050106 	slti	$r6,$r8,320(0x140)
    34c8:	0f05bc06 	0x0f05bc06
    34cc:	02050106 	slti	$r6,$r8,320(0x140)
    34d0:	16058406 	lu32i.d	$r6,11296(0x2c20)
    34d4:	01040200 	0x01040200
    34d8:	000a0501 	0x000a0501
    34dc:	06010402 	cacop	0x2,$r0,65(0x41)
    34e0:	00080501 	bytepick.w	$r1,$r8,$r1,0x0
    34e4:	ba010402 	0xba010402
    34e8:	4b060205 	0x4b060205
    34ec:	01060605 	0x01060605
    34f0:	bd060505 	0xbd060505
    34f4:	13060105 	addu16i.d	$r5,$r8,-16000(0xc180)
    34f8:	01001002 	0x01001002
    34fc:	00010501 	0x00010501
    3500:	1be40205 	pcalau12i	$r5,-57328(0xf2010)
    3504:	8b031c00 	0x8b031c00
    3508:	02050104 	slti	$r4,$r8,320(0x140)
    350c:	06060583 	cacop	0x3,$r12,385(0x181)
    3510:	06020501 	cacop	0x1,$r8,129(0x81)
    3514:	060105f3 	cacop	0x13,$r15,65(0x41)
    3518:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    351c:	08df0101 	fnmsub.s	$f1,$f8,$f0,$f30
    3520:	00020000 	0x00020000
    3524:	00000312 	0x00000312
    3528:	0efb0101 	0x0efb0101
    352c:	0101000d 	fadd.d	$f13,$f0,$f0
    3530:	00000101 	0x00000101
    3534:	00000100 	0x00000100
    3538:	2f3a4401 	0x2f3a4401
    353c:	72657355 	0x72657355
    3540:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1ac6c <_start-0x1bfe5394>
    3544:	2f73676e 	0x2f73676e
    3548:	75636f44 	0x75636f44
    354c:	746e656d 	0x746e656d
    3550:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff787c <_RAM_DATA+0x7fff687c>
    3554:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    3558:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa3c4 <_RAM_DATA+0x7fff93c4>
    355c:	68637241 	bltu	$r18,$r1,25456(0x6370) # 98cc <_start-0x1bff6734>
    3560:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa7b0 <_RAM_DATA+0x7fff97b0>
    3564:	73736563 	0x73736563
    3568:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9cd4 <_RAM_DATA+0x7fff8cd4>
    356c:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    3570:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    3574:	32303143 	0x32303143
    3578:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa7e8 <_RAM_DATA+0x7fff97e8>
    357c:	2f77732f 	0x2f77732f
    3580:	72657375 	0x72657375
    3584:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 6fe8 <_start-0x1bff9018>
    3588:	72657375 	0x72657375
    358c:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1ace8 <_start-0x1bfe5318>
    3590:	5c73676e 	bne	$r27,$r14,29540(0x7364) # a8f4 <_start-0x1bff570c>
    3594:	75636f64 	0x75636f64
    3598:	746e656d 	0x746e656d
    359c:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff98f8 <_RAM_DATA+0x7fff88f8>
    35a0:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 9204 <_start-0x1bff6dfc>
    35a4:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa410 <_RAM_DATA+0x7fff9410>
    35a8:	68637261 	bltu	$r19,$r1,25456(0x6370) # 9918 <_start-0x1bff66e8>
    35ac:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffffa81c <_RAM_DATA+0x7fff981c>
    35b0:	73736563 	0x73736563
    35b4:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9d20 <_RAM_DATA+0x7fff8d20>
    35b8:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    35bc:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    35c0:	32303163 	0x32303163
    35c4:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffffa834 <_RAM_DATA+0x7fff9834>
    35c8:	5c77735c 	bne	$r26,$r28,30576(0x7770) # ad38 <_start-0x1bff52c8>
    35cc:	6469616c 	bge	$r11,$r12,26976(0x6960) # 9f2c <_start-0x1bff60d4>
    35d0:	75625c65 	0x75625c65
    35d4:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    35d8:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # a244 <_start-0x1bff5dbc>
    35dc:	3233616c 	0x3233616c
    35e0:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffffa554 <_RAM_DATA+0x7fff9554>
    35e4:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffffa240 <_RAM_DATA+0x7fff9240>
    35e8:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 19d54 <_start-0x1bfe62ac>
    35ec:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    35f0:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 1a41c <_start-0x1bfe5be4>
    35f4:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe9f60 <_RAM_DATA+0x7ffe8f60>
    35f8:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffea25c <_RAM_DATA+0x7ffe925c>
    35fc:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffffa464 <_RAM_DATA+0x7fff9464>
    3600:	6564756c 	bge	$r11,$r12,91252(0x16474) # 19a74 <_start-0x1bfe658c>
    3604:	63616d2f 	blt	$r9,$r15,-40596(0x3616c) # ffff9770 <_RAM_DATA+0x7fff8770>
    3608:	656e6968 	bge	$r11,$r8,93800(0x16e68) # 1a470 <_start-0x1bfe5b90>
    360c:	5c3a6400 	bne	$r0,$r0,14948(0x3a64) # 7070 <_start-0x1bff8f90>
    3610:	72657375 	0x72657375
    3614:	61775c73 	blt	$r3,$r19,96092(0x1775c) # 1ad70 <_start-0x1bfe5290>
    3618:	5c73676e 	bne	$r27,$r14,29540(0x7364) # a97c <_start-0x1bff5684>
    361c:	75636f64 	0x75636f64
    3620:	746e656d 	0x746e656d
    3624:	6f635c73 	bgeu	$r3,$r19,-40100(0x3635c) # ffff9980 <_RAM_DATA+0x7fff8980>
    3628:	6c5c6564 	bgeu	$r11,$r4,23652(0x5c64) # 928c <_start-0x1bff6d74>
    362c:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa498 <_RAM_DATA+0x7fff9498>
    3630:	68637261 	bltu	$r19,$r1,25456(0x6370) # 99a0 <_start-0x1bff6660>
    3634:	6f72705f 	bgeu	$r2,$r31,-36240(0x37270) # ffffa8a4 <_RAM_DATA+0x7fff98a4>
    3638:	73736563 	0x73736563
    363c:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9da8 <_RAM_DATA+0x7fff8da8>
    3640:	74737973 	xvmin.w	$xr19,$xr11,$xr30
    3644:	315c6d65 	vstelm.h	$vr5,$r11,54(0x36),0x7
    3648:	32303163 	0x32303163
    364c:	6372735c 	blt	$r26,$r28,-36240(0x37270) # ffffa8bc <_RAM_DATA+0x7fff98bc>
    3650:	5c77735c 	bne	$r26,$r28,30576(0x7770) # adc0 <_start-0x1bff5240>
    3654:	6469616c 	bge	$r11,$r12,26976(0x6960) # 9fb4 <_start-0x1bff604c>
    3658:	75625c65 	0x75625c65
    365c:	74646c69 	xvavg.b	$xr9,$xr3,$xr27
    3660:	5c6c6f6f 	bne	$r27,$r15,27756(0x6c6c) # a2cc <_start-0x1bff5d34>
    3664:	3233616c 	0x3233616c
    3668:	6f6f742d 	bgeu	$r1,$r13,-37004(0x36f74) # ffffa5dc <_RAM_DATA+0x7fff95dc>
    366c:	6f6c5c6c 	bgeu	$r3,$r12,-37796(0x36c5c) # ffffa2c8 <_RAM_DATA+0x7fff92c8>
    3670:	61676e6f 	blt	$r19,$r15,92012(0x1676c) # 19ddc <_start-0x1bfe6224>
    3674:	33686372 	xvstelm.h	$xr18,$r27,48(0x30),0xa
    3678:	656e2d32 	bge	$r9,$r18,93740(0x16e2c) # 1a4a4 <_start-0x1bfe5b5c>
    367c:	62696c77 	blt	$r3,$r23,-104084(0x2696c) # fffe9fe8 <_RAM_DATA+0x7ffe8fe8>
    3680:	666c652d 	bge	$r9,$r13,-103324(0x26c64) # fffea2e4 <_RAM_DATA+0x7ffe92e4>
    3684:	636e695c 	blt	$r10,$r28,-37272(0x36e68) # ffffa4ec <_RAM_DATA+0x7fff94ec>
    3688:	6564756c 	bge	$r11,$r12,91252(0x16474) # 19afc <_start-0x1bfe6504>
    368c:	7379732f 	0x7379732f
    3690:	2f3a4400 	0x2f3a4400
    3694:	72657355 	0x72657355
    3698:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 1adc4 <_start-0x1bfe523c>
    369c:	2f73676e 	0x2f73676e
    36a0:	75636f44 	0x75636f44
    36a4:	746e656d 	0x746e656d
    36a8:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff79d4 <_RAM_DATA+0x7fff69d4>
    36ac:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
    36b0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffffa51c <_RAM_DATA+0x7fff951c>
    36b4:	68637241 	bltu	$r18,$r1,25456(0x6370) # 9a24 <_start-0x1bff65dc>
    36b8:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffffa908 <_RAM_DATA+0x7fff9908>
    36bc:	73736563 	0x73736563
    36c0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff9e2c <_RAM_DATA+0x7fff8e2c>
    36c4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
    36c8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
    36cc:	32303143 	0x32303143
    36d0:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffffa940 <_RAM_DATA+0x7fff9940>
    36d4:	2f77732f 	0x2f77732f
    36d8:	6c636e69 	bgeu	$r19,$r9,25452(0x636c) # 9a44 <_start-0x1bff65bc>
    36dc:	00656475 	bstrins.w	$r21,$r3,0x5,0x19
    36e0:	552f3a44 	bl	-116314312(0x9112f38) # f9116618 <_RAM_DATA+0x79115618>
    36e4:	73726573 	0x73726573
    36e8:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe985c <_RAM_DATA+0x7ffe885c>
    36ec:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c665c <_start-0x1be399a4>
    36f0:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 1ac50 <_start-0x1bfe53b0>
    36f4:	73746e65 	0x73746e65
    36f8:	646f432f 	bge	$r25,$r15,28480(0x6f40) # a638 <_start-0x1bff59c8>
    36fc:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff8328 <_RAM_DATA+0x7fff7328>
    3700:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d9e6c <_start-0x1bc26194>
    3704:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff9f64 <_RAM_DATA+0x7fff8f64>
    3708:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffffa678 <_RAM_DATA+0x7fff9678>
    370c:	69737365 	bltu	$r27,$r5,95088(0x17370) # 1aa7c <_start-0x1bfe5584>
    3710:	535f676e 	b	-38051996(0xdbb5f64) # fdbb9674 <_RAM_DATA+0x7dbb8674>
    3714:	65747379 	bge	$r27,$r25,95344(0x17470) # 1ab84 <_start-0x1bfe547c>
    3718:	43312f6d 	beqz	$r27,3617068(0x37312c) # 376844 <_start-0x1bc897bc>
    371c:	2f323031 	0x2f323031
    3720:	2f637273 	0x2f637273
    3724:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
    3728:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 1a388 <_start-0x1bfe5c78>
    372c:	3a440063 	0x3a440063
    3730:	6573552f 	bge	$r9,$r15,95060(0x17354) # 1aa84 <_start-0x1bfe557c>
    3734:	772f7372 	0x772f7372
    3738:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    373c:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffffa680 <_RAM_DATA+0x7fff9680>
    3740:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe9cac <_RAM_DATA+0x7ffe8cac>
    3744:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd366b4 <_RAM_DATA+0x7fd356b4>
    3748:	2f65646f 	0x2f65646f
    374c:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffea6b8 <_RAM_DATA+0x7ffe96b8>
    3750:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffffa990 <_RAM_DATA+0x7fff9990>
    3754:	72505f68 	0x72505f68
    3758:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    375c:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffffa5c4 <_RAM_DATA+0x7fff95c4>
    3760:	7379535f 	0x7379535f
    3764:	2f6d6574 	0x2f6d6574
    3768:	30314331 	0x30314331
    376c:	72732f32 	0x72732f32
    3770:	77732f63 	0x77732f63
    3774:	6972702f 	bltu	$r1,$r15,94832(0x17270) # 1a9e4 <_start-0x1bfe561c>
    3778:	65746176 	bge	$r11,$r22,95328(0x17460) # 1abd8 <_start-0x1bfe5428>
    377c:	63310000 	blt	$r0,$r0,-52992(0x33100) # ffff687c <_RAM_DATA+0x7fff587c>
    3780:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff69b0 <_RAM_DATA+0x7fff59b0>
    3784:	65746e49 	bge	$r18,$r9,95340(0x1746c) # 1abf0 <_start-0x1bfe5410>
    3788:	70757272 	vmax.wu	$vr18,$vr19,$vr28
    378c:	00632e74 	bstrins.w	$r20,$r19,0x3,0xb
    3790:	5f000001 	bne	$r0,$r1,-65536(0x30000) # ffff3790 <_RAM_DATA+0x7fff2790>
    3794:	61666564 	blt	$r11,$r4,91748(0x16664) # 19df8 <_start-0x1bfe6208>
    3798:	5f746c75 	bne	$r3,$r21,-35732(0x3746c) # ffffac04 <_RAM_DATA+0x7fff9c04>
    379c:	65707974 	bge	$r11,$r20,94328(0x17078) # 1a814 <_start-0x1bfe57ec>
    37a0:	00682e73 	bstrins.w	$r19,$r19,0x8,0xb
    37a4:	5f000002 	bne	$r0,$r2,-65536(0x30000) # ffff37a4 <_RAM_DATA+0x7fff27a4>
    37a8:	69647473 	bltu	$r3,$r19,91252(0x16474) # 19c1c <_start-0x1bfe63e4>
    37ac:	682e746e 	bltu	$r3,$r14,11892(0x2e74) # 6620 <_start-0x1bff99e0>
    37b0:	00000300 	0x00000300
    37b4:	74736574 	xvmin.w	$xr20,$xr11,$xr25
    37b8:	0400682e 	csrwr	$r14,0x1a
    37bc:	736c0000 	0x736c0000
    37c0:	682e7831 	bltu	$r1,$r17,11896(0x2e78) # 6638 <_start-0x1bff99c8>
    37c4:	00000400 	0x00000400
    37c8:	30316331 	0x30316331
    37cc:	6e495f32 	bgeu	$r25,$r18,-112292(0x2495c) # fffe8128 <_RAM_DATA+0x7ffe7128>
    37d0:	72726574 	0x72726574
    37d4:	2e747075 	0x2e747075
    37d8:	00010068 	0x00010068
    37dc:	31736c00 	0x31736c00
    37e0:	6f635f78 	bgeu	$r27,$r24,-40100(0x3635c) # ffff9b3c <_RAM_DATA+0x7fff8b3c>
    37e4:	6e6f6d6d 	bgeu	$r11,$r13,-102548(0x26f6c) # fffea750 <_RAM_DATA+0x7ffe9750>
    37e8:	0500682e 	0x0500682e
    37ec:	6f430000 	bgeu	$r0,$r0,-48384(0x34300) # ffff7aec <_RAM_DATA+0x7fff6aec>
    37f0:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffffa154 <_RAM_DATA+0x7fff9154>
    37f4:	0400682e 	csrwr	$r14,0x1a
    37f8:	736c0000 	0x736c0000
    37fc:	30316331 	0x30316331
    3800:	74705f32 	xvmax.b	$xr18,$xr25,$xr23
    3804:	72656d69 	0x72656d69
    3808:	0600682e 	cacop	0xe,$r1,26(0x1a)
    380c:	6f730000 	bgeu	$r0,$r0,-36096(0x37300) # ffffab0c <_RAM_DATA+0x7fff9b0c>
    3810:	70675f63 	vavg.wu	$vr3,$vr27,$vr23
    3814:	682e6f69 	bltu	$r27,$r9,11884(0x2e6c) # 6680 <_start-0x1bff9980>
    3818:	00000500 	0x00000500
    381c:	7831736c 	0x7831736c
    3820:	6764775f 	bge	$r26,$r31,-39820(0x36474) # ffff9c94 <_RAM_DATA+0x7fff8c94>
    3824:	0500682e 	0x0500682e
    3828:	736c0000 	0x736c0000
    382c:	655f7831 	bge	$r1,$r17,89976(0x15f78) # 197a4 <_start-0x1bfe685c>
    3830:	2e697478 	0x2e697478
    3834:	00050068 	alsl.w	$r8,$r3,$r0,0x3
    3838:	01050000 	fmul.d	$f0,$f0,$f0
    383c:	0c020500 	0x0c020500
    3840:	151c001c 	lu12i.w	$r28,-466944(0x8e000)
    3844:	08830205 	0x08830205
    3848:	06010575 	cacop	0x15,$r11,65(0x41)
    384c:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3850:	01050101 	fmul.d	$f1,$f8,$f0
    3854:	48020500 	bcnez	$fcc0,516(0x204) # 3a58 <_start-0x1bffc5a8>
    3858:	1a1c001c 	pcalau12i	$r28,57344(0xe000)
    385c:	08830205 	0x08830205
    3860:	06010575 	cacop	0x15,$r11,65(0x41)
    3864:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3868:	01050101 	fmul.d	$f1,$f8,$f0
    386c:	84020500 	0x84020500
    3870:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
    3874:	0205010d 	slti	$r13,$r8,320(0x140)
    3878:	05750883 	0x05750883
    387c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3880:	0101000c 	fadd.d	$f12,$f0,$f0
    3884:	05000105 	0x05000105
    3888:	001cc002 	mulh.w	$r2,$r0,$r16
    388c:	0112031c 	0x0112031c
    3890:	08830205 	0x08830205
    3894:	06010575 	cacop	0x15,$r11,65(0x41)
    3898:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    389c:	01050101 	fmul.d	$f1,$f8,$f0
    38a0:	fc020500 	0xfc020500
    38a4:	031c001c 	lu52i.d	$r28,$r0,1792(0x700)
    38a8:	02050117 	slti	$r23,$r8,320(0x140)
    38ac:	05750883 	0x05750883
    38b0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    38b4:	0101000c 	fadd.d	$f12,$f0,$f0
    38b8:	05000105 	0x05000105
    38bc:	001d3802 	mulh.wu	$r2,$r0,$r14
    38c0:	011c031c 	0x011c031c
    38c4:	08830205 	0x08830205
    38c8:	06010575 	cacop	0x15,$r11,65(0x41)
    38cc:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    38d0:	01050101 	fmul.d	$f1,$f8,$f0
    38d4:	74020500 	xvsle.b	$xr0,$xr8,$xr1
    38d8:	031c001d 	lu52i.d	$r29,$r0,1792(0x700)
    38dc:	02050121 	slti	$r1,$r9,320(0x140)
    38e0:	05750883 	0x05750883
    38e4:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    38e8:	0101000c 	fadd.d	$f12,$f0,$f0
    38ec:	05000105 	0x05000105
    38f0:	001db002 	mul.d	$r2,$r0,$r12
    38f4:	0126031c 	0x0126031c
    38f8:	08840205 	0x08840205
    38fc:	06010575 	cacop	0x15,$r11,65(0x41)
    3900:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3904:	01050101 	fmul.d	$f1,$f8,$f0
    3908:	ec020500 	0xec020500
    390c:	031c001d 	lu52i.d	$r29,$r0,1792(0x700)
    3910:	0205012c 	slti	$r12,$r9,320(0x140)
    3914:	05750883 	0x05750883
    3918:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    391c:	0101000c 	fadd.d	$f12,$f0,$f0
    3920:	05000105 	0x05000105
    3924:	001e2802 	mulh.d	$r2,$r0,$r10
    3928:	0131031c 	0x0131031c
    392c:	08840205 	0x08840205
    3930:	06010575 	cacop	0x15,$r11,65(0x41)
    3934:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3938:	01050101 	fmul.d	$f1,$f8,$f0
    393c:	64020500 	bge	$r8,$r0,516(0x204) # 3b40 <_start-0x1bffc4c0>
    3940:	031c001e 	lu52i.d	$r30,$r0,1792(0x700)
    3944:	02050137 	slti	$r23,$r9,320(0x140)
    3948:	05750884 	0x05750884
    394c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3950:	0101000c 	fadd.d	$f12,$f0,$f0
    3954:	05000105 	0x05000105
    3958:	001ea002 	mulh.du	$r2,$r0,$r8
    395c:	013d031c 	0x013d031c
    3960:	08840205 	0x08840205
    3964:	06010575 	cacop	0x15,$r11,65(0x41)
    3968:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    396c:	01050101 	fmul.d	$f1,$f8,$f0
    3970:	dc020500 	0xdc020500
    3974:	031c001e 	lu52i.d	$r30,$r0,1792(0x700)
    3978:	050100c3 	0x050100c3
    397c:	75088302 	xvssrlrn.bu.h	$xr2,$xr24,$xr0
    3980:	f3060105 	0xf3060105
    3984:	01000c02 	0x01000c02
    3988:	00010501 	0x00010501
    398c:	1f180205 	pcaddu18i	$r5,-475120(0x8c010)
    3990:	c8031c00 	0xc8031c00
    3994:	02050100 	slti	$r0,$r8,320(0x140)
    3998:	05750883 	0x05750883
    399c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    39a0:	0101000c 	fadd.d	$f12,$f0,$f0
    39a4:	05000105 	0x05000105
    39a8:	001f5402 	mulw.d.w	$r2,$r0,$r21
    39ac:	00cd031c 	bstrpick.d	$r28,$r24,0xd,0x0
    39b0:	84020501 	0x84020501
    39b4:	01057508 	fmul.d	$f8,$f8,$f29
    39b8:	0c02f306 	0x0c02f306
    39bc:	05010100 	0x05010100
    39c0:	02050001 	slti	$r1,$r0,320(0x140)
    39c4:	1c001f90 	pcaddu12i	$r16,252(0xfc)
    39c8:	0100d303 	fadd.s	$f3,$f24,$f20
    39cc:	08840205 	0x08840205
    39d0:	06010575 	cacop	0x15,$r11,65(0x41)
    39d4:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    39d8:	01050101 	fmul.d	$f1,$f8,$f0
    39dc:	cc020500 	0xcc020500
    39e0:	031c001f 	lu52i.d	$r31,$r0,1792(0x700)
    39e4:	050100da 	0x050100da
    39e8:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    39ec:	f3060105 	0xf3060105
    39f0:	01000c02 	0x01000c02
    39f4:	00010501 	0x00010501
    39f8:	20080205 	ll.w	$r5,$r16,2048(0x800)
    39fc:	e0031c00 	0xe0031c00
    3a00:	02050100 	slti	$r0,$r8,320(0x140)
    3a04:	05750884 	0x05750884
    3a08:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3a0c:	0101000c 	fadd.d	$f12,$f0,$f0
    3a10:	05000105 	0x05000105
    3a14:	00204402 	div.w	$r2,$r0,$r17
    3a18:	00e6031c 	bstrpick.d	$r28,$r24,0x26,0x0
    3a1c:	84020501 	0x84020501
    3a20:	01057508 	fmul.d	$f8,$f8,$f29
    3a24:	0c02f306 	0x0c02f306
    3a28:	05010100 	0x05010100
    3a2c:	02050001 	slti	$r1,$r0,320(0x140)
    3a30:	1c002080 	pcaddu12i	$r0,260(0x104)
    3a34:	0100ec03 	fadd.s	$f3,$f0,$f27
    3a38:	08840205 	0x08840205
    3a3c:	06010575 	cacop	0x15,$r11,65(0x41)
    3a40:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3a44:	01050101 	fmul.d	$f1,$f8,$f0
    3a48:	bc020500 	0xbc020500
    3a4c:	031c0020 	lu52i.d	$r0,$r1,1792(0x700)
    3a50:	050100f2 	0x050100f2
    3a54:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3a58:	f3060105 	0xf3060105
    3a5c:	01000c02 	0x01000c02
    3a60:	00010501 	0x00010501
    3a64:	20f80205 	ll.w	$r5,$r16,-2048(0xf800)
    3a68:	f8031c00 	0xf8031c00
    3a6c:	02050100 	slti	$r0,$r8,320(0x140)
    3a70:	05750883 	0x05750883
    3a74:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3a78:	0101000c 	fadd.d	$f12,$f0,$f0
    3a7c:	05000105 	0x05000105
    3a80:	00213402 	div.wu	$r2,$r0,$r13
    3a84:	00fd031c 	bstrpick.d	$r28,$r24,0x3d,0x0
    3a88:	83020501 	0x83020501
    3a8c:	01057508 	fmul.d	$f8,$f8,$f29
    3a90:	0c02f306 	0x0c02f306
    3a94:	05010100 	0x05010100
    3a98:	02050001 	slti	$r1,$r0,320(0x140)
    3a9c:	1c002170 	pcaddu12i	$r16,267(0x10b)
    3aa0:	01018203 	0x01018203
    3aa4:	08840205 	0x08840205
    3aa8:	06010575 	cacop	0x15,$r11,65(0x41)
    3aac:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3ab0:	01050101 	fmul.d	$f1,$f8,$f0
    3ab4:	ac020500 	0xac020500
    3ab8:	031c0021 	lu52i.d	$r1,$r1,1792(0x700)
    3abc:	05010188 	0x05010188
    3ac0:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3ac4:	f3060105 	0xf3060105
    3ac8:	01000c02 	0x01000c02
    3acc:	00010501 	0x00010501
    3ad0:	21e80205 	sc.w	$r5,$r16,-6144(0xe800)
    3ad4:	8e031c00 	0x8e031c00
    3ad8:	02050101 	slti	$r1,$r8,320(0x140)
    3adc:	05750884 	0x05750884
    3ae0:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3ae4:	0101000c 	fadd.d	$f12,$f0,$f0
    3ae8:	05000105 	0x05000105
    3aec:	00222402 	div.d	$r2,$r0,$r9
    3af0:	0194031c 	0x0194031c
    3af4:	84020501 	0x84020501
    3af8:	01057508 	fmul.d	$f8,$f8,$f29
    3afc:	0c02f306 	0x0c02f306
    3b00:	05010100 	0x05010100
    3b04:	02050001 	slti	$r1,$r0,320(0x140)
    3b08:	1c002260 	pcaddu12i	$r0,275(0x113)
    3b0c:	01019a03 	0x01019a03
    3b10:	08840205 	0x08840205
    3b14:	06010575 	cacop	0x15,$r11,65(0x41)
    3b18:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3b1c:	01050101 	fmul.d	$f1,$f8,$f0
    3b20:	9c020500 	0x9c020500
    3b24:	031c0022 	lu52i.d	$r2,$r1,1792(0x700)
    3b28:	050101a0 	0x050101a0
    3b2c:	75088402 	xvssrlrn.bu.h	$xr2,$xr0,$xr1
    3b30:	f3060105 	0xf3060105
    3b34:	01000c02 	0x01000c02
    3b38:	00010501 	0x00010501
    3b3c:	22d80205 	ll.d	$r5,$r16,-10240(0xd800)
    3b40:	a7031c00 	0xa7031c00
    3b44:	02050101 	slti	$r1,$r8,320(0x140)
    3b48:	05750884 	0x05750884
    3b4c:	02f30601 	addi.d	$r1,$r16,-831(0xcc1)
    3b50:	0101000c 	fadd.d	$f12,$f0,$f0
    3b54:	05000105 	0x05000105
    3b58:	00231402 	div.du	$r2,$r0,$r5
    3b5c:	01ad031c 	0x01ad031c
    3b60:	84020501 	0x84020501
    3b64:	01057508 	fmul.d	$f8,$f8,$f29
    3b68:	0c02f306 	0x0c02f306
    3b6c:	05010100 	0x05010100
    3b70:	02050001 	slti	$r1,$r0,320(0x140)
    3b74:	1c002350 	pcaddu12i	$r16,282(0x11a)
    3b78:	0101b303 	0x0101b303
    3b7c:	08840205 	0x08840205
    3b80:	06010575 	cacop	0x15,$r11,65(0x41)
    3b84:	000c02f3 	bytepick.d	$r19,$r23,$r0,0x0
    3b88:	01050101 	fmul.d	$f1,$f8,$f0
    3b8c:	8c020500 	0x8c020500
    3b90:	031c0023 	lu52i.d	$r3,$r1,1792(0x700)
    3b94:	050101dc 	0x050101dc
    3b98:	0b05f302 	0x0b05f302
    3b9c:	02050106 	slti	$r6,$r8,320(0x140)
    3ba0:	1313f306 	addu16i.d	$r6,$r24,-15108(0xc4fc)
    3ba4:	05750813 	0x05750813
    3ba8:	05010609 	0x05010609
    3bac:	05830602 	0x05830602
    3bb0:	05010608 	0x05010608
    3bb4:	054b0602 	0x054b0602
    3bb8:	05010609 	0x05010609
    3bbc:	4c4b0602 	jirl	$r2,$r16,19204(0x4b04)
    3bc0:	01060d05 	0x01060d05
    3bc4:	054a0205 	0x054a0205
    3bc8:	04020025 	csrwr	$r5,0x80
    3bcc:	02054a02 	slti	$r2,$r16,338(0x152)
    3bd0:	01040200 	0x01040200
    3bd4:	0603054a 	cacop	0xa,$r10,193(0xc1)
    3bd8:	060d0584 	cacop	0x4,$r12,833(0x341)
    3bdc:	4a170501 	bcnez	$fcc0,399108(0x61704) # 652e0 <_start-0x1bf9ad20>
    3be0:	054a0505 	0x054a0505
    3be4:	054c0606 	0x054c0606
    3be8:	05010613 	0x05010613
    3bec:	0105f206 	0x0105f206
    3bf0:	024a8285 	sltui	$r5,$r20,672(0x2a0)
    3bf4:	01010008 	fadd.d	$f8,$f0,$f0
    3bf8:	05000105 	0x05000105
    3bfc:	00000002 	0x00000002
    3c00:	01f10300 	0x01f10300
    3c04:	83020501 	0x83020501
    3c08:	060105bb 	cacop	0x1b,$r13,65(0x41)
    3c0c:	000c024b 	bytepick.d	$r11,$r18,$r0,0x0
    3c10:	01050101 	fmul.d	$f1,$f8,$f0
    3c14:	00020500 	0x00020500
    3c18:	03000000 	lu52i.d	$r0,$r0,0
    3c1c:	050101ff 	0x050101ff
    3c20:	0b058302 	0x0b058302
    3c24:	02050106 	slti	$r6,$r8,320(0x140)
    3c28:	054bf306 	0x054bf306
    3c2c:	02bb0601 	addi.w	$r1,$r16,-319(0xec1)
    3c30:	0101000c 	fadd.d	$f12,$f0,$f0
    3c34:	05000105 	0x05000105
    3c38:	00242402 	crc.w.b.w	$r2,$r0,$r9
    3c3c:	028e031c 	addi.w	$r28,$r24,896(0x380)
    3c40:	84020501 	0x84020501
    3c44:	01060b05 	0x01060b05
    3c48:	f3060205 	0xf3060205
    3c4c:	01060905 	0x01060905
    3c50:	83060205 	0x83060205
    3c54:	4c060105 	jirl	$r5,$r8,1536(0x600)
    3c58:	01000c02 	0x01000c02
    3c5c:	00010501 	0x00010501
    3c60:	24540205 	ldptr.w	$r5,$r16,21504(0x5400)
    3c64:	9f031c00 	0x9f031c00
    3c68:	05050102 	0x05050102
    3c6c:	13131383 	addu16i.d	$r3,$r28,-15164(0xc4c4)
    3c70:	01061305 	0x01061305
    3c74:	bb060505 	0xbb060505
    3c78:	01060f05 	0x01060f05
    3c7c:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 174280 <_start-0x1be8bd80>
    3c80:	01060e05 	0x01060e05
    3c84:	f3060505 	0xf3060505
    3c88:	01060d05 	0x01060d05
    3c8c:	83060205 	0x83060205
    3c90:	01054a06 	fmul.d	$f6,$f16,$f18
    3c94:	000c02bf 	bytepick.d	$r31,$r21,$r0,0x0
    3c98:	01050101 	fmul.d	$f1,$f8,$f0
    3c9c:	a0020500 	0xa0020500
    3ca0:	031c0024 	lu52i.d	$r4,$r1,1792(0x700)
    3ca4:	050102b7 	0x050102b7
    3ca8:	0b051302 	0x0b051302
    3cac:	02050106 	slti	$r6,$r8,320(0x140)
    3cb0:	0805f306 	0x0805f306
    3cb4:	01050106 	fmul.d	$f6,$f8,$f0
    3cb8:	000402bb 	alsl.w	$r27,$r21,$r0,0x1
    3cbc:	01050101 	fmul.d	$f1,$f8,$f0
    3cc0:	c0020500 	0xc0020500
    3cc4:	031c0024 	lu52i.d	$r4,$r1,1792(0x700)
    3cc8:	050102c5 	0x050102c5
    3ccc:	15058305 	lu12i.w	$r5,-513000(0x82c18)
    3cd0:	0e050106 	0x0e050106
    3cd4:	060505ba 	cacop	0x1a,$r13,321(0x141)
    3cd8:	0611054b 	cacop	0xb,$r10,1089(0x441)
    3cdc:	4a1c0501 	bcnez	$fcc0,400388(0x61c04) # 658e0 <_start-0x1bf9a720>
    3ce0:	05820e05 	0x05820e05
    3ce4:	05830605 	0x05830605
    3ce8:	12030601 	addu16i.d	$r1,$r16,-32575(0x80c1)
    3cec:	060a05f2 	cacop	0x12,$r15,641(0x281)
    3cf0:	05ba7003 	0x05ba7003
    3cf4:	1905bb0d 	pcaddi	$r13,-512552(0x82dd8)
    3cf8:	0d050106 	0x0d050106
    3cfc:	0a05bb06 	0x0a05bb06
    3d00:	bb0d0552 	0xbb0d0552
    3d04:	01061905 	0x01061905
    3d08:	08060d05 	0x08060d05
    3d0c:	060105ad 	cacop	0xd,$r13,65(0x41)
    3d10:	00040216 	alsl.w	$r22,$r16,$r0,0x1
    3d14:	01050101 	fmul.d	$f1,$f8,$f0
    3d18:	50020500 	b	67109380(0x4000204) # 4003f1c <_start-0x17ffc0e4>
    3d1c:	031c0025 	lu52i.d	$r5,$r1,1792(0x700)
    3d20:	050102e6 	0x050102e6
    3d24:	0805bb02 	0x0805bb02
    3d28:	05050106 	0x05050106
    3d2c:	0705f406 	0x0705f406
    3d30:	05050106 	0x05050106
    3d34:	820c0306 	0x820c0306
    3d38:	01060805 	0x01060805
    3d3c:	03060205 	lu52i.d	$r5,$r16,384(0x180)
    3d40:	0505821d 	0x0505821d
    3d44:	054a0106 	0x054a0106
    3d48:	054f0603 	0x054f0603
    3d4c:	0501060b 	0x0501060b
    3d50:	05f50602 	0x05f50602
    3d54:	0501060a 	0x0501060a
    3d58:	0905f301 	0x0905f301
    3d5c:	f2500306 	0xf2500306
    3d60:	01060c05 	0x01060c05
    3d64:	05820b05 	0x05820b05
    3d68:	054d0604 	0x054d0604
    3d6c:	0501060c 	0x0501060c
    3d70:	0405f20a 	csrxchg	$r10,$r16,0x17c
    3d74:	0d054b06 	0x0d054b06
    3d78:	c00305bc 	0xc00305bc
    3d7c:	1413134f 	lu12i.w	$r15,39066(0x989a)
    3d80:	01061505 	0x01061505
    3d84:	05ba1305 	0x05ba1305
    3d88:	054b0603 	0x054b0603
    3d8c:	050f0607 	0x050f0607
    3d90:	05054d09 	0x05054d09
    3d94:	0f054d06 	0x0f054d06
    3d98:	054a0106 	0x054a0106
    3d9c:	054b0605 	0x054b0605
    3da0:	0501060a 	0x0501060a
    3da4:	05510604 	0x05510604
    3da8:	05010616 	0x05010616
    3dac:	0905ba14 	0x0905ba14
    3db0:	4a4a7503 	bcnez	$fcc0,936564(0xe4a74) # e8824 <_start-0x1bf177dc>
    3db4:	4b060405 	bceqz	$fcc0,1508868(0x170604) # 1743b8 <_start-0x1be8bc48>
    3db8:	01060a05 	0x01060a05
    3dbc:	83060405 	0x83060405
    3dc0:	01060605 	0x01060605
    3dc4:	85060b05 	0x85060b05
    3dc8:	01060d05 	0x01060d05
    3dcc:	4b060505 	bcnez	$fcc0,1508868(0x170604) # 1743d0 <_start-0x1be8bc30>
    3dd0:	060f0513 	cacop	0x13,$r8,961(0x3c1)
    3dd4:	0a054a01 	0x0a054a01
    3dd8:	06050581 	cacop	0x1,$r12,321(0x141)
    3ddc:	060f0585 	cacop	0x5,$r12,961(0x3c1)
    3de0:	000c0201 	bytepick.d	$r1,$r16,$r0,0x0
    3de4:	01050101 	fmul.d	$f1,$f8,$f0
    3de8:	60020500 	blt	$r8,$r0,516(0x204) # 3fec <_start-0x1bffc014>
    3dec:	031c0026 	lu52i.d	$r6,$r1,1792(0x700)
    3df0:	0501039e 	0x0501039e
    3df4:	bb4b8305 	0xbb4b8305
    3df8:	4b060105 	bcnez	$fcc0,1508864(0x170600) # 1743f8 <_start-0x1be8bc08>
    3dfc:	01000c02 	0x01000c02
    3e00:	Address 0x0000000000003e00 is out of bounds.


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
      30:	018b0104 	0x018b0104
Wake_256sec_Set():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:85 (discriminator 3)
      34:	b10c0000 	0xb10c0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 3)
      38:	56000002 	bl	655360(0xa0000) # a0038 <_start-0x1bf5ffc8>
	...
      44:	d0000000 	0xd0000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_common.c:89 (discriminator 1)
      48:	02000000 	slti	$r0,$r0,0
      4c:	025e0601 	sltui	$r1,$r16,1921(0x781)
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
      60:	00025c08 	0x00025c08
      64:	05020200 	0x05020200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/private/ls1c102_ptimer.c:25
      68:	0000026a 	0x0000026a
      6c:	4d070202 	jirl	$r2,$r16,67328(0x10700)
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
      c8:	00025604 	0x00025604
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_exti.c:58 (discriminator 3)
      cc:	06010200 	cacop	0x0,$r16,64(0x40)
UART_Init():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:45 (discriminator 3)
      d0:	00000265 	0x00000265
      d4:	0000a706 	0x0000a706
      d8:	028f0700 	addi.w	$r0,$r24,961(0x3c1)
      dc:	69040000 	bltu	$r0,$r0,66560(0x10400) # 104dc <_start-0x1bfefb24>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:47 (discriminator 3)
      e0:	00009411 	0x00009411
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_uart.c:48 (discriminator 1)
      e4:	01140700 	fabs.s	$f0,$f24
vsprintf():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:233
      e8:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff04e8 <_RAM_DATA+0x7ffef4e8>
      ec:	00009411 	0x00009411
      f0:	02450700 	sltui	$r0,$r24,321(0x141)
      f4:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 104f4 <_start-0x1bfefb0c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:234
      f8:	0000750c 	0x0000750c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:235
      fc:	05080800 	0x05080800
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:237
     100:	014909de 	0x014909de
     104:	98090000 	0x98090000
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
     138:	7f090300 	0x7f090300
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
     160:	02aa0906 	addi.w	$r6,$r8,-1406(0xa82)
     164:	e7050000 	0xe7050000
     168:	00008f14 	0x00008f14
     16c:	03000700 	lu52i.d	$r0,$r24,1(0x1)
     170:	000000ef 	0x000000ef
     174:	d703e905 	0xd703e905
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	0b000000 	0x0b000000
     17c:	00000274 	0x00000274
     180:	06011c01 	cacop	0x1,$r0,71(0x47)
     184:	0000004d 	0x0000004d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	00000305 	0x00000305
     18c:	bf0c0000 	0xbf0c0000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	01000012 	0x01000012
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	7505011d 	xvssrln.hu.w	$xr29,$xr8,$xr0
     198:	00000000 	0x00000000
     19c:	30000000 	0x30000000
     1a0:	01000000 	0x01000000
     1a4:	02a20d9c 	addi.w	$r28,$r12,-1917(0x883)
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
     1d4:	027f0f00 	sltui	$r0,$r24,-61(0xfc3)
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
     1f8:	96124c91 	0x96124c91
     1fc:	0100000e 	0x0100000e
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
     240:	0002a117 	0x0002a117
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
     26c:	7f190000 	0x7f190000
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
     2cc:	00000320 	0x00000320
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	080bcd01 	0x080bcd01
     2d4:	54000002 	bl	524288(0x80000) # 802d4 <_start-0x1bf7fd2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	4e000002 	jirl	$r2,$r0,-131072(0x20000)
     2dc:	1c000002 	pcaddu12i	$r2,0
     2e0:	0000023f 	0x0000023f
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
     3d4:	00031417 	0x00031417
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
     424:	04190000 	csrrd	$r0,0x640
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	01000010 	0x01000010
     42c:	007531ad 	bstrins.w	$r13,$r13,0x15,0xc
     430:	03670000 	andi	$r0,$r0,0x9c0
     434:	035d0000 	andi	$r0,$r0,0x740
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	4c190000 	jirl	$r0,$r0,6400(0x1900)
     43c:	01000011 	0x01000011
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
     494:	000f6a1b 	bytepick.d	$r27,$r16,$r26,0x6
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
     4d4:	4317003f 	beqz	$r1,-59648(0x7f1700) # ffff1bd4 <_RAM_DATA+0x7fff0bd4>
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
     514:	0000030d 	0x0000030d
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
     590:	f8170000 	0xf8170000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	01000006 	0x01000006
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
     618:	3f1c0000 	0x3f1c0000
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
     704:	00016017 	0x00016017
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
     764:	68170000 	bltu	$r0,$r0,5888(0x1700) # 1e64 <_start-0x1bffe19c>
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
     7a4:	00100419 	add.w	$r25,$r0,$r1
     7a8:	20200100 	ll.w	$r0,$r8,8192(0x2000)
     7ac:	00000075 	0x00000075
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	00000781 	0x00000781
     7b4:	00000777 	0x00000777
     7b8:	00114c19 	sub.w	$r25,$r0,$r19
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
     810:	6a1b7fa0 	bltu	$r29,$r0,-124036(0x21b7c) # fffe238c <_RAM_DATA+0x7ffe138c>
     814:	0100000f 	0x0100000f
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
     888:	000006ea 	0x000006ea
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
     8c4:	86240000 	0x86240000
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
     948:	0000013c 	0x0000013c
     94c:	0000013c 	0x0000013c
     950:	25050c06 	stptr.w	$r6,$r0,1292(0x50c)
     954:	0000016a 	0x0000016a
     958:	0000016a 	0x0000016a
     95c:	25070b06 	stptr.w	$r6,$r24,1800(0x708)
     960:	00000328 	0x00000328
     964:	00000328 	0x00000328
     968:	2509df07 	stptr.w	$r7,$r24,2524(0x9dc)
     96c:	00000171 	0x00000171
     970:	00000171 	0x00000171
     974:	0006de07 	alsl.wu	$r7,$r16,$r23,0x2
     978:	000006f1 	0x000006f1
     97c:	02640004 	sltui	$r4,$r0,-1792(0x900)
     980:	01040000 	0x01040000
     984:	0000018b 	0x0000018b
     988:	0003f40c 	0x0003f40c
     98c:	00005600 	bitrev.d	$r0,$r16
     990:	00006800 	rdtime.d	$r0,$r0
     994:	00000000 	0x00000000
     998:	00099900 	bytepick.w	$r0,$r8,$r6,0x3
     99c:	06010200 	cacop	0x0,$r16,64(0x40)
     9a0:	0000025e 	0x0000025e
     9a4:	0000c503 	0x0000c503
     9a8:	181d0200 	pcaddi	$r0,59408(0xe810)
     9ac:	00000038 	0x00000038
     9b0:	5c080102 	bne	$r8,$r2,2048(0x800) # 11b0 <_start-0x1bffee50>
     9b4:	02000002 	slti	$r2,$r0,0
     9b8:	026a0502 	sltui	$r2,$r8,-1407(0xa81)
     9bc:	00030000 	0x00030000
     9c0:	02000005 	slti	$r5,$r0,0
     9c4:	0052192b 	0x0052192b
     9c8:	02020000 	slti	$r0,$r0,128(0x80)
     9cc:	00014d07 	0x00014d07
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
     a18:	00050203 	alsl.w	$r3,$r16,$r0,0x3
     a1c:	141a0300 	lu12i.w	$r0,53272(0xd018)
     a20:	00000046 	0x00000046
     a24:	00013303 	0x00013303
     a28:	14200300 	lu12i.w	$r0,65560(0x10018)
     a2c:	00000060 	0x00000060
     a30:	56040402 	bl	656388(0xa0404) # a0e34 <_start-0x1bf5f1cc>
     a34:	06000002 	cacop	0x2,$r0,0
     a38:	00880407 	bstrins.d	$r7,$r0,0x8,0x1
     a3c:	31040000 	0x31040000
     a40:	0000da0e 	0x0000da0e
     a44:	04750700 	csrxchg	$r0,$r24,0x1d41
     a48:	08000000 	0x08000000
     a4c:	00544553 	0x00544553
     a50:	1e030001 	pcaddu18i	$r1,6144(0x1800)
     a54:	0400000a 	csrrd	$r10,0x0
     a58:	00bf2831 	bstrins.d	$r17,$r1,0x3f,0xa
     a5c:	64030000 	bge	$r0,$r0,768(0x300) # d5c <_start-0x1bfff2a4>
     a60:	0400000a 	csrrd	$r10,0x0
     a64:	00bf3431 	bstrins.d	$r17,$r1,0x3f,0xd
     a68:	07060000 	0x07060000
     a6c:	00008804 	0x00008804
     a70:	0e330400 	0x0e330400
     a74:	0000010d 	0x0000010d
     a78:	00035207 	0x00035207
     a7c:	80070000 	0x80070000
     a80:	01000003 	0x01000003
     a84:	044e0300 	csrxchg	$r0,$r24,0x1380
     a88:	33040000 	0x33040000
     a8c:	0000f22f 	0x0000f22f
     a90:	06010200 	cacop	0x0,$r16,64(0x40)
     a94:	00000265 	0x00000265
     a98:	00028f09 	0x00028f09
     a9c:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
     aa0:	000000ac 	0x000000ac
     aa4:	00011409 	0x00011409
     aa8:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
     aac:	000000ac 	0x000000ac
     ab0:	00024509 	0x00024509
     ab4:	0c6d0400 	0x0c6d0400
     ab8:	00000081 	0x00000081
     abc:	de05080a 	0xde05080a
     ac0:	0001b609 	0x0001b609
     ac4:	02980b00 	addi.w	$r0,$r24,1538(0x602)
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
     af8:	017f0b03 	0x017f0b03
     afc:	e4050000 	0xe4050000
     b00:	00009b14 	0x00009b14
     b04:	4c0c0400 	jirl	$r0,$r0,3076(0xc04)
     b08:	05005253 	0x05005253
     b0c:	009b14e5 	bstrins.d	$r5,$r7,0x1b,0x5
     b10:	0b050000 	0x0b050000
     b14:	000000be 	0x000000be
     b18:	9b14e605 	0x9b14e605
     b1c:	06000000 	cacop	0x0,$r0,0
     b20:	0002aa0b 	0x0002aa0b
     b24:	14e70500 	lu12i.w	$r0,473128(0x73828)
     b28:	0000009b 	0x0000009b
     b2c:	ef030007 	0xef030007
     b30:	05000000 	0x05000000
     b34:	014403e9 	0x014403e9
     b38:	100a0000 	addu16i.d	$r0,$r0,640(0x280)
     b3c:	41091506 	beqz	$r8,1640724(0x190914) # 191450 <_start-0x1be6ebb0>
     b40:	0b000002 	0x0b000002
     b44:	0000051c 	0x0000051c
     b48:	ac0c1706 	0xac0c1706
     b4c:	00000000 	0x00000000
     b50:	0003be0b 	0x0003be0b
     b54:	0c1b0600 	0x0c1b0600
     b58:	000000ac 	0x000000ac
     b5c:	04690b04 	csrxchg	$r4,$r24,0x1a42
     b60:	1d060000 	pcaddu12i	$r0,-512000(0x83000)
     b64:	0000a00c 	0x0000a00c
     b68:	700b0800 	vadd.w	$vr0,$vr0,$vr2
     b6c:	06000003 	cacop	0x3,$r0,0
     b70:	008f0b1f 	bstrins.d	$r31,$r24,0xf,0x2
     b74:	0b0a0000 	0x0b0a0000
     b78:	0000054b 	0x0000054b
     b7c:	8f0b2206 	0x8f0b2206
     b80:	0b000000 	0x0b000000
     b84:	0003d30b 	0x0003d30b
     b88:	0b250600 	0x0b250600
     b8c:	0000008f 	0x0000008f
     b90:	04f40b0c 	csrxchg	$r12,$r24,0x3d02
     b94:	27060000 	stptr.d	$r0,$r0,1536(0x600)
     b98:	00008f0b 	0x00008f0b
     b9c:	be0b0d00 	0xbe0b0d00
     ba0:	06000004 	cacop	0x4,$r0,0
     ba4:	008f0b29 	bstrins.d	$r9,$r25,0xf,0x2
     ba8:	0b0e0000 	0x0b0e0000
     bac:	0000047b 	0x0000047b
     bb0:	8f0b2b06 	0x8f0b2b06
     bb4:	0f000000 	0x0f000000
     bb8:	050b0300 	0x050b0300
     bbc:	2d060000 	0x2d060000
     bc0:	0001c203 	0x0001c203
     bc4:	04d60900 	csrxchg	$r0,$r8,0x3582
     bc8:	02010000 	slti	$r0,$r0,64(0x40)
     bcc:	0000ac11 	0x0000ac11
     bd0:	045e0d00 	csrxchg	$r0,$r8,0x1783
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
     bfc:	0000035a 	0x0000035a
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
     c5c:	0004970d 	alsl.w	$r13,$r24,$r5,0x2
     c60:	016a0100 	0x016a0100
     c64:	00000006 	0x00000006
     c68:	00006800 	rdtime.d	$r0,$r0
     c6c:	6f9c0100 	bgeu	$r8,$r0,-25600(0x39c00) # ffffa86c <_RAM_DATA+0x7fff986c>
     c70:	0e000003 	0x0e000003
     c74:	6a010066 	bltu	$r3,$r6,-130816(0x20100) # fffe0d74 <_RAM_DATA+0x7ffdfd74>
     c78:	00811a01 	bstrins.d	$r1,$r16,0x1,0x6
     c7c:	09870000 	0x09870000
     c80:	09810000 	0x09810000
     c84:	5a0f0000 	beq	$r0,$r0,-127232(0x20f00) # fffe1b84 <_RAM_DATA+0x7ffe0b84>
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
     ce8:	0000048e 	0x0000048e
     cec:	06015e01 	cacop	0x1,$r16,87(0x57)
     cf0:	00000000 	0x00000000
     cf4:	00000064 	0x00000064
     cf8:	04249c01 	csrrd	$r1,0x927
     cfc:	5a0f0000 	beq	$r0,$r0,-127232(0x20f00) # fffe1bfc <_RAM_DATA+0x7ffe0bfc>
     d00:	01000003 	0x01000003
     d04:	411a0160 	beqz	$r11,72192(0x11a00) # 12704 <_start-0x1bfed8fc>
     d08:	02000002 	slti	$r2,$r0,0
     d0c:	eb136091 	0xeb136091
     d10:	01000004 	0x01000004
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
     d9c:	0004e115 	alsl.w	$r21,$r8,$r24,0x2
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
     dcc:	04a70d00 	csrxchg	$r0,$r8,0x29c3
     dd0:	3a010000 	0x3a010000
     dd4:	00000601 	0x00000601
     dd8:	00480000 	0x00480000
     ddc:	9c010000 	0x9c010000
     de0:	000004a0 	0x000004a0
     de4:	00036a17 	0x00036a17
     de8:	013a0100 	0x013a0100
     dec:	0004a02b 	alsl.w	$r11,$r1,$r8,0x2
     df0:	17540100 	lu32i.d	$r0,-352248(0xaa008)
     df4:	00000387 	0x00000387
     df8:	3b013a01 	0x3b013a01
     dfc:	000000a0 	0x000000a0
     e00:	6e185501 	bgeu	$r8,$r1,-124844(0x21854) # fffe2654 <_RAM_DATA+0x7ffe1654>
     e04:	01000011 	0x01000011
     e08:	8f0a013c 	0x8f0a013c
     e0c:	d0000000 	0xd0000000
     e10:	c8000009 	0xc8000009
     e14:	00000009 	0x00000009
     e18:	01b60419 	0x01b60419
     e1c:	ad1a0000 	0xad1a0000
     e20:	01000003 	0x01000003
     e24:	00e60af6 	bstrpick.d	$r22,$r23,0x26,0x2
     e28:	00000000 	0x00000000
     e2c:	00200000 	div.w	$r0,$r0,$r0
     e30:	9c010000 	0x9c010000
     e34:	000004f6 	0x000004f6
     e38:	00036a1b 	0x00036a1b
     e3c:	29f60100 	st.d	$r0,$r8,-640(0xd80)
     e40:	000004a0 	0x000004a0
     e44:	00000a10 	0x00000a10
     e48:	00000a08 	0x00000a08
     e4c:	0003e71b 	0x0003e71b
     e50:	38f60100 	0x38f60100
     e54:	0000008f 	0x0000008f
     e58:	00000a4e 	0x00000a4e
     e5c:	00000a4a 	0x00000a4a
     e60:	0003a31c 	0x0003a31c
     e64:	0df80100 	0x0df80100
     e68:	000000da 	0x000000da
     e6c:	381a0000 	0x381a0000
     e70:	01000005 	0x01000005
     e74:	00da0cd3 	bstrpick.d	$r19,$r6,0x1a,0x3
     e78:	00000000 	0x00000000
     e7c:	00200000 	div.w	$r0,$r0,$r0
     e80:	9c010000 	0x9c010000
     e84:	00000546 	0x00000546
     e88:	00036a1b 	0x00036a1b
     e8c:	2dd30100 	0x2dd30100
     e90:	000004a0 	0x000004a0
     e94:	00000a77 	0x00000a77
     e98:	00000a6f 	0x00000a6f
     e9c:	0003c91b 	0x0003c91b
     ea0:	3cd30100 	0x3cd30100
     ea4:	0000008f 	0x0000008f
     ea8:	00000ab5 	0x00000ab5
     eac:	00000ab1 	0x00000ab1
     eb0:	0003a31c 	0x0003a31c
     eb4:	0dd50100 	0x0dd50100
     eb8:	000000da 	0x000000da
     ebc:	281a0000 	ld.b	$r0,$r0,1664(0x680)
     ec0:	01000003 	0x01000003
     ec4:	008f09b8 	bstrins.d	$r24,$r13,0xf,0x2
     ec8:	00000000 	0x00000000
     ecc:	00180000 	sra.w	$r0,$r0,$r0
     ed0:	9c010000 	0x9c010000
     ed4:	00000589 	0x00000589
     ed8:	00036a1b 	0x00036a1b
     edc:	28b80100 	ld.w	$r0,$r8,-512(0xe00)
     ee0:	000004a0 	0x000004a0
     ee4:	00000ada 	0x00000ada
     ee8:	00000ad6 	0x00000ad6
     eec:	00116e1d 	sub.w	$r29,$r16,$r27
     ef0:	0aba0100 	0x0aba0100
     ef4:	0000008f 	0x0000008f
     ef8:	00000afd 	0x00000afd
     efc:	00000afb 	0x00000afb
     f00:	01711e00 	0x01711e00
     f04:	a8010000 	0xa8010000
     f08:	00149806 	and	$r6,$r0,$r6
     f0c:	0000141c 	clz.w	$r28,$r0
     f10:	c89c0100 	0xc89c0100
     f14:	1b000005 	pcalau12i	$r5,-524288(0x80000)
     f18:	0000036a 	0x0000036a
     f1c:	a022a801 	0xa022a801
     f20:	12000004 	addu16i.d	$r4,$r0,-32768(0x8000)
     f24:	1000000b 	addu16i.d	$r11,$r0,0
     f28:	1b00000b 	pcalau12i	$r11,-524288(0x80000)
     f2c:	0000017a 	0x0000017a
     f30:	8f31a801 	0x8f31a801
     f34:	27000000 	stptr.d	$r0,$r0,0
     f38:	2500000b 	stptr.w	$r11,$r0,0
     f3c:	0000000b 	0x0000000b
     f40:	00052a1e 	alsl.w	$r30,$r16,$r10,0x3
     f44:	06720100 	0x06720100
     f48:	00000000 	0x00000000
     f4c:	0000002c 	0x0000002c
     f50:	060f9c01 	cacop	0x1,$r0,999(0x3e7)
     f54:	6a1f0000 	bltu	$r0,$r0,-123136(0x21f00) # fffe2e54 <_RAM_DATA+0x7ffe1e54>
     f58:	01000003 	0x01000003
     f5c:	04a02272 	csrxchg	$r18,$r19,0x2808
     f60:	54010000 	bl	256(0x100) # 1060 <_start-0x1bffefa0>
     f64:	0003871b 	0x0003871b
     f68:	31720100 	0x31720100
     f6c:	0000008f 	0x0000008f
     f70:	00000b42 	0x00000b42
     f74:	00000b3a 	0x00000b3a
     f78:	0003391f 	0x0003391f
     f7c:	4a720100 	bcnez	$fcc0,160256(0x27200) # 2817c <_start-0x1bfd7e84>
     f80:	0000010d 	0x0000010d
     f84:	1e005601 	pcaddu18i	$r1,688(0x2b0)
     f88:	00000342 	0x00000342
     f8c:	00065501 	alsl.wu	$r1,$r8,$r21,0x1
     f90:	3c000000 	0x3c000000
     f94:	01000000 	0x01000000
     f98:	0006349c 	alsl.wu	$r28,$r4,$r13,0x1
     f9c:	035a1f00 	andi	$r0,$r24,0x687
     fa0:	55010000 	bl	65792(0x10100) # 110a0 <_start-0x1bfeef60>
     fa4:	00063428 	alsl.wu	$r8,$r1,$r13,0x1
     fa8:	00540100 	0x00540100
     fac:	02410419 	sltui	$r25,$r0,65(0x41)
     fb0:	991e0000 	0x991e0000
     fb4:	01000003 	0x01000003
     fb8:	00000632 	0x00000632
     fbc:	004c0000 	0x004c0000
     fc0:	9c010000 	0x9c010000
     fc4:	00000680 	0x00000680
     fc8:	00036a1f 	0x00036a1f
     fcc:	1e320100 	pcaddu18i	$r0,102408(0x19008)
     fd0:	000004a0 	0x000004a0
     fd4:	6e1d5401 	bgeu	$r0,$r1,-123564(0x21d54) # fffe2d28 <_RAM_DATA+0x7ffe1d28>
     fd8:	01000011 	0x01000011
     fdc:	008f0d35 	bstrins.d	$r21,$r9,0xf,0x3
     fe0:	0b7e0000 	0x0b7e0000
     fe4:	0b7c0000 	0x0b7c0000
     fe8:	64200000 	bge	$r0,$r0,8192(0x2000) # 2fe8 <_start-0x1bffd018>
     fec:	01007669 	0x01007669
     ff0:	00ac0e36 	bstrins.d	$r22,$r17,0x2c,0x3
     ff4:	00000000 	0x00000000
     ff8:	00038f1e 	0x00038f1e
     ffc:	06040100 	cacop	0x0,$r8,256(0x100)
    1000:	00000000 	0x00000000
    1004:	000000e8 	0x000000e8
    1008:	06db9c01 	0x06db9c01
    100c:	6a1f0000 	bltu	$r0,$r0,-123136(0x21f00) # fffe2f0c <_RAM_DATA+0x7ffe1f0c>
    1010:	01000003 	0x01000003
    1014:	04a01e04 	csrxchg	$r4,$r16,0x2807
    1018:	54010000 	bl	256(0x100) # 1118 <_start-0x1bffeee8>
    101c:	00035a1f 	0x00035a1f
    1020:	37040100 	0x37040100
    1024:	00000634 	0x00000634
    1028:	6e1d5501 	bgeu	$r8,$r1,-123564(0x21d54) # fffe2d7c <_RAM_DATA+0x7ffe1d7c>
    102c:	01000011 	0x01000011
    1030:	008f0d07 	bstrins.d	$r7,$r8,0xf,0x3
    1034:	0b940000 	0x0b940000
    1038:	0b920000 	0x0b920000
    103c:	64210000 	bge	$r0,$r0,8448(0x2100) # 313c <_start-0x1bffcec4>
    1040:	01007669 	0x01007669
    1044:	00ac0e08 	bstrins.d	$r8,$r16,0x2c,0x3
    1048:	0bb20000 	0x0bb20000
    104c:	0ba80000 	0x0ba80000
    1050:	22000000 	ll.d	$r0,$r0,0
    1054:	000004eb 	0x000004eb
    1058:	000004eb 	0x000004eb
    105c:	09016701 	0x09016701
    1060:	0006f823 	alsl.wu	$r3,$r1,$r30,0x2
    1064:	0006f800 	alsl.wu	$r0,$r0,$r30,0x2
    1068:	0d0f0700 	0x0d0f0700
    106c:	00023a00 	0x00023a00
    1070:	bb000400 	0xbb000400
    1074:	04000004 	csrrd	$r4,0x0
    1078:	00018b01 	0x00018b01
    107c:	058d0c00 	0x058d0c00
    1080:	00560000 	0x00560000
    1084:	00d80000 	bstrpick.d	$r0,$r0,0x18,0x0
    1088:	00000000 	0x00000000
    108c:	0efc0000 	0x0efc0000
    1090:	01020000 	0x01020000
    1094:	00025e06 	0x00025e06
    1098:	08010200 	0x08010200
    109c:	0000025c 	0x0000025c
    10a0:	6a050202 	bltu	$r16,$r2,-129792(0x20500) # fffe15a0 <_RAM_DATA+0x7ffe05a0>
    10a4:	02000002 	slti	$r2,$r0,0
    10a8:	014d0702 	0x014d0702
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
    10f0:	00061303 	alsl.wu	$r3,$r24,$r4,0x1
    10f4:	17170400 	lu32i.d	$r0,-477152(0x8b820)
    10f8:	0000002c 	0x0000002c
    10fc:	00057c03 	alsl.w	$r3,$r0,$r31,0x3
    1100:	161b0400 	lu32i.d	$r0,55328(0xd820)
    1104:	00000070 	0x00000070
    1108:	56040402 	bl	656388(0xa0404) # a150c <_start-0x1bf5eaf4>
    110c:	02000002 	slti	$r2,$r0,0
    1110:	02650601 	sltui	$r1,$r16,-1727(0x941)
    1114:	8f050000 	0x8f050000
    1118:	04000002 	csrrd	$r2,0x0
    111c:	00771169 	bstrins.w	$r9,$r11,0x17,0x4
    1120:	14050000 	lu12i.w	$r0,10240(0x2800)
    1124:	04000001 	csrrd	$r1,0x0
    1128:	0077116b 	bstrins.w	$r11,$r11,0x17,0x4
    112c:	45050000 	bnez	$r0,66816(0x10500) # 1162c <_start-0x1bfee9d4>
    1130:	04000002 	csrrd	$r2,0x0
    1134:	00690c6d 	bstrins.w	$r13,$r3,0x9,0x3
    1138:	59060000 	beq	$r0,$r0,67072(0x10600) # 11738 <_start-0x1bfee8c8>
    113c:	01000005 	0x01000005
    1140:	0000065c 	0x0000065c
    1144:	00500000 	0x00500000
    1148:	9c010000 	0x9c010000
    114c:	00000124 	0x00000124
    1150:	00056907 	alsl.w	$r7,$r8,$r26,0x3
    1154:	1d5c0100 	pcaddu12i	$r0,-335864(0xae008)
    1158:	0000008f 	0x0000008f
    115c:	00085401 	bytepick.w	$r1,$r0,$r21,0x0
    1160:	2c000000 	vld	$vr0,$r0,0
    1164:	09000000 	0x09000000
    1168:	00000638 	0x00000638
    116c:	8f106001 	0x8f106001
    1170:	fc000000 	0xfc000000
    1174:	fa00000b 	0xfa00000b
    1178:	0900000b 	0x0900000b
    117c:	0000065c 	0x0000065c
    1180:	8f106101 	0x8f106101
    1184:	15000000 	lu12i.w	$r0,-524288(0x80000)
    1188:	0f00000c 	0x0f00000c
    118c:	0000000c 	0x0000000c
    1190:	05fd0600 	0x05fd0600
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
    11c4:	00063809 	alsl.wu	$r9,$r0,$r14,0x1
    11c8:	10510100 	addu16i.d	$r0,$r8,5184(0x1440)
    11cc:	0000008f 	0x0000008f
    11d0:	00000c76 	0x00000c76
    11d4:	00000c72 	0x00000c72
    11d8:	00065c09 	alsl.wu	$r9,$r0,$r23,0x1
    11dc:	10520100 	addu16i.d	$r0,$r8,5248(0x1480)
    11e0:	0000008f 	0x0000008f
    11e4:	00000c9d 	0x00000c9d
    11e8:	00000c99 	0x00000c99
    11ec:	4d060000 	jirl	$r0,$r0,67072(0x10600)
    11f0:	01000006 	0x01000006
    11f4:	00000641 	0x00000641
    11f8:	00100000 	add.w	$r0,$r0,$r0
    11fc:	9c010000 	0x9c010000
    1200:	000001a6 	0x000001a6
    1204:	0005e907 	alsl.w	$r7,$r8,$r26,0x4
    1208:	1c410100 	pcaddu12i	$r0,133128(0x20808)
    120c:	0000008f 	0x0000008f
    1210:	0b005401 	0x0b005401
    1214:	0000063d 	0x0000063d
    1218:	c0063701 	0xc0063701
    121c:	0c1c0014 	0x0c1c0014
    1220:	01000000 	0x01000000
    1224:	06290b9c 	cacop	0x1c,$r28,-1470(0xa42)
    1228:	30010000 	0x30010000
    122c:	0014b806 	and	$r6,$r0,$r14
    1230:	0000081c 	0x0000081c
    1234:	0b9c0100 	0x0b9c0100
    1238:	000005ef 	0x000005ef
    123c:	00062701 	alsl.wu	$r1,$r24,$r9,0x1
    1240:	0c000000 	0x0c000000
    1244:	01000000 	0x01000000
    1248:	06060b9c 	cacop	0x1c,$r28,386(0x182)
    124c:	1e010000 	pcaddu18i	$r0,2048(0x800)
    1250:	00000006 	0x00000006
    1254:	00000c00 	0x00000c00
    1258:	0b9c0100 	0x0b9c0100
    125c:	00000583 	0x00000583
    1260:	ac061501 	0xac061501
    1264:	0c1c0014 	0x0c1c0014
    1268:	01000000 	0x01000000
    126c:	05710b9c 	0x05710b9c
    1270:	0c010000 	0x0c010000
    1274:	00000006 	0x00000006
    1278:	00000c00 	0x00000c00
    127c:	0c9c0100 	xvfcmp.cune.s	$xr0,$xr8,$xr0
    1280:	00000619 	0x00000619
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
    12b4:	8b010400 	0x8b010400
    12b8:	0c000001 	0x0c000001
    12bc:	00000682 	0x00000682
    12c0:	00000056 	0x00000056
    12c4:	00000130 	0x00000130
    12c8:	00000000 	0x00000000
    12cc:	00001254 	clo.w	$r20,$r18
    12d0:	0006f402 	alsl.wu	$r2,$r0,$r29,0x2
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
    1358:	00023f07 	0x00023f07
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
    1468:	02650601 	sltui	$r1,$r16,-1727(0x941)
    146c:	bc100000 	0xbc100000
    1470:	0e000001 	0x0e000001
    1474:	0001ce04 	0x0001ce04
    1478:	0f041100 	0x0f041100
    147c:	00d90704 	bstrpick.d	$r4,$r24,0x19,0x1
    1480:	64020000 	bge	$r0,$r0,512(0x200) # 1680 <_start-0x1bffe980>
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
    14c0:	00100412 	add.w	$r18,$r0,$r1
    14c4:	24200100 	ldptr.w	$r0,$r8,8192(0x2000)
    14c8:	000001af 	0x000001af
    14cc:	00000ef4 	0x00000ef4
    14d0:	00000eea 	0x00000eea
    14d4:	00114c12 	sub.w	$r18,$r0,$r19
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
    152c:	6a137fa0 	bltu	$r29,$r0,-126084(0x2137c) # fffe28a8 <_RAM_DATA+0x7ffe18a8>
    1530:	0100000f 	0x0100000f
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
    157c:	dd020000 	0xdd020000
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
    15e0:	0006e616 	alsl.wu	$r22,$r16,$r25,0x2
    15e4:	060c0100 	cacop	0x0,$r8,768(0x300)
    15e8:	1c0014cc 	pcaddu12i	$r12,166(0xa6)
    15ec:	00000038 	0x00000038
    15f0:	03699c01 	andi	$r1,$r0,0xa67
    15f4:	63170000 	blt	$r0,$r0,-59648(0x31700) # ffff2cf4 <_RAM_DATA+0x7fff1cf4>
    15f8:	01007268 	0x01007268
    15fc:	0369220c 	andi	$r12,$r16,0xa48
    1600:	54010000 	bl	256(0x100) # 1700 <_start-0x1bffe900>
    1604:	00067218 	alsl.wu	$r24,$r16,$r28,0x1
    1608:	100d0100 	addu16i.d	$r0,$r8,832(0x340)
    160c:	000001c3 	0x000001c3
    1610:	007f9102 	bstrpick.w	$r2,$r8,0x1f,0x4
    1614:	5c08010f 	bne	$r8,$r15,2048(0x800) # 1e14 <_start-0x1bffe1ec>
    1618:	00000002 	0x00000002
    161c:	0000031d 	0x0000031d
    1620:	070d0004 	0x070d0004
    1624:	01040000 	0x01040000
    1628:	0000018b 	0x0000018b
    162c:	00077f0c 	alsl.wu	$r12,$r24,$r31,0x3
    1630:	00005600 	bitrev.d	$r0,$r16
    1634:	00015800 	asrtle.d	$r0,$r22
    1638:	00000000 	0x00000000
    163c:	00161800 	orn	$r0,$r0,$r6
    1640:	06010200 	cacop	0x0,$r16,64(0x40)
    1644:	0000025e 	0x0000025e
    1648:	5c080102 	bne	$r8,$r2,2048(0x800) # 1e48 <_start-0x1bffe1b8>
    164c:	03000002 	lu52i.d	$r2,$r0,0
    1650:	0000002c 	0x0000002c
    1654:	6a050202 	bltu	$r16,$r2,-129792(0x20500) # fffe1b54 <_RAM_DATA+0x7ffe0b54>
    1658:	02000002 	slti	$r2,$r0,0
    165c:	014d0702 	0x014d0702
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
    1698:	d8060000 	0xd8060000
    169c:	02000007 	slti	$r7,$r0,0
    16a0:	00701b11 	bstrins.w	$r17,$r24,0x10,0x6
    16a4:	06000000 	cacop	0x0,$r0,0
    16a8:	0000075d 	0x0000075d
    16ac:	701b1202 	0x701b1202
    16b0:	04000000 	csrrd	$r0,0x0
    16b4:	0007f306 	alsl.wu	$r6,$r24,$r28,0x4
    16b8:	1b130200 	pcalau12i	$r0,-485360(0x89810)
    16bc:	00000070 	0x00000070
    16c0:	0c520608 	vfcmp.ceq.s	$vr8,$vr16,$vr1
    16c4:	14020000 	lu12i.w	$r0,4096(0x1000)
    16c8:	0000701b 	0x0000701b
    16cc:	01060c00 	0x01060c00
    16d0:	02000007 	slti	$r7,$r0,0
    16d4:	00701b15 	bstrins.w	$r21,$r24,0x10,0x6
    16d8:	06100000 	cacop	0x0,$r0,1024(0x400)
    16dc:	00000708 	0x00000708
    16e0:	701b1602 	0x701b1602
    16e4:	14000000 	lu12i.w	$r0,0
    16e8:	00070f06 	alsl.wu	$r6,$r24,$r3,0x3
    16ec:	1b170200 	pcalau12i	$r0,-477168(0x8b810)
    16f0:	00000070 	0x00000070
    16f4:	07160618 	0x07160618
    16f8:	18020000 	pcaddi	$r0,4096(0x1000)
    16fc:	0000701b 	0x0000701b
    1700:	3b061c00 	0x3b061c00
    1704:	02000007 	slti	$r7,$r0,0
    1708:	00701b19 	bstrins.w	$r25,$r24,0x10,0x6
    170c:	06200000 	cacop	0x0,$r0,-2048(0x800)
    1710:	00000848 	0x00000848
    1714:	701b1a02 	0x701b1a02
    1718:	24000000 	ldptr.w	$r0,$r0,0
    171c:	0007e906 	alsl.wu	$r6,$r8,$r26,0x4
    1720:	1b1b0200 	pcalau12i	$r0,-468976(0x8d810)
    1724:	00000070 	0x00000070
    1728:	07640628 	0x07640628
    172c:	1c020000 	pcaddu12i	$r0,4096(0x1000)
    1730:	0000701b 	0x0000701b
    1734:	4b062c00 	bceqz	$fcc0,198188(0x3062c) # 31d60 <_start-0x1bfce2a0>
    1738:	02000007 	slti	$r7,$r0,0
    173c:	00701b1d 	bstrins.w	$r29,$r24,0x10,0x6
    1740:	06300000 	cacop	0x0,$r0,-1024(0xc00)
    1744:	00000864 	0x00000864
    1748:	701b1e02 	0x701b1e02
    174c:	34000000 	0x34000000
    1750:	00077606 	alsl.wu	$r6,$r16,$r29,0x3
    1754:	1b1f0200 	pcalau12i	$r0,-460784(0x8f810)
    1758:	00000070 	0x00000070
    175c:	083a0638 	0x083a0638
    1760:	20020000 	ll.w	$r0,$r0,512(0x200)
    1764:	0000701b 	0x0000701b
    1768:	6d063c00 	bgeu	$r0,$r0,67132(0x1063c) # 11da4 <_start-0x1bfee25c>
    176c:	02000007 	slti	$r7,$r0,0
    1770:	00701b21 	bstrins.w	$r1,$r25,0x10,0x6
    1774:	06400000 	lddir	$r0,$r0,0x0
    1778:	00000818 	0x00000818
    177c:	701b2202 	0x701b2202
    1780:	44000000 	bnez	$r0,0 # 1780 <_start-0x1bffe880>
    1784:	00074306 	alsl.wu	$r6,$r24,$r16,0x3
    1788:	1b230200 	pcalau12i	$r0,-452592(0x91810)
    178c:	00000070 	0x00000070
    1790:	07240648 	0x07240648
    1794:	24020000 	ldptr.w	$r0,$r0,512(0x200)
    1798:	0000701b 	0x0000701b
    179c:	0f064c00 	0x0f064c00
    17a0:	02000008 	slti	$r8,$r0,0
    17a4:	00701b25 	bstrins.w	$r5,$r25,0x10,0x6
    17a8:	06500000 	0x06500000
    17ac:	00000733 	0x00000733
    17b0:	701b2602 	0x701b2602
    17b4:	54000000 	bl	0 # 17b4 <_start-0x1bffe84c>
    17b8:	0007e106 	alsl.wu	$r6,$r8,$r24,0x4
    17bc:	1b270200 	pcalau12i	$r0,-444400(0x93810)
    17c0:	00000070 	0x00000070
    17c4:	07290658 	0x07290658
    17c8:	28020000 	ld.b	$r0,$r0,128(0x80)
    17cc:	0000701b 	0x0000701b
    17d0:	01065c00 	0x01065c00
    17d4:	02000008 	slti	$r8,$r0,0
    17d8:	00701b29 	bstrins.w	$r9,$r25,0x10,0x6
    17dc:	06600000 	0x06600000
    17e0:	00000808 	0x00000808
    17e4:	701b2a02 	0x701b2a02
    17e8:	64000000 	bge	$r0,$r0,0 # 17e8 <_start-0x1bffe818>
    17ec:	00082006 	bytepick.w	$r6,$r0,$r8,0x0
    17f0:	1b2b0200 	pcalau12i	$r0,-436208(0x95810)
    17f4:	00000070 	0x00000070
    17f8:	07f90668 	0x07f90668
    17fc:	2c020000 	vld	$vr0,$r0,128(0x80)
    1800:	0000701b 	0x0000701b
    1804:	1d066c00 	pcaddu12i	$r0,-511136(0x83360)
    1808:	02000007 	slti	$r7,$r0,0
    180c:	00701b2d 	bstrins.w	$r13,$r25,0x10,0x6
    1810:	06700000 	0x06700000
    1814:	0000072e 	0x0000072e
    1818:	221b2e02 	ll.d	$r2,$r16,6956(0x1b2c)
    181c:	74000002 	xvseq.b	$xr2,$xr0,$xr0
    1820:	00083206 	bytepick.w	$r6,$r16,$r12,0x0
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
    1858:	00085109 	bytepick.w	$r9,$r8,$r20,0x0
    185c:	03300200 	lu52i.d	$r0,$r16,-1024(0xc00)
    1860:	00000075 	0x00000075
    1864:	00085a0a 	bytepick.w	$r10,$r16,$r22,0x0
    1868:	053f0100 	0x053f0100
    186c:	00000062 	0x00000062
    1870:	00000000 	0x00000000
    1874:	00000058 	0x00000058
    1878:	028b9c01 	addi.w	$r1,$r0,743(0x2e7)
    187c:	430b0000 	beqz	$r0,199424(0x30b00) # 3237c <_start-0x1bfcdc84>
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
    18a8:	00000752 	0x00000752
    18ac:	9c062c01 	0x9c062c01
    18b0:	841c0018 	0x841c0018
    18b4:	01000000 	0x01000000
    18b8:	0002d89c 	0x0002d89c
    18bc:	08430b00 	0x08430b00
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
    18f4:	0008280f 	bytepick.w	$r15,$r0,$r10,0x0
    18f8:	06180100 	cacop	0x0,$r8,1536(0x600)
    18fc:	00000000 	0x00000000
    1900:	00000084 	0x00000084
    1904:	430b9c01 	beqz	$r0,461724(0x70b9c) # 724a0 <_start-0x1bf8db60>
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
    1948:	00018b01 	0x00018b01
    194c:	087d0c00 	0x087d0c00
    1950:	00560000 	0x00560000
    1954:	01780000 	0x01780000
    1958:	00000000 	0x00000000
    195c:	18060000 	pcaddi	$r0,12288(0x3000)
    1960:	01020000 	0x01020000
    1964:	00025e06 	0x00025e06
    1968:	08010200 	0x08010200
    196c:	0000025c 	0x0000025c
    1970:	00002c03 	ctz.d	$r3,$r0
    1974:	05020200 	0x05020200
    1978:	0000026a 	0x0000026a
    197c:	4d070202 	jirl	$r2,$r16,67328(0x10700)
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
    19c0:	d6070000 	0xd6070000
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
    1a04:	0000086c 	0x0000086c
    1a08:	331c5202 	xvstelm.d	$xr2,$r16,160(0xa0),0x3
    1a0c:	06000000 	cacop	0x0,$r0,0
    1a10:	08730800 	0x08730800
    1a14:	53020000 	b	197120(0x30200) # 31c14 <_start-0x1bfce3ec>
    1a18:	00007003 	0x00007003
    1a1c:	08db0900 	fnmsub.s	$f0,$f8,$f2,$f22
    1a20:	0b010000 	0x0b010000
    1a24:	00192006 	srl.d	$r6,$r0,$r8
    1a28:	0000181c 	cto.w	$r28,$r0
    1a2c:	009c0100 	bstrins.d	$r0,$r8,0x1c,0x0
    1a30:	000003ba 	0x000003ba
    1a34:	08950004 	fnmadd.s	$f4,$f0,$f0,$f10
    1a38:	01040000 	0x01040000
    1a3c:	0000018b 	0x0000018b
    1a40:	0009a30c 	bytepick.w	$r12,$r24,$r8,0x3
    1a44:	00005600 	bitrev.d	$r0,$r16
    1a48:	00018800 	asrtgt.d	$r0,$r2
    1a4c:	00000000 	0x00000000
    1a50:	0018ac00 	sll.d	$r0,$r0,$r11
    1a54:	06010200 	cacop	0x0,$r16,64(0x40)
    1a58:	0000025e 	0x0000025e
    1a5c:	5c080102 	bne	$r8,$r2,2048(0x800) # 225c <_start-0x1bffdda4>
    1a60:	02000002 	slti	$r2,$r0,0
    1a64:	026a0502 	sltui	$r2,$r8,-1407(0xa81)
    1a68:	02020000 	slti	$r0,$r0,128(0x80)
    1a6c:	00014d07 	0x00014d07
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
    1ab4:	0000057c 	0x0000057c
    1ab8:	70161b04 	0x70161b04
    1abc:	02000000 	slti	$r0,$r0,0
    1ac0:	02560404 	sltui	$r4,$r0,1409(0x581)
    1ac4:	07050000 	0x07050000
    1ac8:	00007004 	0x00007004
    1acc:	0e310400 	0x0e310400
    1ad0:	000000b1 	0x000000b1
    1ad4:	00047506 	alsl.w	$r6,$r8,$r29,0x1
    1ad8:	53070000 	b	198400(0x30700) # 321d8 <_start-0x1bfcde28>
    1adc:	01005445 	0x01005445
    1ae0:	0a1e0300 	xvfmadd.s	$xr0,$xr24,$xr0,$xr28
    1ae4:	31040000 	0x31040000
    1ae8:	00009628 	0x00009628
    1aec:	0a640300 	xvfmsub.d	$xr0,$xr24,$xr0,$xr8
    1af0:	31040000 	0x31040000
    1af4:	00009634 	0x00009634
    1af8:	04070500 	csrxchg	$r0,$r8,0x1c1
    1afc:	00000070 	0x00000070
    1b00:	e40e3304 	0xe40e3304
    1b04:	06000000 	cacop	0x0,$r0,0
    1b08:	00000352 	0x00000352
    1b0c:	03800600 	ori	$r0,$r16,0x1
    1b10:	00010000 	asrtle.d	$r0,$r0
    1b14:	00044e03 	alsl.w	$r3,$r16,$r19,0x1
    1b18:	2f330400 	0x2f330400
    1b1c:	000000c9 	0x000000c9
    1b20:	65060102 	bge	$r8,$r2,67072(0x10600) # 12120 <_start-0x1bfedee0>
    1b24:	08000002 	0x08000002
    1b28:	0000028f 	0x0000028f
    1b2c:	77116904 	xvbitclri.d	$xr4,$xr8,0x1a
    1b30:	08000000 	0x08000000
    1b34:	00000114 	0x00000114
    1b38:	77116b04 	xvbitclri.d	$xr4,$xr24,0x1a
    1b3c:	08000000 	0x08000000
    1b40:	00000245 	0x00000245
    1b44:	690c6d04 	bltu	$r8,$r4,68716(0x10c6c) # 127b0 <_start-0x1bfed850>
    1b48:	09000000 	0x09000000
    1b4c:	01230510 	0x01230510
    1b50:	00015e09 	0x00015e09
    1b54:	091a0a00 	vfmadd.s	$vr0,$vr16,$vr2,$vr20
    1b58:	25050000 	stptr.w	$r0,$r0,1280(0x500)
    1b5c:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b60:	0a000000 	0x0a000000
    1b64:	00000a45 	0x00000a45
    1b68:	0c012605 	0x0c012605
    1b6c:	00000077 	0x00000077
    1b70:	08f50a04 	0x08f50a04
    1b74:	27050000 	stptr.d	$r0,$r0,1280(0x500)
    1b78:	00770c01 	bstrins.w	$r1,$r0,0x17,0x3
    1b7c:	0a080000 	0x0a080000
    1b80:	00000960 	0x00000960
    1b84:	0c012805 	0x0c012805
    1b88:	00000077 	0x00000077
    1b8c:	230b000c 	sc.d	$r12,$r0,2816(0xb00)
    1b90:	05000009 	0x05000009
    1b94:	1b030129 	pcalau12i	$r9,-518135(0x81809)
    1b98:	05000001 	0x05000001
    1b9c:	00700407 	bstrins.w	$r7,$r0,0x10,0x1
    1ba0:	07060000 	0x07060000
    1ba4:	00018601 	0x00018601
    1ba8:	0a840600 	0x0a840600
    1bac:	06000000 	cacop	0x0,$r0,0
    1bb0:	00000930 	0x00000930
    1bb4:	92030001 	0x92030001
    1bb8:	06000009 	cacop	0x9,$r0,0
    1bbc:	016b020a 	0x016b020a
    1bc0:	07050000 	0x07050000
    1bc4:	00007004 	0x00007004
    1bc8:	01130600 	fcopysign.d	$f0,$f16,$f1
    1bcc:	000001ad 	0x000001ad
    1bd0:	000a9406 	0x000a9406
    1bd4:	6a060100 	bltu	$r8,$r0,-129536(0x20600) # fffe21d4 <_RAM_DATA+0x7ffe11d4>
    1bd8:	00000009 	0x00000009
    1bdc:	0aad0300 	xvfnmadd.d	$xr0,$xr24,$xr0,$xr26
    1be0:	16060000 	lu32i.d	$r0,12288(0x3000)
    1be4:	00019202 	0x00019202
    1be8:	06100c00 	cacop	0x0,$r0,1027(0x403)
    1bec:	01f7091e 	0x01f7091e
    1bf0:	0c0d0000 	0x0c0d0000
    1bf4:	0600000a 	cacop	0xa,$r0,0
    1bf8:	00830a20 	bstrins.d	$r0,$r17,0x3,0x2
    1bfc:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
    1c00:	000008eb 	0x000008eb
    1c04:	86142306 	0x86142306
    1c08:	04000001 	csrrd	$r1,0x0
    1c0c:	00090d0d 	bytepick.w	$r13,$r8,$r3,0x2
    1c10:	17260600 	lu32i.d	$r0,-446416(0x93030)
    1c14:	000001ad 	0x000001ad
    1c18:	0a4f0d08 	0x0a4f0d08
    1c1c:	29060000 	st.b	$r0,$r0,384(0x180)
    1c20:	0000e413 	0x0000e413
    1c24:	03000c00 	lu52i.d	$r0,$r0,3(0x3)
    1c28:	0000093f 	0x0000093f
    1c2c:	b9022b06 	0xb9022b06
    1c30:	0e000001 	0x0e000001
    1c34:	00000a6d 	0x00000a6d
    1c38:	38067101 	0x38067101
    1c3c:	101c0019 	addu16i.d	$r25,$r0,1792(0x700)
    1c40:	01000000 	0x01000000
    1c44:	00023c9c 	0x00023c9c
    1c48:	09fd0f00 	0x09fd0f00
    1c4c:	71010000 	vssrlrn.h.w	$vr0,$vr0,$vr0
    1c50:	00023c2b 	0x00023c2b
    1c54:	10540100 	addu16i.d	$r0,$r8,5376(0x1500)
    1c58:	00000a0c 	0x00000a0c
    1c5c:	83387101 	0x83387101
    1c60:	c0000000 	0xc0000000
    1c64:	bc000012 	0xbc000012
    1c68:	00000012 	0x00000012
    1c6c:	015e0411 	0x015e0411
    1c70:	5c120000 	bne	$r0,$r0,4608(0x1200) # 2e70 <_start-0x1bffd190>
    1c74:	0100000a 	0x0100000a
    1c78:	00bd0a5d 	bstrins.d	$r29,$r18,0x3d,0x2
    1c7c:	00000000 	0x00000000
    1c80:	00300000 	0x00300000
    1c84:	9c010000 	0x9c010000
    1c88:	000002a7 	0x000002a7
    1c8c:	0009fd10 	bytepick.w	$r16,$r8,$r31,0x3
    1c90:	295d0100 	st.h	$r0,$r8,1856(0x740)
    1c94:	0000023c 	0x0000023c
    1c98:	000012ed 	clo.w	$r13,$r23
    1c9c:	000012e1 	clo.w	$r1,$r23
    1ca0:	000a0c0f 	0x000a0c0f
    1ca4:	365d0100 	0x365d0100
    1ca8:	00000083 	0x00000083
    1cac:	a3135501 	0xa3135501
    1cb0:	01000003 	0x01000003
    1cb4:	00bd0c5f 	bstrins.d	$r31,$r2,0x3d,0x3
    1cb8:	13440000 	addu16i.d	$r0,$r0,-12032(0xd100)
    1cbc:	13400000 	addu16i.d	$r0,$r0,-12288(0xd000)
    1cc0:	00130000 	maskeqz	$r0,$r0,$r0
    1cc4:	01000009 	0x01000009
    1cc8:	00830a60 	bstrins.d	$r0,$r19,0x3,0x2
    1ccc:	13680000 	addu16i.d	$r0,$r0,-9728(0xda00)
    1cd0:	13640000 	addu16i.d	$r0,$r0,-9984(0xd900)
    1cd4:	0e000000 	0x0e000000
    1cd8:	00000983 	0x00000983
    1cdc:	00065501 	alsl.wu	$r1,$r8,$r21,0x1
    1ce0:	10000000 	addu16i.d	$r0,$r0,0
    1ce4:	01000000 	0x01000000
    1ce8:	0002e09c 	0x0002e09c
    1cec:	09fd0f00 	0x09fd0f00
    1cf0:	55010000 	bl	65792(0x10100) # 11df0 <_start-0x1bfee210>
    1cf4:	00023c23 	0x00023c23
    1cf8:	10540100 	addu16i.d	$r0,$r8,5376(0x1500)
    1cfc:	00000a0c 	0x00000a0c
    1d00:	83305501 	0x83305501
    1d04:	8b000000 	0x8b000000
    1d08:	87000013 	0x87000013
    1d0c:	00000013 	0x00000013
    1d10:	000a1612 	0x000a1612
    1d14:	0c440100 	0x0c440100
    1d18:	000000b1 	0x000000b1
    1d1c:	00000000 	0x00000000
    1d20:	00000014 	0x00000014
    1d24:	03319c01 	lu52i.d	$r1,$r0,-921(0xc67)
    1d28:	fd100000 	0xfd100000
    1d2c:	01000009 	0x01000009
    1d30:	023c2d44 	slti	$r4,$r10,-245(0xf0b)
    1d34:	13b00000 	addu16i.d	$r0,$r0,-5120(0xec00)
    1d38:	13ac0000 	addu16i.d	$r0,$r0,-5376(0xeb00)
    1d3c:	0c0f0000 	0x0c0f0000
    1d40:	0100000a 	0x0100000a
    1d44:	00833a44 	bstrins.d	$r4,$r18,0x3,0xe
    1d48:	55010000 	bl	65792(0x10100) # 11e48 <_start-0x1bfee1b8>
    1d4c:	0003a313 	0x0003a313
    1d50:	0e460100 	0x0e460100
    1d54:	000000b1 	0x000000b1
    1d58:	000013d5 	clo.w	$r21,$r30
    1d5c:	000013d1 	clo.w	$r17,$r30
    1d60:	0a350e00 	0x0a350e00
    1d64:	3c010000 	0x3c010000
    1d68:	00000006 	0x00000006
    1d6c:	00001800 	cto.w	$r0,$r0
    1d70:	569c0100 	bl	67279872(0x4029c00) # 402b970 <_start-0x17fd4690>
    1d74:	0f000003 	0x0f000003
    1d78:	00000950 	0x00000950
    1d7c:	56283c01 	bl	403516(0x6283c) # 645b8 <_start-0x1bf9ba48>
    1d80:	01000003 	0x01000003
    1d84:	04110054 	csrxchg	$r20,$r2,0x440
    1d88:	000001f7 	0x000001f7
    1d8c:	000a020e 	0x000a020e
    1d90:	060d0100 	cacop	0x0,$r8,832(0x340)
    1d94:	00000000 	0x00000000
    1d98:	000000d0 	0x000000d0
    1d9c:	039c9c01 	ori	$r1,$r0,0x727
    1da0:	fd0f0000 	0xfd0f0000
    1da4:	01000009 	0x01000009
    1da8:	023c1e0d 	slti	$r13,$r16,-249(0xf07)
    1dac:	54010000 	bl	256(0x100) # 1eac <_start-0x1bffe154>
    1db0:	0009500f 	bytepick.w	$r15,$r0,$r20,0x2
    1db4:	360d0100 	0x360d0100
    1db8:	00000356 	0x00000356
    1dbc:	74145501 	0x74145501
    1dc0:	0100706d 	0x0100706d
    1dc4:	00830a0f 	bstrins.d	$r15,$r16,0x3,0x2
    1dc8:	00000000 	0x00000000
    1dcc:	000a2915 	0x000a2915
    1dd0:	06050100 	cacop	0x0,$r8,320(0x140)
    1dd4:	00000000 	0x00000000
    1dd8:	00000014 	0x00000014
    1ddc:	fd0f9c01 	0xfd0f9c01
    1de0:	01000009 	0x01000009
    1de4:	023c2005 	slti	$r5,$r0,-248(0xf08)
    1de8:	54010000 	bl	256(0x100) # 1ee8 <_start-0x1bffe118>
    1dec:	02a40000 	addi.w	$r0,$r0,-1792(0x900)
    1df0:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1df4:	000009fc 	0x000009fc
    1df8:	018b0104 	0x018b0104
    1dfc:	ef0c0000 	0xef0c0000
    1e00:	5600000a 	bl	2752512(0x2a0000) # 2a1e00 <_start-0x1bd5e200>
    1e04:	c8000000 	0xc8000000
    1e08:	00000001 	0x00000001
    1e0c:	44000000 	bnez	$r0,0 # 1e0c <_start-0x1bffe1f4>
    1e10:	0200001c 	slti	$r28,$r0,0
    1e14:	025e0601 	sltui	$r1,$r16,1921(0x781)
    1e18:	01020000 	0x01020000
    1e1c:	00025c08 	0x00025c08
    1e20:	05020200 	0x05020200
    1e24:	0000026a 	0x0000026a
    1e28:	4d070202 	jirl	$r2,$r16,67328(0x10700)
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
    1e78:	00025604 	0x00025604
    1e7c:	06010200 	cacop	0x0,$r16,64(0x40)
    1e80:	00000265 	0x00000265
    1e84:	00028f06 	0x00028f06
    1e88:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    1e8c:	00000077 	0x00000077
    1e90:	00011406 	0x00011406
    1e94:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    1e98:	00000077 	0x00000077
    1e9c:	00024506 	0x00024506
    1ea0:	0c6d0400 	0x0c6d0400
    1ea4:	00000069 	0x00000069
    1ea8:	3e057407 	0x3e057407
    1eac:	00023d09 	0x00023d09
    1eb0:	0b4e0800 	0x0b4e0800
    1eb4:	40050000 	beqz	$r0,1280(0x500) # 23b4 <_start-0x1bffdc4c>
    1eb8:	00008315 	0x00008315
    1ebc:	ca080000 	0xca080000
    1ec0:	0500000a 	0x0500000a
    1ec4:	00831541 	bstrins.d	$r1,$r10,0x3,0x5
    1ec8:	08040000 	0x08040000
    1ecc:	00000b48 	0x00000b48
    1ed0:	83154205 	0x83154205
    1ed4:	08000000 	0x08000000
    1ed8:	000ad108 	0x000ad108
    1edc:	15430500 	lu12i.w	$r0,-387032(0xa1828)
    1ee0:	00000083 	0x00000083
    1ee4:	0701080c 	0x0701080c
    1ee8:	44050000 	bnez	$r0,1280(0x500) # 23e8 <_start-0x1bffdc18>
    1eec:	00008315 	0x00008315
    1ef0:	08081000 	0x08081000
    1ef4:	05000007 	0x05000007
    1ef8:	00831545 	bstrins.d	$r5,$r10,0x3,0x5
    1efc:	08140000 	fmadd.s	$f0,$f0,$f0,$f8
    1f00:	0000070f 	0x0000070f
    1f04:	83154605 	0x83154605
    1f08:	18000000 	pcaddi	$r0,0
    1f0c:	00071608 	alsl.wu	$r8,$r16,$r5,0x3
    1f10:	15470500 	lu12i.w	$r0,-378840(0xa3828)
    1f14:	00000083 	0x00000083
    1f18:	0bc5081c 	0x0bc5081c
    1f1c:	48050000 	bceqz	$fcc0,1280(0x500) # 241c <_start-0x1bffdbe4>
    1f20:	00008315 	0x00008315
    1f24:	45082000 	bnez	$r0,67616(0x10820) # 12744 <_start-0x1bfed8bc>
    1f28:	0500000a 	0x0500000a
    1f2c:	00831549 	bstrins.d	$r9,$r10,0x3,0x5
    1f30:	08240000 	fmadd.d	$f0,$f0,$f0,$f8
    1f34:	000008f5 	0x000008f5
    1f38:	83154a05 	0x83154a05
    1f3c:	28000000 	ld.b	$r0,$r0,0
    1f40:	00096008 	bytepick.w	$r8,$r0,$r24,0x2
    1f44:	154b0500 	lu12i.w	$r0,-370648(0xa5828)
    1f48:	00000083 	0x00000083
    1f4c:	0bbd082c 	0x0bbd082c
    1f50:	4c050000 	jirl	$r0,$r0,1280(0x500)
    1f54:	00008315 	0x00008315
    1f58:	c1083000 	0xc1083000
    1f5c:	0500000a 	0x0500000a
    1f60:	0083154d 	bstrins.d	$r13,$r10,0x3,0x5
    1f64:	08340000 	0x08340000
    1f68:	00000b57 	0x00000b57
    1f6c:	83154e05 	0x83154e05
    1f70:	38000000 	ldx.b	$r0,$r0,$r0
    1f74:	000b6b08 	0x000b6b08
    1f78:	154f0500 	lu12i.w	$r0,-362456(0xa7828)
    1f7c:	00000083 	0x00000083
    1f80:	076d083c 	0x076d083c
    1f84:	50050000 	b	1280(0x500) # 2484 <_start-0x1bffdb7c>
    1f88:	00008315 	0x00008315
    1f8c:	18084000 	pcaddi	$r0,16896(0x4200)
    1f90:	05000008 	0x05000008
    1f94:	00831551 	bstrins.d	$r17,$r10,0x3,0x5
    1f98:	08440000 	0x08440000
    1f9c:	00000743 	0x00000743
    1fa0:	83155205 	0x83155205
    1fa4:	48000000 	bceqz	$fcc0,0 # 1fa4 <_start-0x1bffe05c>
    1fa8:	000b7908 	0x000b7908
    1fac:	15530500 	lu12i.w	$r0,-354264(0xa9828)
    1fb0:	00000083 	0x00000083
    1fb4:	080f084c 	0x080f084c
    1fb8:	54050000 	bl	1280(0x500) # 24b8 <_start-0x1bffdb48>
    1fbc:	00008315 	0x00008315
    1fc0:	33085000 	0x33085000
    1fc4:	05000007 	0x05000007
    1fc8:	00831555 	bstrins.d	$r21,$r10,0x3,0x5
    1fcc:	08540000 	fmsub.s	$f0,$f0,$f0,$f8
    1fd0:	000007e1 	0x000007e1
    1fd4:	83155605 	0x83155605
    1fd8:	58000000 	beq	$r0,$r0,0 # 1fd8 <_start-0x1bffe028>
    1fdc:	000b8308 	0x000b8308
    1fe0:	15570500 	lu12i.w	$r0,-346072(0xab828)
    1fe4:	00000083 	0x00000083
    1fe8:	0ae1085c 	xvfnmsub.d	$xr28,$xr2,$xr2,$xr2
    1fec:	58050000 	beq	$r0,$r0,1280(0x500) # 24ec <_start-0x1bffdb14>
    1ff0:	00008315 	0x00008315
    1ff4:	e8086000 	0xe8086000
    1ff8:	0500000a 	0x0500000a
    1ffc:	00831559 	bstrins.d	$r25,$r10,0x3,0x5
    2000:	08640000 	fmsub.d	$f0,$f0,$f0,$f8
    2004:	00000b61 	0x00000b61
    2008:	83155a05 	0x83155a05
    200c:	68000000 	bltu	$r0,$r0,0 # 200c <_start-0x1bffdff4>
    2010:	000b7008 	0x000b7008
    2014:	155b0500 	lu12i.w	$r0,-337880(0xad828)
    2018:	00000083 	0x00000083
    201c:	0ad9086c 	xvfnmsub.s	$xr12,$xr3,$xr2,$xr18
    2020:	5c050000 	bne	$r0,$r0,1280(0x500) # 2520 <_start-0x1bffdae0>
    2024:	00008315 	0x00008315
    2028:	03007000 	lu52i.d	$r0,$r0,28(0x1c)
    202c:	00000b8d 	0x00000b8d
    2030:	ba035d05 	0xba035d05
    2034:	09000000 	0x09000000
    2038:	00000bb5 	0x00000bb5
    203c:	00061101 	alsl.wu	$r1,$r8,$r4,0x1
    2040:	20000000 	ll.w	$r0,$r0,0
    2044:	01000000 	0x01000000
    2048:	0002749c 	0x0002749c
    204c:	00000a00 	0x00000a00
    2050:	02860000 	addi.w	$r0,$r0,384(0x180)
    2054:	010b0000 	fmin.d	$f0,$f0,$f0
    2058:	ff110654 	0xff110654
    205c:	788081ff 	0x788081ff
    2060:	a90c0000 	0xa90c0000
    2064:	0100000b 	0x0100000b
    2068:	1948060b 	pcaddi	$r11,-376784(0xa4030)
    206c:	00141c00 	nor	$r0,$r0,$r7
    2070:	9c010000 	0x9c010000
    2074:	000b990d 	0x000b990d
    2078:	06050100 	cacop	0x0,$r8,320(0x140)
    207c:	00000000 	0x00000000
    2080:	00000024 	0x00000024
    2084:	380e9c01 	0x380e9c01
    2088:	01000006 	0x01000006
    208c:	00771f05 	bstrins.w	$r5,$r24,0x17,0x7
    2090:	54010000 	bl	256(0x100) # 2190 <_start-0x1bffde70>
    2094:	03290000 	lu52i.d	$r0,$r0,-1472(0xa40)
    2098:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    209c:	00000ae7 	0x00000ae7
    20a0:	018b0104 	0x018b0104
    20a4:	9d0c0000 	0x9d0c0000
    20a8:	5600000c 	bl	3276800(0x320000) # 3220a8 <_start-0x1bcddf58>
    20ac:	e8000000 	0xe8000000
    20b0:	00000001 	0x00000001
    20b4:	aa000000 	0xaa000000
    20b8:	0200001e 	slti	$r30,$r0,0
    20bc:	025e0601 	sltui	$r1,$r16,1921(0x781)
    20c0:	01020000 	0x01020000
    20c4:	00025c08 	0x00025c08
    20c8:	05020200 	0x05020200
    20cc:	0000026a 	0x0000026a
    20d0:	4d070202 	jirl	$r2,$r16,67328(0x10700)
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
    211c:	00000256 	0x00000256
    2120:	70040705 	vsle.bu	$vr5,$vr24,$vr1
    2124:	04000000 	csrrd	$r0,0x0
    2128:	00a50e31 	bstrins.d	$r17,$r17,0x25,0x3
    212c:	75060000 	0x75060000
    2130:	00000004 	0x00000004
    2134:	54455307 	bl	-65256112(0xc1c4550) # fc1c6684 <_RAM_DATA+0x7c1c5684>
    2138:	03000100 	lu52i.d	$r0,$r8,0
    213c:	00000a1e 	0x00000a1e
    2140:	8a283104 	0x8a283104
    2144:	03000000 	lu52i.d	$r0,$r0,0
    2148:	00000a64 	0x00000a64
    214c:	8a343104 	0x8a343104
    2150:	05000000 	0x05000000
    2154:	00700407 	bstrins.w	$r7,$r0,0x10,0x1
    2158:	33040000 	0x33040000
    215c:	0000d80e 	0x0000d80e
    2160:	03520600 	andi	$r0,$r16,0x481
    2164:	06000000 	cacop	0x0,$r0,0
    2168:	00000380 	0x00000380
    216c:	4e030001 	jirl	$r1,$r0,-130304(0x20300)
    2170:	04000004 	csrrd	$r4,0x0
    2174:	00bd2f33 	bstrins.d	$r19,$r25,0x3d,0xb
    2178:	01020000 	0x01020000
    217c:	00026506 	0x00026506
    2180:	028f0800 	addi.w	$r0,$r0,962(0x3c2)
    2184:	69040000 	bltu	$r0,$r0,66560(0x10400) # 12584 <_start-0x1bfeda7c>
    2188:	00007711 	0x00007711
    218c:	01140800 	fabs.d	$f0,$f0
    2190:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff2590 <_RAM_DATA+0x7fff1590>
    2194:	00007711 	0x00007711
    2198:	02450800 	sltui	$r0,$r0,322(0x142)
    219c:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 1259c <_start-0x1bfeda64>
    21a0:	0000690c 	rdtime.d	$r12,$r8
    21a4:	051c0900 	0x051c0900
    21a8:	0174090f 	0x0174090f
    21ac:	be0a0000 	0xbe0a0000
    21b0:	05000003 	0x05000003
    21b4:	00770c11 	bstrins.w	$r17,$r0,0x17,0x3
    21b8:	0a000000 	0x0a000000
    21bc:	00000bcf 	0x00000bcf
    21c0:	770c1305 	0x770c1305
    21c4:	04000000 	csrrd	$r0,0x0
    21c8:	000bfd0a 	0x000bfd0a
    21cc:	0c170500 	fcmp.cule.s	$fcc0,$f8,$f1
    21d0:	00000077 	0x00000077
    21d4:	0c330a08 	0x0c330a08
    21d8:	19050000 	pcaddi	$r0,-514048(0x82800)
    21dc:	0000770c 	0x0000770c
    21e0:	820a0c00 	0x820a0c00
    21e4:	0500000c 	0x0500000c
    21e8:	00770c1b 	bstrins.w	$r27,$r0,0x17,0x3
    21ec:	0a100000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr0
    21f0:	00000c06 	0x00000c06
    21f4:	770c1e05 	0x770c1e05
    21f8:	14000000 	lu12i.w	$r0,0
    21fc:	000c200a 	bytepick.d	$r10,$r0,$r8,0x0
    2200:	0c210500 	fcmp.clt.d	$fcc0,$f8,$f1
    2204:	00000077 	0x00000077
    2208:	ed030018 	0xed030018
    220c:	0500000b 	0x0500000b
    2210:	010f0323 	fmina.d	$f3,$f25,$f0
    2214:	e10b0000 	0xe10b0000
    2218:	0100000b 	0x0100000b
    221c:	197406ae 	pcaddi	$r14,-286667(0xba035)
    2220:	002c1c00 	alsl.d	$r0,$r0,$r7,0x1
    2224:	9c010000 	0x9c010000
    2228:	000001ab 	0x000001ab
    222c:	000c690c 	bytepick.d	$r12,$r8,$r26,0x0
    2230:	1bae0100 	pcalau12i	$r0,-167928(0xd7008)
    2234:	00000077 	0x00000077
    2238:	000013f9 	clo.w	$r25,$r31
    223c:	000013f5 	clo.w	$r21,$r31
    2240:	0c720d00 	0x0c720d00
    2244:	99010000 	0x99010000
    2248:	0000a50c 	0x0000a50c
    224c:	00195c00 	srl.d	$r0,$r0,$r23
    2250:	0000181c 	cto.w	$r28,$r0
    2254:	ee9c0100 	0xee9c0100
    2258:	0c000001 	0x0c000001
    225c:	00000c69 	0x00000c69
    2260:	77259901 	xvsat.d	$xr1,$xr8,0x26
    2264:	1e000000 	pcaddu18i	$r0,0
    2268:	1a000014 	pcalau12i	$r20,0
    226c:	0e000014 	0x0e000014
    2270:	000003a3 	0x000003a3
    2274:	b10c9b01 	0xb10c9b01
    2278:	43000000 	beqz	$r0,196608(0x30000) # 32278 <_start-0x1bfcdd88>
    227c:	3f000014 	0x3f000014
    2280:	00000014 	0x00000014
    2284:	000c4b0d 	bytepick.d	$r13,$r24,$r18,0x0
    2288:	0a850100 	0x0a850100
    228c:	00000077 	0x00000077
    2290:	00000000 	0x00000000
    2294:	00000010 	0x00000010
    2298:	021d9c01 	slti	$r1,$r0,1895(0x767)
    229c:	6e0e0000 	bgeu	$r0,$r0,-127488(0x20e00) # fffe309c <_RAM_DATA+0x7ffe209c>
    22a0:	01000011 	0x01000011
    22a4:	00770b87 	bstrins.w	$r7,$r28,0x17,0x2
    22a8:	14670000 	lu12i.w	$r0,210944(0x33800)
    22ac:	14630000 	lu12i.w	$r0,202752(0x31800)
    22b0:	0b000000 	0x0b000000
    22b4:	00000cfd 	0x00000cfd
    22b8:	00067801 	alsl.wu	$r1,$r0,$r30,0x1
    22bc:	10000000 	addu16i.d	$r0,$r0,0
    22c0:	01000000 	0x01000000
    22c4:	0002429c 	0x0002429c
    22c8:	0c520f00 	vfcmp.ceq.s	$vr0,$vr24,$vr3
    22cc:	78010000 	0x78010000
    22d0:	0000771e 	0x0000771e
    22d4:	00540100 	0x00540100
    22d8:	000c110b 	bytepick.d	$r11,$r8,$r4,0x0
    22dc:	066a0100 	0x066a0100
    22e0:	00000000 	0x00000000
    22e4:	00000010 	0x00000010
    22e8:	02679c01 	sltui	$r1,$r0,-1561(0x9e7)
    22ec:	130f0000 	addu16i.d	$r0,$r0,-15424(0xc3c0)
    22f0:	0100000d 	0x0100000d
    22f4:	00771e6a 	bstrins.w	$r10,$r19,0x17,0x7
    22f8:	54010000 	bl	256(0x100) # 23f8 <_start-0x1bffdc08>
    22fc:	0d0c0d00 	0x0d0c0d00
    2300:	5a010000 	beq	$r0,$r0,-130816(0x20100) # fffe2400 <_RAM_DATA+0x7ffe1400>
    2304:	0000770a 	0x0000770a
    2308:	00000000 	0x00000000
    230c:	00001000 	clo.w	$r0,$r0
    2310:	969c0100 	0x969c0100
    2314:	0e000002 	0x0e000002
    2318:	0000116e 	clo.w	$r14,$r11
    231c:	770b5c01 	0x770b5c01
    2320:	8a000000 	0x8a000000
    2324:	86000014 	0x86000014
    2328:	00000014 	0x00000014
    232c:	000c900b 	bytepick.d	$r11,$r0,$r4,0x1
    2330:	06440100 	ldpte	$r8,0x0
    2334:	00000000 	0x00000000
    2338:	00000050 	0x00000050
    233c:	02bb9c01 	addi.w	$r1,$r0,-281(0xee7)
    2340:	390f0000 	0x390f0000
    2344:	01000003 	0x01000003
    2348:	00d82344 	bstrpick.d	$r4,$r26,0x18,0x8
    234c:	54010000 	bl	256(0x100) # 244c <_start-0x1bffdbb4>
    2350:	0c2b0b00 	0x0c2b0b00
    2354:	36010000 	0x36010000
    2358:	00000006 	0x00000006
    235c:	00002c00 	ctz.d	$r0,$r0
    2360:	e09c0100 	0xe09c0100
    2364:	0f000002 	0x0f000002
    2368:	00000339 	0x00000339
    236c:	d81e3601 	0xd81e3601
    2370:	01000000 	0x01000000
    2374:	5a0b0054 	beq	$r2,$r20,-128256(0x20b00) # fffe2e74 <_RAM_DATA+0x7ffe1e74>
    2378:	0100000c 	0x0100000c
    237c:	00000622 	0x00000622
    2380:	00440000 	0x00440000
    2384:	9c010000 	0x9c010000
    2388:	00000305 	0x00000305
    238c:	000c3c0f 	bytepick.d	$r15,$r0,$r15,0x0
    2390:	26220100 	ldptr.d	$r0,$r8,8704(0x2200)
    2394:	00000305 	0x00000305
    2398:	10005401 	addu16i.d	$r1,$r0,21(0x15)
    239c:	00017404 	0x00017404
    23a0:	0bd81100 	0x0bd81100
    23a4:	0d010000 	fsel	$f0,$f0,$f0,$fcc2
    23a8:	00000006 	0x00000006
    23ac:	00007c00 	0x00007c00
    23b0:	0f9c0100 	0x0f9c0100
    23b4:	00000c3c 	0x00000c3c
    23b8:	05200d01 	0x05200d01
    23bc:	01000003 	0x01000003
    23c0:	dd000054 	0xdd000054
    23c4:	04000000 	csrrd	$r0,0x0
    23c8:	000c0e00 	bytepick.d	$r0,$r16,$r3,0x0
    23cc:	8b010400 	0x8b010400
    23d0:	0c000001 	0x0c000001
    23d4:	00000d23 	0x00000d23
    23d8:	00000056 	0x00000056
    23dc:	00000240 	0x00000240
    23e0:	00000000 	0x00000000
    23e4:	0000228f 	clo.d	$r15,$r20
    23e8:	5e060102 	bne	$r8,$r2,-129536(0x20600) # fffe29e8 <_RAM_DATA+0x7ffe19e8>
    23ec:	02000002 	slti	$r2,$r0,0
    23f0:	025c0801 	sltui	$r1,$r0,1794(0x702)
    23f4:	02020000 	slti	$r0,$r0,128(0x80)
    23f8:	00026a05 	0x00026a05
    23fc:	07020200 	0x07020200
    2400:	0000014d 	0x0000014d
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
    2448:	00025604 	0x00025604
    244c:	06010200 	cacop	0x0,$r16,64(0x40)
    2450:	00000265 	0x00000265
    2454:	00028f05 	0x00028f05
    2458:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    245c:	00000077 	0x00000077
    2460:	00011405 	0x00011405
    2464:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    2468:	00000077 	0x00000077
    246c:	00024505 	0x00024505
    2470:	0c6d0400 	0x0c6d0400
    2474:	00000069 	0x00000069
    2478:	000d1b06 	bytepick.d	$r6,$r24,$r6,0x2
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
    24b0:	0000018b 	0x0000018b
    24b4:	000d7f0c 	bytepick.d	$r12,$r24,$r31,0x2
    24b8:	00005600 	bitrev.d	$r0,$r16
    24bc:	00025000 	0x00025000
    24c0:	00000000 	0x00000000
    24c4:	0024be00 	crc.w.h.w	$r0,$r16,$r15
    24c8:	06010200 	cacop	0x0,$r16,64(0x40)
    24cc:	0000025e 	0x0000025e
    24d0:	5c080102 	bne	$r8,$r2,2048(0x800) # 2cd0 <_start-0x1bffd330>
    24d4:	02000002 	slti	$r2,$r0,0
    24d8:	026a0502 	sltui	$r2,$r8,-1407(0xa81)
    24dc:	02020000 	slti	$r0,$r0,128(0x80)
    24e0:	00014d07 	0x00014d07
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
    2528:	02560404 	sltui	$r4,$r0,1409(0x581)
    252c:	01020000 	0x01020000
    2530:	00026506 	0x00026506
    2534:	028f0500 	addi.w	$r0,$r8,961(0x3c1)
    2538:	69040000 	bltu	$r0,$r0,66560(0x10400) # 12938 <_start-0x1bfed6c8>
    253c:	00007711 	0x00007711
    2540:	01140500 	fabs.s	$f0,$f8
    2544:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff2944 <_RAM_DATA+0x7fff1944>
    2548:	00007711 	0x00007711
    254c:	02450500 	sltui	$r0,$r8,321(0x141)
    2550:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 12950 <_start-0x1bfed6b0>
    2554:	0000690c 	rdtime.d	$r12,$r8
    2558:	0d760600 	0x0d760600
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
    2584:	00128d00 	sltu	$r0,$r8,$r3
    2588:	06000400 	cacop	0x0,$r0,1(0x1)
    258c:	0400000d 	csrrd	$r13,0x0
    2590:	00018b01 	0x00018b01
    2594:	105a0c00 	addu16i.d	$r0,$r0,5763(0x1683)
    2598:	00560000 	0x00560000
    259c:	02600000 	sltui	$r0,$r0,-2048(0x800)
    25a0:	00000000 	0x00000000
    25a4:	26ee0000 	ldptr.d	$r0,$r0,-4608(0xee00)
    25a8:	01020000 	0x01020000
    25ac:	00025e06 	0x00025e06
    25b0:	08010200 	0x08010200
    25b4:	0000025c 	0x0000025c
    25b8:	6a050202 	bltu	$r16,$r2,-129792(0x20500) # fffe2ab8 <_RAM_DATA+0x7ffe1ab8>
    25bc:	02000002 	slti	$r2,$r0,0
    25c0:	014d0702 	0x014d0702
    25c4:	34030000 	0x34030000
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
    260c:	0e360300 	0x0e360300
    2610:	1f030000 	pcaddu18i	$r0,-518144(0x81800)
    2614:	00004113 	revh.2w	$r19,$r8
    2618:	01330300 	0x01330300
    261c:	20030000 	ll.w	$r0,$r0,768(0x300)
    2620:	00005414 	bitrev.d	$r20,$r0
    2624:	04040200 	csrxchg	$r0,$r16,0x100
    2628:	00000256 	0x00000256
    262c:	65060102 	bge	$r8,$r2,67072(0x10600) # 12c2c <_start-0x1bfed3d4>
    2630:	06000002 	cacop	0x2,$r0,0
    2634:	000000a7 	0x000000a7
    2638:	00028f07 	0x00028f07
    263c:	11690400 	addu16i.d	$r0,$r0,23105(0x5a41)
    2640:	00000094 	0x00000094
    2644:	00011407 	0x00011407
    2648:	116b0400 	addu16i.d	$r0,$r0,23233(0x5ac1)
    264c:	00000094 	0x00000094
    2650:	00024507 	0x00024507
    2654:	0c6d0400 	0x0c6d0400
    2658:	00000075 	0x00000075
    265c:	000eb708 	bytepick.d	$r8,$r24,$r13,0x5
    2660:	2e011000 	0x2e011000
    2664:	0001190f 	0x0001190f
    2668:	0df00900 	0x0df00900
    266c:	2f010000 	0x2f010000
    2670:	0001190e 	0x0001190e
    2674:	a2090000 	0xa2090000
    2678:	0100000f 	0x0100000f
    267c:	013b0830 	0x013b0830
    2680:	09040000 	0x09040000
    2684:	000011b4 	clo.w	$r20,$r13
    2688:	190e3101 	pcaddi	$r1,-495224(0x87188)
    268c:	08000001 	0x08000001
    2690:	000efc09 	bytepick.d	$r9,$r0,$r31,0x5
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
    2708:	112a1211 	addu16i.d	$r17,$r16,19076(0x4a84)
    270c:	17050000 	lu32i.d	$r0,-514048(0x82800)
    2710:	0001730f 	0x0001730f
    2714:	00030500 	0x00030500
    2718:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
    271c:	00001009 	clo.w	$r9,$r0
    2720:	730f3d05 	0x730f3d05
    2724:	05000001 	0x05000001
    2728:	002d3c03 	alsl.d	$r3,$r0,$r15,0x3
    272c:	0e00121c 	0x0e00121c
    2730:	4e050000 	jirl	$r0,$r0,-129792(0x20500)
    2734:	00007c0e 	0x00007c0e
    2738:	04030500 	csrxchg	$r0,$r8,0xc1
    273c:	03800000 	ori	$r0,$r0,0x0
    2740:	00000e3e 	0x00000e3e
    2744:	750d0706 	xvbitclr.w	$xr6,$xr24,$xr1
    2748:	03000000 	lu52i.d	$r0,$r0,0
    274c:	000012aa 	clo.w	$r10,$r21
    2750:	4d0e1007 	jirl	$r7,$r0,69136(0x10e10)
    2754:	03000000 	lu52i.d	$r0,$r0,0
    2758:	00000e6e 	0x00000e6e
    275c:	4d0e2707 	jirl	$r7,$r24,69156(0x10e24)
    2760:	13000000 	addu16i.d	$r0,$r0,-16384(0xc000)
    2764:	0000120e 	clo.w	$r14,$r16
    2768:	17016508 	lu32i.d	$r8,-521432(0x80b28)
    276c:	00000081 	0x00000081
    2770:	4a070414 	bceqz	$fcc0,-3012860(0x520704) # ffd22e74 <_RAM_DATA+0x7fd21e74>
    2774:	00020d03 	0x00020d03
    2778:	0fcf1500 	0x0fcf1500
    277c:	4c070000 	jirl	$r0,$r0,1792(0x700)
    2780:	0001de0c 	0x0001de0c
    2784:	11731500 	addu16i.d	$r0,$r8,23749(0x5cc5)
    2788:	4d070000 	jirl	$r0,$r0,67328(0x10700)
    278c:	00020d13 	0x00020d13
    2790:	2c0e0000 	vld	$vr0,$r0,896(0x380)
    2794:	1d000000 	pcaddu12i	$r0,-524288(0x80000)
    2798:	0f000002 	0x0f000002
    279c:	00000081 	0x00000081
    27a0:	08160003 	fmadd.s	$f3,$f0,$f0,$f12
    27a4:	41094707 	beqz	$r24,1902916(0x1d0944) # 1d30e8 <_start-0x1be2cf18>
    27a8:	09000002 	0x09000002
    27ac:	00000eaf 	0x00000eaf
    27b0:	75074907 	xvssran.hu.w	$xr7,$xr8,$xr18
    27b4:	00000000 	0x00000000
    27b8:	000f6809 	bytepick.d	$r9,$r0,$r26,0x6
    27bc:	054e0700 	0x054e0700
    27c0:	000001eb 	0x000001eb
    27c4:	c7030004 	0xc7030004
    27c8:	07000010 	0x07000010
    27cc:	021d034f 	slti	$r15,$r26,1856(0x740)
    27d0:	bf030000 	0xbf030000
    27d4:	0700000f 	0x0700000f
    27d8:	01ba1b53 	0x01ba1b53
    27dc:	27030000 	stptr.d	$r0,$r0,768(0x300)
    27e0:	09000010 	0x09000010
    27e4:	00601916 	bstrins.w	$r22,$r8,0x0,0x6
    27e8:	83080000 	0x83080000
    27ec:	1800000e 	pcaddi	$r14,0
    27f0:	bf082d09 	0xbf082d09
    27f4:	09000002 	0x09000002
    27f8:	00000279 	0x00000279
    27fc:	bf132f09 	0xbf132f09
    2800:	00000002 	0x00000002
    2804:	006b5f17 	bstrins.w	$r23,$r24,0xb,0x17
    2808:	75073009 	xvssran.hu.w	$xr9,$xr0,$xr12
    280c:	04000000 	csrrd	$r0,0x0
    2810:	0011cf09 	sub.d	$r9,$r24,$r19
    2814:	0b300900 	0x0b300900
    2818:	00000075 	0x00000075
    281c:	114b0908 	addu16i.d	$r8,$r8,21186(0x52c2)
    2820:	30090000 	0x30090000
    2824:	00007514 	0x00007514
    2828:	f0090c00 	0xf0090c00
    282c:	0900000e 	0x0900000e
    2830:	00751b30 	bstrins.w	$r16,$r25,0x15,0x6
    2834:	17100000 	lu32i.d	$r0,-491520(0x88000)
    2838:	0900785f 	0x0900785f
    283c:	02c50b31 	addi.d	$r17,$r25,322(0x142)
    2840:	00140000 	nor	$r0,$r0,$r0
    2844:	0265040a 	sltui	$r10,$r0,-1727(0x941)
    2848:	590e0000 	beq	$r0,$r0,69120(0x10e00) # 13648 <_start-0x1bfec9b8>
    284c:	d5000002 	0xd5000002
    2850:	0f000002 	0x0f000002
    2854:	00000081 	0x00000081
    2858:	fc080000 	0xfc080000
    285c:	24000011 	ldptr.w	$r17,$r0,0
    2860:	58083509 	beq	$r8,$r9,2100(0x834) # 3094 <_start-0x1bffcf6c>
    2864:	09000003 	0x09000003
    2868:	00000f3a 	0x00000f3a
    286c:	75093709 	xvssrlrn.hu.w	$xr9,$xr24,$xr13
    2870:	00000000 	0x00000000
    2874:	00121509 	slt	$r9,$r8,$r5
    2878:	09380900 	0x09380900
    287c:	00000075 	0x00000075
    2880:	0e9d0904 	0x0e9d0904
    2884:	39090000 	0x39090000
    2888:	00007509 	0x00007509
    288c:	93090800 	0x93090800
    2890:	0900000f 	0x0900000f
    2894:	0075093a 	bstrins.w	$r26,$r9,0x15,0x2
    2898:	090c0000 	0x090c0000
    289c:	000010f3 	clo.w	$r19,$r7
    28a0:	75093b09 	xvssrlrn.hu.w	$xr9,$xr24,$xr14
    28a4:	10000000 	addu16i.d	$r0,$r0,0
    28a8:	00118d09 	sub.d	$r9,$r8,$r3
    28ac:	093c0900 	0x093c0900
    28b0:	00000075 	0x00000075
    28b4:	0e8b0914 	0x0e8b0914
    28b8:	3d090000 	0x3d090000
    28bc:	00007509 	0x00007509
    28c0:	43091800 	beqz	$r0,198936(0x30918) # 331d8 <_start-0x1bfcce28>
    28c4:	0900000f 	0x0900000f
    28c8:	0075093e 	bstrins.w	$r30,$r9,0x15,0x2
    28cc:	091c0000 	vfmadd.s	$vr0,$vr0,$vr0,$vr24
    28d0:	000010d2 	clo.w	$r18,$r6
    28d4:	75093f09 	xvssrlrn.hu.w	$xr9,$xr24,$xr15
    28d8:	20000000 	ll.w	$r0,$r0,0
    28dc:	0de21800 	0x0de21800
    28e0:	01080000 	0x01080000
    28e4:	9d084809 	0x9d084809
    28e8:	09000003 	0x09000003
    28ec:	0000128c 	clo.w	$r12,$r20
    28f0:	9d0a4909 	0x9d0a4909
    28f4:	00000003 	0x00000003
    28f8:	00121e09 	slt	$r9,$r16,$r7
    28fc:	094a0900 	0x094a0900
    2900:	0000039d 	0x0000039d
    2904:	129b1980 	addu16i.d	$r0,$r12,-22842(0xa6c6)
    2908:	4c090000 	jirl	$r0,$r0,2304(0x900)
    290c:	0002590a 	0x0002590a
    2910:	19010000 	pcaddi	$r0,-522240(0x80800)
    2914:	000012cc 	clo.w	$r12,$r22
    2918:	590a4f09 	beq	$r24,$r9,68172(0x10a4c) # 13364 <_start-0x1bfecc9c>
    291c:	04000002 	csrrd	$r2,0x0
    2920:	390e0001 	0x390e0001
    2924:	ad000001 	0xad000001
    2928:	0f000003 	0x0f000003
    292c:	00000081 	0x00000081
    2930:	1918001f 	pcaddi	$r31,-475136(0x8c000)
    2934:	90000011 	0x90000011
    2938:	085b0901 	fmsub.s	$f1,$f8,$f2,$f22
    293c:	000003f0 	0x000003f0
    2940:	00027909 	0x00027909
    2944:	125c0900 	addu16i.d	$r0,$r8,-26878(0x9702)
    2948:	000003f0 	0x000003f0
    294c:	0f520900 	0x0f520900
    2950:	5d090000 	bne	$r0,$r0,67840(0x10900) # 13250 <_start-0x1bfecdb0>
    2954:	00007506 	0x00007506
    2958:	76090400 	0x76090400
    295c:	0900000e 	0x0900000e
    2960:	03f6095f 	xori	$r31,$r10,0xd82
    2964:	09080000 	0x09080000
    2968:	00000de2 	0x00000de2
    296c:	581e6009 	beq	$r0,$r9,7776(0x1e60) # 47cc <_start-0x1bffb834>
    2970:	88000003 	0x88000003
    2974:	ad040a00 	0xad040a00
    2978:	0e000003 	0x0e000003
    297c:	00000178 	0x00000178
    2980:	00000406 	0x00000406
    2984:	0000810f 	0x0000810f
    2988:	08001f00 	0x08001f00
    298c:	0000110d 	clo.w	$r13,$r8
    2990:	08730908 	0x08730908
    2994:	0000042e 	0x0000042e
    2998:	00100309 	add.w	$r9,$r24,$r0
    299c:	11740900 	addu16i.d	$r0,$r8,23810(0x5d02)
    29a0:	0000042e 	0x0000042e
    29a4:	12a40900 	addu16i.d	$r0,$r8,-22270(0xa902)
    29a8:	75090000 	xvssrlrn.hu.w	$xr0,$xr0,$xr0
    29ac:	00007506 	0x00007506
    29b0:	0a000400 	0x0a000400
    29b4:	00002c04 	ctz.d	$r4,$r0
    29b8:	0ee80800 	0x0ee80800
    29bc:	09680000 	vfmsub.d	$vr0,$vr0,$vr0,$vr16
    29c0:	057708b3 	0x057708b3
    29c4:	5f170000 	bne	$r0,$r0,-59648(0x31700) # ffff40c4 <_RAM_DATA+0x7fff30c4>
    29c8:	b4090070 	0xb4090070
    29cc:	00042e12 	alsl.w	$r18,$r16,$r11,0x1
    29d0:	5f170000 	bne	$r0,$r0,-59648(0x31700) # ffff40d0 <_RAM_DATA+0x7fff30d0>
    29d4:	b5090072 	0xb5090072
    29d8:	00007507 	0x00007507
    29dc:	5f170400 	bne	$r0,$r0,-59644(0x31704) # ffff40e0 <_RAM_DATA+0x7fff30e0>
    29e0:	b6090077 	0xb6090077
    29e4:	00007507 	0x00007507
    29e8:	2d090800 	0x2d090800
    29ec:	0900000e 	0x0900000e
    29f0:	003309b7 	0x003309b7
    29f4:	090c0000 	0x090c0000
    29f8:	0000104c 	clo.w	$r12,$r2
    29fc:	3309b809 	0x3309b809
    2a00:	0e000000 	0x0e000000
    2a04:	66625f17 	bge	$r24,$r23,-105892(0x2625c) # fffe8c60 <_RAM_DATA+0x7ffe7c60>
    2a08:	11b90900 	addu16i.d	$r0,$r8,28226(0x6e42)
    2a0c:	00000406 	0x00000406
    2a10:	0e240910 	0x0e240910
    2a14:	ba090000 	0xba090000
    2a18:	00007507 	0x00007507
    2a1c:	7b091800 	0x7b091800
    2a20:	0900000e 	0x0900000e
    2a24:	013908c1 	0x013908c1
    2a28:	091c0000 	vfmadd.s	$vr0,$vr0,$vr0,$vr24
    2a2c:	0000085e 	0x0000085e
    2a30:	ef1bc309 	0xef1bc309
    2a34:	20000006 	ll.w	$r6,$r0,0
    2a38:	00075609 	alsl.wu	$r9,$r16,$r21,0x3
    2a3c:	1bc50900 	pcalau12i	$r0,-120760(0xe2848)
    2a40:	00000713 	0x00000713
    2a44:	12da0924 	addu16i.d	$r4,$r9,-18814(0xb682)
    2a48:	c8090000 	0xc8090000
    2a4c:	0007370b 	alsl.wu	$r11,$r24,$r13,0x3
    2a50:	db092800 	0xdb092800
    2a54:	0900000f 	0x0900000f
    2a58:	075107c9 	0x075107c9
    2a5c:	172c0000 	lu32i.d	$r0,-434176(0x96000)
    2a60:	0062755f 	bstrins.w	$r31,$r10,0x2,0x1d
    2a64:	0611cc09 	cacop	0x9,$r0,1139(0x473)
    2a68:	30000004 	0x30000004
    2a6c:	70755f17 	vmax.wu	$vr23,$vr24,$vr23
    2a70:	12cd0900 	addu16i.d	$r0,$r8,-19646(0xb342)
    2a74:	0000042e 	0x0000042e
    2a78:	755f1738 	0x755f1738
    2a7c:	ce090072 	0xce090072
    2a80:	00007507 	0x00007507
    2a84:	f1093c00 	0xf1093c00
    2a88:	09000012 	0x09000012
    2a8c:	075711d1 	0x075711d1
    2a90:	09400000 	0x09400000
    2a94:	000012b1 	clo.w	$r17,$r21
    2a98:	6711d209 	bge	$r16,$r9,-60976(0x311d0) # ffff3c68 <_RAM_DATA+0x7fff2c68>
    2a9c:	43000007 	beqz	$r0,2031616(0x1f0000) # 1f2a9c <_start-0x1be0d564>
    2aa0:	626c5f17 	blt	$r24,$r23,-103332(0x26c5c) # fffe96fc <_RAM_DATA+0x7ffe86fc>
    2aa4:	11d50900 	addu16i.d	$r0,$r8,30018(0x7542)
    2aa8:	00000406 	0x00000406
    2aac:	11f30944 	addu16i.d	$r4,$r10,31938(0x7cc2)
    2ab0:	d8090000 	0xd8090000
    2ab4:	00007507 	0x00007507
    2ab8:	16094c00 	lu32i.d	$r0,19040(0x4a60)
    2abc:	0900000f 	0x0900000f
    2ac0:	01c60ad9 	0x01c60ad9
    2ac4:	09500000 	vfmsub.s	$vr0,$vr0,$vr0,$vr0
    2ac8:	0000116d 	clo.w	$r13,$r11
    2acc:	9512dc09 	0x9512dc09
    2ad0:	54000005 	bl	1310720(0x140000) # 142ad0 <_start-0x1bebd530>
    2ad4:	00120109 	slt	$r9,$r8,$r0
    2ad8:	0ce00900 	0x0ce00900
    2adc:	0000024d 	0x0000024d
    2ae0:	11210958 	addu16i.d	$r24,$r10,18498(0x4842)
    2ae4:	e2090000 	0xe2090000
    2ae8:	0002410e 	0x0002410e
    2aec:	c4095c00 	0xc4095c00
    2af0:	09000012 	0x09000012
    2af4:	007509e3 	bstrins.w	$r3,$r15,0x15,0x2
    2af8:	00640000 	bstrins.w	$r0,$r0,0x4,0x0
    2afc:	0000750b 	0x0000750b
    2b00:	00059500 	alsl.w	$r0,$r8,$r5,0x4
    2b04:	05950c00 	0x05950c00
    2b08:	390c0000 	0x390c0000
    2b0c:	0c000001 	0x0c000001
    2b10:	000006e9 	0x000006e9
    2b14:	0000750c 	0x0000750c
    2b18:	040a0000 	csrrd	$r0,0x280
    2b1c:	000005a0 	0x000005a0
    2b20:	00059506 	alsl.w	$r6,$r8,$r5,0x4
    2b24:	12941a00 	addu16i.d	$r0,$r16,-23290(0xa506)
    2b28:	04280000 	csrrd	$r0,0xa00
    2b2c:	08023909 	0x08023909
    2b30:	000006e9 	0x000006e9
    2b34:	0010df1b 	add.d	$r27,$r24,$r23
    2b38:	023b0900 	slti	$r0,$r8,-318(0xec2)
    2b3c:	00007507 	0x00007507
    2b40:	ed1b0000 	0xed1b0000
    2b44:	0900000f 	0x0900000f
    2b48:	c30b0240 	0xc30b0240
    2b4c:	04000007 	csrrd	$r7,0x0
    2b50:	000e661b 	bytepick.d	$r27,$r16,$r25,0x4
    2b54:	02400900 	sltui	$r0,$r8,2(0x2)
    2b58:	0007c314 	alsl.wu	$r20,$r24,$r16,0x4
    2b5c:	e01b0800 	0xe01b0800
    2b60:	09000012 	0x09000012
    2b64:	c31e0240 	0xc31e0240
    2b68:	0c000007 	0x0c000007
    2b6c:	000f4d1b 	bytepick.d	$r27,$r8,$r19,0x6
    2b70:	02420900 	sltui	$r0,$r8,130(0x82)
    2b74:	00007508 	0x00007508
    2b78:	251b1000 	stptr.w	$r0,$r0,6928(0x1b10)
    2b7c:	0900000f 	0x0900000f
    2b80:	c3080243 	0xc3080243
    2b84:	14000009 	lu12i.w	$r9,0
    2b88:	0011e11b 	sub.d	$r27,$r8,$r24
    2b8c:	02450900 	sltui	$r0,$r8,322(0x142)
    2b90:	00007507 	0x00007507
    2b94:	511b3000 	b	72496(0x11b30) # 146c4 <_start-0x1bfeb93c>
    2b98:	09000011 	0x09000011
    2b9c:	19100246 	pcaddi	$r6,-491502(0x88012)
    2ba0:	34000001 	0x34000001
    2ba4:	000fe21b 	bytepick.d	$r27,$r16,$r24,0x7
    2ba8:	02480900 	sltui	$r0,$r8,514(0x202)
    2bac:	00007507 	0x00007507
    2bb0:	ad1b3800 	0xad1b3800
    2bb4:	09000010 	0x09000010
    2bb8:	de08024a 	0xde08024a
    2bbc:	3c000009 	0x3c000009
    2bc0:	000e951b 	bytepick.d	$r27,$r8,$r5,0x5
    2bc4:	024d0900 	sltui	$r0,$r8,834(0x342)
    2bc8:	0002bf13 	0x0002bf13
    2bcc:	d11b4000 	0xd11b4000
    2bd0:	0900000e 	0x0900000e
    2bd4:	7507024e 	xvssran.hu.w	$xr14,$xr18,$xr0
    2bd8:	44000000 	bnez	$r0,0 # 2bd8 <_start-0x1bffd428>
    2bdc:	000f701b 	bytepick.d	$r27,$r0,$r28,0x6
    2be0:	024f0900 	sltui	$r0,$r8,962(0x3c2)
    2be4:	0002bf13 	0x0002bf13
    2be8:	171b4800 	lu32i.d	$r0,-468416(0x8da40)
    2bec:	09000010 	0x09000010
    2bf0:	e4140250 	0xe4140250
    2bf4:	4c000009 	jirl	$r9,$r0,0
    2bf8:	0011c71b 	sub.d	$r27,$r24,$r17
    2bfc:	02530900 	sltui	$r0,$r8,1218(0x4c2)
    2c00:	00007507 	0x00007507
    2c04:	2a1b5000 	ld.bu	$r0,$r0,1748(0x6d4)
    2c08:	09000012 	0x09000012
    2c0c:	e9090254 	0xe9090254
    2c10:	54000006 	bl	1572864(0x180000) # 182c10 <_start-0x1be7d3f0>
    2c14:	0011c21b 	sub.d	$r27,$r16,$r16
    2c18:	02770900 	sltui	$r0,$r8,-574(0xdc2)
    2c1c:	00099e07 	bytepick.w	$r7,$r16,$r7,0x3
    2c20:	191c5800 	pcaddi	$r0,-466240(0x8e2c0)
    2c24:	09000011 	0x09000011
    2c28:	f013027b 	0xf013027b
    2c2c:	48000003 	bceqz	$fcc0,786432(0xc0000) # c2c2c <_start-0x1bf3d3d4>
    2c30:	0fb61c01 	0x0fb61c01
    2c34:	7c090000 	0x7c090000
    2c38:	03ad1202 	ori	$r2,$r16,0xb44
    2c3c:	014c0000 	0x014c0000
    2c40:	000f9d1c 	bytepick.d	$r28,$r8,$r7,0x7
    2c44:	02800900 	addi.w	$r0,$r8,2(0x2)
    2c48:	0009f50c 	bytepick.w	$r12,$r8,$r29,0x3
    2c4c:	1c02dc00 	pcaddu12i	$r0,5856(0x16e0)
    2c50:	00001269 	clo.w	$r9,$r19
    2c54:	10028509 	addu16i.d	$r9,$r8,161(0xa1)
    2c58:	00000784 	0x00000784
    2c5c:	461c02e0 	bnez	$r23,138240(0x21c00) # 2485c <_start-0x1bfdb7a4>
    2c60:	09000011 	0x09000011
    2c64:	010a0286 	0x010a0286
    2c68:	ec00000a 	0xec00000a
    2c6c:	040a0002 	csrrd	$r2,0x280
    2c70:	000000a7 	0x000000a7
    2c74:	0577040a 	0x0577040a
    2c78:	750b0000 	xvssrarn.hu.w	$xr0,$xr0,$xr0
    2c7c:	13000000 	addu16i.d	$r0,$r0,-16384(0xc000)
    2c80:	0c000007 	0x0c000007
    2c84:	00000595 	0x00000595
    2c88:	0001390c 	0x0001390c
    2c8c:	01190c00 	0x01190c00
    2c90:	750c0000 	xvbitclr.b	$xr0,$xr0,$xr0
    2c94:	00000000 	0x00000000
    2c98:	06f5040a 	0x06f5040a
    2c9c:	d20b0000 	0xd20b0000
    2ca0:	37000001 	0x37000001
    2ca4:	0c000007 	0x0c000007
    2ca8:	00000595 	0x00000595
    2cac:	0001390c 	0x0001390c
    2cb0:	01d20c00 	0x01d20c00
    2cb4:	750c0000 	xvbitclr.b	$xr0,$xr0,$xr0
    2cb8:	00000000 	0x00000000
    2cbc:	0719040a 	0x0719040a
    2cc0:	750b0000 	xvssrarn.hu.w	$xr0,$xr0,$xr0
    2cc4:	51000000 	b	65536(0x10000) # 12cc4 <_start-0x1bfed33c>
    2cc8:	0c000007 	0x0c000007
    2ccc:	00000595 	0x00000595
    2cd0:	0001390c 	0x0001390c
    2cd4:	040a0000 	csrrd	$r0,0x280
    2cd8:	0000073d 	0x0000073d
    2cdc:	00002c0e 	ctz.d	$r14,$r0
    2ce0:	00076700 	alsl.wu	$r0,$r24,$r25,0x3
    2ce4:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2ce8:	00020000 	0x00020000
    2cec:	00002c0e 	ctz.d	$r14,$r0
    2cf0:	00077700 	alsl.wu	$r0,$r24,$r29,0x3
    2cf4:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2cf8:	00000000 	0x00000000
    2cfc:	000ef513 	bytepick.d	$r19,$r8,$r29,0x5
    2d00:	011d0900 	0x011d0900
    2d04:	0004341a 	alsl.w	$r26,$r0,$r13,0x1
    2d08:	12521d00 	addu16i.d	$r0,$r8,-27513(0x9487)
    2d0c:	090c0000 	0x090c0000
    2d10:	bd080121 	0xbd080121
    2d14:	1b000007 	pcalau12i	$r7,-524288(0x80000)
    2d18:	00000279 	0x00000279
    2d1c:	11012309 	addu16i.d	$r9,$r24,16456(0x4048)
    2d20:	000007bd 	0x000007bd
    2d24:	12071b00 	addu16i.d	$r0,$r24,-32314(0x81c6)
    2d28:	24090000 	ldptr.w	$r0,$r0,2304(0x900)
    2d2c:	00750701 	bstrins.w	$r1,$r24,0x15,0x1
    2d30:	1b040000 	pcalau12i	$r0,-516096(0x82000)
    2d34:	00000fd5 	0x00000fd5
    2d38:	0b012509 	0x0b012509
    2d3c:	000007c3 	0x000007c3
    2d40:	040a0008 	csrrd	$r8,0x280
    2d44:	00000784 	0x00000784
    2d48:	0777040a 	0x0777040a
    2d4c:	c91d0000 	0xc91d0000
    2d50:	0e00000e 	0x0e00000e
    2d54:	08013d09 	0x08013d09
    2d58:	00000802 	0x00000802
    2d5c:	0012d41b 	sltu	$r27,$r0,$r21
    2d60:	013e0900 	0x013e0900
    2d64:	00080212 	bytepick.w	$r18,$r16,$r0,0x0
    2d68:	211b0000 	sc.w	$r0,$r0,6912(0x1b00)
    2d6c:	09000010 	0x09000010
    2d70:	0212013f 	slti	$r31,$r9,1152(0x480)
    2d74:	06000008 	cacop	0x8,$r0,0
    2d78:	00123f1b 	slt	$r27,$r24,$r15
    2d7c:	01400900 	0x01400900
    2d80:	00003a12 	revb.2w	$r18,$r16
    2d84:	0e000c00 	0x0e000c00
    2d88:	0000003a 	0x0000003a
    2d8c:	00000812 	0x00000812
    2d90:	0000810f 	0x0000810f
    2d94:	1e000200 	pcaddu18i	$r0,16(0x10)
    2d98:	025809d0 	sltui	$r16,$r14,1538(0x602)
    2d9c:	00092707 	bytepick.w	$r7,$r24,$r9,0x2
    2da0:	12b71b00 	addu16i.d	$r0,$r24,-21050(0xadc6)
    2da4:	5a090000 	beq	$r0,$r0,-128768(0x20900) # fffe36a4 <_RAM_DATA+0x7ffe26a4>
    2da8:	00811802 	bstrins.d	$r2,$r0,0x1,0x6
    2dac:	1b000000 	pcalau12i	$r0,-524288(0x80000)
    2db0:	00001271 	clo.w	$r17,$r19
    2db4:	12025b09 	addu16i.d	$r9,$r24,-32618(0x8096)
    2db8:	000006e9 	0x000006e9
    2dbc:	0edb1b04 	0x0edb1b04
    2dc0:	5c090000 	bne	$r0,$r0,2304(0x900) # 36c0 <_start-0x1bffc940>
    2dc4:	09271002 	vfmadd.d	$vr2,$vr0,$vr4,$vr14
    2dc8:	1b080000 	pcalau12i	$r0,-507904(0x84000)
    2dcc:	000011a5 	clo.w	$r5,$r13
    2dd0:	17025d09 	lu32i.d	$r9,-519448(0x812e8)
    2dd4:	000002d5 	0x000002d5
    2dd8:	0ff41b24 	0x0ff41b24
    2ddc:	5e090000 	bne	$r0,$r0,-128768(0x20900) # fffe36dc <_RAM_DATA+0x7ffe26dc>
    2de0:	00750f02 	bstrins.w	$r2,$r24,0x15,0x3
    2de4:	1b480000 	pcalau12i	$r0,-376832(0xa4000)
    2de8:	00000274 	0x00000274
    2dec:	2c025f09 	vld	$vr9,$r24,151(0x97)
    2df0:	0000006e 	0x0000006e
    2df4:	0e131b50 	0x0e131b50
    2df8:	60090000 	blt	$r0,$r0,2304(0x900) # 36f8 <_start-0x1bffc908>
    2dfc:	07c91a02 	0x07c91a02
    2e00:	1b580000 	pcalau12i	$r0,-344064(0xac000)
    2e04:	00000f86 	0x00000f86
    2e08:	16026109 	lu32i.d	$r9,4872(0x1308)
    2e0c:	00000241 	0x00000241
    2e10:	127e1b68 	addu16i.d	$r8,$r27,-24698(0x9f86)
    2e14:	62090000 	blt	$r0,$r0,-128768(0x20900) # fffe3714 <_RAM_DATA+0x7ffe2714>
    2e18:	02411602 	sltui	$r2,$r16,69(0x45)
    2e1c:	1b700000 	pcalau12i	$r0,-294912(0xb8000)
    2e20:	00000df8 	0x00000df8
    2e24:	16026309 	lu32i.d	$r9,4888(0x1318)
    2e28:	00000241 	0x00000241
    2e2c:	11d71b78 	addu16i.d	$r24,$r27,30150(0x75c6)
    2e30:	64090000 	bge	$r0,$r0,2304(0x900) # 3730 <_start-0x1bffc8d0>
    2e34:	09371002 	0x09371002
    2e38:	1b800000 	pcalau12i	$r0,-262144(0xc0000)
    2e3c:	00000e18 	0x00000e18
    2e40:	10026509 	addu16i.d	$r9,$r8,153(0x99)
    2e44:	00000947 	0x00000947
    2e48:	12321b88 	addu16i.d	$r8,$r28,-29562(0x8c86)
    2e4c:	66090000 	bge	$r0,$r0,-128768(0x20900) # fffe374c <_RAM_DATA+0x7ffe274c>
    2e50:	00750f02 	bstrins.w	$r2,$r24,0x15,0x3
    2e54:	1ba00000 	pcalau12i	$r0,-196608(0xd0000)
    2e58:	00000e58 	0x00000e58
    2e5c:	16026709 	lu32i.d	$r9,4920(0x1338)
    2e60:	00000241 	0x00000241
    2e64:	0fa71ba4 	0x0fa71ba4
    2e68:	68090000 	bltu	$r0,$r0,2304(0x900) # 3768 <_start-0x1bffc898>
    2e6c:	02411602 	sltui	$r2,$r16,69(0x45)
    2e70:	1bac0000 	pcalau12i	$r0,-172032(0xd6000)
    2e74:	00000f57 	0x00000f57
    2e78:	16026909 	lu32i.d	$r9,4936(0x1348)
    2e7c:	00000241 	0x00000241
    2e80:	103d1bb4 	addu16i.d	$r20,$r29,3910(0xf46)
    2e84:	6a090000 	bltu	$r0,$r0,-128768(0x20900) # fffe3784 <_RAM_DATA+0x7ffe2784>
    2e88:	02411602 	sltui	$r2,$r16,69(0x45)
    2e8c:	1bbc0000 	pcalau12i	$r0,-139264(0xde000)
    2e90:	00000f75 	0x00000f75
    2e94:	16026b09 	lu32i.d	$r9,4952(0x1358)
    2e98:	00000241 	0x00000241
    2e9c:	10dd1bc4 	addu16i.d	$r4,$r30,14150(0x3746)
    2ea0:	6c090000 	bgeu	$r0,$r0,2304(0x900) # 37a0 <_start-0x1bffc860>
    2ea4:	00750802 	bstrins.w	$r2,$r0,0x15,0x2
    2ea8:	00cc0000 	bstrpick.d	$r0,$r0,0xc,0x0
    2eac:	0000a70e 	0x0000a70e
    2eb0:	00093700 	bytepick.w	$r0,$r24,$r13,0x2
    2eb4:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2eb8:	00190000 	srl.d	$r0,$r0,$r0
    2ebc:	0000a70e 	0x0000a70e
    2ec0:	00094700 	bytepick.w	$r0,$r24,$r17,0x2
    2ec4:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2ec8:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
    2ecc:	0000a70e 	0x0000a70e
    2ed0:	00095700 	bytepick.w	$r0,$r24,$r21,0x2
    2ed4:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2ed8:	00170000 	sll.w	$r0,$r0,$r0
    2edc:	7109f01e 	vssrlrn.wu.d	$vr30,$vr0,$vr28
    2ee0:	097e0702 	0x097e0702
    2ee4:	c21b0000 	0xc21b0000
    2ee8:	0900000e 	0x0900000e
    2eec:	7e1b0274 	0x7e1b0274
    2ef0:	00000009 	0x00000009
    2ef4:	0012e81b 	sltu	$r27,$r0,$r26
    2ef8:	02750900 	sltui	$r0,$r8,-702(0xd42)
    2efc:	00098e18 	bytepick.w	$r24,$r16,$r3,0x3
    2f00:	0e007800 	0x0e007800
    2f04:	0000042e 	0x0000042e
    2f08:	0000098e 	0x0000098e
    2f0c:	0000810f 	0x0000810f
    2f10:	0e001d00 	0x0e001d00
    2f14:	00000081 	0x00000081
    2f18:	0000099e 	0x0000099e
    2f1c:	0000810f 	0x0000810f
    2f20:	1f001d00 	pcaddu18i	$r0,-524056(0x800e8)
    2f24:	025609f0 	sltui	$r16,$r15,1410(0x582)
    2f28:	0009c303 	bytepick.w	$r3,$r24,$r16,0x3
    2f2c:	12942000 	addu16i.d	$r0,$r0,-23288(0xa508)
    2f30:	6d090000 	bgeu	$r0,$r0,67840(0x10900) # 13830 <_start-0x1bfec7d0>
    2f34:	08120b02 	fmadd.s	$f2,$f24,$f2,$f4
    2f38:	ba200000 	0xba200000
    2f3c:	09000011 	0x09000011
    2f40:	570b0276 	bl	-103085312(0x9db0b00) # f9db3a40 <_RAM_DATA+0x79db2a40>
    2f44:	00000009 	0x00000009
    2f48:	0000a70e 	0x0000a70e
    2f4c:	0009d300 	bytepick.w	$r0,$r24,$r20,0x3
    2f50:	00810f00 	bstrins.d	$r0,$r24,0x1,0x3
    2f54:	00180000 	sra.w	$r0,$r0,$r0
    2f58:	0009de21 	bytepick.w	$r1,$r17,$r23,0x3
    2f5c:	05950c00 	0x05950c00
    2f60:	0a000000 	0x0a000000
    2f64:	0009d304 	bytepick.w	$r4,$r24,$r20,0x3
    2f68:	bf040a00 	0xbf040a00
    2f6c:	21000002 	sc.w	$r2,$r0,0
    2f70:	000009f5 	0x000009f5
    2f74:	0000750c 	0x0000750c
    2f78:	040a0000 	csrrd	$r0,0x280
    2f7c:	000009fb 	0x000009fb
    2f80:	09ea040a 	vfnmsub.d	$vr10,$vr0,$vr1,$vr20
    2f84:	770e0000 	0x770e0000
    2f88:	11000007 	addu16i.d	$r7,$r0,16384(0x4000)
    2f8c:	0f00000a 	0x0f00000a
    2f90:	00000081 	0x00000081
    2f94:	81220002 	0x81220002
    2f98:	09000011 	0x09000011
    2f9c:	951702fa 	0x951702fa
    2fa0:	22000005 	ll.d	$r5,$r0,0
    2fa4:	0000117a 	clo.w	$r26,$r11
    2fa8:	1e02fb09 	pcaddu18i	$r9,6104(0x17d8)
    2fac:	0000059b 	0x0000059b
    2fb0:	06040802 	cacop	0x2,$r0,258(0x102)
    2fb4:	02000011 	slti	$r17,$r0,0
    2fb8:	11010410 	addu16i.d	$r16,$r0,16449(0x4041)
    2fbc:	58230000 	beq	$r0,$r0,8960(0x2300) # 52bc <_start-0x1bffad44>
    2fc0:	05000012 	0x05000012
    2fc4:	00007504 	0x00007504
    2fc8:	02530a00 	sltui	$r0,$r16,1218(0x4c2)
    2fcc:	000a6506 	0x000a6506
    2fd0:	11972400 	addu16i.d	$r0,$r0,26057(0x65c9)
    2fd4:	257f0000 	stptr.w	$r0,$r0,32512(0x7f00)
    2fd8:	0000102f 	clo.w	$r15,$r1
    2fdc:	0dd32500 	0x0dd32500
    2fe0:	25010000 	stptr.w	$r0,$r0,256(0x100)
    2fe4:	00000f07 	0x00000f07
    2fe8:	b7220002 	0xb7220002
    2fec:	0a000010 	0x0a000010
    2ff0:	3923025e 	0x3923025e
    2ff4:	2600000a 	ldptr.d	$r10,$r0,0
    2ff8:	00000e06 	0x00000e06
    2ffc:	0a01d301 	0x0a01d301
    3000:	00000094 	0x00000094
    3004:	00000305 	0x00000305
    3008:	44278000 	bnez	$r0,10112(0x2780) # 5788 <_start-0x1bffa878>
    300c:	01000012 	0x01000012
    3010:	e406020b 	0xe406020b
    3014:	281c001b 	ld.b	$r27,$r0,1792(0x700)
    3018:	01000000 	0x01000000
    301c:	000aa69c 	0x000aa69c
    3020:	1c002800 	pcaddu12i	$r0,320(0x140)
    3024:	12241c00 	addu16i.d	$r0,$r0,-30457(0x8907)
    3028:	29000000 	st.b	$r0,$r0,0
    302c:	00001114 	clo.w	$r20,$r8
    3030:	0501f901 	0x0501f901
    3034:	00000075 	0x00000075
    3038:	1c001b6c 	pcaddu12i	$r12,219(0xdb)
    303c:	00000078 	0x00000078
    3040:	0acb9c01 	0x0acb9c01
    3044:	78280000 	0x78280000
    3048:	cb1c001b 	0xcb1c001b
    304c:	0000000a 	0x0000000a
    3050:	00116129 	sub.w	$r9,$r9,$r24
    3054:	01d40100 	0x01d40100
    3058:	00007505 	0x00007505
    305c:	001a0800 	0x001a0800
    3060:	0001641c 	0x0001641c
    3064:	d49c0100 	0xd49c0100
    3068:	2a00000b 	ld.bu	$r11,$r0,0
    306c:	1c001a28 	pcaddu12i	$r8,209(0xd1)
    3070:	00000028 	0x00000028
    3074:	00000b07 	0x00000b07
    3078:	0100642b 	0x0100642b
    307c:	810201d8 	0x810201d8
    3080:	f5000000 	0xf5000000
    3084:	ef000014 	0xef000014
    3088:	00000014 	0x00000014
    308c:	001a882a 	0x001a882a
    3090:	0000281c 	cto.d	$r28,$r0
    3094:	000b2800 	0x000b2800
    3098:	00642b00 	bstrins.w	$r0,$r24,0x4,0xa
    309c:	0401e001 	csrrd	$r1,0x78
    30a0:	00000081 	0x00000081
    30a4:	00001529 	clz.w	$r9,$r9
    30a8:	00001523 	clz.w	$r3,$r9
    30ac:	1af42a00 	pcalau12i	$r0,500048(0x7a150)
    30b0:	00281c00 	0x00281c00
    30b4:	0b490000 	0x0b490000
    30b8:	642b0000 	bge	$r0,$r0,11008(0x2b00) # 5bb8 <_start-0x1bffa448>
    30bc:	01ec0100 	0x01ec0100
    30c0:	00008104 	0x00008104
    30c4:	00155b00 	or	$r0,$r24,$r22
    30c8:	00155500 	or	$r0,$r8,$r21
    30cc:	282a0000 	ld.b	$r0,$r0,-1408(0xa80)
    30d0:	281c001b 	ld.b	$r27,$r0,1792(0x700)
    30d4:	6a000000 	bltu	$r0,$r0,-131072(0x20000) # fffe30d4 <_RAM_DATA+0x7ffe20d4>
    30d8:	2b00000b 	fld.s	$f11,$r0,0
    30dc:	f2010064 	0xf2010064
    30e0:	00810201 	bstrins.d	$r1,$r16,0x1,0x0
    30e4:	158d0000 	lu12i.w	$r0,-235520(0xc6800)
    30e8:	15870000 	lu12i.w	$r0,-247808(0xc3800)
    30ec:	28000000 	ld.b	$r0,$r0,0
    30f0:	1c001a18 	pcaddu12i	$r24,208(0xd0)
    30f4:	00001230 	clo.w	$r16,$r17
    30f8:	001a5428 	0x001a5428
    30fc:	00123c1c 	slt	$r28,$r0,$r15
    3100:	1a882c00 	pcalau12i	$r0,278880(0x44160)
    3104:	12481c00 	addu16i.d	$r0,$r0,-28153(0x9207)
    3108:	0b930000 	0x0b930000
    310c:	012d0000 	0x012d0000
    3110:	28030554 	ld.b	$r20,$r10,193(0xc1)
    3114:	001c0029 	mul.w	$r9,$r1,$r0
    3118:	001ac028 	0x001ac028
    311c:	0012541c 	slt	$r28,$r0,$r21
    3120:	1af42c00 	pcalau12i	$r0,500064(0x7a160)
    3124:	12481c00 	addu16i.d	$r0,$r0,-28153(0x9207)
    3128:	0bb30000 	0x0bb30000
    312c:	012d0000 	0x012d0000
    3130:	44030554 	bnez	$r10,-3144956(0x500304) # ffd03434 <_RAM_DATA+0x7fd02434>
    3134:	001c0029 	mul.w	$r9,$r1,$r0
    3138:	001b282c 	rotr.w	$r12,$r1,$r10
    313c:	0012481c 	slt	$r28,$r0,$r18
    3140:	000bca00 	0x000bca00
    3144:	54012d00 	bl	67109164(0x400012c) # 4003270 <_start-0x17ffcd90>
    3148:	29600305 	st.h	$r5,$r24,-2048(0x800)
    314c:	28001c00 	ld.b	$r0,$r0,7(0x7)
    3150:	1c001b54 	pcaddu12i	$r20,218(0xda)
    3154:	00001224 	clo.w	$r4,$r17
    3158:	0e502e00 	0x0e502e00
    315c:	80010000 	0x80010000
    3160:	00007505 	0x00007505
    3164:	00000000 	0x00000000
    3168:	00087800 	bytepick.w	$r0,$r0,$r30,0x0
    316c:	669c0100 	bge	$r8,$r0,-91136(0x29c00) # fffecd6c <_RAM_DATA+0x7ffebd6c>
    3170:	2f000010 	0x2f000010
    3174:	82010063 	0x82010063
    3178:	0000a707 	0x0000a707
    317c:	0015d700 	xor	$r0,$r24,$r21
    3180:	0015b900 	xor	$r0,$r8,$r14
    3184:	0f303000 	0x0f303000
    3188:	83010000 	0x83010000
    318c:	00106607 	add.w	$r7,$r16,$r25
    3190:	90910300 	0x90910300
    3194:	1052307f 	addu16i.d	$r31,$r3,5260(0x148c)
    3198:	84010000 	0x84010000
    319c:	00107607 	add.w	$r7,$r16,$r29
    31a0:	a0910300 	0xa0910300
    31a4:	706f2f7d 	0x706f2f7d
    31a8:	08850100 	0x08850100
    31ac:	0000013b 	0x0000013b
    31b0:	00001688 	clz.w	$r8,$r20
    31b4:	00001686 	clz.w	$r6,$r20
    31b8:	01007010 	0x01007010
    31bc:	108c0886 	addu16i.d	$r6,$r4,8962(0x2302)
    31c0:	91030000 	0x91030000
    31c4:	1e317d80 	pcaddu18i	$r0,101356(0x18bec)
    31c8:	0100000f 	0x0100000f
    31cc:	06e90887 	0x06e90887
    31d0:	16b50000 	lu32i.d	$r0,370688(0x5a800)
    31d4:	169b0000 	lu32i.d	$r0,317440(0x4d800)
    31d8:	632f0000 	blt	$r0,$r0,-53504(0x32f00) # ffff60d8 <_RAM_DATA+0x7fff50d8>
    31dc:	88010070 	0x88010070
    31e0:	00003308 	revb.2h	$r8,$r24
    31e4:	00178200 	srl.w	$r0,$r16,$r0
    31e8:	00176400 	sll.w	$r0,$r0,$r25
    31ec:	00692f00 	bstrins.w	$r0,$r24,0x9,0xb
    31f0:	330c8801 	0x330c8801
    31f4:	82000000 	0x82000000
    31f8:	30000018 	0x30000018
    31fc:	2f000018 	0x2f000018
    3200:	8801006a 	0x8801006a
    3204:	0000330f 	revb.2h	$r15,$r24
    3208:	001a7d00 	0x001a7d00
    320c:	001a4f00 	0x001a4f00
    3210:	006b2f00 	bstrins.w	$r0,$r24,0xb,0xb
    3214:	33128801 	xvstelm.d	$xr1,$r0,-752(0x510),0x0
    3218:	8b000000 	0x8b000000
    321c:	8500001b 	0x8500001b
    3220:	2f00001b 	0x2f00001b
    3224:	006d756e 	bstrins.w	$r14,$r11,0xd,0x1d
    3228:	33158801 	xvstelm.d	$xr1,$r0,784(0x310),0x1
    322c:	ba000000 	0xba000000
    3230:	b400001b 	0xb400001b
    3234:	2f00001b 	0x2f00001b
    3238:	89010068 	0x89010068
    323c:	00003308 	revb.2h	$r8,$r24
    3240:	001bf900 	rotr.d	$r0,$r8,$r30
    3244:	001be300 	rotr.d	$r0,$r24,$r24
    3248:	6d742f00 	bgeu	$r24,$r0,95276(0x1742c) # 1a674 <_start-0x1bfe598c>
    324c:	8a010070 	0x8a010070
    3250:	00007506 	0x00007506
    3254:	001c9100 	mulh.w	$r0,$r8,$r4
    3258:	001c7b00 	mul.w	$r0,$r24,$r30
    325c:	113a3000 	addu16i.d	$r0,$r0,20108(0x4e8c)
    3260:	8b010000 	0x8b010000
    3264:	00109c07 	add.d	$r7,$r0,$r7
    3268:	f0910300 	0xf0910300
    326c:	0c253274 	0x0c253274
    3270:	96010000 	0x96010000
    3274:	00000001 	0x00000001
    3278:	00002c00 	ctz.d	$r0,$r0
    327c:	12600000 	addu16i.d	$r0,$r0,-26624(0x9800)
    3280:	0d0b0000 	0x0d0b0000
    3284:	012d0000 	0x012d0000
    3288:	00030554 	0x00030554
    328c:	00000000 	0x00000000
    3290:	0000002c 	0x0000002c
    3294:	00126c00 	slt	$r0,$r0,$r27
    3298:	000d2a00 	bytepick.d	$r0,$r16,$r10,0x2
    329c:	54012d00 	bl	67109164(0x400012c) # 40033c8 <_start-0x17ffcc38>
    32a0:	8800910d 	0x8800910d
    32a4:	00892200 	bstrins.d	$r0,$r16,0x9,0x8
    32a8:	1c70081c 	pcaddu12i	$r28,229440(0x38040)
    32ac:	2c000194 	vld	$vr20,$r12,0
    32b0:	00000000 	0x00000000
    32b4:	0000126c 	clo.w	$r12,$r19
    32b8:	00000d3d 	0x00000d3d
    32bc:	0154012d 	0x0154012d
    32c0:	002c0038 	alsl.d	$r24,$r1,$r0,0x1
    32c4:	6c000000 	bgeu	$r0,$r0,0 # 32c4 <_start-0x1bffcd3c>
    32c8:	51000012 	b	4784128(0x490000) # 4932c8 <_start-0x1bb6cd38>
    32cc:	2d00000d 	0x2d00000d
    32d0:	08025401 	0x08025401
    32d4:	002c0020 	alsl.d	$r0,$r1,$r0,0x1
    32d8:	6c000000 	bgeu	$r0,$r0,0 # 32d8 <_start-0x1bffcd28>
    32dc:	64000012 	bge	$r0,$r18,0 # 32dc <_start-0x1bffcd24>
    32e0:	2d00000d 	0x2d00000d
    32e4:	38015401 	0x38015401
    32e8:	00002800 	cto.d	$r0,$r0
    32ec:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    32f0:	002c0000 	alsl.d	$r0,$r0,$r0,0x1
    32f4:	6c000000 	bgeu	$r0,$r0,0 # 32f4 <_start-0x1bffcd0c>
    32f8:	80000012 	0x80000012
    32fc:	2d00000d 	0x2d00000d
    3300:	38015401 	0x38015401
    3304:	00002800 	cto.d	$r0,$r0
    3308:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    330c:	00280000 	0x00280000
    3310:	78000000 	0x78000000
    3314:	28000012 	ld.b	$r18,$r0,0
    3318:	00000000 	0x00000000
    331c:	00001278 	clo.w	$r24,$r19
    3320:	00000028 	0x00000028
    3324:	00127800 	slt	$r0,$r0,$r30
    3328:	00002c00 	ctz.d	$r0,$r0
    332c:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    3330:	0db70000 	0x0db70000
    3334:	012d0000 	0x012d0000
    3338:	00380154 	0x00380154
    333c:	0000002c 	0x0000002c
    3340:	00126c00 	slt	$r0,$r0,$r27
    3344:	000dcb00 	bytepick.d	$r0,$r24,$r18,0x3
    3348:	54012d00 	bl	67109164(0x400012c) # 4003474 <_start-0x17ffcb8c>
    334c:	00200802 	div.w	$r2,$r0,$r2
    3350:	0000002c 	0x0000002c
    3354:	00126c00 	slt	$r0,$r0,$r27
    3358:	000dde00 	bytepick.d	$r0,$r16,$r23,0x3
    335c:	54012d00 	bl	67109164(0x400012c) # 4003488 <_start-0x17ffcb78>
    3360:	2c003801 	vld	$vr1,$r0,14(0xe)
    3364:	00000000 	0x00000000
    3368:	0000126c 	clo.w	$r12,$r19
    336c:	00000dfd 	0x00000dfd
    3370:	0d54012d 	vshuf.b	$vr13,$vr9,$vr0,$vr8
    3374:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    3378:	1c008922 	pcaddu12i	$r2,1097(0x449)
    337c:	941c7008 	0x941c7008
    3380:	002c0001 	alsl.d	$r1,$r0,$r0,0x1
    3384:	6c000000 	bgeu	$r0,$r0,0 # 3384 <_start-0x1bffcc7c>
    3388:	10000012 	addu16i.d	$r18,$r0,0
    338c:	2d00000e 	0x2d00000e
    3390:	38015401 	0x38015401
    3394:	00002c00 	ctz.d	$r0,$r0
    3398:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    339c:	0e240000 	0x0e240000
    33a0:	012d0000 	0x012d0000
    33a4:	20080254 	ll.w	$r20,$r18,2048(0x800)
    33a8:	00002c00 	ctz.d	$r0,$r0
    33ac:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    33b0:	0e370000 	0x0e370000
    33b4:	012d0000 	0x012d0000
    33b8:	00380154 	0x00380154
    33bc:	00000028 	0x00000028
    33c0:	00126c00 	slt	$r0,$r0,$r27
    33c4:	00002c00 	ctz.d	$r0,$r0
    33c8:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    33cc:	0e530000 	0x0e530000
    33d0:	012d0000 	0x012d0000
    33d4:	00380154 	0x00380154
    33d8:	0000002c 	0x0000002c
    33dc:	00126c00 	slt	$r0,$r0,$r27
    33e0:	000e6600 	bytepick.d	$r0,$r16,$r25,0x4
    33e4:	54012d00 	bl	67109164(0x400012c) # 4003510 <_start-0x17ffcaf0>
    33e8:	2c003801 	vld	$vr1,$r0,14(0xe)
    33ec:	00000000 	0x00000000
    33f0:	0000126c 	clo.w	$r12,$r19
    33f4:	00000e85 	0x00000e85
    33f8:	0d54012d 	vshuf.b	$vr13,$vr9,$vr0,$vr8
    33fc:	00880091 	bstrins.d	$r17,$r4,0x8,0x0
    3400:	1c008a22 	pcaddu12i	$r2,1105(0x451)
    3404:	941c7008 	0x941c7008
    3408:	002c0001 	alsl.d	$r1,$r0,$r0,0x1
    340c:	6c000000 	bgeu	$r0,$r0,0 # 340c <_start-0x1bffcbf4>
    3410:	98000012 	0x98000012
    3414:	2d00000e 	0x2d00000e
    3418:	38015401 	0x38015401
    341c:	00002c00 	ctz.d	$r0,$r0
    3420:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    3424:	0eac0000 	0x0eac0000
    3428:	012d0000 	0x012d0000
    342c:	20080254 	ll.w	$r20,$r18,2048(0x800)
    3430:	00002c00 	ctz.d	$r0,$r0
    3434:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    3438:	0ebf0000 	0x0ebf0000
    343c:	012d0000 	0x012d0000
    3440:	00380154 	0x00380154
    3444:	0000002c 	0x0000002c
    3448:	00126c00 	slt	$r0,$r0,$r27
    344c:	000ed200 	bytepick.d	$r0,$r16,$r20,0x5
    3450:	54012d00 	bl	67109164(0x400012c) # 400357c <_start-0x17ffca84>
    3454:	2c003801 	vld	$vr1,$r0,14(0xe)
    3458:	00000000 	0x00000000
    345c:	0000126c 	clo.w	$r12,$r19
    3460:	00000ee6 	0x00000ee6
    3464:	0254012d 	sltui	$r13,$r9,1280(0x500)
    3468:	2c002008 	vld	$vr8,$r0,8(0x8)
    346c:	00000000 	0x00000000
    3470:	0000126c 	clo.w	$r12,$r19
    3474:	00000ef9 	0x00000ef9
    3478:	0154012d 	0x0154012d
    347c:	002c0038 	alsl.d	$r24,$r1,$r0,0x1
    3480:	6c000000 	bgeu	$r0,$r0,0 # 3480 <_start-0x1bffcb80>
    3484:	15000012 	lu12i.w	$r18,-524288(0x80000)
    3488:	2d00000f 	0x2d00000f
    348c:	910a5401 	0x910a5401
    3490:	22008800 	ll.d	$r0,$r0,136(0x88)
    3494:	941c7008 	0x941c7008
    3498:	002c0001 	alsl.d	$r1,$r0,$r0,0x1
    349c:	6c000000 	bgeu	$r0,$r0,0 # 349c <_start-0x1bffcb64>
    34a0:	34000012 	0x34000012
    34a4:	2d00000f 	0x2d00000f
    34a8:	910d5401 	0x910d5401
    34ac:	22008800 	ll.d	$r0,$r0,136(0x88)
    34b0:	081c008a 	fmadd.s	$f10,$f4,$f0,$f24
    34b4:	01941c70 	0x01941c70
    34b8:	00002c00 	ctz.d	$r0,$r0
    34bc:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    34c0:	0f530000 	0x0f530000
    34c4:	012d0000 	0x012d0000
    34c8:	00910d54 	bstrins.d	$r20,$r10,0x11,0x3
    34cc:	8a220088 	0x8a220088
    34d0:	70081c00 	vslt.bu	$vr0,$vr0,$vr7
    34d4:	0001941c 	0x0001941c
    34d8:	0000002c 	0x0000002c
    34dc:	00126c00 	slt	$r0,$r0,$r27
    34e0:	000f6600 	bytepick.d	$r0,$r16,$r25,0x6
    34e4:	54012d00 	bl	67109164(0x400012c) # 4003610 <_start-0x17ffc9f0>
    34e8:	2c003801 	vld	$vr1,$r0,14(0xe)
    34ec:	00000000 	0x00000000
    34f0:	0000126c 	clo.w	$r12,$r19
    34f4:	00000f7a 	0x00000f7a
    34f8:	0254012d 	sltui	$r13,$r9,1280(0x500)
    34fc:	2c002008 	vld	$vr8,$r0,8(0x8)
    3500:	00000000 	0x00000000
    3504:	0000126c 	clo.w	$r12,$r19
    3508:	00000f8d 	0x00000f8d
    350c:	0154012d 	0x0154012d
    3510:	002c0038 	alsl.d	$r24,$r1,$r0,0x1
    3514:	6c000000 	bgeu	$r0,$r0,0 # 3514 <_start-0x1bffcaec>
    3518:	a0000012 	0xa0000012
    351c:	2d00000f 	0x2d00000f
    3520:	38015401 	0x38015401
    3524:	00002c00 	ctz.d	$r0,$r0
    3528:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    352c:	0fb40000 	0x0fb40000
    3530:	012d0000 	0x012d0000
    3534:	20080254 	ll.w	$r20,$r18,2048(0x800)
    3538:	00002c00 	ctz.d	$r0,$r0
    353c:	126c0000 	addu16i.d	$r0,$r0,-25856(0x9b00)
    3540:	0fc70000 	0x0fc70000
    3544:	012d0000 	0x012d0000
    3548:	00380154 	0x00380154
    354c:	0000002c 	0x0000002c
    3550:	00126c00 	slt	$r0,$r0,$r27
    3554:	000fe300 	bytepick.d	$r0,$r24,$r24,0x7
    3558:	54012d00 	bl	67109164(0x400012c) # 4003684 <_start-0x17ffc97c>
    355c:	8800910a 	0x8800910a
    3560:	70082200 	vslt.bu	$vr0,$vr16,$vr8
    3564:	0001941c 	0x0001941c
    3568:	0000002c 	0x0000002c
    356c:	00128400 	sltu	$r0,$r0,$r1
    3570:	000ff800 	bytepick.d	$r0,$r0,$r30,0x7
    3574:	54012d00 	bl	67109164(0x400012c) # 40036a0 <_start-0x17ffc960>
    3578:	7da09103 	0x7da09103
    357c:	00002c00 	ctz.d	$r0,$r0
    3580:	12840000 	addu16i.d	$r0,$r0,-24320(0xa100)
    3584:	100f0000 	addu16i.d	$r0,$r0,960(0x3c0)
    3588:	012d0000 	0x012d0000
    358c:	00030554 	0x00030554
    3590:	00000000 	0x00000000
    3594:	0000002c 	0x0000002c
    3598:	00128400 	sltu	$r0,$r0,$r1
    359c:	00102400 	add.w	$r0,$r0,$r9
    35a0:	54012d00 	bl	67109164(0x400012c) # 40036cc <_start-0x17ffc934>
    35a4:	7da09103 	0x7da09103
    35a8:	00003300 	revb.2h	$r0,$r24
    35ac:	103b0000 	addu16i.d	$r0,$r0,3776(0xec0)
    35b0:	012d0000 	0x012d0000
    35b4:	00870254 	bstrins.d	$r20,$r18,0x7,0x0
    35b8:	0355012d 	andi	$r13,$r9,0x540
    35bc:	007d8091 	bstrpick.w	$r17,$r4,0x1d,0x0
    35c0:	0000002c 	0x0000002c
    35c4:	00128400 	sltu	$r0,$r0,$r1
    35c8:	00105200 	add.w	$r0,$r16,$r20
    35cc:	54012d00 	bl	67109164(0x400012c) # 40036f8 <_start-0x17ffc908>
    35d0:	00000305 	0x00000305
    35d4:	34000000 	0x34000000
    35d8:	00000000 	0x00000000
    35dc:	00001260 	clo.w	$r0,$r19
    35e0:	0554012d 	0x0554012d
    35e4:	00000003 	0x00000003
    35e8:	0e000000 	0x0e000000
    35ec:	000000a7 	0x000000a7
    35f0:	00001076 	clo.w	$r22,$r3
    35f4:	0000810f 	0x0000810f
    35f8:	0e004f00 	0x0e004f00
    35fc:	000000a7 	0x000000a7
    3600:	0000108c 	clo.w	$r12,$r4
    3604:	0000810f 	0x0000810f
    3608:	810f0700 	0x810f0700
    360c:	1d000000 	pcaddu12i	$r0,-524288(0x80000)
    3610:	06e90e00 	0x06e90e00
    3614:	109c0000 	addu16i.d	$r0,$r0,9984(0x2700)
    3618:	810f0000 	0x810f0000
    361c:	07000000 	0x07000000
    3620:	00a70e00 	bstrins.d	$r0,$r16,0x27,0x3
    3624:	10b20000 	addu16i.d	$r0,$r0,11392(0x2c80)
    3628:	810f0000 	0x810f0000
    362c:	0c000000 	0x0c000000
    3630:	0000810f 	0x0000810f
    3634:	2e004f00 	0x2e004f00
    3638:	000010e6 	clo.w	$r6,$r7
    363c:	75055901 	xvssrln.hu.w	$xr1,$xr8,$xr22
    3640:	00000000 	0x00000000
    3644:	40000000 	beqz	$r0,0 # 3644 <_start-0x1bffc9bc>
    3648:	01000001 	0x01000001
    364c:	0011e79c 	sub.d	$r28,$r28,$r25
    3650:	10ee3500 	addu16i.d	$r0,$r8,15245(0x3b8d)
    3654:	59010000 	beq	$r0,$r0,65792(0x10100) # 13754 <_start-0x1bfec8ac>
    3658:	00007511 	0x00007511
    365c:	001d1f00 	mulh.wu	$r0,$r24,$r7
    3660:	001d1300 	mulh.wu	$r0,$r24,$r4
    3664:	10fc3500 	addu16i.d	$r0,$r8,16141(0x3f0d)
    3668:	59010000 	beq	$r0,$r0,65792(0x10100) # 13768 <_start-0x1bfec898>
    366c:	0001331d 	0x0001331d
    3670:	001d7e00 	mulh.wu	$r0,$r16,$r31
    3674:	001d7200 	mulh.wu	$r0,$r16,$r28
    3678:	00692f00 	bstrins.w	$r0,$r24,0x9,0xb
    367c:	810f5b01 	0x810f5b01
    3680:	dd000000 	0xdd000000
    3684:	d100001d 	0xd100001d
    3688:	2f00001d 	0x2f00001d
    368c:	5c010073 	bne	$r3,$r19,256(0x100) # 378c <_start-0x1bffc874>
    3690:	0006e908 	alsl.wu	$r8,$r8,$r26,0x2
    3694:	001e2d00 	mulh.d	$r0,$r8,$r11
    3698:	001e2b00 	mulh.d	$r0,$r24,$r10
    369c:	00002c00 	ctz.d	$r0,$r0
    36a0:	12600000 	addu16i.d	$r0,$r0,-26624(0x9800)
    36a4:	112f0000 	addu16i.d	$r0,$r0,19392(0x4bc0)
    36a8:	012d0000 	0x012d0000
    36ac:	00030554 	0x00030554
    36b0:	00000000 	0x00000000
    36b4:	0000002c 	0x0000002c
    36b8:	00126000 	slt	$r0,$r0,$r24
    36bc:	00114600 	sub.w	$r0,$r16,$r17
    36c0:	54012d00 	bl	67109164(0x400012c) # 40037ec <_start-0x17ffc814>
    36c4:	00000305 	0x00000305
    36c8:	2c000000 	vld	$vr0,$r0,0
    36cc:	00000000 	0x00000000
    36d0:	00001284 	clo.w	$r4,$r20
    36d4:	0000115d 	clo.w	$r29,$r10
    36d8:	0554012d 	0x0554012d
    36dc:	00000003 	0x00000003
    36e0:	002c0000 	alsl.d	$r0,$r0,$r0,0x1
    36e4:	60000000 	blt	$r0,$r0,0 # 36e4 <_start-0x1bffc91c>
    36e8:	7a000012 	0x7a000012
    36ec:	2d000011 	0x2d000011
    36f0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    36f4:	00000000 	0x00000000
    36f8:	0255012d 	sltui	$r13,$r9,1344(0x540)
    36fc:	2c000088 	vld	$vr8,$r4,0
    3700:	00000000 	0x00000000
    3704:	00001284 	clo.w	$r4,$r20
    3708:	00001191 	clo.w	$r17,$r12
    370c:	0554012d 	0x0554012d
    3710:	00000003 	0x00000003
    3714:	002c0000 	alsl.d	$r0,$r0,$r0,0x1
    3718:	84000000 	0x84000000
    371c:	a5000012 	0xa5000012
    3720:	2d000011 	0x2d000011
    3724:	88025401 	0x88025401
    3728:	002c0000 	alsl.d	$r0,$r0,$r0,0x1
    372c:	60000000 	blt	$r0,$r0,0 # 372c <_start-0x1bffc8d4>
    3730:	bc000012 	0xbc000012
    3734:	2d000011 	0x2d000011
    3738:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    373c:	00000000 	0x00000000
    3740:	00002c00 	ctz.d	$r0,$r0
    3744:	12840000 	addu16i.d	$r0,$r0,-24320(0xa100)
    3748:	11d30000 	addu16i.d	$r0,$r0,29888(0x74c0)
    374c:	012d0000 	0x012d0000
    3750:	00030554 	0x00030554
    3754:	00000000 	0x00000000
    3758:	00000034 	0x00000034
    375c:	00126000 	slt	$r0,$r0,$r24
    3760:	54012d00 	bl	67109164(0x400012c) # 400388c <_start-0x17ffc774>
    3764:	00000305 	0x00000305
    3768:	00000000 	0x00000000
    376c:	000ea72e 	bytepick.d	$r14,$r25,$r9,0x5
    3770:	05550100 	0x05550100
    3774:	00000075 	0x00000075
    3778:	00000000 	0x00000000
    377c:	00000004 	0x00000004
    3780:	12249c01 	addu16i.d	$r1,$r0,-30425(0x8927)
    3784:	ee350000 	0xee350000
    3788:	01000010 	0x01000010
    378c:	00751155 	bstrins.w	$r21,$r10,0x15,0x4
    3790:	1e440000 	pcaddu18i	$r0,139264(0x22000)
    3794:	1e400000 	pcaddu18i	$r0,131072(0x20000)
    3798:	fc360000 	0xfc360000
    379c:	01000010 	0x01000010
    37a0:	01331d55 	0x01331d55
    37a4:	55010000 	bl	65792(0x10100) # 138a4 <_start-0x1bfec75c>
    37a8:	08db3700 	fnmsub.s	$f0,$f24,$f13,$f22
    37ac:	08db0000 	fnmsub.s	$f0,$f0,$f0,$f22
    37b0:	120b0000 	addu16i.d	$r0,$r0,-32064(0x82c0)
    37b4:	05833706 	0x05833706
    37b8:	05830000 	0x05830000
    37bc:	070c0000 	0x070c0000
    37c0:	0d763706 	0x0d763706
    37c4:	0d760000 	0x0d760000
    37c8:	040d0000 	csrrd	$r0,0x340
    37cc:	06f43705 	0x06f43705
    37d0:	06f40000 	0x06f40000
    37d4:	150e0000 	lu12i.w	$r0,-495616(0x87000)
    37d8:	0d1b3705 	vbitsel.v	$vr5,$vr24,$vr13,$vr22
    37dc:	0d1b0000 	vbitsel.v	$vr0,$vr0,$vr0,$vr22
    37e0:	040f0000 	csrrd	$r0,0x3c0
    37e4:	06f83705 	0x06f83705
    37e8:	06f80000 	0x06f80000
    37ec:	0d100000 	vbitsel.v	$vr0,$vr0,$vr0,$vr0
    37f0:	06ea3705 	0x06ea3705
    37f4:	06ea0000 	0x06ea0000
    37f8:	0e100000 	0x0e100000
    37fc:	010a3706 	0x010a3706
    3800:	010a0000 	0x010a0000
    3804:	0f100000 	0x0f100000
    3808:	0fc83709 	0x0fc83709
    380c:	0fc80000 	0x0fc80000
    3810:	0a110000 	xvfmadd.s	$xr0,$xr0,$xr0,$xr2
    3814:	12070005 	addu16i.d	$r5,$r0,-32320(0x81c0)
    3818:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    381c:	00001048 	clo.w	$r8,$r2
    3820:	018b0104 	0x018b0104
    3824:	540c0000 	bl	3072(0xc00) # 4424 <_start-0x1bffbbdc>
    3828:	56000013 	bl	5111808(0x4e0000) # 4e3828 <_start-0x1bb1c7d8>
    382c:	98000000 	0x98000000
    3830:	00000002 	0x00000002
    3834:	1e000000 	pcaddu18i	$r0,0
    3838:	02000035 	slti	$r21,$r1,0
    383c:	025e0601 	sltui	$r1,$r16,1921(0x781)
    3840:	01020000 	0x01020000
    3844:	00025c08 	0x00025c08
    3848:	05020200 	0x05020200
    384c:	0000026a 	0x0000026a
    3850:	4d070202 	jirl	$r2,$r16,67328(0x10700)
    3854:	02000001 	slti	$r1,$r0,0
    3858:	01010504 	fadd.d	$f4,$f8,$f1
    385c:	31030000 	0x31030000
    3860:	02000001 	slti	$r1,$r0,0
    3864:	00541941 	0x00541941
    3868:	04020000 	csrrd	$r0,0x80
    386c:	0000d407 	0x0000d407
    3870:	05080200 	0x05080200
    3874:	000000fc 	0x000000fc
    3878:	cf070802 	0xcf070802
    387c:	04000000 	csrrd	$r0,0x0
    3880:	6e690504 	bgeu	$r8,$r4,-104188(0x26904) # fffea184 <_RAM_DATA+0x7ffe9184>
    3884:	69050074 	bltu	$r3,$r20,66816(0x10500) # 13d84 <_start-0x1bfec27c>
    3888:	02000000 	slti	$r0,$r0,0
    388c:	00d90704 	bstrpick.d	$r4,$r24,0x19,0x1
    3890:	33030000 	0x33030000
    3894:	03000001 	lu52i.d	$r1,$r0,0
    3898:	00481420 	0x00481420
    389c:	13030000 	addu16i.d	$r0,$r0,-16192(0xc0c0)
    38a0:	04000006 	csrrd	$r6,0x0
    38a4:	002c1717 	alsl.d	$r23,$r24,$r5,0x1
    38a8:	2e030000 	0x2e030000
    38ac:	04000013 	csrrd	$r19,0x0
    38b0:	003a1819 	0x003a1819
    38b4:	7c030000 	0x7c030000
    38b8:	04000005 	csrrd	$r5,0x0
    38bc:	0075161b 	bstrins.w	$r27,$r16,0x15,0x5
    38c0:	04020000 	csrrd	$r0,0x80
    38c4:	00025604 	0x00025604
    38c8:	06010200 	cacop	0x0,$r16,64(0x40)
    38cc:	00000265 	0x00000265
    38d0:	0000b306 	0x0000b306
    38d4:	028f0700 	addi.w	$r0,$r24,961(0x3c1)
    38d8:	69040000 	bltu	$r0,$r0,66560(0x10400) # 13cd8 <_start-0x1bfec328>
    38dc:	00007c11 	0x00007c11
    38e0:	01140700 	fabs.s	$f0,$f24
    38e4:	6b040000 	bltu	$r0,$r0,-64512(0x30400) # ffff3ce4 <_RAM_DATA+0x7fff2ce4>
    38e8:	00007c11 	0x00007c11
    38ec:	02450700 	sltui	$r0,$r24,321(0x141)
    38f0:	6d040000 	bgeu	$r0,$r0,66560(0x10400) # 13cf0 <_start-0x1bfec310>
    38f4:	0000690c 	rdtime.d	$r12,$r8
    38f8:	05100800 	0x05100800
    38fc:	26090123 	ldptr.d	$r3,$r9,2304(0x900)
    3900:	09000001 	0x09000001
    3904:	0000091a 	0x0000091a
    3908:	0c012505 	0x0c012505
    390c:	0000007c 	0x0000007c
    3910:	0a450900 	0x0a450900
    3914:	26050000 	ldptr.d	$r0,$r0,1280(0x500)
    3918:	007c0c01 	bstrins.w	$r1,$r0,0x1c,0x3
    391c:	09040000 	0x09040000
    3920:	000008f5 	0x000008f5
    3924:	0c012705 	0x0c012705
    3928:	0000007c 	0x0000007c
    392c:	09600908 	vfmsub.d	$vr8,$vr8,$vr2,$vr0
    3930:	28050000 	ld.b	$r0,$r0,320(0x140)
    3934:	007c0c01 	bstrins.w	$r1,$r0,0x1c,0x3
    3938:	000c0000 	bytepick.d	$r0,$r0,$r0,0x0
    393c:	0009230a 	bytepick.w	$r10,$r24,$r8,0x2
    3940:	01290500 	0x01290500
    3944:	0000e303 	0x0000e303
    3948:	014e0b00 	0x014e0b00
    394c:	01430000 	0x01430000
    3950:	750c0000 	xvbitclr.b	$xr0,$xr0,$xr0
    3954:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
    3958:	01330600 	0x01330600
    395c:	040d0000 	csrrd	$r0,0x340
    3960:	00000153 	0x00000153
    3964:	00014806 	0x00014806
    3968:	2a0f0e00 	ld.bu	$r0,$r16,963(0x3c3)
    396c:	06000011 	cacop	0x11,$r0,0
    3970:	01430f17 	0x01430f17
    3974:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3978:	00000000 	0x00000000
    397c:	0010090f 	add.w	$r15,$r8,$r2
    3980:	0f3d0600 	0x0f3d0600
    3984:	00000143 	0x00000143
    3988:	2d3c0305 	0x2d3c0305
    398c:	000f1c00 	bytepick.d	$r0,$r0,$r7,0x6
    3990:	0600000e 	cacop	0xe,$r0,0
    3994:	00700e4e 	bstrins.w	$r14,$r18,0x10,0x3
    3998:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    399c:	80000004 	0x80000004
    39a0:	00146410 	nor	$r16,$r0,$r25
    39a4:	019e0100 	0x019e0100
    39a8:	00266006 	crcc.w.b.w	$r6,$r0,$r24
    39ac:	0000281c 	cto.d	$r28,$r0
    39b0:	cb9c0100 	0xcb9c0100
    39b4:	11000001 	addu16i.d	$r1,$r0,16384(0x4000)
    39b8:	1c00266c 	pcaddu12i	$r12,307(0x133)
    39bc:	00001186 	clo.w	$r6,$r12
    39c0:	00267812 	crcc.w.b.w	$r18,$r0,$r30
    39c4:	0011921c 	sub.d	$r28,$r16,$r4
    39c8:	0001c100 	asrtgt.d	$r8,$r16
    39cc:	54011300 	bl	-67108592(0xc000110) # fc003adc <_RAM_DATA+0x7c002adc>
    39d0:	2a100305 	ld.bu	$r5,$r24,1024(0x400)
    39d4:	11001c00 	addu16i.d	$r0,$r0,16391(0x4007)
    39d8:	1c00267c 	pcaddu12i	$r28,307(0x133)
    39dc:	0000119e 	clo.w	$r30,$r12
    39e0:	16bb1000 	lu32i.d	$r0,383104(0x5d880)
    39e4:	66010000 	bge	$r0,$r0,-130816(0x20100) # fffe3ae4 <_RAM_DATA+0x7ffe2ae4>
    39e8:	25500601 	stptr.w	$r1,$r16,20484(0x5004)
    39ec:	01101c00 	0x01101c00
    39f0:	9c010000 	0x9c010000
    39f4:	00000287 	0x00000287
    39f8:	0016f814 	andn	$r20,$r0,$r30
    39fc:	01680100 	0x01680100
    3a00:	00008808 	0x00008808
    3a04:	001e6900 	mulh.d	$r0,$r8,$r26
    3a08:	001e6500 	mulh.d	$r0,$r8,$r25
    3a0c:	25ec1500 	stptr.w	$r0,$r8,-5100(0xec14)
    3a10:	00741c00 	bstrins.w	$r0,$r0,0x14,0x7
    3a14:	024d0000 	sltui	$r0,$r0,832(0x340)
    3a18:	72140000 	0x72140000
    3a1c:	01000006 	0x01000006
    3a20:	b308017d 	0xb308017d
    3a24:	8b000000 	0x8b000000
    3a28:	8700001e 	0x8700001e
    3a2c:	1400001e 	lu12i.w	$r30,0
    3a30:	000013b2 	clo.w	$r18,$r29
    3a34:	07017e01 	0x07017e01
    3a38:	00000069 	0x00000069
    3a3c:	00001eaf 	ctz.w	$r15,$r21
    3a40:	00001ea9 	ctz.w	$r9,$r21
    3a44:	00156614 	or	$r20,$r16,$r25
    3a48:	017f0100 	0x017f0100
    3a4c:	00006907 	rdtime.d	$r7,$r8
    3a50:	001ee400 	mulh.du	$r0,$r0,$r25
    3a54:	001ed800 	mulh.du	$r0,$r0,$r22
    3a58:	25f01100 	stptr.w	$r0,$r8,-4080(0xf010)
    3a5c:	11aa1c00 	addu16i.d	$r0,$r0,27271(0x6a87)
    3a60:	12000000 	addu16i.d	$r0,$r0,-32768(0x8000)
    3a64:	1c0025bc 	pcaddu12i	$r28,301(0x12d)
    3a68:	000011b6 	clo.w	$r22,$r13
    3a6c:	00000262 	0x00000262
    3a70:	03540113 	andi	$r19,$r8,0x500
    3a74:	0001000a 	0x0001000a
    3a78:	0025e012 	crc.w.d.w	$r18,$r0,$r24
    3a7c:	0011c21c 	sub.d	$r28,$r16,$r16
    3a80:	00027500 	0x00027500
    3a84:	54011300 	bl	-67108592(0xc000110) # fc003b94 <_RAM_DATA+0x7c002b94>
    3a88:	16004401 	lu32i.d	$r1,544(0x220)
    3a8c:	1c0025e8 	pcaddu12i	$r8,303(0x12f)
    3a90:	000011ce 	clo.w	$r14,$r14
    3a94:	03540113 	andi	$r19,$r8,0x500
    3a98:	0001000a 	0x0001000a
    3a9c:	13411000 	addu16i.d	$r0,$r0,-12220(0xd044)
    3aa0:	45010000 	bnez	$r0,65792(0x10100) # 13ba0 <_start-0x1bfec460>
    3aa4:	24c00601 	ldptr.w	$r1,$r16,-16380(0xc004)
    3aa8:	00901c00 	bstrins.d	$r0,$r0,0x10,0x7
    3aac:	9c010000 	0x9c010000
    3ab0:	000002de 	0x000002de
    3ab4:	706d7417 	0x706d7417
    3ab8:	01470100 	0x01470100
    3abc:	00007c0e 	0x00007c0e
    3ac0:	001f3700 	mulw.d.w	$r0,$r24,$r13
    3ac4:	001f3100 	mulw.d.w	$r0,$r8,$r12
    3ac8:	25141200 	stptr.w	$r0,$r16,5136(0x1410)
    3acc:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3ad0:	02ca0000 	addi.d	$r0,$r0,640(0x280)
    3ad4:	01130000 	fcopysign.d	$f0,$f0,$f0
    3ad8:	c4030554 	0xc4030554
    3adc:	001c0029 	mul.w	$r9,$r1,$r0
    3ae0:	00253016 	crc.w.w.w	$r22,$r0,$r12
    3ae4:	0011921c 	sub.d	$r28,$r16,$r4
    3ae8:	54011300 	bl	-67108592(0xc000110) # fc003bf8 <_RAM_DATA+0x7c002bf8>
    3aec:	29ec0305 	st.d	$r5,$r24,-1280(0xb00)
    3af0:	00001c00 	ctz.w	$r0,$r0
    3af4:	00134a10 	maskeqz	$r16,$r16,$r18
    3af8:	01370100 	0x01370100
    3afc:	0024a006 	crc.w.h.w	$r6,$r0,$r8
    3b00:	0000201c 	clo.d	$r28,$r0
    3b04:	039c0100 	ori	$r0,$r8,0x700
    3b08:	18000003 	pcaddi	$r3,0
    3b0c:	000013f5 	clo.w	$r21,$r31
    3b10:	08013a01 	0x08013a01
    3b14:	00000088 	0x00000088
    3b18:	13351000 	addu16i.d	$r0,$r0,-12988(0xcd44)
    3b1c:	1f010000 	pcaddu18i	$r0,-522240(0x80800)
    3b20:	24540601 	ldptr.w	$r1,$r16,21508(0x5404)
    3b24:	004c1c00 	0x004c1c00
    3b28:	9c010000 	0x9c010000
    3b2c:	0000035b 	0x0000035b
    3b30:	01006919 	0x01006919
    3b34:	880b0121 	0x880b0121
    3b38:	14000000 	lu12i.w	$r0,0
    3b3c:	0000147a 	clz.w	$r26,$r3
    3b40:	0c012201 	0x0c012201
    3b44:	00000094 	0x00000094
    3b48:	00001f62 	ctz.w	$r2,$r27
    3b4c:	00001f60 	ctz.w	$r0,$r27
    3b50:	00147218 	nor	$r24,$r16,$r28
    3b54:	01230100 	0x01230100
    3b58:	0000880b 	0x0000880b
    3b5c:	24941600 	ldptr.w	$r0,$r16,-27628(0x9414)
    3b60:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3b64:	01130000 	fcopysign.d	$f0,$f0,$f0
    3b68:	a4030554 	0xa4030554
    3b6c:	001c0029 	mul.w	$r9,$r1,$r0
    3b70:	16641000 	lu32i.d	$r0,204928(0x32080)
    3b74:	0e010000 	0x0e010000
    3b78:	24240601 	ldptr.w	$r1,$r16,9220(0x2404)
    3b7c:	00301c00 	0x00301c00
    3b80:	9c010000 	0x9c010000
    3b84:	0000038b 	0x0000038b
    3b88:	0016501a 	orn	$r26,$r0,$r20
    3b8c:	01120100 	0x01120100
    3b90:	0000a009 	0x0000a009
    3b94:	115c0100 	addu16i.d	$r0,$r8,22272(0x5700)
    3b98:	1c002448 	pcaddu12i	$r8,290(0x122)
    3b9c:	000011da 	clo.w	$r26,$r14
    3ba0:	15831b00 	lu12i.w	$r0,-255784(0xc18d8)
    3ba4:	ff010000 	0xff010000
    3ba8:	00000006 	0x00000006
    3bac:	00003400 	revb.4h	$r0,$r0
    3bb0:	be9c0100 	0xbe9c0100
    3bb4:	11000003 	addu16i.d	$r3,$r0,16384(0x4000)
    3bb8:	00000000 	0x00000000
    3bbc:	00001186 	clo.w	$r6,$r12
    3bc0:	00000016 	0x00000016
    3bc4:	0011e600 	sub.d	$r0,$r16,$r25
    3bc8:	54011300 	bl	-67108592(0xc000110) # fc003cd8 <_RAM_DATA+0x7c002cd8>
    3bcc:	38800c05 	0x38800c05
    3bd0:	00000001 	0x00000001
    3bd4:	0014fd1b 	and	$r27,$r8,$r31
    3bd8:	06f10100 	0x06f10100
    3bdc:	00000000 	0x00000000
    3be0:	00000024 	0x00000024
    3be4:	03f59c01 	xori	$r1,$r0,0xd67
    3be8:	00120000 	slt	$r0,$r0,$r0
    3bec:	92000000 	0x92000000
    3bf0:	eb000011 	0xeb000011
    3bf4:	13000003 	addu16i.d	$r3,$r0,-16384(0xc000)
    3bf8:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3bfc:	00000000 	0x00000000
    3c00:	00001100 	clo.w	$r0,$r8
    3c04:	11f20000 	addu16i.d	$r0,$r0,31872(0x7c80)
    3c08:	1b000000 	pcalau12i	$r0,-524288(0x80000)
    3c0c:	00001658 	clz.w	$r24,$r18
    3c10:	8c06dc01 	0x8c06dc01
    3c14:	981c0023 	0x981c0023
    3c18:	01000000 	0x01000000
    3c1c:	00048e9c 	alsl.w	$r28,$r20,$r3,0x2
    3c20:	13fd1c00 	addu16i.d	$r0,$r0,-185(0xff47)
    3c24:	df010000 	0xdf010000
    3c28:	0000a009 	0x0000a009
    3c2c:	001f7f00 	mulw.d.w	$r0,$r24,$r31
    3c30:	001f7d00 	mulw.d.w	$r0,$r8,$r31
    3c34:	133b1c00 	addu16i.d	$r0,$r0,-12601(0xcec7)
    3c38:	e0010000 	0xe0010000
    3c3c:	0000a009 	0x0000a009
    3c40:	001f9400 	mulw.d.wu	$r0,$r0,$r5
    3c44:	001f9200 	mulw.d.wu	$r0,$r16,$r4
    3c48:	13271c00 	addu16i.d	$r0,$r0,-13881(0xc9c7)
    3c4c:	e1010000 	0xe1010000
    3c50:	0000a009 	0x0000a009
    3c54:	001fab00 	mulw.d.wu	$r0,$r24,$r10
    3c58:	001fa700 	mulw.d.wu	$r0,$r24,$r9
    3c5c:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    3c60:	049e0000 	csrrd	$r0,0x2780
    3c64:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3c68:	1c002a30 	pcaddu12i	$r16,337(0x151)
    3c6c:	0023c412 	mod.du	$r18,$r0,$r17
    3c70:	0011921c 	sub.d	$r28,$r16,$r4
    3c74:	00047c00 	alsl.w	$r0,$r0,$r31,0x1
    3c78:	54011300 	bl	-67108592(0xc000110) # fc003d88 <_RAM_DATA+0x7c002d88>
    3c7c:	29840305 	st.w	$r5,$r24,256(0x100)
    3c80:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3c84:	e2080255 	0xe2080255
    3c88:	05560113 	0x05560113
    3c8c:	002a3003 	break	0x3003
    3c90:	0c1e001c 	0x0c1e001c
    3c94:	0b1c0024 	0x0b1c0024
    3c98:	24320087 	ldptr.w	$r7,$r4,12800(0x3200)
    3c9c:	002d3c03 	alsl.d	$r3,$r0,$r15,0x3
    3ca0:	0006221c 	alsl.wu	$r28,$r16,$r8,0x1
    3ca4:	0000ba0b 	0x0000ba0b
    3ca8:	00049e00 	alsl.w	$r0,$r16,$r7,0x2
    3cac:	00750c00 	bstrins.w	$r0,$r0,0x15,0x3
    3cb0:	000b0000 	0x000b0000
    3cb4:	00048e06 	alsl.w	$r6,$r16,$r3,0x2
    3cb8:	12f71b00 	addu16i.d	$r0,$r24,-16954(0xbdc6)
    3cbc:	b3010000 	0xb3010000
    3cc0:	00235006 	div.du	$r6,$r0,$r20
    3cc4:	00003c1c 	revb.d	$r28,$r0
    3cc8:	0b9c0100 	0x0b9c0100
    3ccc:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    3cd0:	000013b8 	clo.w	$r24,$r29
    3cd4:	0000051b 	0x0000051b
    3cd8:	2a3c0305 	ld.bu	$r5,$r24,-256(0xf00)
    3cdc:	70121c00 	0x70121c00
    3ce0:	921c0023 	0x921c0023
    3ce4:	ee000011 	0xee000011
    3ce8:	13000004 	addu16i.d	$r4,$r0,-16384(0xc000)
    3cec:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3cf0:	1c002984 	pcaddu12i	$r4,332(0x14c)
    3cf4:	02550113 	sltui	$r19,$r8,1344(0x540)
    3cf8:	0113b608 	0x0113b608
    3cfc:	3c030556 	0x3c030556
    3d00:	001c002a 	mul.w	$r10,$r1,$r0
    3d04:	00238016 	mod.du	$r22,$r0,$r0
    3d08:	0011fe1c 	sub.d	$r28,$r16,$r31
    3d0c:	54011300 	bl	-67108592(0xc000110) # fc003e1c <_RAM_DATA+0x7c002e1c>
    3d10:	80a01106 	0x80a01106
    3d14:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3d18:	40045501 	beqz	$r8,263252(0x40454) # 4416c <_start-0x1bfbbe94>
    3d1c:	001f244b 	mulw.d.w	$r11,$r2,$r9
    3d20:	00ba0b00 	bstrins.d	$r0,$r24,0x3a,0x2
    3d24:	051b0000 	0x051b0000
    3d28:	750c0000 	xvbitclr.b	$xr0,$xr0,$xr0
    3d2c:	17000000 	lu32i.d	$r0,-524288(0x80000)
    3d30:	050b0600 	0x050b0600
    3d34:	c01b0000 	0xc01b0000
    3d38:	01000015 	0x01000015
    3d3c:	231406ad 	sc.d	$r13,$r21,5124(0x1404)
    3d40:	003c1c00 	0x003c1c00
    3d44:	9c010000 	0x9c010000
    3d48:	00000587 	0x00000587
    3d4c:	0013b81d 	masknez	$r29,$r0,$r14
    3d50:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3d54:	54030500 	bl	67109636(0x4000304) # 4004058 <_start-0x17ffbfa8>
    3d58:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    3d5c:	1c002334 	pcaddu12i	$r20,281(0x119)
    3d60:	00001192 	clo.w	$r18,$r12
    3d64:	0000056b 	0x0000056b
    3d68:	05540113 	0x05540113
    3d6c:	00298403 	0x00298403
    3d70:	5501131c 	bl	-59703024(0xc710110) # fc713e80 <_RAM_DATA+0x7c712e80>
    3d74:	13b00802 	addu16i.d	$r2,$r0,-5118(0xec02)
    3d78:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3d7c:	1c002a54 	pcaddu12i	$r20,338(0x152)
    3d80:	23441600 	sc.d	$r0,$r16,17428(0x4414)
    3d84:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3d88:	01130000 	fcopysign.d	$f0,$f0,$f0
    3d8c:	a0110654 	0xa0110654
    3d90:	7bffac80 	0x7bffac80
    3d94:	03550113 	andi	$r19,$r8,0x540
    3d98:	00244a40 	crc.w.b.w	$r0,$r18,$r18
    3d9c:	149d1b00 	lu12i.w	$r0,321752(0x4e8d8)
    3da0:	a7010000 	0xa7010000
    3da4:	0022d806 	mod.d	$r6,$r0,$r22
    3da8:	00003c1c 	revb.d	$r28,$r0
    3dac:	ee9c0100 	0xee9c0100
    3db0:	1d000005 	pcaddu12i	$r5,-524288(0x80000)
    3db4:	000013b8 	clo.w	$r24,$r29
    3db8:	0000051b 	0x0000051b
    3dbc:	2a6c0305 	ld.hu	$r5,$r24,-1280(0xb00)
    3dc0:	f8121c00 	0xf8121c00
    3dc4:	921c0022 	0x921c0022
    3dc8:	d2000011 	0xd2000011
    3dcc:	13000005 	addu16i.d	$r5,$r0,-16384(0xc000)
    3dd0:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3dd4:	1c002984 	pcaddu12i	$r4,332(0x14c)
    3dd8:	02550113 	sltui	$r19,$r8,1344(0x540)
    3ddc:	0113aa08 	0x0113aa08
    3de0:	6c030556 	bgeu	$r10,$r22,772(0x304) # 40e4 <_start-0x1bffbf1c>
    3de4:	001c002a 	mul.w	$r10,$r1,$r0
    3de8:	00230816 	div.du	$r22,$r0,$r2
    3dec:	0011fe1c 	sub.d	$r28,$r16,$r31
    3df0:	54011300 	bl	-67108592(0xc000110) # fc003f00 <_RAM_DATA+0x7c002f00>
    3df4:	80a01106 	0x80a01106
    3df8:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3dfc:	40035501 	beqz	$r8,262996(0x40354) # 44150 <_start-0x1bfbbeb0>
    3e00:	00002449 	clz.d	$r9,$r2
    3e04:	0016c81b 	andn	$r27,$r0,$r18
    3e08:	06a00100 	0x06a00100
    3e0c:	1c00229c 	pcaddu12i	$r28,276(0x114)
    3e10:	0000003c 	0x0000003c
    3e14:	06559c01 	0x06559c01
    3e18:	b81d0000 	0xb81d0000
    3e1c:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    3e20:	05000005 	0x05000005
    3e24:	002a8403 	dbcl	0x403
    3e28:	22bc121c 	ll.d	$r28,$r16,-17392(0xbc10)
    3e2c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3e30:	06390000 	cacop	0x0,$r0,-448(0xe40)
    3e34:	01130000 	fcopysign.d	$f0,$f0,$f0
    3e38:	84030554 	0x84030554
    3e3c:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3e40:	08025501 	0x08025501
    3e44:	560113a3 	bl	-24248048(0xe8e0110) # fe8e3f54 <_RAM_DATA+0x7e8e2f54>
    3e48:	2a840305 	ld.wu	$r5,$r24,256(0x100)
    3e4c:	16001c00 	lu32i.d	$r0,224(0xe0)
    3e50:	1c0022cc 	pcaddu12i	$r12,278(0x116)
    3e54:	000011fe 	clo.w	$r30,$r15
    3e58:	06540113 	0x06540113
    3e5c:	ac80a011 	0xac80a011
    3e60:	01137bff 	fcopysign.d	$f31,$f31,$f30
    3e64:	48400355 	0x48400355
    3e68:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    3e6c:	00001590 	clz.w	$r16,$r12
    3e70:	60069a01 	blt	$r16,$r1,1688(0x698) # 4508 <_start-0x1bffbaf8>
    3e74:	3c1c0022 	0x3c1c0022
    3e78:	01000000 	0x01000000
    3e7c:	0006bc9c 	alsl.wu	$r28,$r4,$r15,0x2
    3e80:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    3e84:	051b0000 	0x051b0000
    3e88:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    3e8c:	1c002a9c 	pcaddu12i	$r28,340(0x154)
    3e90:	00228012 	mod.d	$r18,$r0,$r0
    3e94:	0011921c 	sub.d	$r28,$r16,$r4
    3e98:	0006a000 	alsl.wu	$r0,$r0,$r8,0x2
    3e9c:	54011300 	bl	-67108592(0xc000110) # fc003fac <_RAM_DATA+0x7c002fac>
    3ea0:	29840305 	st.w	$r5,$r24,256(0x100)
    3ea4:	01131c00 	fcopysign.d	$f0,$f0,$f7
    3ea8:	9d080255 	0x9d080255
    3eac:	05560113 	0x05560113
    3eb0:	002a9c03 	dbcl	0x1c03
    3eb4:	9016001c 	0x9016001c
    3eb8:	fe1c0022 	0xfe1c0022
    3ebc:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    3ec0:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    3ec4:	ffac80a0 	0xffac80a0
    3ec8:	5501137b 	bl	-34799344(0xded0110) # fded3fd8 <_RAM_DATA+0x7ded2fd8>
    3ecc:	24474003 	ldptr.w	$r3,$r0,18240(0x4740)
    3ed0:	4c1b0000 	jirl	$r0,$r0,6912(0x1b00)
    3ed4:	01000014 	0x01000014
    3ed8:	22240694 	ll.d	$r20,$r20,9220(0x2404)
    3edc:	003c1c00 	0x003c1c00
    3ee0:	9c010000 	0x9c010000
    3ee4:	00000723 	0x00000723
    3ee8:	0013b81d 	masknez	$r29,$r0,$r14
    3eec:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    3ef0:	b4030500 	0xb4030500
    3ef4:	121c002a 	addu16i.d	$r10,$r1,-30976(0x8700)
    3ef8:	1c002244 	pcaddu12i	$r4,274(0x112)
    3efc:	00001192 	clo.w	$r18,$r12
    3f00:	00000707 	0x00000707
    3f04:	05540113 	0x05540113
    3f08:	00298403 	0x00298403
    3f0c:	5501131c 	bl	-59703024(0xc710110) # fc71401c <_RAM_DATA+0x7c71301c>
    3f10:	13970802 	addu16i.d	$r2,$r0,-6718(0xe5c2)
    3f14:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    3f18:	1c002ab4 	pcaddu12i	$r20,341(0x155)
    3f1c:	22541600 	ll.d	$r0,$r16,21524(0x5414)
    3f20:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    3f24:	01130000 	fcopysign.d	$f0,$f0,$f0
    3f28:	a0110654 	0xa0110654
    3f2c:	7bffac80 	0x7bffac80
    3f30:	03550113 	andi	$r19,$r8,0x540
    3f34:	00244640 	crc.w.b.w	$r0,$r18,$r17
    3f38:	168b1b00 	lu32i.d	$r0,284888(0x458d8)
    3f3c:	8e010000 	0x8e010000
    3f40:	0021e806 	mod.wu	$r6,$r0,$r26
    3f44:	00003c1c 	revb.d	$r28,$r0
    3f48:	8a9c0100 	0x8a9c0100
    3f4c:	1d000007 	pcaddu12i	$r7,-524288(0x80000)
    3f50:	000013b8 	clo.w	$r24,$r29
    3f54:	0000051b 	0x0000051b
    3f58:	2acc0305 	preld	0x5,$r24,768(0x300)
    3f5c:	08121c00 	fmadd.s	$f0,$f0,$f7,$f4
    3f60:	921c0022 	0x921c0022
    3f64:	6e000011 	bgeu	$r0,$r17,-131072(0x20000) # fffe3f64 <_RAM_DATA+0x7ffe2f64>
    3f68:	13000007 	addu16i.d	$r7,$r0,-16384(0xc000)
    3f6c:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    3f70:	1c002984 	pcaddu12i	$r4,332(0x14c)
    3f74:	02550113 	sltui	$r19,$r8,1344(0x540)
    3f78:	01139108 	0x01139108
    3f7c:	cc030556 	0xcc030556
    3f80:	001c002a 	mul.w	$r10,$r1,$r0
    3f84:	00221816 	div.d	$r22,$r0,$r6
    3f88:	0011fe1c 	sub.d	$r28,$r16,$r31
    3f8c:	54011300 	bl	-67108592(0xc000110) # fc00409c <_RAM_DATA+0x7c00309c>
    3f90:	80a01106 	0x80a01106
    3f94:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    3f98:	40035501 	beqz	$r8,262996(0x40354) # 442ec <_start-0x1bfbbd14>
    3f9c:	00002445 	clz.d	$r5,$r2
    3fa0:	00154e1b 	or	$r27,$r16,$r19
    3fa4:	06880100 	0x06880100
    3fa8:	1c0021ac 	pcaddu12i	$r12,269(0x10d)
    3fac:	0000003c 	0x0000003c
    3fb0:	07f19c01 	0x07f19c01
    3fb4:	b81d0000 	0xb81d0000
    3fb8:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    3fbc:	05000005 	0x05000005
    3fc0:	002ae403 	dbcl	0x6403
    3fc4:	21cc121c 	sc.w	$r28,$r16,-13296(0xcc10)
    3fc8:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    3fcc:	07d50000 	0x07d50000
    3fd0:	01130000 	fcopysign.d	$f0,$f0,$f0
    3fd4:	84030554 	0x84030554
    3fd8:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    3fdc:	08025501 	0x08025501
    3fe0:	5601138b 	bl	-30539504(0xe2e0110) # fe2e40f0 <_RAM_DATA+0x7e2e30f0>
    3fe4:	2ae40305 	preld	0x5,$r24,-1792(0x900)
    3fe8:	16001c00 	lu32i.d	$r0,224(0xe0)
    3fec:	1c0021dc 	pcaddu12i	$r28,270(0x10e)
    3ff0:	000011fe 	clo.w	$r30,$r15
    3ff4:	06540113 	0x06540113
    3ff8:	ac80a011 	0xac80a011
    3ffc:	01137bff 	fcopysign.d	$f31,$f31,$f30
    4000:	44400355 	bnez	$r26,-2867200(0x544000) # ffd48000 <_RAM_DATA+0x7fd47000>
    4004:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    4008:	00001434 	clz.w	$r20,$r1
    400c:	70068201 	vslt.h	$vr1,$vr16,$vr0
    4010:	3c1c0021 	0x3c1c0021
    4014:	01000000 	0x01000000
    4018:	0008589c 	bytepick.w	$r28,$r4,$r22,0x0
    401c:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    4020:	051b0000 	0x051b0000
    4024:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4028:	1c002afc 	pcaddu12i	$r28,343(0x157)
    402c:	00219012 	mod.wu	$r18,$r0,$r4
    4030:	0011921c 	sub.d	$r28,$r16,$r4
    4034:	00083c00 	bytepick.w	$r0,$r0,$r15,0x0
    4038:	54011300 	bl	-67108592(0xc000110) # fc004148 <_RAM_DATA+0x7c003148>
    403c:	29840305 	st.w	$r5,$r24,256(0x100)
    4040:	01131c00 	fcopysign.d	$f0,$f0,$f7
    4044:	85080255 	0x85080255
    4048:	05560113 	0x05560113
    404c:	002afc03 	dbcl	0x7c03
    4050:	a016001c 	0xa016001c
    4054:	fe1c0021 	0xfe1c0021
    4058:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    405c:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4060:	ffac80a0 	0xffac80a0
    4064:	5501137b 	bl	-34799344(0xded0110) # fded4174 <_RAM_DATA+0x7ded3174>
    4068:	24434003 	ldptr.w	$r3,$r0,17216(0x4340)
    406c:	731b0000 	0x731b0000
    4070:	01000016 	0x01000016
    4074:	2134067d 	sc.w	$r29,$r19,13316(0x3404)
    4078:	003c1c00 	0x003c1c00
    407c:	9c010000 	0x9c010000
    4080:	000008bf 	0x000008bf
    4084:	0013b81d 	masknez	$r29,$r0,$r14
    4088:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    408c:	14030500 	lu12i.w	$r0,6184(0x1828)
    4090:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    4094:	1c002154 	pcaddu12i	$r20,266(0x10a)
    4098:	00001192 	clo.w	$r18,$r12
    409c:	000008a3 	0x000008a3
    40a0:	05540113 	0x05540113
    40a4:	00298403 	0x00298403
    40a8:	5501131c 	bl	-59703024(0xc710110) # fc7141b8 <_RAM_DATA+0x7c7131b8>
    40ac:	137f0802 	addu16i.d	$r2,$r0,-8254(0xdfc2)
    40b0:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    40b4:	1c002b14 	pcaddu12i	$r20,344(0x158)
    40b8:	21641600 	sc.w	$r0,$r16,25620(0x6414)
    40bc:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    40c0:	01130000 	fcopysign.d	$f0,$f0,$f0
    40c4:	a0110654 	0xa0110654
    40c8:	7bffac80 	0x7bffac80
    40cc:	03550113 	andi	$r19,$r8,0x540
    40d0:	00244240 	crc.w.b.w	$r0,$r18,$r16
    40d4:	15361b00 	lu12i.w	$r0,-413480(0x9b0d8)
    40d8:	78010000 	0x78010000
    40dc:	0020f806 	mod.w	$r6,$r0,$r30
    40e0:	00003c1c 	revb.d	$r28,$r0
    40e4:	269c0100 	ldptr.d	$r0,$r8,-25600(0x9c00)
    40e8:	1d000009 	pcaddu12i	$r9,-524288(0x80000)
    40ec:	000013b8 	clo.w	$r24,$r29
    40f0:	0000051b 	0x0000051b
    40f4:	2b2c0305 	fld.s	$f5,$r24,-1280(0xb00)
    40f8:	18121c00 	pcaddi	$r0,37088(0x90e0)
    40fc:	921c0021 	0x921c0021
    4100:	0a000011 	0x0a000011
    4104:	13000009 	addu16i.d	$r9,$r0,-16384(0xc000)
    4108:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    410c:	1c002984 	pcaddu12i	$r4,332(0x14c)
    4110:	02550113 	sltui	$r19,$r8,1344(0x540)
    4114:	01137a08 	fcopysign.d	$f8,$f16,$f30
    4118:	2c030556 	vld	$vr22,$r10,193(0xc1)
    411c:	001c002b 	mul.w	$r11,$r1,$r0
    4120:	00212816 	div.wu	$r22,$r0,$r10
    4124:	0011fe1c 	sub.d	$r28,$r16,$r31
    4128:	54011300 	bl	-67108592(0xc000110) # fc004238 <_RAM_DATA+0x7c003238>
    412c:	80a01106 	0x80a01106
    4130:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    4134:	40035501 	beqz	$r8,262996(0x40354) # 44488 <_start-0x1bfbbb78>
    4138:	00002441 	clz.d	$r1,$r2
    413c:	0014041b 	nor	$r27,$r0,$r1
    4140:	06720100 	0x06720100
    4144:	1c0020bc 	pcaddu12i	$r28,261(0x105)
    4148:	0000003c 	0x0000003c
    414c:	098d9c01 	0x098d9c01
    4150:	b81d0000 	0xb81d0000
    4154:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    4158:	05000005 	0x05000005
    415c:	002b4403 	syscall	0x4403
    4160:	20dc121c 	ll.w	$r28,$r16,-9200(0xdc10)
    4164:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    4168:	09710000 	0x09710000
    416c:	01130000 	fcopysign.d	$f0,$f0,$f0
    4170:	84030554 	0x84030554
    4174:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    4178:	08025501 	0x08025501
    417c:	56011375 	bl	-36306672(0xdd60110) # fdd6428c <_RAM_DATA+0x7dd6328c>
    4180:	2b440305 	fst.s	$f5,$r24,256(0x100)
    4184:	16001c00 	lu32i.d	$r0,224(0xe0)
    4188:	1c0020ec 	pcaddu12i	$r12,263(0x107)
    418c:	000011fe 	clo.w	$r30,$r15
    4190:	06540113 	0x06540113
    4194:	ac80a011 	0xac80a011
    4198:	01137bff 	fcopysign.d	$f31,$f31,$f30
    419c:	40400355 	beqz	$r26,-2867200(0x544000) # ffd4819c <_RAM_DATA+0x7fd4719c>
    41a0:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    41a4:	00001638 	clz.w	$r24,$r17
    41a8:	80066c01 	0x80066c01
    41ac:	3c1c0020 	0x3c1c0020
    41b0:	01000000 	0x01000000
    41b4:	0009f49c 	bytepick.w	$r28,$r4,$r29,0x3
    41b8:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    41bc:	051b0000 	0x051b0000
    41c0:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    41c4:	1c002b5c 	pcaddu12i	$r28,346(0x15a)
    41c8:	0020a012 	mod.w	$r18,$r0,$r8
    41cc:	0011921c 	sub.d	$r28,$r16,$r4
    41d0:	0009d800 	bytepick.w	$r0,$r0,$r22,0x3
    41d4:	54011300 	bl	-67108592(0xc000110) # fc0042e4 <_RAM_DATA+0x7c0032e4>
    41d8:	29840305 	st.w	$r5,$r24,256(0x100)
    41dc:	01131c00 	fcopysign.d	$f0,$f0,$f7
    41e0:	6f080255 	bgeu	$r18,$r21,-63488(0x30800) # ffff49e0 <_RAM_DATA+0x7fff39e0>
    41e4:	05560113 	0x05560113
    41e8:	002b5c03 	syscall	0x5c03
    41ec:	b016001c 	0xb016001c
    41f0:	fe1c0020 	0xfe1c0020
    41f4:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    41f8:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    41fc:	ffac80a0 	0xffac80a0
    4200:	5501137b 	bl	-34799344(0xded0110) # fded4310 <_RAM_DATA+0x7ded3310>
    4204:	243f4003 	ldptr.w	$r3,$r0,16192(0x3f40)
    4208:	1e1b0000 	pcaddu18i	$r0,55296(0xd800)
    420c:	01000015 	0x01000015
    4210:	20440666 	ll.w	$r6,$r19,17412(0x4404)
    4214:	003c1c00 	0x003c1c00
    4218:	9c010000 	0x9c010000
    421c:	00000a5b 	0x00000a5b
    4220:	0013b81d 	masknez	$r29,$r0,$r14
    4224:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    4228:	74030500 	xvsle.w	$xr0,$xr8,$xr1
    422c:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    4230:	1c002064 	pcaddu12i	$r4,259(0x103)
    4234:	00001192 	clo.w	$r18,$r12
    4238:	00000a3f 	0x00000a3f
    423c:	05540113 	0x05540113
    4240:	00298403 	0x00298403
    4244:	5501131c 	bl	-59703024(0xc710110) # fc714354 <_RAM_DATA+0x7c713354>
    4248:	13690802 	addu16i.d	$r2,$r0,-9662(0xda42)
    424c:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    4250:	1c002b74 	pcaddu12i	$r20,347(0x15b)
    4254:	20741600 	ll.w	$r0,$r16,29716(0x7414)
    4258:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    425c:	01130000 	fcopysign.d	$f0,$f0,$f0
    4260:	a0110654 	0xa0110654
    4264:	7bffac80 	0x7bffac80
    4268:	03550113 	andi	$r19,$r8,0x540
    426c:	00243e40 	crc.w.b.w	$r0,$r18,$r15
    4270:	13dd1b00 	addu16i.d	$r0,$r24,-2234(0xf746)
    4274:	60010000 	blt	$r0,$r0,256(0x100) # 4374 <_start-0x1bffbc8c>
    4278:	00200806 	div.w	$r6,$r0,$r2
    427c:	00003c1c 	revb.d	$r28,$r0
    4280:	c29c0100 	0xc29c0100
    4284:	1d00000a 	pcaddu12i	$r10,-524288(0x80000)
    4288:	000013b8 	clo.w	$r24,$r29
    428c:	0000051b 	0x0000051b
    4290:	2b8c0305 	fld.d	$f5,$r24,768(0x300)
    4294:	28121c00 	ld.b	$r0,$r0,1159(0x487)
    4298:	921c0020 	0x921c0020
    429c:	a6000011 	0xa6000011
    42a0:	1300000a 	addu16i.d	$r10,$r0,-16384(0xc000)
    42a4:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    42a8:	1c002984 	pcaddu12i	$r4,332(0x14c)
    42ac:	02550113 	sltui	$r19,$r8,1344(0x540)
    42b0:	01136308 	fcopysign.d	$f8,$f24,$f24
    42b4:	8c030556 	0x8c030556
    42b8:	001c002b 	mul.w	$r11,$r1,$r0
    42bc:	00203816 	div.w	$r22,$r0,$r14
    42c0:	0011fe1c 	sub.d	$r28,$r16,$r31
    42c4:	54011300 	bl	-67108592(0xc000110) # fc0043d4 <_RAM_DATA+0x7c0033d4>
    42c8:	80a01106 	0x80a01106
    42cc:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    42d0:	40035501 	beqz	$r8,262996(0x40354) # 44624 <_start-0x1bfbb9dc>
    42d4:	0000243d 	clz.d	$r29,$r1
    42d8:	0016201b 	orn	$r27,$r0,$r8
    42dc:	065a0100 	0x065a0100
    42e0:	1c001fcc 	pcaddu12i	$r12,254(0xfe)
    42e4:	0000003c 	0x0000003c
    42e8:	0b299c01 	0x0b299c01
    42ec:	b81d0000 	0xb81d0000
    42f0:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    42f4:	05000005 	0x05000005
    42f8:	002ba403 	0x002ba403
    42fc:	1fec121c 	pcaddu18i	$r28,-40816(0xf6090)
    4300:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    4304:	0b0d0000 	0x0b0d0000
    4308:	01130000 	fcopysign.d	$f0,$f0,$f0
    430c:	84030554 	0x84030554
    4310:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    4314:	08025501 	0x08025501
    4318:	5601135d 	bl	-42598128(0xd760110) # fd764428 <_RAM_DATA+0x7d763428>
    431c:	2ba40305 	fld.d	$f5,$r24,-1792(0x900)
    4320:	16001c00 	lu32i.d	$r0,224(0xe0)
    4324:	1c001ffc 	pcaddu12i	$r28,255(0xff)
    4328:	000011fe 	clo.w	$r30,$r15
    432c:	06540113 	0x06540113
    4330:	ac80a011 	0xac80a011
    4334:	01137bff 	fcopysign.d	$f31,$f31,$f30
    4338:	3c400355 	0x3c400355
    433c:	1b000024 	pcalau12i	$r4,-524287(0x80001)
    4340:	00001506 	clz.w	$r6,$r8
    4344:	90065301 	0x90065301
    4348:	3c1c001f 	0x3c1c001f
    434c:	01000000 	0x01000000
    4350:	000b909c 	0x000b909c
    4354:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    4358:	051b0000 	0x051b0000
    435c:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4360:	1c002bbc 	pcaddu12i	$r28,349(0x15d)
    4364:	001fb012 	mulw.d.wu	$r18,$r0,$r12
    4368:	0011921c 	sub.d	$r28,$r16,$r4
    436c:	000b7400 	0x000b7400
    4370:	54011300 	bl	-67108592(0xc000110) # fc004480 <_RAM_DATA+0x7c003480>
    4374:	29840305 	st.w	$r5,$r24,256(0x100)
    4378:	01131c00 	fcopysign.d	$f0,$f0,$f7
    437c:	56080255 	bl	-111802368(0x9560800) # f9564b7c <_RAM_DATA+0x79563b7c>
    4380:	05560113 	0x05560113
    4384:	002bbc03 	0x002bbc03
    4388:	c016001c 	0xc016001c
    438c:	fe1c001f 	0xfe1c001f
    4390:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    4394:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4398:	ffac80a0 	0xffac80a0
    439c:	5501137b 	bl	-34799344(0xded0110) # fded44ac <_RAM_DATA+0x7ded34ac>
    43a0:	80000a03 	0x80000a03
    43a4:	c51b0000 	0xc51b0000
    43a8:	01000013 	0x01000013
    43ac:	1f54064d 	pcaddu18i	$r13,-352206(0xaa032)
    43b0:	003c1c00 	0x003c1c00
    43b4:	9c010000 	0x9c010000
    43b8:	00000bf7 	0x00000bf7
    43bc:	0013b81d 	masknez	$r29,$r0,$r14
    43c0:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    43c4:	d4030500 	0xd4030500
    43c8:	121c002b 	addu16i.d	$r11,$r1,-30976(0x8700)
    43cc:	1c001f74 	pcaddu12i	$r20,251(0xfb)
    43d0:	00001192 	clo.w	$r18,$r12
    43d4:	00000bdb 	0x00000bdb
    43d8:	05540113 	0x05540113
    43dc:	00298403 	0x00298403
    43e0:	5501131c 	bl	-59703024(0xc710110) # fc7144f0 <_RAM_DATA+0x7c7134f0>
    43e4:	13500802 	addu16i.d	$r2,$r0,-11262(0xd402)
    43e8:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    43ec:	1c002bd4 	pcaddu12i	$r20,350(0x15e)
    43f0:	1f841600 	pcaddu18i	$r0,-253776(0xc20b0)
    43f4:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    43f8:	01130000 	fcopysign.d	$f0,$f0,$f0
    43fc:	a0110654 	0xa0110654
    4400:	7bffac80 	0x7bffac80
    4404:	03550113 	andi	$r19,$r8,0x540
    4408:	0040000a 	0x0040000a
    440c:	16081b00 	lu32i.d	$r0,16600(0x40d8)
    4410:	48010000 	bceqz	$fcc0,256(0x100) # 4510 <_start-0x1bffbaf0>
    4414:	001f1806 	mulw.d.w	$r6,$r0,$r6
    4418:	00003c1c 	revb.d	$r28,$r0
    441c:	5e9c0100 	bne	$r8,$r0,-91136(0x29c00) # fffee01c <_RAM_DATA+0x7ffed01c>
    4420:	1d00000c 	pcaddu12i	$r12,-524288(0x80000)
    4424:	000013b8 	clo.w	$r24,$r29
    4428:	0000051b 	0x0000051b
    442c:	2bec0305 	fst.d	$f5,$r24,-1280(0xb00)
    4430:	38121c00 	0x38121c00
    4434:	921c001f 	0x921c001f
    4438:	42000011 	beqz	$r0,-3801088(0x460000) # ffc64438 <_RAM_DATA+0x7fc63438>
    443c:	1300000c 	addu16i.d	$r12,$r0,-16384(0xc000)
    4440:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    4444:	1c002984 	pcaddu12i	$r4,332(0x14c)
    4448:	02550113 	sltui	$r19,$r8,1344(0x540)
    444c:	01134a08 	fcopysign.d	$f8,$f16,$f18
    4450:	ec030556 	0xec030556
    4454:	001c002b 	mul.w	$r11,$r1,$r0
    4458:	001f4816 	mulw.d.w	$r22,$r0,$r18
    445c:	0011fe1c 	sub.d	$r28,$r16,$r31
    4460:	54011300 	bl	-67108592(0xc000110) # fc004570 <_RAM_DATA+0x7c003570>
    4464:	80a01106 	0x80a01106
    4468:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    446c:	0a035501 	0x0a035501
    4470:	00002000 	clo.d	$r0,$r0
    4474:	0014e51b 	and	$r27,$r8,$r25
    4478:	06430100 	lddir	$r0,$r8,0xc0
    447c:	1c001edc 	pcaddu12i	$r28,246(0xf6)
    4480:	0000003c 	0x0000003c
    4484:	0cc59c01 	0x0cc59c01
    4488:	b81d0000 	0xb81d0000
    448c:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    4490:	05000005 	0x05000005
    4494:	002c0403 	alsl.d	$r3,$r0,$r1,0x1
    4498:	1efc121c 	pcaddu18i	$r28,516240(0x7e090)
    449c:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    44a0:	0ca90000 	0x0ca90000
    44a4:	01130000 	fcopysign.d	$f0,$f0,$f0
    44a8:	84030554 	0x84030554
    44ac:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    44b0:	08025501 	0x08025501
    44b4:	56011345 	bl	-48889584(0xd160110) # fd1645c4 <_RAM_DATA+0x7d1635c4>
    44b8:	2c040305 	vld	$vr5,$r24,256(0x100)
    44bc:	16001c00 	lu32i.d	$r0,224(0xe0)
    44c0:	1c001f0c 	pcaddu12i	$r12,248(0xf8)
    44c4:	000011fe 	clo.w	$r30,$r15
    44c8:	06540113 	0x06540113
    44cc:	ac80a011 	0xac80a011
    44d0:	01137bff 	fcopysign.d	$f31,$f31,$f30
    44d4:	000a0355 	0x000a0355
    44d8:	1b000010 	pcalau12i	$r16,-524288(0x80000)
    44dc:	0000130f 	clo.w	$r15,$r24
    44e0:	a0063d01 	0xa0063d01
    44e4:	3c1c001e 	0x3c1c001e
    44e8:	01000000 	0x01000000
    44ec:	000d2c9c 	bytepick.d	$r28,$r4,$r11,0x2
    44f0:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    44f4:	051b0000 	0x051b0000
    44f8:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    44fc:	1c002c1c 	pcaddu12i	$r28,352(0x160)
    4500:	001ec012 	mulh.du	$r18,$r0,$r16
    4504:	0011921c 	sub.d	$r28,$r16,$r4
    4508:	000d1000 	bytepick.d	$r0,$r0,$r4,0x2
    450c:	54011300 	bl	-67108592(0xc000110) # fc00461c <_RAM_DATA+0x7c00361c>
    4510:	29840305 	st.w	$r5,$r24,256(0x100)
    4514:	01131c00 	fcopysign.d	$f0,$f0,$f7
    4518:	40080255 	beqz	$r18,-2881536(0x540800) # ffd44d18 <_RAM_DATA+0x7fd43d18>
    451c:	05560113 	0x05560113
    4520:	002c1c03 	alsl.d	$r3,$r0,$r7,0x1
    4524:	d016001c 	0xd016001c
    4528:	fe1c001e 	0xfe1c001e
    452c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    4530:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4534:	ffac80a0 	0xffac80a0
    4538:	5501137b 	bl	-34799344(0xded0110) # fded4648 <_RAM_DATA+0x7ded3648>
    453c:	08000a03 	0x08000a03
    4540:	f01b0000 	0xf01b0000
    4544:	01000015 	0x01000015
    4548:	1e640637 	pcaddu18i	$r23,204849(0x32031)
    454c:	003c1c00 	0x003c1c00
    4550:	9c010000 	0x9c010000
    4554:	00000d93 	0x00000d93
    4558:	0013b81d 	masknez	$r29,$r0,$r14
    455c:	00051b00 	alsl.w	$r0,$r24,$r6,0x3
    4560:	34030500 	0x34030500
    4564:	121c002c 	addu16i.d	$r12,$r1,-30976(0x8700)
    4568:	1c001e84 	pcaddu12i	$r4,244(0xf4)
    456c:	00001192 	clo.w	$r18,$r12
    4570:	00000d77 	0x00000d77
    4574:	05540113 	0x05540113
    4578:	00298403 	0x00298403
    457c:	5501131c 	bl	-59703024(0xc710110) # fc71468c <_RAM_DATA+0x7c71368c>
    4580:	133a0802 	addu16i.d	$r2,$r0,-12670(0xce82)
    4584:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    4588:	1c002c34 	pcaddu12i	$r20,353(0x161)
    458c:	1e941600 	pcaddu18i	$r0,303280(0x4a0b0)
    4590:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    4594:	01130000 	fcopysign.d	$f0,$f0,$f0
    4598:	a0110654 	0xa0110654
    459c:	7bffac80 	0x7bffac80
    45a0:	03550113 	andi	$r19,$r8,0x540
    45a4:	0004000a 	alsl.w	$r10,$r0,$r0,0x1
    45a8:	14cd1b00 	lu12i.w	$r0,420056(0x668d8)
    45ac:	31010000 	0x31010000
    45b0:	001e2806 	mulh.d	$r6,$r0,$r10
    45b4:	00003c1c 	revb.d	$r28,$r0
    45b8:	fa9c0100 	0xfa9c0100
    45bc:	1d00000d 	pcaddu12i	$r13,-524288(0x80000)
    45c0:	000013b8 	clo.w	$r24,$r29
    45c4:	0000051b 	0x0000051b
    45c8:	2c4c0305 	vst	$vr5,$r24,768(0x300)
    45cc:	48121c00 	bceqz	$fcc0,4636(0x121c) # 57e8 <_start-0x1bffa818>
    45d0:	921c001e 	0x921c001e
    45d4:	de000011 	0xde000011
    45d8:	1300000d 	addu16i.d	$r13,$r0,-16384(0xc000)
    45dc:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    45e0:	1c002984 	pcaddu12i	$r4,332(0x14c)
    45e4:	02550113 	sltui	$r19,$r8,1344(0x540)
    45e8:	01133408 	fcopysign.d	$f8,$f0,$f13
    45ec:	4c030556 	jirl	$r22,$r10,772(0x304)
    45f0:	001c002c 	mul.w	$r12,$r1,$r0
    45f4:	001e5816 	mulh.d	$r22,$r0,$r22
    45f8:	0011fe1c 	sub.d	$r28,$r16,$r31
    45fc:	54011300 	bl	-67108592(0xc000110) # fc00470c <_RAM_DATA+0x7c00370c>
    4600:	80a01106 	0x80a01106
    4604:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    4608:	0a035501 	0x0a035501
    460c:	00000200 	0x00000200
    4610:	0016ff1b 	andn	$r27,$r24,$r31
    4614:	062c0100 	cacop	0x0,$r8,-1280(0xb00)
    4618:	1c001dec 	pcaddu12i	$r12,239(0xef)
    461c:	0000003c 	0x0000003c
    4620:	0e619c01 	0x0e619c01
    4624:	b81d0000 	0xb81d0000
    4628:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    462c:	05000005 	0x05000005
    4630:	002c6403 	alsl.d	$r3,$r0,$r25,0x1
    4634:	1e0c121c 	pcaddu18i	$r28,24720(0x6090)
    4638:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    463c:	0e450000 	0x0e450000
    4640:	01130000 	fcopysign.d	$f0,$f0,$f0
    4644:	84030554 	0x84030554
    4648:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    464c:	08025501 	0x08025501
    4650:	5601132e 	bl	-54918896(0xcba0110) # fcba4760 <_RAM_DATA+0x7cba3760>
    4654:	2c640305 	vst	$vr5,$r24,-1792(0x900)
    4658:	16001c00 	lu32i.d	$r0,224(0xe0)
    465c:	1c001e1c 	pcaddu12i	$r28,240(0xf0)
    4660:	000011fe 	clo.w	$r30,$r15
    4664:	06540113 	0x06540113
    4668:	ac80a011 	0xac80a011
    466c:	01137bff 	fcopysign.d	$f31,$f31,$f30
    4670:	000a0355 	0x000a0355
    4674:	1b000001 	pcalau12i	$r1,-524288(0x80000)
    4678:	000015d8 	clz.w	$r24,$r14
    467c:	b0062601 	0xb0062601
    4680:	3c1c001d 	0x3c1c001d
    4684:	01000000 	0x01000000
    4688:	000ec79c 	bytepick.d	$r28,$r28,$r17,0x5
    468c:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    4690:	051b0000 	0x051b0000
    4694:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4698:	1c002c7c 	pcaddu12i	$r28,355(0x163)
    469c:	001dd012 	mul.d	$r18,$r0,$r20
    46a0:	0011921c 	sub.d	$r28,$r16,$r4
    46a4:	000eac00 	bytepick.d	$r0,$r0,$r11,0x5
    46a8:	54011300 	bl	-67108592(0xc000110) # fc0047b8 <_RAM_DATA+0x7c0037b8>
    46ac:	29840305 	st.w	$r5,$r24,256(0x100)
    46b0:	01131c00 	fcopysign.d	$f0,$f0,$f7
    46b4:	29080255 	st.b	$r21,$r18,512(0x200)
    46b8:	05560113 	0x05560113
    46bc:	002c7c03 	alsl.d	$r3,$r0,$r31,0x1
    46c0:	e016001c 	0xe016001c
    46c4:	fe1c001d 	0xfe1c001d
    46c8:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    46cc:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    46d0:	ffac80a0 	0xffac80a0
    46d4:	5501137b 	bl	-34799344(0xded0110) # fded47e4 <_RAM_DATA+0x7ded37e4>
    46d8:	00800802 	bstrins.d	$r2,$r0,0x0,0x2
    46dc:	14b51b00 	lu12i.w	$r0,370904(0x5a8d8)
    46e0:	21010000 	sc.w	$r0,$r0,256(0x100)
    46e4:	001d7406 	mulh.wu	$r6,$r0,$r29
    46e8:	00003c1c 	revb.d	$r28,$r0
    46ec:	2d9c0100 	0x2d9c0100
    46f0:	1d00000f 	pcaddu12i	$r15,-524288(0x80000)
    46f4:	000013b8 	clo.w	$r24,$r29
    46f8:	0000051b 	0x0000051b
    46fc:	2c940305 	xvld	$xr5,$r24,1280(0x500)
    4700:	94121c00 	0x94121c00
    4704:	921c001d 	0x921c001d
    4708:	12000011 	addu16i.d	$r17,$r0,-32768(0x8000)
    470c:	1300000f 	addu16i.d	$r15,$r0,-16384(0xc000)
    4710:	03055401 	lu52i.d	$r1,$r0,341(0x155)
    4714:	1c002984 	pcaddu12i	$r4,332(0x14c)
    4718:	02550113 	sltui	$r19,$r8,1344(0x540)
    471c:	01132308 	fcopysign.d	$f8,$f24,$f8
    4720:	94030556 	0x94030556
    4724:	001c002c 	mul.w	$r12,$r1,$r0
    4728:	001da416 	mul.d	$r22,$r0,$r9
    472c:	0011fe1c 	sub.d	$r28,$r16,$r31
    4730:	54011300 	bl	-67108592(0xc000110) # fc004840 <_RAM_DATA+0x7c003840>
    4734:	80a01106 	0x80a01106
    4738:	137bffac 	addu16i.d	$r12,$r29,-8449(0xdeff)
    473c:	08025501 	0x08025501
    4740:	1b000040 	pcalau12i	$r0,-524286(0x80002)
    4744:	000016e0 	clz.w	$r0,$r23
    4748:	38061c01 	0x38061c01
    474c:	3c1c001d 	0x3c1c001d
    4750:	01000000 	0x01000000
    4754:	000f929c 	bytepick.d	$r28,$r20,$r4,0x7
    4758:	13b81d00 	addu16i.d	$r0,$r8,-4601(0xee07)
    475c:	051b0000 	0x051b0000
    4760:	03050000 	lu52i.d	$r0,$r0,320(0x140)
    4764:	1c002cac 	pcaddu12i	$r12,357(0x165)
    4768:	001d5812 	mulh.wu	$r18,$r0,$r22
    476c:	0011921c 	sub.d	$r28,$r16,$r4
    4770:	000f7700 	bytepick.d	$r0,$r24,$r29,0x6
    4774:	54011300 	bl	-67108592(0xc000110) # fc004884 <_RAM_DATA+0x7c003884>
    4778:	29840305 	st.w	$r5,$r24,256(0x100)
    477c:	01131c00 	fcopysign.d	$f0,$f0,$f7
    4780:	134e0155 	addu16i.d	$r21,$r10,-11392(0xd380)
    4784:	03055601 	lu52i.d	$r1,$r16,341(0x155)
    4788:	1c002cac 	pcaddu12i	$r12,357(0x165)
    478c:	1d681600 	pcaddu12i	$r0,-311120(0xb40b0)
    4790:	11fe1c00 	addu16i.d	$r0,$r0,32647(0x7f87)
    4794:	01130000 	fcopysign.d	$f0,$f0,$f0
    4798:	a0110654 	0xa0110654
    479c:	7bffac80 	0x7bffac80
    47a0:	02550113 	sltui	$r19,$r8,1344(0x540)
    47a4:	00002008 	clo.d	$r8,$r0
    47a8:	0015a81b 	xor	$r27,$r0,$r10
    47ac:	06170100 	cacop	0x0,$r8,1472(0x5c0)
    47b0:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
    47b4:	0000003c 	0x0000003c
    47b8:	0ff69c01 	0x0ff69c01
    47bc:	b81d0000 	0xb81d0000
    47c0:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    47c4:	05000005 	0x05000005
    47c8:	002cc403 	alsl.d	$r3,$r0,$r17,0x2
    47cc:	1d1c121c 	pcaddu12i	$r28,-466800(0x8e090)
    47d0:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    47d4:	0fdc0000 	0x0fdc0000
    47d8:	01130000 	fcopysign.d	$f0,$f0,$f0
    47dc:	84030554 	0x84030554
    47e0:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    47e4:	49015501 	bcnez	$fcc0,328020(0x50154) # 54938 <_start-0x1bfab6c8>
    47e8:	05560113 	0x05560113
    47ec:	002cc403 	alsl.d	$r3,$r0,$r17,0x2
    47f0:	2c16001c 	vld	$vr28,$r0,1408(0x580)
    47f4:	fe1c001d 	0xfe1c001d
    47f8:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    47fc:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4800:	ffac80a0 	0xffac80a0
    4804:	5501137b 	bl	-34799344(0xded0110) # fded4914 <_RAM_DATA+0x7ded3914>
    4808:	00004001 	revh.2w	$r1,$r0
    480c:	0014851b 	and	$r27,$r8,$r1
    4810:	06120100 	cacop	0x0,$r8,1152(0x480)
    4814:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
    4818:	0000003c 	0x0000003c
    481c:	105a9c01 	addu16i.d	$r1,$r0,5799(0x16a7)
    4820:	b81d0000 	0xb81d0000
    4824:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    4828:	05000005 	0x05000005
    482c:	002cdc03 	alsl.d	$r3,$r0,$r23,0x2
    4830:	1ce0121c 	pcaddu12i	$r28,458896(0x70090)
    4834:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    4838:	10400000 	addu16i.d	$r0,$r0,4096(0x1000)
    483c:	01130000 	fcopysign.d	$f0,$f0,$f0
    4840:	84030554 	0x84030554
    4844:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    4848:	44015501 	bnez	$r8,262484(0x40154) # 4499c <_start-0x1bfbb664>
    484c:	05560113 	0x05560113
    4850:	002cdc03 	alsl.d	$r3,$r0,$r23,0x2
    4854:	f016001c 	0xf016001c
    4858:	fe1c001c 	0xfe1c001c
    485c:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    4860:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4864:	ffac80a0 	0xffac80a0
    4868:	5501137b 	bl	-34799344(0xded0110) # fded4978 <_RAM_DATA+0x7ded3978>
    486c:	00003801 	revb.2w	$r1,$r0
    4870:	0016a31b 	andn	$r27,$r24,$r8
    4874:	060d0100 	cacop	0x0,$r8,832(0x340)
    4878:	1c001c84 	pcaddu12i	$r4,228(0xe4)
    487c:	0000003c 	0x0000003c
    4880:	10be9c01 	addu16i.d	$r1,$r0,12199(0x2fa7)
    4884:	b81d0000 	0xb81d0000
    4888:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    488c:	05000005 	0x05000005
    4890:	002cf403 	alsl.d	$r3,$r0,$r29,0x2
    4894:	1ca4121c 	pcaddu12i	$r28,336016(0x52090)
    4898:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    489c:	10a40000 	addu16i.d	$r0,$r0,10496(0x2900)
    48a0:	01130000 	fcopysign.d	$f0,$f0,$f0
    48a4:	84030554 	0x84030554
    48a8:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    48ac:	3f015501 	0x3f015501
    48b0:	05560113 	0x05560113
    48b4:	002cf403 	alsl.d	$r3,$r0,$r29,0x2
    48b8:	b416001c 	0xb416001c
    48bc:	fe1c001c 	0xfe1c001c
    48c0:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    48c4:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    48c8:	ffac80a0 	0xffac80a0
    48cc:	5501137b 	bl	-34799344(0xded0110) # fded49dc <_RAM_DATA+0x7ded39dc>
    48d0:	00003401 	revb.4h	$r1,$r0
    48d4:	00156b1b 	or	$r27,$r24,$r26
    48d8:	06080100 	cacop	0x0,$r8,512(0x200)
    48dc:	1c001c48 	pcaddu12i	$r8,226(0xe2)
    48e0:	0000003c 	0x0000003c
    48e4:	11229c01 	addu16i.d	$r1,$r0,18599(0x48a7)
    48e8:	b81d0000 	0xb81d0000
    48ec:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    48f0:	05000005 	0x05000005
    48f4:	002d0c03 	alsl.d	$r3,$r0,$r3,0x3
    48f8:	1c68121c 	pcaddu12i	$r28,213136(0x34090)
    48fc:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    4900:	11080000 	addu16i.d	$r0,$r0,16896(0x4200)
    4904:	01130000 	fcopysign.d	$f0,$f0,$f0
    4908:	84030554 	0x84030554
    490c:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    4910:	3a015501 	0x3a015501
    4914:	05560113 	0x05560113
    4918:	002d0c03 	alsl.d	$r3,$r0,$r3,0x3
    491c:	7816001c 	0x7816001c
    4920:	fe1c001c 	0xfe1c001c
    4924:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    4928:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    492c:	ffac80a0 	0xffac80a0
    4930:	5501137b 	bl	-34799344(0xded0110) # fded4a40 <_RAM_DATA+0x7ded3a40>
    4934:	00003201 	revb.2h	$r1,$r16
    4938:	00141c1b 	nor	$r27,$r0,$r7
    493c:	06030100 	cacop	0x0,$r8,192(0xc0)
    4940:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
    4944:	0000003c 	0x0000003c
    4948:	11869c01 	addu16i.d	$r1,$r0,24999(0x61a7)
    494c:	b81d0000 	0xb81d0000
    4950:	1b000013 	pcalau12i	$r19,-524288(0x80000)
    4954:	05000005 	0x05000005
    4958:	002d2403 	alsl.d	$r3,$r0,$r9,0x3
    495c:	1c2c121c 	pcaddu12i	$r28,90256(0x16090)
    4960:	11921c00 	addu16i.d	$r0,$r0,25735(0x6487)
    4964:	116c0000 	addu16i.d	$r0,$r0,23296(0x5b00)
    4968:	01130000 	fcopysign.d	$f0,$f0,$f0
    496c:	84030554 	0x84030554
    4970:	131c0029 	addu16i.d	$r9,$r1,-14592(0xc700)
    4974:	35015501 	0x35015501
    4978:	05560113 	0x05560113
    497c:	002d2403 	alsl.d	$r3,$r0,$r9,0x3
    4980:	3c16001c 	0x3c16001c
    4984:	fe1c001c 	0xfe1c001c
    4988:	13000011 	addu16i.d	$r17,$r0,-16384(0xc000)
    498c:	11065401 	addu16i.d	$r1,$r0,16789(0x4195)
    4990:	ffac80a0 	0xffac80a0
    4994:	5501137b 	bl	-34799344(0xded0110) # fded4aa4 <_RAM_DATA+0x7ded3aa4>
    4998:	00003101 	revb.2h	$r1,$r8
    499c:	00063d1f 	alsl.wu	$r31,$r8,$r15,0x1
    49a0:	00063d00 	alsl.wu	$r0,$r8,$r15,0x1
    49a4:	060b0700 	cacop	0x0,$r24,705(0x2c1)
    49a8:	0006f81f 	alsl.wu	$r31,$r0,$r30,0x2
    49ac:	0006f800 	alsl.wu	$r0,$r0,$r30,0x2
    49b0:	0d0f0800 	0x0d0f0800
    49b4:	0006291f 	alsl.wu	$r31,$r8,$r10,0x1
    49b8:	00062900 	alsl.wu	$r0,$r8,$r10,0x1
    49bc:	060a0700 	cacop	0x0,$r24,641(0x281)
    49c0:	0012441f 	slt	$r31,$r0,$r17
    49c4:	00124400 	slt	$r0,$r0,$r17
    49c8:	06520600 	0x06520600
    49cc:	000c721f 	bytepick.d	$r31,$r16,$r28,0x0
    49d0:	000c7200 	bytepick.d	$r0,$r16,$r28,0x0
    49d4:	0c4d0900 	0x0c4d0900
    49d8:	0007521f 	alsl.wu	$r31,$r16,$r20,0x3
    49dc:	00075200 	alsl.wu	$r0,$r16,$r20,0x3
    49e0:	06160a00 	cacop	0x0,$r16,1410(0x582)
    49e4:	000be11f 	0x000be11f
    49e8:	000be100 	0x000be100
    49ec:	064e0900 	0x064e0900
    49f0:	000ba91f 	0x000ba91f
    49f4:	000ba900 	0x000ba900
    49f8:	06070b00 	cacop	0x0,$r24,450(0x1c2)
    49fc:	00064d1f 	alsl.wu	$r31,$r8,$r19,0x1
    4a00:	00064d00 	alsl.wu	$r0,$r8,$r19,0x1
    4a04:	060c0700 	cacop	0x0,$r24,769(0x301)
    4a08:	0005ef1f 	alsl.w	$r31,$r24,$r27,0x4
    4a0c:	0005ef00 	alsl.w	$r0,$r24,$r27,0x4
    4a10:	06090700 	cacop	0x0,$r24,577(0x241)
    4a14:	000a6d1f 	0x000a6d1f
    4a18:	000a6d00 	0x000a6d00
    4a1c:	06910c00 	0x06910c00
	...

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
     de0:	03001613 	lu52i.d	$r19,$r16,5(0x5)
     de4:	3b0b3a0e 	0x3b0b3a0e
     de8:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151920 <_start-0x1beae6e0>
     dec:	14000013 	lu12i.w	$r19,0
     df0:	0b0b0117 	0x0b0b0117
     df4:	0b3b0b3a 	0x0b3b0b3a
     df8:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     dfc:	0d150000 	vbitsel.v	$vr0,$vr0,$vr0,$vr10
     e00:	3a0e0300 	0x3a0e0300
     e04:	390b3b0b 	0x390b3b0b
     e08:	0013490b 	maskeqz	$r11,$r8,$r18
     e0c:	01131600 	fcopysign.d	$f0,$f16,$f5
     e10:	0b3a0b0b 	0x0b3a0b0b
     e14:	0b390b3b 	0x0b390b3b
     e18:	00001301 	clo.w	$r1,$r24
     e1c:	03000d17 	lu52i.d	$r23,$r8,3(0x3)
     e20:	3b0b3a08 	0x3b0b3a08
     e24:	490b390b 	bcnez	$fcc0,2951992(0x2d0b38) # 2d195c <_start-0x1bd2e6a4>
     e28:	000b3813 	0x000b3813
     e2c:	01131800 	fcopysign.d	$f0,$f0,$f6
     e30:	050b0e03 	0x050b0e03
     e34:	0b3b0b3a 	0x0b3b0b3a
     e38:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     e3c:	0d190000 	vbitsel.v	$vr0,$vr0,$vr0,$vr18
     e40:	3a0e0300 	0x3a0e0300
     e44:	390b3b0b 	0x390b3b0b
     e48:	3813490b 	0x3813490b
     e4c:	1a000005 	pcalau12i	$r5,0
     e50:	0e030113 	0x0e030113
     e54:	0b3a050b 	0x0b3a050b
     e58:	0b39053b 	0x0b39053b
     e5c:	00001301 	clo.w	$r1,$r24
     e60:	03000d1b 	lu52i.d	$r27,$r8,3(0x3)
     e64:	3b0b3a0e 	0x3b0b3a0e
     e68:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 1519a0 <_start-0x1beae660>
     e6c:	000b3813 	0x000b3813
     e70:	000d1c00 	bytepick.d	$r0,$r0,$r7,0x2
     e74:	0b3a0e03 	0x0b3a0e03
     e78:	0b39053b 	0x0b39053b
     e7c:	05381349 	0x05381349
     e80:	131d0000 	addu16i.d	$r0,$r0,-14528(0xc740)
     e84:	0b0e0301 	0x0b0e0301
     e88:	3b0b3a0b 	0x3b0b3a0b
     e8c:	010b3905 	fmin.d	$f5,$f8,$f14
     e90:	1e000013 	pcaddu18i	$r19,0
     e94:	0b0b0113 	0x0b0b0113
     e98:	053b0b3a 	0x053b0b3a
     e9c:	13010b39 	addu16i.d	$r25,$r25,-16318(0xc042)
     ea0:	171f0000 	lu32i.d	$r0,-460800(0x8f800)
     ea4:	3a0b0b01 	0x3a0b0b01
     ea8:	39053b0b 	0x39053b0b
     eac:	0013010b 	maskeqz	$r11,$r8,$r0
     eb0:	000d2000 	bytepick.d	$r0,$r0,$r8,0x2
     eb4:	0b3a0e03 	0x0b3a0e03
     eb8:	0b39053b 	0x0b39053b
     ebc:	00001349 	clo.w	$r9,$r26
     ec0:	27011521 	stptr.d	$r1,$r9,276(0x114)
     ec4:	00130119 	maskeqz	$r25,$r8,$r0
     ec8:	00342200 	0x00342200
     ecc:	0b3a0e03 	0x0b3a0e03
     ed0:	0b39053b 	0x0b39053b
     ed4:	193f1349 	pcaddi	$r9,-395110(0x9f89a)
     ed8:	0000193c 	cto.w	$r28,$r9
     edc:	03010423 	lu52i.d	$r3,$r1,65(0x41)
     ee0:	0b0b3e0e 	0x0b0b3e0e
     ee4:	3a13490b 	0x3a13490b
     ee8:	39053b0b 	0x39053b0b
     eec:	0013010b 	maskeqz	$r11,$r8,$r0
     ef0:	00282400 	0x00282400
     ef4:	0d1c0e03 	vbitsel.v	$vr3,$vr16,$vr3,$vr24
     ef8:	28250000 	ld.b	$r0,$r0,-1728(0x940)
     efc:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
     f00:	2600000b 	ldptr.d	$r11,$r0,0
     f04:	0e030034 	0x0e030034
     f08:	053b0b3a 	0x053b0b3a
     f0c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
     f10:	1802193f 	pcaddi	$r31,4297(0x10c9)
     f14:	2e270000 	0x2e270000
     f18:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
     f1c:	3b0b3a0e 	0x3b0b3a0e
     f20:	270b3905 	stptr.d	$r5,$r8,2872(0xb38)
     f24:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
     f28:	97184006 	0x97184006
     f2c:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
     f30:	89280000 	0x89280000
     f34:	11000182 	addu16i.d	$r2,$r12,16384(0x4000)
     f38:	00133101 	maskeqz	$r1,$r8,$r12
     f3c:	012e2900 	0x012e2900
     f40:	0e03193f 	0x0e03193f
     f44:	053b0b3a 	0x053b0b3a
     f48:	19270b39 	pcaddi	$r25,-444327(0x93859)
     f4c:	01111349 	fscaleb.d	$f9,$f26,$f4
     f50:	18400612 	pcaddi	$r18,131120(0x20030)
     f54:	01194297 	0x01194297
     f58:	2a000013 	ld.bu	$r19,$r0,0
     f5c:	0111010b 	fscaleb.d	$f11,$f8,$f0
     f60:	13010612 	addu16i.d	$r18,$r16,-16319(0xc041)
     f64:	342b0000 	0x342b0000
     f68:	3a080300 	0x3a080300
     f6c:	39053b0b 	0x39053b0b
     f70:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     f74:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     f78:	892c0000 	0x892c0000
     f7c:	11010182 	addu16i.d	$r2,$r12,16448(0x4040)
     f80:	01133101 	fcopysign.d	$f1,$f8,$f12
     f84:	2d000013 	0x2d000013
     f88:	0001828a 	0x0001828a
     f8c:	42911802 	beqz	$r0,692504(0xa9118) # aa0a4 <_start-0x1bf55f5c>
     f90:	2e000018 	0x2e000018
     f94:	193f012e 	pcaddi	$r14,-395255(0x9f809)
     f98:	0b3a0e03 	0x0b3a0e03
     f9c:	0b390b3b 	0x0b390b3b
     fa0:	13491927 	addu16i.d	$r7,$r9,-11706(0xd246)
     fa4:	06120111 	cacop	0x11,$r8,1152(0x480)
     fa8:	42971840 	beqz	$r2,169752(0x29718) # 2a6c0 <_start-0x1bfd5940>
     fac:	00130119 	maskeqz	$r25,$r8,$r0
     fb0:	00342f00 	0x00342f00
     fb4:	0b3a0803 	0x0b3a0803
     fb8:	0b390b3b 	0x0b390b3b
     fbc:	17021349 	lu32i.d	$r9,-520038(0x8109a)
     fc0:	001742b7 	sll.w	$r23,$r21,$r16
     fc4:	00343000 	0x00343000
     fc8:	0b3a0e03 	0x0b3a0e03
     fcc:	0b390b3b 	0x0b390b3b
     fd0:	18021349 	pcaddi	$r9,4250(0x109a)
     fd4:	34310000 	0x34310000
     fd8:	3a0e0300 	0x3a0e0300
     fdc:	390b3b0b 	0x390b3b0b
     fe0:	0213490b 	slti	$r11,$r8,1234(0x4d2)
     fe4:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
     fe8:	0a320000 	0x0a320000
     fec:	3a0e0300 	0x3a0e0300
     ff0:	390b3b0b 	0x390b3b0b
     ff4:	0001110b 	0x0001110b
     ff8:	82893300 	0x82893300
     ffc:	01110101 	fscaleb.d	$f1,$f8,$f0
    1000:	00001301 	clo.w	$r1,$r24
    1004:	01828934 	0x01828934
    1008:	31011101 	0x31011101
    100c:	35000013 	0x35000013
    1010:	0e030005 	0x0e030005
    1014:	0b3b0b3a 	0x0b3b0b3a
    1018:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    101c:	42b71702 	beqz	$r24,702228(0xab714) # ac730 <_start-0x1bf538d0>
    1020:	36000017 	0x36000017
    1024:	0e030005 	0x0e030005
    1028:	0b3b0b3a 	0x0b3b0b3a
    102c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    1030:	00001802 	cto.w	$r2,$r0
    1034:	3f002e37 	0x3f002e37
    1038:	6e193c19 	bgeu	$r0,$r25,-124612(0x2193c) # fffe2974 <_RAM_DATA+0x7ffe1974>
    103c:	3a0e030e 	0x3a0e030e
    1040:	390b3b0b 	0x390b3b0b
    1044:	0000000b 	0x0000000b
    1048:	25011101 	stptr.w	$r1,$r8,272(0x110)
    104c:	030b130e 	lu52i.d	$r14,$r24,708(0x2c4)
    1050:	550e1b0e 	bl	-63369704(0xc390e18) # fc391e68 <_RAM_DATA+0x7c390e68>
    1054:	10011117 	addu16i.d	$r23,$r8,68(0x44)
    1058:	02000017 	slti	$r23,$r0,0
    105c:	0b0b0024 	0x0b0b0024
    1060:	0e030b3e 	0x0e030b3e
    1064:	16030000 	lu32i.d	$r0,6144(0x1800)
    1068:	3a0e0300 	0x3a0e0300
    106c:	390b3b0b 	0x390b3b0b
    1070:	0013490b 	maskeqz	$r11,$r8,$r18
    1074:	00240400 	crc.w.b.w	$r0,$r0,$r1
    1078:	0b3e0b0b 	0x0b3e0b0b
    107c:	00000803 	0x00000803
    1080:	49003505 	bcnez	$fcc0,1376308(0x150034) # 1510b4 <_start-0x1beaef4c>
    1084:	06000013 	cacop	0x13,$r0,0
    1088:	13490026 	addu16i.d	$r6,$r1,-11712(0xd240)
    108c:	34070000 	0x34070000
    1090:	3a0e0300 	0x3a0e0300
    1094:	390b3b0b 	0x390b3b0b
    1098:	3f13490b 	0x3f13490b
    109c:	00193c19 	srl.d	$r25,$r0,$r15
    10a0:	01130800 	fcopysign.d	$f0,$f0,$f2
    10a4:	0b3a0b0b 	0x0b3a0b0b
    10a8:	0b39053b 	0x0b39053b
    10ac:	00001301 	clo.w	$r1,$r24
    10b0:	03000d09 	lu52i.d	$r9,$r8,3(0x3)
    10b4:	3b0b3a0e 	0x3b0b3a0e
    10b8:	490b3905 	bcnez	$fcc0,1379128(0x150b38) # 151bf0 <_start-0x1beae410>
    10bc:	000b3813 	0x000b3813
    10c0:	00160a00 	orn	$r0,$r16,$r2
    10c4:	0b3a0e03 	0x0b3a0e03
    10c8:	0b39053b 	0x0b39053b
    10cc:	00001349 	clo.w	$r9,$r26
    10d0:	4901010b 	bcnez	$fcc0,2949376(0x2d0100) # 2d11d0 <_start-0x1bd2ee30>
    10d4:	00130113 	maskeqz	$r19,$r8,$r0
    10d8:	00210c00 	div.wu	$r0,$r0,$r3
    10dc:	0b2f1349 	0x0b2f1349
    10e0:	0f0d0000 	0x0f0d0000
    10e4:	490b0b00 	0x490b0b00
    10e8:	0e000013 	0x0e000013
    10ec:	19270015 	pcaddi	$r21,-444416(0x93800)
    10f0:	340f0000 	0x340f0000
    10f4:	3a0e0300 	0x3a0e0300
    10f8:	390b3b0b 	0x390b3b0b
    10fc:	3f13490b 	0x3f13490b
    1100:	00180219 	sra.w	$r25,$r16,$r0
    1104:	012e1000 	0x012e1000
    1108:	0e03193f 	0x0e03193f
    110c:	053b0b3a 	0x053b0b3a
    1110:	19270b39 	pcaddi	$r25,-444327(0x93859)
    1114:	06120111 	cacop	0x11,$r8,1152(0x480)
    1118:	42971840 	beqz	$r2,169752(0x29718) # 2a830 <_start-0x1bfd57d0>
    111c:	00130119 	maskeqz	$r25,$r8,$r0
    1120:	82891100 	0x82891100
    1124:	01110001 	fscaleb.d	$f1,$f0,$f0
    1128:	00001331 	clo.w	$r17,$r25
    112c:	01828912 	0x01828912
    1130:	31011101 	0x31011101
    1134:	00130113 	maskeqz	$r19,$r8,$r0
    1138:	828a1300 	0x828a1300
    113c:	18020001 	pcaddi	$r1,4096(0x1000)
    1140:	00184291 	sra.w	$r17,$r20,$r16
    1144:	00341400 	0x00341400
    1148:	0b3a0e03 	0x0b3a0e03
    114c:	0b39053b 	0x0b39053b
    1150:	17021349 	lu32i.d	$r9,-520038(0x8109a)
    1154:	001742b7 	sll.w	$r23,$r21,$r16
    1158:	010b1500 	fmin.d	$f0,$f8,$f5
    115c:	06120111 	cacop	0x11,$r8,1152(0x480)
    1160:	00001301 	clo.w	$r1,$r24
    1164:	01828916 	0x01828916
    1168:	31011101 	0x31011101
    116c:	17000013 	lu32i.d	$r19,-524288(0x80000)
    1170:	08030034 	0x08030034
    1174:	053b0b3a 	0x053b0b3a
    1178:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    117c:	42b71702 	beqz	$r24,702228(0xab714) # ac890 <_start-0x1bf53770>
    1180:	18000017 	pcaddi	$r23,0
    1184:	0e030034 	0x0e030034
    1188:	053b0b3a 	0x053b0b3a
    118c:	13490b39 	addu16i.d	$r25,$r25,-11710(0xd242)
    1190:	34190000 	0x34190000
    1194:	3a080300 	0x3a080300
    1198:	39053b0b 	0x39053b0b
    119c:	0013490b 	maskeqz	$r11,$r8,$r18
    11a0:	00341a00 	0x00341a00
    11a4:	0b3a0e03 	0x0b3a0e03
    11a8:	0b39053b 	0x0b39053b
    11ac:	18021349 	pcaddi	$r9,4250(0x109a)
    11b0:	2e1b0000 	0x2e1b0000
    11b4:	03193f01 	lu52i.d	$r1,$r24,1615(0x64f)
    11b8:	3b0b3a0e 	0x3b0b3a0e
    11bc:	270b390b 	stptr.d	$r11,$r8,2872(0xb38)
    11c0:	12011119 	addu16i.d	$r25,$r8,-32700(0x8044)
    11c4:	97184006 	0x97184006
    11c8:	13011942 	addu16i.d	$r2,$r10,-16314(0xc046)
    11cc:	341c0000 	0x341c0000
    11d0:	3a0e0300 	0x3a0e0300
    11d4:	390b3b0b 	0x390b3b0b
    11d8:	0213490b 	slti	$r11,$r8,1234(0x4d2)
    11dc:	1742b717 	lu32i.d	$r23,-387656(0xa15b8)
    11e0:	341d0000 	0x341d0000
    11e4:	490e0300 	0x490e0300
    11e8:	02193413 	slti	$r19,$r0,1613(0x64d)
    11ec:	1e000018 	pcaddu18i	$r24,0
    11f0:	00018289 	0x00018289
    11f4:	42930111 	beqz	$r8,-3763456(0x469300) # ffc6a4f4 <_RAM_DATA+0x7fc694f4>
    11f8:	1f000018 	pcaddu18i	$r24,-524288(0x80000)
    11fc:	193f002e 	pcaddi	$r14,-395263(0x9f801)
    1200:	0e6e193c 	0x0e6e193c
    1204:	0b3a0e03 	0x0b3a0e03
    1208:	0b390b3b 	0x0b390b3b
    120c:	Address 0x000000000000120c is out of bounds.


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
 35c:	00000164 	0x00000164
 360:	1c001b6c 	pcaddu12i	$r12,219(0xdb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	00000078 	0x00000078
 368:	1c001be4 	pcaddu12i	$r4,223(0xdf)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	00000028 	0x00000028
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	0000015c 	0x0000015c
 37c:	38160002 	0x38160002
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	00040000 	alsl.w	$r0,$r0,$r0,0x1
 384:	00000000 	0x00000000
 388:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
 38c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c001c48 	pcaddu12i	$r8,226(0xe2)
 394:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c001c84 	pcaddu12i	$r4,228(0xe4)
 39c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
 3a0:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
 3a4:	0000003c 	0x0000003c
 3a8:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 3ac:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c001d38 	pcaddu12i	$r24,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	0000003c 	0x0000003c
 3b8:	1c001d74 	pcaddu12i	$r20,235(0xeb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	0000003c 	0x0000003c
 3c0:	1c001db0 	pcaddu12i	$r16,237(0xed)
 3c4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c001dec 	pcaddu12i	$r12,239(0xef)
 3cc:	0000003c 	0x0000003c
 3d0:	1c001e28 	pcaddu12i	$r8,241(0xf1)
 3d4:	0000003c 	0x0000003c
 3d8:	1c001e64 	pcaddu12i	$r4,243(0xf3)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	0000003c 	0x0000003c
 3e0:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
 3e4:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
 3e8:	1c001edc 	pcaddu12i	$r28,246(0xf6)
 3ec:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
 3f0:	1c001f18 	pcaddu12i	$r24,248(0xf8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
 3f4:	0000003c 	0x0000003c
 3f8:	1c001f54 	pcaddu12i	$r20,250(0xfa)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
 3fc:	0000003c 	0x0000003c
 400:	1c001f90 	pcaddu12i	$r16,252(0xfc)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
 404:	0000003c 	0x0000003c
 408:	1c001fcc 	pcaddu12i	$r12,254(0xfe)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
 40c:	0000003c 	0x0000003c
 410:	1c002008 	pcaddu12i	$r8,256(0x100)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
 414:	0000003c 	0x0000003c
 418:	1c002044 	pcaddu12i	$r4,258(0x102)
 41c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
 420:	1c002080 	pcaddu12i	$r0,260(0x104)
 424:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
 428:	1c0020bc 	pcaddu12i	$r28,261(0x105)
 42c:	0000003c 	0x0000003c
 430:	1c0020f8 	pcaddu12i	$r24,263(0x107)
 434:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 438:	1c002134 	pcaddu12i	$r20,265(0x109)
 43c:	0000003c 	0x0000003c
 440:	1c002170 	pcaddu12i	$r16,267(0x10b)
 444:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
 448:	1c0021ac 	pcaddu12i	$r12,269(0x10d)
 44c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
 450:	1c0021e8 	pcaddu12i	$r8,271(0x10f)
 454:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
 458:	1c002224 	pcaddu12i	$r4,273(0x111)
 45c:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
 460:	1c002260 	pcaddu12i	$r0,275(0x113)
 464:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
 468:	1c00229c 	pcaddu12i	$r28,276(0x114)
 46c:	0000003c 	0x0000003c
 470:	1c0022d8 	pcaddu12i	$r24,278(0x116)
 474:	0000003c 	0x0000003c
 478:	1c002314 	pcaddu12i	$r20,280(0x118)
 47c:	0000003c 	0x0000003c
 480:	1c002350 	pcaddu12i	$r16,282(0x11a)
 484:	0000003c 	0x0000003c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
 488:	1c00238c 	pcaddu12i	$r12,284(0x11c)
 48c:	00000098 	0x00000098
 490:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
 494:	00000024 	0x00000024
 498:	00000000 	0x00000000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
 49c:	00000034 	0x00000034
 4a0:	1c002424 	pcaddu12i	$r4,289(0x121)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
 4a4:	00000030 	0x00000030
 4a8:	1c002454 	pcaddu12i	$r20,290(0x122)
 4ac:	0000004c 	0x0000004c
 4b0:	1c0024a0 	pcaddu12i	$r0,293(0x125)
 4b4:	00000020 	0x00000020
 4b8:	1c0024c0 	pcaddu12i	$r0,294(0x126)
 4bc:	00000090 	0x00000090
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
 4c0:	1c002550 	pcaddu12i	$r16,298(0x12a)
 4c4:	00000110 	0x00000110
 4c8:	1c002660 	pcaddu12i	$r0,307(0x133)
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
     13c:	6c727473 	bgeu	$r3,$r19,29300(0x7274) # 73b0 <_start-0x1bff8c50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:243 (discriminator 3)
     140:	76006e65 	0x76006e65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:244 (discriminator 3)
     144:	74757073 	xvmax.wu	$xr19,$xr3,$xr28
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:246 (discriminator 3)
     148:	72616863 	0x72616863
     14c:	6f687300 	bgeu	$r24,$r0,-38800(0x36870) # ffff69bc <_RAM_DATA+0x7fff59bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:247 (discriminator 1)
     150:	75207472 	xvpickod.b	$xr18,$xr3,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:248 (discriminator 1)
     154:	6769736e 	bge	$r27,$r14,-38544(0x36970) # ffff6ac4 <_RAM_DATA+0x7fff5ac4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:250
     158:	2064656e 	ll.w	$r14,$r11,25700(0x6464)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251
     15c:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 1)
     160:	7831736c 	0x7831736c
     164:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
     168:	74730073 	xvmin.w	$xr19,$xr3,$xr0
     16c:	79706372 	0x79706372
     170:	52415500 	b	67256660(0x4024154) # 40242c4 <_start-0x17fdbd3c>
     174:	65535f54 	bge	$r26,$r20,86876(0x1535c) # 154d0 <_start-0x1bfeab30>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:252 (discriminator 3)
     178:	6144646e 	blt	$r3,$r14,83044(0x14464) # 145dc <_start-0x1bfeba24>
     17c:	53006174 	b	97714272(0x5d30060) # 5d301dc <_start-0x162cfe24>
     180:	4c504d41 	jirl	$r1,$r10,20556(0x504c)
     184:	54435f45 	bl	-49003684(0xd14435c) # fd1444e0 <_RAM_DATA+0x7d1434e0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:251 (discriminator 3)
     188:	47004c52 	bnez	$r2,-3473332(0x4b004c) # ffcb01d4 <_RAM_DATA+0x7fcaf1d4>
     18c:	4320554e 	beqz	$r10,3874900(0x3b2054) # 3b21e0 <_start-0x1bc4de20>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     190:	38203939 	ldx.bu	$r25,$r9,$r14
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 1)
     194:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
     198:	616d2d20 	blt	$r9,$r0,93484(0x16d2c) # 16ec4 <_start-0x1bfe913c>
     19c:	693d6962 	bltu	$r11,$r2,81256(0x13d68) # 13f04 <_start-0x1bfec0fc>
     1a0:	3233706c 	0x3233706c
     1a4:	6d2d2073 	bgeu	$r3,$r19,77088(0x12d20) # 12ec4 <_start-0x1bfed13c>
     1a8:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6518 <_start-0x1bff9ae8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:257 (discriminator 3)
     1ac:	6f6f6c3d 	bgeu	$r1,$r29,-37012(0x36f6c) # ffff7118 <_RAM_DATA+0x7fff6118>
     1b0:	7261676e 	0x7261676e
     1b4:	32336863 	0x32336863
     1b8:	666d2d20 	bge	$r9,$r0,-103124(0x26d2c) # fffe6ee4 <_RAM_DATA+0x7ffe5ee4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:256 (discriminator 3)
     1bc:	6e3d7570 	bgeu	$r11,$r16,-115340(0x23d74) # fffe3f30 <_RAM_DATA+0x7ffe2f30>
     1c0:	20656e6f 	ll.w	$r15,$r19,25964(0x656c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:261
     1c4:	6d636d2d 	bgeu	$r9,$r13,90988(0x1636c) # 16530 <_start-0x1bfe9ad0>
     1c8:	6c65646f 	bgeu	$r3,$r15,25956(0x6564) # 672c <_start-0x1bff98d4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:262
     1cc:	726f6e3d 	0x726f6e3d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:269
     1d0:	206c616d 	ll.w	$r13,$r11,27744(0x6c60)
     1d4:	75746d2d 	0x75746d2d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:270
     1d8:	6c3d656e 	bgeu	$r11,$r14,15716(0x3d64) # 3f3c <_start-0x1bffc0c4>
     1dc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7048 <_RAM_DATA+0x7fff6048>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 2)
     1e0:	68637261 	bltu	$r19,$r1,25456(0x6370) # 6550 <_start-0x1bff9ab0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:207 (discriminator 1)
     1e4:	2d203233 	0x2d203233
     1e8:	4f2d2067 	jirl	$r7,$r3,-53984(0x32d20)
     1ec:	4f2d2030 	jirl	$r16,$r1,-53984(0x32d20)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210 (discriminator 1)
     1f0:	732d2067 	vslli.d	$vr7,$vr3,0x8
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:210
     1f4:	673d6474 	bge	$r3,$r20,-49820(0x33d64) # ffff3f58 <_RAM_DATA+0x7fff2f58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:268
     1f8:	3939756e 	0x3939756e
     1fc:	66662d20 	bge	$r9,$r0,-104916(0x2662c) # fffe6828 <_RAM_DATA+0x7ffe5828>
     200:	74636e75 	xvabsd.wu	$xr21,$xr19,$xr27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:273
     204:	2d6e6f69 	0x2d6e6f69
     208:	74636573 	xvabsd.wu	$xr19,$xr11,$xr25
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/public/ls1x_printf.c:275
     20c:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
     210:	64662d20 	bge	$r9,$r0,26156(0x662c) # 683c <_start-0x1bff97c4>
     214:	2d617461 	0x2d617461
     218:	74636573 	xvabsd.wu	$xr19,$xr11,$xr25
     21c:	736e6f69 	vssrarni.du.q	$vr9,$vr27,0x1b
     220:	73662d20 	vssrani.du.q	$vr0,$vr9,0xb
     224:	64656863 	bge	$r3,$r3,25960(0x6568) # 678c <_start-0x1bff9874>
     228:	6572702d 	bge	$r1,$r13,94832(0x17270) # 17498 <_start-0x1bfe8b68>
cmdline():
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:268
     22c:	72757373 	0x72757373
     230:	662d2065 	bge	$r3,$r5,-119520(0x22d20) # fffe2f50 <_RAM_DATA+0x7ffe1f50>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198
     234:	622d6f6e 	blt	$r27,$r14,-119444(0x22d6c) # fffe2fa0 <_RAM_DATA+0x7ffe1fa0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:198 (discriminator 1)
     238:	746c6975 	0x746c6975
     23c:	61006e69 	blt	$r19,$r9,65644(0x1006c) # 102a8 <_start-0x1bfefd58>
     240:	6e696167 	bgeu	$r11,$r7,-104096(0x26960) # fffe6ba0 <_RAM_DATA+0x7ffe5ba0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226
     244:	67666300 	bge	$r24,$r0,-39328(0x36660) # ffff68a4 <_RAM_DATA+0x7fff58a4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:226 (discriminator 1)
     248:	6961775f 	bltu	$r26,$r31,90484(0x16174) # 163bc <_start-0x1bfe9c44>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:228
     24c:	5f706f74 	bne	$r27,$r20,-36756(0x3706c) # ffff72b8 <_RAM_DATA+0x7fff62b8>
     250:	65656c73 	bge	$r3,$r19,91500(0x1656c) # 167bc <_start-0x1bfe9844>
     254:	6c660070 	bgeu	$r3,$r16,26112(0x6600) # 6854 <_start-0x1bff97ac>
     258:	0074616f 	bstrins.w	$r15,$r11,0x14,0x18
     25c:	69736e75 	bltu	$r19,$r21,95084(0x1736c) # 175c8 <_start-0x1bfe8a38>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:229
     260:	64656e67 	bge	$r19,$r7,25964(0x656c) # 67cc <_start-0x1bff9834>
     264:	61686320 	blt	$r25,$r0,92256(0x16860) # 16ac4 <_start-0x1bfe953c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:230
     268:	68730072 	bltu	$r3,$r18,29440(0x7300) # 7568 <_start-0x1bff8a98>
     26c:	2074726f 	ll.w	$r15,$r19,29808(0x7470)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:231
     270:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
     274:	6e61725f 	bgeu	$r18,$r31,-106128(0x26170) # fffe63e4 <_RAM_DATA+0x7ffe53e4>
     278:	656e5f64 	bge	$r27,$r4,93788(0x16e5c) # 170d4 <_start-0x1bfe8f2c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:202 (discriminator 3)
     27c:	66007478 	bge	$r3,$r24,-130956(0x20074) # fffe02f0 <_RAM_DATA+0x7ffdf2f0>
     280:	616d726f 	blt	$r19,$r15,93552(0x16d70) # 16ff0 <_start-0x1bfe9010>
     284:	72700074 	0x72700074
     288:	42746e69 	beqz	$r19,2520172(0x26746c) # 2676f4 <_start-0x1bd9890c>
     28c:	65006675 	bge	$r19,$r21,65636(0x10064) # 102f0 <_start-0x1bfefd10>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 3)
     290:	695f7478 	bltu	$r3,$r24,89972(0x15f74) # 16204 <_start-0x1bfe9dfc>
     294:	0072746e 	bstrins.w	$r14,$r3,0x12,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
     298:	5f544144 	bne	$r10,$r4,-43968(0x35440) # ffff56d8 <_RAM_DATA+0x7fff46d8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
     29c:	4c5f4c44 	jirl	$r4,$r2,24396(0x5f4c)
     2a0:	70737600 	vmin.w	$vr0,$vr16,$vr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
     2a4:	746e6972 	0x746e6972
     2a8:	54530066 	bl	26759936(0x1985300) # 19855a8 <_start-0x1a67aa58>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
     2ac:	53555441 	b	17257812(0x1075554) # 1075800 <_start-0x1af8a800>
     2b0:	2f3a4400 	0x2f3a4400
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
     2b4:	72657355 	0x72657355
     2b8:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 179e4 <_start-0x1bfe861c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
     2bc:	2f73676e 	0x2f73676e
     2c0:	75636f44 	0x75636f44
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
     2c4:	746e656d 	0x746e656d
     2c8:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff45f4 <_RAM_DATA+0x7fff35f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
     2cc:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
     2d0:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff713c <_RAM_DATA+0x7fff613c>
     2d4:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6644 <_start-0x1bff99bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
     2d8:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7528 <_RAM_DATA+0x7fff6528>
     2dc:	73736563 	0x73736563
     2e0:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6a4c <_RAM_DATA+0x7fff5a4c>
     2e4:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     2e8:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     2ec:	32303143 	0x32303143
     2f0:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7560 <_RAM_DATA+0x7fff6560>
     2f4:	2f77732f 	0x2f77732f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
     2f8:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 656c <_start-0x1bff9a94>
     2fc:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 325c <_start-0x1bffcda4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
     300:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7b30 <_RAM_DATA+0x7fff6b30>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
     304:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6c74 <_RAM_DATA+0x7ffe5c74>
     308:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff316c <_RAM_DATA+0x7fff216c>
     30c:	70737600 	vmin.w	$vr0,$vr16,$vr29
     310:	00737475 	bstrins.w	$r21,$r3,0x13,0x1d
     314:	72707376 	0x72707376
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
     318:	62746e69 	blt	$r19,$r9,-101268(0x2746c) # fffe7784 <_RAM_DATA+0x7ffe6784>
     31c:	00657361 	bstrins.w	$r1,$r27,0x5,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
     320:	5f727473 	bne	$r3,$r19,-36236(0x37274) # ffff7594 <_RAM_DATA+0x7fff6594>
     324:	00646c6f 	bstrins.w	$r15,$r3,0x4,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
     328:	54524155 	bl	89412160(0x5545240) # 5545568 <_start-0x16abaa98>
     32c:	6365525f 	blt	$r18,$r31,-39600(0x36550) # ffff687c <_RAM_DATA+0x7fff587c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
     330:	65766965 	bge	$r11,$r5,95848(0x17668) # 17998 <_start-0x1bfe8668>
     334:	61746144 	blt	$r10,$r4,95328(0x17460) # 17794 <_start-0x1bfe886c>
     338:	77654e00 	xvssrani.wu.d	$xr0,$xr16,0x13
     33c:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
     340:	41550065 	beqz	$r3,1398016(0x155500) # 155840 <_start-0x1beaa7c0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
     344:	535f5452 	b	21716820(0x14b5f54) # 14b6298 <_start-0x1ab49d68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
     348:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff78b8 <_RAM_DATA+0x7fff68b8>
     34c:	696e4974 	bltu	$r11,$r20,93768(0x16e48) # 17194 <_start-0x1bfe8e6c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
     350:	49440074 	bceqz	$fcc3,-3062784(0x514400) # ffd14750 <_RAM_DATA+0x7fd13750>
     354:	4c424153 	jirl	$r19,$r10,16960(0x4240)
     358:	41550045 	beqz	$r2,1398016(0x155500) # 155858 <_start-0x1beaa7a8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
     35c:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc962b0 <_RAM_DATA+0x7fc952b0>
     360:	5374696e 	b	96171112(0x5bb7468) # 5bb77c8 <_start-0x16448838>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
     364:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff78d4 <_RAM_DATA+0x7fff68d4>
     368:	41550074 	beqz	$r3,-3058432(0x515500) # ffd15868 <_RAM_DATA+0x7fd14868>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
     36c:	00785452 	bstrins.w	$r18,$r2,0x18,0x15
     370:	54524155 	bl	89412160(0x5545240) # 55455b0 <_start-0x16abaa50>
     374:	726f575f 	0x726f575f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
     378:	6e654c64 	bgeu	$r3,$r4,-105140(0x2654c) # fffe68c4 <_RAM_DATA+0x7ffe58c4>
     37c:	00687467 	bstrins.w	$r7,$r3,0x8,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
     380:	42414e45 	beqz	$r18,1458508(0x16414c) # 1644cc <_start-0x1be9bb34>
     384:	5500454c 	bl	87097412(0x5310044) # 53103c8 <_start-0x16cefc38>
     388:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff57d8 <_RAM_DATA+0x7fff47d8>
     38c:	55005449 	bl	19202132(0x1250054) # 12503e0 <_start-0x1adafc20>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
     390:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff57e0 <_RAM_DATA+0x7fff47e0>
     394:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
     398:	72615500 	0x72615500
     39c:	6e695f74 	bgeu	$r27,$r20,-104100(0x2695c) # fffe6cf8 <_RAM_DATA+0x7ffe5cf8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:271
     3a0:	62007469 	blt	$r3,$r9,-130956(0x20074) # fffe0414 <_RAM_DATA+0x7ffdf414>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:273
     3a4:	74737469 	xvmin.w	$xr9,$xr3,$xr29
     3a8:	73757461 	0x73757461
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     3ac:	52415500 	b	67256660(0x4024154) # 4024500 <_start-0x17fdbb00>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
     3b0:	65475f54 	bge	$r26,$r20,83804(0x1475c) # 14b0c <_start-0x1bfeb4f4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
     3b4:	53544974 	b	97735752(0x5d35448) # 5d357fc <_start-0x162ca804>
     3b8:	75746174 	0x75746174
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
     3bc:	6c430073 	bgeu	$r3,$r19,17152(0x4300) # 46bc <_start-0x1bffb944>
     3c0:	5f6b636f 	bne	$r27,$r15,-38048(0x36b60) # ffff6f20 <_RAM_DATA+0x7fff5f20>
     3c4:	71657246 	0x71657246
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
     3c8:	52415500 	b	67256660(0x4024154) # 402451c <_start-0x17fdbae4>
     3cc:	4c465f54 	jirl	$r20,$r26,18012(0x465c)
     3d0:	55004741 	bl	-50003900(0xd050044) # fd050414 <_RAM_DATA+0x7d04f414>
     3d4:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5824 <_RAM_DATA+0x7fff4824>
     3d8:	69726150 	bltu	$r10,$r16,94816(0x17260) # 17638 <_start-0x1bfe89c8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
     3dc:	435f7974 	beqz	$r11,-2924680(0x535f78) # ffd36354 <_RAM_DATA+0x7fd35354>
     3e0:	72746e6f 	0x72746e6f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 1)
     3e4:	55006c6f 	bl	29163628(0x1bd006c) # 1bd0450 <_start-0x1a42fbb0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284
     3e8:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff5838 <_RAM_DATA+0x7fff4838>
     3ec:	465f5449 	bnez	$r2,2514772(0x265f54) # 266340 <_start-0x1bd99cc0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:284 (discriminator 1)
     3f0:	0047414c 	0x0047414c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296
     3f4:	552f3a44 	bl	-116314312(0x9112f38) # f911332c <_RAM_DATA+0x7911232c>
     3f8:	73726573 	0x73726573
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:288 (discriminator 3)
     3fc:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe6570 <_RAM_DATA+0x7ffe5570>
     400:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c3370 <_start-0x1be3cc90>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:289 (discriminator 3)
     404:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 17964 <_start-0x1bfe869c>
     408:	73746e65 	0x73746e65
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:290 (discriminator 3)
     40c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 734c <_start-0x1bff8cb4>
     410:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff503c <_RAM_DATA+0x7fff403c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:291 (discriminator 3)
     414:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d6b80 <_start-0x1bc29480>
     418:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff6c78 <_RAM_DATA+0x7fff5c78>
     41c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff738c <_RAM_DATA+0x7fff638c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 3)
     420:	69737365 	bltu	$r27,$r5,95088(0x17370) # 17790 <_start-0x1bfe8870>
     424:	535f676e 	b	-38051996(0xdbb5f64) # fdbb6388 <_RAM_DATA+0x7dbb5388>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:286 (discriminator 1)
     428:	65747379 	bge	$r27,$r25,95344(0x17470) # 17898 <_start-0x1bfe8768>
     42c:	43312f6d 	beqz	$r27,3617068(0x37312c) # 373558 <_start-0x1bc8caa8>
     430:	2f323031 	0x2f323031
     434:	2f637273 	0x2f637273
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     438:	702f7773 	vaddwev.d.wu	$vr19,$vr27,$vr29
     43c:	696c6275 	bltu	$r19,$r21,93280(0x16c60) # 1709c <_start-0x1bfe8f64>
     440:	736c2f63 	0x736c2f63
     444:	755f7831 	0x755f7831
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:298 (discriminator 3)
     448:	2e747261 	0x2e747261
     44c:	75460063 	xvfcvt.h.s	$xr3,$xr3,$xr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:299 (discriminator 3)
     450:	6974636e 	bltu	$r27,$r14,95328(0x17460) # 178b0 <_start-0x1bfe8750>
     454:	6c616e6f 	bgeu	$r19,$r15,24940(0x616c) # 65c0 <_start-0x1bff9a40>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:300 (discriminator 3)
     458:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
     45c:	61550065 	blt	$r3,$r5,87296(0x15500) # 1595c <_start-0x1bfea6a4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 3)
     460:	5f317472 	bne	$r3,$r18,-52876(0x33174) # ffff35d4 <_RAM_DATA+0x7fff25d4>
     464:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:296 (discriminator 1)
     468:	52415500 	b	67256660(0x4024154) # 40245bc <_start-0x17fdba44>
     46c:	72545f54 	0x72545f54
     470:	72656769 	0x72656769
     474:	53455200 	b	-134003376(0x8034550) # f80349c4 <_RAM_DATA+0x780339c4>
     478:	55005445 	bl	18153556(0x1150054) # 11504cc <_start-0x1aeafb34>
     47c:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff58cc <_RAM_DATA+0x7fff48cc>
     480:	61657242 	blt	$r18,$r2,91504(0x16570) # 169f0 <_start-0x1bfe9610>
     484:	6f435f6b 	bgeu	$r27,$r11,-48292(0x3435c) # ffff47e0 <_RAM_DATA+0x7fff37e0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:305 (discriminator 3)
     488:	6f72746e 	bgeu	$r3,$r14,-36236(0x37274) # ffff76fc <_RAM_DATA+0x7fff66fc>
     48c:	6155006c 	blt	$r3,$r12,87296(0x15500) # 1598c <_start-0x1bfea674>
     490:	6e497472 	bgeu	$r3,$r18,-112268(0x24974) # fffe4e04 <_RAM_DATA+0x7ffe3e04>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:306 (discriminator 3)
     494:	55007469 	bl	27590772(0x1a50074) # 1a50508 <_start-0x1a5afaf8>
     498:	30747261 	0x30747261
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 3)
     49c:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 17304 <_start-0x1bfe8cfc>
     4a0:	75625f74 	0x75625f74
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:303 (discriminator 1)
     4a4:	55006461 	bl	25493604(0x1850064) # 1850508 <_start-0x1a7afaf8>
     4a8:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff58f8 <_RAM_DATA+0x7fff48f8>
     4ac:	61656c43 	blt	$r2,$r3,91500(0x1656c) # 16a18 <_start-0x1bfe95e8>
     4b0:	50544972 	b	97014856(0x5c85448) # 5c858f8 <_start-0x1637a708>
     4b4:	69646e65 	bltu	$r19,$r5,91244(0x1646c) # 16920 <_start-0x1bfe96e0>
     4b8:	6942676e 	bltu	$r27,$r14,82532(0x14264) # 1471c <_start-0x1bfeb8e4>
     4bc:	41550074 	beqz	$r3,-3058432(0x515500) # ffd159bc <_RAM_DATA+0x7fd149bc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:279
     4c0:	505f5452 	b	21520212(0x1485f54) # 1486414 <_start-0x1ab79bec>
     4c4:	74697261 	xvavgr.w	$xr1,$xr19,$xr28
     4c8:	69425f79 	bltu	$r27,$r25,82524(0x1425c) # 14724 <_start-0x1bfeb8dc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:312
     4cc:	6f435f64 	bgeu	$r27,$r4,-48292(0x3435c) # ffff4828 <_RAM_DATA+0x7fff3828>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:318
     4d0:	6f72746e 	bgeu	$r3,$r14,-36236(0x37274) # ffff7744 <_RAM_DATA+0x7fff6744>
     4d4:	7953006c 	0x7953006c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:314
     4d8:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16a4c <_start-0x1bfe95b4>
     4dc:	71657246 	0x71657246
     4e0:	675f7800 	bge	$r0,$r0,-41096(0x35f78) # ffff6458 <_RAM_DATA+0x7fff5458>
     4e4:	68637465 	bltu	$r3,$r5,25460(0x6374) # 6858 <_start-0x1bff97a8>
     4e8:	64007261 	bge	$r19,$r1,112(0x70) # 558 <_start-0x1bfffaa8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:315
     4ec:	79616c65 	0x79616c65
     4f0:	00736d5f 	bstrins.w	$r31,$r10,0x13,0x1b
     4f4:	54524155 	bl	89412160(0x5545240) # 5545734 <_start-0x16aba8cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:321
     4f8:	7261505f 	0x7261505f
     4fc:	00797469 	bstrins.w	$r9,$r3,0x19,0x1d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:323
     500:	69755f5f 	bltu	$r26,$r31,95580(0x1755c) # 17a5c <_start-0x1bfe85a4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     504:	3631746e 	0x3631746e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330
     508:	5500745f 	bl	24969332(0x17d0074) # 17d057c <_start-0x1a82fa84>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:332 (discriminator 2)
     50c:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff595c <_RAM_DATA+0x7fff495c>
     510:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     514:	65707954 	bge	$r10,$r20,94328(0x17078) # 1758c <_start-0x1bfe8a74>
     518:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
     51c:	54524155 	bl	89412160(0x5545240) # 554575c <_start-0x16aba8a4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 2)
     520:	7561425f 	0x7561425f
     524:	74615264 	xvabsd.w	$xr4,$xr19,$xr20
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:330 (discriminator 1)
     528:	41550065 	beqz	$r3,1398016(0x155500) # 155a28 <_start-0x1beaa5d8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334
     52c:	495f5452 	bceqz	$fcc2,-3580076(0x495f54) # ffc96480 <_RAM_DATA+0x7fc95480>
     530:	6e6f4354 	bgeu	$r26,$r20,-102592(0x26f40) # fffe7470 <_RAM_DATA+0x7ffe6470>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:334 (discriminator 1)
     534:	00676966 	bstrins.w	$r6,$r11,0x7,0x1a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346
     538:	54524155 	bl	89412160(0x5545240) # 5545778 <_start-0x16aba888>
     53c:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:338 (discriminator 3)
     540:	67616c46 	bge	$r2,$r6,-40596(0x3616c) # ffff66ac <_RAM_DATA+0x7fff56ac>
     544:	74617453 	xvabsd.w	$xr19,$xr2,$xr29
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:339 (discriminator 3)
     548:	55007375 	bl	-36372368(0xdd50070) # fdd505b8 <_RAM_DATA+0x7dd4f5b8>
     54c:	5f545241 	bne	$r18,$r1,-43952(0x35450) # ffff599c <_RAM_DATA+0x7fff499c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:340 (discriminator 3)
     550:	706f7453 	0x706f7453
     554:	73746942 	0x73746942
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:341 (discriminator 3)
     558:	6b615700 	bltu	$r24,$r0,-40620(0x36154) # ffff66ac <_RAM_DATA+0x7fff56ac>
     55c:	35325f65 	0x35325f65
     560:	63657336 	blt	$r25,$r22,-39568(0x36570) # ffff6ad0 <_RAM_DATA+0x7fff5ad0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 3)
     564:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     568:	35327000 	0x35327000
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:336 (discriminator 1)
     56c:	63657336 	blt	$r25,$r22,-39568(0x36570) # ffff6adc <_RAM_DATA+0x7fff5adc>
     570:	73694400 	vssrarni.w.d	$vr0,$vr0,0x11
     574:	656c6261 	bge	$r19,$r1,93280(0x16c60) # 171d4 <_start-0x1bfe8e2c>
     578:	00746e49 	bstrins.w	$r9,$r18,0x14,0x1b
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     57c:	33544e49 	xvstelm.h	$xr9,$r18,38(0x26),0x5
     580:	45005532 	bnez	$r9,-3604396(0x490054) # ffc905d4 <_RAM_DATA+0x7fc8f5d4>
     584:	6c62616e 	bgeu	$r11,$r14,25184(0x6260) # 67e4 <_start-0x1bff981c>
     588:	746e4965 	0x746e4965
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:348 (discriminator 3)
     58c:	2f3a4400 	0x2f3a4400
     590:	72657355 	0x72657355
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:349 (discriminator 3)
     594:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17cc0 <_start-0x1bfe8340>
     598:	2f73676e 	0x2f73676e
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:350 (discriminator 3)
     59c:	75636f44 	0x75636f44
     5a0:	746e656d 	0x746e656d
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 3)
     5a4:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff48d0 <_RAM_DATA+0x7fff38d0>
     5a8:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:346 (discriminator 1)
     5ac:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7418 <_RAM_DATA+0x7fff6418>
     5b0:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6920 <_start-0x1bff96e0>
     5b4:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7804 <_RAM_DATA+0x7fff6804>
     5b8:	73736563 	0x73736563
     5bc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff6d28 <_RAM_DATA+0x7fff5d28>
     5c0:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     5c4:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     5c8:	32303143 	0x32303143
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:355 (discriminator 3)
     5cc:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff783c <_RAM_DATA+0x7fff683c>
     5d0:	2f77732f 	0x2f77732f
     5d4:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 6848 <_start-0x1bff97b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:356 (discriminator 3)
     5d8:	6c2f6369 	bgeu	$r27,$r9,12128(0x2f60) # 3538 <_start-0x1bffcac8>
     5dc:	5f783173 	bne	$r11,$r19,-34768(0x37830) # ffff7e0c <_RAM_DATA+0x7fff6e0c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 3)
     5e0:	6d6d6f63 	bgeu	$r27,$r3,93548(0x16d6c) # 1734c <_start-0x1bfe8cb4>
     5e4:	632e6e6f 	blt	$r19,$r15,-53652(0x32e6c) # ffff3450 <_RAM_DATA+0x7fff2450>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:353 (discriminator 1)
     5e8:	6d697400 	bgeu	$r0,$r0,92532(0x16974) # 16f5c <_start-0x1bfe90a4>
     5ec:	53007265 	b	-107544464(0x9970070) # f997065c <_RAM_DATA+0x7996f65c>
     5f0:	735f7465 	vsrarni.d.q	$vr5,$vr3,0x5d
     5f4:	5f74666f 	bne	$r19,$r15,-35740(0x37464) # ffff7a58 <_RAM_DATA+0x7fff6a58>
     5f8:	706f7473 	0x706f7473
     5fc:	6b615700 	bltu	$r24,$r0,-40620(0x36154) # ffff6750 <_RAM_DATA+0x7fff5750>
     600:	65535f65 	bge	$r27,$r5,86876(0x1535c) # 1595c <_start-0x1bfea6a4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:329
     604:	65530074 	bge	$r3,$r20,86784(0x15300) # 15904 <_start-0x1bfea6fc>
     608:	6f735f74 	bgeu	$r27,$r20,-36004(0x3735c) # ffff7964 <_RAM_DATA+0x7fff6964>
     60c:	695f7466 	bltu	$r3,$r6,89972(0x15f74) # 16580 <_start-0x1bfe9a80>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:376 (discriminator 3)
     610:	4900746e 	bceqz	$fcc3,3735668(0x390074) # 390684 <_start-0x1bc6f97c>
     614:	5538544e 	bl	20527188(0x1393854) # 1393e68 <_start-0x1ac6c198>
     618:	47734900 	bnez	$r8,226120(0x37348) # 37960 <_start-0x1bfc86a0>
     61c:	61626f6c 	blt	$r27,$r12,90732(0x1626c) # 16888 <_start-0x1bfe9778>
     620:	746e496c 	0x746e496c
     624:	6e65704f 	bgeu	$r2,$r15,-105104(0x26570) # fffe6b94 <_RAM_DATA+0x7ffe5b94>
     628:	74655300 	xvavg.w	$xr0,$xr24,$xr20
     62c:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16f80 <_start-0x1bfe9080>
     630:	735f7265 	vsrarni.d.q	$vr5,$vr19,0x5c
     634:	00706f74 	bstrins.w	$r20,$r27,0x10,0x1b
     638:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 173a0 <_start-0x1bfe8c60>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 3)
     63c:	74655300 	xvavg.w	$xr0,$xr24,$xr20
     640:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16f94 <_start-0x1bfe906c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375 (discriminator 1)
     644:	635f7265 	blt	$r19,$r5,-41104(0x35f70) # ffff65b4 <_RAM_DATA+0x7fff55b4>
     648:	7261656c 	0x7261656c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 2)
     64c:	74655300 	xvavg.w	$xr0,$xr24,$xr20
     650:	6d69545f 	bgeu	$r2,$r31,92500(0x16954) # 16fa4 <_start-0x1bfe905c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373 (discriminator 1)
     654:	495f7265 	0x495f7265
     658:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:375
     65c:	706d6f63 	0x706d6f63
     660:	00657261 	bstrins.w	$r1,$r19,0x5,0x1c
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378
     664:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff69d0 <_RAM_DATA+0x7fff59d0>
     668:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe6fd8 <_RAM_DATA+0x7ffe5fd8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:380 (discriminator 3)
     66c:	73616274 	vssrani.w.d	$vr20,$vr19,0x18
     670:	61750065 	blt	$r3,$r5,95488(0x17500) # 17b70 <_start-0x1bfe8490>
     674:	665f7472 	bge	$r3,$r18,-106636(0x25f74) # fffe65e8 <_RAM_DATA+0x7ffe55e8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 3)
     678:	306f6669 	0x306f6669
     67c:	7274635f 	0x7274635f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:378 (discriminator 1)
     680:	3a44006c 	0x3a44006c
     684:	6573552f 	bge	$r9,$r15,95060(0x17354) # 179d8 <_start-0x1bfe8628>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:385
     688:	772f7372 	0x772f7372
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391
     68c:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
     690:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff75d4 <_RAM_DATA+0x7fff65d4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:393 (discriminator 3)
     694:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe6c00 <_RAM_DATA+0x7ffe5c00>
     698:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33608 <_RAM_DATA+0x7fd32608>
     69c:	2f65646f 	0x2f65646f
     6a0:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe760c <_RAM_DATA+0x7ffe660c>
     6a4:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff78e4 <_RAM_DATA+0x7fff68e4>
     6a8:	72505f68 	0x72505f68
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 3)
     6ac:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
     6b0:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7518 <_RAM_DATA+0x7fff6518>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392 (discriminator 1)
     6b4:	7379535f 	0x7379535f
     6b8:	2f6d6574 	0x2f6d6574
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 2)
     6bc:	30314331 	0x30314331
     6c0:	72732f32 	0x72732f32
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:391 (discriminator 1)
     6c4:	77732f63 	0x77732f63
     6c8:	6275702f 	blt	$r1,$r15,-101008(0x27570) # fffe7c38 <_RAM_DATA+0x7ffe6c38>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:392
     6cc:	2f63696c 	0x2f63696c
     6d0:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff6a3c <_RAM_DATA+0x7fff5a3c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:394
     6d4:	6e697270 	bgeu	$r19,$r16,-104080(0x26970) # fffe7044 <_RAM_DATA+0x7ffe6044>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397
     6d8:	632e6674 	blt	$r19,$r20,-53660(0x32e64) # ffff353c <_RAM_DATA+0x7fff253c>
     6dc:	636f7300 	blt	$r24,$r0,-37008(0x36f70) # ffff764c <_RAM_DATA+0x7fff664c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:156
     6e0:	7475705f 	xvmax.wu	$xr31,$xr2,$xr28
     6e4:	6f730073 	bgeu	$r3,$r19,-36096(0x37300) # ffff79e4 <_RAM_DATA+0x7fff69e4>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401
     6e8:	796d5f63 	0x796d5f63
     6ec:	63747570 	blt	$r11,$r16,-35724(0x37474) # ffff7b60 <_RAM_DATA+0x7fff6b60>
     6f0:	00726168 	bstrins.w	$r8,$r11,0x12,0x18
     6f4:	5f636f73 	bne	$r27,$r19,-40084(0x3636c) # ffff6a60 <_RAM_DATA+0x7fff5a60>
     6f8:	7270796d 	0x7270796d
     6fc:	66746e69 	bge	$r19,$r9,-101268(0x2746c) # fffe7b68 <_RAM_DATA+0x7ffe6b68>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:401 (discriminator 1)
     700:	534f4900 	b	67325768(0x4034f48) # 4035648 <_start-0x17fca9b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:404
     704:	00304c45 	0x00304c45
     708:	45534f49 	bnez	$r26,2446156(0x25534c) # 255a54 <_start-0x1bdaa5ac>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:405
     70c:	4900314c 	bcnez	$fcc2,3211312(0x310030) # 31073c <_start-0x1bcef8c4>
     710:	4c45534f 	jirl	$r15,$r26,17744(0x4550)
     714:	4f490032 	jirl	$r18,$r1,-46848(0x34900)
     718:	334c4553 	xvstelm.h	$xr19,$r10,34(0x22),0x3
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:403
     71c:	63644100 	blt	$r8,$r0,-39872(0x36440) # ffff6b5c <_RAM_DATA+0x7fff5b5c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 2)
     720:	00746144 	bstrins.w	$r4,$r10,0x14,0x18
     724:	31767372 	0x31767372
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:397 (discriminator 1)
     728:	76737200 	0x76737200
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:399
     72c:	73720032 	0x73720032
     730:	47003376 	bnez	$r27,-2424784(0x5b0030) # ffdb0760 <_RAM_DATA+0x7fdaf760>
     734:	424f4950 	beqz	$r10,-4042936(0x424f48) # ffc2567c <_RAM_DATA+0x7fc2467c>
     738:	45004f5f 	bnez	$r26,-196532(0x7d004c) # fffd0784 <_RAM_DATA+0x7ffcf784>
     73c:	746e4978 	0x746e4978
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:410
     740:	47006e45 	bnez	$r18,1507436(0x17006c) # 1707ac <_start-0x1be8f854>
     744:	414f4950 	beqz	$r10,-4108472(0x414f48) # ffc1568c <_RAM_DATA+0x7fc1468c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:411
     748:	5700495f 	bl	92209224(0x57f0048) # 57f0790 <_start-0x1680f870>
     74c:	66437464 	bge	$r3,$r4,-113804(0x24374) # fffe4ac0 <_RAM_DATA+0x7ffe3ac0>
     750:	70670067 	vavg.wu	$vr7,$vr3,$vr0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:416
     754:	775f6f69 	xvsrarni.d.q	$xr9,$xr27,0x5b
     758:	65746972 	bge	$r11,$r18,95336(0x17468) # 17bc0 <_start-0x1bfe8440>
     75c:	646d4300 	bge	$r24,$r0,27968(0x6d40) # 749c <_start-0x1bff8b64>
     760:	00737453 	bstrins.w	$r19,$r2,0x13,0x1d
     764:	6e497845 	bgeu	$r2,$r5,-112264(0x24978) # fffe50dc <_RAM_DATA+0x7ffe40dc>
     768:	63725374 	blt	$r27,$r20,-36272(0x37250) # ffff79b8 <_RAM_DATA+0x7fff69b8>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422
     76c:	49504700 	0x49504700
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 1)
     770:	4f5f414f 	jirl	$r15,$r10,-41152(0x35f40)
     774:	6f500045 	bgeu	$r2,$r5,-45056(0x35000) # ffff5774 <_RAM_DATA+0x7fff4774>
     778:	43726577 	beqz	$r11,-2133404(0x5f7264) # ffdf79dc <_RAM_DATA+0x7fdf69dc>
     77c:	44006766 	bnez	$r27,1572964(0x180064) # 1807e0 <_start-0x1be7f820>
     780:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     784:	2f737265 	0x2f737265
     788:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff75e8 <_RAM_DATA+0x7fff65e8>
     78c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4bb8 <_RAM_DATA+0x7fff3bb8>
     790:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17504 <_start-0x1bfe8afc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:424
     794:	2f73746e 	0x2f73746e
     798:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16c04 <_start-0x1bfe93fc>
     79c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff76e8 <_RAM_DATA+0x7fff66e8>
     7a0:	7241676e 	0x7241676e
     7a4:	505f6863 	b	25976680(0x18c5f68) # 18c670c <_start-0x1a7398f4>
     7a8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16b14 <_start-0x1bfe94ec>
     7ac:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe711c <_RAM_DATA+0x7ffe611c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:422 (discriminator 2)
     7b0:	79535f67 	0x79535f67
     7b4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16d28 <_start-0x1bfe92d8>
     7b8:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:426
     7bc:	732f3230 	0x732f3230
     7c0:	732f6372 	0x732f6372
     7c4:	75702f77 	0x75702f77
     7c8:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7134 <_RAM_DATA+0x7fff6134>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427
     7cc:	636f732f 	blt	$r25,$r15,-37008(0x36f70) # ffff773c <_RAM_DATA+0x7fff673c>
     7d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 17834 <_start-0x1bfe87cc>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:429 (discriminator 3)
     7d4:	00632e6f 	bstrins.w	$r15,$r19,0x3,0xb
     7d8:	70696843 	vavgr.w	$vr3,$vr2,$vr26
     7dc:	6c727443 	bgeu	$r2,$r3,29300(0x7274) # 7a50 <_start-0x1bff85b0>
     7e0:	49504700 	0x49504700
     7e4:	495f424f 	0x495f424f
     7e8:	49784500 	bcnez	$fcc0,96324(0x17844) # 1802c <_start-0x1bfe7fd4>
     7ec:	6445746e 	bge	$r3,$r14,17780(0x4574) # 4d60 <_start-0x1bffb2a0>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 3)
     7f0:	43006567 	beqz	$r11,2031716(0x1f0064) # 1f0854 <_start-0x1be0f7ac>
     7f4:	746e756f 	0x746e756f
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:427 (discriminator 1)
     7f8:	63644100 	blt	$r8,$r0,-39872(0x36440) # ffff6c38 <_RAM_DATA+0x7fff5c38>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:432
     7fc:	6c727443 	bgeu	$r2,$r3,29300(0x7274) # 7a70 <_start-0x1bff8590>
     800:	6c755000 	bgeu	$r0,$r0,30032(0x7550) # 7d50 <_start-0x1bff82b0>
     804:	00306573 	0x00306573
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:436
     808:	736c7550 	vssrarni.bu.h	$vr16,$vr10,0xd
     80c:	47003165 	bnez	$r11,1507376(0x170030) # 17083c <_start-0x1be8f7c4>
     810:	424f4950 	beqz	$r10,-4042936(0x424f48) # ffc25758 <_RAM_DATA+0x7fc24758>
     814:	00454f5f 	srli.d	$r31,$r26,0x13
     818:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
     81c:	004f5f41 	0x004f5f41
     820:	72657355 	0x72657355
     824:	00746144 	bstrins.w	$r4,$r10,0x14,0x18
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     828:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7198 <_RAM_DATA+0x7fff6198>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     82c:	696e695f 	bltu	$r10,$r31,93800(0x16e68) # 17694 <_start-0x1bfe896c>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:151
     830:	50470074 	b	30426880(0x1d04700) # 1d04f30 <_start-0x1a2fb0d0>
     834:	69424f49 	bltu	$r26,$r9,82508(0x1424c) # 14a80 <_start-0x1bfeb580>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:438
     838:	6f430074 	bgeu	$r3,$r20,-48384(0x34300) # ffff4b38 <_RAM_DATA+0x7fff3b38>
     83c:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # fffe69a8 <_RAM_DATA+0x7ffe59a8>
     840:	67005764 	bge	$r27,$r4,-65452(0x30054) # ffff0894 <_RAM_DATA+0x7ffef894>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:242
     844:	006f6970 	bstrins.w	$r16,$r11,0xf,0x1a
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:241
     848:	6e497845 	bgeu	$r2,$r5,-112264(0x24978) # fffe51c0 <_RAM_DATA+0x7ffe41c0>
     84c:	6c6f5074 	bgeu	$r3,$r20,28496(0x6f50) # 779c <_start-0x1bff8864>
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:444
     850:	5f574800 	bne	$r0,$r0,-43192(0x35748) # ffff5f98 <_RAM_DATA+0x7fff4f98>
     854:	5f554d50 	bne	$r10,$r16,-43700(0x3554c) # ffff5da0 <_RAM_DATA+0x7fff4da0>
     858:	70670074 	vavg.wu	$vr20,$vr3,$vr0
     85c:	725f6f69 	0x725f6f69
     860:	00646165 	bstrins.w	$r5,$r11,0x4,0x18
     864:	46746457 	bnez	$r2,-2198428(0x5e7464) # ffde7cc8 <_RAM_DATA+0x7fde6cc8>
     868:	00646565 	bstrins.w	$r5,$r11,0x4,0x19
     86c:	72707273 	0x72707273
     870:	4800746f 	bceqz	$fcc3,3932276(0x3c0074) # 3c08e4 <_start-0x1bc3f71c>
     874:	4e495f57 	jirl	$r23,$r26,-112292(0x2495c)
     878:	745f4354 	0x745f4354
     87c:	2f3a4400 	0x2f3a4400
     880:	72657355 	0x72657355
     884:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 17fb0 <_start-0x1bfe8050>
     888:	2f73676e 	0x2f73676e
     88c:	75636f44 	0x75636f44
     890:	746e656d 	0x746e656d
     894:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4bc0 <_RAM_DATA+0x7fff3bc0>
     898:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     89c:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7708 <_RAM_DATA+0x7fff6708>
     8a0:	68637241 	bltu	$r18,$r1,25456(0x6370) # 6c10 <_start-0x1bff93f0>
     8a4:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7af4 <_RAM_DATA+0x7fff6af4>
     8a8:	73736563 	0x73736563
     8ac:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7018 <_RAM_DATA+0x7fff6018>
     8b0:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     8b4:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     8b8:	32303143 	0x32303143
     8bc:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7b2c <_RAM_DATA+0x7fff6b2c>
     8c0:	2f77732f 	0x2f77732f
     8c4:	6c627570 	bgeu	$r11,$r16,25204(0x6274) # 6b38 <_start-0x1bff94c8>
     8c8:	732f6369 	0x732f6369
     8cc:	755f636f 	0x755f636f
     8d0:	2e747261 	0x2e747261
     8d4:	64650063 	bge	$r3,$r3,25856(0x6500) # 6dd4 <_start-0x1bff922c>
     8d8:	75006567 	0x75006567
     8dc:	31747261 	0x31747261
     8e0:	746e695f 	0x746e695f
     8e4:	75727265 	0x75727265
     8e8:	45007470 	bnez	$r3,-4128652(0x410074) # ffc1095c <_RAM_DATA+0x7fc0f95c>
     8ec:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5240 <_RAM_DATA+0x7fff4240>
     8f0:	65646f4d 	bge	$r26,$r13,91244(0x1646c) # 16d5c <_start-0x1bfe92a4>
     8f4:	49584500 	bcnez	$fcc0,88132(0x15844) # 16138 <_start-0x1bfe9ec8>
     8f8:	455f544e 	bnez	$r2,3759956(0x395f54) # 39684c <_start-0x1bc697b4>
     8fc:	00454744 	srli.d	$r4,$r26,0x11
     900:	62616e65 	blt	$r19,$r5,-106132(0x2616c) # fffe6a6c <_RAM_DATA+0x7ffe5a6c>
     904:	7473656c 	xvmin.w	$xr12,$xr11,$xr25
     908:	73757461 	0x73757461
     90c:	54584500 	bl	67131460(0x4005844) # 4006150 <_start-0x17ff9eb0>
     910:	72545f49 	0x72545f49
     914:	65676769 	bge	$r27,$r9,92004(0x16764) # 17078 <_start-0x1bfe8f88>
     918:	58450072 	beq	$r3,$r18,17664(0x4500) # 4e18 <_start-0x1bffb1e8>
     91c:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff5d68 <_RAM_DATA+0x7fff4d68>
     920:	45004e45 	bnez	$r18,1376332(0x15004c) # 15096c <_start-0x1beaf694>
     924:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5278 <_RAM_DATA+0x7fff4278>
     928:	65707954 	bge	$r10,$r20,94328(0x17078) # 179a0 <_start-0x1bfe8660>
     92c:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
     930:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155d88 <_start-0x1beaa278>
     934:	646f4d5f 	bge	$r10,$r31,28492(0x6f4c) # 7880 <_start-0x1bff8780>
     938:	64455f65 	bge	$r27,$r5,17756(0x455c) # 4e94 <_start-0x1bffb16c>
     93c:	45006567 	bnez	$r11,1900644(0x1d0064) # 1d09a0 <_start-0x1be2f660>
     940:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff5294 <_RAM_DATA+0x7fff4294>
     944:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     948:	65707954 	bge	$r10,$r20,94328(0x17078) # 179c0 <_start-0x1bfe8640>
     94c:	00666544 	bstrins.w	$r4,$r10,0x6,0x19
     950:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155da8 <_start-0x1beaa258>
     954:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 1779c <_start-0x1bfe8864>
     958:	72745374 	0x72745374
     95c:	00746375 	bstrins.w	$r21,$r27,0x14,0x18
     960:	4e495845 	jirl	$r5,$r2,-112296(0x24958)
     964:	52535f54 	b	-44936356(0xd52535c) # fd525cc0 <_RAM_DATA+0x7d524cc0>
     968:	58450043 	beq	$r2,$r3,17664(0x4500) # 4e68 <_start-0x1bffb198>
     96c:	545f4954 	bl	89153352(0x5505f48) # 55068b4 <_start-0x16af974c>
     970:	67676972 	bge	$r11,$r18,-39064(0x36768) # ffff70d8 <_RAM_DATA+0x7fff60d8>
     974:	465f7265 	bnez	$r19,1466224(0x165f70) # 1668e4 <_start-0x1be9971c>
     978:	696c6c61 	bltu	$r3,$r1,93292(0x16c6c) # 175e4 <_start-0x1bfe8a1c>
     97c:	4c5f676e 	jirl	$r14,$r27,24420(0x5f64)
     980:	4500776f 	bnez	$r27,3997812(0x3d0074) # 3d09f4 <_start-0x1bc2f60c>
     984:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff52d8 <_RAM_DATA+0x7fff42d8>
     988:	61656c43 	blt	$r2,$r3,91500(0x1656c) # 16ef4 <_start-0x1bfe910c>
     98c:	616c4672 	blt	$r19,$r18,93252(0x16c44) # 175d0 <_start-0x1bfe8a30>
     990:	58450067 	beq	$r3,$r7,17664(0x4500) # 4e90 <_start-0x1bffb170>
     994:	6f4d4954 	bgeu	$r10,$r20,-45752(0x34d48) # ffff56dc <_RAM_DATA+0x7fff46dc>
     998:	545f6564 	bl	93347684(0x5905f64) # 59068fc <_start-0x166f9704>
     99c:	44657079 	bnez	$r3,-1809040(0x646570) # ffe46f0c <_RAM_DATA+0x7fe45f0c>
     9a0:	44006665 	bnez	$r19,1310820(0x140064) # 140a04 <_start-0x1bebf5fc>
     9a4:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     9a8:	2f737265 	0x2f737265
     9ac:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff780c <_RAM_DATA+0x7fff680c>
     9b0:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4ddc <_RAM_DATA+0x7fff3ddc>
     9b4:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17728 <_start-0x1bfe88d8>
     9b8:	2f73746e 	0x2f73746e
     9bc:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16e28 <_start-0x1bfe91d8>
     9c0:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff790c <_RAM_DATA+0x7fff690c>
     9c4:	7241676e 	0x7241676e
     9c8:	505f6863 	b	25976680(0x18c5f68) # 18c6930 <_start-0x1a7396d0>
     9cc:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16d38 <_start-0x1bfe92c8>
     9d0:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe7340 <_RAM_DATA+0x7ffe6340>
     9d4:	79535f67 	0x79535f67
     9d8:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 16f4c <_start-0x1bfe90b4>
     9dc:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     9e0:	732f3230 	0x732f3230
     9e4:	732f6372 	0x732f6372
     9e8:	75702f77 	0x75702f77
     9ec:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff7358 <_RAM_DATA+0x7fff6358>
     9f0:	31736c2f 	0x31736c2f
     9f4:	78655f78 	0x78655f78
     9f8:	632e6974 	blt	$r11,$r20,-53656(0x32e68) # ffff3860 <_RAM_DATA+0x7fff2860>
     9fc:	74786500 	0x74786500
     a00:	58450069 	beq	$r3,$r9,17664(0x4500) # 4f00 <_start-0x1bffb100>
     a04:	495f4954 	bcnez	$fcc2,-3055800(0x515f48) # ffd1694c <_RAM_DATA+0x7fd1594c>
     a08:	0074696e 	bstrins.w	$r14,$r11,0x14,0x1a
     a0c:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155e64 <_start-0x1beaa19c>
     a10:	4950475f 	0x4950475f
     a14:	5845004f 	beq	$r2,$r15,17664(0x4500) # 4f14 <_start-0x1bffb0ec>
     a18:	475f4954 	bnez	$r10,-2924728(0x535f48) # ffd36960 <_RAM_DATA+0x7fd35960>
     a1c:	6c467465 	bgeu	$r3,$r5,18036(0x4674) # 5090 <_start-0x1bffaf70>
     a20:	74536761 	0x74536761
     a24:	73757461 	0x73757461
     a28:	54584500 	bl	67131460(0x4005844) # 400626c <_start-0x17ff9d94>
     a2c:	65445f49 	bge	$r26,$r9,83036(0x1445c) # 14e88 <_start-0x1bfeb178>
     a30:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a34:	54584500 	bl	67131460(0x4005844) # 4006278 <_start-0x17ff9d88>
     a38:	74535f49 	0x74535f49
     a3c:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
     a40:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     a44:	49584500 	bcnez	$fcc0,88132(0x15844) # 16288 <_start-0x1bfe9d78>
     a48:	505f544e 	b	20471636(0x1385f54) # 138699c <_start-0x1ac79664>
     a4c:	45004c4f 	bnez	$r2,3997772(0x3d004c) # 3d0a98 <_start-0x1bc2f568>
     a50:	5f495458 	bne	$r2,$r24,-46764(0x34954) # ffff53a4 <_RAM_DATA+0x7fff43a4>
     a54:	6f697047 	bgeu	$r2,$r7,-38544(0x36970) # ffff73c4 <_RAM_DATA+0x7fff63c4>
     a58:	00646d43 	bstrins.w	$r3,$r10,0x4,0x1b
     a5c:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155eb4 <_start-0x1beaa14c>
     a60:	7465475f 	xvavg.w	$xr31,$xr26,$xr17
     a64:	74535449 	0x74535449
     a68:	73757461 	0x73757461
     a6c:	54584500 	bl	67131460(0x4005844) # 40062b0 <_start-0x17ff9d50>
     a70:	6c435f49 	bgeu	$r26,$r9,17244(0x435c) # 4dcc <_start-0x1bffb234>
     a74:	49726165 	bcnez	$fcc3,1405536(0x157260) # 157cd4 <_start-0x1bea832c>
     a78:	6e655054 	bgeu	$r2,$r20,-105136(0x26550) # fffe6fc8 <_RAM_DATA+0x7ffe5fc8>
     a7c:	676e6964 	bge	$r11,$r4,-37272(0x36e68) # ffff78e4 <_RAM_DATA+0x7fff68e4>
     a80:	00746942 	bstrins.w	$r2,$r10,0x14,0x1a
     a84:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155edc <_start-0x1beaa124>
     a88:	646f4d5f 	bge	$r10,$r31,28492(0x6f4c) # 79d4 <_start-0x1bff862c>
     a8c:	654c5f65 	bge	$r27,$r5,85084(0x14c5c) # 156e8 <_start-0x1bfea918>
     a90:	006c6576 	bstrins.w	$r22,$r11,0xc,0x19
     a94:	49545845 	bceqz	$fcc2,1397848(0x155458) # 155eec <_start-0x1beaa114>
     a98:	6972545f 	bltu	$r2,$r31,94804(0x17254) # 17cec <_start-0x1bfe8314>
     a9c:	72656767 	0x72656767
     aa0:	7369525f 	vssrarni.w.d	$vr31,$vr18,0x14
     aa4:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7210 <_RAM_DATA+0x7fff6210>
     aa8:	68676948 	bltu	$r10,$r8,26472(0x6768) # 7210 <_start-0x1bff8df0>
     aac:	54584500 	bl	67131460(0x4005844) # 40062f0 <_start-0x17ff9d10>
     ab0:	69725449 	bltu	$r2,$r9,94804(0x17254) # 17d04 <_start-0x1bfe82fc>
     ab4:	72656767 	0x72656767
     ab8:	7079545f 	0x7079545f
     abc:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe7000 <_RAM_DATA+0x7ffe6000>
     ac0:	54445700 	bl	-67091372(0xc004454) # fc004f14 <_RAM_DATA+0x7c003f14>
     ac4:	4545465f 	bnez	$r18,-178876(0x7d4544) # fffd5008 <_RAM_DATA+0x7ffd4008>
     ac8:	4d430044 	jirl	$r4,$r2,82688(0x14300)
     acc:	53545344 	b	-49064880(0xd135450) # fd135f1c <_RAM_DATA+0x7d134f1c>
     ad0:	4d4f4300 	jirl	$r0,$r24,85824(0x14f40)
     ad4:	45524150 	bnez	$r10,-4107712(0x415240) # ffc15d14 <_RAM_DATA+0x7fc14d14>
     ad8:	43444100 	beqz	$r8,214080(0x34440) # 34f18 <_start-0x1bfcb0e8>
     adc:	5441445f 	bl	24920388(0x17c4144) # 17c4c20 <_start-0x1a83b3e0>
     ae0:	4c555000 	jirl	$r0,$r0,21840(0x5550)
     ae4:	00304553 	0x00304553
     ae8:	534c5550 	b	88296532(0x5434c54) # 543573c <_start-0x16bca8c4>
     aec:	44003145 	bnez	$r10,1310768(0x140030) # 140b1c <_start-0x1bebf4e4>
     af0:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     af4:	2f737265 	0x2f737265
     af8:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7958 <_RAM_DATA+0x7fff6958>
     afc:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff4f28 <_RAM_DATA+0x7fff3f28>
     b00:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17874 <_start-0x1bfe878c>
     b04:	2f73746e 	0x2f73746e
     b08:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 16f74 <_start-0x1bfe908c>
     b0c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7a58 <_RAM_DATA+0x7fff6a58>
     b10:	7241676e 	0x7241676e
     b14:	505f6863 	b	25976680(0x18c5f68) # 18c6a7c <_start-0x1a739584>
     b18:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 16e84 <_start-0x1bfe917c>
     b1c:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe748c <_RAM_DATA+0x7ffe648c>
     b20:	79535f67 	0x79535f67
     b24:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17098 <_start-0x1bfe8f68>
     b28:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     b2c:	732f3230 	0x732f3230
     b30:	732f6372 	0x732f6372
     b34:	75702f77 	0x75702f77
     b38:	63696c62 	blt	$r3,$r2,-38548(0x3696c) # ffff74a4 <_RAM_DATA+0x7fff64a4>
     b3c:	31736c2f 	0x31736c2f
     b40:	64775f78 	bge	$r27,$r24,30556(0x775c) # 829c <_start-0x1bff7d64>
     b44:	00632e67 	bstrins.w	$r7,$r19,0x3,0xb
     b48:	4e554f43 	jirl	$r3,$r26,-109236(0x2554c)
     b4c:	48430054 	bceqz	$fcc2,-3128576(0x504300) # ffd04e4c <_RAM_DATA+0x7fd03e4c>
     b50:	54435049 	bl	19153744(0x1244350) # 1244ea0 <_start-0x1adbb160>
     b54:	50004c52 	b	21495884(0x148004c) # 1480ba0 <_start-0x1ab7f460>
     b58:	5245574f 	b	-46250668(0xd3e4554) # fd3e50ac <_RAM_DATA+0x7d3e40ac>
     b5c:	4746435f 	bnez	$r26,-47552(0x7f4640) # ffff519c <_RAM_DATA+0x7fff419c>
     b60:	45535500 	bnez	$r8,86868(0x15354) # 15eb4 <_start-0x1bfea14c>
     b64:	41445f52 	beqz	$r26,-3586980(0x49445c) # ffc94fc0 <_RAM_DATA+0x7fc93fc0>
     b68:	43003054 	beqz	$r2,-2949072(0x530030) # ffd30b98 <_RAM_DATA+0x7fd2fb98>
     b6c:	0057444d 	0x0057444d
     b70:	5f434441 	bne	$r2,$r1,-48316(0x34344) # ffff4eb4 <_RAM_DATA+0x7fff3eb4>
     b74:	4c525443 	jirl	$r3,$r2,21076(0x5254)
     b78:	53455200 	b	-134003376(0x8034550) # f80350c8 <_RAM_DATA+0x780340c8>
     b7c:	45565245 	bnez	$r18,1398352(0x155650) # 1561cc <_start-0x1bea9e34>
     b80:	52003044 	b	17956912(0x1120030) # 1120bb0 <_start-0x1aedf450>
     b84:	52455345 	b	-48872112(0xd164550) # fd1650d4 <_RAM_DATA+0x7d1640d4>
     b88:	31444556 	vstelm.h	$vr22,$r10,34(0x22),0x1
     b8c:	554d5000 	bl	85328(0x14d50) # 158dc <_start-0x1bfea724>
     b90:	7079545f 	0x7079545f
     b94:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe70d8 <_RAM_DATA+0x7ffe60d8>
     b98:	47445700 	bnez	$r24,214100(0x34454) # 34fec <_start-0x1bfcb014>
     b9c:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     ba0:	63746157 	blt	$r10,$r23,-35744(0x37460) # ffff8000 <_RAM_DATA+0x7fff7000>
     ba4:	676f4468 	bge	$r3,$r8,-37052(0x36f44) # ffff7ae8 <_RAM_DATA+0x7fff6ae8>
     ba8:	47445700 	bnez	$r24,214100(0x34454) # 34ffc <_start-0x1bfcb004>
     bac:	676f445f 	bge	$r2,$r31,-37052(0x36f44) # ffff7af0 <_RAM_DATA+0x7fff6af0>
     bb0:	64656546 	bge	$r10,$r6,25956(0x6564) # 7114 <_start-0x1bff8eec>
     bb4:	67645700 	bge	$r24,$r0,-39852(0x36454) # ffff7008 <_RAM_DATA+0x7fff6008>
     bb8:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     bbc:	54445700 	bl	-67091372(0xc004454) # fc005010 <_RAM_DATA+0x7c004010>
     bc0:	4746435f 	bnez	$r26,-47552(0x7f4640) # ffff5200 <_RAM_DATA+0x7fff4200>
     bc4:	54584500 	bl	67131460(0x4005844) # 4006408 <_start-0x17ff9bf8>
     bc8:	5f544e49 	bne	$r18,$r9,-43956(0x3544c) # ffff6014 <_RAM_DATA+0x7fff5014>
     bcc:	54004e45 	bl	-116129716(0x914004c) # f9140c18 <_RAM_DATA+0x7913fc18>
     bd0:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff511c <_RAM_DATA+0x7fff411c>
     bd4:	00504d43 	0x00504d43
     bd8:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5920 <_RAM_DATA+0x7fff4920>
     bdc:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     be0:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     be4:	656c435f 	bge	$r26,$r31,93248(0x16c40) # 17824 <_start-0x1bfe87dc>
     be8:	54497261 	bl	-108770960(0x9844970) # f9845558 <_RAM_DATA+0x79844558>
     bec:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     bf0:	696e495f 	bltu	$r10,$r31,93768(0x16e48) # 17a38 <_start-0x1bfe85c8>
     bf4:	70795474 	0x70795474
     bf8:	66654465 	bge	$r3,$r5,-105148(0x26544) # fffe713c <_RAM_DATA+0x7ffe613c>
     bfc:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c00:	54535f45 	bl	-48999588(0xd14535c) # fd145f5c <_RAM_DATA+0x7d144f5c>
     c04:	49540050 	bceqz	$fcc2,-4107264(0x415400) # ffc16004 <_RAM_DATA+0x7fc15004>
     c08:	495f454d 	bcnez	$fcc2,3497796(0x355f44) # 356b4c <_start-0x1bca94b4>
     c0c:	4e45544e 	jirl	$r14,$r2,-113324(0x24554)
     c10:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c14:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     c18:	6e756f43 	bgeu	$r26,$r3,-101012(0x2756c) # fffe8184 <_RAM_DATA+0x7ffe7184>
     c1c:	00726574 	bstrins.w	$r20,$r11,0x12,0x19
     c20:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd15968 <_RAM_DATA+0x7fd14968>
     c24:	4154535f 	beqz	$r26,-175024(0x7d5450) # fffd6074 <_RAM_DATA+0x7ffd5074>
     c28:	54005452 	bl	21495892(0x1480054) # 1480c7c <_start-0x1ab7f384>
     c2c:	435f4d49 	beqz	$r10,2580300(0x275f4c) # 276b78 <_start-0x1bd89488>
     c30:	5400646d 	bl	28573796(0x1b40064) # 1b40c94 <_start-0x1a4bf36c>
     c34:	5f454d49 	bne	$r10,$r9,-47796(0x3454c) # ffff5180 <_RAM_DATA+0x7fff4180>
     c38:	00544e43 	0x00544e43
     c3c:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5984 <_RAM_DATA+0x7fff4984>
     c40:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     c44:	75727453 	0x75727453
     c48:	54007463 	bl	25952372(0x18c0074) # 18c0cbc <_start-0x1a73f344>
     c4c:	475f4d49 	bnez	$r10,2580300(0x275f4c) # 276b98 <_start-0x1bd89468>
     c50:	6f437465 	bgeu	$r3,$r5,-48268(0x34374) # ffff4fc4 <_RAM_DATA+0x7fff3fc4>
     c54:	7261706d 	0x7261706d
     c58:	49540065 	bceqz	$fcc3,1397760(0x155400) # 156058 <_start-0x1bea9fa8>
     c5c:	74535f4d 	0x74535f4d
     c60:	74637572 	xvabsd.wu	$xr18,$xr11,$xr29
     c64:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
     c68:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     c6c:	414c465f 	beqz	$r18,-177084(0x7d4c44) # fffd58b0 <_RAM_DATA+0x7ffd48b0>
     c70:	49540047 	bceqz	$fcc2,1922048(0x1d5400) # 1d6070 <_start-0x1be29f90>
     c74:	65475f4d 	bge	$r26,$r13,83804(0x1475c) # 153d0 <_start-0x1bfeac30>
     c78:	53544974 	b	97735752(0x5d35448) # 5d360c0 <_start-0x162c9f40>
     c7c:	75746174 	0x75746174
     c80:	49540073 	bceqz	$fcc3,-3320832(0x4d5400) # ffcd6080 <_RAM_DATA+0x7fcd5080>
     c84:	505f454d 	b	87318340(0x5345f44) # 5346bc8 <_start-0x16cb9438>
     c88:	4f495245 	jirl	$r5,$r18,-46768(0x34950)
     c8c:	00434944 	0x00434944
     c90:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff59d8 <_RAM_DATA+0x7fff49d8>
     c94:	6f435449 	bgeu	$r2,$r9,-48300(0x34354) # ffff4fe8 <_RAM_DATA+0x7fff3fe8>
     c98:	6769666e 	bge	$r19,$r14,-38556(0x36964) # ffff75fc <_RAM_DATA+0x7fff65fc>
     c9c:	2f3a4400 	0x2f3a4400
     ca0:	72657355 	0x72657355
     ca4:	61772f73 	blt	$r27,$r19,96044(0x1772c) # 183d0 <_start-0x1bfe7c30>
     ca8:	2f73676e 	0x2f73676e
     cac:	75636f44 	0x75636f44
     cb0:	746e656d 	0x746e656d
     cb4:	6f432f73 	bgeu	$r27,$r19,-48340(0x3432c) # ffff4fe0 <_RAM_DATA+0x7fff3fe0>
     cb8:	4c2f6564 	jirl	$r4,$r11,12132(0x2f64)
     cbc:	676e6f6f 	bge	$r27,$r15,-37268(0x36e6c) # ffff7b28 <_RAM_DATA+0x7fff6b28>
     cc0:	68637241 	bltu	$r18,$r1,25456(0x6370) # 7030 <_start-0x1bff8fd0>
     cc4:	6f72505f 	bgeu	$r2,$r31,-36272(0x37250) # ffff7f14 <_RAM_DATA+0x7fff6f14>
     cc8:	73736563 	0x73736563
     ccc:	5f676e69 	bne	$r19,$r9,-39060(0x3676c) # ffff7438 <_RAM_DATA+0x7fff6438>
     cd0:	74737953 	xvmin.w	$xr19,$xr10,$xr30
     cd4:	312f6d65 	vstelm.w	$vr5,$r11,-148(0x36c),0x3
     cd8:	32303143 	0x32303143
     cdc:	6372732f 	blt	$r25,$r15,-36240(0x37270) # ffff7f4c <_RAM_DATA+0x7fff6f4c>
     ce0:	2f77732f 	0x2f77732f
     ce4:	76697270 	0x76697270
     ce8:	2f657461 	0x2f657461
     cec:	6331736c 	blt	$r27,$r12,-52880(0x33170) # ffff3e5c <_RAM_DATA+0x7fff2e5c>
     cf0:	5f323031 	bne	$r1,$r17,-52688(0x33230) # ffff3f20 <_RAM_DATA+0x7fff2f20>
     cf4:	6d697470 	bgeu	$r3,$r16,92532(0x16974) # 17668 <_start-0x1bfe8998>
     cf8:	632e7265 	blt	$r19,$r5,-53648(0x32e70) # ffff3b68 <_RAM_DATA+0x7fff2b68>
     cfc:	4d495400 	jirl	$r0,$r0,84308(0x14954)
     d00:	7465535f 	xvavg.w	$xr31,$xr26,$xr20
     d04:	706d6f43 	0x706d6f43
     d08:	00657261 	bstrins.w	$r1,$r19,0x5,0x1c
     d0c:	5f4d4954 	bne	$r10,$r20,-45752(0x34d48) # ffff5a54 <_RAM_DATA+0x7fff4a54>
     d10:	43746547 	beqz	$r10,2061412(0x1f7464) # 1f8174 <_start-0x1be07e8c>
     d14:	746e756f 	0x746e756f
     d18:	53007265 	b	-107544464(0x9970070) # f9970d88 <_RAM_DATA+0x7996fd88>
     d1c:	6e495f44 	bgeu	$r26,$r4,-112292(0x2495c) # fffe5678 <_RAM_DATA+0x7ffe4678>
     d20:	44007469 	bnez	$r3,2359412(0x240074) # 240d94 <_start-0x1bdbf26c>
     d24:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     d28:	2f737265 	0x2f737265
     d2c:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7b8c <_RAM_DATA+0x7fff6b8c>
     d30:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff515c <_RAM_DATA+0x7fff415c>
     d34:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17aa8 <_start-0x1bfe8558>
     d38:	2f73746e 	0x2f73746e
     d3c:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 171a8 <_start-0x1bfe8e58>
     d40:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7c8c <_RAM_DATA+0x7fff6c8c>
     d44:	7241676e 	0x7241676e
     d48:	505f6863 	b	25976680(0x18c5f68) # 18c6cb0 <_start-0x1a739350>
     d4c:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 170b8 <_start-0x1bfe8f48>
     d50:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe76c0 <_RAM_DATA+0x7ffe66c0>
     d54:	79535f67 	0x79535f67
     d58:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 172cc <_start-0x1bfe8d34>
     d5c:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     d60:	732f3230 	0x732f3230
     d64:	732f6372 	0x732f6372
     d68:	72642f77 	0x72642f77
     d6c:	72657669 	0x72657669
     d70:	2e64732f 	0x2e64732f
     d74:	44440063 	bnez	$r3,803840(0xc4400) # c5174 <_start-0x1bf3ae8c>
     d78:	6e495f52 	bgeu	$r26,$r18,-112292(0x2495c) # fffe56d4 <_RAM_DATA+0x7ffe46d4>
     d7c:	44007469 	bnez	$r3,2359412(0x240074) # 240df0 <_start-0x1bdbf210>
     d80:	73552f3a 	vssrlrni.wu.d	$vr26,$vr25,0xb
     d84:	2f737265 	0x2f737265
     d88:	676e6177 	bge	$r11,$r23,-37280(0x36e60) # ffff7be8 <_RAM_DATA+0x7fff6be8>
     d8c:	6f442f73 	bgeu	$r27,$r19,-48084(0x3442c) # ffff51b8 <_RAM_DATA+0x7fff41b8>
     d90:	656d7563 	bge	$r11,$r3,93556(0x16d74) # 17b04 <_start-0x1bfe84fc>
     d94:	2f73746e 	0x2f73746e
     d98:	65646f43 	bge	$r26,$r3,91244(0x1646c) # 17204 <_start-0x1bfe8dfc>
     d9c:	6f6f4c2f 	bgeu	$r1,$r15,-37044(0x36f4c) # ffff7ce8 <_RAM_DATA+0x7fff6ce8>
     da0:	7241676e 	0x7241676e
     da4:	505f6863 	b	25976680(0x18c5f68) # 18c6d0c <_start-0x1a7392f4>
     da8:	65636f72 	bge	$r27,$r18,90988(0x1636c) # 17114 <_start-0x1bfe8eec>
     dac:	6e697373 	bgeu	$r27,$r19,-104080(0x26970) # fffe771c <_RAM_DATA+0x7ffe671c>
     db0:	79535f67 	0x79535f67
     db4:	6d657473 	bgeu	$r3,$r19,91508(0x16574) # 17328 <_start-0x1bfe8cd8>
     db8:	3143312f 	vstelm.h	$vr15,$r9,-104(0x198),0x0
     dbc:	732f3230 	0x732f3230
     dc0:	732f6372 	0x732f6372
     dc4:	72642f77 	0x72642f77
     dc8:	72657669 	0x72657669
     dcc:	7264642f 	0x7264642f
     dd0:	5f00632e 	bne	$r25,$r14,-65440(0x30060) # ffff0e30 <_RAM_DATA+0x7ffefe30>
     dd4:	6c64665f 	bgeu	$r18,$r31,25700(0x6464) # 7238 <_start-0x1bff8dc8>
     dd8:	5f6d6269 	bne	$r19,$r9,-37536(0x36d60) # ffff7b38 <_RAM_DATA+0x7fff6b38>
     ddc:	65706f78 	bge	$r27,$r24,94316(0x1706c) # 17e48 <_start-0x1bfe81b8>
     de0:	6f5f006e 	bgeu	$r3,$r14,-41216(0x35f00) # ffff6ce0 <_RAM_DATA+0x7fff5ce0>
     de4:	78655f6e 	0x78655f6e
     de8:	615f7469 	blt	$r3,$r9,89972(0x15f74) # 16d5c <_start-0x1bfe92a4>
     dec:	00736772 	bstrins.w	$r18,$r27,0x13,0x19
     df0:	6e646d63 	bgeu	$r11,$r3,-105364(0x2646c) # fffe725c <_RAM_DATA+0x7ffe625c>
     df4:	00656d61 	bstrins.w	$r1,$r11,0x5,0x1b
     df8:	7463775f 	xvabsd.wu	$xr31,$xr26,$xr29
     dfc:	5f626d6f 	bne	$r11,$r15,-40340(0x3626c) # ffff7068 <_RAM_DATA+0x7fff6068>
     e00:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
     e04:	79730065 	0x79730065
     e08:	6e695f73 	bgeu	$r27,$r19,-104100(0x2695c) # fffe7764 <_RAM_DATA+0x7ffe6764>
     e0c:	635f7469 	blt	$r3,$r9,-41100(0x35f74) # ffff6d80 <_RAM_DATA+0x7fff5d80>
     e10:	5f00746e 	bne	$r3,$r14,-65420(0x30074) # ffff0e84 <_RAM_DATA+0x7ffefe84>
     e14:	00383472 	0x00383472
     e18:	6769735f 	bge	$r26,$r31,-38544(0x36970) # ffff7788 <_RAM_DATA+0x7fff6788>
     e1c:	5f6c616e 	bne	$r11,$r14,-37792(0x36c60) # ffff7a7c <_RAM_DATA+0x7fff6a7c>
     e20:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
     e24:	66626c5f 	bge	$r2,$r31,-105876(0x2626c) # fffe7090 <_RAM_DATA+0x7ffe6090>
     e28:	657a6973 	bge	$r11,$r19,96872(0x17a68) # 18890 <_start-0x1bfe7770>
     e2c:	6c665f00 	bgeu	$r24,$r0,26204(0x665c) # 7488 <_start-0x1bff8b78>
     e30:	00736761 	bstrins.w	$r1,$r27,0x13,0x19
     e34:	6e695f5f 	bgeu	$r26,$r31,-104100(0x2695c) # fffe7790 <_RAM_DATA+0x7ffe6790>
     e38:	5f323374 	bne	$r27,$r20,-52688(0x33230) # ffff4068 <_RAM_DATA+0x7fff3068>
     e3c:	4c5f0074 	jirl	$r20,$r3,24320(0x5f00)
     e40:	5f4b434f 	bne	$r26,$r15,-46272(0x34b40) # ffff5980 <_RAM_DATA+0x7fff4980>
     e44:	55434552 	bl	88687428(0x5494344) # 5495188 <_start-0x16b6ae78>
     e48:	56495352 	bl	-45463216(0xd4a4950) # fd4a5798 <_RAM_DATA+0x7d4a4798>
     e4c:	00545f45 	0x00545f45
     e50:	6c646d63 	bgeu	$r11,$r3,25708(0x646c) # 72bc <_start-0x1bff8d44>
     e54:	00656e69 	bstrins.w	$r9,$r19,0x5,0x1b
     e58:	72626d5f 	0x72626d5f
     e5c:	5f6e656c 	bne	$r11,$r12,-37276(0x36e64) # ffff7cc0 <_RAM_DATA+0x7fff6cc0>
     e60:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
     e64:	735f0065 	vsrarni.d.q	$vr5,$vr3,0x40
     e68:	756f6474 	0x756f6474
     e6c:	665f0074 	bge	$r3,$r20,-106752(0x25f00) # fffe6d6c <_RAM_DATA+0x7ffe5d6c>
     e70:	5f736f70 	bne	$r27,$r16,-35988(0x3736c) # ffff81dc <_RAM_DATA+0x7fff71dc>
     e74:	665f0074 	bge	$r3,$r20,-106752(0x25f00) # fffe6d74 <_RAM_DATA+0x7ffe5d74>
     e78:	5f00736e 	bne	$r27,$r14,-65424(0x30070) # ffff0ee8 <_RAM_DATA+0x7ffefee8>
     e7c:	6b6f6f63 	bltu	$r27,$r3,-37012(0x36f6c) # ffff7de8 <_RAM_DATA+0x7fff6de8>
     e80:	5f006569 	bne	$r11,$r9,-65436(0x30064) # ffff0ee4 <_RAM_DATA+0x7ffefee4>
     e84:	69676942 	bltu	$r10,$r2,92008(0x16768) # 175ec <_start-0x1bfe8a14>
     e88:	5f00746e 	bne	$r3,$r14,-65420(0x30074) # ffff0efc <_RAM_DATA+0x7ffefefc>
     e8c:	5f6d745f 	bne	$r2,$r31,-37516(0x36d74) # ffff7c00 <_RAM_DATA+0x7fff6c00>
     e90:	79616477 	0x79616477
     e94:	65725f00 	bge	$r24,$r0,94812(0x1725c) # 180f0 <_start-0x1bfe7f10>
     e98:	746c7573 	0x746c7573
     e9c:	745f5f00 	0x745f5f00
     ea0:	6f685f6d 	bgeu	$r27,$r13,-38820(0x3685c) # ffff76fc <_RAM_DATA+0x7fff66fc>
     ea4:	64007275 	bge	$r19,$r21,112(0x70) # f14 <_start-0x1bfff0ec>
     ea8:	78655f6f 	0x78655f6f
     eac:	5f007469 	bne	$r3,$r9,-65420(0x30074) # ffff0f20 <_RAM_DATA+0x7ffeff20>
     eb0:	756f635f 	0x756f635f
     eb4:	6300746e 	blt	$r3,$r14,-65420(0x30074) # ffff0f28 <_RAM_DATA+0x7ffeff28>
     eb8:	735f646d 	vsrarni.d.q	$vr13,$vr3,0x59
     ebc:	63757274 	blt	$r19,$r20,-35472(0x37570) # ffff842c <_RAM_DATA+0x7fff742c>
     ec0:	6e5f0074 	bgeu	$r3,$r20,-106752(0x25f00) # fffe6dc0 <_RAM_DATA+0x7ffe5dc0>
     ec4:	66747865 	bge	$r3,$r5,-101256(0x27478) # fffe833c <_RAM_DATA+0x7ffe733c>
     ec8:	61725f00 	blt	$r24,$r0,94812(0x1725c) # 18124 <_start-0x1bfe7edc>
     ecc:	3834646e 	fldx.d	$f14,$r3,$r25
     ed0:	65725f00 	bge	$r24,$r0,94812(0x1725c) # 1812c <_start-0x1bfe7ed4>
     ed4:	746c7573 	0x746c7573
     ed8:	5f006b5f 	bne	$r26,$r31,-65432(0x30068) # ffff0f40 <_RAM_DATA+0x7ffeff40>
     edc:	74637361 	xvabsd.wu	$xr1,$xr27,$xr28
     ee0:	5f656d69 	bne	$r11,$r9,-39572(0x3656c) # ffff744c <_RAM_DATA+0x7fff644c>
     ee4:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
     ee8:	46735f5f 	bnez	$r26,-101540(0x7e735c) # fffe8244 <_RAM_DATA+0x7ffe7244>
     eec:	00454c49 	srli.d	$r9,$r2,0x13
     ef0:	7364775f 	vssrani.bu.h	$vr31,$vr26,0xd
     ef4:	465f5f00 	bnez	$r24,155484(0x25f5c) # 26e50 <_start-0x1bfd91b0>
     ef8:	00454c49 	srli.d	$r9,$r2,0x13
     efc:	72707865 	0x72707865
     f00:	69737365 	bltu	$r27,$r5,95088(0x17370) # 18270 <_start-0x1bfe7d90>
     f04:	5f006e6f 	bne	$r19,$r15,-65428(0x3006c) # ffff0f70 <_RAM_DATA+0x7ffeff70>
     f08:	6c64665f 	bgeu	$r18,$r31,25700(0x6464) # 736c <_start-0x1bff8c94>
     f0c:	5f6d6269 	bne	$r19,$r9,-37536(0x36d60) # ffff7c6c <_RAM_DATA+0x7fff6c6c>
     f10:	69736f70 	bltu	$r27,$r16,95084(0x1736c) # 1827c <_start-0x1bfe7d84>
     f14:	6f5f0078 	bgeu	$r3,$r24,-41216(0x35f00) # ffff6e14 <_RAM_DATA+0x7fff5e14>
     f18:	65736666 	bge	$r19,$r6,95076(0x17364) # 1827c <_start-0x1bfe7d84>
     f1c:	6d630074 	bgeu	$r3,$r20,90880(0x16300) # 1721c <_start-0x1bfe8de4>
     f20:	72747064 	0x72747064
     f24:	6d655f00 	bgeu	$r24,$r0,91484(0x1655c) # 17480 <_start-0x1bfe8b80>
     f28:	65677265 	bge	$r19,$r5,92016(0x16770) # 17698 <_start-0x1bfe8968>
     f2c:	0079636e 	bstrins.w	$r14,$r27,0x19,0x18
     f30:	62646d63 	blt	$r11,$r3,-105364(0x2646c) # fffe739c <_RAM_DATA+0x7ffe639c>
     f34:	65666675 	bge	$r19,$r21,91748(0x16664) # 17598 <_start-0x1bfe8a68>
     f38:	5f5f0072 	bne	$r3,$r18,-41216(0x35f00) # ffff6e38 <_RAM_DATA+0x7fff5e38>
     f3c:	735f6d74 	vsrarni.d.q	$vr20,$vr11,0x5b
     f40:	5f006365 	bne	$r27,$r5,-65440(0x30060) # ffff0fa0 <_RAM_DATA+0x7ffeffa0>
     f44:	5f6d745f 	bne	$r2,$r31,-37516(0x36d74) # ffff7cb8 <_RAM_DATA+0x7fff6cb8>
     f48:	79616479 	0x79616479
     f4c:	6e695f00 	bgeu	$r24,$r0,-104100(0x2695c) # fffe78a8 <_RAM_DATA+0x7ffe68a8>
     f50:	695f0063 	bltu	$r3,$r3,89856(0x15f00) # 16e50 <_start-0x1bfe91b0>
     f54:	5f00646e 	bne	$r3,$r14,-65436(0x30064) # ffff0fb8 <_RAM_DATA+0x7ffeffb8>
     f58:	7273626d 	0x7273626d
     f5c:	63776f74 	blt	$r27,$r20,-34964(0x3776c) # ffff86c8 <_RAM_DATA+0x7fff76c8>
     f60:	74735f73 	xvmin.w	$xr19,$xr27,$xr23
     f64:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
     f68:	61765f5f 	blt	$r26,$r31,95836(0x1765c) # 185c4 <_start-0x1bfe7a3c>
     f6c:	0065756c 	bstrins.w	$r12,$r11,0x5,0x1d
     f70:	7335705f 	vsrai.d	$vr31,$vr2,0x1c
     f74:	63775f00 	blt	$r24,$r0,-34980(0x3775c) # ffff86d0 <_RAM_DATA+0x7fff76d0>
     f78:	6f747273 	bgeu	$r19,$r19,-35728(0x37470) # ffff83e8 <_RAM_DATA+0x7fff73e8>
     f7c:	5f73626d 	bne	$r19,$r13,-36000(0x37360) # ffff82dc <_RAM_DATA+0x7fff72dc>
     f80:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
     f84:	6d5f0065 	bgeu	$r3,$r5,89856(0x15f00) # 16e84 <_start-0x1bfe917c>
     f88:	6e656c62 	bgeu	$r3,$r2,-105108(0x2656c) # fffe74f4 <_RAM_DATA+0x7ffe64f4>
     f8c:	6174735f 	blt	$r26,$r31,95344(0x17470) # 183fc <_start-0x1bfe7c04>
     f90:	5f006574 	bne	$r11,$r20,-65436(0x30064) # ffff0ff4 <_RAM_DATA+0x7ffefff4>
     f94:	5f6d745f 	bne	$r2,$r31,-37516(0x36d74) # ffff7d08 <_RAM_DATA+0x7fff6d08>
     f98:	7961646d 	0x7961646d
     f9c:	69735f00 	bltu	$r24,$r0,95068(0x1735c) # 182f8 <_start-0x1bfe7d08>
     fa0:	75665f67 	0x75665f67
     fa4:	5f00636e 	bne	$r27,$r14,-65440(0x30060) # ffff1004 <_RAM_DATA+0x7fff0004>
     fa8:	7472626d 	xvmin.b	$xr13,$xr19,$xr24
     fac:	5f63776f 	bne	$r27,$r15,-40076(0x36374) # ffff7320 <_RAM_DATA+0x7fff6320>
     fb0:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
     fb4:	615f0065 	blt	$r3,$r5,89856(0x15f00) # 16eb4 <_start-0x1bfe914c>
     fb8:	69786574 	bltu	$r11,$r20,96356(0x17864) # 1881c <_start-0x1bfe77e4>
     fbc:	5f003074 	bne	$r3,$r20,-65488(0x30030) # ffff0fec <_RAM_DATA+0x7ffeffec>
     fc0:	636f6c66 	blt	$r3,$r6,-37012(0x36f6c) # ffff7f2c <_RAM_DATA+0x7fff6f2c>
     fc4:	00745f6b 	bstrins.w	$r11,$r27,0x14,0x17
     fc8:	63727473 	blt	$r3,$r19,-36236(0x37274) # ffff823c <_RAM_DATA+0x7fff723c>
     fcc:	5f00706d 	bne	$r3,$r13,-65424(0x30070) # ffff103c <_RAM_DATA+0x7fff003c>
     fd0:	6863775f 	bltu	$r26,$r31,25460(0x6374) # 7344 <_start-0x1bff8cbc>
     fd4:	6f695f00 	bgeu	$r24,$r0,-38564(0x3695c) # ffff7930 <_RAM_DATA+0x7fff6930>
     fd8:	5f007362 	bne	$r27,$r2,-65424(0x30070) # ffff1048 <_RAM_DATA+0x7fff0048>
     fdc:	736f6c63 	vssrarni.du.q	$vr3,$vr3,0x5b
     fe0:	5f5f0065 	bne	$r3,$r5,-41216(0x35f00) # ffff6ee0 <_RAM_DATA+0x7fff5ee0>
     fe4:	64696473 	bge	$r3,$r19,26980(0x6964) # 7948 <_start-0x1bff86b8>
     fe8:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
     fec:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
     ff0:	006e6964 	bstrins.w	$r4,$r11,0xe,0x1a
     ff4:	6d61675f 	bgeu	$r26,$r31,90468(0x16164) # 17158 <_start-0x1bfe8ea8>
     ff8:	735f616d 	vsrarni.d.q	$vr13,$vr11,0x58
     ffc:	676e6769 	bge	$r27,$r9,-37276(0x36e64) # ffff7e60 <_RAM_DATA+0x7fff6e60>
    1000:	5f006d61 	bne	$r11,$r1,-65428(0x3006c) # ffff106c <_RAM_DATA+0x7fff006c>
    1004:	65736162 	bge	$r11,$r2,95072(0x17360) # 18364 <_start-0x1bfe7c9c>
    1008:	74784500 	0x74784500
    100c:	7172495f 	0x7172495f
    1010:	646e6148 	bge	$r10,$r8,28256(0x6e60) # 7e70 <_start-0x1bff8190>
    1014:	5f00656c 	bne	$r11,$r12,-65436(0x30064) # ffff1078 <_RAM_DATA+0x7fff0078>
    1018:	65657266 	bge	$r19,$r6,91504(0x16570) # 17588 <_start-0x1bfe8a78>
    101c:	7473696c 	xvmin.w	$xr12,$xr11,$xr26
    1020:	756d5f00 	0x756d5f00
    1024:	5f00746c 	bne	$r3,$r12,-65420(0x30074) # ffff1098 <_RAM_DATA+0x7fff0098>
    1028:	6f4c555f 	bgeu	$r10,$r31,-45996(0x34c54) # ffff5c7c <_RAM_DATA+0x7fff4c7c>
    102c:	5f00676e 	bne	$r27,$r14,-65436(0x30064) # ffff1090 <_RAM_DATA+0x7fff0090>
    1030:	6c64665f 	bgeu	$r18,$r31,25700(0x6464) # 7494 <_start-0x1bff8b6c>
    1034:	5f6d6269 	bne	$r19,$r9,-37536(0x36d60) # ffff7d94 <_RAM_DATA+0x7fff6d94>
    1038:	64697673 	bge	$r19,$r19,26996(0x6974) # 79ac <_start-0x1bff8654>
    103c:	63775f00 	blt	$r24,$r0,-34980(0x3775c) # ffff8798 <_RAM_DATA+0x7fff7798>
    1040:	6d6f7472 	bgeu	$r3,$r18,94068(0x16f74) # 17fb4 <_start-0x1bfe804c>
    1044:	74735f62 	xvmin.w	$xr2,$xr27,$xr23
    1048:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
    104c:	6c69665f 	bgeu	$r18,$r31,26980(0x6964) # 79b0 <_start-0x1bff8650>
    1050:	6d630065 	bgeu	$r3,$r5,90880(0x16300) # 17350 <_start-0x1bfe8cb0>
    1054:	72617064 	0x72617064
    1058:	3a440061 	0x3a440061
    105c:	6573552f 	bge	$r9,$r15,95060(0x17354) # 183b0 <_start-0x1bfe7c50>
    1060:	772f7372 	0x772f7372
    1064:	73676e61 	vssrani.du.q	$vr1,$vr19,0x5b
    1068:	636f442f 	blt	$r1,$r15,-37052(0x36f44) # ffff7fac <_RAM_DATA+0x7fff6fac>
    106c:	6e656d75 	bgeu	$r11,$r21,-105108(0x2656c) # fffe75d8 <_RAM_DATA+0x7ffe65d8>
    1070:	432f7374 	beqz	$r27,-2936976(0x532f70) # ffd33fe0 <_RAM_DATA+0x7fd32fe0>
    1074:	2f65646f 	0x2f65646f
    1078:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # fffe7fe4 <_RAM_DATA+0x7ffe6fe4>
    107c:	63724167 	blt	$r11,$r7,-36288(0x37240) # ffff82bc <_RAM_DATA+0x7fff72bc>
    1080:	72505f68 	0x72505f68
    1084:	7365636f 	vssrani.wu.d	$vr15,$vr27,0x18
    1088:	676e6973 	bge	$r11,$r19,-37272(0x36e68) # ffff7ef0 <_RAM_DATA+0x7fff6ef0>
    108c:	7379535f 	0x7379535f
    1090:	2f6d6574 	0x2f6d6574
    1094:	30314331 	0x30314331
    1098:	72732f32 	0x72732f32
    109c:	77732f63 	0x77732f63
    10a0:	6573752f 	bge	$r9,$r15,95092(0x17374) # 18414 <_start-0x1bfe7bec>
    10a4:	616d2f72 	blt	$r27,$r18,93484(0x16d2c) # 17dd0 <_start-0x1bfe8230>
    10a8:	632e6e69 	blt	$r19,$r9,-53652(0x32e6c) # ffff3f14 <_RAM_DATA+0x7fff2f14>
    10ac:	635f5f00 	blt	$r24,$r0,-41124(0x35f5c) # ffff7008 <_RAM_DATA+0x7fff6008>
    10b0:	6e61656c 	bgeu	$r11,$r12,-106140(0x26164) # fffe7214 <_RAM_DATA+0x7ffe6214>
    10b4:	5f007075 	bne	$r3,$r21,-65424(0x30070) # ffff1124 <_RAM_DATA+0x7fff0124>
    10b8:	6c64665f 	bgeu	$r18,$r31,25700(0x6464) # 751c <_start-0x1bff8ae4>
    10bc:	765f6269 	0x765f6269
    10c0:	69737265 	bltu	$r19,$r5,95088(0x17370) # 18430 <_start-0x1bfe7bd0>
    10c4:	5f006e6f 	bne	$r19,$r15,-65428(0x3006c) # ffff1130 <_RAM_DATA+0x7fff0130>
    10c8:	7473626d 	xvmin.w	$xr13,$xr19,$xr24
    10cc:	5f657461 	bne	$r3,$r1,-39564(0x36574) # ffff7640 <_RAM_DATA+0x7fff6640>
    10d0:	5f5f0074 	bne	$r3,$r20,-41216(0x35f00) # ffff6fd0 <_RAM_DATA+0x7fff5fd0>
    10d4:	695f6d74 	bltu	$r11,$r20,89964(0x15f6c) # 17040 <_start-0x1bfe8fc0>
    10d8:	74736473 	xvmin.w	$xr19,$xr3,$xr25
    10dc:	5f685f00 	bne	$r24,$r0,-38820(0x3685c) # ffff7938 <_RAM_DATA+0x7fff6938>
    10e0:	6e727265 	bgeu	$r19,$r5,-101776(0x27270) # fffe8350 <_RAM_DATA+0x7ffe7350>
    10e4:	6f64006f 	bgeu	$r3,$r15,-39936(0x36400) # ffff74e4 <_RAM_DATA+0x7fff64e4>
    10e8:	6c65685f 	bgeu	$r2,$r31,25960(0x6568) # 7650 <_start-0x1bff89b0>
    10ec:	72610070 	0x72610070
    10f0:	5f006367 	bne	$r27,$r7,-65440(0x30060) # ffff1150 <_RAM_DATA+0x7fff0150>
    10f4:	5f6d745f 	bne	$r2,$r31,-37516(0x36d74) # ffff7e68 <_RAM_DATA+0x7fff6e68>
    10f8:	006e6f6d 	bstrins.w	$r13,$r27,0xe,0x1b
    10fc:	76677261 	0x76677261
    1100:	6e6f6c00 	bgeu	$r0,$r0,-102548(0x26f6c) # fffe806c <_RAM_DATA+0x7ffe706c>
    1104:	6f642067 	bgeu	$r3,$r7,-39904(0x36420) # ffff7524 <_RAM_DATA+0x7fff6524>
    1108:	656c6275 	bge	$r19,$r21,93280(0x16c60) # 17d68 <_start-0x1bfe8298>
    110c:	735f5f00 	vsrarni.d.q	$vr0,$vr24,0x57
    1110:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
    1114:	6e69616d 	bgeu	$r11,$r13,-104096(0x26960) # fffe7a74 <_RAM_DATA+0x7ffe6a74>
    1118:	74615f00 	xvabsd.w	$xr0,$xr24,$xr23
    111c:	74697865 	xvavgr.w	$xr5,$xr3,$xr30
    1120:	626d5f00 	blt	$r24,$r0,-103076(0x26d5c) # fffe7e7c <_RAM_DATA+0x7ffe6e7c>
    1124:	74617473 	xvabsd.w	$xr19,$xr3,$xr29
    1128:	78650065 	0x78650065
    112c:	695f6974 	bltu	$r11,$r20,89960(0x15f68) # 17094 <_start-0x1bfe8f6c>
    1130:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 70a0 <_start-0x1bff8f60>
    1134:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 75a0 <_start-0x1bff8a60>
    1138:	69680065 	bltu	$r3,$r5,92160(0x16800) # 17938 <_start-0x1bfe86c8>
    113c:	726f7473 	0x726f7473
    1140:	74735f79 	xvmin.w	$xr25,$xr27,$xr23
    1144:	5f5f0072 	bne	$r3,$r18,-41216(0x35f00) # ffff7044 <_RAM_DATA+0x7fff6044>
    1148:	5f006673 	bne	$r19,$r19,-65436(0x30064) # ffff11ac <_RAM_DATA+0x7fff01ac>
    114c:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # fffe78b4 <_RAM_DATA+0x7ffe68b4>
    1150:	75635f00 	0x75635f00
    1154:	6e657272 	bgeu	$r19,$r18,-105104(0x26570) # fffe76c4 <_RAM_DATA+0x7ffe66c4>
    1158:	6f6c5f74 	bgeu	$r27,$r20,-37796(0x36c5c) # ffff7db4 <_RAM_DATA+0x7fff6db4>
    115c:	656c6163 	bge	$r11,$r3,93280(0x16c60) # 17dbc <_start-0x1bfe8244>
    1160:	73795300 	0x73795300
    1164:	5f6d6574 	bne	$r11,$r20,-37532(0x36d64) # ffff7ec8 <_RAM_DATA+0x7fff6ec8>
    1168:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
    116c:	61645f00 	blt	$r24,$r0,91228(0x1645c) # 175c8 <_start-0x1bfe8a38>
    1170:	5f006174 	bne	$r11,$r20,-65440(0x30060) # ffff11d0 <_RAM_DATA+0x7fff01d0>
    1174:	6863775f 	bltu	$r26,$r31,25460(0x6374) # 74e8 <_start-0x1bff8b18>
    1178:	675f0062 	bge	$r3,$r2,-41216(0x35f00) # ffff7078 <_RAM_DATA+0x7fff6078>
    117c:	61626f6c 	blt	$r27,$r12,90732(0x1626c) # 173e8 <_start-0x1bfe8c18>
    1180:	6d695f6c 	bgeu	$r27,$r12,92508(0x1695c) # 17adc <_start-0x1bfe8524>
    1184:	65727570 	bge	$r11,$r16,94836(0x17274) # 183f8 <_start-0x1bfe7c08>
    1188:	7274705f 	0x7274705f
    118c:	745f5f00 	0x745f5f00
    1190:	65795f6d 	bge	$r27,$r13,96604(0x1795c) # 18aec <_start-0x1bfe7514>
    1194:	5f007261 	bne	$r19,$r1,-65424(0x30070) # ffff1204 <_RAM_DATA+0x7fff0204>
    1198:	6c64665f 	bgeu	$r18,$r31,25700(0x6464) # 75fc <_start-0x1bff8a04>
    119c:	5f6d6269 	bne	$r19,$r9,-37536(0x36d60) # ffff7efc <_RAM_DATA+0x7fff6efc>
    11a0:	65656569 	bge	$r11,$r9,91492(0x16564) # 17704 <_start-0x1bfe88fc>
    11a4:	6f6c5f00 	bgeu	$r24,$r0,-37796(0x36c5c) # ffff7e00 <_RAM_DATA+0x7fff6e00>
    11a8:	746c6163 	0x746c6163
    11ac:	5f656d69 	bne	$r11,$r9,-39572(0x3656c) # ffff7718 <_RAM_DATA+0x7fff6718>
    11b0:	00667562 	bstrins.w	$r2,$r11,0x6,0x1d
    11b4:	67617375 	bge	$r27,$r21,-40592(0x36170) # ffff7324 <_RAM_DATA+0x7fff6324>
    11b8:	755f0065 	0x755f0065
    11bc:	6573756e 	bge	$r11,$r14,95092(0x17374) # 18530 <_start-0x1bfe7ad0>
    11c0:	6e5f0064 	bgeu	$r3,$r4,-106752(0x25f00) # fffe70c0 <_RAM_DATA+0x7ffe60c0>
    11c4:	5f007765 	bne	$r27,$r5,-65420(0x30074) # ffff1238 <_RAM_DATA+0x7fff0238>
    11c8:	6c747663 	bgeu	$r19,$r3,29812(0x7474) # 863c <_start-0x1bff79c4>
    11cc:	5f006e65 	bne	$r19,$r5,-65428(0x3006c) # ffff1238 <_RAM_DATA+0x7fff0238>
    11d0:	7778616d 	0x7778616d
    11d4:	5f007364 	bne	$r27,$r4,-65424(0x30070) # ffff1244 <_RAM_DATA+0x7fff0244>
    11d8:	6134366c 	blt	$r19,$r12,78900(0x13434) # 1460c <_start-0x1bfeb9f4>
    11dc:	6675625f 	bge	$r18,$r31,-101024(0x27560) # fffe873c <_RAM_DATA+0x7ffe773c>
    11e0:	75635f00 	0x75635f00
    11e4:	6e657272 	bgeu	$r19,$r18,-105104(0x26570) # fffe7754 <_RAM_DATA+0x7ffe6754>
    11e8:	61635f74 	blt	$r27,$r20,90972(0x1635c) # 17544 <_start-0x1bfe8abc>
    11ec:	6f676574 	bgeu	$r11,$r20,-39068(0x36764) # ffff7950 <_RAM_DATA+0x7fff6950>
    11f0:	5f007972 	bne	$r11,$r18,-65416(0x30078) # ffff1268 <_RAM_DATA+0x7fff0268>
    11f4:	736b6c62 	vssrarni.d.q	$vr2,$vr3,0x5b
    11f8:	00657a69 	bstrins.w	$r9,$r19,0x5,0x1e
    11fc:	6d745f5f 	bgeu	$r26,$r31,95324(0x1745c) # 18658 <_start-0x1bfe79a8>
    1200:	6f6c5f00 	bgeu	$r24,$r0,-37796(0x36c5c) # ffff7e5c <_RAM_DATA+0x7fff6e5c>
    1204:	5f006b63 	bne	$r27,$r3,-65432(0x30068) # ffff126c <_RAM_DATA+0x7fff026c>
    1208:	626f696e 	blt	$r11,$r14,-102552(0x26f68) # fffe8170 <_RAM_DATA+0x7ffe7170>
    120c:	69770073 	bltu	$r3,$r19,96000(0x17700) # 1890c <_start-0x1bfe76f4>
    1210:	745f746e 	0x745f746e
    1214:	745f5f00 	0x745f5f00
    1218:	696d5f6d 	bltu	$r27,$r13,93532(0x16d5c) # 17f74 <_start-0x1bfe808c>
    121c:	645f006e 	bge	$r3,$r14,24320(0x5f00) # 711c <_start-0x1bff8ee4>
    1220:	685f6f73 	bltu	$r27,$r19,24428(0x5f6c) # 718c <_start-0x1bff8e74>
    1224:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7690 <_start-0x1bff8970>
    1228:	635f0065 	blt	$r3,$r5,-41216(0x35f00) # ffff7128 <_RAM_DATA+0x7fff6128>
    122c:	75627476 	0x75627476
    1230:	675f0066 	bge	$r3,$r6,-41216(0x35f00) # ffff7130 <_RAM_DATA+0x7fff6130>
    1234:	61647465 	blt	$r3,$r5,91252(0x16474) # 176a8 <_start-0x1bfe8958>
    1238:	655f6574 	bge	$r11,$r20,89956(0x15f64) # 1719c <_start-0x1bfe8e64>
    123c:	5f007272 	bne	$r19,$r18,-65424(0x30070) # ffff12ac <_RAM_DATA+0x7fff02ac>
    1240:	00646461 	bstrins.w	$r1,$r3,0x4,0x19
    1244:	54524155 	bl	89412160(0x5545240) # 5546484 <_start-0x16ab9b7c>
    1248:	41485f31 	beqz	$r25,-3848100(0x45485c) # ffc55aa4 <_RAM_DATA+0x7fc54aa4>
    124c:	454c444e 	bnez	$r2,3755076(0x394c44) # 395e90 <_start-0x1bc6a170>
    1250:	675f0052 	bge	$r2,$r18,-41216(0x35f00) # ffff7150 <_RAM_DATA+0x7fff6150>
    1254:	0065756c 	bstrins.w	$r12,$r11,0x5,0x1d
    1258:	64665f5f 	bge	$r26,$r31,26204(0x665c) # 78b4 <_start-0x1bff874c>
    125c:	6d62696c 	bgeu	$r11,$r12,90728(0x16268) # 174c4 <_start-0x1bfe8b3c>
    1260:	7265765f 	0x7265765f
    1264:	6e6f6973 	bgeu	$r11,$r19,-102552(0x26f68) # fffe81cc <_RAM_DATA+0x7ffe71cc>
    1268:	735f5f00 	vsrarni.d.q	$vr0,$vr24,0x57
    126c:	65756c67 	bge	$r3,$r7,95596(0x1756c) # 187d8 <_start-0x1bfe7828>
    1270:	74735f00 	xvmin.w	$xr0,$xr24,$xr23
    1274:	6b6f7472 	bltu	$r3,$r18,-37004(0x36f74) # ffff81e8 <_RAM_DATA+0x7fff71e8>
    1278:	73616c5f 	vssrani.w.d	$vr31,$vr2,0x1b
    127c:	6d5f0074 	bgeu	$r3,$r20,89856(0x15f00) # 1717c <_start-0x1bfe8e84>
    1280:	776f7462 	xvssrarni.du.q	$xr2,$xr3,0x5d
    1284:	74735f63 	xvmin.w	$xr3,$xr27,$xr23
    1288:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
    128c:	616e665f 	blt	$r18,$r31,93796(0x16e64) # 180f0 <_start-0x1bfe7f10>
    1290:	00736772 	bstrins.w	$r18,$r27,0x13,0x19
    1294:	6565725f 	bge	$r18,$r31,91504(0x16570) # 17804 <_start-0x1bfe87fc>
    1298:	5f00746e 	bne	$r3,$r14,-65420(0x30074) # ffff130c <_RAM_DATA+0x7fff030c>
    129c:	79746e66 	0x79746e66
    12a0:	00736570 	bstrins.w	$r16,$r11,0x13,0x19
    12a4:	7a69735f 	0x7a69735f
    12a8:	6f5f0065 	bgeu	$r3,$r5,-41216(0x35f00) # ffff71a8 <_RAM_DATA+0x7fff61a8>
    12ac:	745f6666 	0x745f6666
    12b0:	626e5f00 	blt	$r24,$r0,-102820(0x26e5c) # fffe810c <_RAM_DATA+0x7ffe710c>
    12b4:	5f006675 	bne	$r19,$r21,-65436(0x30064) # ffff1318 <_RAM_DATA+0x7fff0318>
    12b8:	73756e75 	0x73756e75
    12bc:	725f6465 	0x725f6465
    12c0:	00646e61 	bstrins.w	$r1,$r19,0x4,0x1b
    12c4:	616c665f 	blt	$r18,$r31,93284(0x16c64) # 17f28 <_start-0x1bfe80d8>
    12c8:	00327367 	0x00327367
    12cc:	5f73695f 	bne	$r10,$r31,-35992(0x37368) # ffff8634 <_RAM_DATA+0x7fff7634>
    12d0:	00617863 	bstrins.w	$r3,$r3,0x1,0x1e
    12d4:	6565735f 	bge	$r26,$r31,91504(0x16570) # 17844 <_start-0x1bfe87bc>
    12d8:	735f0064 	vsrarni.d.q	$vr4,$vr3,0x40
    12dc:	006b6565 	bstrins.w	$r5,$r11,0xb,0x19
    12e0:	6474735f 	bge	$r26,$r31,29808(0x7470) # 8750 <_start-0x1bff78b0>
    12e4:	00727265 	bstrins.w	$r5,$r19,0x12,0x1c
    12e8:	616d6e5f 	blt	$r18,$r31,93548(0x16d6c) # 18054 <_start-0x1bfe7fac>
    12ec:	636f6c6c 	blt	$r3,$r12,-37012(0x36f6c) # ffff8258 <_RAM_DATA+0x7fff7258>
    12f0:	62755f00 	blt	$r24,$r0,-101028(0x2755c) # fffe884c <_RAM_DATA+0x7ffe784c>
    12f4:	65006675 	bge	$r19,$r21,65636(0x10064) # 11358 <_start-0x1bfeeca8>
    12f8:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7c6c <_RAM_DATA+0x7fff6c6c>
    12fc:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7c6c <_RAM_DATA+0x7fff6c6c>
    1300:	695f3764 	bltu	$r27,$r4,89908(0x15f34) # 17234 <_start-0x1bfe8dcc>
    1304:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7274 <_start-0x1bff8d8c>
    1308:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7774 <_start-0x1bff888c>
    130c:	65007265 	bge	$r19,$r5,65648(0x10070) # 1137c <_start-0x1bfeec84>
    1310:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7c84 <_RAM_DATA+0x7fff6c84>
    1314:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7c84 <_RAM_DATA+0x7fff6c84>
    1318:	695f3362 	bltu	$r27,$r2,89904(0x15f30) # 17248 <_start-0x1bfe8db8>
    131c:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 728c <_start-0x1bff8d74>
    1320:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 778c <_start-0x1bff8874>
    1324:	69007265 	bltu	$r19,$r5,65648(0x10070) # 11394 <_start-0x1bfeec6c>
    1328:	6e5f7172 	bgeu	$r11,$r18,-106640(0x25f70) # fffe7298 <_RAM_DATA+0x7ffe6298>
    132c:	4e49006f 	jirl	$r15,$r3,-112384(0x24900)
    1330:	55363154 	bl	89208368(0x5513630) # 5514960 <_start-0x16aeb6a0>
    1334:	554f5400 	bl	85844(0x14f54) # 16288 <_start-0x1bfe9d78>
    1338:	72004843 	0x72004843
    133c:	6e656765 	bgeu	$r27,$r5,-105116(0x26564) # fffe78a0 <_RAM_DATA+0x7ffe68a0>
    1340:	54414200 	bl	-134201024(0x8004140) # f8005480 <_RAM_DATA+0x78004480>
    1344:	4941465f 	0x4941465f
    1348:	4155004c 	beqz	$r2,3233024(0x315500) # 316848 <_start-0x1bce97b8>
    134c:	5f325452 	bne	$r2,$r18,-52652(0x33254) # ffff45a0 <_RAM_DATA+0x7fff35a0>
    1350:	00544e49 	0x00544e49
    1354:	552f3a44 	bl	-116314312(0x9112f38) # f911428c <_RAM_DATA+0x7911328c>
    1358:	73726573 	0x73726573
    135c:	6e61772f 	bgeu	$r25,$r15,-106124(0x26174) # fffe74d0 <_RAM_DATA+0x7ffe64d0>
    1360:	442f7367 	bnez	$r27,1847152(0x1c2f70) # 1c42d0 <_start-0x1be3bd30>
    1364:	6d75636f 	bgeu	$r27,$r15,95584(0x17560) # 188c4 <_start-0x1bfe773c>
    1368:	73746e65 	0x73746e65
    136c:	646f432f 	bge	$r25,$r15,28480(0x6f40) # 82ac <_start-0x1bff7d54>
    1370:	6f4c2f65 	bgeu	$r27,$r5,-46036(0x34c2c) # ffff5f9c <_RAM_DATA+0x7fff4f9c>
    1374:	41676e6f 	beqz	$r19,4024172(0x3d676c) # 3d7ae0 <_start-0x1bc28520>
    1378:	5f686372 	bne	$r27,$r18,-38816(0x36860) # ffff7bd8 <_RAM_DATA+0x7fff6bd8>
    137c:	636f7250 	blt	$r18,$r16,-37008(0x36f70) # ffff82ec <_RAM_DATA+0x7fff72ec>
    1380:	69737365 	bltu	$r27,$r5,95088(0x17370) # 186f0 <_start-0x1bfe7910>
    1384:	535f676e 	b	-38051996(0xdbb5f64) # fdbb72e8 <_RAM_DATA+0x7dbb62e8>
    1388:	65747379 	bge	$r27,$r25,95344(0x17470) # 187f8 <_start-0x1bfe7808>
    138c:	43312f6d 	beqz	$r27,3617068(0x37312c) # 3744b8 <_start-0x1bc8bb48>
    1390:	2f323031 	0x2f323031
    1394:	2f637273 	0x2f637273
    1398:	752f7773 	xvsigncov.w	$xr19,$xr27,$xr29
    139c:	2f726573 	0x2f726573
    13a0:	30316331 	0x30316331
    13a4:	6e495f32 	bgeu	$r25,$r18,-112292(0x2495c) # fffe5d00 <_RAM_DATA+0x7ffe4d00>
    13a8:	72726574 	0x72726574
    13ac:	2e747075 	0x2e747075
    13b0:	61750063 	blt	$r3,$r3,95488(0x17500) # 188b0 <_start-0x1bfe7750>
    13b4:	00307472 	0x00307472
    13b8:	55465f5f 	bl	-42121636(0xd7d465c) # fd7d5a14 <_RAM_DATA+0x7d7d4a14>
    13bc:	4954434e 	0x4954434e
    13c0:	5f5f4e4f 	bne	$r18,$r15,-41140(0x35f4c) # ffff730c <_RAM_DATA+0x7fff630c>
    13c4:	74786500 	0x74786500
    13c8:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    13cc:	36626f69 	0x36626f69
    13d0:	7172695f 	0x7172695f
    13d4:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe753c <_RAM_DATA+0x7ffe653c>
    13d8:	72656c64 	0x72656c64
    13dc:	74786500 	0x74786500
    13e0:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    13e4:	31636f69 	0x31636f69
    13e8:	7172695f 	0x7172695f
    13ec:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7554 <_RAM_DATA+0x7ffe6554>
    13f0:	72656c64 	0x72656c64
    13f4:	72617500 	0x72617500
    13f8:	72735f74 	0x72735f74
    13fc:	67657200 	bge	$r16,$r0,-39568(0x36570) # ffff796c <_RAM_DATA+0x7fff696c>
    1400:	00637273 	bstrins.w	$r19,$r19,0x3,0x1c
    1404:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1887c <_start-0x1bfe7784>
    1408:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1846c <_start-0x1bfe7b94>
    140c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # ffff486c <_RAM_DATA+0x7fff386c>
    1410:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8580 <_RAM_DATA+0x7fff7580>
    1414:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8274 <_start-0x1bff7d8c>
    1418:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    141c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18894 <_start-0x1bfe776c>
    1420:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18484 <_start-0x1bfe7b7c>
    1424:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # ffff4484 <_RAM_DATA+0x7fff3484>
    1428:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8598 <_RAM_DATA+0x7fff7598>
    142c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 828c <_start-0x1bff7d74>
    1430:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1434:	69747865 	bltu	$r3,$r5,95352(0x17478) # 188ac <_start-0x1bfe7754>
    1438:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1849c <_start-0x1bfe7b64>
    143c:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # ffff4b9c <_RAM_DATA+0x7fff3b9c>
    1440:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff85b0 <_RAM_DATA+0x7fff75b0>
    1444:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 82a4 <_start-0x1bff7d5c>
    1448:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    144c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 188c4 <_start-0x1bfe773c>
    1450:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 184b4 <_start-0x1bfe7b4c>
    1454:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # ffff46b8 <_RAM_DATA+0x7fff36b8>
    1458:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff85c8 <_RAM_DATA+0x7fff75c8>
    145c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 82bc <_start-0x1bff7d44>
    1460:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1464:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd161ac <_RAM_DATA+0x7fd151ac>
    1468:	41485f52 	beqz	$r26,-3585956(0x49485c) # ffc95cc4 <_RAM_DATA+0x7fc94cc4>
    146c:	454c444e 	bnez	$r2,3755076(0x394c44) # 3960b0 <_start-0x1bc69f50>
    1470:	654b0052 	bge	$r2,$r18,84736(0x14b00) # 15f70 <_start-0x1bfea090>
    1474:	70795479 	0x70795479
    1478:	654b0065 	bge	$r3,$r5,84736(0x14b00) # 15f78 <_start-0x1bfea088>
    147c:	61684379 	blt	$r27,$r25,92224(0x16840) # 17cbc <_start-0x1bfe8344>
    1480:	6c656e6e 	bgeu	$r19,$r14,25964(0x656c) # 79ec <_start-0x1bff8614>
    1484:	74786500 	0x74786500
    1488:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    148c:	33616f69 	xvstelm.h	$xr9,$r27,182(0xb6),0x8
    1490:	7172695f 	0x7172695f
    1494:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe75fc <_RAM_DATA+0x7ffe65fc>
    1498:	72656c64 	0x72656c64
    149c:	74786500 	0x74786500
    14a0:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    14a4:	35646f69 	0x35646f69
    14a8:	7172695f 	0x7172695f
    14ac:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7614 <_RAM_DATA+0x7ffe6614>
    14b0:	72656c64 	0x72656c64
    14b4:	74786500 	0x74786500
    14b8:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    14bc:	36616f69 	0x36616f69
    14c0:	7172695f 	0x7172695f
    14c4:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe762c <_RAM_DATA+0x7ffe662c>
    14c8:	72656c64 	0x72656c64
    14cc:	74786500 	0x74786500
    14d0:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    14d4:	31626f69 	0x31626f69
    14d8:	7172695f 	0x7172695f
    14dc:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe7644 <_RAM_DATA+0x7ffe6644>
    14e0:	72656c64 	0x72656c64
    14e4:	74786500 	0x74786500
    14e8:	70675f69 	vavg.wu	$vr9,$vr27,$vr23
    14ec:	34626f69 	0x34626f69
    14f0:	7172695f 	0x7172695f
    14f4:	6e61685f 	bgeu	$r2,$r31,-106136(0x26168) # fffe765c <_RAM_DATA+0x7ffe665c>
    14f8:	72656c64 	0x72656c64
    14fc:	464f5300 	bnez	$r24,151376(0x24f50) # 2644c <_start-0x1bfd9bb4>
    1500:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
    1504:	78650054 	0x78650054
    1508:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff7470 <_RAM_DATA+0x7fff6470>
    150c:	626f6970 	blt	$r11,$r16,-102552(0x26f68) # fffe8474 <_RAM_DATA+0x7ffe7474>
    1510:	72695f37 	0x72695f37
    1514:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17d70 <_start-0x1bfe8290>
    1518:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 1817c <_start-0x1bfe7e84>
    151c:	78650072 	0x78650072
    1520:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff7488 <_RAM_DATA+0x7fff6488>
    1524:	636f6970 	blt	$r11,$r16,-37016(0x36f68) # ffff848c <_RAM_DATA+0x7fff748c>
    1528:	72695f32 	0x72695f32
    152c:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17d88 <_start-0x1bfe8278>
    1530:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 18194 <_start-0x1bfe7e6c>
    1534:	78650072 	0x78650072
    1538:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff74a0 <_RAM_DATA+0x7fff64a0>
    153c:	636f6970 	blt	$r11,$r16,-37016(0x36f68) # ffff84a4 <_RAM_DATA+0x7fff74a4>
    1540:	72695f35 	0x72695f35
    1544:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17da0 <_start-0x1bfe8260>
    1548:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 181ac <_start-0x1bfe7e54>
    154c:	78650072 	0x78650072
    1550:	675f6974 	bge	$r11,$r20,-41112(0x35f68) # ffff74b8 <_RAM_DATA+0x7fff64b8>
    1554:	646f6970 	bge	$r11,$r16,28520(0x6f68) # 84bc <_start-0x1bff7b44>
    1558:	72695f30 	0x72695f30
    155c:	61685f71 	blt	$r27,$r17,92252(0x1685c) # 17db8 <_start-0x1bfe8248>
    1560:	656c646e 	bge	$r3,$r14,93284(0x16c64) # 181c4 <_start-0x1bfe7e3c>
    1564:	6c660072 	bgeu	$r3,$r18,26112(0x6600) # 7b64 <_start-0x1bff849c>
    1568:	65006761 	bge	$r27,$r1,65636(0x10064) # 115cc <_start-0x1bfeea34>
    156c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7ee0 <_RAM_DATA+0x7fff6ee0>
    1570:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7ee0 <_RAM_DATA+0x7fff6ee0>
    1574:	695f3161 	bltu	$r11,$r1,89904(0x15f30) # 174a4 <_start-0x1bfe8b5c>
    1578:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 74e8 <_start-0x1bff8b18>
    157c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 79e8 <_start-0x1bff8618>
    1580:	54007265 	bl	-107741072(0x9940070) # f99415f0 <_RAM_DATA+0x799405f0>
    1584:	52454d49 	b	86394188(0x526454c) # 5265ad0 <_start-0x16d9a530>
    1588:	5f4d385f 	bne	$r2,$r31,-45768(0x34d38) # ffff62c0 <_RAM_DATA+0x7fff52c0>
    158c:	00544e49 	0x00544e49
    1590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a08 <_start-0x1bfe75f8>
    1594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 185f8 <_start-0x1bfe7a08>
    1598:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # ffff48fc <_RAM_DATA+0x7fff38fc>
    159c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff870c <_RAM_DATA+0x7fff770c>
    15a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8400 <_start-0x1bff7c00>
    15a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    15a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a20 <_start-0x1bfe75e0>
    15ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18610 <_start-0x1bfe79f0>
    15b0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # ffff4a10 <_RAM_DATA+0x7fff3a10>
    15b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8724 <_RAM_DATA+0x7fff7724>
    15b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8418 <_start-0x1bff7be8>
    15bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    15c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a38 <_start-0x1bfe75c8>
    15c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18628 <_start-0x1bfe79d8>
    15c8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # ffff4c2c <_RAM_DATA+0x7fff3c2c>
    15cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff873c <_RAM_DATA+0x7fff773c>
    15d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8430 <_start-0x1bff7bd0>
    15d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    15d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a50 <_start-0x1bfe75b0>
    15dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18640 <_start-0x1bfe79c0>
    15e0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # ffff4d40 <_RAM_DATA+0x7fff3d40>
    15e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8754 <_RAM_DATA+0x7fff7754>
    15e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8448 <_start-0x1bff7bb8>
    15ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    15f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a68 <_start-0x1bfe7598>
    15f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18658 <_start-0x1bfe79a8>
    15f8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # ffff4858 <_RAM_DATA+0x7fff3858>
    15fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff876c <_RAM_DATA+0x7fff776c>
    1600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8460 <_start-0x1bff7ba0>
    1604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a80 <_start-0x1bfe7580>
    160c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18670 <_start-0x1bfe7990>
    1610:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # ffff4b70 <_RAM_DATA+0x7fff3b70>
    1614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8784 <_RAM_DATA+0x7fff7784>
    1618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8478 <_start-0x1bff7b88>
    161c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18a98 <_start-0x1bfe7568>
    1624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18688 <_start-0x1bfe7978>
    1628:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # ffff4688 <_RAM_DATA+0x7fff3688>
    162c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff879c <_RAM_DATA+0x7fff779c>
    1630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8490 <_start-0x1bff7b70>
    1634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18ab0 <_start-0x1bfe7550>
    163c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 186a0 <_start-0x1bfe7960>
    1640:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # ffff49a0 <_RAM_DATA+0x7fff39a0>
    1644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff87b4 <_RAM_DATA+0x7fff77b4>
    1648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 84a8 <_start-0x1bff7b58>
    164c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1650:	65656c53 	bge	$r2,$r19,91500(0x1656c) # 17bbc <_start-0x1bfe8444>
    1654:	006e4570 	bstrins.w	$r16,$r11,0xe,0x11
    1658:	5f747865 	bne	$r3,$r5,-35720(0x37478) # ffff8ad0 <_RAM_DATA+0x7fff7ad0>
    165c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 84bc <_start-0x1bff7b44>
    1660:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    1664:	454d4954 	bnez	$r10,-3060408(0x514d48) # ffd163ac <_RAM_DATA+0x7fd153ac>
    1668:	41575f52 	beqz	$r26,-3582116(0x49575c) # ffc96dc4 <_RAM_DATA+0x7fc95dc4>
    166c:	495f454b 	bcnez	$fcc2,2973508(0x2d5f44) # 2d75b0 <_start-0x1bd28a50>
    1670:	6500544e 	bge	$r2,$r14,65620(0x10054) # 116c4 <_start-0x1bfee93c>
    1674:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff7fe8 <_RAM_DATA+0x7fff6fe8>
    1678:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff7fe8 <_RAM_DATA+0x7fff6fe8>
    167c:	695f3663 	bltu	$r19,$r3,89908(0x15f34) # 175b0 <_start-0x1bfe8a50>
    1680:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 75f0 <_start-0x1bff8a10>
    1684:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7af0 <_start-0x1bff8510>
    1688:	65007265 	bge	$r19,$r5,65648(0x10070) # 116f8 <_start-0x1bfee908>
    168c:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff8000 <_RAM_DATA+0x7fff7000>
    1690:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff8000 <_RAM_DATA+0x7fff7000>
    1694:	695f3164 	bltu	$r11,$r4,89904(0x15f30) # 175c4 <_start-0x1bfe8a3c>
    1698:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7608 <_start-0x1bff89f8>
    169c:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7b08 <_start-0x1bff84f8>
    16a0:	65007265 	bge	$r19,$r5,65648(0x10070) # 11710 <_start-0x1bfee8f0>
    16a4:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff8018 <_RAM_DATA+0x7fff7018>
    16a8:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff8018 <_RAM_DATA+0x7fff7018>
    16ac:	695f3261 	bltu	$r19,$r1,89904(0x15f30) # 175dc <_start-0x1bfe8a24>
    16b0:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 7620 <_start-0x1bff89e0>
    16b4:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7b20 <_start-0x1bff84e0>
    16b8:	69007265 	bltu	$r19,$r5,65648(0x10070) # 11728 <_start-0x1bfee8d8>
    16bc:	5f63746e 	bne	$r3,$r14,-40076(0x36374) # ffff7a30 <_RAM_DATA+0x7fff6a30>
    16c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8520 <_start-0x1bff7ae0>
    16c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    16c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18b40 <_start-0x1bfe74c0>
    16cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18730 <_start-0x1bfe78d0>
    16d0:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # ffff4b34 <_RAM_DATA+0x7fff3b34>
    16d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff8844 <_RAM_DATA+0x7fff7844>
    16d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8538 <_start-0x1bff7ac8>
    16dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    16e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 18b58 <_start-0x1bfe74a8>
    16e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 18748 <_start-0x1bfe78b8>
    16e8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # ffff4c48 <_RAM_DATA+0x7fff3c48>
    16ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # ffff885c <_RAM_DATA+0x7fff785c>
    16f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 8550 <_start-0x1bff7ab0>
    16f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
    16f8:	52746e49 	b	-114920340(0x926746c) # f9268b64 <_RAM_DATA+0x79267b64>
    16fc:	65006765 	bge	$r27,$r5,65636(0x10064) # 11760 <_start-0x1bfee8a0>
    1700:	5f697478 	bne	$r3,$r24,-38540(0x36974) # ffff8074 <_RAM_DATA+0x7fff7074>
    1704:	6f697067 	bgeu	$r3,$r7,-38544(0x36970) # ffff8074 <_RAM_DATA+0x7fff7074>
    1708:	695f3062 	bltu	$r3,$r2,89904(0x15f30) # 17638 <_start-0x1bfe89c8>
    170c:	685f7172 	bltu	$r11,$r18,24432(0x5f70) # 767c <_start-0x1bff8984>
    1710:	6c646e61 	bgeu	$r19,$r1,25708(0x646c) # 7b7c <_start-0x1bff8484>
    1714:	Address 0x0000000000001714 is out of bounds.


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
    1500:	00071ff2 	alsl.wu	$r18,$r31,$r7,0x3
    1504:	001a309f 	0x001a309f
    1508:	001a341c 	0x001a341c
    150c:	5c00011c 	bne	$r8,$r28,0 # 150c <_start-0x1bffeaf4>
    1510:	1c001a34 	pcaddu12i	$r20,209(0xd1)
    1514:	1c001a50 	pcaddu12i	$r16,210(0xd2)
    1518:	005d0001 	0x005d0001
    151c:	00000000 	0x00000000
    1520:	02000000 	slti	$r0,$r0,0
    1524:	00000000 	0x00000000
    1528:	001a8800 	0x001a8800
    152c:	001a901c 	0x001a901c
    1530:	0a00041c 	0x0a00041c
    1534:	909f5b33 	0x909f5b33
    1538:	941c001a 	0x941c001a
    153c:	011c001a 	0x011c001a
    1540:	1a945c00 	pcalau12i	$r0,303840(0x4a2e0)
    1544:	1ab01c00 	pcalau12i	$r0,360672(0x580e0)
    1548:	00011c00 	asrtle.d	$r0,$r7
    154c:	0000005d 	0x0000005d
    1550:	00000000 	0x00000000
    1554:	00000200 	0x00000200
    1558:	f4000000 	0xf4000000
    155c:	fc1c001a 	0xfc1c001a
    1560:	041c001a 	csrrd	$r26,0x700
    1564:	5b330a00 	beq	$r16,$r0,-52472(0x33308) # ffff486c <_RAM_DATA+0x7fff386c>
    1568:	001afc9f 	0x001afc9f
    156c:	001b001c 	rotr.w	$r28,$r0,$r0
    1570:	5c00011c 	bne	$r8,$r28,0 # 1570 <_start-0x1bffea90>
    1574:	1c001b00 	pcaddu12i	$r0,216(0xd8)
    1578:	1c001b1c 	pcaddu12i	$r28,216(0xd8)
    157c:	005d0001 	0x005d0001
    1580:	00000000 	0x00000000
    1584:	02000000 	slti	$r0,$r0,0
    1588:	00000000 	0x00000000
    158c:	001b2800 	rotr.w	$r0,$r0,$r10
    1590:	001b301c 	rotr.w	$r28,$r0,$r12
    1594:	0a00041c 	0x0a00041c
    1598:	309f5b33 	vldrepl.b	$vr19,$r25,2006(0x7d6)
    159c:	341c001b 	0x341c001b
    15a0:	011c001b 	0x011c001b
    15a4:	1b345c00 	pcalau12i	$r0,-417056(0x9a2e0)
    15a8:	1b531c00 	pcalau12i	$r0,-354080(0xa98e0)
    15ac:	00011c00 	asrtle.d	$r0,$r7
    15b0:	0000005d 	0x0000005d
	...
    15dc:	01000000 	0x01000000
    15e0:	00005400 	bitrev.d	$r0,$r0
    15e4:	00000000 	0x00000000
    15e8:	00010000 	asrtle.d	$r0,$r0
    15ec:	00000054 	0x00000054
    15f0:	00000000 	0x00000000
    15f4:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff15f4 <_RAM_DATA+0x7fff05f4>
	...
    1600:	005f0001 	0x005f0001
    1604:	00000000 	0x00000000
    1608:	03000000 	lu52i.d	$r0,$r0,0
    160c:	7fb08800 	0x7fb08800
	...
    1618:	005f0001 	0x005f0001
    161c:	00000000 	0x00000000
    1620:	01000000 	0x01000000
    1624:	00005400 	bitrev.d	$r0,$r0
    1628:	00000000 	0x00000000
    162c:	00010000 	asrtle.d	$r0,$r0
    1630:	00000054 	0x00000054
    1634:	00000000 	0x00000000
    1638:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff1638 <_RAM_DATA+0x7fff0638>
	...
    1644:	005f0001 	0x005f0001
    1648:	00000000 	0x00000000
    164c:	01000000 	0x01000000
    1650:	00005f00 	ext.w.b	$r0,$r24
    1654:	00000000 	0x00000000
    1658:	00010000 	asrtle.d	$r0,$r0
    165c:	00000054 	0x00000054
    1660:	00000000 	0x00000000
    1664:	54000100 	bl	67108864(0x4000000) # 4001664 <_start-0x17ffe99c>
	...
    1670:	00540001 	0x00540001
    1674:	00000000 	0x00000000
    1678:	01000000 	0x01000000
    167c:	00005400 	bitrev.d	$r0,$r0
	...
    1690:	005e0001 	0x005e0001
	...
    169c:	00000100 	0x00000100
    16a0:	01010000 	fadd.d	$f0,$f0,$f0
	...
    16bc:	91000400 	0x91000400
    16c0:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    16c4:	00000000 	0x00000000
    16c8:	04000000 	csrrd	$r0,0x0
    16cc:	7da09100 	0x7da09100
    16d0:	0000009f 	0x0000009f
    16d4:	00000000 	0x00000000
    16d8:	5f000100 	bne	$r8,$r0,-65536(0x30000) # ffff16d8 <_RAM_DATA+0x7fff06d8>
	...
    16e4:	005f0001 	0x005f0001
    16e8:	00000000 	0x00000000
    16ec:	04000000 	csrrd	$r0,0x0
    16f0:	7da09100 	0x7da09100
    16f4:	0000009f 	0x0000009f
    16f8:	00000000 	0x00000000
    16fc:	54000100 	bl	67108864(0x4000000) # 40016fc <_start-0x17ffe904>
	...
    1708:	a0910004 	0xa0910004
    170c:	00009f7d 	0x00009f7d
    1710:	00000000 	0x00000000
    1714:	00010000 	asrtle.d	$r0,$r0
    1718:	00000054 	0x00000054
    171c:	00000000 	0x00000000
    1720:	91000400 	0x91000400
    1724:	009f7da0 	bstrins.d	$r0,$r13,0x1f,0x1f
    1728:	00000000 	0x00000000
    172c:	01000000 	0x01000000
    1730:	00005d00 	ext.w.b	$r0,$r8
    1734:	00000000 	0x00000000
    1738:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    173c:	9f7da091 	0x9f7da091
	...
    1748:	a0910004 	0xa0910004
    174c:	00009f7d 	0x00009f7d
    1750:	00000000 	0x00000000
    1754:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1758:	9f7da073 	0x9f7da073
	...
    1764:	00020000 	0x00020000
	...
    1788:	00010000 	asrtle.d	$r0,$r0
    178c:	00000068 	0x00000068
    1790:	00000000 	0x00000000
    1794:	30000200 	0x30000200
    1798:	0000009f 	0x0000009f
    179c:	00000000 	0x00000000
    17a0:	68000100 	bltu	$r8,$r0,0 # 17a0 <_start-0x1bffe860>
	...
    17ac:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17b0:	00000000 	0x00000000
    17b4:	01000000 	0x01000000
    17b8:	00006800 	rdtime.d	$r0,$r0
    17bc:	00000000 	0x00000000
    17c0:	00010000 	asrtle.d	$r0,$r0
    17c4:	00000068 	0x00000068
    17c8:	00000000 	0x00000000
    17cc:	69000100 	bltu	$r8,$r0,65536(0x10000) # 117cc <_start-0x1bfee834>
	...
    17d8:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    17dc:	00000000 	0x00000000
    17e0:	01000000 	0x01000000
    17e4:	00006800 	rdtime.d	$r0,$r0
    17e8:	00000000 	0x00000000
    17ec:	00010000 	asrtle.d	$r0,$r0
    17f0:	00000068 	0x00000068
    17f4:	00000000 	0x00000000
    17f8:	68000100 	bltu	$r8,$r0,0 # 17f8 <_start-0x1bffe808>
	...
    1804:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1808:	00000000 	0x00000000
    180c:	01000000 	0x01000000
    1810:	00006800 	rdtime.d	$r0,$r0
    1814:	00000000 	0x00000000
    1818:	00010000 	asrtle.d	$r0,$r0
    181c:	00000068 	0x00000068
    1820:	00000000 	0x00000000
    1824:	68000100 	bltu	$r8,$r0,0 # 1824 <_start-0x1bffe7dc>
	...
    183c:	00000001 	0x00000001
	...
    1858:	00000001 	0x00000001
	...
    1880:	00000002 	0x00000002
    1884:	00000000 	0x00000000
    1888:	00010000 	asrtle.d	$r0,$r0
    188c:	0000005d 	0x0000005d
    1890:	00000000 	0x00000000
    1894:	5d000100 	bne	$r8,$r0,65536(0x10000) # 11894 <_start-0x1bfee76c>
	...
    18a0:	005c0001 	0x005c0001
    18a4:	00000000 	0x00000000
    18a8:	01000000 	0x01000000
    18ac:	00005c00 	ext.w.b	$r0,$r0
    18b0:	00000000 	0x00000000
    18b4:	00010000 	asrtle.d	$r0,$r0
    18b8:	0000005c 	0x0000005c
    18bc:	00000000 	0x00000000
    18c0:	5c000100 	bne	$r8,$r0,0 # 18c0 <_start-0x1bffe740>
	...
    18cc:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    18d0:	00000000 	0x00000000
    18d4:	01000000 	0x01000000
    18d8:	00006900 	rdtime.d	$r0,$r8
    18dc:	00000000 	0x00000000
    18e0:	00010000 	asrtle.d	$r0,$r0
    18e4:	00000069 	0x00000069
    18e8:	00000000 	0x00000000
    18ec:	69000100 	bltu	$r8,$r0,65536(0x10000) # 118ec <_start-0x1bfee714>
	...
    18f8:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    18fc:	00000000 	0x00000000
    1900:	01000000 	0x01000000
    1904:	00006900 	rdtime.d	$r0,$r8
    1908:	00000000 	0x00000000
    190c:	00010000 	asrtle.d	$r0,$r0
    1910:	00000069 	0x00000069
    1914:	00000000 	0x00000000
    1918:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11918 <_start-0x1bfee6e8>
	...
    1924:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1928:	00000000 	0x00000000
    192c:	01000000 	0x01000000
    1930:	00006900 	rdtime.d	$r0,$r8
    1934:	00000000 	0x00000000
    1938:	00010000 	asrtle.d	$r0,$r0
    193c:	00000069 	0x00000069
    1940:	00000000 	0x00000000
    1944:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11944 <_start-0x1bfee6bc>
	...
    1950:	005c0001 	0x005c0001
    1954:	00000000 	0x00000000
    1958:	01000000 	0x01000000
    195c:	00005c00 	ext.w.b	$r0,$r0
    1960:	00000000 	0x00000000
    1964:	00020000 	0x00020000
    1968:	00009f30 	0x00009f30
    196c:	00000000 	0x00000000
    1970:	00010000 	asrtle.d	$r0,$r0
    1974:	00000069 	0x00000069
    1978:	00000000 	0x00000000
    197c:	69000100 	bltu	$r8,$r0,65536(0x10000) # 1197c <_start-0x1bfee684>
	...
    1988:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    198c:	00000000 	0x00000000
    1990:	01000000 	0x01000000
    1994:	00006800 	rdtime.d	$r0,$r0
    1998:	00000000 	0x00000000
    199c:	00010000 	asrtle.d	$r0,$r0
    19a0:	00000068 	0x00000068
    19a4:	00000000 	0x00000000
    19a8:	68000100 	bltu	$r8,$r0,0 # 19a8 <_start-0x1bffe658>
	...
    19b4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19b8:	00000000 	0x00000000
    19bc:	01000000 	0x01000000
    19c0:	00006800 	rdtime.d	$r0,$r0
    19c4:	00000000 	0x00000000
    19c8:	00010000 	asrtle.d	$r0,$r0
    19cc:	00000068 	0x00000068
    19d0:	00000000 	0x00000000
    19d4:	68000100 	bltu	$r8,$r0,0 # 19d4 <_start-0x1bffe62c>
	...
    19e0:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    19e4:	00000000 	0x00000000
    19e8:	01000000 	0x01000000
    19ec:	00005e00 	ext.w.b	$r0,$r16
    19f0:	00000000 	0x00000000
    19f4:	00010000 	asrtle.d	$r0,$r0
    19f8:	0000005e 	0x0000005e
    19fc:	00000000 	0x00000000
    1a00:	5c000100 	bne	$r8,$r0,0 # 1a00 <_start-0x1bffe600>
	...
    1a0c:	005c0001 	0x005c0001
    1a10:	00000000 	0x00000000
    1a14:	01000000 	0x01000000
    1a18:	00005e00 	ext.w.b	$r0,$r16
    1a1c:	00000000 	0x00000000
    1a20:	00010000 	asrtle.d	$r0,$r0
    1a24:	0000005e 	0x0000005e
    1a28:	00000000 	0x00000000
    1a2c:	5c000100 	bne	$r8,$r0,0 # 1a2c <_start-0x1bffe5d4>
	...
    1a38:	005c0001 	0x005c0001
    1a3c:	00000000 	0x00000000
    1a40:	02000000 	slti	$r0,$r0,0
    1a44:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1a48:	00000000 	0x00000000
    1a4c:	0b000000 	0x0b000000
	...
    1a70:	00000101 	0x00000101
    1a74:	01010000 	fadd.d	$f0,$f0,$f0
	...
    1a84:	30000200 	0x30000200
    1a88:	0000009f 	0x0000009f
    1a8c:	00000000 	0x00000000
    1a90:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1a90 <_RAM_DATA+0x7fff0a90>
	...
    1a9c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1aa0:	00000000 	0x00000000
    1aa4:	01000000 	0x01000000
    1aa8:	00005c00 	ext.w.b	$r0,$r0
    1aac:	00000000 	0x00000000
    1ab0:	00010000 	asrtle.d	$r0,$r0
    1ab4:	0000005c 	0x0000005c
    1ab8:	00000000 	0x00000000
    1abc:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1abc <_RAM_DATA+0x7fff0abc>
	...
    1ac8:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1acc:	00000000 	0x00000000
    1ad0:	01000000 	0x01000000
    1ad4:	00006800 	rdtime.d	$r0,$r0
    1ad8:	00000000 	0x00000000
    1adc:	00010000 	asrtle.d	$r0,$r0
    1ae0:	00000068 	0x00000068
    1ae4:	00000000 	0x00000000
    1ae8:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1ae8 <_RAM_DATA+0x7fff0ae8>
	...
    1af4:	00680001 	bstrins.w	$r1,$r0,0x8,0x0
    1af8:	00000000 	0x00000000
    1afc:	01000000 	0x01000000
    1b00:	00006800 	rdtime.d	$r0,$r0
    1b04:	00000000 	0x00000000
    1b08:	00010000 	asrtle.d	$r0,$r0
    1b0c:	00000067 	0x00000067
    1b10:	00000000 	0x00000000
    1b14:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1b14 <_RAM_DATA+0x7fff0b14>
	...
    1b20:	005d0001 	0x005d0001
    1b24:	00000000 	0x00000000
    1b28:	01000000 	0x01000000
    1b2c:	00005d00 	ext.w.b	$r0,$r8
    1b30:	00000000 	0x00000000
    1b34:	00010000 	asrtle.d	$r0,$r0
    1b38:	00000067 	0x00000067
    1b3c:	00000000 	0x00000000
    1b40:	30000200 	0x30000200
    1b44:	0000009f 	0x0000009f
    1b48:	00000000 	0x00000000
    1b4c:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1b4c <_RAM_DATA+0x7fff0b4c>
	...
    1b58:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
    1b5c:	00000000 	0x00000000
    1b60:	02000000 	slti	$r0,$r0,0
    1b64:	009f3000 	bstrins.d	$r0,$r0,0x1f,0xc
    1b68:	00000000 	0x00000000
    1b6c:	01000000 	0x01000000
    1b70:	00006700 	rdtimeh.w	$r0,$r24
    1b74:	00000000 	0x00000000
    1b78:	00010000 	asrtle.d	$r0,$r0
    1b7c:	00000067 	0x00000067
	...
    1b90:	01000000 	0x01000000
    1b94:	00006800 	rdtime.d	$r0,$r0
    1b98:	00000000 	0x00000000
    1b9c:	00010000 	asrtle.d	$r0,$r0
    1ba0:	00000068 	0x00000068
    1ba4:	00000000 	0x00000000
    1ba8:	68000100 	bltu	$r8,$r0,0 # 1ba8 <_start-0x1bffe458>
	...
    1bc0:	00010000 	asrtle.d	$r0,$r0
    1bc4:	00000069 	0x00000069
    1bc8:	00000000 	0x00000000
    1bcc:	69000100 	bltu	$r8,$r0,65536(0x10000) # 11bcc <_start-0x1bfee434>
	...
    1bd8:	00690001 	bstrins.w	$r1,$r0,0x9,0x0
    1bdc:	00000000 	0x00000000
    1be0:	08000000 	0x08000000
	...
    1c00:	30000200 	0x30000200
    1c04:	0000009f 	0x0000009f
    1c08:	00000000 	0x00000000
    1c0c:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c0c <_RAM_DATA+0x7ffe0c0c>
	...
    1c18:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c1c:	00000000 	0x00000000
    1c20:	01000000 	0x01000000
    1c24:	00006a00 	rdtime.d	$r0,$r16
    1c28:	00000000 	0x00000000
    1c2c:	00010000 	asrtle.d	$r0,$r0
    1c30:	0000006a 	0x0000006a
    1c34:	00000000 	0x00000000
    1c38:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c38 <_RAM_DATA+0x7ffe0c38>
	...
    1c44:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c48:	00000000 	0x00000000
    1c4c:	01000000 	0x01000000
    1c50:	00006a00 	rdtime.d	$r0,$r16
    1c54:	00000000 	0x00000000
    1c58:	00010000 	asrtle.d	$r0,$r0
    1c5c:	0000006a 	0x0000006a
    1c60:	00000000 	0x00000000
    1c64:	6a000100 	bltu	$r8,$r0,-131072(0x20000) # fffe1c64 <_RAM_DATA+0x7ffe0c64>
	...
    1c70:	006a0001 	bstrins.w	$r1,$r0,0xa,0x0
    1c74:	00000000 	0x00000000
    1c78:	09000000 	0x09000000
	...
    1c98:	3b000200 	0x3b000200
    1c9c:	0000009f 	0x0000009f
    1ca0:	00000000 	0x00000000
    1ca4:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1ca4 <_RAM_DATA+0x7fff0ca4>
	...
    1cb0:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1cb4:	00000000 	0x00000000
    1cb8:	01000000 	0x01000000
    1cbc:	00006700 	rdtimeh.w	$r0,$r24
    1cc0:	00000000 	0x00000000
    1cc4:	00010000 	asrtle.d	$r0,$r0
    1cc8:	0000006b 	0x0000006b
    1ccc:	00000000 	0x00000000
    1cd0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1cd0 <_RAM_DATA+0x7fff0cd0>
	...
    1cdc:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
    1ce0:	00000000 	0x00000000
    1ce4:	01000000 	0x01000000
    1ce8:	00006700 	rdtimeh.w	$r0,$r24
    1cec:	00000000 	0x00000000
    1cf0:	00010000 	asrtle.d	$r0,$r0
    1cf4:	0000006b 	0x0000006b
    1cf8:	00000000 	0x00000000
    1cfc:	6b000100 	bltu	$r8,$r0,-65536(0x30000) # ffff1cfc <_RAM_DATA+0x7fff0cfc>
	...
    1d08:	006b0001 	bstrins.w	$r1,$r0,0xb,0x0
	...
    1d24:	01000000 	0x01000000
    1d28:	00005400 	bitrev.d	$r0,$r0
    1d2c:	00000000 	0x00000000
    1d30:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1d34:	9f5401f3 	0x9f5401f3
	...
    1d40:	00540001 	0x00540001
    1d44:	00000000 	0x00000000
    1d48:	04000000 	csrrd	$r0,0x0
    1d4c:	5401f300 	bl	-67108368(0xc0001f0) # fc001f3c <_RAM_DATA+0x7c000f3c>
    1d50:	0000009f 	0x0000009f
    1d54:	00000000 	0x00000000
    1d58:	54000100 	bl	67108864(0x4000000) # 4001d58 <_start-0x17ffe2a8>
	...
    1d64:	01f30004 	0x01f30004
    1d68:	00009f54 	0x00009f54
	...
    1d84:	00010000 	asrtle.d	$r0,$r0
    1d88:	00000055 	0x00000055
    1d8c:	00000000 	0x00000000
    1d90:	f3000400 	0xf3000400
    1d94:	009f5501 	bstrins.d	$r1,$r8,0x1f,0x15
    1d98:	00000000 	0x00000000
    1d9c:	01000000 	0x01000000
    1da0:	00005500 	bitrev.d	$r0,$r8
    1da4:	00000000 	0x00000000
    1da8:	00040000 	alsl.w	$r0,$r0,$r0,0x1
    1dac:	9f5501f3 	0x9f5501f3
	...
    1db8:	00550001 	0x00550001
    1dbc:	00000000 	0x00000000
    1dc0:	04000000 	csrrd	$r0,0x0
    1dc4:	5501f300 	bl	-67042832(0xc0101f0) # fc011fb4 <_RAM_DATA+0x7c010fb4>
    1dc8:	0000009f 	0x0000009f
    1dcc:	00000000 	0x00000000
    1dd0:	00000100 	0x00000100
    1dd4:	00000000 	0x00000000
    1dd8:	00000100 	0x00000100
	...
    1de4:	30000200 	0x30000200
    1de8:	0000009f 	0x0000009f
    1dec:	00000000 	0x00000000
    1df0:	67000100 	bge	$r8,$r0,-65536(0x30000) # ffff1df0 <_RAM_DATA+0x7fff0df0>
	...
    1dfc:	7f880003 	0x7f880003
    1e00:	0000009f 	0x0000009f
    1e04:	00000000 	0x00000000
    1e08:	68000100 	bltu	$r8,$r0,0 # 1e08 <_start-0x1bffe1f8>
	...
    1e14:	9f300002 	0x9f300002
	...
    1e20:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    1e34:	68000100 	bltu	$r8,$r0,0 # 1e34 <_start-0x1bffe1cc>
	...
    1e40:	00020200 	0x00020200
	...
    1e4c:	00540001 	0x00540001
    1e50:	00000000 	0x00000000
    1e54:	04000000 	csrrd	$r0,0x0
    1e58:	5401f300 	bl	-67108368(0xc0001f0) # fc002048 <_RAM_DATA+0x7c001048>
    1e5c:	0000009f 	0x0000009f
	...
    1e68:	00256c00 	crc.w.w.w	$r0,$r0,$r27
    1e6c:	0025801c 	crc.w.d.w	$r28,$r0,$r0
    1e70:	6700011c 	bge	$r8,$r28,-65536(0x30000) # ffff1e70 <_RAM_DATA+0x7fff0e70>
    1e74:	1c0025b4 	pcaddu12i	$r20,301(0x12d)
    1e78:	1c002660 	pcaddu12i	$r0,307(0x133)
    1e7c:	00670001 	bstrins.w	$r1,$r0,0x7,0x0
	...
    1e8c:	081c0026 	fmadd.s	$f6,$f1,$f0,$f24
    1e90:	011c0026 	0x011c0026
    1e94:	26245c00 	ldptr.d	$r0,$r0,9308(0x245c)
    1e98:	26281c00 	ldptr.d	$r0,$r0,10268(0x281c)
    1e9c:	00011c00 	asrtle.d	$r0,$r7
    1ea0:	0000005c 	0x0000005c
	...
    1eac:	08000000 	0x08000000
    1eb0:	0c1c0026 	fcmp.cune.s	$fcc6,$f1,$f0
    1eb4:	011c0026 	0x011c0026
    1eb8:	26345c00 	ldptr.d	$r0,$r0,13404(0x345c)
    1ebc:	26441c00 	ldptr.d	$r0,$r0,17436(0x441c)
    1ec0:	00011c00 	asrtle.d	$r0,$r7
    1ec4:	0026545c 	crcc.w.b.w	$r28,$r2,$r21
    1ec8:	0026601c 	crcc.w.b.w	$r28,$r0,$r24
    1ecc:	5c00011c 	bne	$r8,$r28,0 # 1ecc <_start-0x1bffe134>
	...
    1ed8:	01000003 	0x01000003
    1edc:	01000001 	0x01000001
    1ee0:	00000001 	0x00000001
    1ee4:	1c0025f0 	pcaddu12i	$r16,303(0x12f)
    1ee8:	1c002608 	pcaddu12i	$r8,304(0x130)
    1eec:	9f300002 	0x9f300002
    1ef0:	1c002608 	pcaddu12i	$r8,304(0x130)
    1ef4:	1c002610 	pcaddu12i	$r16,304(0x130)
    1ef8:	105e0001 	addu16i.d	$r1,$r0,6016(0x1780)
    1efc:	141c0026 	lu12i.w	$r6,57345(0xe001)
    1f00:	021c0026 	slti	$r6,$r1,1792(0x700)
    1f04:	149f3100 	lu12i.w	$r0,326024(0x4f988)
    1f08:	401c0026 	beqz	$r1,1580032(0x181c00) # 183b08 <_start-0x1be7c4f8>
    1f0c:	011c0026 	0x011c0026
    1f10:	26405e00 	ldptr.d	$r0,$r16,16476(0x405c)
    1f14:	26541c00 	ldptr.d	$r0,$r0,21532(0x541c)
    1f18:	00021c00 	0x00021c00
    1f1c:	26549f30 	ldptr.d	$r16,$r25,21660(0x549c)
    1f20:	26601c00 	ldptr.d	$r0,$r0,24604(0x601c)
    1f24:	00011c00 	asrtle.d	$r0,$r7
    1f28:	0000005e 	0x0000005e
	...
    1f34:	d8000000 	0xd8000000
    1f38:	fc1c0024 	0xfc1c0024
    1f3c:	011c0024 	0x011c0024
    1f40:	25085c00 	stptr.w	$r0,$r0,2140(0x85c)
    1f44:	25131c00 	stptr.w	$r0,$r0,4892(0x131c)
    1f48:	00011c00 	asrtle.d	$r0,$r7
    1f4c:	0025245c 	crc.w.w.w	$r28,$r2,$r9
    1f50:	00252f1c 	crc.w.w.w	$r28,$r24,$r11
    1f54:	5c00011c 	bne	$r8,$r28,0 # 1f54 <_start-0x1bffe0ac>
	...
    1f60:	24680000 	ldptr.w	$r0,$r0,26624(0x6800)
    1f64:	24881c00 	ldptr.w	$r0,$r0,-30692(0x881c)
    1f68:	00091c00 	bytepick.w	$r0,$r0,$r7,0x2
    1f6c:	e8090075 	0xe8090075
    1f70:	25f80924 	stptr.w	$r4,$r9,-2040(0xf808)
    1f74:	0000009f 	0x0000009f
    1f78:	00000000 	0x00000000
    1f7c:	cc000000 	0xcc000000
    1f80:	1c1c0023 	pcaddu12i	$r3,57345(0xe001)
    1f84:	011c0024 	0x011c0024
    1f88:	00006800 	rdtime.d	$r0,$r0
	...
    1f94:	1c0023d0 	pcaddu12i	$r16,286(0x11e)
    1f98:	1c0023e0 	pcaddu12i	$r0,287(0x11f)
    1f9c:	005c0001 	0x005c0001
    1fa0:	00000000 	0x00000000
    1fa4:	01000000 	0x01000000
    1fa8:	d8000000 	0xd8000000
    1fac:	e01c0023 	0xe01c0023
    1fb0:	021c0023 	slti	$r3,$r1,1792(0x700)
    1fb4:	e09f3000 	0xe09f3000
    1fb8:	181c0023 	pcaddi	$r3,57345(0xe001)
    1fbc:	011c0024 	0x011c0024
    1fc0:	00006700 	rdtimeh.w	$r0,$r24
    1fc4:	00000000 	0x00000000
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
 27c:	1c001b6c 	pcaddu12i	$r12,219(0xdb)
 280:	1c001b6c 	pcaddu12i	$r12,219(0xdb)
 284:	1c001be4 	pcaddu12i	$r4,223(0xdf)
 288:	1c001be4 	pcaddu12i	$r4,223(0xdf)
 28c:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200 (discriminator 1)
 298:	1c001c0c 	pcaddu12i	$r12,224(0xe0)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204
 29c:	1c001c48 	pcaddu12i	$r8,226(0xe2)
 2a0:	1c001c48 	pcaddu12i	$r8,226(0xe2)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:200
 2a4:	1c001c84 	pcaddu12i	$r4,228(0xe4)
 2a8:	1c001c84 	pcaddu12i	$r4,228(0xe4)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:206 (discriminator 3)
 2ac:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
 2b0:	1c001cc0 	pcaddu12i	$r0,230(0xe6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:207 (discriminator 3)
 2b4:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
 2b8:	1c001cfc 	pcaddu12i	$r28,231(0xe7)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:208 (discriminator 3)
 2bc:	1c001d38 	pcaddu12i	$r24,233(0xe9)
 2c0:	1c001d38 	pcaddu12i	$r24,233(0xe9)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 3)
 2c4:	1c001d74 	pcaddu12i	$r20,235(0xeb)
 2c8:	1c001d74 	pcaddu12i	$r20,235(0xeb)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:204 (discriminator 1)
 2cc:	1c001db0 	pcaddu12i	$r16,237(0xed)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210
 2d0:	1c001db0 	pcaddu12i	$r16,237(0xed)
 2d4:	1c001dec 	pcaddu12i	$r12,239(0xef)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:212 (discriminator 3)
 2d8:	1c001dec 	pcaddu12i	$r12,239(0xef)
 2dc:	1c001e28 	pcaddu12i	$r8,241(0xf1)
 2e0:	1c001e28 	pcaddu12i	$r8,241(0xf1)
 2e4:	1c001e64 	pcaddu12i	$r4,243(0xf3)
 2e8:	1c001e64 	pcaddu12i	$r4,243(0xf3)
 2ec:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
 2f0:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
 2f4:	1c001edc 	pcaddu12i	$r28,246(0xf6)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 3)
 2f8:	1c001edc 	pcaddu12i	$r28,246(0xf6)
 2fc:	1c001f18 	pcaddu12i	$r24,248(0xf8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:210 (discriminator 1)
 300:	1c001f18 	pcaddu12i	$r24,248(0xf8)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:214
 304:	1c001f54 	pcaddu12i	$r20,250(0xfa)
 308:	1c001f54 	pcaddu12i	$r20,250(0xfa)
 30c:	1c001f90 	pcaddu12i	$r16,252(0xfc)
 310:	1c001f90 	pcaddu12i	$r16,252(0xfc)
 314:	1c001fcc 	pcaddu12i	$r12,254(0xfe)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215
 318:	1c001fcc 	pcaddu12i	$r12,254(0xfe)
 31c:	1c002008 	pcaddu12i	$r8,256(0x100)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:217 (discriminator 3)
 320:	1c002008 	pcaddu12i	$r8,256(0x100)
 324:	1c002044 	pcaddu12i	$r4,258(0x102)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 3)
 328:	1c002044 	pcaddu12i	$r4,258(0x102)
 32c:	1c002080 	pcaddu12i	$r0,260(0x104)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:215 (discriminator 1)
 330:	1c002080 	pcaddu12i	$r0,260(0x104)
 334:	1c0020bc 	pcaddu12i	$r28,261(0x105)
 338:	1c0020bc 	pcaddu12i	$r28,261(0x105)
 33c:	1c0020f8 	pcaddu12i	$r24,263(0x107)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219
 340:	1c0020f8 	pcaddu12i	$r24,263(0x107)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 1)
 344:	1c002134 	pcaddu12i	$r20,265(0x109)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:221 (discriminator 3)
 348:	1c002134 	pcaddu12i	$r20,265(0x109)
 34c:	1c002170 	pcaddu12i	$r16,267(0x10b)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:219 (discriminator 3)
 350:	1c002170 	pcaddu12i	$r16,267(0x10b)
 354:	1c0021ac 	pcaddu12i	$r12,269(0x10d)
 358:	1c0021ac 	pcaddu12i	$r12,269(0x10d)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:237
 35c:	1c0021e8 	pcaddu12i	$r8,271(0x10f)
 360:	1c0021e8 	pcaddu12i	$r8,271(0x10f)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243
 364:	1c002224 	pcaddu12i	$r4,273(0x111)
 368:	1c002224 	pcaddu12i	$r4,273(0x111)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:245 (discriminator 3)
 36c:	1c002260 	pcaddu12i	$r0,275(0x113)
 370:	1c002260 	pcaddu12i	$r0,275(0x113)
 374:	1c00229c 	pcaddu12i	$r28,276(0x114)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 3)
 378:	1c00229c 	pcaddu12i	$r28,276(0x114)
 37c:	1c0022d8 	pcaddu12i	$r24,278(0x116)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:243 (discriminator 1)
 380:	1c0022d8 	pcaddu12i	$r24,278(0x116)
 384:	1c002314 	pcaddu12i	$r20,280(0x118)
 388:	1c002314 	pcaddu12i	$r20,280(0x118)
 38c:	1c002350 	pcaddu12i	$r16,282(0x11a)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:373
 390:	1c002350 	pcaddu12i	$r16,282(0x11a)
 394:	1c00238c 	pcaddu12i	$r12,284(0x11c)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:259
 398:	1c00238c 	pcaddu12i	$r12,284(0x11c)
 39c:	1c002424 	pcaddu12i	$r4,289(0x121)
	...
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280
 3b0:	1c002424 	pcaddu12i	$r4,289(0x121)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:264
 3b4:	1c002454 	pcaddu12i	$r20,290(0x122)
 3b8:	1c002454 	pcaddu12i	$r20,290(0x122)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:265
 3bc:	1c0024a0 	pcaddu12i	$r0,293(0x125)
 3c0:	1c0024a0 	pcaddu12i	$r0,293(0x125)
 3c4:	1c0024c0 	pcaddu12i	$r0,294(0x126)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:282 (discriminator 2)
 3c8:	1c0024c0 	pcaddu12i	$r0,294(0x126)
 3cc:	1c002550 	pcaddu12i	$r16,298(0x12a)
 3d0:	1c002550 	pcaddu12i	$r16,298(0x12a)
 3d4:	1c002660 	pcaddu12i	$r0,307(0x133)
 3d8:	1c002660 	pcaddu12i	$r0,307(0x133)
D:/Users/wangs/Documents/Code/LoongArch_Processing_System/1C102/src/sw/user/main.c:280 (discriminator 2)
 3dc:	1c002688 	pcaddu12i	$r8,308(0x134)
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
