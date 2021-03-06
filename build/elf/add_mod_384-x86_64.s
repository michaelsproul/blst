.text	

.hidden	BLS12_381_P

.globl	add_mod_384
.hidden	add_mod_384
.type	add_mod_384,@function
.align	32
add_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	call	__add_mod_384

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	add_mod_384,.-add_mod_384

.type	__add_mod_384,@function
.align	32
__add_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa

	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13

__add_mod_384_a_is_loaded:
	addq	0(%rdx),%r8
	adcq	8(%rdx),%r9
	adcq	16(%rdx),%r10
	movq	%r8,%r14
	adcq	24(%rdx),%r11
	movq	%r9,%r15
	adcq	32(%rdx),%r12
	movq	%r10,%rax
	adcq	40(%rdx),%r13
	movq	%r11,%rbx
	sbbq	%rdx,%rdx

	subq	0(%rcx),%r8
	sbbq	8(%rcx),%r9
	movq	%r12,%rbp
	sbbq	16(%rcx),%r10
	sbbq	24(%rcx),%r11
	sbbq	32(%rcx),%r12
	movq	%r13,%rsi
	sbbq	40(%rcx),%r13
	sbbq	$0,%rdx

	cmovcq	%r14,%r8
	cmovcq	%r15,%r9
	cmovcq	%rax,%r10
	movq	%r8,0(%rdi)
	cmovcq	%rbx,%r11
	movq	%r9,8(%rdi)
	cmovcq	%rbp,%r12
	movq	%r10,16(%rdi)
	cmovcq	%rsi,%r13
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	.byte	0xf3,0xc3
.cfi_endproc
.size	__add_mod_384,.-__add_mod_384

.globl	add_mod_384x
.hidden	add_mod_384x
.type	add_mod_384x,@function
.align	32
add_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$24,%rsp
.cfi_adjust_cfa_offset	24


	movq	%rsi,0(%rsp)
	movq	%rdx,8(%rsp)
	leaq	48(%rsi),%rsi
	leaq	48(%rdx),%rdx
	leaq	48(%rdi),%rdi
	call	__add_mod_384

	movq	0(%rsp),%rsi
	movq	8(%rsp),%rdx
	leaq	-48(%rdi),%rdi
	call	__add_mod_384

	movq	24+0(%rsp),%r15
.cfi_restore	%r15
	movq	24+8(%rsp),%r14
.cfi_restore	%r14
	movq	24+16(%rsp),%r13
.cfi_restore	%r13
	movq	24+24(%rsp),%r12
.cfi_restore	%r12
	movq	24+32(%rsp),%rbx
.cfi_restore	%rbx
	movq	24+40(%rsp),%rbp
.cfi_restore	%rbp
	leaq	24+48(%rsp),%rsp
.cfi_adjust_cfa_offset	-24-8*6

	.byte	0xf3,0xc3
.cfi_endproc	
.size	add_mod_384x,.-add_mod_384x


.globl	lshift_mod_384
.hidden	lshift_mod_384
.type	lshift_mod_384,@function
.align	32
lshift_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rdi
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13

.Loop_lshift_mod_384:
	addq	%r8,%r8
	adcq	%r9,%r9
	adcq	%r10,%r10
	movq	%r8,%r14
	adcq	%r11,%r11
	movq	%r9,%r15
	adcq	%r12,%r12
	movq	%r10,%rax
	adcq	%r13,%r13
	movq	%r11,%rbx
	sbbq	%rdi,%rdi

	subq	0(%rcx),%r8
	sbbq	8(%rcx),%r9
	movq	%r12,%rbp
	sbbq	16(%rcx),%r10
	sbbq	24(%rcx),%r11
	sbbq	32(%rcx),%r12
	movq	%r13,%rsi
	sbbq	40(%rcx),%r13
	sbbq	$0,%rdi

	movq	(%rsp),%rdi
	cmovcq	%r14,%r8
	cmovcq	%r15,%r9
	cmovcq	%rax,%r10
	cmovcq	%rbx,%r11
	cmovcq	%rbp,%r12
	cmovcq	%rsi,%r13

	decl	%edx
	jnz	.Loop_lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	lshift_mod_384,.-lshift_mod_384

.type	__lshift_mod_384,@function
.align	32
__lshift_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa

	addq	%r8,%r8
	adcq	%r9,%r9
	adcq	%r10,%r10
	movq	%r8,%r14
	adcq	%r11,%r11
	movq	%r9,%r15
	adcq	%r12,%r12
	movq	%r10,%rax
	adcq	%r13,%r13
	movq	%r11,%rbx
	sbbq	%rdx,%rdx

	subq	0(%rcx),%r8
	sbbq	8(%rcx),%r9
	movq	%r12,%rbp
	sbbq	16(%rcx),%r10
	sbbq	24(%rcx),%r11
	sbbq	32(%rcx),%r12
	movq	%r13,%rsi
	sbbq	40(%rcx),%r13
	sbbq	$0,%rdx

	cmovcq	%r14,%r8
	cmovcq	%r15,%r9
	cmovcq	%rax,%r10
	cmovcq	%rbx,%r11
	cmovcq	%rbp,%r12
	cmovcq	%rsi,%r13

	.byte	0xf3,0xc3
.cfi_endproc
.size	__lshift_mod_384,.-__lshift_mod_384


.globl	mul_by_3_mod_384
.hidden	mul_by_3_mod_384
.type	mul_by_3_mod_384,@function
.align	32
mul_by_3_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rsi
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	movq	%rdx,%rcx

	call	__lshift_mod_384

	movq	(%rsp),%rdx
	call	__add_mod_384_a_is_loaded

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_3_mod_384,.-mul_by_3_mod_384

.globl	mul_by_8_mod_384
.hidden	mul_by_8_mod_384
.type	mul_by_8_mod_384,@function
.align	32
mul_by_8_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	movq	%rdx,%rcx

	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_8_mod_384,.-mul_by_8_mod_384

.globl	mul_by_b_onE1
.hidden	mul_by_b_onE1
.type	mul_by_b_onE1,@function
.align	32
mul_by_b_onE1:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	leaq	BLS12_381_P(%rip),%rcx

	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_b_onE1,.-mul_by_b_onE1

.globl	mul_by_4b_onE1
.hidden	mul_by_4b_onE1
.type	mul_by_4b_onE1,@function
.align	32
mul_by_4b_onE1:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	leaq	BLS12_381_P(%rip),%rcx

	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_4b_onE1,.-mul_by_4b_onE1


.globl	mul_by_3_mod_384x
.hidden	mul_by_3_mod_384x
.type	mul_by_3_mod_384x,@function
.align	32
mul_by_3_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rsi
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	movq	%rdx,%rcx

	call	__lshift_mod_384

	movq	(%rsp),%rdx
	call	__add_mod_384_a_is_loaded

	movq	(%rsp),%rsi
	leaq	48(%rdi),%rdi

	movq	48(%rsi),%r8
	movq	56(%rsi),%r9
	movq	64(%rsi),%r10
	movq	72(%rsi),%r11
	movq	80(%rsi),%r12
	movq	88(%rsi),%r13

	call	__lshift_mod_384

	movq	$48,%rdx
	addq	(%rsp),%rdx
	call	__add_mod_384_a_is_loaded

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_3_mod_384x,.-mul_by_3_mod_384x

.globl	mul_by_8_mod_384x
.hidden	mul_by_8_mod_384x
.type	mul_by_8_mod_384x,@function
.align	32
mul_by_8_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rsi
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13
	movq	%rdx,%rcx

	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	(%rsp),%rsi
	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	48+0(%rsi),%r8
	movq	48+8(%rsi),%r9
	movq	48+16(%rsi),%r10
	movq	48+24(%rsi),%r11
	movq	48+32(%rsi),%r12
	movq	48+40(%rsi),%r13

	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,48+0(%rdi)
	movq	%r9,48+8(%rdi)
	movq	%r10,48+16(%rdi)
	movq	%r11,48+24(%rdi)
	movq	%r12,48+32(%rdi)
	movq	%r13,48+40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_8_mod_384x,.-mul_by_8_mod_384x

.globl	mul_by_b_onE2
.hidden	mul_by_b_onE2
.type	mul_by_b_onE2,@function
.align	32
mul_by_b_onE2:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rsi
.cfi_adjust_cfa_offset	8


	leaq	BLS12_381_P(%rip),%rcx
	leaq	48(%rsi),%rdx
	call	__sub_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	0(%rsp),%rsi
	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	leaq	48(%rsi),%rdx
	leaq	48(%rdi),%rdi
	call	__add_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-8*7

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_b_onE2,.-mul_by_b_onE2

.globl	mul_by_4b_onE2
.hidden	mul_by_4b_onE2
.type	mul_by_4b_onE2,@function
.align	32
mul_by_4b_onE2:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rsi
.cfi_adjust_cfa_offset	8


	leaq	BLS12_381_P(%rip),%rcx
	leaq	48(%rsi),%rdx
	call	__sub_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	0(%rsp),%rsi
	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	leaq	48(%rsi),%rdx
	leaq	48(%rdi),%rdi
	call	__add_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384
	call	__lshift_mod_384

	movq	%r8,0(%rdi)
	movq	%r9,8(%rdi)
	movq	%r10,16(%rdi)
	movq	%r11,24(%rdi)
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-8*7

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_4b_onE2,.-mul_by_4b_onE2


.globl	cneg_mod_384
.hidden	cneg_mod_384
.type	cneg_mod_384,@function
.align	32
cneg_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	pushq	%rdx
.cfi_adjust_cfa_offset	8


	movq	0(%rsi),%rdx
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	%rdx,%r8
	movq	24(%rsi),%r11
	orq	%r9,%rdx
	movq	32(%rsi),%r12
	orq	%r10,%rdx
	movq	40(%rsi),%r13
	orq	%r11,%rdx
	movq	$-1,%rsi
	orq	%r12,%rdx
	orq	%r13,%rdx

	movq	0(%rcx),%r14
	cmovnzq	%rsi,%rdx
	movq	8(%rcx),%r15
	movq	16(%rcx),%rax
	andq	%rdx,%r14
	movq	24(%rcx),%rbx
	andq	%rdx,%r15
	movq	32(%rcx),%rbp
	andq	%rdx,%rax
	movq	40(%rcx),%rsi
	andq	%rdx,%rbx
	movq	0(%rsp),%rcx
	andq	%rdx,%rbp
	andq	%rdx,%rsi

	subq	%r8,%r14
	sbbq	%r9,%r15
	sbbq	%r10,%rax
	sbbq	%r11,%rbx
	sbbq	%r12,%rbp
	sbbq	%r13,%rsi

	orq	%rcx,%rcx

	cmovzq	%r8,%r14
	cmovzq	%r9,%r15
	cmovzq	%r10,%rax
	movq	%r14,0(%rdi)
	cmovzq	%r11,%rbx
	movq	%r15,8(%rdi)
	cmovzq	%r12,%rbp
	movq	%rax,16(%rdi)
	cmovzq	%r13,%rsi
	movq	%rbx,24(%rdi)
	movq	%rbp,32(%rdi)
	movq	%rsi,40(%rdi)

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	cneg_mod_384,.-cneg_mod_384


.globl	sub_mod_384
.hidden	sub_mod_384
.type	sub_mod_384,@function
.align	32
sub_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	call	__sub_mod_384

	movq	8(%rsp),%r15
.cfi_restore	%r15
	movq	16(%rsp),%r14
.cfi_restore	%r14
	movq	24(%rsp),%r13
.cfi_restore	%r13
	movq	32(%rsp),%r12
.cfi_restore	%r12
	movq	40(%rsp),%rbx
.cfi_restore	%rbx
	movq	48(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56(%rsp),%rsp
.cfi_adjust_cfa_offset	-56

	.byte	0xf3,0xc3
.cfi_endproc	
.size	sub_mod_384,.-sub_mod_384

.type	__sub_mod_384,@function
.align	32
__sub_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa

	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13

	subq	0(%rdx),%r8
	movq	0(%rcx),%r14
	sbbq	8(%rdx),%r9
	movq	8(%rcx),%r15
	sbbq	16(%rdx),%r10
	movq	16(%rcx),%rax
	sbbq	24(%rdx),%r11
	movq	24(%rcx),%rbx
	sbbq	32(%rdx),%r12
	movq	32(%rcx),%rbp
	sbbq	40(%rdx),%r13
	movq	40(%rcx),%rsi
	sbbq	%rdx,%rdx

	andq	%rdx,%r14
	andq	%rdx,%r15
	andq	%rdx,%rax
	andq	%rdx,%rbx
	andq	%rdx,%rbp
	andq	%rdx,%rsi

	addq	%r14,%r8
	adcq	%r15,%r9
	movq	%r8,0(%rdi)
	adcq	%rax,%r10
	movq	%r9,8(%rdi)
	adcq	%rbx,%r11
	movq	%r10,16(%rdi)
	adcq	%rbp,%r12
	movq	%r11,24(%rdi)
	adcq	%rsi,%r13
	movq	%r12,32(%rdi)
	movq	%r13,40(%rdi)

	.byte	0xf3,0xc3
.cfi_endproc
.size	__sub_mod_384,.-__sub_mod_384

.globl	sub_mod_384x
.hidden	sub_mod_384x
.type	sub_mod_384x,@function
.align	32
sub_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$24,%rsp
.cfi_adjust_cfa_offset	24


	movq	%rsi,0(%rsp)
	movq	%rdx,8(%rsp)
	leaq	48(%rsi),%rsi
	leaq	48(%rdx),%rdx
	leaq	48(%rdi),%rdi
	call	__sub_mod_384

	movq	0(%rsp),%rsi
	movq	8(%rsp),%rdx
	leaq	-48(%rdi),%rdi
	call	__sub_mod_384

	movq	24+0(%rsp),%r15
.cfi_restore	%r15
	movq	24+8(%rsp),%r14
.cfi_restore	%r14
	movq	24+16(%rsp),%r13
.cfi_restore	%r13
	movq	24+24(%rsp),%r12
.cfi_restore	%r12
	movq	24+32(%rsp),%rbx
.cfi_restore	%rbx
	movq	24+40(%rsp),%rbp
.cfi_restore	%rbp
	leaq	24+48(%rsp),%rsp
.cfi_adjust_cfa_offset	-24-8*6

	.byte	0xf3,0xc3
.cfi_endproc	
.size	sub_mod_384x,.-sub_mod_384x
.globl	mul_by_1_plus_i_mod_384x
.hidden	mul_by_1_plus_i_mod_384x
.type	mul_by_1_plus_i_mod_384x,@function
.align	32
mul_by_1_plus_i_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	pushq	%r12
.cfi_adjust_cfa_offset	8
.cfi_offset	%r12,-32
	pushq	%r13
.cfi_adjust_cfa_offset	8
.cfi_offset	%r13,-40
	pushq	%r14
.cfi_adjust_cfa_offset	8
.cfi_offset	%r14,-48
	pushq	%r15
.cfi_adjust_cfa_offset	8
.cfi_offset	%r15,-56
	subq	$56,%rsp
.cfi_adjust_cfa_offset	56


	movq	0(%rsi),%r8
	movq	8(%rsi),%r9
	movq	16(%rsi),%r10
	movq	24(%rsi),%r11
	movq	32(%rsi),%r12
	movq	40(%rsi),%r13

	movq	%r8,%r14
	addq	48(%rsi),%r8
	movq	%r9,%r15
	adcq	56(%rsi),%r9
	movq	%r10,%rax
	adcq	64(%rsi),%r10
	movq	%r11,%rbx
	adcq	72(%rsi),%r11
	movq	%r12,%rcx
	adcq	80(%rsi),%r12
	movq	%r13,%rbp
	adcq	88(%rsi),%r13
	movq	%rdi,48(%rsp)
	sbbq	%rdi,%rdi

	subq	48(%rsi),%r14
	sbbq	56(%rsi),%r15
	sbbq	64(%rsi),%rax
	sbbq	72(%rsi),%rbx
	sbbq	80(%rsi),%rcx
	sbbq	88(%rsi),%rbp
	sbbq	%rsi,%rsi

	movq	%r8,0(%rsp)
	movq	0(%rdx),%r8
	movq	%r9,8(%rsp)
	movq	8(%rdx),%r9
	movq	%r10,16(%rsp)
	movq	16(%rdx),%r10
	movq	%r11,24(%rsp)
	movq	24(%rdx),%r11
	movq	%r12,32(%rsp)
	andq	%rsi,%r8
	movq	32(%rdx),%r12
	movq	%r13,40(%rsp)
	andq	%rsi,%r9
	movq	40(%rdx),%r13
	andq	%rsi,%r10
	andq	%rsi,%r11
	andq	%rsi,%r12
	andq	%rsi,%r13
	movq	48(%rsp),%rsi

	addq	%r8,%r14
	movq	0(%rsp),%r8
	adcq	%r9,%r15
	movq	8(%rsp),%r9
	adcq	%r10,%rax
	movq	16(%rsp),%r10
	adcq	%r11,%rbx
	movq	24(%rsp),%r11
	adcq	%r12,%rcx
	movq	32(%rsp),%r12
	adcq	%r13,%rbp
	movq	40(%rsp),%r13

	movq	%r14,0(%rsi)
	movq	%r8,%r14
	movq	%r15,8(%rsi)
	movq	%rax,16(%rsi)
	movq	%r9,%r15
	movq	%rbx,24(%rsi)
	movq	%rcx,32(%rsi)
	movq	%r10,%rax
	movq	%rbp,40(%rsi)

	subq	0(%rdx),%r8
	movq	%r11,%rbx
	sbbq	8(%rdx),%r9
	sbbq	16(%rdx),%r10
	movq	%r12,%rcx
	sbbq	24(%rdx),%r11
	sbbq	32(%rdx),%r12
	movq	%r13,%rbp
	sbbq	40(%rdx),%r13
	sbbq	$0,%rdi

	cmovcq	%r14,%r8
	cmovcq	%r15,%r9
	cmovcq	%rax,%r10
	movq	%r8,48(%rsi)
	cmovcq	%rbx,%r11
	movq	%r9,56(%rsi)
	cmovcq	%rcx,%r12
	movq	%r10,64(%rsi)
	cmovcq	%rbp,%r13
	movq	%r11,72(%rsi)
	movq	%r12,80(%rsi)
	movq	%r13,88(%rsi)

	movq	56+0(%rsp),%r15
.cfi_restore	%r15
	movq	56+8(%rsp),%r14
.cfi_restore	%r14
	movq	56+16(%rsp),%r13
.cfi_restore	%r13
	movq	56+24(%rsp),%r12
.cfi_restore	%r12
	movq	56+32(%rsp),%rbx
.cfi_restore	%rbx
	movq	56+40(%rsp),%rbp
.cfi_restore	%rbp
	leaq	56+48(%rsp),%rsp
.cfi_adjust_cfa_offset	-56-8*6

	.byte	0xf3,0xc3
.cfi_endproc	
.size	mul_by_1_plus_i_mod_384x,.-mul_by_1_plus_i_mod_384x
.globl	sgn0_pty_mod_384
.hidden	sgn0_pty_mod_384
.type	sgn0_pty_mod_384,@function
.align	32
sgn0_pty_mod_384:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa



	movq	0(%rdi),%r8
	movq	8(%rdi),%r9
	movq	16(%rdi),%r10
	movq	24(%rdi),%r11
	movq	32(%rdi),%rcx
	movq	40(%rdi),%rdx

	xorq	%rax,%rax
	movq	%r8,%rdi
	addq	%r8,%r8
	adcq	%r9,%r9
	adcq	%r10,%r10
	adcq	%r11,%r11
	adcq	%rcx,%rcx
	adcq	%rdx,%rdx
	adcq	$0,%rax

	subq	0(%rsi),%r8
	sbbq	8(%rsi),%r9
	sbbq	16(%rsi),%r10
	sbbq	24(%rsi),%r11
	sbbq	32(%rsi),%rcx
	sbbq	40(%rsi),%rdx
	sbbq	$0,%rax

	notq	%rax
	andq	$1,%rdi
	andq	$2,%rax
	orq	%rdi,%rax


	.byte	0xf3,0xc3
.cfi_endproc	
.size	sgn0_pty_mod_384,.-sgn0_pty_mod_384

.globl	sgn0_pty_mod_384x
.hidden	sgn0_pty_mod_384x
.type	sgn0_pty_mod_384x,@function
.align	32
sgn0_pty_mod_384x:
.cfi_startproc
	.byte	0xf3,0x0f,0x1e,0xfa


	pushq	%rbp
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbp,-16
	pushq	%rbx
.cfi_adjust_cfa_offset	8
.cfi_offset	%rbx,-24
	subq	$8,%rsp
.cfi_adjust_cfa_offset	8


	movq	0(%rdi),%r8
	movq	8(%rdi),%r9
	movq	16(%rdi),%r10
	movq	24(%rdi),%r11
	movq	32(%rdi),%rcx
	movq	40(%rdi),%rdx

	movq	%r8,%rbx
	orq	%r9,%r8
	orq	%r10,%r8
	orq	%r11,%r8
	orq	%rcx,%r8
	orq	%rdx,%r8

	xorq	%rax,%rax
	movq	%rbx,%rbp
	addq	%rbx,%rbx
	adcq	%r9,%r9
	adcq	%r10,%r10
	adcq	%r11,%r11
	adcq	%rcx,%rcx
	adcq	%rdx,%rdx
	adcq	$0,%rax

	subq	0(%rsi),%rbx
	sbbq	8(%rsi),%r9
	sbbq	16(%rsi),%r10
	sbbq	24(%rsi),%r11
	sbbq	32(%rsi),%rcx
	sbbq	40(%rsi),%rdx
	sbbq	$0,%rax

	movq	%r8,0(%rsp)
	notq	%rax
	andq	$1,%rbp
	andq	$2,%rax
	orq	%rbp,%rax

	movq	48(%rdi),%r8
	movq	56(%rdi),%r9
	movq	64(%rdi),%r10
	movq	72(%rdi),%r11
	movq	80(%rdi),%rcx
	movq	88(%rdi),%rdx

	movq	%r8,%rbx
	orq	%r9,%r8
	orq	%r10,%r8
	orq	%r11,%r8
	orq	%rcx,%r8
	orq	%rdx,%r8

	xorq	%rdi,%rdi
	movq	%rbx,%rbp
	addq	%rbx,%rbx
	adcq	%r9,%r9
	adcq	%r10,%r10
	adcq	%r11,%r11
	adcq	%rcx,%rcx
	adcq	%rdx,%rdx
	adcq	$0,%rdi

	subq	0(%rsi),%rbx
	sbbq	8(%rsi),%r9
	sbbq	16(%rsi),%r10
	sbbq	24(%rsi),%r11
	sbbq	32(%rsi),%rcx
	sbbq	40(%rsi),%rdx
	sbbq	$0,%rdi

	movq	0(%rsp),%rbx

	notq	%rdi

	testq	%r8,%r8
	cmovnzq	%rdi,%rax

	testq	%rbx,%rbx
	cmovzq	%rdi,%rbp

	andq	$1,%rbp
	andq	$2,%rax
	orq	%rbp,%rax

	movq	8(%rsp),%rbx
.cfi_restore	%rbx
	movq	16(%rsp),%rbp
.cfi_restore	%rbp
	leaq	24(%rsp),%rsp
.cfi_adjust_cfa_offset	-24

	.byte	0xf3,0xc3
.cfi_endproc	
.size	sgn0_pty_mod_384x,.-sgn0_pty_mod_384x

.section	.note.GNU-stack,"",@progbits
.section	.note.gnu.property,"a",@note
	.long	4,2f-1f,5
	.byte	0x47,0x4E,0x55,0
1:	.long	0xc0000002,4,3
.align	8
2:
