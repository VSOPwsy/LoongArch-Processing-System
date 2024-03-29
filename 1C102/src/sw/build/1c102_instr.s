
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
1c00000c:	0387b1ef 	ori	$r15,$r15,0x1ec
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
1c0000a0:	5444b000 	bl	17584(0x44b0) # 1c004550 <main>
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
1c001090:	5466dc00 	bl	26332(0x66dc) # 1c00776c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54671c00 	bl	26396(0x671c) # 1c0077b4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5467a000 	bl	26528(0x67a0) # 1c007840 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5467d400 	bl	26580(0x67d4) # 1c00787c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5465ec00 	bl	26092(0x65ec) # 1c00769c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5469f800 	bl	27128(0x69f8) # 1c007ab0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54688c00 	bl	26764(0x688c) # 1c007954 <intc_handler>
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

1c001b5c <ls1x_puts>:
ls1x_puts():
1c001b5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b70:	50003000 	b	48(0x30) # 1c001ba0 <ls1x_puts+0x44>
1c001b74:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b78:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b7c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b88 <ls1x_puts+0x2c>
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
1c001bb0:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b74 <ls1x_puts+0x18>
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
1c001c68:	02bae18c 	addi.w	$r12,$r12,-328(0xeb8)
1c001c6c:	001031ac 	add.w	$r12,$r13,$r12
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	4c000180 	jirl	$r0,$r12,0
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	00150184 	move	$r4,$r12
1c001c84:	57fedbff 	bl	-296(0xffffed8) # 1c001b5c <ls1x_puts>
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
1c0021e8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
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
1c002214:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
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
1c002498:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c00249c:	029f518c 	addi.w	$r12,$r12,2004(0x7d4)
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
1c0034fc:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c003500:	57e6cfff 	bl	-6452(0xfffe6cc) # 1c001bcc <myprintf>
1c003504:	50002800 	b	40(0x28) # 1c00352c <I2C_Send7bitAddress+0x80>
1c003508:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00350c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c003510:	0014b1ac 	and	$r12,$r13,$r12
1c003514:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003518:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00351c:	00150185 	move	$r5,$r12
1c003520:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003524:	02a2e084 	addi.w	$r4,$r4,-1864(0x8b8)
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
1c00364c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003650:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
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
1c00368c:	029e4084 	addi.w	$r4,$r4,1936(0x790)
1c003690:	57e53fff 	bl	-6852(0xfffe53c) # 1c001bcc <myprintf>
1c003694:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003698:	0343fd8c 	andi	$r12,$r12,0xff
1c00369c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0036a0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0036a4:	00150185 	move	$r5,$r12
1c0036a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0036ac:	029e1084 	addi.w	$r4,$r4,1924(0x784)
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
1c0036e8:	029cd084 	addi.w	$r4,$r4,1844(0x734)
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
1c003720:	029bf084 	addi.w	$r4,$r4,1788(0x6fc)
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
1c003798:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
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
1c0037d4:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c0037d8:	57e3f7ff 	bl	-7180(0xfffe3f4) # 1c001bcc <myprintf>
1c0037dc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037e0:	00150185 	move	$r5,$r12
1c0037e4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037e8:	0299f084 	addi.w	$r4,$r4,1660(0x67c)
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
1c003830:	0298a084 	addi.w	$r4,$r4,1576(0x628)
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
1c00386c:	0297b084 	addi.w	$r4,$r4,1516(0x5ec)
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
1c003fb4:	02bd1084 	addi.w	$r4,$r4,-188(0xf44)
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
1c003fe0:	02bbd084 	addi.w	$r4,$r4,-268(0xef4)
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
1c004024:	02bb7084 	addi.w	$r4,$r4,-292(0xedc)
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

1c004320 <do_exit>:
do_exit():
1c004320:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004324:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004328:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00432c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004330:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	00150184 	move	$r4,$r12
1c00433c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004340:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004344:	4c000020 	jirl	$r0,$r1,0

1c004348 <do_help>:
do_help():
1c004348:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00434c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004350:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004354:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004358:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00435c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004360:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004364:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004368:	580015ac 	beq	$r13,$r12,20(0x14) # 1c00437c <do_help+0x34>
1c00436c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004370:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004374:	580091ac 	beq	$r13,$r12,144(0x90) # 1c004404 <do_help+0xbc>
1c004378:	5001ac00 	b	428(0x1ac) # 1c004524 <do_help+0x1dc>
1c00437c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004380:	0282d084 	addi.w	$r4,$r4,180(0xb4)
1c004384:	57d84bff 	bl	-10168(0xfffd848) # 1c001bcc <myprintf>
1c004388:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00438c:	50004400 	b	68(0x44) # 1c0043d0 <do_help+0x88>
1c004390:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004394:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c004398:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c00439c:	02bae1ad 	addi.w	$r13,$r13,-328(0xeb8)
1c0043a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043a4:	0040918c 	slli.w	$r12,$r12,0x4
1c0043a8:	001031ac 	add.w	$r12,$r13,$r12
1c0043ac:	2880018c 	ld.w	$r12,$r12,0
1c0043b0:	00150186 	move	$r6,$r12
1c0043b4:	001501c5 	move	$r5,$r14
1c0043b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0043bc:	02822084 	addi.w	$r4,$r4,136(0x88)
1c0043c0:	57d80fff 	bl	-10228(0xfffd80c) # 1c001bcc <myprintf>
1c0043c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0043d0:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0043d4:	02ba01ad 	addi.w	$r13,$r13,-384(0xe80)
1c0043d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043dc:	0040918c 	slli.w	$r12,$r12,0x4
1c0043e0:	001031ac 	add.w	$r12,$r13,$r12
1c0043e4:	2880018c 	ld.w	$r12,$r12,0
1c0043e8:	00150185 	move	$r5,$r12
1c0043ec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0043f0:	02b95084 	addi.w	$r4,$r4,-428(0xe54)
1c0043f4:	57e663ff 	bl	-6560(0xfffe660) # 1c002a54 <strcmp>
1c0043f8:	0015008c 	move	$r12,$r4
1c0043fc:	47ff959f 	bnez	$r12,-108(0x7fff94) # 1c004390 <do_help+0x48>
1c004400:	50013800 	b	312(0x138) # 1c004538 <do_help+0x1f0>
1c004404:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004408:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00440c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004410:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004414:	5000a000 	b	160(0xa0) # 1c0044b4 <do_help+0x16c>
1c004418:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c00441c:	02b8e1ad 	addi.w	$r13,$r13,-456(0xe38)
1c004420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004424:	0040918c 	slli.w	$r12,$r12,0x4
1c004428:	001031ac 	add.w	$r12,$r13,$r12
1c00442c:	2880018c 	ld.w	$r12,$r12,0
1c004430:	00150185 	move	$r5,$r12
1c004434:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c004438:	57e61fff 	bl	-6628(0xfffe61c) # 1c002a54 <strcmp>
1c00443c:	0015008c 	move	$r12,$r4
1c004440:	44006980 	bnez	$r12,104(0x68) # 1c0044a8 <do_help+0x160>
1c004444:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004448:	02b831ad 	addi.w	$r13,$r13,-500(0xe0c)
1c00444c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004450:	0040918c 	slli.w	$r12,$r12,0x4
1c004454:	001031ac 	add.w	$r12,$r13,$r12
1c004458:	2880018e 	ld.w	$r14,$r12,0
1c00445c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004460:	02b7d1ad 	addi.w	$r13,$r13,-524(0xdf4)
1c004464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004468:	0040918c 	slli.w	$r12,$r12,0x4
1c00446c:	001031ac 	add.w	$r12,$r13,$r12
1c004470:	2880218f 	ld.w	$r15,$r12,8(0x8)
1c004474:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004478:	02b771ad 	addi.w	$r13,$r13,-548(0xddc)
1c00447c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004480:	0040918c 	slli.w	$r12,$r12,0x4
1c004484:	001031ac 	add.w	$r12,$r13,$r12
1c004488:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00448c:	00150187 	move	$r7,$r12
1c004490:	001501e6 	move	$r6,$r15
1c004494:	001501c5 	move	$r5,$r14
1c004498:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00449c:	02bed084 	addi.w	$r4,$r4,-76(0xfb4)
1c0044a0:	57d72fff 	bl	-10452(0xfffd72c) # 1c001bcc <myprintf>
1c0044a4:	50004000 	b	64(0x40) # 1c0044e4 <do_help+0x19c>
1c0044a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044b4:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0044b8:	02b671ad 	addi.w	$r13,$r13,-612(0xd9c)
1c0044bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044c0:	0040918c 	slli.w	$r12,$r12,0x4
1c0044c4:	001031ac 	add.w	$r12,$r13,$r12
1c0044c8:	2880018c 	ld.w	$r12,$r12,0
1c0044cc:	00150185 	move	$r5,$r12
1c0044d0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044d4:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c0044d8:	57e57fff 	bl	-6788(0xfffe57c) # 1c002a54 <strcmp>
1c0044dc:	0015008c 	move	$r12,$r4
1c0044e0:	47ff399f 	bnez	$r12,-200(0x7fff38) # 1c004418 <do_help+0xd0>
1c0044e4:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0044e8:	02b5b1ad 	addi.w	$r13,$r13,-660(0xd6c)
1c0044ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044f0:	0040918c 	slli.w	$r12,$r12,0x4
1c0044f4:	001031ac 	add.w	$r12,$r13,$r12
1c0044f8:	2880018c 	ld.w	$r12,$r12,0
1c0044fc:	00150185 	move	$r5,$r12
1c004500:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004504:	02b50084 	addi.w	$r4,$r4,-704(0xd40)
1c004508:	57e54fff 	bl	-6836(0xfffe54c) # 1c002a54 <strcmp>
1c00450c:	0015008c 	move	$r12,$r4
1c004510:	44002580 	bnez	$r12,36(0x24) # 1c004534 <do_help+0x1ec>
1c004514:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004518:	02bd1084 	addi.w	$r4,$r4,-188(0xf44)
1c00451c:	57d6b3ff 	bl	-10576(0xfffd6b0) # 1c001bcc <myprintf>
1c004520:	50001400 	b	20(0x14) # 1c004534 <do_help+0x1ec>
1c004524:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004528:	02bd5084 	addi.w	$r4,$r4,-172(0xf54)
1c00452c:	57d6a3ff 	bl	-10592(0xfffd6a0) # 1c001bcc <myprintf>
1c004530:	50000800 	b	8(0x8) # 1c004538 <do_help+0x1f0>
1c004534:	03400000 	andi	$r0,$r0,0x0
1c004538:	0015000c 	move	$r12,$r0
1c00453c:	00150184 	move	$r4,$r12
1c004540:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004544:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004548:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00454c:	4c000020 	jirl	$r0,$r1,0

1c004550 <main>:
main():
1c004550:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004554:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004558:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00455c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004560:	57db33ff 	bl	-9424(0xfffdb30) # 1c002090 <EnableInt>
1c004564:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004568:	0380118c 	ori	$r12,$r12,0x4
1c00456c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c004570:	2980018d 	st.w	$r13,$r12,0
1c004574:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c004578:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c00457c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004580:	50001400 	b	20(0x14) # 1c004594 <main+0x44>
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	03400000 	andi	$r0,$r0,0x0
1c004594:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004598:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00459c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0045a0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004584 <main+0x34>
1c0045a4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0045a8:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c0045ac:	57de57ff 	bl	-8620(0xfffde54) # 1c002400 <soc_myprintf>
1c0045b0:	140000ac 	lu12i.w	$r12,5(0x5)
1c0045b4:	03accd8c 	ori	$r12,$r12,0xb33
1c0045b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0045bc:	50001400 	b	20(0x14) # 1c0045d0 <main+0x80>
1c0045c0:	03400000 	andi	$r0,$r0,0x0
1c0045c4:	03400000 	andi	$r0,$r0,0x0
1c0045c8:	03400000 	andi	$r0,$r0,0x0
1c0045cc:	03400000 	andi	$r0,$r0,0x0
1c0045d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0045d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0045d8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0045dc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0045c0 <main+0x70>
1c0045e0:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0045e4:	02bae18c 	addi.w	$r12,$r12,-328(0xeb8)
1c0045e8:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0045ec:	28bf42c5 	ld.w	$r5,$r22,-48(0xfd0)
1c0045f0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0045f4:	02bac084 	addi.w	$r4,$r4,-336(0xeb0)
1c0045f8:	57de0bff 	bl	-8696(0xfffde08) # 1c002400 <soc_myprintf>
1c0045fc:	140000ac 	lu12i.w	$r12,5(0x5)
1c004600:	03accd8c 	ori	$r12,$r12,0xb33
1c004604:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004608:	50001400 	b	20(0x14) # 1c00461c <main+0xcc>
1c00460c:	03400000 	andi	$r0,$r0,0x0
1c004610:	03400000 	andi	$r0,$r0,0x0
1c004614:	03400000 	andi	$r0,$r0,0x0
1c004618:	03400000 	andi	$r0,$r0,0x0
1c00461c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004620:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004624:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c004628:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00460c <main+0xbc>
1c00462c:	1488868c 	lu12i.w	$r12,279604(0x44434)
1c004630:	0389058c 	ori	$r12,$r12,0x241
1c004634:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c004638:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00463c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004640:	02b9c084 	addi.w	$r4,$r4,-400(0xe70)
1c004644:	57ddbfff 	bl	-8772(0xfffddbc) # 1c002400 <soc_myprintf>
1c004648:	140000ac 	lu12i.w	$r12,5(0x5)
1c00464c:	03accd8c 	ori	$r12,$r12,0xb33
1c004650:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004654:	50001400 	b	20(0x14) # 1c004668 <main+0x118>
1c004658:	03400000 	andi	$r0,$r0,0x0
1c00465c:	03400000 	andi	$r0,$r0,0x0
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	03400000 	andi	$r0,$r0,0x0
1c004668:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00466c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004670:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c004674:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004658 <main+0x108>
1c004678:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c00467c:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c004680:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c004684:	00150185 	move	$r5,$r12
1c004688:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00468c:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c004690:	57dd73ff 	bl	-8848(0xfffdd70) # 1c002400 <soc_myprintf>
1c004694:	140000ac 	lu12i.w	$r12,5(0x5)
1c004698:	03accd8c 	ori	$r12,$r12,0xb33
1c00469c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0046a0:	50001400 	b	20(0x14) # 1c0046b4 <main+0x164>
1c0046a4:	03400000 	andi	$r0,$r0,0x0
1c0046a8:	03400000 	andi	$r0,$r0,0x0
1c0046ac:	03400000 	andi	$r0,$r0,0x0
1c0046b0:	03400000 	andi	$r0,$r0,0x0
1c0046b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0046b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046bc:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0046c0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0046a4 <main+0x154>
1c0046c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046c8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0046cc:	57e6b3ff 	bl	-6480(0xfffe6b0) # 1c002d7c <gpio_init>
1c0046d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046d4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0046d8:	57e6a7ff 	bl	-6492(0xfffe6a4) # 1c002d7c <gpio_init>
1c0046dc:	57e893ff 	bl	-6000(0xfffe890) # 1c002f6c <uart1_interrupt>
1c0046e0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0046e4:	03bf918c 	ori	$r12,$r12,0xfe4
1c0046e8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0046ec:	50001400 	b	20(0x14) # 1c004700 <main+0x1b0>
1c0046f0:	03400000 	andi	$r0,$r0,0x0
1c0046f4:	03400000 	andi	$r0,$r0,0x0
1c0046f8:	03400000 	andi	$r0,$r0,0x0
1c0046fc:	03400000 	andi	$r0,$r0,0x0
1c004700:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004704:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004708:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c00470c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0046f0 <main+0x1a0>
1c004710:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004714:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004718:	57e75fff 	bl	-6308(0xfffe75c) # 1c002e74 <gpio_write>
1c00471c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c004720:	03bf918c 	ori	$r12,$r12,0xfe4
1c004724:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c004728:	50001400 	b	20(0x14) # 1c00473c <main+0x1ec>
1c00472c:	03400000 	andi	$r0,$r0,0x0
1c004730:	03400000 	andi	$r0,$r0,0x0
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	03400000 	andi	$r0,$r0,0x0
1c00473c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004740:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004744:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c004748:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00472c <main+0x1dc>
1c00474c:	00150005 	move	$r5,$r0
1c004750:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004754:	57e723ff 	bl	-6368(0xfffe720) # 1c002e74 <gpio_write>
1c004758:	53ff8bff 	b	-120(0xfffff88) # 1c0046e0 <main+0x190>

1c00475c <UART1_HANDLER>:
UART1_HANDLER():
1c00475c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004760:	29803061 	st.w	$r1,$r3,12(0xc)
1c004764:	29802076 	st.w	$r22,$r3,8(0x8)
1c004768:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00476c:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c004770:	2880018d 	ld.w	$r13,$r12,0
1c004774:	157fe00c 	lu12i.w	$r12,-262400(0xbff00)
1c004778:	03c005ad 	xori	$r13,$r13,0x1
1c00477c:	2980018d 	st.w	$r13,$r12,0
1c004780:	57e7efff 	bl	-6164(0xfffe7ec) # 1c002f6c <uart1_interrupt>
1c004784:	03400000 	andi	$r0,$r0,0x0
1c004788:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00478c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004790:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004794:	4c000020 	jirl	$r0,$r1,0

1c004798 <do_nothing>:
do_nothing():
1c004798:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00479c:	29803076 	st.w	$r22,$r3,12(0xc)
1c0047a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a4:	0015000c 	move	$r12,$r0
1c0047a8:	00150184 	move	$r4,$r12
1c0047ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0047b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b4:	4c000020 	jirl	$r0,$r1,0

1c0047b8 <do_d1>:
do_d1():
1c0047b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0047bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0047c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0047c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0047c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0047cc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0047d0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0047d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0047d8:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0047e8 <do_d1+0x30>
1c0047dc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0047e0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0047e4:	6400198d 	bge	$r12,$r13,24(0x18) # 1c0047fc <do_d1+0x44>
1c0047e8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0047ec:	02b37084 	addi.w	$r4,$r4,-804(0xcdc)
1c0047f0:	57d3dfff 	bl	-11300(0xfffd3dc) # 1c001bcc <myprintf>
1c0047f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0047f8:	5000c000 	b	192(0xc0) # 1c0048b8 <do_d1+0x100>
1c0047fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004800:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004804:	2880018c 	ld.w	$r12,$r12,0
1c004808:	00150184 	move	$r4,$r12
1c00480c:	5402fc00 	bl	764(0x2fc) # 1c004b08 <str2num>
1c004810:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c004814:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004818:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00481c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00482c <do_d1+0x74>
1c004820:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004824:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004828:	50002000 	b	32(0x20) # 1c004848 <do_d1+0x90>
1c00482c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004830:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004834:	2880018c 	ld.w	$r12,$r12,0
1c004838:	00150184 	move	$r4,$r12
1c00483c:	5402cc00 	bl	716(0x2cc) # 1c004b08 <str2num>
1c004840:	0015008c 	move	$r12,$r4
1c004844:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004848:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00484c:	50005c00 	b	92(0x5c) # 1c0048a8 <do_d1+0xf0>
1c004850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004854:	03401d8c 	andi	$r12,$r12,0x7
1c004858:	44002180 	bnez	$r12,32(0x20) # 1c004878 <do_d1+0xc0>
1c00485c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004860:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004864:	001031ac 	add.w	$r12,$r13,$r12
1c004868:	00150185 	move	$r5,$r12
1c00486c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004870:	02b1e084 	addi.w	$r4,$r4,-904(0xc78)
1c004874:	57d35bff 	bl	-11432(0xfffd358) # 1c001bcc <myprintf>
1c004878:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00487c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004880:	001031ac 	add.w	$r12,$r13,$r12
1c004884:	2a00018c 	ld.bu	$r12,$r12,0
1c004888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00488c:	00150185 	move	$r5,$r12
1c004890:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004894:	02b18084 	addi.w	$r4,$r4,-928(0xc60)
1c004898:	57d337ff 	bl	-11468(0xfffd334) # 1c001bcc <myprintf>
1c00489c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0048ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0048b0:	63ffa1ac 	blt	$r13,$r12,-96(0x3ffa0) # 1c004850 <do_d1+0x98>
1c0048b4:	0015000c 	move	$r12,$r0
1c0048b8:	00150184 	move	$r4,$r12
1c0048bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0048c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0048c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0048c8:	4c000020 	jirl	$r0,$r1,0

1c0048cc <do_d4>:
do_d4():
1c0048cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0048d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0048d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0048d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0048dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0048e0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0048e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0048e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0048ec:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0048fc <do_d4+0x30>
1c0048f0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0048f4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0048f8:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004910 <do_d4+0x44>
1c0048fc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004900:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c004904:	57d2cbff 	bl	-11576(0xfffd2c8) # 1c001bcc <myprintf>
1c004908:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00490c:	5000cc00 	b	204(0xcc) # 1c0049d8 <do_d4+0x10c>
1c004910:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004914:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004918:	2880018c 	ld.w	$r12,$r12,0
1c00491c:	00150184 	move	$r4,$r12
1c004920:	5401e800 	bl	488(0x1e8) # 1c004b08 <str2num>
1c004924:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c004928:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00492c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004930:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004940 <do_d4+0x74>
1c004934:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004938:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00493c:	50002000 	b	32(0x20) # 1c00495c <do_d4+0x90>
1c004940:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004944:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004948:	2880018c 	ld.w	$r12,$r12,0
1c00494c:	00150184 	move	$r4,$r12
1c004950:	5401b800 	bl	440(0x1b8) # 1c004b08 <str2num>
1c004954:	0015008c 	move	$r12,$r4
1c004958:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00495c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004960:	50006800 	b	104(0x68) # 1c0049c8 <do_d4+0xfc>
1c004964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004968:	03400d8c 	andi	$r12,$r12,0x3
1c00496c:	44002980 	bnez	$r12,40(0x28) # 1c004994 <do_d4+0xc8>
1c004970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004974:	0040898c 	slli.w	$r12,$r12,0x2
1c004978:	0015018d 	move	$r13,$r12
1c00497c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004980:	001031ac 	add.w	$r12,$r13,$r12
1c004984:	00150185 	move	$r5,$r12
1c004988:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00498c:	02ae3084 	addi.w	$r4,$r4,-1140(0xb8c)
1c004990:	57d23fff 	bl	-11716(0xfffd23c) # 1c001bcc <myprintf>
1c004994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004998:	0040898c 	slli.w	$r12,$r12,0x2
1c00499c:	0015018d 	move	$r13,$r12
1c0049a0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0049a4:	001031ac 	add.w	$r12,$r13,$r12
1c0049a8:	2880018c 	ld.w	$r12,$r12,0
1c0049ac:	00150185 	move	$r5,$r12
1c0049b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0049b4:	02adc084 	addi.w	$r4,$r4,-1168(0xb70)
1c0049b8:	57d217ff 	bl	-11756(0xfffd214) # 1c001bcc <myprintf>
1c0049bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0049d0:	63ff95ac 	blt	$r13,$r12,-108(0x3ff94) # 1c004964 <do_d4+0x98>
1c0049d4:	0015000c 	move	$r12,$r0
1c0049d8:	00150184 	move	$r4,$r12
1c0049dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0049e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0049e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0049e8:	4c000020 	jirl	$r0,$r1,0

1c0049ec <do_m1>:
do_m1():
1c0049ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0049f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0049f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0049f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0049fc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004a00:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004a04:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004a08:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004a0c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004a24 <do_m1+0x38>
1c004a10:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004a14:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c004a18:	57d1b7ff 	bl	-11852(0xfffd1b4) # 1c001bcc <myprintf>
1c004a1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004a20:	50004800 	b	72(0x48) # 1c004a68 <do_m1+0x7c>
1c004a24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004a28:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004a2c:	2880018c 	ld.w	$r12,$r12,0
1c004a30:	00150184 	move	$r4,$r12
1c004a34:	5400d400 	bl	212(0xd4) # 1c004b08 <str2num>
1c004a38:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004a3c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004a40:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004a44:	2880018c 	ld.w	$r12,$r12,0
1c004a48:	00150184 	move	$r4,$r12
1c004a4c:	5400bc00 	bl	188(0xbc) # 1c004b08 <str2num>
1c004a50:	0015008c 	move	$r12,$r4
1c004a54:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a5c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004a60:	2900018d 	st.b	$r13,$r12,0
1c004a64:	0015000c 	move	$r12,$r0
1c004a68:	00150184 	move	$r4,$r12
1c004a6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004a70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004a74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004a78:	4c000020 	jirl	$r0,$r1,0

1c004a7c <do_m4>:
do_m4():
1c004a7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004a80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004a84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004a88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004a8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004a90:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004a94:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004a98:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004a9c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004ab4 <do_m4+0x38>
1c004aa0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004aa4:	02aaa084 	addi.w	$r4,$r4,-1368(0xaa8)
1c004aa8:	57d127ff 	bl	-11996(0xfffd124) # 1c001bcc <myprintf>
1c004aac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ab0:	50004400 	b	68(0x44) # 1c004af4 <do_m4+0x78>
1c004ab4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ab8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004abc:	2880018c 	ld.w	$r12,$r12,0
1c004ac0:	00150184 	move	$r4,$r12
1c004ac4:	54004400 	bl	68(0x44) # 1c004b08 <str2num>
1c004ac8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004acc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ad0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004ad4:	2880018c 	ld.w	$r12,$r12,0
1c004ad8:	00150184 	move	$r4,$r12
1c004adc:	54002c00 	bl	44(0x2c) # 1c004b08 <str2num>
1c004ae0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ae8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004aec:	2980018d 	st.w	$r13,$r12,0
1c004af0:	0015000c 	move	$r12,$r0
1c004af4:	00150184 	move	$r4,$r12
1c004af8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004afc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004b00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004b04:	4c000020 	jirl	$r0,$r1,0

1c004b08 <str2num>:
str2num():
1c004b08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004b1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b24:	2a00018d 	ld.bu	$r13,$r12,0
1c004b28:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004b2c:	5c0041ac 	bne	$r13,$r12,64(0x40) # 1c004b6c <str2num+0x64>
1c004b30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b38:	2a00018d 	ld.bu	$r13,$r12,0
1c004b3c:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c004b40:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004b58 <str2num+0x50>
1c004b44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b4c:	2a00018d 	ld.bu	$r13,$r12,0
1c004b50:	0281600c 	addi.w	$r12,$r0,88(0x58)
1c004b54:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004b6c <str2num+0x64>
1c004b58:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004b5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b60:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004b64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b68:	50003400 	b	52(0x34) # 1c004b9c <str2num+0x94>
1c004b6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b70:	2a00018d 	ld.bu	$r13,$r12,0
1c004b74:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004b78:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004b90 <str2num+0x88>
1c004b7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004b80:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b84:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004b88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b8c:	50016400 	b	356(0x164) # 1c004cf0 <str2num+0x1e8>
1c004b90:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c004b94:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004b98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b9c:	50015400 	b	340(0x154) # 1c004cf0 <str2num+0x1e8>
1c004ba0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004ba4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004ba8:	001031ac 	add.w	$r12,$r13,$r12
1c004bac:	2a00018c 	ld.bu	$r12,$r12,0
1c004bb0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004bb4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bb8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004bbc:	5800ddac 	beq	$r13,$r12,220(0xdc) # 1c004c98 <str2num+0x190>
1c004bc0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bc4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004bc8:	580015ac 	beq	$r13,$r12,20(0x14) # 1c004bdc <str2num+0xd4>
1c004bcc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004bd0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004bd4:	5800c5ac 	beq	$r13,$r12,196(0xc4) # 1c004c98 <str2num+0x190>
1c004bd8:	50010c00 	b	268(0x10c) # 1c004ce4 <str2num+0x1dc>
1c004bdc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004be0:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004be4:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004c14 <str2num+0x10c>
1c004be8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004bec:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c004bf0:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004c14 <str2num+0x10c>
1c004bf4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004bf8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004bfc:	001c31ad 	mul.w	$r13,$r13,$r12
1c004c00:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004c04:	001031ac 	add.w	$r12,$r13,$r12
1c004c08:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004c0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c10:	50008400 	b	132(0x84) # 1c004c94 <str2num+0x18c>
1c004c14:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004c18:	0281800c 	addi.w	$r12,$r0,96(0x60)
1c004c1c:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004c4c <str2num+0x144>
1c004c20:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004c24:	0281980c 	addi.w	$r12,$r0,102(0x66)
1c004c28:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004c4c <str2num+0x144>
1c004c2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004c34:	001c31ad 	mul.w	$r13,$r13,$r12
1c004c38:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004c3c:	001031ac 	add.w	$r12,$r13,$r12
1c004c40:	02bea58c 	addi.w	$r12,$r12,-87(0xfa9)
1c004c44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c48:	50004c00 	b	76(0x4c) # 1c004c94 <str2num+0x18c>
1c004c4c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004c50:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c004c54:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004c84 <str2num+0x17c>
1c004c58:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004c5c:	0281180c 	addi.w	$r12,$r0,70(0x46)
1c004c60:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004c84 <str2num+0x17c>
1c004c64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004c6c:	001c31ad 	mul.w	$r13,$r13,$r12
1c004c70:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004c74:	001031ac 	add.w	$r12,$r13,$r12
1c004c78:	02bf258c 	addi.w	$r12,$r12,-55(0xfc9)
1c004c7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c80:	50001400 	b	20(0x14) # 1c004c94 <str2num+0x18c>
1c004c84:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004c88:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c004c8c:	57cf43ff 	bl	-12480(0xfffcf40) # 1c001bcc <myprintf>
1c004c90:	50005400 	b	84(0x54) # 1c004ce4 <str2num+0x1dc>
1c004c94:	50005000 	b	80(0x50) # 1c004ce4 <str2num+0x1dc>
1c004c98:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004c9c:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004ca0:	6c00358d 	bgeu	$r12,$r13,52(0x34) # 1c004cd4 <str2num+0x1cc>
1c004ca4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004ca8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004cac:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004cb0:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c004cd4 <str2num+0x1cc>
1c004cb4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004cbc:	001c31ad 	mul.w	$r13,$r13,$r12
1c004cc0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004cc4:	001031ac 	add.w	$r12,$r13,$r12
1c004cc8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004cd0:	50001000 	b	16(0x10) # 1c004ce0 <str2num+0x1d8>
1c004cd4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004cd8:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c004cdc:	57cef3ff 	bl	-12560(0xfffcef0) # 1c001bcc <myprintf>
1c004ce0:	03400000 	andi	$r0,$r0,0x0
1c004ce4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004ce8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004cf0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004cf4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004cf8:	001031ac 	add.w	$r12,$r13,$r12
1c004cfc:	2a00018c 	ld.bu	$r12,$r12,0
1c004d00:	47fea19f 	bnez	$r12,-352(0x7ffea0) # 1c004ba0 <str2num+0x98>
1c004d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d08:	00150184 	move	$r4,$r12
1c004d0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004d10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004d14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004d18:	4c000020 	jirl	$r0,$r1,0

1c004d1c <v_play>:
v_play():
1c004d1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d20:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d24:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004d30:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004d34:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004d38:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004d3c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004d54 <v_play+0x38>
1c004d40:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004d44:	02a15084 	addi.w	$r4,$r4,-1964(0x854)
1c004d48:	57ce87ff 	bl	-12668(0xfffce84) # 1c001bcc <myprintf>
1c004d4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d50:	50006400 	b	100(0x64) # 1c004db4 <v_play+0x98>
1c004d54:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004d58:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004d5c:	2880018c 	ld.w	$r12,$r12,0
1c004d60:	00150184 	move	$r4,$r12
1c004d64:	57fda7ff 	bl	-604(0xffffda4) # 1c004b08 <str2num>
1c004d68:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004d6c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004d70:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004d74:	2880018c 	ld.w	$r12,$r12,0
1c004d78:	00150184 	move	$r4,$r12
1c004d7c:	57fd8fff 	bl	-628(0xffffd8c) # 1c004b08 <str2num>
1c004d80:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004d84:	57eb2fff 	bl	-5332(0xfffeb2c) # 1c0038b0 <dma_reset>
1c004d88:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004d8c:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c004d90:	57ce3fff 	bl	-12740(0xfffce3c) # 1c001bcc <myprintf>
1c004d94:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004d98:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c004d9c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c004da0:	57eb6fff 	bl	-5268(0xfffeb6c) # 1c00390c <dma_start>
1c004da4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004da8:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c004dac:	57ce23ff 	bl	-12768(0xfffce20) # 1c001bcc <myprintf>
1c004db0:	0015000c 	move	$r12,$r0
1c004db4:	00150184 	move	$r4,$r12
1c004db8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004dbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004dc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004dc4:	4c000020 	jirl	$r0,$r1,0

1c004dc8 <touch_reg_show>:
touch_reg_show():
1c004dc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dcc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004dd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dd8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004ddc:	02a03084 	addi.w	$r4,$r4,-2036(0x80c)
1c004de0:	57cdefff 	bl	-12820(0xfffcdec) # 1c001bcc <myprintf>
1c004de4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004de8:	2880018c 	ld.w	$r12,$r12,0
1c004dec:	00150185 	move	$r5,$r12
1c004df0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004df4:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c004df8:	57cdd7ff 	bl	-12844(0xfffcdd4) # 1c001bcc <myprintf>
1c004dfc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004e00:	0380218c 	ori	$r12,$r12,0x8
1c004e04:	2880018c 	ld.w	$r12,$r12,0
1c004e08:	00150185 	move	$r5,$r12
1c004e0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e10:	029fe084 	addi.w	$r4,$r4,2040(0x7f8)
1c004e14:	57cdbbff 	bl	-12872(0xfffcdb8) # 1c001bcc <myprintf>
1c004e18:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004e1c:	0380318c 	ori	$r12,$r12,0xc
1c004e20:	2880018c 	ld.w	$r12,$r12,0
1c004e24:	00150185 	move	$r5,$r12
1c004e28:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e2c:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c004e30:	57cd9fff 	bl	-12900(0xfffcd9c) # 1c001bcc <myprintf>
1c004e34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e38:	029fe084 	addi.w	$r4,$r4,2040(0x7f8)
1c004e3c:	57cd93ff 	bl	-12912(0xfffcd90) # 1c001bcc <myprintf>
1c004e40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004e44:	50006000 	b	96(0x60) # 1c004ea4 <touch_reg_show+0xdc>
1c004e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e4c:	0040898c 	slli.w	$r12,$r12,0x2
1c004e50:	0015018d 	move	$r13,$r12
1c004e54:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004e58:	0381018c 	ori	$r12,$r12,0x40
1c004e5c:	001031ac 	add.w	$r12,$r13,$r12
1c004e60:	2880018d 	ld.w	$r13,$r12,0
1c004e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e68:	0040898c 	slli.w	$r12,$r12,0x2
1c004e6c:	0015018e 	move	$r14,$r12
1c004e70:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004e74:	0382018c 	ori	$r12,$r12,0x80
1c004e78:	001031cc 	add.w	$r12,$r14,$r12
1c004e7c:	2880018c 	ld.w	$r12,$r12,0
1c004e80:	00150187 	move	$r7,$r12
1c004e84:	001501a6 	move	$r6,$r13
1c004e88:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c004e8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e90:	029f0084 	addi.w	$r4,$r4,1984(0x7c0)
1c004e94:	57cd3bff 	bl	-13000(0xfffcd38) # 1c001bcc <myprintf>
1c004e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ea0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ea4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ea8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004eac:	67ff9d8d 	bge	$r12,$r13,-100(0x3ff9c) # 1c004e48 <touch_reg_show+0x80>
1c004eb0:	0015000c 	move	$r12,$r0
1c004eb4:	00150184 	move	$r4,$r12
1c004eb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ebc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ec0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ec4:	4c000020 	jirl	$r0,$r1,0

1c004ec8 <touch_value_show>:
touch_value_show():
1c004ec8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ecc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ed0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ed4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ed8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004edc:	029e3084 	addi.w	$r4,$r4,1932(0x78c)
1c004ee0:	57ccefff 	bl	-13076(0xfffccec) # 1c001bcc <myprintf>
1c004ee4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ee8:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c004eec:	57cce3ff 	bl	-13088(0xfffcce0) # 1c001bcc <myprintf>
1c004ef0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004ef4:	50003400 	b	52(0x34) # 1c004f28 <touch_value_show+0x60>
1c004ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004efc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004f00:	00150184 	move	$r4,$r12
1c004f04:	57ed03ff 	bl	-4864(0xfffed00) # 1c003c04 <TOUCH_GetBaseVal>
1c004f08:	0015008c 	move	$r12,$r4
1c004f0c:	00150185 	move	$r5,$r12
1c004f10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f14:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c004f18:	57ccb7ff 	bl	-13132(0xfffccb4) # 1c001bcc <myprintf>
1c004f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004f2c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004f30:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004ef8 <touch_value_show+0x30>
1c004f34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f38:	029e2084 	addi.w	$r4,$r4,1928(0x788)
1c004f3c:	57cc93ff 	bl	-13168(0xfffcc90) # 1c001bcc <myprintf>
1c004f40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004f44:	50003400 	b	52(0x34) # 1c004f78 <touch_value_show+0xb0>
1c004f48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f4c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004f50:	00150184 	move	$r4,$r12
1c004f54:	57ecffff 	bl	-4868(0xfffecfc) # 1c003c50 <TOUCH_GetCountValue>
1c004f58:	0015008c 	move	$r12,$r4
1c004f5c:	00150185 	move	$r5,$r12
1c004f60:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f64:	029d5084 	addi.w	$r4,$r4,1876(0x754)
1c004f68:	57cc67ff 	bl	-13212(0xfffcc64) # 1c001bcc <myprintf>
1c004f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004f7c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004f80:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004f48 <touch_value_show+0x80>
1c004f84:	0015000c 	move	$r12,$r0
1c004f88:	00150184 	move	$r4,$r12
1c004f8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f98:	4c000020 	jirl	$r0,$r1,0

1c004f9c <touch_test>:
touch_test():
1c004f9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004fa0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004fa4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004fa8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004fac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004fb0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004fb4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004fb8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004fbc:	2880018c 	ld.w	$r12,$r12,0
1c004fc0:	00150185 	move	$r5,$r12
1c004fc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fc8:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c004fcc:	57da8bff 	bl	-9592(0xfffda88) # 1c002a54 <strcmp>
1c004fd0:	0015008c 	move	$r12,$r4
1c004fd4:	44005d80 	bnez	$r12,92(0x5c) # 1c005030 <touch_test+0x94>
1c004fd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004fdc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004fe0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004ff8 <touch_test+0x5c>
1c004fe4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fe8:	029ba084 	addi.w	$r4,$r4,1768(0x6e8)
1c004fec:	57cbe3ff 	bl	-13344(0xfffcbe0) # 1c001bcc <myprintf>
1c004ff0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ff4:	50024800 	b	584(0x248) # 1c00523c <touch_test+0x2a0>
1c004ff8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ffc:	029bb084 	addi.w	$r4,$r4,1772(0x6ec)
1c005000:	57cbcfff 	bl	-13364(0xfffcbcc) # 1c001bcc <myprintf>
1c005004:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005008:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00500c:	2880018c 	ld.w	$r12,$r12,0
1c005010:	00150184 	move	$r4,$r12
1c005014:	57faf7ff 	bl	-1292(0xffffaf4) # 1c004b08 <str2num>
1c005018:	0015008c 	move	$r12,$r4
1c00501c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005020:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005024:	00150184 	move	$r4,$r12
1c005028:	57ee33ff 	bl	-4560(0xfffee30) # 1c003e58 <TOUCH_Init>
1c00502c:	50020c00 	b	524(0x20c) # 1c005238 <touch_test+0x29c>
1c005030:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005034:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005038:	2880018c 	ld.w	$r12,$r12,0
1c00503c:	00150185 	move	$r5,$r12
1c005040:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005044:	029ad084 	addi.w	$r4,$r4,1716(0x6b4)
1c005048:	57da0fff 	bl	-9716(0xfffda0c) # 1c002a54 <strcmp>
1c00504c:	0015008c 	move	$r12,$r4
1c005050:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005054:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005058:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00505c:	03c0098c 	xori	$r12,$r12,0x2
1c005060:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005064:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005068:	0014b1ac 	and	$r12,$r13,$r12
1c00506c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005070:	40001d80 	beqz	$r12,28(0x1c) # 1c00508c <touch_test+0xf0>
1c005074:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005078:	029a2084 	addi.w	$r4,$r4,1672(0x688)
1c00507c:	57cb53ff 	bl	-13488(0xfffcb50) # 1c001bcc <myprintf>
1c005080:	57ec4fff 	bl	-5044(0xfffec4c) # 1c003ccc <TOUCH_EnableSingleScan>
1c005084:	57eed3ff 	bl	-4400(0xfffeed0) # 1c003f54 <Printf_CountVal>
1c005088:	5001b000 	b	432(0x1b0) # 1c005238 <touch_test+0x29c>
1c00508c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005090:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005094:	2880018c 	ld.w	$r12,$r12,0
1c005098:	00150185 	move	$r5,$r12
1c00509c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050a0:	0299c084 	addi.w	$r4,$r4,1648(0x670)
1c0050a4:	57d9b3ff 	bl	-9808(0xfffd9b0) # 1c002a54 <strcmp>
1c0050a8:	0015008c 	move	$r12,$r4
1c0050ac:	4400c580 	bnez	$r12,196(0xc4) # 1c005170 <touch_test+0x1d4>
1c0050b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050b4:	02999084 	addi.w	$r4,$r4,1636(0x664)
1c0050b8:	57cb17ff 	bl	-13548(0xfffcb14) # 1c001bcc <myprintf>
1c0050bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0050c0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0050c4:	2880018c 	ld.w	$r12,$r12,0
1c0050c8:	00150184 	move	$r4,$r12
1c0050cc:	57fa3fff 	bl	-1476(0xffffa3c) # 1c004b08 <str2num>
1c0050d0:	0015008c 	move	$r12,$r4
1c0050d4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0050d8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0050dc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0050e0:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c00511c <touch_test+0x180>
1c0050e4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0050e8:	50002400 	b	36(0x24) # 1c00510c <touch_test+0x170>
1c0050ec:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0050f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0050f4:	001501a5 	move	$r5,$r13
1c0050f8:	00150184 	move	$r4,$r12
1c0050fc:	57ec03ff 	bl	-5120(0xfffec00) # 1c003cfc <TOUCH_SetDownTh>
1c005100:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005104:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005108:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00510c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005110:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005114:	6fffd98d 	bgeu	$r12,$r13,-40(0x3ffd8) # 1c0050ec <touch_test+0x150>
1c005118:	50012000 	b	288(0x120) # 1c005238 <touch_test+0x29c>
1c00511c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005120:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005124:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c00515c <touch_test+0x1c0>
1c005128:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00512c:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005130:	2880018c 	ld.w	$r12,$r12,0
1c005134:	00150184 	move	$r4,$r12
1c005138:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c004b08 <str2num>
1c00513c:	0015008c 	move	$r12,$r4
1c005140:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005144:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005148:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00514c:	001501a5 	move	$r5,$r13
1c005150:	00150184 	move	$r4,$r12
1c005154:	57ebabff 	bl	-5208(0xfffeba8) # 1c003cfc <TOUCH_SetDownTh>
1c005158:	5000e000 	b	224(0xe0) # 1c005238 <touch_test+0x29c>
1c00515c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005160:	02972084 	addi.w	$r4,$r4,1480(0x5c8)
1c005164:	57ca6bff 	bl	-13720(0xfffca68) # 1c001bcc <myprintf>
1c005168:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00516c:	5000d000 	b	208(0xd0) # 1c00523c <touch_test+0x2a0>
1c005170:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005174:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005178:	2880018c 	ld.w	$r12,$r12,0
1c00517c:	00150185 	move	$r5,$r12
1c005180:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005184:	02972084 	addi.w	$r4,$r4,1480(0x5c8)
1c005188:	57d8cfff 	bl	-10036(0xfffd8cc) # 1c002a54 <strcmp>
1c00518c:	0015008c 	move	$r12,$r4
1c005190:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005194:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005198:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00519c:	03c0098c 	xori	$r12,$r12,0x2
1c0051a0:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0051a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051a8:	0014b1ac 	and	$r12,$r13,$r12
1c0051ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051b0:	40001980 	beqz	$r12,24(0x18) # 1c0051c8 <touch_test+0x22c>
1c0051b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051b8:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c0051bc:	57ca13ff 	bl	-13808(0xfffca10) # 1c001bcc <myprintf>
1c0051c0:	57eadfff 	bl	-5412(0xfffeadc) # 1c003c9c <TOUCH_EnablePollScan>
1c0051c4:	50007400 	b	116(0x74) # 1c005238 <touch_test+0x29c>
1c0051c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0051cc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0051d0:	2880018c 	ld.w	$r12,$r12,0
1c0051d4:	00150185 	move	$r5,$r12
1c0051d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051dc:	02962084 	addi.w	$r4,$r4,1416(0x588)
1c0051e0:	57d877ff 	bl	-10124(0xfffd874) # 1c002a54 <strcmp>
1c0051e4:	0015008c 	move	$r12,$r4
1c0051e8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0051ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0051f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0051f4:	03c0098c 	xori	$r12,$r12,0x2
1c0051f8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0051fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005200:	0014b1ac 	and	$r12,$r13,$r12
1c005204:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005208:	40001180 	beqz	$r12,16(0x10) # 1c005218 <touch_test+0x27c>
1c00520c:	57fbbfff 	bl	-1092(0xffffbbc) # 1c004dc8 <touch_reg_show>
1c005210:	57fcbbff 	bl	-840(0xffffcb8) # 1c004ec8 <touch_value_show>
1c005214:	50002400 	b	36(0x24) # 1c005238 <touch_test+0x29c>
1c005218:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00521c:	02954084 	addi.w	$r4,$r4,1360(0x550)
1c005220:	57c9afff 	bl	-13908(0xfffc9ac) # 1c001bcc <myprintf>
1c005224:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005228:	02955084 	addi.w	$r4,$r4,1364(0x554)
1c00522c:	57c9a3ff 	bl	-13920(0xfffc9a0) # 1c001bcc <myprintf>
1c005230:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005234:	50000800 	b	8(0x8) # 1c00523c <touch_test+0x2a0>
1c005238:	0015000c 	move	$r12,$r0
1c00523c:	00150184 	move	$r4,$r12
1c005240:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005244:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005248:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00524c:	4c000020 	jirl	$r0,$r1,0

1c005250 <hpet>:
hpet():
1c005250:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c005254:	29813061 	st.w	$r1,$r3,76(0x4c)
1c005258:	29812076 	st.w	$r22,$r3,72(0x48)
1c00525c:	02814076 	addi.w	$r22,$r3,80(0x50)
1c005260:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c005264:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c005268:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00526c:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c005270:	57c95fff 	bl	-13988(0xfffc95c) # 1c001bcc <myprintf>
1c005274:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005278:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00527c:	6000298d 	blt	$r12,$r13,40(0x28) # 1c0052a4 <hpet+0x54>
1c005280:	00150004 	move	$r4,$r0
1c005284:	57ef13ff 	bl	-4336(0xfffef10) # 1c004194 <TIM_Cmd>
1c005288:	00150004 	move	$r4,$r0
1c00528c:	57ef5fff 	bl	-4260(0xfffef5c) # 1c0041e8 <TIM_ITConfig>
1c005290:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005294:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c005298:	57c937ff 	bl	-14028(0xfffc934) # 1c001bcc <myprintf>
1c00529c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052a0:	50009c00 	b	156(0x9c) # 1c00533c <hpet+0xec>
1c0052a4:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0052a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0052ac:	2880018c 	ld.w	$r12,$r12,0
1c0052b0:	00150184 	move	$r4,$r12
1c0052b4:	57f857ff 	bl	-1964(0xffff854) # 1c004b08 <str2num>
1c0052b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0052bc:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0052c0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0052c4:	2880018c 	ld.w	$r12,$r12,0
1c0052c8:	00150184 	move	$r4,$r12
1c0052cc:	57f83fff 	bl	-1988(0xffff83c) # 1c004b08 <str2num>
1c0052d0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0052d4:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0052d8:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0052dc:	2880018c 	ld.w	$r12,$r12,0
1c0052e0:	00150184 	move	$r4,$r12
1c0052e4:	57f827ff 	bl	-2012(0xffff824) # 1c004b08 <str2num>
1c0052e8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0052ec:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c0052f0:	00150184 	move	$r4,$r12
1c0052f4:	57ee27ff 	bl	-4572(0xfffee24) # 1c004118 <TIM_StructInit>
1c0052f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052fc:	0040898c 	slli.w	$r12,$r12,0x2
1c005300:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005304:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005308:	1400002c 	lu12i.w	$r12,1(0x1)
1c00530c:	03bcfd8c 	ori	$r12,$r12,0xf3f
1c005310:	001c31ac 	mul.w	$r12,$r13,$r12
1c005314:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c005318:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00531c:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c005320:	0388018c 	ori	$r12,$r12,0x200
1c005324:	001c31ac 	mul.w	$r12,$r13,$r12
1c005328:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00532c:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c005330:	00150184 	move	$r4,$r12
1c005334:	57ed0fff 	bl	-4852(0xfffed0c) # 1c004040 <TIM_Init>
1c005338:	0015000c 	move	$r12,$r0
1c00533c:	00150184 	move	$r4,$r12
1c005340:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c005344:	28812076 	ld.w	$r22,$r3,72(0x48)
1c005348:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00534c:	4c000020 	jirl	$r0,$r1,0

1c005350 <latimer>:
latimer():
1c005350:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005354:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005358:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00535c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005360:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005364:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005368:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c00536c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005370:	02938084 	addi.w	$r4,$r4,1248(0x4e0)
1c005374:	57c85bff 	bl	-14248(0xfffc858) # 1c001bcc <myprintf>
1c005378:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00537c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005380:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c00539c <latimer+0x4c>
1c005384:	57cd33ff 	bl	-13008(0xfffcd30) # 1c0020b4 <Set_Timer_stop>
1c005388:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00538c:	02939084 	addi.w	$r4,$r4,1252(0x4e4)
1c005390:	57c83fff 	bl	-14276(0xfffc83c) # 1c001bcc <myprintf>
1c005394:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005398:	50003800 	b	56(0x38) # 1c0053d0 <latimer+0x80>
1c00539c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0053a0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0053a4:	2880018c 	ld.w	$r12,$r12,0
1c0053a8:	00150184 	move	$r4,$r12
1c0053ac:	57f75fff 	bl	-2212(0xffff75c) # 1c004b08 <str2num>
1c0053b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0053b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0053b8:	1401458c 	lu12i.w	$r12,2604(0xa2c)
1c0053bc:	038fe18c 	ori	$r12,$r12,0x3f8
1c0053c0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0053c4:	00150184 	move	$r4,$r12
1c0053c8:	57cd33ff 	bl	-13008(0xfffcd30) # 1c0020f8 <Set_Timer_Init>
1c0053cc:	0015000c 	move	$r12,$r0
1c0053d0:	00150184 	move	$r4,$r12
1c0053d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0053d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0053dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0053e0:	4c000020 	jirl	$r0,$r1,0

1c0053e4 <delay>:
delay():
1c0053e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0053e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0053ec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0053f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0053f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0053f8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0053fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005400:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005404:	6000198d 	blt	$r12,$r13,24(0x18) # 1c00541c <delay+0x38>
1c005408:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00540c:	0291f084 	addi.w	$r4,$r4,1148(0x47c)
1c005410:	57c7bfff 	bl	-14404(0xfffc7bc) # 1c001bcc <myprintf>
1c005414:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005418:	5000bc00 	b	188(0xbc) # 1c0054d4 <delay+0xf0>
1c00541c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005420:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005424:	2880018c 	ld.w	$r12,$r12,0
1c005428:	00150184 	move	$r4,$r12
1c00542c:	57f6dfff 	bl	-2340(0xffff6dc) # 1c004b08 <str2num>
1c005430:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005434:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005438:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00543c:	2880018c 	ld.w	$r12,$r12,0
1c005440:	00150184 	move	$r4,$r12
1c005444:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c004b08 <str2num>
1c005448:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00544c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005450:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005454:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005474 <delay+0x90>
1c005458:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c00545c:	57d547ff 	bl	-10940(0xfffd544) # 1c0029a0 <delay_us>
1c005460:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c005464:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005468:	02913084 	addi.w	$r4,$r4,1100(0x44c)
1c00546c:	57c763ff 	bl	-14496(0xfffc760) # 1c001bcc <myprintf>
1c005470:	50006000 	b	96(0x60) # 1c0054d0 <delay+0xec>
1c005474:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005478:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00547c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00549c <delay+0xb8>
1c005480:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c005484:	57d557ff 	bl	-10924(0xfffd554) # 1c0029d8 <delay_ms>
1c005488:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c00548c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005490:	0290b084 	addi.w	$r4,$r4,1068(0x42c)
1c005494:	57c73bff 	bl	-14536(0xfffc738) # 1c001bcc <myprintf>
1c005498:	50003800 	b	56(0x38) # 1c0054d0 <delay+0xec>
1c00549c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0054a0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0054a4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0054c4 <delay+0xe0>
1c0054a8:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c0054ac:	57d56fff 	bl	-10900(0xfffd56c) # 1c002a18 <delay_s>
1c0054b0:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c0054b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0054b8:	02903084 	addi.w	$r4,$r4,1036(0x40c)
1c0054bc:	57c713ff 	bl	-14576(0xfffc710) # 1c001bcc <myprintf>
1c0054c0:	50001000 	b	16(0x10) # 1c0054d0 <delay+0xec>
1c0054c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0054c8:	028f0084 	addi.w	$r4,$r4,960(0x3c0)
1c0054cc:	57c703ff 	bl	-14592(0xfffc700) # 1c001bcc <myprintf>
1c0054d0:	0015000c 	move	$r12,$r0
1c0054d4:	00150184 	move	$r4,$r12
1c0054d8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0054dc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0054e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0054e4:	4c000020 	jirl	$r0,$r1,0

1c0054e8 <wakeup>:
wakeup():
1c0054e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054ec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0054f0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0054f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0054fc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005500:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005504:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005508:	028f1084 	addi.w	$r4,$r4,964(0x3c4)
1c00550c:	57c6c3ff 	bl	-14656(0xfffc6c0) # 1c001bcc <myprintf>
1c005510:	57cb5fff 	bl	-13476(0xfffcb5c) # 1c00206c <DisableInt>
1c005514:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005518:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00551c:	6000218d 	blt	$r12,$r13,32(0x20) # 1c00553c <wakeup+0x54>
1c005520:	00150004 	move	$r4,$r0
1c005524:	57cc07ff 	bl	-13308(0xfffcc04) # 1c002128 <Wake_Set>
1c005528:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00552c:	028f1084 	addi.w	$r4,$r4,964(0x3c4)
1c005530:	57c69fff 	bl	-14692(0xfffc69c) # 1c001bcc <myprintf>
1c005534:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005538:	50002c00 	b	44(0x2c) # 1c005564 <wakeup+0x7c>
1c00553c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005540:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005544:	2880018c 	ld.w	$r12,$r12,0
1c005548:	00150184 	move	$r4,$r12
1c00554c:	57f5bfff 	bl	-2628(0xffff5bc) # 1c004b08 <str2num>
1c005550:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005554:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005558:	57cbd3ff 	bl	-13360(0xfffcbd0) # 1c002128 <Wake_Set>
1c00555c:	57bc8bff 	bl	-17272(0xfffbc88) # 1c0011e4 <cpu_sleep>
1c005560:	0015000c 	move	$r12,$r0
1c005564:	00150184 	move	$r4,$r12
1c005568:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00556c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005570:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005574:	4c000020 	jirl	$r0,$r1,0

1c005578 <a_to_n>:
a_to_n():
1c005578:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00557c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005580:	29806076 	st.w	$r22,$r3,24(0x18)
1c005584:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005588:	0015008c 	move	$r12,$r4
1c00558c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005590:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005594:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c005598:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0055a8 <a_to_n+0x30>
1c00559c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0055a0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0055a4:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c0055bc <a_to_n+0x44>
1c0055a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055ac:	028d7084 	addi.w	$r4,$r4,860(0x35c)
1c0055b0:	57c61fff 	bl	-14820(0xfffc61c) # 1c001bcc <myprintf>
1c0055b4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0055b8:	50000c00 	b	12(0xc) # 1c0055c4 <a_to_n+0x4c>
1c0055bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055c0:	03403d8c 	andi	$r12,$r12,0xf
1c0055c4:	00150184 	move	$r4,$r12
1c0055c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055d4:	4c000020 	jirl	$r0,$r1,0

1c0055d8 <date>:
date():
1c0055d8:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0055dc:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0055e0:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0055e4:	29829077 	st.w	$r23,$r3,164(0xa4)
1c0055e8:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0055ec:	29bd72c4 	st.w	$r4,$r22,-164(0xf5c)
1c0055f0:	29bd62c5 	st.w	$r5,$r22,-168(0xf58)
1c0055f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055f8:	028cb084 	addi.w	$r4,$r4,812(0x32c)
1c0055fc:	57c5d3ff 	bl	-14896(0xfffc5d0) # 1c001bcc <myprintf>
1c005600:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c005604:	0291718c 	addi.w	$r12,$r12,1116(0x45c)
1c005608:	2880018f 	ld.w	$r15,$r12,0
1c00560c:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c005610:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c005614:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005618:	29bde2cf 	st.w	$r15,$r22,-136(0xf78)
1c00561c:	29bdf2ce 	st.w	$r14,$r22,-132(0xf7c)
1c005620:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c005624:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c005628:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c00562c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005630:	2880018c 	ld.w	$r12,$r12,0
1c005634:	28bde2cd 	ld.w	$r13,$r22,-136(0xf78)
1c005638:	001501a5 	move	$r5,$r13
1c00563c:	00150184 	move	$r4,$r12
1c005640:	57d417ff 	bl	-11244(0xfffd414) # 1c002a54 <strcmp>
1c005644:	0015008c 	move	$r12,$r4
1c005648:	44003d80 	bnez	$r12,60(0x3c) # 1c005684 <date+0xac>
1c00564c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005650:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c005654:	57c57bff 	bl	-14984(0xfffc578) # 1c001bcc <myprintf>
1c005658:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00565c:	028ba084 	addi.w	$r4,$r4,744(0x2e8)
1c005660:	57c56fff 	bl	-14996(0xfffc56c) # 1c001bcc <myprintf>
1c005664:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005668:	028c2084 	addi.w	$r4,$r4,776(0x308)
1c00566c:	57c563ff 	bl	-15008(0xfffc560) # 1c001bcc <myprintf>
1c005670:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005674:	028c9084 	addi.w	$r4,$r4,804(0x324)
1c005678:	57c557ff 	bl	-15020(0xfffc554) # 1c001bcc <myprintf>
1c00567c:	0015000c 	move	$r12,$r0
1c005680:	50066000 	b	1632(0x660) # 1c005ce0 <date+0x708>
1c005684:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005688:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00568c:	2880018c 	ld.w	$r12,$r12,0
1c005690:	28bdf2cd 	ld.w	$r13,$r22,-132(0xf7c)
1c005694:	001501a5 	move	$r5,$r13
1c005698:	00150184 	move	$r4,$r12
1c00569c:	57d3bbff 	bl	-11336(0xfffd3b8) # 1c002a54 <strcmp>
1c0056a0:	0015008c 	move	$r12,$r4
1c0056a4:	4402a180 	bnez	$r12,672(0x2a0) # 1c005944 <date+0x36c>
1c0056a8:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c0056ac:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0056b0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0056c8 <date+0xf0>
1c0056b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0056b8:	028c7084 	addi.w	$r4,$r4,796(0x31c)
1c0056bc:	57c513ff 	bl	-15088(0xfffc510) # 1c001bcc <myprintf>
1c0056c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056c4:	50061c00 	b	1564(0x61c) # 1c005ce0 <date+0x708>
1c0056c8:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c0056cc:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0056d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0056d4:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c0056d8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0056dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0056e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056e4:	2a00018c 	ld.bu	$r12,$r12,0
1c0056e8:	00150184 	move	$r4,$r12
1c0056ec:	57fe8fff 	bl	-372(0xffffe8c) # 1c005578 <a_to_n>
1c0056f0:	0015008d 	move	$r13,$r4
1c0056f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0056f8:	001c31b7 	mul.w	$r23,$r13,$r12
1c0056fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005700:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005704:	2a00018c 	ld.bu	$r12,$r12,0
1c005708:	00150184 	move	$r4,$r12
1c00570c:	57fe6fff 	bl	-404(0xffffe6c) # 1c005578 <a_to_n>
1c005710:	0015008c 	move	$r12,$r4
1c005714:	001032ec 	add.w	$r12,$r23,$r12
1c005718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00571c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005720:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005724:	2a00018c 	ld.bu	$r12,$r12,0
1c005728:	00150184 	move	$r4,$r12
1c00572c:	57fe4fff 	bl	-436(0xffffe4c) # 1c005578 <a_to_n>
1c005730:	0015008d 	move	$r13,$r4
1c005734:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005738:	001c31b7 	mul.w	$r23,$r13,$r12
1c00573c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005740:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005744:	2a00018c 	ld.bu	$r12,$r12,0
1c005748:	00150184 	move	$r4,$r12
1c00574c:	57fe2fff 	bl	-468(0xffffe2c) # 1c005578 <a_to_n>
1c005750:	0015008c 	move	$r12,$r4
1c005754:	001032ec 	add.w	$r12,$r23,$r12
1c005758:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00575c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005760:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005764:	2a00018c 	ld.bu	$r12,$r12,0
1c005768:	00150184 	move	$r4,$r12
1c00576c:	57fe0fff 	bl	-500(0xffffe0c) # 1c005578 <a_to_n>
1c005770:	0015008d 	move	$r13,$r4
1c005774:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005778:	001c31b7 	mul.w	$r23,$r13,$r12
1c00577c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005780:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005784:	2a00018c 	ld.bu	$r12,$r12,0
1c005788:	00150184 	move	$r4,$r12
1c00578c:	57fdefff 	bl	-532(0xffffdec) # 1c005578 <a_to_n>
1c005790:	0015008c 	move	$r12,$r4
1c005794:	001032ec 	add.w	$r12,$r23,$r12
1c005798:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00579c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057a4:	00150184 	move	$r4,$r12
1c0057a8:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005578 <a_to_n>
1c0057ac:	0015008d 	move	$r13,$r4
1c0057b0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0057b4:	001c31b7 	mul.w	$r23,$r13,$r12
1c0057b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057c4:	00150184 	move	$r4,$r12
1c0057c8:	57fdb3ff 	bl	-592(0xffffdb0) # 1c005578 <a_to_n>
1c0057cc:	0015008c 	move	$r12,$r4
1c0057d0:	001032ec 	add.w	$r12,$r23,$r12
1c0057d4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0057d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057dc:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0057e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057e4:	00150184 	move	$r4,$r12
1c0057e8:	57fd93ff 	bl	-624(0xffffd90) # 1c005578 <a_to_n>
1c0057ec:	0015008d 	move	$r13,$r4
1c0057f0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0057f4:	001c31b7 	mul.w	$r23,$r13,$r12
1c0057f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057fc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005800:	2a00018c 	ld.bu	$r12,$r12,0
1c005804:	00150184 	move	$r4,$r12
1c005808:	57fd73ff 	bl	-656(0xffffd70) # 1c005578 <a_to_n>
1c00580c:	0015008c 	move	$r12,$r4
1c005810:	001032ec 	add.w	$r12,$r23,$r12
1c005814:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c005818:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00581c:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005820:	2a00018c 	ld.bu	$r12,$r12,0
1c005824:	00150184 	move	$r4,$r12
1c005828:	57fd53ff 	bl	-688(0xffffd50) # 1c005578 <a_to_n>
1c00582c:	0015008d 	move	$r13,$r4
1c005830:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005834:	001c31b7 	mul.w	$r23,$r13,$r12
1c005838:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00583c:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005840:	2a00018c 	ld.bu	$r12,$r12,0
1c005844:	00150184 	move	$r4,$r12
1c005848:	57fd33ff 	bl	-720(0xffffd30) # 1c005578 <a_to_n>
1c00584c:	0015008c 	move	$r12,$r4
1c005850:	001032ec 	add.w	$r12,$r23,$r12
1c005854:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c005858:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00585c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005860:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c0058bc <date+0x2e4>
1c005864:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005868:	40005580 	beqz	$r12,84(0x54) # 1c0058bc <date+0x2e4>
1c00586c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005870:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005874:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c0058bc <date+0x2e4>
1c005878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00587c:	40004180 	beqz	$r12,64(0x40) # 1c0058bc <date+0x2e4>
1c005880:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c005884:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005888:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005898 <date+0x2c0>
1c00588c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005890:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005894:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c0058bc <date+0x2e4>
1c005898:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00589c:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c0058a0:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c0058bc <date+0x2e4>
1c0058a4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0058a8:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0058ac:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c0058bc <date+0x2e4>
1c0058b0:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c0058b4:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0058b8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0058c4 <date+0x2ec>
1c0058bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058c0:	50000800 	b	8(0x8) # 1c0058c8 <date+0x2f0>
1c0058c4:	0015000c 	move	$r12,$r0
1c0058c8:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0058cc:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0058d0:	40001980 	beqz	$r12,24(0x18) # 1c0058e8 <date+0x310>
1c0058d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0058d8:	02844084 	addi.w	$r4,$r4,272(0x110)
1c0058dc:	57c2f3ff 	bl	-15632(0xfffc2f0) # 1c001bcc <myprintf>
1c0058e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058e4:	5003fc00 	b	1020(0x3fc) # 1c005ce0 <date+0x708>
1c0058e8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0058ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058f0:	293dc2cc 	st.b	$r12,$r22,-144(0xf70)
1c0058f4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0058f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058fc:	293dc6cc 	st.b	$r12,$r22,-143(0xf71)
1c005900:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005904:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005908:	293dcacc 	st.b	$r12,$r22,-142(0xf72)
1c00590c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005910:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005914:	293dcecc 	st.b	$r12,$r22,-141(0xf73)
1c005918:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00591c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005920:	293dd2cc 	st.b	$r12,$r22,-140(0xf74)
1c005924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005928:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00592c:	293dd6cc 	st.b	$r12,$r22,-139(0xf75)
1c005930:	02bdc2cc 	addi.w	$r12,$r22,-144(0xf70)
1c005934:	00150185 	move	$r5,$r12
1c005938:	00150004 	move	$r4,$r0
1c00593c:	57d3f7ff 	bl	-11276(0xfffd3f4) # 1c002d30 <RtcUpdateData>
1c005940:	5003a000 	b	928(0x3a0) # 1c005ce0 <date+0x708>
1c005944:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005948:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00594c:	2880018c 	ld.w	$r12,$r12,0
1c005950:	28be02cd 	ld.w	$r13,$r22,-128(0xf80)
1c005954:	001501a5 	move	$r5,$r13
1c005958:	00150184 	move	$r4,$r12
1c00595c:	57d0fbff 	bl	-12040(0xfffd0f8) # 1c002a54 <strcmp>
1c005960:	0015008c 	move	$r12,$r4
1c005964:	44024980 	bnez	$r12,584(0x248) # 1c005bac <date+0x5d4>
1c005968:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c00596c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005970:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005988 <date+0x3b0>
1c005974:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005978:	02817084 	addi.w	$r4,$r4,92(0x5c)
1c00597c:	57c253ff 	bl	-15792(0xfffc250) # 1c001bcc <myprintf>
1c005980:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005984:	50035c00 	b	860(0x35c) # 1c005ce0 <date+0x708>
1c005988:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c00598c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005990:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c005994:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005998:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00599c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c0059a0:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0059a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059a8:	00150184 	move	$r4,$r12
1c0059ac:	57fbcfff 	bl	-1076(0xffffbcc) # 1c005578 <a_to_n>
1c0059b0:	0015008d 	move	$r13,$r4
1c0059b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059b8:	001c31b7 	mul.w	$r23,$r13,$r12
1c0059bc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0059c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059c8:	00150184 	move	$r4,$r12
1c0059cc:	57fbafff 	bl	-1108(0xffffbac) # 1c005578 <a_to_n>
1c0059d0:	0015008c 	move	$r12,$r4
1c0059d4:	001032ec 	add.w	$r12,$r23,$r12
1c0059d8:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c0059dc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0059e0:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0059e4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059e8:	00150184 	move	$r4,$r12
1c0059ec:	57fb8fff 	bl	-1140(0xffffb8c) # 1c005578 <a_to_n>
1c0059f0:	0015008d 	move	$r13,$r4
1c0059f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059f8:	001c31b7 	mul.w	$r23,$r13,$r12
1c0059fc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005a00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005a04:	2a00018c 	ld.bu	$r12,$r12,0
1c005a08:	00150184 	move	$r4,$r12
1c005a0c:	57fb6fff 	bl	-1172(0xffffb6c) # 1c005578 <a_to_n>
1c005a10:	0015008c 	move	$r12,$r4
1c005a14:	001032ec 	add.w	$r12,$r23,$r12
1c005a18:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c005a1c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005a20:	2a00018c 	ld.bu	$r12,$r12,0
1c005a24:	00150184 	move	$r4,$r12
1c005a28:	57fb53ff 	bl	-1200(0xffffb50) # 1c005578 <a_to_n>
1c005a2c:	0015008d 	move	$r13,$r4
1c005a30:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005a34:	001c31b7 	mul.w	$r23,$r13,$r12
1c005a38:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005a3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a40:	2a00018c 	ld.bu	$r12,$r12,0
1c005a44:	00150184 	move	$r4,$r12
1c005a48:	57fb33ff 	bl	-1232(0xffffb30) # 1c005578 <a_to_n>
1c005a4c:	0015008c 	move	$r12,$r4
1c005a50:	001032ec 	add.w	$r12,$r23,$r12
1c005a54:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c005a58:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005a5c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005a60:	2a00018c 	ld.bu	$r12,$r12,0
1c005a64:	00150184 	move	$r4,$r12
1c005a68:	57fb13ff 	bl	-1264(0xffffb10) # 1c005578 <a_to_n>
1c005a6c:	0015008d 	move	$r13,$r4
1c005a70:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005a74:	001c31b7 	mul.w	$r23,$r13,$r12
1c005a78:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005a7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005a80:	2a00018c 	ld.bu	$r12,$r12,0
1c005a84:	00150184 	move	$r4,$r12
1c005a88:	57faf3ff 	bl	-1296(0xffffaf0) # 1c005578 <a_to_n>
1c005a8c:	0015008c 	move	$r12,$r4
1c005a90:	001032ec 	add.w	$r12,$r23,$r12
1c005a94:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c005a98:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005a9c:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005aa0:	2a00018c 	ld.bu	$r12,$r12,0
1c005aa4:	00150184 	move	$r4,$r12
1c005aa8:	57fad3ff 	bl	-1328(0xffffad0) # 1c005578 <a_to_n>
1c005aac:	0015008d 	move	$r13,$r4
1c005ab0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ab4:	001c31b7 	mul.w	$r23,$r13,$r12
1c005ab8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005abc:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005ac0:	2a00018c 	ld.bu	$r12,$r12,0
1c005ac4:	00150184 	move	$r4,$r12
1c005ac8:	57fab3ff 	bl	-1360(0xffffab0) # 1c005578 <a_to_n>
1c005acc:	0015008c 	move	$r12,$r4
1c005ad0:	001032ec 	add.w	$r12,$r23,$r12
1c005ad4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c005ad8:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005adc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005ae0:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c005b3c <date+0x564>
1c005ae4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005ae8:	40005580 	beqz	$r12,84(0x54) # 1c005b3c <date+0x564>
1c005aec:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005af0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005af4:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c005b3c <date+0x564>
1c005af8:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005afc:	40004180 	beqz	$r12,64(0x40) # 1c005b3c <date+0x564>
1c005b00:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005b04:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005b08:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005b18 <date+0x540>
1c005b0c:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005b10:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005b14:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c005b3c <date+0x564>
1c005b18:	28bee2cd 	ld.w	$r13,$r22,-72(0xfb8)
1c005b1c:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c005b20:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c005b3c <date+0x564>
1c005b24:	28bed2cd 	ld.w	$r13,$r22,-76(0xfb4)
1c005b28:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005b2c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c005b3c <date+0x564>
1c005b30:	28bec2cd 	ld.w	$r13,$r22,-80(0xfb0)
1c005b34:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005b38:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005b44 <date+0x56c>
1c005b3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b40:	50000800 	b	8(0x8) # 1c005b48 <date+0x570>
1c005b44:	0015000c 	move	$r12,$r0
1c005b48:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c005b4c:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c005b50:	40001980 	beqz	$r12,24(0x18) # 1c005b68 <date+0x590>
1c005b54:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005b58:	02ba4084 	addi.w	$r4,$r4,-368(0xe90)
1c005b5c:	57c073ff 	bl	-16272(0xfffc070) # 1c001bcc <myprintf>
1c005b60:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b64:	50017c00 	b	380(0x17c) # 1c005ce0 <date+0x708>
1c005b68:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c005b6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b70:	293da2cc 	st.b	$r12,$r22,-152(0xf68)
1c005b74:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c005b78:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b7c:	293da6cc 	st.b	$r12,$r22,-151(0xf69)
1c005b80:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005b84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b88:	293daacc 	st.b	$r12,$r22,-150(0xf6a)
1c005b8c:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005b90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b94:	293daecc 	st.b	$r12,$r22,-149(0xf6b)
1c005b98:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005b9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ba0:	293db2cc 	st.b	$r12,$r22,-148(0xf6c)
1c005ba4:	0015000c 	move	$r12,$r0
1c005ba8:	50013800 	b	312(0x138) # 1c005ce0 <date+0x708>
1c005bac:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005bb0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005bb4:	2880018c 	ld.w	$r12,$r12,0
1c005bb8:	28be12cd 	ld.w	$r13,$r22,-124(0xf84)
1c005bbc:	001501a5 	move	$r5,$r13
1c005bc0:	00150184 	move	$r4,$r12
1c005bc4:	57ce93ff 	bl	-12656(0xfffce90) # 1c002a54 <strcmp>
1c005bc8:	0015008c 	move	$r12,$r4
1c005bcc:	44008980 	bnez	$r12,136(0x88) # 1c005c54 <date+0x67c>
1c005bd0:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005bd4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005bd8:	2880018c 	ld.w	$r12,$r12,0
1c005bdc:	00150184 	move	$r4,$r12
1c005be0:	57ef2bff 	bl	-4312(0xfffef28) # 1c004b08 <str2num>
1c005be4:	29bea2c4 	st.w	$r4,$r22,-88(0xfa8)
1c005be8:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c005bec:	140000ec 	lu12i.w	$r12,7(0x7)
1c005bf0:	0394c18c 	ori	$r12,$r12,0x530
1c005bf4:	0012b1ac 	sltu	$r12,$r13,$r12
1c005bf8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005bfc:	28bea2ce 	ld.w	$r14,$r22,-88(0xfa8)
1c005c00:	1400018c 	lu12i.w	$r12,12(0xc)
1c005c04:	038d458c 	ori	$r12,$r12,0x351
1c005c08:	0012b1cc 	sltu	$r12,$r14,$r12
1c005c0c:	03c0058c 	xori	$r12,$r12,0x1
1c005c10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c14:	001531ac 	or	$r12,$r13,$r12
1c005c18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c1c:	40001980 	beqz	$r12,24(0x18) # 1c005c34 <date+0x65c>
1c005c20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005c24:	02b75084 	addi.w	$r4,$r4,-556(0xdd4)
1c005c28:	57bfa7ff 	bl	-16476(0xfffbfa4) # 1c001bcc <myprintf>
1c005c2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c30:	5000b000 	b	176(0xb0) # 1c005ce0 <date+0x708>
1c005c34:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005c38:	0044918c 	srli.w	$r12,$r12,0x4
1c005c3c:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c005c40:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005c44:	03403d8c 	andi	$r12,$r12,0xf
1c005c48:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c005c4c:	0015000c 	move	$r12,$r0
1c005c50:	50009000 	b	144(0x90) # 1c005ce0 <date+0x708>
1c005c54:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005c58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c5c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c005c6c <date+0x694>
1c005c60:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005c64:	02b6d084 	addi.w	$r4,$r4,-588(0xdb4)
1c005c68:	57bf67ff 	bl	-16540(0xfffbf64) # 1c001bcc <myprintf>
1c005c6c:	02bd82cc 	addi.w	$r12,$r22,-160(0xf60)
1c005c70:	00150185 	move	$r5,$r12
1c005c74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005c78:	57d0bbff 	bl	-12104(0xfffd0b8) # 1c002d30 <RtcUpdateData>
1c005c7c:	2a3d96cc 	ld.bu	$r12,$r22,-155(0xf65)
1c005c80:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c005c84:	2a3d92cc 	ld.bu	$r12,$r22,-156(0xf64)
1c005c88:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c005c8c:	2a3d8ecc 	ld.bu	$r12,$r22,-157(0xf63)
1c005c90:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c005c94:	2a3d8acc 	ld.bu	$r12,$r22,-158(0xf62)
1c005c98:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c005c9c:	2a3d86cc 	ld.bu	$r12,$r22,-159(0xf61)
1c005ca0:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c005ca4:	2a3d82cc 	ld.bu	$r12,$r22,-160(0xf60)
1c005ca8:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c005cac:	28be52c7 	ld.w	$r7,$r22,-108(0xf94)
1c005cb0:	28be62c6 	ld.w	$r6,$r22,-104(0xf98)
1c005cb4:	28be72c5 	ld.w	$r5,$r22,-100(0xf9c)
1c005cb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005cbc:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c005cc0:	57bf0fff 	bl	-16628(0xfffbf0c) # 1c001bcc <myprintf>
1c005cc4:	28be22c7 	ld.w	$r7,$r22,-120(0xf88)
1c005cc8:	28be32c6 	ld.w	$r6,$r22,-116(0xf8c)
1c005ccc:	28be42c5 	ld.w	$r5,$r22,-112(0xf90)
1c005cd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005cd4:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c005cd8:	57bef7ff 	bl	-16652(0xfffbef4) # 1c001bcc <myprintf>
1c005cdc:	0015000c 	move	$r12,$r0
1c005ce0:	00150184 	move	$r4,$r12
1c005ce4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c005ce8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c005cec:	28829077 	ld.w	$r23,$r3,164(0xa4)
1c005cf0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c005cf4:	4c000020 	jirl	$r0,$r1,0

1c005cf8 <watch_dog>:
watch_dog():
1c005cf8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005cfc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d0c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d10:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005d14:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005d18:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c005d1c:	57beb3ff 	bl	-16720(0xfffbeb0) # 1c001bcc <myprintf>
1c005d20:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005d24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d28:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c005d44 <watch_dog+0x4c>
1c005d2c:	57d4dbff 	bl	-11048(0xfffd4d8) # 1c003204 <WDG_DogFeed>
1c005d30:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005d34:	02b57084 	addi.w	$r4,$r4,-676(0xd5c)
1c005d38:	57be97ff 	bl	-16748(0xfffbe94) # 1c001bcc <myprintf>
1c005d3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d40:	50002800 	b	40(0x28) # 1c005d68 <watch_dog+0x70>
1c005d44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d48:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005d4c:	2880018c 	ld.w	$r12,$r12,0
1c005d50:	00150184 	move	$r4,$r12
1c005d54:	57edb7ff 	bl	-4684(0xfffedb4) # 1c004b08 <str2num>
1c005d58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005d5c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005d60:	57d45bff 	bl	-11176(0xfffd458) # 1c0031b8 <WDG_SetWatchDog>
1c005d64:	0015000c 	move	$r12,$r0
1c005d68:	00150184 	move	$r4,$r12
1c005d6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d78:	4c000020 	jirl	$r0,$r1,0

1c005d7c <i2cp>:
i2cp():
1c005d7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005d80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d90:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d94:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005d98:	00150184 	move	$r4,$r12
1c005d9c:	57d59bff 	bl	-10856(0xfffd598) # 1c003334 <I2C_StructInit>
1c005da0:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005da4:	00150185 	move	$r5,$r12
1c005da8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005dac:	57d487ff 	bl	-11132(0xfffd484) # 1c003230 <I2C_Init>
1c005db0:	03400000 	andi	$r0,$r0,0x0
1c005db4:	00150184 	move	$r4,$r12
1c005db8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005dbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005dc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005dc4:	4c000020 	jirl	$r0,$r1,0

1c005dc8 <i2cw>:
i2cw():
1c005dc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005dcc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005dd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005dd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005dd8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ddc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005de0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005de4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005de8:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005e00 <i2cw+0x38>
1c005dec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005df0:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c005df4:	57bddbff 	bl	-16936(0xfffbdd8) # 1c001bcc <myprintf>
1c005df8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005dfc:	5000c400 	b	196(0xc4) # 1c005ec0 <i2cw+0xf8>
1c005e00:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e04:	02ac8084 	addi.w	$r4,$r4,-1248(0xb20)
1c005e08:	57bdc7ff 	bl	-16956(0xfffbdc4) # 1c001bcc <myprintf>
1c005e0c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e10:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005e14:	2880018c 	ld.w	$r12,$r12,0
1c005e18:	00150184 	move	$r4,$r12
1c005e1c:	57ecefff 	bl	-4884(0xfffecec) # 1c004b08 <str2num>
1c005e20:	0015008c 	move	$r12,$r4
1c005e24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005e28:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e2c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005e30:	2880018c 	ld.w	$r12,$r12,0
1c005e34:	00150184 	move	$r4,$r12
1c005e38:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c004b08 <str2num>
1c005e3c:	0015008c 	move	$r12,$r4
1c005e40:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005e44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e48:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005e4c:	2880018c 	ld.w	$r12,$r12,0
1c005e50:	00150184 	move	$r4,$r12
1c005e54:	57ecb7ff 	bl	-4940(0xfffecb4) # 1c004b08 <str2num>
1c005e58:	0015008c 	move	$r12,$r4
1c005e5c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005e60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005e64:	00409d8c 	slli.w	$r12,$r12,0x7
1c005e68:	0000598d 	ext.w.h	$r13,$r12
1c005e6c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005e70:	0000598c 	ext.w.h	$r12,$r12
1c005e74:	001531ac 	or	$r12,$r13,$r12
1c005e78:	0000598c 	ext.w.h	$r12,$r12
1c005e7c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005e80:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005e84:	00150185 	move	$r5,$r12
1c005e88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e8c:	02b11084 	addi.w	$r4,$r4,-956(0xc44)
1c005e90:	57bd3fff 	bl	-17092(0xfffbd3c) # 1c001bcc <myprintf>
1c005e94:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005e98:	00150185 	move	$r5,$r12
1c005e9c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005ea0:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c005ea4:	57bd2bff 	bl	-17112(0xfffbd28) # 1c001bcc <myprintf>
1c005ea8:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005eac:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005eb0:	001501a5 	move	$r5,$r13
1c005eb4:	00150184 	move	$r4,$r12
1c005eb8:	57d73fff 	bl	-10436(0xfffd73c) # 1c0035f4 <CAT24_Write>
1c005ebc:	0015000c 	move	$r12,$r0
1c005ec0:	00150184 	move	$r4,$r12
1c005ec4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ec8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ecc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ed0:	4c000020 	jirl	$r0,$r1,0

1c005ed4 <i2cr>:
i2cr():
1c005ed4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ed8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005edc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ee0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ee4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ee8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005eec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ef0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005ef4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005f0c <i2cr+0x38>
1c005ef8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005efc:	02afb084 	addi.w	$r4,$r4,-1044(0xbec)
1c005f00:	57bccfff 	bl	-17204(0xfffbccc) # 1c001bcc <myprintf>
1c005f04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f08:	50009800 	b	152(0x98) # 1c005fa0 <i2cr+0xcc>
1c005f0c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f10:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005f14:	2880018c 	ld.w	$r12,$r12,0
1c005f18:	00150184 	move	$r4,$r12
1c005f1c:	57ebefff 	bl	-5140(0xfffebec) # 1c004b08 <str2num>
1c005f20:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005f24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f28:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005f2c:	2880018c 	ld.w	$r12,$r12,0
1c005f30:	00150184 	move	$r4,$r12
1c005f34:	57ebd7ff 	bl	-5164(0xfffebd4) # 1c004b08 <str2num>
1c005f38:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c005f3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f40:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005f44:	00409d8c 	slli.w	$r12,$r12,0x7
1c005f48:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f4c:	140000ec 	lu12i.w	$r12,7(0x7)
1c005f50:	03be018c 	ori	$r12,$r12,0xf80
1c005f54:	0014b1ac 	and	$r12,$r13,$r12
1c005f58:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005f60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005f64:	0343fd8c 	andi	$r12,$r12,0xff
1c005f68:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005f6c:	001531ac 	or	$r12,$r13,$r12
1c005f70:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005f74:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c005f78:	00150184 	move	$r4,$r12
1c005f7c:	57d7d7ff 	bl	-10284(0xfffd7d4) # 1c003750 <CAT24_Read>
1c005f80:	0015008c 	move	$r12,$r4
1c005f84:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c005f88:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005f8c:	00150185 	move	$r5,$r12
1c005f90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005f94:	02ade084 	addi.w	$r4,$r4,-1160(0xb78)
1c005f98:	57bc37ff 	bl	-17356(0xfffbc34) # 1c001bcc <myprintf>
1c005f9c:	0015000c 	move	$r12,$r0
1c005fa0:	00150184 	move	$r4,$r12
1c005fa4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fa8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fb0:	4c000020 	jirl	$r0,$r1,0

1c005fb4 <adc>:
adc():
1c005fb4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005fb8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005fbc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005fc0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005fc4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005fc8:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c005fcc:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005fd0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005fd4:	2880018c 	ld.w	$r12,$r12,0
1c005fd8:	00150184 	move	$r4,$r12
1c005fdc:	57eb2fff 	bl	-5332(0xfffeb2c) # 1c004b08 <str2num>
1c005fe0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005fe4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005fe8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005fec:	2880018c 	ld.w	$r12,$r12,0
1c005ff0:	00150184 	move	$r4,$r12
1c005ff4:	57eb17ff 	bl	-5356(0xfffeb14) # 1c004b08 <str2num>
1c005ff8:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c005ffc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006000:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006004:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c00602c <adc+0x78>
1c006008:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00600c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006010:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c00602c <adc+0x78>
1c006014:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006018:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00601c:	6400118d 	bge	$r12,$r13,16(0x10) # 1c00602c <adc+0x78>
1c006020:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006024:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006028:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c006034 <adc+0x80>
1c00602c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006030:	50000800 	b	8(0x8) # 1c006038 <adc+0x84>
1c006034:	0015000c 	move	$r12,$r0
1c006038:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00603c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006040:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c006044:	2880018c 	ld.w	$r12,$r12,0
1c006048:	00150184 	move	$r4,$r12
1c00604c:	57eabfff 	bl	-5444(0xfffeabc) # 1c004b08 <str2num>
1c006050:	0015008c 	move	$r12,$r4
1c006054:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006058:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00605c:	40003180 	beqz	$r12,48(0x30) # 1c00608c <adc+0xd8>
1c006060:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006064:	02aaf084 	addi.w	$r4,$r4,-1348(0xabc)
1c006068:	57bb67ff 	bl	-17564(0xfffbb64) # 1c001bcc <myprintf>
1c00606c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006070:	02ab3084 	addi.w	$r4,$r4,-1332(0xacc)
1c006074:	57bb5bff 	bl	-17576(0xfffbb58) # 1c001bcc <myprintf>
1c006078:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00607c:	02ac7084 	addi.w	$r4,$r4,-1252(0xb1c)
1c006080:	57bb4fff 	bl	-17588(0xfffbb4c) # 1c001bcc <myprintf>
1c006084:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006088:	5000bc00 	b	188(0xbc) # 1c006144 <adc+0x190>
1c00608c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006090:	0380118c 	ori	$r12,$r12,0x4
1c006094:	1400010d 	lu12i.w	$r13,8(0x8)
1c006098:	2980018d 	st.w	$r13,$r12,0
1c00609c:	50007800 	b	120(0x78) # 1c006114 <adc+0x160>
1c0060a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0060a4:	0040918e 	slli.w	$r14,$r12,0x4
1c0060a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0060ac:	0381b18c 	ori	$r12,$r12,0x6c
1c0060b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0060b4:	001035cd 	add.w	$r13,$r14,$r13
1c0060b8:	2980018d 	st.w	$r13,$r12,0
1c0060bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0060c0:	0381b18c 	ori	$r12,$r12,0x6c
1c0060c4:	2880018d 	ld.w	$r13,$r12,0
1c0060c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0060cc:	0381b18c 	ori	$r12,$r12,0x6c
1c0060d0:	038401ad 	ori	$r13,$r13,0x100
1c0060d4:	2980018d 	st.w	$r13,$r12,0
1c0060d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0060dc:	0381c18c 	ori	$r12,$r12,0x70
1c0060e0:	2880018c 	ld.w	$r12,$r12,0
1c0060e4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0060e8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0060ec:	03b4580c 	ori	$r12,$r0,0xd16
1c0060f0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0060f4:	0044b18c 	srli.w	$r12,$r12,0xc
1c0060f8:	00150185 	move	$r5,$r12
1c0060fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006100:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c006104:	57bacbff 	bl	-17720(0xfffbac8) # 1c001bcc <myprintf>
1c006108:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00610c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006110:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006114:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006118:	47ff899f 	bnez	$r12,-120(0x7fff88) # 1c0060a0 <adc+0xec>
1c00611c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006120:	0380118c 	ori	$r12,$r12,0x4
1c006124:	2880018e 	ld.w	$r14,$r12,0
1c006128:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00612c:	0380118c 	ori	$r12,$r12,0x4
1c006130:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c006134:	03bffdad 	ori	$r13,$r13,0xfff
1c006138:	0014b5cd 	and	$r13,$r14,$r13
1c00613c:	2980018d 	st.w	$r13,$r12,0
1c006140:	0015000c 	move	$r12,$r0
1c006144:	00150184 	move	$r4,$r12
1c006148:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00614c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006150:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006154:	4c000020 	jirl	$r0,$r1,0

1c006158 <batdet>:
batdet():
1c006158:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00615c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006160:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00616c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006170:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006174:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006178:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006190 <batdet+0x38>
1c00617c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006180:	02a8f084 	addi.w	$r4,$r4,-1476(0xa3c)
1c006184:	57ba4bff 	bl	-17848(0xfffba48) # 1c001bcc <myprintf>
1c006188:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00618c:	50012800 	b	296(0x128) # 1c0062b4 <batdet+0x15c>
1c006190:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006194:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006198:	2880018c 	ld.w	$r12,$r12,0
1c00619c:	00150184 	move	$r4,$r12
1c0061a0:	57e96bff 	bl	-5784(0xfffe968) # 1c004b08 <str2num>
1c0061a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0061a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0061ac:	44001d80 	bnez	$r12,28(0x1c) # 1c0061c8 <batdet+0x70>
1c0061b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061b4:	2880018e 	ld.w	$r14,$r12,0
1c0061b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061bc:	1400040d 	lu12i.w	$r13,32(0x20)
1c0061c0:	001535cd 	or	$r13,$r14,$r13
1c0061c4:	2980018d 	st.w	$r13,$r12,0
1c0061c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061cc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061d0:	6800bd8d 	bltu	$r12,$r13,188(0xbc) # 1c00628c <batdet+0x134>
1c0061d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0061dc:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c006218 <batdet+0xc0>
1c0061e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0061e4:	40001580 	beqz	$r12,20(0x14) # 1c0061f8 <batdet+0xa0>
1c0061e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061ec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061f0:	580061ac 	beq	$r13,$r12,96(0x60) # 1c006250 <batdet+0xf8>
1c0061f4:	5000ac00 	b	172(0xac) # 1c0062a0 <batdet+0x148>
1c0061f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0061fc:	2880018e 	ld.w	$r14,$r12,0
1c006200:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006204:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006208:	03bffdad 	ori	$r13,$r13,0xfff
1c00620c:	0014b5cd 	and	$r13,$r14,$r13
1c006210:	2980018d 	st.w	$r13,$r12,0
1c006214:	50008c00 	b	140(0x8c) # 1c0062a0 <batdet+0x148>
1c006218:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00621c:	2880018e 	ld.w	$r14,$r12,0
1c006220:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006224:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006228:	03bffdad 	ori	$r13,$r13,0xfff
1c00622c:	0014b5cd 	and	$r13,$r14,$r13
1c006230:	2980018d 	st.w	$r13,$r12,0
1c006234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006238:	2880018e 	ld.w	$r14,$r12,0
1c00623c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006240:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c006244:	001535cd 	or	$r13,$r14,$r13
1c006248:	2980018d 	st.w	$r13,$r12,0
1c00624c:	50005400 	b	84(0x54) # 1c0062a0 <batdet+0x148>
1c006250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006254:	2880018e 	ld.w	$r14,$r12,0
1c006258:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00625c:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006260:	03bffdad 	ori	$r13,$r13,0xfff
1c006264:	0014b5cd 	and	$r13,$r14,$r13
1c006268:	2980018d 	st.w	$r13,$r12,0
1c00626c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006270:	2880018e 	ld.w	$r14,$r12,0
1c006274:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006278:	1406000d 	lu12i.w	$r13,12288(0x3000)
1c00627c:	001535cd 	or	$r13,$r14,$r13
1c006280:	2980018d 	st.w	$r13,$r12,0
1c006284:	03400000 	andi	$r0,$r0,0x0
1c006288:	50001800 	b	24(0x18) # 1c0062a0 <batdet+0x148>
1c00628c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006290:	02a57084 	addi.w	$r4,$r4,-1700(0x95c)
1c006294:	57b93bff 	bl	-18120(0xfffb938) # 1c001bcc <myprintf>
1c006298:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00629c:	50001800 	b	24(0x18) # 1c0062b4 <batdet+0x15c>
1c0062a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062a4:	0380118c 	ori	$r12,$r12,0x4
1c0062a8:	03a0000d 	ori	$r13,$r0,0x800
1c0062ac:	2980018d 	st.w	$r13,$r12,0
1c0062b0:	0015000c 	move	$r12,$r0
1c0062b4:	00150184 	move	$r4,$r12
1c0062b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0062bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0062c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0062c4:	4c000020 	jirl	$r0,$r1,0

1c0062c8 <copy>:
copy():
1c0062c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0062cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0062d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0062d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0062d8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0062dc:	0380118c 	ori	$r12,$r12,0x4
1c0062e0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0062e4:	2980018d 	st.w	$r13,$r12,0
1c0062e8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0062ec:	0380218c 	ori	$r12,$r12,0x8
1c0062f0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0062f4:	2980018d 	st.w	$r13,$r12,0
1c0062f8:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0062fc:	0380618c 	ori	$r12,$r12,0x18
1c006300:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006304:	2980018d 	st.w	$r13,$r12,0
1c006308:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c00630c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006310:	5000b000 	b	176(0xb0) # 1c0063c0 <copy+0xf8>
1c006314:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006318:	140007ec 	lu12i.w	$r12,63(0x3f)
1c00631c:	03bffd8c 	ori	$r12,$r12,0xfff
1c006320:	0014b1ae 	and	$r14,$r13,$r12
1c006324:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006328:	1540000d 	lu12i.w	$r13,-393216(0xa0000)
1c00632c:	001535cd 	or	$r13,$r14,$r13
1c006330:	2980018d 	st.w	$r13,$r12,0
1c006334:	57ced3ff 	bl	-12592(0xfffced0) # 1c003204 <WDG_DogFeed>
1c006338:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00633c:	02a31084 	addi.w	$r4,$r4,-1852(0x8c4)
1c006340:	57b88fff 	bl	-18292(0xfffb88c) # 1c001bcc <myprintf>
1c006344:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006348:	1480000d 	lu12i.w	$r13,262144(0x40000)
1c00634c:	2980018d 	st.w	$r13,$r12,0
1c006350:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006354:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006358:	50002c00 	b	44(0x2c) # 1c006384 <copy+0xbc>
1c00635c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006360:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c006364:	001031ac 	add.w	$r12,$r13,$r12
1c006368:	0015018d 	move	$r13,$r12
1c00636c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006370:	288001ad 	ld.w	$r13,$r13,0
1c006374:	2980018d 	st.w	$r13,$r12,0
1c006378:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00637c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006380:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006388:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c00638c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006390:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c00635c <copy+0x94>
1c006394:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006398:	140007ec 	lu12i.w	$r12,63(0x3f)
1c00639c:	03bffd8c 	ori	$r12,$r12,0xfff
1c0063a0:	0014b1ae 	and	$r14,$r13,$r12
1c0063a4:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0063a8:	15c0000d 	lu12i.w	$r13,-131072(0xe0000)
1c0063ac:	001535cd 	or	$r13,$r14,$r13
1c0063b0:	2980018d 	st.w	$r13,$r12,0
1c0063b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063b8:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c0063bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0063c4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0063c8:	6bff4dac 	bltu	$r13,$r12,-180(0x3ff4c) # 1c006314 <copy+0x4c>
1c0063cc:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0063d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063d4:	50006000 	b	96(0x60) # 1c006434 <copy+0x16c>
1c0063d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0063e0:	50003800 	b	56(0x38) # 1c006418 <copy+0x150>
1c0063e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0063e8:	2880018d 	ld.w	$r13,$r12,0
1c0063ec:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0063f0:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c0063f4:	001031cc 	add.w	$r12,$r14,$r12
1c0063f8:	2880018c 	ld.w	$r12,$r12,0
1c0063fc:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00640c <copy+0x144>
1c006400:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006404:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c006408:	57b7c7ff 	bl	-18492(0xfffb7c4) # 1c001bcc <myprintf>
1c00640c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006410:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006414:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00641c:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c006420:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006424:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c0063e4 <copy+0x11c>
1c006428:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00642c:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c006430:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006434:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006438:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00643c:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c0063d8 <copy+0x110>
1c006440:	0015000c 	move	$r12,$r0
1c006444:	00150184 	move	$r4,$r12
1c006448:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00644c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006450:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006454:	4c000020 	jirl	$r0,$r1,0

1c006458 <uart_init>:
uart_init():
1c006458:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00645c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006460:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006464:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006468:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00646c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006470:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006474:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006478:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006490 <uart_init+0x38>
1c00647c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006480:	029e4084 	addi.w	$r4,$r4,1936(0x790)
1c006484:	57b74bff 	bl	-18616(0xfffb748) # 1c001bcc <myprintf>
1c006488:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00648c:	50006400 	b	100(0x64) # 1c0064f0 <uart_init+0x98>
1c006490:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006494:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006498:	2880018c 	ld.w	$r12,$r12,0
1c00649c:	00150184 	move	$r4,$r12
1c0064a0:	57e66bff 	bl	-6552(0xfffe668) # 1c004b08 <str2num>
1c0064a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0064a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0064b0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0064c0 <uart_init+0x68>
1c0064b4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0064b8:	57babbff 	bl	-17736(0xfffbab8) # 1c001f70 <Uart_init>
1c0064bc:	50003000 	b	48(0x30) # 1c0064ec <uart_init+0x94>
1c0064c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0064c8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0064d8 <uart_init+0x80>
1c0064cc:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c0064d0:	57baa3ff 	bl	-17760(0xfffbaa0) # 1c001f70 <Uart_init>
1c0064d4:	50001800 	b	24(0x18) # 1c0064ec <uart_init+0x94>
1c0064d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0064dc:	029cd084 	addi.w	$r4,$r4,1844(0x734)
1c0064e0:	57b6efff 	bl	-18708(0xfffb6ec) # 1c001bcc <myprintf>
1c0064e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0064e8:	50000800 	b	8(0x8) # 1c0064f0 <uart_init+0x98>
1c0064ec:	0015000c 	move	$r12,$r0
1c0064f0:	00150184 	move	$r4,$r12
1c0064f4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0064f8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0064fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006500:	4c000020 	jirl	$r0,$r1,0

1c006504 <spi_init>:
spi_init():
1c006504:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006508:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00650c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006510:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006514:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006518:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00651c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006520:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c006524:	2900018d 	st.b	$r13,$r12,0
1c006528:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00652c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c006530:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006534:	57b257ff 	bl	-19884(0xfffb254) # 1c001788 <Spiflash_Rdid>
1c006538:	0015008c 	move	$r12,$r4
1c00653c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006540:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006544:	00150185 	move	$r5,$r12
1c006548:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00654c:	029b7084 	addi.w	$r4,$r4,1756(0x6dc)
1c006550:	57b67fff 	bl	-18820(0xfffb67c) # 1c001bcc <myprintf>
1c006554:	03400000 	andi	$r0,$r0,0x0
1c006558:	00150184 	move	$r4,$r12
1c00655c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006560:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006564:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006568:	4c000020 	jirl	$r0,$r1,0

1c00656c <spi_write>:
spi_write():
1c00656c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006570:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006574:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006578:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00657c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006580:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c006584:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006588:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00658c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0065a4 <spi_write+0x38>
1c006590:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006594:	029a8084 	addi.w	$r4,$r4,1696(0x6a0)
1c006598:	57b637ff 	bl	-18892(0xfffb634) # 1c001bcc <myprintf>
1c00659c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0065a0:	5000e800 	b	232(0xe8) # 1c006688 <spi_write+0x11c>
1c0065a4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0065a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0065ac:	2880018c 	ld.w	$r12,$r12,0
1c0065b0:	00150184 	move	$r4,$r12
1c0065b4:	57e557ff 	bl	-6828(0xfffe554) # 1c004b08 <str2num>
1c0065b8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0065bc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0065c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0065c4:	029a3084 	addi.w	$r4,$r4,1676(0x68c)
1c0065c8:	57b607ff 	bl	-18940(0xfffb604) # 1c001bcc <myprintf>
1c0065cc:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c0065d0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0065d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0065d8:	50009400 	b	148(0x94) # 1c00666c <spi_write+0x100>
1c0065dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0065e0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0065e4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0065e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0065ec:	50004000 	b	64(0x40) # 1c00662c <spi_write+0xc0>
1c0065f0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0065f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065f8:	001031ad 	add.w	$r13,$r13,$r12
1c0065fc:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006600:	001031ac 	add.w	$r12,$r13,$r12
1c006604:	0015018e 	move	$r14,$r12
1c006608:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00660c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006610:	001031ac 	add.w	$r12,$r13,$r12
1c006614:	2a0001cd 	ld.bu	$r13,$r14,0
1c006618:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00661c:	2900018d 	st.b	$r13,$r12,0
1c006620:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006624:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006628:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00662c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006630:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006634:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0065f0 <spi_write+0x84>
1c006638:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00663c:	02989084 	addi.w	$r4,$r4,1572(0x624)
1c006640:	57b58fff 	bl	-19060(0xfffb58c) # 1c001bcc <myprintf>
1c006644:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006648:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00664c:	001031ac 	add.w	$r12,$r13,$r12
1c006650:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006654:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c006658:	00150184 	move	$r4,$r12
1c00665c:	57b227ff 	bl	-19932(0xfffb224) # 1c001880 <Spiflash_Page_Program>
1c006660:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006664:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00666c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006674:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c0065dc <spi_write+0x70>
1c006678:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00667c:	0297a084 	addi.w	$r4,$r4,1512(0x5e8)
1c006680:	57b54fff 	bl	-19124(0xfffb54c) # 1c001bcc <myprintf>
1c006684:	0015000c 	move	$r12,$r0
1c006688:	00150184 	move	$r4,$r12
1c00668c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006690:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006694:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006698:	4c000020 	jirl	$r0,$r1,0

1c00669c <spi_read>:
spi_read():
1c00669c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0066a0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0066a4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0066a8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0066ac:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0066b0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0066b4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0066b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0066bc:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0066d4 <spi_read+0x38>
1c0066c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066c4:	02969084 	addi.w	$r4,$r4,1444(0x5a4)
1c0066c8:	57b507ff 	bl	-19196(0xfffb504) # 1c001bcc <myprintf>
1c0066cc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066d0:	50012800 	b	296(0x128) # 1c0067f8 <spi_read+0x15c>
1c0066d4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0066d8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0066dc:	2880018c 	ld.w	$r12,$r12,0
1c0066e0:	00150184 	move	$r4,$r12
1c0066e4:	57e427ff 	bl	-7132(0xfffe424) # 1c004b08 <str2num>
1c0066e8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0066ec:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0066f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0066f4:	02963084 	addi.w	$r4,$r4,1420(0x58c)
1c0066f8:	57b4d7ff 	bl	-19244(0xfffb4d4) # 1c001bcc <myprintf>
1c0066fc:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006700:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006704:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006708:	5000d400 	b	212(0xd4) # 1c0067dc <spi_read+0x140>
1c00670c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006710:	0040a18c 	slli.w	$r12,$r12,0x8
1c006714:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006718:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00671c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006720:	001031ac 	add.w	$r12,$r13,$r12
1c006724:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006728:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00672c:	00150184 	move	$r4,$r12
1c006730:	57b1f7ff 	bl	-19980(0xfffb1f4) # 1c001924 <Spiflash_Read_Bytes>
1c006734:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006738:	50008000 	b	128(0x80) # 1c0067b8 <spi_read+0x11c>
1c00673c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006744:	001031ac 	add.w	$r12,$r13,$r12
1c006748:	2a00018d 	ld.bu	$r13,$r12,0
1c00674c:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006750:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006754:	001031ce 	add.w	$r14,$r14,$r12
1c006758:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c00675c:	001031cc 	add.w	$r12,$r14,$r12
1c006760:	2a00018c 	ld.bu	$r12,$r12,0
1c006764:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006768:	580045ac 	beq	$r13,$r12,68(0x44) # 1c0067ac <spi_read+0x110>
1c00676c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006774:	001031ac 	add.w	$r12,$r13,$r12
1c006778:	2a00018c 	ld.bu	$r12,$r12,0
1c00677c:	0015018e 	move	$r14,$r12
1c006780:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006784:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006788:	001031ad 	add.w	$r13,$r13,$r12
1c00678c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006790:	001031ac 	add.w	$r12,$r13,$r12
1c006794:	00150186 	move	$r6,$r12
1c006798:	001501c5 	move	$r5,$r14
1c00679c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067a0:	0293c084 	addi.w	$r4,$r4,1264(0x4f0)
1c0067a4:	57b42bff 	bl	-19416(0xfffb428) # 1c001bcc <myprintf>
1c0067a8:	50001c00 	b	28(0x1c) # 1c0067c4 <spi_read+0x128>
1c0067ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0067b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0067bc:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0067c0:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c00673c <spi_read+0xa0>
1c0067c4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067c8:	02926084 	addi.w	$r4,$r4,1176(0x498)
1c0067cc:	57b403ff 	bl	-19456(0xfffb400) # 1c001bcc <myprintf>
1c0067d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0067d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0067dc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0067e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067e4:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c00670c <spi_read+0x70>
1c0067e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067ec:	0291e084 	addi.w	$r4,$r4,1144(0x478)
1c0067f0:	57b3dfff 	bl	-19492(0xfffb3dc) # 1c001bcc <myprintf>
1c0067f4:	0015000c 	move	$r12,$r0
1c0067f8:	00150184 	move	$r4,$r12
1c0067fc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006800:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006804:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006808:	4c000020 	jirl	$r0,$r1,0

1c00680c <spi_erase>:
spi_erase():
1c00680c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006810:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006814:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006818:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00681c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006820:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006824:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006828:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00682c:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006844 <spi_erase+0x38>
1c006830:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006834:	0291f084 	addi.w	$r4,$r4,1148(0x47c)
1c006838:	57b397ff 	bl	-19564(0xfffb394) # 1c001bcc <myprintf>
1c00683c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006840:	50004800 	b	72(0x48) # 1c006888 <spi_erase+0x7c>
1c006844:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006848:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00684c:	2880018c 	ld.w	$r12,$r12,0
1c006850:	00150184 	move	$r4,$r12
1c006854:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c004b08 <str2num>
1c006858:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00685c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006860:	0291b084 	addi.w	$r4,$r4,1132(0x46c)
1c006864:	57b36bff 	bl	-19608(0xfffb368) # 1c001bcc <myprintf>
1c006868:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00686c:	57af87ff 	bl	-20604(0xfffaf84) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006870:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006874:	1400020c 	lu12i.w	$r12,16(0x10)
1c006878:	001031ac 	add.w	$r12,$r13,$r12
1c00687c:	00150184 	move	$r4,$r12
1c006880:	57af73ff 	bl	-20624(0xfffaf70) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006884:	0015000c 	move	$r12,$r0
1c006888:	00150184 	move	$r4,$r12
1c00688c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006890:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006894:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006898:	4c000020 	jirl	$r0,$r1,0

1c00689c <spi_flash>:
spi_flash():
1c00689c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0068a0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0068a4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0068a8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0068ac:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0068b0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0068b4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0068b8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0068bc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0068c0:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c0068c4:	2900018d 	st.b	$r13,$r12,0
1c0068c8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0068cc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0068d0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0068d4:	57aeb7ff 	bl	-20812(0xfffaeb4) # 1c001788 <Spiflash_Rdid>
1c0068d8:	0015008c 	move	$r12,$r4
1c0068dc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0068e0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0068e4:	00150185 	move	$r5,$r12
1c0068e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068ec:	028cf084 	addi.w	$r4,$r4,828(0x33c)
1c0068f0:	57b2dfff 	bl	-19748(0xfffb2dc) # 1c001bcc <myprintf>
1c0068f4:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c0068f8:	57aefbff 	bl	-20744(0xfffaef8) # 1c0017f0 <Spiflash_Block64k_Erase>
1c0068fc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006900:	1400020c 	lu12i.w	$r12,16(0x10)
1c006904:	001031ac 	add.w	$r12,$r13,$r12
1c006908:	00150184 	move	$r4,$r12
1c00690c:	57aee7ff 	bl	-20764(0xfffaee4) # 1c0017f0 <Spiflash_Block64k_Erase>
1c006910:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006914:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c006918:	57b2b7ff 	bl	-19788(0xfffb2b4) # 1c001bcc <myprintf>
1c00691c:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006920:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006924:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006928:	50009400 	b	148(0x94) # 1c0069bc <spi_flash+0x120>
1c00692c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006930:	0040a18c 	slli.w	$r12,$r12,0x8
1c006934:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006938:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00693c:	50004000 	b	64(0x40) # 1c00697c <spi_flash+0xe0>
1c006940:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006948:	001031ad 	add.w	$r13,$r13,$r12
1c00694c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006950:	001031ac 	add.w	$r12,$r13,$r12
1c006954:	0015018e 	move	$r14,$r12
1c006958:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00695c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006960:	001031ac 	add.w	$r12,$r13,$r12
1c006964:	2a0001cd 	ld.bu	$r13,$r14,0
1c006968:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00696c:	2900018d 	st.b	$r13,$r12,0
1c006970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006974:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006978:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00697c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006980:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006984:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006940 <spi_flash+0xa4>
1c006988:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00698c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006990:	001031ac 	add.w	$r12,$r13,$r12
1c006994:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006998:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c00699c:	00150184 	move	$r4,$r12
1c0069a0:	57aee3ff 	bl	-20768(0xfffaee0) # 1c001880 <Spiflash_Page_Program>
1c0069a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069a8:	028ae084 	addi.w	$r4,$r4,696(0x2b8)
1c0069ac:	57b223ff 	bl	-19936(0xfffb220) # 1c001bcc <myprintf>
1c0069b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0069b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0069bc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0069c0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0069c4:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c00692c <spi_flash+0x90>
1c0069c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069cc:	028c8084 	addi.w	$r4,$r4,800(0x320)
1c0069d0:	57b1ffff 	bl	-19972(0xfffb1fc) # 1c001bcc <myprintf>
1c0069d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069d8:	028c9084 	addi.w	$r4,$r4,804(0x324)
1c0069dc:	57b1f3ff 	bl	-19984(0xfffb1f0) # 1c001bcc <myprintf>
1c0069e0:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c0069e4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0069e8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0069ec:	5000d400 	b	212(0xd4) # 1c006ac0 <spi_flash+0x224>
1c0069f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0069f4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0069f8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0069fc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006a00:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006a04:	001031ac 	add.w	$r12,$r13,$r12
1c006a08:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006a0c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006a10:	00150184 	move	$r4,$r12
1c006a14:	57af13ff 	bl	-20720(0xfffaf10) # 1c001924 <Spiflash_Read_Bytes>
1c006a18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006a1c:	50008000 	b	128(0x80) # 1c006a9c <spi_flash+0x200>
1c006a20:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006a24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a28:	001031ac 	add.w	$r12,$r13,$r12
1c006a2c:	2a00018d 	ld.bu	$r13,$r12,0
1c006a30:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a38:	001031ce 	add.w	$r14,$r14,$r12
1c006a3c:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006a40:	001031cc 	add.w	$r12,$r14,$r12
1c006a44:	2a00018c 	ld.bu	$r12,$r12,0
1c006a48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a4c:	580045ac 	beq	$r13,$r12,68(0x44) # 1c006a90 <spi_flash+0x1f4>
1c006a50:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a58:	001031ac 	add.w	$r12,$r13,$r12
1c006a5c:	2a00018c 	ld.bu	$r12,$r12,0
1c006a60:	0015018e 	move	$r14,$r12
1c006a64:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a6c:	001031ad 	add.w	$r13,$r13,$r12
1c006a70:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006a74:	001031ac 	add.w	$r12,$r13,$r12
1c006a78:	00150186 	move	$r6,$r12
1c006a7c:	001501c5 	move	$r5,$r14
1c006a80:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006a84:	02883084 	addi.w	$r4,$r4,524(0x20c)
1c006a88:	57b147ff 	bl	-20156(0xfffb144) # 1c001bcc <myprintf>
1c006a8c:	50001c00 	b	28(0x1c) # 1c006aa8 <spi_flash+0x20c>
1c006a90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006a9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006aa0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006aa4:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c006a20 <spi_flash+0x184>
1c006aa8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006aac:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c006ab0:	57b11fff 	bl	-20196(0xfffb11c) # 1c001bcc <myprintf>
1c006ab4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ab8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006abc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006ac0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006ac4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006ac8:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c0069f0 <spi_flash+0x154>
1c006acc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ad0:	02890084 	addi.w	$r4,$r4,576(0x240)
1c006ad4:	57b0fbff 	bl	-20232(0xfffb0f8) # 1c001bcc <myprintf>
1c006ad8:	0015000c 	move	$r12,$r0
1c006adc:	00150184 	move	$r4,$r12
1c006ae0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006ae4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006ae8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006aec:	4c000020 	jirl	$r0,$r1,0

1c006af0 <gpio_int_test>:
gpio_int_test():
1c006af0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006af4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006af8:	29806076 	st.w	$r22,$r3,24(0x18)
1c006afc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b00:	00150006 	move	$r6,$r0
1c006b04:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006b08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006b0c:	03804184 	ori	$r4,$r12,0x10
1c006b10:	57a81fff 	bl	-22500(0xfffa81c) # 1c00132c <AFIO_RemapConfig>
1c006b14:	00150006 	move	$r6,$r0
1c006b18:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006b20:	03806184 	ori	$r4,$r12,0x18
1c006b24:	57a80bff 	bl	-22520(0xfffa808) # 1c00132c <AFIO_RemapConfig>
1c006b28:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006b2c:	00150184 	move	$r4,$r12
1c006b30:	57c607ff 	bl	-14844(0xfffc604) # 1c003134 <EXTI_StructInit>
1c006b34:	1400100c 	lu12i.w	$r12,128(0x80)
1c006b38:	0380098c 	ori	$r12,$r12,0x2
1c006b3c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006b40:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b44:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006b48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006b50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b58:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006b5c:	00150185 	move	$r5,$r12
1c006b60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006b64:	03808184 	ori	$r4,$r12,0x20
1c006b68:	57c43fff 	bl	-15300(0xfffc43c) # 1c002fa4 <EXTI_Init>
1c006b6c:	03400000 	andi	$r0,$r0,0x0
1c006b70:	00150184 	move	$r4,$r12
1c006b74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006b78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006b7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006b80:	4c000020 	jirl	$r0,$r1,0

1c006b84 <gpio_int>:
gpio_int():
1c006b84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b94:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006b98:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006b9c:	57ff57ff 	bl	-172(0xfffff54) # 1c006af0 <gpio_int_test>
1c006ba0:	0015000c 	move	$r12,$r0
1c006ba4:	00150184 	move	$r4,$r12
1c006ba8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006bac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006bb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006bb4:	4c000020 	jirl	$r0,$r1,0

1c006bb8 <tmp>:
tmp():
1c006bb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006bbc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006bc8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006bcc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006bd0:	0015000c 	move	$r12,$r0
1c006bd4:	00150184 	move	$r4,$r12
1c006bd8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006bdc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006be0:	4c000020 	jirl	$r0,$r1,0

1c006be4 <copy_iram>:
copy_iram():
1c006be4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006be8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006bec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006bf0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006bf4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006bf8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006bfc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006c00:	02848084 	addi.w	$r4,$r4,288(0x120)
1c006c04:	57afcbff 	bl	-20536(0xfffafc8) # 1c001bcc <myprintf>
1c006c08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006c0c:	50002000 	b	32(0x20) # 1c006c2c <copy_iram+0x48>
1c006c10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c14:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006c18:	001031ac 	add.w	$r12,$r13,$r12
1c006c1c:	29800180 	st.w	$r0,$r12,0
1c006c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006c28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c30:	1400004c 	lu12i.w	$r12,2(0x2)
1c006c34:	6bffddac 	bltu	$r13,$r12,-36(0x3ffdc) # 1c006c10 <copy_iram+0x2c>
1c006c38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006c3c:	50003800 	b	56(0x38) # 1c006c74 <copy_iram+0x90>
1c006c40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c44:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006c48:	001031ac 	add.w	$r12,$r13,$r12
1c006c4c:	0015018e 	move	$r14,$r12
1c006c50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c54:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006c58:	001031ac 	add.w	$r12,$r13,$r12
1c006c5c:	0015018d 	move	$r13,$r12
1c006c60:	288001cc 	ld.w	$r12,$r14,0
1c006c64:	298001ac 	st.w	$r12,$r13,0
1c006c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c78:	1400004c 	lu12i.w	$r12,2(0x2)
1c006c7c:	6bffc5ac 	bltu	$r13,$r12,-60(0x3ffc4) # 1c006c40 <copy_iram+0x5c>
1c006c80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006c84:	50006c00 	b	108(0x6c) # 1c006cf0 <copy_iram+0x10c>
1c006c88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c8c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006c90:	001031ac 	add.w	$r12,$r13,$r12
1c006c94:	2880018d 	ld.w	$r13,$r12,0
1c006c98:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006c9c:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006ca0:	001031cc 	add.w	$r12,$r14,$r12
1c006ca4:	2880018c 	ld.w	$r12,$r12,0
1c006ca8:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c006ce4 <copy_iram+0x100>
1c006cac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006cb0:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006cb4:	001031ac 	add.w	$r12,$r13,$r12
1c006cb8:	2880018e 	ld.w	$r14,$r12,0
1c006cbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006cc0:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006cc4:	001031ac 	add.w	$r12,$r13,$r12
1c006cc8:	2880018c 	ld.w	$r12,$r12,0
1c006ccc:	00150187 	move	$r7,$r12
1c006cd0:	001501c6 	move	$r6,$r14
1c006cd4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c006cd8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006cdc:	02816084 	addi.w	$r4,$r4,88(0x58)
1c006ce0:	57aeefff 	bl	-20756(0xfffaeec) # 1c001bcc <myprintf>
1c006ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ce8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006cec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006cf0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006cf4:	1400004c 	lu12i.w	$r12,2(0x2)
1c006cf8:	6bff91ac 	bltu	$r13,$r12,-112(0x3ff90) # 1c006c88 <copy_iram+0xa4>
1c006cfc:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006d00:	4c000180 	jirl	$r0,$r12,0
1c006d04:	0015000c 	move	$r12,$r0
1c006d08:	00150184 	move	$r4,$r12
1c006d0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006d10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006d14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006d18:	4c000020 	jirl	$r0,$r1,0

1c006d1c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c006d1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006d20:	29803061 	st.w	$r1,$r3,12(0xc)
1c006d24:	29802076 	st.w	$r22,$r3,8(0x8)
1c006d28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006d2c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006d30:	0286d0c6 	addi.w	$r6,$r6,436(0x1b4)
1c006d34:	02801405 	addi.w	$r5,$r0,5(0x5)
1c006d38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006d3c:	02824084 	addi.w	$r4,$r4,144(0x90)
1c006d40:	57ae8fff 	bl	-20852(0xfffae8c) # 1c001bcc <myprintf>
1c006d44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006d4c:	03808184 	ori	$r4,$r12,0x20
1c006d50:	57c42fff 	bl	-15316(0xfffc42c) # 1c00317c <EXTI_ClearITPendingBit>
1c006d54:	03400000 	andi	$r0,$r0,0x0
1c006d58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006d5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006d60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006d64:	4c000020 	jirl	$r0,$r1,0

1c006d68 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c006d68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006d6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006d70:	29802076 	st.w	$r22,$r3,8(0x8)
1c006d74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006d78:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006d7c:	028600c6 	addi.w	$r6,$r6,384(0x180)
1c006d80:	02802805 	addi.w	$r5,$r0,10(0xa)
1c006d84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006d88:	02811084 	addi.w	$r4,$r4,68(0x44)
1c006d8c:	57ae43ff 	bl	-20928(0xfffae40) # 1c001bcc <myprintf>
1c006d90:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006d94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006d98:	03808184 	ori	$r4,$r12,0x20
1c006d9c:	57c3e3ff 	bl	-15392(0xfffc3e0) # 1c00317c <EXTI_ClearITPendingBit>
1c006da0:	03400000 	andi	$r0,$r0,0x0
1c006da4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006da8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006dac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006db0:	4c000020 	jirl	$r0,$r1,0

1c006db4 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c006db4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006db8:	29803061 	st.w	$r1,$r3,12(0xc)
1c006dbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c006dc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006dc4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006dc8:	028530c6 	addi.w	$r6,$r6,332(0x14c)
1c006dcc:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c006dd0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006dd4:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c006dd8:	57adf7ff 	bl	-21004(0xfffadf4) # 1c001bcc <myprintf>
1c006ddc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006de0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006de4:	03808184 	ori	$r4,$r12,0x20
1c006de8:	57c397ff 	bl	-15468(0xfffc394) # 1c00317c <EXTI_ClearITPendingBit>
1c006dec:	03400000 	andi	$r0,$r0,0x0
1c006df0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006df4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006df8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006dfc:	4c000020 	jirl	$r0,$r1,0

1c006e00 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c006e00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e04:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e08:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e10:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006e14:	028460c6 	addi.w	$r6,$r6,280(0x118)
1c006e18:	02805005 	addi.w	$r5,$r0,20(0x14)
1c006e1c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006e20:	02beb084 	addi.w	$r4,$r4,-84(0xfac)
1c006e24:	57adabff 	bl	-21080(0xfffada8) # 1c001bcc <myprintf>
1c006e28:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006e2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006e30:	03808184 	ori	$r4,$r12,0x20
1c006e34:	57c34bff 	bl	-15544(0xfffc348) # 1c00317c <EXTI_ClearITPendingBit>
1c006e38:	03400000 	andi	$r0,$r0,0x0
1c006e3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006e40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006e44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006e48:	4c000020 	jirl	$r0,$r1,0

1c006e4c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c006e4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e50:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e54:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006e60:	028390c6 	addi.w	$r6,$r6,228(0xe4)
1c006e64:	02806405 	addi.w	$r5,$r0,25(0x19)
1c006e68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006e6c:	02bd8084 	addi.w	$r4,$r4,-160(0xf60)
1c006e70:	57ad5fff 	bl	-21156(0xfffad5c) # 1c001bcc <myprintf>
1c006e74:	02804005 	addi.w	$r5,$r0,16(0x10)
1c006e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006e7c:	03808184 	ori	$r4,$r12,0x20
1c006e80:	57c2ffff 	bl	-15620(0xfffc2fc) # 1c00317c <EXTI_ClearITPendingBit>
1c006e84:	03400000 	andi	$r0,$r0,0x0
1c006e88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006e8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006e90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006e94:	4c000020 	jirl	$r0,$r1,0

1c006e98 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c006e98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ea0:	29802076 	st.w	$r22,$r3,8(0x8)
1c006ea4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ea8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006eac:	0282c0c6 	addi.w	$r6,$r6,176(0xb0)
1c006eb0:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c006eb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006eb8:	02bc5084 	addi.w	$r4,$r4,-236(0xf14)
1c006ebc:	57ad13ff 	bl	-21232(0xfffad10) # 1c001bcc <myprintf>
1c006ec0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c006ec4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006ec8:	03808184 	ori	$r4,$r12,0x20
1c006ecc:	57c2b3ff 	bl	-15696(0xfffc2b0) # 1c00317c <EXTI_ClearITPendingBit>
1c006ed0:	03400000 	andi	$r0,$r0,0x0
1c006ed4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ed8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006edc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ee0:	4c000020 	jirl	$r0,$r1,0

1c006ee4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c006ee4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ee8:	29803061 	st.w	$r1,$r3,12(0xc)
1c006eec:	29802076 	st.w	$r22,$r3,8(0x8)
1c006ef0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ef4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006ef8:	0281f0c6 	addi.w	$r6,$r6,124(0x7c)
1c006efc:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c006f00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f04:	02bb2084 	addi.w	$r4,$r4,-312(0xec8)
1c006f08:	57acc7ff 	bl	-21308(0xfffacc4) # 1c001bcc <myprintf>
1c006f0c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006f10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f14:	03808184 	ori	$r4,$r12,0x20
1c006f18:	57c267ff 	bl	-15772(0xfffc264) # 1c00317c <EXTI_ClearITPendingBit>
1c006f1c:	03400000 	andi	$r0,$r0,0x0
1c006f20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f2c:	4c000020 	jirl	$r0,$r1,0

1c006f30 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c006f30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f34:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f38:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f40:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f44:	028120c6 	addi.w	$r6,$r6,72(0x48)
1c006f48:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c006f4c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f50:	02b9f084 	addi.w	$r4,$r4,-388(0xe7c)
1c006f54:	57ac7bff 	bl	-21384(0xfffac78) # 1c001bcc <myprintf>
1c006f58:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006f5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f60:	03808184 	ori	$r4,$r12,0x20
1c006f64:	57c21bff 	bl	-15848(0xfffc218) # 1c00317c <EXTI_ClearITPendingBit>
1c006f68:	03400000 	andi	$r0,$r0,0x0
1c006f6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f78:	4c000020 	jirl	$r0,$r1,0

1c006f7c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c006f7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f80:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f84:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f8c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f90:	028050c6 	addi.w	$r6,$r6,20(0x14)
1c006f94:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c006f98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f9c:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c006fa0:	57ac2fff 	bl	-21460(0xfffac2c) # 1c001bcc <myprintf>
1c006fa4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c006fa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006fac:	03808184 	ori	$r4,$r12,0x20
1c006fb0:	57c1cfff 	bl	-15924(0xfffc1cc) # 1c00317c <EXTI_ClearITPendingBit>
1c006fb4:	03400000 	andi	$r0,$r0,0x0
1c006fb8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006fbc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006fc0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006fc4:	4c000020 	jirl	$r0,$r1,0

1c006fc8 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c006fc8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006fcc:	29803061 	st.w	$r1,$r3,12(0xc)
1c006fd0:	29802076 	st.w	$r22,$r3,8(0x8)
1c006fd4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006fd8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006fdc:	02bf80c6 	addi.w	$r6,$r6,-32(0xfe0)
1c006fe0:	0280d005 	addi.w	$r5,$r0,52(0x34)
1c006fe4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006fe8:	02b79084 	addi.w	$r4,$r4,-540(0xde4)
1c006fec:	57abe3ff 	bl	-21536(0xfffabe0) # 1c001bcc <myprintf>
1c006ff0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c006ff4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006ff8:	03808184 	ori	$r4,$r12,0x20
1c006ffc:	57c183ff 	bl	-16000(0xfffc180) # 1c00317c <EXTI_ClearITPendingBit>
1c007000:	03400000 	andi	$r0,$r0,0x0
1c007004:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007008:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00700c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007010:	4c000020 	jirl	$r0,$r1,0

1c007014 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c007014:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007018:	29803061 	st.w	$r1,$r3,12(0xc)
1c00701c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007020:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007024:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007028:	02beb0c6 	addi.w	$r6,$r6,-84(0xfac)
1c00702c:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c007030:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007034:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c007038:	57ab97ff 	bl	-21612(0xfffab94) # 1c001bcc <myprintf>
1c00703c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c007040:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007044:	03808184 	ori	$r4,$r12,0x20
1c007048:	57c137ff 	bl	-16076(0xfffc134) # 1c00317c <EXTI_ClearITPendingBit>
1c00704c:	03400000 	andi	$r0,$r0,0x0
1c007050:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007054:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007058:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00705c:	4c000020 	jirl	$r0,$r1,0

1c007060 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c007060:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007064:	29803061 	st.w	$r1,$r3,12(0xc)
1c007068:	29802076 	st.w	$r22,$r3,8(0x8)
1c00706c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007070:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007074:	02bde0c6 	addi.w	$r6,$r6,-136(0xf78)
1c007078:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00707c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007080:	02b53084 	addi.w	$r4,$r4,-692(0xd4c)
1c007084:	57ab4bff 	bl	-21688(0xfffab48) # 1c001bcc <myprintf>
1c007088:	03a00005 	ori	$r5,$r0,0x800
1c00708c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007090:	03808184 	ori	$r4,$r12,0x20
1c007094:	57c0ebff 	bl	-16152(0xfffc0e8) # 1c00317c <EXTI_ClearITPendingBit>
1c007098:	03400000 	andi	$r0,$r0,0x0
1c00709c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0070a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0070a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0070a8:	4c000020 	jirl	$r0,$r1,0

1c0070ac <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0070ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0070b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0070b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0070b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0070bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0070c0:	02bd10c6 	addi.w	$r6,$r6,-188(0xf44)
1c0070c4:	02811405 	addi.w	$r5,$r0,69(0x45)
1c0070c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0070cc:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c0070d0:	57aaffff 	bl	-21764(0xfffaafc) # 1c001bcc <myprintf>
1c0070d4:	14000025 	lu12i.w	$r5,1(0x1)
1c0070d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0070dc:	03808184 	ori	$r4,$r12,0x20
1c0070e0:	57c09fff 	bl	-16228(0xfffc09c) # 1c00317c <EXTI_ClearITPendingBit>
1c0070e4:	03400000 	andi	$r0,$r0,0x0
1c0070e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0070ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0070f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0070f4:	4c000020 	jirl	$r0,$r1,0

1c0070f8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0070f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0070fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c007100:	29802076 	st.w	$r22,$r3,8(0x8)
1c007104:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007108:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00710c:	02bc40c6 	addi.w	$r6,$r6,-240(0xf10)
1c007110:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c007114:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007118:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c00711c:	57aab3ff 	bl	-21840(0xfffaab0) # 1c001bcc <myprintf>
1c007120:	14000045 	lu12i.w	$r5,2(0x2)
1c007124:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007128:	03808184 	ori	$r4,$r12,0x20
1c00712c:	57c053ff 	bl	-16304(0xfffc050) # 1c00317c <EXTI_ClearITPendingBit>
1c007130:	03400000 	andi	$r0,$r0,0x0
1c007134:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007138:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00713c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007140:	4c000020 	jirl	$r0,$r1,0

1c007144 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c007144:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007148:	29803061 	st.w	$r1,$r3,12(0xc)
1c00714c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007150:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007154:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007158:	02bb70c6 	addi.w	$r6,$r6,-292(0xedc)
1c00715c:	02814005 	addi.w	$r5,$r0,80(0x50)
1c007160:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007164:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c007168:	57aa67ff 	bl	-21916(0xfffaa64) # 1c001bcc <myprintf>
1c00716c:	14000085 	lu12i.w	$r5,4(0x4)
1c007170:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007174:	03808184 	ori	$r4,$r12,0x20
1c007178:	57c007ff 	bl	-16380(0xfffc004) # 1c00317c <EXTI_ClearITPendingBit>
1c00717c:	03400000 	andi	$r0,$r0,0x0
1c007180:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007184:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00718c:	4c000020 	jirl	$r0,$r1,0

1c007190 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c007190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007194:	29803061 	st.w	$r1,$r3,12(0xc)
1c007198:	29802076 	st.w	$r22,$r3,8(0x8)
1c00719c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0071a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0071a4:	02baa0c6 	addi.w	$r6,$r6,-344(0xea8)
1c0071a8:	02815805 	addi.w	$r5,$r0,86(0x56)
1c0071ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0071b0:	02b07084 	addi.w	$r4,$r4,-996(0xc1c)
1c0071b4:	57aa1bff 	bl	-21992(0xfffaa18) # 1c001bcc <myprintf>
1c0071b8:	14000105 	lu12i.w	$r5,8(0x8)
1c0071bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0071c0:	03808184 	ori	$r4,$r12,0x20
1c0071c4:	57bfbbff 	bl	-16456(0xfffbfb8) # 1c00317c <EXTI_ClearITPendingBit>
1c0071c8:	03400000 	andi	$r0,$r0,0x0
1c0071cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0071d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0071d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0071d8:	4c000020 	jirl	$r0,$r1,0

1c0071dc <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0071dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0071e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0071e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0071e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0071ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0071f0:	02b9d0c6 	addi.w	$r6,$r6,-396(0xe74)
1c0071f4:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c0071f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0071fc:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c007200:	57a9cfff 	bl	-22068(0xfffa9cc) # 1c001bcc <myprintf>
1c007204:	14000205 	lu12i.w	$r5,16(0x10)
1c007208:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00720c:	03808184 	ori	$r4,$r12,0x20
1c007210:	57bf6fff 	bl	-16532(0xfffbf6c) # 1c00317c <EXTI_ClearITPendingBit>
1c007214:	03400000 	andi	$r0,$r0,0x0
1c007218:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00721c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007220:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007224:	4c000020 	jirl	$r0,$r1,0

1c007228 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c007228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00722c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007230:	29802076 	st.w	$r22,$r3,8(0x8)
1c007234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007238:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00723c:	02b900c6 	addi.w	$r6,$r6,-448(0xe40)
1c007240:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c007244:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007248:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c00724c:	57a983ff 	bl	-22144(0xfffa980) # 1c001bcc <myprintf>
1c007250:	14000405 	lu12i.w	$r5,32(0x20)
1c007254:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007258:	03808184 	ori	$r4,$r12,0x20
1c00725c:	57bf23ff 	bl	-16608(0xfffbf20) # 1c00317c <EXTI_ClearITPendingBit>
1c007260:	03400000 	andi	$r0,$r0,0x0
1c007264:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007268:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00726c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007270:	4c000020 	jirl	$r0,$r1,0

1c007274 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c007274:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007278:	29803061 	st.w	$r1,$r3,12(0xc)
1c00727c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007280:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007284:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007288:	02b830c6 	addi.w	$r6,$r6,-500(0xe0c)
1c00728c:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c007290:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007294:	02ace084 	addi.w	$r4,$r4,-1224(0xb38)
1c007298:	57a937ff 	bl	-22220(0xfffa934) # 1c001bcc <myprintf>
1c00729c:	14000805 	lu12i.w	$r5,64(0x40)
1c0072a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0072a4:	03808184 	ori	$r4,$r12,0x20
1c0072a8:	57bed7ff 	bl	-16684(0xfffbed4) # 1c00317c <EXTI_ClearITPendingBit>
1c0072ac:	03400000 	andi	$r0,$r0,0x0
1c0072b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0072b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0072b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0072bc:	4c000020 	jirl	$r0,$r1,0

1c0072c0 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0072c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0072c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0072c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0072cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0072d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0072d4:	02b760c6 	addi.w	$r6,$r6,-552(0xdd8)
1c0072d8:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c0072dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0072e0:	02abb084 	addi.w	$r4,$r4,-1300(0xaec)
1c0072e4:	57a8ebff 	bl	-22296(0xfffa8e8) # 1c001bcc <myprintf>
1c0072e8:	14001005 	lu12i.w	$r5,128(0x80)
1c0072ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0072f0:	03808184 	ori	$r4,$r12,0x20
1c0072f4:	57be8bff 	bl	-16760(0xfffbe88) # 1c00317c <EXTI_ClearITPendingBit>
1c0072f8:	03400000 	andi	$r0,$r0,0x0
1c0072fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007300:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007304:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007308:	4c000020 	jirl	$r0,$r1,0

1c00730c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00730c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007310:	29803061 	st.w	$r1,$r3,12(0xc)
1c007314:	29802076 	st.w	$r22,$r3,8(0x8)
1c007318:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00731c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007320:	02b690c6 	addi.w	$r6,$r6,-604(0xda4)
1c007324:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c007328:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00732c:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c007330:	57a89fff 	bl	-22372(0xfffa89c) # 1c001bcc <myprintf>
1c007334:	14002005 	lu12i.w	$r5,256(0x100)
1c007338:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00733c:	03808184 	ori	$r4,$r12,0x20
1c007340:	57be3fff 	bl	-16836(0xfffbe3c) # 1c00317c <EXTI_ClearITPendingBit>
1c007344:	03400000 	andi	$r0,$r0,0x0
1c007348:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00734c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007350:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007354:	4c000020 	jirl	$r0,$r1,0

1c007358 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c007358:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00735c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007360:	29802076 	st.w	$r22,$r3,8(0x8)
1c007364:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007368:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00736c:	02b5c0c6 	addi.w	$r6,$r6,-656(0xd70)
1c007370:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c007374:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007378:	02a95084 	addi.w	$r4,$r4,-1452(0xa54)
1c00737c:	57a853ff 	bl	-22448(0xfffa850) # 1c001bcc <myprintf>
1c007380:	14004005 	lu12i.w	$r5,512(0x200)
1c007384:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007388:	03808184 	ori	$r4,$r12,0x20
1c00738c:	57bdf3ff 	bl	-16912(0xfffbdf0) # 1c00317c <EXTI_ClearITPendingBit>
1c007390:	03400000 	andi	$r0,$r0,0x0
1c007394:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007398:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00739c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073a0:	4c000020 	jirl	$r0,$r1,0

1c0073a4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0073a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0073a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0073ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0073b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0073b8:	02b4f0c6 	addi.w	$r6,$r6,-708(0xd3c)
1c0073bc:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c0073c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0073c4:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c0073c8:	57a807ff 	bl	-22524(0xfffa804) # 1c001bcc <myprintf>
1c0073cc:	14008005 	lu12i.w	$r5,1024(0x400)
1c0073d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0073d4:	03808184 	ori	$r4,$r12,0x20
1c0073d8:	57bda7ff 	bl	-16988(0xfffbda4) # 1c00317c <EXTI_ClearITPendingBit>
1c0073dc:	03400000 	andi	$r0,$r0,0x0
1c0073e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0073e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0073e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073ec:	4c000020 	jirl	$r0,$r1,0

1c0073f0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0073f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0073f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0073f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007400:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007404:	02b420c6 	addi.w	$r6,$r6,-760(0xd08)
1c007408:	02821405 	addi.w	$r5,$r0,133(0x85)
1c00740c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007410:	02a6f084 	addi.w	$r4,$r4,-1604(0x9bc)
1c007414:	57a7bbff 	bl	-22600(0xfffa7b8) # 1c001bcc <myprintf>
1c007418:	14010005 	lu12i.w	$r5,2048(0x800)
1c00741c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007420:	03808184 	ori	$r4,$r12,0x20
1c007424:	57bd5bff 	bl	-17064(0xfffbd58) # 1c00317c <EXTI_ClearITPendingBit>
1c007428:	03400000 	andi	$r0,$r0,0x0
1c00742c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007430:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007434:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007438:	4c000020 	jirl	$r0,$r1,0

1c00743c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00743c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007440:	29803061 	st.w	$r1,$r3,12(0xc)
1c007444:	29802076 	st.w	$r22,$r3,8(0x8)
1c007448:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00744c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007450:	02b350c6 	addi.w	$r6,$r6,-812(0xcd4)
1c007454:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c007458:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00745c:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c007460:	57a76fff 	bl	-22676(0xfffa76c) # 1c001bcc <myprintf>
1c007464:	14020005 	lu12i.w	$r5,4096(0x1000)
1c007468:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00746c:	03808184 	ori	$r4,$r12,0x20
1c007470:	57bd0fff 	bl	-17140(0xfffbd0c) # 1c00317c <EXTI_ClearITPendingBit>
1c007474:	03400000 	andi	$r0,$r0,0x0
1c007478:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00747c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007480:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007484:	4c000020 	jirl	$r0,$r1,0

1c007488 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c007488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00748c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007490:	29802076 	st.w	$r22,$r3,8(0x8)
1c007494:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007498:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00749c:	02b280c6 	addi.w	$r6,$r6,-864(0xca0)
1c0074a0:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0074a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0074a8:	02a49084 	addi.w	$r4,$r4,-1756(0x924)
1c0074ac:	57a723ff 	bl	-22752(0xfffa720) # 1c001bcc <myprintf>
1c0074b0:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0074b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0074b8:	03808184 	ori	$r4,$r12,0x20
1c0074bc:	57bcc3ff 	bl	-17216(0xfffbcc0) # 1c00317c <EXTI_ClearITPendingBit>
1c0074c0:	03400000 	andi	$r0,$r0,0x0
1c0074c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0074c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0074cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0074d0:	4c000020 	jirl	$r0,$r1,0

1c0074d4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0074d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0074d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0074dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0074e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0074e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0074e8:	02b1b0c6 	addi.w	$r6,$r6,-916(0xc6c)
1c0074ec:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c0074f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0074f4:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c0074f8:	57a6d7ff 	bl	-22828(0xfffa6d4) # 1c001bcc <myprintf>
1c0074fc:	14080005 	lu12i.w	$r5,16384(0x4000)
1c007500:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007504:	03808184 	ori	$r4,$r12,0x20
1c007508:	57bc77ff 	bl	-17292(0xfffbc74) # 1c00317c <EXTI_ClearITPendingBit>
1c00750c:	03400000 	andi	$r0,$r0,0x0
1c007510:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007514:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007518:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00751c:	4c000020 	jirl	$r0,$r1,0

1c007520 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c007520:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007524:	29803061 	st.w	$r1,$r3,12(0xc)
1c007528:	29802076 	st.w	$r22,$r3,8(0x8)
1c00752c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007530:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007534:	02b0e0c6 	addi.w	$r6,$r6,-968(0xc38)
1c007538:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c00753c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007540:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c007544:	57a68bff 	bl	-22904(0xfffa688) # 1c001bcc <myprintf>
1c007548:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00754c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007550:	03808184 	ori	$r4,$r12,0x20
1c007554:	57bc2bff 	bl	-17368(0xfffbc28) # 1c00317c <EXTI_ClearITPendingBit>
1c007558:	03400000 	andi	$r0,$r0,0x0
1c00755c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007560:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007564:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007568:	4c000020 	jirl	$r0,$r1,0

1c00756c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00756c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007570:	29803061 	st.w	$r1,$r3,12(0xc)
1c007574:	29802076 	st.w	$r22,$r3,8(0x8)
1c007578:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00757c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007580:	02b010c6 	addi.w	$r6,$r6,-1020(0xc04)
1c007584:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c007588:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00758c:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c007590:	57a63fff 	bl	-22980(0xfffa63c) # 1c001bcc <myprintf>
1c007594:	14200005 	lu12i.w	$r5,65536(0x10000)
1c007598:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00759c:	03808184 	ori	$r4,$r12,0x20
1c0075a0:	57bbdfff 	bl	-17444(0xfffbbdc) # 1c00317c <EXTI_ClearITPendingBit>
1c0075a4:	03400000 	andi	$r0,$r0,0x0
1c0075a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0075ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0075b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0075b4:	4c000020 	jirl	$r0,$r1,0

1c0075b8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0075b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0075bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0075c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0075c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0075c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0075cc:	02af40c6 	addi.w	$r6,$r6,-1072(0xbd0)
1c0075d0:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0075d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0075d8:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c0075dc:	57a5f3ff 	bl	-23056(0xfffa5f0) # 1c001bcc <myprintf>
1c0075e0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0075e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0075e8:	03808184 	ori	$r4,$r12,0x20
1c0075ec:	57bb93ff 	bl	-17520(0xfffbb90) # 1c00317c <EXTI_ClearITPendingBit>
1c0075f0:	03400000 	andi	$r0,$r0,0x0
1c0075f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0075f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0075fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007600:	4c000020 	jirl	$r0,$r1,0

1c007604 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c007604:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007608:	29803061 	st.w	$r1,$r3,12(0xc)
1c00760c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007610:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007614:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007618:	02ae70c6 	addi.w	$r6,$r6,-1124(0xb9c)
1c00761c:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c007620:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007624:	029ea084 	addi.w	$r4,$r4,1960(0x7a8)
1c007628:	57a5a7ff 	bl	-23132(0xfffa5a4) # 1c001bcc <myprintf>
1c00762c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c007630:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007634:	03808184 	ori	$r4,$r12,0x20
1c007638:	57bb47ff 	bl	-17596(0xfffbb44) # 1c00317c <EXTI_ClearITPendingBit>
1c00763c:	03400000 	andi	$r0,$r0,0x0
1c007640:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007644:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007648:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00764c:	4c000020 	jirl	$r0,$r1,0

1c007650 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c007650:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007654:	29803061 	st.w	$r1,$r3,12(0xc)
1c007658:	29802076 	st.w	$r22,$r3,8(0x8)
1c00765c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007660:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007664:	02ada0c6 	addi.w	$r6,$r6,-1176(0xb68)
1c007668:	0282d805 	addi.w	$r5,$r0,182(0xb6)
1c00766c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007670:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c007674:	57a55bff 	bl	-23208(0xfffa558) # 1c001bcc <myprintf>
1c007678:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00767c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007680:	03808184 	ori	$r4,$r12,0x20
1c007684:	57bafbff 	bl	-17672(0xfffbaf8) # 1c00317c <EXTI_ClearITPendingBit>
1c007688:	03400000 	andi	$r0,$r0,0x0
1c00768c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007690:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007694:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007698:	4c000020 	jirl	$r0,$r1,0

1c00769c <ext_handler>:
ext_handler():
1c00769c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0076a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0076a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0076a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0076ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076b0:	0380f18c 	ori	$r12,$r12,0x3c
1c0076b4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0076b8:	2980018d 	st.w	$r13,$r12,0
1c0076bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0076c0:	02ac90c6 	addi.w	$r6,$r6,-1244(0xb24)
1c0076c4:	02838805 	addi.w	$r5,$r0,226(0xe2)
1c0076c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0076cc:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c0076d0:	57a4ffff 	bl	-23300(0xfffa4fc) # 1c001bcc <myprintf>
1c0076d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076d8:	0380818c 	ori	$r12,$r12,0x20
1c0076dc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0076e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0076e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076e8:	0380818c 	ori	$r12,$r12,0x20
1c0076ec:	2880018c 	ld.w	$r12,$r12,0
1c0076f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0076f4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0076f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0076fc:	0014b1ac 	and	$r12,$r13,$r12
1c007700:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007704:	03400000 	andi	$r0,$r0,0x0
1c007708:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00770c:	50004000 	b	64(0x40) # 1c00774c <ext_handler+0xb0>
1c007710:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c007714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007718:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00771c:	0340058c 	andi	$r12,$r12,0x1
1c007720:	40002180 	beqz	$r12,32(0x20) # 1c007740 <ext_handler+0xa4>
1c007724:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c007728:	029891ad 	addi.w	$r13,$r13,1572(0x624)
1c00772c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007730:	0040898c 	slli.w	$r12,$r12,0x2
1c007734:	001031ac 	add.w	$r12,$r13,$r12
1c007738:	2880018c 	ld.w	$r12,$r12,0
1c00773c:	4c000181 	jirl	$r1,$r12,0
1c007740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007744:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00774c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007750:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c007754:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c007710 <ext_handler+0x74>
1c007758:	03400000 	andi	$r0,$r0,0x0
1c00775c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007760:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007764:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007768:	4c000020 	jirl	$r0,$r1,0

1c00776c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00776c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007770:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007774:	29806076 	st.w	$r22,$r3,24(0x18)
1c007778:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00777c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007780:	0380f18c 	ori	$r12,$r12,0x3c
1c007784:	1400020d 	lu12i.w	$r13,16(0x10)
1c007788:	2980018d 	st.w	$r13,$r12,0
1c00778c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007790:	0380118c 	ori	$r12,$r12,0x4
1c007794:	2880018c 	ld.w	$r12,$r12,0
1c007798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00779c:	57ba6bff 	bl	-17816(0xfffba68) # 1c003204 <WDG_DogFeed>
1c0077a0:	03400000 	andi	$r0,$r0,0x0
1c0077a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0077a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0077ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0077b0:	4c000020 	jirl	$r0,$r1,0

1c0077b4 <TOUCH>:
TOUCH():
1c0077b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0077b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0077bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0077c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0077c4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0077c8:	0380118c 	ori	$r12,$r12,0x4
1c0077cc:	2880018c 	ld.w	$r12,$r12,0
1c0077d0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0077d4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0077d8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0077dc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0077e0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0077e4:	0380118c 	ori	$r12,$r12,0x4
1c0077e8:	2880018c 	ld.w	$r12,$r12,0
1c0077ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0077f0:	03403d8c 	andi	$r12,$r12,0xf
1c0077f4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0077f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077fc:	0380f18c 	ori	$r12,$r12,0x3c
1c007800:	1400040d 	lu12i.w	$r13,32(0x20)
1c007804:	2980018d 	st.w	$r13,$r12,0
1c007808:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00780c:	0380118c 	ori	$r12,$r12,0x4
1c007810:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007814:	2980018d 	st.w	$r13,$r12,0
1c007818:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00781c:	00150185 	move	$r5,$r12
1c007820:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007824:	0297c084 	addi.w	$r4,$r4,1520(0x5f0)
1c007828:	57a3a7ff 	bl	-23644(0xfffa3a4) # 1c001bcc <myprintf>
1c00782c:	03400000 	andi	$r0,$r0,0x0
1c007830:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007834:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007838:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00783c:	4c000020 	jirl	$r0,$r1,0

1c007840 <UART2_INT>:
UART2_INT():
1c007840:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007844:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007848:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00784c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007850:	0380f18c 	ori	$r12,$r12,0x3c
1c007854:	1400080d 	lu12i.w	$r13,64(0x40)
1c007858:	2980018d 	st.w	$r13,$r12,0
1c00785c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c007860:	0380098c 	ori	$r12,$r12,0x2
1c007864:	2a00018c 	ld.bu	$r12,$r12,0
1c007868:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00786c:	03400000 	andi	$r0,$r0,0x0
1c007870:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007874:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007878:	4c000020 	jirl	$r0,$r1,0

1c00787c <BAT_FAIL>:
BAT_FAIL():
1c00787c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007880:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007884:	29806076 	st.w	$r22,$r3,24(0x18)
1c007888:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00788c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007890:	0380118c 	ori	$r12,$r12,0x4
1c007894:	2880018c 	ld.w	$r12,$r12,0
1c007898:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00789c:	03407d8c 	andi	$r12,$r12,0x1f
1c0078a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0078a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078a8:	0380118c 	ori	$r12,$r12,0x4
1c0078ac:	2880018e 	ld.w	$r14,$r12,0
1c0078b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078b4:	0380f18c 	ori	$r12,$r12,0x3c
1c0078b8:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c0078bc:	0014b5cd 	and	$r13,$r14,$r13
1c0078c0:	2980018d 	st.w	$r13,$r12,0
1c0078c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0078c8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0078cc:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00793c <BAT_FAIL+0xc0>
1c0078d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0078d4:	0040898d 	slli.w	$r13,$r12,0x2
1c0078d8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0078dc:	0297118c 	addi.w	$r12,$r12,1476(0x5c4)
1c0078e0:	001031ac 	add.w	$r12,$r13,$r12
1c0078e4:	2880018c 	ld.w	$r12,$r12,0
1c0078e8:	4c000180 	jirl	$r0,$r12,0
1c0078ec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0078f0:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c0078f4:	57a2dbff 	bl	-23848(0xfffa2d8) # 1c001bcc <myprintf>
1c0078f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078fc:	0380118c 	ori	$r12,$r12,0x4
1c007900:	29800180 	st.w	$r0,$r12,0
1c007904:	50003c00 	b	60(0x3c) # 1c007940 <BAT_FAIL+0xc4>
1c007908:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00790c:	02954084 	addi.w	$r4,$r4,1360(0x550)
1c007910:	57a2bfff 	bl	-23876(0xfffa2bc) # 1c001bcc <myprintf>
1c007914:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007918:	0380118c 	ori	$r12,$r12,0x4
1c00791c:	2880018e 	ld.w	$r14,$r12,0
1c007920:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007924:	0380118c 	ori	$r12,$r12,0x4
1c007928:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00792c:	03bffdad 	ori	$r13,$r13,0xfff
1c007930:	0014b5cd 	and	$r13,$r14,$r13
1c007934:	2980018d 	st.w	$r13,$r12,0
1c007938:	50000800 	b	8(0x8) # 1c007940 <BAT_FAIL+0xc4>
1c00793c:	03400000 	andi	$r0,$r0,0x0
1c007940:	03400000 	andi	$r0,$r0,0x0
1c007944:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007948:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00794c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007950:	4c000020 	jirl	$r0,$r1,0

1c007954 <intc_handler>:
intc_handler():
1c007954:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007958:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00795c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007960:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007964:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007968:	0380158c 	ori	$r12,$r12,0x5
1c00796c:	2a00018c 	ld.bu	$r12,$r12,0
1c007970:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c007974:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c007978:	0340058c 	andi	$r12,$r12,0x1
1c00797c:	40005980 	beqz	$r12,88(0x58) # 1c0079d4 <intc_handler+0x80>
1c007980:	02840004 	addi.w	$r4,$r0,256(0x100)
1c007984:	57c8f7ff 	bl	-14092(0xfffc8f4) # 1c004278 <TIM_GetITStatus>
1c007988:	0015008c 	move	$r12,$r4
1c00798c:	40004980 	beqz	$r12,72(0x48) # 1c0079d4 <intc_handler+0x80>
1c007990:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007994:	0299c18c 	addi.w	$r12,$r12,1648(0x670)
1c007998:	2880018c 	ld.w	$r12,$r12,0
1c00799c:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0079a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0079a4:	0015018d 	move	$r13,$r12
1c0079a8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0079ac:	0299618c 	addi.w	$r12,$r12,1624(0x658)
1c0079b0:	2980018d 	st.w	$r13,$r12,0
1c0079b4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0079b8:	0299318c 	addi.w	$r12,$r12,1612(0x64c)
1c0079bc:	2880018c 	ld.w	$r12,$r12,0
1c0079c0:	00150185 	move	$r5,$r12
1c0079c4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0079c8:	57b4afff 	bl	-19284(0xfffb4ac) # 1c002e74 <gpio_write>
1c0079cc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0079d0:	57c8f7ff 	bl	-14092(0xfffc8f4) # 1c0042c4 <TIM_ClearIT>
1c0079d4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0079d8:	0340118c 	andi	$r12,$r12,0x4
1c0079dc:	40009580 	beqz	$r12,148(0x94) # 1c007a70 <intc_handler+0x11c>
1c0079e0:	57cd7fff 	bl	-12932(0xfffcd7c) # 1c00475c <UART1_HANDLER>
1c0079e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0079e8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0079ec:	0380118c 	ori	$r12,$r12,0x4
1c0079f0:	2880018c 	ld.w	$r12,$r12,0
1c0079f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0079f8:	50006c00 	b	108(0x6c) # 1c007a64 <intc_handler+0x110>
1c0079fc:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007a00:	2880018c 	ld.w	$r12,$r12,0
1c007a04:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007a08:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c007a0c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007a10:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007a2c <intc_handler+0xd8>
1c007a14:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007a18:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007a1c:	2980018d 	st.w	$r13,$r12,0
1c007a20:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007a24:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007a28:	50002c00 	b	44(0x2c) # 1c007a54 <intc_handler+0x100>
1c007a2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007a30:	40001980 	beqz	$r12,24(0x18) # 1c007a48 <intc_handler+0xf4>
1c007a34:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007a38:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007a3c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007a40:	2980018d 	st.w	$r13,$r12,0
1c007a44:	50001000 	b	16(0x10) # 1c007a54 <intc_handler+0x100>
1c007a48:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007a4c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c007a50:	2980018d 	st.w	$r13,$r12,0
1c007a54:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007a58:	0380118c 	ori	$r12,$r12,0x4
1c007a5c:	2880018c 	ld.w	$r12,$r12,0
1c007a60:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007a64:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007a68:	0340058c 	andi	$r12,$r12,0x1
1c007a6c:	43ff919f 	beqz	$r12,-112(0x7fff90) # 1c0079fc <intc_handler+0xa8>
1c007a70:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c007a74:	0340218c 	andi	$r12,$r12,0x8
1c007a78:	40001580 	beqz	$r12,20(0x14) # 1c007a8c <intc_handler+0x138>
1c007a7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007a80:	03800d8c 	ori	$r12,$r12,0x3
1c007a84:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007a88:	2900018d 	st.b	$r13,$r12,0
1c007a8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007a90:	03800d8c 	ori	$r12,$r12,0x3
1c007a94:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c007a98:	2900018d 	st.b	$r13,$r12,0
1c007a9c:	03400000 	andi	$r0,$r0,0x0
1c007aa0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007aa4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007aa8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007aac:	4c000020 	jirl	$r0,$r1,0

1c007ab0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c007ab0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007ab4:	29803061 	st.w	$r1,$r3,12(0xc)
1c007ab8:	29802076 	st.w	$r22,$r3,8(0x8)
1c007abc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ac0:	57a617ff 	bl	-23020(0xfffa614) # 1c0020d4 <Set_Timer_clear>
1c007ac4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007ac8:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c007acc:	57a103ff 	bl	-24320(0xfffa100) # 1c001bcc <myprintf>
1c007ad0:	57a5e7ff 	bl	-23068(0xfffa5e4) # 1c0020b4 <Set_Timer_stop>
1c007ad4:	03400000 	andi	$r0,$r0,0x0
1c007ad8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007adc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007ae0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007ae4:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007b00 <msg_wakeup>:
msg_wakeup():
1c007b00:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01e660 <_sidata+0x15474>
1c007b04:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007b09 <hexdecarr>:
hexdecarr():
1c007b09:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c007b0d:	37363534 	0x37363534
1c007b11:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfedc49 <_start-0x123b7>
1c007b15:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfee079 <_start-0x11f87>
1c007b19:	ec000000 	0xec000000
1c007b1d:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007b21:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b25:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b29:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b2d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b31:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b35:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b39:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b3d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b41:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b45:	041c001f 	csrrd	$r31,0x700
1c007b49:	8c1c001e 	0x8c1c001e
1c007b4d:	8c1c001e 	0x8c1c001e
1c007b51:	8c1c001e 	0x8c1c001e
1c007b55:	8c1c001e 	0x8c1c001e
1c007b59:	8c1c001e 	0x8c1c001e
1c007b5d:	8c1c001e 	0x8c1c001e
1c007b61:	8c1c001e 	0x8c1c001e
1c007b65:	8c1c001e 	0x8c1c001e
1c007b69:	8c1c001e 	0x8c1c001e
1c007b6d:	081c001e 	fmadd.s	$f30,$f0,$f0,$f24
1c007b71:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b75:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b79:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b7d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b81:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b85:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b89:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b8d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b91:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b95:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b99:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007b9d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ba1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ba5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007ba9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bad:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bb1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bb5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bb9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bbd:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bc1:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bc5:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bc9:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007bcd:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
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
1c007c0d:	7c1c001f 	0x7c1c001f
1c007c11:	a41c001d 	0xa41c001d
1c007c15:	0c1c001c 	0x0c1c001c
1c007c19:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007c1d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c21:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c25:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c29:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c2d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c31:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c35:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c39:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c3d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c41:	441c001f 	bnez	$r0,-254976(0x7c1c00) # 1bfc9841 <_start-0x367bf>
1c007c45:	b41c001d 	0xb41c001d
1c007c49:	081c001d 	fmadd.s	$f29,$f0,$f0,$f24
1c007c4d:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c51:	781c001f 	0x781c001f
1c007c55:	081c001c 	fmadd.s	$f28,$f0,$f0,$f24
1c007c59:	d41c001f 	0xd41c001f
1c007c5d:	081c001c 	fmadd.s	$f28,$f0,$f0,$f24
1c007c61:	081c001f 	fmadd.s	$f31,$f0,$f0,$f24
1c007c65:	b41c001f 	0xb41c001f
1c007c69:	201c001d 	ll.w	$r29,$r0,7168(0x1c00)
1c007c6d:	3c1c0026 	0x3c1c0026
1c007c71:	3c1c0027 	0x3c1c0027
1c007c75:	3c1c0027 	0x3c1c0027
1c007c79:	3c1c0027 	0x3c1c0027
1c007c7d:	3c1c0027 	0x3c1c0027
1c007c81:	3c1c0027 	0x3c1c0027
1c007c85:	3c1c0027 	0x3c1c0027
1c007c89:	3c1c0027 	0x3c1c0027
1c007c8d:	3c1c0027 	0x3c1c0027
1c007c91:	3c1c0027 	0x3c1c0027
1c007c95:	381c0027 	stx.d	$r7,$r1,$r0
1c007c99:	c01c0026 	0xc01c0026
1c007c9d:	c01c0026 	0xc01c0026
1c007ca1:	c01c0026 	0xc01c0026
1c007ca5:	c01c0026 	0xc01c0026
1c007ca9:	c01c0026 	0xc01c0026
1c007cad:	c01c0026 	0xc01c0026
1c007cb1:	c01c0026 	0xc01c0026
1c007cb5:	c01c0026 	0xc01c0026
1c007cb9:	c01c0026 	0xc01c0026
1c007cbd:	3c1c0026 	0x3c1c0026
1c007cc1:	3c1c0027 	0x3c1c0027
1c007cc5:	3c1c0027 	0x3c1c0027
1c007cc9:	3c1c0027 	0x3c1c0027
1c007ccd:	3c1c0027 	0x3c1c0027
1c007cd1:	3c1c0027 	0x3c1c0027
1c007cd5:	3c1c0027 	0x3c1c0027
1c007cd9:	3c1c0027 	0x3c1c0027
1c007cdd:	3c1c0027 	0x3c1c0027
1c007ce1:	3c1c0027 	0x3c1c0027
1c007ce5:	3c1c0027 	0x3c1c0027
1c007ce9:	3c1c0027 	0x3c1c0027
1c007ced:	3c1c0027 	0x3c1c0027
1c007cf1:	3c1c0027 	0x3c1c0027
1c007cf5:	3c1c0027 	0x3c1c0027
1c007cf9:	3c1c0027 	0x3c1c0027
1c007cfd:	3c1c0027 	0x3c1c0027
1c007d01:	3c1c0027 	0x3c1c0027
1c007d05:	3c1c0027 	0x3c1c0027
1c007d09:	3c1c0027 	0x3c1c0027
1c007d0d:	3c1c0027 	0x3c1c0027
1c007d11:	3c1c0027 	0x3c1c0027
1c007d15:	3c1c0027 	0x3c1c0027
1c007d19:	3c1c0027 	0x3c1c0027
1c007d1d:	3c1c0027 	0x3c1c0027
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
1c007d5d:	b01c0027 	0xb01c0027
1c007d61:	d81c0025 	0xd81c0025
1c007d65:	401c0024 	beqz	$r1,1055744(0x101c00) # 1c109965 <_sidata+0x100779>
1c007d69:	3c1c0025 	0x3c1c0025
1c007d6d:	3c1c0027 	0x3c1c0027
1c007d71:	3c1c0027 	0x3c1c0027
1c007d75:	3c1c0027 	0x3c1c0027
1c007d79:	3c1c0027 	0x3c1c0027
1c007d7d:	3c1c0027 	0x3c1c0027
1c007d81:	3c1c0027 	0x3c1c0027
1c007d85:	3c1c0027 	0x3c1c0027
1c007d89:	3c1c0027 	0x3c1c0027
1c007d8d:	3c1c0027 	0x3c1c0027
1c007d91:	781c0027 	0x781c0027
1c007d95:	e81c0025 	0xe81c0025
1c007d99:	3c1c0025 	0x3c1c0025
1c007d9d:	3c1c0027 	0x3c1c0027
1c007da1:	ac1c0027 	0xac1c0027
1c007da5:	3c1c0024 	0x3c1c0024
1c007da9:	081c0027 	fmadd.s	$f7,$f1,$f0,$f24
1c007dad:	3c1c0025 	0x3c1c0025
1c007db1:	3c1c0027 	0x3c1c0027
1c007db5:	e81c0027 	0xe81c0027
1c007db9:	0d1c0025 	vbitsel.v	$vr5,$vr1,$vr0,$vr24
1c007dbd:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01efdd <_sidata+0x15df1>
1c007dc1:	76696563 	0x76696563
1c007dc5:	64612065 	bge	$r3,$r5,24864(0x6120) # 1c00dee5 <_sidata+0x4cf9>
1c007dc9:	30207264 	vldrepl.w	$vr4,$r19,112(0x70)
1c007dcd:	32302578 	0x32302578
1c007dd1:	000a0d78 	0x000a0d78
1c007dd5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007dd9:	7274200a 	0x7274200a
1c007ddd:	20736e61 	ll.w	$r1,$r19,29548(0x736c)
1c007de1:	72646461 	0x72646461
1c007de5:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c007de9:	0d783230 	0x0d783230
1c007ded:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c007df1:	6544200a 	bge	$r0,$r10,82976(0x14420) # 1c01c211 <_sidata+0x13025>
1c007df5:	65636976 	bge	$r11,$r22,90984(0x16368) # 1c01e15d <_sidata+0x14f71>
1c007df9:	6464415f 	bge	$r10,$r31,25664(0x6440) # 1c00e239 <_sidata+0x504d>
1c007dfd:	78303d72 	0x78303d72
1c007e01:	20783225 	ll.w	$r5,$r17,30768(0x7830)
1c007e05:	6454202c 	bge	$r1,$r12,21536(0x5420) # 1c00d225 <_sidata+0x4039>
1c007e09:	20617461 	ll.w	$r1,$r3,24948(0x6174)
1c007e0d:	7830203d 	0x7830203d
1c007e11:	00783225 	bstrins.w	$r5,$r17,0x18,0xc
1c007e15:	2d000000 	0x2d000000
1c007e19:	2d2d2d2d 	0x2d2d2d2d
1c007e1d:	61206f6e 	blt	$r27,$r14,73836(0x1206c) # 1c019e89 <_sidata+0x10c9d>
1c007e21:	2d2d6b63 	0x2d2d6b63
1c007e25:	0d2d2d2d 	xvbitsel.v	$xr13,$xr9,$xr11,$xr26
1c007e29:	5700000a 	bl	2818048(0x2b0000) # 1c2b7e29 <_sidata+0x2aec3d>
1c007e2d:	72646461 	0x72646461
1c007e31:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007e35:	0d000078 	fsel	$f24,$f3,$f0,$fcc0
1c007e39:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01f059 <_sidata+0x15e6d>
1c007e3d:	44206461 	bnez	$r3,270436(0x42064) # 1c049ea1 <_sidata+0x40cb5>
1c007e41:	63697665 	blt	$r19,$r5,-38540(0x36974) # 1bffe7b5 <_start-0x184b>
1c007e45:	64415f65 	bge	$r27,$r5,16732(0x415c) # 1c00bfa1 <_sidata+0x2db5>
1c007e49:	303d7264 	0x303d7264
1c007e4d:	78322578 	0x78322578
1c007e51:	0a000020 	0x0a000020
1c007e55:	206f6e20 	ll.w	$r0,$r17,28524(0x6f6c)
1c007e59:	206b6361 	ll.w	$r1,$r27,27488(0x6b60)
1c007e5d:	5200000a 	b	2752512(0x2a0000) # 1c2a7e5d <_sidata+0x29ec71>
1c007e61:	72646461 	0x72646461
1c007e65:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007e69:	09000078 	0x09000078
1c007e6d:	0a006425 	0x0a006425
1c007e71:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007e75:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007e79:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007e7d:	0050550a 	0x0050550a
1c007e81:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007e85:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00f3d1 <_sidata+0x61e5>
1c007e89:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c007e8d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007e91:	756f430a 	0x756f430a
1c007e95:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007e99:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c007e9d:	3030090a 	0x3030090a
1c007ea1:	09313009 	0x09313009
1c007ea5:	30093230 	0x30093230
1c007ea9:	34300933 	0x34300933
1c007ead:	09353009 	0x09353009
1c007eb1:	30093630 	0x30093630
1c007eb5:	38300937 	fldx.s	$f23,$r9,$r2
1c007eb9:	09393009 	0x09393009
1c007ebd:	31093031 	0x31093031
1c007ec1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007ec5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007ec9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00e01d <_sidata+0x4e31>
1c007ecd:	09000000 	0x09000000
1c007ed1:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007ed5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007ed9:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfef429 <_start-0x10bd7>
1c007edd:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007ee1:	09000000 	0x09000000
1c007ee5:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007ee9:	09000000 	0x09000000
1c007eed:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007ef1:	0a000000 	0x0a000000
1c007ef5:	56746e43 	bl	-116493204(0x90e746c) # 150ef361 <_start-0x6f10c9f>
1c007ef9:	2d006c61 	0x2d006c61
1c007efd:	4b2d2d2d 	bcnez	$fcc1,3616044(0x372d2c) # 1c37ac29 <_sidata+0x371a3d>
1c007f01:	79547965 	0x79547965
1c007f05:	203a6570 	ll.w	$r16,$r11,14948(0x3a64)
1c007f09:	78257830 	0x78257830
1c007f0d:	65000000 	bge	$r0,$r0,65536(0x10000) # 1c017f0d <_sidata+0xed21>
1c007f11:	00746978 	bstrins.w	$r24,$r11,0x14,0x1a
1c007f15:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff7f15 <_start-0x80eb>
1c007f19:	74697865 	xvavgr.w	$xr5,$xr3,$xr30
1c007f1d:	0000005d 	0x0000005d
1c007f21:	64000000 	bge	$r0,$r0,0 # 1c007f21 <hexdecarr+0x418>
1c007f25:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff7f25 <_start-0x80db>
1c007f29:	3c203164 	0x3c203164
1c007f2d:	72646461 	0x72646461
1c007f31:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebb51 <_start-0x144af>
1c007f35:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01bda1 <_sidata+0x12bb5>
1c007f39:	2d000000 	0x2d000000
1c007f3d:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f4a1 <_sidata+0x162b5>
1c007f41:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e061 <_sidata+0x4e75>
1c007f45:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c007f49:	79622073 	0x79622073
1c007f4d:	64006574 	bge	$r11,$r20,100(0x64) # 1c007fb1 <hexdecarr+0x4a8>
1c007f51:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff7f51 <_start-0x80af>
1c007f55:	3c203464 	0x3c203464
1c007f59:	72646461 	0x72646461
1c007f5d:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebb7d <_start-0x14483>
1c007f61:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01bdcd <_sidata+0x12be1>
1c007f65:	2d000000 	0x2d000000
1c007f69:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f4cd <_sidata+0x162e1>
1c007f6d:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e08d <_sidata+0x4ea1>
1c007f71:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c007f75:	6f772073 	bgeu	$r3,$r19,-35040(0x37720) # 1bfff695 <_start-0x96b>
1c007f79:	68006472 	bltu	$r3,$r18,100(0x64) # 1c007fdd <hexdecarr+0x4d4>
1c007f7d:	00706c65 	bstrins.w	$r5,$r3,0x10,0x1b
1c007f81:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff7f81 <_start-0x807f>
1c007f85:	706c6568 	0x706c6568
1c007f89:	6f633c20 	bgeu	$r1,$r0,-40132(0x3633c) # 1bffe2c5 <_start-0x1d3b>
1c007f8d:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee0f9 <_start-0x11f07>
1c007f91:	005d3e64 	0x005d3e64
1c007f95:	2d000000 	0x2d000000
1c007f99:	646d632d 	bge	$r25,$r13,28000(0x6d60) # 1c00ecf9 <_sidata+0x5b0d>
1c007f9d:	73696c20 	vssrarni.w.d	$vr0,$vr1,0x1b
1c007fa1:	6d000074 	bgeu	$r3,$r20,65536(0x10000) # 1c017fa1 <_sidata+0xedb5>
1c007fa5:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff7fa5 <_start-0x805b>
1c007fa9:	3c20316d 	0x3c20316d
1c007fad:	72646461 	0x72646461
1c007fb1:	763c203e 	0x763c203e
1c007fb5:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f521 <_sidata+0x16335>
1c007fb9:	2d005d3e 	0x2d005d3e
1c007fbd:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00ef29 <_sidata+0x5d3d>
1c007fc1:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c007fc5:	72646461 	0x72646461
1c007fc9:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c007fcd:	65747962 	bge	$r11,$r2,95352(0x17478) # 1c01f445 <_sidata+0x16259>
1c007fd1:	6d000000 	bgeu	$r0,$r0,65536(0x10000) # 1c017fd1 <_sidata+0xede5>
1c007fd5:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff7fd5 <_start-0x802b>
1c007fd9:	3c20346d 	0x3c20346d
1c007fdd:	72646461 	0x72646461
1c007fe1:	763c203e 	0x763c203e
1c007fe5:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f551 <_sidata+0x16365>
1c007fe9:	2d005d3e 	0x2d005d3e
1c007fed:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00ef59 <_sidata+0x5d6d>
1c007ff1:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c007ff5:	72646461 	0x72646461
1c007ff9:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c007ffd:	64726f77 	bge	$r27,$r23,29292(0x726c) # 1c00f269 <_sidata+0x607d>
1c008001:	76000000 	0x76000000
1c008005:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8005 <_start-0x7ffb>
1c008009:	2d005d76 	0x2d005d76
1c00800d:	0031762d 	0x0031762d
1c008011:	74000000 	xvseq.b	$xr0,$xr0,$xr0
1c008015:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00e389 <_sidata+0x519d>
1c008019:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8019 <_start-0x7fe7>
1c00801d:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfff589 <_start-0xa77>
1c008021:	68005d68 	bltu	$r11,$r8,92(0x5c) # 1c00807d <hexdecarr+0x574>
1c008025:	00746570 	bstrins.w	$r16,$r11,0x14,0x19
1c008029:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8029 <_start-0x7fd7>
1c00802d:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01ed95 <_sidata+0x15ba9>
1c008031:	65742072 	bge	$r3,$r18,95264(0x17420) # 1c01f451 <_sidata+0x16265>
1c008035:	005d7473 	0x005d7473
1c008039:	6c000000 	bgeu	$r0,$r0,0 # 1c008039 <hexdecarr+0x530>
1c00803d:	6d697461 	bgeu	$r3,$r1,92532(0x16974) # 1c01e9b1 <_sidata+0x157c5>
1c008041:	5b007265 	beq	$r19,$r5,-65424(0x30070) # 1bff80b1 <_start-0x7f4f>
1c008045:	65726f63 	bge	$r27,$r3,94828(0x1726c) # 1c01f2b1 <_sidata+0x160c5>
1c008049:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01e9bd <_sidata+0x157d1>
1c00804d:	74207265 	xvsubwev.h.b	$xr5,$xr19,$xr28
1c008051:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f4c1 <_sidata+0x162d5>
1c008055:	64000000 	bge	$r0,$r0,0 # 1c008055 <hexdecarr+0x54c>
1c008059:	79616c65 	0x79616c65
1c00805d:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff805d <_start-0x7fa3>
1c008061:	616c6564 	blt	$r11,$r4,93284(0x16c64) # 1c01ecc5 <_sidata+0x15ad9>
1c008065:	65742079 	bge	$r3,$r25,95264(0x17420) # 1c01f485 <_sidata+0x16299>
1c008069:	005d7473 	0x005d7473
1c00806d:	77000000 	0x77000000
1c008071:	75656b61 	0x75656b61
1c008075:	5b000070 	beq	$r3,$r16,-65536(0x30000) # 1bff8075 <_start-0x7f8b>
1c008079:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01ebd9 <_sidata+0x159ed>
1c00807d:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c008081:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f4f1 <_sidata+0x16305>
1c008085:	64000000 	bge	$r0,$r0,0 # 1c008085 <hexdecarr+0x57c>
1c008089:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
1c00808d:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff808d <_start-0x7f73>
1c008091:	20637472 	ll.w	$r18,$r3,25460(0x6374)
1c008095:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c008099:	7700005d 	0x7700005d
1c00809d:	5b006764 	beq	$r27,$r4,-65436(0x30064) # 1bff8101 <_start-0x7eff>
1c0080a1:	20676477 	ll.w	$r23,$r3,26468(0x6764)
1c0080a5:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0080a9:	6900005d 	bltu	$r2,$r29,65536(0x10000) # 1c0180a9 <_sidata+0xeebd>
1c0080ad:	00706332 	bstrins.w	$r18,$r25,0x10,0x18
1c0080b1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff80b1 <_start-0x7f4f>
1c0080b5:	70633269 	vabsd.wu	$vr9,$vr19,$vr12
1c0080b9:	72703c20 	0x72703c20
1c0080bd:	61637365 	blt	$r27,$r5,90992(0x16370) # 1c01e42d <_sidata+0x15241>
1c0080c1:	5d3e656c 	bne	$r11,$r12,81508(0x13e64) # 1c01bf25 <_sidata+0x12d39>
1c0080c5:	2d000000 	0x2d000000
1c0080c9:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb331 <_start-0x4ccf>
1c0080cd:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01f33d <_sidata+0x16151>
1c0080d1:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00e231 <_sidata+0x5045>
1c0080d5:	69000065 	bltu	$r3,$r5,65536(0x10000) # 1c0180d5 <_sidata+0xeee9>
1c0080d9:	00776332 	bstrins.w	$r18,$r25,0x17,0x18
1c0080dd:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff80dd <_start-0x7f23>
1c0080e1:	77633269 	xvssrani.d.q	$xr9,$xr19,0x4c
1c0080e5:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e421 <_sidata+0x5235>
1c0080e9:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e259 <_sidata+0x506d>
1c0080ed:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c0080f1:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe661 <_start-0x199f>
1c0080f5:	72646461 	0x72646461
1c0080f9:	773c203e 	0x773c203e
1c0080fd:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01f55d <_sidata+0x16371>
1c008101:	2d005d3e 	0x2d005d3e
1c008105:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb36d <_start-0x4c93>
1c008109:	69727720 	bltu	$r25,$r0,94836(0x17274) # 1c01f37d <_sidata+0x16191>
1c00810d:	69006574 	bltu	$r11,$r20,65636(0x10064) # 1c018171 <_sidata+0xef85>
1c008111:	00726332 	bstrins.w	$r18,$r25,0x12,0x18
1c008115:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8115 <_start-0x7eeb>
1c008119:	72633269 	0x72633269
1c00811d:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e459 <_sidata+0x526d>
1c008121:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e291 <_sidata+0x50a5>
1c008125:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008129:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe699 <_start-0x1967>
1c00812d:	72646461 	0x72646461
1c008131:	2d005d3e 	0x2d005d3e
1c008135:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb39d <_start-0x4c63>
1c008139:	61657220 	blt	$r17,$r0,91504(0x16570) # 1c01e6a9 <_sidata+0x154bd>
1c00813d:	61000064 	blt	$r3,$r4,65536(0x10000) # 1c01813d <_sidata+0xef51>
1c008141:	5b006364 	beq	$r27,$r4,-65440(0x30060) # 1bff81a1 <_start-0x7e5f>
1c008145:	5d636461 	bne	$r3,$r1,90980(0x16364) # 1c01e4a9 <_sidata+0x152bd>
1c008149:	2d000000 	0x2d000000
1c00814d:	6364612d 	blt	$r9,$r13,-39840(0x36460) # 1bffe5ad <_start-0x1a53>
1c008151:	62000000 	blt	$r0,$r0,-131072(0x20000) # 1bfe8151 <_start-0x17eaf>
1c008155:	65647461 	bge	$r3,$r1,91252(0x16474) # 1c01e5c9 <_sidata+0x153dd>
1c008159:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff8159 <_start-0x7ea7>
1c00815d:	64746162 	bge	$r11,$r2,29792(0x7460) # 1c00f5bd <_sidata+0x63d1>
1c008161:	3c207465 	0x3c207465
1c008165:	005d3e6e 	0x005d3e6e
1c008169:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff8169 <_start-0x7e97>
1c00816d:	0079706f 	bstrins.w	$r15,$r3,0x19,0x1c
1c008171:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8171 <_start-0x7e8f>
1c008175:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeae5 <_start-0x151b>
1c008179:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c00817d:	693e3d68 	bltu	$r11,$r8,81468(0x13e3c) # 1c01bfb9 <_sidata+0x12dcd>
1c008181:	6c665f6e 	bgeu	$r27,$r14,26204(0x665c) # 1c00e7dd <_sidata+0x55f1>
1c008185:	5d687361 	bne	$r27,$r1,92272(0x16870) # 1c01e9f5 <_sidata+0x15809>
1c008189:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff8189 <_start-0x7e77>
1c00818d:	5f79706f 	bne	$r3,$r15,-34448(0x37970) # 1bfffafd <_start-0x503>
1c008191:	6d617269 	bgeu	$r19,$r9,90480(0x16170) # 1c01e301 <_sidata+0x15115>
1c008195:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8195 <_start-0x7e6b>
1c008199:	79706f63 	0x79706f63
1c00819d:	2d00005d 	0x2d00005d
1c0081a1:	7461622d 	xvabsd.w	$xr13,$xr17,$xr24
1c0081a5:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c0081a9:	003e6e3c 	0x003e6e3c
1c0081ad:	75000000 	0x75000000
1c0081b1:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c0081b5:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81b5 <_start-0x7e4b>
1c0081b9:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c0081bd:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01f025 <_sidata+0x15e39>
1c0081c1:	73005d74 	0x73005d74
1c0081c5:	696e6970 	bltu	$r11,$r16,93800(0x16e68) # 1c01f02d <_sidata+0x15e41>
1c0081c9:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff81c9 <_start-0x7e37>
1c0081cd:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb3d <_start-0x14c3>
1c0081d1:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c0081d5:	7300005d 	0x7300005d
1c0081d9:	61726570 	blt	$r11,$r16,94820(0x17264) # 1c01f43d <_sidata+0x16251>
1c0081dd:	5b006573 	beq	$r11,$r19,-65436(0x30064) # 1bff8241 <_start-0x7dbf>
1c0081e1:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb51 <_start-0x14af>
1c0081e5:	73617265 	vssrani.w.d	$vr5,$vr19,0x1c
1c0081e9:	73005d65 	0x73005d65
1c0081ed:	00727770 	bstrins.w	$r16,$r27,0x12,0x1d
1c0081f1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81f1 <_start-0x7e0f>
1c0081f5:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb65 <_start-0x149b>
1c0081f9:	74697277 	xvavgr.w	$xr23,$xr19,$xr28
1c0081fd:	73005d65 	0x73005d65
1c008201:	00647270 	bstrins.w	$r16,$r19,0x4,0x1c
1c008205:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8205 <_start-0x7dfb>
1c008209:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb79 <_start-0x1487>
1c00820d:	64616572 	bge	$r11,$r18,24932(0x6164) # 1c00e371 <_sidata+0x5185>
1c008211:	7300005d 	0x7300005d
1c008215:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008219:	5b000068 	beq	$r3,$r8,-65536(0x30000) # 1bff8219 <_start-0x7de7>
1c00821d:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeb8d <_start-0x1473>
1c008221:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008225:	67005d68 	bge	$r11,$r8,-65444(0x3005c) # 1bff8281 <_start-0x7d7f>
1c008229:	5f6f6970 	bne	$r11,$r16,-37016(0x36f68) # 1bfff191 <_start-0xe6f>
1c00822d:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
1c008231:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8231 <_start-0x7dcf>
1c008235:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f6ad <_sidata+0x164c1>
1c008239:	7400005d 	xvseq.b	$xr29,$xr2,$xr0
1c00823d:	4e000000 	jirl	$r0,$r0,-131072(0x20000)
1c008241:	004c4c55 	0x004c4c55
1c008245:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8245 <_start-0x7dbb>
1c008249:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c00824d:	 	addu16i.d	$r29,$r2,0

1c008250 <cmd>:
1c008250:	1c007f10 	pcaddu12i	$r16,1016(0x3f8)
1c008254:	1c004320 	pcaddu12i	$r0,537(0x219)
1c008258:	1c007f18 	pcaddu12i	$r24,1016(0x3f8)
1c00825c:	1c007f20 	pcaddu12i	$r0,1017(0x3f9)
1c008260:	1c007f24 	pcaddu12i	$r4,1017(0x3f9)
1c008264:	1c0047b8 	pcaddu12i	$r24,573(0x23d)
1c008268:	1c007f28 	pcaddu12i	$r8,1017(0x3f9)
1c00826c:	1c007f3c 	pcaddu12i	$r28,1017(0x3f9)
1c008270:	1c007f50 	pcaddu12i	$r16,1018(0x3fa)
1c008274:	1c0048cc 	pcaddu12i	$r12,582(0x246)
1c008278:	1c007f54 	pcaddu12i	$r20,1018(0x3fa)
1c00827c:	1c007f68 	pcaddu12i	$r8,1019(0x3fb)
1c008280:	1c007f7c 	pcaddu12i	$r28,1019(0x3fb)
1c008284:	1c004348 	pcaddu12i	$r8,538(0x21a)
1c008288:	1c007f84 	pcaddu12i	$r4,1020(0x3fc)
1c00828c:	1c007f98 	pcaddu12i	$r24,1020(0x3fc)
1c008290:	1c007fa4 	pcaddu12i	$r4,1021(0x3fd)
1c008294:	1c0049ec 	pcaddu12i	$r12,591(0x24f)
1c008298:	1c007fa8 	pcaddu12i	$r8,1021(0x3fd)
1c00829c:	1c007fbc 	pcaddu12i	$r28,1021(0x3fd)
1c0082a0:	1c007fd4 	pcaddu12i	$r20,1022(0x3fe)
1c0082a4:	1c004a7c 	pcaddu12i	$r28,595(0x253)
1c0082a8:	1c007fd8 	pcaddu12i	$r24,1022(0x3fe)
1c0082ac:	1c007fec 	pcaddu12i	$r12,1023(0x3ff)
1c0082b0:	1c008004 	pcaddu12i	$r4,1024(0x400)
1c0082b4:	1c004d1c 	pcaddu12i	$r28,616(0x268)
1c0082b8:	1c008008 	pcaddu12i	$r8,1024(0x400)
1c0082bc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0082c0:	1c008014 	pcaddu12i	$r20,1024(0x400)
1c0082c4:	1c004f9c 	pcaddu12i	$r28,636(0x27c)
1c0082c8:	1c00801c 	pcaddu12i	$r28,1024(0x400)
1c0082cc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0082d0:	1c008024 	pcaddu12i	$r4,1025(0x401)
1c0082d4:	1c005250 	pcaddu12i	$r16,658(0x292)
1c0082d8:	1c00802c 	pcaddu12i	$r12,1025(0x401)
1c0082dc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0082e0:	1c00803c 	pcaddu12i	$r28,1025(0x401)
1c0082e4:	1c005350 	pcaddu12i	$r16,666(0x29a)
1c0082e8:	1c008044 	pcaddu12i	$r4,1026(0x402)
1c0082ec:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0082f0:	1c008058 	pcaddu12i	$r24,1026(0x402)
1c0082f4:	1c0053e4 	pcaddu12i	$r4,671(0x29f)
1c0082f8:	1c008060 	pcaddu12i	$r0,1027(0x403)
1c0082fc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008300:	1c008070 	pcaddu12i	$r16,1027(0x403)
1c008304:	1c0054e8 	pcaddu12i	$r8,679(0x2a7)
1c008308:	1c008078 	pcaddu12i	$r24,1027(0x403)
1c00830c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008310:	1c008088 	pcaddu12i	$r8,1028(0x404)
1c008314:	1c0055d8 	pcaddu12i	$r24,686(0x2ae)
1c008318:	1c008090 	pcaddu12i	$r16,1028(0x404)
1c00831c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008320:	1c00809c 	pcaddu12i	$r28,1028(0x404)
1c008324:	1c005cf8 	pcaddu12i	$r24,743(0x2e7)
1c008328:	1c0080a0 	pcaddu12i	$r0,1029(0x405)
1c00832c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008330:	1c0080ac 	pcaddu12i	$r12,1029(0x405)
1c008334:	1c005d7c 	pcaddu12i	$r28,747(0x2eb)
1c008338:	1c0080b4 	pcaddu12i	$r20,1029(0x405)
1c00833c:	1c0080c8 	pcaddu12i	$r8,1030(0x406)
1c008340:	1c0080d8 	pcaddu12i	$r24,1030(0x406)
1c008344:	1c005dc8 	pcaddu12i	$r8,750(0x2ee)
1c008348:	1c0080e0 	pcaddu12i	$r0,1031(0x407)
1c00834c:	1c008104 	pcaddu12i	$r4,1032(0x408)
1c008350:	1c008110 	pcaddu12i	$r16,1032(0x408)
1c008354:	1c005ed4 	pcaddu12i	$r20,758(0x2f6)
1c008358:	1c008118 	pcaddu12i	$r24,1032(0x408)
1c00835c:	1c008134 	pcaddu12i	$r20,1033(0x409)
1c008360:	1c008140 	pcaddu12i	$r0,1034(0x40a)
1c008364:	1c005fb4 	pcaddu12i	$r20,765(0x2fd)
1c008368:	1c008144 	pcaddu12i	$r4,1034(0x40a)
1c00836c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008370:	1c008154 	pcaddu12i	$r20,1034(0x40a)
1c008374:	1c006158 	pcaddu12i	$r24,778(0x30a)
1c008378:	1c00815c 	pcaddu12i	$r28,1034(0x40a)
1c00837c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008380:	1c00816c 	pcaddu12i	$r12,1035(0x40b)
1c008384:	1c0062c8 	pcaddu12i	$r8,790(0x316)
1c008388:	1c008174 	pcaddu12i	$r20,1035(0x40b)
1c00838c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008390:	1c00818c 	pcaddu12i	$r12,1036(0x40c)
1c008394:	1c006be4 	pcaddu12i	$r4,863(0x35f)
1c008398:	1c008198 	pcaddu12i	$r24,1036(0x40c)
1c00839c:	1c0081a0 	pcaddu12i	$r0,1037(0x40d)
1c0083a0:	1c0081b0 	pcaddu12i	$r16,1037(0x40d)
1c0083a4:	1c006458 	pcaddu12i	$r24,802(0x322)
1c0083a8:	1c0081b8 	pcaddu12i	$r24,1037(0x40d)
1c0083ac:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0083b0:	1c0081c4 	pcaddu12i	$r4,1038(0x40e)
1c0083b4:	1c006504 	pcaddu12i	$r4,808(0x328)
1c0083b8:	1c0081cc 	pcaddu12i	$r12,1038(0x40e)
1c0083bc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0083c0:	1c0081d8 	pcaddu12i	$r24,1038(0x40e)
1c0083c4:	1c00680c 	pcaddu12i	$r12,832(0x340)
1c0083c8:	1c0081e0 	pcaddu12i	$r0,1039(0x40f)
1c0083cc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0083d0:	1c0081ec 	pcaddu12i	$r12,1039(0x40f)
1c0083d4:	1c00656c 	pcaddu12i	$r12,811(0x32b)
1c0083d8:	1c0081f4 	pcaddu12i	$r20,1039(0x40f)
1c0083dc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0083e0:	1c008200 	pcaddu12i	$r0,1040(0x410)
1c0083e4:	1c00669c 	pcaddu12i	$r28,820(0x334)
1c0083e8:	1c008208 	pcaddu12i	$r8,1040(0x410)
1c0083ec:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c0083f0:	1c008214 	pcaddu12i	$r20,1040(0x410)
1c0083f4:	1c00689c 	pcaddu12i	$r28,836(0x344)
1c0083f8:	1c00821c 	pcaddu12i	$r28,1040(0x410)
1c0083fc:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008400:	1c008228 	pcaddu12i	$r8,1041(0x411)
1c008404:	1c006b84 	pcaddu12i	$r4,860(0x35c)
1c008408:	1c008234 	pcaddu12i	$r20,1041(0x411)
1c00840c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008410:	1c00823c 	pcaddu12i	$r28,1041(0x411)
1c008414:	1c006bb8 	pcaddu12i	$r24,861(0x35d)
1c008418:	1c008234 	pcaddu12i	$r20,1041(0x411)
1c00841c:	1c00800c 	pcaddu12i	$r12,1024(0x400)
1c008420:	1c008240 	pcaddu12i	$r0,1042(0x412)
1c008424:	1c004798 	pcaddu12i	$r24,572(0x23c)
1c008428:	1c008248 	pcaddu12i	$r8,1042(0x412)
1c00842c:	1c008240 	pcaddu12i	$r0,1042(0x412)
1c008430:	6d6f630a 	bgeu	$r24,$r10,94048(0x16f60) # 1c01f390 <_sidata+0x161a4>
1c008434:	646e616d 	bge	$r11,$r13,28256(0x6e60) # 1c00f294 <_sidata+0x60a8>
1c008438:	0a0a3a73 	0x0a0a3a73
1c00843c:	00000000 	0x00000000
1c008440:	32252009 	xvldrepl.w	$xr9,$r0,1312(0x520)
1c008444:	73253a64 	vsat.d	$vr4,$vr19,0xe
1c008448:	00000d0a 	0x00000d0a
1c00844c:	7325090a 	vsat.d	$vr10,$vr8,0x2
1c008450:	09732509 	0x09732509
1c008454:	000a7325 	0x000a7325
1c008458:	5245090a 	b	69879048(0x42a4508) # 202ac960 <_sidata+0x42a3774>
1c00845c:	3a524f52 	0x3a524f52
1c008460:	646e7520 	bge	$r9,$r0,28276(0x6e74) # 1c00f2d4 <_sidata+0x60e8>
1c008464:	6e696665 	bgeu	$r19,$r5,-104092(0x26964) # 1bfeedc8 <_start-0x11238>
1c008468:	6f632065 	bgeu	$r3,$r5,-40160(0x36320) # 1bffe788 <_start-0x1878>
1c00846c:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee5d8 <_start-0x11a28>
1c008470:	21212164 	sc.w	$r4,$r11,8480(0x2120)
1c008474:	0000000a 	0x0000000a
1c008478:	7375200a 	0x7375200a
1c00847c:	3a656761 	0x3a656761
1c008480:	6c656820 	bgeu	$r1,$r0,25960(0x6568) # 1c00e9e8 <_sidata+0x57fc>
1c008484:	3c202070 	0x3c202070
1c008488:	3e646d63 	0x3e646d63
1c00848c:	00000d0a 	0x00000d0a
1c008490:	0020240a 	div.w	$r10,$r0,$r9
1c008494:	00000a0d 	0x00000a0d
1c008498:	44434241 	bnez	$r18,279360(0x44340) # 1c04c7d8 <_sidata+0x435ec>
1c00849c:	00000000 	0x00000000
1c0084a0:	30727473 	0x30727473
1c0084a4:	25203d20 	stptr.w	$r0,$r9,8252(0x203c)
1c0084a8:	000a0d73 	0x000a0d73
1c0084ac:	206e656c 	ll.w	$r12,$r11,28260(0x6e64)
1c0084b0:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c00a9d0 <_sidata+0x17e4>
1c0084b4:	00000a0d 	0x00000a0d
1c0084b8:	206d756e 	ll.w	$r14,$r11,28020(0x6d74)
1c0084bc:	6425203d 	bge	$r1,$r29,9504(0x2520) # 1c00a9dc <_sidata+0x17f0>
1c0084c0:	00000a0d 	0x00000a0d
1c0084c4:	7375200a 	0x7375200a
1c0084c8:	3a656761 	0x3a656761
1c0084cc:	20316420 	ll.w	$r0,$r1,12644(0x3164)
1c0084d0:	64613c20 	bge	$r1,$r0,24892(0x613c) # 1c00e60c <_sidata+0x5420>
1c0084d4:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c0084d8:	756e3c20 	0x756e3c20
1c0084dc:	0d0a3e6d 	0x0d0a3e6d
1c0084e0:	00000000 	0x00000000
1c0084e4:	7830200a 	0x7830200a
1c0084e8:	78383025 	0x78383025
1c0084ec:	0000093a 	0x0000093a
1c0084f0:	32302520 	0x32302520
1c0084f4:	00002078 	clo.d	$r24,$r3
1c0084f8:	7375200a 	0x7375200a
1c0084fc:	3a656761 	0x3a656761
1c008500:	20346420 	ll.w	$r0,$r1,13412(0x3464)
1c008504:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00e964 <_sidata+0x5778>
1c008508:	3c203e72 	0x3c203e72
1c00850c:	3e6d756e 	0x3e6d756e
1c008510:	00000d0a 	0x00000d0a
1c008514:	2578300a 	stptr.w	$r10,$r0,30768(0x7830)
1c008518:	3a783830 	0x3a783830
1c00851c:	00000009 	0x00000009
1c008520:	38302520 	fldx.s	$f0,$r9,$r9
1c008524:	00002078 	clo.d	$r24,$r3
1c008528:	7375200a 	0x7375200a
1c00852c:	3a656761 	0x3a656761
1c008530:	20316d20 	ll.w	$r0,$r9,12652(0x316c)
1c008534:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00e994 <_sidata+0x57a8>
1c008538:	3c203e72 	0x3c203e72
1c00853c:	756c6176 	0x756c6176
1c008540:	0d0a3e65 	0x0d0a3e65
1c008544:	00000000 	0x00000000
1c008548:	7375200a 	0x7375200a
1c00854c:	3a656761 	0x3a656761
1c008550:	20346d20 	ll.w	$r0,$r9,13420(0x346c)
1c008554:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00e9b4 <_sidata+0x57c8>
1c008558:	3c203e72 	0x3c203e72
1c00855c:	756c6176 	0x756c6176
1c008560:	0d0a3e65 	0x0d0a3e65
1c008564:	00000000 	0x00000000
1c008568:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f1d4 <_sidata+0x15fe8>
1c00856c:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c008570:	20786568 	ll.w	$r8,$r11,30820(0x7864)
1c008574:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef2e8 <_start-0x10d18>
1c008578:	2e2e7265 	0x2e2e7265
1c00857c:	00000a2e 	0x00000a2e
1c008580:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f1ec <_sidata+0x16000>
1c008584:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c008588:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef2fc <_start-0x10d04>
1c00858c:	2e2e7265 	0x2e2e7265
1c008590:	00000a2e 	0x00000a2e
1c008594:	7375200a 	0x7375200a
1c008598:	3a656761 	0x3a656761
1c00859c:	3c207620 	0x3c207620
1c0085a0:	72646461 	0x72646461
1c0085a4:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfec1c4 <_start-0x13e3c>
1c0085a8:	0a3e6d75 	0x0a3e6d75
1c0085ac:	0000000d 	0x0000000d
1c0085b0:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c0085b4:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f318 <_sidata+0x1612c>
1c0085b8:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c0085bc:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0085c0:	61747320 	blt	$r25,$r0,95344(0x17470) # 1c01fa30 <_sidata+0x16844>
1c0085c4:	64657472 	bge	$r3,$r18,25972(0x6574) # 1c00eb38 <_sidata+0x594c>
1c0085c8:	00000a20 	0x00000a20
1c0085cc:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c0085d0:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f334 <_sidata+0x16148>
1c0085d4:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c0085d8:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0085dc:	646e6520 	bge	$r9,$r0,28260(0x6e64) # 1c00f440 <_sidata+0x6254>
1c0085e0:	0000000a 	0x0000000a
1c0085e4:	6573540a 	bge	$r0,$r10,95060(0x17354) # 1c01f938 <_sidata+0x1674c>
1c0085e8:	726f736e 	0x726f736e
1c0085ec:	00000a3a 	0x00000a3a
1c0085f0:	435f5354 	beqz	$r26,-2924720(0x535f50) # 1bd3e540 <_start-0x2c1ac0>
1c0085f4:	206c7274 	ll.w	$r20,$r19,27760(0x6c70)
1c0085f8:	3d202020 	0x3d202020
1c0085fc:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008600:	000a7838 	0x000a7838
1c008604:	4f5f5354 	jirl	$r20,$r26,-41136(0x35f50)
1c008608:	68546373 	bltu	$r27,$r19,21600(0x5460) # 1c00da68 <_sidata+0x487c>
1c00860c:	3d202020 	0x3d202020
1c008610:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008614:	000a7838 	0x000a7838
1c008618:	505f5354 	b	-45064368(0xd505f50) # 1950e568 <_start-0x2af1a98>
1c00861c:	546c6c6f 	bl	29125740(0x1bc6c6c) # 1dbcf288 <_sidata+0x1bc609c>
1c008620:	3d206d69 	0x3d206d69
1c008624:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008628:	000a7838 	0x000a7838
1c00862c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008630:	43202020 	beqz	$r1,204832(0x32020) # 1c03a650 <_sidata+0x31464>
1c008634:	74416e68 	xvaddwod.d.wu.w	$xr8,$xr19,$xr27
1c008638:	20207274 	ll.w	$r20,$r19,8304(0x2070)
1c00863c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008640:	746e4320 	0x746e4320
1c008644:	0a736552 	0x0a736552
1c008648:	00000000 	0x00000000
1c00864c:	6432255b 	bge	$r10,$r27,12836(0x3224) # 1c00b870 <_sidata+0x2684>
1c008650:	203d205d 	ll.w	$r29,$r2,15648(0x3d20)
1c008654:	38257830 	0x38257830
1c008658:	20202078 	ll.w	$r24,$r3,8224(0x2020)
1c00865c:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008660:	000a7838 	0x000a7838
1c008664:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c008668:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00866c:	30302020 	0x30302020
1c008670:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c008674:	20202031 	ll.w	$r17,$r1,8224(0x2020)
1c008678:	20203230 	ll.w	$r16,$r17,8240(0x2030)
1c00867c:	20333020 	ll.w	$r0,$r1,13104(0x3330)
1c008680:	34302020 	0x34302020
1c008684:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c008688:	20202035 	ll.w	$r21,$r1,8224(0x2020)
1c00868c:	20203630 	ll.w	$r16,$r17,8244(0x2034)
1c008690:	20373020 	ll.w	$r0,$r1,14128(0x3730)
1c008694:	38302020 	fldx.s	$f0,$r1,$r8
1c008698:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c00869c:	20202039 	ll.w	$r25,$r1,8224(0x2020)
1c0086a0:	20203031 	ll.w	$r17,$r1,8240(0x2030)
1c0086a4:	0a313120 	0x0a313120
1c0086a8:	00000000 	0x00000000
1c0086ac:	76736162 	0x76736162
1c0086b0:	00006c61 	cpucfg	$r1,$r3
1c0086b4:	64342520 	bge	$r9,$r0,13348(0x3424) # 1c00bad8 <_sidata+0x28ec>
1c0086b8:	00000000 	0x00000000
1c0086bc:	746e630a 	0x746e630a
1c0086c0:	006c6176 	bstrins.w	$r22,$r11,0xc,0x18
1c0086c4:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c0086c8:	00000000 	0x00000000
1c0086cc:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffaec <_start-0x514>
1c0086d0:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0086d4:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c0086d8:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffeb14 <_start-0x14ec>
1c0086dc:	745f6e77 	0x745f6e77
1c0086e0:	002e3e68 	0x002e3e68
1c0086e4:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb04 <_start-0x24fc>
1c0086e8:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0086ec:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
1c0086f0:	00000000 	0x00000000
1c0086f4:	6e616373 	bgeu	$r27,$r19,-106144(0x26160) # 1bfee854 <_start-0x117ac>
1c0086f8:	00000000 	0x00000000
1c0086fc:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb1c <_start-0x24e4>
1c008700:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008704:	6e616353 	bgeu	$r26,$r19,-106144(0x26160) # 1bfee864 <_start-0x1179c>
1c008708:	00000000 	0x00000000
1c00870c:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfefe78 <_start-0x10188>
1c008710:	00000000 	0x00000000
1c008714:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb34 <_start-0x24cc>
1c008718:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c00871c:	6e776f44 	bgeu	$r26,$r4,-100500(0x2776c) # 1bfefe88 <_start-0x10178>
1c008720:	00006854 	rdtime.d	$r20,$r2
1c008724:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffb44 <_start-0x4bc>
1c008728:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c00872c:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfefe98 <_start-0x10168>
1c008730:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffeb6c <_start-0x1494>
1c008734:	745f6e77 	0x745f6e77
1c008738:	3c203e68 	0x3c203e68
1c00873c:	6e616863 	bgeu	$r3,$r3,-106136(0x26168) # 1bfee8a4 <_start-0x1175c>
1c008740:	3e6c656e 	0x3e6c656e
1c008744:	00000000 	0x00000000
1c008748:	6c6c6f70 	bgeu	$r27,$r16,27756(0x6c6c) # 1c00f3b4 <_sidata+0x61c8>
1c00874c:	00000000 	0x00000000
1c008750:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdb70 <_start-0x2490>
1c008754:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008758:	6c6c6f50 	bgeu	$r26,$r16,27756(0x6c6c) # 1c00f3c4 <_sidata+0x61d8>
1c00875c:	0000002e 	0x0000002e
1c008760:	776f6873 	xvssrarni.du.q	$xr19,$xr3,0x5a
1c008764:	00000000 	0x00000000
1c008768:	6e49200a 	bgeu	$r0,$r10,-112352(0x24920) # 1bfed088 <_start-0x12f78>
1c00876c:	20747570 	ll.w	$r16,$r11,29812(0x7474)
1c008770:	6f727245 	bgeu	$r18,$r5,-36240(0x37270) # 1bfff9e0 <_start-0x620>
1c008774:	00002e72 	ctz.d	$r18,$r19
1c008778:	6173550a 	blt	$r8,$r10,95060(0x17354) # 1c01facc <_sidata+0x168e0>
1c00877c:	203a6567 	ll.w	$r7,$r11,14948(0x3a64)
1c008780:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffcec <_start-0x314>
1c008784:	6e692068 	bgeu	$r3,$r8,-104160(0x26920) # 1bfef0a4 <_start-0x10f5c>
1c008788:	3c207469 	0x3c207469
1c00878c:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfefef8 <_start-0x10108>
1c008790:	3e68745f 	0x3e68745f
1c008794:	0a090920 	0x0a090920
1c008798:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00879c:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c0087a0:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00eb14 <_sidata+0x5928>
1c0087a4:	776f6420 	xvssrarni.du.q	$xr0,$xr1,0x59
1c0087a8:	643c206e 	bge	$r3,$r14,15392(0x3c20) # 1c00c3c8 <_sidata+0x31dc>
1c0087ac:	5f6e776f 	bne	$r27,$r15,-37260(0x36e74) # 1bfff620 <_start-0x9e0>
1c0087b0:	203e6874 	ll.w	$r20,$r3,15976(0x3e68)
1c0087b4:	6168633c 	blt	$r25,$r28,92256(0x16860) # 1c01f014 <_sidata+0x15e28>
1c0087b8:	6c656e6e 	bgeu	$r19,$r14,25964(0x656c) # 1c00ed24 <_sidata+0x5b38>
1c0087bc:	2009203e 	ll.w	$r30,$r1,2336(0x920)
1c0087c0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087c4:	0a202020 	xvfmadd.d	$xr0,$xr1,$xr8,$xr0
1c0087c8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087cc:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c0087d0:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00eb44 <_sidata+0x5958>
1c0087d4:	61637320 	blt	$r25,$r0,90992(0x16370) # 1c01eb44 <_sidata+0x15958>
1c0087d8:	0909206e 	0x0909206e
1c0087dc:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c0087e0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087e4:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffd50 <_start-0x2b0>
1c0087e8:	6f702068 	bgeu	$r3,$r8,-36832(0x37020) # 1bfff808 <_start-0x7f8>
1c0087ec:	09206c6c 	vfmadd.d	$vr12,$vr3,$vr27,$vr0
1c0087f0:	20200a09 	ll.w	$r9,$r16,8200(0x2008)
1c0087f4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087f8:	756f7420 	0x756f7420
1c0087fc:	73206863 	0x73206863
1c008800:	00776f68 	bstrins.w	$r8,$r27,0x17,0x1b
1c008804:	68200a0d 	bltu	$r16,$r13,8200(0x2008) # 1c00a80c <_sidata+0x1620>
1c008808:	20746570 	ll.w	$r16,$r11,29796(0x7464)
1c00880c:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f574 <_sidata+0x16388>
1c008810:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c008814:	2e747261 	0x2e747261
1c008818:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00881c:	00000000 	0x00000000
1c008820:	55200a0d 	bl	-130736120(0x8352008) # 1435a828 <_start-0x7ca57d8>
1c008824:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01ef84 <_sidata+0x15d98>
1c008828:	7068203a 	vavgr.b	$vr26,$vr1,$vr8
1c00882c:	3c207465 	0x3c207465
1c008830:	69726570 	bltu	$r11,$r16,94820(0x17264) # 1c01fa94 <_sidata+0x168a8>
1c008834:	6369646f 	blt	$r3,$r15,-38556(0x36964) # 1bfff198 <_start-0xe68>
1c008838:	733c203e 	0x733c203e
1c00883c:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008840:	3e736d5f 	0x3e736d5f
1c008844:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fb80 <_sidata+0x16994>
1c008848:	00003e63 	revb.d	$r3,$r19
1c00884c:	63200a0d 	blt	$r16,$r13,-57336(0x32008) # 1bffa854 <_start-0x57ac>
1c008850:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c008854:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f5bc <_sidata+0x163d0>
1c008858:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c00885c:	2e747261 	0x2e747261
1c008860:	612e2e2e 	blt	$r17,$r14,77356(0x12e2c) # 1c01b68c <_sidata+0x124a0>
1c008864:	3a636772 	0x3a636772
1c008868:	000a6425 	0x000a6425
1c00886c:	55200a0d 	bl	-130736120(0x8352008) # 1435a874 <_start-0x7ca578c>
1c008870:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01efd0 <_sidata+0x15de4>
1c008874:	616c203a 	blt	$r1,$r26,93216(0x16c20) # 1c01f494 <_sidata+0x162a8>
1c008878:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f5e0 <_sidata+0x163f4>
1c00887c:	733c2072 	0x733c2072
1c008880:	003e6365 	0x003e6365
1c008884:	55200a0d 	bl	-130736120(0x8352008) # 1435a88c <_start-0x7ca5774>
1c008888:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01efe8 <_sidata+0x15dfc>
1c00888c:	6564203a 	bge	$r1,$r26,91168(0x16420) # 1c01ecac <_sidata+0x15ac0>
1c008890:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c008894:	646f6d3c 	bge	$r9,$r28,28524(0x6f6c) # 1c00f800 <_sidata+0x6614>
1c008898:	3a313a65 	0x3a313a65
1c00889c:	322c7375 	xvldrepl.w	$xr21,$r27,-912(0xc70)
1c0088a0:	2c736d3a 	vst	$vr26,$r9,-805(0xcdb)
1c0088a4:	3e733a33 	0x3e733a33
1c0088a8:	61763c20 	blt	$r1,$r0,95804(0x1763c) # 1c01fee4 <_sidata+0x16cf8>
1c0088ac:	00003e6c 	revb.d	$r12,$r19
1c0088b0:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00adb8 <_sidata+0x1bcc>
1c0088b4:	00007375 	0x00007375
1c0088b8:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00adc0 <_sidata+0x1bd4>
1c0088bc:	0000736d 	0x0000736d
1c0088c0:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00adc8 <_sidata+0x1bdc>
1c0088c4:	00000073 	0x00000073
1c0088c8:	69540a0d 	bltu	$r16,$r13,87048(0x15408) # 1c01dcd0 <_sidata+0x14ae4>
1c0088cc:	2072656d 	ll.w	$r13,$r11,29284(0x7264)
1c0088d0:	656b6157 	bge	$r10,$r23,93024(0x16b60) # 1c01f430 <_sidata+0x16244>
1c0088d4:	20705520 	ll.w	$r0,$r9,28756(0x7054)
1c0088d8:	72617473 	0x72617473
1c0088dc:	2e2e2e74 	0x2e2e2e74
1c0088e0:	6772612e 	bge	$r9,$r14,-36256(0x37260) # 1bfffb40 <_start-0x4c0>
1c0088e4:	64253a63 	bge	$r19,$r3,9528(0x2538) # 1c00ae1c <_sidata+0x1c30>
1c0088e8:	0000000a 	0x0000000a
1c0088ec:	55200a0d 	bl	-130736120(0x8352008) # 1435a8f4 <_start-0x7ca570c>
1c0088f0:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f050 <_sidata+0x15e64>
1c0088f4:	6177203a 	blt	$r1,$r26,96032(0x17720) # 1c020014 <_sidata+0x16e28>
1c0088f8:	7075656b 	vmax.wu	$vr11,$vr11,$vr25
1c0088fc:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fc38 <_sidata+0x16a4c>
1c008900:	00003e63 	revb.d	$r3,$r19
1c008904:	72770a0d 	0x72770a0d
1c008908:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c00890c:	676e6172 	bge	$r11,$r18,-37280(0x36e60) # 1bfff76c <_start-0x894>
1c008910:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1bfef830 <_start-0x107d0>
1c008914:	6d756e20 	bgeu	$r17,$r0,95596(0x1756c) # 1c01fe80 <_sidata+0x16c94>
1c008918:	21726562 	sc.w	$r2,$r11,29284(0x7264)
1c00891c:	00000a0d 	0x00000a0d
1c008920:	00000a0d 	0x00000a0d
1c008924:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fd84 <_sidata+0x16b98>
1c008928:	206f7420 	ll.w	$r0,$r1,28532(0x6f74)
1c00892c:	70736964 	vmin.w	$vr4,$vr11,$vr26
1c008930:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c008934:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f69c <_sidata+0x164b0>
1c008938:	0a0d202e 	0x0a0d202e
1c00893c:	00000000 	0x00000000
1c008940:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fda0 <_sidata+0x16bb4>
1c008944:	20732d20 	ll.w	$r0,$r9,29484(0x732c)
1c008948:	6d2d7979 	bgeu	$r11,$r25,77176(0x12d78) # 1c01b6c0 <_sidata+0x124d4>
1c00894c:	64642d6d 	bge	$r11,$r13,25644(0x642c) # 1c00ed78 <_sidata+0x5b8c>
1c008950:	3a686820 	0x3a686820
1c008954:	733a6d6d 	0x733a6d6d
1c008958:	6f742073 	bgeu	$r3,$r19,-35808(0x37420) # 1bfffd78 <_start-0x288>
1c00895c:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c008960:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01f2d4 <_sidata+0x160e8>
1c008964:	0a0d2e65 	0x0a0d2e65
1c008968:	00000000 	0x00000000
1c00896c:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fdcc <_sidata+0x16be0>
1c008970:	20692d20 	ll.w	$r0,$r9,26924(0x692c)
1c008974:	642d6d6d 	bge	$r11,$r13,11628(0x2d6c) # 1c00b6e0 <_sidata+0x24f4>
1c008978:	68682064 	bltu	$r3,$r4,26656(0x6820) # 1c00f198 <_sidata+0x5fac>
1c00897c:	3a6d6d3a 	0x3a6d6d3a
1c008980:	74207373 	xvsubwev.h.b	$xr19,$xr27,$xr28
1c008984:	6573206f 	bge	$r3,$r15,95008(0x17320) # 1c01fca4 <_sidata+0x16ab8>
1c008988:	6e692074 	bgeu	$r3,$r20,-104160(0x26920) # 1bfef2a8 <_start-0x10d58>
1c00898c:	0a0d2e74 	0x0a0d2e74
1c008990:	00000000 	0x00000000
1c008994:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fdf4 <_sidata+0x16c08>
1c008998:	20662d20 	ll.w	$r0,$r9,26156(0x662c)
1c00899c:	3a207a48 	0x3a207a48
1c0089a0:	75706e69 	0x75706e69
1c0089a4:	72662074 	0x72662074
1c0089a8:	6e657165 	bgeu	$r11,$r5,-105104(0x26570) # 1bfeef18 <_start-0x110e8>
1c0089ac:	69207963 	bltu	$r11,$r3,73848(0x12078) # 1c01aa24 <_sidata+0x11838>
1c0089b0:	6e69206e 	bgeu	$r3,$r14,-104160(0x26920) # 1bfef2d0 <_start-0x10d30>
1c0089b4:	65676574 	bge	$r11,$r20,92004(0x16764) # 1c01f118 <_sidata+0x15f2c>
1c0089b8:	6f742072 	bgeu	$r3,$r18,-35808(0x37420) # 1bfffdd8 <_start-0x228>
1c0089bc:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c0089c0:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01fc30 <_sidata+0x16a44>
1c0089c4:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00eb24 <_sidata+0x5938>
1c0089c8:	0a0d2e65 	0x0a0d2e65
1c0089cc:	00000000 	0x00000000
1c0089d0:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bffef38 <_start-0x10c8>
1c0089d4:	6170206b 	blt	$r3,$r11,94240(0x17020) # 1c01f9f4 <_sidata+0x16808>
1c0089d8:	656d6172 	bge	$r11,$r18,93536(0x16d60) # 1c01f738 <_sidata+0x1654c>
1c0089dc:	0d726574 	0x0d726574
1c0089e0:	0000000a 	0x0000000a
1c0089e4:	61766e69 	blt	$r19,$r9,95852(0x1766c) # 1c020050 <_sidata+0x16e64>
1c0089e8:	2064696c 	ll.w	$r12,$r11,25704(0x6468)
1c0089ec:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01fc4c <_sidata+0x16a60>
1c0089f0:	0000006d 	0x0000006d
1c0089f4:	68730a0d 	bltu	$r16,$r13,29448(0x7308) # 1c00fcfc <_sidata+0x6b10>
1c0089f8:	646c756f 	bge	$r11,$r15,27764(0x6c74) # 1c00f66c <_sidata+0x6480>
1c0089fc:	20656220 	ll.w	$r0,$r17,25952(0x6560)
1c008a00:	736f6c63 	vssrarni.du.q	$vr3,$vr3,0x5b
1c008a04:	6f742065 	bgeu	$r3,$r5,-35808(0x37420) # 1bfffe24 <_start-0x1dc>
1c008a08:	37323320 	0x37323320
1c008a0c:	48203836 	bceqz	$fcc1,-2613192(0x582038) # 1bd8aa44 <_start-0x2755bc>
1c008a10:	000a0d7a 	0x000a0d7a
1c008a14:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fe74 <_sidata+0x16c88>
1c008a18:	20682d20 	ll.w	$r0,$r9,26668(0x682c)
1c008a1c:	20726f66 	ll.w	$r6,$r27,29292(0x726c)
1c008a20:	67617375 	bge	$r27,$r21,-40592(0x36170) # 1bffeb90 <_start-0x1470>
1c008a24:	000a0d65 	0x000a0d65
1c008a28:	30253032 	vldrepl.w	$vr18,$r1,1328(0x530)
1c008a2c:	252d6432 	stptr.w	$r18,$r1,11620(0x2d64)
1c008a30:	2d643230 	0x2d643230
1c008a34:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bc64 <_sidata+0x2a78>
1c008a38:	00000020 	0x00000020
1c008a3c:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bc6c <_sidata+0x2a80>
1c008a40:	3230253a 	0x3230253a
1c008a44:	30253a64 	vldrepl.w	$vr4,$r19,1336(0x538)
1c008a48:	00006432 	rdtimeh.w	$r18,$r1
1c008a4c:	0000682d 	rdtime.d	$r13,$r1
1c008a50:	0000732d 	0x0000732d
1c008a54:	0000692d 	rdtime.d	$r13,$r9
1c008a58:	0000662d 	rdtimeh.w	$r13,$r17
1c008a5c:	1c008a4c 	pcaddu12i	$r12,1106(0x452)
1c008a60:	1c008a50 	pcaddu12i	$r16,1106(0x452)
1c008a64:	1c008a54 	pcaddu12i	$r20,1106(0x452)
1c008a68:	1c008a58 	pcaddu12i	$r24,1106(0x452)
1c008a6c:	64770a0d 	bge	$r16,$r13,30472(0x7708) # 1c010174 <_sidata+0x6f88>
1c008a70:	65742067 	bge	$r3,$r7,95264(0x17420) # 1c01fe90 <_sidata+0x16ca4>
1c008a74:	73207473 	0x73207473
1c008a78:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008a7c:	2e2e2e2e 	0x2e2e2e2e
1c008a80:	63677261 	blt	$r19,$r1,-39056(0x36770) # 1bfff1f0 <_start-0xe10>
1c008a84:	0a64253a 	xvfmsub.d	$xr26,$xr9,$xr9,$xr8
1c008a88:	00000000 	0x00000000
1c008a8c:	55200a0d 	bl	-130736120(0x8352008) # 1435aa94 <_start-0x7ca556c>
1c008a90:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f1f0 <_sidata+0x16004>
1c008a94:	6477203a 	bge	$r1,$r26,30496(0x7720) # 1c0101b4 <_sidata+0x6fc8>
1c008a98:	733c2067 	0x733c2067
1c008a9c:	003e6365 	0x003e6365
1c008aa0:	7375200a 	0x7375200a
1c008aa4:	3a656761 	0x3a656761
1c008aa8:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbd10 <_start-0x42f0>
1c008aac:	633c2077 	blt	$r3,$r23,-50144(0x33c20) # 1bffc6cc <_start-0x3934>
1c008ab0:	61706968 	blt	$r11,$r8,94312(0x17068) # 1c01fb18 <_sidata+0x1692c>
1c008ab4:	3e726464 	0x3e726464
1c008ab8:	65723c20 	bge	$r1,$r0,94780(0x1723c) # 1c01fcf4 <_sidata+0x16b08>
1c008abc:	64646167 	bge	$r11,$r7,25696(0x6460) # 1c00ef1c <_sidata+0x5d30>
1c008ac0:	3c203e72 	0x3c203e72
1c008ac4:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008ac8:	000a3e61 	0x000a3e61
1c008acc:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008ad0:	78303d61 	0x78303d61
1c008ad4:	00007825 	0x00007825
1c008ad8:	72646461 	0x72646461
1c008adc:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008ae0:	00000078 	0x00000078
1c008ae4:	7375200a 	0x7375200a
1c008ae8:	3a656761 	0x3a656761
1c008aec:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbd54 <_start-0x42ac>
1c008af0:	68633c72 	bltu	$r3,$r18,25404(0x633c) # 1c00ee2c <_sidata+0x5c40>
1c008af4:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00ec64 <_sidata+0x5a78>
1c008af8:	3c3e7264 	0x3c3e7264
1c008afc:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c01f260 <_sidata+0x16074>
1c008b00:	3e726464 	0x3e726464
1c008b04:	0000000a 	0x0000000a
1c008b08:	72200a0d 	0x72200a0d
1c008b0c:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01ff6c <_sidata+0x16d80>
1c008b10:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008b14:	0d783230 	0x0d783230
1c008b18:	0000000a 	0x0000000a
1c008b1c:	44410a0d 	bnez	$r16,3424520(0x344108) # 1c34cc24 <_sidata+0x343a38>
1c008b20:	733c2043 	0x733c2043
1c008b24:	203e6c65 	ll.w	$r5,$r3,15980(0x3e6c)
1c008b28:	7669643c 	0x7669643c
1c008b2c:	743c203e 	0x743c203e
1c008b30:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c008b34:	0000003e 	0x0000003e
1c008b38:	65730a0d 	bge	$r16,$r13,94984(0x17308) # 1c01fe40 <_sidata+0x16c54>
1c008b3c:	28203a6c 	ld.b	$r12,$r19,-2034(0x80e)
1c008b40:	44412930 	bnez	$r9,-4177624(0x404128) # 1bc0cc68 <_start-0x3f3398>
1c008b44:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008b48:	3128202c 	vstelm.w	$vr12,$r1,32(0x20),0x2
1c008b4c:	43444129 	beqz	$r9,2573376(0x274440) # 1c27cf8c <_sidata+0x273da0>
1c008b50:	2c31495f 	vld	$vr31,$r10,-942(0xc52)
1c008b54:	29322820 	st.b	$r0,$r1,-886(0xc8a)
1c008b58:	41435256 	beqz	$r18,-2538672(0x594350) # 1bd9cea8 <_start-0x263158>
1c008b5c:	28202c50 	ld.b	$r16,$r2,-2037(0x80b)
1c008b60:	2e312933 	0x2e312933
1c008b64:	202c5630 	ll.w	$r16,$r17,11348(0x2c54)
1c008b68:	56293428 	bl	10627380(0xa22934) # 1ca2b49c <_sidata+0xa222b0>
1c008b6c:	54554f52 	bl	-45591220(0xd48554c) # 1948e0b8 <_start-0x2b71f48>
1c008b70:	3528202c 	0x3528202c
1c008b74:	302e3129 	vldrepl.w	$vr9,$r9,-464(0xe30)
1c008b78:	72762856 	0x72762856
1c008b7c:	202c2931 	ll.w	$r17,$r9,11304(0x2c28)
1c008b80:	76293628 	0x76293628
1c008b84:	2c666572 	vst	$vr18,$r11,-1639(0x999)
1c008b88:	29372820 	st.b	$r0,$r1,-566(0xdca)
1c008b8c:	61636164 	blt	$r11,$r4,90976(0x16360) # 1c01eeec <_sidata+0x15d00>
1c008b90:	0000636d 	rdtimel.w	$r13,$r27
1c008b94:	69640a0d 	bltu	$r16,$r13,91144(0x16408) # 1c01ef9c <_sidata+0x15db0>
1c008b98:	30203a76 	vldrepl.w	$vr22,$r19,56(0x38)
1c008b9c:	3264203a 	0x3264203a
1c008ba0:	3a31202c 	0x3a31202c
1c008ba4:	00346420 	0x00346420
1c008ba8:	61630a0d 	blt	$r16,$r13,90888(0x16308) # 1c01eeb0 <_sidata+0x15cc4>
1c008bac:	6c75636c 	bgeu	$r27,$r12,30048(0x7560) # 1c01010c <_sidata+0x6f20>
1c008bb0:	25657461 	stptr.w	$r1,$r3,25972(0x6574)
1c008bb4:	00000064 	0x00000064
1c008bb8:	7375200a 	0x7375200a
1c008bbc:	3a656761 	0x3a656761
1c008bc0:	74616220 	xvabsd.w	$xr0,$xr17,$xr24
1c008bc4:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c008bc8:	203e6e3c 	ll.w	$r28,$r17,15980(0x3e6c)
1c008bcc:	44412030 	bnez	$r1,-4177632(0x404120) # 1bc0ccec <_start-0x3f3314>
1c008bd0:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008bd4:	2031202c 	ll.w	$r12,$r1,12576(0x3120)
1c008bd8:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
1c008bdc:	32202c30 	xvldrepl.w	$xr16,$r1,44(0x2c)
1c008be0:	49504720 	0x49504720
1c008be4:	000a314f 	0x000a314f
1c008be8:	72770a0d 	0x72770a0d
1c008bec:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c008bf0:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01fe50 <_sidata+0x16c64>
1c008bf4:	6574656d 	bge	$r11,$r13,95332(0x17464) # 1c020058 <_sidata+0x16e6c>
1c008bf8:	00000072 	0x00000072
1c008bfc:	0000002e 	0x0000002e
1c008c00:	79706f63 	0x79706f63
1c008c04:	72726520 	0x72726520
1c008c08:	000a726f 	0x000a726f
1c008c0c:	7375200a 	0x7375200a
1c008c10:	3a656761 	0x3a656761
1c008c14:	6e697520 	bgeu	$r9,$r0,-104076(0x26974) # 1bfef588 <_start-0x10a78>
1c008c18:	3c207469 	0x3c207469
1c008c1c:	3e322f31 	0x3e322f31
1c008c20:	00000a20 	0x00000a20
1c008c24:	64690a0d 	bge	$r16,$r13,26888(0x6908) # 1c00f52c <_sidata+0x6340>
1c008c28:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008c2c:	000a0d78 	0x000a0d78
1c008c30:	7375200a 	0x7375200a
1c008c34:	3a656761 	0x3a656761
1c008c38:	72777320 	0x72777320
1c008c3c:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008c40:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f0a0 <_sidata+0x5eb4>
1c008c44:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008c48:	00000000 	0x00000000
1c008c4c:	7277200a 	0x7277200a
1c008c50:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008c54:	72617473 	0x72617473
1c008c58:	00000a74 	0x00000a74
1c008c5c:	0000202e 	clo.d	$r14,$r1
1c008c60:	0000000a 	0x0000000a
1c008c64:	7375200a 	0x7375200a
1c008c68:	3a656761 	0x3a656761
1c008c6c:	65727320 	bge	$r25,$r0,94832(0x17270) # 1c01fedc <_sidata+0x16cf0>
1c008c70:	3c206461 	0x3c206461
1c008c74:	72646461 	0x72646461
1c008c78:	000a203e 	0x000a203e
1c008c7c:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01fe9c <_sidata+0x16cb0>
1c008c80:	73206461 	0x73206461
1c008c84:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008c88:	0000000a 	0x0000000a
1c008c8c:	6568630a 	bge	$r24,$r10,92256(0x16860) # 1c01f4ec <_sidata+0x16300>
1c008c90:	65206b63 	bge	$r27,$r3,73832(0x12068) # 1c01acf8 <_sidata+0x11b0c>
1c008c94:	726f7272 	0x726f7272
1c008c98:	61647220 	blt	$r17,$r0,91248(0x16470) # 1c01f108 <_sidata+0x15f1c>
1c008c9c:	253d6174 	stptr.w	$r20,$r11,15712(0x3d60)
1c008ca0:	61692078 	blt	$r3,$r24,92448(0x16920) # 1c01f5c0 <_sidata+0x163d4>
1c008ca4:	3d726464 	0x3d726464
1c008ca8:	000a7825 	0x000a7825
1c008cac:	7375200a 	0x7375200a
1c008cb0:	3a656761 	0x3a656761
1c008cb4:	72657320 	0x72657320
1c008cb8:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008cbc:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f11c <_sidata+0x5f30>
1c008cc0:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008cc4:	00000000 	0x00000000
1c008cc8:	7265200a 	0x7265200a
1c008ccc:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008cd0:	72617473 	0x72617473
1c008cd4:	00000a74 	0x00000a74
1c008cd8:	676f7270 	bge	$r19,$r16,-37008(0x36f70) # 1bfffc48 <_start-0x3b8>
1c008cdc:	206d6172 	ll.w	$r18,$r11,28000(0x6d60)
1c008ce0:	72617473 	0x72617473
1c008ce4:	00000a74 	0x00000a74
1c008ce8:	72700a0d 	0x72700a0d
1c008cec:	6172676f 	blt	$r27,$r15,94820(0x17264) # 1c01ff50 <_sidata+0x16d64>
1c008cf0:	6f64206d 	bgeu	$r3,$r13,-39904(0x36420) # 1bfff110 <_start-0xef0>
1c008cf4:	000a656e 	0x000a656e
1c008cf8:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f000 <_sidata+0x5e14>
1c008cfc:	6f6b6365 	bgeu	$r27,$r5,-38048(0x36b60) # 1bfff85c <_start-0x7a4>
1c008d00:	73207475 	0x73207475
1c008d04:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008d08:	0000000a 	0x0000000a
1c008d0c:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f014 <_sidata+0x5e28>
1c008d10:	206b6365 	ll.w	$r5,$r27,27488(0x6b60)
1c008d14:	656e6f64 	bge	$r27,$r4,93804(0x16e6c) # 1c01fb80 <_sidata+0x16994>
1c008d18:	0000000a 	0x0000000a
1c008d1c:	6f630a0d 	bgeu	$r16,$r13,-40184(0x36308) # 1bfff024 <_start-0xfdc>
1c008d20:	72697970 	0x72697970
1c008d24:	73206d61 	0x73206d61
1c008d28:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008d2c:	00000a0d 	0x00000a0d
1c008d30:	79706f63 	0x79706f63
1c008d34:	72726520 	0x72726520
1c008d38:	2520726f 	stptr.w	$r15,$r19,8304(0x2070)
1c008d3c:	78252c78 	0x78252c78
1c008d40:	0a78252c 	0x0a78252c
1c008d44:	00000000 	0x00000000

1c008d48 <Ext_IrqHandle>:
1c008d48:	1c006d1c 	pcaddu12i	$r28,872(0x368)
1c008d4c:	1c006d68 	pcaddu12i	$r8,875(0x36b)
1c008d50:	1c006db4 	pcaddu12i	$r20,877(0x36d)
1c008d54:	1c006e00 	pcaddu12i	$r0,880(0x370)
1c008d58:	1c006e4c 	pcaddu12i	$r12,882(0x372)
1c008d5c:	1c006e98 	pcaddu12i	$r24,884(0x374)
1c008d60:	1c006ee4 	pcaddu12i	$r4,887(0x377)
1c008d64:	1c006f30 	pcaddu12i	$r16,889(0x379)
1c008d68:	1c006f7c 	pcaddu12i	$r28,891(0x37b)
1c008d6c:	1c006fc8 	pcaddu12i	$r8,894(0x37e)
1c008d70:	1c007014 	pcaddu12i	$r20,896(0x380)
1c008d74:	1c007060 	pcaddu12i	$r0,899(0x383)
1c008d78:	1c0070ac 	pcaddu12i	$r12,901(0x385)
1c008d7c:	1c0070f8 	pcaddu12i	$r24,903(0x387)
1c008d80:	1c007144 	pcaddu12i	$r4,906(0x38a)
1c008d84:	1c007190 	pcaddu12i	$r16,908(0x38c)
1c008d88:	1c0071dc 	pcaddu12i	$r28,910(0x38e)
1c008d8c:	1c007228 	pcaddu12i	$r8,913(0x391)
1c008d90:	1c007274 	pcaddu12i	$r20,915(0x393)
1c008d94:	1c0072c0 	pcaddu12i	$r0,918(0x396)
1c008d98:	1c00730c 	pcaddu12i	$r12,920(0x398)
1c008d9c:	1c007358 	pcaddu12i	$r24,922(0x39a)
1c008da0:	1c0073a4 	pcaddu12i	$r4,925(0x39d)
1c008da4:	1c0073f0 	pcaddu12i	$r16,927(0x39f)
1c008da8:	1c00743c 	pcaddu12i	$r28,929(0x3a1)
1c008dac:	1c007488 	pcaddu12i	$r8,932(0x3a4)
1c008db0:	1c0074d4 	pcaddu12i	$r20,934(0x3a6)
1c008db4:	1c007520 	pcaddu12i	$r0,937(0x3a9)
1c008db8:	1c00756c 	pcaddu12i	$r12,939(0x3ab)
1c008dbc:	1c0075b8 	pcaddu12i	$r24,941(0x3ad)
1c008dc0:	1c007604 	pcaddu12i	$r4,944(0x3b0)
1c008dc4:	1c007650 	pcaddu12i	$r16,946(0x3b2)
1c008dc8:	3c200a0d 	0x3c200a0d
1c008dcc:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01f9ec <_sidata+0x16800>
1c008dd0:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c008dd4:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeae38 <_start-0x151c8>
1c008dd8:	3a636e75 	0x3a636e75
1c008ddc:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c008de0:	0a0d3e20 	0x0a0d3e20
1c008de4:	00000000 	0x00000000
1c008de8:	2e2e2e0a 	0x2e2e2e0a
1c008dec:	2e2e2e2e 	0x2e2e2e2e
1c008df0:	2e2e2e2e 	0x2e2e2e2e
1c008df4:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c008df8:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19ed4c <_sidata+0x195b60>
1c008dfc:	2e2e544e 	0x2e2e544e
1c008e00:	2e2e2e2e 	0x2e2e2e2e
1c008e04:	2e2e2e2e 	0x2e2e2e2e
1c008e08:	2e2e2e2e 	0x2e2e2e2e
1c008e0c:	00000d0a 	0x00000d0a
1c008e10:	2d2d2d0a 	0x2d2d2d0a
1c008e14:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000380 <cpu_wait+0x2d8>
1c008e18:	746e4968 	0x746e4968
1c008e1c:	79654b3a 	0x79654b3a
1c008e20:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfeef88 <_start-0x11078>
1c008e24:	3a6c656e 	0x3a6c656e
1c008e28:	78257830 	0x78257830
1c008e2c:	0000000a 	0x0000000a
1c008e30:	2e2e2e0a 	0x2e2e2e0a
1c008e34:	2e2e2e2e 	0x2e2e2e2e
1c008e38:	2e2e2e2e 	0x2e2e2e2e
1c008e3c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39d068 <_sidata+0x393e7c>
1c008e40:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1d49c <_start-0x2e2b64>
1c008e44:	2e2e4c49 	0x2e2e4c49
1c008e48:	2e2e2e2e 	0x2e2e2e2e
1c008e4c:	2e2e2e2e 	0x2e2e2e2e
1c008e50:	2e2e2e2e 	0x2e2e2e2e
1c008e54:	00000d0a 	0x00000d0a
1c008e58:	2e2e2e0a 	0x2e2e2e0a
1c008e5c:	2e2e2e2e 	0x2e2e2e2e
1c008e60:	2e2e2e2e 	0x2e2e2e2e
1c008e64:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38cf90 <_sidata+0x383da4>
1c008e68:	2e2e2e43 	0x2e2e2e43
1c008e6c:	2e2e2e2e 	0x2e2e2e2e
1c008e70:	2e2e2e2e 	0x2e2e2e2e
1c008e74:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c008e78:	0000000d 	0x0000000d
1c008e7c:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c0200e8 <_sidata+0x16efc>
1c008e80:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01f7d4 <_sidata+0x165e8>
1c008e84:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffaef4 <_start-0x510c>
1c008e88:	7261656c 	0x7261656c
1c008e8c:	746e6920 	0x746e6920
1c008e90:	75727265 	0x75727265
1c008e94:	2e2e7470 	0x2e2e7470
1c008e98:	0000000a 	0x0000000a
1c008e9c:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ea0:	1c0078ec 	pcaddu12i	$r12,967(0x3c7)
1c008ea4:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ea8:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008eac:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008eb0:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008eb4:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008eb8:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ebc:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ec0:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ec4:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ec8:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ecc:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ed0:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ed4:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008ed8:	1c00793c 	pcaddu12i	$r28,969(0x3c9)
1c008edc:	1c007908 	pcaddu12i	$r8,968(0x3c8)

1c008ee0 <__FUNCTION__.1643>:
1c008ee0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020358 <_sidata+0x1716c>
1c008ee4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ff48 <_sidata+0x16d5c>
1c008ee8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffbf48 <_start-0x40b8>
1c008eec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00005c <cpu_init_start>
1c008ef0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fd50 <_sidata+0x6b64>
1c008ef4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008ef8 <__FUNCTION__.1647>:
1c008ef8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020370 <_sidata+0x17184>
1c008efc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ff60 <_sidata+0x16d74>
1c008f00:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffc060 <_start-0x3fa0>
1c008f04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000074 <cpu_init_start+0x18>
1c008f08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fd68 <_sidata+0x6b7c>
1c008f0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f10 <__FUNCTION__.1651>:
1c008f10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020388 <_sidata+0x1719c>
1c008f14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ff78 <_sidata+0x16d8c>
1c008f18:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffc178 <_start-0x3e88>
1c008f1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00008c <cpu_init_start+0x30>
1c008f20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fd80 <_sidata+0x6b94>
1c008f24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f28 <__FUNCTION__.1655>:
1c008f28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0203a0 <_sidata+0x171b4>
1c008f2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ff90 <_sidata+0x16da4>
1c008f30:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffc290 <_start-0x3d70>
1c008f34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0000a4 <cpu_init_start+0x48>
1c008f38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fd98 <_sidata+0x6bac>
1c008f3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f40 <__FUNCTION__.1659>:
1c008f40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0203b8 <_sidata+0x171cc>
1c008f44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ffa8 <_sidata+0x16dbc>
1c008f48:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffc3a8 <_start-0x3c58>
1c008f4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0000bc <cpu_wait+0x14>
1c008f50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fdb0 <_sidata+0x6bc4>
1c008f54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f58 <__FUNCTION__.1663>:
1c008f58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0203d0 <_sidata+0x171e4>
1c008f5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ffc0 <_sidata+0x16dd4>
1c008f60:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffc4c0 <_start-0x3b40>
1c008f64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0000d4 <cpu_wait+0x2c>
1c008f68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fdc8 <_sidata+0x6bdc>
1c008f6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f70 <__FUNCTION__.1667>:
1c008f70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0203e8 <_sidata+0x171fc>
1c008f74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ffd8 <_sidata+0x16dec>
1c008f78:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffc5d8 <_start-0x3a28>
1c008f7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0000ec <cpu_wait+0x44>
1c008f80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fde0 <_sidata+0x6bf4>
1c008f84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008f88 <__FUNCTION__.1671>:
1c008f88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020400 <_sidata+0x17214>
1c008f8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01fff0 <_sidata+0x16e04>
1c008f90:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffc6f0 <_start-0x3910>
1c008f94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000104 <cpu_wait+0x5c>
1c008f98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fdf8 <_sidata+0x6c0c>
1c008f9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fa0 <__FUNCTION__.1675>:
1c008fa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020418 <_sidata+0x1722c>
1c008fa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020008 <_sidata+0x16e1c>
1c008fa8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffc008 <_start-0x3ff8>
1c008fac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00011c <cpu_wait+0x74>
1c008fb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe10 <_sidata+0x6c24>
1c008fb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fb8 <__FUNCTION__.1679>:
1c008fb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020430 <_sidata+0x17244>
1c008fbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020020 <_sidata+0x16e34>
1c008fc0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffc120 <_start-0x3ee0>
1c008fc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000134 <cpu_wait+0x8c>
1c008fc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe28 <_sidata+0x6c3c>
1c008fcc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fd0 <__FUNCTION__.1683>:
1c008fd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020448 <_sidata+0x1725c>
1c008fd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020038 <_sidata+0x16e4c>
1c008fd8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffc238 <_start-0x3dc8>
1c008fdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00014c <cpu_wait+0xa4>
1c008fe0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe40 <_sidata+0x6c54>
1c008fe4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008fe8 <__FUNCTION__.1687>:
1c008fe8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020460 <_sidata+0x17274>
1c008fec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020050 <_sidata+0x16e64>
1c008ff0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffc350 <_start-0x3cb0>
1c008ff4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000164 <cpu_wait+0xbc>
1c008ff8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe58 <_sidata+0x6c6c>
1c008ffc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009000 <__FUNCTION__.1691>:
1c009000:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020478 <_sidata+0x1728c>
1c009004:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020068 <_sidata+0x16e7c>
1c009008:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffc468 <_start-0x3b98>
1c00900c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00017c <cpu_wait+0xd4>
1c009010:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe70 <_sidata+0x6c84>
1c009014:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009018 <__FUNCTION__.1695>:
1c009018:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020490 <_sidata+0x172a4>
1c00901c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020080 <_sidata+0x16e94>
1c009020:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffc580 <_start-0x3a80>
1c009024:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000194 <cpu_wait+0xec>
1c009028:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fe88 <_sidata+0x6c9c>
1c00902c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009030 <__FUNCTION__.1699>:
1c009030:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204a8 <_sidata+0x172bc>
1c009034:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020098 <_sidata+0x16eac>
1c009038:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffc698 <_start-0x3968>
1c00903c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001ac <cpu_wait+0x104>
1c009040:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fea0 <_sidata+0x6cb4>
1c009044:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009048 <__FUNCTION__.1703>:
1c009048:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204c0 <_sidata+0x172d4>
1c00904c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200b0 <_sidata+0x16ec4>
1c009050:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffc7b0 <_start-0x3850>
1c009054:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001c4 <cpu_wait+0x11c>
1c009058:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00feb8 <_sidata+0x6ccc>
1c00905c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009060 <__FUNCTION__.1707>:
1c009060:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204d8 <_sidata+0x172ec>
1c009064:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200c8 <_sidata+0x16edc>
1c009068:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffc0c8 <_start-0x3f38>
1c00906c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001dc <cpu_wait+0x134>
1c009070:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fed0 <_sidata+0x6ce4>
1c009074:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009078 <__FUNCTION__.1711>:
1c009078:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204f0 <_sidata+0x17304>
1c00907c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200e0 <_sidata+0x16ef4>
1c009080:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffc1e0 <_start-0x3e20>
1c009084:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001f4 <cpu_wait+0x14c>
1c009088:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fee8 <_sidata+0x6cfc>
1c00908c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009090 <__FUNCTION__.1715>:
1c009090:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020508 <_sidata+0x1731c>
1c009094:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200f8 <_sidata+0x16f0c>
1c009098:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffc2f8 <_start-0x3d08>
1c00909c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00020c <cpu_wait+0x164>
1c0090a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff00 <_sidata+0x6d14>
1c0090a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090a8 <__FUNCTION__.1719>:
1c0090a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020520 <_sidata+0x17334>
1c0090ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020110 <_sidata+0x16f24>
1c0090b0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffc410 <_start-0x3bf0>
1c0090b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000224 <cpu_wait+0x17c>
1c0090b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff18 <_sidata+0x6d2c>
1c0090bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090c0 <__FUNCTION__.1723>:
1c0090c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020538 <_sidata+0x1734c>
1c0090c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020128 <_sidata+0x16f3c>
1c0090c8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffc528 <_start-0x3ad8>
1c0090cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00023c <cpu_wait+0x194>
1c0090d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff30 <_sidata+0x6d44>
1c0090d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090d8 <__FUNCTION__.1727>:
1c0090d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020550 <_sidata+0x17364>
1c0090dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020140 <_sidata+0x16f54>
1c0090e0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffc640 <_start-0x39c0>
1c0090e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000254 <cpu_wait+0x1ac>
1c0090e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff48 <_sidata+0x6d5c>
1c0090ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090f0 <__FUNCTION__.1731>:
1c0090f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020568 <_sidata+0x1737c>
1c0090f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020158 <_sidata+0x16f6c>
1c0090f8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffc758 <_start-0x38a8>
1c0090fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00026c <cpu_wait+0x1c4>
1c009100:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff60 <_sidata+0x6d74>
1c009104:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009108 <__FUNCTION__.1735>:
1c009108:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020580 <_sidata+0x17394>
1c00910c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020170 <_sidata+0x16f84>
1c009110:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffc870 <_start-0x3790>
1c009114:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000284 <cpu_wait+0x1dc>
1c009118:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff78 <_sidata+0x6d8c>
1c00911c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009120 <__FUNCTION__.1739>:
1c009120:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020598 <_sidata+0x173ac>
1c009124:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020188 <_sidata+0x16f9c>
1c009128:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffc18c <_start-0x3e74>
1c00912c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00029c <cpu_wait+0x1f4>
1c009130:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff90 <_sidata+0x6da4>
1c009134:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009138 <__FUNCTION__.1743>:
1c009138:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205b0 <_sidata+0x173c4>
1c00913c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201a0 <_sidata+0x16fb4>
1c009140:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffc2a4 <_start-0x3d5c>
1c009144:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002b4 <cpu_wait+0x20c>
1c009148:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffa8 <_sidata+0x6dbc>
1c00914c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009150 <__FUNCTION__.1747>:
1c009150:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205c8 <_sidata+0x173dc>
1c009154:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201b8 <_sidata+0x16fcc>
1c009158:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffc3bc <_start-0x3c44>
1c00915c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002cc <cpu_wait+0x224>
1c009160:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffc0 <_sidata+0x6dd4>
1c009164:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009168 <__FUNCTION__.1751>:
1c009168:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205e0 <_sidata+0x173f4>
1c00916c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201d0 <_sidata+0x16fe4>
1c009170:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffc4d4 <_start-0x3b2c>
1c009174:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002e4 <cpu_wait+0x23c>
1c009178:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffd8 <_sidata+0x6dec>
1c00917c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009180 <__FUNCTION__.1755>:
1c009180:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205f8 <_sidata+0x1740c>
1c009184:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201e8 <_sidata+0x16ffc>
1c009188:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffc5ec <_start-0x3a14>
1c00918c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002fc <cpu_wait+0x254>
1c009190:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fff0 <_sidata+0x6e04>
1c009194:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009198 <__FUNCTION__.1759>:
1c009198:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020610 <_sidata+0x17424>
1c00919c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020200 <_sidata+0x17014>
1c0091a0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffc704 <_start-0x38fc>
1c0091a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000314 <cpu_wait+0x26c>
1c0091a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010008 <_sidata+0x6e1c>
1c0091ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091b0 <__FUNCTION__.1763>:
1c0091b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020628 <_sidata+0x1743c>
1c0091b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020218 <_sidata+0x1702c>
1c0091b8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffc81c <_start-0x37e4>
1c0091bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00032c <cpu_wait+0x284>
1c0091c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010020 <_sidata+0x6e34>
1c0091c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091c8 <__FUNCTION__.1767>:
1c0091c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020640 <_sidata+0x17454>
1c0091cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020230 <_sidata+0x17044>
1c0091d0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffc934 <_start-0x36cc>
1c0091d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000344 <cpu_wait+0x29c>
1c0091d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010038 <_sidata+0x6e4c>
1c0091dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091e0 <__FUNCTION__.1776>:
1c0091e0:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c000658 <cpu_wait+0x5b0>
1c0091e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010044 <_sidata+0x6e58>
1c0091e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007b09 	pcaddu12i	$r9,984(0x3d8)
80001008:	1c007b00 	pcaddu12i	$r0,984(0x3d8)

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
