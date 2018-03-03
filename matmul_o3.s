
matrix_multiply:     file format elf32-littlearm


Disassembly of section .init:

00010380 <_init>:
   10380:	e92d4008 	push	{r3, lr}
   10384:	eb0000ba 	bl	10674 <call_weak_fn>
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
   10414:	e3a04000 	mov	r4, #0
   10418:	e59fb1d8 	ldr	fp, [pc, #472]	; 105f8 <main+0x1e8>
   1041c:	e59f21d8 	ldr	r2, [pc, #472]	; 105fc <main+0x1ec>
   10420:	e59f31d8 	ldr	r3, [pc, #472]	; 10600 <main+0x1f0>
   10424:	e242a00c 	sub	sl, r2, #12
   10428:	e59f91d4 	ldr	r9, [pc, #468]	; 10604 <main+0x1f4>
   1042c:	e1a0200b 	mov	r2, fp
   10430:	e59f81d0 	ldr	r8, [pc, #464]	; 10608 <main+0x1f8>
   10434:	e59f71d0 	ldr	r7, [pc, #464]	; 1060c <main+0x1fc>
   10438:	e59f61d0 	ldr	r6, [pc, #464]	; 10610 <main+0x200>
   1043c:	e59f51d0 	ldr	r5, [pc, #464]	; 10614 <main+0x204>
   10440:	e1a0b00a 	mov	fp, sl
   10444:	e24dd074 	sub	sp, sp, #116	; 0x74
   10448:	e1a0a003 	mov	sl, r3
   1044c:	e1a03002 	mov	r3, r2
   10450:	e59fe1c0 	ldr	lr, [pc, #448]	; 10618 <main+0x208>
   10454:	e1a0c003 	mov	ip, r3
   10458:	e084e00e 	add	lr, r4, lr
   1045c:	e1a0000b 	mov	r0, fp
   10460:	e58d300c 	str	r3, [sp, #12]
   10464:	e0844009 	add	r4, r4, r9
   10468:	e154000e 	cmp	r4, lr
   1046c:	e0812498 	umull	r2, r1, r8, r4
   10470:	e0823496 	umull	r3, r2, r6, r4
   10474:	e1a01a21 	lsr	r1, r1, #20
   10478:	e1a02b22 	lsr	r2, r2, #22
   1047c:	e0010197 	mul	r1, r7, r1
   10480:	e0020295 	mul	r2, r5, r2
   10484:	e0441001 	sub	r1, r4, r1
   10488:	e0442002 	sub	r2, r4, r2
   1048c:	e5a01004 	str	r1, [r0, #4]!
   10490:	e5ac2004 	str	r2, [ip, #4]!
   10494:	1afffff2 	bne	10464 <main+0x54>
   10498:	e3a02a01 	mov	r2, #4096	; 0x1000
   1049c:	e1a0000a 	mov	r0, sl
   104a0:	e3a01000 	mov	r1, #0
   104a4:	ebffffd2 	bl	103f4 <memset@plt>
   104a8:	e59f216c 	ldr	r2, [pc, #364]	; 1061c <main+0x20c>
   104ac:	e59d300c 	ldr	r3, [sp, #12]
   104b0:	e1540002 	cmp	r4, r2
   104b4:	e28bba01 	add	fp, fp, #4096	; 0x1000
   104b8:	e2833a01 	add	r3, r3, #4096	; 0x1000
   104bc:	e28aaa01 	add	sl, sl, #4096	; 0x1000
   104c0:	1affffe2 	bne	10450 <main+0x40>
   104c4:	e3a04060 	mov	r4, #96	; 0x60
   104c8:	e1a02004 	mov	r2, r4
   104cc:	e3a01000 	mov	r1, #0
   104d0:	e28d0010 	add	r0, sp, #16
   104d4:	ebffffc6 	bl	103f4 <memset@plt>
   104d8:	e3a06000 	mov	r6, #0
   104dc:	e3e03000 	mvn	r3, #0
   104e0:	e58d3000 	str	r3, [sp]
   104e4:	e3a0c061 	mov	ip, #97	; 0x61
   104e8:	e28d1010 	add	r1, sp, #16
   104ec:	e1a02006 	mov	r2, r6
   104f0:	e58d6004 	str	r6, [sp, #4]
   104f4:	e3a00f5b 	mov	r0, #364	; 0x16c
   104f8:	e5cdc038 	strb	ip, [sp, #56]	; 0x38
   104fc:	e58d4014 	str	r4, [sp, #20]
   10500:	ebffffb8 	bl	103e8 <syscall@plt>
   10504:	e59f8114 	ldr	r8, [pc, #276]	; 10620 <main+0x210>
   10508:	e288a501 	add	sl, r8, #4194304	; 0x400000
   1050c:	e1a05000 	mov	r5, r0
   10510:	ebffffb1 	bl	103dc <clock@plt>
   10514:	e1a02006 	mov	r2, r6
   10518:	e59f1104 	ldr	r1, [pc, #260]	; 10624 <main+0x214>
   1051c:	e1a04000 	mov	r4, r0
   10520:	e1a00005 	mov	r0, r5
   10524:	ebffffa3 	bl	103b8 <ioctl@plt>
   10528:	e1a02006 	mov	r2, r6
   1052c:	e1a00005 	mov	r0, r5
   10530:	e3a01b09 	mov	r1, #9216	; 0x2400
   10534:	ebffff9f 	bl	103b8 <ioctl@plt>
   10538:	e59f30bc 	ldr	r3, [pc, #188]	; 105fc <main+0x1ec>
   1053c:	e2830eff 	add	r0, r3, #4080	; 0xff0
   10540:	e2800004 	add	r0, r0, #4
   10544:	e59f70dc 	ldr	r7, [pc, #220]	; 10628 <main+0x218>
   10548:	e2486a01 	sub	r6, r8, #4096	; 0x1000
   1054c:	e2409a01 	sub	r9, r0, #4096	; 0x1000
   10550:	e5961004 	ldr	r1, [r6, #4]
   10554:	e1a03009 	mov	r3, r9
   10558:	e1a02007 	mov	r2, r7
   1055c:	e5b3c004 	ldr	ip, [r3, #4]!
   10560:	e592e000 	ldr	lr, [r2]
   10564:	e1530000 	cmp	r3, r0
   10568:	e2822a01 	add	r2, r2, #4096	; 0x1000
   1056c:	e0211c9e 	mla	r1, lr, ip, r1
   10570:	1afffff9 	bne	1055c <main+0x14c>
   10574:	e5a61004 	str	r1, [r6, #4]!
   10578:	e1560008 	cmp	r6, r8
   1057c:	e2877004 	add	r7, r7, #4
   10580:	1afffff2 	bne	10550 <main+0x140>
   10584:	e2868a01 	add	r8, r6, #4096	; 0x1000
   10588:	e158000a 	cmp	r8, sl
   1058c:	e2830a01 	add	r0, r3, #4096	; 0x1000
   10590:	1affffeb 	bne	10544 <main+0x134>
   10594:	e59f1090 	ldr	r1, [pc, #144]	; 1062c <main+0x21c>
   10598:	e3a02000 	mov	r2, #0
   1059c:	e1a00005 	mov	r0, r5
   105a0:	ebffff84 	bl	103b8 <ioctl@plt>
   105a4:	ebffff8c 	bl	103dc <clock@plt>
   105a8:	ed9f6b10 	vldr	d6, [pc, #64]	; 105f0 <main+0x1e0>
   105ac:	e0404004 	sub	r4, r0, r4
   105b0:	e59f0078 	ldr	r0, [pc, #120]	; 10630 <main+0x220>
   105b4:	ee074a90 	vmov	s15, r4
   105b8:	eeb87be7 	vcvt.f64.s32	d7, s15
   105bc:	ee875b06 	vdiv.f64	d5, d7, d6
   105c0:	ec532b15 	vmov	r2, r3, d5
   105c4:	ebffff75 	bl	103a0 <printf@plt>
   105c8:	e28d1010 	add	r1, sp, #16
   105cc:	e1a00005 	mov	r0, r5
   105d0:	e3a02008 	mov	r2, #8
   105d4:	ebffff74 	bl	103ac <read@plt>
   105d8:	e1cd21d0 	ldrd	r2, [sp, #16]
   105dc:	e59f0050 	ldr	r0, [pc, #80]	; 10634 <main+0x224>
   105e0:	ebffff6e 	bl	103a0 <printf@plt>
   105e4:	e3a00000 	mov	r0, #0
   105e8:	e28dd074 	add	sp, sp, #116	; 0x74
   105ec:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   105f0:	00000000 	.word	0x00000000
   105f4:	412e8480 	.word	0x412e8480
   105f8:	0082103c 	.word	0x0082103c
   105fc:	00421048 	.word	0x00421048
   10600:	00021040 	.word	0x00021040
   10604:	03e92111 	.word	0x03e92111
   10608:	c8dfc33f 	.word	0xc8dfc33f
   1060c:	00146411 	.word	0x00146411
   10610:	efcf8609 	.word	0xefcf8609
   10614:	00445211 	.word	0x00445211
   10618:	a4844400 	.word	0xa4844400
   1061c:	11100000 	.word	0x11100000
   10620:	0002203c 	.word	0x0002203c
   10624:	00002403 	.word	0x00002403
   10628:	00821040 	.word	0x00821040
   1062c:	00002401 	.word	0x00002401
   10630:	0001091c 	.word	0x0001091c
   10634:	00010938 	.word	0x00010938

00010638 <_start>:
   10638:	e3a0b000 	mov	fp, #0
   1063c:	e3a0e000 	mov	lr, #0
   10640:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10644:	e1a0200d 	mov	r2, sp
   10648:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1064c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10650:	e59fc010 	ldr	ip, [pc, #16]	; 10668 <_start+0x30>
   10654:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10658:	e59f000c 	ldr	r0, [pc, #12]	; 1066c <_start+0x34>
   1065c:	e59f300c 	ldr	r3, [pc, #12]	; 10670 <_start+0x38>
   10660:	ebffff57 	bl	103c4 <__libc_start_main@plt>
   10664:	ebffff65 	bl	10400 <abort@plt>
   10668:	0001090c 	.word	0x0001090c
   1066c:	00010410 	.word	0x00010410
   10670:	000108ac 	.word	0x000108ac

00010674 <call_weak_fn>:
   10674:	e59f3014 	ldr	r3, [pc, #20]	; 10690 <call_weak_fn+0x1c>
   10678:	e59f2014 	ldr	r2, [pc, #20]	; 10694 <call_weak_fn+0x20>
   1067c:	e08f3003 	add	r3, pc, r3
   10680:	e7932002 	ldr	r2, [r3, r2]
   10684:	e3520000 	cmp	r2, #0
   10688:	012fff1e 	bxeq	lr
   1068c:	eaffff4f 	b	103d0 <__gmon_start__@plt>
   10690:	0001097c 	.word	0x0001097c
   10694:	00000030 	.word	0x00000030

00010698 <deregister_tm_clones>:
   10698:	e59f301c 	ldr	r3, [pc, #28]	; 106bc <deregister_tm_clones+0x24>
   1069c:	e59f001c 	ldr	r0, [pc, #28]	; 106c0 <deregister_tm_clones+0x28>
   106a0:	e0433000 	sub	r3, r3, r0
   106a4:	e3530006 	cmp	r3, #6
   106a8:	912fff1e 	bxls	lr
   106ac:	e59f3010 	ldr	r3, [pc, #16]	; 106c4 <deregister_tm_clones+0x2c>
   106b0:	e3530000 	cmp	r3, #0
   106b4:	012fff1e 	bxeq	lr
   106b8:	e12fff13 	bx	r3
   106bc:	0002103f 	.word	0x0002103f
   106c0:	0002103c 	.word	0x0002103c
   106c4:	00000000 	.word	0x00000000

000106c8 <register_tm_clones>:
   106c8:	e59f1024 	ldr	r1, [pc, #36]	; 106f4 <register_tm_clones+0x2c>
   106cc:	e59f0024 	ldr	r0, [pc, #36]	; 106f8 <register_tm_clones+0x30>
   106d0:	e0411000 	sub	r1, r1, r0
   106d4:	e1a01141 	asr	r1, r1, #2
   106d8:	e0811fa1 	add	r1, r1, r1, lsr #31
   106dc:	e1b010c1 	asrs	r1, r1, #1
   106e0:	012fff1e 	bxeq	lr
   106e4:	e59f3010 	ldr	r3, [pc, #16]	; 106fc <register_tm_clones+0x34>
   106e8:	e3530000 	cmp	r3, #0
   106ec:	012fff1e 	bxeq	lr
   106f0:	e12fff13 	bx	r3
   106f4:	0002103c 	.word	0x0002103c
   106f8:	0002103c 	.word	0x0002103c
   106fc:	00000000 	.word	0x00000000

00010700 <__do_global_dtors_aux>:
   10700:	e92d4010 	push	{r4, lr}
   10704:	e59f4018 	ldr	r4, [pc, #24]	; 10724 <__do_global_dtors_aux+0x24>
   10708:	e5d43000 	ldrb	r3, [r4]
   1070c:	e3530000 	cmp	r3, #0
   10710:	18bd8010 	popne	{r4, pc}
   10714:	ebffffdf 	bl	10698 <deregister_tm_clones>
   10718:	e3a03001 	mov	r3, #1
   1071c:	e5c43000 	strb	r3, [r4]
   10720:	e8bd8010 	pop	{r4, pc}
   10724:	0002103c 	.word	0x0002103c

00010728 <frame_dummy>:
   10728:	e59f0028 	ldr	r0, [pc, #40]	; 10758 <frame_dummy+0x30>
   1072c:	e5903000 	ldr	r3, [r0]
   10730:	e3530000 	cmp	r3, #0
   10734:	1a000000 	bne	1073c <frame_dummy+0x14>
   10738:	eaffffe2 	b	106c8 <register_tm_clones>
   1073c:	e59f3018 	ldr	r3, [pc, #24]	; 1075c <frame_dummy+0x34>
   10740:	e3530000 	cmp	r3, #0
   10744:	0afffffb 	beq	10738 <frame_dummy+0x10>
   10748:	e92d4010 	push	{r4, lr}
   1074c:	e12fff33 	blx	r3
   10750:	e8bd4010 	pop	{r4, lr}
   10754:	eaffffdb 	b	106c8 <register_tm_clones>
   10758:	00020f14 	.word	0x00020f14
   1075c:	00000000 	.word	0x00000000

00010760 <init_matrixes>:
   10760:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10764:	e3a04000 	mov	r4, #0
   10768:	e59fa0a4 	ldr	sl, [pc, #164]	; 10814 <init_matrixes+0xb4>
   1076c:	e59f30a4 	ldr	r3, [pc, #164]	; 10818 <init_matrixes+0xb8>
   10770:	e1a0200a 	mov	r2, sl
   10774:	e59fb0a0 	ldr	fp, [pc, #160]	; 1081c <init_matrixes+0xbc>
   10778:	e59f90a0 	ldr	r9, [pc, #160]	; 10820 <init_matrixes+0xc0>
   1077c:	e59f80a0 	ldr	r8, [pc, #160]	; 10824 <init_matrixes+0xc4>
   10780:	e59f70a0 	ldr	r7, [pc, #160]	; 10828 <init_matrixes+0xc8>
   10784:	e59f60a0 	ldr	r6, [pc, #160]	; 1082c <init_matrixes+0xcc>
   10788:	e59f50a0 	ldr	r5, [pc, #160]	; 10830 <init_matrixes+0xd0>
   1078c:	e1a0a003 	mov	sl, r3
   10790:	e24dd00c 	sub	sp, sp, #12
   10794:	e1a03002 	mov	r3, r2
   10798:	e59fe094 	ldr	lr, [pc, #148]	; 10834 <init_matrixes+0xd4>
   1079c:	e1a0c003 	mov	ip, r3
   107a0:	e084e00e 	add	lr, r4, lr
   107a4:	e1a0000b 	mov	r0, fp
   107a8:	e58d3004 	str	r3, [sp, #4]
   107ac:	e0844009 	add	r4, r4, r9
   107b0:	e154000e 	cmp	r4, lr
   107b4:	e0812498 	umull	r2, r1, r8, r4
   107b8:	e0823496 	umull	r3, r2, r6, r4
   107bc:	e1a01a21 	lsr	r1, r1, #20
   107c0:	e1a02b22 	lsr	r2, r2, #22
   107c4:	e0010197 	mul	r1, r7, r1
   107c8:	e0020295 	mul	r2, r5, r2
   107cc:	e0441001 	sub	r1, r4, r1
   107d0:	e0442002 	sub	r2, r4, r2
   107d4:	e5a01004 	str	r1, [r0, #4]!
   107d8:	e5ac2004 	str	r2, [ip, #4]!
   107dc:	1afffff2 	bne	107ac <init_matrixes+0x4c>
   107e0:	e3a02a01 	mov	r2, #4096	; 0x1000
   107e4:	e1a0000a 	mov	r0, sl
   107e8:	e3a01000 	mov	r1, #0
   107ec:	ebffff00 	bl	103f4 <memset@plt>
   107f0:	e59f2040 	ldr	r2, [pc, #64]	; 10838 <init_matrixes+0xd8>
   107f4:	e59d3004 	ldr	r3, [sp, #4]
   107f8:	e1540002 	cmp	r4, r2
   107fc:	e28bba01 	add	fp, fp, #4096	; 0x1000
   10800:	e2833a01 	add	r3, r3, #4096	; 0x1000
   10804:	e28aaa01 	add	sl, sl, #4096	; 0x1000
   10808:	1affffe2 	bne	10798 <init_matrixes+0x38>
   1080c:	e28dd00c 	add	sp, sp, #12
   10810:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10814:	0082103c 	.word	0x0082103c
   10818:	00021040 	.word	0x00021040
   1081c:	0042103c 	.word	0x0042103c
   10820:	03e92111 	.word	0x03e92111
   10824:	c8dfc33f 	.word	0xc8dfc33f
   10828:	00146411 	.word	0x00146411
   1082c:	efcf8609 	.word	0xefcf8609
   10830:	00445211 	.word	0x00445211
   10834:	a4844400 	.word	0xa4844400
   10838:	11100000 	.word	0x11100000

0001083c <matrix_multiply_basic>:
   1083c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10840:	e59f6058 	ldr	r6, [pc, #88]	; 108a0 <matrix_multiply_basic+0x64>
   10844:	e59fe058 	ldr	lr, [pc, #88]	; 108a4 <matrix_multiply_basic+0x68>
   10848:	e2868501 	add	r8, r6, #4194304	; 0x400000
   1084c:	e59f5054 	ldr	r5, [pc, #84]	; 108a8 <matrix_multiply_basic+0x6c>
   10850:	e2464a01 	sub	r4, r6, #4096	; 0x1000
   10854:	e24e7a01 	sub	r7, lr, #4096	; 0x1000
   10858:	e5941004 	ldr	r1, [r4, #4]
   1085c:	e1a03007 	mov	r3, r7
   10860:	e1a02005 	mov	r2, r5
   10864:	e5b30004 	ldr	r0, [r3, #4]!
   10868:	e592c000 	ldr	ip, [r2]
   1086c:	e153000e 	cmp	r3, lr
   10870:	e2822a01 	add	r2, r2, #4096	; 0x1000
   10874:	e021109c 	mla	r1, ip, r0, r1
   10878:	1afffff9 	bne	10864 <matrix_multiply_basic+0x28>
   1087c:	e5a41004 	str	r1, [r4, #4]!
   10880:	e1540006 	cmp	r4, r6
   10884:	e2855004 	add	r5, r5, #4
   10888:	1afffff2 	bne	10858 <matrix_multiply_basic+0x1c>
   1088c:	e2846a01 	add	r6, r4, #4096	; 0x1000
   10890:	e1560008 	cmp	r6, r8
   10894:	e283ea01 	add	lr, r3, #4096	; 0x1000
   10898:	1affffeb 	bne	1084c <matrix_multiply_basic+0x10>
   1089c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   108a0:	0002203c 	.word	0x0002203c
   108a4:	0042203c 	.word	0x0042203c
   108a8:	00821040 	.word	0x00821040

000108ac <__libc_csu_init>:
   108ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   108b0:	e1a07000 	mov	r7, r0
   108b4:	e59f6048 	ldr	r6, [pc, #72]	; 10904 <__libc_csu_init+0x58>
   108b8:	e59f5048 	ldr	r5, [pc, #72]	; 10908 <__libc_csu_init+0x5c>
   108bc:	e08f6006 	add	r6, pc, r6
   108c0:	e08f5005 	add	r5, pc, r5
   108c4:	e0466005 	sub	r6, r6, r5
   108c8:	e1a08001 	mov	r8, r1
   108cc:	e1a09002 	mov	r9, r2
   108d0:	ebfffeaa 	bl	10380 <_init>
   108d4:	e1b06146 	asrs	r6, r6, #2
   108d8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   108dc:	e3a04000 	mov	r4, #0
   108e0:	e2844001 	add	r4, r4, #1
   108e4:	e4953004 	ldr	r3, [r5], #4
   108e8:	e1a02009 	mov	r2, r9
   108ec:	e1a01008 	mov	r1, r8
   108f0:	e1a00007 	mov	r0, r7
   108f4:	e12fff33 	blx	r3
   108f8:	e1560004 	cmp	r6, r4
   108fc:	1afffff7 	bne	108e0 <__libc_csu_init+0x34>
   10900:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10904:	0001064c 	.word	0x0001064c
   10908:	00010644 	.word	0x00010644

0001090c <__libc_csu_fini>:
   1090c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010910 <_fini>:
   10910:	e92d4008 	push	{r3, lr}
   10914:	e8bd8008 	pop	{r3, pc}
