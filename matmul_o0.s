
matrix_multiply:     file format elf32-littlearm


Disassembly of section .init:

00010380 <_init>:
   10380:	e92d4008 	push	{r3, lr}
   10384:	eb000030 	bl	1044c <call_weak_fn>
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

00010410 <_start>:
   10410:	e3a0b000 	mov	fp, #0
   10414:	e3a0e000 	mov	lr, #0
   10418:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1041c:	e1a0200d 	mov	r2, sp
   10420:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10424:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10428:	e59fc010 	ldr	ip, [pc, #16]	; 10440 <_start+0x30>
   1042c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10430:	e59f000c 	ldr	r0, [pc, #12]	; 10444 <_start+0x34>
   10434:	e59f300c 	ldr	r3, [pc, #12]	; 10448 <_start+0x38>
   10438:	ebffffe1 	bl	103c4 <__libc_start_main@plt>
   1043c:	ebffffef 	bl	10400 <abort@plt>
   10440:	00010a64 	.word	0x00010a64
   10444:	0001096c 	.word	0x0001096c
   10448:	00010a04 	.word	0x00010a04

0001044c <call_weak_fn>:
   1044c:	e59f3014 	ldr	r3, [pc, #20]	; 10468 <call_weak_fn+0x1c>
   10450:	e59f2014 	ldr	r2, [pc, #20]	; 1046c <call_weak_fn+0x20>
   10454:	e08f3003 	add	r3, pc, r3
   10458:	e7932002 	ldr	r2, [r3, r2]
   1045c:	e3520000 	cmp	r2, #0
   10460:	012fff1e 	bxeq	lr
   10464:	eaffffd9 	b	103d0 <__gmon_start__@plt>
   10468:	00010ba4 	.word	0x00010ba4
   1046c:	00000030 	.word	0x00000030

00010470 <deregister_tm_clones>:
   10470:	e59f301c 	ldr	r3, [pc, #28]	; 10494 <deregister_tm_clones+0x24>
   10474:	e59f001c 	ldr	r0, [pc, #28]	; 10498 <deregister_tm_clones+0x28>
   10478:	e0433000 	sub	r3, r3, r0
   1047c:	e3530006 	cmp	r3, #6
   10480:	912fff1e 	bxls	lr
   10484:	e59f3010 	ldr	r3, [pc, #16]	; 1049c <deregister_tm_clones+0x2c>
   10488:	e3530000 	cmp	r3, #0
   1048c:	012fff1e 	bxeq	lr
   10490:	e12fff13 	bx	r3
   10494:	0002103f 	.word	0x0002103f
   10498:	0002103c 	.word	0x0002103c
   1049c:	00000000 	.word	0x00000000

000104a0 <register_tm_clones>:
   104a0:	e59f1024 	ldr	r1, [pc, #36]	; 104cc <register_tm_clones+0x2c>
   104a4:	e59f0024 	ldr	r0, [pc, #36]	; 104d0 <register_tm_clones+0x30>
   104a8:	e0411000 	sub	r1, r1, r0
   104ac:	e1a01141 	asr	r1, r1, #2
   104b0:	e0811fa1 	add	r1, r1, r1, lsr #31
   104b4:	e1b010c1 	asrs	r1, r1, #1
   104b8:	012fff1e 	bxeq	lr
   104bc:	e59f3010 	ldr	r3, [pc, #16]	; 104d4 <register_tm_clones+0x34>
   104c0:	e3530000 	cmp	r3, #0
   104c4:	012fff1e 	bxeq	lr
   104c8:	e12fff13 	bx	r3
   104cc:	0002103c 	.word	0x0002103c
   104d0:	0002103c 	.word	0x0002103c
   104d4:	00000000 	.word	0x00000000

000104d8 <__do_global_dtors_aux>:
   104d8:	e92d4010 	push	{r4, lr}
   104dc:	e59f4018 	ldr	r4, [pc, #24]	; 104fc <__do_global_dtors_aux+0x24>
   104e0:	e5d43000 	ldrb	r3, [r4]
   104e4:	e3530000 	cmp	r3, #0
   104e8:	18bd8010 	popne	{r4, pc}
   104ec:	ebffffdf 	bl	10470 <deregister_tm_clones>
   104f0:	e3a03001 	mov	r3, #1
   104f4:	e5c43000 	strb	r3, [r4]
   104f8:	e8bd8010 	pop	{r4, pc}
   104fc:	0002103c 	.word	0x0002103c

00010500 <frame_dummy>:
   10500:	e59f0028 	ldr	r0, [pc, #40]	; 10530 <frame_dummy+0x30>
   10504:	e5903000 	ldr	r3, [r0]
   10508:	e3530000 	cmp	r3, #0
   1050c:	1a000000 	bne	10514 <frame_dummy+0x14>
   10510:	eaffffe2 	b	104a0 <register_tm_clones>
   10514:	e59f3018 	ldr	r3, [pc, #24]	; 10534 <frame_dummy+0x34>
   10518:	e3530000 	cmp	r3, #0
   1051c:	0afffffb 	beq	10510 <frame_dummy+0x10>
   10520:	e92d4010 	push	{r4, lr}
   10524:	e12fff33 	blx	r3
   10528:	e8bd4010 	pop	{r4, lr}
   1052c:	eaffffdb 	b	104a0 <register_tm_clones>
   10530:	00020f14 	.word	0x00020f14
   10534:	00000000 	.word	0x00000000

00010538 <setup_perf>:
   10538:	e92d4800 	push	{fp, lr}
   1053c:	e28db004 	add	fp, sp, #4
   10540:	e24dd078 	sub	sp, sp, #120	; 0x78
   10544:	e50b0068 	str	r0, [fp, #-104]	; 0xffffff98
   10548:	e14b27f4 	strd	r2, [fp, #-116]	; 0xffffff8c
   1054c:	e24b3064 	sub	r3, fp, #100	; 0x64
   10550:	e3a02060 	mov	r2, #96	; 0x60
   10554:	e3a01000 	mov	r1, #0
   10558:	e1a00003 	mov	r0, r3
   1055c:	ebffffa4 	bl	103f4 <memset@plt>
   10560:	e51b3068 	ldr	r3, [fp, #-104]	; 0xffffff98
   10564:	e50b3064 	str	r3, [fp, #-100]	; 0xffffff9c
   10568:	e3a03060 	mov	r3, #96	; 0x60
   1056c:	e50b3060 	str	r3, [fp, #-96]	; 0xffffffa0
   10570:	e14b27d4 	ldrd	r2, [fp, #-116]	; 0xffffff8c
   10574:	e14b25fc 	strd	r2, [fp, #-92]	; 0xffffffa4
   10578:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   1057c:	e3833001 	orr	r3, r3, #1
   10580:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   10584:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   10588:	e3833020 	orr	r3, r3, #32
   1058c:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   10590:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   10594:	e3833040 	orr	r3, r3, #64	; 0x40
   10598:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   1059c:	e24b1064 	sub	r1, fp, #100	; 0x64
   105a0:	e3a03000 	mov	r3, #0
   105a4:	e58d3004 	str	r3, [sp, #4]
   105a8:	e3e03000 	mvn	r3, #0
   105ac:	e58d3000 	str	r3, [sp]
   105b0:	e3e03000 	mvn	r3, #0
   105b4:	e3a02000 	mov	r2, #0
   105b8:	e3a00f5b 	mov	r0, #364	; 0x16c
   105bc:	ebffff89 	bl	103e8 <syscall@plt>
   105c0:	e1a03000 	mov	r3, r0
   105c4:	e1a00003 	mov	r0, r3
   105c8:	e24bd004 	sub	sp, fp, #4
   105cc:	e8bd8800 	pop	{fp, pc}

000105d0 <setup_perf_cache>:
   105d0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
   105d4:	e28db014 	add	fp, sp, #20
   105d8:	e24dd078 	sub	sp, sp, #120	; 0x78
   105dc:	e14b07fc 	strd	r0, [fp, #-124]	; 0xffffff84
   105e0:	e14b28f4 	strd	r2, [fp, #-132]	; 0xffffff7c
   105e4:	e24b3074 	sub	r3, fp, #116	; 0x74
   105e8:	e3a02060 	mov	r2, #96	; 0x60
   105ec:	e3a01000 	mov	r1, #0
   105f0:	e1a00003 	mov	r0, r3
   105f4:	ebffff7e 	bl	103f4 <memset@plt>
   105f8:	e3a03003 	mov	r3, #3
   105fc:	e50b3074 	str	r3, [fp, #-116]	; 0xffffff8c
   10600:	e3a03060 	mov	r3, #96	; 0x60
   10604:	e50b3070 	str	r3, [fp, #-112]	; 0xffffff90
   10608:	e14b28d4 	ldrd	r2, [fp, #-132]	; 0xffffff7c
   1060c:	e1a07403 	lsl	r7, r3, #8
   10610:	e1877c22 	orr	r7, r7, r2, lsr #24
   10614:	e1a06402 	lsl	r6, r2, #8
   10618:	e14b27dc 	ldrd	r2, [fp, #-124]	; 0xffffff84
   1061c:	e1860002 	orr	r0, r6, r2
   10620:	e1871003 	orr	r1, r7, r3
   10624:	e1cb20d4 	ldrd	r2, [fp, #4]
   10628:	e1a05803 	lsl	r5, r3, #16
   1062c:	e1855822 	orr	r5, r5, r2, lsr #16
   10630:	e1a04802 	lsl	r4, r2, #16
   10634:	e1802004 	orr	r2, r0, r4
   10638:	e1813005 	orr	r3, r1, r5
   1063c:	e14b26fc 	strd	r2, [fp, #-108]	; 0xffffff94
   10640:	e55b304c 	ldrb	r3, [fp, #-76]	; 0xffffffb4
   10644:	e3833001 	orr	r3, r3, #1
   10648:	e54b304c 	strb	r3, [fp, #-76]	; 0xffffffb4
   1064c:	e55b304c 	ldrb	r3, [fp, #-76]	; 0xffffffb4
   10650:	e3833020 	orr	r3, r3, #32
   10654:	e54b304c 	strb	r3, [fp, #-76]	; 0xffffffb4
   10658:	e55b304c 	ldrb	r3, [fp, #-76]	; 0xffffffb4
   1065c:	e3833040 	orr	r3, r3, #64	; 0x40
   10660:	e54b304c 	strb	r3, [fp, #-76]	; 0xffffffb4
   10664:	e24b1074 	sub	r1, fp, #116	; 0x74
   10668:	e3a03000 	mov	r3, #0
   1066c:	e58d3004 	str	r3, [sp, #4]
   10670:	e3e03000 	mvn	r3, #0
   10674:	e58d3000 	str	r3, [sp]
   10678:	e3e03000 	mvn	r3, #0
   1067c:	e3a02000 	mov	r2, #0
   10680:	e3a00f5b 	mov	r0, #364	; 0x16c
   10684:	ebffff57 	bl	103e8 <syscall@plt>
   10688:	e1a03000 	mov	r3, r0
   1068c:	e1a00003 	mov	r0, r3
   10690:	e24bd014 	sub	sp, fp, #20
   10694:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}

00010698 <start_perf>:
   10698:	e92d4800 	push	{fp, lr}
   1069c:	e28db004 	add	fp, sp, #4
   106a0:	e24dd008 	sub	sp, sp, #8
   106a4:	e50b0008 	str	r0, [fp, #-8]
   106a8:	e3a02000 	mov	r2, #0
   106ac:	e59f1020 	ldr	r1, [pc, #32]	; 106d4 <start_perf+0x3c>
   106b0:	e51b0008 	ldr	r0, [fp, #-8]
   106b4:	ebffff3f 	bl	103b8 <ioctl@plt>
   106b8:	e3a02000 	mov	r2, #0
   106bc:	e3a01b09 	mov	r1, #9216	; 0x2400
   106c0:	e51b0008 	ldr	r0, [fp, #-8]
   106c4:	ebffff3b 	bl	103b8 <ioctl@plt>
   106c8:	e1a00000 	nop			; (mov r0, r0)
   106cc:	e24bd004 	sub	sp, fp, #4
   106d0:	e8bd8800 	pop	{fp, pc}
   106d4:	00002403 	.word	0x00002403

000106d8 <end_perf>:
   106d8:	e92d4800 	push	{fp, lr}
   106dc:	e28db004 	add	fp, sp, #4
   106e0:	e24dd008 	sub	sp, sp, #8
   106e4:	e50b0008 	str	r0, [fp, #-8]
   106e8:	e3a02000 	mov	r2, #0
   106ec:	e59f1010 	ldr	r1, [pc, #16]	; 10704 <end_perf+0x2c>
   106f0:	e51b0008 	ldr	r0, [fp, #-8]
   106f4:	ebffff2f 	bl	103b8 <ioctl@plt>
   106f8:	e1a00000 	nop			; (mov r0, r0)
   106fc:	e24bd004 	sub	sp, fp, #4
   10700:	e8bd8800 	pop	{fp, pc}
   10704:	00002401 	.word	0x00002401

00010708 <print_perf>:
   10708:	e92d4800 	push	{fp, lr}
   1070c:	e28db004 	add	fp, sp, #4
   10710:	e24dd010 	sub	sp, sp, #16
   10714:	e50b0010 	str	r0, [fp, #-16]
   10718:	e24b300c 	sub	r3, fp, #12
   1071c:	e3a02008 	mov	r2, #8
   10720:	e1a01003 	mov	r1, r3
   10724:	e51b0010 	ldr	r0, [fp, #-16]
   10728:	ebffff1f 	bl	103ac <read@plt>
   1072c:	e14b20dc 	ldrd	r2, [fp, #-12]
   10730:	e59f000c 	ldr	r0, [pc, #12]	; 10744 <print_perf+0x3c>
   10734:	ebffff19 	bl	103a0 <printf@plt>
   10738:	e1a00000 	nop			; (mov r0, r0)
   1073c:	e24bd004 	sub	sp, fp, #4
   10740:	e8bd8800 	pop	{fp, pc}
   10744:	00010a74 	.word	0x00010a74

00010748 <init_matrixes>:
   10748:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1074c:	e28db000 	add	fp, sp, #0
   10750:	e24dd014 	sub	sp, sp, #20
   10754:	e3a03000 	mov	r3, #0
   10758:	e50b3010 	str	r3, [fp, #-16]
   1075c:	e3a03000 	mov	r3, #0
   10760:	e50b3008 	str	r3, [fp, #-8]
   10764:	ea000032 	b	10834 <init_matrixes+0xec>
   10768:	e3a03000 	mov	r3, #0
   1076c:	e50b300c 	str	r3, [fp, #-12]
   10770:	ea000029 	b	1081c <init_matrixes+0xd4>
   10774:	e51b2010 	ldr	r2, [fp, #-16]
   10778:	e59f30d0 	ldr	r3, [pc, #208]	; 10850 <init_matrixes+0x108>
   1077c:	e0823003 	add	r3, r2, r3
   10780:	e50b3010 	str	r3, [fp, #-16]
   10784:	e51b2010 	ldr	r2, [fp, #-16]
   10788:	e59f30c4 	ldr	r3, [pc, #196]	; 10854 <init_matrixes+0x10c>
   1078c:	e0831293 	umull	r1, r3, r3, r2
   10790:	e1a03a23 	lsr	r3, r3, #20
   10794:	e59f10bc 	ldr	r1, [pc, #188]	; 10858 <init_matrixes+0x110>
   10798:	e0030391 	mul	r3, r1, r3
   1079c:	e0423003 	sub	r3, r2, r3
   107a0:	e1a00003 	mov	r0, r3
   107a4:	e59f10b0 	ldr	r1, [pc, #176]	; 1085c <init_matrixes+0x114>
   107a8:	e51b3008 	ldr	r3, [fp, #-8]
   107ac:	e1a02503 	lsl	r2, r3, #10
   107b0:	e51b300c 	ldr	r3, [fp, #-12]
   107b4:	e0823003 	add	r3, r2, r3
   107b8:	e7810103 	str	r0, [r1, r3, lsl #2]
   107bc:	e51b2010 	ldr	r2, [fp, #-16]
   107c0:	e59f3098 	ldr	r3, [pc, #152]	; 10860 <init_matrixes+0x118>
   107c4:	e0831293 	umull	r1, r3, r3, r2
   107c8:	e1a03b23 	lsr	r3, r3, #22
   107cc:	e59f1090 	ldr	r1, [pc, #144]	; 10864 <init_matrixes+0x11c>
   107d0:	e0030391 	mul	r3, r1, r3
   107d4:	e0423003 	sub	r3, r2, r3
   107d8:	e1a00003 	mov	r0, r3
   107dc:	e59f1084 	ldr	r1, [pc, #132]	; 10868 <init_matrixes+0x120>
   107e0:	e51b3008 	ldr	r3, [fp, #-8]
   107e4:	e1a02503 	lsl	r2, r3, #10
   107e8:	e51b300c 	ldr	r3, [fp, #-12]
   107ec:	e0823003 	add	r3, r2, r3
   107f0:	e7810103 	str	r0, [r1, r3, lsl #2]
   107f4:	e59f1070 	ldr	r1, [pc, #112]	; 1086c <init_matrixes+0x124>
   107f8:	e51b3008 	ldr	r3, [fp, #-8]
   107fc:	e1a02503 	lsl	r2, r3, #10
   10800:	e51b300c 	ldr	r3, [fp, #-12]
   10804:	e0823003 	add	r3, r2, r3
   10808:	e3a02000 	mov	r2, #0
   1080c:	e7812103 	str	r2, [r1, r3, lsl #2]
   10810:	e51b300c 	ldr	r3, [fp, #-12]
   10814:	e2833001 	add	r3, r3, #1
   10818:	e50b300c 	str	r3, [fp, #-12]
   1081c:	e51b300c 	ldr	r3, [fp, #-12]
   10820:	e3530b01 	cmp	r3, #1024	; 0x400
   10824:	baffffd2 	blt	10774 <init_matrixes+0x2c>
   10828:	e51b3008 	ldr	r3, [fp, #-8]
   1082c:	e2833001 	add	r3, r3, #1
   10830:	e50b3008 	str	r3, [fp, #-8]
   10834:	e51b3008 	ldr	r3, [fp, #-8]
   10838:	e3530b01 	cmp	r3, #1024	; 0x400
   1083c:	baffffc9 	blt	10768 <init_matrixes+0x20>
   10840:	e1a00000 	nop			; (mov r0, r0)
   10844:	e28bd000 	add	sp, fp, #0
   10848:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1084c:	e12fff1e 	bx	lr
   10850:	03e92111 	.word	0x03e92111
   10854:	c8dfc33f 	.word	0xc8dfc33f
   10858:	00146411 	.word	0x00146411
   1085c:	00021040 	.word	0x00021040
   10860:	efcf8609 	.word	0xefcf8609
   10864:	00445211 	.word	0x00445211
   10868:	00421040 	.word	0x00421040
   1086c:	00821040 	.word	0x00821040

00010870 <matrix_multiply_basic>:
   10870:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10874:	e28db000 	add	fp, sp, #0
   10878:	e24dd014 	sub	sp, sp, #20
   1087c:	e3a03000 	mov	r3, #0
   10880:	e50b3008 	str	r3, [fp, #-8]
   10884:	ea00002e 	b	10944 <matrix_multiply_basic+0xd4>
   10888:	e3a03000 	mov	r3, #0
   1088c:	e50b300c 	str	r3, [fp, #-12]
   10890:	ea000025 	b	1092c <matrix_multiply_basic+0xbc>
   10894:	e3a03000 	mov	r3, #0
   10898:	e50b3010 	str	r3, [fp, #-16]
   1089c:	ea00001c 	b	10914 <matrix_multiply_basic+0xa4>
   108a0:	e59f10b8 	ldr	r1, [pc, #184]	; 10960 <matrix_multiply_basic+0xf0>
   108a4:	e51b3008 	ldr	r3, [fp, #-8]
   108a8:	e1a02503 	lsl	r2, r3, #10
   108ac:	e51b300c 	ldr	r3, [fp, #-12]
   108b0:	e0823003 	add	r3, r2, r3
   108b4:	e7912103 	ldr	r2, [r1, r3, lsl #2]
   108b8:	e59f00a4 	ldr	r0, [pc, #164]	; 10964 <matrix_multiply_basic+0xf4>
   108bc:	e51b3008 	ldr	r3, [fp, #-8]
   108c0:	e1a01503 	lsl	r1, r3, #10
   108c4:	e51b3010 	ldr	r3, [fp, #-16]
   108c8:	e0813003 	add	r3, r1, r3
   108cc:	e7903103 	ldr	r3, [r0, r3, lsl #2]
   108d0:	e59fc090 	ldr	ip, [pc, #144]	; 10968 <matrix_multiply_basic+0xf8>
   108d4:	e51b1010 	ldr	r1, [fp, #-16]
   108d8:	e1a00501 	lsl	r0, r1, #10
   108dc:	e51b100c 	ldr	r1, [fp, #-12]
   108e0:	e0801001 	add	r1, r0, r1
   108e4:	e79c1101 	ldr	r1, [ip, r1, lsl #2]
   108e8:	e0030391 	mul	r3, r1, r3
   108ec:	e0822003 	add	r2, r2, r3
   108f0:	e59f0068 	ldr	r0, [pc, #104]	; 10960 <matrix_multiply_basic+0xf0>
   108f4:	e51b3008 	ldr	r3, [fp, #-8]
   108f8:	e1a01503 	lsl	r1, r3, #10
   108fc:	e51b300c 	ldr	r3, [fp, #-12]
   10900:	e0813003 	add	r3, r1, r3
   10904:	e7802103 	str	r2, [r0, r3, lsl #2]
   10908:	e51b3010 	ldr	r3, [fp, #-16]
   1090c:	e2833001 	add	r3, r3, #1
   10910:	e50b3010 	str	r3, [fp, #-16]
   10914:	e51b3010 	ldr	r3, [fp, #-16]
   10918:	e3530b01 	cmp	r3, #1024	; 0x400
   1091c:	baffffdf 	blt	108a0 <matrix_multiply_basic+0x30>
   10920:	e51b300c 	ldr	r3, [fp, #-12]
   10924:	e2833001 	add	r3, r3, #1
   10928:	e50b300c 	str	r3, [fp, #-12]
   1092c:	e51b300c 	ldr	r3, [fp, #-12]
   10930:	e3530b01 	cmp	r3, #1024	; 0x400
   10934:	baffffd6 	blt	10894 <matrix_multiply_basic+0x24>
   10938:	e51b3008 	ldr	r3, [fp, #-8]
   1093c:	e2833001 	add	r3, r3, #1
   10940:	e50b3008 	str	r3, [fp, #-8]
   10944:	e51b3008 	ldr	r3, [fp, #-8]
   10948:	e3530b01 	cmp	r3, #1024	; 0x400
   1094c:	baffffcd 	blt	10888 <matrix_multiply_basic+0x18>
   10950:	e1a00000 	nop			; (mov r0, r0)
   10954:	e28bd000 	add	sp, fp, #0
   10958:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1095c:	e12fff1e 	bx	lr
   10960:	00821040 	.word	0x00821040
   10964:	00021040 	.word	0x00021040
   10968:	00421040 	.word	0x00421040

0001096c <main>:
   1096c:	e92d4800 	push	{fp, lr}
   10970:	e28db004 	add	fp, sp, #4
   10974:	e24dd010 	sub	sp, sp, #16
   10978:	ebffff72 	bl	10748 <init_matrixes>
   1097c:	e3a02000 	mov	r2, #0
   10980:	e3a03000 	mov	r3, #0
   10984:	e3a00000 	mov	r0, #0
   10988:	ebfffeea 	bl	10538 <setup_perf>
   1098c:	e50b0008 	str	r0, [fp, #-8]
   10990:	ebfffe91 	bl	103dc <clock@plt>
   10994:	e50b000c 	str	r0, [fp, #-12]
   10998:	e51b0008 	ldr	r0, [fp, #-8]
   1099c:	ebffff3d 	bl	10698 <start_perf>
   109a0:	ebffffb2 	bl	10870 <matrix_multiply_basic>
   109a4:	e51b0008 	ldr	r0, [fp, #-8]
   109a8:	ebffff4a 	bl	106d8 <end_perf>
   109ac:	ebfffe8a 	bl	103dc <clock@plt>
   109b0:	e50b0010 	str	r0, [fp, #-16]
   109b4:	e51b2010 	ldr	r2, [fp, #-16]
   109b8:	e51b300c 	ldr	r3, [fp, #-12]
   109bc:	e0423003 	sub	r3, r2, r3
   109c0:	ee073a90 	vmov	s15, r3
   109c4:	eeb87be7 	vcvt.f64.s32	d7, s15
   109c8:	ed9f6b0a 	vldr	d6, [pc, #40]	; 109f8 <main+0x8c>
   109cc:	ee875b06 	vdiv.f64	d5, d7, d6
   109d0:	ec532b15 	vmov	r2, r3, d5
   109d4:	e59f0024 	ldr	r0, [pc, #36]	; 10a00 <main+0x94>
   109d8:	ebfffe70 	bl	103a0 <printf@plt>
   109dc:	e51b0008 	ldr	r0, [fp, #-8]
   109e0:	ebffff48 	bl	10708 <print_perf>
   109e4:	e3a03000 	mov	r3, #0
   109e8:	e1a00003 	mov	r0, r3
   109ec:	e24bd004 	sub	sp, fp, #4
   109f0:	e8bd8800 	pop	{fp, pc}
   109f4:	e1a00000 	nop			; (mov r0, r0)
   109f8:	00000000 	.word	0x00000000
   109fc:	412e8480 	.word	0x412e8480
   10a00:	00010a98 	.word	0x00010a98

00010a04 <__libc_csu_init>:
   10a04:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10a08:	e1a07000 	mov	r7, r0
   10a0c:	e59f6048 	ldr	r6, [pc, #72]	; 10a5c <__libc_csu_init+0x58>
   10a10:	e59f5048 	ldr	r5, [pc, #72]	; 10a60 <__libc_csu_init+0x5c>
   10a14:	e08f6006 	add	r6, pc, r6
   10a18:	e08f5005 	add	r5, pc, r5
   10a1c:	e0466005 	sub	r6, r6, r5
   10a20:	e1a08001 	mov	r8, r1
   10a24:	e1a09002 	mov	r9, r2
   10a28:	ebfffe54 	bl	10380 <_init>
   10a2c:	e1b06146 	asrs	r6, r6, #2
   10a30:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a34:	e3a04000 	mov	r4, #0
   10a38:	e2844001 	add	r4, r4, #1
   10a3c:	e4953004 	ldr	r3, [r5], #4
   10a40:	e1a02009 	mov	r2, r9
   10a44:	e1a01008 	mov	r1, r8
   10a48:	e1a00007 	mov	r0, r7
   10a4c:	e12fff33 	blx	r3
   10a50:	e1560004 	cmp	r6, r4
   10a54:	1afffff7 	bne	10a38 <__libc_csu_init+0x34>
   10a58:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a5c:	000104f4 	.word	0x000104f4
   10a60:	000104ec 	.word	0x000104ec

00010a64 <__libc_csu_fini>:
   10a64:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010a68 <_fini>:
   10a68:	e92d4008 	push	{r3, lr}
   10a6c:	e8bd8008 	pop	{r3, pc}
