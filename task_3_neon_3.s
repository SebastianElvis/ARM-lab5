
task_3_neon_3:     file format elf32-littlearm


Disassembly of section .init:

000103a8 <_init>:
   103a8:	e92d4008 	push	{r3, lr}
   103ac:	eb0000de 	bl	1072c <call_weak_fn>
   103b0:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000103b4 <.plt>:
   103b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   103b8:	e59fe004 	ldr	lr, [pc, #4]	; 103c4 <.plt+0x10>
   103bc:	e08fe00e 	add	lr, pc, lr
   103c0:	e5bef008 	ldr	pc, [lr, #8]!
   103c4:	00010c3c 	.word	0x00010c3c

000103c8 <printf@plt>:
   103c8:	e28fc600 	add	ip, pc, #0, 12
   103cc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103d0:	e5bcfc3c 	ldr	pc, [ip, #3132]!	; 0xc3c

000103d4 <read@plt>:
   103d4:	e28fc600 	add	ip, pc, #0, 12
   103d8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103dc:	e5bcfc34 	ldr	pc, [ip, #3124]!	; 0xc34

000103e0 <ioctl@plt>:
   103e0:	e28fc600 	add	ip, pc, #0, 12
   103e4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103e8:	e5bcfc2c 	ldr	pc, [ip, #3116]!	; 0xc2c

000103ec <__libc_start_main@plt>:
   103ec:	e28fc600 	add	ip, pc, #0, 12
   103f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103f4:	e5bcfc24 	ldr	pc, [ip, #3108]!	; 0xc24

000103f8 <__gmon_start__@plt>:
   103f8:	e28fc600 	add	ip, pc, #0, 12
   103fc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10400:	e5bcfc1c 	ldr	pc, [ip, #3100]!	; 0xc1c

00010404 <clock@plt>:
   10404:	e28fc600 	add	ip, pc, #0, 12
   10408:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1040c:	e5bcfc14 	ldr	pc, [ip, #3092]!	; 0xc14

00010410 <syscall@plt>:
   10410:	e28fc600 	add	ip, pc, #0, 12
   10414:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10418:	e5bcfc0c 	ldr	pc, [ip, #3084]!	; 0xc0c

0001041c <memset@plt>:
   1041c:	e28fc600 	add	ip, pc, #0, 12
   10420:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10424:	e5bcfc04 	ldr	pc, [ip, #3076]!	; 0xc04

00010428 <putchar@plt>:
   10428:	e28fc600 	add	ip, pc, #0, 12
   1042c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10430:	e5bcfbfc 	ldr	pc, [ip, #3068]!	; 0xbfc

00010434 <abort@plt>:
   10434:	e28fc600 	add	ip, pc, #0, 12
   10438:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1043c:	e5bcfbf4 	ldr	pc, [ip, #3060]!	; 0xbf4

Disassembly of section .text:

00010440 <main>:
   10440:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
   10444:	ed2d8b10 	vpush	{d8-d15}
   10448:	e59f7280 	ldr	r7, [pc, #640]	; 106d0 <main+0x290>
   1044c:	e59f6280 	ldr	r6, [pc, #640]	; 106d4 <main+0x294>
   10450:	e59f4280 	ldr	r4, [pc, #640]	; 106d8 <main+0x298>
   10454:	e59f8280 	ldr	r8, [pc, #640]	; 106dc <main+0x29c>
   10458:	e24dd06c 	sub	sp, sp, #108	; 0x6c
   1045c:	e3a05000 	mov	r5, #0
   10460:	ed9f8b82 	vldr	d8, [pc, #520]	; 10670 <main+0x230>
   10464:	ed9f9b83 	vldr	d9, [pc, #524]	; 10678 <main+0x238>
   10468:	ed9feb84 	vldr	d14, [pc, #528]	; 10680 <main+0x240>
   1046c:	ed9ffb85 	vldr	d15, [pc, #532]	; 10688 <main+0x248>
   10470:	ed9fcb86 	vldr	d12, [pc, #536]	; 10690 <main+0x250>
   10474:	ed9fdb87 	vldr	d13, [pc, #540]	; 10698 <main+0x258>
   10478:	ed9fab88 	vldr	d10, [pc, #544]	; 106a0 <main+0x260>
   1047c:	ed9fbb89 	vldr	d11, [pc, #548]	; 106a8 <main+0x268>
   10480:	e1a02006 	mov	r2, r6
   10484:	e2443a01 	sub	r3, r4, #4096	; 0x1000
   10488:	eea45b90 	vdup.32	q10, r5
   1048c:	eddf0b87 	vldr	d16, [pc, #540]	; 106b0 <main+0x270>
   10490:	eddf1b88 	vldr	d17, [pc, #544]	; 106b8 <main+0x278>
   10494:	f26448e0 	vadd.i32	q10, q10, q8
   10498:	f26428ce 	vadd.i32	q9, q10, q7
   1049c:	f3e28c8a 	vmull.u32	q12, d18, d10
   104a0:	f3e30c8b 	vmull.u32	q8, d19, d11
   104a4:	f3fa8160 	vuzp.32	q12, q8
   104a8:	f3ea8070 	vshr.u32	q12, q8, #22
   104ac:	f2e50578 	vshl.s32	q8, q12, #5
   104b0:	f26008e8 	vadd.i32	q8, q8, q12
   104b4:	f2e30570 	vshl.s32	q8, q8, #3
   104b8:	f26008e8 	vadd.i32	q8, q8, q12
   104bc:	f2e5a570 	vshl.s32	q13, q8, #5
   104c0:	f26008ea 	vadd.i32	q8, q8, q13
   104c4:	f2e50570 	vshl.s32	q8, q8, #5
   104c8:	f26008e8 	vadd.i32	q8, q8, q12
   104cc:	f2e40570 	vshl.s32	q8, q8, #4
   104d0:	f26008e8 	vadd.i32	q8, q8, q12
   104d4:	f36208e0 	vsub.i32	q8, q9, q8
   104d8:	f4430add 	vst1.64	{d16-d17}, [r3 :64]!
   104dc:	e1540003 	cmp	r4, r3
   104e0:	f3e28c8c 	vmull.u32	q12, d18, d12
   104e4:	f3e30c8d 	vmull.u32	q8, d19, d13
   104e8:	f26448c8 	vadd.i32	q10, q10, q4
   104ec:	f3fa8160 	vuzp.32	q12, q8
   104f0:	f3ec8070 	vshr.u32	q12, q8, #20
   104f4:	f2e40578 	vshl.s32	q8, q12, #4
   104f8:	f26008e8 	vadd.i32	q8, q8, q12
   104fc:	f2e4a570 	vshl.s32	q13, q8, #4
   10500:	f26008ea 	vadd.i32	q8, q8, q13
   10504:	f2e4a570 	vshl.s32	q13, q8, #4
   10508:	f26008ea 	vadd.i32	q8, q8, q13
   1050c:	f2e4a570 	vshl.s32	q13, q8, #4
   10510:	f26008ea 	vadd.i32	q8, q8, q13
   10514:	f2e40570 	vshl.s32	q8, q8, #4
   10518:	f26008e8 	vadd.i32	q8, q8, q12
   1051c:	f36228e0 	vsub.i32	q9, q9, q8
   10520:	f4422add 	vst1.64	{d18-d19}, [r2 :64]!
   10524:	1affffdb 	bne	10498 <main+0x58>
   10528:	e1a00007 	mov	r0, r7
   1052c:	e3a02a01 	mov	r2, #4096	; 0x1000
   10530:	e3a01000 	mov	r1, #0
   10534:	ebffffb8 	bl	1041c <memset@plt>
   10538:	e59f31a0 	ldr	r3, [pc, #416]	; 106e0 <main+0x2a0>
   1053c:	e0855008 	add	r5, r5, r8
   10540:	e1550003 	cmp	r5, r3
   10544:	e2866a01 	add	r6, r6, #4096	; 0x1000
   10548:	e2844a01 	add	r4, r4, #4096	; 0x1000
   1054c:	e2877a01 	add	r7, r7, #4096	; 0x1000
   10550:	1affffca 	bne	10480 <main+0x40>
   10554:	e59f6188 	ldr	r6, [pc, #392]	; 106e4 <main+0x2a4>
   10558:	e3a04000 	mov	r4, #0
   1055c:	e3e05000 	mvn	r5, #0
   10560:	e28d0008 	add	r0, sp, #8
   10564:	e3a02060 	mov	r2, #96	; 0x60
   10568:	e3a01000 	mov	r1, #0
   1056c:	e3a07000 	mov	r7, #0
   10570:	ebffffa9 	bl	1041c <memset@plt>
   10574:	e1a03005 	mov	r3, r5
   10578:	e3a0c061 	mov	ip, #97	; 0x61
   1057c:	e28d1008 	add	r1, sp, #8
   10580:	e1a02004 	mov	r2, r4
   10584:	e58d5000 	str	r5, [sp]
   10588:	e58d4004 	str	r4, [sp, #4]
   1058c:	e3a00f5b 	mov	r0, #364	; 0x16c
   10590:	e1cd61f0 	strd	r6, [sp, #16]
   10594:	e5cdc030 	strb	ip, [sp, #48]	; 0x30
   10598:	ed9f8b48 	vldr	d8, [pc, #288]	; 106c0 <main+0x280>
   1059c:	ed8d8b02 	vstr	d8, [sp, #8]
   105a0:	ebffff9a 	bl	10410 <syscall@plt>
   105a4:	e3a08002 	mov	r8, #2
   105a8:	e1a01004 	mov	r1, r4
   105ac:	e3a02060 	mov	r2, #96	; 0x60
   105b0:	e3a09000 	mov	r9, #0
   105b4:	e1a07000 	mov	r7, r0
   105b8:	e28d0008 	add	r0, sp, #8
   105bc:	ebffff96 	bl	1041c <memset@plt>
   105c0:	e3a0c061 	mov	ip, #97	; 0x61
   105c4:	e1a03005 	mov	r3, r5
   105c8:	e28d1008 	add	r1, sp, #8
   105cc:	e1a02004 	mov	r2, r4
   105d0:	e58d5000 	str	r5, [sp]
   105d4:	e58d4004 	str	r4, [sp, #4]
   105d8:	e3a00f5b 	mov	r0, #364	; 0x16c
   105dc:	e5cdc030 	strb	ip, [sp, #48]	; 0x30
   105e0:	ed8d8b02 	vstr	d8, [sp, #8]
   105e4:	e1cd81f0 	strd	r8, [sp, #16]
   105e8:	ebffff88 	bl	10410 <syscall@plt>
   105ec:	e1a06000 	mov	r6, r0
   105f0:	ebffff83 	bl	10404 <clock@plt>
   105f4:	e1a05000 	mov	r5, r0
   105f8:	e1a00007 	mov	r0, r7
   105fc:	eb000085 	bl	10818 <start_perf>
   10600:	e1a00006 	mov	r0, r6
   10604:	eb000083 	bl	10818 <start_perf>
   10608:	eb000144 	bl	10b20 <matrix_multiply_opt>
   1060c:	e1a02004 	mov	r2, r4
   10610:	e1a00007 	mov	r0, r7
   10614:	e59f10cc 	ldr	r1, [pc, #204]	; 106e8 <main+0x2a8>
   10618:	ebffff70 	bl	103e0 <ioctl@plt>
   1061c:	e59f10c4 	ldr	r1, [pc, #196]	; 106e8 <main+0x2a8>
   10620:	e1a02004 	mov	r2, r4
   10624:	e1a00006 	mov	r0, r6
   10628:	ebffff6c 	bl	103e0 <ioctl@plt>
   1062c:	ebffff74 	bl	10404 <clock@plt>
   10630:	eddf1b24 	vldr	d17, [pc, #144]	; 106c8 <main+0x288>
   10634:	e0405005 	sub	r5, r0, r5
   10638:	e59f00ac 	ldr	r0, [pc, #172]	; 106ec <main+0x2ac>
   1063c:	ee075a90 	vmov	s15, r5
   10640:	eef80be7 	vcvt.f64.s32	d16, s15
   10644:	eec02ba1 	vdiv.f64	d18, d16, d17
   10648:	ec532b32 	vmov	r2, r3, d18
   1064c:	ebffff5d 	bl	103c8 <printf@plt>
   10650:	e1a00007 	mov	r0, r7
   10654:	eb00007a 	bl	10844 <print_perf>
   10658:	e1a00006 	mov	r0, r6
   1065c:	eb000078 	bl	10844 <print_perf>
   10660:	e1a00004 	mov	r0, r4
   10664:	e28dd06c 	add	sp, sp, #108	; 0x6c
   10668:	ecbd8b10 	vpop	{d8-d15}
   1066c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
   10670:	0fa48444 	.word	0x0fa48444
   10674:	0fa48444 	.word	0x0fa48444
   10678:	0fa48444 	.word	0x0fa48444
   1067c:	0fa48444 	.word	0x0fa48444
   10680:	03e92111 	.word	0x03e92111
   10684:	03e92111 	.word	0x03e92111
   10688:	03e92111 	.word	0x03e92111
   1068c:	03e92111 	.word	0x03e92111
   10690:	c8dfc33f 	.word	0xc8dfc33f
   10694:	c8dfc33f 	.word	0xc8dfc33f
   10698:	c8dfc33f 	.word	0xc8dfc33f
   1069c:	c8dfc33f 	.word	0xc8dfc33f
   106a0:	efcf8609 	.word	0xefcf8609
   106a4:	efcf8609 	.word	0xefcf8609
   106a8:	efcf8609 	.word	0xefcf8609
   106ac:	efcf8609 	.word	0xefcf8609
   106b0:	00000000 	.word	0x00000000
   106b4:	03e92111 	.word	0x03e92111
   106b8:	07d24222 	.word	0x07d24222
   106bc:	0bbb6333 	.word	0x0bbb6333
   106c0:	00000003 	.word	0x00000003
   106c4:	00000060 	.word	0x00000060
   106c8:	00000000 	.word	0x00000000
   106cc:	412e8480 	.word	0x412e8480
   106d0:	00021048 	.word	0x00021048
   106d4:	00421048 	.word	0x00421048
   106d8:	00822048 	.word	0x00822048
   106dc:	a4844400 	.word	0xa4844400
   106e0:	11100000 	.word	0x11100000
   106e4:	00010002 	.word	0x00010002
   106e8:	00002401 	.word	0x00002401
   106ec:	00010c80 	.word	0x00010c80

000106f0 <_start>:
   106f0:	e3a0b000 	mov	fp, #0
   106f4:	e3a0e000 	mov	lr, #0
   106f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   106fc:	e1a0200d 	mov	r2, sp
   10700:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10704:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10708:	e59fc010 	ldr	ip, [pc, #16]	; 10720 <_start+0x30>
   1070c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10710:	e59f000c 	ldr	r0, [pc, #12]	; 10724 <_start+0x34>
   10714:	e59f300c 	ldr	r3, [pc, #12]	; 10728 <_start+0x38>
   10718:	ebffff33 	bl	103ec <__libc_start_main@plt>
   1071c:	ebffff44 	bl	10434 <abort@plt>
   10720:	00010c48 	.word	0x00010c48
   10724:	00010440 	.word	0x00010440
   10728:	00010be8 	.word	0x00010be8

0001072c <call_weak_fn>:
   1072c:	e59f3014 	ldr	r3, [pc, #20]	; 10748 <call_weak_fn+0x1c>
   10730:	e59f2014 	ldr	r2, [pc, #20]	; 1074c <call_weak_fn+0x20>
   10734:	e08f3003 	add	r3, pc, r3
   10738:	e7932002 	ldr	r2, [r3, r2]
   1073c:	e3520000 	cmp	r2, #0
   10740:	012fff1e 	bxeq	lr
   10744:	eaffff2b 	b	103f8 <__gmon_start__@plt>
   10748:	000108c4 	.word	0x000108c4
   1074c:	00000034 	.word	0x00000034

00010750 <deregister_tm_clones>:
   10750:	e59f301c 	ldr	r3, [pc, #28]	; 10774 <deregister_tm_clones+0x24>
   10754:	e59f001c 	ldr	r0, [pc, #28]	; 10778 <deregister_tm_clones+0x28>
   10758:	e0433000 	sub	r3, r3, r0
   1075c:	e3530006 	cmp	r3, #6
   10760:	912fff1e 	bxls	lr
   10764:	e59f3010 	ldr	r3, [pc, #16]	; 1077c <deregister_tm_clones+0x2c>
   10768:	e3530000 	cmp	r3, #0
   1076c:	012fff1e 	bxeq	lr
   10770:	e12fff13 	bx	r3
   10774:	00021043 	.word	0x00021043
   10778:	00021040 	.word	0x00021040
   1077c:	00000000 	.word	0x00000000

00010780 <register_tm_clones>:
   10780:	e59f1024 	ldr	r1, [pc, #36]	; 107ac <register_tm_clones+0x2c>
   10784:	e59f0024 	ldr	r0, [pc, #36]	; 107b0 <register_tm_clones+0x30>
   10788:	e0411000 	sub	r1, r1, r0
   1078c:	e1a01141 	asr	r1, r1, #2
   10790:	e0811fa1 	add	r1, r1, r1, lsr #31
   10794:	e1b010c1 	asrs	r1, r1, #1
   10798:	012fff1e 	bxeq	lr
   1079c:	e59f3010 	ldr	r3, [pc, #16]	; 107b4 <register_tm_clones+0x34>
   107a0:	e3530000 	cmp	r3, #0
   107a4:	012fff1e 	bxeq	lr
   107a8:	e12fff13 	bx	r3
   107ac:	00021040 	.word	0x00021040
   107b0:	00021040 	.word	0x00021040
   107b4:	00000000 	.word	0x00000000

000107b8 <__do_global_dtors_aux>:
   107b8:	e92d4010 	push	{r4, lr}
   107bc:	e59f4018 	ldr	r4, [pc, #24]	; 107dc <__do_global_dtors_aux+0x24>
   107c0:	e5d43000 	ldrb	r3, [r4]
   107c4:	e3530000 	cmp	r3, #0
   107c8:	18bd8010 	popne	{r4, pc}
   107cc:	ebffffdf 	bl	10750 <deregister_tm_clones>
   107d0:	e3a03001 	mov	r3, #1
   107d4:	e5c43000 	strb	r3, [r4]
   107d8:	e8bd8010 	pop	{r4, pc}
   107dc:	00021040 	.word	0x00021040

000107e0 <frame_dummy>:
   107e0:	e59f0028 	ldr	r0, [pc, #40]	; 10810 <frame_dummy+0x30>
   107e4:	e5903000 	ldr	r3, [r0]
   107e8:	e3530000 	cmp	r3, #0
   107ec:	1a000000 	bne	107f4 <frame_dummy+0x14>
   107f0:	eaffffe2 	b	10780 <register_tm_clones>
   107f4:	e59f3018 	ldr	r3, [pc, #24]	; 10814 <frame_dummy+0x34>
   107f8:	e3530000 	cmp	r3, #0
   107fc:	0afffffb 	beq	107f0 <frame_dummy+0x10>
   10800:	e92d4010 	push	{r4, lr}
   10804:	e12fff33 	blx	r3
   10808:	e8bd4010 	pop	{r4, lr}
   1080c:	eaffffdb 	b	10780 <register_tm_clones>
   10810:	00020f14 	.word	0x00020f14
   10814:	00000000 	.word	0x00000000

00010818 <start_perf>:
   10818:	e92d4010 	push	{r4, lr}
   1081c:	e3a02000 	mov	r2, #0
   10820:	e1a04000 	mov	r4, r0
   10824:	e59f1014 	ldr	r1, [pc, #20]	; 10840 <start_perf+0x28>
   10828:	ebfffeec 	bl	103e0 <ioctl@plt>
   1082c:	e1a00004 	mov	r0, r4
   10830:	e3a02000 	mov	r2, #0
   10834:	e3a01b09 	mov	r1, #9216	; 0x2400
   10838:	e8bd4010 	pop	{r4, lr}
   1083c:	eafffee7 	b	103e0 <ioctl@plt>
   10840:	00002403 	.word	0x00002403

00010844 <print_perf>:
   10844:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10848:	e24dd00c 	sub	sp, sp, #12
   1084c:	e1a0100d 	mov	r1, sp
   10850:	e3a02008 	mov	r2, #8
   10854:	ebfffede 	bl	103d4 <read@plt>
   10858:	e1cd20d0 	ldrd	r2, [sp]
   1085c:	e59f0008 	ldr	r0, [pc, #8]	; 1086c <print_perf+0x28>
   10860:	ebfffed8 	bl	103c8 <printf@plt>
   10864:	e28dd00c 	add	sp, sp, #12
   10868:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
   1086c:	00010c58 	.word	0x00010c58

00010870 <init_matrixes>:
   10870:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10874:	e3a05000 	mov	r5, #0
   10878:	e59f7158 	ldr	r7, [pc, #344]	; 109d8 <init_matrixes+0x168>
   1087c:	e59f6158 	ldr	r6, [pc, #344]	; 109dc <init_matrixes+0x16c>
   10880:	e59f4158 	ldr	r4, [pc, #344]	; 109e0 <init_matrixes+0x170>
   10884:	e59f8158 	ldr	r8, [pc, #344]	; 109e4 <init_matrixes+0x174>
   10888:	ed2d8b10 	vpush	{d8-d15}
   1088c:	ed9f8b3d 	vldr	d8, [pc, #244]	; 10988 <init_matrixes+0x118>
   10890:	ed9f9b3e 	vldr	d9, [pc, #248]	; 10990 <init_matrixes+0x120>
   10894:	ed9feb3f 	vldr	d14, [pc, #252]	; 10998 <init_matrixes+0x128>
   10898:	ed9ffb40 	vldr	d15, [pc, #256]	; 109a0 <init_matrixes+0x130>
   1089c:	ed9fcb41 	vldr	d12, [pc, #260]	; 109a8 <init_matrixes+0x138>
   108a0:	ed9fdb42 	vldr	d13, [pc, #264]	; 109b0 <init_matrixes+0x140>
   108a4:	ed9fab43 	vldr	d10, [pc, #268]	; 109b8 <init_matrixes+0x148>
   108a8:	ed9fbb44 	vldr	d11, [pc, #272]	; 109c0 <init_matrixes+0x150>
   108ac:	e1a02006 	mov	r2, r6
   108b0:	e2443a01 	sub	r3, r4, #4096	; 0x1000
   108b4:	eea45b90 	vdup.32	q10, r5
   108b8:	eddf0b42 	vldr	d16, [pc, #264]	; 109c8 <init_matrixes+0x158>
   108bc:	eddf1b43 	vldr	d17, [pc, #268]	; 109d0 <init_matrixes+0x160>
   108c0:	f26448e0 	vadd.i32	q10, q10, q8
   108c4:	f26428ce 	vadd.i32	q9, q10, q7
   108c8:	f3e28c8a 	vmull.u32	q12, d18, d10
   108cc:	f3e30c8b 	vmull.u32	q8, d19, d11
   108d0:	f3fa8160 	vuzp.32	q12, q8
   108d4:	f3ea8070 	vshr.u32	q12, q8, #22
   108d8:	f2e50578 	vshl.s32	q8, q12, #5
   108dc:	f26008e8 	vadd.i32	q8, q8, q12
   108e0:	f2e30570 	vshl.s32	q8, q8, #3
   108e4:	f26008e8 	vadd.i32	q8, q8, q12
   108e8:	f2e5a570 	vshl.s32	q13, q8, #5
   108ec:	f26008ea 	vadd.i32	q8, q8, q13
   108f0:	f2e50570 	vshl.s32	q8, q8, #5
   108f4:	f26008e8 	vadd.i32	q8, q8, q12
   108f8:	f2e40570 	vshl.s32	q8, q8, #4
   108fc:	f26008e8 	vadd.i32	q8, q8, q12
   10900:	f36208e0 	vsub.i32	q8, q9, q8
   10904:	f4430add 	vst1.64	{d16-d17}, [r3 :64]!
   10908:	e1540003 	cmp	r4, r3
   1090c:	f3e28c8c 	vmull.u32	q12, d18, d12
   10910:	f3e30c8d 	vmull.u32	q8, d19, d13
   10914:	f26448c8 	vadd.i32	q10, q10, q4
   10918:	f3fa8160 	vuzp.32	q12, q8
   1091c:	f3ec8070 	vshr.u32	q12, q8, #20
   10920:	f2e40578 	vshl.s32	q8, q12, #4
   10924:	f26008e8 	vadd.i32	q8, q8, q12
   10928:	f2e4a570 	vshl.s32	q13, q8, #4
   1092c:	f26008ea 	vadd.i32	q8, q8, q13
   10930:	f2e4a570 	vshl.s32	q13, q8, #4
   10934:	f26008ea 	vadd.i32	q8, q8, q13
   10938:	f2e4a570 	vshl.s32	q13, q8, #4
   1093c:	f26008ea 	vadd.i32	q8, q8, q13
   10940:	f2e40570 	vshl.s32	q8, q8, #4
   10944:	f26008e8 	vadd.i32	q8, q8, q12
   10948:	f36228e0 	vsub.i32	q9, q9, q8
   1094c:	f4422add 	vst1.64	{d18-d19}, [r2 :64]!
   10950:	1affffdb 	bne	108c4 <init_matrixes+0x54>
   10954:	e1a00007 	mov	r0, r7
   10958:	e3a02a01 	mov	r2, #4096	; 0x1000
   1095c:	e3a01000 	mov	r1, #0
   10960:	ebfffead 	bl	1041c <memset@plt>
   10964:	e59f307c 	ldr	r3, [pc, #124]	; 109e8 <init_matrixes+0x178>
   10968:	e0855008 	add	r5, r5, r8
   1096c:	e1550003 	cmp	r5, r3
   10970:	e2866a01 	add	r6, r6, #4096	; 0x1000
   10974:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10978:	e2877a01 	add	r7, r7, #4096	; 0x1000
   1097c:	1affffca 	bne	108ac <init_matrixes+0x3c>
   10980:	ecbd8b10 	vpop	{d8-d15}
   10984:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10988:	0fa48444 	.word	0x0fa48444
   1098c:	0fa48444 	.word	0x0fa48444
   10990:	0fa48444 	.word	0x0fa48444
   10994:	0fa48444 	.word	0x0fa48444
   10998:	03e92111 	.word	0x03e92111
   1099c:	03e92111 	.word	0x03e92111
   109a0:	03e92111 	.word	0x03e92111
   109a4:	03e92111 	.word	0x03e92111
   109a8:	c8dfc33f 	.word	0xc8dfc33f
   109ac:	c8dfc33f 	.word	0xc8dfc33f
   109b0:	c8dfc33f 	.word	0xc8dfc33f
   109b4:	c8dfc33f 	.word	0xc8dfc33f
   109b8:	efcf8609 	.word	0xefcf8609
   109bc:	efcf8609 	.word	0xefcf8609
   109c0:	efcf8609 	.word	0xefcf8609
   109c4:	efcf8609 	.word	0xefcf8609
   109c8:	00000000 	.word	0x00000000
   109cc:	03e92111 	.word	0x03e92111
   109d0:	07d24222 	.word	0x07d24222
   109d4:	0bbb6333 	.word	0x0bbb6333
   109d8:	00021048 	.word	0x00021048
   109dc:	00421048 	.word	0x00421048
   109e0:	00822048 	.word	0x00822048
   109e4:	a4844400 	.word	0xa4844400
   109e8:	11100000 	.word	0x11100000

000109ec <print_matrix>:
   109ec:	e3510000 	cmp	r1, #0
   109f0:	da000014 	ble	10a48 <print_matrix+0x5c>
   109f4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   109f8:	e1a06001 	mov	r6, r1
   109fc:	e59f7048 	ldr	r7, [pc, #72]	; 10a4c <print_matrix+0x60>
   10a00:	e2408004 	sub	r8, r0, #4
   10a04:	e3a09000 	mov	r9, #0
   10a08:	e3a0a00a 	mov	sl, #10
   10a0c:	e1a05008 	mov	r5, r8
   10a10:	e3a04000 	mov	r4, #0
   10a14:	e2844001 	add	r4, r4, #1
   10a18:	e5b51004 	ldr	r1, [r5, #4]!
   10a1c:	e1a00007 	mov	r0, r7
   10a20:	ebfffe68 	bl	103c8 <printf@plt>
   10a24:	e1560004 	cmp	r6, r4
   10a28:	1afffff9 	bne	10a14 <print_matrix+0x28>
   10a2c:	e2899001 	add	r9, r9, #1
   10a30:	e1a0000a 	mov	r0, sl
   10a34:	ebfffe7b 	bl	10428 <putchar@plt>
   10a38:	e1560009 	cmp	r6, r9
   10a3c:	e2888a01 	add	r8, r8, #4096	; 0x1000
   10a40:	1afffff1 	bne	10a0c <print_matrix+0x20>
   10a44:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a48:	e12fff1e 	bx	lr
   10a4c:	00010c7c 	.word	0x00010c7c

00010a50 <matrix_multiply_basic>:
   10a50:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10a54:	e59fe064 	ldr	lr, [pc, #100]	; 10ac0 <matrix_multiply_basic+0x70>
   10a58:	e59f4064 	ldr	r4, [pc, #100]	; 10ac4 <matrix_multiply_basic+0x74>
   10a5c:	e59f7064 	ldr	r7, [pc, #100]	; 10ac8 <matrix_multiply_basic+0x78>
   10a60:	e28e8501 	add	r8, lr, #4194304	; 0x400000
   10a64:	e59fc060 	ldr	ip, [pc, #96]	; 10acc <matrix_multiply_basic+0x7c>
   10a68:	e1a0600e 	mov	r6, lr
   10a6c:	e1a0500e 	mov	r5, lr
   10a70:	e1a0300c 	mov	r3, ip
   10a74:	e28c0501 	add	r0, ip, #4194304	; 0x400000
   10a78:	e1a01004 	mov	r1, r4
   10a7c:	f4652add 	vld1.64	{d18-d19}, [r5 :64]!
   10a80:	f4634adf 	vld1.64	{d20-d21}, [r3 :64]
   10a84:	e2833a01 	add	r3, r3, #4096	; 0x1000
   10a88:	e1530000 	cmp	r3, r0
   10a8c:	e5b12004 	ldr	r2, [r1, #4]!
   10a90:	eea02b90 	vdup.32	q8, r2
   10a94:	f26029e4 	vmla.i32	q9, q8, q10
   10a98:	1afffff8 	bne	10a80 <matrix_multiply_basic+0x30>
   10a9c:	e28cc010 	add	ip, ip, #16
   10aa0:	e15c0007 	cmp	ip, r7
   10aa4:	f4462add 	vst1.64	{d18-d19}, [r6 :64]!
   10aa8:	1afffff0 	bne	10a70 <matrix_multiply_basic+0x20>
   10aac:	e28eea01 	add	lr, lr, #4096	; 0x1000
   10ab0:	e15e0008 	cmp	lr, r8
   10ab4:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10ab8:	1affffe9 	bne	10a64 <matrix_multiply_basic+0x14>
   10abc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10ac0:	00021048 	.word	0x00021048
   10ac4:	00421044 	.word	0x00421044
   10ac8:	00822048 	.word	0x00822048
   10acc:	00821048 	.word	0x00821048

00010ad0 <transpose>:
   10ad0:	e92d4010 	push	{r4, lr}
   10ad4:	e2400004 	sub	r0, r0, #4
   10ad8:	e3a04000 	mov	r4, #0
   10adc:	e2803004 	add	r3, r0, #4
   10ae0:	e1a01000 	mov	r1, r0
   10ae4:	e1a02004 	mov	r2, r4
   10ae8:	e593e000 	ldr	lr, [r3]
   10aec:	e591c004 	ldr	ip, [r1, #4]
   10af0:	e2822001 	add	r2, r2, #1
   10af4:	e3520b01 	cmp	r2, #1024	; 0x400
   10af8:	e5a1e004 	str	lr, [r1, #4]!
   10afc:	e583c000 	str	ip, [r3]
   10b00:	e2833a01 	add	r3, r3, #4096	; 0x1000
   10b04:	1afffff7 	bne	10ae8 <transpose+0x18>
   10b08:	e2844001 	add	r4, r4, #1
   10b0c:	e2800a01 	add	r0, r0, #4096	; 0x1000
   10b10:	e3540b01 	cmp	r4, #1024	; 0x400
   10b14:	e2800004 	add	r0, r0, #4
   10b18:	1affffef 	bne	10adc <transpose+0xc>
   10b1c:	e8bd8010 	pop	{r4, pc}

00010b20 <matrix_multiply_opt>:
   10b20:	e92d4030 	push	{r4, r5, lr}
   10b24:	e3a04000 	mov	r4, #0
   10b28:	e59fe0a8 	ldr	lr, [pc, #168]	; 10bd8 <matrix_multiply_opt+0xb8>
   10b2c:	e28e3004 	add	r3, lr, #4
   10b30:	e1a0100e 	mov	r1, lr
   10b34:	e1a02004 	mov	r2, r4
   10b38:	e593c000 	ldr	ip, [r3]
   10b3c:	e5910004 	ldr	r0, [r1, #4]
   10b40:	e2822001 	add	r2, r2, #1
   10b44:	e3520b01 	cmp	r2, #1024	; 0x400
   10b48:	e5a1c004 	str	ip, [r1, #4]!
   10b4c:	e5830000 	str	r0, [r3]
   10b50:	e2833a01 	add	r3, r3, #4096	; 0x1000
   10b54:	1afffff7 	bne	10b38 <matrix_multiply_opt+0x18>
   10b58:	e2844001 	add	r4, r4, #1
   10b5c:	e28eea01 	add	lr, lr, #4096	; 0x1000
   10b60:	e3540b01 	cmp	r4, #1024	; 0x400
   10b64:	e28ee004 	add	lr, lr, #4
   10b68:	1affffef 	bne	10b2c <matrix_multiply_opt+0xc>
   10b6c:	e59fe068 	ldr	lr, [pc, #104]	; 10bdc <matrix_multiply_opt+0xbc>
   10b70:	e59f4068 	ldr	r4, [pc, #104]	; 10be0 <matrix_multiply_opt+0xc0>
   10b74:	e28e5501 	add	r5, lr, #4194304	; 0x400000
   10b78:	e59f1064 	ldr	r1, [pc, #100]	; 10be4 <matrix_multiply_opt+0xc4>
   10b7c:	e24e0a01 	sub	r0, lr, #4096	; 0x1000
   10b80:	e590c004 	ldr	ip, [r0, #4]
   10b84:	e1a03001 	mov	r3, r1
   10b88:	e1a02004 	mov	r2, r4
   10b8c:	e2811a01 	add	r1, r1, #4096	; 0x1000
   10b90:	f2c00050 	vmov.i32	q8, #0	; 0x00000000
   10b94:	f4632add 	vld1.64	{d18-d19}, [r3 :64]!
   10b98:	e1510003 	cmp	r1, r3
   10b9c:	f4624add 	vld1.64	{d20-d21}, [r2 :64]!
   10ba0:	f26409e2 	vmla.i32	q8, q10, q9
   10ba4:	1afffffa 	bne	10b94 <matrix_multiply_opt+0x74>
   10ba8:	f26008a1 	vadd.i32	d16, d16, d17
   10bac:	f2600bb0 	vpadd.i32	d16, d16, d16
   10bb0:	ee103b90 	vmov.32	r3, d16[0]
   10bb4:	e083300c 	add	r3, r3, ip
   10bb8:	e5a03004 	str	r3, [r0, #4]!
   10bbc:	e150000e 	cmp	r0, lr
   10bc0:	1affffee 	bne	10b80 <matrix_multiply_opt+0x60>
   10bc4:	e280ea01 	add	lr, r0, #4096	; 0x1000
   10bc8:	e15e0005 	cmp	lr, r5
   10bcc:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10bd0:	1affffe8 	bne	10b78 <matrix_multiply_opt+0x58>
   10bd4:	e8bd8030 	pop	{r4, r5, pc}
   10bd8:	00821044 	.word	0x00821044
   10bdc:	00022044 	.word	0x00022044
   10be0:	00421048 	.word	0x00421048
   10be4:	00821048 	.word	0x00821048

00010be8 <__libc_csu_init>:
   10be8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10bec:	e1a07000 	mov	r7, r0
   10bf0:	e59f6048 	ldr	r6, [pc, #72]	; 10c40 <__libc_csu_init+0x58>
   10bf4:	e59f5048 	ldr	r5, [pc, #72]	; 10c44 <__libc_csu_init+0x5c>
   10bf8:	e08f6006 	add	r6, pc, r6
   10bfc:	e08f5005 	add	r5, pc, r5
   10c00:	e0466005 	sub	r6, r6, r5
   10c04:	e1a08001 	mov	r8, r1
   10c08:	e1a09002 	mov	r9, r2
   10c0c:	ebfffde5 	bl	103a8 <_init>
   10c10:	e1b06146 	asrs	r6, r6, #2
   10c14:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10c18:	e3a04000 	mov	r4, #0
   10c1c:	e2844001 	add	r4, r4, #1
   10c20:	e4953004 	ldr	r3, [r5], #4
   10c24:	e1a02009 	mov	r2, r9
   10c28:	e1a01008 	mov	r1, r8
   10c2c:	e1a00007 	mov	r0, r7
   10c30:	e12fff33 	blx	r3
   10c34:	e1560004 	cmp	r6, r4
   10c38:	1afffff7 	bne	10c1c <__libc_csu_init+0x34>
   10c3c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10c40:	00010310 	.word	0x00010310
   10c44:	00010308 	.word	0x00010308

00010c48 <__libc_csu_fini>:
   10c48:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010c4c <_fini>:
   10c4c:	e92d4008 	push	{r3, lr}
   10c50:	e8bd8008 	pop	{r3, pc}
