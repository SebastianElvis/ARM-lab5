
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
   10440:	00010a5c 	.word	0x00010a5c
   10444:	00010964 	.word	0x00010964
   10448:	000109fc 	.word	0x000109fc

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
   105d0:	e92d4800 	push	{fp, lr}
   105d4:	e28db004 	add	fp, sp, #4
   105d8:	e24dd078 	sub	sp, sp, #120	; 0x78
   105dc:	e14b06fc 	strd	r0, [fp, #-108]	; 0xffffff94
   105e0:	e14b27f4 	strd	r2, [fp, #-116]	; 0xffffff8c
   105e4:	e24b3064 	sub	r3, fp, #100	; 0x64
   105e8:	e3a02060 	mov	r2, #96	; 0x60
   105ec:	e3a01000 	mov	r1, #0
   105f0:	e1a00003 	mov	r0, r3
   105f4:	ebffff7e 	bl	103f4 <memset@plt>
   105f8:	e3a03003 	mov	r3, #3
   105fc:	e50b3064 	str	r3, [fp, #-100]	; 0xffffff9c
   10600:	e3a03060 	mov	r3, #96	; 0x60
   10604:	e50b3060 	str	r3, [fp, #-96]	; 0xffffffa0
   10608:	ed5b0b1d 	vldr	d16, [fp, #-116]	; 0xffffff8c
   1060c:	f2c815b0 	vshl.s64	d17, d16, #8
   10610:	ec510b31 	vmov	r0, r1, d17
   10614:	e14b26dc 	ldrd	r2, [fp, #-108]	; 0xffffff94
   10618:	e1822000 	orr	r2, r2, r0
   1061c:	e1833001 	orr	r3, r3, r1
   10620:	eddb0b01 	vldr	d16, [fp, #4]
   10624:	f2d015b0 	vshl.s64	d17, d16, #16
   10628:	ec510b31 	vmov	r0, r1, d17
   1062c:	e1822000 	orr	r2, r2, r0
   10630:	e1833001 	orr	r3, r3, r1
   10634:	e14b25fc 	strd	r2, [fp, #-92]	; 0xffffffa4
   10638:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   1063c:	e3833001 	orr	r3, r3, #1
   10640:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   10644:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   10648:	e3833020 	orr	r3, r3, #32
   1064c:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   10650:	e55b303c 	ldrb	r3, [fp, #-60]	; 0xffffffc4
   10654:	e3833040 	orr	r3, r3, #64	; 0x40
   10658:	e54b303c 	strb	r3, [fp, #-60]	; 0xffffffc4
   1065c:	e24b1064 	sub	r1, fp, #100	; 0x64
   10660:	e3a03000 	mov	r3, #0
   10664:	e58d3004 	str	r3, [sp, #4]
   10668:	e3e03000 	mvn	r3, #0
   1066c:	e58d3000 	str	r3, [sp]
   10670:	e3e03000 	mvn	r3, #0
   10674:	e3a02000 	mov	r2, #0
   10678:	e3a00f5b 	mov	r0, #364	; 0x16c
   1067c:	ebffff59 	bl	103e8 <syscall@plt>
   10680:	e1a03000 	mov	r3, r0
   10684:	e1a00003 	mov	r0, r3
   10688:	e24bd004 	sub	sp, fp, #4
   1068c:	e8bd8800 	pop	{fp, pc}

00010690 <start_perf>:
   10690:	e92d4800 	push	{fp, lr}
   10694:	e28db004 	add	fp, sp, #4
   10698:	e24dd008 	sub	sp, sp, #8
   1069c:	e50b0008 	str	r0, [fp, #-8]
   106a0:	e3a02000 	mov	r2, #0
   106a4:	e59f1020 	ldr	r1, [pc, #32]	; 106cc <start_perf+0x3c>
   106a8:	e51b0008 	ldr	r0, [fp, #-8]
   106ac:	ebffff41 	bl	103b8 <ioctl@plt>
   106b0:	e3a02000 	mov	r2, #0
   106b4:	e3a01b09 	mov	r1, #9216	; 0x2400
   106b8:	e51b0008 	ldr	r0, [fp, #-8]
   106bc:	ebffff3d 	bl	103b8 <ioctl@plt>
   106c0:	e1a00000 	nop			; (mov r0, r0)
   106c4:	e24bd004 	sub	sp, fp, #4
   106c8:	e8bd8800 	pop	{fp, pc}
   106cc:	00002403 	.word	0x00002403

000106d0 <end_perf>:
   106d0:	e92d4800 	push	{fp, lr}
   106d4:	e28db004 	add	fp, sp, #4
   106d8:	e24dd008 	sub	sp, sp, #8
   106dc:	e50b0008 	str	r0, [fp, #-8]
   106e0:	e3a02000 	mov	r2, #0
   106e4:	e59f1010 	ldr	r1, [pc, #16]	; 106fc <end_perf+0x2c>
   106e8:	e51b0008 	ldr	r0, [fp, #-8]
   106ec:	ebffff31 	bl	103b8 <ioctl@plt>
   106f0:	e1a00000 	nop			; (mov r0, r0)
   106f4:	e24bd004 	sub	sp, fp, #4
   106f8:	e8bd8800 	pop	{fp, pc}
   106fc:	00002401 	.word	0x00002401

00010700 <print_perf>:
   10700:	e92d4800 	push	{fp, lr}
   10704:	e28db004 	add	fp, sp, #4
   10708:	e24dd010 	sub	sp, sp, #16
   1070c:	e50b0010 	str	r0, [fp, #-16]
   10710:	e24b300c 	sub	r3, fp, #12
   10714:	e3a02008 	mov	r2, #8
   10718:	e1a01003 	mov	r1, r3
   1071c:	e51b0010 	ldr	r0, [fp, #-16]
   10720:	ebffff21 	bl	103ac <read@plt>
   10724:	e14b20dc 	ldrd	r2, [fp, #-12]
   10728:	e59f000c 	ldr	r0, [pc, #12]	; 1073c <print_perf+0x3c>
   1072c:	ebffff1b 	bl	103a0 <printf@plt>
   10730:	e1a00000 	nop			; (mov r0, r0)
   10734:	e24bd004 	sub	sp, fp, #4
   10738:	e8bd8800 	pop	{fp, pc}
   1073c:	00010a6c 	.word	0x00010a6c

00010740 <init_matrixes>:
   10740:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10744:	e28db000 	add	fp, sp, #0
   10748:	e24dd014 	sub	sp, sp, #20
   1074c:	e3a03000 	mov	r3, #0
   10750:	e50b3010 	str	r3, [fp, #-16]
   10754:	e3a03000 	mov	r3, #0
   10758:	e50b3008 	str	r3, [fp, #-8]
   1075c:	ea000032 	b	1082c <init_matrixes+0xec>
   10760:	e3a03000 	mov	r3, #0
   10764:	e50b300c 	str	r3, [fp, #-12]
   10768:	ea000029 	b	10814 <init_matrixes+0xd4>
   1076c:	e51b2010 	ldr	r2, [fp, #-16]
   10770:	e59f30d0 	ldr	r3, [pc, #208]	; 10848 <init_matrixes+0x108>
   10774:	e0823003 	add	r3, r2, r3
   10778:	e50b3010 	str	r3, [fp, #-16]
   1077c:	e51b2010 	ldr	r2, [fp, #-16]
   10780:	e59f30c4 	ldr	r3, [pc, #196]	; 1084c <init_matrixes+0x10c>
   10784:	e0831293 	umull	r1, r3, r3, r2
   10788:	e1a03a23 	lsr	r3, r3, #20
   1078c:	e59f10bc 	ldr	r1, [pc, #188]	; 10850 <init_matrixes+0x110>
   10790:	e0030391 	mul	r3, r1, r3
   10794:	e0423003 	sub	r3, r2, r3
   10798:	e1a00003 	mov	r0, r3
   1079c:	e59f10b0 	ldr	r1, [pc, #176]	; 10854 <init_matrixes+0x114>
   107a0:	e51b3008 	ldr	r3, [fp, #-8]
   107a4:	e1a02503 	lsl	r2, r3, #10
   107a8:	e51b300c 	ldr	r3, [fp, #-12]
   107ac:	e0823003 	add	r3, r2, r3
   107b0:	e7810103 	str	r0, [r1, r3, lsl #2]
   107b4:	e51b2010 	ldr	r2, [fp, #-16]
   107b8:	e59f3098 	ldr	r3, [pc, #152]	; 10858 <init_matrixes+0x118>
   107bc:	e0831293 	umull	r1, r3, r3, r2
   107c0:	e1a03b23 	lsr	r3, r3, #22
   107c4:	e59f1090 	ldr	r1, [pc, #144]	; 1085c <init_matrixes+0x11c>
   107c8:	e0030391 	mul	r3, r1, r3
   107cc:	e0423003 	sub	r3, r2, r3
   107d0:	e1a00003 	mov	r0, r3
   107d4:	e59f1084 	ldr	r1, [pc, #132]	; 10860 <init_matrixes+0x120>
   107d8:	e51b3008 	ldr	r3, [fp, #-8]
   107dc:	e1a02503 	lsl	r2, r3, #10
   107e0:	e51b300c 	ldr	r3, [fp, #-12]
   107e4:	e0823003 	add	r3, r2, r3
   107e8:	e7810103 	str	r0, [r1, r3, lsl #2]
   107ec:	e59f1070 	ldr	r1, [pc, #112]	; 10864 <init_matrixes+0x124>
   107f0:	e51b3008 	ldr	r3, [fp, #-8]
   107f4:	e1a02503 	lsl	r2, r3, #10
   107f8:	e51b300c 	ldr	r3, [fp, #-12]
   107fc:	e0823003 	add	r3, r2, r3
   10800:	e3a02000 	mov	r2, #0
   10804:	e7812103 	str	r2, [r1, r3, lsl #2]
   10808:	e51b300c 	ldr	r3, [fp, #-12]
   1080c:	e2833001 	add	r3, r3, #1
   10810:	e50b300c 	str	r3, [fp, #-12]
   10814:	e51b300c 	ldr	r3, [fp, #-12]
   10818:	e3530b01 	cmp	r3, #1024	; 0x400
   1081c:	baffffd2 	blt	1076c <init_matrixes+0x2c>
   10820:	e51b3008 	ldr	r3, [fp, #-8]
   10824:	e2833001 	add	r3, r3, #1
   10828:	e50b3008 	str	r3, [fp, #-8]
   1082c:	e51b3008 	ldr	r3, [fp, #-8]
   10830:	e3530b01 	cmp	r3, #1024	; 0x400
   10834:	baffffc9 	blt	10760 <init_matrixes+0x20>
   10838:	e1a00000 	nop			; (mov r0, r0)
   1083c:	e28bd000 	add	sp, fp, #0
   10840:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10844:	e12fff1e 	bx	lr
   10848:	03e92111 	.word	0x03e92111
   1084c:	c8dfc33f 	.word	0xc8dfc33f
   10850:	00146411 	.word	0x00146411
   10854:	00021040 	.word	0x00021040
   10858:	efcf8609 	.word	0xefcf8609
   1085c:	00445211 	.word	0x00445211
   10860:	00421040 	.word	0x00421040
   10864:	00821040 	.word	0x00821040

00010868 <matrix_multiply_basic>:
   10868:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1086c:	e28db000 	add	fp, sp, #0
   10870:	e24dd014 	sub	sp, sp, #20
   10874:	e3a03000 	mov	r3, #0
   10878:	e50b3008 	str	r3, [fp, #-8]
   1087c:	ea00002e 	b	1093c <matrix_multiply_basic+0xd4>
   10880:	e3a03000 	mov	r3, #0
   10884:	e50b300c 	str	r3, [fp, #-12]
   10888:	ea000025 	b	10924 <matrix_multiply_basic+0xbc>
   1088c:	e3a03000 	mov	r3, #0
   10890:	e50b3010 	str	r3, [fp, #-16]
   10894:	ea00001c 	b	1090c <matrix_multiply_basic+0xa4>
   10898:	e59f10b8 	ldr	r1, [pc, #184]	; 10958 <matrix_multiply_basic+0xf0>
   1089c:	e51b3008 	ldr	r3, [fp, #-8]
   108a0:	e1a02503 	lsl	r2, r3, #10
   108a4:	e51b300c 	ldr	r3, [fp, #-12]
   108a8:	e0823003 	add	r3, r2, r3
   108ac:	e7912103 	ldr	r2, [r1, r3, lsl #2]
   108b0:	e59f00a4 	ldr	r0, [pc, #164]	; 1095c <matrix_multiply_basic+0xf4>
   108b4:	e51b3008 	ldr	r3, [fp, #-8]
   108b8:	e1a01503 	lsl	r1, r3, #10
   108bc:	e51b3010 	ldr	r3, [fp, #-16]
   108c0:	e0813003 	add	r3, r1, r3
   108c4:	e7903103 	ldr	r3, [r0, r3, lsl #2]
   108c8:	e59fc090 	ldr	ip, [pc, #144]	; 10960 <matrix_multiply_basic+0xf8>
   108cc:	e51b1010 	ldr	r1, [fp, #-16]
   108d0:	e1a00501 	lsl	r0, r1, #10
   108d4:	e51b100c 	ldr	r1, [fp, #-12]
   108d8:	e0801001 	add	r1, r0, r1
   108dc:	e79c1101 	ldr	r1, [ip, r1, lsl #2]
   108e0:	e0030391 	mul	r3, r1, r3
   108e4:	e0822003 	add	r2, r2, r3
   108e8:	e59f0068 	ldr	r0, [pc, #104]	; 10958 <matrix_multiply_basic+0xf0>
   108ec:	e51b3008 	ldr	r3, [fp, #-8]
   108f0:	e1a01503 	lsl	r1, r3, #10
   108f4:	e51b300c 	ldr	r3, [fp, #-12]
   108f8:	e0813003 	add	r3, r1, r3
   108fc:	e7802103 	str	r2, [r0, r3, lsl #2]
   10900:	e51b3010 	ldr	r3, [fp, #-16]
   10904:	e2833001 	add	r3, r3, #1
   10908:	e50b3010 	str	r3, [fp, #-16]
   1090c:	e51b3010 	ldr	r3, [fp, #-16]
   10910:	e3530b01 	cmp	r3, #1024	; 0x400
   10914:	baffffdf 	blt	10898 <matrix_multiply_basic+0x30>
   10918:	e51b300c 	ldr	r3, [fp, #-12]
   1091c:	e2833001 	add	r3, r3, #1
   10920:	e50b300c 	str	r3, [fp, #-12]
   10924:	e51b300c 	ldr	r3, [fp, #-12]
   10928:	e3530b01 	cmp	r3, #1024	; 0x400
   1092c:	baffffd6 	blt	1088c <matrix_multiply_basic+0x24>
   10930:	e51b3008 	ldr	r3, [fp, #-8]
   10934:	e2833001 	add	r3, r3, #1
   10938:	e50b3008 	str	r3, [fp, #-8]
   1093c:	e51b3008 	ldr	r3, [fp, #-8]
   10940:	e3530b01 	cmp	r3, #1024	; 0x400
   10944:	baffffcd 	blt	10880 <matrix_multiply_basic+0x18>
   10948:	e1a00000 	nop			; (mov r0, r0)
   1094c:	e28bd000 	add	sp, fp, #0
   10950:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10954:	e12fff1e 	bx	lr
   10958:	00821040 	.word	0x00821040
   1095c:	00021040 	.word	0x00021040
   10960:	00421040 	.word	0x00421040

00010964 <main>:
   10964:	e92d4800 	push	{fp, lr}
   10968:	e28db004 	add	fp, sp, #4
   1096c:	e24dd010 	sub	sp, sp, #16
   10970:	ebffff72 	bl	10740 <init_matrixes>
   10974:	e3a02000 	mov	r2, #0
   10978:	e3a03000 	mov	r3, #0
   1097c:	e3a00000 	mov	r0, #0
   10980:	ebfffeec 	bl	10538 <setup_perf>
   10984:	e50b0008 	str	r0, [fp, #-8]
   10988:	ebfffe93 	bl	103dc <clock@plt>
   1098c:	e50b000c 	str	r0, [fp, #-12]
   10990:	e51b0008 	ldr	r0, [fp, #-8]
   10994:	ebffff3d 	bl	10690 <start_perf>
   10998:	ebffffb2 	bl	10868 <matrix_multiply_basic>
   1099c:	e51b0008 	ldr	r0, [fp, #-8]
   109a0:	ebffff4a 	bl	106d0 <end_perf>
   109a4:	ebfffe8c 	bl	103dc <clock@plt>
   109a8:	e50b0010 	str	r0, [fp, #-16]
   109ac:	e51b2010 	ldr	r2, [fp, #-16]
   109b0:	e51b300c 	ldr	r3, [fp, #-12]
   109b4:	e0423003 	sub	r3, r2, r3
   109b8:	ee073a90 	vmov	s15, r3
   109bc:	eef80be7 	vcvt.f64.s32	d16, s15
   109c0:	eddf1b0a 	vldr	d17, [pc, #40]	; 109f0 <main+0x8c>
   109c4:	eec02ba1 	vdiv.f64	d18, d16, d17
   109c8:	ec532b32 	vmov	r2, r3, d18
   109cc:	e59f0024 	ldr	r0, [pc, #36]	; 109f8 <main+0x94>
   109d0:	ebfffe72 	bl	103a0 <printf@plt>
   109d4:	e51b0008 	ldr	r0, [fp, #-8]
   109d8:	ebffff48 	bl	10700 <print_perf>
   109dc:	e3a03000 	mov	r3, #0
   109e0:	e1a00003 	mov	r0, r3
   109e4:	e24bd004 	sub	sp, fp, #4
   109e8:	e8bd8800 	pop	{fp, pc}
   109ec:	e1a00000 	nop			; (mov r0, r0)
   109f0:	00000000 	.word	0x00000000
   109f4:	412e8480 	.word	0x412e8480
   109f8:	00010a90 	.word	0x00010a90

000109fc <__libc_csu_init>:
   109fc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10a00:	e1a07000 	mov	r7, r0
   10a04:	e59f6048 	ldr	r6, [pc, #72]	; 10a54 <__libc_csu_init+0x58>
   10a08:	e59f5048 	ldr	r5, [pc, #72]	; 10a58 <__libc_csu_init+0x5c>
   10a0c:	e08f6006 	add	r6, pc, r6
   10a10:	e08f5005 	add	r5, pc, r5
   10a14:	e0466005 	sub	r6, r6, r5
   10a18:	e1a08001 	mov	r8, r1
   10a1c:	e1a09002 	mov	r9, r2
   10a20:	ebfffe56 	bl	10380 <_init>
   10a24:	e1b06146 	asrs	r6, r6, #2
   10a28:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a2c:	e3a04000 	mov	r4, #0
   10a30:	e2844001 	add	r4, r4, #1
   10a34:	e4953004 	ldr	r3, [r5], #4
   10a38:	e1a02009 	mov	r2, r9
   10a3c:	e1a01008 	mov	r1, r8
   10a40:	e1a00007 	mov	r0, r7
   10a44:	e12fff33 	blx	r3
   10a48:	e1560004 	cmp	r6, r4
   10a4c:	1afffff7 	bne	10a30 <__libc_csu_init+0x34>
   10a50:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10a54:	000104fc 	.word	0x000104fc
   10a58:	000104f4 	.word	0x000104f4

00010a5c <__libc_csu_fini>:
   10a5c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010a60 <_fini>:
   10a60:	e92d4008 	push	{r3, lr}
   10a64:	e8bd8008 	pop	{r3, pc}
