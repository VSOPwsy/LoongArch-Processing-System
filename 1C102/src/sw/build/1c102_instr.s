
1c102_instr.elf:     file format elf32-loongarch
1c102_instr.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438004f 	lu12i.w	$r15,114690(0x1c002)
1c00000c:	03ba31ef 	ori	$r15,$r15,0xe8c
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038001ef 	ori	$r15,$r15,0x0
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038001ad 	ori	$r13,$r13,0x0
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54190800 	bl	6408(0x1908) # 1c0019a8 <main>
1c0000a4:	4c000020 	jirl	$r0,$r1,0

1c0000a8 <cpu_wait>:
cpu_wait():
1c0000a8:	06488000 	idle	0x0
1c0000ac:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
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
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54148c00 	bl	5260(0x148c) # 1c00251c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5414cc00 	bl	5324(0x14cc) # 1c002564 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54155000 	bl	5456(0x1550) # 1c0025f0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54158400 	bl	5508(0x1584) # 1c00262c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54139c00 	bl	5020(0x139c) # 1c00244c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5417a800 	bl	6056(0x17a8) # 1c002860 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54163c00 	bl	5692(0x163c) # 1c002704 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
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
1c001124:	06483800 	ertn

1c001128 <myputchar>:
myputchar():
1c001128:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00112c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001130:	29806076 	st.w	$r22,$r3,24(0x18)
1c001134:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001138:	0015008c 	move	$r12,$r4
1c00113c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001140:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001144:	00150185 	move	$r5,$r12
1c001148:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00114c:	54058c00 	bl	1420(0x58c) # 1c0016d8 <UART_SendData>
1c001150:	03400000 	andi	$r0,$r0,0x0
1c001154:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001158:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00115c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001160:	4c000020 	jirl	$r0,$r1,0

1c001164 <printbase>:
printbase():
1c001164:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001168:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c00116c:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001170:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001174:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001178:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c00117c:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001180:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001184:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001188:	40002580 	beqz	$r12,36(0x24) # 1c0011ac <printbase+0x48>
1c00118c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001190:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c0011ac <printbase+0x48>
1c001194:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001198:	0011300c 	sub.w	$r12,$r0,$r12
1c00119c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0011a0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0011a4:	57ff87ff 	bl	-124(0xfffff84) # 1c001128 <myputchar>
1c0011a8:	50000c00 	b	12(0xc) # 1c0011b4 <printbase+0x50>
1c0011ac:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0011b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0011b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0011b8:	50005000 	b	80(0x50) # 1c001208 <printbase+0xa4>
1c0011bc:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c0011c0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0011c4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0011c8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0011d0 <printbase+0x6c>
1c0011cc:	002a0007 	break	0x7
1c0011d0:	00005dcc 	ext.w.b	$r12,$r14
1c0011d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0011d8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0011dc:	001035cd 	add.w	$r13,$r14,$r13
1c0011e0:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c0011e4:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c0011e8:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0011ec:	002135cc 	div.wu	$r12,$r14,$r13
1c0011f0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0011f8 <printbase+0x94>
1c0011f4:	002a0007 	break	0x7
1c0011f8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0011fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001200:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001204:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001208:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00120c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c0011bc <printbase+0x58>
1c001210:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001214:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001218:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00121c:	001231ad 	slt	$r13,$r13,$r12
1c001220:	0013b5ce 	masknez	$r14,$r14,$r13
1c001224:	0013358c 	maskeqz	$r12,$r12,$r13
1c001228:	001531cc 	or	$r12,$r14,$r12
1c00122c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001230:	50007400 	b	116(0x74) # 1c0012a4 <printbase+0x140>
1c001234:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00123c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001258 <printbase+0xf4>
1c001240:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001244:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001248:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00124c:	001031ac 	add.w	$r12,$r13,$r12
1c001250:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001254:	50000800 	b	8(0x8) # 1c00125c <printbase+0xf8>
1c001258:	0015000c 	move	$r12,$r0
1c00125c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001260:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001264:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001268:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001280 <printbase+0x11c>
1c00126c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001270:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001274:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001278:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00127c:	50001400 	b	20(0x14) # 1c001290 <printbase+0x12c>
1c001280:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001284:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001288:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c00128c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001290:	00150184 	move	$r4,$r12
1c001294:	57fe97ff 	bl	-364(0xffffe94) # 1c001128 <myputchar>
1c001298:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00129c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0012a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0012a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0012a8:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001234 <printbase+0xd0>
1c0012ac:	0015000c 	move	$r12,$r0
1c0012b0:	00150184 	move	$r4,$r12
1c0012b4:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c0012b8:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c0012bc:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c0012c0:	4c000020 	jirl	$r0,$r1,0

1c0012c4 <ls1x_puts>:
ls1x_puts():
1c0012c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0012c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0012cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0012d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0012d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0012d8:	50003000 	b	48(0x30) # 1c001308 <ls1x_puts+0x44>
1c0012dc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c0012e0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0012e4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0012f0 <ls1x_puts+0x2c>
1c0012e8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0012ec:	57fe3fff 	bl	-452(0xffffe3c) # 1c001128 <myputchar>
1c0012f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0012f4:	00150184 	move	$r4,$r12
1c0012f8:	57fe33ff 	bl	-464(0xffffe30) # 1c001128 <myputchar>
1c0012fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001300:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001304:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001308:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00130c:	2a00018c 	ld.bu	$r12,$r12,0
1c001310:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001314:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001318:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c0012dc <ls1x_puts+0x18>
1c00131c:	0015000c 	move	$r12,$r0
1c001320:	00150184 	move	$r4,$r12
1c001324:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001328:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00132c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001330:	4c000020 	jirl	$r0,$r1,0

1c001334 <myprintf>:
myprintf():
1c001334:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001338:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00133c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001340:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001344:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001348:	298012c5 	st.w	$r5,$r22,4(0x4)
1c00134c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001350:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001354:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001358:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00135c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001360:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001364:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001368:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c00136c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001370:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001374:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001378:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00137c:	50033000 	b	816(0x330) # 1c0016ac <myprintf+0x378>
1c001380:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001384:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001388:	001031ac 	add.w	$r12,$r13,$r12
1c00138c:	2a00018c 	ld.bu	$r12,$r12,0
1c001390:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001394:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001398:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00139c:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001680 <myprintf+0x34c>
1c0013a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0013a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0013a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0013ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0013b0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0013b4:	001031ac 	add.w	$r12,$r13,$r12
1c0013b8:	2800018c 	ld.b	$r12,$r12,0
1c0013bc:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0013c0:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0013c4:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001670 <myprintf+0x33c>
1c0013c8:	0040898d 	slli.w	$r13,$r12,0x2
1c0013cc:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0013d0:	0293318c 	addi.w	$r12,$r12,1228(0x4cc)
1c0013d4:	001031ac 	add.w	$r12,$r13,$r12
1c0013d8:	2880018c 	ld.w	$r12,$r12,0
1c0013dc:	4c000180 	jirl	$r0,$r12,0
1c0013e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0013e4:	2880018c 	ld.w	$r12,$r12,0
1c0013e8:	00150184 	move	$r4,$r12
1c0013ec:	57fedbff 	bl	-296(0xffffed8) # 1c0012c4 <ls1x_puts>
1c0013f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0013f4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0013f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0013fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001404:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001408:	50029800 	b	664(0x298) # 1c0016a0 <myprintf+0x36c>
1c00140c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001410:	2880018c 	ld.w	$r12,$r12,0
1c001414:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001418:	00150184 	move	$r4,$r12
1c00141c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001128 <myputchar>
1c001420:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001424:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001428:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00142c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001438:	50026800 	b	616(0x268) # 1c0016a0 <myprintf+0x36c>
1c00143c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001440:	2880018c 	ld.w	$r12,$r12,0
1c001444:	00150007 	move	$r7,$r0
1c001448:	02802806 	addi.w	$r6,$r0,10(0xa)
1c00144c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001450:	00150184 	move	$r4,$r12
1c001454:	57fd13ff 	bl	-752(0xffffd10) # 1c001164 <printbase>
1c001458:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00145c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001460:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00146c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001470:	50023000 	b	560(0x230) # 1c0016a0 <myprintf+0x36c>
1c001474:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001478:	2880018c 	ld.w	$r12,$r12,0
1c00147c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001480:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001484:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001488:	00150184 	move	$r4,$r12
1c00148c:	57fcdbff 	bl	-808(0xffffcd8) # 1c001164 <printbase>
1c001490:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001494:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001498:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00149c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014a8:	5001f800 	b	504(0x1f8) # 1c0016a0 <myprintf+0x36c>
1c0014ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014b0:	2880018c 	ld.w	$r12,$r12,0
1c0014b4:	00150007 	move	$r7,$r0
1c0014b8:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0014bc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0014c0:	00150184 	move	$r4,$r12
1c0014c4:	57fca3ff 	bl	-864(0xffffca0) # 1c001164 <printbase>
1c0014c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014cc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0014d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014e0:	5001c000 	b	448(0x1c0) # 1c0016a0 <myprintf+0x36c>
1c0014e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014e8:	2880018c 	ld.w	$r12,$r12,0
1c0014ec:	00150007 	move	$r7,$r0
1c0014f0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0014f4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0014f8:	00150184 	move	$r4,$r12
1c0014fc:	57fc6bff 	bl	-920(0xffffc68) # 1c001164 <printbase>
1c001500:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001504:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001508:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00150c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001510:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001514:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001518:	50018800 	b	392(0x188) # 1c0016a0 <myprintf+0x36c>
1c00151c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001520:	2880018c 	ld.w	$r12,$r12,0
1c001524:	00150007 	move	$r7,$r0
1c001528:	02804006 	addi.w	$r6,$r0,16(0x10)
1c00152c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001530:	00150184 	move	$r4,$r12
1c001534:	57fc33ff 	bl	-976(0xffffc30) # 1c001164 <printbase>
1c001538:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00153c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001540:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001548:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00154c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001550:	50015000 	b	336(0x150) # 1c0016a0 <myprintf+0x36c>
1c001554:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001558:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001128 <myputchar>
1c00155c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001560:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001564:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001568:	50013800 	b	312(0x138) # 1c0016a0 <myprintf+0x36c>
1c00156c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001570:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001574:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001578:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00157c:	50003c00 	b	60(0x3c) # 1c0015b8 <myprintf+0x284>
1c001580:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001584:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001588:	001c31ad 	mul.w	$r13,$r13,$r12
1c00158c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001590:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001594:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001598:	001031cc 	add.w	$r12,$r14,$r12
1c00159c:	2800018c 	ld.b	$r12,$r12,0
1c0015a0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0015a4:	001031ac 	add.w	$r12,$r13,$r12
1c0015a8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0015ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015c0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0015c4:	001031ac 	add.w	$r12,$r13,$r12
1c0015c8:	2800018d 	ld.b	$r13,$r12,0
1c0015cc:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0015d0:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c0013a8 <myprintf+0x74>
1c0015d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015dc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0015e0:	001031ac 	add.w	$r12,$r13,$r12
1c0015e4:	2800018d 	ld.b	$r13,$r12,0
1c0015e8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0015ec:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001580 <myprintf+0x24c>
1c0015f0:	53fdbbff 	b	-584(0xffffdb8) # 1c0013a8 <myprintf+0x74>
1c0015f4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0015f8:	50003c00 	b	60(0x3c) # 1c001634 <myprintf+0x300>
1c0015fc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001600:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001604:	001c31ad 	mul.w	$r13,$r13,$r12
1c001608:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00160c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001610:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001614:	001031cc 	add.w	$r12,$r14,$r12
1c001618:	2800018c 	ld.b	$r12,$r12,0
1c00161c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00162c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001630:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001638:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00163c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	2800018d 	ld.b	$r13,$r12,0
1c001648:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00164c:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c0013a8 <myprintf+0x74>
1c001650:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001654:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001658:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00165c:	001031ac 	add.w	$r12,$r13,$r12
1c001660:	2800018d 	ld.b	$r13,$r12,0
1c001664:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001668:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0015fc <myprintf+0x2c8>
1c00166c:	53fd3fff 	b	-708(0xffffd3c) # 1c0013a8 <myprintf+0x74>
1c001670:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001674:	57fab7ff 	bl	-1356(0xffffab4) # 1c001128 <myputchar>
1c001678:	03400000 	andi	$r0,$r0,0x0
1c00167c:	50002400 	b	36(0x24) # 1c0016a0 <myprintf+0x36c>
1c001680:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001684:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001688:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001694 <myprintf+0x360>
1c00168c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001690:	57fa9bff 	bl	-1384(0xffffa98) # 1c001128 <myputchar>
1c001694:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001698:	00150184 	move	$r4,$r12
1c00169c:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001128 <myputchar>
1c0016a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0016b4:	001031ac 	add.w	$r12,$r13,$r12
1c0016b8:	2800018c 	ld.b	$r12,$r12,0
1c0016bc:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001380 <myprintf+0x4c>
1c0016c0:	0015000c 	move	$r12,$r0
1c0016c4:	00150184 	move	$r4,$r12
1c0016c8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0016cc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0016d0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0016d4:	4c000020 	jirl	$r0,$r1,0

1c0016d8 <UART_SendData>:
UART_SendData():
1c0016d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0016dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0016e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0016e4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0016e8:	001500ac 	move	$r12,$r5
1c0016ec:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0016f0:	03400000 	andi	$r0,$r0,0x0
1c0016f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016f8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0016fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001700:	0340818c 	andi	$r12,$r12,0x20
1c001704:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0016f4 <UART_SendData+0x1c>
1c001708:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00170c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001710:	2900018d 	st.b	$r13,$r12,0
1c001714:	03400000 	andi	$r0,$r0,0x0
1c001718:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00171c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001720:	4c000020 	jirl	$r0,$r1,0

1c001724 <Set_Timer_stop>:
Set_Timer_stop():
1c001724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001728:	29803076 	st.w	$r22,$r3,12(0xc)
1c00172c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001730:	04010420 	csrwr	$r0,0x41
1c001734:	03400000 	andi	$r0,$r0,0x0
1c001738:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00173c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001740:	4c000020 	jirl	$r0,$r1,0

1c001744 <Set_Timer_clear>:
Set_Timer_clear():
1c001744:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001748:	29803076 	st.w	$r22,$r3,12(0xc)
1c00174c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001750:	0380040c 	ori	$r12,$r0,0x1
1c001754:	0401102c 	csrwr	$r12,0x44
1c001758:	03400000 	andi	$r0,$r0,0x0
1c00175c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001760:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001764:	4c000020 	jirl	$r0,$r1,0

1c001768 <gpio_write>:
gpio_write():
1c001768:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00176c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001770:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001774:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001778:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00177c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001780:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001784:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0017ec <gpio_write+0x84>
1c001788:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00178c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001790:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001794:	44003180 	bnez	$r12,48(0x30) # 1c0017c4 <gpio_write+0x5c>
1c001798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00179c:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c0017a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0017a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0017ac:	0014300c 	nor	$r12,$r0,$r12
1c0017b0:	0015018e 	move	$r14,$r12
1c0017b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2981118d 	st.w	$r13,$r12,68(0x44)
1c0017c0:	50009000 	b	144(0x90) # 1c001850 <gpio_write+0xe8>
1c0017c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c8:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c0017cc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0017d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	001539ad 	or	$r13,$r13,$r14
1c0017e4:	2981118d 	st.w	$r13,$r12,68(0x44)
1c0017e8:	50006800 	b	104(0x68) # 1c001850 <gpio_write+0xe8>
1c0017ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017f0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0017f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0017f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0017fc:	44003180 	bnez	$r12,48(0x30) # 1c00182c <gpio_write+0xc4>
1c001800:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001804:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001808:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00180c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0014b9ad 	and	$r13,$r13,$r14
1c001824:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001828:	50002800 	b	40(0x28) # 1c001850 <gpio_write+0xe8>
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001834:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00183c:	001731cc 	sll.w	$r12,$r14,$r12
1c001840:	0015018e 	move	$r14,$r12
1c001844:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001848:	001539ad 	or	$r13,$r13,$r14
1c00184c:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <uart1_interrupt>:
uart1_interrupt():
1c001860:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001864:	29803076 	st.w	$r22,$r3,12(0xc)
1c001868:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00186c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001870:	2a00018c 	ld.bu	$r12,$r12,0
1c001874:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001878:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00187c:	038011ad 	ori	$r13,$r13,0x4
1c001880:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001884:	2900018d 	st.b	$r13,$r12,0
1c001888:	03400000 	andi	$r0,$r0,0x0
1c00188c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001890:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001894:	4c000020 	jirl	$r0,$r1,0

1c001898 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c001898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00189c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0018a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0018a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0018a8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0018ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0018b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0018b8:	001531ad 	or	$r13,$r13,$r12
1c0018bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018c0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0018c4:	03400000 	andi	$r0,$r0,0x0
1c0018c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0018cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018d0:	4c000020 	jirl	$r0,$r1,0

1c0018d4 <WDG_DogFeed>:
WDG_DogFeed():
1c0018d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0018d8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0018dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0018e8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0018ec:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0018f0:	03400000 	andi	$r0,$r0,0x0
1c0018f4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0018f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0018fc:	4c000020 	jirl	$r0,$r1,0

1c001900 <TIM_GetITStatus>:
TIM_GetITStatus():
1c001900:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001904:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00190c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001910:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001914:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001918:	2880018d 	ld.w	$r13,$r12,0
1c00191c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001920:	0014b1ac 	and	$r12,$r13,$r12
1c001924:	40001180 	beqz	$r12,16(0x10) # 1c001934 <TIM_GetITStatus+0x34>
1c001928:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00192c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001930:	50000800 	b	8(0x8) # 1c001938 <TIM_GetITStatus+0x38>
1c001934:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00193c:	00150184 	move	$r4,$r12
1c001940:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001944:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001948:	4c000020 	jirl	$r0,$r1,0

1c00194c <TIM_ClearIT>:
TIM_ClearIT():
1c00194c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001950:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001954:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001958:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00195c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001960:	2880018e 	ld.w	$r14,$r12,0
1c001964:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001968:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00196c:	001535cd 	or	$r13,$r14,$r13
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001978:	03800d8c 	ori	$r12,$r12,0x3
1c00197c:	2a00018c 	ld.bu	$r12,$r12,0
1c001980:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001984:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001988:	03800d8c 	ori	$r12,$r12,0x3
1c00198c:	038005ad 	ori	$r13,$r13,0x1
1c001990:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001994:	2900018d 	st.b	$r13,$r12,0
1c001998:	03400000 	andi	$r0,$r0,0x0
1c00199c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0019a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019a4:	4c000020 	jirl	$r0,$r1,0

1c0019a8 <main>:
main():
1c0019a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0019b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019b4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0019b8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0019bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019c0:	50001400 	b	20(0x14) # 1c0019d4 <main+0x2c>
1c0019c4:	03400000 	andi	$r0,$r0,0x0
1c0019c8:	03400000 	andi	$r0,$r0,0x0
1c0019cc:	03400000 	andi	$r0,$r0,0x0
1c0019d0:	03400000 	andi	$r0,$r0,0x0
1c0019d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0019dc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0019e0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0019c4 <main+0x1c>
1c0019e4:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c0019e8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0019ec:	2980018d 	st.w	$r13,$r12,0
1c0019f0:	03400000 	andi	$r0,$r0,0x0
1c0019f4:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0019f8:	2880018c 	ld.w	$r12,$r12,0
1c0019fc:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c0019f4 <main+0x4c>
1c001a00:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001a04:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c001a08:	2980018d 	st.w	$r13,$r12,0
1c001a0c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001a10:	0380118c 	ori	$r12,$r12,0x4
1c001a14:	142468ad 	lu12i.w	$r13,74565(0x12345)
1c001a18:	0399e1ad 	ori	$r13,$r13,0x678
1c001a1c:	2980018d 	st.w	$r13,$r12,0
1c001a20:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001a24:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001a28:	2980018d 	st.w	$r13,$r12,0
1c001a2c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001a30:	0380118c 	ori	$r12,$r12,0x4
1c001a34:	2880018d 	ld.w	$r13,$r12,0
1c001a38:	142468ac 	lu12i.w	$r12,74565(0x12345)
1c001a3c:	0399e18c 	ori	$r12,$r12,0x678
1c001a40:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c001a8c <main+0xe4>
1c001a44:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001a48:	2880018c 	ld.w	$r12,$r12,0
1c001a4c:	03c0118d 	xori	$r13,$r12,0x4
1c001a50:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001a54:	2980018d 	st.w	$r13,$r12,0
1c001a58:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c001a5c:	03bf918c 	ori	$r12,$r12,0xfe4
1c001a60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a64:	50001400 	b	20(0x14) # 1c001a78 <main+0xd0>
1c001a68:	03400000 	andi	$r0,$r0,0x0
1c001a6c:	03400000 	andi	$r0,$r0,0x0
1c001a70:	03400000 	andi	$r0,$r0,0x0
1c001a74:	03400000 	andi	$r0,$r0,0x0
1c001a78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a80:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c001a84:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001a68 <main+0xc0>
1c001a88:	53ffbfff 	b	-68(0xfffffbc) # 1c001a44 <main+0x9c>
1c001a8c:	50000000 	b	0 # 1c001a8c <main+0xe4>

1c001a90 <UART1_HANDLER>:
UART1_HANDLER():
1c001a90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a94:	29803061 	st.w	$r1,$r3,12(0xc)
1c001a98:	29802076 	st.w	$r22,$r3,8(0x8)
1c001a9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001aa0:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001aa4:	2880018d 	ld.w	$r13,$r12,0
1c001aa8:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c001aac:	03c005ad 	xori	$r13,$r13,0x1
1c001ab0:	2980018d 	st.w	$r13,$r12,0
1c001ab4:	57fdafff 	bl	-596(0xffffdac) # 1c001860 <uart1_interrupt>
1c001ab8:	03400000 	andi	$r0,$r0,0x0
1c001abc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ac0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ac4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ac8:	4c000020 	jirl	$r0,$r1,0

1c001acc <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c001acc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ad0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ad4:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ad8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001adc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ae0:	028290c6 	addi.w	$r6,$r6,164(0xa4)
1c001ae4:	02801405 	addi.w	$r5,$r0,5(0x5)
1c001ae8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001aec:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
1c001af0:	57f847ff 	bl	-1980(0xffff844) # 1c001334 <myprintf>
1c001af4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001af8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001afc:	03808184 	ori	$r4,$r12,0x20
1c001b00:	57fd9bff 	bl	-616(0xffffd98) # 1c001898 <EXTI_ClearITPendingBit>
1c001b04:	03400000 	andi	$r0,$r0,0x0
1c001b08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001b10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b14:	4c000020 	jirl	$r0,$r1,0

1c001b18 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c001b18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001b20:	29802076 	st.w	$r22,$r3,8(0x8)
1c001b24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b28:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b2c:	0281c0c6 	addi.w	$r6,$r6,112(0x70)
1c001b30:	02802805 	addi.w	$r5,$r0,10(0xa)
1c001b34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b38:	02bcd084 	addi.w	$r4,$r4,-204(0xf34)
1c001b3c:	57f7fbff 	bl	-2056(0xffff7f8) # 1c001334 <myprintf>
1c001b40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001b44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b48:	03808184 	ori	$r4,$r12,0x20
1c001b4c:	57fd4fff 	bl	-692(0xffffd4c) # 1c001898 <EXTI_ClearITPendingBit>
1c001b50:	03400000 	andi	$r0,$r0,0x0
1c001b54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001b5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b60:	4c000020 	jirl	$r0,$r1,0

1c001b64 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c001b64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b68:	29803061 	st.w	$r1,$r3,12(0xc)
1c001b6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001b70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b74:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b78:	0280f0c6 	addi.w	$r6,$r6,60(0x3c)
1c001b7c:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c001b80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b84:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c001b88:	57f7afff 	bl	-2132(0xffff7ac) # 1c001334 <myprintf>
1c001b8c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b94:	03808184 	ori	$r4,$r12,0x20
1c001b98:	57fd03ff 	bl	-768(0xffffd00) # 1c001898 <EXTI_ClearITPendingBit>
1c001b9c:	03400000 	andi	$r0,$r0,0x0
1c001ba0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ba4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ba8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bac:	4c000020 	jirl	$r0,$r1,0

1c001bb0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c001bb0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bb4:	29803061 	st.w	$r1,$r3,12(0xc)
1c001bb8:	29802076 	st.w	$r22,$r3,8(0x8)
1c001bbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001bc0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001bc4:	028020c6 	addi.w	$r6,$r6,8(0x8)
1c001bc8:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001bcc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001bd0:	02ba7084 	addi.w	$r4,$r4,-356(0xe9c)
1c001bd4:	57f763ff 	bl	-2208(0xffff760) # 1c001334 <myprintf>
1c001bd8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001bdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001be0:	03808184 	ori	$r4,$r12,0x20
1c001be4:	57fcb7ff 	bl	-844(0xffffcb4) # 1c001898 <EXTI_ClearITPendingBit>
1c001be8:	03400000 	andi	$r0,$r0,0x0
1c001bec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001bf0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001bf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bf8:	4c000020 	jirl	$r0,$r1,0

1c001bfc <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c001bfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c00:	29803061 	st.w	$r1,$r3,12(0xc)
1c001c04:	29802076 	st.w	$r22,$r3,8(0x8)
1c001c08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c0c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c10:	02bf50c6 	addi.w	$r6,$r6,-44(0xfd4)
1c001c14:	02806405 	addi.w	$r5,$r0,25(0x19)
1c001c18:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c1c:	02b94084 	addi.w	$r4,$r4,-432(0xe50)
1c001c20:	57f717ff 	bl	-2284(0xffff714) # 1c001334 <myprintf>
1c001c24:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001c28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001c2c:	03808184 	ori	$r4,$r12,0x20
1c001c30:	57fc6bff 	bl	-920(0xffffc68) # 1c001898 <EXTI_ClearITPendingBit>
1c001c34:	03400000 	andi	$r0,$r0,0x0
1c001c38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c3c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001c40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c44:	4c000020 	jirl	$r0,$r1,0

1c001c48 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c001c48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c4c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001c50:	29802076 	st.w	$r22,$r3,8(0x8)
1c001c54:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c58:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c5c:	02be80c6 	addi.w	$r6,$r6,-96(0xfa0)
1c001c60:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c001c64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c68:	02b81084 	addi.w	$r4,$r4,-508(0xe04)
1c001c6c:	57f6cbff 	bl	-2360(0xffff6c8) # 1c001334 <myprintf>
1c001c70:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001c74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001c78:	03808184 	ori	$r4,$r12,0x20
1c001c7c:	57fc1fff 	bl	-996(0xffffc1c) # 1c001898 <EXTI_ClearITPendingBit>
1c001c80:	03400000 	andi	$r0,$r0,0x0
1c001c84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001c8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c90:	4c000020 	jirl	$r0,$r1,0

1c001c94 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c001c94:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c98:	29803061 	st.w	$r1,$r3,12(0xc)
1c001c9c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ca0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ca4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ca8:	02bdb0c6 	addi.w	$r6,$r6,-148(0xf6c)
1c001cac:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001cb0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cb4:	02b6e084 	addi.w	$r4,$r4,-584(0xdb8)
1c001cb8:	57f67fff 	bl	-2436(0xffff67c) # 1c001334 <myprintf>
1c001cbc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001cc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001cc4:	03808184 	ori	$r4,$r12,0x20
1c001cc8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001898 <EXTI_ClearITPendingBit>
1c001ccc:	03400000 	andi	$r0,$r0,0x0
1c001cd0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001cd4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001cd8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cdc:	4c000020 	jirl	$r0,$r1,0

1c001ce0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c001ce0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ce4:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ce8:	29802076 	st.w	$r22,$r3,8(0x8)
1c001cec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001cf0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cf4:	02bce0c6 	addi.w	$r6,$r6,-200(0xf38)
1c001cf8:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c001cfc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d00:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c001d04:	57f633ff 	bl	-2512(0xffff630) # 1c001334 <myprintf>
1c001d08:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001d0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001d10:	03808184 	ori	$r4,$r12,0x20
1c001d14:	57fb87ff 	bl	-1148(0xffffb84) # 1c001898 <EXTI_ClearITPendingBit>
1c001d18:	03400000 	andi	$r0,$r0,0x0
1c001d1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001d24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d28:	4c000020 	jirl	$r0,$r1,0

1c001d2c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c001d2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d30:	29803061 	st.w	$r1,$r3,12(0xc)
1c001d34:	29802076 	st.w	$r22,$r3,8(0x8)
1c001d38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d3c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d40:	02bc10c6 	addi.w	$r6,$r6,-252(0xf04)
1c001d44:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c001d48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d4c:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c001d50:	57f5e7ff 	bl	-2588(0xffff5e4) # 1c001334 <myprintf>
1c001d54:	02840005 	addi.w	$r5,$r0,256(0x100)
1c001d58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001d5c:	03808184 	ori	$r4,$r12,0x20
1c001d60:	57fb3bff 	bl	-1224(0xffffb38) # 1c001898 <EXTI_ClearITPendingBit>
1c001d64:	03400000 	andi	$r0,$r0,0x0
1c001d68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001d70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d74:	4c000020 	jirl	$r0,$r1,0

1c001d78 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c001d78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001d80:	29802076 	st.w	$r22,$r3,8(0x8)
1c001d84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d88:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d8c:	02bb40c6 	addi.w	$r6,$r6,-304(0xed0)
1c001d90:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c001d94:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d98:	02b35084 	addi.w	$r4,$r4,-812(0xcd4)
1c001d9c:	57f59bff 	bl	-2664(0xffff598) # 1c001334 <myprintf>
1c001da0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c001da4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001da8:	03808184 	ori	$r4,$r12,0x20
1c001dac:	57faefff 	bl	-1300(0xffffaec) # 1c001898 <EXTI_ClearITPendingBit>
1c001db0:	03400000 	andi	$r0,$r0,0x0
1c001db4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001db8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001dbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dc0:	4c000020 	jirl	$r0,$r1,0

1c001dc4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c001dc4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001dc8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001dcc:	29802076 	st.w	$r22,$r3,8(0x8)
1c001dd0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001dd4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001dd8:	02ba70c6 	addi.w	$r6,$r6,-356(0xe9c)
1c001ddc:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c001de0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001de4:	02b22084 	addi.w	$r4,$r4,-888(0xc88)
1c001de8:	57f54fff 	bl	-2740(0xffff54c) # 1c001334 <myprintf>
1c001dec:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001df4:	03808184 	ori	$r4,$r12,0x20
1c001df8:	57faa3ff 	bl	-1376(0xffffaa0) # 1c001898 <EXTI_ClearITPendingBit>
1c001dfc:	03400000 	andi	$r0,$r0,0x0
1c001e00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e0c:	4c000020 	jirl	$r0,$r1,0

1c001e10 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c001e10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e14:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e18:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e20:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e24:	02b9a0c6 	addi.w	$r6,$r6,-408(0xe68)
1c001e28:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001e2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e30:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c001e34:	57f503ff 	bl	-2816(0xffff500) # 1c001334 <myprintf>
1c001e38:	03a00005 	ori	$r5,$r0,0x800
1c001e3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001e40:	03808184 	ori	$r4,$r12,0x20
1c001e44:	57fa57ff 	bl	-1452(0xffffa54) # 1c001898 <EXTI_ClearITPendingBit>
1c001e48:	03400000 	andi	$r0,$r0,0x0
1c001e4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e58:	4c000020 	jirl	$r0,$r1,0

1c001e5c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c001e5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e60:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e64:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e6c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e70:	02b8d0c6 	addi.w	$r6,$r6,-460(0xe34)
1c001e74:	02811405 	addi.w	$r5,$r0,69(0x45)
1c001e78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e7c:	02afc084 	addi.w	$r4,$r4,-1040(0xbf0)
1c001e80:	57f4b7ff 	bl	-2892(0xffff4b4) # 1c001334 <myprintf>
1c001e84:	14000025 	lu12i.w	$r5,1(0x1)
1c001e88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001e8c:	03808184 	ori	$r4,$r12,0x20
1c001e90:	57fa0bff 	bl	-1528(0xffffa08) # 1c001898 <EXTI_ClearITPendingBit>
1c001e94:	03400000 	andi	$r0,$r0,0x0
1c001e98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ea0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ea4:	4c000020 	jirl	$r0,$r1,0

1c001ea8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c001ea8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001eac:	29803061 	st.w	$r1,$r3,12(0xc)
1c001eb0:	29802076 	st.w	$r22,$r3,8(0x8)
1c001eb4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001eb8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ebc:	02b800c6 	addi.w	$r6,$r6,-512(0xe00)
1c001ec0:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c001ec4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ec8:	02ae9084 	addi.w	$r4,$r4,-1116(0xba4)
1c001ecc:	57f46bff 	bl	-2968(0xffff468) # 1c001334 <myprintf>
1c001ed0:	14000045 	lu12i.w	$r5,2(0x2)
1c001ed4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ed8:	03808184 	ori	$r4,$r12,0x20
1c001edc:	57f9bfff 	bl	-1604(0xffff9bc) # 1c001898 <EXTI_ClearITPendingBit>
1c001ee0:	03400000 	andi	$r0,$r0,0x0
1c001ee4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ee8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001eec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ef0:	4c000020 	jirl	$r0,$r1,0

1c001ef4 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c001ef4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ef8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001efc:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f04:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f08:	02b730c6 	addi.w	$r6,$r6,-564(0xdcc)
1c001f0c:	02814005 	addi.w	$r5,$r0,80(0x50)
1c001f10:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f14:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c001f18:	57f41fff 	bl	-3044(0xffff41c) # 1c001334 <myprintf>
1c001f1c:	14000085 	lu12i.w	$r5,4(0x4)
1c001f20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f24:	03808184 	ori	$r4,$r12,0x20
1c001f28:	57f973ff 	bl	-1680(0xffff970) # 1c001898 <EXTI_ClearITPendingBit>
1c001f2c:	03400000 	andi	$r0,$r0,0x0
1c001f30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f3c:	4c000020 	jirl	$r0,$r1,0

1c001f40 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c001f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f50:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f54:	02b660c6 	addi.w	$r6,$r6,-616(0xd98)
1c001f58:	02815805 	addi.w	$r5,$r0,86(0x56)
1c001f5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f60:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c001f64:	57f3d3ff 	bl	-3120(0xffff3d0) # 1c001334 <myprintf>
1c001f68:	14000105 	lu12i.w	$r5,8(0x8)
1c001f6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f70:	03808184 	ori	$r4,$r12,0x20
1c001f74:	57f927ff 	bl	-1756(0xffff924) # 1c001898 <EXTI_ClearITPendingBit>
1c001f78:	03400000 	andi	$r0,$r0,0x0
1c001f7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c001f8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f90:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f94:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f9c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fa0:	02b590c6 	addi.w	$r6,$r6,-668(0xd64)
1c001fa4:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c001fa8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fac:	02ab0084 	addi.w	$r4,$r4,-1344(0xac0)
1c001fb0:	57f387ff 	bl	-3196(0xffff384) # 1c001334 <myprintf>
1c001fb4:	14000205 	lu12i.w	$r5,16(0x10)
1c001fb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001fbc:	03808184 	ori	$r4,$r12,0x20
1c001fc0:	57f8dbff 	bl	-1832(0xffff8d8) # 1c001898 <EXTI_ClearITPendingBit>
1c001fc4:	03400000 	andi	$r0,$r0,0x0
1c001fc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001fd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fd4:	4c000020 	jirl	$r0,$r1,0

1c001fd8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c001fd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c001fe0:	29802076 	st.w	$r22,$r3,8(0x8)
1c001fe4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001fe8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fec:	02b4c0c6 	addi.w	$r6,$r6,-720(0xd30)
1c001ff0:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c001ff4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ff8:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c001ffc:	57f33bff 	bl	-3272(0xffff338) # 1c001334 <myprintf>
1c002000:	14000405 	lu12i.w	$r5,32(0x20)
1c002004:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002008:	03808184 	ori	$r4,$r12,0x20
1c00200c:	57f88fff 	bl	-1908(0xffff88c) # 1c001898 <EXTI_ClearITPendingBit>
1c002010:	03400000 	andi	$r0,$r0,0x0
1c002014:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002018:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00201c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002020:	4c000020 	jirl	$r0,$r1,0

1c002024 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c002024:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002028:	29803061 	st.w	$r1,$r3,12(0xc)
1c00202c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002030:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002034:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002038:	02b3f0c6 	addi.w	$r6,$r6,-772(0xcfc)
1c00203c:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c002040:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002044:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c002048:	57f2efff 	bl	-3348(0xffff2ec) # 1c001334 <myprintf>
1c00204c:	14000805 	lu12i.w	$r5,64(0x40)
1c002050:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002054:	03808184 	ori	$r4,$r12,0x20
1c002058:	57f843ff 	bl	-1984(0xffff840) # 1c001898 <EXTI_ClearITPendingBit>
1c00205c:	03400000 	andi	$r0,$r0,0x0
1c002060:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002064:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002068:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00206c:	4c000020 	jirl	$r0,$r1,0

1c002070 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c002070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002074:	29803061 	st.w	$r1,$r3,12(0xc)
1c002078:	29802076 	st.w	$r22,$r3,8(0x8)
1c00207c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002080:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002084:	02b320c6 	addi.w	$r6,$r6,-824(0xcc8)
1c002088:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c00208c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002090:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c002094:	57f2a3ff 	bl	-3424(0xffff2a0) # 1c001334 <myprintf>
1c002098:	14001005 	lu12i.w	$r5,128(0x80)
1c00209c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0020a0:	03808184 	ori	$r4,$r12,0x20
1c0020a4:	57f7f7ff 	bl	-2060(0xffff7f4) # 1c001898 <EXTI_ClearITPendingBit>
1c0020a8:	03400000 	andi	$r0,$r0,0x0
1c0020ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0020b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020b8:	4c000020 	jirl	$r0,$r1,0

1c0020bc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0020bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020cc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020d0:	02b250c6 	addi.w	$r6,$r6,-876(0xc94)
1c0020d4:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c0020d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0020dc:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c0020e0:	57f257ff 	bl	-3500(0xffff254) # 1c001334 <myprintf>
1c0020e4:	14002005 	lu12i.w	$r5,256(0x100)
1c0020e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0020ec:	03808184 	ori	$r4,$r12,0x20
1c0020f0:	57f7abff 	bl	-2136(0xffff7a8) # 1c001898 <EXTI_ClearITPendingBit>
1c0020f4:	03400000 	andi	$r0,$r0,0x0
1c0020f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002100:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002104:	4c000020 	jirl	$r0,$r1,0

1c002108 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c002108:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00210c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002110:	29802076 	st.w	$r22,$r3,8(0x8)
1c002114:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002118:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00211c:	02b180c6 	addi.w	$r6,$r6,-928(0xc60)
1c002120:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c002124:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002128:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c00212c:	57f20bff 	bl	-3576(0xffff208) # 1c001334 <myprintf>
1c002130:	14004005 	lu12i.w	$r5,512(0x200)
1c002134:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002138:	03808184 	ori	$r4,$r12,0x20
1c00213c:	57f75fff 	bl	-2212(0xffff75c) # 1c001898 <EXTI_ClearITPendingBit>
1c002140:	03400000 	andi	$r0,$r0,0x0
1c002144:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002148:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00214c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002150:	4c000020 	jirl	$r0,$r1,0

1c002154 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c002154:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002158:	29803061 	st.w	$r1,$r3,12(0xc)
1c00215c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002160:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002164:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002168:	02b0b0c6 	addi.w	$r6,$r6,-980(0xc2c)
1c00216c:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c002170:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002174:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c002178:	57f1bfff 	bl	-3652(0xffff1bc) # 1c001334 <myprintf>
1c00217c:	14008005 	lu12i.w	$r5,1024(0x400)
1c002180:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002184:	03808184 	ori	$r4,$r12,0x20
1c002188:	57f713ff 	bl	-2288(0xffff710) # 1c001898 <EXTI_ClearITPendingBit>
1c00218c:	03400000 	andi	$r0,$r0,0x0
1c002190:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002194:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002198:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00219c:	4c000020 	jirl	$r0,$r1,0

1c0021a0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0021a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0021ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0021b0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021b4:	02afe0c6 	addi.w	$r6,$r6,-1032(0xbf8)
1c0021b8:	02821405 	addi.w	$r5,$r0,133(0x85)
1c0021bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0021c0:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c0021c4:	57f173ff 	bl	-3728(0xffff170) # 1c001334 <myprintf>
1c0021c8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0021cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021d0:	03808184 	ori	$r4,$r12,0x20
1c0021d4:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c001898 <EXTI_ClearITPendingBit>
1c0021d8:	03400000 	andi	$r0,$r0,0x0
1c0021dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021e8:	4c000020 	jirl	$r0,$r1,0

1c0021ec <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0021ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0021f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0021fc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002200:	02af10c6 	addi.w	$r6,$r6,-1084(0xbc4)
1c002204:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c002208:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00220c:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c002210:	57f127ff 	bl	-3804(0xffff124) # 1c001334 <myprintf>
1c002214:	14020005 	lu12i.w	$r5,4096(0x1000)
1c002218:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00221c:	03808184 	ori	$r4,$r12,0x20
1c002220:	57f67bff 	bl	-2440(0xffff678) # 1c001898 <EXTI_ClearITPendingBit>
1c002224:	03400000 	andi	$r0,$r0,0x0
1c002228:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00222c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002230:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002234:	4c000020 	jirl	$r0,$r1,0

1c002238 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c002238:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00223c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002240:	29802076 	st.w	$r22,$r3,8(0x8)
1c002244:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002248:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00224c:	02ae40c6 	addi.w	$r6,$r6,-1136(0xb90)
1c002250:	02824405 	addi.w	$r5,$r0,145(0x91)
1c002254:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002258:	02a05084 	addi.w	$r4,$r4,-2028(0x814)
1c00225c:	57f0dbff 	bl	-3880(0xffff0d8) # 1c001334 <myprintf>
1c002260:	14040005 	lu12i.w	$r5,8192(0x2000)
1c002264:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002268:	03808184 	ori	$r4,$r12,0x20
1c00226c:	57f62fff 	bl	-2516(0xffff62c) # 1c001898 <EXTI_ClearITPendingBit>
1c002270:	03400000 	andi	$r0,$r0,0x0
1c002274:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002278:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00227c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002280:	4c000020 	jirl	$r0,$r1,0

1c002284 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c002284:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002288:	29803061 	st.w	$r1,$r3,12(0xc)
1c00228c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002290:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002294:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002298:	02ad70c6 	addi.w	$r6,$r6,-1188(0xb5c)
1c00229c:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c0022a0:	1c000004 	pcaddu12i	$r4,0
1c0022a4:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c0022a8:	57f08fff 	bl	-3956(0xffff08c) # 1c001334 <myprintf>
1c0022ac:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0022b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022b4:	03808184 	ori	$r4,$r12,0x20
1c0022b8:	57f5e3ff 	bl	-2592(0xffff5e0) # 1c001898 <EXTI_ClearITPendingBit>
1c0022bc:	03400000 	andi	$r0,$r0,0x0
1c0022c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0022c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022cc:	4c000020 	jirl	$r0,$r1,0

1c0022d0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0022d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0022d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0022dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0022e0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0022e4:	02aca0c6 	addi.w	$r6,$r6,-1240(0xb28)
1c0022e8:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c0022ec:	1c000004 	pcaddu12i	$r4,0
1c0022f0:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c0022f4:	57f043ff 	bl	-4032(0xffff040) # 1c001334 <myprintf>
1c0022f8:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0022fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002300:	03808184 	ori	$r4,$r12,0x20
1c002304:	57f597ff 	bl	-2668(0xffff594) # 1c001898 <EXTI_ClearITPendingBit>
1c002308:	03400000 	andi	$r0,$r0,0x0
1c00230c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002310:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002314:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002318:	4c000020 	jirl	$r0,$r1,0

1c00231c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00231c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002320:	29803061 	st.w	$r1,$r3,12(0xc)
1c002324:	29802076 	st.w	$r22,$r3,8(0x8)
1c002328:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00232c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002330:	02abd0c6 	addi.w	$r6,$r6,-1292(0xaf4)
1c002334:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c002338:	1c000004 	pcaddu12i	$r4,0
1c00233c:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c002340:	57eff7ff 	bl	-4108(0xfffeff4) # 1c001334 <myprintf>
1c002344:	14200005 	lu12i.w	$r5,65536(0x10000)
1c002348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00234c:	03808184 	ori	$r4,$r12,0x20
1c002350:	57f54bff 	bl	-2744(0xffff548) # 1c001898 <EXTI_ClearITPendingBit>
1c002354:	03400000 	andi	$r0,$r0,0x0
1c002358:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00235c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002360:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002364:	4c000020 	jirl	$r0,$r1,0

1c002368 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c002368:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00236c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002370:	29802076 	st.w	$r22,$r3,8(0x8)
1c002374:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002378:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00237c:	02ab00c6 	addi.w	$r6,$r6,-1344(0xac0)
1c002380:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c002384:	1c000004 	pcaddu12i	$r4,0
1c002388:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c00238c:	57efabff 	bl	-4184(0xfffefa8) # 1c001334 <myprintf>
1c002390:	14400005 	lu12i.w	$r5,131072(0x20000)
1c002394:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002398:	03808184 	ori	$r4,$r12,0x20
1c00239c:	57f4ffff 	bl	-2820(0xffff4fc) # 1c001898 <EXTI_ClearITPendingBit>
1c0023a0:	03400000 	andi	$r0,$r0,0x0
1c0023a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023b0:	4c000020 	jirl	$r0,$r1,0

1c0023b4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0023b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0023bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0023c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0023c4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0023c8:	02aa30c6 	addi.w	$r6,$r6,-1396(0xa8c)
1c0023cc:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0023d0:	1c000004 	pcaddu12i	$r4,0
1c0023d4:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c0023d8:	57ef5fff 	bl	-4260(0xfffef5c) # 1c001334 <myprintf>
1c0023dc:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0023e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023e4:	03808184 	ori	$r4,$r12,0x20
1c0023e8:	57f4b3ff 	bl	-2896(0xffff4b0) # 1c001898 <EXTI_ClearITPendingBit>
1c0023ec:	03400000 	andi	$r0,$r0,0x0
1c0023f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023fc:	4c000020 	jirl	$r0,$r1,0

1c002400 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c002400:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002404:	29803061 	st.w	$r1,$r3,12(0xc)
1c002408:	29802076 	st.w	$r22,$r3,8(0x8)
1c00240c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002410:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002414:	02a960c6 	addi.w	$r6,$r6,-1448(0xa58)
1c002418:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c00241c:	1c000004 	pcaddu12i	$r4,0
1c002420:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c002424:	57ef13ff 	bl	-4336(0xfffef10) # 1c001334 <myprintf>
1c002428:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00242c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002430:	03808184 	ori	$r4,$r12,0x20
1c002434:	57f467ff 	bl	-2972(0xffff464) # 1c001898 <EXTI_ClearITPendingBit>
1c002438:	03400000 	andi	$r0,$r0,0x0
1c00243c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002440:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002444:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002448:	4c000020 	jirl	$r0,$r1,0

1c00244c <ext_handler>:
ext_handler():
1c00244c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002450:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002454:	29806076 	st.w	$r22,$r3,24(0x18)
1c002458:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00245c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002460:	0380f18c 	ori	$r12,$r12,0x3c
1c002464:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c002468:	2980018d 	st.w	$r13,$r12,0
1c00246c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002470:	02a850c6 	addi.w	$r6,$r6,-1516(0xa14)
1c002474:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c002478:	1c000004 	pcaddu12i	$r4,0
1c00247c:	0297c084 	addi.w	$r4,$r4,1520(0x5f0)
1c002480:	57eeb7ff 	bl	-4428(0xfffeeb4) # 1c001334 <myprintf>
1c002484:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002488:	0380818c 	ori	$r12,$r12,0x20
1c00248c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002490:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002494:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002498:	0380818c 	ori	$r12,$r12,0x20
1c00249c:	2880018c 	ld.w	$r12,$r12,0
1c0024a0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0024a4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0024a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0024ac:	0014b1ac 	and	$r12,$r13,$r12
1c0024b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0024b4:	03400000 	andi	$r0,$r0,0x0
1c0024b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0024bc:	50004000 	b	64(0x40) # 1c0024fc <ext_handler+0xb0>
1c0024c0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0024c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024c8:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0024cc:	0340058c 	andi	$r12,$r12,0x1
1c0024d0:	40002180 	beqz	$r12,32(0x20) # 1c0024f0 <ext_handler+0xa4>
1c0024d4:	1c00000d 	pcaddu12i	$r13,0
1c0024d8:	029451ad 	addi.w	$r13,$r13,1300(0x514)
1c0024dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e0:	0040898c 	slli.w	$r12,$r12,0x2
1c0024e4:	001031ac 	add.w	$r12,$r13,$r12
1c0024e8:	2880018c 	ld.w	$r12,$r12,0
1c0024ec:	4c000181 	jirl	$r1,$r12,0
1c0024f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002500:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002504:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0024c0 <ext_handler+0x74>
1c002508:	03400000 	andi	$r0,$r0,0x0
1c00250c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002510:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002514:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002518:	4c000020 	jirl	$r0,$r1,0

1c00251c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00251c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002520:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002524:	29806076 	st.w	$r22,$r3,24(0x18)
1c002528:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00252c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002530:	0380f18c 	ori	$r12,$r12,0x3c
1c002534:	1400020d 	lu12i.w	$r13,16(0x10)
1c002538:	2980018d 	st.w	$r13,$r12,0
1c00253c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002540:	0380118c 	ori	$r12,$r12,0x4
1c002544:	2880018c 	ld.w	$r12,$r12,0
1c002548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00254c:	57f38bff 	bl	-3192(0xffff388) # 1c0018d4 <WDG_DogFeed>
1c002550:	03400000 	andi	$r0,$r0,0x0
1c002554:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002558:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00255c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002560:	4c000020 	jirl	$r0,$r1,0

1c002564 <TOUCH>:
TOUCH():
1c002564:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002568:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00256c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002570:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002574:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002578:	0380118c 	ori	$r12,$r12,0x4
1c00257c:	2880018c 	ld.w	$r12,$r12,0
1c002580:	0044c18c 	srli.w	$r12,$r12,0x10
1c002584:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002588:	037ffd8c 	andi	$r12,$r12,0xfff
1c00258c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002590:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002594:	0380118c 	ori	$r12,$r12,0x4
1c002598:	2880018c 	ld.w	$r12,$r12,0
1c00259c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025a0:	03403d8c 	andi	$r12,$r12,0xf
1c0025a4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0025a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025ac:	0380f18c 	ori	$r12,$r12,0x3c
1c0025b0:	1400040d 	lu12i.w	$r13,32(0x20)
1c0025b4:	2980018d 	st.w	$r13,$r12,0
1c0025b8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0025bc:	0380118c 	ori	$r12,$r12,0x4
1c0025c0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0025c4:	2980018d 	st.w	$r13,$r12,0
1c0025c8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0025cc:	00150185 	move	$r5,$r12
1c0025d0:	1c000004 	pcaddu12i	$r4,0
1c0025d4:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c0025d8:	57ed5fff 	bl	-4772(0xfffed5c) # 1c001334 <myprintf>
1c0025dc:	03400000 	andi	$r0,$r0,0x0
1c0025e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0025e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0025e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0025ec:	4c000020 	jirl	$r0,$r1,0

1c0025f0 <UART2_INT>:
UART2_INT():
1c0025f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025f4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0025f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002600:	0380f18c 	ori	$r12,$r12,0x3c
1c002604:	1400080d 	lu12i.w	$r13,64(0x40)
1c002608:	2980018d 	st.w	$r13,$r12,0
1c00260c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002610:	0380098c 	ori	$r12,$r12,0x2
1c002614:	2a00018c 	ld.bu	$r12,$r12,0
1c002618:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00261c:	03400000 	andi	$r0,$r0,0x0
1c002620:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002624:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002628:	4c000020 	jirl	$r0,$r1,0

1c00262c <BAT_FAIL>:
BAT_FAIL():
1c00262c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002630:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002634:	29806076 	st.w	$r22,$r3,24(0x18)
1c002638:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00263c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002640:	0380118c 	ori	$r12,$r12,0x4
1c002644:	2880018c 	ld.w	$r12,$r12,0
1c002648:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00264c:	03407d8c 	andi	$r12,$r12,0x1f
1c002650:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002654:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002658:	0380118c 	ori	$r12,$r12,0x4
1c00265c:	2880018e 	ld.w	$r14,$r12,0
1c002660:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002664:	0380f18c 	ori	$r12,$r12,0x3c
1c002668:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00266c:	0014b5cd 	and	$r13,$r14,$r13
1c002670:	2980018d 	st.w	$r13,$r12,0
1c002674:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002678:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00267c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0026ec <BAT_FAIL+0xc0>
1c002680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002684:	0040898d 	slli.w	$r13,$r12,0x2
1c002688:	1c00000c 	pcaddu12i	$r12,0
1c00268c:	0292d18c 	addi.w	$r12,$r12,1204(0x4b4)
1c002690:	001031ac 	add.w	$r12,$r13,$r12
1c002694:	2880018c 	ld.w	$r12,$r12,0
1c002698:	4c000180 	jirl	$r0,$r12,0
1c00269c:	1c000004 	pcaddu12i	$r4,0
1c0026a0:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c0026a4:	57ec93ff 	bl	-4976(0xfffec90) # 1c001334 <myprintf>
1c0026a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026ac:	0380118c 	ori	$r12,$r12,0x4
1c0026b0:	29800180 	st.w	$r0,$r12,0
1c0026b4:	50003c00 	b	60(0x3c) # 1c0026f0 <BAT_FAIL+0xc4>
1c0026b8:	1c000004 	pcaddu12i	$r4,0
1c0026bc:	02910084 	addi.w	$r4,$r4,1088(0x440)
1c0026c0:	57ec77ff 	bl	-5004(0xfffec74) # 1c001334 <myprintf>
1c0026c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026c8:	0380118c 	ori	$r12,$r12,0x4
1c0026cc:	2880018e 	ld.w	$r14,$r12,0
1c0026d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026d4:	0380118c 	ori	$r12,$r12,0x4
1c0026d8:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0026dc:	03bffdad 	ori	$r13,$r13,0xfff
1c0026e0:	0014b5cd 	and	$r13,$r14,$r13
1c0026e4:	2980018d 	st.w	$r13,$r12,0
1c0026e8:	50000800 	b	8(0x8) # 1c0026f0 <BAT_FAIL+0xc4>
1c0026ec:	03400000 	andi	$r0,$r0,0x0
1c0026f0:	03400000 	andi	$r0,$r0,0x0
1c0026f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002700:	4c000020 	jirl	$r0,$r1,0

1c002704 <intc_handler>:
intc_handler():
1c002704:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002708:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00270c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002710:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002714:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002718:	0380158c 	ori	$r12,$r12,0x5
1c00271c:	2a00018c 	ld.bu	$r12,$r12,0
1c002720:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c002724:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002728:	0340058c 	andi	$r12,$r12,0x1
1c00272c:	40005980 	beqz	$r12,88(0x58) # 1c002784 <intc_handler+0x80>
1c002730:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002734:	57f1cfff 	bl	-3636(0xffff1cc) # 1c001900 <TIM_GetITStatus>
1c002738:	0015008c 	move	$r12,$r4
1c00273c:	40004980 	beqz	$r12,72(0x48) # 1c002784 <intc_handler+0x80>
1c002740:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002744:	02a3018c 	addi.w	$r12,$r12,-1856(0x8c0)
1c002748:	2880018c 	ld.w	$r12,$r12,0
1c00274c:	0240058c 	sltui	$r12,$r12,1(0x1)
1c002750:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002754:	0015018d 	move	$r13,$r12
1c002758:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00275c:	02a2a18c 	addi.w	$r12,$r12,-1880(0x8a8)
1c002760:	2980018d 	st.w	$r13,$r12,0
1c002764:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002768:	02a2718c 	addi.w	$r12,$r12,-1892(0x89c)
1c00276c:	2880018c 	ld.w	$r12,$r12,0
1c002770:	00150185 	move	$r5,$r12
1c002774:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002778:	57eff3ff 	bl	-4112(0xfffeff0) # 1c001768 <gpio_write>
1c00277c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002780:	57f1cfff 	bl	-3636(0xffff1cc) # 1c00194c <TIM_ClearIT>
1c002784:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002788:	0340118c 	andi	$r12,$r12,0x4
1c00278c:	40009580 	beqz	$r12,148(0x94) # 1c002820 <intc_handler+0x11c>
1c002790:	57f303ff 	bl	-3328(0xffff300) # 1c001a90 <UART1_HANDLER>
1c002794:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002798:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00279c:	0380118c 	ori	$r12,$r12,0x4
1c0027a0:	2880018c 	ld.w	$r12,$r12,0
1c0027a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027a8:	50006c00 	b	108(0x6c) # 1c002814 <intc_handler+0x110>
1c0027ac:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0027b0:	2880018c 	ld.w	$r12,$r12,0
1c0027b4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0027b8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0027bc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0027c0:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0027dc <intc_handler+0xd8>
1c0027c4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0027c8:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c0027cc:	2980018d 	st.w	$r13,$r12,0
1c0027d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0027d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0027d8:	50002c00 	b	44(0x2c) # 1c002804 <intc_handler+0x100>
1c0027dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027e0:	40001980 	beqz	$r12,24(0x18) # 1c0027f8 <intc_handler+0xf4>
1c0027e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0027e8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0027ec:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0027f0:	2980018d 	st.w	$r13,$r12,0
1c0027f4:	50001000 	b	16(0x10) # 1c002804 <intc_handler+0x100>
1c0027f8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0027fc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c002800:	2980018d 	st.w	$r13,$r12,0
1c002804:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002808:	0380118c 	ori	$r12,$r12,0x4
1c00280c:	2880018c 	ld.w	$r12,$r12,0
1c002810:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002814:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c002818:	0340058c 	andi	$r12,$r12,0x1
1c00281c:	43ff919f 	beqz	$r12,-112(0x7fff90) # 1c0027ac <intc_handler+0xa8>
1c002820:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c002824:	0340218c 	andi	$r12,$r12,0x8
1c002828:	40001580 	beqz	$r12,20(0x14) # 1c00283c <intc_handler+0x138>
1c00282c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002830:	03800d8c 	ori	$r12,$r12,0x3
1c002834:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c002838:	2900018d 	st.b	$r13,$r12,0
1c00283c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002840:	03800d8c 	ori	$r12,$r12,0x3
1c002844:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c002848:	2900018d 	st.b	$r13,$r12,0
1c00284c:	03400000 	andi	$r0,$r0,0x0
1c002850:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002854:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002858:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00285c:	4c000020 	jirl	$r0,$r1,0

1c002860 <TIMER_HANDLER>:
TIMER_HANDLER():
1c002860:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002864:	29803061 	st.w	$r1,$r3,12(0xc)
1c002868:	29802076 	st.w	$r22,$r3,8(0x8)
1c00286c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002870:	57eed7ff 	bl	-4396(0xfffeed4) # 1c001744 <Set_Timer_clear>
1c002874:	1c000004 	pcaddu12i	$r4,0
1c002878:	028aa084 	addi.w	$r4,$r4,680(0x2a8)
1c00287c:	57eabbff 	bl	-5448(0xfffeab8) # 1c001334 <myprintf>
1c002880:	57eea7ff 	bl	-4444(0xfffeea4) # 1c001724 <Set_Timer_stop>
1c002884:	03400000 	andi	$r0,$r0,0x0
1c002888:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00288c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002890:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002894:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002898 <Ext_IrqHandle-0x150>:
1c002898:	1c001554 	pcaddu12i	$r20,170(0xaa)
1c00289c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028a0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028a4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028a8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028ac:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028b0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028b4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028b8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028bc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028c0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028c4:	1c00156c 	pcaddu12i	$r12,171(0xab)
1c0028c8:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028cc:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028d0:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028d4:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028d8:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028dc:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028e0:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028e4:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028e8:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c0028ec:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028f0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028f4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028f8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0028fc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002900:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002904:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002908:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00290c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002910:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002914:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002918:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00291c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002920:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002924:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002928:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00292c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002930:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002934:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002938:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00293c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002940:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002944:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002948:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00294c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002950:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002954:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002958:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00295c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002960:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002964:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002968:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00296c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002970:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002974:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002978:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00297c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002980:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002984:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002988:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00298c:	1c0014e4 	pcaddu12i	$r4,167(0xa7)
1c002990:	1c00140c 	pcaddu12i	$r12,160(0xa0)
1c002994:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c002998:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00299c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029a0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029a4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029a8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029ac:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029b0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029b4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029b8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029bc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029c0:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
1c0029c4:	1c00151c 	pcaddu12i	$r28,168(0xa8)
1c0029c8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029cc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029d0:	1c0013e0 	pcaddu12i	$r0,159(0x9f)
1c0029d4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029d8:	1c00143c 	pcaddu12i	$r28,161(0xa1)
1c0029dc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029e0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0029e4:	1c00151c 	pcaddu12i	$r28,168(0xa8)

1c0029e8 <Ext_IrqHandle>:
1c0029e8:	1c001acc 	pcaddu12i	$r12,214(0xd6)
1c0029ec:	1c001b18 	pcaddu12i	$r24,216(0xd8)
1c0029f0:	1c001b64 	pcaddu12i	$r4,219(0xdb)
1c0029f4:	1c001bb0 	pcaddu12i	$r16,221(0xdd)
1c0029f8:	1c001bfc 	pcaddu12i	$r28,223(0xdf)
1c0029fc:	1c001c48 	pcaddu12i	$r8,226(0xe2)
1c002a00:	1c001c94 	pcaddu12i	$r20,228(0xe4)
1c002a04:	1c001ce0 	pcaddu12i	$r0,231(0xe7)
1c002a08:	1c001d2c 	pcaddu12i	$r12,233(0xe9)
1c002a0c:	1c001d78 	pcaddu12i	$r24,235(0xeb)
1c002a10:	1c001dc4 	pcaddu12i	$r4,238(0xee)
1c002a14:	1c001e10 	pcaddu12i	$r16,240(0xf0)
1c002a18:	1c001e5c 	pcaddu12i	$r28,242(0xf2)
1c002a1c:	1c001ea8 	pcaddu12i	$r8,245(0xf5)
1c002a20:	1c001ef4 	pcaddu12i	$r20,247(0xf7)
1c002a24:	1c001f40 	pcaddu12i	$r0,250(0xfa)
1c002a28:	1c001f8c 	pcaddu12i	$r12,252(0xfc)
1c002a2c:	1c001fd8 	pcaddu12i	$r24,254(0xfe)
1c002a30:	1c002024 	pcaddu12i	$r4,257(0x101)
1c002a34:	1c002070 	pcaddu12i	$r16,259(0x103)
1c002a38:	1c0020bc 	pcaddu12i	$r28,261(0x105)
1c002a3c:	1c002108 	pcaddu12i	$r8,264(0x108)
1c002a40:	1c002154 	pcaddu12i	$r20,266(0x10a)
1c002a44:	1c0021a0 	pcaddu12i	$r0,269(0x10d)
1c002a48:	1c0021ec 	pcaddu12i	$r12,271(0x10f)
1c002a4c:	1c002238 	pcaddu12i	$r24,273(0x111)
1c002a50:	1c002284 	pcaddu12i	$r4,276(0x114)
1c002a54:	1c0022d0 	pcaddu12i	$r16,278(0x116)
1c002a58:	1c00231c 	pcaddu12i	$r28,280(0x118)
1c002a5c:	1c002368 	pcaddu12i	$r8,283(0x11b)
1c002a60:	1c0023b4 	pcaddu12i	$r20,285(0x11d)
1c002a64:	1c002400 	pcaddu12i	$r0,288(0x120)
1c002a68:	3c200a0d 	0x3c200a0d
1c002a6c:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01968c <_sidata+0x16800>
1c002a70:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c002a74:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe4ad8 <_start-0x1b528>
1c002a78:	3a636e75 	0x3a636e75
1c002a7c:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c002a80:	0a0d3e20 	0x0a0d3e20
1c002a84:	00000000 	0x00000000
1c002a88:	2e2e2e0a 	0x2e2e2e0a
1c002a8c:	2e2e2e2e 	0x2e2e2e2e
1c002a90:	2e2e2e2e 	0x2e2e2e2e
1c002a94:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c002a98:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c1989ec <_sidata+0x195b60>
1c002a9c:	2e2e544e 	0x2e2e544e
1c002aa0:	2e2e2e2e 	0x2e2e2e2e
1c002aa4:	2e2e2e2e 	0x2e2e2e2e
1c002aa8:	2e2e2e2e 	0x2e2e2e2e
1c002aac:	00000d0a 	0x00000d0a
1c002ab0:	2d2d2d0a 	0x2d2d2d0a
1c002ab4:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bffa020 <_start-0x5fe0>
1c002ab8:	746e4968 	0x746e4968
1c002abc:	79654b3a 	0x79654b3a
1c002ac0:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe8c28 <_start-0x173d8>
1c002ac4:	3a6c656e 	0x3a6c656e
1c002ac8:	78257830 	0x78257830
1c002acc:	0000000a 	0x0000000a
1c002ad0:	2e2e2e0a 	0x2e2e2e0a
1c002ad4:	2e2e2e2e 	0x2e2e2e2e
1c002ad8:	2e2e2e2e 	0x2e2e2e2e
1c002adc:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396d08 <_sidata+0x393e7c>
1c002ae0:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1713c <_start-0x2e8ec4>
1c002ae4:	2e2e4c49 	0x2e2e4c49
1c002ae8:	2e2e2e2e 	0x2e2e2e2e
1c002aec:	2e2e2e2e 	0x2e2e2e2e
1c002af0:	2e2e2e2e 	0x2e2e2e2e
1c002af4:	00000d0a 	0x00000d0a
1c002af8:	2e2e2e0a 	0x2e2e2e0a
1c002afc:	2e2e2e2e 	0x2e2e2e2e
1c002b00:	2e2e2e2e 	0x2e2e2e2e
1c002b04:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c386c30 <_sidata+0x383da4>
1c002b08:	2e2e2e43 	0x2e2e2e43
1c002b0c:	2e2e2e2e 	0x2e2e2e2e
1c002b10:	2e2e2e2e 	0x2e2e2e2e
1c002b14:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c002b18:	0000000d 	0x0000000d
1c002b1c:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019d88 <_sidata+0x16efc>
1c002b20:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019474 <_sidata+0x165e8>
1c002b24:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff4b94 <_start-0xb46c>
1c002b28:	7261656c 	0x7261656c
1c002b2c:	746e6920 	0x746e6920
1c002b30:	75727265 	0x75727265
1c002b34:	2e2e7470 	0x2e2e7470
1c002b38:	0000000a 	0x0000000a
1c002b3c:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b40:	1c00269c 	pcaddu12i	$r28,308(0x134)
1c002b44:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b48:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b4c:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b50:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b54:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b58:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b5c:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b60:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b64:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b68:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b6c:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b70:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b74:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b78:	1c0026ec 	pcaddu12i	$r12,311(0x137)
1c002b7c:	1c0026b8 	pcaddu12i	$r24,309(0x135)

1c002b80 <__FUNCTION__.1643>:
1c002b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ff8 <_sidata+0x1716c>
1c002b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019be8 <_sidata+0x16d5c>
1c002b88:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5be8 <_start-0xa418>
1c002b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cfc <_start-0x6304>
1c002b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099f0 <_sidata+0x6b64>
1c002b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b98 <__FUNCTION__.1647>:
1c002b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a010 <_sidata+0x17184>
1c002b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c00 <_sidata+0x16d74>
1c002ba0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5d00 <_start-0xa300>
1c002ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d14 <_start-0x62ec>
1c002ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a08 <_sidata+0x6b7c>
1c002bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bb0 <__FUNCTION__.1651>:
1c002bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a028 <_sidata+0x1719c>
1c002bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c18 <_sidata+0x16d8c>
1c002bb8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5e18 <_start-0xa1e8>
1c002bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d2c <_start-0x62d4>
1c002bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a20 <_sidata+0x6b94>
1c002bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bc8 <__FUNCTION__.1655>:
1c002bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a040 <_sidata+0x171b4>
1c002bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c30 <_sidata+0x16da4>
1c002bd0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff5f30 <_start-0xa0d0>
1c002bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d44 <_start-0x62bc>
1c002bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a38 <_sidata+0x6bac>
1c002bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002be0 <__FUNCTION__.1659>:
1c002be0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a058 <_sidata+0x171cc>
1c002be4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c48 <_sidata+0x16dbc>
1c002be8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff6048 <_start-0x9fb8>
1c002bec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d5c <_start-0x62a4>
1c002bf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a50 <_sidata+0x6bc4>
1c002bf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bf8 <__FUNCTION__.1663>:
1c002bf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a070 <_sidata+0x171e4>
1c002bfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c60 <_sidata+0x16dd4>
1c002c00:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff6160 <_start-0x9ea0>
1c002c04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d74 <_start-0x628c>
1c002c08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a68 <_sidata+0x6bdc>
1c002c0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c10 <__FUNCTION__.1667>:
1c002c10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a088 <_sidata+0x171fc>
1c002c14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c78 <_sidata+0x16dec>
1c002c18:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff6278 <_start-0x9d88>
1c002c1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d8c <_start-0x6274>
1c002c20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a80 <_sidata+0x6bf4>
1c002c24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c28 <__FUNCTION__.1671>:
1c002c28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0a0 <_sidata+0x17214>
1c002c2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c90 <_sidata+0x16e04>
1c002c30:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff6390 <_start-0x9c70>
1c002c34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9da4 <_start-0x625c>
1c002c38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a98 <_sidata+0x6c0c>
1c002c3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c40 <__FUNCTION__.1675>:
1c002c40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0b8 <_sidata+0x1722c>
1c002c44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ca8 <_sidata+0x16e1c>
1c002c48:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5ca8 <_start-0xa358>
1c002c4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dbc <_start-0x6244>
1c002c50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ab0 <_sidata+0x6c24>
1c002c54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c58 <__FUNCTION__.1679>:
1c002c58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0d0 <_sidata+0x17244>
1c002c5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cc0 <_sidata+0x16e34>
1c002c60:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5dc0 <_start-0xa240>
1c002c64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dd4 <_start-0x622c>
1c002c68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ac8 <_sidata+0x6c3c>
1c002c6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c70 <__FUNCTION__.1683>:
1c002c70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0e8 <_sidata+0x1725c>
1c002c74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cd8 <_sidata+0x16e4c>
1c002c78:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5ed8 <_start-0xa128>
1c002c7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dec <_start-0x6214>
1c002c80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ae0 <_sidata+0x6c54>
1c002c84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c88 <__FUNCTION__.1687>:
1c002c88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a100 <_sidata+0x17274>
1c002c8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cf0 <_sidata+0x16e64>
1c002c90:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5ff0 <_start-0xa010>
1c002c94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e04 <_start-0x61fc>
1c002c98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009af8 <_sidata+0x6c6c>
1c002c9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ca0 <__FUNCTION__.1691>:
1c002ca0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a118 <_sidata+0x1728c>
1c002ca4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d08 <_sidata+0x16e7c>
1c002ca8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff6108 <_start-0x9ef8>
1c002cac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e1c <_start-0x61e4>
1c002cb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b10 <_sidata+0x6c84>
1c002cb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cb8 <__FUNCTION__.1695>:
1c002cb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a130 <_sidata+0x172a4>
1c002cbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d20 <_sidata+0x16e94>
1c002cc0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6220 <_start-0x9de0>
1c002cc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e34 <_start-0x61cc>
1c002cc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b28 <_sidata+0x6c9c>
1c002ccc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cd0 <__FUNCTION__.1699>:
1c002cd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a148 <_sidata+0x172bc>
1c002cd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d38 <_sidata+0x16eac>
1c002cd8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff6338 <_start-0x9cc8>
1c002cdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e4c <_start-0x61b4>
1c002ce0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b40 <_sidata+0x6cb4>
1c002ce4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ce8 <__FUNCTION__.1703>:
1c002ce8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a160 <_sidata+0x172d4>
1c002cec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d50 <_sidata+0x16ec4>
1c002cf0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff6450 <_start-0x9bb0>
1c002cf4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e64 <_start-0x619c>
1c002cf8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b58 <_sidata+0x6ccc>
1c002cfc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d00 <__FUNCTION__.1707>:
1c002d00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a178 <_sidata+0x172ec>
1c002d04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d68 <_sidata+0x16edc>
1c002d08:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff5d68 <_start-0xa298>
1c002d0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e7c <_start-0x6184>
1c002d10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b70 <_sidata+0x6ce4>
1c002d14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d18 <__FUNCTION__.1711>:
1c002d18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a190 <_sidata+0x17304>
1c002d1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d80 <_sidata+0x16ef4>
1c002d20:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff5e80 <_start-0xa180>
1c002d24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e94 <_start-0x616c>
1c002d28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b88 <_sidata+0x6cfc>
1c002d2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d30 <__FUNCTION__.1715>:
1c002d30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1a8 <_sidata+0x1731c>
1c002d34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d98 <_sidata+0x16f0c>
1c002d38:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff5f98 <_start-0xa068>
1c002d3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9eac <_start-0x6154>
1c002d40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ba0 <_sidata+0x6d14>
1c002d44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d48 <__FUNCTION__.1719>:
1c002d48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1c0 <_sidata+0x17334>
1c002d4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019db0 <_sidata+0x16f24>
1c002d50:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff60b0 <_start-0x9f50>
1c002d54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ec4 <_start-0x613c>
1c002d58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009bb8 <_sidata+0x6d2c>
1c002d5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d60 <__FUNCTION__.1723>:
1c002d60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1d8 <_sidata+0x1734c>
1c002d64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019dc8 <_sidata+0x16f3c>
1c002d68:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff61c8 <_start-0x9e38>
1c002d6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9edc <_start-0x6124>
1c002d70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009bd0 <_sidata+0x6d44>
1c002d74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d78 <__FUNCTION__.1727>:
1c002d78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1f0 <_sidata+0x17364>
1c002d7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019de0 <_sidata+0x16f54>
1c002d80:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff62e0 <_start-0x9d20>
1c002d84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ef4 <_start-0x610c>
1c002d88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009be8 <_sidata+0x6d5c>
1c002d8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d90 <__FUNCTION__.1731>:
1c002d90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a208 <_sidata+0x1737c>
1c002d94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019df8 <_sidata+0x16f6c>
1c002d98:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff63f8 <_start-0x9c08>
1c002d9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f0c <_start-0x60f4>
1c002da0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c00 <_sidata+0x6d74>
1c002da4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002da8 <__FUNCTION__.1735>:
1c002da8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a220 <_sidata+0x17394>
1c002dac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e10 <_sidata+0x16f84>
1c002db0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6510 <_start-0x9af0>
1c002db4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f24 <_start-0x60dc>
1c002db8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c18 <_sidata+0x6d8c>
1c002dbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002dc0 <__FUNCTION__.1739>:
1c002dc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a238 <_sidata+0x173ac>
1c002dc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e28 <_sidata+0x16f9c>
1c002dc8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5e2c <_start-0xa1d4>
1c002dcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f3c <_start-0x60c4>
1c002dd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c30 <_sidata+0x6da4>
1c002dd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002dd8 <__FUNCTION__.1743>:
1c002dd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a250 <_sidata+0x173c4>
1c002ddc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e40 <_sidata+0x16fb4>
1c002de0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff5f44 <_start-0xa0bc>
1c002de4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f54 <_start-0x60ac>
1c002de8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c48 <_sidata+0x6dbc>
1c002dec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002df0 <__FUNCTION__.1747>:
1c002df0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a268 <_sidata+0x173dc>
1c002df4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e58 <_sidata+0x16fcc>
1c002df8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff605c <_start-0x9fa4>
1c002dfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f6c <_start-0x6094>
1c002e00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c60 <_sidata+0x6dd4>
1c002e04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e08 <__FUNCTION__.1751>:
1c002e08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a280 <_sidata+0x173f4>
1c002e0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e70 <_sidata+0x16fe4>
1c002e10:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff6174 <_start-0x9e8c>
1c002e14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f84 <_start-0x607c>
1c002e18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c78 <_sidata+0x6dec>
1c002e1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e20 <__FUNCTION__.1755>:
1c002e20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a298 <_sidata+0x1740c>
1c002e24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019e88 <_sidata+0x16ffc>
1c002e28:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff628c <_start-0x9d74>
1c002e2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9f9c <_start-0x6064>
1c002e30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009c90 <_sidata+0x6e04>
1c002e34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e38 <__FUNCTION__.1759>:
1c002e38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a2b0 <_sidata+0x17424>
1c002e3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ea0 <_sidata+0x17014>
1c002e40:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff63a4 <_start-0x9c5c>
1c002e44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9fb4 <_start-0x604c>
1c002e48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ca8 <_sidata+0x6e1c>
1c002e4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e50 <__FUNCTION__.1763>:
1c002e50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a2c8 <_sidata+0x1743c>
1c002e54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019eb8 <_sidata+0x1702c>
1c002e58:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff64bc <_start-0x9b44>
1c002e5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9fcc <_start-0x6034>
1c002e60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009cc0 <_sidata+0x6e34>
1c002e64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e68 <__FUNCTION__.1767>:
1c002e68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a2e0 <_sidata+0x17454>
1c002e6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ed0 <_sidata+0x17044>
1c002e70:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff65d4 <_start-0x9a2c>
1c002e74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9fe4 <_start-0x601c>
1c002e78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009cd8 <_sidata+0x6e4c>
1c002e7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002e80 <__FUNCTION__.1776>:
1c002e80:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffa2f8 <_start-0x5d08>
1c002e84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ce4 <_sidata+0x6e58>
1c002e88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .bss.state:

80000000 <state>:
80000000:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
