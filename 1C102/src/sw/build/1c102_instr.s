
1c102_instr.elf:     file format elf32-loongarch
1c102_instr.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438012f 	lu12i.w	$r15,114697(0x1c009)
1c00000c:	038a21ef 	ori	$r15,$r15,0x288
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
1c000030:	038031ef 	ori	$r15,$r15,0xc
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
1c0000a0:	5445dc00 	bl	17884(0x45dc) # 1c00467c <main>
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
1c001090:	5467cc00 	bl	26572(0x67cc) # 1c00785c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54680c00 	bl	26636(0x680c) # 1c0078a4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54689000 	bl	26768(0x6890) # 1c007930 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5468c400 	bl	26820(0x68c4) # 1c00796c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5466dc00 	bl	26332(0x66dc) # 1c00778c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	546a7000 	bl	27248(0x6a70) # 1c007b28 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54697c00 	bl	27004(0x697c) # 1c007a44 <intc_handler>
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

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b5f084 	ld.w	$r4,$r4,-644(0xd7c)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c00132c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001330:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001334:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001338:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00133c:	001500ac 	move	$r12,$r5
1c001340:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001344:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c001348:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00134c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001350:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c001354:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001358:	2880018c 	ld.w	$r12,$r12,0
1c00135c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001360:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001364:	50006c00 	b	108(0x6c) # 1c0013d0 <AFIO_RemapConfig+0xa4>
1c001368:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00136c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001370:	001831ac 	sra.w	$r12,$r13,$r12
1c001374:	0340058c 	andi	$r12,$r12,0x1
1c001378:	40004d80 	beqz	$r12,76(0x4c) # 1c0013c4 <AFIO_RemapConfig+0x98>
1c00137c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001380:	0040858c 	slli.w	$r12,$r12,0x1
1c001384:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001388:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00138c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001390:	001731ac 	sll.w	$r12,$r13,$r12
1c001394:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001398:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00139c:	0014300c 	nor	$r12,$r0,$r12
1c0013a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013a4:	0014b1ac 	and	$r12,$r13,$r12
1c0013a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0013ac:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0013b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0013b4:	001731ac 	sll.w	$r12,$r13,$r12
1c0013b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013bc:	001531ac 	or	$r12,$r13,$r12
1c0013c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0013c4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0013c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0013cc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0013d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0013d4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0013d8:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001368 <AFIO_RemapConfig+0x3c>
1c0013dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0013e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013e4:	2980018d 	st.w	$r13,$r12,0
1c0013e8:	03400000 	andi	$r0,$r0,0x0
1c0013ec:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0013f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0013f4:	4c000020 	jirl	$r0,$r1,0

1c0013f8 <Spi_Write_Read_1to4>:
Spi_Write_Read_1to4():
1c0013f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0013fc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001400:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001404:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001408:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00140c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001410:	50002800 	b	40(0x28) # 1c001438 <Spi_Write_Read_1to4+0x40>
1c001414:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00141c:	001031ad 	add.w	$r13,$r13,$r12
1c001420:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001424:	2a0001ad 	ld.bu	$r13,$r13,0
1c001428:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00142c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001438:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00143c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001440:	6bffd5ac 	bltu	$r13,$r12,-44(0x3ffd4) # 1c001414 <Spi_Write_Read_1to4+0x1c>
1c001444:	03400000 	andi	$r0,$r0,0x0
1c001448:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00144c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001450:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001454:	0340118c 	andi	$r12,$r12,0x4
1c001458:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001448 <Spi_Write_Read_1to4+0x50>
1c00145c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001460:	50002c00 	b	44(0x2c) # 1c00148c <Spi_Write_Read_1to4+0x94>
1c001464:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c001468:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00146c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001470:	001031cc 	add.w	$r12,$r14,$r12
1c001474:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c001478:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00147c:	2900018d 	st.b	$r13,$r12,0
1c001480:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001484:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001488:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00148c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001490:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001494:	0015018d 	move	$r13,$r12
1c001498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00149c:	6bffc98d 	bltu	$r12,$r13,-56(0x3ffc8) # 1c001464 <Spi_Write_Read_1to4+0x6c>
1c0014a0:	03400000 	andi	$r0,$r0,0x0
1c0014a4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0014a8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0014ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0014b0:	0340058c 	andi	$r12,$r12,0x1
1c0014b4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0014a4 <Spi_Write_Read_1to4+0xac>
1c0014b8:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c0014bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0014c0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0014c4:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0014c8:	001031cc 	add.w	$r12,$r14,$r12
1c0014cc:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c0014d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0014d4:	2900018d 	st.b	$r13,$r12,0
1c0014d8:	03400000 	andi	$r0,$r0,0x0
1c0014dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0014e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0014e4:	4c000020 	jirl	$r0,$r1,0

1c0014e8 <Spi_Write_Read_N>:
Spi_Write_Read_N():
1c0014e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014ec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014f8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0014fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001500:	50002800 	b	40(0x28) # 1c001528 <Spi_Write_Read_N+0x40>
1c001504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00150c:	001031ad 	add.w	$r13,$r13,$r12
1c001510:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001514:	2a0001ad 	ld.bu	$r13,$r13,0
1c001518:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00151c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001520:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001524:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001528:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00152c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001530:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c001504 <Spi_Write_Read_N+0x1c>
1c001534:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001538:	50006800 	b	104(0x68) # 1c0015a0 <Spi_Write_Read_N+0xb8>
1c00153c:	03400000 	andi	$r0,$r0,0x0
1c001540:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001544:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001548:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00154c:	0340058c 	andi	$r12,$r12,0x1
1c001550:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c001540 <Spi_Write_Read_N+0x58>
1c001554:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c001558:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00155c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001560:	001031cc 	add.w	$r12,$r14,$r12
1c001564:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c001568:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00156c:	2900018d 	st.b	$r13,$r12,0
1c001570:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001574:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001578:	001031ad 	add.w	$r13,$r13,$r12
1c00157c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001580:	2a0001ad 	ld.bu	$r13,$r13,0
1c001584:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00158c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001590:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001598:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00159c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0015a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0015a8:	6bff95ac 	bltu	$r13,$r12,-108(0x3ff94) # 1c00153c <Spi_Write_Read_N+0x54>
1c0015ac:	50004400 	b	68(0x44) # 1c0015f0 <Spi_Write_Read_N+0x108>
1c0015b0:	03400000 	andi	$r0,$r0,0x0
1c0015b4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0015b8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0015bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015c0:	0340058c 	andi	$r12,$r12,0x1
1c0015c4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0015b4 <Spi_Write_Read_N+0xcc>
1c0015c8:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c0015cc:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0015d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015d4:	001031cc 	add.w	$r12,$r14,$r12
1c0015d8:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c0015dc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0015e0:	2900018d 	st.b	$r13,$r12,0
1c0015e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0015f4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0015f8:	6bffb9ac 	bltu	$r13,$r12,-72(0x3ffb8) # 1c0015b0 <Spi_Write_Read_N+0xc8>
1c0015fc:	03400000 	andi	$r0,$r0,0x0
1c001600:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001604:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001608:	4c000020 	jirl	$r0,$r1,0

1c00160c <Spi_Cs_Down>:
Spi_Cs_Down():
1c00160c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001610:	29803076 	st.w	$r22,$r3,12(0xc)
1c001614:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001618:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00161c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001620:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001624:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001628:	038005ad 	ori	$r13,$r13,0x1
1c00162c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001630:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001634:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001638:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00163c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001640:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001644:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c001648:	0014b5cd 	and	$r13,$r14,$r13
1c00164c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001650:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001654:	03400000 	andi	$r0,$r0,0x0
1c001658:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00165c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001660:	4c000020 	jirl	$r0,$r1,0

1c001664 <Spi_Cs_Up>:
Spi_Cs_Up():
1c001664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001668:	29803076 	st.w	$r22,$r3,12(0xc)
1c00166c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001670:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001674:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001678:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00167c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001680:	038005ad 	ori	$r13,$r13,0x1
1c001684:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001688:	2900158d 	st.b	$r13,$r12,5(0x5)
1c00168c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001690:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001694:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001698:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00169c:	038041ad 	ori	$r13,$r13,0x10
1c0016a0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0016a4:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0016a8:	03400000 	andi	$r0,$r0,0x0
1c0016ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0016b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0016b4:	4c000020 	jirl	$r0,$r1,0

1c0016b8 <Spiflash_Rdsr>:
Spiflash_Rdsr():
1c0016b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0016bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0016c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0016c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0016c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0016cc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0016d0:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0016d4:	57ff3bff 	bl	-200(0xfffff38) # 1c00160c <Spi_Cs_Down>
1c0016d8:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0016dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0016e0:	00150184 	move	$r4,$r12
1c0016e4:	57fd17ff 	bl	-748(0xffffd14) # 1c0013f8 <Spi_Write_Read_1to4>
1c0016e8:	57ff7fff 	bl	-132(0xfffff7c) # 1c001664 <Spi_Cs_Up>
1c0016ec:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0016f0:	00150184 	move	$r4,$r12
1c0016f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0016f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0016fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001700:	4c000020 	jirl	$r0,$r1,0

1c001704 <Spiflash_Wait_Wip_Zero>:
Spiflash_Wait_Wip_Zero():
1c001704:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001708:	29803061 	st.w	$r1,$r3,12(0xc)
1c00170c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001710:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001714:	03400000 	andi	$r0,$r0,0x0
1c001718:	57ffa3ff 	bl	-96(0xfffffa0) # 1c0016b8 <Spiflash_Rdsr>
1c00171c:	0015008c 	move	$r12,$r4
1c001720:	0340058c 	andi	$r12,$r12,0x1
1c001724:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001718 <Spiflash_Wait_Wip_Zero+0x14>
1c001728:	03400000 	andi	$r0,$r0,0x0
1c00172c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001730:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001734:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001738:	4c000020 	jirl	$r0,$r1,0

1c00173c <Spiflash_Wren>:
Spiflash_Wren():
1c00173c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001740:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001744:	29806076 	st.w	$r22,$r3,24(0x18)
1c001748:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00174c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001750:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c001754:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c001758:	57ffafff 	bl	-84(0xfffffac) # 1c001704 <Spiflash_Wait_Wip_Zero>
1c00175c:	57feb3ff 	bl	-336(0xffffeb0) # 1c00160c <Spi_Cs_Down>
1c001760:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c001764:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001768:	00150184 	move	$r4,$r12
1c00176c:	57fc8fff 	bl	-884(0xffffc8c) # 1c0013f8 <Spi_Write_Read_1to4>
1c001770:	57fef7ff 	bl	-268(0xffffef4) # 1c001664 <Spi_Cs_Up>
1c001774:	03400000 	andi	$r0,$r0,0x0
1c001778:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00177c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001780:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001784:	4c000020 	jirl	$r0,$r1,0

1c001788 <Spiflash_Rdid>:
Spiflash_Rdid():
1c001788:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00178c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001790:	29806076 	st.w	$r22,$r3,24(0x18)
1c001794:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001798:	02be400c 	addi.w	$r12,$r0,-112(0xf90)
1c00179c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0017a0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0017a4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0017a8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0017ac:	57fe63ff 	bl	-416(0xffffe60) # 1c00160c <Spi_Cs_Down>
1c0017b0:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0017b4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0017b8:	00150184 	move	$r4,$r12
1c0017bc:	57fc3fff 	bl	-964(0xffffc3c) # 1c0013f8 <Spi_Write_Read_1to4>
1c0017c0:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0017c4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0017c8:	00150184 	move	$r4,$r12
1c0017cc:	57fc2fff 	bl	-980(0xffffc2c) # 1c0013f8 <Spi_Write_Read_1to4>
1c0017d0:	57fe97ff 	bl	-364(0xffffe94) # 1c001664 <Spi_Cs_Up>
1c0017d4:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0017d8:	2a40018c 	ld.hu	$r12,$r12,0
1c0017dc:	00150184 	move	$r4,$r12
1c0017e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0017e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0017e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0017ec:	4c000020 	jirl	$r0,$r1,0

1c0017f0 <Spiflash_Block64k_Erase>:
Spiflash_Block64k_Erase():
1c0017f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0017f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0017fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001800:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001804:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001808:	02bf600c 	addi.w	$r12,$r0,-40(0xfd8)
1c00180c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c001810:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001814:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001818:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00181c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001820:	0044a18c 	srli.w	$r12,$r12,0x8
1c001824:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001828:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00182c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001830:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001834:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001838:	0044a18c 	srli.w	$r12,$r12,0x8
1c00183c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001840:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001844:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001848:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00184c:	57fef3ff 	bl	-272(0xffffef0) # 1c00173c <Spiflash_Wren>
1c001850:	57fdbfff 	bl	-580(0xffffdbc) # 1c00160c <Spi_Cs_Down>
1c001854:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c001858:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00185c:	00150184 	move	$r4,$r12
1c001860:	57fb9bff 	bl	-1128(0xffffb98) # 1c0013f8 <Spi_Write_Read_1to4>
1c001864:	57fe03ff 	bl	-512(0xffffe00) # 1c001664 <Spi_Cs_Up>
1c001868:	57fe9fff 	bl	-356(0xffffe9c) # 1c001704 <Spiflash_Wait_Wip_Zero>
1c00186c:	03400000 	andi	$r0,$r0,0x0
1c001870:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001874:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001878:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00187c:	4c000020 	jirl	$r0,$r1,0

1c001880 <Spiflash_Page_Program>:
Spiflash_Page_Program():
1c001880:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001884:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001888:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00188c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001890:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001894:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001898:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00189c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0018a0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018a4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0018a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0018b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018b8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0018bc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0018c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018c8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0018cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018d0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0018d4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0018d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018e0:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0018e4:	57fe5bff 	bl	-424(0xffffe58) # 1c00173c <Spiflash_Wren>
1c0018e8:	57fd27ff 	bl	-732(0xffffd24) # 1c00160c <Spi_Cs_Down>
1c0018ec:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0018f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0018f4:	00150184 	move	$r4,$r12
1c0018f8:	57fb03ff 	bl	-1280(0xffffb00) # 1c0013f8 <Spi_Write_Read_1to4>
1c0018fc:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c001900:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001904:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c0014e8 <Spi_Write_Read_N>
1c001908:	57fd5fff 	bl	-676(0xffffd5c) # 1c001664 <Spi_Cs_Up>
1c00190c:	57fdfbff 	bl	-520(0xffffdf8) # 1c001704 <Spiflash_Wait_Wip_Zero>
1c001910:	03400000 	andi	$r0,$r0,0x0
1c001914:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001918:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00191c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001920:	4c000020 	jirl	$r0,$r1,0

1c001924 <Spiflash_Read_Bytes>:
Spiflash_Read_Bytes():
1c001924:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001928:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00192c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001930:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001934:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001938:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00193c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001940:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001944:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001948:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00194c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001950:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001954:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001958:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00195c:	0044a18c 	srli.w	$r12,$r12,0x8
1c001960:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001964:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001968:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00196c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001970:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001974:	0044a18c 	srli.w	$r12,$r12,0x8
1c001978:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00197c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001980:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001984:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c001988:	57fc87ff 	bl	-892(0xffffc84) # 1c00160c <Spi_Cs_Down>
1c00198c:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c001990:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001994:	00150184 	move	$r4,$r12
1c001998:	57fa63ff 	bl	-1440(0xffffa60) # 1c0013f8 <Spi_Write_Read_1to4>
1c00199c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c0019a0:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c0019a4:	57fb47ff 	bl	-1212(0xffffb44) # 1c0014e8 <Spi_Write_Read_N>
1c0019a8:	57fcbfff 	bl	-836(0xffffcbc) # 1c001664 <Spi_Cs_Up>
1c0019ac:	03400000 	andi	$r0,$r0,0x0
1c0019b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0019b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0019b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019bc:	4c000020 	jirl	$r0,$r1,0

1c0019c0 <myputchar>:
myputchar():
1c0019c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0019c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019d0:	0015008c 	move	$r12,$r4
1c0019d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019dc:	00150185 	move	$r5,$r12
1c0019e0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0019e4:	54063c00 	bl	1596(0x63c) # 1c002020 <UART_SendData>
1c0019e8:	03400000 	andi	$r0,$r0,0x0
1c0019ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019f8:	4c000020 	jirl	$r0,$r1,0

1c0019fc <printbase>:
printbase():
1c0019fc:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001a00:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001a04:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001a08:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001a0c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001a10:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a14:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a18:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a1c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001a20:	40002580 	beqz	$r12,36(0x24) # 1c001a44 <printbase+0x48>
1c001a24:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a28:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a44 <printbase+0x48>
1c001a2c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a30:	0011300c 	sub.w	$r12,$r0,$r12
1c001a34:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a38:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a3c:	57ff87ff 	bl	-124(0xfffff84) # 1c0019c0 <myputchar>
1c001a40:	50000c00 	b	12(0xc) # 1c001a4c <printbase+0x50>
1c001a44:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a50:	50005000 	b	80(0x50) # 1c001aa0 <printbase+0xa4>
1c001a54:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a58:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a5c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a68 <printbase+0x6c>
1c001a64:	002a0007 	break	0x7
1c001a68:	00005dcc 	ext.w.b	$r12,$r14
1c001a6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a70:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a74:	001035cd 	add.w	$r13,$r14,$r13
1c001a78:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a7c:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a80:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a84:	002135cc 	div.wu	$r12,$r14,$r13
1c001a88:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a90 <printbase+0x94>
1c001a8c:	002a0007 	break	0x7
1c001a90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001aa0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001aa4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a54 <printbase+0x58>
1c001aa8:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001aac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ab0:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001ab4:	001231ad 	slt	$r13,$r13,$r12
1c001ab8:	0013b5ce 	masknez	$r14,$r14,$r13
1c001abc:	0013358c 	maskeqz	$r12,$r12,$r13
1c001ac0:	001531cc 	or	$r12,$r14,$r12
1c001ac4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ac8:	50007400 	b	116(0x74) # 1c001b3c <printbase+0x140>
1c001acc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ad4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001af0 <printbase+0xf4>
1c001ad8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001adc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ae0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001ae4:	001031ac 	add.w	$r12,$r13,$r12
1c001ae8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001aec:	50000800 	b	8(0x8) # 1c001af4 <printbase+0xf8>
1c001af0:	0015000c 	move	$r12,$r0
1c001af4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001af8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001afc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b00:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b18 <printbase+0x11c>
1c001b04:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b0c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b14:	50001400 	b	20(0x14) # 1c001b28 <printbase+0x12c>
1c001b18:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b20:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b28:	00150184 	move	$r4,$r12
1c001b2c:	57fe97ff 	bl	-364(0xffffe94) # 1c0019c0 <myputchar>
1c001b30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b38:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b3c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b40:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001acc <printbase+0xd0>
1c001b44:	0015000c 	move	$r12,$r0
1c001b48:	00150184 	move	$r4,$r12
1c001b4c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b50:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b54:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b58:	4c000020 	jirl	$r0,$r1,0

1c001b5c <puts>:
puts():
1c001b5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b70:	50003000 	b	48(0x30) # 1c001ba0 <puts+0x44>
1c001b74:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b78:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b7c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b88 <puts+0x2c>
1c001b80:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b84:	57fe3fff 	bl	-452(0xffffe3c) # 1c0019c0 <myputchar>
1c001b88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b8c:	00150184 	move	$r4,$r12
1c001b90:	57fe33ff 	bl	-464(0xffffe30) # 1c0019c0 <myputchar>
1c001b94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b9c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001ba0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ba4:	2a00018c 	ld.bu	$r12,$r12,0
1c001ba8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bac:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001bb0:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b74 <puts+0x18>
1c001bb4:	0015000c 	move	$r12,$r0
1c001bb8:	00150184 	move	$r4,$r12
1c001bbc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001bc0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001bc4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001bc8:	4c000020 	jirl	$r0,$r1,0

1c001bcc <myprintf>:
myprintf():
1c001bcc:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001bd0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001bd4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bd8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bdc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001be0:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001be4:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001be8:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bec:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bf0:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bf4:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bf8:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bfc:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001c00:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001c04:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001c08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001c14:	50033000 	b	816(0x330) # 1c001f44 <myprintf+0x378>
1c001c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c20:	001031ac 	add.w	$r12,$r13,$r12
1c001c24:	2a00018c 	ld.bu	$r12,$r12,0
1c001c28:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c2c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c30:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c34:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001f18 <myprintf+0x34c>
1c001c38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c3c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c4c:	001031ac 	add.w	$r12,$r13,$r12
1c001c50:	2800018c 	ld.b	$r12,$r12,0
1c001c54:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c58:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c5c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001f08 <myprintf+0x33c>
1c001c60:	0040898d 	slli.w	$r13,$r12,0x2
1c001c64:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c001c68:	02bc618c 	addi.w	$r12,$r12,-232(0xf18)
1c001c6c:	001031ac 	add.w	$r12,$r13,$r12
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	4c000180 	jirl	$r0,$r12,0
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	00150184 	move	$r4,$r12
1c001c84:	57fedbff 	bl	-296(0xffffed8) # 1c001b5c <puts>
1c001c88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c8c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca0:	50029800 	b	664(0x298) # 1c001f38 <myprintf+0x36c>
1c001ca4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca8:	2880018c 	ld.w	$r12,$r12,0
1c001cac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd0fff 	bl	-756(0xffffd0c) # 1c0019c0 <myputchar>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50026800 	b	616(0x268) # 1c001f38 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	00150007 	move	$r7,$r0
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fd13ff 	bl	-752(0xffffd10) # 1c0019fc <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	50023000 	b	560(0x230) # 1c001f38 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001d18:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019fc <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001f800 	b	504(0x1f8) # 1c001f38 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fca3ff 	bl	-864(0xffffca0) # 1c0019fc <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	5001c000 	b	448(0x1c0) # 1c001f38 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc6bff 	bl	-920(0xffffc68) # 1c0019fc <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50018800 	b	392(0x188) # 1c001f38 <myprintf+0x36c>
1c001db4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db8:	2880018c 	ld.w	$r12,$r12,0
1c001dbc:	00150007 	move	$r7,$r0
1c001dc0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001dc4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dc8:	00150184 	move	$r4,$r12
1c001dcc:	57fc33ff 	bl	-976(0xffffc30) # 1c0019fc <printbase>
1c001dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de8:	50015000 	b	336(0x150) # 1c001f38 <myprintf+0x36c>
1c001dec:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001df0:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c0019c0 <myputchar>
1c001df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e00:	50013800 	b	312(0x138) # 1c001f38 <myprintf+0x36c>
1c001e04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e10:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e14:	50003c00 	b	60(0x3c) # 1c001e50 <myprintf+0x284>
1c001e18:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e1c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e20:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e30:	001031cc 	add.w	$r12,$r14,$r12
1c001e34:	2800018c 	ld.b	$r12,$r12,0
1c001e38:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e3c:	001031ac 	add.w	$r12,$r13,$r12
1c001e40:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e58:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e5c:	001031ac 	add.w	$r12,$r13,$r12
1c001e60:	2800018d 	ld.b	$r13,$r12,0
1c001e64:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e68:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c40 <myprintf+0x74>
1c001e6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e74:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e78:	001031ac 	add.w	$r12,$r13,$r12
1c001e7c:	2800018d 	ld.b	$r13,$r12,0
1c001e80:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e84:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e18 <myprintf+0x24c>
1c001e88:	53fdbbff 	b	-584(0xffffdb8) # 1c001c40 <myprintf+0x74>
1c001e8c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e90:	50003c00 	b	60(0x3c) # 1c001ecc <myprintf+0x300>
1c001e94:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e98:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e9c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea8:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001eac:	001031cc 	add.w	$r12,$r14,$r12
1c001eb0:	2800018c 	ld.b	$r12,$r12,0
1c001eb4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001eb8:	001031ac 	add.w	$r12,$r13,$r12
1c001ebc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ed8:	001031ac 	add.w	$r12,$r13,$r12
1c001edc:	2800018d 	ld.b	$r13,$r12,0
1c001ee0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001ee4:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c40 <myprintf+0x74>
1c001ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ef0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ef4:	001031ac 	add.w	$r12,$r13,$r12
1c001ef8:	2800018d 	ld.b	$r13,$r12,0
1c001efc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f00:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e94 <myprintf+0x2c8>
1c001f04:	53fd3fff 	b	-708(0xffffd3c) # 1c001c40 <myprintf+0x74>
1c001f08:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001f0c:	57fab7ff 	bl	-1356(0xffffab4) # 1c0019c0 <myputchar>
1c001f10:	03400000 	andi	$r0,$r0,0x0
1c001f14:	50002400 	b	36(0x24) # 1c001f38 <myprintf+0x36c>
1c001f18:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001f1c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f20:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f2c <myprintf+0x360>
1c001f24:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001f28:	57fa9bff 	bl	-1384(0xffffa98) # 1c0019c0 <myputchar>
1c001f2c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f30:	00150184 	move	$r4,$r12
1c001f34:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0019c0 <myputchar>
1c001f38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f4c:	001031ac 	add.w	$r12,$r13,$r12
1c001f50:	2800018c 	ld.b	$r12,$r12,0
1c001f54:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001c18 <myprintf+0x4c>
1c001f58:	0015000c 	move	$r12,$r0
1c001f5c:	00150184 	move	$r4,$r12
1c001f60:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f64:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f68:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f6c:	4c000020 	jirl	$r0,$r1,0

1c001f70 <Uart_init>:
Uart_init():
1c001f70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f74:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001f78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f80:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c001f84:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001f88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f8c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001f90:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f98:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001f9c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fa0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c001fa4:	001531ac 	or	$r12,$r13,$r12
1c001fa8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fb0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fb8:	02bf280d 	addi.w	$r13,$r0,-54(0xfca)
1c001fbc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001fc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fc4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c001fc8:	2900018d 	st.b	$r13,$r12,0
1c001fcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd0:	29000580 	st.b	$r0,$r12,1(0x1)
1c001fd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001fdc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fe0:	0341fd8c 	andi	$r12,$r12,0x7f
1c001fe4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fe8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001ff0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff4:	29000580 	st.b	$r0,$r12,1(0x1)
1c001ff8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ffc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c002000:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002008:	2a00018c 	ld.bu	$r12,$r12,0
1c00200c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002010:	03400000 	andi	$r0,$r0,0x0
1c002014:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002018:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00201c:	4c000020 	jirl	$r0,$r1,0

1c002020 <UART_SendData>:
UART_SendData():
1c002020:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002024:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002028:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00202c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002030:	001500ac 	move	$r12,$r5
1c002034:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002038:	03400000 	andi	$r0,$r0,0x0
1c00203c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002040:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002044:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002048:	0340818c 	andi	$r12,$r12,0x20
1c00204c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00203c <UART_SendData+0x1c>
1c002050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002054:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002058:	2900018d 	st.b	$r13,$r12,0
1c00205c:	03400000 	andi	$r0,$r0,0x0
1c002060:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002064:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002068:	4c000020 	jirl	$r0,$r1,0

1c00206c <DisableInt>:
DisableInt():
1c00206c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002070:	29803076 	st.w	$r22,$r3,12(0xc)
1c002074:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002078:	0380100c 	ori	$r12,$r0,0x4
1c00207c:	04000180 	csrxchg	$r0,$r12,0x0
1c002080:	03400000 	andi	$r0,$r0,0x0
1c002084:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002088:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00208c:	4c000020 	jirl	$r0,$r1,0

1c002090 <EnableInt>:
EnableInt():
1c002090:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002094:	29803076 	st.w	$r22,$r3,12(0xc)
1c002098:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00209c:	0380100c 	ori	$r12,$r0,0x4
1c0020a0:	0400018c 	csrxchg	$r12,$r12,0x0
1c0020a4:	03400000 	andi	$r0,$r0,0x0
1c0020a8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0020ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020b0:	4c000020 	jirl	$r0,$r1,0

1c0020b4 <Set_Timer_stop>:
Set_Timer_stop():
1c0020b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020b8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0020bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020c0:	04010420 	csrwr	$r0,0x41
1c0020c4:	03400000 	andi	$r0,$r0,0x0
1c0020c8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0020cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020d0:	4c000020 	jirl	$r0,$r1,0

1c0020d4 <Set_Timer_clear>:
Set_Timer_clear():
1c0020d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020d8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0020dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020e0:	0380040c 	ori	$r12,$r0,0x1
1c0020e4:	0401102c 	csrwr	$r12,0x44
1c0020e8:	03400000 	andi	$r0,$r0,0x0
1c0020ec:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0020f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020f4:	4c000020 	jirl	$r0,$r1,0

1c0020f8 <Set_Timer_Init>:
Set_Timer_Init():
1c0020f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020fc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002100:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002104:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002108:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00210c:	0401040c 	csrrd	$r12,0x41
1c002110:	03800dac 	ori	$r12,$r13,0x3
1c002114:	0401042c 	csrwr	$r12,0x41
1c002118:	03400000 	andi	$r0,$r0,0x0
1c00211c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002120:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002124:	4c000020 	jirl	$r0,$r1,0

1c002128 <Wake_Set>:
Wake_Set():
1c002128:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00212c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002130:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002134:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002138:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00213c:	40006980 	beqz	$r12,104(0x68) # 1c0021a4 <Wake_Set+0x7c>
1c002140:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002144:	0040a18c 	slli.w	$r12,$r12,0x8
1c002148:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00214c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002150:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002154:	0380218c 	ori	$r12,$r12,0x8
1c002158:	2880018d 	ld.w	$r13,$r12,0
1c00215c:	14001fec 	lu12i.w	$r12,255(0xff)
1c002160:	03bffd8c 	ori	$r12,$r12,0xfff
1c002164:	0014b1ac 	and	$r12,$r13,$r12
1c002168:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00216c:	001031ac 	add.w	$r12,$r13,$r12
1c002170:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002174:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002178:	0380318c 	ori	$r12,$r12,0xc
1c00217c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002180:	2980018d 	st.w	$r13,$r12,0
1c002184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002188:	0380118c 	ori	$r12,$r12,0x4
1c00218c:	2880018d 	ld.w	$r13,$r12,0
1c002190:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002194:	0380118c 	ori	$r12,$r12,0x4
1c002198:	038601ad 	ori	$r13,$r13,0x180
1c00219c:	2980018d 	st.w	$r13,$r12,0
1c0021a0:	50002400 	b	36(0x24) # 1c0021c4 <Wake_Set+0x9c>
1c0021a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021a8:	0380118c 	ori	$r12,$r12,0x4
1c0021ac:	2880018e 	ld.w	$r14,$r12,0
1c0021b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021b4:	0380118c 	ori	$r12,$r12,0x4
1c0021b8:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0021bc:	0014b5cd 	and	$r13,$r14,$r13
1c0021c0:	2980018d 	st.w	$r13,$r12,0
1c0021c4:	03400000 	andi	$r0,$r0,0x0
1c0021c8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0021cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0021d0:	4c000020 	jirl	$r0,$r1,0

1c0021d4 <soc_myputchar>:
soc_myputchar():
1c0021d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0021d8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0021dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0021e0:	0015008c 	move	$r12,$r4
1c0021e4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0021e8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0021ec:	0380118c 	ori	$r12,$r12,0x4
1c0021f0:	2880018c 	ld.w	$r12,$r12,0
1c0021f4:	00005d8c 	ext.w.b	$r12,$r12
1c0021f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021fc:	03400000 	andi	$r0,$r0,0x0
1c002200:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002204:	00005d8c 	ext.w.b	$r12,$r12
1c002208:	0340098d 	andi	$r13,$r12,0x2
1c00220c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002210:	5bfff1ac 	beq	$r13,$r12,-16(0x3fff0) # 1c002200 <soc_myputchar+0x2c>
1c002214:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002218:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00221c:	2980018d 	st.w	$r13,$r12,0
1c002220:	03400000 	andi	$r0,$r0,0x0
1c002224:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002228:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00222c:	4c000020 	jirl	$r0,$r1,0

1c002230 <soc_puts>:
soc_puts():
1c002230:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002234:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002238:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00223c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002240:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002244:	50003000 	b	48(0x30) # 1c002274 <soc_puts+0x44>
1c002248:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c00224c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002250:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00225c <soc_puts+0x2c>
1c002254:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002258:	57ff7fff 	bl	-132(0xfffff7c) # 1c0021d4 <soc_myputchar>
1c00225c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002260:	00150184 	move	$r4,$r12
1c002264:	57ff73ff 	bl	-144(0xfffff70) # 1c0021d4 <soc_myputchar>
1c002268:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002274:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002278:	2a00018c 	ld.bu	$r12,$r12,0
1c00227c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002280:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c002284:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c002248 <soc_puts+0x18>
1c002288:	0015000c 	move	$r12,$r0
1c00228c:	00150184 	move	$r4,$r12
1c002290:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002294:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002298:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00229c:	4c000020 	jirl	$r0,$r1,0

1c0022a0 <soc_printbase>:
soc_printbase():
1c0022a0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0022a4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0022a8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0022ac:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0022b0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0022b4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0022b8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0022bc:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0022c0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0022c4:	40002580 	beqz	$r12,36(0x24) # 1c0022e8 <soc_printbase+0x48>
1c0022c8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0022cc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c0022e8 <soc_printbase+0x48>
1c0022d0:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0022d4:	0011300c 	sub.w	$r12,$r0,$r12
1c0022d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0022dc:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0022e0:	57fef7ff 	bl	-268(0xffffef4) # 1c0021d4 <soc_myputchar>
1c0022e4:	50000c00 	b	12(0xc) # 1c0022f0 <soc_printbase+0x50>
1c0022e8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0022ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0022f0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0022f4:	50005000 	b	80(0x50) # 1c002344 <soc_printbase+0xa4>
1c0022f8:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c0022fc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002300:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002304:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00230c <soc_printbase+0x6c>
1c002308:	002a0007 	break	0x7
1c00230c:	00005dcc 	ext.w.b	$r12,$r14
1c002310:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002314:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002318:	001035cd 	add.w	$r13,$r14,$r13
1c00231c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c002320:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c002324:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002328:	002135cc 	div.wu	$r12,$r14,$r13
1c00232c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002334 <soc_printbase+0x94>
1c002330:	002a0007 	break	0x7
1c002334:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002338:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00233c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002340:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002344:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002348:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c0022f8 <soc_printbase+0x58>
1c00234c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002350:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002354:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002358:	001231ad 	slt	$r13,$r13,$r12
1c00235c:	0013b5ce 	masknez	$r14,$r14,$r13
1c002360:	0013358c 	maskeqz	$r12,$r12,$r13
1c002364:	001531cc 	or	$r12,$r14,$r12
1c002368:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00236c:	50007400 	b	116(0x74) # 1c0023e0 <soc_printbase+0x140>
1c002370:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002378:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002394 <soc_printbase+0xf4>
1c00237c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002380:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002384:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002388:	001031ac 	add.w	$r12,$r13,$r12
1c00238c:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c002390:	50000800 	b	8(0x8) # 1c002398 <soc_printbase+0xf8>
1c002394:	0015000c 	move	$r12,$r0
1c002398:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00239c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0023a0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0023a4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0023bc <soc_printbase+0x11c>
1c0023a8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0023ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023b0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0023b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023b8:	50001400 	b	20(0x14) # 1c0023cc <soc_printbase+0x12c>
1c0023bc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0023c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023c4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0023c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023cc:	00150184 	move	$r4,$r12
1c0023d0:	57fe07ff 	bl	-508(0xffffe04) # 1c0021d4 <soc_myputchar>
1c0023d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023d8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0023dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023e4:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c002370 <soc_printbase+0xd0>
1c0023e8:	0015000c 	move	$r12,$r0
1c0023ec:	00150184 	move	$r4,$r12
1c0023f0:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c0023f4:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c0023f8:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c0023fc:	4c000020 	jirl	$r0,$r1,0

1c002400 <soc_myprintf>:
soc_myprintf():
1c002400:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002404:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002408:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00240c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002410:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c002414:	298012c5 	st.w	$r5,$r22,4(0x4)
1c002418:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00241c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002420:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002424:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002428:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00242c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002430:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002434:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c002438:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00243c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002448:	50038000 	b	896(0x380) # 1c0027c8 <soc_myprintf+0x3c8>
1c00244c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002450:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002454:	001031ac 	add.w	$r12,$r13,$r12
1c002458:	2a00018c 	ld.bu	$r12,$r12,0
1c00245c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002460:	283f7ecd 	ld.b	$r13,$r22,-33(0xfdf)
1c002464:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002468:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c00274c <soc_myprintf+0x34c>
1c00246c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002470:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002478:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00247c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002480:	001031ac 	add.w	$r12,$r13,$r12
1c002484:	2800018c 	ld.b	$r12,$r12,0
1c002488:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c00248c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c002490:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c00273c <soc_myprintf+0x33c>
1c002494:	0040898d 	slli.w	$r13,$r12,0x2
1c002498:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c00249c:	02a0d18c 	addi.w	$r12,$r12,-1996(0x834)
1c0024a0:	001031ac 	add.w	$r12,$r13,$r12
1c0024a4:	2880018c 	ld.w	$r12,$r12,0
1c0024a8:	4c000180 	jirl	$r0,$r12,0
1c0024ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024b0:	2880018c 	ld.w	$r12,$r12,0
1c0024b4:	00150184 	move	$r4,$r12
1c0024b8:	57fd7bff 	bl	-648(0xffffd78) # 1c002230 <soc_puts>
1c0024bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024c0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0024c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024d4:	50029800 	b	664(0x298) # 1c00276c <soc_myprintf+0x36c>
1c0024d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024dc:	2880018c 	ld.w	$r12,$r12,0
1c0024e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024e4:	00150184 	move	$r4,$r12
1c0024e8:	57fcefff 	bl	-788(0xffffcec) # 1c0021d4 <soc_myputchar>
1c0024ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024f0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0024f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0024f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002500:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002504:	50026800 	b	616(0x268) # 1c00276c <soc_myprintf+0x36c>
1c002508:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00250c:	2880018c 	ld.w	$r12,$r12,0
1c002510:	00150007 	move	$r7,$r0
1c002514:	02802806 	addi.w	$r6,$r0,10(0xa)
1c002518:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00251c:	00150184 	move	$r4,$r12
1c002520:	57fd83ff 	bl	-640(0xffffd80) # 1c0022a0 <soc_printbase>
1c002524:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002528:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00252c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002530:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002538:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00253c:	50023000 	b	560(0x230) # 1c00276c <soc_myprintf+0x36c>
1c002540:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002544:	2880018c 	ld.w	$r12,$r12,0
1c002548:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00254c:	02802806 	addi.w	$r6,$r0,10(0xa)
1c002550:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002554:	00150184 	move	$r4,$r12
1c002558:	57fd4bff 	bl	-696(0xffffd48) # 1c0022a0 <soc_printbase>
1c00255c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002560:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002564:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002568:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00256c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002570:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002574:	5001f800 	b	504(0x1f8) # 1c00276c <soc_myprintf+0x36c>
1c002578:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00257c:	2880018c 	ld.w	$r12,$r12,0
1c002580:	00150007 	move	$r7,$r0
1c002584:	02802006 	addi.w	$r6,$r0,8(0x8)
1c002588:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00258c:	00150184 	move	$r4,$r12
1c002590:	57fd13ff 	bl	-752(0xffffd10) # 1c0022a0 <soc_printbase>
1c002594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002598:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00259c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0025a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025ac:	5001c000 	b	448(0x1c0) # 1c00276c <soc_myprintf+0x36c>
1c0025b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025b4:	2880018c 	ld.w	$r12,$r12,0
1c0025b8:	00150007 	move	$r7,$r0
1c0025bc:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0025c0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0025c4:	00150184 	move	$r4,$r12
1c0025c8:	57fcdbff 	bl	-808(0xffffcd8) # 1c0022a0 <soc_printbase>
1c0025cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025d0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0025d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0025e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025e4:	50018800 	b	392(0x188) # 1c00276c <soc_myprintf+0x36c>
1c0025e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025ec:	2880018c 	ld.w	$r12,$r12,0
1c0025f0:	00150007 	move	$r7,$r0
1c0025f4:	02804006 	addi.w	$r6,$r0,16(0x10)
1c0025f8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0025fc:	00150184 	move	$r4,$r12
1c002600:	57fca3ff 	bl	-864(0xffffca0) # 1c0022a0 <soc_printbase>
1c002604:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002608:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00260c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002610:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002614:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002618:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00261c:	50015000 	b	336(0x150) # 1c00276c <soc_myprintf+0x36c>
1c002620:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002624:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c0021d4 <soc_myputchar>
1c002628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00262c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002630:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002634:	50013800 	b	312(0x138) # 1c00276c <soc_myprintf+0x36c>
1c002638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00263c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002640:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002644:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002648:	50003c00 	b	60(0x3c) # 1c002684 <soc_myprintf+0x284>
1c00264c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002650:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002654:	001c31ad 	mul.w	$r13,$r13,$r12
1c002658:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00265c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002660:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c002664:	001031cc 	add.w	$r12,$r14,$r12
1c002668:	2800018c 	ld.b	$r12,$r12,0
1c00266c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002670:	001031ac 	add.w	$r12,$r13,$r12
1c002674:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00267c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002684:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002688:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00268c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002690:	001031ac 	add.w	$r12,$r13,$r12
1c002694:	2800018d 	ld.b	$r13,$r12,0
1c002698:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00269c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c002474 <soc_myprintf+0x74>
1c0026a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026a8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0026ac:	001031ac 	add.w	$r12,$r13,$r12
1c0026b0:	2800018d 	ld.b	$r13,$r12,0
1c0026b4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0026b8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00264c <soc_myprintf+0x24c>
1c0026bc:	53fdbbff 	b	-584(0xffffdb8) # 1c002474 <soc_myprintf+0x74>
1c0026c0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0026c4:	50003c00 	b	60(0x3c) # 1c002700 <soc_myprintf+0x300>
1c0026c8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026cc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026dc:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c0026e0:	001031cc 	add.w	$r12,$r14,$r12
1c0026e4:	2800018c 	ld.b	$r12,$r12,0
1c0026e8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0026ec:	001031ac 	add.w	$r12,$r13,$r12
1c0026f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002704:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002708:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00270c:	001031ac 	add.w	$r12,$r13,$r12
1c002710:	2800018d 	ld.b	$r13,$r12,0
1c002714:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002718:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c002474 <soc_myprintf+0x74>
1c00271c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002720:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002724:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002728:	001031ac 	add.w	$r12,$r13,$r12
1c00272c:	2800018d 	ld.b	$r13,$r12,0
1c002730:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002734:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0026c8 <soc_myprintf+0x2c8>
1c002738:	53fd3fff 	b	-708(0xffffd3c) # 1c002474 <soc_myprintf+0x74>
1c00273c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002740:	57fa97ff 	bl	-1388(0xffffa94) # 1c0021d4 <soc_myputchar>
1c002744:	03400000 	andi	$r0,$r0,0x0
1c002748:	50002400 	b	36(0x24) # 1c00276c <soc_myprintf+0x36c>
1c00274c:	283f7ecd 	ld.b	$r13,$r22,-33(0xfdf)
1c002750:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002754:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c002760 <soc_myprintf+0x360>
1c002758:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00275c:	57fa7bff 	bl	-1416(0xffffa78) # 1c0021d4 <soc_myputchar>
1c002760:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002764:	00150184 	move	$r4,$r12
1c002768:	57fa6fff 	bl	-1428(0xffffa6c) # 1c0021d4 <soc_myputchar>
1c00276c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002770:	40004d80 	beqz	$r12,76(0x4c) # 1c0027bc <soc_myprintf+0x3bc>
1c002774:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002778:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00277c:	0020b5cc 	mod.w	$r12,$r14,$r13
1c002780:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002788 <soc_myprintf+0x388>
1c002784:	002a0007 	break	0x7
1c002788:	44003580 	bnez	$r12,52(0x34) # 1c0027bc <soc_myprintf+0x3bc>
1c00278c:	140000ac 	lu12i.w	$r12,5(0x5)
1c002790:	03accd8c 	ori	$r12,$r12,0xb33
1c002794:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002798:	50001400 	b	20(0x14) # 1c0027ac <soc_myprintf+0x3ac>
1c00279c:	03400000 	andi	$r0,$r0,0x0
1c0027a0:	03400000 	andi	$r0,$r0,0x0
1c0027a4:	03400000 	andi	$r0,$r0,0x0
1c0027a8:	03400000 	andi	$r0,$r0,0x0
1c0027ac:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0027b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0027b4:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0027b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00279c <soc_myprintf+0x39c>
1c0027bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0027c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0027c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027cc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0027d0:	001031ac 	add.w	$r12,$r13,$r12
1c0027d4:	2800018c 	ld.b	$r12,$r12,0
1c0027d8:	47fc759f 	bnez	$r12,-908(0x7ffc74) # 1c00244c <soc_myprintf+0x4c>
1c0027dc:	0015000c 	move	$r12,$r0
1c0027e0:	00150184 	move	$r4,$r12
1c0027e4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0027e8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0027ec:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0027f0:	4c000020 	jirl	$r0,$r1,0

1c0027f4 <get_count>:
get_count():
1c0027f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002800:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002804:	0000600c 	rdtimel.w	$r12,$r0
1c002808:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00280c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002810:	00150184 	move	$r4,$r12
1c002814:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002818:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00281c:	4c000020 	jirl	$r0,$r1,0

1c002820 <open_count>:
open_count():
1c002820:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002824:	29803076 	st.w	$r22,$r3,12(0xc)
1c002828:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00282c:	0380400c 	ori	$r12,$r0,0x10
1c002830:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002834:	03400000 	andi	$r0,$r0,0x0
1c002838:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00283c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002840:	4c000020 	jirl	$r0,$r1,0

1c002844 <close_count>:
close_count():
1c002844:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002848:	29803076 	st.w	$r22,$r3,12(0xc)
1c00284c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002850:	0380400c 	ori	$r12,$r0,0x10
1c002854:	0402bd8c 	csrxchg	$r12,$r12,0xaf
1c002858:	03400000 	andi	$r0,$r0,0x0
1c00285c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002860:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002864:	4c000020 	jirl	$r0,$r1,0

1c002868 <start_count>:
start_count():
1c002868:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00286c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002870:	29806076 	st.w	$r22,$r3,24(0x18)
1c002874:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002878:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00287c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002880:	29800180 	st.w	$r0,$r12,0
1c002884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002888:	29801180 	st.w	$r0,$r12,4(0x4)
1c00288c:	57ff6bff 	bl	-152(0xfffff68) # 1c0027f4 <get_count>
1c002890:	0015008d 	move	$r13,$r4
1c002894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002898:	2980018d 	st.w	$r13,$r12,0
1c00289c:	03400000 	andi	$r0,$r0,0x0
1c0028a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0028a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0028a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028ac:	4c000020 	jirl	$r0,$r1,0

1c0028b0 <stop_count>:
stop_count():
1c0028b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028c4:	57ff33ff 	bl	-208(0xfffff30) # 1c0027f4 <get_count>
1c0028c8:	0015008d 	move	$r13,$r4
1c0028cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0028dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028e0:	2880018c 	ld.w	$r12,$r12,0
1c0028e4:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c002900 <stop_count+0x50>
1c0028e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028ec:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0028f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028f4:	2880018c 	ld.w	$r12,$r12,0
1c0028f8:	001131ac 	sub.w	$r12,$r13,$r12
1c0028fc:	50002800 	b	40(0x28) # 1c002924 <stop_count+0x74>
1c002900:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002904:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002908:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00290c:	2880018c 	ld.w	$r12,$r12,0
1c002910:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002914:	001131ad 	sub.w	$r13,$r13,$r12
1c002918:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00291c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002920:	001031ac 	add.w	$r12,$r13,$r12
1c002924:	00150184 	move	$r4,$r12
1c002928:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00292c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002930:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002934:	4c000020 	jirl	$r0,$r1,0

1c002938 <delay_cycle>:
delay_cycle():
1c002938:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00293c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002940:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002944:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002948:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00294c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002950:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002954:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002958:	57fecbff 	bl	-312(0xffffec8) # 1c002820 <open_count>
1c00295c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002960:	00150184 	move	$r4,$r12
1c002964:	57ff07ff 	bl	-252(0xfffff04) # 1c002868 <start_count>
1c002968:	50001400 	b	20(0x14) # 1c00297c <delay_cycle+0x44>
1c00296c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002970:	00150184 	move	$r4,$r12
1c002974:	57ff3fff 	bl	-196(0xfffff3c) # 1c0028b0 <stop_count>
1c002978:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00297c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002980:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002984:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c00296c <delay_cycle+0x34>
1c002988:	57febfff 	bl	-324(0xffffebc) # 1c002844 <close_count>
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002994:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002998:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00299c:	4c000020 	jirl	$r0,$r1,0

1c0029a0 <delay_us>:
delay_us():
1c0029a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b8:	00408d8c 	slli.w	$r12,$r12,0x3
1c0029bc:	00150184 	move	$r4,$r12
1c0029c0:	57ff7bff 	bl	-136(0xfffff78) # 1c002938 <delay_cycle>
1c0029c4:	03400000 	andi	$r0,$r0,0x0
1c0029c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0029cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0029d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d4:	4c000020 	jirl	$r0,$r1,0

1c0029d8 <delay_ms>:
delay_ms():
1c0029d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0029f0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0029f4:	03bd018c 	ori	$r12,$r12,0xf40
1c0029f8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0029fc:	00150184 	move	$r4,$r12
1c002a00:	57ff3bff 	bl	-200(0xfffff38) # 1c002938 <delay_cycle>
1c002a04:	03400000 	andi	$r0,$r0,0x0
1c002a08:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a0c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a14:	4c000020 	jirl	$r0,$r1,0

1c002a18 <delay_s>:
delay_s():
1c002a18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a20:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a28:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002a2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002a30:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002a34:	001c31ac 	mul.w	$r12,$r13,$r12
1c002a38:	00150184 	move	$r4,$r12
1c002a3c:	57ff9fff 	bl	-100(0xfffff9c) # 1c0029d8 <delay_ms>
1c002a40:	03400000 	andi	$r0,$r0,0x0
1c002a44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a50:	4c000020 	jirl	$r0,$r1,0

1c002a54 <strcmp>:
strcmp():
1c002a54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a58:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002a5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a60:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002a64:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002a68:	50002000 	b	32(0x20) # 1c002a88 <strcmp+0x34>
1c002a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a70:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002a74:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002a78:	2800018c 	ld.b	$r12,$r12,0
1c002a7c:	44000d80 	bnez	$r12,12(0xc) # 1c002a88 <strcmp+0x34>
1c002a80:	0015000c 	move	$r12,$r0
1c002a84:	50004400 	b	68(0x44) # 1c002ac8 <strcmp+0x74>
1c002a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a8c:	2800018d 	ld.b	$r13,$r12,0
1c002a90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a94:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c002a98:	29bfa2ce 	st.w	$r14,$r22,-24(0xfe8)
1c002a9c:	2800018c 	ld.b	$r12,$r12,0
1c002aa0:	5bffcdac 	beq	$r13,$r12,-52(0x3ffcc) # 1c002a6c <strcmp+0x18>
1c002aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002aa8:	2a00018c 	ld.bu	$r12,$r12,0
1c002aac:	0015018d 	move	$r13,$r12
1c002ab0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ab4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002ab8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002abc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ac0:	2a00018c 	ld.bu	$r12,$r12,0
1c002ac4:	001131ac 	sub.w	$r12,$r13,$r12
1c002ac8:	00150184 	move	$r4,$r12
1c002acc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ad0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ad4:	4c000020 	jirl	$r0,$r1,0

1c002ad8 <Rtc_Read>:
Rtc_Read():
1c002ad8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002adc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002ae0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ae4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ae8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002aec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002af0:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002af4:	0380318c 	ori	$r12,$r12,0xc
1c002af8:	2880018c 	ld.w	$r12,$r12,0
1c002afc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b00:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002b04:	0380218c 	ori	$r12,$r12,0x8
1c002b08:	2880018c 	ld.w	$r12,$r12,0
1c002b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b14:	0044a58c 	srli.w	$r12,$r12,0x9
1c002b18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b1c:	0341fd8c 	andi	$r12,$r12,0x7f
1c002b20:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b28:	2900158d 	st.b	$r13,$r12,5(0x5)
1c002b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b30:	0044958c 	srli.w	$r12,$r12,0x5
1c002b34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b38:	03403d8c 	andi	$r12,$r12,0xf
1c002b3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b44:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002b48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b50:	03407d8c 	andi	$r12,$r12,0x1f
1c002b54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b5c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002b60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b64:	0044c18c 	srli.w	$r12,$r12,0x10
1c002b68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b6c:	03407d8c 	andi	$r12,$r12,0x1f
1c002b70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b78:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002b7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b80:	0044a98c 	srli.w	$r12,$r12,0xa
1c002b84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b88:	0340fd8c 	andi	$r12,$r12,0x3f
1c002b8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b94:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002b98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b9c:	0044918c 	srli.w	$r12,$r12,0x4
1c002ba0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ba4:	0340fd8c 	andi	$r12,$r12,0x3f
1c002ba8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002bac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bb0:	2900018d 	st.b	$r13,$r12,0
1c002bb4:	03400000 	andi	$r0,$r0,0x0
1c002bb8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002bbc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bc0:	4c000020 	jirl	$r0,$r1,0

1c002bc4 <Rtc_Write>:
Rtc_Write():
1c002bc4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bc8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bcc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bd0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002bd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bd8:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c002bdc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c002be0:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c002bf0 <Rtc_Write+0x2c>
1c002be4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002be8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002bec:	44001180 	bnez	$r12,16(0x10) # 1c002bfc <Rtc_Write+0x38>
1c002bf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bf4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002bf8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c00:	2a000d8d 	ld.bu	$r13,$r12,3(0x3)
1c002c04:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002c08:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c002c18 <Rtc_Write+0x54>
1c002c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c10:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002c14:	44001180 	bnez	$r12,16(0x10) # 1c002c24 <Rtc_Write+0x60>
1c002c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c1c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002c20:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002c24:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002c28:	1410000d 	lu12i.w	$r13,32768(0x8000)
1c002c2c:	2980018d 	st.w	$r13,$r12,0
1c002c30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c34:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c002c38:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c002c3c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002c40:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002c48 <Rtc_Write+0x84>
1c002c44:	002a0007 	break	0x7
1c002c48:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c002c4c:	0040c18d 	slli.w	$r13,$r12,0x10
1c002c50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c54:	2a00058e 	ld.bu	$r14,$r12,1(0x1)
1c002c58:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c002c5c:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c002c60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002c68 <Rtc_Write+0xa4>
1c002c64:	002a0007 	break	0x7
1c002c68:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c002c6c:	0040a98c 	slli.w	$r12,$r12,0xa
1c002c70:	001531ad 	or	$r13,$r13,$r12
1c002c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c78:	2a00018e 	ld.bu	$r14,$r12,0
1c002c7c:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c002c80:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c002c84:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002c8c <Rtc_Write+0xc8>
1c002c88:	002a0007 	break	0x7
1c002c8c:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c002c90:	0040918c 	slli.w	$r12,$r12,0x4
1c002c94:	001531ac 	or	$r12,$r13,$r12
1c002c98:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002c9c:	2a0019ae 	ld.bu	$r14,$r13,6(0x6)
1c002ca0:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c002ca4:	0021b5cf 	mod.wu	$r15,$r14,$r13
1c002ca8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002cb0 <Rtc_Write+0xec>
1c002cac:	002a0007 	break	0x7
1c002cb0:	006781ed 	bstrpick.w	$r13,$r15,0x7,0x0
1c002cb4:	0015358d 	or	$r13,$r12,$r13
1c002cb8:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002cbc:	0380218c 	ori	$r12,$r12,0x8
1c002cc0:	2980018d 	st.w	$r13,$r12,0
1c002cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cc8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002ccc:	0040a58d 	slli.w	$r13,$r12,0x9
1c002cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cd4:	2a00118e 	ld.bu	$r14,$r12,4(0x4)
1c002cd8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002cdc:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c002ce0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002ce8 <Rtc_Write+0x124>
1c002ce4:	002a0007 	break	0x7
1c002ce8:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c002cec:	0040958c 	slli.w	$r12,$r12,0x5
1c002cf0:	001531ad 	or	$r13,$r13,$r12
1c002cf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cf8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002cfc:	03407d8c 	andi	$r12,$r12,0x1f
1c002d00:	001531ad 	or	$r13,$r13,$r12
1c002d04:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002d08:	0380318c 	ori	$r12,$r12,0xc
1c002d0c:	2980018d 	st.w	$r13,$r12,0
1c002d10:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002d14:	0380118c 	ori	$r12,$r12,0x4
1c002d18:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c002d1c:	2980018d 	st.w	$r13,$r12,0
1c002d20:	03400000 	andi	$r0,$r0,0x0
1c002d24:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d2c:	4c000020 	jirl	$r0,$r1,0

1c002d30 <RtcUpdateData>:
RtcUpdateData():
1c002d30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d34:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002d38:	29806076 	st.w	$r22,$r3,24(0x18)
1c002d3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d40:	0015008c 	move	$r12,$r4
1c002d44:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002d48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002d4c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002d50:	40001180 	beqz	$r12,16(0x10) # 1c002d60 <RtcUpdateData+0x30>
1c002d54:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c002d58:	57fd83ff 	bl	-640(0xffffd80) # 1c002ad8 <Rtc_Read>
1c002d5c:	50000c00 	b	12(0xc) # 1c002d68 <RtcUpdateData+0x38>
1c002d60:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c002d64:	57fe63ff 	bl	-416(0xffffe60) # 1c002bc4 <Rtc_Write>
1c002d68:	03400000 	andi	$r0,$r0,0x0
1c002d6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002d70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002d74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d78:	4c000020 	jirl	$r0,$r1,0

1c002d7c <gpio_init>:
gpio_init():
1c002d7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d80:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002d84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d8c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002d90:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d94:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002d98:	6000698d 	blt	$r12,$r13,104(0x68) # 1c002e00 <gpio_init+0x84>
1c002d9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002da0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002da4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002da8:	44003180 	bnez	$r12,48(0x30) # 1c002dd8 <gpio_init+0x5c>
1c002dac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db0:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c002db4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002db8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dbc:	001731cc 	sll.w	$r12,$r14,$r12
1c002dc0:	0014300c 	nor	$r12,$r0,$r12
1c002dc4:	0015018e 	move	$r14,$r12
1c002dc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dcc:	0014b9ad 	and	$r13,$r13,$r14
1c002dd0:	2981018d 	st.w	$r13,$r12,64(0x40)
1c002dd4:	50009000 	b	144(0x90) # 1c002e64 <gpio_init+0xe8>
1c002dd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ddc:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c002de0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de8:	001731cc 	sll.w	$r12,$r14,$r12
1c002dec:	0015018e 	move	$r14,$r12
1c002df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df4:	001539ad 	or	$r13,$r13,$r14
1c002df8:	2981018d 	st.w	$r13,$r12,64(0x40)
1c002dfc:	50006800 	b	104(0x68) # 1c002e64 <gpio_init+0xe8>
1c002e00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e04:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002e08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e0c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e10:	44003180 	bnez	$r12,48(0x30) # 1c002e40 <gpio_init+0xc4>
1c002e14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e18:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c002e1c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e24:	001731cc 	sll.w	$r12,$r14,$r12
1c002e28:	0014300c 	nor	$r12,$r0,$r12
1c002e2c:	0015018e 	move	$r14,$r12
1c002e30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e34:	0014b9ad 	and	$r13,$r13,$r14
1c002e38:	2981418d 	st.w	$r13,$r12,80(0x50)
1c002e3c:	50002800 	b	40(0x28) # 1c002e64 <gpio_init+0xe8>
1c002e40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e44:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c002e48:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e50:	001731cc 	sll.w	$r12,$r14,$r12
1c002e54:	0015018e 	move	$r14,$r12
1c002e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e5c:	001539ad 	or	$r13,$r13,$r14
1c002e60:	2981418d 	st.w	$r13,$r12,80(0x50)
1c002e64:	03400000 	andi	$r0,$r0,0x0
1c002e68:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002e6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e70:	4c000020 	jirl	$r0,$r1,0

1c002e74 <gpio_write>:
gpio_write():
1c002e74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e78:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002e7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e84:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002e88:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e8c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002e90:	6000698d 	blt	$r12,$r13,104(0x68) # 1c002ef8 <gpio_write+0x84>
1c002e94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e9c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002ea0:	44003180 	bnez	$r12,48(0x30) # 1c002ed0 <gpio_write+0x5c>
1c002ea4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea8:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c002eac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb4:	001731cc 	sll.w	$r12,$r14,$r12
1c002eb8:	0014300c 	nor	$r12,$r0,$r12
1c002ebc:	0015018e 	move	$r14,$r12
1c002ec0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec4:	0014b9ad 	and	$r13,$r13,$r14
1c002ec8:	2981118d 	st.w	$r13,$r12,68(0x44)
1c002ecc:	50009000 	b	144(0x90) # 1c002f5c <gpio_write+0xe8>
1c002ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed4:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c002ed8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee0:	001731cc 	sll.w	$r12,$r14,$r12
1c002ee4:	0015018e 	move	$r14,$r12
1c002ee8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eec:	001539ad 	or	$r13,$r13,$r14
1c002ef0:	2981118d 	st.w	$r13,$r12,68(0x44)
1c002ef4:	50006800 	b	104(0x68) # 1c002f5c <gpio_write+0xe8>
1c002ef8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002efc:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002f00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f04:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002f08:	44003180 	bnez	$r12,48(0x30) # 1c002f38 <gpio_write+0xc4>
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c002f14:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f1c:	001731cc 	sll.w	$r12,$r14,$r12
1c002f20:	0014300c 	nor	$r12,$r0,$r12
1c002f24:	0015018e 	move	$r14,$r12
1c002f28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f2c:	0014b9ad 	and	$r13,$r13,$r14
1c002f30:	2981518d 	st.w	$r13,$r12,84(0x54)
1c002f34:	50002800 	b	40(0x28) # 1c002f5c <gpio_write+0xe8>
1c002f38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f3c:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c002f40:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002f44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f48:	001731cc 	sll.w	$r12,$r14,$r12
1c002f4c:	0015018e 	move	$r14,$r12
1c002f50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f54:	001539ad 	or	$r13,$r13,$r14
1c002f58:	2981518d 	st.w	$r13,$r12,84(0x54)
1c002f5c:	03400000 	andi	$r0,$r0,0x0
1c002f60:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002f64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f68:	4c000020 	jirl	$r0,$r1,0

1c002f6c <uart1_interrupt>:
uart1_interrupt():
1c002f6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002f70:	29803076 	st.w	$r22,$r3,12(0xc)
1c002f74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002f78:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002f7c:	2a00018c 	ld.bu	$r12,$r12,0
1c002f80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002f84:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002f88:	038011ad 	ori	$r13,$r13,0x4
1c002f8c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002f90:	2900018d 	st.b	$r13,$r12,0
1c002f94:	03400000 	andi	$r0,$r0,0x0
1c002f98:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002f9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002fa0:	4c000020 	jirl	$r0,$r1,0

1c002fa4 <EXTI_Init>:
EXTI_Init():
1c002fa4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fa8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002fac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fb0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002fb4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002fb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fbc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002fc0:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002fc4:	40014180 	beqz	$r12,320(0x140) # 1c003104 <EXTI_Init+0x160>
1c002fc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fcc:	0380118c 	ori	$r12,$r12,0x4
1c002fd0:	2880018e 	ld.w	$r14,$r12,0
1c002fd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd8:	0380118c 	ori	$r12,$r12,0x4
1c002fdc:	15fbffed 	lu12i.w	$r13,-8193(0xfdfff)
1c002fe0:	03bffdad 	ori	$r13,$r13,0xfff
1c002fe4:	0014b5cd 	and	$r13,$r14,$r13
1c002fe8:	2980018d 	st.w	$r13,$r12,0
1c002fec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ff0:	0380118c 	ori	$r12,$r12,0x4
1c002ff4:	2880018e 	ld.w	$r14,$r12,0
1c002ff8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ffc:	0380118c 	ori	$r12,$r12,0x4
1c003000:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c003004:	001535cd 	or	$r13,$r14,$r13
1c003008:	2980018d 	st.w	$r13,$r12,0
1c00300c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003010:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003014:	44002980 	bnez	$r12,40(0x28) # 1c00303c <EXTI_Init+0x98>
1c003018:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00301c:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c003020:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003024:	2880018c 	ld.w	$r12,$r12,0
1c003028:	0014300c 	nor	$r12,$r0,$r12
1c00302c:	0014b1ad 	and	$r13,$r13,$r12
1c003030:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003034:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003038:	50002000 	b	32(0x20) # 1c003058 <EXTI_Init+0xb4>
1c00303c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003040:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c003044:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003048:	2880018c 	ld.w	$r12,$r12,0
1c00304c:	001531ad 	or	$r13,$r13,$r12
1c003050:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003054:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003058:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00305c:	2880018d 	ld.w	$r13,$r12,0
1c003060:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003064:	2880018c 	ld.w	$r12,$r12,0
1c003068:	001531ad 	or	$r13,$r13,$r12
1c00306c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003070:	2980018d 	st.w	$r13,$r12,0
1c003074:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003078:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00307c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003080:	2880018c 	ld.w	$r12,$r12,0
1c003084:	0014300c 	nor	$r12,$r0,$r12
1c003088:	0014b1ad 	and	$r13,$r13,$r12
1c00308c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003090:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003094:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003098:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c00309c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030a0:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0030c4 <EXTI_Init+0x120>
1c0030a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030a8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0030ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0030b0:	2880018c 	ld.w	$r12,$r12,0
1c0030b4:	001531ad 	or	$r13,$r13,$r12
1c0030b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030bc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0030c0:	50002400 	b	36(0x24) # 1c0030e4 <EXTI_Init+0x140>
1c0030c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030c8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0030cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0030d0:	2880018c 	ld.w	$r12,$r12,0
1c0030d4:	0014300c 	nor	$r12,$r0,$r12
1c0030d8:	0014b1ad 	and	$r13,$r13,$r12
1c0030dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030e0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0030e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030e8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0030ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0030f0:	2880018c 	ld.w	$r12,$r12,0
1c0030f4:	001531ad 	or	$r13,$r13,$r12
1c0030f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030fc:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003100:	50002400 	b	36(0x24) # 1c003124 <EXTI_Init+0x180>
1c003104:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003108:	2880018d 	ld.w	$r13,$r12,0
1c00310c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003110:	2880018c 	ld.w	$r12,$r12,0
1c003114:	0014300c 	nor	$r12,$r0,$r12
1c003118:	0014b1ad 	and	$r13,$r13,$r12
1c00311c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003120:	2980018d 	st.w	$r13,$r12,0
1c003124:	03400000 	andi	$r0,$r0,0x0
1c003128:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00312c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003130:	4c000020 	jirl	$r0,$r1,0

1c003134 <EXTI_StructInit>:
EXTI_StructInit():
1c003134:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003138:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00313c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003140:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003144:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003148:	29800180 	st.w	$r0,$r12,0
1c00314c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003150:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003154:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003158:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00315c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003160:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003168:	29803180 	st.w	$r0,$r12,12(0xc)
1c00316c:	03400000 	andi	$r0,$r0,0x0
1c003170:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003174:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003178:	4c000020 	jirl	$r0,$r1,0

1c00317c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00317c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003180:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003184:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003188:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00318c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003194:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003198:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00319c:	001531ad 	or	$r13,$r13,$r12
1c0031a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031a4:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031b4:	4c000020 	jirl	$r0,$r1,0

1c0031b8 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0031b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0031c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031cc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0031d0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0031d4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0031d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031dc:	0014300c 	nor	$r12,$r0,$r12
1c0031e0:	0040c18e 	slli.w	$r14,$r12,0x10
1c0031e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031ec:	001535cd 	or	$r13,$r14,$r13
1c0031f0:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0031f4:	03400000 	andi	$r0,$r0,0x0
1c0031f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003200:	4c000020 	jirl	$r0,$r1,0

1c003204 <WDG_DogFeed>:
WDG_DogFeed():
1c003204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003208:	29803076 	st.w	$r22,$r3,12(0xc)
1c00320c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003214:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003218:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00321c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003220:	03400000 	andi	$r0,$r0,0x0
1c003224:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003228:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00322c:	4c000020 	jirl	$r0,$r1,0

1c003230 <I2C_Init>:
I2C_Init():
1c003230:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003234:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003238:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00323c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003240:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003244:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003248:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00324c:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c003250:	0388018c 	ori	$r12,$r12,0x200
1c003254:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003258:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00325c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003260:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003264:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003268:	2880018d 	ld.w	$r13,$r12,0
1c00326c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c003270:	002135cc 	div.wu	$r12,$r14,$r13
1c003274:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00327c <I2C_Init+0x4c>
1c003278:	002a0007 	break	0x7
1c00327c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003280:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003284:	0044898c 	srli.w	$r12,$r12,0x2
1c003288:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00328c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003290:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003294:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003298:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00329c:	2900018d 	st.b	$r13,$r12,0
1c0032a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032a4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0032a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032b0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0032b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032b8:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c0032bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032c0:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c0032c4:	001531ac 	or	$r12,$r13,$r12
1c0032c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032d0:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c0032d4:	001531ac 	or	$r12,$r13,$r12
1c0032d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032dc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0032e0:	001531ac 	or	$r12,$r13,$r12
1c0032e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032ec:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0032f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032f4:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c0032f8:	40001180 	beqz	$r12,16(0x10) # 1c003308 <I2C_Init+0xd8>
1c0032fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003300:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003304:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003308:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00330c:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c003310:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003314:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c003318:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00331c:	54023c00 	bl	572(0x23c) # 1c003558 <I2C_wait>
1c003320:	03400000 	andi	$r0,$r0,0x0
1c003324:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003328:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00332c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003330:	4c000020 	jirl	$r0,$r1,0

1c003334 <I2C_StructInit>:
I2C_StructInit():
1c003334:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003338:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00333c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003340:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003344:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003348:	1400030d 	lu12i.w	$r13,24(0x18)
1c00334c:	039a81ad 	ori	$r13,$r13,0x6a0
1c003350:	2980018d 	st.w	$r13,$r12,0
1c003354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003358:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c00335c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003360:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003364:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c003368:	2900158d 	st.b	$r13,$r12,5(0x5)
1c00336c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003370:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003374:	2900198d 	st.b	$r13,$r12,6(0x6)
1c003378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00337c:	29001d80 	st.b	$r0,$r12,7(0x7)
1c003380:	03400000 	andi	$r0,$r0,0x0
1c003384:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003388:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00338c:	4c000020 	jirl	$r0,$r1,0

1c003390 <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c003390:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003394:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003398:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00339c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033a0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0033a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033a8:	40002580 	beqz	$r12,36(0x24) # 1c0033cc <I2C_GenerateSTOP+0x3c>
1c0033ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0033b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033b8:	0381018c 	ori	$r12,$r12,0x40
1c0033bc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033c4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0033c8:	50002400 	b	36(0x24) # 1c0033ec <I2C_GenerateSTOP+0x5c>
1c0033cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033d0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0033d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033d8:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c0033dc:	0014b1ac 	and	$r12,$r13,$r12
1c0033e0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033e8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0033ec:	03400000 	andi	$r0,$r0,0x0
1c0033f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033f8:	4c000020 	jirl	$r0,$r1,0

1c0033fc <I2C_SendData>:
I2C_SendData():
1c0033fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003400:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003404:	29806076 	st.w	$r22,$r3,24(0x18)
1c003408:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00340c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003410:	001500ac 	move	$r12,$r5
1c003414:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003418:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00341c:	54018400 	bl	388(0x184) # 1c0035a0 <I2C_Unlock>
1c003420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003424:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003428:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00342c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003430:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c003434:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003438:	03400000 	andi	$r0,$r0,0x0
1c00343c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003440:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003444:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003448:	4c000020 	jirl	$r0,$r1,0

1c00344c <I2C_ReceiveData>:
I2C_ReceiveData():
1c00344c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003450:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003454:	29806076 	st.w	$r22,$r3,24(0x18)
1c003458:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00345c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003460:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003464:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c003468:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00346c:	54013400 	bl	308(0x134) # 1c0035a0 <I2C_Unlock>
1c003470:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003474:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003478:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00347c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003480:	001531ac 	or	$r12,$r13,$r12
1c003484:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003488:	0380818c 	ori	$r12,$r12,0x20
1c00348c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003494:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003498:	03400000 	andi	$r0,$r0,0x0
1c00349c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034a8:	4c000020 	jirl	$r0,$r1,0

1c0034ac <I2C_Send7bitAddress>:
I2C_Send7bitAddress():
1c0034ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034c0:	001500ac 	move	$r12,$r5
1c0034c4:	001500cd 	move	$r13,$r6
1c0034c8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034cc:	001501ac 	move	$r12,$r13
1c0034d0:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0034d4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0034d8:	5400c800 	bl	200(0xc8) # 1c0035a0 <I2C_Unlock>
1c0034dc:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c0034e0:	40002980 	beqz	$r12,40(0x28) # 1c003508 <I2C_Send7bitAddress+0x5c>
1c0034e4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034e8:	0380058c 	ori	$r12,$r12,0x1
1c0034ec:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034f0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034f4:	00150185 	move	$r5,$r12
1c0034f8:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0034fc:	02a49084 	addi.w	$r4,$r4,-1756(0x924)
1c003500:	57e6cfff 	bl	-6452(0xfffe6cc) # 1c001bcc <myprintf>
1c003504:	50002800 	b	40(0x28) # 1c00352c <I2C_Send7bitAddress+0x80>
1c003508:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00350c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c003510:	0014b1ac 	and	$r12,$r13,$r12
1c003514:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003518:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00351c:	00150185 	move	$r5,$r12
1c003520:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003524:	02a46084 	addi.w	$r4,$r4,-1768(0x918)
1c003528:	57e6a7ff 	bl	-6492(0xfffe6a4) # 1c001bcc <myprintf>
1c00352c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003530:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003534:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003538:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c00353c:	02be400d 	addi.w	$r13,$r0,-112(0xf90)
1c003540:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00354c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003550:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003554:	4c000020 	jirl	$r0,$r1,0

1c003558 <I2C_wait>:
I2C_wait():
1c003558:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00355c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003560:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003564:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003568:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00356c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003570:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003574:	50001000 	b	16(0x10) # 1c003584 <I2C_wait+0x2c>
1c003578:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00357c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003580:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003584:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003588:	0340098c 	andi	$r12,$r12,0x2
1c00358c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003578 <I2C_wait+0x20>
1c003590:	03400000 	andi	$r0,$r0,0x0
1c003594:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003598:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00359c:	4c000020 	jirl	$r0,$r1,0

1c0035a0 <I2C_Unlock>:
I2C_Unlock():
1c0035a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035a4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035b4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0035b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0035bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0035c0:	0340118c 	andi	$r12,$r12,0x4
1c0035c4:	40002180 	beqz	$r12,32(0x20) # 1c0035e4 <I2C_Unlock+0x44>
1c0035c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035cc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0035d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0035d4:	0380118c 	ori	$r12,$r12,0x4
1c0035d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035e0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0035e4:	03400000 	andi	$r0,$r0,0x0
1c0035e8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035f0:	4c000020 	jirl	$r0,$r1,0

1c0035f4 <CAT24_Write>:
CAT24_Write():
1c0035f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0035fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003600:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003604:	0015008c 	move	$r12,$r4
1c003608:	001500ad 	move	$r13,$r5
1c00360c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003610:	001501ac 	move	$r12,$r13
1c003614:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c003618:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00361c:	035ffd8c 	andi	$r12,$r12,0x7ff
1c003620:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003624:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003628:	00449d8c 	srli.w	$r12,$r12,0x7
1c00362c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003630:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003634:	02be818c 	addi.w	$r12,$r12,-96(0xfa0)
1c003638:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00363c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003640:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c003644:	001501a6 	move	$r6,$r13
1c003648:	00150185 	move	$r5,$r12
1c00364c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003650:	02a01084 	addi.w	$r4,$r4,-2044(0x804)
1c003654:	57e57bff 	bl	-6792(0xfffe578) # 1c001bcc <myprintf>
1c003658:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00365c:	00150006 	move	$r6,$r0
1c003660:	00150185 	move	$r5,$r12
1c003664:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003668:	57fe47ff 	bl	-444(0xffffe44) # 1c0034ac <I2C_Send7bitAddress>
1c00366c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003670:	57feebff 	bl	-280(0xffffee8) # 1c003558 <I2C_wait>
1c003674:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003678:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00367c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003680:	00005d8c 	ext.w.b	$r12,$r12
1c003684:	64001180 	bge	$r12,$r0,16(0x10) # 1c003694 <CAT24_Write+0xa0>
1c003688:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00368c:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c003690:	57e53fff 	bl	-6852(0xfffe53c) # 1c001bcc <myprintf>
1c003694:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003698:	0343fd8c 	andi	$r12,$r12,0xff
1c00369c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0036a0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0036a4:	00150185 	move	$r5,$r12
1c0036a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0036ac:	029f9084 	addi.w	$r4,$r4,2020(0x7e4)
1c0036b0:	57e51fff 	bl	-6884(0xfffe51c) # 1c001bcc <myprintf>
1c0036b4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0036b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036bc:	00150185 	move	$r5,$r12
1c0036c0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036c4:	57fd3bff 	bl	-712(0xffffd38) # 1c0033fc <I2C_SendData>
1c0036c8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036cc:	57fe8fff 	bl	-372(0xffffe8c) # 1c003558 <I2C_wait>
1c0036d0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c0036d4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0036d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036dc:	00005d8c 	ext.w.b	$r12,$r12
1c0036e0:	64001180 	bge	$r12,$r0,16(0x10) # 1c0036f0 <CAT24_Write+0xfc>
1c0036e4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0036e8:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c0036ec:	57e4e3ff 	bl	-6944(0xfffe4e0) # 1c001bcc <myprintf>
1c0036f0:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c0036f4:	00150185 	move	$r5,$r12
1c0036f8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036fc:	57fd03ff 	bl	-768(0xffffd00) # 1c0033fc <I2C_SendData>
1c003700:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003704:	57fe57ff 	bl	-428(0xffffe54) # 1c003558 <I2C_wait>
1c003708:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c00370c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003710:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003714:	00005d8c 	ext.w.b	$r12,$r12
1c003718:	64001180 	bge	$r12,$r0,16(0x10) # 1c003728 <CAT24_Write+0x134>
1c00371c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003720:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c003724:	57e4abff 	bl	-7000(0xfffe4a8) # 1c001bcc <myprintf>
1c003728:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00372c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003730:	57fc63ff 	bl	-928(0xffffc60) # 1c003390 <I2C_GenerateSTOP>
1c003734:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003738:	57fe23ff 	bl	-480(0xffffe20) # 1c003558 <I2C_wait>
1c00373c:	03400000 	andi	$r0,$r0,0x0
1c003740:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003744:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003748:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00374c:	4c000020 	jirl	$r0,$r1,0

1c003750 <CAT24_Read>:
CAT24_Read():
1c003750:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003754:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003758:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00375c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003760:	0015008c 	move	$r12,$r4
1c003764:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003768:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00376c:	035ffd8c 	andi	$r12,$r12,0x7ff
1c003770:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003774:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003778:	00449d8c 	srli.w	$r12,$r12,0x7
1c00377c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003784:	02be818c 	addi.w	$r12,$r12,-96(0xfa0)
1c003788:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00378c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003790:	00150185 	move	$r5,$r12
1c003794:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003798:	029c1084 	addi.w	$r4,$r4,1796(0x704)
1c00379c:	57e433ff 	bl	-7120(0xfffe430) # 1c001bcc <myprintf>
1c0037a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0037a4:	00150006 	move	$r6,$r0
1c0037a8:	00150185 	move	$r5,$r12
1c0037ac:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0037b0:	57fcffff 	bl	-772(0xffffcfc) # 1c0034ac <I2C_Send7bitAddress>
1c0037b4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0037b8:	57fda3ff 	bl	-608(0xffffda0) # 1c003558 <I2C_wait>
1c0037bc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c0037c0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0037c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0037c8:	00005d8c 	ext.w.b	$r12,$r12
1c0037cc:	64001180 	bge	$r12,$r0,16(0x10) # 1c0037dc <CAT24_Read+0x8c>
1c0037d0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037d4:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c0037d8:	57e3f7ff 	bl	-7180(0xfffe3f4) # 1c001bcc <myprintf>
1c0037dc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037e0:	00150185 	move	$r5,$r12
1c0037e4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037e8:	029b7084 	addi.w	$r4,$r4,1756(0x6dc)
1c0037ec:	57e3e3ff 	bl	-7200(0xfffe3e0) # 1c001bcc <myprintf>
1c0037f0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037f4:	0343fd8c 	andi	$r12,$r12,0xff
1c0037f8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0037fc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003804:	00150185 	move	$r5,$r12
1c003808:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00380c:	57fbf3ff 	bl	-1040(0xffffbf0) # 1c0033fc <I2C_SendData>
1c003810:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003814:	57fd47ff 	bl	-700(0xffffd44) # 1c003558 <I2C_wait>
1c003818:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c00381c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003820:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003824:	00005d8c 	ext.w.b	$r12,$r12
1c003828:	64001180 	bge	$r12,$r0,16(0x10) # 1c003838 <CAT24_Read+0xe8>
1c00382c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003830:	029a2084 	addi.w	$r4,$r4,1672(0x688)
1c003834:	57e39bff 	bl	-7272(0xfffe398) # 1c001bcc <myprintf>
1c003838:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00383c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c003840:	00150185 	move	$r5,$r12
1c003844:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003848:	57fc67ff 	bl	-924(0xffffc64) # 1c0034ac <I2C_Send7bitAddress>
1c00384c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003850:	57fd0bff 	bl	-760(0xffffd08) # 1c003558 <I2C_wait>
1c003854:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003858:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00385c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003860:	00005d8c 	ext.w.b	$r12,$r12
1c003864:	64001180 	bge	$r12,$r0,16(0x10) # 1c003874 <CAT24_Read+0x124>
1c003868:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00386c:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c003870:	57e35fff 	bl	-7332(0xfffe35c) # 1c001bcc <myprintf>
1c003874:	02810006 	addi.w	$r6,$r0,64(0x40)
1c003878:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00387c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003880:	57fbcfff 	bl	-1076(0xffffbcc) # 1c00344c <I2C_ReceiveData>
1c003884:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003888:	57fcd3ff 	bl	-816(0xffffcd0) # 1c003558 <I2C_wait>
1c00388c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003890:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003894:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003898:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00389c:	00150184 	move	$r4,$r12
1c0038a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0038a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0038a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038ac:	4c000020 	jirl	$r0,$r1,0

1c0038b0 <dma_reset>:
dma_reset():
1c0038b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0038b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038bc:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0038c0:	0380218c 	ori	$r12,$r12,0x8
1c0038c4:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c0038c8:	2980018d 	st.w	$r13,$r12,0
1c0038cc:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0038d0:	0380218c 	ori	$r12,$r12,0x8
1c0038d4:	2880018c 	ld.w	$r12,$r12,0
1c0038d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038dc:	50001400 	b	20(0x14) # 1c0038f0 <dma_reset+0x40>
1c0038e0:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0038e4:	0380218c 	ori	$r12,$r12,0x8
1c0038e8:	2880018c 	ld.w	$r12,$r12,0
1c0038ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0038f8:	5fffe9ac 	bne	$r13,$r12,-24(0x3ffe8) # 1c0038e0 <dma_reset+0x30>
1c0038fc:	03400000 	andi	$r0,$r0,0x0
1c003900:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003904:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003908:	4c000020 	jirl	$r0,$r1,0

1c00390c <dma_start>:
dma_start():
1c00390c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003910:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003914:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003918:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00391c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003920:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003924:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c003928:	0380218c 	ori	$r12,$r12,0x8
1c00392c:	2880018c 	ld.w	$r12,$r12,0
1c003930:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003934:	50001400 	b	20(0x14) # 1c003948 <dma_start+0x3c>
1c003938:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c00393c:	0380218c 	ori	$r12,$r12,0x8
1c003940:	2880018c 	ld.w	$r12,$r12,0
1c003944:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003948:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00394c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003950:	5fffe9ac 	bne	$r13,$r12,-24(0x3ffe8) # 1c003938 <dma_start+0x2c>
1c003954:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c003958:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00395c:	143fffed 	lu12i.w	$r13,131071(0x1ffff)
1c003960:	03bffdad 	ori	$r13,$r13,0xfff
1c003964:	0014b5cd 	and	$r13,$r14,$r13
1c003968:	2980018d 	st.w	$r13,$r12,0
1c00396c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c003970:	0380118c 	ori	$r12,$r12,0x4
1c003974:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003978:	2980018d 	st.w	$r13,$r12,0
1c00397c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c003980:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003984:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00399c <dma_start+0x90>
1c003988:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c00398c:	0380218c 	ori	$r12,$r12,0x8
1c003990:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c003994:	2980018d 	st.w	$r13,$r12,0
1c003998:	50001400 	b	20(0x14) # 1c0039ac <dma_start+0xa0>
1c00399c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0039a0:	0380218c 	ori	$r12,$r12,0x8
1c0039a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0039a8:	2980018d 	st.w	$r13,$r12,0
1c0039ac:	03400000 	andi	$r0,$r0,0x0
1c0039b0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039b8:	4c000020 	jirl	$r0,$r1,0

1c0039bc <Touch_CountBaseInit>:
Touch_CountBaseInit():
1c0039bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039c0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0039d4:	0040e18d 	slli.w	$r13,$r12,0x18
1c0039d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039dc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0039e0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0039e4:	001531ad 	or	$r13,$r13,$r12
1c0039e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039ec:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0039f0:	0040bd8e 	slli.w	$r14,$r12,0xf
1c0039f4:	140001ec 	lu12i.w	$r12,15(0xf)
1c0039f8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0039fc:	0014b1cc 	and	$r12,$r14,$r12
1c003a00:	001531ad 	or	$r13,$r13,$r12
1c003a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a08:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003a0c:	0040a18e 	slli.w	$r14,$r12,0x8
1c003a10:	1400002c 	lu12i.w	$r12,1(0x1)
1c003a14:	03bc018c 	ori	$r12,$r12,0xf00
1c003a18:	0014b1cc 	and	$r12,$r14,$r12
1c003a1c:	001531ad 	or	$r13,$r13,$r12
1c003a20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a24:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003a28:	03403d8c 	andi	$r12,$r12,0xf
1c003a2c:	001531ad 	or	$r13,$r13,$r12
1c003a30:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a34:	0380218c 	ori	$r12,$r12,0x8
1c003a38:	2980018d 	st.w	$r13,$r12,0
1c003a3c:	03400000 	andi	$r0,$r0,0x0
1c003a40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a48:	4c000020 	jirl	$r0,$r1,0

1c003a4c <Touch_PerformInit>:
Touch_PerformInit():
1c003a4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a60:	2a00018c 	ld.bu	$r12,$r12,0
1c003a64:	0040e18d 	slli.w	$r13,$r12,0x18
1c003a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a6c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003a70:	0040d98e 	slli.w	$r14,$r12,0x16
1c003a74:	1401800c 	lu12i.w	$r12,3072(0xc00)
1c003a78:	0014b1cc 	and	$r12,$r14,$r12
1c003a7c:	001531ad 	or	$r13,$r13,$r12
1c003a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a84:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003a88:	0040c18e 	slli.w	$r14,$r12,0x10
1c003a8c:	14007e0c 	lu12i.w	$r12,1008(0x3f0)
1c003a90:	0014b1cc 	and	$r12,$r14,$r12
1c003a94:	001531ad 	or	$r13,$r13,$r12
1c003a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a9c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003aa0:	0040a18c 	slli.w	$r12,$r12,0x8
1c003aa4:	037c018c 	andi	$r12,$r12,0xf00
1c003aa8:	001531ac 	or	$r12,$r13,$r12
1c003aac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ab0:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c003ab4:	0015358d 	or	$r13,$r12,$r13
1c003ab8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003abc:	0380318c 	ori	$r12,$r12,0xc
1c003ac0:	2980018d 	st.w	$r13,$r12,0
1c003ac4:	03400000 	andi	$r0,$r0,0x0
1c003ac8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003acc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ad0:	4c000020 	jirl	$r0,$r1,0

1c003ad4 <Touch_ControlConfig>:
Touch_ControlConfig():
1c003ad4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ad8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003adc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ae0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ae8:	2a40018c 	ld.hu	$r12,$r12,0
1c003aec:	0040c18d 	slli.w	$r13,$r12,0x10
1c003af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003af4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003af8:	0040bd8e 	slli.w	$r14,$r12,0xf
1c003afc:	140001ec 	lu12i.w	$r12,15(0xf)
1c003b00:	03bffd8c 	ori	$r12,$r12,0xfff
1c003b04:	0014b1cc 	and	$r12,$r14,$r12
1c003b08:	001531ad 	or	$r13,$r13,$r12
1c003b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b10:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003b14:	0040b18e 	slli.w	$r14,$r12,0xc
1c003b18:	140000ec 	lu12i.w	$r12,7(0x7)
1c003b1c:	0014b1cc 	and	$r12,$r14,$r12
1c003b20:	001531ad 	or	$r13,$r13,$r12
1c003b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b28:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003b2c:	0040ad8c 	slli.w	$r12,$r12,0xb
1c003b30:	0360018c 	andi	$r12,$r12,0x800
1c003b34:	001531ad 	or	$r13,$r13,$r12
1c003b38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b3c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003b40:	0040a18c 	slli.w	$r12,$r12,0x8
1c003b44:	034c018c 	andi	$r12,$r12,0x300
1c003b48:	001531ad 	or	$r13,$r13,$r12
1c003b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b50:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003b54:	0040918c 	slli.w	$r12,$r12,0x4
1c003b58:	0343fd8c 	andi	$r12,$r12,0xff
1c003b5c:	001531ad 	or	$r13,$r13,$r12
1c003b60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b64:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c003b68:	0040858c 	slli.w	$r12,$r12,0x1
1c003b6c:	0340098c 	andi	$r12,$r12,0x2
1c003b70:	001531ad 	or	$r13,$r13,$r12
1c003b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b78:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c003b7c:	0340058c 	andi	$r12,$r12,0x1
1c003b80:	001531ad 	or	$r13,$r13,$r12
1c003b84:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b88:	2980018d 	st.w	$r13,$r12,0
1c003b8c:	03400000 	andi	$r0,$r0,0x0
1c003b90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b98:	4c000020 	jirl	$r0,$r1,0

1c003b9c <TOUCH_Cmd>:
TOUCH_Cmd():
1c003b9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ba0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003ba4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ba8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003bac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bb0:	40002580 	beqz	$r12,36(0x24) # 1c003bd4 <TOUCH_Cmd+0x38>
1c003bb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bb8:	0380118c 	ori	$r12,$r12,0x4
1c003bbc:	2880018d 	ld.w	$r13,$r12,0
1c003bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bc4:	0380118c 	ori	$r12,$r12,0x4
1c003bc8:	038801ad 	ori	$r13,$r13,0x200
1c003bcc:	2980018d 	st.w	$r13,$r12,0
1c003bd0:	50002400 	b	36(0x24) # 1c003bf4 <TOUCH_Cmd+0x58>
1c003bd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bd8:	0380118c 	ori	$r12,$r12,0x4
1c003bdc:	2880018e 	ld.w	$r14,$r12,0
1c003be0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003be4:	0380118c 	ori	$r12,$r12,0x4
1c003be8:	02b7fc0d 	addi.w	$r13,$r0,-513(0xdff)
1c003bec:	0014b5cd 	and	$r13,$r14,$r13
1c003bf0:	2980018d 	st.w	$r13,$r12,0
1c003bf4:	03400000 	andi	$r0,$r0,0x0
1c003bf8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003bfc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c00:	4c000020 	jirl	$r0,$r1,0

1c003c04 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003c04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c10:	0015008c 	move	$r12,$r4
1c003c14:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c18:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c1c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c20:	0015018d 	move	$r13,$r12
1c003c24:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c28:	0381018c 	ori	$r12,$r12,0x40
1c003c2c:	001031ac 	add.w	$r12,$r13,$r12
1c003c30:	2880018c 	ld.w	$r12,$r12,0
1c003c34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c38:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c40:	00150184 	move	$r4,$r12
1c003c44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c4c:	4c000020 	jirl	$r0,$r1,0

1c003c50 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003c50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c5c:	0015008c 	move	$r12,$r4
1c003c60:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c64:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c68:	0040898c 	slli.w	$r12,$r12,0x2
1c003c6c:	0015018d 	move	$r13,$r12
1c003c70:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c74:	0382018c 	ori	$r12,$r12,0x80
1c003c78:	001031ac 	add.w	$r12,$r13,$r12
1c003c7c:	2880018c 	ld.w	$r12,$r12,0
1c003c80:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c84:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c88:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c8c:	00150184 	move	$r4,$r12
1c003c90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c98:	4c000020 	jirl	$r0,$r1,0

1c003c9c <TOUCH_EnablePollScan>:
TOUCH_EnablePollScan():
1c003c9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ca0:	29803076 	st.w	$r22,$r3,12(0xc)
1c003ca4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ca8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003cac:	2880018d 	ld.w	$r13,$r12,0
1c003cb0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003cb4:	038009ad 	ori	$r13,$r13,0x2
1c003cb8:	2980018d 	st.w	$r13,$r12,0
1c003cbc:	03400000 	andi	$r0,$r0,0x0
1c003cc0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003cc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cc8:	4c000020 	jirl	$r0,$r1,0

1c003ccc <TOUCH_EnableSingleScan>:
TOUCH_EnableSingleScan():
1c003ccc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003cd0:	29803076 	st.w	$r22,$r3,12(0xc)
1c003cd4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cd8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003cdc:	2880018d 	ld.w	$r13,$r12,0
1c003ce0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003ce4:	038005ad 	ori	$r13,$r13,0x1
1c003ce8:	2980018d 	st.w	$r13,$r12,0
1c003cec:	03400000 	andi	$r0,$r0,0x0
1c003cf0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003cf4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cf8:	4c000020 	jirl	$r0,$r1,0

1c003cfc <TOUCH_SetDownTh>:
TOUCH_SetDownTh():
1c003cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d08:	0015008c 	move	$r12,$r4
1c003d0c:	001500ad 	move	$r13,$r5
1c003d10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003d14:	001501ac 	move	$r12,$r13
1c003d18:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003d1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d20:	0040898c 	slli.w	$r12,$r12,0x2
1c003d24:	0015018d 	move	$r13,$r12
1c003d28:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d2c:	0381018c 	ori	$r12,$r12,0x40
1c003d30:	001031ac 	add.w	$r12,$r13,$r12
1c003d34:	2880018c 	ld.w	$r12,$r12,0
1c003d38:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d3c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c003d40:	0040e1ad 	slli.w	$r13,$r13,0x18
1c003d44:	001501ae 	move	$r14,$r13
1c003d48:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003d4c:	004089ad 	slli.w	$r13,$r13,0x2
1c003d50:	001501af 	move	$r15,$r13
1c003d54:	157fd68d 	lu12i.w	$r13,-262476(0xbfeb4)
1c003d58:	038101ad 	ori	$r13,$r13,0x40
1c003d5c:	001035ed 	add.w	$r13,$r15,$r13
1c003d60:	0015398c 	or	$r12,$r12,$r14
1c003d64:	298001ac 	st.w	$r12,$r13,0
1c003d68:	03400000 	andi	$r0,$r0,0x0
1c003d6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d74:	4c000020 	jirl	$r0,$r1,0

1c003d78 <TOUCH_SetChnAttr>:
TOUCH_SetChnAttr():
1c003d78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d7c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d84:	0015008c 	move	$r12,$r4
1c003d88:	001500ad 	move	$r13,$r5
1c003d8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003d90:	001501ac 	move	$r12,$r13
1c003d94:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003d98:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003d9c:	0040e18c 	slli.w	$r12,$r12,0x18
1c003da0:	0015018e 	move	$r14,$r12
1c003da4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003da8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dac:	0015018d 	move	$r13,$r12
1c003db0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003db4:	0382018c 	ori	$r12,$r12,0x80
1c003db8:	001031ac 	add.w	$r12,$r13,$r12
1c003dbc:	2880018c 	ld.w	$r12,$r12,0
1c003dc0:	037ffd8c 	andi	$r12,$r12,0xfff
1c003dc4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003dc8:	004089ad 	slli.w	$r13,$r13,0x2
1c003dcc:	001501af 	move	$r15,$r13
1c003dd0:	157fd68d 	lu12i.w	$r13,-262476(0xbfeb4)
1c003dd4:	038101ad 	ori	$r13,$r13,0x40
1c003dd8:	001035ed 	add.w	$r13,$r15,$r13
1c003ddc:	001531cc 	or	$r12,$r14,$r12
1c003de0:	298001ac 	st.w	$r12,$r13,0
1c003de4:	03400000 	andi	$r0,$r0,0x0
1c003de8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003dec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003df0:	4c000020 	jirl	$r0,$r1,0

1c003df4 <TOUCH_SetAllChnAttr>:
TOUCH_SetAllChnAttr():
1c003df4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003df8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003dfc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003e00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003e04:	0015008c 	move	$r12,$r4
1c003e08:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003e0c:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003e10:	50002800 	b	40(0x28) # 1c003e38 <TOUCH_SetAllChnAttr+0x44>
1c003e14:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003e18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e1c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c003e20:	001501a5 	move	$r5,$r13
1c003e24:	00150184 	move	$r4,$r12
1c003e28:	57ff53ff 	bl	-176(0xfffff50) # 1c003d78 <TOUCH_SetChnAttr>
1c003e2c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003e30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e34:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003e38:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003e3c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e40:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c003e14 <TOUCH_SetAllChnAttr+0x20>
1c003e44:	03400000 	andi	$r0,$r0,0x0
1c003e48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003e4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003e50:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003e54:	4c000020 	jirl	$r0,$r1,0

1c003e58 <TOUCH_Init>:
TOUCH_Init():
1c003e58:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003e5c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003e60:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003e64:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003e68:	0015008c 	move	$r12,$r4
1c003e6c:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c003e70:	0281400c 	addi.w	$r12,$r0,80(0x50)
1c003e74:	293fa2cc 	st.b	$r12,$r22,-24(0xfe8)
1c003e78:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003e7c:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c003e80:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003e84:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003e88:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003e8c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003e90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003e94:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003e98:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c003e9c:	00150184 	move	$r4,$r12
1c003ea0:	57fb1fff 	bl	-1252(0xffffb1c) # 1c0039bc <Touch_CountBaseInit>
1c003ea4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003ea8:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c003eac:	293f86c0 	st.b	$r0,$r22,-31(0xfe1)
1c003eb0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003eb4:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c003eb8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003ebc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c003ec0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003ec4:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c003ec8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c003ecc:	00150184 	move	$r4,$r12
1c003ed0:	57fb7fff 	bl	-1156(0xffffb7c) # 1c003a4c <Touch_PerformInit>
1c003ed4:	03bffc0c 	ori	$r12,$r0,0xfff
1c003ed8:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c003edc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ee0:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c003ee4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003ee8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c003eec:	293f62c0 	st.b	$r0,$r22,-40(0xfd8)
1c003ef0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003ef4:	293f66cc 	st.b	$r12,$r22,-39(0xfd9)
1c003ef8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003efc:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c003f00:	293f6ec0 	st.b	$r0,$r22,-37(0xfdb)
1c003f04:	293f72c0 	st.b	$r0,$r22,-36(0xfdc)
1c003f08:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003f0c:	00150184 	move	$r4,$r12
1c003f10:	57fbc7ff 	bl	-1084(0xffffbc4) # 1c003ad4 <Touch_ControlConfig>
1c003f14:	57fdbbff 	bl	-584(0xffffdb8) # 1c003ccc <TOUCH_EnableSingleScan>
1c003f18:	03400000 	andi	$r0,$r0,0x0
1c003f1c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003f20:	2880018c 	ld.w	$r12,$r12,0
1c003f24:	0340058c 	andi	$r12,$r12,0x1
1c003f28:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c003f1c <TOUCH_Init+0xc4>
1c003f2c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c003f30:	00150184 	move	$r4,$r12
1c003f34:	57fec3ff 	bl	-320(0xffffec0) # 1c003df4 <TOUCH_SetAllChnAttr>
1c003f38:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003f3c:	57fc63ff 	bl	-928(0xffffc60) # 1c003b9c <TOUCH_Cmd>
1c003f40:	03400000 	andi	$r0,$r0,0x0
1c003f44:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003f48:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003f4c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003f50:	4c000020 	jirl	$r0,$r1,0

1c003f54 <Printf_CountVal>:
Printf_CountVal():
1c003f54:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c003f58:	29813061 	st.w	$r1,$r3,76(0x4c)
1c003f5c:	29812076 	st.w	$r22,$r3,72(0x48)
1c003f60:	02814076 	addi.w	$r22,$r3,80(0x50)
1c003f64:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f68:	50003c00 	b	60(0x3c) # 1c003fa4 <Printf_CountVal+0x50>
1c003f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f70:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003f74:	00150184 	move	$r4,$r12
1c003f78:	57fcdbff 	bl	-808(0xffffcd8) # 1c003c50 <TOUCH_GetCountValue>
1c003f7c:	0015008c 	move	$r12,$r4
1c003f80:	0015018d 	move	$r13,$r12
1c003f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f88:	0040898c 	slli.w	$r12,$r12,0x2
1c003f8c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f90:	001031cc 	add.w	$r12,$r14,$r12
1c003f94:	29bf218d 	st.w	$r13,$r12,-56(0xfc8)
1c003f98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fa0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fa4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fa8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fac:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c003f6c <Printf_CountVal+0x18>
1c003fb0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003fb4:	02be9084 	addi.w	$r4,$r4,-92(0xfa4)
1c003fb8:	57dc17ff 	bl	-9196(0xfffdc14) # 1c001bcc <myprintf>
1c003fbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fc0:	50003400 	b	52(0x34) # 1c003ff4 <Printf_CountVal+0xa0>
1c003fc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fc8:	0040898c 	slli.w	$r12,$r12,0x2
1c003fcc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fd0:	001031ac 	add.w	$r12,$r13,$r12
1c003fd4:	28bf218c 	ld.w	$r12,$r12,-56(0xfc8)
1c003fd8:	00150185 	move	$r5,$r12
1c003fdc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003fe0:	02bd5084 	addi.w	$r4,$r4,-172(0xf54)
1c003fe4:	57dbebff 	bl	-9240(0xfffdbe8) # 1c001bcc <myprintf>
1c003fe8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ff0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ff4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ff8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ffc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003fc4 <Printf_CountVal+0x70>
1c004000:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004004:	0380118c 	ori	$r12,$r12,0x4
1c004008:	2880018c 	ld.w	$r12,$r12,0
1c00400c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004010:	03403d8c 	andi	$r12,$r12,0xf
1c004014:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004018:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00401c:	00150185 	move	$r5,$r12
1c004020:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004024:	02bcf084 	addi.w	$r4,$r4,-196(0xf3c)
1c004028:	57dba7ff 	bl	-9308(0xfffdba4) # 1c001bcc <myprintf>
1c00402c:	03400000 	andi	$r0,$r0,0x0
1c004030:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c004034:	28812076 	ld.w	$r22,$r3,72(0x48)
1c004038:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00403c:	4c000020 	jirl	$r0,$r1,0

1c004040 <TIM_Init>:
TIM_Init():
1c004040:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004044:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004048:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00404c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004050:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004054:	29800180 	st.w	$r0,$r12,0
1c004058:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00405c:	0380118c 	ori	$r12,$r12,0x4
1c004060:	29800180 	st.w	$r0,$r12,0
1c004064:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004068:	0380218c 	ori	$r12,$r12,0x8
1c00406c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004070:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c004074:	2980018d 	st.w	$r13,$r12,0
1c004078:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00407c:	0380318c 	ori	$r12,$r12,0xc
1c004080:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004084:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c004088:	2980018d 	st.w	$r13,$r12,0
1c00408c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004090:	2880018e 	ld.w	$r14,$r12,0
1c004094:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004098:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c00409c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040a0:	001535cd 	or	$r13,$r14,$r13
1c0040a4:	2980018d 	st.w	$r13,$r12,0
1c0040a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040ac:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0040b0:	40002180 	beqz	$r12,32(0x20) # 1c0040d0 <TIM_Init+0x90>
1c0040b4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0040bc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0040c0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040c4:	038005ad 	ori	$r13,$r13,0x1
1c0040c8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0040cc:	2900018d 	st.b	$r13,$r12,0
1c0040d0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040d4:	2880018e 	ld.w	$r14,$r12,0
1c0040d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040dc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0040e0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040e4:	001535cd 	or	$r13,$r14,$r13
1c0040e8:	2980018d 	st.w	$r13,$r12,0
1c0040ec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040f0:	2880018e 	ld.w	$r14,$r12,0
1c0040f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040f8:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0040fc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004100:	001535cd 	or	$r13,$r14,$r13
1c004104:	2980018d 	st.w	$r13,$r12,0
1c004108:	03400000 	andi	$r0,$r0,0x0
1c00410c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004110:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004114:	4c000020 	jirl	$r0,$r1,0

1c004118 <TIM_StructInit>:
TIM_StructInit():
1c004118:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00411c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004120:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004124:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00412c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c004130:	038801ad 	ori	$r13,$r13,0x200
1c004134:	2980018d 	st.w	$r13,$r12,0
1c004138:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00413c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004140:	2980618d 	st.w	$r13,$r12,24(0x18)
1c004144:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004148:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00414c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c004150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004154:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004158:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00415c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004160:	1400002d 	lu12i.w	$r13,1(0x1)
1c004164:	03bcfdad 	ori	$r13,$r13,0xf3f
1c004168:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00416c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004170:	1400026d 	lu12i.w	$r13,19(0x13)
1c004174:	03a201ad 	ori	$r13,$r13,0x880
1c004178:	2980218d 	st.w	$r13,$r12,8(0x8)
1c00417c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004180:	29803180 	st.w	$r0,$r12,12(0xc)
1c004184:	03400000 	andi	$r0,$r0,0x0
1c004188:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00418c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004190:	4c000020 	jirl	$r0,$r1,0

1c004194 <TIM_Cmd>:
TIM_Cmd():
1c004194:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004198:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00419c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0041a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041a8:	40001d80 	beqz	$r12,28(0x1c) # 1c0041c4 <TIM_Cmd+0x30>
1c0041ac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041b0:	2880018d 	ld.w	$r13,$r12,0
1c0041b4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041b8:	038005ad 	ori	$r13,$r13,0x1
1c0041bc:	2980018d 	st.w	$r13,$r12,0
1c0041c0:	50001800 	b	24(0x18) # 1c0041d8 <TIM_Cmd+0x44>
1c0041c4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041c8:	2880018d 	ld.w	$r13,$r12,0
1c0041cc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041d0:	0343f9ad 	andi	$r13,$r13,0xfe
1c0041d4:	2980018d 	st.w	$r13,$r12,0
1c0041d8:	03400000 	andi	$r0,$r0,0x0
1c0041dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0041e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041e4:	4c000020 	jirl	$r0,$r1,0

1c0041e8 <TIM_ITConfig>:
TIM_ITConfig():
1c0041e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0041f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0041f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041fc:	40003980 	beqz	$r12,56(0x38) # 1c004234 <TIM_ITConfig+0x4c>
1c004200:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004204:	2880018d 	ld.w	$r13,$r12,0
1c004208:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00420c:	038009ad 	ori	$r13,$r13,0x2
1c004210:	2980018d 	st.w	$r13,$r12,0
1c004214:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004218:	2a00018c 	ld.bu	$r12,$r12,0
1c00421c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004220:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004224:	038005ad 	ori	$r13,$r13,0x1
1c004228:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00422c:	2900018d 	st.b	$r13,$r12,0
1c004230:	50003800 	b	56(0x38) # 1c004268 <TIM_ITConfig+0x80>
1c004234:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004238:	2880018d 	ld.w	$r13,$r12,0
1c00423c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004240:	0343f5ad 	andi	$r13,$r13,0xfd
1c004244:	2980018d 	st.w	$r13,$r12,0
1c004248:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00424c:	2a00018c 	ld.bu	$r12,$r12,0
1c004250:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c004254:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004258:	02bff80d 	addi.w	$r13,$r0,-2(0xffe)
1c00425c:	0014b5cd 	and	$r13,$r14,$r13
1c004260:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004264:	2900018d 	st.b	$r13,$r12,0
1c004268:	03400000 	andi	$r0,$r0,0x0
1c00426c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004270:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004274:	4c000020 	jirl	$r0,$r1,0

1c004278 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004278:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00427c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004280:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004284:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004288:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00428c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004290:	2880018d 	ld.w	$r13,$r12,0
1c004294:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004298:	0014b1ac 	and	$r12,$r13,$r12
1c00429c:	40001180 	beqz	$r12,16(0x10) # 1c0042ac <TIM_GetITStatus+0x34>
1c0042a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0042a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042a8:	50000800 	b	8(0x8) # 1c0042b0 <TIM_GetITStatus+0x38>
1c0042ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042b4:	00150184 	move	$r4,$r12
1c0042b8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0042bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0042c0:	4c000020 	jirl	$r0,$r1,0

1c0042c4 <TIM_ClearIT>:
TIM_ClearIT():
1c0042c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0042cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0042d4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042d8:	2880018e 	ld.w	$r14,$r12,0
1c0042dc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0042e4:	001535cd 	or	$r13,$r14,$r13
1c0042e8:	2980018d 	st.w	$r13,$r12,0
1c0042ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0042f0:	03800d8c 	ori	$r12,$r12,0x3
1c0042f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0042f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0042fc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004300:	03800d8c 	ori	$r12,$r12,0x3
1c004304:	038005ad 	ori	$r13,$r13,0x1
1c004308:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00430c:	2900018d 	st.b	$r13,$r12,0
1c004310:	03400000 	andi	$r0,$r0,0x0
1c004314:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004318:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00431c:	4c000020 	jirl	$r0,$r1,0

1c004320 <recv_dat_int>:
recv_dat_int():
1c004320:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004324:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004328:	29806076 	st.w	$r22,$r3,24(0x18)
1c00432c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004330:	0015008c 	move	$r12,$r4
1c004334:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004338:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00433c:	02b3218c 	addi.w	$r12,$r12,-824(0xcc8)
1c004340:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004344:	2980018d 	st.w	$r13,$r12,0
1c004348:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00434c:	00150185 	move	$r5,$r12
1c004350:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004354:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c004358:	54001800 	bl	24(0x18) # 1c004370 <Buffer_write>
1c00435c:	03400000 	andi	$r0,$r0,0x0
1c004360:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004364:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004368:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00436c:	4c000020 	jirl	$r0,$r1,0

1c004370 <Buffer_write>:
Buffer_write():
1c004370:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004374:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004378:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00437c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004380:	001500ac 	move	$r12,$r5
1c004384:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00438c:	2880018c 	ld.w	$r12,$r12,0
1c004390:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004394:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c004398:	0010358c 	add.w	$r12,$r12,$r13
1c00439c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0043a0:	2900018d 	st.b	$r13,$r12,0
1c0043a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043a8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0043ac:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0043b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043b4:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0043b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043bc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0043c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043c4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0043c8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0043d4 <Buffer_write+0x64>
1c0043cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043d0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0043d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043d8:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c0043dc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0043e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043e4:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0043e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043ec:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0043f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043f4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0043f8:	6400458d 	bge	$r12,$r13,68(0x44) # 1c00443c <Buffer_write+0xcc>
1c0043fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004400:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c004404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004408:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00440c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004410:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c004414:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00441c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c004420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004424:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c004428:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00442c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c004430:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00443c <Buffer_write+0xcc>
1c004434:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004438:	29802180 	st.w	$r0,$r12,8(0x8)
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004444:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004448:	4c000020 	jirl	$r0,$r1,0

1c00444c <do_exit>:
do_exit():
1c00444c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004450:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004454:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004458:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00445c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004460:	03400000 	andi	$r0,$r0,0x0
1c004464:	00150184 	move	$r4,$r12
1c004468:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00446c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004470:	4c000020 	jirl	$r0,$r1,0

1c004474 <do_help>:
do_help():
1c004474:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004478:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00447c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004480:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004484:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004488:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00448c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004490:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004494:	580015ac 	beq	$r13,$r12,20(0x14) # 1c0044a8 <do_help+0x34>
1c004498:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00449c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0044a0:	580091ac 	beq	$r13,$r12,144(0x90) # 1c004530 <do_help+0xbc>
1c0044a4:	5001ac00 	b	428(0x1ac) # 1c004650 <do_help+0x1dc>
1c0044a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044ac:	02bfa084 	addi.w	$r4,$r4,-24(0xfe8)
1c0044b0:	57d71fff 	bl	-10468(0xfffd71c) # 1c001bcc <myprintf>
1c0044b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044b8:	50004400 	b	68(0x44) # 1c0044fc <do_help+0x88>
1c0044bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044c0:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0044c4:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0044c8:	02b7b1ad 	addi.w	$r13,$r13,-532(0xdec)
1c0044cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044d0:	0040918c 	slli.w	$r12,$r12,0x4
1c0044d4:	001031ac 	add.w	$r12,$r13,$r12
1c0044d8:	2880018c 	ld.w	$r12,$r12,0
1c0044dc:	00150186 	move	$r6,$r12
1c0044e0:	001501c5 	move	$r5,$r14
1c0044e4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044e8:	02bef084 	addi.w	$r4,$r4,-68(0xfbc)
1c0044ec:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c001bcc <myprintf>
1c0044f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044fc:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004500:	02b6d1ad 	addi.w	$r13,$r13,-588(0xdb4)
1c004504:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004508:	0040918c 	slli.w	$r12,$r12,0x4
1c00450c:	001031ac 	add.w	$r12,$r13,$r12
1c004510:	2880018c 	ld.w	$r12,$r12,0
1c004514:	00150185 	move	$r5,$r12
1c004518:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00451c:	02b62084 	addi.w	$r4,$r4,-632(0xd88)
1c004520:	57e537ff 	bl	-6860(0xfffe534) # 1c002a54 <strcmp>
1c004524:	0015008c 	move	$r12,$r4
1c004528:	47ff959f 	bnez	$r12,-108(0x7fff94) # 1c0044bc <do_help+0x48>
1c00452c:	50013800 	b	312(0x138) # 1c004664 <do_help+0x1f0>
1c004530:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004534:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c004538:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00453c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004540:	5000a000 	b	160(0xa0) # 1c0045e0 <do_help+0x16c>
1c004544:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004548:	02b5b1ad 	addi.w	$r13,$r13,-660(0xd6c)
1c00454c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004550:	0040918c 	slli.w	$r12,$r12,0x4
1c004554:	001031ac 	add.w	$r12,$r13,$r12
1c004558:	2880018c 	ld.w	$r12,$r12,0
1c00455c:	00150185 	move	$r5,$r12
1c004560:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c004564:	57e4f3ff 	bl	-6928(0xfffe4f0) # 1c002a54 <strcmp>
1c004568:	0015008c 	move	$r12,$r4
1c00456c:	44006980 	bnez	$r12,104(0x68) # 1c0045d4 <do_help+0x160>
1c004570:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004574:	02b501ad 	addi.w	$r13,$r13,-704(0xd40)
1c004578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00457c:	0040918c 	slli.w	$r12,$r12,0x4
1c004580:	001031ac 	add.w	$r12,$r13,$r12
1c004584:	2880018e 	ld.w	$r14,$r12,0
1c004588:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c00458c:	02b4a1ad 	addi.w	$r13,$r13,-728(0xd28)
1c004590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004594:	0040918c 	slli.w	$r12,$r12,0x4
1c004598:	001031ac 	add.w	$r12,$r13,$r12
1c00459c:	2880218f 	ld.w	$r15,$r12,8(0x8)
1c0045a0:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0045a4:	02b441ad 	addi.w	$r13,$r13,-752(0xd10)
1c0045a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045ac:	0040918c 	slli.w	$r12,$r12,0x4
1c0045b0:	001031ac 	add.w	$r12,$r13,$r12
1c0045b4:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0045b8:	00150187 	move	$r7,$r12
1c0045bc:	001501e6 	move	$r6,$r15
1c0045c0:	001501c5 	move	$r5,$r14
1c0045c4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0045c8:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c0045cc:	57d603ff 	bl	-10752(0xfffd600) # 1c001bcc <myprintf>
1c0045d0:	50004000 	b	64(0x40) # 1c004610 <do_help+0x19c>
1c0045d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045e0:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0045e4:	02b341ad 	addi.w	$r13,$r13,-816(0xcd0)
1c0045e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045ec:	0040918c 	slli.w	$r12,$r12,0x4
1c0045f0:	001031ac 	add.w	$r12,$r13,$r12
1c0045f4:	2880018c 	ld.w	$r12,$r12,0
1c0045f8:	00150185 	move	$r5,$r12
1c0045fc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004600:	02b29084 	addi.w	$r4,$r4,-860(0xca4)
1c004604:	57e453ff 	bl	-7088(0xfffe450) # 1c002a54 <strcmp>
1c004608:	0015008c 	move	$r12,$r4
1c00460c:	47ff399f 	bnez	$r12,-200(0x7fff38) # 1c004544 <do_help+0xd0>
1c004610:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004614:	02b281ad 	addi.w	$r13,$r13,-864(0xca0)
1c004618:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00461c:	0040918c 	slli.w	$r12,$r12,0x4
1c004620:	001031ac 	add.w	$r12,$r13,$r12
1c004624:	2880018c 	ld.w	$r12,$r12,0
1c004628:	00150185 	move	$r5,$r12
1c00462c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004630:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c004634:	57e423ff 	bl	-7136(0xfffe420) # 1c002a54 <strcmp>
1c004638:	0015008c 	move	$r12,$r4
1c00463c:	44002580 	bnez	$r12,36(0x24) # 1c004660 <do_help+0x1ec>
1c004640:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004644:	02b9e084 	addi.w	$r4,$r4,-392(0xe78)
1c004648:	57d587ff 	bl	-10876(0xfffd584) # 1c001bcc <myprintf>
1c00464c:	50001400 	b	20(0x14) # 1c004660 <do_help+0x1ec>
1c004650:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004654:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c004658:	57d577ff 	bl	-10892(0xfffd574) # 1c001bcc <myprintf>
1c00465c:	50000800 	b	8(0x8) # 1c004664 <do_help+0x1f0>
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	0015000c 	move	$r12,$r0
1c004668:	00150184 	move	$r4,$r12
1c00466c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004670:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004674:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004678:	4c000020 	jirl	$r0,$r1,0

1c00467c <main>:
main():
1c00467c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004680:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004684:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004688:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00468c:	57da07ff 	bl	-9724(0xfffda04) # 1c002090 <EnableInt>
1c004690:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004694:	0380118c 	ori	$r12,$r12,0x4
1c004698:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00469c:	2980018d 	st.w	$r13,$r12,0
1c0046a0:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0046a4:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0046a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0046ac:	50001400 	b	20(0x14) # 1c0046c0 <main+0x44>
1c0046b0:	03400000 	andi	$r0,$r0,0x0
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	03400000 	andi	$r0,$r0,0x0
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046c8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0046cc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0046b0 <main+0x34>
1c0046d0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0046d4:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c0046d8:	57dd2bff 	bl	-8920(0xfffdd28) # 1c002400 <soc_myprintf>
1c0046dc:	140000ac 	lu12i.w	$r12,5(0x5)
1c0046e0:	03accd8c 	ori	$r12,$r12,0xb33
1c0046e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0046e8:	50001400 	b	20(0x14) # 1c0046fc <main+0x80>
1c0046ec:	03400000 	andi	$r0,$r0,0x0
1c0046f0:	03400000 	andi	$r0,$r0,0x0
1c0046f4:	03400000 	andi	$r0,$r0,0x0
1c0046f8:	03400000 	andi	$r0,$r0,0x0
1c0046fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004700:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004704:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004708:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0046ec <main+0x70>
1c00470c:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c004710:	02b7b18c 	addi.w	$r12,$r12,-532(0xdec)
1c004714:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c004718:	28bf42c5 	ld.w	$r5,$r22,-48(0xfd0)
1c00471c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004720:	02b79084 	addi.w	$r4,$r4,-540(0xde4)
1c004724:	57dcdfff 	bl	-8996(0xfffdcdc) # 1c002400 <soc_myprintf>
1c004728:	140000ac 	lu12i.w	$r12,5(0x5)
1c00472c:	03accd8c 	ori	$r12,$r12,0xb33
1c004730:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004734:	50001400 	b	20(0x14) # 1c004748 <main+0xcc>
1c004738:	03400000 	andi	$r0,$r0,0x0
1c00473c:	03400000 	andi	$r0,$r0,0x0
1c004740:	03400000 	andi	$r0,$r0,0x0
1c004744:	03400000 	andi	$r0,$r0,0x0
1c004748:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00474c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004750:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c004754:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004738 <main+0xbc>
1c004758:	1488868c 	lu12i.w	$r12,279604(0x44434)
1c00475c:	0389058c 	ori	$r12,$r12,0x241
1c004760:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c004764:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004768:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00476c:	02b69084 	addi.w	$r4,$r4,-604(0xda4)
1c004770:	57dc93ff 	bl	-9072(0xfffdc90) # 1c002400 <soc_myprintf>
1c004774:	140000ac 	lu12i.w	$r12,5(0x5)
1c004778:	03accd8c 	ori	$r12,$r12,0xb33
1c00477c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004780:	50001400 	b	20(0x14) # 1c004794 <main+0x118>
1c004784:	03400000 	andi	$r0,$r0,0x0
1c004788:	03400000 	andi	$r0,$r0,0x0
1c00478c:	03400000 	andi	$r0,$r0,0x0
1c004790:	03400000 	andi	$r0,$r0,0x0
1c004794:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004798:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00479c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0047a0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004784 <main+0x108>
1c0047a4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0047a8:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c0047ac:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0047b0:	00150185 	move	$r5,$r12
1c0047b4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0047b8:	02b59084 	addi.w	$r4,$r4,-668(0xd64)
1c0047bc:	57dc47ff 	bl	-9148(0xfffdc44) # 1c002400 <soc_myprintf>
1c0047c0:	140000ac 	lu12i.w	$r12,5(0x5)
1c0047c4:	03accd8c 	ori	$r12,$r12,0xb33
1c0047c8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0047cc:	50001400 	b	20(0x14) # 1c0047e0 <main+0x164>
1c0047d0:	03400000 	andi	$r0,$r0,0x0
1c0047d4:	03400000 	andi	$r0,$r0,0x0
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0047e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047e8:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0047ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0047d0 <main+0x154>
1c0047f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047f8:	57e587ff 	bl	-6780(0xfffe584) # 1c002d7c <gpio_init>
1c0047fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004800:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004804:	57e57bff 	bl	-6792(0xfffe578) # 1c002d7c <gpio_init>
1c004808:	57e767ff 	bl	-6300(0xfffe764) # 1c002f6c <uart1_interrupt>
1c00480c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c004810:	03bf918c 	ori	$r12,$r12,0xfe4
1c004814:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004818:	50001400 	b	20(0x14) # 1c00482c <main+0x1b0>
1c00481c:	03400000 	andi	$r0,$r0,0x0
1c004820:	03400000 	andi	$r0,$r0,0x0
1c004824:	03400000 	andi	$r0,$r0,0x0
1c004828:	03400000 	andi	$r0,$r0,0x0
1c00482c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004830:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004834:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c004838:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00481c <main+0x1a0>
1c00483c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004840:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004844:	57e633ff 	bl	-6608(0xfffe630) # 1c002e74 <gpio_write>
1c004848:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00484c:	03bf918c 	ori	$r12,$r12,0xfe4
1c004850:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c004854:	50001400 	b	20(0x14) # 1c004868 <main+0x1ec>
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	03400000 	andi	$r0,$r0,0x0
1c004860:	03400000 	andi	$r0,$r0,0x0
1c004864:	03400000 	andi	$r0,$r0,0x0
1c004868:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00486c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004870:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c004874:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004858 <main+0x1dc>
1c004878:	00150005 	move	$r5,$r0
1c00487c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004880:	57e5f7ff 	bl	-6668(0xfffe5f4) # 1c002e74 <gpio_write>
1c004884:	53ff8bff 	b	-120(0xfffff88) # 1c00480c <main+0x190>

1c004888 <do_nothing>:
do_nothing():
1c004888:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00488c:	29803076 	st.w	$r22,$r3,12(0xc)
1c004890:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004894:	0015000c 	move	$r12,$r0
1c004898:	00150184 	move	$r4,$r12
1c00489c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0048a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048a4:	4c000020 	jirl	$r0,$r1,0

1c0048a8 <do_d1>:
do_d1():
1c0048a8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0048ac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0048b0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0048b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0048b8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0048bc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0048c0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0048c4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0048c8:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0048d8 <do_d1+0x30>
1c0048cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0048d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0048d4:	6400198d 	bge	$r12,$r13,24(0x18) # 1c0048ec <do_d1+0x44>
1c0048d8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0048dc:	02b13084 	addi.w	$r4,$r4,-948(0xc4c)
1c0048e0:	57d2efff 	bl	-11540(0xfffd2ec) # 1c001bcc <myprintf>
1c0048e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0048e8:	5000c000 	b	192(0xc0) # 1c0049a8 <do_d1+0x100>
1c0048ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0048f0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0048f4:	2880018c 	ld.w	$r12,$r12,0
1c0048f8:	00150184 	move	$r4,$r12
1c0048fc:	5402fc00 	bl	764(0x2fc) # 1c004bf8 <str2num>
1c004900:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c004904:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004908:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00490c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00491c <do_d1+0x74>
1c004910:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004914:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004918:	50002000 	b	32(0x20) # 1c004938 <do_d1+0x90>
1c00491c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004920:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004924:	2880018c 	ld.w	$r12,$r12,0
1c004928:	00150184 	move	$r4,$r12
1c00492c:	5402cc00 	bl	716(0x2cc) # 1c004bf8 <str2num>
1c004930:	0015008c 	move	$r12,$r4
1c004934:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004938:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00493c:	50005c00 	b	92(0x5c) # 1c004998 <do_d1+0xf0>
1c004940:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004944:	03401d8c 	andi	$r12,$r12,0x7
1c004948:	44002180 	bnez	$r12,32(0x20) # 1c004968 <do_d1+0xc0>
1c00494c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004950:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004954:	001031ac 	add.w	$r12,$r13,$r12
1c004958:	00150185 	move	$r5,$r12
1c00495c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004960:	02afa084 	addi.w	$r4,$r4,-1048(0xbe8)
1c004964:	57d26bff 	bl	-11672(0xfffd268) # 1c001bcc <myprintf>
1c004968:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00496c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004970:	001031ac 	add.w	$r12,$r13,$r12
1c004974:	2a00018c 	ld.bu	$r12,$r12,0
1c004978:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00497c:	00150185 	move	$r5,$r12
1c004980:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004984:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c004988:	57d247ff 	bl	-11708(0xfffd244) # 1c001bcc <myprintf>
1c00498c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004994:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004998:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00499c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0049a0:	63ffa1ac 	blt	$r13,$r12,-96(0x3ffa0) # 1c004940 <do_d1+0x98>
1c0049a4:	0015000c 	move	$r12,$r0
1c0049a8:	00150184 	move	$r4,$r12
1c0049ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0049b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0049b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0049b8:	4c000020 	jirl	$r0,$r1,0

1c0049bc <do_d4>:
do_d4():
1c0049bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0049c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0049c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0049c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0049cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0049d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0049d4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0049d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0049dc:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0049ec <do_d4+0x30>
1c0049e0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0049e4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0049e8:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004a00 <do_d4+0x44>
1c0049ec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0049f0:	02adb084 	addi.w	$r4,$r4,-1172(0xb6c)
1c0049f4:	57d1dbff 	bl	-11816(0xfffd1d8) # 1c001bcc <myprintf>
1c0049f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0049fc:	5000cc00 	b	204(0xcc) # 1c004ac8 <do_d4+0x10c>
1c004a00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004a04:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004a08:	2880018c 	ld.w	$r12,$r12,0
1c004a0c:	00150184 	move	$r4,$r12
1c004a10:	5401e800 	bl	488(0x1e8) # 1c004bf8 <str2num>
1c004a14:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c004a18:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004a1c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004a20:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004a30 <do_d4+0x74>
1c004a24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004a28:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a2c:	50002000 	b	32(0x20) # 1c004a4c <do_d4+0x90>
1c004a30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004a34:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004a38:	2880018c 	ld.w	$r12,$r12,0
1c004a3c:	00150184 	move	$r4,$r12
1c004a40:	5401b800 	bl	440(0x1b8) # 1c004bf8 <str2num>
1c004a44:	0015008c 	move	$r12,$r4
1c004a48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a50:	50006800 	b	104(0x68) # 1c004ab8 <do_d4+0xfc>
1c004a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a58:	03400d8c 	andi	$r12,$r12,0x3
1c004a5c:	44002980 	bnez	$r12,40(0x28) # 1c004a84 <do_d4+0xc8>
1c004a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a64:	0040898c 	slli.w	$r12,$r12,0x2
1c004a68:	0015018d 	move	$r13,$r12
1c004a6c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a70:	001031ac 	add.w	$r12,$r13,$r12
1c004a74:	00150185 	move	$r5,$r12
1c004a78:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004a7c:	02abf084 	addi.w	$r4,$r4,-1284(0xafc)
1c004a80:	57d14fff 	bl	-11956(0xfffd14c) # 1c001bcc <myprintf>
1c004a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a88:	0040898c 	slli.w	$r12,$r12,0x2
1c004a8c:	0015018d 	move	$r13,$r12
1c004a90:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a94:	001031ac 	add.w	$r12,$r13,$r12
1c004a98:	2880018c 	ld.w	$r12,$r12,0
1c004a9c:	00150185 	move	$r5,$r12
1c004aa0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004aa4:	02ab8084 	addi.w	$r4,$r4,-1312(0xae0)
1c004aa8:	57d127ff 	bl	-11996(0xfffd124) # 1c001bcc <myprintf>
1c004aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ab0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ab4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ab8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004abc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004ac0:	63ff95ac 	blt	$r13,$r12,-108(0x3ff94) # 1c004a54 <do_d4+0x98>
1c004ac4:	0015000c 	move	$r12,$r0
1c004ac8:	00150184 	move	$r4,$r12
1c004acc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ad0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ad4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ad8:	4c000020 	jirl	$r0,$r1,0

1c004adc <do_m1>:
do_m1():
1c004adc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ae0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004ae4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ae8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004aec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004af0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004af4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004af8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004afc:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004b14 <do_m1+0x38>
1c004b00:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004b04:	02aa2084 	addi.w	$r4,$r4,-1400(0xa88)
1c004b08:	57d0c7ff 	bl	-12092(0xfffd0c4) # 1c001bcc <myprintf>
1c004b0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004b10:	50004800 	b	72(0x48) # 1c004b58 <do_m1+0x7c>
1c004b14:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004b18:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004b1c:	2880018c 	ld.w	$r12,$r12,0
1c004b20:	00150184 	move	$r4,$r12
1c004b24:	5400d400 	bl	212(0xd4) # 1c004bf8 <str2num>
1c004b28:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004b2c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004b30:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004b34:	2880018c 	ld.w	$r12,$r12,0
1c004b38:	00150184 	move	$r4,$r12
1c004b3c:	5400bc00 	bl	188(0xbc) # 1c004bf8 <str2num>
1c004b40:	0015008c 	move	$r12,$r4
1c004b44:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004b48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b4c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004b50:	2900018d 	st.b	$r13,$r12,0
1c004b54:	0015000c 	move	$r12,$r0
1c004b58:	00150184 	move	$r4,$r12
1c004b5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004b60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004b64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004b68:	4c000020 	jirl	$r0,$r1,0

1c004b6c <do_m4>:
do_m4():
1c004b6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004b80:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004b84:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004b88:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004b8c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004ba4 <do_m4+0x38>
1c004b90:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004b94:	02a86084 	addi.w	$r4,$r4,-1512(0xa18)
1c004b98:	57d037ff 	bl	-12236(0xfffd034) # 1c001bcc <myprintf>
1c004b9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ba0:	50004400 	b	68(0x44) # 1c004be4 <do_m4+0x78>
1c004ba4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ba8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004bac:	2880018c 	ld.w	$r12,$r12,0
1c004bb0:	00150184 	move	$r4,$r12
1c004bb4:	54004400 	bl	68(0x44) # 1c004bf8 <str2num>
1c004bb8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004bbc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004bc0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004bc4:	2880018c 	ld.w	$r12,$r12,0
1c004bc8:	00150184 	move	$r4,$r12
1c004bcc:	54002c00 	bl	44(0x2c) # 1c004bf8 <str2num>
1c004bd0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004bd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bd8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bdc:	2980018d 	st.w	$r13,$r12,0
1c004be0:	0015000c 	move	$r12,$r0
1c004be4:	00150184 	move	$r4,$r12
1c004be8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004bec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004bf0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004bf4:	4c000020 	jirl	$r0,$r1,0

1c004bf8 <str2num>:
str2num():
1c004bf8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004bfc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c14:	2a00018d 	ld.bu	$r13,$r12,0
1c004c18:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004c1c:	5c0041ac 	bne	$r13,$r12,64(0x40) # 1c004c5c <str2num+0x64>
1c004c20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c28:	2a00018d 	ld.bu	$r13,$r12,0
1c004c2c:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c004c30:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004c48 <str2num+0x50>
1c004c34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c3c:	2a00018d 	ld.bu	$r13,$r12,0
1c004c40:	0281600c 	addi.w	$r12,$r0,88(0x58)
1c004c44:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004c5c <str2num+0x64>
1c004c48:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004c4c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004c50:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004c54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c58:	50003400 	b	52(0x34) # 1c004c8c <str2num+0x94>
1c004c5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c60:	2a00018d 	ld.bu	$r13,$r12,0
1c004c64:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004c68:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004c80 <str2num+0x88>
1c004c6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c70:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004c74:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004c78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c7c:	50016400 	b	356(0x164) # 1c004de0 <str2num+0x1e8>
1c004c80:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c004c84:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c8c:	50015400 	b	340(0x154) # 1c004de0 <str2num+0x1e8>
1c004c90:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004c94:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004c98:	001031ac 	add.w	$r12,$r13,$r12
1c004c9c:	2a00018c 	ld.bu	$r12,$r12,0
1c004ca0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004ca4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004ca8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004cac:	5800ddac 	beq	$r13,$r12,220(0xdc) # 1c004d88 <str2num+0x190>
1c004cb0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004cb4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004cb8:	580015ac 	beq	$r13,$r12,20(0x14) # 1c004ccc <str2num+0xd4>
1c004cbc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004cc0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004cc4:	5800c5ac 	beq	$r13,$r12,196(0xc4) # 1c004d88 <str2num+0x190>
1c004cc8:	50010c00 	b	268(0x10c) # 1c004dd4 <str2num+0x1dc>
1c004ccc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004cd0:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004cd4:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004d04 <str2num+0x10c>
1c004cd8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004cdc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c004ce0:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004d04 <str2num+0x10c>
1c004ce4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ce8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004cec:	001c31ad 	mul.w	$r13,$r13,$r12
1c004cf0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004cf4:	001031ac 	add.w	$r12,$r13,$r12
1c004cf8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004cfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d00:	50008400 	b	132(0x84) # 1c004d84 <str2num+0x18c>
1c004d04:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d08:	0281800c 	addi.w	$r12,$r0,96(0x60)
1c004d0c:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004d3c <str2num+0x144>
1c004d10:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d14:	0281980c 	addi.w	$r12,$r0,102(0x66)
1c004d18:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004d3c <str2num+0x144>
1c004d1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004d24:	001c31ad 	mul.w	$r13,$r13,$r12
1c004d28:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004d2c:	001031ac 	add.w	$r12,$r13,$r12
1c004d30:	02bea58c 	addi.w	$r12,$r12,-87(0xfa9)
1c004d34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d38:	50004c00 	b	76(0x4c) # 1c004d84 <str2num+0x18c>
1c004d3c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d40:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c004d44:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004d74 <str2num+0x17c>
1c004d48:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d4c:	0281180c 	addi.w	$r12,$r0,70(0x46)
1c004d50:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004d74 <str2num+0x17c>
1c004d54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004d5c:	001c31ad 	mul.w	$r13,$r13,$r12
1c004d60:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004d64:	001031ac 	add.w	$r12,$r13,$r12
1c004d68:	02bf258c 	addi.w	$r12,$r12,-55(0xfc9)
1c004d6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d70:	50001400 	b	20(0x14) # 1c004d84 <str2num+0x18c>
1c004d74:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004d78:	02a15084 	addi.w	$r4,$r4,-1964(0x854)
1c004d7c:	57ce53ff 	bl	-12720(0xfffce50) # 1c001bcc <myprintf>
1c004d80:	50005400 	b	84(0x54) # 1c004dd4 <str2num+0x1dc>
1c004d84:	50005000 	b	80(0x50) # 1c004dd4 <str2num+0x1dc>
1c004d88:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d8c:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004d90:	6c00358d 	bgeu	$r12,$r13,52(0x34) # 1c004dc4 <str2num+0x1cc>
1c004d94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004d98:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004d9c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004da0:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c004dc4 <str2num+0x1cc>
1c004da4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004da8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004dac:	001c31ad 	mul.w	$r13,$r13,$r12
1c004db0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004db4:	001031ac 	add.w	$r12,$r13,$r12
1c004db8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004dbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004dc0:	50001000 	b	16(0x10) # 1c004dd0 <str2num+0x1d8>
1c004dc4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004dc8:	02a07084 	addi.w	$r4,$r4,-2020(0x81c)
1c004dcc:	57ce03ff 	bl	-12800(0xfffce00) # 1c001bcc <myprintf>
1c004dd0:	03400000 	andi	$r0,$r0,0x0
1c004dd4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004dd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ddc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004de0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004de4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004de8:	001031ac 	add.w	$r12,$r13,$r12
1c004dec:	2a00018c 	ld.bu	$r12,$r12,0
1c004df0:	47fea19f 	bnez	$r12,-352(0x7ffea0) # 1c004c90 <str2num+0x98>
1c004df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004df8:	00150184 	move	$r4,$r12
1c004dfc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e00:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e08:	4c000020 	jirl	$r0,$r1,0

1c004e0c <v_play>:
v_play():
1c004e0c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e10:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e14:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e1c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004e20:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004e24:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004e28:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004e2c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004e44 <v_play+0x38>
1c004e30:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e34:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c004e38:	57cd97ff 	bl	-12908(0xfffcd94) # 1c001bcc <myprintf>
1c004e3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004e40:	50006400 	b	100(0x64) # 1c004ea4 <v_play+0x98>
1c004e44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004e48:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004e4c:	2880018c 	ld.w	$r12,$r12,0
1c004e50:	00150184 	move	$r4,$r12
1c004e54:	57fda7ff 	bl	-604(0xffffda4) # 1c004bf8 <str2num>
1c004e58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004e5c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004e60:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004e64:	2880018c 	ld.w	$r12,$r12,0
1c004e68:	00150184 	move	$r4,$r12
1c004e6c:	57fd8fff 	bl	-628(0xffffd8c) # 1c004bf8 <str2num>
1c004e70:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004e74:	57ea3fff 	bl	-5572(0xfffea3c) # 1c0038b0 <dma_reset>
1c004e78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e7c:	029e6084 	addi.w	$r4,$r4,1944(0x798)
1c004e80:	57cd4fff 	bl	-12980(0xfffcd4c) # 1c001bcc <myprintf>
1c004e84:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004e88:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c004e8c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c004e90:	57ea7fff 	bl	-5508(0xfffea7c) # 1c00390c <dma_start>
1c004e94:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e98:	029e6084 	addi.w	$r4,$r4,1944(0x798)
1c004e9c:	57cd33ff 	bl	-13008(0xfffcd30) # 1c001bcc <myprintf>
1c004ea0:	0015000c 	move	$r12,$r0
1c004ea4:	00150184 	move	$r4,$r12
1c004ea8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004eac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004eb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004eb4:	4c000020 	jirl	$r0,$r1,0

1c004eb8 <touch_reg_show>:
touch_reg_show():
1c004eb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ebc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ec0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ec4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ec8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ecc:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c004ed0:	57ccffff 	bl	-13060(0xfffccfc) # 1c001bcc <myprintf>
1c004ed4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004ed8:	2880018c 	ld.w	$r12,$r12,0
1c004edc:	00150185 	move	$r5,$r12
1c004ee0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ee4:	029dc084 	addi.w	$r4,$r4,1904(0x770)
1c004ee8:	57cce7ff 	bl	-13084(0xfffcce4) # 1c001bcc <myprintf>
1c004eec:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004ef0:	0380218c 	ori	$r12,$r12,0x8
1c004ef4:	2880018c 	ld.w	$r12,$r12,0
1c004ef8:	00150185 	move	$r5,$r12
1c004efc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f00:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c004f04:	57cccbff 	bl	-13112(0xfffccc8) # 1c001bcc <myprintf>
1c004f08:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004f0c:	0380318c 	ori	$r12,$r12,0xc
1c004f10:	2880018c 	ld.w	$r12,$r12,0
1c004f14:	00150185 	move	$r5,$r12
1c004f18:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f1c:	029d8084 	addi.w	$r4,$r4,1888(0x760)
1c004f20:	57ccafff 	bl	-13140(0xfffccac) # 1c001bcc <myprintf>
1c004f24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f28:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c004f2c:	57cca3ff 	bl	-13152(0xfffcca0) # 1c001bcc <myprintf>
1c004f30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004f34:	50006000 	b	96(0x60) # 1c004f94 <touch_reg_show+0xdc>
1c004f38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f3c:	0040898c 	slli.w	$r12,$r12,0x2
1c004f40:	0015018d 	move	$r13,$r12
1c004f44:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004f48:	0381018c 	ori	$r12,$r12,0x40
1c004f4c:	001031ac 	add.w	$r12,$r13,$r12
1c004f50:	2880018d 	ld.w	$r13,$r12,0
1c004f54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f58:	0040898c 	slli.w	$r12,$r12,0x2
1c004f5c:	0015018e 	move	$r14,$r12
1c004f60:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004f64:	0382018c 	ori	$r12,$r12,0x80
1c004f68:	001031cc 	add.w	$r12,$r14,$r12
1c004f6c:	2880018c 	ld.w	$r12,$r12,0
1c004f70:	00150187 	move	$r7,$r12
1c004f74:	001501a6 	move	$r6,$r13
1c004f78:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c004f7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f80:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c004f84:	57cc4bff 	bl	-13240(0xfffcc48) # 1c001bcc <myprintf>
1c004f88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004f98:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004f9c:	67ff9d8d 	bge	$r12,$r13,-100(0x3ff9c) # 1c004f38 <touch_reg_show+0x80>
1c004fa0:	0015000c 	move	$r12,$r0
1c004fa4:	00150184 	move	$r4,$r12
1c004fa8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fb4:	4c000020 	jirl	$r0,$r1,0

1c004fb8 <touch_value_show>:
touch_value_show():
1c004fb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004fbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004fc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004fc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004fc8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fcc:	029bf084 	addi.w	$r4,$r4,1788(0x6fc)
1c004fd0:	57cbffff 	bl	-13316(0xfffcbfc) # 1c001bcc <myprintf>
1c004fd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fd8:	029ce084 	addi.w	$r4,$r4,1848(0x738)
1c004fdc:	57cbf3ff 	bl	-13328(0xfffcbf0) # 1c001bcc <myprintf>
1c004fe0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004fe4:	50003400 	b	52(0x34) # 1c005018 <touch_value_show+0x60>
1c004fe8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004fec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ff0:	00150184 	move	$r4,$r12
1c004ff4:	57ec13ff 	bl	-5104(0xfffec10) # 1c003c04 <TOUCH_GetBaseVal>
1c004ff8:	0015008c 	move	$r12,$r4
1c004ffc:	00150185 	move	$r5,$r12
1c005000:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005004:	029c5084 	addi.w	$r4,$r4,1812(0x714)
1c005008:	57cbc7ff 	bl	-13372(0xfffcbc4) # 1c001bcc <myprintf>
1c00500c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005010:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005014:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005018:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00501c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005020:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004fe8 <touch_value_show+0x30>
1c005024:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005028:	029be084 	addi.w	$r4,$r4,1784(0x6f8)
1c00502c:	57cba3ff 	bl	-13408(0xfffcba0) # 1c001bcc <myprintf>
1c005030:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005034:	50003400 	b	52(0x34) # 1c005068 <touch_value_show+0xb0>
1c005038:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00503c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005040:	00150184 	move	$r4,$r12
1c005044:	57ec0fff 	bl	-5108(0xfffec0c) # 1c003c50 <TOUCH_GetCountValue>
1c005048:	0015008c 	move	$r12,$r4
1c00504c:	00150185 	move	$r5,$r12
1c005050:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005054:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c005058:	57cb77ff 	bl	-13452(0xfffcb74) # 1c001bcc <myprintf>
1c00505c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005060:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005064:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005068:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00506c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005070:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c005038 <touch_value_show+0x80>
1c005074:	0015000c 	move	$r12,$r0
1c005078:	00150184 	move	$r4,$r12
1c00507c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005080:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005084:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005088:	4c000020 	jirl	$r0,$r1,0

1c00508c <touch_test>:
touch_test():
1c00508c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005090:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005094:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005098:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00509c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0050a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0050a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0050ac:	2880018c 	ld.w	$r12,$r12,0
1c0050b0:	00150185 	move	$r5,$r12
1c0050b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050b8:	0299c084 	addi.w	$r4,$r4,1648(0x670)
1c0050bc:	57d99bff 	bl	-9832(0xfffd998) # 1c002a54 <strcmp>
1c0050c0:	0015008c 	move	$r12,$r4
1c0050c4:	44005d80 	bnez	$r12,92(0x5c) # 1c005120 <touch_test+0x94>
1c0050c8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0050cc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0050d0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0050e8 <touch_test+0x5c>
1c0050d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050d8:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c0050dc:	57caf3ff 	bl	-13584(0xfffcaf0) # 1c001bcc <myprintf>
1c0050e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050e4:	50024800 	b	584(0x248) # 1c00532c <touch_test+0x2a0>
1c0050e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050ec:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c0050f0:	57cadfff 	bl	-13604(0xfffcadc) # 1c001bcc <myprintf>
1c0050f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050f8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0050fc:	2880018c 	ld.w	$r12,$r12,0
1c005100:	00150184 	move	$r4,$r12
1c005104:	57faf7ff 	bl	-1292(0xffffaf4) # 1c004bf8 <str2num>
1c005108:	0015008c 	move	$r12,$r4
1c00510c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005110:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005114:	00150184 	move	$r4,$r12
1c005118:	57ed43ff 	bl	-4800(0xfffed40) # 1c003e58 <TOUCH_Init>
1c00511c:	50020c00 	b	524(0x20c) # 1c005328 <touch_test+0x29c>
1c005120:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005124:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005128:	2880018c 	ld.w	$r12,$r12,0
1c00512c:	00150185 	move	$r5,$r12
1c005130:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005134:	02989084 	addi.w	$r4,$r4,1572(0x624)
1c005138:	57d91fff 	bl	-9956(0xfffd91c) # 1c002a54 <strcmp>
1c00513c:	0015008c 	move	$r12,$r4
1c005140:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005144:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005148:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00514c:	03c0098c 	xori	$r12,$r12,0x2
1c005150:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005154:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005158:	0014b1ac 	and	$r12,$r13,$r12
1c00515c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005160:	40001d80 	beqz	$r12,28(0x1c) # 1c00517c <touch_test+0xf0>
1c005164:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005168:	0297e084 	addi.w	$r4,$r4,1528(0x5f8)
1c00516c:	57ca63ff 	bl	-13728(0xfffca60) # 1c001bcc <myprintf>
1c005170:	57eb5fff 	bl	-5284(0xfffeb5c) # 1c003ccc <TOUCH_EnableSingleScan>
1c005174:	57ede3ff 	bl	-4640(0xfffede0) # 1c003f54 <Printf_CountVal>
1c005178:	5001b000 	b	432(0x1b0) # 1c005328 <touch_test+0x29c>
1c00517c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005180:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005184:	2880018c 	ld.w	$r12,$r12,0
1c005188:	00150185 	move	$r5,$r12
1c00518c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005190:	02978084 	addi.w	$r4,$r4,1504(0x5e0)
1c005194:	57d8c3ff 	bl	-10048(0xfffd8c0) # 1c002a54 <strcmp>
1c005198:	0015008c 	move	$r12,$r4
1c00519c:	4400c580 	bnez	$r12,196(0xc4) # 1c005260 <touch_test+0x1d4>
1c0051a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051a4:	02975084 	addi.w	$r4,$r4,1492(0x5d4)
1c0051a8:	57ca27ff 	bl	-13788(0xfffca24) # 1c001bcc <myprintf>
1c0051ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0051b0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0051b4:	2880018c 	ld.w	$r12,$r12,0
1c0051b8:	00150184 	move	$r4,$r12
1c0051bc:	57fa3fff 	bl	-1476(0xffffa3c) # 1c004bf8 <str2num>
1c0051c0:	0015008c 	move	$r12,$r4
1c0051c4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0051c8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0051cc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0051d0:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c00520c <touch_test+0x180>
1c0051d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0051d8:	50002400 	b	36(0x24) # 1c0051fc <touch_test+0x170>
1c0051dc:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0051e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051e4:	001501a5 	move	$r5,$r13
1c0051e8:	00150184 	move	$r4,$r12
1c0051ec:	57eb13ff 	bl	-5360(0xfffeb10) # 1c003cfc <TOUCH_SetDownTh>
1c0051f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0051f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0051fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005200:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005204:	6fffd98d 	bgeu	$r12,$r13,-40(0x3ffd8) # 1c0051dc <touch_test+0x150>
1c005208:	50012000 	b	288(0x120) # 1c005328 <touch_test+0x29c>
1c00520c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005210:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005214:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c00524c <touch_test+0x1c0>
1c005218:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00521c:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005220:	2880018c 	ld.w	$r12,$r12,0
1c005224:	00150184 	move	$r4,$r12
1c005228:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c004bf8 <str2num>
1c00522c:	0015008c 	move	$r12,$r4
1c005230:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005234:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005238:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00523c:	001501a5 	move	$r5,$r13
1c005240:	00150184 	move	$r4,$r12
1c005244:	57eabbff 	bl	-5448(0xfffeab8) # 1c003cfc <TOUCH_SetDownTh>
1c005248:	5000e000 	b	224(0xe0) # 1c005328 <touch_test+0x29c>
1c00524c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005250:	0294e084 	addi.w	$r4,$r4,1336(0x538)
1c005254:	57c97bff 	bl	-13960(0xfffc978) # 1c001bcc <myprintf>
1c005258:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00525c:	5000d000 	b	208(0xd0) # 1c00532c <touch_test+0x2a0>
1c005260:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005264:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005268:	2880018c 	ld.w	$r12,$r12,0
1c00526c:	00150185 	move	$r5,$r12
1c005270:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005274:	0294e084 	addi.w	$r4,$r4,1336(0x538)
1c005278:	57d7dfff 	bl	-10276(0xfffd7dc) # 1c002a54 <strcmp>
1c00527c:	0015008c 	move	$r12,$r4
1c005280:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005284:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005288:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00528c:	03c0098c 	xori	$r12,$r12,0x2
1c005290:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005294:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005298:	0014b1ac 	and	$r12,$r13,$r12
1c00529c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052a0:	40001980 	beqz	$r12,24(0x18) # 1c0052b8 <touch_test+0x22c>
1c0052a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0052a8:	02943084 	addi.w	$r4,$r4,1292(0x50c)
1c0052ac:	57c923ff 	bl	-14048(0xfffc920) # 1c001bcc <myprintf>
1c0052b0:	57e9efff 	bl	-5652(0xfffe9ec) # 1c003c9c <TOUCH_EnablePollScan>
1c0052b4:	50007400 	b	116(0x74) # 1c005328 <touch_test+0x29c>
1c0052b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0052bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0052c0:	2880018c 	ld.w	$r12,$r12,0
1c0052c4:	00150185 	move	$r5,$r12
1c0052c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0052cc:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c0052d0:	57d787ff 	bl	-10364(0xfffd784) # 1c002a54 <strcmp>
1c0052d4:	0015008c 	move	$r12,$r4
1c0052d8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0052dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052e4:	03c0098c 	xori	$r12,$r12,0x2
1c0052e8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0052ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052f0:	0014b1ac 	and	$r12,$r13,$r12
1c0052f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052f8:	40001180 	beqz	$r12,16(0x10) # 1c005308 <touch_test+0x27c>
1c0052fc:	57fbbfff 	bl	-1092(0xffffbbc) # 1c004eb8 <touch_reg_show>
1c005300:	57fcbbff 	bl	-840(0xffffcb8) # 1c004fb8 <touch_value_show>
1c005304:	50002400 	b	36(0x24) # 1c005328 <touch_test+0x29c>
1c005308:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00530c:	02930084 	addi.w	$r4,$r4,1216(0x4c0)
1c005310:	57c8bfff 	bl	-14148(0xfffc8bc) # 1c001bcc <myprintf>
1c005314:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005318:	02931084 	addi.w	$r4,$r4,1220(0x4c4)
1c00531c:	57c8b3ff 	bl	-14160(0xfffc8b0) # 1c001bcc <myprintf>
1c005320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005324:	50000800 	b	8(0x8) # 1c00532c <touch_test+0x2a0>
1c005328:	0015000c 	move	$r12,$r0
1c00532c:	00150184 	move	$r4,$r12
1c005330:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005334:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005338:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00533c:	4c000020 	jirl	$r0,$r1,0

1c005340 <hpet>:
hpet():
1c005340:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c005344:	29813061 	st.w	$r1,$r3,76(0x4c)
1c005348:	29812076 	st.w	$r22,$r3,72(0x48)
1c00534c:	02814076 	addi.w	$r22,$r3,80(0x50)
1c005350:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c005354:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c005358:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00535c:	02943084 	addi.w	$r4,$r4,1292(0x50c)
1c005360:	57c86fff 	bl	-14228(0xfffc86c) # 1c001bcc <myprintf>
1c005364:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005368:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00536c:	6000298d 	blt	$r12,$r13,40(0x28) # 1c005394 <hpet+0x54>
1c005370:	00150004 	move	$r4,$r0
1c005374:	57ee23ff 	bl	-4576(0xfffee20) # 1c004194 <TIM_Cmd>
1c005378:	00150004 	move	$r4,$r0
1c00537c:	57ee6fff 	bl	-4500(0xfffee6c) # 1c0041e8 <TIM_ITConfig>
1c005380:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005384:	02940084 	addi.w	$r4,$r4,1280(0x500)
1c005388:	57c847ff 	bl	-14268(0xfffc844) # 1c001bcc <myprintf>
1c00538c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005390:	50009c00 	b	156(0x9c) # 1c00542c <hpet+0xec>
1c005394:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005398:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00539c:	2880018c 	ld.w	$r12,$r12,0
1c0053a0:	00150184 	move	$r4,$r12
1c0053a4:	57f857ff 	bl	-1964(0xffff854) # 1c004bf8 <str2num>
1c0053a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0053ac:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0053b0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0053b4:	2880018c 	ld.w	$r12,$r12,0
1c0053b8:	00150184 	move	$r4,$r12
1c0053bc:	57f83fff 	bl	-1988(0xffff83c) # 1c004bf8 <str2num>
1c0053c0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0053c4:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0053c8:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0053cc:	2880018c 	ld.w	$r12,$r12,0
1c0053d0:	00150184 	move	$r4,$r12
1c0053d4:	57f827ff 	bl	-2012(0xffff824) # 1c004bf8 <str2num>
1c0053d8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0053dc:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c0053e0:	00150184 	move	$r4,$r12
1c0053e4:	57ed37ff 	bl	-4812(0xfffed34) # 1c004118 <TIM_StructInit>
1c0053e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0053ec:	0040898c 	slli.w	$r12,$r12,0x2
1c0053f0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0053f4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0053f8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0053fc:	03bcfd8c 	ori	$r12,$r12,0xf3f
1c005400:	001c31ac 	mul.w	$r12,$r13,$r12
1c005404:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c005408:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00540c:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c005410:	0388018c 	ori	$r12,$r12,0x200
1c005414:	001c31ac 	mul.w	$r12,$r13,$r12
1c005418:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00541c:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c005420:	00150184 	move	$r4,$r12
1c005424:	57ec1fff 	bl	-5092(0xfffec1c) # 1c004040 <TIM_Init>
1c005428:	0015000c 	move	$r12,$r0
1c00542c:	00150184 	move	$r4,$r12
1c005430:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c005434:	28812076 	ld.w	$r22,$r3,72(0x48)
1c005438:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00543c:	4c000020 	jirl	$r0,$r1,0

1c005440 <latimer>:
latimer():
1c005440:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005444:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005448:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00544c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005450:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005454:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005458:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c00545c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005460:	02914084 	addi.w	$r4,$r4,1104(0x450)
1c005464:	57c76bff 	bl	-14488(0xfffc768) # 1c001bcc <myprintf>
1c005468:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00546c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005470:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c00548c <latimer+0x4c>
1c005474:	57cc43ff 	bl	-13248(0xfffcc40) # 1c0020b4 <Set_Timer_stop>
1c005478:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00547c:	02915084 	addi.w	$r4,$r4,1108(0x454)
1c005480:	57c74fff 	bl	-14516(0xfffc74c) # 1c001bcc <myprintf>
1c005484:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005488:	50003800 	b	56(0x38) # 1c0054c0 <latimer+0x80>
1c00548c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005490:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005494:	2880018c 	ld.w	$r12,$r12,0
1c005498:	00150184 	move	$r4,$r12
1c00549c:	57f75fff 	bl	-2212(0xffff75c) # 1c004bf8 <str2num>
1c0054a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0054a8:	1401458c 	lu12i.w	$r12,2604(0xa2c)
1c0054ac:	038fe18c 	ori	$r12,$r12,0x3f8
1c0054b0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0054b4:	00150184 	move	$r4,$r12
1c0054b8:	57cc43ff 	bl	-13248(0xfffcc40) # 1c0020f8 <Set_Timer_Init>
1c0054bc:	0015000c 	move	$r12,$r0
1c0054c0:	00150184 	move	$r4,$r12
1c0054c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0054c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0054cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0054d0:	4c000020 	jirl	$r0,$r1,0

1c0054d4 <delay>:
delay():
1c0054d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0054dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0054e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0054e8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0054ec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0054f0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0054f4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c00550c <delay+0x38>
1c0054f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0054fc:	028fb084 	addi.w	$r4,$r4,1004(0x3ec)
1c005500:	57c6cfff 	bl	-14644(0xfffc6cc) # 1c001bcc <myprintf>
1c005504:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005508:	5000bc00 	b	188(0xbc) # 1c0055c4 <delay+0xf0>
1c00550c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005510:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005514:	2880018c 	ld.w	$r12,$r12,0
1c005518:	00150184 	move	$r4,$r12
1c00551c:	57f6dfff 	bl	-2340(0xffff6dc) # 1c004bf8 <str2num>
1c005520:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005524:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005528:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00552c:	2880018c 	ld.w	$r12,$r12,0
1c005530:	00150184 	move	$r4,$r12
1c005534:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c004bf8 <str2num>
1c005538:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00553c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005540:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005544:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005564 <delay+0x90>
1c005548:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c00554c:	57d457ff 	bl	-11180(0xfffd454) # 1c0029a0 <delay_us>
1c005550:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c005554:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005558:	028ef084 	addi.w	$r4,$r4,956(0x3bc)
1c00555c:	57c673ff 	bl	-14736(0xfffc670) # 1c001bcc <myprintf>
1c005560:	50006000 	b	96(0x60) # 1c0055c0 <delay+0xec>
1c005564:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005568:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00556c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00558c <delay+0xb8>
1c005570:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c005574:	57d467ff 	bl	-11164(0xfffd464) # 1c0029d8 <delay_ms>
1c005578:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c00557c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005580:	028e7084 	addi.w	$r4,$r4,924(0x39c)
1c005584:	57c64bff 	bl	-14776(0xfffc648) # 1c001bcc <myprintf>
1c005588:	50003800 	b	56(0x38) # 1c0055c0 <delay+0xec>
1c00558c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005590:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005594:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0055b4 <delay+0xe0>
1c005598:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c00559c:	57d47fff 	bl	-11140(0xfffd47c) # 1c002a18 <delay_s>
1c0055a0:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c0055a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055a8:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c0055ac:	57c623ff 	bl	-14816(0xfffc620) # 1c001bcc <myprintf>
1c0055b0:	50001000 	b	16(0x10) # 1c0055c0 <delay+0xec>
1c0055b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055b8:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c0055bc:	57c613ff 	bl	-14832(0xfffc610) # 1c001bcc <myprintf>
1c0055c0:	0015000c 	move	$r12,$r0
1c0055c4:	00150184 	move	$r4,$r12
1c0055c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0055cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0055d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0055d4:	4c000020 	jirl	$r0,$r1,0

1c0055d8 <wakeup>:
wakeup():
1c0055d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0055ec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0055f0:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c0055f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055f8:	028cd084 	addi.w	$r4,$r4,820(0x334)
1c0055fc:	57c5d3ff 	bl	-14896(0xfffc5d0) # 1c001bcc <myprintf>
1c005600:	57ca6fff 	bl	-13716(0xfffca6c) # 1c00206c <DisableInt>
1c005604:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005608:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00560c:	6000218d 	blt	$r12,$r13,32(0x20) # 1c00562c <wakeup+0x54>
1c005610:	00150004 	move	$r4,$r0
1c005614:	57cb17ff 	bl	-13548(0xfffcb14) # 1c002128 <Wake_Set>
1c005618:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00561c:	028cd084 	addi.w	$r4,$r4,820(0x334)
1c005620:	57c5afff 	bl	-14932(0xfffc5ac) # 1c001bcc <myprintf>
1c005624:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005628:	50002c00 	b	44(0x2c) # 1c005654 <wakeup+0x7c>
1c00562c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005630:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005634:	2880018c 	ld.w	$r12,$r12,0
1c005638:	00150184 	move	$r4,$r12
1c00563c:	57f5bfff 	bl	-2628(0xffff5bc) # 1c004bf8 <str2num>
1c005640:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005644:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005648:	57cae3ff 	bl	-13600(0xfffcae0) # 1c002128 <Wake_Set>
1c00564c:	57bb9bff 	bl	-17512(0xfffbb98) # 1c0011e4 <cpu_sleep>
1c005650:	0015000c 	move	$r12,$r0
1c005654:	00150184 	move	$r4,$r12
1c005658:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00565c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005660:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005664:	4c000020 	jirl	$r0,$r1,0

1c005668 <a_to_n>:
a_to_n():
1c005668:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00566c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005670:	29806076 	st.w	$r22,$r3,24(0x18)
1c005674:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005678:	0015008c 	move	$r12,$r4
1c00567c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005680:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005684:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c005688:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005698 <a_to_n+0x30>
1c00568c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005690:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c005694:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c0056ac <a_to_n+0x44>
1c005698:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00569c:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c0056a0:	57c52fff 	bl	-15060(0xfffc52c) # 1c001bcc <myprintf>
1c0056a4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0056a8:	50000c00 	b	12(0xc) # 1c0056b4 <a_to_n+0x4c>
1c0056ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056b0:	03403d8c 	andi	$r12,$r12,0xf
1c0056b4:	00150184 	move	$r4,$r12
1c0056b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0056bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0056c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0056c4:	4c000020 	jirl	$r0,$r1,0

1c0056c8 <date>:
date():
1c0056c8:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0056cc:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0056d0:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0056d4:	29829077 	st.w	$r23,$r3,164(0xa4)
1c0056d8:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0056dc:	29bd72c4 	st.w	$r4,$r22,-164(0xf5c)
1c0056e0:	29bd62c5 	st.w	$r5,$r22,-168(0xf58)
1c0056e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0056e8:	028a7084 	addi.w	$r4,$r4,668(0x29c)
1c0056ec:	57c4e3ff 	bl	-15136(0xfffc4e0) # 1c001bcc <myprintf>
1c0056f0:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0056f4:	028f318c 	addi.w	$r12,$r12,972(0x3cc)
1c0056f8:	2880018f 	ld.w	$r15,$r12,0
1c0056fc:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c005700:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c005704:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005708:	29bde2cf 	st.w	$r15,$r22,-136(0xf78)
1c00570c:	29bdf2ce 	st.w	$r14,$r22,-132(0xf7c)
1c005710:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c005714:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c005718:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c00571c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005720:	2880018c 	ld.w	$r12,$r12,0
1c005724:	28bde2cd 	ld.w	$r13,$r22,-136(0xf78)
1c005728:	001501a5 	move	$r5,$r13
1c00572c:	00150184 	move	$r4,$r12
1c005730:	57d327ff 	bl	-11484(0xfffd324) # 1c002a54 <strcmp>
1c005734:	0015008c 	move	$r12,$r4
1c005738:	44003d80 	bnez	$r12,60(0x3c) # 1c005774 <date+0xac>
1c00573c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005740:	02892084 	addi.w	$r4,$r4,584(0x248)
1c005744:	57c48bff 	bl	-15224(0xfffc488) # 1c001bcc <myprintf>
1c005748:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00574c:	02896084 	addi.w	$r4,$r4,600(0x258)
1c005750:	57c47fff 	bl	-15236(0xfffc47c) # 1c001bcc <myprintf>
1c005754:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005758:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c00575c:	57c473ff 	bl	-15248(0xfffc470) # 1c001bcc <myprintf>
1c005760:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005764:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c005768:	57c467ff 	bl	-15260(0xfffc464) # 1c001bcc <myprintf>
1c00576c:	0015000c 	move	$r12,$r0
1c005770:	50066000 	b	1632(0x660) # 1c005dd0 <date+0x708>
1c005774:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005778:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00577c:	2880018c 	ld.w	$r12,$r12,0
1c005780:	28bdf2cd 	ld.w	$r13,$r22,-132(0xf7c)
1c005784:	001501a5 	move	$r5,$r13
1c005788:	00150184 	move	$r4,$r12
1c00578c:	57d2cbff 	bl	-11576(0xfffd2c8) # 1c002a54 <strcmp>
1c005790:	0015008c 	move	$r12,$r4
1c005794:	4402a180 	bnez	$r12,672(0x2a0) # 1c005a34 <date+0x36c>
1c005798:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c00579c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0057a0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0057b8 <date+0xf0>
1c0057a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0057a8:	028a3084 	addi.w	$r4,$r4,652(0x28c)
1c0057ac:	57c423ff 	bl	-15328(0xfffc420) # 1c001bcc <myprintf>
1c0057b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057b4:	50061c00 	b	1564(0x61c) # 1c005dd0 <date+0x708>
1c0057b8:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c0057bc:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0057c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0057c4:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c0057c8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0057cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0057d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0057d8:	00150184 	move	$r4,$r12
1c0057dc:	57fe8fff 	bl	-372(0xffffe8c) # 1c005668 <a_to_n>
1c0057e0:	0015008d 	move	$r13,$r4
1c0057e4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0057e8:	001c31b7 	mul.w	$r23,$r13,$r12
1c0057ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0057f8:	00150184 	move	$r4,$r12
1c0057fc:	57fe6fff 	bl	-404(0xffffe6c) # 1c005668 <a_to_n>
1c005800:	0015008c 	move	$r12,$r4
1c005804:	001032ec 	add.w	$r12,$r23,$r12
1c005808:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00580c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005810:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005814:	2a00018c 	ld.bu	$r12,$r12,0
1c005818:	00150184 	move	$r4,$r12
1c00581c:	57fe4fff 	bl	-436(0xffffe4c) # 1c005668 <a_to_n>
1c005820:	0015008d 	move	$r13,$r4
1c005824:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005828:	001c31b7 	mul.w	$r23,$r13,$r12
1c00582c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005830:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005834:	2a00018c 	ld.bu	$r12,$r12,0
1c005838:	00150184 	move	$r4,$r12
1c00583c:	57fe2fff 	bl	-468(0xffffe2c) # 1c005668 <a_to_n>
1c005840:	0015008c 	move	$r12,$r4
1c005844:	001032ec 	add.w	$r12,$r23,$r12
1c005848:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00584c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005850:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005854:	2a00018c 	ld.bu	$r12,$r12,0
1c005858:	00150184 	move	$r4,$r12
1c00585c:	57fe0fff 	bl	-500(0xffffe0c) # 1c005668 <a_to_n>
1c005860:	0015008d 	move	$r13,$r4
1c005864:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005868:	001c31b7 	mul.w	$r23,$r13,$r12
1c00586c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005870:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005874:	2a00018c 	ld.bu	$r12,$r12,0
1c005878:	00150184 	move	$r4,$r12
1c00587c:	57fdefff 	bl	-532(0xffffdec) # 1c005668 <a_to_n>
1c005880:	0015008c 	move	$r12,$r4
1c005884:	001032ec 	add.w	$r12,$r23,$r12
1c005888:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00588c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005890:	2a00018c 	ld.bu	$r12,$r12,0
1c005894:	00150184 	move	$r4,$r12
1c005898:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005668 <a_to_n>
1c00589c:	0015008d 	move	$r13,$r4
1c0058a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0058a4:	001c31b7 	mul.w	$r23,$r13,$r12
1c0058a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0058ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0058b4:	00150184 	move	$r4,$r12
1c0058b8:	57fdb3ff 	bl	-592(0xffffdb0) # 1c005668 <a_to_n>
1c0058bc:	0015008c 	move	$r12,$r4
1c0058c0:	001032ec 	add.w	$r12,$r23,$r12
1c0058c4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0058c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0058cc:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0058d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0058d4:	00150184 	move	$r4,$r12
1c0058d8:	57fd93ff 	bl	-624(0xffffd90) # 1c005668 <a_to_n>
1c0058dc:	0015008d 	move	$r13,$r4
1c0058e0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0058e4:	001c31b7 	mul.w	$r23,$r13,$r12
1c0058e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0058ec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0058f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0058f4:	00150184 	move	$r4,$r12
1c0058f8:	57fd73ff 	bl	-656(0xffffd70) # 1c005668 <a_to_n>
1c0058fc:	0015008c 	move	$r12,$r4
1c005900:	001032ec 	add.w	$r12,$r23,$r12
1c005904:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c005908:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00590c:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005910:	2a00018c 	ld.bu	$r12,$r12,0
1c005914:	00150184 	move	$r4,$r12
1c005918:	57fd53ff 	bl	-688(0xffffd50) # 1c005668 <a_to_n>
1c00591c:	0015008d 	move	$r13,$r4
1c005920:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005924:	001c31b7 	mul.w	$r23,$r13,$r12
1c005928:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00592c:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005930:	2a00018c 	ld.bu	$r12,$r12,0
1c005934:	00150184 	move	$r4,$r12
1c005938:	57fd33ff 	bl	-720(0xffffd30) # 1c005668 <a_to_n>
1c00593c:	0015008c 	move	$r12,$r4
1c005940:	001032ec 	add.w	$r12,$r23,$r12
1c005944:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c005948:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00594c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005950:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c0059ac <date+0x2e4>
1c005954:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005958:	40005580 	beqz	$r12,84(0x54) # 1c0059ac <date+0x2e4>
1c00595c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005960:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005964:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c0059ac <date+0x2e4>
1c005968:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00596c:	40004180 	beqz	$r12,64(0x40) # 1c0059ac <date+0x2e4>
1c005970:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c005974:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005978:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005988 <date+0x2c0>
1c00597c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005980:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005984:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c0059ac <date+0x2e4>
1c005988:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00598c:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c005990:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c0059ac <date+0x2e4>
1c005994:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005998:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c00599c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c0059ac <date+0x2e4>
1c0059a0:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c0059a4:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0059a8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0059b4 <date+0x2ec>
1c0059ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059b0:	50000800 	b	8(0x8) # 1c0059b8 <date+0x2f0>
1c0059b4:	0015000c 	move	$r12,$r0
1c0059b8:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0059bc:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0059c0:	40001980 	beqz	$r12,24(0x18) # 1c0059d8 <date+0x310>
1c0059c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0059c8:	02820084 	addi.w	$r4,$r4,128(0x80)
1c0059cc:	57c203ff 	bl	-15872(0xfffc200) # 1c001bcc <myprintf>
1c0059d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059d4:	5003fc00 	b	1020(0x3fc) # 1c005dd0 <date+0x708>
1c0059d8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0059dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059e0:	293dc2cc 	st.b	$r12,$r22,-144(0xf70)
1c0059e4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0059e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059ec:	293dc6cc 	st.b	$r12,$r22,-143(0xf71)
1c0059f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059f8:	293dcacc 	st.b	$r12,$r22,-142(0xf72)
1c0059fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005a00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a04:	293dcecc 	st.b	$r12,$r22,-141(0xf73)
1c005a08:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005a0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a10:	293dd2cc 	st.b	$r12,$r22,-140(0xf74)
1c005a14:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005a18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a1c:	293dd6cc 	st.b	$r12,$r22,-139(0xf75)
1c005a20:	02bdc2cc 	addi.w	$r12,$r22,-144(0xf70)
1c005a24:	00150185 	move	$r5,$r12
1c005a28:	00150004 	move	$r4,$r0
1c005a2c:	57d307ff 	bl	-11516(0xfffd304) # 1c002d30 <RtcUpdateData>
1c005a30:	5003a000 	b	928(0x3a0) # 1c005dd0 <date+0x708>
1c005a34:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005a38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005a3c:	2880018c 	ld.w	$r12,$r12,0
1c005a40:	28be02cd 	ld.w	$r13,$r22,-128(0xf80)
1c005a44:	001501a5 	move	$r5,$r13
1c005a48:	00150184 	move	$r4,$r12
1c005a4c:	57d00bff 	bl	-12280(0xfffd008) # 1c002a54 <strcmp>
1c005a50:	0015008c 	move	$r12,$r4
1c005a54:	44024980 	bnez	$r12,584(0x248) # 1c005c9c <date+0x5d4>
1c005a58:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005a5c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005a60:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005a78 <date+0x3b0>
1c005a64:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005a68:	02bf3084 	addi.w	$r4,$r4,-52(0xfcc)
1c005a6c:	57c163ff 	bl	-16032(0xfffc160) # 1c001bcc <myprintf>
1c005a70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a74:	50035c00 	b	860(0x35c) # 1c005dd0 <date+0x708>
1c005a78:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005a7c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005a80:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c005a84:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005a88:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005a8c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c005a90:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005a94:	2a00018c 	ld.bu	$r12,$r12,0
1c005a98:	00150184 	move	$r4,$r12
1c005a9c:	57fbcfff 	bl	-1076(0xffffbcc) # 1c005668 <a_to_n>
1c005aa0:	0015008d 	move	$r13,$r4
1c005aa4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005aa8:	001c31b7 	mul.w	$r23,$r13,$r12
1c005aac:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005ab0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ab4:	2a00018c 	ld.bu	$r12,$r12,0
1c005ab8:	00150184 	move	$r4,$r12
1c005abc:	57fbafff 	bl	-1108(0xffffbac) # 1c005668 <a_to_n>
1c005ac0:	0015008c 	move	$r12,$r4
1c005ac4:	001032ec 	add.w	$r12,$r23,$r12
1c005ac8:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c005acc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005ad0:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005ad4:	2a00018c 	ld.bu	$r12,$r12,0
1c005ad8:	00150184 	move	$r4,$r12
1c005adc:	57fb8fff 	bl	-1140(0xffffb8c) # 1c005668 <a_to_n>
1c005ae0:	0015008d 	move	$r13,$r4
1c005ae4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ae8:	001c31b7 	mul.w	$r23,$r13,$r12
1c005aec:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005af0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005af4:	2a00018c 	ld.bu	$r12,$r12,0
1c005af8:	00150184 	move	$r4,$r12
1c005afc:	57fb6fff 	bl	-1172(0xffffb6c) # 1c005668 <a_to_n>
1c005b00:	0015008c 	move	$r12,$r4
1c005b04:	001032ec 	add.w	$r12,$r23,$r12
1c005b08:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c005b0c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005b10:	2a00018c 	ld.bu	$r12,$r12,0
1c005b14:	00150184 	move	$r4,$r12
1c005b18:	57fb53ff 	bl	-1200(0xffffb50) # 1c005668 <a_to_n>
1c005b1c:	0015008d 	move	$r13,$r4
1c005b20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005b24:	001c31b7 	mul.w	$r23,$r13,$r12
1c005b28:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005b2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b30:	2a00018c 	ld.bu	$r12,$r12,0
1c005b34:	00150184 	move	$r4,$r12
1c005b38:	57fb33ff 	bl	-1232(0xffffb30) # 1c005668 <a_to_n>
1c005b3c:	0015008c 	move	$r12,$r4
1c005b40:	001032ec 	add.w	$r12,$r23,$r12
1c005b44:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c005b48:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005b4c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005b50:	2a00018c 	ld.bu	$r12,$r12,0
1c005b54:	00150184 	move	$r4,$r12
1c005b58:	57fb13ff 	bl	-1264(0xffffb10) # 1c005668 <a_to_n>
1c005b5c:	0015008d 	move	$r13,$r4
1c005b60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005b64:	001c31b7 	mul.w	$r23,$r13,$r12
1c005b68:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005b6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005b70:	2a00018c 	ld.bu	$r12,$r12,0
1c005b74:	00150184 	move	$r4,$r12
1c005b78:	57faf3ff 	bl	-1296(0xffffaf0) # 1c005668 <a_to_n>
1c005b7c:	0015008c 	move	$r12,$r4
1c005b80:	001032ec 	add.w	$r12,$r23,$r12
1c005b84:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c005b88:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005b8c:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005b90:	2a00018c 	ld.bu	$r12,$r12,0
1c005b94:	00150184 	move	$r4,$r12
1c005b98:	57fad3ff 	bl	-1328(0xffffad0) # 1c005668 <a_to_n>
1c005b9c:	0015008d 	move	$r13,$r4
1c005ba0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ba4:	001c31b7 	mul.w	$r23,$r13,$r12
1c005ba8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005bac:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005bb0:	2a00018c 	ld.bu	$r12,$r12,0
1c005bb4:	00150184 	move	$r4,$r12
1c005bb8:	57fab3ff 	bl	-1360(0xffffab0) # 1c005668 <a_to_n>
1c005bbc:	0015008c 	move	$r12,$r4
1c005bc0:	001032ec 	add.w	$r12,$r23,$r12
1c005bc4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c005bc8:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005bcc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005bd0:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c005c2c <date+0x564>
1c005bd4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005bd8:	40005580 	beqz	$r12,84(0x54) # 1c005c2c <date+0x564>
1c005bdc:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005be0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005be4:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c005c2c <date+0x564>
1c005be8:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005bec:	40004180 	beqz	$r12,64(0x40) # 1c005c2c <date+0x564>
1c005bf0:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005bf4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005bf8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005c08 <date+0x540>
1c005bfc:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005c00:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005c04:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c005c2c <date+0x564>
1c005c08:	28bee2cd 	ld.w	$r13,$r22,-72(0xfb8)
1c005c0c:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c005c10:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c005c2c <date+0x564>
1c005c14:	28bed2cd 	ld.w	$r13,$r22,-76(0xfb4)
1c005c18:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005c1c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c005c2c <date+0x564>
1c005c20:	28bec2cd 	ld.w	$r13,$r22,-80(0xfb0)
1c005c24:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005c28:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005c34 <date+0x56c>
1c005c2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c30:	50000800 	b	8(0x8) # 1c005c38 <date+0x570>
1c005c34:	0015000c 	move	$r12,$r0
1c005c38:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c005c3c:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c005c40:	40001980 	beqz	$r12,24(0x18) # 1c005c58 <date+0x590>
1c005c44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005c48:	02b80084 	addi.w	$r4,$r4,-512(0xe00)
1c005c4c:	57bf83ff 	bl	-16512(0xfffbf80) # 1c001bcc <myprintf>
1c005c50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c54:	50017c00 	b	380(0x17c) # 1c005dd0 <date+0x708>
1c005c58:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c005c5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c60:	293da2cc 	st.b	$r12,$r22,-152(0xf68)
1c005c64:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c005c68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c6c:	293da6cc 	st.b	$r12,$r22,-151(0xf69)
1c005c70:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c78:	293daacc 	st.b	$r12,$r22,-150(0xf6a)
1c005c7c:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c84:	293daecc 	st.b	$r12,$r22,-149(0xf6b)
1c005c88:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005c8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c90:	293db2cc 	st.b	$r12,$r22,-148(0xf6c)
1c005c94:	0015000c 	move	$r12,$r0
1c005c98:	50013800 	b	312(0x138) # 1c005dd0 <date+0x708>
1c005c9c:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005ca0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005ca4:	2880018c 	ld.w	$r12,$r12,0
1c005ca8:	28be12cd 	ld.w	$r13,$r22,-124(0xf84)
1c005cac:	001501a5 	move	$r5,$r13
1c005cb0:	00150184 	move	$r4,$r12
1c005cb4:	57cda3ff 	bl	-12896(0xfffcda0) # 1c002a54 <strcmp>
1c005cb8:	0015008c 	move	$r12,$r4
1c005cbc:	44008980 	bnez	$r12,136(0x88) # 1c005d44 <date+0x67c>
1c005cc0:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005cc4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005cc8:	2880018c 	ld.w	$r12,$r12,0
1c005ccc:	00150184 	move	$r4,$r12
1c005cd0:	57ef2bff 	bl	-4312(0xfffef28) # 1c004bf8 <str2num>
1c005cd4:	29bea2c4 	st.w	$r4,$r22,-88(0xfa8)
1c005cd8:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c005cdc:	140000ec 	lu12i.w	$r12,7(0x7)
1c005ce0:	0394c18c 	ori	$r12,$r12,0x530
1c005ce4:	0012b1ac 	sltu	$r12,$r13,$r12
1c005ce8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cec:	28bea2ce 	ld.w	$r14,$r22,-88(0xfa8)
1c005cf0:	1400018c 	lu12i.w	$r12,12(0xc)
1c005cf4:	038d458c 	ori	$r12,$r12,0x351
1c005cf8:	0012b1cc 	sltu	$r12,$r14,$r12
1c005cfc:	03c0058c 	xori	$r12,$r12,0x1
1c005d00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d04:	001531ac 	or	$r12,$r13,$r12
1c005d08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d0c:	40001980 	beqz	$r12,24(0x18) # 1c005d24 <date+0x65c>
1c005d10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005d14:	02b51084 	addi.w	$r4,$r4,-700(0xd44)
1c005d18:	57beb7ff 	bl	-16716(0xfffbeb4) # 1c001bcc <myprintf>
1c005d1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d20:	5000b000 	b	176(0xb0) # 1c005dd0 <date+0x708>
1c005d24:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005d28:	0044918c 	srli.w	$r12,$r12,0x4
1c005d2c:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c005d30:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005d34:	03403d8c 	andi	$r12,$r12,0xf
1c005d38:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c005d3c:	0015000c 	move	$r12,$r0
1c005d40:	50009000 	b	144(0x90) # 1c005dd0 <date+0x708>
1c005d44:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005d48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d4c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c005d5c <date+0x694>
1c005d50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005d54:	02b49084 	addi.w	$r4,$r4,-732(0xd24)
1c005d58:	57be77ff 	bl	-16780(0xfffbe74) # 1c001bcc <myprintf>
1c005d5c:	02bd82cc 	addi.w	$r12,$r22,-160(0xf60)
1c005d60:	00150185 	move	$r5,$r12
1c005d64:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005d68:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c002d30 <RtcUpdateData>
1c005d6c:	2a3d96cc 	ld.bu	$r12,$r22,-155(0xf65)
1c005d70:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c005d74:	2a3d92cc 	ld.bu	$r12,$r22,-156(0xf64)
1c005d78:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c005d7c:	2a3d8ecc 	ld.bu	$r12,$r22,-157(0xf63)
1c005d80:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c005d84:	2a3d8acc 	ld.bu	$r12,$r22,-158(0xf62)
1c005d88:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c005d8c:	2a3d86cc 	ld.bu	$r12,$r22,-159(0xf61)
1c005d90:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c005d94:	2a3d82cc 	ld.bu	$r12,$r22,-160(0xf60)
1c005d98:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c005d9c:	28be52c7 	ld.w	$r7,$r22,-108(0xf94)
1c005da0:	28be62c6 	ld.w	$r6,$r22,-104(0xf98)
1c005da4:	28be72c5 	ld.w	$r5,$r22,-100(0xf9c)
1c005da8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005dac:	02b38084 	addi.w	$r4,$r4,-800(0xce0)
1c005db0:	57be1fff 	bl	-16868(0xfffbe1c) # 1c001bcc <myprintf>
1c005db4:	28be22c7 	ld.w	$r7,$r22,-120(0xf88)
1c005db8:	28be32c6 	ld.w	$r6,$r22,-116(0xf8c)
1c005dbc:	28be42c5 	ld.w	$r5,$r22,-112(0xf90)
1c005dc0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005dc4:	02b37084 	addi.w	$r4,$r4,-804(0xcdc)
1c005dc8:	57be07ff 	bl	-16892(0xfffbe04) # 1c001bcc <myprintf>
1c005dcc:	0015000c 	move	$r12,$r0
1c005dd0:	00150184 	move	$r4,$r12
1c005dd4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c005dd8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c005ddc:	28829077 	ld.w	$r23,$r3,164(0xa4)
1c005de0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c005de4:	4c000020 	jirl	$r0,$r1,0

1c005de8 <watch_dog>:
watch_dog():
1c005de8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005dec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005df0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005df4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005df8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005dfc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005e00:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005e04:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e08:	02b32084 	addi.w	$r4,$r4,-824(0xcc8)
1c005e0c:	57bdc3ff 	bl	-16960(0xfffbdc0) # 1c001bcc <myprintf>
1c005e10:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005e14:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e18:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c005e34 <watch_dog+0x4c>
1c005e1c:	57d3ebff 	bl	-11288(0xfffd3e8) # 1c003204 <WDG_DogFeed>
1c005e20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e24:	02b33084 	addi.w	$r4,$r4,-820(0xccc)
1c005e28:	57bda7ff 	bl	-16988(0xfffbda4) # 1c001bcc <myprintf>
1c005e2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e30:	50002800 	b	40(0x28) # 1c005e58 <watch_dog+0x70>
1c005e34:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005e3c:	2880018c 	ld.w	$r12,$r12,0
1c005e40:	00150184 	move	$r4,$r12
1c005e44:	57edb7ff 	bl	-4684(0xfffedb4) # 1c004bf8 <str2num>
1c005e48:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005e4c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005e50:	57d36bff 	bl	-11416(0xfffd368) # 1c0031b8 <WDG_SetWatchDog>
1c005e54:	0015000c 	move	$r12,$r0
1c005e58:	00150184 	move	$r4,$r12
1c005e5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e68:	4c000020 	jirl	$r0,$r1,0

1c005e6c <i2cp>:
i2cp():
1c005e6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e80:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005e84:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005e88:	00150184 	move	$r4,$r12
1c005e8c:	57d4abff 	bl	-11096(0xfffd4a8) # 1c003334 <I2C_StructInit>
1c005e90:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005e94:	00150185 	move	$r5,$r12
1c005e98:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005e9c:	57d397ff 	bl	-11372(0xfffd394) # 1c003230 <I2C_Init>
1c005ea0:	03400000 	andi	$r0,$r0,0x0
1c005ea4:	00150184 	move	$r4,$r12
1c005ea8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005eac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005eb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005eb4:	4c000020 	jirl	$r0,$r1,0

1c005eb8 <i2cw>:
i2cw():
1c005eb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ebc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ec0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ec4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ec8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ecc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ed0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ed4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005ed8:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005ef0 <i2cw+0x38>
1c005edc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005ee0:	02b09084 	addi.w	$r4,$r4,-988(0xc24)
1c005ee4:	57bcebff 	bl	-17176(0xfffbce8) # 1c001bcc <myprintf>
1c005ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005eec:	5000c400 	b	196(0xc4) # 1c005fb0 <i2cw+0xf8>
1c005ef0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005ef4:	02aa4084 	addi.w	$r4,$r4,-1392(0xa90)
1c005ef8:	57bcd7ff 	bl	-17196(0xfffbcd4) # 1c001bcc <myprintf>
1c005efc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005f04:	2880018c 	ld.w	$r12,$r12,0
1c005f08:	00150184 	move	$r4,$r12
1c005f0c:	57ecefff 	bl	-4884(0xfffecec) # 1c004bf8 <str2num>
1c005f10:	0015008c 	move	$r12,$r4
1c005f14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f18:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f1c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005f20:	2880018c 	ld.w	$r12,$r12,0
1c005f24:	00150184 	move	$r4,$r12
1c005f28:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c004bf8 <str2num>
1c005f2c:	0015008c 	move	$r12,$r4
1c005f30:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f34:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f38:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005f3c:	2880018c 	ld.w	$r12,$r12,0
1c005f40:	00150184 	move	$r4,$r12
1c005f44:	57ecb7ff 	bl	-4940(0xfffecb4) # 1c004bf8 <str2num>
1c005f48:	0015008c 	move	$r12,$r4
1c005f4c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005f50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f54:	00409d8c 	slli.w	$r12,$r12,0x7
1c005f58:	0000598d 	ext.w.h	$r13,$r12
1c005f5c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f60:	0000598c 	ext.w.h	$r12,$r12
1c005f64:	001531ac 	or	$r12,$r13,$r12
1c005f68:	0000598c 	ext.w.h	$r12,$r12
1c005f6c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005f70:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005f74:	00150185 	move	$r5,$r12
1c005f78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005f7c:	02aed084 	addi.w	$r4,$r4,-1100(0xbb4)
1c005f80:	57bc4fff 	bl	-17332(0xfffbc4c) # 1c001bcc <myprintf>
1c005f84:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005f88:	00150185 	move	$r5,$r12
1c005f8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005f90:	02aeb084 	addi.w	$r4,$r4,-1108(0xbac)
1c005f94:	57bc3bff 	bl	-17352(0xfffbc38) # 1c001bcc <myprintf>
1c005f98:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005f9c:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005fa0:	001501a5 	move	$r5,$r13
1c005fa4:	00150184 	move	$r4,$r12
1c005fa8:	57d64fff 	bl	-10676(0xfffd64c) # 1c0035f4 <CAT24_Write>
1c005fac:	0015000c 	move	$r12,$r0
1c005fb0:	00150184 	move	$r4,$r12
1c005fb4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fb8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fbc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fc0:	4c000020 	jirl	$r0,$r1,0

1c005fc4 <i2cr>:
i2cr():
1c005fc4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005fc8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005fcc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005fd0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005fd4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005fd8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005fdc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005fe0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005fe4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005ffc <i2cr+0x38>
1c005fe8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005fec:	02ad7084 	addi.w	$r4,$r4,-1188(0xb5c)
1c005ff0:	57bbdfff 	bl	-17444(0xfffbbdc) # 1c001bcc <myprintf>
1c005ff4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ff8:	50009800 	b	152(0x98) # 1c006090 <i2cr+0xcc>
1c005ffc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006000:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006004:	2880018c 	ld.w	$r12,$r12,0
1c006008:	00150184 	move	$r4,$r12
1c00600c:	57ebefff 	bl	-5140(0xfffebec) # 1c004bf8 <str2num>
1c006010:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006014:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006018:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00601c:	2880018c 	ld.w	$r12,$r12,0
1c006020:	00150184 	move	$r4,$r12
1c006024:	57ebd7ff 	bl	-5164(0xfffebd4) # 1c004bf8 <str2num>
1c006028:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00602c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006030:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006034:	00409d8c 	slli.w	$r12,$r12,0x7
1c006038:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00603c:	140000ec 	lu12i.w	$r12,7(0x7)
1c006040:	03be018c 	ori	$r12,$r12,0xf80
1c006044:	0014b1ac 	and	$r12,$r13,$r12
1c006048:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00604c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006050:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006054:	0343fd8c 	andi	$r12,$r12,0xff
1c006058:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00605c:	001531ac 	or	$r12,$r13,$r12
1c006060:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c006064:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c006068:	00150184 	move	$r4,$r12
1c00606c:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c003750 <CAT24_Read>
1c006070:	0015008c 	move	$r12,$r4
1c006074:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c006078:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c00607c:	00150185 	move	$r5,$r12
1c006080:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006084:	02aba084 	addi.w	$r4,$r4,-1304(0xae8)
1c006088:	57bb47ff 	bl	-17596(0xfffbb44) # 1c001bcc <myprintf>
1c00608c:	0015000c 	move	$r12,$r0
1c006090:	00150184 	move	$r4,$r12
1c006094:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006098:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00609c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0060a0:	4c000020 	jirl	$r0,$r1,0

1c0060a4 <adc>:
adc():
1c0060a4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0060a8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0060ac:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0060b0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0060b4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0060b8:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0060bc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0060c0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0060c4:	2880018c 	ld.w	$r12,$r12,0
1c0060c8:	00150184 	move	$r4,$r12
1c0060cc:	57eb2fff 	bl	-5332(0xfffeb2c) # 1c004bf8 <str2num>
1c0060d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0060d4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0060d8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0060dc:	2880018c 	ld.w	$r12,$r12,0
1c0060e0:	00150184 	move	$r4,$r12
1c0060e4:	57eb17ff 	bl	-5356(0xfffeb14) # 1c004bf8 <str2num>
1c0060e8:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0060ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0060f0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0060f4:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c00611c <adc+0x78>
1c0060f8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0060fc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006100:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c00611c <adc+0x78>
1c006104:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006108:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00610c:	6400118d 	bge	$r12,$r13,16(0x10) # 1c00611c <adc+0x78>
1c006110:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006114:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006118:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c006124 <adc+0x80>
1c00611c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006120:	50000800 	b	8(0x8) # 1c006128 <adc+0x84>
1c006124:	0015000c 	move	$r12,$r0
1c006128:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00612c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006130:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c006134:	2880018c 	ld.w	$r12,$r12,0
1c006138:	00150184 	move	$r4,$r12
1c00613c:	57eabfff 	bl	-5444(0xfffeabc) # 1c004bf8 <str2num>
1c006140:	0015008c 	move	$r12,$r4
1c006144:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006148:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00614c:	40003180 	beqz	$r12,48(0x30) # 1c00617c <adc+0xd8>
1c006150:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006154:	02a8b084 	addi.w	$r4,$r4,-1492(0xa2c)
1c006158:	57ba77ff 	bl	-17804(0xfffba74) # 1c001bcc <myprintf>
1c00615c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006160:	02a8f084 	addi.w	$r4,$r4,-1476(0xa3c)
1c006164:	57ba6bff 	bl	-17816(0xfffba68) # 1c001bcc <myprintf>
1c006168:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00616c:	02aa3084 	addi.w	$r4,$r4,-1396(0xa8c)
1c006170:	57ba5fff 	bl	-17828(0xfffba5c) # 1c001bcc <myprintf>
1c006174:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006178:	5000bc00 	b	188(0xbc) # 1c006234 <adc+0x190>
1c00617c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006180:	0380118c 	ori	$r12,$r12,0x4
1c006184:	1400010d 	lu12i.w	$r13,8(0x8)
1c006188:	2980018d 	st.w	$r13,$r12,0
1c00618c:	50007800 	b	120(0x78) # 1c006204 <adc+0x160>
1c006190:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006194:	0040918e 	slli.w	$r14,$r12,0x4
1c006198:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00619c:	0381b18c 	ori	$r12,$r12,0x6c
1c0061a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061a4:	001035cd 	add.w	$r13,$r14,$r13
1c0061a8:	2980018d 	st.w	$r13,$r12,0
1c0061ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061b0:	0381b18c 	ori	$r12,$r12,0x6c
1c0061b4:	2880018d 	ld.w	$r13,$r12,0
1c0061b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061bc:	0381b18c 	ori	$r12,$r12,0x6c
1c0061c0:	038401ad 	ori	$r13,$r13,0x100
1c0061c4:	2980018d 	st.w	$r13,$r12,0
1c0061c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061cc:	0381c18c 	ori	$r12,$r12,0x70
1c0061d0:	2880018c 	ld.w	$r12,$r12,0
1c0061d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0061d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0061dc:	03b4580c 	ori	$r12,$r0,0xd16
1c0061e0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0061e4:	0044b18c 	srli.w	$r12,$r12,0xc
1c0061e8:	00150185 	move	$r5,$r12
1c0061ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0061f0:	02a87084 	addi.w	$r4,$r4,-1508(0xa1c)
1c0061f4:	57b9dbff 	bl	-17960(0xfffb9d8) # 1c001bcc <myprintf>
1c0061f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061fc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006200:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006204:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006208:	47ff899f 	bnez	$r12,-120(0x7fff88) # 1c006190 <adc+0xec>
1c00620c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006210:	0380118c 	ori	$r12,$r12,0x4
1c006214:	2880018e 	ld.w	$r14,$r12,0
1c006218:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00621c:	0380118c 	ori	$r12,$r12,0x4
1c006220:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c006224:	03bffdad 	ori	$r13,$r13,0xfff
1c006228:	0014b5cd 	and	$r13,$r14,$r13
1c00622c:	2980018d 	st.w	$r13,$r12,0
1c006230:	0015000c 	move	$r12,$r0
1c006234:	00150184 	move	$r4,$r12
1c006238:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00623c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006240:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006244:	4c000020 	jirl	$r0,$r1,0

1c006248 <batdet>:
batdet():
1c006248:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00624c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006250:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006254:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006258:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00625c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006260:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006264:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006268:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006280 <batdet+0x38>
1c00626c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006270:	02a6b084 	addi.w	$r4,$r4,-1620(0x9ac)
1c006274:	57b95bff 	bl	-18088(0xfffb958) # 1c001bcc <myprintf>
1c006278:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00627c:	50012800 	b	296(0x128) # 1c0063a4 <batdet+0x15c>
1c006280:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006284:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006288:	2880018c 	ld.w	$r12,$r12,0
1c00628c:	00150184 	move	$r4,$r12
1c006290:	57e96bff 	bl	-5784(0xfffe968) # 1c004bf8 <str2num>
1c006294:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00629c:	44001d80 	bnez	$r12,28(0x1c) # 1c0062b8 <batdet+0x70>
1c0062a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062a4:	2880018e 	ld.w	$r14,$r12,0
1c0062a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062ac:	1400040d 	lu12i.w	$r13,32(0x20)
1c0062b0:	001535cd 	or	$r13,$r14,$r13
1c0062b4:	2980018d 	st.w	$r13,$r12,0
1c0062b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0062bc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0062c0:	6800bd8d 	bltu	$r12,$r13,188(0xbc) # 1c00637c <batdet+0x134>
1c0062c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0062c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062cc:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c006308 <batdet+0xc0>
1c0062d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062d4:	40001580 	beqz	$r12,20(0x14) # 1c0062e8 <batdet+0xa0>
1c0062d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0062dc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0062e0:	580061ac 	beq	$r13,$r12,96(0x60) # 1c006340 <batdet+0xf8>
1c0062e4:	5000ac00 	b	172(0xac) # 1c006390 <batdet+0x148>
1c0062e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062ec:	2880018e 	ld.w	$r14,$r12,0
1c0062f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062f4:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c0062f8:	03bffdad 	ori	$r13,$r13,0xfff
1c0062fc:	0014b5cd 	and	$r13,$r14,$r13
1c006300:	2980018d 	st.w	$r13,$r12,0
1c006304:	50008c00 	b	140(0x8c) # 1c006390 <batdet+0x148>
1c006308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00630c:	2880018e 	ld.w	$r14,$r12,0
1c006310:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006314:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006318:	03bffdad 	ori	$r13,$r13,0xfff
1c00631c:	0014b5cd 	and	$r13,$r14,$r13
1c006320:	2980018d 	st.w	$r13,$r12,0
1c006324:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006328:	2880018e 	ld.w	$r14,$r12,0
1c00632c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006330:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c006334:	001535cd 	or	$r13,$r14,$r13
1c006338:	2980018d 	st.w	$r13,$r12,0
1c00633c:	50005400 	b	84(0x54) # 1c006390 <batdet+0x148>
1c006340:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006344:	2880018e 	ld.w	$r14,$r12,0
1c006348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00634c:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006350:	03bffdad 	ori	$r13,$r13,0xfff
1c006354:	0014b5cd 	and	$r13,$r14,$r13
1c006358:	2980018d 	st.w	$r13,$r12,0
1c00635c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006360:	2880018e 	ld.w	$r14,$r12,0
1c006364:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006368:	1406000d 	lu12i.w	$r13,12288(0x3000)
1c00636c:	001535cd 	or	$r13,$r14,$r13
1c006370:	2980018d 	st.w	$r13,$r12,0
1c006374:	03400000 	andi	$r0,$r0,0x0
1c006378:	50001800 	b	24(0x18) # 1c006390 <batdet+0x148>
1c00637c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006380:	02a33084 	addi.w	$r4,$r4,-1844(0x8cc)
1c006384:	57b84bff 	bl	-18360(0xfffb848) # 1c001bcc <myprintf>
1c006388:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00638c:	50001800 	b	24(0x18) # 1c0063a4 <batdet+0x15c>
1c006390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006394:	0380118c 	ori	$r12,$r12,0x4
1c006398:	03a0000d 	ori	$r13,$r0,0x800
1c00639c:	2980018d 	st.w	$r13,$r12,0
1c0063a0:	0015000c 	move	$r12,$r0
1c0063a4:	00150184 	move	$r4,$r12
1c0063a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063b4:	4c000020 	jirl	$r0,$r1,0

1c0063b8 <copy>:
copy():
1c0063b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0063bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0063c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0063c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0063c8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0063cc:	0380118c 	ori	$r12,$r12,0x4
1c0063d0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0063d4:	2980018d 	st.w	$r13,$r12,0
1c0063d8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0063dc:	0380218c 	ori	$r12,$r12,0x8
1c0063e0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0063e4:	2980018d 	st.w	$r13,$r12,0
1c0063e8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0063ec:	0380618c 	ori	$r12,$r12,0x18
1c0063f0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0063f4:	2980018d 	st.w	$r13,$r12,0
1c0063f8:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0063fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006400:	5000b000 	b	176(0xb0) # 1c0064b0 <copy+0xf8>
1c006404:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006408:	140007ec 	lu12i.w	$r12,63(0x3f)
1c00640c:	03bffd8c 	ori	$r12,$r12,0xfff
1c006410:	0014b1ae 	and	$r14,$r13,$r12
1c006414:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006418:	1540000d 	lu12i.w	$r13,-393216(0xa0000)
1c00641c:	001535cd 	or	$r13,$r14,$r13
1c006420:	2980018d 	st.w	$r13,$r12,0
1c006424:	57cde3ff 	bl	-12832(0xfffcde0) # 1c003204 <WDG_DogFeed>
1c006428:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00642c:	02a0d084 	addi.w	$r4,$r4,-1996(0x834)
1c006430:	57b79fff 	bl	-18532(0xfffb79c) # 1c001bcc <myprintf>
1c006434:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006438:	1480000d 	lu12i.w	$r13,262144(0x40000)
1c00643c:	2980018d 	st.w	$r13,$r12,0
1c006440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006444:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006448:	50002c00 	b	44(0x2c) # 1c006474 <copy+0xbc>
1c00644c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006450:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c006454:	001031ac 	add.w	$r12,$r13,$r12
1c006458:	0015018d 	move	$r13,$r12
1c00645c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006460:	288001ad 	ld.w	$r13,$r13,0
1c006464:	2980018d 	st.w	$r13,$r12,0
1c006468:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00646c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006470:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006478:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c00647c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006480:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c00644c <copy+0x94>
1c006484:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006488:	140007ec 	lu12i.w	$r12,63(0x3f)
1c00648c:	03bffd8c 	ori	$r12,$r12,0xfff
1c006490:	0014b1ae 	and	$r14,$r13,$r12
1c006494:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006498:	15c0000d 	lu12i.w	$r13,-131072(0xe0000)
1c00649c:	001535cd 	or	$r13,$r14,$r13
1c0064a0:	2980018d 	st.w	$r13,$r12,0
1c0064a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064a8:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c0064ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064b4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0064b8:	6bff4dac 	bltu	$r13,$r12,-180(0x3ff4c) # 1c006404 <copy+0x4c>
1c0064bc:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0064c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064c4:	50006000 	b	96(0x60) # 1c006524 <copy+0x16c>
1c0064c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0064d0:	50003800 	b	56(0x38) # 1c006508 <copy+0x150>
1c0064d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0064d8:	2880018d 	ld.w	$r13,$r12,0
1c0064dc:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0064e0:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c0064e4:	001031cc 	add.w	$r12,$r14,$r12
1c0064e8:	2880018c 	ld.w	$r12,$r12,0
1c0064ec:	580011ac 	beq	$r13,$r12,16(0x10) # 1c0064fc <copy+0x144>
1c0064f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0064f4:	029dc084 	addi.w	$r4,$r4,1904(0x770)
1c0064f8:	57b6d7ff 	bl	-18732(0xfffb6d4) # 1c001bcc <myprintf>
1c0064fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006500:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006504:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00650c:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c006510:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006514:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c0064d4 <copy+0x11c>
1c006518:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00651c:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c006520:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006524:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006528:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00652c:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c0064c8 <copy+0x110>
1c006530:	0015000c 	move	$r12,$r0
1c006534:	00150184 	move	$r4,$r12
1c006538:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00653c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006540:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006544:	4c000020 	jirl	$r0,$r1,0

1c006548 <uart_init>:
uart_init():
1c006548:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00654c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006550:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00655c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006560:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006564:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006568:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006580 <uart_init+0x38>
1c00656c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006570:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c006574:	57b65bff 	bl	-18856(0xfffb658) # 1c001bcc <myprintf>
1c006578:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00657c:	50006400 	b	100(0x64) # 1c0065e0 <uart_init+0x98>
1c006580:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006584:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006588:	2880018c 	ld.w	$r12,$r12,0
1c00658c:	00150184 	move	$r4,$r12
1c006590:	57e66bff 	bl	-6552(0xfffe668) # 1c004bf8 <str2num>
1c006594:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006598:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00659c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0065a0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0065b0 <uart_init+0x68>
1c0065a4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0065a8:	57b9cbff 	bl	-17976(0xfffb9c8) # 1c001f70 <Uart_init>
1c0065ac:	50003000 	b	48(0x30) # 1c0065dc <uart_init+0x94>
1c0065b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0065b4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0065b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0065c8 <uart_init+0x80>
1c0065bc:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0065c0:	57b9b3ff 	bl	-18000(0xfffb9b0) # 1c001f70 <Uart_init>
1c0065c4:	50001800 	b	24(0x18) # 1c0065dc <uart_init+0x94>
1c0065c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0065cc:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
1c0065d0:	57b5ffff 	bl	-18948(0xfffb5fc) # 1c001bcc <myprintf>
1c0065d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0065d8:	50000800 	b	8(0x8) # 1c0065e0 <uart_init+0x98>
1c0065dc:	0015000c 	move	$r12,$r0
1c0065e0:	00150184 	move	$r4,$r12
1c0065e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0065e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0065ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0065f0:	4c000020 	jirl	$r0,$r1,0

1c0065f4 <spi_init>:
spi_init():
1c0065f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0065f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0065fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006600:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006604:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006608:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00660c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006610:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c006614:	2900018d 	st.b	$r13,$r12,0
1c006618:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00661c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c006620:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006624:	57b167ff 	bl	-20124(0xfffb164) # 1c001788 <Spiflash_Rdid>
1c006628:	0015008c 	move	$r12,$r4
1c00662c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006630:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006634:	00150185 	move	$r5,$r12
1c006638:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00663c:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c006640:	57b58fff 	bl	-19060(0xfffb58c) # 1c001bcc <myprintf>
1c006644:	03400000 	andi	$r0,$r0,0x0
1c006648:	00150184 	move	$r4,$r12
1c00664c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006650:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006654:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006658:	4c000020 	jirl	$r0,$r1,0

1c00665c <spi_write>:
spi_write():
1c00665c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006660:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006664:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006668:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00666c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006670:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c006674:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006678:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00667c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006694 <spi_write+0x38>
1c006680:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006684:	02984084 	addi.w	$r4,$r4,1552(0x610)
1c006688:	57b547ff 	bl	-19132(0xfffb544) # 1c001bcc <myprintf>
1c00668c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006690:	5000e800 	b	232(0xe8) # 1c006778 <spi_write+0x11c>
1c006694:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006698:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00669c:	2880018c 	ld.w	$r12,$r12,0
1c0066a0:	00150184 	move	$r4,$r12
1c0066a4:	57e557ff 	bl	-6828(0xfffe554) # 1c004bf8 <str2num>
1c0066a8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0066ac:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0066b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066b4:	0297f084 	addi.w	$r4,$r4,1532(0x5fc)
1c0066b8:	57b517ff 	bl	-19180(0xfffb514) # 1c001bcc <myprintf>
1c0066bc:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c0066c0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0066c4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0066c8:	50009400 	b	148(0x94) # 1c00675c <spi_write+0x100>
1c0066cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0066d0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0066d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0066d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0066dc:	50004000 	b	64(0x40) # 1c00671c <spi_write+0xc0>
1c0066e0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0066e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066e8:	001031ad 	add.w	$r13,$r13,$r12
1c0066ec:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0066f0:	001031ac 	add.w	$r12,$r13,$r12
1c0066f4:	0015018e 	move	$r14,$r12
1c0066f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0066fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006700:	001031ac 	add.w	$r12,$r13,$r12
1c006704:	2a0001cd 	ld.bu	$r13,$r14,0
1c006708:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00670c:	2900018d 	st.b	$r13,$r12,0
1c006710:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006714:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006718:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00671c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006720:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006724:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0066e0 <spi_write+0x84>
1c006728:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00672c:	02965084 	addi.w	$r4,$r4,1428(0x594)
1c006730:	57b49fff 	bl	-19300(0xfffb49c) # 1c001bcc <myprintf>
1c006734:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006738:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00673c:	001031ac 	add.w	$r12,$r13,$r12
1c006740:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006744:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c006748:	00150184 	move	$r4,$r12
1c00674c:	57b137ff 	bl	-20172(0xfffb134) # 1c001880 <Spiflash_Page_Program>
1c006750:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006754:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006758:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00675c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006764:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c0066cc <spi_write+0x70>
1c006768:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00676c:	02956084 	addi.w	$r4,$r4,1368(0x558)
1c006770:	57b45fff 	bl	-19364(0xfffb45c) # 1c001bcc <myprintf>
1c006774:	0015000c 	move	$r12,$r0
1c006778:	00150184 	move	$r4,$r12
1c00677c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006780:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006784:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006788:	4c000020 	jirl	$r0,$r1,0

1c00678c <spi_read>:
spi_read():
1c00678c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006790:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006794:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006798:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00679c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0067a0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0067a4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0067a8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0067ac:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0067c4 <spi_read+0x38>
1c0067b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067b4:	02945084 	addi.w	$r4,$r4,1300(0x514)
1c0067b8:	57b417ff 	bl	-19436(0xfffb414) # 1c001bcc <myprintf>
1c0067bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067c0:	50012800 	b	296(0x128) # 1c0068e8 <spi_read+0x15c>
1c0067c4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0067c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0067cc:	2880018c 	ld.w	$r12,$r12,0
1c0067d0:	00150184 	move	$r4,$r12
1c0067d4:	57e427ff 	bl	-7132(0xfffe424) # 1c004bf8 <str2num>
1c0067d8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0067dc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0067e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067e4:	0293f084 	addi.w	$r4,$r4,1276(0x4fc)
1c0067e8:	57b3e7ff 	bl	-19484(0xfffb3e4) # 1c001bcc <myprintf>
1c0067ec:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c0067f0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0067f4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0067f8:	5000d400 	b	212(0xd4) # 1c0068cc <spi_read+0x140>
1c0067fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006800:	0040a18c 	slli.w	$r12,$r12,0x8
1c006804:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006808:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00680c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006810:	001031ac 	add.w	$r12,$r13,$r12
1c006814:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006818:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00681c:	00150184 	move	$r4,$r12
1c006820:	57b107ff 	bl	-20220(0xfffb104) # 1c001924 <Spiflash_Read_Bytes>
1c006824:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006828:	50008000 	b	128(0x80) # 1c0068a8 <spi_read+0x11c>
1c00682c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006834:	001031ac 	add.w	$r12,$r13,$r12
1c006838:	2a00018d 	ld.bu	$r13,$r12,0
1c00683c:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006844:	001031ce 	add.w	$r14,$r14,$r12
1c006848:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c00684c:	001031cc 	add.w	$r12,$r14,$r12
1c006850:	2a00018c 	ld.bu	$r12,$r12,0
1c006854:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006858:	580045ac 	beq	$r13,$r12,68(0x44) # 1c00689c <spi_read+0x110>
1c00685c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006864:	001031ac 	add.w	$r12,$r13,$r12
1c006868:	2a00018c 	ld.bu	$r12,$r12,0
1c00686c:	0015018e 	move	$r14,$r12
1c006870:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006878:	001031ad 	add.w	$r13,$r13,$r12
1c00687c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006880:	001031ac 	add.w	$r12,$r13,$r12
1c006884:	00150186 	move	$r6,$r12
1c006888:	001501c5 	move	$r5,$r14
1c00688c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006890:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c006894:	57b33bff 	bl	-19656(0xfffb338) # 1c001bcc <myprintf>
1c006898:	50001c00 	b	28(0x1c) # 1c0068b4 <spi_read+0x128>
1c00689c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0068a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0068ac:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0068b0:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c00682c <spi_read+0xa0>
1c0068b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068b8:	02902084 	addi.w	$r4,$r4,1032(0x408)
1c0068bc:	57b313ff 	bl	-19696(0xfffb310) # 1c001bcc <myprintf>
1c0068c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0068c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0068cc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0068d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068d4:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c0067fc <spi_read+0x70>
1c0068d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068dc:	028fa084 	addi.w	$r4,$r4,1000(0x3e8)
1c0068e0:	57b2efff 	bl	-19732(0xfffb2ec) # 1c001bcc <myprintf>
1c0068e4:	0015000c 	move	$r12,$r0
1c0068e8:	00150184 	move	$r4,$r12
1c0068ec:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0068f0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0068f4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0068f8:	4c000020 	jirl	$r0,$r1,0

1c0068fc <spi_erase>:
spi_erase():
1c0068fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006900:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006904:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00690c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006910:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006914:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006918:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00691c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006934 <spi_erase+0x38>
1c006920:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006924:	028fb084 	addi.w	$r4,$r4,1004(0x3ec)
1c006928:	57b2a7ff 	bl	-19804(0xfffb2a4) # 1c001bcc <myprintf>
1c00692c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006930:	50004800 	b	72(0x48) # 1c006978 <spi_erase+0x7c>
1c006934:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006938:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00693c:	2880018c 	ld.w	$r12,$r12,0
1c006940:	00150184 	move	$r4,$r12
1c006944:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c004bf8 <str2num>
1c006948:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00694c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006950:	028f7084 	addi.w	$r4,$r4,988(0x3dc)
1c006954:	57b27bff 	bl	-19848(0xfffb278) # 1c001bcc <myprintf>
1c006958:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00695c:	57ae97ff 	bl	-20844(0xfffae94) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006960:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006964:	1400020c 	lu12i.w	$r12,16(0x10)
1c006968:	001031ac 	add.w	$r12,$r13,$r12
1c00696c:	00150184 	move	$r4,$r12
1c006970:	57ae83ff 	bl	-20864(0xfffae80) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006974:	0015000c 	move	$r12,$r0
1c006978:	00150184 	move	$r4,$r12
1c00697c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006980:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006984:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006988:	4c000020 	jirl	$r0,$r1,0

1c00698c <spi_flash>:
spi_flash():
1c00698c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006990:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006994:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006998:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00699c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0069a0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0069a4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0069a8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0069ac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069b0:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c0069b4:	2900018d 	st.b	$r13,$r12,0
1c0069b8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069bc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0069c0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0069c4:	57adc7ff 	bl	-21052(0xfffadc4) # 1c001788 <Spiflash_Rdid>
1c0069c8:	0015008c 	move	$r12,$r4
1c0069cc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0069d0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0069d4:	00150185 	move	$r5,$r12
1c0069d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069dc:	028ab084 	addi.w	$r4,$r4,684(0x2ac)
1c0069e0:	57b1efff 	bl	-19988(0xfffb1ec) # 1c001bcc <myprintf>
1c0069e4:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c0069e8:	57ae0bff 	bl	-20984(0xfffae08) # 1c0017f0 <Spiflash_Block64k_Erase>
1c0069ec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0069f0:	1400020c 	lu12i.w	$r12,16(0x10)
1c0069f4:	001031ac 	add.w	$r12,$r13,$r12
1c0069f8:	00150184 	move	$r4,$r12
1c0069fc:	57adf7ff 	bl	-21004(0xfffadf4) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006a00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006a04:	028ce084 	addi.w	$r4,$r4,824(0x338)
1c006a08:	57b1c7ff 	bl	-20028(0xfffb1c4) # 1c001bcc <myprintf>
1c006a0c:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006a10:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006a14:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006a18:	50009400 	b	148(0x94) # 1c006aac <spi_flash+0x120>
1c006a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a20:	0040a18c 	slli.w	$r12,$r12,0x8
1c006a24:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006a28:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006a2c:	50004000 	b	64(0x40) # 1c006a6c <spi_flash+0xe0>
1c006a30:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a38:	001031ad 	add.w	$r13,$r13,$r12
1c006a3c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006a40:	001031ac 	add.w	$r12,$r13,$r12
1c006a44:	0015018e 	move	$r14,$r12
1c006a48:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a50:	001031ac 	add.w	$r12,$r13,$r12
1c006a54:	2a0001cd 	ld.bu	$r13,$r14,0
1c006a58:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c006a5c:	2900018d 	st.b	$r13,$r12,0
1c006a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006a6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a70:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006a74:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006a30 <spi_flash+0xa4>
1c006a78:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006a7c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006a80:	001031ac 	add.w	$r12,$r13,$r12
1c006a84:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006a88:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006a8c:	00150184 	move	$r4,$r12
1c006a90:	57adf3ff 	bl	-21008(0xfffadf0) # 1c001880 <Spiflash_Page_Program>
1c006a94:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006a98:	0288a084 	addi.w	$r4,$r4,552(0x228)
1c006a9c:	57b133ff 	bl	-20176(0xfffb130) # 1c001bcc <myprintf>
1c006aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006aa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006aa8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006aac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006ab0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006ab4:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c006a1c <spi_flash+0x90>
1c006ab8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006abc:	028a4084 	addi.w	$r4,$r4,656(0x290)
1c006ac0:	57b10fff 	bl	-20212(0xfffb10c) # 1c001bcc <myprintf>
1c006ac4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ac8:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c006acc:	57b103ff 	bl	-20224(0xfffb100) # 1c001bcc <myprintf>
1c006ad0:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006ad4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006ad8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006adc:	5000d400 	b	212(0xd4) # 1c006bb0 <spi_flash+0x224>
1c006ae0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ae4:	0040a18c 	slli.w	$r12,$r12,0x8
1c006ae8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006aec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006af0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006af4:	001031ac 	add.w	$r12,$r13,$r12
1c006af8:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006afc:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006b00:	00150184 	move	$r4,$r12
1c006b04:	57ae23ff 	bl	-20960(0xfffae20) # 1c001924 <Spiflash_Read_Bytes>
1c006b08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006b0c:	50008000 	b	128(0x80) # 1c006b8c <spi_flash+0x200>
1c006b10:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b18:	001031ac 	add.w	$r12,$r13,$r12
1c006b1c:	2a00018d 	ld.bu	$r13,$r12,0
1c006b20:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b28:	001031ce 	add.w	$r14,$r14,$r12
1c006b2c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006b30:	001031cc 	add.w	$r12,$r14,$r12
1c006b34:	2a00018c 	ld.bu	$r12,$r12,0
1c006b38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b3c:	580045ac 	beq	$r13,$r12,68(0x44) # 1c006b80 <spi_flash+0x1f4>
1c006b40:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b48:	001031ac 	add.w	$r12,$r13,$r12
1c006b4c:	2a00018c 	ld.bu	$r12,$r12,0
1c006b50:	0015018e 	move	$r14,$r12
1c006b54:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006b58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b5c:	001031ad 	add.w	$r13,$r13,$r12
1c006b60:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006b64:	001031ac 	add.w	$r12,$r13,$r12
1c006b68:	00150186 	move	$r6,$r12
1c006b6c:	001501c5 	move	$r5,$r14
1c006b70:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b74:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c006b78:	57b057ff 	bl	-20396(0xfffb054) # 1c001bcc <myprintf>
1c006b7c:	50001c00 	b	28(0x1c) # 1c006b98 <spi_flash+0x20c>
1c006b80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006b90:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006b94:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c006b10 <spi_flash+0x184>
1c006b98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b9c:	02849084 	addi.w	$r4,$r4,292(0x124)
1c006ba0:	57b02fff 	bl	-20436(0xfffb02c) # 1c001bcc <myprintf>
1c006ba4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ba8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006bb0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006bb4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006bb8:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c006ae0 <spi_flash+0x154>
1c006bbc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006bc0:	0286c084 	addi.w	$r4,$r4,432(0x1b0)
1c006bc4:	57b00bff 	bl	-20472(0xfffb008) # 1c001bcc <myprintf>
1c006bc8:	0015000c 	move	$r12,$r0
1c006bcc:	00150184 	move	$r4,$r12
1c006bd0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006bd4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006bd8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006bdc:	4c000020 	jirl	$r0,$r1,0

1c006be0 <gpio_int_test>:
gpio_int_test():
1c006be0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006be4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006be8:	29806076 	st.w	$r22,$r3,24(0x18)
1c006bec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006bf0:	00150006 	move	$r6,$r0
1c006bf4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006bfc:	03804184 	ori	$r4,$r12,0x10
1c006c00:	57a72fff 	bl	-22740(0xfffa72c) # 1c00132c <AFIO_RemapConfig>
1c006c04:	00150006 	move	$r6,$r0
1c006c08:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006c0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006c10:	03806184 	ori	$r4,$r12,0x18
1c006c14:	57a71bff 	bl	-22760(0xfffa718) # 1c00132c <AFIO_RemapConfig>
1c006c18:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006c1c:	00150184 	move	$r4,$r12
1c006c20:	57c517ff 	bl	-15084(0xfffc514) # 1c003134 <EXTI_StructInit>
1c006c24:	1400100c 	lu12i.w	$r12,128(0x80)
1c006c28:	0380098c 	ori	$r12,$r12,0x2
1c006c2c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006c30:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c34:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006c38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006c40:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c48:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006c4c:	00150185 	move	$r5,$r12
1c006c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006c54:	03808184 	ori	$r4,$r12,0x20
1c006c58:	57c34fff 	bl	-15540(0xfffc34c) # 1c002fa4 <EXTI_Init>
1c006c5c:	03400000 	andi	$r0,$r0,0x0
1c006c60:	00150184 	move	$r4,$r12
1c006c64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006c68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006c6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006c70:	4c000020 	jirl	$r0,$r1,0

1c006c74 <gpio_int>:
gpio_int():
1c006c74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006c78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006c7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006c80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006c84:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006c88:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006c8c:	57ff57ff 	bl	-172(0xfffff54) # 1c006be0 <gpio_int_test>
1c006c90:	0015000c 	move	$r12,$r0
1c006c94:	00150184 	move	$r4,$r12
1c006c98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006c9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006ca0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ca4:	4c000020 	jirl	$r0,$r1,0

1c006ca8 <tmp>:
tmp():
1c006ca8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006cac:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006cb0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006cb4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006cb8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006cbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006cc0:	0015000c 	move	$r12,$r0
1c006cc4:	00150184 	move	$r4,$r12
1c006cc8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006ccc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006cd0:	4c000020 	jirl	$r0,$r1,0

1c006cd4 <copy_iram>:
copy_iram():
1c006cd4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006cd8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006cdc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006ce0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006ce4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006ce8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006cec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006cf0:	02824084 	addi.w	$r4,$r4,144(0x90)
1c006cf4:	57aedbff 	bl	-20776(0xfffaed8) # 1c001bcc <myprintf>
1c006cf8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006cfc:	50002000 	b	32(0x20) # 1c006d1c <copy_iram+0x48>
1c006d00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d04:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006d08:	001031ac 	add.w	$r12,$r13,$r12
1c006d0c:	29800180 	st.w	$r0,$r12,0
1c006d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d14:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006d18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006d1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d20:	1400004c 	lu12i.w	$r12,2(0x2)
1c006d24:	6bffddac 	bltu	$r13,$r12,-36(0x3ffdc) # 1c006d00 <copy_iram+0x2c>
1c006d28:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006d2c:	50003800 	b	56(0x38) # 1c006d64 <copy_iram+0x90>
1c006d30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d34:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006d38:	001031ac 	add.w	$r12,$r13,$r12
1c006d3c:	0015018e 	move	$r14,$r12
1c006d40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d44:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006d48:	001031ac 	add.w	$r12,$r13,$r12
1c006d4c:	0015018d 	move	$r13,$r12
1c006d50:	288001cc 	ld.w	$r12,$r14,0
1c006d54:	298001ac 	st.w	$r12,$r13,0
1c006d58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d5c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006d60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006d64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d68:	1400004c 	lu12i.w	$r12,2(0x2)
1c006d6c:	6bffc5ac 	bltu	$r13,$r12,-60(0x3ffc4) # 1c006d30 <copy_iram+0x5c>
1c006d70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006d74:	50006c00 	b	108(0x6c) # 1c006de0 <copy_iram+0x10c>
1c006d78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006d7c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006d80:	001031ac 	add.w	$r12,$r13,$r12
1c006d84:	2880018d 	ld.w	$r13,$r12,0
1c006d88:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006d8c:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006d90:	001031cc 	add.w	$r12,$r14,$r12
1c006d94:	2880018c 	ld.w	$r12,$r12,0
1c006d98:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c006dd4 <copy_iram+0x100>
1c006d9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006da0:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006da4:	001031ac 	add.w	$r12,$r13,$r12
1c006da8:	2880018e 	ld.w	$r14,$r12,0
1c006dac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006db0:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006db4:	001031ac 	add.w	$r12,$r13,$r12
1c006db8:	2880018c 	ld.w	$r12,$r12,0
1c006dbc:	00150187 	move	$r7,$r12
1c006dc0:	001501c6 	move	$r6,$r14
1c006dc4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c006dc8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006dcc:	02bf2084 	addi.w	$r4,$r4,-56(0xfc8)
1c006dd0:	57adffff 	bl	-20996(0xfffadfc) # 1c001bcc <myprintf>
1c006dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006dd8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006ddc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006de0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006de4:	1400004c 	lu12i.w	$r12,2(0x2)
1c006de8:	6bff91ac 	bltu	$r13,$r12,-112(0x3ff90) # 1c006d78 <copy_iram+0xa4>
1c006dec:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006df0:	4c000180 	jirl	$r0,$r12,0
1c006df4:	0015000c 	move	$r12,$r0
1c006df8:	00150184 	move	$r4,$r12
1c006dfc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006e00:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006e04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006e08:	4c000020 	jirl	$r0,$r1,0

1c006e0c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c006e0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e10:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e14:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006e20:	028580c6 	addi.w	$r6,$r6,352(0x160)
1c006e24:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c006e28:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006e2c:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
1c006e30:	57ad9fff 	bl	-21092(0xfffad9c) # 1c001bcc <myprintf>
1c006e34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006e3c:	03808184 	ori	$r4,$r12,0x20
1c006e40:	57c33fff 	bl	-15556(0xfffc33c) # 1c00317c <EXTI_ClearITPendingBit>
1c006e44:	03400000 	andi	$r0,$r0,0x0
1c006e48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006e4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006e50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006e54:	4c000020 	jirl	$r0,$r1,0

1c006e58 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c006e58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e60:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006e6c:	0284b0c6 	addi.w	$r6,$r6,300(0x12c)
1c006e70:	02806005 	addi.w	$r5,$r0,24(0x18)
1c006e74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006e78:	02bcd084 	addi.w	$r4,$r4,-204(0xf34)
1c006e7c:	57ad53ff 	bl	-21168(0xfffad50) # 1c001bcc <myprintf>
1c006e80:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006e88:	03808184 	ori	$r4,$r12,0x20
1c006e8c:	57c2f3ff 	bl	-15632(0xfffc2f0) # 1c00317c <EXTI_ClearITPendingBit>
1c006e90:	03400000 	andi	$r0,$r0,0x0
1c006e94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006e98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006e9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ea0:	4c000020 	jirl	$r0,$r1,0

1c006ea4 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c006ea4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ea8:	29803061 	st.w	$r1,$r3,12(0xc)
1c006eac:	29802076 	st.w	$r22,$r3,8(0x8)
1c006eb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006eb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006eb8:	0283e0c6 	addi.w	$r6,$r6,248(0xf8)
1c006ebc:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c006ec0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ec4:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c006ec8:	57ad07ff 	bl	-21244(0xfffad04) # 1c001bcc <myprintf>
1c006ecc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006ed4:	03808184 	ori	$r4,$r12,0x20
1c006ed8:	57c2a7ff 	bl	-15708(0xfffc2a4) # 1c00317c <EXTI_ClearITPendingBit>
1c006edc:	03400000 	andi	$r0,$r0,0x0
1c006ee0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ee4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ee8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006eec:	4c000020 	jirl	$r0,$r1,0

1c006ef0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c006ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ef8:	29802076 	st.w	$r22,$r3,8(0x8)
1c006efc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f04:	028310c6 	addi.w	$r6,$r6,196(0xc4)
1c006f08:	02808805 	addi.w	$r5,$r0,34(0x22)
1c006f0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f10:	02ba7084 	addi.w	$r4,$r4,-356(0xe9c)
1c006f14:	57acbbff 	bl	-21320(0xfffacb8) # 1c001bcc <myprintf>
1c006f18:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f20:	03808184 	ori	$r4,$r12,0x20
1c006f24:	57c25bff 	bl	-15784(0xfffc258) # 1c00317c <EXTI_ClearITPendingBit>
1c006f28:	03400000 	andi	$r0,$r0,0x0
1c006f2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f38:	4c000020 	jirl	$r0,$r1,0

1c006f3c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c006f3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f40:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f44:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f50:	028240c6 	addi.w	$r6,$r6,144(0x90)
1c006f54:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c006f58:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f5c:	02b94084 	addi.w	$r4,$r4,-432(0xe50)
1c006f60:	57ac6fff 	bl	-21396(0xfffac6c) # 1c001bcc <myprintf>
1c006f64:	02804005 	addi.w	$r5,$r0,16(0x10)
1c006f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f6c:	03808184 	ori	$r4,$r12,0x20
1c006f70:	57c20fff 	bl	-15860(0xfffc20c) # 1c00317c <EXTI_ClearITPendingBit>
1c006f74:	03400000 	andi	$r0,$r0,0x0
1c006f78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f84:	4c000020 	jirl	$r0,$r1,0

1c006f88 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c006f88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f90:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f9c:	028170c6 	addi.w	$r6,$r6,92(0x5c)
1c006fa0:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c006fa4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006fa8:	02b81084 	addi.w	$r4,$r4,-508(0xe04)
1c006fac:	57ac23ff 	bl	-21472(0xfffac20) # 1c001bcc <myprintf>
1c006fb0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c006fb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006fb8:	03808184 	ori	$r4,$r12,0x20
1c006fbc:	57c1c3ff 	bl	-15936(0xfffc1c0) # 1c00317c <EXTI_ClearITPendingBit>
1c006fc0:	03400000 	andi	$r0,$r0,0x0
1c006fc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006fc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006fcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006fd0:	4c000020 	jirl	$r0,$r1,0

1c006fd4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c006fd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006fd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c006fdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c006fe0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006fe4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006fe8:	0280a0c6 	addi.w	$r6,$r6,40(0x28)
1c006fec:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c006ff0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ff4:	02b6e084 	addi.w	$r4,$r4,-584(0xdb8)
1c006ff8:	57abd7ff 	bl	-21548(0xfffabd4) # 1c001bcc <myprintf>
1c006ffc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c007000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007004:	03808184 	ori	$r4,$r12,0x20
1c007008:	57c177ff 	bl	-16012(0xfffc174) # 1c00317c <EXTI_ClearITPendingBit>
1c00700c:	03400000 	andi	$r0,$r0,0x0
1c007010:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007014:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007018:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00701c:	4c000020 	jirl	$r0,$r1,0

1c007020 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c007020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007024:	29803061 	st.w	$r1,$r3,12(0xc)
1c007028:	29802076 	st.w	$r22,$r3,8(0x8)
1c00702c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007030:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007034:	02bfd0c6 	addi.w	$r6,$r6,-12(0xff4)
1c007038:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c00703c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007040:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c007044:	57ab8bff 	bl	-21624(0xfffab88) # 1c001bcc <myprintf>
1c007048:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00704c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007050:	03808184 	ori	$r4,$r12,0x20
1c007054:	57c12bff 	bl	-16088(0xfffc128) # 1c00317c <EXTI_ClearITPendingBit>
1c007058:	03400000 	andi	$r0,$r0,0x0
1c00705c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007060:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007068:	4c000020 	jirl	$r0,$r1,0

1c00706c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00706c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007070:	29803061 	st.w	$r1,$r3,12(0xc)
1c007074:	29802076 	st.w	$r22,$r3,8(0x8)
1c007078:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00707c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007080:	02bf00c6 	addi.w	$r6,$r6,-64(0xfc0)
1c007084:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c007088:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00708c:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c007090:	57ab3fff 	bl	-21700(0xfffab3c) # 1c001bcc <myprintf>
1c007094:	02840005 	addi.w	$r5,$r0,256(0x100)
1c007098:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00709c:	03808184 	ori	$r4,$r12,0x20
1c0070a0:	57c0dfff 	bl	-16164(0xfffc0dc) # 1c00317c <EXTI_ClearITPendingBit>
1c0070a4:	03400000 	andi	$r0,$r0,0x0
1c0070a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0070ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0070b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0070b4:	4c000020 	jirl	$r0,$r1,0

1c0070b8 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0070b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0070bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0070c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0070c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0070c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0070cc:	02be30c6 	addi.w	$r6,$r6,-116(0xf8c)
1c0070d0:	02810805 	addi.w	$r5,$r0,66(0x42)
1c0070d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0070d8:	02b35084 	addi.w	$r4,$r4,-812(0xcd4)
1c0070dc:	57aaf3ff 	bl	-21776(0xfffaaf0) # 1c001bcc <myprintf>
1c0070e0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0070e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0070e8:	03808184 	ori	$r4,$r12,0x20
1c0070ec:	57c093ff 	bl	-16240(0xfffc090) # 1c00317c <EXTI_ClearITPendingBit>
1c0070f0:	03400000 	andi	$r0,$r0,0x0
1c0070f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0070f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0070fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007100:	4c000020 	jirl	$r0,$r1,0

1c007104 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c007104:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007108:	29803061 	st.w	$r1,$r3,12(0xc)
1c00710c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007114:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007118:	02bd60c6 	addi.w	$r6,$r6,-168(0xf58)
1c00711c:	02812005 	addi.w	$r5,$r0,72(0x48)
1c007120:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007124:	02b22084 	addi.w	$r4,$r4,-888(0xc88)
1c007128:	57aaa7ff 	bl	-21852(0xfffaaa4) # 1c001bcc <myprintf>
1c00712c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c007130:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007134:	03808184 	ori	$r4,$r12,0x20
1c007138:	57c047ff 	bl	-16316(0xfffc044) # 1c00317c <EXTI_ClearITPendingBit>
1c00713c:	03400000 	andi	$r0,$r0,0x0
1c007140:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007144:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00714c:	4c000020 	jirl	$r0,$r1,0

1c007150 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c007150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007154:	29803061 	st.w	$r1,$r3,12(0xc)
1c007158:	29802076 	st.w	$r22,$r3,8(0x8)
1c00715c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007160:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007164:	02bc90c6 	addi.w	$r6,$r6,-220(0xf24)
1c007168:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c00716c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007170:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c007174:	57aa5bff 	bl	-21928(0xfffaa58) # 1c001bcc <myprintf>
1c007178:	03a00005 	ori	$r5,$r0,0x800
1c00717c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007180:	03808184 	ori	$r4,$r12,0x20
1c007184:	57bffbff 	bl	-16392(0xfffbff8) # 1c00317c <EXTI_ClearITPendingBit>
1c007188:	03400000 	andi	$r0,$r0,0x0
1c00718c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007190:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007194:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007198:	4c000020 	jirl	$r0,$r1,0

1c00719c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00719c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0071a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0071a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0071a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0071ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0071b0:	02bbc0c6 	addi.w	$r6,$r6,-272(0xef0)
1c0071b4:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0071b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0071bc:	02afc084 	addi.w	$r4,$r4,-1040(0xbf0)
1c0071c0:	57aa0fff 	bl	-22004(0xfffaa0c) # 1c001bcc <myprintf>
1c0071c4:	14000025 	lu12i.w	$r5,1(0x1)
1c0071c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0071cc:	03808184 	ori	$r4,$r12,0x20
1c0071d0:	57bfafff 	bl	-16468(0xfffbfac) # 1c00317c <EXTI_ClearITPendingBit>
1c0071d4:	03400000 	andi	$r0,$r0,0x0
1c0071d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0071dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0071e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0071e4:	4c000020 	jirl	$r0,$r1,0

1c0071e8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0071e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0071ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0071f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0071f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0071f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0071fc:	02baf0c6 	addi.w	$r6,$r6,-324(0xebc)
1c007200:	02816005 	addi.w	$r5,$r0,88(0x58)
1c007204:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007208:	02ae9084 	addi.w	$r4,$r4,-1116(0xba4)
1c00720c:	57a9c3ff 	bl	-22080(0xfffa9c0) # 1c001bcc <myprintf>
1c007210:	14000045 	lu12i.w	$r5,2(0x2)
1c007214:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007218:	03808184 	ori	$r4,$r12,0x20
1c00721c:	57bf63ff 	bl	-16544(0xfffbf60) # 1c00317c <EXTI_ClearITPendingBit>
1c007220:	03400000 	andi	$r0,$r0,0x0
1c007224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00722c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007230:	4c000020 	jirl	$r0,$r1,0

1c007234 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c007234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00723c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007244:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007248:	02ba20c6 	addi.w	$r6,$r6,-376(0xe88)
1c00724c:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c007250:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007254:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c007258:	57a977ff 	bl	-22156(0xfffa974) # 1c001bcc <myprintf>
1c00725c:	14000085 	lu12i.w	$r5,4(0x4)
1c007260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007264:	03808184 	ori	$r4,$r12,0x20
1c007268:	57bf17ff 	bl	-16620(0xfffbf14) # 1c00317c <EXTI_ClearITPendingBit>
1c00726c:	03400000 	andi	$r0,$r0,0x0
1c007270:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007274:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007278:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00727c:	4c000020 	jirl	$r0,$r1,0

1c007280 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c007280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007284:	29803061 	st.w	$r1,$r3,12(0xc)
1c007288:	29802076 	st.w	$r22,$r3,8(0x8)
1c00728c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007290:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007294:	02b950c6 	addi.w	$r6,$r6,-428(0xe54)
1c007298:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00729c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0072a0:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c0072a4:	57a92bff 	bl	-22232(0xfffa928) # 1c001bcc <myprintf>
1c0072a8:	14000105 	lu12i.w	$r5,8(0x8)
1c0072ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0072b0:	03808184 	ori	$r4,$r12,0x20
1c0072b4:	57becbff 	bl	-16696(0xfffbec8) # 1c00317c <EXTI_ClearITPendingBit>
1c0072b8:	03400000 	andi	$r0,$r0,0x0
1c0072bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0072c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0072c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0072c8:	4c000020 	jirl	$r0,$r1,0

1c0072cc <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0072cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0072d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0072d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0072d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0072dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0072e0:	02b880c6 	addi.w	$r6,$r6,-480(0xe20)
1c0072e4:	0281ac05 	addi.w	$r5,$r0,107(0x6b)
1c0072e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0072ec:	02ab0084 	addi.w	$r4,$r4,-1344(0xac0)
1c0072f0:	57a8dfff 	bl	-22308(0xfffa8dc) # 1c001bcc <myprintf>
1c0072f4:	14000205 	lu12i.w	$r5,16(0x10)
1c0072f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0072fc:	03808184 	ori	$r4,$r12,0x20
1c007300:	57be7fff 	bl	-16772(0xfffbe7c) # 1c00317c <EXTI_ClearITPendingBit>
1c007304:	03400000 	andi	$r0,$r0,0x0
1c007308:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00730c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007310:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007314:	4c000020 	jirl	$r0,$r1,0

1c007318 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c007318:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00731c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007320:	29802076 	st.w	$r22,$r3,8(0x8)
1c007324:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007328:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00732c:	02b7b0c6 	addi.w	$r6,$r6,-532(0xdec)
1c007330:	0281c405 	addi.w	$r5,$r0,113(0x71)
1c007334:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007338:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c00733c:	57a893ff 	bl	-22384(0xfffa890) # 1c001bcc <myprintf>
1c007340:	14000405 	lu12i.w	$r5,32(0x20)
1c007344:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007348:	03808184 	ori	$r4,$r12,0x20
1c00734c:	57be33ff 	bl	-16848(0xfffbe30) # 1c00317c <EXTI_ClearITPendingBit>
1c007350:	03400000 	andi	$r0,$r0,0x0
1c007354:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007358:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00735c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007360:	4c000020 	jirl	$r0,$r1,0

1c007364 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c007364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00736c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007374:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007378:	02b6e0c6 	addi.w	$r6,$r6,-584(0xdb8)
1c00737c:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c007380:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007384:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c007388:	57a847ff 	bl	-22460(0xfffa844) # 1c001bcc <myprintf>
1c00738c:	14000805 	lu12i.w	$r5,64(0x40)
1c007390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007394:	03808184 	ori	$r4,$r12,0x20
1c007398:	57bde7ff 	bl	-16924(0xfffbde4) # 1c00317c <EXTI_ClearITPendingBit>
1c00739c:	03400000 	andi	$r0,$r0,0x0
1c0073a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0073a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0073a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073ac:	4c000020 	jirl	$r0,$r1,0

1c0073b0 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0073b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0073b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0073b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0073c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0073c4:	02b610c6 	addi.w	$r6,$r6,-636(0xd84)
1c0073c8:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c0073cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0073d0:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c0073d4:	57a7fbff 	bl	-22536(0xfffa7f8) # 1c001bcc <myprintf>
1c0073d8:	14001005 	lu12i.w	$r5,128(0x80)
1c0073dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0073e0:	03808184 	ori	$r4,$r12,0x20
1c0073e4:	57bd9bff 	bl	-17000(0xfffbd98) # 1c00317c <EXTI_ClearITPendingBit>
1c0073e8:	03400000 	andi	$r0,$r0,0x0
1c0073ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0073f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0073f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073f8:	4c000020 	jirl	$r0,$r1,0

1c0073fc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0073fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007400:	29803061 	st.w	$r1,$r3,12(0xc)
1c007404:	29802076 	st.w	$r22,$r3,8(0x8)
1c007408:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00740c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007410:	02b540c6 	addi.w	$r6,$r6,-688(0xd50)
1c007414:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c007418:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00741c:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c007420:	57a7afff 	bl	-22612(0xfffa7ac) # 1c001bcc <myprintf>
1c007424:	14002005 	lu12i.w	$r5,256(0x100)
1c007428:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00742c:	03808184 	ori	$r4,$r12,0x20
1c007430:	57bd4fff 	bl	-17076(0xfffbd4c) # 1c00317c <EXTI_ClearITPendingBit>
1c007434:	03400000 	andi	$r0,$r0,0x0
1c007438:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00743c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007440:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007444:	4c000020 	jirl	$r0,$r1,0

1c007448 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c007448:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00744c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007450:	29802076 	st.w	$r22,$r3,8(0x8)
1c007454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007458:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00745c:	02b470c6 	addi.w	$r6,$r6,-740(0xd1c)
1c007460:	02822005 	addi.w	$r5,$r0,136(0x88)
1c007464:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007468:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c00746c:	57a763ff 	bl	-22688(0xfffa760) # 1c001bcc <myprintf>
1c007470:	14004005 	lu12i.w	$r5,512(0x200)
1c007474:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007478:	03808184 	ori	$r4,$r12,0x20
1c00747c:	57bd03ff 	bl	-17152(0xfffbd00) # 1c00317c <EXTI_ClearITPendingBit>
1c007480:	03400000 	andi	$r0,$r0,0x0
1c007484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00748c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007490:	4c000020 	jirl	$r0,$r1,0

1c007494 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c007494:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007498:	29803061 	st.w	$r1,$r3,12(0xc)
1c00749c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0074a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0074a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0074a8:	02b3a0c6 	addi.w	$r6,$r6,-792(0xce8)
1c0074ac:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0074b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0074b4:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c0074b8:	57a717ff 	bl	-22764(0xfffa714) # 1c001bcc <myprintf>
1c0074bc:	14008005 	lu12i.w	$r5,1024(0x400)
1c0074c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0074c4:	03808184 	ori	$r4,$r12,0x20
1c0074c8:	57bcb7ff 	bl	-17228(0xfffbcb4) # 1c00317c <EXTI_ClearITPendingBit>
1c0074cc:	03400000 	andi	$r0,$r0,0x0
1c0074d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0074d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0074d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0074dc:	4c000020 	jirl	$r0,$r1,0

1c0074e0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0074e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0074e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0074e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0074ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0074f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0074f4:	02b2d0c6 	addi.w	$r6,$r6,-844(0xcb4)
1c0074f8:	02824c05 	addi.w	$r5,$r0,147(0x93)
1c0074fc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007500:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c007504:	57a6cbff 	bl	-22840(0xfffa6c8) # 1c001bcc <myprintf>
1c007508:	14010005 	lu12i.w	$r5,2048(0x800)
1c00750c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007510:	03808184 	ori	$r4,$r12,0x20
1c007514:	57bc6bff 	bl	-17304(0xfffbc68) # 1c00317c <EXTI_ClearITPendingBit>
1c007518:	03400000 	andi	$r0,$r0,0x0
1c00751c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007520:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007524:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007528:	4c000020 	jirl	$r0,$r1,0

1c00752c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00752c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007530:	29803061 	st.w	$r1,$r3,12(0xc)
1c007534:	29802076 	st.w	$r22,$r3,8(0x8)
1c007538:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00753c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007540:	02b200c6 	addi.w	$r6,$r6,-896(0xc80)
1c007544:	02826405 	addi.w	$r5,$r0,153(0x99)
1c007548:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00754c:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c007550:	57a67fff 	bl	-22916(0xfffa67c) # 1c001bcc <myprintf>
1c007554:	14020005 	lu12i.w	$r5,4096(0x1000)
1c007558:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00755c:	03808184 	ori	$r4,$r12,0x20
1c007560:	57bc1fff 	bl	-17380(0xfffbc1c) # 1c00317c <EXTI_ClearITPendingBit>
1c007564:	03400000 	andi	$r0,$r0,0x0
1c007568:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00756c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007570:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007574:	4c000020 	jirl	$r0,$r1,0

1c007578 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c007578:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00757c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007580:	29802076 	st.w	$r22,$r3,8(0x8)
1c007584:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007588:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00758c:	02b130c6 	addi.w	$r6,$r6,-948(0xc4c)
1c007590:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c007594:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007598:	02a05084 	addi.w	$r4,$r4,-2028(0x814)
1c00759c:	57a633ff 	bl	-22992(0xfffa630) # 1c001bcc <myprintf>
1c0075a0:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0075a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0075a8:	03808184 	ori	$r4,$r12,0x20
1c0075ac:	57bbd3ff 	bl	-17456(0xfffbbd0) # 1c00317c <EXTI_ClearITPendingBit>
1c0075b0:	03400000 	andi	$r0,$r0,0x0
1c0075b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0075b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0075bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0075c0:	4c000020 	jirl	$r0,$r1,0

1c0075c4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0075c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0075c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0075cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0075d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0075d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0075d8:	02b060c6 	addi.w	$r6,$r6,-1000(0xc18)
1c0075dc:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0075e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0075e4:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c0075e8:	57a5e7ff 	bl	-23068(0xfffa5e4) # 1c001bcc <myprintf>
1c0075ec:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0075f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0075f4:	03808184 	ori	$r4,$r12,0x20
1c0075f8:	57bb87ff 	bl	-17532(0xfffbb84) # 1c00317c <EXTI_ClearITPendingBit>
1c0075fc:	03400000 	andi	$r0,$r0,0x0
1c007600:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007604:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007608:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00760c:	4c000020 	jirl	$r0,$r1,0

1c007610 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c007610:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007614:	29803061 	st.w	$r1,$r3,12(0xc)
1c007618:	29802076 	st.w	$r22,$r3,8(0x8)
1c00761c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007620:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007624:	02af90c6 	addi.w	$r6,$r6,-1052(0xbe4)
1c007628:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c00762c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007630:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c007634:	57a59bff 	bl	-23144(0xfffa598) # 1c001bcc <myprintf>
1c007638:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00763c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007640:	03808184 	ori	$r4,$r12,0x20
1c007644:	57bb3bff 	bl	-17608(0xfffbb38) # 1c00317c <EXTI_ClearITPendingBit>
1c007648:	03400000 	andi	$r0,$r0,0x0
1c00764c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007650:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007654:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007658:	4c000020 	jirl	$r0,$r1,0

1c00765c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00765c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007660:	29803061 	st.w	$r1,$r3,12(0xc)
1c007664:	29802076 	st.w	$r22,$r3,8(0x8)
1c007668:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00766c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007670:	02aec0c6 	addi.w	$r6,$r6,-1104(0xbb0)
1c007674:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c007678:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00767c:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c007680:	57a54fff 	bl	-23220(0xfffa54c) # 1c001bcc <myprintf>
1c007684:	14200005 	lu12i.w	$r5,65536(0x10000)
1c007688:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00768c:	03808184 	ori	$r4,$r12,0x20
1c007690:	57baefff 	bl	-17684(0xfffbaec) # 1c00317c <EXTI_ClearITPendingBit>
1c007694:	03400000 	andi	$r0,$r0,0x0
1c007698:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00769c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0076a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0076a4:	4c000020 	jirl	$r0,$r1,0

1c0076a8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0076a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0076ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0076b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0076b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0076b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0076bc:	02adf0c6 	addi.w	$r6,$r6,-1156(0xb7c)
1c0076c0:	0282e005 	addi.w	$r5,$r0,184(0xb8)
1c0076c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0076c8:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c0076cc:	57a503ff 	bl	-23296(0xfffa500) # 1c001bcc <myprintf>
1c0076d0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0076d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076d8:	03808184 	ori	$r4,$r12,0x20
1c0076dc:	57baa3ff 	bl	-17760(0xfffbaa0) # 1c00317c <EXTI_ClearITPendingBit>
1c0076e0:	03400000 	andi	$r0,$r0,0x0
1c0076e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0076e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0076ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0076f0:	4c000020 	jirl	$r0,$r1,0

1c0076f4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0076f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0076f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0076fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c007700:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007704:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007708:	02ad20c6 	addi.w	$r6,$r6,-1208(0xb48)
1c00770c:	0282f805 	addi.w	$r5,$r0,190(0xbe)
1c007710:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007714:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c007718:	57a4b7ff 	bl	-23372(0xfffa4b4) # 1c001bcc <myprintf>
1c00771c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c007720:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007724:	03808184 	ori	$r4,$r12,0x20
1c007728:	57ba57ff 	bl	-17836(0xfffba54) # 1c00317c <EXTI_ClearITPendingBit>
1c00772c:	03400000 	andi	$r0,$r0,0x0
1c007730:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007734:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007738:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00773c:	4c000020 	jirl	$r0,$r1,0

1c007740 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c007740:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007744:	29803061 	st.w	$r1,$r3,12(0xc)
1c007748:	29802076 	st.w	$r22,$r3,8(0x8)
1c00774c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007750:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007754:	02ac50c6 	addi.w	$r6,$r6,-1260(0xb14)
1c007758:	02831005 	addi.w	$r5,$r0,196(0xc4)
1c00775c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007760:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c007764:	57a46bff 	bl	-23448(0xfffa468) # 1c001bcc <myprintf>
1c007768:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00776c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007770:	03808184 	ori	$r4,$r12,0x20
1c007774:	57ba0bff 	bl	-17912(0xfffba08) # 1c00317c <EXTI_ClearITPendingBit>
1c007778:	03400000 	andi	$r0,$r0,0x0
1c00777c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007780:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007784:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007788:	4c000020 	jirl	$r0,$r1,0

1c00778c <ext_handler>:
ext_handler():
1c00778c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007790:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007794:	29806076 	st.w	$r22,$r3,24(0x18)
1c007798:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00779c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077a0:	0380f18c 	ori	$r12,$r12,0x3c
1c0077a4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0077a8:	2980018d 	st.w	$r13,$r12,0
1c0077ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077b0:	02ab40c6 	addi.w	$r6,$r6,-1328(0xad0)
1c0077b4:	0283c005 	addi.w	$r5,$r0,240(0xf0)
1c0077b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0077bc:	0297c084 	addi.w	$r4,$r4,1520(0x5f0)
1c0077c0:	57a40fff 	bl	-23540(0xfffa40c) # 1c001bcc <myprintf>
1c0077c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077c8:	0380818c 	ori	$r12,$r12,0x20
1c0077cc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0077d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0077d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077d8:	0380818c 	ori	$r12,$r12,0x20
1c0077dc:	2880018c 	ld.w	$r12,$r12,0
1c0077e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0077e4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0077e8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0077ec:	0014b1ac 	and	$r12,$r13,$r12
1c0077f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0077f4:	03400000 	andi	$r0,$r0,0x0
1c0077f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0077fc:	50004000 	b	64(0x40) # 1c00783c <ext_handler+0xb0>
1c007800:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c007804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007808:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00780c:	0340058c 	andi	$r12,$r12,0x1
1c007810:	40002180 	beqz	$r12,32(0x20) # 1c007830 <ext_handler+0xa4>
1c007814:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c007818:	029a91ad 	addi.w	$r13,$r13,1700(0x6a4)
1c00781c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007820:	0040898c 	slli.w	$r12,$r12,0x2
1c007824:	001031ac 	add.w	$r12,$r13,$r12
1c007828:	2880018c 	ld.w	$r12,$r12,0
1c00782c:	4c000181 	jirl	$r1,$r12,0
1c007830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007834:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007838:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00783c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007840:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c007844:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c007800 <ext_handler+0x74>
1c007848:	03400000 	andi	$r0,$r0,0x0
1c00784c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007850:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007854:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007858:	4c000020 	jirl	$r0,$r1,0

1c00785c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00785c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007860:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007864:	29806076 	st.w	$r22,$r3,24(0x18)
1c007868:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00786c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007870:	0380f18c 	ori	$r12,$r12,0x3c
1c007874:	1400020d 	lu12i.w	$r13,16(0x10)
1c007878:	2980018d 	st.w	$r13,$r12,0
1c00787c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007880:	0380118c 	ori	$r12,$r12,0x4
1c007884:	2880018c 	ld.w	$r12,$r12,0
1c007888:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00788c:	57b97bff 	bl	-18056(0xfffb978) # 1c003204 <WDG_DogFeed>
1c007890:	03400000 	andi	$r0,$r0,0x0
1c007894:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007898:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00789c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0078a0:	4c000020 	jirl	$r0,$r1,0

1c0078a4 <TOUCH>:
TOUCH():
1c0078a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0078a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0078ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0078b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0078b4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0078b8:	0380118c 	ori	$r12,$r12,0x4
1c0078bc:	2880018c 	ld.w	$r12,$r12,0
1c0078c0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0078c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0078c8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0078cc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0078d0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0078d4:	0380118c 	ori	$r12,$r12,0x4
1c0078d8:	2880018c 	ld.w	$r12,$r12,0
1c0078dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0078e0:	03403d8c 	andi	$r12,$r12,0xf
1c0078e4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0078e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078ec:	0380f18c 	ori	$r12,$r12,0x3c
1c0078f0:	1400040d 	lu12i.w	$r13,32(0x20)
1c0078f4:	2980018d 	st.w	$r13,$r12,0
1c0078f8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0078fc:	0380118c 	ori	$r12,$r12,0x4
1c007900:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007904:	2980018d 	st.w	$r13,$r12,0
1c007908:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00790c:	00150185 	move	$r5,$r12
1c007910:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007914:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c007918:	57a2b7ff 	bl	-23884(0xfffa2b4) # 1c001bcc <myprintf>
1c00791c:	03400000 	andi	$r0,$r0,0x0
1c007920:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007924:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007928:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00792c:	4c000020 	jirl	$r0,$r1,0

1c007930 <UART2_INT>:
UART2_INT():
1c007930:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007934:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007938:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00793c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007940:	0380f18c 	ori	$r12,$r12,0x3c
1c007944:	1400080d 	lu12i.w	$r13,64(0x40)
1c007948:	2980018d 	st.w	$r13,$r12,0
1c00794c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c007950:	0380098c 	ori	$r12,$r12,0x2
1c007954:	2a00018c 	ld.bu	$r12,$r12,0
1c007958:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00795c:	03400000 	andi	$r0,$r0,0x0
1c007960:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007964:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007968:	4c000020 	jirl	$r0,$r1,0

1c00796c <BAT_FAIL>:
BAT_FAIL():
1c00796c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007970:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007974:	29806076 	st.w	$r22,$r3,24(0x18)
1c007978:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00797c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007980:	0380118c 	ori	$r12,$r12,0x4
1c007984:	2880018c 	ld.w	$r12,$r12,0
1c007988:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00798c:	03407d8c 	andi	$r12,$r12,0x1f
1c007990:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007994:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007998:	0380118c 	ori	$r12,$r12,0x4
1c00799c:	2880018e 	ld.w	$r14,$r12,0
1c0079a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0079a4:	0380f18c 	ori	$r12,$r12,0x3c
1c0079a8:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c0079ac:	0014b5cd 	and	$r13,$r14,$r13
1c0079b0:	2980018d 	st.w	$r13,$r12,0
1c0079b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0079b8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0079bc:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c007a2c <BAT_FAIL+0xc0>
1c0079c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079c4:	0040898d 	slli.w	$r13,$r12,0x2
1c0079c8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0079cc:	0295c18c 	addi.w	$r12,$r12,1392(0x570)
1c0079d0:	001031ac 	add.w	$r12,$r13,$r12
1c0079d4:	2880018c 	ld.w	$r12,$r12,0
1c0079d8:	4c000180 	jirl	$r0,$r12,0
1c0079dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0079e0:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c0079e4:	57a1ebff 	bl	-24088(0xfffa1e8) # 1c001bcc <myprintf>
1c0079e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0079ec:	0380118c 	ori	$r12,$r12,0x4
1c0079f0:	29800180 	st.w	$r0,$r12,0
1c0079f4:	50003c00 	b	60(0x3c) # 1c007a30 <BAT_FAIL+0xc4>
1c0079f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0079fc:	02910084 	addi.w	$r4,$r4,1088(0x440)
1c007a00:	57a1cfff 	bl	-24116(0xfffa1cc) # 1c001bcc <myprintf>
1c007a04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a08:	0380118c 	ori	$r12,$r12,0x4
1c007a0c:	2880018e 	ld.w	$r14,$r12,0
1c007a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a14:	0380118c 	ori	$r12,$r12,0x4
1c007a18:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c007a1c:	03bffdad 	ori	$r13,$r13,0xfff
1c007a20:	0014b5cd 	and	$r13,$r14,$r13
1c007a24:	2980018d 	st.w	$r13,$r12,0
1c007a28:	50000800 	b	8(0x8) # 1c007a30 <BAT_FAIL+0xc4>
1c007a2c:	03400000 	andi	$r0,$r0,0x0
1c007a30:	03400000 	andi	$r0,$r0,0x0
1c007a34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007a38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007a3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007a40:	4c000020 	jirl	$r0,$r1,0

1c007a44 <intc_handler>:
intc_handler():
1c007a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007a48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007a4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007a54:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007a58:	0380158c 	ori	$r12,$r12,0x5
1c007a5c:	2a00018c 	ld.bu	$r12,$r12,0
1c007a60:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007a64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007a68:	0340058c 	andi	$r12,$r12,0x1
1c007a6c:	40002980 	beqz	$r12,40(0x28) # 1c007a94 <intc_handler+0x50>
1c007a70:	02840004 	addi.w	$r4,$r0,256(0x100)
1c007a74:	57c807ff 	bl	-14332(0xfffc804) # 1c004278 <TIM_GetITStatus>
1c007a78:	0015008c 	move	$r12,$r4
1c007a7c:	40001980 	beqz	$r12,24(0x18) # 1c007a94 <intc_handler+0x50>
1c007a80:	02840004 	addi.w	$r4,$r0,256(0x100)
1c007a84:	57c843ff 	bl	-14272(0xfffc840) # 1c0042c4 <TIM_ClearIT>
1c007a88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007a8c:	028f5084 	addi.w	$r4,$r4,980(0x3d4)
1c007a90:	57a13fff 	bl	-24260(0xfffa13c) # 1c001bcc <myprintf>
1c007a94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007a98:	0340118c 	andi	$r12,$r12,0x4
1c007a9c:	40003580 	beqz	$r12,52(0x34) # 1c007ad0 <intc_handler+0x8c>
1c007aa0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007aa4:	2a00018c 	ld.bu	$r12,$r12,0
1c007aa8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007aac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007ab0:	00150185 	move	$r5,$r12
1c007ab4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007ab8:	028f4084 	addi.w	$r4,$r4,976(0x3d0)
1c007abc:	57a113ff 	bl	-24304(0xfffa110) # 1c001bcc <myprintf>
1c007ac0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007ac4:	03800d8c 	ori	$r12,$r12,0x3
1c007ac8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007acc:	2900018d 	st.b	$r13,$r12,0
1c007ad0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007ad4:	0340218c 	andi	$r12,$r12,0x8
1c007ad8:	40002d80 	beqz	$r12,44(0x2c) # 1c007b04 <intc_handler+0xc0>
1c007adc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c007ae0:	2a00018c 	ld.bu	$r12,$r12,0
1c007ae4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c007ae8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c007aec:	00150184 	move	$r4,$r12
1c007af0:	57c833ff 	bl	-14288(0xfffc830) # 1c004320 <recv_dat_int>
1c007af4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007af8:	03800d8c 	ori	$r12,$r12,0x3
1c007afc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007b00:	2900018d 	st.b	$r13,$r12,0
1c007b04:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007b08:	03800d8c 	ori	$r12,$r12,0x3
1c007b0c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c007b10:	2900018d 	st.b	$r13,$r12,0
1c007b14:	03400000 	andi	$r0,$r0,0x0
1c007b18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007b1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007b20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007b24:	4c000020 	jirl	$r0,$r1,0

1c007b28 <TIMER_HANDLER>:
TIMER_HANDLER():
1c007b28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007b2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007b30:	29802076 	st.w	$r22,$r3,8(0x8)
1c007b34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007b38:	57a59fff 	bl	-23140(0xfffa59c) # 1c0020d4 <Set_Timer_clear>
1c007b3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007b40:	028d7084 	addi.w	$r4,$r4,860(0x35c)
1c007b44:	57a08bff 	bl	-24440(0xfffa088) # 1c001bcc <myprintf>
1c007b48:	57a56fff 	bl	-23188(0xfffa56c) # 1c0020b4 <Set_Timer_stop>
1c007b4c:	03400000 	andi	$r0,$r0,0x0
1c007b50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007b54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007b58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007b5c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007b60 <msg_wakeup>:
msg_wakeup():
1c007b60:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01e6c0 <_sidata+0x15438>
1c007b64:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007b69 <hexdecarr>:
hexdecarr():
1c007b69:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c007b6d:	37363534 	0x37363534
1c007b71:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfedca9 <_start-0x12357>
1c007b75:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfee0d9 <_start-0x11f27>
1c007b79:	ec000000 	0xec000000
1c007b7d:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007b81:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b85:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b89:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b8d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b91:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b95:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b99:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b9d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ba1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ba5:	041c001f 	csrrd	$r31,0x700
1c007ba9:	8c1c001e 	0x8c1c001e
1c007bad:	8c1c001e 	0x8c1c001e
1c007bb1:	8c1c001e 	0x8c1c001e
1c007bb5:	8c1c001e 	0x8c1c001e
1c007bb9:	8c1c001e 	0x8c1c001e
1c007bbd:	8c1c001e 	0x8c1c001e
1c007bc1:	8c1c001e 	0x8c1c001e
1c007bc5:	8c1c001e 	0x8c1c001e
1c007bc9:	8c1c001e 	0x8c1c001e
1c007bcd:	081c001e 	fmadd.s	$f30,$f0,$f0,$f24
1c007bd1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bd5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bd9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bdd:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007be1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007be5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007be9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bed:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bf1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bf5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bf9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bfd:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c01:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c05:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c09:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c0d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c11:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c15:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c19:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c1d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c21:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c25:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c29:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c2d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c31:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c35:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c39:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c3d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c41:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c45:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c49:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c4d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c51:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c55:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c59:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c5d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c61:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c65:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c69:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c6d:	7c1c001f 	0x7c1c001f
1c007c71:	a41c001d 	0xa41c001d
1c007c75:	0c1c001c 	0x0c1c001c
1c007c79:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007c7d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c81:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c85:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c89:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c8d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c91:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c95:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c99:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c9d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ca1:	441c001f 	bnez	$r0,-254976(0x7c1c00) # 1bfc98a1 <_start-0x3675f>
1c007ca5:	b41c001d 	0xb41c001d
1c007ca9:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007cad:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007cb1:	781c001f 	0x781c001f
1c007cb5:	081c001c 	fmadd.s	$f28,$f0,$f0,$f24
1c007cb9:	d41c001f 	0xd41c001f
1c007cbd:	081c001c 	fmadd.s	$f28,$f0,$f0,$f24
1c007cc1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007cc5:	b41c001f 	0xb41c001f
1c007cc9:	201c001d 	ll.w	$r29,$r0,7168(0x1c00)
1c007ccd:	3c1c0026 	0x3c1c0026
1c007cd1:	3c1c0027 	0x3c1c0027
1c007cd5:	3c1c0027 	0x3c1c0027
1c007cd9:	3c1c0027 	0x3c1c0027
1c007cdd:	3c1c0027 	0x3c1c0027
1c007ce1:	3c1c0027 	0x3c1c0027
1c007ce5:	3c1c0027 	0x3c1c0027
1c007ce9:	3c1c0027 	0x3c1c0027
1c007ced:	3c1c0027 	0x3c1c0027
1c007cf1:	3c1c0027 	0x3c1c0027
1c007cf5:	381c0027 	stx.d	$r7,$r1,$r0
1c007cf9:	c01c0026 	0xc01c0026
1c007cfd:	c01c0026 	0xc01c0026
1c007d01:	c01c0026 	0xc01c0026
1c007d05:	c01c0026 	0xc01c0026
1c007d09:	c01c0026 	0xc01c0026
1c007d0d:	c01c0026 	0xc01c0026
1c007d11:	c01c0026 	0xc01c0026
1c007d15:	c01c0026 	0xc01c0026
1c007d19:	c01c0026 	0xc01c0026
1c007d1d:	3c1c0026 	0x3c1c0026
1c007d21:	3c1c0027 	0x3c1c0027
1c007d25:	3c1c0027 	0x3c1c0027
1c007d29:	3c1c0027 	0x3c1c0027
1c007d2d:	3c1c0027 	0x3c1c0027
1c007d31:	3c1c0027 	0x3c1c0027
1c007d35:	3c1c0027 	0x3c1c0027
1c007d39:	3c1c0027 	0x3c1c0027
1c007d3d:	3c1c0027 	0x3c1c0027
1c007d41:	3c1c0027 	0x3c1c0027
1c007d45:	3c1c0027 	0x3c1c0027
1c007d49:	3c1c0027 	0x3c1c0027
1c007d4d:	3c1c0027 	0x3c1c0027
1c007d51:	3c1c0027 	0x3c1c0027
1c007d55:	3c1c0027 	0x3c1c0027
1c007d59:	3c1c0027 	0x3c1c0027
1c007d5d:	3c1c0027 	0x3c1c0027
1c007d61:	3c1c0027 	0x3c1c0027
1c007d65:	3c1c0027 	0x3c1c0027
1c007d69:	3c1c0027 	0x3c1c0027
1c007d6d:	3c1c0027 	0x3c1c0027
1c007d71:	3c1c0027 	0x3c1c0027
1c007d75:	3c1c0027 	0x3c1c0027
1c007d79:	3c1c0027 	0x3c1c0027
1c007d7d:	3c1c0027 	0x3c1c0027
1c007d81:	3c1c0027 	0x3c1c0027
1c007d85:	3c1c0027 	0x3c1c0027
1c007d89:	3c1c0027 	0x3c1c0027
1c007d8d:	3c1c0027 	0x3c1c0027
1c007d91:	3c1c0027 	0x3c1c0027
1c007d95:	3c1c0027 	0x3c1c0027
1c007d99:	3c1c0027 	0x3c1c0027
1c007d9d:	3c1c0027 	0x3c1c0027
1c007da1:	3c1c0027 	0x3c1c0027
1c007da5:	3c1c0027 	0x3c1c0027
1c007da9:	3c1c0027 	0x3c1c0027
1c007dad:	3c1c0027 	0x3c1c0027
1c007db1:	3c1c0027 	0x3c1c0027
1c007db5:	3c1c0027 	0x3c1c0027
1c007db9:	3c1c0027 	0x3c1c0027
1c007dbd:	b01c0027 	0xb01c0027
1c007dc1:	d81c0025 	0xd81c0025
1c007dc5:	401c0024 	beqz	$r1,1055744(0x101c00) # 1c1099c5 <_sidata+0x10073d>
1c007dc9:	3c1c0025 	0x3c1c0025
1c007dcd:	3c1c0027 	0x3c1c0027
1c007dd1:	3c1c0027 	0x3c1c0027
1c007dd5:	3c1c0027 	0x3c1c0027
1c007dd9:	3c1c0027 	0x3c1c0027
1c007ddd:	3c1c0027 	0x3c1c0027
1c007de1:	3c1c0027 	0x3c1c0027
1c007de5:	3c1c0027 	0x3c1c0027
1c007de9:	3c1c0027 	0x3c1c0027
1c007ded:	3c1c0027 	0x3c1c0027
1c007df1:	781c0027 	0x781c0027
1c007df5:	e81c0025 	0xe81c0025
1c007df9:	3c1c0025 	0x3c1c0025
1c007dfd:	3c1c0027 	0x3c1c0027
1c007e01:	ac1c0027 	0xac1c0027
1c007e05:	3c1c0024 	0x3c1c0024
1c007e09:	081c0027 	fmadd.s	$f7,$f1,$f0,$f24
1c007e0d:	3c1c0025 	0x3c1c0025
1c007e11:	3c1c0027 	0x3c1c0027
1c007e15:	e81c0027 	0xe81c0027
1c007e19:	0d1c0025 	vbitsel.v	$vr5,$vr1,$vr0,$vr24
1c007e1d:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01f03d <_sidata+0x15db5>
1c007e21:	76696563 	0x76696563
1c007e25:	64612065 	bge	$r3,$r5,24864(0x6120) # 1c00df45 <_sidata+0x4cbd>
1c007e29:	30207264 	vldrepl.w	$vr4,$r19,112(0x70)
1c007e2d:	32302578 	0x32302578
1c007e31:	000a0d78 	0x000a0d78
1c007e35:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007e39:	7274200a 	0x7274200a
1c007e3d:	20736e61 	ll.w	$r1,$r19,29548(0x736c)
1c007e41:	72646461 	0x72646461
1c007e45:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c007e49:	0d783230 	0x0d783230
1c007e4d:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c007e51:	6544200a 	bge	$r0,$r10,82976(0x14420) # 1c01c271 <_sidata+0x12fe9>
1c007e55:	65636976 	bge	$r11,$r22,90984(0x16368) # 1c01e1bd <_sidata+0x14f35>
1c007e59:	6464415f 	bge	$r10,$r31,25664(0x6440) # 1c00e299 <_sidata+0x5011>
1c007e5d:	78303d72 	0x78303d72
1c007e61:	20783225 	ll.w	$r5,$r17,30768(0x7830)
1c007e65:	6454202c 	bge	$r1,$r12,21536(0x5420) # 1c00d285 <_sidata+0x3ffd>
1c007e69:	20617461 	ll.w	$r1,$r3,24948(0x6174)
1c007e6d:	7830203d 	0x7830203d
1c007e71:	00783225 	bstrins.w	$r5,$r17,0x18,0xc
1c007e75:	2d000000 	0x2d000000
1c007e79:	2d2d2d2d 	0x2d2d2d2d
1c007e7d:	61206f6e 	blt	$r27,$r14,73836(0x1206c) # 1c019ee9 <_sidata+0x10c61>
1c007e81:	2d2d6b63 	0x2d2d6b63
1c007e85:	0d2d2d2d 	xvbitsel.v	$xr13,$xr9,$xr11,$xr26
1c007e89:	5700000a 	bl	2818048(0x2b0000) # 1c2b7e89 <_sidata+0x2aec01>
1c007e8d:	72646461 	0x72646461
1c007e91:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007e95:	0d000078 	fsel	$f24,$f3,$f0,$fcc0
1c007e99:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01f0b9 <_sidata+0x15e31>
1c007e9d:	44206461 	bnez	$r3,270436(0x42064) # 1c049f01 <_sidata+0x40c79>
1c007ea1:	63697665 	blt	$r19,$r5,-38540(0x36974) # 1bffe815 <_start-0x17eb>
1c007ea5:	64415f65 	bge	$r27,$r5,16732(0x415c) # 1c00c001 <_sidata+0x2d79>
1c007ea9:	303d7264 	0x303d7264
1c007ead:	78322578 	0x78322578
1c007eb1:	0a000020 	0x0a000020
1c007eb5:	206f6e20 	ll.w	$r0,$r17,28524(0x6f6c)
1c007eb9:	206b6361 	ll.w	$r1,$r27,27488(0x6b60)
1c007ebd:	5200000a 	b	2752512(0x2a0000) # 1c2a7ebd <_sidata+0x29ec35>
1c007ec1:	72646461 	0x72646461
1c007ec5:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007ec9:	09000078 	0x09000078
1c007ecd:	0a006425 	0x0a006425
1c007ed1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007ed5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007ed9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007edd:	0050550a 	0x0050550a
1c007ee1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007ee5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00f431 <_sidata+0x61a9>
1c007ee9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c007eed:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007ef1:	756f430a 	0x756f430a
1c007ef5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007ef9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c007efd:	3030090a 	0x3030090a
1c007f01:	09313009 	0x09313009
1c007f05:	30093230 	0x30093230
1c007f09:	34300933 	0x34300933
1c007f0d:	09353009 	0x09353009
1c007f11:	30093630 	0x30093630
1c007f15:	38300937 	fldx.s	$f23,$r9,$r2
1c007f19:	09393009 	0x09393009
1c007f1d:	31093031 	0x31093031
1c007f21:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007f25:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007f29:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00e07d <_sidata+0x4df5>
1c007f2d:	09000000 	0x09000000
1c007f31:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007f35:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007f39:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfef489 <_start-0x10b77>
1c007f3d:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007f41:	09000000 	0x09000000
1c007f45:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007f49:	09000000 	0x09000000
1c007f4d:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007f51:	0a000000 	0x0a000000
1c007f55:	56746e43 	bl	-116493204(0x90e746c) # 150ef3c1 <_start-0x6f10c3f>
1c007f59:	2d006c61 	0x2d006c61
1c007f5d:	4b2d2d2d 	bcnez	$fcc1,3616044(0x372d2c) # 1c37ac89 <_sidata+0x371a01>
1c007f61:	79547965 	0x79547965
1c007f65:	203a6570 	ll.w	$r16,$r11,14948(0x3a64)
1c007f69:	78257830 	0x78257830
1c007f6d:	65000000 	bge	$r0,$r0,65536(0x10000) # 1c017f6d <_sidata+0xece5>
1c007f71:	00746978 	bstrins.w	$r24,$r11,0x14,0x1a
1c007f75:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff7f75 <_start-0x808b>
1c007f79:	74697865 	xvavgr.w	$xr5,$xr3,$xr30
1c007f7d:	0000005d 	0x0000005d
1c007f81:	64000000 	bge	$r0,$r0,0 # 1c007f81 <hexdecarr+0x418>
1c007f85:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff7f85 <_start-0x807b>
1c007f89:	3c203164 	0x3c203164
1c007f8d:	72646461 	0x72646461
1c007f91:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebbb1 <_start-0x1444f>
1c007f95:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01be01 <_sidata+0x12b79>
1c007f99:	2d000000 	0x2d000000
1c007f9d:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f501 <_sidata+0x16279>
1c007fa1:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e0c1 <_sidata+0x4e39>
1c007fa5:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c007fa9:	79622073 	0x79622073
1c007fad:	64006574 	bge	$r11,$r20,100(0x64) # 1c008011 <hexdecarr+0x4a8>
1c007fb1:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff7fb1 <_start-0x804f>
1c007fb5:	3c203464 	0x3c203464
1c007fb9:	72646461 	0x72646461
1c007fbd:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebbdd <_start-0x14423>
1c007fc1:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01be2d <_sidata+0x12ba5>
1c007fc5:	2d000000 	0x2d000000
1c007fc9:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f52d <_sidata+0x162a5>
1c007fcd:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e0ed <_sidata+0x4e65>
1c007fd1:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c007fd5:	6f772073 	bgeu	$r3,$r19,-35040(0x37720) # 1bfff6f5 <_start-0x90b>
1c007fd9:	68006472 	bltu	$r3,$r18,100(0x64) # 1c00803d <hexdecarr+0x4d4>
1c007fdd:	00706c65 	bstrins.w	$r5,$r3,0x10,0x1b
1c007fe1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff7fe1 <_start-0x801f>
1c007fe5:	706c6568 	0x706c6568
1c007fe9:	6f633c20 	bgeu	$r1,$r0,-40132(0x3633c) # 1bffe325 <_start-0x1cdb>
1c007fed:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee159 <_start-0x11ea7>
1c007ff1:	005d3e64 	0x005d3e64
1c007ff5:	2d000000 	0x2d000000
1c007ff9:	646d632d 	bge	$r25,$r13,28000(0x6d60) # 1c00ed59 <_sidata+0x5ad1>
1c007ffd:	73696c20 	vssrarni.w.d	$vr0,$vr1,0x1b
1c008001:	6d000074 	bgeu	$r3,$r20,65536(0x10000) # 1c018001 <_sidata+0xed79>
1c008005:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff8005 <_start-0x7ffb>
1c008009:	3c20316d 	0x3c20316d
1c00800d:	72646461 	0x72646461
1c008011:	763c203e 	0x763c203e
1c008015:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f581 <_sidata+0x162f9>
1c008019:	2d005d3e 	0x2d005d3e
1c00801d:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00ef89 <_sidata+0x5d01>
1c008021:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c008025:	72646461 	0x72646461
1c008029:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c00802d:	65747962 	bge	$r11,$r2,95352(0x17478) # 1c01f4a5 <_sidata+0x1621d>
1c008031:	6d000000 	bgeu	$r0,$r0,65536(0x10000) # 1c018031 <_sidata+0xeda9>
1c008035:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff8035 <_start-0x7fcb>
1c008039:	3c20346d 	0x3c20346d
1c00803d:	72646461 	0x72646461
1c008041:	763c203e 	0x763c203e
1c008045:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f5b1 <_sidata+0x16329>
1c008049:	2d005d3e 	0x2d005d3e
1c00804d:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00efb9 <_sidata+0x5d31>
1c008051:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c008055:	72646461 	0x72646461
1c008059:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c00805d:	64726f77 	bge	$r27,$r23,29292(0x726c) # 1c00f2c9 <_sidata+0x6041>
1c008061:	76000000 	0x76000000
1c008065:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8065 <_start-0x7f9b>
1c008069:	2d005d76 	0x2d005d76
1c00806d:	0031762d 	0x0031762d
1c008071:	74000000 	xvseq.b	$xr0,$xr0,$xr0
1c008075:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00e3e9 <_sidata+0x5161>
1c008079:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8079 <_start-0x7f87>
1c00807d:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfff5e9 <_start-0xa17>
1c008081:	68005d68 	bltu	$r11,$r8,92(0x5c) # 1c0080dd <hexdecarr+0x574>
1c008085:	00746570 	bstrins.w	$r16,$r11,0x14,0x19
1c008089:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8089 <_start-0x7f77>
1c00808d:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01edf5 <_sidata+0x15b6d>
1c008091:	65742072 	bge	$r3,$r18,95264(0x17420) # 1c01f4b1 <_sidata+0x16229>
1c008095:	005d7473 	0x005d7473
1c008099:	6c000000 	bgeu	$r0,$r0,0 # 1c008099 <hexdecarr+0x530>
1c00809d:	6d697461 	bgeu	$r3,$r1,92532(0x16974) # 1c01ea11 <_sidata+0x15789>
1c0080a1:	5b007265 	beq	$r19,$r5,-65424(0x30070) # 1bff8111 <_start-0x7eef>
1c0080a5:	65726f63 	bge	$r27,$r3,94828(0x1726c) # 1c01f311 <_sidata+0x16089>
1c0080a9:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01ea1d <_sidata+0x15795>
1c0080ad:	74207265 	xvsubwev.h.b	$xr5,$xr19,$xr28
1c0080b1:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f521 <_sidata+0x16299>
1c0080b5:	64000000 	bge	$r0,$r0,0 # 1c0080b5 <hexdecarr+0x54c>
1c0080b9:	79616c65 	0x79616c65
1c0080bd:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff80bd <_start-0x7f43>
1c0080c1:	616c6564 	blt	$r11,$r4,93284(0x16c64) # 1c01ed25 <_sidata+0x15a9d>
1c0080c5:	65742079 	bge	$r3,$r25,95264(0x17420) # 1c01f4e5 <_sidata+0x1625d>
1c0080c9:	005d7473 	0x005d7473
1c0080cd:	77000000 	0x77000000
1c0080d1:	75656b61 	0x75656b61
1c0080d5:	5b000070 	beq	$r3,$r16,-65536(0x30000) # 1bff80d5 <_start-0x7f2b>
1c0080d9:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01ec39 <_sidata+0x159b1>
1c0080dd:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0080e1:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f551 <_sidata+0x162c9>
1c0080e5:	64000000 	bge	$r0,$r0,0 # 1c0080e5 <hexdecarr+0x57c>
1c0080e9:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
1c0080ed:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff80ed <_start-0x7f13>
1c0080f1:	20637472 	ll.w	$r18,$r3,25460(0x6374)
1c0080f5:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0080f9:	7700005d 	0x7700005d
1c0080fd:	5b006764 	beq	$r27,$r4,-65436(0x30064) # 1bff8161 <_start-0x7e9f>
1c008101:	20676477 	ll.w	$r23,$r3,26468(0x6764)
1c008105:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c008109:	6900005d 	bltu	$r2,$r29,65536(0x10000) # 1c018109 <_sidata+0xee81>
1c00810d:	00706332 	bstrins.w	$r18,$r25,0x10,0x18
1c008111:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8111 <_start-0x7eef>
1c008115:	70633269 	vabsd.wu	$vr9,$vr19,$vr12
1c008119:	72703c20 	0x72703c20
1c00811d:	61637365 	blt	$r27,$r5,90992(0x16370) # 1c01e48d <_sidata+0x15205>
1c008121:	5d3e656c 	bne	$r11,$r12,81508(0x13e64) # 1c01bf85 <_sidata+0x12cfd>
1c008125:	2d000000 	0x2d000000
1c008129:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb391 <_start-0x4c6f>
1c00812d:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01f39d <_sidata+0x16115>
1c008131:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00e291 <_sidata+0x5009>
1c008135:	69000065 	bltu	$r3,$r5,65536(0x10000) # 1c018135 <_sidata+0xeead>
1c008139:	00776332 	bstrins.w	$r18,$r25,0x17,0x18
1c00813d:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff813d <_start-0x7ec3>
1c008141:	77633269 	xvssrani.d.q	$xr9,$xr19,0x4c
1c008145:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e481 <_sidata+0x51f9>
1c008149:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e2b9 <_sidata+0x5031>
1c00814d:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008151:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe6c1 <_start-0x193f>
1c008155:	72646461 	0x72646461
1c008159:	773c203e 	0x773c203e
1c00815d:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01f5bd <_sidata+0x16335>
1c008161:	2d005d3e 	0x2d005d3e
1c008165:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb3cd <_start-0x4c33>
1c008169:	69727720 	bltu	$r25,$r0,94836(0x17274) # 1c01f3dd <_sidata+0x16155>
1c00816d:	69006574 	bltu	$r11,$r20,65636(0x10064) # 1c0181d1 <_sidata+0xef49>
1c008171:	00726332 	bstrins.w	$r18,$r25,0x12,0x18
1c008175:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8175 <_start-0x7e8b>
1c008179:	72633269 	0x72633269
1c00817d:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e4b9 <_sidata+0x5231>
1c008181:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e2f1 <_sidata+0x5069>
1c008185:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008189:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe6f9 <_start-0x1907>
1c00818d:	72646461 	0x72646461
1c008191:	2d005d3e 	0x2d005d3e
1c008195:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb3fd <_start-0x4c03>
1c008199:	61657220 	blt	$r17,$r0,91504(0x16570) # 1c01e709 <_sidata+0x15481>
1c00819d:	61000064 	blt	$r3,$r4,65536(0x10000) # 1c01819d <_sidata+0xef15>
1c0081a1:	5b006364 	beq	$r27,$r4,-65440(0x30060) # 1bff8201 <_start-0x7dff>
1c0081a5:	5d636461 	bne	$r3,$r1,90980(0x16364) # 1c01e509 <_sidata+0x15281>
1c0081a9:	2d000000 	0x2d000000
1c0081ad:	6364612d 	blt	$r9,$r13,-39840(0x36460) # 1bffe60d <_start-0x19f3>
1c0081b1:	62000000 	blt	$r0,$r0,-131072(0x20000) # 1bfe81b1 <_start-0x17e4f>
1c0081b5:	65647461 	bge	$r3,$r1,91252(0x16474) # 1c01e629 <_sidata+0x153a1>
1c0081b9:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff81b9 <_start-0x7e47>
1c0081bd:	64746162 	bge	$r11,$r2,29792(0x7460) # 1c00f61d <_sidata+0x6395>
1c0081c1:	3c207465 	0x3c207465
1c0081c5:	005d3e6e 	0x005d3e6e
1c0081c9:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff81c9 <_start-0x7e37>
1c0081cd:	0079706f 	bstrins.w	$r15,$r3,0x19,0x1c
1c0081d1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81d1 <_start-0x7e2f>
1c0081d5:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb45 <_start-0x14bb>
1c0081d9:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c0081dd:	693e3d68 	bltu	$r11,$r8,81468(0x13e3c) # 1c01c019 <_sidata+0x12d91>
1c0081e1:	6c665f6e 	bgeu	$r27,$r14,26204(0x665c) # 1c00e83d <_sidata+0x55b5>
1c0081e5:	5d687361 	bne	$r27,$r1,92272(0x16870) # 1c01ea55 <_sidata+0x157cd>
1c0081e9:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff81e9 <_start-0x7e17>
1c0081ed:	5f79706f 	bne	$r3,$r15,-34448(0x37970) # 1bfffb5d <_start-0x4a3>
1c0081f1:	6d617269 	bgeu	$r19,$r9,90480(0x16170) # 1c01e361 <_sidata+0x150d9>
1c0081f5:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81f5 <_start-0x7e0b>
1c0081f9:	79706f63 	0x79706f63
1c0081fd:	2d00005d 	0x2d00005d
1c008201:	7461622d 	xvabsd.w	$xr13,$xr17,$xr24
1c008205:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c008209:	003e6e3c 	0x003e6e3c
1c00820d:	75000000 	0x75000000
1c008211:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c008215:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8215 <_start-0x7deb>
1c008219:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c00821d:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01f085 <_sidata+0x15dfd>
1c008221:	73005d74 	0x73005d74
1c008225:	696e6970 	bltu	$r11,$r16,93800(0x16e68) # 1c01f08d <_sidata+0x15e05>
1c008229:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff8229 <_start-0x7dd7>
1c00822d:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb9d <_start-0x1463>
1c008231:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c008235:	7300005d 	0x7300005d
1c008239:	61726570 	blt	$r11,$r16,94820(0x17264) # 1c01f49d <_sidata+0x16215>
1c00823d:	5b006573 	beq	$r11,$r19,-65436(0x30064) # 1bff82a1 <_start-0x7d5f>
1c008241:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffebb1 <_start-0x144f>
1c008245:	73617265 	vssrani.w.d	$vr5,$vr19,0x1c
1c008249:	73005d65 	0x73005d65
1c00824d:	00727770 	bstrins.w	$r16,$r27,0x12,0x1d
1c008251:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8251 <_start-0x7daf>
1c008255:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffebc5 <_start-0x143b>
1c008259:	74697277 	xvavgr.w	$xr23,$xr19,$xr28
1c00825d:	73005d65 	0x73005d65
1c008261:	00647270 	bstrins.w	$r16,$r19,0x4,0x1c
1c008265:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8265 <_start-0x7d9b>
1c008269:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffebd9 <_start-0x1427>
1c00826d:	64616572 	bge	$r11,$r18,24932(0x6164) # 1c00e3d1 <_sidata+0x5149>
1c008271:	7300005d 	0x7300005d
1c008275:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008279:	5b000068 	beq	$r3,$r8,-65536(0x30000) # 1bff8279 <_start-0x7d87>
1c00827d:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffebed <_start-0x1413>
1c008281:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008285:	67005d68 	bge	$r11,$r8,-65444(0x3005c) # 1bff82e1 <_start-0x7d1f>
1c008289:	5f6f6970 	bne	$r11,$r16,-37016(0x36f68) # 1bfff1f1 <_start-0xe0f>
1c00828d:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
1c008291:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8291 <_start-0x7d6f>
1c008295:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f70d <_sidata+0x16485>
1c008299:	7400005d 	xvseq.b	$xr29,$xr2,$xr0
1c00829d:	4e000000 	jirl	$r0,$r0,-131072(0x20000)
1c0082a1:	004c4c55 	0x004c4c55
1c0082a5:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff82a5 <_start-0x7d5b>
1c0082a9:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c0082ad:	 	vseq.b	$vr29,$vr2,$vr0

1c0082b0 <cmd>:
1c0082b0:	1c007f70 	pcaddu12i	$r16,1019(0x3fb)
1c0082b4:	1c00444c 	pcaddu12i	$r12,546(0x222)
1c0082b8:	1c007f78 	pcaddu12i	$r24,1019(0x3fb)
1c0082bc:	1c007f80 	pcaddu12i	$r0,1020(0x3fc)
1c0082c0:	1c007f84 	pcaddu12i	$r4,1020(0x3fc)
1c0082c4:	1c0048a8 	pcaddu12i	$r8,581(0x245)
1c0082c8:	1c007f88 	pcaddu12i	$r8,1020(0x3fc)
1c0082cc:	1c007f9c 	pcaddu12i	$r28,1020(0x3fc)
1c0082d0:	1c007fb0 	pcaddu12i	$r16,1021(0x3fd)
1c0082d4:	1c0049bc 	pcaddu12i	$r28,589(0x24d)
1c0082d8:	1c007fb4 	pcaddu12i	$r20,1021(0x3fd)
1c0082dc:	1c007fc8 	pcaddu12i	$r8,1022(0x3fe)
1c0082e0:	1c007fdc 	pcaddu12i	$r28,1022(0x3fe)
1c0082e4:	1c004474 	pcaddu12i	$r20,547(0x223)
1c0082e8:	1c007fe4 	pcaddu12i	$r4,1023(0x3ff)
1c0082ec:	1c007ff8 	pcaddu12i	$r24,1023(0x3ff)
1c0082f0:	1c008004 	pcaddu12i	$r4,1024(0x400)
1c0082f4:	1c004adc 	pcaddu12i	$r28,598(0x256)
1c0082f8:	1c008008 	pcaddu12i	$r8,1024(0x400)
1c0082fc:	1c00801c 	pcaddu12i	$r28,1024(0x400)
1c008300:	1c008034 	pcaddu12i	$r20,1025(0x401)
1c008304:	1c004b6c 	pcaddu12i	$r12,603(0x25b)
1c008308:	1c008038 	pcaddu12i	$r24,1025(0x401)
1c00830c:	1c00804c 	pcaddu12i	$r12,1026(0x402)
1c008310:	1c008064 	pcaddu12i	$r4,1027(0x403)
1c008314:	1c004e0c 	pcaddu12i	$r12,624(0x270)
1c008318:	1c008068 	pcaddu12i	$r8,1027(0x403)
1c00831c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008320:	1c008074 	pcaddu12i	$r20,1027(0x403)
1c008324:	1c00508c 	pcaddu12i	$r12,644(0x284)
1c008328:	1c00807c 	pcaddu12i	$r28,1027(0x403)
1c00832c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008330:	1c008084 	pcaddu12i	$r4,1028(0x404)
1c008334:	1c005340 	pcaddu12i	$r0,666(0x29a)
1c008338:	1c00808c 	pcaddu12i	$r12,1028(0x404)
1c00833c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008340:	1c00809c 	pcaddu12i	$r28,1028(0x404)
1c008344:	1c005440 	pcaddu12i	$r0,674(0x2a2)
1c008348:	1c0080a4 	pcaddu12i	$r4,1029(0x405)
1c00834c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008350:	1c0080b8 	pcaddu12i	$r24,1029(0x405)
1c008354:	1c0054d4 	pcaddu12i	$r20,678(0x2a6)
1c008358:	1c0080c0 	pcaddu12i	$r0,1030(0x406)
1c00835c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008360:	1c0080d0 	pcaddu12i	$r16,1030(0x406)
1c008364:	1c0055d8 	pcaddu12i	$r24,686(0x2ae)
1c008368:	1c0080d8 	pcaddu12i	$r24,1030(0x406)
1c00836c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008370:	1c0080e8 	pcaddu12i	$r8,1031(0x407)
1c008374:	1c0056c8 	pcaddu12i	$r8,694(0x2b6)
1c008378:	1c0080f0 	pcaddu12i	$r16,1031(0x407)
1c00837c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008380:	1c0080fc 	pcaddu12i	$r28,1031(0x407)
1c008384:	1c005de8 	pcaddu12i	$r8,751(0x2ef)
1c008388:	1c008100 	pcaddu12i	$r0,1032(0x408)
1c00838c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008390:	1c00810c 	pcaddu12i	$r12,1032(0x408)
1c008394:	1c005e6c 	pcaddu12i	$r12,755(0x2f3)
1c008398:	1c008114 	pcaddu12i	$r20,1032(0x408)
1c00839c:	1c008128 	pcaddu12i	$r8,1033(0x409)
1c0083a0:	1c008138 	pcaddu12i	$r24,1033(0x409)
1c0083a4:	1c005eb8 	pcaddu12i	$r24,757(0x2f5)
1c0083a8:	1c008140 	pcaddu12i	$r0,1034(0x40a)
1c0083ac:	1c008164 	pcaddu12i	$r4,1035(0x40b)
1c0083b0:	1c008170 	pcaddu12i	$r16,1035(0x40b)
1c0083b4:	1c005fc4 	pcaddu12i	$r4,766(0x2fe)
1c0083b8:	1c008178 	pcaddu12i	$r24,1035(0x40b)
1c0083bc:	1c008194 	pcaddu12i	$r20,1036(0x40c)
1c0083c0:	1c0081a0 	pcaddu12i	$r0,1037(0x40d)
1c0083c4:	1c0060a4 	pcaddu12i	$r4,773(0x305)
1c0083c8:	1c0081a4 	pcaddu12i	$r4,1037(0x40d)
1c0083cc:	1c0081ac 	pcaddu12i	$r12,1037(0x40d)
1c0083d0:	1c0081b4 	pcaddu12i	$r20,1037(0x40d)
1c0083d4:	1c006248 	pcaddu12i	$r8,786(0x312)
1c0083d8:	1c0081bc 	pcaddu12i	$r28,1037(0x40d)
1c0083dc:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c0083e0:	1c0081cc 	pcaddu12i	$r12,1038(0x40e)
1c0083e4:	1c0063b8 	pcaddu12i	$r24,797(0x31d)
1c0083e8:	1c0081d4 	pcaddu12i	$r20,1038(0x40e)
1c0083ec:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c0083f0:	1c0081ec 	pcaddu12i	$r12,1039(0x40f)
1c0083f4:	1c006cd4 	pcaddu12i	$r20,870(0x366)
1c0083f8:	1c0081f8 	pcaddu12i	$r24,1039(0x40f)
1c0083fc:	1c008200 	pcaddu12i	$r0,1040(0x410)
1c008400:	1c008210 	pcaddu12i	$r16,1040(0x410)
1c008404:	1c006548 	pcaddu12i	$r8,810(0x32a)
1c008408:	1c008218 	pcaddu12i	$r24,1040(0x410)
1c00840c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008410:	1c008224 	pcaddu12i	$r4,1041(0x411)
1c008414:	1c0065f4 	pcaddu12i	$r20,815(0x32f)
1c008418:	1c00822c 	pcaddu12i	$r12,1041(0x411)
1c00841c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008420:	1c008238 	pcaddu12i	$r24,1041(0x411)
1c008424:	1c0068fc 	pcaddu12i	$r28,839(0x347)
1c008428:	1c008240 	pcaddu12i	$r0,1042(0x412)
1c00842c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008430:	1c00824c 	pcaddu12i	$r12,1042(0x412)
1c008434:	1c00665c 	pcaddu12i	$r28,818(0x332)
1c008438:	1c008254 	pcaddu12i	$r20,1042(0x412)
1c00843c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008440:	1c008260 	pcaddu12i	$r0,1043(0x413)
1c008444:	1c00678c 	pcaddu12i	$r12,828(0x33c)
1c008448:	1c008268 	pcaddu12i	$r8,1043(0x413)
1c00844c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008450:	1c008274 	pcaddu12i	$r20,1043(0x413)
1c008454:	1c00698c 	pcaddu12i	$r12,844(0x34c)
1c008458:	1c00827c 	pcaddu12i	$r28,1043(0x413)
1c00845c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008460:	1c008288 	pcaddu12i	$r8,1044(0x414)
1c008464:	1c006c74 	pcaddu12i	$r20,867(0x363)
1c008468:	1c008294 	pcaddu12i	$r20,1044(0x414)
1c00846c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008470:	1c00829c 	pcaddu12i	$r28,1044(0x414)
1c008474:	1c006ca8 	pcaddu12i	$r8,869(0x365)
1c008478:	1c008294 	pcaddu12i	$r20,1044(0x414)
1c00847c:	1c00806c 	pcaddu12i	$r12,1027(0x403)
1c008480:	1c0082a0 	pcaddu12i	$r0,1045(0x415)
1c008484:	1c004888 	pcaddu12i	$r8,580(0x244)
1c008488:	1c0082a8 	pcaddu12i	$r8,1045(0x415)
1c00848c:	1c0082a0 	pcaddu12i	$r0,1045(0x415)
1c008490:	6d6f630a 	bgeu	$r24,$r10,94048(0x16f60) # 1c01f3f0 <_sidata+0x16168>
1c008494:	646e616d 	bge	$r11,$r13,28256(0x6e60) # 1c00f2f4 <_sidata+0x606c>
1c008498:	0a0a3a73 	0x0a0a3a73
1c00849c:	00000000 	0x00000000
1c0084a0:	32252009 	xvldrepl.w	$xr9,$r0,1312(0x520)
1c0084a4:	73253a64 	vsat.d	$vr4,$vr19,0xe
1c0084a8:	00000d0a 	0x00000d0a
1c0084ac:	7325090a 	vsat.d	$vr10,$vr8,0x2
1c0084b0:	09732509 	0x09732509
1c0084b4:	000a7325 	0x000a7325
1c0084b8:	5245090a 	b	69879048(0x42a4508) # 202ac9c0 <_sidata+0x42a3738>
1c0084bc:	3a524f52 	0x3a524f52
1c0084c0:	646e7520 	bge	$r9,$r0,28276(0x6e74) # 1c00f334 <_sidata+0x60ac>
1c0084c4:	6e696665 	bgeu	$r19,$r5,-104092(0x26964) # 1bfeee28 <_start-0x111d8>
1c0084c8:	6f632065 	bgeu	$r3,$r5,-40160(0x36320) # 1bffe7e8 <_start-0x1818>
1c0084cc:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee638 <_start-0x119c8>
1c0084d0:	21212164 	sc.w	$r4,$r11,8480(0x2120)
1c0084d4:	0000000a 	0x0000000a
1c0084d8:	7375200a 	0x7375200a
1c0084dc:	3a656761 	0x3a656761
1c0084e0:	6c656820 	bgeu	$r1,$r0,25960(0x6568) # 1c00ea48 <_sidata+0x57c0>
1c0084e4:	3c202070 	0x3c202070
1c0084e8:	3e646d63 	0x3e646d63
1c0084ec:	00000d0a 	0x00000d0a
1c0084f0:	0020240a 	div.w	$r10,$r0,$r9
1c0084f4:	00000a0d 	0x00000a0d
1c0084f8:	44434241 	bnez	$r18,279360(0x44340) # 1c04c838 <_sidata+0x435b0>
1c0084fc:	00000000 	0x00000000
1c008500:	30727473 	0x30727473
1c008504:	25203d20 	stptr.w	$r0,$r9,8252(0x203c)
1c008508:	000a0d73 	0x000a0d73
1c00850c:	206e656c 	ll.w	$r12,$r11,28260(0x6e64)
1c008510:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c00aa30 <_sidata+0x17a8>
1c008514:	00000a0d 	0x00000a0d
1c008518:	206d756e 	ll.w	$r14,$r11,28020(0x6d74)
1c00851c:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c00aa3c <_sidata+0x17b4>
1c008520:	00000a0d 	0x00000a0d
1c008524:	7375200a 	0x7375200a
1c008528:	3a656761 	0x3a656761
1c00852c:	20316420 	ll.w	$r0,$r1,12644(0x3164)
1c008530:	64613c20 	bge	$r1,$r0,24892(0x613c) # 1c00e66c <_sidata+0x53e4>
1c008534:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008538:	756e3c20 	0x756e3c20
1c00853c:	0d0a3e6d 	0x0d0a3e6d
1c008540:	00000000 	0x00000000
1c008544:	7830200a 	0x7830200a
1c008548:	78383025 	0x78383025
1c00854c:	0000093a 	0x0000093a
1c008550:	32302520 	0x32302520
1c008554:	00002078 	clo.d	$r24,$r3
1c008558:	7375200a 	0x7375200a
1c00855c:	3a656761 	0x3a656761
1c008560:	20346420 	ll.w	$r0,$r1,13412(0x3464)
1c008564:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00e9c4 <_sidata+0x573c>
1c008568:	3c203e72 	0x3c203e72
1c00856c:	3e6d756e 	0x3e6d756e
1c008570:	00000d0a 	0x00000d0a
1c008574:	2578300a 	stptr.w	$r10,$r0,30768(0x7830)
1c008578:	3a783830 	0x3a783830
1c00857c:	00000009 	0x00000009
1c008580:	38302520 	fldx.s	$f0,$r9,$r9
1c008584:	00002078 	clo.d	$r24,$r3
1c008588:	7375200a 	0x7375200a
1c00858c:	3a656761 	0x3a656761
1c008590:	20316d20 	ll.w	$r0,$r9,12652(0x316c)
1c008594:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00e9f4 <_sidata+0x576c>
1c008598:	3c203e72 	0x3c203e72
1c00859c:	756c6176 	0x756c6176
1c0085a0:	0d0a3e65 	0x0d0a3e65
1c0085a4:	00000000 	0x00000000
1c0085a8:	7375200a 	0x7375200a
1c0085ac:	3a656761 	0x3a656761
1c0085b0:	20346d20 	ll.w	$r0,$r9,13420(0x346c)
1c0085b4:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00ea14 <_sidata+0x578c>
1c0085b8:	3c203e72 	0x3c203e72
1c0085bc:	756c6176 	0x756c6176
1c0085c0:	0d0a3e65 	0x0d0a3e65
1c0085c4:	00000000 	0x00000000
1c0085c8:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f234 <_sidata+0x15fac>
1c0085cc:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c0085d0:	20786568 	ll.w	$r8,$r11,30820(0x7864)
1c0085d4:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef348 <_start-0x10cb8>
1c0085d8:	2e2e7265 	0x2e2e7265
1c0085dc:	00000a2e 	0x00000a2e
1c0085e0:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f24c <_sidata+0x15fc4>
1c0085e4:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c0085e8:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef35c <_start-0x10ca4>
1c0085ec:	2e2e7265 	0x2e2e7265
1c0085f0:	00000a2e 	0x00000a2e
1c0085f4:	7375200a 	0x7375200a
1c0085f8:	3a656761 	0x3a656761
1c0085fc:	3c207620 	0x3c207620
1c008600:	72646461 	0x72646461
1c008604:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfec224 <_start-0x13ddc>
1c008608:	0a3e6d75 	0x0a3e6d75
1c00860c:	0000000d 	0x0000000d
1c008610:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c008614:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f378 <_sidata+0x160f0>
1c008618:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c00861c:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c008620:	61747320 	blt	$r25,$r0,95344(0x17470) # 1c01fa90 <_sidata+0x16808>
1c008624:	64657472 	bge	$r3,$r18,25972(0x6574) # 1c00eb98 <_sidata+0x5910>
1c008628:	00000a20 	0x00000a20
1c00862c:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c008630:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f394 <_sidata+0x1610c>
1c008634:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c008638:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c00863c:	646e6520 	bge	$r9,$r0,28260(0x6e64) # 1c00f4a0 <_sidata+0x6218>
1c008640:	0000000a 	0x0000000a
1c008644:	6573540a 	bge	$r0,$r10,95060(0x17354) # 1c01f998 <_sidata+0x16710>
1c008648:	726f736e 	0x726f736e
1c00864c:	00000a3a 	0x00000a3a
1c008650:	435f5354 	beqz	$r26,-2924720(0x535f50) # 1bd3e5a0 <_start-0x2c1a60>
1c008654:	206c7274 	ll.w	$r20,$r19,27760(0x6c70)
1c008658:	3d202020 	0x3d202020
1c00865c:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008660:	000a7838 	0x000a7838
1c008664:	4f5f5354 	jirl	$r20,$r26,-41136(0x35f50)
1c008668:	68546373 	bltu	$r27,$r19,21600(0x5460) # 1c00dac8 <_sidata+0x4840>
1c00866c:	3d202020 	0x3d202020
1c008670:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008674:	000a7838 	0x000a7838
1c008678:	505f5354 	b	-45064368(0xd505f50) # 1950e5c8 <_start-0x2af1a38>
1c00867c:	546c6c6f 	bl	29125740(0x1bc6c6c) # 1dbcf2e8 <_sidata+0x1bc6060>
1c008680:	3d206d69 	0x3d206d69
1c008684:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008688:	000a7838 	0x000a7838
1c00868c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008690:	43202020 	beqz	$r1,204832(0x32020) # 1c03a6b0 <_sidata+0x31428>
1c008694:	74416e68 	xvaddwod.d.wu.w	$xr8,$xr19,$xr27
1c008698:	20207274 	ll.w	$r20,$r19,8304(0x2070)
1c00869c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086a0:	746e4320 	0x746e4320
1c0086a4:	0a736552 	0x0a736552
1c0086a8:	00000000 	0x00000000
1c0086ac:	6432255b 	bge	$r10,$r27,12836(0x3224) # 1c00b8d0 <_sidata+0x2648>
1c0086b0:	203d205d 	ll.w	$r29,$r2,15648(0x3d20)
1c0086b4:	38257830 	0x38257830
1c0086b8:	20202078 	ll.w	$r24,$r3,8224(0x2020)
1c0086bc:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c0086c0:	000a7838 	0x000a7838
1c0086c4:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c0086c8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086cc:	30302020 	0x30302020
1c0086d0:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0086d4:	20202031 	ll.w	$r17,$r1,8224(0x2020)
1c0086d8:	20203230 	ll.w	$r16,$r17,8240(0x2030)
1c0086dc:	20333020 	ll.w	$r0,$r1,13104(0x3330)
1c0086e0:	34302020 	0x34302020
1c0086e4:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0086e8:	20202035 	ll.w	$r21,$r1,8224(0x2020)
1c0086ec:	20203630 	ll.w	$r16,$r17,8244(0x2034)
1c0086f0:	20373020 	ll.w	$r0,$r1,14128(0x3730)
1c0086f4:	38302020 	fldx.s	$f0,$r1,$r8
1c0086f8:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0086fc:	20202039 	ll.w	$r25,$r1,8224(0x2020)
1c008700:	20203031 	ll.w	$r17,$r1,8240(0x2030)
1c008704:	0a313120 	0x0a313120
1c008708:	00000000 	0x00000000
1c00870c:	76736162 	0x76736162
1c008710:	00006c61 	cpucfg	$r1,$r3
1c008714:	64342520 	bge	$r9,$r0,13348(0x3424) # 1c00bb38 <_sidata+0x28b0>
1c008718:	00000000 	0x00000000
1c00871c:	746e630a 	0x746e630a
1c008720:	006c6176 	bstrins.w	$r22,$r11,0xc,0x18
1c008724:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c008728:	00000000 	0x00000000
1c00872c:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffb4c <_start-0x4b4>
1c008730:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008734:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c008738:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffeb74 <_start-0x148c>
1c00873c:	745f6e77 	0x745f6e77
1c008740:	002e3e68 	0x002e3e68
1c008744:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb64 <_start-0x249c>
1c008748:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c00874c:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
1c008750:	00000000 	0x00000000
1c008754:	6e616373 	bgeu	$r27,$r19,-106144(0x26160) # 1bfee8b4 <_start-0x1174c>
1c008758:	00000000 	0x00000000
1c00875c:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb7c <_start-0x2484>
1c008760:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008764:	6e616353 	bgeu	$r26,$r19,-106144(0x26160) # 1bfee8c4 <_start-0x1173c>
1c008768:	00000000 	0x00000000
1c00876c:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfefed8 <_start-0x10128>
1c008770:	00000000 	0x00000000
1c008774:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb94 <_start-0x246c>
1c008778:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c00877c:	6e776f44 	bgeu	$r26,$r4,-100500(0x2776c) # 1bfefee8 <_start-0x10118>
1c008780:	00006854 	rdtime.d	$r20,$r2
1c008784:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffba4 <_start-0x45c>
1c008788:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c00878c:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfefef8 <_start-0x10108>
1c008790:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffebcc <_start-0x1434>
1c008794:	745f6e77 	0x745f6e77
1c008798:	3c203e68 	0x3c203e68
1c00879c:	6e616863 	bgeu	$r3,$r3,-106136(0x26168) # 1bfee904 <_start-0x116fc>
1c0087a0:	3e6c656e 	0x3e6c656e
1c0087a4:	00000000 	0x00000000
1c0087a8:	6c6c6f70 	bgeu	$r27,$r16,27756(0x6c6c) # 1c00f414 <_sidata+0x618c>
1c0087ac:	00000000 	0x00000000
1c0087b0:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdbd0 <_start-0x2430>
1c0087b4:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0087b8:	6c6c6f50 	bgeu	$r26,$r16,27756(0x6c6c) # 1c00f424 <_sidata+0x619c>
1c0087bc:	0000002e 	0x0000002e
1c0087c0:	776f6873 	xvssrarni.du.q	$xr19,$xr3,0x5a
1c0087c4:	00000000 	0x00000000
1c0087c8:	6e49200a 	bgeu	$r0,$r10,-112352(0x24920) # 1bfed0e8 <_start-0x12f18>
1c0087cc:	20747570 	ll.w	$r16,$r11,29812(0x7474)
1c0087d0:	6f727245 	bgeu	$r18,$r5,-36240(0x37270) # 1bfffa40 <_start-0x5c0>
1c0087d4:	00002e72 	ctz.d	$r18,$r19
1c0087d8:	6173550a 	blt	$r8,$r10,95060(0x17354) # 1c01fb2c <_sidata+0x168a4>
1c0087dc:	203a6567 	ll.w	$r7,$r11,14948(0x3a64)
1c0087e0:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffd4c <_start-0x2b4>
1c0087e4:	6e692068 	bgeu	$r3,$r8,-104160(0x26920) # 1bfef104 <_start-0x10efc>
1c0087e8:	3c207469 	0x3c207469
1c0087ec:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfeff58 <_start-0x100a8>
1c0087f0:	3e68745f 	0x3e68745f
1c0087f4:	0a090920 	0x0a090920
1c0087f8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087fc:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c008800:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00eb74 <_sidata+0x58ec>
1c008804:	776f6420 	xvssrarni.du.q	$xr0,$xr1,0x59
1c008808:	643c206e 	bge	$r3,$r14,15392(0x3c20) # 1c00c428 <_sidata+0x31a0>
1c00880c:	5f6e776f 	bne	$r27,$r15,-37260(0x36e74) # 1bfff680 <_start-0x980>
1c008810:	203e6874 	ll.w	$r20,$r3,15976(0x3e68)
1c008814:	6168633c 	blt	$r25,$r28,92256(0x16860) # 1c01f074 <_sidata+0x15dec>
1c008818:	6c656e6e 	bgeu	$r19,$r14,25964(0x656c) # 1c00ed84 <_sidata+0x5afc>
1c00881c:	2009203e 	ll.w	$r30,$r1,2336(0x920)
1c008820:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008824:	0a202020 	xvfmadd.d	$xr0,$xr1,$xr8,$xr0
1c008828:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00882c:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c008830:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00eba4 <_sidata+0x591c>
1c008834:	61637320 	blt	$r25,$r0,90992(0x16370) # 1c01eba4 <_sidata+0x1591c>
1c008838:	0909206e 	0x0909206e
1c00883c:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c008840:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008844:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffdb0 <_start-0x250>
1c008848:	6f702068 	bgeu	$r3,$r8,-36832(0x37020) # 1bfff868 <_start-0x798>
1c00884c:	09206c6c 	vfmadd.d	$vr12,$vr3,$vr27,$vr0
1c008850:	20200a09 	ll.w	$r9,$r16,8200(0x2008)
1c008854:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008858:	756f7420 	0x756f7420
1c00885c:	73206863 	0x73206863
1c008860:	00776f68 	bstrins.w	$r8,$r27,0x17,0x1b
1c008864:	68200a0d 	bltu	$r16,$r13,8200(0x2008) # 1c00a86c <_sidata+0x15e4>
1c008868:	20746570 	ll.w	$r16,$r11,29796(0x7464)
1c00886c:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f5d4 <_sidata+0x1634c>
1c008870:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c008874:	2e747261 	0x2e747261
1c008878:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00887c:	00000000 	0x00000000
1c008880:	55200a0d 	bl	-130736120(0x8352008) # 1435a888 <_start-0x7ca5778>
1c008884:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01efe4 <_sidata+0x15d5c>
1c008888:	7068203a 	vavgr.b	$vr26,$vr1,$vr8
1c00888c:	3c207465 	0x3c207465
1c008890:	69726570 	bltu	$r11,$r16,94820(0x17264) # 1c01faf4 <_sidata+0x1686c>
1c008894:	6369646f 	blt	$r3,$r15,-38556(0x36964) # 1bfff1f8 <_start-0xe08>
1c008898:	733c203e 	0x733c203e
1c00889c:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c0088a0:	3e736d5f 	0x3e736d5f
1c0088a4:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fbe0 <_sidata+0x16958>
1c0088a8:	00003e63 	revb.d	$r3,$r19
1c0088ac:	63200a0d 	blt	$r16,$r13,-57336(0x32008) # 1bffa8b4 <_start-0x574c>
1c0088b0:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0088b4:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f61c <_sidata+0x16394>
1c0088b8:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c0088bc:	2e747261 	0x2e747261
1c0088c0:	612e2e2e 	blt	$r17,$r14,77356(0x12e2c) # 1c01b6ec <_sidata+0x12464>
1c0088c4:	3a636772 	0x3a636772
1c0088c8:	000a6425 	0x000a6425
1c0088cc:	55200a0d 	bl	-130736120(0x8352008) # 1435a8d4 <_start-0x7ca572c>
1c0088d0:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f030 <_sidata+0x15da8>
1c0088d4:	616c203a 	blt	$r1,$r26,93216(0x16c20) # 1c01f4f4 <_sidata+0x1626c>
1c0088d8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f640 <_sidata+0x163b8>
1c0088dc:	733c2072 	0x733c2072
1c0088e0:	003e6365 	0x003e6365
1c0088e4:	55200a0d 	bl	-130736120(0x8352008) # 1435a8ec <_start-0x7ca5714>
1c0088e8:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f048 <_sidata+0x15dc0>
1c0088ec:	6564203a 	bge	$r1,$r26,91168(0x16420) # 1c01ed0c <_sidata+0x15a84>
1c0088f0:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c0088f4:	646f6d3c 	bge	$r9,$r28,28524(0x6f6c) # 1c00f860 <_sidata+0x65d8>
1c0088f8:	3a313a65 	0x3a313a65
1c0088fc:	322c7375 	xvldrepl.w	$xr21,$r27,-912(0xc70)
1c008900:	2c736d3a 	vst	$vr26,$r9,-805(0xcdb)
1c008904:	3e733a33 	0x3e733a33
1c008908:	61763c20 	blt	$r1,$r0,95804(0x1763c) # 1c01ff44 <_sidata+0x16cbc>
1c00890c:	00003e6c 	revb.d	$r12,$r19
1c008910:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00ae18 <_sidata+0x1b90>
1c008914:	00007375 	0x00007375
1c008918:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00ae20 <_sidata+0x1b98>
1c00891c:	0000736d 	0x0000736d
1c008920:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00ae28 <_sidata+0x1ba0>
1c008924:	00000073 	0x00000073
1c008928:	69540a0d 	bltu	$r16,$r13,87048(0x15408) # 1c01dd30 <_sidata+0x14aa8>
1c00892c:	2072656d 	ll.w	$r13,$r11,29284(0x7264)
1c008930:	656b6157 	bge	$r10,$r23,93024(0x16b60) # 1c01f490 <_sidata+0x16208>
1c008934:	20705520 	ll.w	$r0,$r9,28756(0x7054)
1c008938:	72617473 	0x72617473
1c00893c:	2e2e2e74 	0x2e2e2e74
1c008940:	6772612e 	bge	$r9,$r14,-36256(0x37260) # 1bfffba0 <_start-0x460>
1c008944:	64253a63 	bge	$r19,$r3,9528(0x2538) # 1c00ae7c <_sidata+0x1bf4>
1c008948:	0000000a 	0x0000000a
1c00894c:	55200a0d 	bl	-130736120(0x8352008) # 1435a954 <_start-0x7ca56ac>
1c008950:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f0b0 <_sidata+0x15e28>
1c008954:	6177203a 	blt	$r1,$r26,96032(0x17720) # 1c020074 <_sidata+0x16dec>
1c008958:	7075656b 	vmax.wu	$vr11,$vr11,$vr25
1c00895c:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fc98 <_sidata+0x16a10>
1c008960:	00003e63 	revb.d	$r3,$r19
1c008964:	72770a0d 	0x72770a0d
1c008968:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c00896c:	676e6172 	bge	$r11,$r18,-37280(0x36e60) # 1bfff7cc <_start-0x834>
1c008970:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1bfef890 <_start-0x10770>
1c008974:	6d756e20 	bgeu	$r17,$r0,95596(0x1756c) # 1c01fee0 <_sidata+0x16c58>
1c008978:	21726562 	sc.w	$r2,$r11,29284(0x7264)
1c00897c:	00000a0d 	0x00000a0d
1c008980:	00000a0d 	0x00000a0d
1c008984:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fde4 <_sidata+0x16b5c>
1c008988:	206f7420 	ll.w	$r0,$r1,28532(0x6f74)
1c00898c:	70736964 	vmin.w	$vr4,$vr11,$vr26
1c008990:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c008994:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f6fc <_sidata+0x16474>
1c008998:	0a0d202e 	0x0a0d202e
1c00899c:	00000000 	0x00000000
1c0089a0:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fe00 <_sidata+0x16b78>
1c0089a4:	20732d20 	ll.w	$r0,$r9,29484(0x732c)
1c0089a8:	6d2d7979 	bgeu	$r11,$r25,77176(0x12d78) # 1c01b720 <_sidata+0x12498>
1c0089ac:	64642d6d 	bge	$r11,$r13,25644(0x642c) # 1c00edd8 <_sidata+0x5b50>
1c0089b0:	3a686820 	0x3a686820
1c0089b4:	733a6d6d 	0x733a6d6d
1c0089b8:	6f742073 	bgeu	$r3,$r19,-35808(0x37420) # 1bfffdd8 <_start-0x228>
1c0089bc:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c0089c0:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01f334 <_sidata+0x160ac>
1c0089c4:	0a0d2e65 	0x0a0d2e65
1c0089c8:	00000000 	0x00000000
1c0089cc:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fe2c <_sidata+0x16ba4>
1c0089d0:	20692d20 	ll.w	$r0,$r9,26924(0x692c)
1c0089d4:	642d6d6d 	bge	$r11,$r13,11628(0x2d6c) # 1c00b740 <_sidata+0x24b8>
1c0089d8:	68682064 	bltu	$r3,$r4,26656(0x6820) # 1c00f1f8 <_sidata+0x5f70>
1c0089dc:	3a6d6d3a 	0x3a6d6d3a
1c0089e0:	74207373 	xvsubwev.h.b	$xr19,$xr27,$xr28
1c0089e4:	6573206f 	bge	$r3,$r15,95008(0x17320) # 1c01fd04 <_sidata+0x16a7c>
1c0089e8:	6e692074 	bgeu	$r3,$r20,-104160(0x26920) # 1bfef308 <_start-0x10cf8>
1c0089ec:	0a0d2e74 	0x0a0d2e74
1c0089f0:	00000000 	0x00000000
1c0089f4:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fe54 <_sidata+0x16bcc>
1c0089f8:	20662d20 	ll.w	$r0,$r9,26156(0x662c)
1c0089fc:	3a207a48 	0x3a207a48
1c008a00:	75706e69 	0x75706e69
1c008a04:	72662074 	0x72662074
1c008a08:	6e657165 	bgeu	$r11,$r5,-105104(0x26570) # 1bfeef78 <_start-0x11088>
1c008a0c:	69207963 	bltu	$r11,$r3,73848(0x12078) # 1c01aa84 <_sidata+0x117fc>
1c008a10:	6e69206e 	bgeu	$r3,$r14,-104160(0x26920) # 1bfef330 <_start-0x10cd0>
1c008a14:	65676574 	bge	$r11,$r20,92004(0x16764) # 1c01f178 <_sidata+0x15ef0>
1c008a18:	6f742072 	bgeu	$r3,$r18,-35808(0x37420) # 1bfffe38 <_start-0x1c8>
1c008a1c:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c008a20:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01fc90 <_sidata+0x16a08>
1c008a24:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00eb84 <_sidata+0x58fc>
1c008a28:	0a0d2e65 	0x0a0d2e65
1c008a2c:	00000000 	0x00000000
1c008a30:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffef98 <_start-0x1068>
1c008a34:	6170206b 	blt	$r3,$r11,94240(0x17020) # 1c01fa54 <_sidata+0x167cc>
1c008a38:	656d6172 	bge	$r11,$r18,93536(0x16d60) # 1c01f798 <_sidata+0x16510>
1c008a3c:	0d726574 	0x0d726574
1c008a40:	0000000a 	0x0000000a
1c008a44:	61766e69 	blt	$r19,$r9,95852(0x1766c) # 1c0200b0 <_sidata+0x16e28>
1c008a48:	2064696c 	ll.w	$r12,$r11,25704(0x6468)
1c008a4c:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01fcac <_sidata+0x16a24>
1c008a50:	0000006d 	0x0000006d
1c008a54:	68730a0d 	bltu	$r16,$r13,29448(0x7308) # 1c00fd5c <_sidata+0x6ad4>
1c008a58:	646c756f 	bge	$r11,$r15,27764(0x6c74) # 1c00f6cc <_sidata+0x6444>
1c008a5c:	20656220 	ll.w	$r0,$r17,25952(0x6560)
1c008a60:	736f6c63 	vssrarni.du.q	$vr3,$vr3,0x5b
1c008a64:	6f742065 	bgeu	$r3,$r5,-35808(0x37420) # 1bfffe84 <_start-0x17c>
1c008a68:	37323320 	0x37323320
1c008a6c:	48203836 	bceqz	$fcc1,-2613192(0x582038) # 1bd8aaa4 <_start-0x27555c>
1c008a70:	000a0d7a 	0x000a0d7a
1c008a74:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fed4 <_sidata+0x16c4c>
1c008a78:	20682d20 	ll.w	$r0,$r9,26668(0x682c)
1c008a7c:	20726f66 	ll.w	$r6,$r27,29292(0x726c)
1c008a80:	67617375 	bge	$r27,$r21,-40592(0x36170) # 1bffebf0 <_start-0x1410>
1c008a84:	000a0d65 	0x000a0d65
1c008a88:	30253032 	vldrepl.w	$vr18,$r1,1328(0x530)
1c008a8c:	252d6432 	stptr.w	$r18,$r1,11620(0x2d64)
1c008a90:	2d643230 	0x2d643230
1c008a94:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bcc4 <_sidata+0x2a3c>
1c008a98:	00000020 	0x00000020
1c008a9c:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bccc <_sidata+0x2a44>
1c008aa0:	3230253a 	0x3230253a
1c008aa4:	30253a64 	vldrepl.w	$vr4,$r19,1336(0x538)
1c008aa8:	00006432 	rdtimeh.w	$r18,$r1
1c008aac:	0000682d 	rdtime.d	$r13,$r1
1c008ab0:	0000732d 	0x0000732d
1c008ab4:	0000692d 	rdtime.d	$r13,$r9
1c008ab8:	0000662d 	rdtimeh.w	$r13,$r17
1c008abc:	1c008aac 	pcaddu12i	$r12,1109(0x455)
1c008ac0:	1c008ab0 	pcaddu12i	$r16,1109(0x455)
1c008ac4:	1c008ab4 	pcaddu12i	$r20,1109(0x455)
1c008ac8:	1c008ab8 	pcaddu12i	$r24,1109(0x455)
1c008acc:	64770a0d 	bge	$r16,$r13,30472(0x7708) # 1c0101d4 <_sidata+0x6f4c>
1c008ad0:	65742067 	bge	$r3,$r7,95264(0x17420) # 1c01fef0 <_sidata+0x16c68>
1c008ad4:	73207473 	0x73207473
1c008ad8:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008adc:	2e2e2e2e 	0x2e2e2e2e
1c008ae0:	63677261 	blt	$r19,$r1,-39056(0x36770) # 1bfff250 <_start-0xdb0>
1c008ae4:	0a64253a 	xvfmsub.d	$xr26,$xr9,$xr9,$xr8
1c008ae8:	00000000 	0x00000000
1c008aec:	55200a0d 	bl	-130736120(0x8352008) # 1435aaf4 <_start-0x7ca550c>
1c008af0:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f250 <_sidata+0x15fc8>
1c008af4:	6477203a 	bge	$r1,$r26,30496(0x7720) # 1c010214 <_sidata+0x6f8c>
1c008af8:	733c2067 	0x733c2067
1c008afc:	003e6365 	0x003e6365
1c008b00:	7375200a 	0x7375200a
1c008b04:	3a656761 	0x3a656761
1c008b08:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbd70 <_start-0x4290>
1c008b0c:	633c2077 	blt	$r3,$r23,-50144(0x33c20) # 1bffc72c <_start-0x38d4>
1c008b10:	61706968 	blt	$r11,$r8,94312(0x17068) # 1c01fb78 <_sidata+0x168f0>
1c008b14:	3e726464 	0x3e726464
1c008b18:	65723c20 	bge	$r1,$r0,94780(0x1723c) # 1c01fd54 <_sidata+0x16acc>
1c008b1c:	64646167 	bge	$r11,$r7,25696(0x6460) # 1c00ef7c <_sidata+0x5cf4>
1c008b20:	3c203e72 	0x3c203e72
1c008b24:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008b28:	000a3e61 	0x000a3e61
1c008b2c:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008b30:	78303d61 	0x78303d61
1c008b34:	00007825 	0x00007825
1c008b38:	72646461 	0x72646461
1c008b3c:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008b40:	00000078 	0x00000078
1c008b44:	7375200a 	0x7375200a
1c008b48:	3a656761 	0x3a656761
1c008b4c:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbdb4 <_start-0x424c>
1c008b50:	68633c72 	bltu	$r3,$r18,25404(0x633c) # 1c00ee8c <_sidata+0x5c04>
1c008b54:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00ecc4 <_sidata+0x5a3c>
1c008b58:	3c3e7264 	0x3c3e7264
1c008b5c:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c01f2c0 <_sidata+0x16038>
1c008b60:	3e726464 	0x3e726464
1c008b64:	0000000a 	0x0000000a
1c008b68:	72200a0d 	0x72200a0d
1c008b6c:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01ffcc <_sidata+0x16d44>
1c008b70:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008b74:	0d783230 	0x0d783230
1c008b78:	0000000a 	0x0000000a
1c008b7c:	44410a0d 	bnez	$r16,3424520(0x344108) # 1c34cc84 <_sidata+0x3439fc>
1c008b80:	733c2043 	0x733c2043
1c008b84:	203e6c65 	ll.w	$r5,$r3,15980(0x3e6c)
1c008b88:	7669643c 	0x7669643c
1c008b8c:	743c203e 	0x743c203e
1c008b90:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c008b94:	0000003e 	0x0000003e
1c008b98:	65730a0d 	bge	$r16,$r13,94984(0x17308) # 1c01fea0 <_sidata+0x16c18>
1c008b9c:	28203a6c 	ld.b	$r12,$r19,-2034(0x80e)
1c008ba0:	44412930 	bnez	$r9,-4177624(0x404128) # 1bc0ccc8 <_start-0x3f3338>
1c008ba4:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008ba8:	3128202c 	vstelm.w	$vr12,$r1,32(0x20),0x2
1c008bac:	43444129 	beqz	$r9,2573376(0x274440) # 1c27cfec <_sidata+0x273d64>
1c008bb0:	2c31495f 	vld	$vr31,$r10,-942(0xc52)
1c008bb4:	29322820 	st.b	$r0,$r1,-886(0xc8a)
1c008bb8:	41435256 	beqz	$r18,-2538672(0x594350) # 1bd9cf08 <_start-0x2630f8>
1c008bbc:	28202c50 	ld.b	$r16,$r2,-2037(0x80b)
1c008bc0:	2e312933 	0x2e312933
1c008bc4:	202c5630 	ll.w	$r16,$r17,11348(0x2c54)
1c008bc8:	56293428 	bl	10627380(0xa22934) # 1ca2b4fc <_sidata+0xa22274>
1c008bcc:	54554f52 	bl	-45591220(0xd48554c) # 1948e118 <_start-0x2b71ee8>
1c008bd0:	3528202c 	0x3528202c
1c008bd4:	302e3129 	vldrepl.w	$vr9,$r9,-464(0xe30)
1c008bd8:	72762856 	0x72762856
1c008bdc:	202c2931 	ll.w	$r17,$r9,11304(0x2c28)
1c008be0:	76293628 	0x76293628
1c008be4:	2c666572 	vst	$vr18,$r11,-1639(0x999)
1c008be8:	29372820 	st.b	$r0,$r1,-566(0xdca)
1c008bec:	61636164 	blt	$r11,$r4,90976(0x16360) # 1c01ef4c <_sidata+0x15cc4>
1c008bf0:	0000636d 	rdtimel.w	$r13,$r27
1c008bf4:	69640a0d 	bltu	$r16,$r13,91144(0x16408) # 1c01effc <_sidata+0x15d74>
1c008bf8:	30203a76 	vldrepl.w	$vr22,$r19,56(0x38)
1c008bfc:	3264203a 	0x3264203a
1c008c00:	3a31202c 	0x3a31202c
1c008c04:	00346420 	0x00346420
1c008c08:	61630a0d 	blt	$r16,$r13,90888(0x16308) # 1c01ef10 <_sidata+0x15c88>
1c008c0c:	6c75636c 	bgeu	$r27,$r12,30048(0x7560) # 1c01016c <_sidata+0x6ee4>
1c008c10:	25657461 	stptr.w	$r1,$r3,25972(0x6574)
1c008c14:	00000064 	0x00000064
1c008c18:	7375200a 	0x7375200a
1c008c1c:	3a656761 	0x3a656761
1c008c20:	74616220 	xvabsd.w	$xr0,$xr17,$xr24
1c008c24:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c008c28:	203e6e3c 	ll.w	$r28,$r17,15980(0x3e6c)
1c008c2c:	44412030 	bnez	$r1,-4177632(0x404120) # 1bc0cd4c <_start-0x3f32b4>
1c008c30:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008c34:	2031202c 	ll.w	$r12,$r1,12576(0x3120)
1c008c38:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
1c008c3c:	32202c30 	xvldrepl.w	$xr16,$r1,44(0x2c)
1c008c40:	49504720 	0x49504720
1c008c44:	000a314f 	0x000a314f
1c008c48:	72770a0d 	0x72770a0d
1c008c4c:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c008c50:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01feb0 <_sidata+0x16c28>
1c008c54:	6574656d 	bge	$r11,$r13,95332(0x17464) # 1c0200b8 <_sidata+0x16e30>
1c008c58:	00000072 	0x00000072
1c008c5c:	0000002e 	0x0000002e
1c008c60:	79706f63 	0x79706f63
1c008c64:	72726520 	0x72726520
1c008c68:	000a726f 	0x000a726f
1c008c6c:	7375200a 	0x7375200a
1c008c70:	3a656761 	0x3a656761
1c008c74:	6e697520 	bgeu	$r9,$r0,-104076(0x26974) # 1bfef5e8 <_start-0x10a18>
1c008c78:	3c207469 	0x3c207469
1c008c7c:	3e322f31 	0x3e322f31
1c008c80:	00000a20 	0x00000a20
1c008c84:	64690a0d 	bge	$r16,$r13,26888(0x6908) # 1c00f58c <_sidata+0x6304>
1c008c88:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008c8c:	000a0d78 	0x000a0d78
1c008c90:	7375200a 	0x7375200a
1c008c94:	3a656761 	0x3a656761
1c008c98:	72777320 	0x72777320
1c008c9c:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008ca0:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f100 <_sidata+0x5e78>
1c008ca4:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008ca8:	00000000 	0x00000000
1c008cac:	7277200a 	0x7277200a
1c008cb0:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008cb4:	72617473 	0x72617473
1c008cb8:	00000a74 	0x00000a74
1c008cbc:	0000202e 	clo.d	$r14,$r1
1c008cc0:	0000000a 	0x0000000a
1c008cc4:	7375200a 	0x7375200a
1c008cc8:	3a656761 	0x3a656761
1c008ccc:	65727320 	bge	$r25,$r0,94832(0x17270) # 1c01ff3c <_sidata+0x16cb4>
1c008cd0:	3c206461 	0x3c206461
1c008cd4:	72646461 	0x72646461
1c008cd8:	000a203e 	0x000a203e
1c008cdc:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01fefc <_sidata+0x16c74>
1c008ce0:	73206461 	0x73206461
1c008ce4:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008ce8:	0000000a 	0x0000000a
1c008cec:	6568630a 	bge	$r24,$r10,92256(0x16860) # 1c01f54c <_sidata+0x162c4>
1c008cf0:	65206b63 	bge	$r27,$r3,73832(0x12068) # 1c01ad58 <_sidata+0x11ad0>
1c008cf4:	726f7272 	0x726f7272
1c008cf8:	61647220 	blt	$r17,$r0,91248(0x16470) # 1c01f168 <_sidata+0x15ee0>
1c008cfc:	253d6174 	stptr.w	$r20,$r11,15712(0x3d60)
1c008d00:	61692078 	blt	$r3,$r24,92448(0x16920) # 1c01f620 <_sidata+0x16398>
1c008d04:	3d726464 	0x3d726464
1c008d08:	000a7825 	0x000a7825
1c008d0c:	7375200a 	0x7375200a
1c008d10:	3a656761 	0x3a656761
1c008d14:	72657320 	0x72657320
1c008d18:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008d1c:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f17c <_sidata+0x5ef4>
1c008d20:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008d24:	00000000 	0x00000000
1c008d28:	7265200a 	0x7265200a
1c008d2c:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008d30:	72617473 	0x72617473
1c008d34:	00000a74 	0x00000a74
1c008d38:	676f7270 	bge	$r19,$r16,-37008(0x36f70) # 1bfffca8 <_start-0x358>
1c008d3c:	206d6172 	ll.w	$r18,$r11,28000(0x6d60)
1c008d40:	72617473 	0x72617473
1c008d44:	00000a74 	0x00000a74
1c008d48:	72700a0d 	0x72700a0d
1c008d4c:	6172676f 	blt	$r27,$r15,94820(0x17264) # 1c01ffb0 <_sidata+0x16d28>
1c008d50:	6f64206d 	bgeu	$r3,$r13,-39904(0x36420) # 1bfff170 <_start-0xe90>
1c008d54:	000a656e 	0x000a656e
1c008d58:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f060 <_sidata+0x5dd8>
1c008d5c:	6f6b6365 	bgeu	$r27,$r5,-38048(0x36b60) # 1bfff8bc <_start-0x744>
1c008d60:	73207475 	0x73207475
1c008d64:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008d68:	0000000a 	0x0000000a
1c008d6c:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f074 <_sidata+0x5dec>
1c008d70:	206b6365 	ll.w	$r5,$r27,27488(0x6b60)
1c008d74:	656e6f64 	bge	$r27,$r4,93804(0x16e6c) # 1c01fbe0 <_sidata+0x16958>
1c008d78:	0000000a 	0x0000000a
1c008d7c:	6f630a0d 	bgeu	$r16,$r13,-40184(0x36308) # 1bfff084 <_start-0xf7c>
1c008d80:	72697970 	0x72697970
1c008d84:	73206d61 	0x73206d61
1c008d88:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008d8c:	00000a0d 	0x00000a0d
1c008d90:	79706f63 	0x79706f63
1c008d94:	72726520 	0x72726520
1c008d98:	2520726f 	stptr.w	$r15,$r19,8304(0x2070)
1c008d9c:	78252c78 	0x78252c78
1c008da0:	0a78252c 	0x0a78252c
1c008da4:	00000000 	0x00000000
1c008da8:	3c200a0d 	0x3c200a0d
1c008dac:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01f9cc <_sidata+0x16744>
1c008db0:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c008db4:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeae18 <_start-0x151e8>
1c008db8:	3a636e75 	0x3a636e75
1c008dbc:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c008dc0:	0a0d3e20 	0x0a0d3e20
1c008dc4:	00000000 	0x00000000
1c008dc8:	2e2e2e0a 	0x2e2e2e0a
1c008dcc:	2e2e2e2e 	0x2e2e2e2e
1c008dd0:	2e2e2e2e 	0x2e2e2e2e
1c008dd4:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c008dd8:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19ed2c <_sidata+0x195aa4>
1c008ddc:	2e2e544e 	0x2e2e544e
1c008de0:	2e2e2e2e 	0x2e2e2e2e
1c008de4:	2e2e2e2e 	0x2e2e2e2e
1c008de8:	2e2e2e2e 	0x2e2e2e2e
1c008dec:	00000d0a 	0x00000d0a
1c008df0:	2d2d2d0a 	0x2d2d2d0a
1c008df4:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000360 <cpu_wait+0x2b8>
1c008df8:	746e4968 	0x746e4968
1c008dfc:	79654b3a 	0x79654b3a
1c008e00:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfeef68 <_start-0x11098>
1c008e04:	3a6c656e 	0x3a6c656e
1c008e08:	78257830 	0x78257830
1c008e0c:	0000000a 	0x0000000a
1c008e10:	2e2e2e0a 	0x2e2e2e0a
1c008e14:	2e2e2e2e 	0x2e2e2e2e
1c008e18:	2e2e2e2e 	0x2e2e2e2e
1c008e1c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39d048 <_sidata+0x393dc0>
1c008e20:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1d47c <_start-0x2e2b84>
1c008e24:	2e2e4c49 	0x2e2e4c49
1c008e28:	2e2e2e2e 	0x2e2e2e2e
1c008e2c:	2e2e2e2e 	0x2e2e2e2e
1c008e30:	2e2e2e2e 	0x2e2e2e2e
1c008e34:	00000d0a 	0x00000d0a
1c008e38:	2e2e2e0a 	0x2e2e2e0a
1c008e3c:	2e2e2e2e 	0x2e2e2e2e
1c008e40:	2e2e2e2e 	0x2e2e2e2e
1c008e44:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38cf70 <_sidata+0x383ce8>
1c008e48:	2e2e2e43 	0x2e2e2e43
1c008e4c:	2e2e2e2e 	0x2e2e2e2e
1c008e50:	2e2e2e2e 	0x2e2e2e2e
1c008e54:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c008e58:	0000000d 	0x0000000d
1c008e5c:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c0200c0 <_sidata+0x16e38>
1c008e60:	72656870 	0x72656870
1c008e64:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c008e68:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01fbd0 <_sidata+0x16948>
1c008e6c:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00f18c <_sidata+0x5f04>
1c008e70:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c008e74:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0202e0 <_sidata+0x17058>
1c008e78:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c008e7c:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c008e80:	00000000 	0x00000000
1c008e84:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c008e88:	65722031 	bge	$r1,$r17,94752(0x17220) # 1c0200a8 <_sidata+0x16e20>
1c008e8c:	303a7663 	0x303a7663
1c008e90:	0a782578 	0x0a782578
1c008e94:	00000000 	0x00000000
1c008e98:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c020104 <_sidata+0x16e7c>
1c008e9c:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01f7f0 <_sidata+0x16568>
1c008ea0:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffaf10 <_start-0x50f0>
1c008ea4:	7261656c 	0x7261656c
1c008ea8:	746e6920 	0x746e6920
1c008eac:	75727265 	0x75727265
1c008eb0:	2e2e7470 	0x2e2e7470
1c008eb4:	0000000a 	0x0000000a

1c008eb8 <Ext_IrqHandle>:
1c008eb8:	1c006e0c 	pcaddu12i	$r12,880(0x370)
1c008ebc:	1c006e58 	pcaddu12i	$r24,882(0x372)
1c008ec0:	1c006ea4 	pcaddu12i	$r4,885(0x375)
1c008ec4:	1c006ef0 	pcaddu12i	$r16,887(0x377)
1c008ec8:	1c006f3c 	pcaddu12i	$r28,889(0x379)
1c008ecc:	1c006f88 	pcaddu12i	$r8,892(0x37c)
1c008ed0:	1c006fd4 	pcaddu12i	$r20,894(0x37e)
1c008ed4:	1c007020 	pcaddu12i	$r0,897(0x381)
1c008ed8:	1c00706c 	pcaddu12i	$r12,899(0x383)
1c008edc:	1c0070b8 	pcaddu12i	$r24,901(0x385)
1c008ee0:	1c007104 	pcaddu12i	$r4,904(0x388)
1c008ee4:	1c007150 	pcaddu12i	$r16,906(0x38a)
1c008ee8:	1c00719c 	pcaddu12i	$r28,908(0x38c)
1c008eec:	1c0071e8 	pcaddu12i	$r8,911(0x38f)
1c008ef0:	1c007234 	pcaddu12i	$r20,913(0x391)
1c008ef4:	1c007280 	pcaddu12i	$r0,916(0x394)
1c008ef8:	1c0072cc 	pcaddu12i	$r12,918(0x396)
1c008efc:	1c007318 	pcaddu12i	$r24,920(0x398)
1c008f00:	1c007364 	pcaddu12i	$r4,923(0x39b)
1c008f04:	1c0073b0 	pcaddu12i	$r16,925(0x39d)
1c008f08:	1c0073fc 	pcaddu12i	$r28,927(0x39f)
1c008f0c:	1c007448 	pcaddu12i	$r8,930(0x3a2)
1c008f10:	1c007494 	pcaddu12i	$r20,932(0x3a4)
1c008f14:	1c0074e0 	pcaddu12i	$r0,935(0x3a7)
1c008f18:	1c00752c 	pcaddu12i	$r12,937(0x3a9)
1c008f1c:	1c007578 	pcaddu12i	$r24,939(0x3ab)
1c008f20:	1c0075c4 	pcaddu12i	$r4,942(0x3ae)
1c008f24:	1c007610 	pcaddu12i	$r16,944(0x3b0)
1c008f28:	1c00765c 	pcaddu12i	$r28,946(0x3b2)
1c008f2c:	1c0076a8 	pcaddu12i	$r8,949(0x3b5)
1c008f30:	1c0076f4 	pcaddu12i	$r20,951(0x3b7)
1c008f34:	1c007740 	pcaddu12i	$r0,954(0x3ba)
1c008f38:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f3c:	1c0079dc 	pcaddu12i	$r28,974(0x3ce)
1c008f40:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f44:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f48:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f4c:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f50:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f54:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f58:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f5c:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f60:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f64:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f68:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f6c:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f70:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f74:	1c007a2c 	pcaddu12i	$r12,977(0x3d1)
1c008f78:	1c0079f8 	pcaddu12i	$r24,975(0x3cf)

1c008f7c <__FUNCTION__.1575>:
1c008f7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0203f4 <_sidata+0x1716c>
1c008f80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ffe4 <_sidata+0x16d5c>
1c008f84:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffbfe4 <_start-0x401c>
1c008f88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0000f8 <cpu_wait+0x50>
1c008f8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fdec <_sidata+0x6b64>
1c008f90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f94 <__FUNCTION__.1579>:
1c008f94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02040c <_sidata+0x17184>
1c008f98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01fffc <_sidata+0x16d74>
1c008f9c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffc0fc <_start-0x3f04>
1c008fa0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000110 <cpu_wait+0x68>
1c008fa4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe04 <_sidata+0x6b7c>
1c008fa8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fac <__FUNCTION__.1583>:
1c008fac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020424 <_sidata+0x1719c>
1c008fb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020014 <_sidata+0x16d8c>
1c008fb4:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffc214 <_start-0x3dec>
1c008fb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000128 <cpu_wait+0x80>
1c008fbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe1c <_sidata+0x6b94>
1c008fc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fc4 <__FUNCTION__.1587>:
1c008fc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02043c <_sidata+0x171b4>
1c008fc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02002c <_sidata+0x16da4>
1c008fcc:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffc32c <_start-0x3cd4>
1c008fd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000140 <cpu_wait+0x98>
1c008fd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe34 <_sidata+0x6bac>
1c008fd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fdc <__FUNCTION__.1591>:
1c008fdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020454 <_sidata+0x171cc>
1c008fe0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020044 <_sidata+0x16dbc>
1c008fe4:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffc444 <_start-0x3bbc>
1c008fe8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000158 <cpu_wait+0xb0>
1c008fec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe4c <_sidata+0x6bc4>
1c008ff0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008ff4 <__FUNCTION__.1595>:
1c008ff4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02046c <_sidata+0x171e4>
1c008ff8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02005c <_sidata+0x16dd4>
1c008ffc:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffc55c <_start-0x3aa4>
1c009000:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000170 <cpu_wait+0xc8>
1c009004:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe64 <_sidata+0x6bdc>
1c009008:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00900c <__FUNCTION__.1599>:
1c00900c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020484 <_sidata+0x171fc>
1c009010:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020074 <_sidata+0x16dec>
1c009014:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffc674 <_start-0x398c>
1c009018:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000188 <cpu_wait+0xe0>
1c00901c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe7c <_sidata+0x6bf4>
1c009020:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009024 <__FUNCTION__.1603>:
1c009024:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02049c <_sidata+0x17214>
1c009028:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02008c <_sidata+0x16e04>
1c00902c:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffc78c <_start-0x3874>
1c009030:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001a0 <cpu_wait+0xf8>
1c009034:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe94 <_sidata+0x6c0c>
1c009038:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00903c <__FUNCTION__.1607>:
1c00903c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204b4 <_sidata+0x1722c>
1c009040:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200a4 <_sidata+0x16e1c>
1c009044:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffc0a4 <_start-0x3f5c>
1c009048:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001b8 <cpu_wait+0x110>
1c00904c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00feac <_sidata+0x6c24>
1c009050:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009054 <__FUNCTION__.1611>:
1c009054:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204cc <_sidata+0x17244>
1c009058:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200bc <_sidata+0x16e34>
1c00905c:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffc1bc <_start-0x3e44>
1c009060:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001d0 <cpu_wait+0x128>
1c009064:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fec4 <_sidata+0x6c3c>
1c009068:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00906c <__FUNCTION__.1615>:
1c00906c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204e4 <_sidata+0x1725c>
1c009070:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200d4 <_sidata+0x16e4c>
1c009074:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffc2d4 <_start-0x3d2c>
1c009078:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001e8 <cpu_wait+0x140>
1c00907c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fedc <_sidata+0x6c54>
1c009080:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009084 <__FUNCTION__.1619>:
1c009084:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204fc <_sidata+0x17274>
1c009088:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200ec <_sidata+0x16e64>
1c00908c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffc3ec <_start-0x3c14>
1c009090:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000200 <cpu_wait+0x158>
1c009094:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fef4 <_sidata+0x6c6c>
1c009098:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00909c <__FUNCTION__.1623>:
1c00909c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020514 <_sidata+0x1728c>
1c0090a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020104 <_sidata+0x16e7c>
1c0090a4:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffc504 <_start-0x3afc>
1c0090a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000218 <cpu_wait+0x170>
1c0090ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff0c <_sidata+0x6c84>
1c0090b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090b4 <__FUNCTION__.1627>:
1c0090b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02052c <_sidata+0x172a4>
1c0090b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02011c <_sidata+0x16e94>
1c0090bc:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffc61c <_start-0x39e4>
1c0090c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000230 <cpu_wait+0x188>
1c0090c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff24 <_sidata+0x6c9c>
1c0090c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090cc <__FUNCTION__.1631>:
1c0090cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020544 <_sidata+0x172bc>
1c0090d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020134 <_sidata+0x16eac>
1c0090d4:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffc734 <_start-0x38cc>
1c0090d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000248 <cpu_wait+0x1a0>
1c0090dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff3c <_sidata+0x6cb4>
1c0090e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090e4 <__FUNCTION__.1635>:
1c0090e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02055c <_sidata+0x172d4>
1c0090e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02014c <_sidata+0x16ec4>
1c0090ec:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffc84c <_start-0x37b4>
1c0090f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000260 <cpu_wait+0x1b8>
1c0090f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff54 <_sidata+0x6ccc>
1c0090f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090fc <__FUNCTION__.1639>:
1c0090fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020574 <_sidata+0x172ec>
1c009100:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020164 <_sidata+0x16edc>
1c009104:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffc164 <_start-0x3e9c>
1c009108:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000278 <cpu_wait+0x1d0>
1c00910c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff6c <_sidata+0x6ce4>
1c009110:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009114 <__FUNCTION__.1643>:
1c009114:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02058c <_sidata+0x17304>
1c009118:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02017c <_sidata+0x16ef4>
1c00911c:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffc27c <_start-0x3d84>
1c009120:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000290 <cpu_wait+0x1e8>
1c009124:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff84 <_sidata+0x6cfc>
1c009128:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00912c <__FUNCTION__.1647>:
1c00912c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205a4 <_sidata+0x1731c>
1c009130:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020194 <_sidata+0x16f0c>
1c009134:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffc394 <_start-0x3c6c>
1c009138:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002a8 <cpu_wait+0x200>
1c00913c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff9c <_sidata+0x6d14>
1c009140:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009144 <__FUNCTION__.1651>:
1c009144:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205bc <_sidata+0x17334>
1c009148:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201ac <_sidata+0x16f24>
1c00914c:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffc4ac <_start-0x3b54>
1c009150:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002c0 <cpu_wait+0x218>
1c009154:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffb4 <_sidata+0x6d2c>
1c009158:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00915c <__FUNCTION__.1655>:
1c00915c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205d4 <_sidata+0x1734c>
1c009160:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201c4 <_sidata+0x16f3c>
1c009164:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffc5c4 <_start-0x3a3c>
1c009168:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002d8 <cpu_wait+0x230>
1c00916c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffcc <_sidata+0x6d44>
1c009170:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009174 <__FUNCTION__.1659>:
1c009174:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205ec <_sidata+0x17364>
1c009178:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201dc <_sidata+0x16f54>
1c00917c:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffc6dc <_start-0x3924>
1c009180:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002f0 <cpu_wait+0x248>
1c009184:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffe4 <_sidata+0x6d5c>
1c009188:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00918c <__FUNCTION__.1663>:
1c00918c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020604 <_sidata+0x1737c>
1c009190:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201f4 <_sidata+0x16f6c>
1c009194:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffc7f4 <_start-0x380c>
1c009198:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000308 <cpu_wait+0x260>
1c00919c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fffc <_sidata+0x6d74>
1c0091a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091a4 <__FUNCTION__.1667>:
1c0091a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02061c <_sidata+0x17394>
1c0091a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02020c <_sidata+0x16f84>
1c0091ac:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffc90c <_start-0x36f4>
1c0091b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000320 <cpu_wait+0x278>
1c0091b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010014 <_sidata+0x6d8c>
1c0091b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091bc <__FUNCTION__.1671>:
1c0091bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020634 <_sidata+0x173ac>
1c0091c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020224 <_sidata+0x16f9c>
1c0091c4:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffc228 <_start-0x3dd8>
1c0091c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000338 <cpu_wait+0x290>
1c0091cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01002c <_sidata+0x6da4>
1c0091d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091d4 <__FUNCTION__.1675>:
1c0091d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02064c <_sidata+0x173c4>
1c0091d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02023c <_sidata+0x16fb4>
1c0091dc:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffc340 <_start-0x3cc0>
1c0091e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000350 <cpu_wait+0x2a8>
1c0091e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010044 <_sidata+0x6dbc>
1c0091e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091ec <__FUNCTION__.1679>:
1c0091ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020664 <_sidata+0x173dc>
1c0091f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020254 <_sidata+0x16fcc>
1c0091f4:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffc458 <_start-0x3ba8>
1c0091f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000368 <cpu_wait+0x2c0>
1c0091fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01005c <_sidata+0x6dd4>
1c009200:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009204 <__FUNCTION__.1683>:
1c009204:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02067c <_sidata+0x173f4>
1c009208:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02026c <_sidata+0x16fe4>
1c00920c:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffc570 <_start-0x3a90>
1c009210:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000380 <cpu_wait+0x2d8>
1c009214:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010074 <_sidata+0x6dec>
1c009218:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00921c <__FUNCTION__.1687>:
1c00921c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020694 <_sidata+0x1740c>
1c009220:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020284 <_sidata+0x16ffc>
1c009224:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffc688 <_start-0x3978>
1c009228:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000398 <cpu_wait+0x2f0>
1c00922c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01008c <_sidata+0x6e04>
1c009230:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009234 <__FUNCTION__.1691>:
1c009234:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206ac <_sidata+0x17424>
1c009238:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02029c <_sidata+0x17014>
1c00923c:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffc7a0 <_start-0x3860>
1c009240:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003b0 <cpu_wait+0x308>
1c009244:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100a4 <_sidata+0x6e1c>
1c009248:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00924c <__FUNCTION__.1695>:
1c00924c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206c4 <_sidata+0x1743c>
1c009250:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202b4 <_sidata+0x1702c>
1c009254:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffc8b8 <_start-0x3748>
1c009258:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003c8 <cpu_wait+0x320>
1c00925c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100bc <_sidata+0x6e34>
1c009260:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009264 <__FUNCTION__.1699>:
1c009264:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206dc <_sidata+0x17454>
1c009268:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202cc <_sidata+0x17044>
1c00926c:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffc9d0 <_start-0x3630>
1c009270:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003e0 <cpu_wait+0x338>
1c009274:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100d4 <_sidata+0x6e4c>
1c009278:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00927c <__FUNCTION__.1708>:
1c00927c:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c0006f4 <cpu_wait+0x64c>
1c009280:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100e0 <_sidata+0x6e58>
1c009284:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007b69 	pcaddu12i	$r9,987(0x3db)
80001008:	1c007b60 	pcaddu12i	$r0,987(0x3db)

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
