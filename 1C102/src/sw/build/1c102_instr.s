
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
1c00000c:	03b591ef 	ori	$r15,$r15,0xd64
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
1c0000a0:	54190400 	bl	6404(0x1904) # 1c0019a4 <main>
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
1c001090:	5413a000 	bl	5024(0x13a0) # 1c002430 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5413e000 	bl	5088(0x13e0) # 1c002478 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54146400 	bl	5220(0x1464) # 1c002504 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54149800 	bl	5272(0x1498) # 1c002540 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5412b000 	bl	4784(0x12b0) # 1c002360 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54164400 	bl	5700(0x1644) # 1c0026fc <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54155000 	bl	5456(0x1550) # 1c002618 <intc_handler>
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

1c0012c4 <puts>:
puts():
1c0012c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0012c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0012cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0012d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0012d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0012d8:	50003000 	b	48(0x30) # 1c001308 <puts+0x44>
1c0012dc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c0012e0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0012e4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0012f0 <puts+0x2c>
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
1c001318:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c0012dc <puts+0x18>
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
1c0013d0:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c0013d4:	001031ac 	add.w	$r12,$r13,$r12
1c0013d8:	2880018c 	ld.w	$r12,$r12,0
1c0013dc:	4c000180 	jirl	$r0,$r12,0
1c0013e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0013e4:	2880018c 	ld.w	$r12,$r12,0
1c0013e8:	00150184 	move	$r4,$r12
1c0013ec:	57fedbff 	bl	-296(0xffffed8) # 1c0012c4 <puts>
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

1c001768 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c001768:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00176c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001770:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001774:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001778:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00177c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001780:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c001784:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001788:	001531ad 	or	$r13,$r13,$r12
1c00178c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001790:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001794:	03400000 	andi	$r0,$r0,0x0
1c001798:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00179c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0017a0:	4c000020 	jirl	$r0,$r1,0

1c0017a4 <WDG_DogFeed>:
WDG_DogFeed():
1c0017a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017a8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0017ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0017b8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0017bc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0017c0:	03400000 	andi	$r0,$r0,0x0
1c0017c4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0017c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017cc:	4c000020 	jirl	$r0,$r1,0

1c0017d0 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0017d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017d4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0017d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0017dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0017e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0017e4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0017e8:	2880018d 	ld.w	$r13,$r12,0
1c0017ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017f0:	0014b1ac 	and	$r12,$r13,$r12
1c0017f4:	40001180 	beqz	$r12,16(0x10) # 1c001804 <TIM_GetITStatus+0x34>
1c0017f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0017fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001800:	50000800 	b	8(0x8) # 1c001808 <TIM_GetITStatus+0x38>
1c001804:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001808:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00180c:	00150184 	move	$r4,$r12
1c001810:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001818:	4c000020 	jirl	$r0,$r1,0

1c00181c <TIM_ClearIT>:
TIM_ClearIT():
1c00181c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001820:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001824:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001828:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00182c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001830:	2880018e 	ld.w	$r14,$r12,0
1c001834:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001838:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00183c:	001535cd 	or	$r13,$r14,$r13
1c001840:	2980018d 	st.w	$r13,$r12,0
1c001844:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001848:	03800d8c 	ori	$r12,$r12,0x3
1c00184c:	2a00018c 	ld.bu	$r12,$r12,0
1c001850:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001854:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001858:	03800d8c 	ori	$r12,$r12,0x3
1c00185c:	038005ad 	ori	$r13,$r13,0x1
1c001860:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001864:	2900018d 	st.b	$r13,$r12,0
1c001868:	03400000 	andi	$r0,$r0,0x0
1c00186c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001870:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001874:	4c000020 	jirl	$r0,$r1,0

1c001878 <recv_dat_int>:
recv_dat_int():
1c001878:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00187c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001880:	29806076 	st.w	$r22,$r3,24(0x18)
1c001884:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001888:	0015008c 	move	$r12,$r4
1c00188c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001890:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c001894:	029dc18c 	addi.w	$r12,$r12,1904(0x770)
1c001898:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00189c:	2980018d 	st.w	$r13,$r12,0
1c0018a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0018a4:	00150185 	move	$r5,$r12
1c0018a8:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c0018ac:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c0018b0:	54001800 	bl	24(0x18) # 1c0018c8 <Buffer_write>
1c0018b4:	03400000 	andi	$r0,$r0,0x0
1c0018b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018c4:	4c000020 	jirl	$r0,$r1,0

1c0018c8 <Buffer_write>:
Buffer_write():
1c0018c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0018cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0018d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0018d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0018d8:	001500ac 	move	$r12,$r5
1c0018dc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0018e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018e4:	2880018c 	ld.w	$r12,$r12,0
1c0018e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0018ec:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c0018f0:	0010358c 	add.w	$r12,$r12,$r13
1c0018f4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0018f8:	2900018d 	st.b	$r13,$r12,0
1c0018fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001900:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c001904:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001908:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00190c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001910:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001914:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001920:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00192c <Buffer_write+0x64>
1c001924:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001928:	29803180 	st.w	$r0,$r12,12(0xc)
1c00192c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001930:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c001934:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00193c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c001940:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001944:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c001948:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00194c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001950:	6400458d 	bge	$r12,$r13,68(0x44) # 1c001994 <Buffer_write+0xcc>
1c001954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001958:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00195c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001960:	2980418d 	st.w	$r13,$r12,16(0x10)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c00196c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001974:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00197c:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c001980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001984:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001988:	60000dac 	blt	$r13,$r12,12(0xc) # 1c001994 <Buffer_write+0xcc>
1c00198c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001990:	29802180 	st.w	$r0,$r12,8(0x8)
1c001994:	03400000 	andi	$r0,$r0,0x0
1c001998:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00199c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019a0:	4c000020 	jirl	$r0,$r1,0

1c0019a4 <main>:
main():
1c0019a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0019ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019b0:	157fdc0c 	lu12i.w	$r12,-262432(0xbfee0)
1c0019b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019bc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0019c0:	2980018d 	st.w	$r13,$r12,0
1c0019c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0019cc:	2980018d 	st.w	$r13,$r12,0
1c0019d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019d4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0019d8:	2980018d 	st.w	$r13,$r12,0
1c0019dc:	53ffebff 	b	-24(0xfffffe8) # 1c0019c4 <main+0x20>

1c0019e0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c0019e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0019e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0019e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0019ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0019f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0019f4:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c0019f8:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c0019fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a00:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c001a04:	57f933ff 	bl	-1744(0xffff930) # 1c001334 <myprintf>
1c001a08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001a0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a10:	03808184 	ori	$r4,$r12,0x20
1c001a14:	57fd57ff 	bl	-684(0xffffd54) # 1c001768 <EXTI_ClearITPendingBit>
1c001a18:	03400000 	andi	$r0,$r0,0x0
1c001a1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001a20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001a24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001a28:	4c000020 	jirl	$r0,$r1,0

1c001a2c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c001a2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a30:	29803061 	st.w	$r1,$r3,12(0xc)
1c001a34:	29802076 	st.w	$r22,$r3,8(0x8)
1c001a38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001a3c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001a40:	0280d0c6 	addi.w	$r6,$r6,52(0x34)
1c001a44:	02806005 	addi.w	$r5,$r0,24(0x18)
1c001a48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a4c:	02b8f084 	addi.w	$r4,$r4,-452(0xe3c)
1c001a50:	57f8e7ff 	bl	-1820(0xffff8e4) # 1c001334 <myprintf>
1c001a54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001a58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a5c:	03808184 	ori	$r4,$r12,0x20
1c001a60:	57fd0bff 	bl	-760(0xffffd08) # 1c001768 <EXTI_ClearITPendingBit>
1c001a64:	03400000 	andi	$r0,$r0,0x0
1c001a68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001a6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001a70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001a74:	4c000020 	jirl	$r0,$r1,0

1c001a78 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c001a78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001a7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001a80:	29802076 	st.w	$r22,$r3,8(0x8)
1c001a84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001a88:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001a8c:	028000c6 	addi.w	$r6,$r6,0
1c001a90:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c001a94:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001a98:	02b7c084 	addi.w	$r4,$r4,-528(0xdf0)
1c001a9c:	57f89bff 	bl	-1896(0xffff898) # 1c001334 <myprintf>
1c001aa0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001aa4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001aa8:	03808184 	ori	$r4,$r12,0x20
1c001aac:	57fcbfff 	bl	-836(0xffffcbc) # 1c001768 <EXTI_ClearITPendingBit>
1c001ab0:	03400000 	andi	$r0,$r0,0x0
1c001ab4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ab8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001abc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ac0:	4c000020 	jirl	$r0,$r1,0

1c001ac4 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c001ac4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ac8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001acc:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ad0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ad4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ad8:	02bf30c6 	addi.w	$r6,$r6,-52(0xfcc)
1c001adc:	02808805 	addi.w	$r5,$r0,34(0x22)
1c001ae0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ae4:	02b69084 	addi.w	$r4,$r4,-604(0xda4)
1c001ae8:	57f84fff 	bl	-1972(0xffff84c) # 1c001334 <myprintf>
1c001aec:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001af0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001af4:	03808184 	ori	$r4,$r12,0x20
1c001af8:	57fc73ff 	bl	-912(0xffffc70) # 1c001768 <EXTI_ClearITPendingBit>
1c001afc:	03400000 	andi	$r0,$r0,0x0
1c001b00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001b08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b0c:	4c000020 	jirl	$r0,$r1,0

1c001b10 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c001b10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b14:	29803061 	st.w	$r1,$r3,12(0xc)
1c001b18:	29802076 	st.w	$r22,$r3,8(0x8)
1c001b1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b20:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b24:	02be60c6 	addi.w	$r6,$r6,-104(0xf98)
1c001b28:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c001b2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b30:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c001b34:	57f803ff 	bl	-2048(0xffff800) # 1c001334 <myprintf>
1c001b38:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b40:	03808184 	ori	$r4,$r12,0x20
1c001b44:	57fc27ff 	bl	-988(0xffffc24) # 1c001768 <EXTI_ClearITPendingBit>
1c001b48:	03400000 	andi	$r0,$r0,0x0
1c001b4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001b54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001b58:	4c000020 	jirl	$r0,$r1,0

1c001b5c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c001b5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b60:	29803061 	st.w	$r1,$r3,12(0xc)
1c001b64:	29802076 	st.w	$r22,$r3,8(0x8)
1c001b68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b6c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001b70:	02bd90c6 	addi.w	$r6,$r6,-156(0xf64)
1c001b74:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c001b78:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001b7c:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c001b80:	57f7b7ff 	bl	-2124(0xffff7b4) # 1c001334 <myprintf>
1c001b84:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001b88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b8c:	03808184 	ori	$r4,$r12,0x20
1c001b90:	57fbdbff 	bl	-1064(0xffffbd8) # 1c001768 <EXTI_ClearITPendingBit>
1c001b94:	03400000 	andi	$r0,$r0,0x0
1c001b98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001b9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ba0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ba4:	4c000020 	jirl	$r0,$r1,0

1c001ba8 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c001ba8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bac:	29803061 	st.w	$r1,$r3,12(0xc)
1c001bb0:	29802076 	st.w	$r22,$r3,8(0x8)
1c001bb4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001bb8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001bbc:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c001bc0:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c001bc4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001bc8:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c001bcc:	57f76bff 	bl	-2200(0xffff768) # 1c001334 <myprintf>
1c001bd0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c001bd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001bd8:	03808184 	ori	$r4,$r12,0x20
1c001bdc:	57fb8fff 	bl	-1140(0xffffb8c) # 1c001768 <EXTI_ClearITPendingBit>
1c001be0:	03400000 	andi	$r0,$r0,0x0
1c001be4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001be8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001bec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001bf0:	4c000020 	jirl	$r0,$r1,0

1c001bf4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c001bf4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001bf8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001bfc:	29802076 	st.w	$r22,$r3,8(0x8)
1c001c00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c04:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c08:	02bbf0c6 	addi.w	$r6,$r6,-260(0xefc)
1c001c0c:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c001c10:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c14:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c001c18:	57f71fff 	bl	-2276(0xffff71c) # 1c001334 <myprintf>
1c001c1c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c001c20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001c24:	03808184 	ori	$r4,$r12,0x20
1c001c28:	57fb43ff 	bl	-1216(0xffffb40) # 1c001768 <EXTI_ClearITPendingBit>
1c001c2c:	03400000 	andi	$r0,$r0,0x0
1c001c30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001c38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c3c:	4c000020 	jirl	$r0,$r1,0

1c001c40 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c001c40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c44:	29803061 	st.w	$r1,$r3,12(0xc)
1c001c48:	29802076 	st.w	$r22,$r3,8(0x8)
1c001c4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c50:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001c54:	02bb20c6 	addi.w	$r6,$r6,-312(0xec8)
1c001c58:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c001c5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001c60:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c001c64:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c001334 <myprintf>
1c001c68:	02840005 	addi.w	$r5,$r0,256(0x100)
1c001c6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001c70:	03808184 	ori	$r4,$r12,0x20
1c001c74:	57faf7ff 	bl	-1292(0xffffaf4) # 1c001768 <EXTI_ClearITPendingBit>
1c001c78:	03400000 	andi	$r0,$r0,0x0
1c001c7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001c80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001c84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001c88:	4c000020 	jirl	$r0,$r1,0

1c001c8c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c001c8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c90:	29803061 	st.w	$r1,$r3,12(0xc)
1c001c94:	29802076 	st.w	$r22,$r3,8(0x8)
1c001c98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c9c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ca0:	02ba50c6 	addi.w	$r6,$r6,-364(0xe94)
1c001ca4:	02810805 	addi.w	$r5,$r0,66(0x42)
1c001ca8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cac:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c001cb0:	57f687ff 	bl	-2428(0xffff684) # 1c001334 <myprintf>
1c001cb4:	02880005 	addi.w	$r5,$r0,512(0x200)
1c001cb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001cbc:	03808184 	ori	$r4,$r12,0x20
1c001cc0:	57faabff 	bl	-1368(0xffffaa8) # 1c001768 <EXTI_ClearITPendingBit>
1c001cc4:	03400000 	andi	$r0,$r0,0x0
1c001cc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ccc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001cd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001cd4:	4c000020 	jirl	$r0,$r1,0

1c001cd8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c001cd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001cdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ce0:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ce4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ce8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001cec:	02b980c6 	addi.w	$r6,$r6,-416(0xe60)
1c001cf0:	02812005 	addi.w	$r5,$r0,72(0x48)
1c001cf4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001cf8:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c001cfc:	57f63bff 	bl	-2504(0xffff638) # 1c001334 <myprintf>
1c001d00:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c001d04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001d08:	03808184 	ori	$r4,$r12,0x20
1c001d0c:	57fa5fff 	bl	-1444(0xffffa5c) # 1c001768 <EXTI_ClearITPendingBit>
1c001d10:	03400000 	andi	$r0,$r0,0x0
1c001d14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001d1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d20:	4c000020 	jirl	$r0,$r1,0

1c001d24 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c001d24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d28:	29803061 	st.w	$r1,$r3,12(0xc)
1c001d2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001d30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d34:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d38:	02b8b0c6 	addi.w	$r6,$r6,-468(0xe2c)
1c001d3c:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c001d40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d44:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c001d48:	57f5efff 	bl	-2580(0xffff5ec) # 1c001334 <myprintf>
1c001d4c:	03a00005 	ori	$r5,$r0,0x800
1c001d50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001d54:	03808184 	ori	$r4,$r12,0x20
1c001d58:	57fa13ff 	bl	-1520(0xffffa10) # 1c001768 <EXTI_ClearITPendingBit>
1c001d5c:	03400000 	andi	$r0,$r0,0x0
1c001d60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001d64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001d68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d6c:	4c000020 	jirl	$r0,$r1,0

1c001d70 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c001d70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d74:	29803061 	st.w	$r1,$r3,12(0xc)
1c001d78:	29802076 	st.w	$r22,$r3,8(0x8)
1c001d7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d80:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001d84:	02b7e0c6 	addi.w	$r6,$r6,-520(0xdf8)
1c001d88:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c001d8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001d90:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c001d94:	57f5a3ff 	bl	-2656(0xffff5a0) # 1c001334 <myprintf>
1c001d98:	14000025 	lu12i.w	$r5,1(0x1)
1c001d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001da0:	03808184 	ori	$r4,$r12,0x20
1c001da4:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c001768 <EXTI_ClearITPendingBit>
1c001da8:	03400000 	andi	$r0,$r0,0x0
1c001dac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001db0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001db4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001db8:	4c000020 	jirl	$r0,$r1,0

1c001dbc <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c001dbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001dc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001dc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c001dc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001dcc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001dd0:	02b710c6 	addi.w	$r6,$r6,-572(0xdc4)
1c001dd4:	02816005 	addi.w	$r5,$r0,88(0x58)
1c001dd8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ddc:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c001de0:	57f557ff 	bl	-2732(0xffff554) # 1c001334 <myprintf>
1c001de4:	14000045 	lu12i.w	$r5,2(0x2)
1c001de8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001dec:	03808184 	ori	$r4,$r12,0x20
1c001df0:	57f97bff 	bl	-1672(0xffff978) # 1c001768 <EXTI_ClearITPendingBit>
1c001df4:	03400000 	andi	$r0,$r0,0x0
1c001df8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001dfc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e04:	4c000020 	jirl	$r0,$r1,0

1c001e08 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c001e08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e10:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e18:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e1c:	02b640c6 	addi.w	$r6,$r6,-624(0xd90)
1c001e20:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c001e24:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e28:	02a98084 	addi.w	$r4,$r4,-1440(0xa60)
1c001e2c:	57f50bff 	bl	-2808(0xffff508) # 1c001334 <myprintf>
1c001e30:	14000085 	lu12i.w	$r5,4(0x4)
1c001e34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001e38:	03808184 	ori	$r4,$r12,0x20
1c001e3c:	57f92fff 	bl	-1748(0xffff92c) # 1c001768 <EXTI_ClearITPendingBit>
1c001e40:	03400000 	andi	$r0,$r0,0x0
1c001e44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e50:	4c000020 	jirl	$r0,$r1,0

1c001e54 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c001e54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e58:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e64:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e68:	02b570c6 	addi.w	$r6,$r6,-676(0xd5c)
1c001e6c:	02819005 	addi.w	$r5,$r0,100(0x64)
1c001e70:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e74:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c001e78:	57f4bfff 	bl	-2884(0xffff4bc) # 1c001334 <myprintf>
1c001e7c:	14000105 	lu12i.w	$r5,8(0x8)
1c001e80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001e84:	03808184 	ori	$r4,$r12,0x20
1c001e88:	57f8e3ff 	bl	-1824(0xffff8e0) # 1c001768 <EXTI_ClearITPendingBit>
1c001e8c:	03400000 	andi	$r0,$r0,0x0
1c001e90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e94:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e9c:	4c000020 	jirl	$r0,$r1,0

1c001ea0 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c001ea0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ea4:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ea8:	29802076 	st.w	$r22,$r3,8(0x8)
1c001eac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001eb0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001eb4:	02b4a0c6 	addi.w	$r6,$r6,-728(0xd28)
1c001eb8:	0281ac05 	addi.w	$r5,$r0,107(0x6b)
1c001ebc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ec0:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c001ec4:	57f473ff 	bl	-2960(0xffff470) # 1c001334 <myprintf>
1c001ec8:	14000205 	lu12i.w	$r5,16(0x10)
1c001ecc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ed0:	03808184 	ori	$r4,$r12,0x20
1c001ed4:	57f897ff 	bl	-1900(0xffff894) # 1c001768 <EXTI_ClearITPendingBit>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ee0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ee4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ee8:	4c000020 	jirl	$r0,$r1,0

1c001eec <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c001eec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ef0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001ef4:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ef8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001efc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f00:	02b3d0c6 	addi.w	$r6,$r6,-780(0xcf4)
1c001f04:	0281c405 	addi.w	$r5,$r0,113(0x71)
1c001f08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f0c:	02a5f084 	addi.w	$r4,$r4,-1668(0x97c)
1c001f10:	57f427ff 	bl	-3036(0xffff424) # 1c001334 <myprintf>
1c001f14:	14000405 	lu12i.w	$r5,32(0x20)
1c001f18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f1c:	03808184 	ori	$r4,$r12,0x20
1c001f20:	57f84bff 	bl	-1976(0xffff848) # 1c001768 <EXTI_ClearITPendingBit>
1c001f24:	03400000 	andi	$r0,$r0,0x0
1c001f28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c001f38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f40:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f48:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f4c:	02b300c6 	addi.w	$r6,$r6,-832(0xcc0)
1c001f50:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c001f54:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f58:	02a4c084 	addi.w	$r4,$r4,-1744(0x930)
1c001f5c:	57f3dbff 	bl	-3112(0xffff3d8) # 1c001334 <myprintf>
1c001f60:	14000805 	lu12i.w	$r5,64(0x40)
1c001f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f68:	03808184 	ori	$r4,$r12,0x20
1c001f6c:	57f7ffff 	bl	-2052(0xffff7fc) # 1c001768 <EXTI_ClearITPendingBit>
1c001f70:	03400000 	andi	$r0,$r0,0x0
1c001f74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f80:	4c000020 	jirl	$r0,$r1,0

1c001f84 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c001f84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f88:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f94:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f98:	02b230c6 	addi.w	$r6,$r6,-884(0xc8c)
1c001f9c:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c001fa0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fa4:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c001fa8:	57f38fff 	bl	-3188(0xffff38c) # 1c001334 <myprintf>
1c001fac:	14001005 	lu12i.w	$r5,128(0x80)
1c001fb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001fb4:	03808184 	ori	$r4,$r12,0x20
1c001fb8:	57f7b3ff 	bl	-2128(0xffff7b0) # 1c001768 <EXTI_ClearITPendingBit>
1c001fbc:	03400000 	andi	$r0,$r0,0x0
1c001fc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fc4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001fc8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c001fd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fd4:	29803061 	st.w	$r1,$r3,12(0xc)
1c001fd8:	29802076 	st.w	$r22,$r3,8(0x8)
1c001fdc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001fe0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fe4:	02b160c6 	addi.w	$r6,$r6,-936(0xc58)
1c001fe8:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c001fec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ff0:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c001ff4:	57f343ff 	bl	-3264(0xffff340) # 1c001334 <myprintf>
1c001ff8:	14002005 	lu12i.w	$r5,256(0x100)
1c001ffc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002000:	03808184 	ori	$r4,$r12,0x20
1c002004:	57f767ff 	bl	-2204(0xffff764) # 1c001768 <EXTI_ClearITPendingBit>
1c002008:	03400000 	andi	$r0,$r0,0x0
1c00200c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002010:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002014:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002018:	4c000020 	jirl	$r0,$r1,0

1c00201c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00201c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002020:	29803061 	st.w	$r1,$r3,12(0xc)
1c002024:	29802076 	st.w	$r22,$r3,8(0x8)
1c002028:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00202c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002030:	02b090c6 	addi.w	$r6,$r6,-988(0xc24)
1c002034:	02822005 	addi.w	$r5,$r0,136(0x88)
1c002038:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00203c:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c002040:	57f2f7ff 	bl	-3340(0xffff2f4) # 1c001334 <myprintf>
1c002044:	14004005 	lu12i.w	$r5,512(0x200)
1c002048:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00204c:	03808184 	ori	$r4,$r12,0x20
1c002050:	57f71bff 	bl	-2280(0xffff718) # 1c001768 <EXTI_ClearITPendingBit>
1c002054:	03400000 	andi	$r0,$r0,0x0
1c002058:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00205c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002060:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002064:	4c000020 	jirl	$r0,$r1,0

1c002068 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c002068:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00206c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002070:	29802076 	st.w	$r22,$r3,8(0x8)
1c002074:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002078:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00207c:	02afc0c6 	addi.w	$r6,$r6,-1040(0xbf0)
1c002080:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c002084:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002088:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c00208c:	57f2abff 	bl	-3416(0xffff2a8) # 1c001334 <myprintf>
1c002090:	14008005 	lu12i.w	$r5,1024(0x400)
1c002094:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002098:	03808184 	ori	$r4,$r12,0x20
1c00209c:	57f6cfff 	bl	-2356(0xffff6cc) # 1c001768 <EXTI_ClearITPendingBit>
1c0020a0:	03400000 	andi	$r0,$r0,0x0
1c0020a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0020ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020b0:	4c000020 	jirl	$r0,$r1,0

1c0020b4 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0020b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020c4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020c8:	02aef0c6 	addi.w	$r6,$r6,-1092(0xbbc)
1c0020cc:	02824c05 	addi.w	$r5,$r0,147(0x93)
1c0020d0:	1c000004 	pcaddu12i	$r4,0
1c0020d4:	029ed084 	addi.w	$r4,$r4,1972(0x7b4)
1c0020d8:	57f25fff 	bl	-3492(0xffff25c) # 1c001334 <myprintf>
1c0020dc:	14010005 	lu12i.w	$r5,2048(0x800)
1c0020e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0020e4:	03808184 	ori	$r4,$r12,0x20
1c0020e8:	57f683ff 	bl	-2432(0xffff680) # 1c001768 <EXTI_ClearITPendingBit>
1c0020ec:	03400000 	andi	$r0,$r0,0x0
1c0020f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0020f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020fc:	4c000020 	jirl	$r0,$r1,0

1c002100 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c002100:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002104:	29803061 	st.w	$r1,$r3,12(0xc)
1c002108:	29802076 	st.w	$r22,$r3,8(0x8)
1c00210c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002110:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002114:	02ae20c6 	addi.w	$r6,$r6,-1144(0xb88)
1c002118:	02826405 	addi.w	$r5,$r0,153(0x99)
1c00211c:	1c000004 	pcaddu12i	$r4,0
1c002120:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c002124:	57f213ff 	bl	-3568(0xffff210) # 1c001334 <myprintf>
1c002128:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00212c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002130:	03808184 	ori	$r4,$r12,0x20
1c002134:	57f637ff 	bl	-2508(0xffff634) # 1c001768 <EXTI_ClearITPendingBit>
1c002138:	03400000 	andi	$r0,$r0,0x0
1c00213c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002140:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002144:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00214c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002150:	29803061 	st.w	$r1,$r3,12(0xc)
1c002154:	29802076 	st.w	$r22,$r3,8(0x8)
1c002158:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00215c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002160:	02ad50c6 	addi.w	$r6,$r6,-1196(0xb54)
1c002164:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c002168:	1c000004 	pcaddu12i	$r4,0
1c00216c:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c002170:	57f1c7ff 	bl	-3644(0xffff1c4) # 1c001334 <myprintf>
1c002174:	14040005 	lu12i.w	$r5,8192(0x2000)
1c002178:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00217c:	03808184 	ori	$r4,$r12,0x20
1c002180:	57f5ebff 	bl	-2584(0xffff5e8) # 1c001768 <EXTI_ClearITPendingBit>
1c002184:	03400000 	andi	$r0,$r0,0x0
1c002188:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00218c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002190:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002194:	4c000020 	jirl	$r0,$r1,0

1c002198 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c002198:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00219c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0021a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0021a8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021ac:	02ac80c6 	addi.w	$r6,$r6,-1248(0xb20)
1c0021b0:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0021b4:	1c000004 	pcaddu12i	$r4,0
1c0021b8:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c0021bc:	57f17bff 	bl	-3720(0xffff178) # 1c001334 <myprintf>
1c0021c0:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0021c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021c8:	03808184 	ori	$r4,$r12,0x20
1c0021cc:	57f59fff 	bl	-2660(0xffff59c) # 1c001768 <EXTI_ClearITPendingBit>
1c0021d0:	03400000 	andi	$r0,$r0,0x0
1c0021d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021e0:	4c000020 	jirl	$r0,$r1,0

1c0021e4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0021e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0021f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0021f4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021f8:	02abb0c6 	addi.w	$r6,$r6,-1300(0xaec)
1c0021fc:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c002200:	1c000004 	pcaddu12i	$r4,0
1c002204:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c002208:	57f12fff 	bl	-3796(0xffff12c) # 1c001334 <myprintf>
1c00220c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c002210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002214:	03808184 	ori	$r4,$r12,0x20
1c002218:	57f553ff 	bl	-2736(0xffff550) # 1c001768 <EXTI_ClearITPendingBit>
1c00221c:	03400000 	andi	$r0,$r0,0x0
1c002220:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002224:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002228:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00222c:	4c000020 	jirl	$r0,$r1,0

1c002230 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c002230:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002234:	29803061 	st.w	$r1,$r3,12(0xc)
1c002238:	29802076 	st.w	$r22,$r3,8(0x8)
1c00223c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002240:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002244:	02aae0c6 	addi.w	$r6,$r6,-1352(0xab8)
1c002248:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c00224c:	1c000004 	pcaddu12i	$r4,0
1c002250:	0298e084 	addi.w	$r4,$r4,1592(0x638)
1c002254:	57f0e3ff 	bl	-3872(0xffff0e0) # 1c001334 <myprintf>
1c002258:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00225c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002260:	03808184 	ori	$r4,$r12,0x20
1c002264:	57f507ff 	bl	-2812(0xffff504) # 1c001768 <EXTI_ClearITPendingBit>
1c002268:	03400000 	andi	$r0,$r0,0x0
1c00226c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002270:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002274:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002278:	4c000020 	jirl	$r0,$r1,0

1c00227c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00227c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002280:	29803061 	st.w	$r1,$r3,12(0xc)
1c002284:	29802076 	st.w	$r22,$r3,8(0x8)
1c002288:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00228c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002290:	02aa10c6 	addi.w	$r6,$r6,-1404(0xa84)
1c002294:	0282e005 	addi.w	$r5,$r0,184(0xb8)
1c002298:	1c000004 	pcaddu12i	$r4,0
1c00229c:	0297b084 	addi.w	$r4,$r4,1516(0x5ec)
1c0022a0:	57f097ff 	bl	-3948(0xffff094) # 1c001334 <myprintf>
1c0022a4:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0022a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022ac:	03808184 	ori	$r4,$r12,0x20
1c0022b0:	57f4bbff 	bl	-2888(0xffff4b8) # 1c001768 <EXTI_ClearITPendingBit>
1c0022b4:	03400000 	andi	$r0,$r0,0x0
1c0022b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0022c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022c4:	4c000020 	jirl	$r0,$r1,0

1c0022c8 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0022c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0022d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0022d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0022d8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0022dc:	02a940c6 	addi.w	$r6,$r6,-1456(0xa50)
1c0022e0:	0282f805 	addi.w	$r5,$r0,190(0xbe)
1c0022e4:	1c000004 	pcaddu12i	$r4,0
1c0022e8:	02968084 	addi.w	$r4,$r4,1440(0x5a0)
1c0022ec:	57f04bff 	bl	-4024(0xffff048) # 1c001334 <myprintf>
1c0022f0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0022f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022f8:	03808184 	ori	$r4,$r12,0x20
1c0022fc:	57f46fff 	bl	-2964(0xffff46c) # 1c001768 <EXTI_ClearITPendingBit>
1c002300:	03400000 	andi	$r0,$r0,0x0
1c002304:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002308:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00230c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002310:	4c000020 	jirl	$r0,$r1,0

1c002314 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c002314:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002318:	29803061 	st.w	$r1,$r3,12(0xc)
1c00231c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002320:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002324:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002328:	02a870c6 	addi.w	$r6,$r6,-1508(0xa1c)
1c00232c:	02831005 	addi.w	$r5,$r0,196(0xc4)
1c002330:	1c000004 	pcaddu12i	$r4,0
1c002334:	02955084 	addi.w	$r4,$r4,1364(0x554)
1c002338:	57efffff 	bl	-4100(0xfffeffc) # 1c001334 <myprintf>
1c00233c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c002340:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002344:	03808184 	ori	$r4,$r12,0x20
1c002348:	57f423ff 	bl	-3040(0xffff420) # 1c001768 <EXTI_ClearITPendingBit>
1c00234c:	03400000 	andi	$r0,$r0,0x0
1c002350:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002354:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002358:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00235c:	4c000020 	jirl	$r0,$r1,0

1c002360 <ext_handler>:
ext_handler():
1c002360:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002364:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002368:	29806076 	st.w	$r22,$r3,24(0x18)
1c00236c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002370:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002374:	0380f18c 	ori	$r12,$r12,0x3c
1c002378:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00237c:	2980018d 	st.w	$r13,$r12,0
1c002380:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002384:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c002388:	0283c005 	addi.w	$r5,$r0,240(0xf0)
1c00238c:	1c000004 	pcaddu12i	$r4,0
1c002390:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c002394:	57efa3ff 	bl	-4192(0xfffefa0) # 1c001334 <myprintf>
1c002398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00239c:	0380818c 	ori	$r12,$r12,0x20
1c0023a0:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0023a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023ac:	0380818c 	ori	$r12,$r12,0x20
1c0023b0:	2880018c 	ld.w	$r12,$r12,0
1c0023b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023bc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023c0:	0014b1ac 	and	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	03400000 	andi	$r0,$r0,0x0
1c0023cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0023d0:	50004000 	b	64(0x40) # 1c002410 <ext_handler+0xb0>
1c0023d4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023dc:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0023e0:	0340058c 	andi	$r12,$r12,0x1
1c0023e4:	40002180 	beqz	$r12,32(0x20) # 1c002404 <ext_handler+0xa4>
1c0023e8:	1c00000d 	pcaddu12i	$r13,0
1c0023ec:	0296b1ad 	addi.w	$r13,$r13,1452(0x5ac)
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0023f8:	001031ac 	add.w	$r12,$r13,$r12
1c0023fc:	2880018c 	ld.w	$r12,$r12,0
1c002400:	4c000181 	jirl	$r1,$r12,0
1c002404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002408:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00240c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002410:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002414:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002418:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0023d4 <ext_handler+0x74>
1c00241c:	03400000 	andi	$r0,$r0,0x0
1c002420:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002424:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002428:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00242c:	4c000020 	jirl	$r0,$r1,0

1c002430 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c002430:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002434:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002438:	29806076 	st.w	$r22,$r3,24(0x18)
1c00243c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002440:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002444:	0380f18c 	ori	$r12,$r12,0x3c
1c002448:	1400020d 	lu12i.w	$r13,16(0x10)
1c00244c:	2980018d 	st.w	$r13,$r12,0
1c002450:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002454:	0380118c 	ori	$r12,$r12,0x4
1c002458:	2880018c 	ld.w	$r12,$r12,0
1c00245c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002460:	57f347ff 	bl	-3260(0xffff344) # 1c0017a4 <WDG_DogFeed>
1c002464:	03400000 	andi	$r0,$r0,0x0
1c002468:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00246c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002470:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002474:	4c000020 	jirl	$r0,$r1,0

1c002478 <TOUCH>:
TOUCH():
1c002478:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00247c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002480:	29806076 	st.w	$r22,$r3,24(0x18)
1c002484:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002488:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00248c:	0380118c 	ori	$r12,$r12,0x4
1c002490:	2880018c 	ld.w	$r12,$r12,0
1c002494:	0044c18c 	srli.w	$r12,$r12,0x10
1c002498:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00249c:	037ffd8c 	andi	$r12,$r12,0xfff
1c0024a0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0024a4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0024a8:	0380118c 	ori	$r12,$r12,0x4
1c0024ac:	2880018c 	ld.w	$r12,$r12,0
1c0024b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024b4:	03403d8c 	andi	$r12,$r12,0xf
1c0024b8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0024bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024c0:	0380f18c 	ori	$r12,$r12,0x3c
1c0024c4:	1400040d 	lu12i.w	$r13,32(0x20)
1c0024c8:	2980018d 	st.w	$r13,$r12,0
1c0024cc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0024d0:	0380118c 	ori	$r12,$r12,0x4
1c0024d4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0024d8:	2980018d 	st.w	$r13,$r12,0
1c0024dc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0024e0:	00150185 	move	$r5,$r12
1c0024e4:	1c000004 	pcaddu12i	$r4,0
1c0024e8:	028fa084 	addi.w	$r4,$r4,1000(0x3e8)
1c0024ec:	57ee4bff 	bl	-4536(0xfffee48) # 1c001334 <myprintf>
1c0024f0:	03400000 	andi	$r0,$r0,0x0
1c0024f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0024f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0024fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002500:	4c000020 	jirl	$r0,$r1,0

1c002504 <UART2_INT>:
UART2_INT():
1c002504:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002508:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00250c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002510:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002514:	0380f18c 	ori	$r12,$r12,0x3c
1c002518:	1400080d 	lu12i.w	$r13,64(0x40)
1c00251c:	2980018d 	st.w	$r13,$r12,0
1c002520:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002524:	0380098c 	ori	$r12,$r12,0x2
1c002528:	2a00018c 	ld.bu	$r12,$r12,0
1c00252c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002530:	03400000 	andi	$r0,$r0,0x0
1c002534:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002538:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00253c:	4c000020 	jirl	$r0,$r1,0

1c002540 <BAT_FAIL>:
BAT_FAIL():
1c002540:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002544:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002548:	29806076 	st.w	$r22,$r3,24(0x18)
1c00254c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002550:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002554:	0380118c 	ori	$r12,$r12,0x4
1c002558:	2880018c 	ld.w	$r12,$r12,0
1c00255c:	0044cd8c 	srli.w	$r12,$r12,0x13
1c002560:	03407d8c 	andi	$r12,$r12,0x1f
1c002564:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00256c:	0380118c 	ori	$r12,$r12,0x4
1c002570:	2880018e 	ld.w	$r14,$r12,0
1c002574:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002578:	0380f18c 	ori	$r12,$r12,0x3c
1c00257c:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c002580:	0014b5cd 	and	$r13,$r14,$r13
1c002584:	2980018d 	st.w	$r13,$r12,0
1c002588:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00258c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c002590:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c002600 <BAT_FAIL+0xc0>
1c002594:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002598:	0040898d 	slli.w	$r13,$r12,0x2
1c00259c:	1c00000c 	pcaddu12i	$r12,0
1c0025a0:	0291e18c 	addi.w	$r12,$r12,1144(0x478)
1c0025a4:	001031ac 	add.w	$r12,$r13,$r12
1c0025a8:	2880018c 	ld.w	$r12,$r12,0
1c0025ac:	4c000180 	jirl	$r0,$r12,0
1c0025b0:	1c000004 	pcaddu12i	$r4,0
1c0025b4:	028cf084 	addi.w	$r4,$r4,828(0x33c)
1c0025b8:	57ed7fff 	bl	-4740(0xfffed7c) # 1c001334 <myprintf>
1c0025bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025c0:	0380118c 	ori	$r12,$r12,0x4
1c0025c4:	29800180 	st.w	$r0,$r12,0
1c0025c8:	50003c00 	b	60(0x3c) # 1c002604 <BAT_FAIL+0xc4>
1c0025cc:	1c000004 	pcaddu12i	$r4,0
1c0025d0:	028d2084 	addi.w	$r4,$r4,840(0x348)
1c0025d4:	57ed63ff 	bl	-4768(0xfffed60) # 1c001334 <myprintf>
1c0025d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025dc:	0380118c 	ori	$r12,$r12,0x4
1c0025e0:	2880018e 	ld.w	$r14,$r12,0
1c0025e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025e8:	0380118c 	ori	$r12,$r12,0x4
1c0025ec:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0025f0:	03bffdad 	ori	$r13,$r13,0xfff
1c0025f4:	0014b5cd 	and	$r13,$r14,$r13
1c0025f8:	2980018d 	st.w	$r13,$r12,0
1c0025fc:	50000800 	b	8(0x8) # 1c002604 <BAT_FAIL+0xc4>
1c002600:	03400000 	andi	$r0,$r0,0x0
1c002604:	03400000 	andi	$r0,$r0,0x0
1c002608:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00260c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002610:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002614:	4c000020 	jirl	$r0,$r1,0

1c002618 <intc_handler>:
intc_handler():
1c002618:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00261c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002620:	29806076 	st.w	$r22,$r3,24(0x18)
1c002624:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002628:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00262c:	0380158c 	ori	$r12,$r12,0x5
1c002630:	2a00018c 	ld.bu	$r12,$r12,0
1c002634:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002638:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00263c:	0340058c 	andi	$r12,$r12,0x1
1c002640:	40002980 	beqz	$r12,40(0x28) # 1c002668 <intc_handler+0x50>
1c002644:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002648:	57f18bff 	bl	-3704(0xffff188) # 1c0017d0 <TIM_GetITStatus>
1c00264c:	0015008c 	move	$r12,$r4
1c002650:	40001980 	beqz	$r12,24(0x18) # 1c002668 <intc_handler+0x50>
1c002654:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002658:	57f1c7ff 	bl	-3644(0xffff1c4) # 1c00181c <TIM_ClearIT>
1c00265c:	1c000004 	pcaddu12i	$r4,0
1c002660:	028b7084 	addi.w	$r4,$r4,732(0x2dc)
1c002664:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c001334 <myprintf>
1c002668:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00266c:	0340118c 	andi	$r12,$r12,0x4
1c002670:	40003580 	beqz	$r12,52(0x34) # 1c0026a4 <intc_handler+0x8c>
1c002674:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002678:	2a00018c 	ld.bu	$r12,$r12,0
1c00267c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002680:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002684:	00150185 	move	$r5,$r12
1c002688:	1c000004 	pcaddu12i	$r4,0
1c00268c:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c002690:	57eca7ff 	bl	-4956(0xfffeca4) # 1c001334 <myprintf>
1c002694:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002698:	03800d8c 	ori	$r12,$r12,0x3
1c00269c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0026a0:	2900018d 	st.b	$r13,$r12,0
1c0026a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026a8:	0340218c 	andi	$r12,$r12,0x8
1c0026ac:	40002d80 	beqz	$r12,44(0x2c) # 1c0026d8 <intc_handler+0xc0>
1c0026b0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0026b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0026b8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0026bc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0026c0:	00150184 	move	$r4,$r12
1c0026c4:	57f1b7ff 	bl	-3660(0xffff1b4) # 1c001878 <recv_dat_int>
1c0026c8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0026cc:	03800d8c 	ori	$r12,$r12,0x3
1c0026d0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0026d4:	2900018d 	st.b	$r13,$r12,0
1c0026d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0026dc:	03800d8c 	ori	$r12,$r12,0x3
1c0026e0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0026e4:	2900018d 	st.b	$r13,$r12,0
1c0026e8:	03400000 	andi	$r0,$r0,0x0
1c0026ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026f8:	4c000020 	jirl	$r0,$r1,0

1c0026fc <TIMER_HANDLER>:
TIMER_HANDLER():
1c0026fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002700:	29803061 	st.w	$r1,$r3,12(0xc)
1c002704:	29802076 	st.w	$r22,$r3,8(0x8)
1c002708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00270c:	57f03bff 	bl	-4040(0xffff038) # 1c001744 <Set_Timer_clear>
1c002710:	1c000004 	pcaddu12i	$r4,0
1c002714:	02899084 	addi.w	$r4,$r4,612(0x264)
1c002718:	57ec1fff 	bl	-5092(0xfffec1c) # 1c001334 <myprintf>
1c00271c:	57f00bff 	bl	-4088(0xffff008) # 1c001724 <Set_Timer_stop>
1c002720:	03400000 	andi	$r0,$r0,0x0
1c002724:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002728:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00272c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002730:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002734 <Ext_IrqHandle-0x260>:
1c002734:	1c001554 	pcaddu12i	$r20,170(0xaa)
1c002738:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00273c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002740:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002744:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002748:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00274c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002750:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002754:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002758:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00275c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002760:	1c00156c 	pcaddu12i	$r12,171(0xab)
1c002764:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002768:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c00276c:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002770:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002774:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002778:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c00277c:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002780:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002784:	1c0015f4 	pcaddu12i	$r20,175(0xaf)
1c002788:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00278c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002790:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002794:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002798:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00279c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027a0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027a4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027a8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027ac:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027b0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027b4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027b8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027bc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027c0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027c4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027c8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027cc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027d0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027d4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027d8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027dc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027e0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027e4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027e8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027ec:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027f0:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027f4:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027f8:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c0027fc:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002800:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002804:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002808:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00280c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002810:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002814:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002818:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00281c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002820:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002824:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002828:	1c0014e4 	pcaddu12i	$r4,167(0xa7)
1c00282c:	1c00140c 	pcaddu12i	$r12,160(0xa0)
1c002830:	1c001474 	pcaddu12i	$r20,163(0xa3)
1c002834:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002838:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00283c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002840:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002844:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002848:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00284c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002850:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002854:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002858:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00285c:	1c0014ac 	pcaddu12i	$r12,165(0xa5)
1c002860:	1c00151c 	pcaddu12i	$r28,168(0xa8)
1c002864:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002868:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00286c:	1c0013e0 	pcaddu12i	$r0,159(0x9f)
1c002870:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002874:	1c00143c 	pcaddu12i	$r28,161(0xa1)
1c002878:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c00287c:	1c001670 	pcaddu12i	$r16,179(0xb3)
1c002880:	1c00151c 	pcaddu12i	$r28,168(0xa8)
1c002884:	3c200a0d 	0x3c200a0d
1c002888:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0194a8 <_sidata+0x16744>
1c00288c:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c002890:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe48f4 <_start-0x1b70c>
1c002894:	3a636e75 	0x3a636e75
1c002898:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00289c:	0a0d3e20 	0x0a0d3e20
1c0028a0:	00000000 	0x00000000
1c0028a4:	2e2e2e0a 	0x2e2e2e0a
1c0028a8:	2e2e2e2e 	0x2e2e2e2e
1c0028ac:	2e2e2e2e 	0x2e2e2e2e
1c0028b0:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c0028b4:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c198808 <_sidata+0x195aa4>
1c0028b8:	2e2e544e 	0x2e2e544e
1c0028bc:	2e2e2e2e 	0x2e2e2e2e
1c0028c0:	2e2e2e2e 	0x2e2e2e2e
1c0028c4:	2e2e2e2e 	0x2e2e2e2e
1c0028c8:	00000d0a 	0x00000d0a
1c0028cc:	2d2d2d0a 	0x2d2d2d0a
1c0028d0:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bff9e3c <_start-0x61c4>
1c0028d4:	746e4968 	0x746e4968
1c0028d8:	79654b3a 	0x79654b3a
1c0028dc:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe8a44 <_start-0x175bc>
1c0028e0:	3a6c656e 	0x3a6c656e
1c0028e4:	78257830 	0x78257830
1c0028e8:	0000000a 	0x0000000a
1c0028ec:	2e2e2e0a 	0x2e2e2e0a
1c0028f0:	2e2e2e2e 	0x2e2e2e2e
1c0028f4:	2e2e2e2e 	0x2e2e2e2e
1c0028f8:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396b24 <_sidata+0x393dc0>
1c0028fc:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd16f58 <_start-0x2e90a8>
1c002900:	2e2e4c49 	0x2e2e4c49
1c002904:	2e2e2e2e 	0x2e2e2e2e
1c002908:	2e2e2e2e 	0x2e2e2e2e
1c00290c:	2e2e2e2e 	0x2e2e2e2e
1c002910:	00000d0a 	0x00000d0a
1c002914:	2e2e2e0a 	0x2e2e2e0a
1c002918:	2e2e2e2e 	0x2e2e2e2e
1c00291c:	2e2e2e2e 	0x2e2e2e2e
1c002920:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c386a4c <_sidata+0x383ce8>
1c002924:	2e2e2e43 	0x2e2e2e43
1c002928:	2e2e2e2e 	0x2e2e2e2e
1c00292c:	2e2e2e2e 	0x2e2e2e2e
1c002930:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c002934:	0000000d 	0x0000000d
1c002938:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c019b9c <_sidata+0x16e38>
1c00293c:	72656870 	0x72656870
1c002940:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c002944:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c0196ac <_sidata+0x16948>
1c002948:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c008c68 <_sidata+0x5f04>
1c00294c:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c002950:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c019dbc <_sidata+0x17058>
1c002954:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c002958:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00295c:	00000000 	0x00000000
1c002960:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c002964:	65722031 	bge	$r1,$r17,94752(0x17220) # 1c019b84 <_sidata+0x16e20>
1c002968:	303a7663 	0x303a7663
1c00296c:	0a782578 	0x0a782578
1c002970:	00000000 	0x00000000
1c002974:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c019be0 <_sidata+0x16e7c>
1c002978:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c0192cc <_sidata+0x16568>
1c00297c:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff49ec <_start-0xb614>
1c002980:	7261656c 	0x7261656c
1c002984:	746e6920 	0x746e6920
1c002988:	75727265 	0x75727265
1c00298c:	2e2e7470 	0x2e2e7470
1c002990:	0000000a 	0x0000000a

1c002994 <Ext_IrqHandle>:
1c002994:	1c0019e0 	pcaddu12i	$r0,207(0xcf)
1c002998:	1c001a2c 	pcaddu12i	$r12,209(0xd1)
1c00299c:	1c001a78 	pcaddu12i	$r24,211(0xd3)
1c0029a0:	1c001ac4 	pcaddu12i	$r4,214(0xd6)
1c0029a4:	1c001b10 	pcaddu12i	$r16,216(0xd8)
1c0029a8:	1c001b5c 	pcaddu12i	$r28,218(0xda)
1c0029ac:	1c001ba8 	pcaddu12i	$r8,221(0xdd)
1c0029b0:	1c001bf4 	pcaddu12i	$r20,223(0xdf)
1c0029b4:	1c001c40 	pcaddu12i	$r0,226(0xe2)
1c0029b8:	1c001c8c 	pcaddu12i	$r12,228(0xe4)
1c0029bc:	1c001cd8 	pcaddu12i	$r24,230(0xe6)
1c0029c0:	1c001d24 	pcaddu12i	$r4,233(0xe9)
1c0029c4:	1c001d70 	pcaddu12i	$r16,235(0xeb)
1c0029c8:	1c001dbc 	pcaddu12i	$r28,237(0xed)
1c0029cc:	1c001e08 	pcaddu12i	$r8,240(0xf0)
1c0029d0:	1c001e54 	pcaddu12i	$r20,242(0xf2)
1c0029d4:	1c001ea0 	pcaddu12i	$r0,245(0xf5)
1c0029d8:	1c001eec 	pcaddu12i	$r12,247(0xf7)
1c0029dc:	1c001f38 	pcaddu12i	$r24,249(0xf9)
1c0029e0:	1c001f84 	pcaddu12i	$r4,252(0xfc)
1c0029e4:	1c001fd0 	pcaddu12i	$r16,254(0xfe)
1c0029e8:	1c00201c 	pcaddu12i	$r28,256(0x100)
1c0029ec:	1c002068 	pcaddu12i	$r8,259(0x103)
1c0029f0:	1c0020b4 	pcaddu12i	$r20,261(0x105)
1c0029f4:	1c002100 	pcaddu12i	$r0,264(0x108)
1c0029f8:	1c00214c 	pcaddu12i	$r12,266(0x10a)
1c0029fc:	1c002198 	pcaddu12i	$r24,268(0x10c)
1c002a00:	1c0021e4 	pcaddu12i	$r4,271(0x10f)
1c002a04:	1c002230 	pcaddu12i	$r16,273(0x111)
1c002a08:	1c00227c 	pcaddu12i	$r28,275(0x113)
1c002a0c:	1c0022c8 	pcaddu12i	$r8,278(0x116)
1c002a10:	1c002314 	pcaddu12i	$r20,280(0x118)
1c002a14:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a18:	1c0025b0 	pcaddu12i	$r16,301(0x12d)
1c002a1c:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a20:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a24:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a28:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a2c:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a30:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a34:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a38:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a3c:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a40:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a44:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a48:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a4c:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a50:	1c002600 	pcaddu12i	$r0,304(0x130)
1c002a54:	1c0025cc 	pcaddu12i	$r12,302(0x12e)

1c002a58 <__FUNCTION__.1504>:
1c002a58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ed0 <_sidata+0x1716c>
1c002a5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ac0 <_sidata+0x16d5c>
1c002a60:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5ac0 <_start-0xa540>
1c002a64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bd4 <_start-0x642c>
1c002a68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098c8 <_sidata+0x6b64>
1c002a6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a70 <__FUNCTION__.1508>:
1c002a70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ee8 <_sidata+0x17184>
1c002a74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ad8 <_sidata+0x16d74>
1c002a78:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff5bd8 <_start-0xa428>
1c002a7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9bec <_start-0x6414>
1c002a80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098e0 <_sidata+0x6b7c>
1c002a84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002a88 <__FUNCTION__.1512>:
1c002a88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f00 <_sidata+0x1719c>
1c002a8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019af0 <_sidata+0x16d8c>
1c002a90:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff5cf0 <_start-0xa310>
1c002a94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c04 <_start-0x63fc>
1c002a98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0098f8 <_sidata+0x6b94>
1c002a9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002aa0 <__FUNCTION__.1516>:
1c002aa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f18 <_sidata+0x171b4>
1c002aa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b08 <_sidata+0x16da4>
1c002aa8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff5e08 <_start-0xa1f8>
1c002aac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c1c <_start-0x63e4>
1c002ab0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009910 <_sidata+0x6bac>
1c002ab4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ab8 <__FUNCTION__.1520>:
1c002ab8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f30 <_sidata+0x171cc>
1c002abc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b20 <_sidata+0x16dbc>
1c002ac0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff5f20 <_start-0xa0e0>
1c002ac4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c34 <_start-0x63cc>
1c002ac8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009928 <_sidata+0x6bc4>
1c002acc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ad0 <__FUNCTION__.1524>:
1c002ad0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f48 <_sidata+0x171e4>
1c002ad4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b38 <_sidata+0x16dd4>
1c002ad8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff6038 <_start-0x9fc8>
1c002adc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c4c <_start-0x63b4>
1c002ae0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009940 <_sidata+0x6bdc>
1c002ae4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ae8 <__FUNCTION__.1528>:
1c002ae8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f60 <_sidata+0x171fc>
1c002aec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b50 <_sidata+0x16dec>
1c002af0:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff6150 <_start-0x9eb0>
1c002af4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c64 <_start-0x639c>
1c002af8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009958 <_sidata+0x6bf4>
1c002afc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b00 <__FUNCTION__.1532>:
1c002b00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f78 <_sidata+0x17214>
1c002b04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b68 <_sidata+0x16e04>
1c002b08:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff6268 <_start-0x9d98>
1c002b0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c7c <_start-0x6384>
1c002b10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009970 <_sidata+0x6c0c>
1c002b14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b18 <__FUNCTION__.1536>:
1c002b18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019f90 <_sidata+0x1722c>
1c002b1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b80 <_sidata+0x16e1c>
1c002b20:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5b80 <_start-0xa480>
1c002b24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9c94 <_start-0x636c>
1c002b28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009988 <_sidata+0x6c24>
1c002b2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b30 <__FUNCTION__.1540>:
1c002b30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fa8 <_sidata+0x17244>
1c002b34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019b98 <_sidata+0x16e34>
1c002b38:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff5c98 <_start-0xa368>
1c002b3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cac <_start-0x6354>
1c002b40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099a0 <_sidata+0x6c3c>
1c002b44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b48 <__FUNCTION__.1544>:
1c002b48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fc0 <_sidata+0x1725c>
1c002b4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bb0 <_sidata+0x16e4c>
1c002b50:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff5db0 <_start-0xa250>
1c002b54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cc4 <_start-0x633c>
1c002b58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099b8 <_sidata+0x6c54>
1c002b5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b60 <__FUNCTION__.1548>:
1c002b60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019fd8 <_sidata+0x17274>
1c002b64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bc8 <_sidata+0x16e64>
1c002b68:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff5ec8 <_start-0xa138>
1c002b6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cdc <_start-0x6324>
1c002b70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099d0 <_sidata+0x6c6c>
1c002b74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b78 <__FUNCTION__.1552>:
1c002b78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c019ff0 <_sidata+0x1728c>
1c002b7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019be0 <_sidata+0x16e7c>
1c002b80:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff5fe0 <_start-0xa020>
1c002b84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9cf4 <_start-0x630c>
1c002b88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0099e8 <_sidata+0x6c84>
1c002b8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002b90 <__FUNCTION__.1556>:
1c002b90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a008 <_sidata+0x172a4>
1c002b94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019bf8 <_sidata+0x16e94>
1c002b98:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff60f8 <_start-0x9f08>
1c002b9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d0c <_start-0x62f4>
1c002ba0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a00 <_sidata+0x6c9c>
1c002ba4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ba8 <__FUNCTION__.1560>:
1c002ba8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a020 <_sidata+0x172bc>
1c002bac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c10 <_sidata+0x16eac>
1c002bb0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff6210 <_start-0x9df0>
1c002bb4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d24 <_start-0x62dc>
1c002bb8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a18 <_sidata+0x6cb4>
1c002bbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bc0 <__FUNCTION__.1564>:
1c002bc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a038 <_sidata+0x172d4>
1c002bc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c28 <_sidata+0x16ec4>
1c002bc8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff6328 <_start-0x9cd8>
1c002bcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d3c <_start-0x62c4>
1c002bd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a30 <_sidata+0x6ccc>
1c002bd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bd8 <__FUNCTION__.1568>:
1c002bd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a050 <_sidata+0x172ec>
1c002bdc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c40 <_sidata+0x16edc>
1c002be0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff5c40 <_start-0xa3c0>
1c002be4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d54 <_start-0x62ac>
1c002be8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a48 <_sidata+0x6ce4>
1c002bec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002bf0 <__FUNCTION__.1572>:
1c002bf0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a068 <_sidata+0x17304>
1c002bf4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c58 <_sidata+0x16ef4>
1c002bf8:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff5d58 <_start-0xa2a8>
1c002bfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d6c <_start-0x6294>
1c002c00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a60 <_sidata+0x6cfc>
1c002c04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c08 <__FUNCTION__.1576>:
1c002c08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a080 <_sidata+0x1731c>
1c002c0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c70 <_sidata+0x16f0c>
1c002c10:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff5e70 <_start-0xa190>
1c002c14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d84 <_start-0x627c>
1c002c18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a78 <_sidata+0x6d14>
1c002c1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c20 <__FUNCTION__.1580>:
1c002c20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a098 <_sidata+0x17334>
1c002c24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019c88 <_sidata+0x16f24>
1c002c28:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff5f88 <_start-0xa078>
1c002c2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9d9c <_start-0x6264>
1c002c30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009a90 <_sidata+0x6d2c>
1c002c34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c38 <__FUNCTION__.1584>:
1c002c38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0b0 <_sidata+0x1734c>
1c002c3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ca0 <_sidata+0x16f3c>
1c002c40:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff60a0 <_start-0x9f60>
1c002c44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9db4 <_start-0x624c>
1c002c48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009aa8 <_sidata+0x6d44>
1c002c4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c50 <__FUNCTION__.1588>:
1c002c50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0c8 <_sidata+0x17364>
1c002c54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cb8 <_sidata+0x16f54>
1c002c58:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff61b8 <_start-0x9e48>
1c002c5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dcc <_start-0x6234>
1c002c60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ac0 <_sidata+0x6d5c>
1c002c64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c68 <__FUNCTION__.1592>:
1c002c68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0e0 <_sidata+0x1737c>
1c002c6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019cd0 <_sidata+0x16f6c>
1c002c70:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff62d0 <_start-0x9d30>
1c002c74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9de4 <_start-0x621c>
1c002c78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ad8 <_sidata+0x6d74>
1c002c7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c80 <__FUNCTION__.1596>:
1c002c80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a0f8 <_sidata+0x17394>
1c002c84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ce8 <_sidata+0x16f84>
1c002c88:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff63e8 <_start-0x9c18>
1c002c8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9dfc <_start-0x6204>
1c002c90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009af0 <_sidata+0x6d8c>
1c002c94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002c98 <__FUNCTION__.1600>:
1c002c98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a110 <_sidata+0x173ac>
1c002c9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d00 <_sidata+0x16f9c>
1c002ca0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff5d04 <_start-0xa2fc>
1c002ca4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e14 <_start-0x61ec>
1c002ca8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b08 <_sidata+0x6da4>
1c002cac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cb0 <__FUNCTION__.1604>:
1c002cb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a128 <_sidata+0x173c4>
1c002cb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d18 <_sidata+0x16fb4>
1c002cb8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff5e1c <_start-0xa1e4>
1c002cbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e2c <_start-0x61d4>
1c002cc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b20 <_sidata+0x6dbc>
1c002cc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cc8 <__FUNCTION__.1608>:
1c002cc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a140 <_sidata+0x173dc>
1c002ccc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d30 <_sidata+0x16fcc>
1c002cd0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff5f34 <_start-0xa0cc>
1c002cd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e44 <_start-0x61bc>
1c002cd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b38 <_sidata+0x6dd4>
1c002cdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ce0 <__FUNCTION__.1612>:
1c002ce0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a158 <_sidata+0x173f4>
1c002ce4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d48 <_sidata+0x16fe4>
1c002ce8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff604c <_start-0x9fb4>
1c002cec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e5c <_start-0x61a4>
1c002cf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b50 <_sidata+0x6dec>
1c002cf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002cf8 <__FUNCTION__.1616>:
1c002cf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a170 <_sidata+0x1740c>
1c002cfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d60 <_sidata+0x16ffc>
1c002d00:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff6164 <_start-0x9e9c>
1c002d04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e74 <_start-0x618c>
1c002d08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b68 <_sidata+0x6e04>
1c002d0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d10 <__FUNCTION__.1620>:
1c002d10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a188 <_sidata+0x17424>
1c002d14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d78 <_sidata+0x17014>
1c002d18:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff627c <_start-0x9d84>
1c002d1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9e8c <_start-0x6174>
1c002d20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b80 <_sidata+0x6e1c>
1c002d24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d28 <__FUNCTION__.1624>:
1c002d28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1a0 <_sidata+0x1743c>
1c002d2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019d90 <_sidata+0x1702c>
1c002d30:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff6394 <_start-0x9c6c>
1c002d34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ea4 <_start-0x615c>
1c002d38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009b98 <_sidata+0x6e34>
1c002d3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d40 <__FUNCTION__.1628>:
1c002d40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a1b8 <_sidata+0x17454>
1c002d44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019da8 <_sidata+0x17044>
1c002d48:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff64ac <_start-0x9b54>
1c002d4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bff9ebc <_start-0x6144>
1c002d50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009bb0 <_sidata+0x6e4c>
1c002d54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002d58 <__FUNCTION__.1637>:
1c002d58:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffa1d0 <_start-0x5e30>
1c002d5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009bbc <_sidata+0x6e58>
1c002d60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .bss.g_recv_flag:

80000000 <g_recv_flag>:
80000000:	00000000 	0x00000000

Disassembly of section .bss.g_recvBuff:

80000004 <g_recvBuff>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
