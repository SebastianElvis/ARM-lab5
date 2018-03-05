
matrix_multiply:     file format elf32-littlearm


Disassembly of section .init:

00010380 <_init>:
   10380:	e92d4008 	push	{r3, lr}
   10384:	eb0000ec 	bl	1073c <call_weak_fn>
   10388:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

0001038c <.plt>:
   1038c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10390:	e59fe004 	ldr	lr, [pc, #4]	; 1039c <.plt+0x10>
   10394:	e08fe00e 	add	lr, pc, lr
   10398:	e5bef008 	ldr	pc, [lr, #8]!
   1039c:	00010c64 	.word	0x00010c64

000103a0 <printf@plt>:
   103a0:	e28fc600 	add	ip, pc, #0, 12
   103a4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103a8:	e5bcfc64 	ldr	pc, [ip, #3172]!	; 0xc64

000103ac <read@plt>:
   103ac:	e28fc600 	add	ip, pc, #0, 12
   103b0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103b4:	e5bcfc5c 	ldr	pc, [ip, #3164]!	; 0xc5c

000103b8 <ioctl@plt>:
   103b8:	e28fc600 	add	ip, pc, #0, 12
   103bc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103c0:	e5bcfc54 	ldr	pc, [ip, #3156]!	; 0xc54

000103c4 <__libc_start_main@plt>:
   103c4:	e28fc600 	add	ip, pc, #0, 12
   103c8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103cc:	e5bcfc4c 	ldr	pc, [ip, #3148]!	; 0xc4c

000103d0 <__gmon_start__@plt>:
   103d0:	e28fc600 	add	ip, pc, #0, 12
   103d4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103d8:	e5bcfc44 	ldr	pc, [ip, #3140]!	; 0xc44

000103dc <clock@plt>:
   103dc:	e28fc600 	add	ip, pc, #0, 12
   103e0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103e4:	e5bcfc3c 	ldr	pc, [ip, #3132]!	; 0xc3c

000103e8 <syscall@plt>:
   103e8:	e28fc600 	add	ip, pc, #0, 12
   103ec:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103f0:	e5bcfc34 	ldr	pc, [ip, #3124]!	; 0xc34

000103f4 <memset@plt>:
   103f4:	e28fc600 	add	ip, pc, #0, 12
   103f8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103fc:	e5bcfc2c 	ldr	pc, [ip, #3116]!	; 0xc2c

00010400 <abort@plt>:
   10400:	e28fc600 	add	ip, pc, #0, 12
   10404:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10408:	e5bcfc24 	ldr	pc, [ip, #3108]!	; 0xc24

Disassembly of section .text:

00010410 <main>:
   10410:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10414:	ed2d8b10 	vpush	{d8-d15}
   10418:	e59f42b8 	ldr	r4, [pc, #696]	; 106d8 <main+0x2c8>
   1041c:	e59f72b8 	ldr	r7, [pc, #696]	; 106dc <main+0x2cc>
   10420:	e59f82b8 	ldr	r8, [pc, #696]	; 106e0 <main+0x2d0>
   10424:	e59fb2b8 	ldr	fp, [pc, #696]	; 106e4 <main+0x2d4>
   10428:	e24dd07c 	sub	sp, sp, #124	; 0x7c
   1042c:	e1a0a004 	mov	sl, r4
   10430:	e2479008 	sub	r9, r7, #8
   10434:	e2885a01 	add	r5, r8, #4096	; 0x1000
   10438:	e3a06000 	mov	r6, #0
   1043c:	ed9f8b8f 	vldr	d8, [pc, #572]	; 10680 <main+0x270>
   10440:	ed9f9b90 	vldr	d9, [pc, #576]	; 10688 <main+0x278>
   10444:	eddf6b91 	vldr	d22, [pc, #580]	; 10690 <main+0x280>
   10448:	eddf7b92 	vldr	d23, [pc, #584]	; 10698 <main+0x288>
   1044c:	ed9feb93 	vldr	d14, [pc, #588]	; 106a0 <main+0x290>
   10450:	ed9ffb94 	vldr	d15, [pc, #592]	; 106a8 <main+0x298>
   10454:	ed9fcb95 	vldr	d12, [pc, #596]	; 106b0 <main+0x2a0>
   10458:	ed9fdb96 	vldr	d13, [pc, #600]	; 106b8 <main+0x2a8>
   1045c:	ed9fab97 	vldr	d10, [pc, #604]	; 106c0 <main+0x2b0>
   10460:	ed9fbb98 	vldr	d11, [pc, #608]	; 106c8 <main+0x2b8>
   10464:	e1a02009 	mov	r2, r9
   10468:	e2453a01 	sub	r3, r5, #4096	; 0x1000
   1046c:	eea46b90 	vdup.32	q10, r6
   10470:	f26448c8 	vadd.i32	q10, q10, q4
   10474:	f26428ce 	vadd.i32	q9, q10, q7
   10478:	f3e2ac8a 	vmull.u32	q13, d18, d10
   1047c:	f3e3cc8b 	vmull.u32	q14, d19, d11
   10480:	f26a81fa 	vorr	q12, q13, q13
   10484:	f26c01fc 	vorr	q8, q14, q14
   10488:	f3fa8160 	vuzp.32	q12, q8
   1048c:	f3ea8070 	vshr.u32	q12, q8, #22
   10490:	f2e50578 	vshl.s32	q8, q12, #5
   10494:	f26008e8 	vadd.i32	q8, q8, q12
   10498:	f2e30570 	vshl.s32	q8, q8, #3
   1049c:	f26008e8 	vadd.i32	q8, q8, q12
   104a0:	f2e5a570 	vshl.s32	q13, q8, #5
   104a4:	f26008ea 	vadd.i32	q8, q8, q13
   104a8:	f2e50570 	vshl.s32	q8, q8, #5
   104ac:	f26008e8 	vadd.i32	q8, q8, q12
   104b0:	f2e40570 	vshl.s32	q8, q8, #4
   104b4:	f26008e8 	vadd.i32	q8, q8, q12
   104b8:	f36208e0 	vsub.i32	q8, q9, q8
   104bc:	f4430add 	vst1.64	{d16-d17}, [r3 :64]!
   104c0:	e1550003 	cmp	r5, r3
   104c4:	f3e2ac8c 	vmull.u32	q13, d18, d12
   104c8:	f3e3cc8d 	vmull.u32	q14, d19, d13
   104cc:	f26a81fa 	vorr	q12, q13, q13
   104d0:	f26c01fc 	vorr	q8, q14, q14
   104d4:	f26448e6 	vadd.i32	q10, q10, q11
   104d8:	f3fa8160 	vuzp.32	q12, q8
   104dc:	f3ec8070 	vshr.u32	q12, q8, #20
   104e0:	f2e40578 	vshl.s32	q8, q12, #4
   104e4:	f26008e8 	vadd.i32	q8, q8, q12
   104e8:	f2e4a570 	vshl.s32	q13, q8, #4
   104ec:	f26008ea 	vadd.i32	q8, q8, q13
   104f0:	f2e4a570 	vshl.s32	q13, q8, #4
   104f4:	f26008ea 	vadd.i32	q8, q8, q13
   104f8:	f2e4a570 	vshl.s32	q13, q8, #4
   104fc:	f26008ea 	vadd.i32	q8, q8, q13
   10500:	f2e40570 	vshl.s32	q8, q8, #4
   10504:	f26008e8 	vadd.i32	q8, q8, q12
   10508:	f36208e0 	vsub.i32	q8, q9, q8
   1050c:	f4420add 	vst1.64	{d16-d17}, [r2 :64]!
   10510:	1affffd7 	bne	10474 <main+0x64>
   10514:	e1a0000a 	mov	r0, sl
   10518:	e3a02a01 	mov	r2, #4096	; 0x1000
   1051c:	e3a01000 	mov	r1, #0
   10520:	e28d3008 	add	r3, sp, #8
   10524:	f4436adf 	vst1.64	{d22-d23}, [r3 :64]
   10528:	ebffffb1 	bl	103f4 <memset@plt>
   1052c:	e59f31b4 	ldr	r3, [pc, #436]	; 106e8 <main+0x2d8>
   10530:	e086600b 	add	r6, r6, fp
   10534:	e1560003 	cmp	r6, r3
   10538:	e2899a01 	add	r9, r9, #4096	; 0x1000
   1053c:	e28d3008 	add	r3, sp, #8
   10540:	e2855a01 	add	r5, r5, #4096	; 0x1000
   10544:	e28aaa01 	add	sl, sl, #4096	; 0x1000
   10548:	f4636adf 	vld1.64	{d22-d23}, [r3 :64]
   1054c:	1affffc4 	bne	10464 <main+0x54>
   10550:	e3a05060 	mov	r5, #96	; 0x60
   10554:	e1a02005 	mov	r2, r5
   10558:	e3a01000 	mov	r1, #0
   1055c:	e28d0018 	add	r0, sp, #24
   10560:	ebffffa3 	bl	103f4 <memset@plt>
   10564:	e3a09000 	mov	r9, #0
   10568:	e3e03000 	mvn	r3, #0
   1056c:	e3a0c061 	mov	ip, #97	; 0x61
   10570:	e58d3000 	str	r3, [sp]
   10574:	e28d1018 	add	r1, sp, #24
   10578:	e1a02009 	mov	r2, r9
   1057c:	e58d9004 	str	r9, [sp, #4]
   10580:	e3a00f5b 	mov	r0, #364	; 0x16c
   10584:	e5cdc040 	strb	ip, [sp, #64]	; 0x40
   10588:	e58d501c 	str	r5, [sp, #28]
   1058c:	ebffff95 	bl	103e8 <syscall@plt>
   10590:	e59fa154 	ldr	sl, [pc, #340]	; 106ec <main+0x2dc>
   10594:	e2888a01 	add	r8, r8, #4096	; 0x1000
   10598:	e1a06000 	mov	r6, r0
   1059c:	ebffff8e 	bl	103dc <clock@plt>
   105a0:	e1a02009 	mov	r2, r9
   105a4:	e59f1144 	ldr	r1, [pc, #324]	; 106f0 <main+0x2e0>
   105a8:	e1a05000 	mov	r5, r0
   105ac:	e1a00006 	mov	r0, r6
   105b0:	ebffff80 	bl	103b8 <ioctl@plt>
   105b4:	e1a02009 	mov	r2, r9
   105b8:	e1a00006 	mov	r0, r6
   105bc:	e3a01b09 	mov	r1, #9216	; 0x2400
   105c0:	ebffff7c 	bl	103b8 <ioctl@plt>
   105c4:	e247000c 	sub	r0, r7, #12
   105c8:	e59fe110 	ldr	lr, [pc, #272]	; 106e0 <main+0x2d0>
   105cc:	e1a09004 	mov	r9, r4
   105d0:	e1a07004 	mov	r7, r4
   105d4:	e1a0300e 	mov	r3, lr
   105d8:	e28ec501 	add	ip, lr, #4194304	; 0x400000
   105dc:	e1a01000 	mov	r1, r0
   105e0:	f4672add 	vld1.64	{d18-d19}, [r7 :64]!
   105e4:	f4634adf 	vld1.64	{d20-d21}, [r3 :64]
   105e8:	e2833a01 	add	r3, r3, #4096	; 0x1000
   105ec:	e15c0003 	cmp	ip, r3
   105f0:	e5b12004 	ldr	r2, [r1, #4]!
   105f4:	eea02b90 	vdup.32	q8, r2
   105f8:	f26029e4 	vmla.i32	q9, q8, q10
   105fc:	1afffff8 	bne	105e4 <main+0x1d4>
   10600:	e28ee010 	add	lr, lr, #16
   10604:	e15e0008 	cmp	lr, r8
   10608:	f4492add 	vst1.64	{d18-d19}, [r9 :64]!
   1060c:	1afffff0 	bne	105d4 <main+0x1c4>
   10610:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10614:	e154000a 	cmp	r4, sl
   10618:	e2800a01 	add	r0, r0, #4096	; 0x1000
   1061c:	1affffe9 	bne	105c8 <main+0x1b8>
   10620:	e59f10cc 	ldr	r1, [pc, #204]	; 106f4 <main+0x2e4>
   10624:	e3a02000 	mov	r2, #0
   10628:	e1a00006 	mov	r0, r6
   1062c:	ebffff61 	bl	103b8 <ioctl@plt>
   10630:	ebffff69 	bl	103dc <clock@plt>
   10634:	eddf1b25 	vldr	d17, [pc, #148]	; 106d0 <main+0x2c0>
   10638:	e0405005 	sub	r5, r0, r5
   1063c:	e59f00b4 	ldr	r0, [pc, #180]	; 106f8 <main+0x2e8>
   10640:	ee075a90 	vmov	s15, r5
   10644:	eef80be7 	vcvt.f64.s32	d16, s15
   10648:	eec02ba1 	vdiv.f64	d18, d16, d17
   1064c:	ec532b32 	vmov	r2, r3, d18
   10650:	ebffff52 	bl	103a0 <printf@plt>
   10654:	e28d1018 	add	r1, sp, #24
   10658:	e1a00006 	mov	r0, r6
   1065c:	e3a02008 	mov	r2, #8
   10660:	ebffff51 	bl	103ac <read@plt>
   10664:	e1cd21d8 	ldrd	r2, [sp, #24]
   10668:	e59f008c 	ldr	r0, [pc, #140]	; 106fc <main+0x2ec>
   1066c:	ebffff4b 	bl	103a0 <printf@plt>
   10670:	e3a00000 	mov	r0, #0
   10674:	e28dd07c 	add	sp, sp, #124	; 0x7c
   10678:	ecbd8b10 	vpop	{d8-d15}
   1067c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10680:	00000000 	.word	0x00000000
   10684:	03e92111 	.word	0x03e92111
   10688:	07d24222 	.word	0x07d24222
   1068c:	0bbb6333 	.word	0x0bbb6333
   10690:	0fa48444 	.word	0x0fa48444
   10694:	0fa48444 	.word	0x0fa48444
   10698:	0fa48444 	.word	0x0fa48444
   1069c:	0fa48444 	.word	0x0fa48444
   106a0:	03e92111 	.word	0x03e92111
   106a4:	03e92111 	.word	0x03e92111
   106a8:	03e92111 	.word	0x03e92111
   106ac:	03e92111 	.word	0x03e92111
   106b0:	c8dfc33f 	.word	0xc8dfc33f
   106b4:	c8dfc33f 	.word	0xc8dfc33f
   106b8:	c8dfc33f 	.word	0xc8dfc33f
   106bc:	c8dfc33f 	.word	0xc8dfc33f
   106c0:	efcf8609 	.word	0xefcf8609
   106c4:	efcf8609 	.word	0xefcf8609
   106c8:	efcf8609 	.word	0xefcf8609
   106cc:	efcf8609 	.word	0xefcf8609
   106d0:	00000000 	.word	0x00000000
   106d4:	412e8480 	.word	0x412e8480
   106d8:	00021048 	.word	0x00021048
   106dc:	00421050 	.word	0x00421050
   106e0:	00821048 	.word	0x00821048
   106e4:	a4844400 	.word	0xa4844400
   106e8:	11100000 	.word	0x11100000
   106ec:	00421048 	.word	0x00421048
   106f0:	00002403 	.word	0x00002403
   106f4:	00002401 	.word	0x00002401
   106f8:	00010a94 	.word	0x00010a94
   106fc:	00010ab0 	.word	0x00010ab0

00010700 <_start>:
   10700:	e3a0b000 	mov	fp, #0
   10704:	e3a0e000 	mov	lr, #0
   10708:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1070c:	e1a0200d 	mov	r2, sp
   10710:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10714:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10718:	e59fc010 	ldr	ip, [pc, #16]	; 10730 <_start+0x30>
   1071c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10720:	e59f000c 	ldr	r0, [pc, #12]	; 10734 <_start+0x34>
   10724:	e59f300c 	ldr	r3, [pc, #12]	; 10738 <_start+0x38>
   10728:	ebffff25 	bl	103c4 <__libc_start_main@plt>
   1072c:	ebffff33 	bl	10400 <abort@plt>
   10730:	00010a84 	.word	0x00010a84
   10734:	00010410 	.word	0x00010410
   10738:	00010a24 	.word	0x00010a24

0001073c <call_weak_fn>:
   1073c:	e59f3014 	ldr	r3, [pc, #20]	; 10758 <call_weak_fn+0x1c>
   10740:	e59f2014 	ldr	r2, [pc, #20]	; 1075c <call_weak_fn+0x20>
   10744:	e08f3003 	add	r3, pc, r3
   10748:	e7932002 	ldr	r2, [r3, r2]
   1074c:	e3520000 	cmp	r2, #0
   10750:	012fff1e 	bxeq	lr
   10754:	eaffff1d 	b	103d0 <__gmon_start__@plt>
   10758:	000108b4 	.word	0x000108b4
   1075c:	00000030 	.word	0x00000030

00010760 <deregister_tm_clones>:
   10760:	e59f301c 	ldr	r3, [pc, #28]	; 10784 <deregister_tm_clones+0x24>
   10764:	e59f001c 	ldr	r0, [pc, #28]	; 10788 <deregister_tm_clones+0x28>
   10768:	e0433000 	sub	r3, r3, r0
   1076c:	e3530006 	cmp	r3, #6
   10770:	912fff1e 	bxls	lr
   10774:	e59f3010 	ldr	r3, [pc, #16]	; 1078c <deregister_tm_clones+0x2c>
   10778:	e3530000 	cmp	r3, #0
   1077c:	012fff1e 	bxeq	lr
   10780:	e12fff13 	bx	r3
   10784:	0002103f 	.word	0x0002103f
   10788:	0002103c 	.word	0x0002103c
   1078c:	00000000 	.word	0x00000000

00010790 <register_tm_clones>:
   10790:	e59f1024 	ldr	r1, [pc, #36]	; 107bc <register_tm_clones+0x2c>
   10794:	e59f0024 	ldr	r0, [pc, #36]	; 107c0 <register_tm_clones+0x30>
   10798:	e0411000 	sub	r1, r1, r0
   1079c:	e1a01141 	asr	r1, r1, #2
   107a0:	e0811fa1 	add	r1, r1, r1, lsr #31
   107a4:	e1b010c1 	asrs	r1, r1, #1
   107a8:	012fff1e 	bxeq	lr
   107ac:	e59f3010 	ldr	r3, [pc, #16]	; 107c4 <register_tm_clones+0x34>
   107b0:	e3530000 	cmp	r3, #0
   107b4:	012fff1e 	bxeq	lr
   107b8:	e12fff13 	bx	r3
   107bc:	0002103c 	.word	0x0002103c
   107c0:	0002103c 	.word	0x0002103c
   107c4:	00000000 	.word	0x00000000

000107c8 <__do_global_dtors_aux>:
   107c8:	e92d4010 	push	{r4, lr}
   107cc:	e59f4018 	ldr	r4, [pc, #24]	; 107ec <__do_global_dtors_aux+0x24>
   107d0:	e5d43000 	ldrb	r3, [r4]
   107d4:	e3530000 	cmp	r3, #0
   107d8:	18bd8010 	popne	{r4, pc}
   107dc:	ebffffdf 	bl	10760 <deregister_tm_clones>
   107e0:	e3a03001 	mov	r3, #1
   107e4:	e5c43000 	strb	r3, [r4]
   107e8:	e8bd8010 	pop	{r4, pc}
   107ec:	00021040 	.word	0x00021040

000107f0 <frame_dummy>:
   107f0:	e59f0028 	ldr	r0, [pc, #40]	; 10820 <frame_dummy+0x30>
   107f4:	e5903000 	ldr	r3, [r0]
   107f8:	e3530000 	cmp	r3, #0
   107fc:	1a000000 	bne	10804 <frame_dummy+0x14>
   10800:	eaffffe2 	b	10790 <register_tm_clones>
   10804:	e59f3018 	ldr	r3, [pc, #24]	; 10824 <frame_dummy+0x34>
   10808:	e3530000 	cmp	r3, #0
   1080c:	0afffffb 	beq	10800 <frame_dummy+0x10>
   10810:	e92d4010 	push	{r4, lr}
   10814:	e12fff33 	blx	r3
   10818:	e8bd4010 	pop	{r4, lr}
   1081c:	eaffffdb 	b	10790 <register_tm_clones>
   10820:	00020f14 	.word	0x00020f14
   10824:	00000000 	.word	0x00000000

00010828 <init_matrixes>:
   10828:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   1082c:	e3a05000 	mov	r5, #0
   10830:	e59f7158 	ldr	r7, [pc, #344]	; 10990 <init_matrixes+0x168>
   10834:	e59f6158 	ldr	r6, [pc, #344]	; 10994 <init_matrixes+0x16c>
   10838:	e59f4158 	ldr	r4, [pc, #344]	; 10998 <init_matrixes+0x170>
   1083c:	e59f8158 	ldr	r8, [pc, #344]	; 1099c <init_matrixes+0x174>
   10840:	ed2d8b10 	vpush	{d8-d15}
   10844:	ed9f8b3d 	vldr	d8, [pc, #244]	; 10940 <init_matrixes+0x118>
   10848:	ed9f9b3e 	vldr	d9, [pc, #248]	; 10948 <init_matrixes+0x120>
   1084c:	ed9feb3f 	vldr	d14, [pc, #252]	; 10950 <init_matrixes+0x128>
   10850:	ed9ffb40 	vldr	d15, [pc, #256]	; 10958 <init_matrixes+0x130>
   10854:	ed9fcb41 	vldr	d12, [pc, #260]	; 10960 <init_matrixes+0x138>
   10858:	ed9fdb42 	vldr	d13, [pc, #264]	; 10968 <init_matrixes+0x140>
   1085c:	ed9fab43 	vldr	d10, [pc, #268]	; 10970 <init_matrixes+0x148>
   10860:	ed9fbb44 	vldr	d11, [pc, #272]	; 10978 <init_matrixes+0x150>
   10864:	e1a02006 	mov	r2, r6
   10868:	e2443a01 	sub	r3, r4, #4096	; 0x1000
   1086c:	eea45b90 	vdup.32	q10, r5
   10870:	eddf0b42 	vldr	d16, [pc, #264]	; 10980 <init_matrixes+0x158>
   10874:	eddf1b43 	vldr	d17, [pc, #268]	; 10988 <init_matrixes+0x160>
   10878:	f26448e0 	vadd.i32	q10, q10, q8
   1087c:	f26428ce 	vadd.i32	q9, q10, q7
   10880:	f3e28c8a 	vmull.u32	q12, d18, d10
   10884:	f3e30c8b 	vmull.u32	q8, d19, d11
   10888:	f3fa8160 	vuzp.32	q12, q8
   1088c:	f3ea8070 	vshr.u32	q12, q8, #22
   10890:	f2e50578 	vshl.s32	q8, q12, #5
   10894:	f26008e8 	vadd.i32	q8, q8, q12
   10898:	f2e30570 	vshl.s32	q8, q8, #3
   1089c:	f26008e8 	vadd.i32	q8, q8, q12
   108a0:	f2e5a570 	vshl.s32	q13, q8, #5
   108a4:	f26008ea 	vadd.i32	q8, q8, q13
   108a8:	f2e50570 	vshl.s32	q8, q8, #5
   108ac:	f26008e8 	vadd.i32	q8, q8, q12
   108b0:	f2e40570 	vshl.s32	q8, q8, #4
   108b4:	f26008e8 	vadd.i32	q8, q8, q12
   108b8:	f36208e0 	vsub.i32	q8, q9, q8
   108bc:	f4430add 	vst1.64	{d16-d17}, [r3 :64]!
   108c0:	e1540003 	cmp	r4, r3
   108c4:	f3e28c8c 	vmull.u32	q12, d18, d12
   108c8:	f3e30c8d 	vmull.u32	q8, d19, d13
   108cc:	f26448c8 	vadd.i32	q10, q10, q4
   108d0:	f3fa8160 	vuzp.32	q12, q8
   108d4:	f3ec8070 	vshr.u32	q12, q8, #20
   108d8:	f2e40578 	vshl.s32	q8, q12, #4
   108dc:	f26008e8 	vadd.i32	q8, q8, q12
   108e0:	f2e4a570 	vshl.s32	q13, q8, #4
   108e4:	f26008ea 	vadd.i32	q8, q8, q13
   108e8:	f2e4a570 	vshl.s32	q13, q8, #4
   108ec:	f26008ea 	vadd.i32	q8, q8, q13
   108f0:	f2e4a570 	vshl.s32	q13, q8, #4
   108f4:	f26008ea 	vadd.i32	q8, q8, q13
   108f8:	f2e40570 	vshl.s32	q8, q8, #4
   108fc:	f26008e8 	vadd.i32	q8, q8, q12
   10900:	f36228e0 	vsub.i32	q9, q9, q8
   10904:	f4422add 	vst1.64	{d18-d19}, [r2 :64]!
   10908:	1affffdb 	bne	1087c <init_matrixes+0x54>
   1090c:	e1a00007 	mov	r0, r7
   10910:	e3a02a01 	mov	r2, #4096	; 0x1000
   10914:	e3a01000 	mov	r1, #0
   10918:	ebfffeb5 	bl	103f4 <memset@plt>
   1091c:	e59f307c 	ldr	r3, [pc, #124]	; 109a0 <init_matrixes+0x178>
   10920:	e0855008 	add	r5, r5, r8
   10924:	e1550003 	cmp	r5, r3
   10928:	e2866a01 	add	r6, r6, #4096	; 0x1000
   1092c:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10930:	e2877a01 	add	r7, r7, #4096	; 0x1000
   10934:	1affffca 	bne	10864 <init_matrixes+0x3c>
   10938:	ecbd8b10 	vpop	{d8-d15}
   1093c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10940:	0fa48444 	.word	0x0fa48444
   10944:	0fa48444 	.word	0x0fa48444
   10948:	0fa48444 	.word	0x0fa48444
   1094c:	0fa48444 	.word	0x0fa48444
   10950:	03e92111 	.word	0x03e92111
   10954:	03e92111 	.word	0x03e92111
   10958:	03e92111 	.word	0x03e92111
   1095c:	03e92111 	.word	0x03e92111
   10960:	c8dfc33f 	.word	0xc8dfc33f
   10964:	c8dfc33f 	.word	0xc8dfc33f
   10968:	c8dfc33f 	.word	0xc8dfc33f
   1096c:	c8dfc33f 	.word	0xc8dfc33f
   10970:	efcf8609 	.word	0xefcf8609
   10974:	efcf8609 	.word	0xefcf8609
   10978:	efcf8609 	.word	0xefcf8609
   1097c:	efcf8609 	.word	0xefcf8609
   10980:	00000000 	.word	0x00000000
   10984:	03e92111 	.word	0x03e92111
   10988:	07d24222 	.word	0x07d24222
   1098c:	0bbb6333 	.word	0x0bbb6333
   10990:	00021048 	.word	0x00021048
   10994:	00421048 	.word	0x00421048
   10998:	00822048 	.word	0x00822048
   1099c:	a4844400 	.word	0xa4844400
   109a0:	11100000 	.word	0x11100000

000109a4 <matrix_multiply_basic>:
   109a4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   109a8:	e59fe064 	ldr	lr, [pc, #100]	; 10a14 <matrix_multiply_basic+0x70>
   109ac:	e59f4064 	ldr	r4, [pc, #100]	; 10a18 <matrix_multiply_basic+0x74>
   109b0:	e59f7064 	ldr	r7, [pc, #100]	; 10a1c <matrix_multiply_basic+0x78>
   109b4:	e28e8501 	add	r8, lr, #4194304	; 0x400000
   109b8:	e59fc060 	ldr	ip, [pc, #96]	; 10a20 <matrix_multiply_basic+0x7c>
   109bc:	e1a0600e 	mov	r6, lr
   109c0:	e1a0500e 	mov	r5, lr
   109c4:	e1a0300c 	mov	r3, ip
   109c8:	e28c0501 	add	r0, ip, #4194304	; 0x400000
   109cc:	e1a01004 	mov	r1, r4
   109d0:	f4652add 	vld1.64	{d18-d19}, [r5 :64]!
   109d4:	f4634adf 	vld1.64	{d20-d21}, [r3 :64]
   109d8:	e2833a01 	add	r3, r3, #4096	; 0x1000
   109dc:	e1530000 	cmp	r3, r0
   109e0:	e5b12004 	ldr	r2, [r1, #4]!
   109e4:	eea02b90 	vdup.32	q8, r2
   109e8:	f26029e4 	vmla.i32	q9, q8, q10
   109ec:	1afffff8 	bne	109d4 <matrix_multiply_basic+0x30>
   109f0:	e28cc010 	add	ip, ip, #16
   109f4:	e15c0007 	cmp	ip, r7
   109f8:	f4462add 	vst1.64	{d18-d19}, [r6 :64]!
   109fc:	1afffff0 	bne	109c4 <matrix_multiply_basic+0x20>
   10a00:	e28eea01 	add	lr, lr, #4096	; 0x1000
   10a04:	e15e0008 	cmp	lr, r8
   10a08:	e2844a01 	add	r4, r4, #4096	; 0x1000
   10a0c:	1affffe9 	bne	109b8 <matrix_multiply_basic+0x14>
   10a10:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10a14:	00021048 	.word	0x00021048
   10a18:	00421044 	.word	0x00421044
   10a1c:	00822048 	.word	0x00822048
   10a20:	00821048 	.word	0x00821048

00010a24 <__libc_csu_init>:
   10a24:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10a28:	e1a07000 	mov	r7, r0
   10a2c:	e59f6048 	ldr	r6, [pc, #72]	; 10a7c <__libc_csu_init+0x58>
   10a30:	e59f5048 	ldr	r5, [pc, #72]	; 10a80 <__libc_csu_init+0x5c>
   10a34:	e08f6006 	add	r6, pc, r6
   10a38:	e08f5005 	add	r5, pc, r5
   10a3c:	e0466005 	sub	r6, r6, r5
   10a40:	e1a08001 	mov	r8, r1
   10a44:	e1a09002 	mov	r9, r2
   10a48:	ebfffe4c 	bl	10380 <_init>
   10a4c:	e1b06146 	asrs	r6, r6, #2
   10a50:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a54:	e3a04000 	mov	r4, #0
   10a58:	e2844001 	add	r4, r4, #1
   10a5c:	e4953004 	ldr	r3, [r5], #4
   10a60:	e1a02009 	mov	r2, r9
   10a64:	e1a01008 	mov	r1, r8
   10a68:	e1a00007 	mov	r0, r7
   10a6c:	e12fff33 	blx	r3
   10a70:	e1560004 	cmp	r6, r4
   10a74:	1afffff7 	bne	10a58 <__libc_csu_init+0x34>
   10a78:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a7c:	000104d4 	.word	0x000104d4
   10a80:	000104cc 	.word	0x000104cc

00010a84 <__libc_csu_fini>:
   10a84:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010a88 <_fini>:
   10a88:	e92d4008 	push	{r3, lr}
   10a8c:	e8bd8008 	pop	{r3, pc}
