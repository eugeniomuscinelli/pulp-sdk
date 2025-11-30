riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /srv/home/eugenio.muscinelli/pulp-sdk/tests/hello/BUILD/PULP_CLUSTER/GCC_RISCV//test/test

/srv/home/eugenio.muscinelli/pulp-sdk/tests/hello/BUILD/PULP_CLUSTER/GCC_RISCV//test/test:     file format elf32-littleriscv


Disassembly of section .vectors:

78008000 <__irq_vector_base>:
78008000:	08c0006f          	j	7800808c <pos_illegal_instr>
78008004:	08c0006f          	j	78008090 <pos_no_irq_handler>
78008008:	0880006f          	j	78008090 <pos_no_irq_handler>
7800800c:	0840006f          	j	78008090 <pos_no_irq_handler>
78008010:	0800006f          	j	78008090 <pos_no_irq_handler>
78008014:	07c0006f          	j	78008090 <pos_no_irq_handler>
78008018:	0780006f          	j	78008090 <pos_no_irq_handler>
7800801c:	0740006f          	j	78008090 <pos_no_irq_handler>
78008020:	0700006f          	j	78008090 <pos_no_irq_handler>
78008024:	06c0006f          	j	78008090 <pos_no_irq_handler>
78008028:	0680006f          	j	78008090 <pos_no_irq_handler>
7800802c:	0640006f          	j	78008090 <pos_no_irq_handler>
78008030:	0600006f          	j	78008090 <pos_no_irq_handler>
78008034:	05c0006f          	j	78008090 <pos_no_irq_handler>
78008038:	0580006f          	j	78008090 <pos_no_irq_handler>
7800803c:	0540006f          	j	78008090 <pos_no_irq_handler>
78008040:	0500006f          	j	78008090 <pos_no_irq_handler>
78008044:	04c0006f          	j	78008090 <pos_no_irq_handler>
78008048:	0480006f          	j	78008090 <pos_no_irq_handler>
7800804c:	0440006f          	j	78008090 <pos_no_irq_handler>
78008050:	0400006f          	j	78008090 <pos_no_irq_handler>
78008054:	03c0006f          	j	78008090 <pos_no_irq_handler>
78008058:	0380006f          	j	78008090 <pos_no_irq_handler>
7800805c:	0340006f          	j	78008090 <pos_no_irq_handler>
78008060:	0300006f          	j	78008090 <pos_no_irq_handler>
78008064:	02c0006f          	j	78008090 <pos_no_irq_handler>
78008068:	0280006f          	j	78008090 <pos_no_irq_handler>
7800806c:	0240006f          	j	78008090 <pos_no_irq_handler>
78008070:	0200006f          	j	78008090 <pos_no_irq_handler>
78008074:	01c0006f          	j	78008090 <pos_no_irq_handler>
78008078:	0180006f          	j	78008090 <pos_no_irq_handler>
7800807c:	0140006f          	j	78008090 <pos_no_irq_handler>

78008080 <_start>:
78008080:	00001517          	auipc	a0,0x1
78008084:	6fe50513          	addi	a0,a0,1790 # 7800977e <pos_init_entry>
78008088:	00050067          	jr	a0

7800808c <pos_illegal_instr>:
7800808c:	0000006f          	j	7800808c <pos_illegal_instr>

78008090 <pos_no_irq_handler>:
78008090:	30200073          	mret

78008094 <pos_semihosting_call>:
78008094:	00100073          	ebreak
78008098:	00008067          	ret

7800809c <sync_loop>:
7800809c:	0002a303          	lw	t1,0(t0)
780080a0:	00030463          	beqz	t1,780080a8 <sync_loop+0xc>
780080a4:	75d0706f          	j	78010000 <__cluster_text_start>
780080a8:	ff5ff06f          	j	7800809c <sync_loop>

Disassembly of section .text:

780080ac <__udivdi3>:
780080ac:	87b2                	mv	a5,a2
780080ae:	8736                	mv	a4,a3
780080b0:	88aa                	mv	a7,a0
780080b2:	882e                	mv	a6,a1
780080b4:	1e069d63          	bnez	a3,780082ae <__udivdi3+0x202>
780080b8:	78000337          	lui	t1,0x78000
780080bc:	02030313          	addi	t1,t1,32 # 78000020 <__DTOR_END__>
780080c0:	0ac5fd63          	bleu	a2,a1,7800817a <__udivdi3+0xce>
780080c4:	6741                	lui	a4,0x10
780080c6:	0ae67363          	bleu	a4,a2,7800816c <__udivdi3+0xc0>
780080ca:	0ff00693          	li	a3,255
780080ce:	00c6b6b3          	sltu	a3,a3,a2
780080d2:	068e                	slli	a3,a3,0x3
780080d4:	00d65733          	srl	a4,a2,a3
780080d8:	933a                	add	t1,t1,a4
780080da:	00034703          	lbu	a4,0(t1)
780080de:	02000313          	li	t1,32
780080e2:	96ba                	add	a3,a3,a4
780080e4:	40d30333          	sub	t1,t1,a3
780080e8:	00030c63          	beqz	t1,78008100 <__udivdi3+0x54>
780080ec:	00659733          	sll	a4,a1,t1
780080f0:	00d556b3          	srl	a3,a0,a3
780080f4:	006617b3          	sll	a5,a2,t1
780080f8:	00e6e833          	or	a6,a3,a4
780080fc:	006518b3          	sll	a7,a0,t1
78008100:	0107d513          	srli	a0,a5,0x10
78008104:	02a85733          	divu	a4,a6,a0
78008108:	1007d5b3          	p.exthz	a1,a5
7800810c:	0108d693          	srli	a3,a7,0x10
78008110:	02a87633          	remu	a2,a6,a0
78008114:	02e58833          	mul	a6,a1,a4
78008118:	0642                	slli	a2,a2,0x10
7800811a:	8ed1                	or	a3,a3,a2
7800811c:	863a                	mv	a2,a4
7800811e:	0106fc63          	bleu	a6,a3,78008136 <__udivdi3+0x8a>
78008122:	96be                	add	a3,a3,a5
78008124:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x1b>
78008128:	00f6e763          	bltu	a3,a5,78008136 <__udivdi3+0x8a>
7800812c:	0106f563          	bleu	a6,a3,78008136 <__udivdi3+0x8a>
78008130:	ffe70613          	addi	a2,a4,-2
78008134:	96be                	add	a3,a3,a5
78008136:	410686b3          	sub	a3,a3,a6
7800813a:	02a6f833          	remu	a6,a3,a0
7800813e:	02a6d6b3          	divu	a3,a3,a0
78008142:	df0828b3          	p.insert	a7,a6,15,16
78008146:	02d58733          	mul	a4,a1,a3
7800814a:	8536                	mv	a0,a3
7800814c:	00e8fb63          	bleu	a4,a7,78008162 <__udivdi3+0xb6>
78008150:	98be                	add	a7,a7,a5
78008152:	fff68513          	addi	a0,a3,-1
78008156:	00f8e663          	bltu	a7,a5,78008162 <__udivdi3+0xb6>
7800815a:	00e8f463          	bleu	a4,a7,78008162 <__udivdi3+0xb6>
7800815e:	ffe68513          	addi	a0,a3,-2
78008162:	01061793          	slli	a5,a2,0x10
78008166:	8fc9                	or	a5,a5,a0
78008168:	4801                	li	a6,0
7800816a:	a06d                	j	78008214 <__udivdi3+0x168>
7800816c:	01000737          	lui	a4,0x1000
78008170:	46c1                	li	a3,16
78008172:	f6e661e3          	bltu	a2,a4,780080d4 <__udivdi3+0x28>
78008176:	46e1                	li	a3,24
78008178:	bfb1                	j	780080d4 <__udivdi3+0x28>
7800817a:	e601                	bnez	a2,78008182 <__udivdi3+0xd6>
7800817c:	4685                	li	a3,1
7800817e:	02c6d7b3          	divu	a5,a3,a2
78008182:	66c1                	lui	a3,0x10
78008184:	08d7fb63          	bleu	a3,a5,7800821a <__udivdi3+0x16e>
78008188:	0ff00693          	li	a3,255
7800818c:	00f6f363          	bleu	a5,a3,78008192 <__udivdi3+0xe6>
78008190:	4721                	li	a4,8
78008192:	00e7d6b3          	srl	a3,a5,a4
78008196:	9336                	add	t1,t1,a3
78008198:	00034683          	lbu	a3,0(t1)
7800819c:	02000613          	li	a2,32
780081a0:	96ba                	add	a3,a3,a4
780081a2:	8e15                	sub	a2,a2,a3
780081a4:	e251                	bnez	a2,78008228 <__udivdi3+0x17c>
780081a6:	40f58733          	sub	a4,a1,a5
780081aa:	4805                	li	a6,1
780081ac:	0107d513          	srli	a0,a5,0x10
780081b0:	1007d5b3          	p.exthz	a1,a5
780081b4:	0108d693          	srli	a3,a7,0x10
780081b8:	02a77633          	remu	a2,a4,a0
780081bc:	02a75733          	divu	a4,a4,a0
780081c0:	0642                	slli	a2,a2,0x10
780081c2:	8ed1                	or	a3,a3,a2
780081c4:	02e58333          	mul	t1,a1,a4
780081c8:	863a                	mv	a2,a4
780081ca:	0066fc63          	bleu	t1,a3,780081e2 <__udivdi3+0x136>
780081ce:	96be                	add	a3,a3,a5
780081d0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff001b>
780081d4:	00f6e763          	bltu	a3,a5,780081e2 <__udivdi3+0x136>
780081d8:	0066f563          	bleu	t1,a3,780081e2 <__udivdi3+0x136>
780081dc:	ffe70613          	addi	a2,a4,-2
780081e0:	96be                	add	a3,a3,a5
780081e2:	406686b3          	sub	a3,a3,t1
780081e6:	02a6f333          	remu	t1,a3,a0
780081ea:	02a6d6b3          	divu	a3,a3,a0
780081ee:	df0328b3          	p.insert	a7,t1,15,16
780081f2:	02d58733          	mul	a4,a1,a3
780081f6:	8536                	mv	a0,a3
780081f8:	00e8fb63          	bleu	a4,a7,7800820e <__udivdi3+0x162>
780081fc:	98be                	add	a7,a7,a5
780081fe:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x1b>
78008202:	00f8e663          	bltu	a7,a5,7800820e <__udivdi3+0x162>
78008206:	00e8f463          	bleu	a4,a7,7800820e <__udivdi3+0x162>
7800820a:	ffe68513          	addi	a0,a3,-2
7800820e:	01061793          	slli	a5,a2,0x10
78008212:	8fc9                	or	a5,a5,a0
78008214:	853e                	mv	a0,a5
78008216:	85c2                	mv	a1,a6
78008218:	8082                	ret
7800821a:	010006b7          	lui	a3,0x1000
7800821e:	4741                	li	a4,16
78008220:	f6d7e9e3          	bltu	a5,a3,78008192 <__udivdi3+0xe6>
78008224:	4761                	li	a4,24
78008226:	b7b5                	j	78008192 <__udivdi3+0xe6>
78008228:	00c797b3          	sll	a5,a5,a2
7800822c:	00d5d333          	srl	t1,a1,a3
78008230:	0107de13          	srli	t3,a5,0x10
78008234:	00c59733          	sll	a4,a1,a2
78008238:	00c518b3          	sll	a7,a0,a2
7800823c:	00d555b3          	srl	a1,a0,a3
78008240:	03c35533          	divu	a0,t1,t3
78008244:	8dd9                	or	a1,a1,a4
78008246:	1007d733          	p.exthz	a4,a5
7800824a:	0105d693          	srli	a3,a1,0x10
7800824e:	03c37633          	remu	a2,t1,t3
78008252:	882a                	mv	a6,a0
78008254:	02a70333          	mul	t1,a4,a0
78008258:	0642                	slli	a2,a2,0x10
7800825a:	8ed1                	or	a3,a3,a2
7800825c:	0066fc63          	bleu	t1,a3,78008274 <__udivdi3+0x1c8>
78008260:	96be                	add	a3,a3,a5
78008262:	fff50813          	addi	a6,a0,-1
78008266:	00f6e763          	bltu	a3,a5,78008274 <__udivdi3+0x1c8>
7800826a:	0066f563          	bleu	t1,a3,78008274 <__udivdi3+0x1c8>
7800826e:	ffe50813          	addi	a6,a0,-2
78008272:	96be                	add	a3,a3,a5
78008274:	406686b3          	sub	a3,a3,t1
78008278:	03c6f633          	remu	a2,a3,t3
7800827c:	03c6d6b3          	divu	a3,a3,t3
78008280:	df0625b3          	p.insert	a1,a2,15,16
78008284:	02d70733          	mul	a4,a4,a3
78008288:	8636                	mv	a2,a3
7800828a:	00e5fc63          	bleu	a4,a1,780082a2 <__udivdi3+0x1f6>
7800828e:	95be                	add	a1,a1,a5
78008290:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff001b>
78008294:	00f5e763          	bltu	a1,a5,780082a2 <__udivdi3+0x1f6>
78008298:	00e5f563          	bleu	a4,a1,780082a2 <__udivdi3+0x1f6>
7800829c:	ffe68613          	addi	a2,a3,-2
780082a0:	95be                	add	a1,a1,a5
780082a2:	0842                	slli	a6,a6,0x10
780082a4:	40e58733          	sub	a4,a1,a4
780082a8:	00c86833          	or	a6,a6,a2
780082ac:	b701                	j	780081ac <__udivdi3+0x100>
780082ae:	12d5ea63          	bltu	a1,a3,780083e2 <__udivdi3+0x336>
780082b2:	67c1                	lui	a5,0x10
780082b4:	02f6fd63          	bleu	a5,a3,780082ee <__udivdi3+0x242>
780082b8:	0ff00793          	li	a5,255
780082bc:	00d7b8b3          	sltu	a7,a5,a3
780082c0:	088e                	slli	a7,a7,0x3
780082c2:	78000737          	lui	a4,0x78000
780082c6:	0116d7b3          	srl	a5,a3,a7
780082ca:	02070713          	addi	a4,a4,32 # 78000020 <__DTOR_END__>
780082ce:	97ba                	add	a5,a5,a4
780082d0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x1c>
780082d4:	02000813          	li	a6,32
780082d8:	97c6                	add	a5,a5,a7
780082da:	40f80833          	sub	a6,a6,a5
780082de:	00081f63          	bnez	a6,780082fc <__udivdi3+0x250>
780082e2:	4785                	li	a5,1
780082e4:	f2b6e8e3          	bltu	a3,a1,78008214 <__udivdi3+0x168>
780082e8:	04a637b3          	p.sletu	a5,a2,a0
780082ec:	b725                	j	78008214 <__udivdi3+0x168>
780082ee:	010007b7          	lui	a5,0x1000
780082f2:	48c1                	li	a7,16
780082f4:	fcf6e7e3          	bltu	a3,a5,780082c2 <__udivdi3+0x216>
780082f8:	48e1                	li	a7,24
780082fa:	b7e1                	j	780082c2 <__udivdi3+0x216>
780082fc:	00f658b3          	srl	a7,a2,a5
78008300:	010696b3          	sll	a3,a3,a6
78008304:	00d8e6b3          	or	a3,a7,a3
78008308:	00f5d333          	srl	t1,a1,a5
7800830c:	0106de13          	srli	t3,a3,0x10
78008310:	00f55733          	srl	a4,a0,a5
78008314:	03c377b3          	remu	a5,t1,t3
78008318:	1006d8b3          	p.exthz	a7,a3
7800831c:	010595b3          	sll	a1,a1,a6
78008320:	8f4d                	or	a4,a4,a1
78008322:	01075593          	srli	a1,a4,0x10
78008326:	01061633          	sll	a2,a2,a6
7800832a:	03c35333          	divu	t1,t1,t3
7800832e:	07c2                	slli	a5,a5,0x10
78008330:	8ddd                	or	a1,a1,a5
78008332:	02688eb3          	mul	t4,a7,t1
78008336:	879a                	mv	a5,t1
78008338:	01d5fc63          	bleu	t4,a1,78008350 <__udivdi3+0x2a4>
7800833c:	95b6                	add	a1,a1,a3
7800833e:	fff30793          	addi	a5,t1,-1
78008342:	00d5e763          	bltu	a1,a3,78008350 <__udivdi3+0x2a4>
78008346:	01d5f563          	bleu	t4,a1,78008350 <__udivdi3+0x2a4>
7800834a:	ffe30793          	addi	a5,t1,-2
7800834e:	95b6                	add	a1,a1,a3
78008350:	41d585b3          	sub	a1,a1,t4
78008354:	03c5f333          	remu	t1,a1,t3
78008358:	03c5d5b3          	divu	a1,a1,t3
7800835c:	df032733          	p.insert	a4,t1,15,16
78008360:	02b888b3          	mul	a7,a7,a1
78008364:	832e                	mv	t1,a1
78008366:	01177c63          	bleu	a7,a4,7800837e <__udivdi3+0x2d2>
7800836a:	9736                	add	a4,a4,a3
7800836c:	fff58313          	addi	t1,a1,-1
78008370:	00d76763          	bltu	a4,a3,7800837e <__udivdi3+0x2d2>
78008374:	01177563          	bleu	a7,a4,7800837e <__udivdi3+0x2d2>
78008378:	ffe58313          	addi	t1,a1,-2
7800837c:	9736                	add	a4,a4,a3
7800837e:	07c2                	slli	a5,a5,0x10
78008380:	6e41                	lui	t3,0x10
78008382:	0067e7b3          	or	a5,a5,t1
78008386:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x1b>
7800838a:	00b7f6b3          	and	a3,a5,a1
7800838e:	41170733          	sub	a4,a4,a7
78008392:	8df1                	and	a1,a1,a2
78008394:	0107d893          	srli	a7,a5,0x10
78008398:	02b68333          	mul	t1,a3,a1
7800839c:	8241                	srli	a2,a2,0x10
7800839e:	02b885b3          	mul	a1,a7,a1
780083a2:	8eae                	mv	t4,a1
780083a4:	42c68eb3          	p.mac	t4,a3,a2
780083a8:	01035693          	srli	a3,t1,0x10
780083ac:	96f6                	add	a3,a3,t4
780083ae:	02c888b3          	mul	a7,a7,a2
780083b2:	00b6f363          	bleu	a1,a3,780083b8 <__udivdi3+0x30c>
780083b6:	98f2                	add	a7,a7,t3
780083b8:	0106d613          	srli	a2,a3,0x10
780083bc:	98b2                	add	a7,a7,a2
780083be:	03176063          	bltu	a4,a7,780083de <__udivdi3+0x332>
780083c2:	db1713e3          	bne	a4,a7,78008168 <__udivdi3+0xbc>
780083c6:	6741                	lui	a4,0x10
780083c8:	177d                	addi	a4,a4,-1
780083ca:	8ef9                	and	a3,a3,a4
780083cc:	06c2                	slli	a3,a3,0x10
780083ce:	00e37333          	and	t1,t1,a4
780083d2:	01051533          	sll	a0,a0,a6
780083d6:	969a                	add	a3,a3,t1
780083d8:	4801                	li	a6,0
780083da:	e2d57de3          	bleu	a3,a0,78008214 <__udivdi3+0x168>
780083de:	17fd                	addi	a5,a5,-1
780083e0:	b361                	j	78008168 <__udivdi3+0xbc>
780083e2:	4801                	li	a6,0
780083e4:	4781                	li	a5,0
780083e6:	b53d                	j	78008214 <__udivdi3+0x168>

780083e8 <__umoddi3>:
780083e8:	88b2                	mv	a7,a2
780083ea:	8736                	mv	a4,a3
780083ec:	87aa                	mv	a5,a0
780083ee:	882e                	mv	a6,a1
780083f0:	1a069963          	bnez	a3,780085a2 <__umoddi3+0x1ba>
780083f4:	780006b7          	lui	a3,0x78000
780083f8:	02068693          	addi	a3,a3,32 # 78000020 <__DTOR_END__>
780083fc:	0ac5f463          	bleu	a2,a1,780084a4 <__umoddi3+0xbc>
78008400:	6341                	lui	t1,0x10
78008402:	08667a63          	bleu	t1,a2,78008496 <__umoddi3+0xae>
78008406:	0ff00313          	li	t1,255
7800840a:	00c37363          	bleu	a2,t1,78008410 <__umoddi3+0x28>
7800840e:	4721                	li	a4,8
78008410:	00e65333          	srl	t1,a2,a4
78008414:	969a                	add	a3,a3,t1
78008416:	0006c683          	lbu	a3,0(a3)
7800841a:	02000313          	li	t1,32
7800841e:	9736                	add	a4,a4,a3
78008420:	40e30333          	sub	t1,t1,a4
78008424:	00030c63          	beqz	t1,7800843c <__umoddi3+0x54>
78008428:	006595b3          	sll	a1,a1,t1
7800842c:	00e55733          	srl	a4,a0,a4
78008430:	006618b3          	sll	a7,a2,t1
78008434:	00b76833          	or	a6,a4,a1
78008438:	006517b3          	sll	a5,a0,t1
7800843c:	0108d613          	srli	a2,a7,0x10
78008440:	02c87733          	remu	a4,a6,a2
78008444:	1008d533          	p.exthz	a0,a7
78008448:	0107d693          	srli	a3,a5,0x10
7800844c:	02c85833          	divu	a6,a6,a2
78008450:	0742                	slli	a4,a4,0x10
78008452:	8ed9                	or	a3,a3,a4
78008454:	03050833          	mul	a6,a0,a6
78008458:	0106f863          	bleu	a6,a3,78008468 <__umoddi3+0x80>
7800845c:	96c6                	add	a3,a3,a7
7800845e:	0116e563          	bltu	a3,a7,78008468 <__umoddi3+0x80>
78008462:	0106f363          	bleu	a6,a3,78008468 <__umoddi3+0x80>
78008466:	96c6                	add	a3,a3,a7
78008468:	410686b3          	sub	a3,a3,a6
7800846c:	02c6f733          	remu	a4,a3,a2
78008470:	02c6d6b3          	divu	a3,a3,a2
78008474:	df0727b3          	p.insert	a5,a4,15,16
78008478:	02d506b3          	mul	a3,a0,a3
7800847c:	00d7f863          	bleu	a3,a5,7800848c <__umoddi3+0xa4>
78008480:	97c6                	add	a5,a5,a7
78008482:	0117e563          	bltu	a5,a7,7800848c <__umoddi3+0xa4>
78008486:	00d7f363          	bleu	a3,a5,7800848c <__umoddi3+0xa4>
7800848a:	97c6                	add	a5,a5,a7
7800848c:	8f95                	sub	a5,a5,a3
7800848e:	0067d533          	srl	a0,a5,t1
78008492:	4581                	li	a1,0
78008494:	8082                	ret
78008496:	01000337          	lui	t1,0x1000
7800849a:	4741                	li	a4,16
7800849c:	f6666ae3          	bltu	a2,t1,78008410 <__umoddi3+0x28>
780084a0:	4761                	li	a4,24
780084a2:	b7bd                	j	78008410 <__umoddi3+0x28>
780084a4:	e601                	bnez	a2,780084ac <__umoddi3+0xc4>
780084a6:	4605                	li	a2,1
780084a8:	031658b3          	divu	a7,a2,a7
780084ac:	6641                	lui	a2,0x10
780084ae:	06c8ff63          	bleu	a2,a7,7800852c <__umoddi3+0x144>
780084b2:	0ff00613          	li	a2,255
780084b6:	01167363          	bleu	a7,a2,780084bc <__umoddi3+0xd4>
780084ba:	4721                	li	a4,8
780084bc:	00e8d633          	srl	a2,a7,a4
780084c0:	96b2                	add	a3,a3,a2
780084c2:	0006c603          	lbu	a2,0(a3)
780084c6:	02000313          	li	t1,32
780084ca:	963a                	add	a2,a2,a4
780084cc:	40c30333          	sub	t1,t1,a2
780084d0:	06031563          	bnez	t1,7800853a <__umoddi3+0x152>
780084d4:	411585b3          	sub	a1,a1,a7
780084d8:	0108d713          	srli	a4,a7,0x10
780084dc:	1008d533          	p.exthz	a0,a7
780084e0:	0107d613          	srli	a2,a5,0x10
780084e4:	02e5f6b3          	remu	a3,a1,a4
780084e8:	02e5d5b3          	divu	a1,a1,a4
780084ec:	06c2                	slli	a3,a3,0x10
780084ee:	8ed1                	or	a3,a3,a2
780084f0:	02b505b3          	mul	a1,a0,a1
780084f4:	00b6f863          	bleu	a1,a3,78008504 <__umoddi3+0x11c>
780084f8:	96c6                	add	a3,a3,a7
780084fa:	0116e563          	bltu	a3,a7,78008504 <__umoddi3+0x11c>
780084fe:	00b6f363          	bleu	a1,a3,78008504 <__umoddi3+0x11c>
78008502:	96c6                	add	a3,a3,a7
78008504:	40b685b3          	sub	a1,a3,a1
78008508:	02e5f6b3          	remu	a3,a1,a4
7800850c:	02e5d5b3          	divu	a1,a1,a4
78008510:	df06a7b3          	p.insert	a5,a3,15,16
78008514:	02b505b3          	mul	a1,a0,a1
78008518:	00b7f863          	bleu	a1,a5,78008528 <__umoddi3+0x140>
7800851c:	97c6                	add	a5,a5,a7
7800851e:	0117e563          	bltu	a5,a7,78008528 <__umoddi3+0x140>
78008522:	00b7f363          	bleu	a1,a5,78008528 <__umoddi3+0x140>
78008526:	97c6                	add	a5,a5,a7
78008528:	8f8d                	sub	a5,a5,a1
7800852a:	b795                	j	7800848e <__umoddi3+0xa6>
7800852c:	01000637          	lui	a2,0x1000
78008530:	4741                	li	a4,16
78008532:	f8c8e5e3          	bltu	a7,a2,780084bc <__umoddi3+0xd4>
78008536:	4761                	li	a4,24
78008538:	b751                	j	780084bc <__umoddi3+0xd4>
7800853a:	006898b3          	sll	a7,a7,t1
7800853e:	00c5d733          	srl	a4,a1,a2
78008542:	006517b3          	sll	a5,a0,t1
78008546:	00c55633          	srl	a2,a0,a2
7800854a:	006595b3          	sll	a1,a1,t1
7800854e:	0108d513          	srli	a0,a7,0x10
78008552:	8dd1                	or	a1,a1,a2
78008554:	02a77633          	remu	a2,a4,a0
78008558:	1008d833          	p.exthz	a6,a7
7800855c:	0105d693          	srli	a3,a1,0x10
78008560:	02a75733          	divu	a4,a4,a0
78008564:	0642                	slli	a2,a2,0x10
78008566:	8ed1                	or	a3,a3,a2
78008568:	02e80733          	mul	a4,a6,a4
7800856c:	00e6f863          	bleu	a4,a3,7800857c <__umoddi3+0x194>
78008570:	96c6                	add	a3,a3,a7
78008572:	0116e563          	bltu	a3,a7,7800857c <__umoddi3+0x194>
78008576:	00e6f363          	bleu	a4,a3,7800857c <__umoddi3+0x194>
7800857a:	96c6                	add	a3,a3,a7
7800857c:	8e99                	sub	a3,a3,a4
7800857e:	02a6f733          	remu	a4,a3,a0
78008582:	02a6d6b3          	divu	a3,a3,a0
78008586:	df0725b3          	p.insert	a1,a4,15,16
7800858a:	02d806b3          	mul	a3,a6,a3
7800858e:	00d5f863          	bleu	a3,a1,7800859e <__umoddi3+0x1b6>
78008592:	95c6                	add	a1,a1,a7
78008594:	0115e563          	bltu	a1,a7,7800859e <__umoddi3+0x1b6>
78008598:	00d5f363          	bleu	a3,a1,7800859e <__umoddi3+0x1b6>
7800859c:	95c6                	add	a1,a1,a7
7800859e:	8d95                	sub	a1,a1,a3
780085a0:	bf25                	j	780084d8 <__umoddi3+0xf0>
780085a2:	eed5e9e3          	bltu	a1,a3,78008494 <__umoddi3+0xac>
780085a6:	6741                	lui	a4,0x10
780085a8:	04e6f563          	bleu	a4,a3,780085f2 <__umoddi3+0x20a>
780085ac:	0ff00e93          	li	t4,255
780085b0:	00deb733          	sltu	a4,t4,a3
780085b4:	070e                	slli	a4,a4,0x3
780085b6:	78000337          	lui	t1,0x78000
780085ba:	00e6d8b3          	srl	a7,a3,a4
780085be:	02030313          	addi	t1,t1,32 # 78000020 <__DTOR_END__>
780085c2:	989a                	add	a7,a7,t1
780085c4:	0008ce83          	lbu	t4,0(a7)
780085c8:	02000e13          	li	t3,32
780085cc:	9eba                	add	t4,t4,a4
780085ce:	41de0e33          	sub	t3,t3,t4
780085d2:	020e1763          	bnez	t3,78008600 <__umoddi3+0x218>
780085d6:	00b6e463          	bltu	a3,a1,780085de <__umoddi3+0x1f6>
780085da:	00c56963          	bltu	a0,a2,780085ec <__umoddi3+0x204>
780085de:	40c507b3          	sub	a5,a0,a2
780085e2:	8d95                	sub	a1,a1,a3
780085e4:	00f53533          	sltu	a0,a0,a5
780085e8:	40a58833          	sub	a6,a1,a0
780085ec:	853e                	mv	a0,a5
780085ee:	85c2                	mv	a1,a6
780085f0:	b555                	j	78008494 <__umoddi3+0xac>
780085f2:	010008b7          	lui	a7,0x1000
780085f6:	4741                	li	a4,16
780085f8:	fb16efe3          	bltu	a3,a7,780085b6 <__umoddi3+0x1ce>
780085fc:	4761                	li	a4,24
780085fe:	bf65                	j	780085b6 <__umoddi3+0x1ce>
78008600:	01d65733          	srl	a4,a2,t4
78008604:	01c696b3          	sll	a3,a3,t3
78008608:	8ed9                	or	a3,a3,a4
7800860a:	01d5d7b3          	srl	a5,a1,t4
7800860e:	0106d813          	srli	a6,a3,0x10
78008612:	0307f333          	remu	t1,a5,a6
78008616:	1006d733          	p.exthz	a4,a3
7800861a:	01d558b3          	srl	a7,a0,t4
7800861e:	01c595b3          	sll	a1,a1,t3
78008622:	00b8e5b3          	or	a1,a7,a1
78008626:	0105d893          	srli	a7,a1,0x10
7800862a:	01c61633          	sll	a2,a2,t3
7800862e:	01c51533          	sll	a0,a0,t3
78008632:	0307d7b3          	divu	a5,a5,a6
78008636:	0342                	slli	t1,t1,0x10
78008638:	011368b3          	or	a7,t1,a7
7800863c:	02f70f33          	mul	t5,a4,a5
78008640:	833e                	mv	t1,a5
78008642:	01e8fc63          	bleu	t5,a7,7800865a <__umoddi3+0x272>
78008646:	98b6                	add	a7,a7,a3
78008648:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff001b>
7800864c:	00d8e763          	bltu	a7,a3,7800865a <__umoddi3+0x272>
78008650:	01e8f563          	bleu	t5,a7,7800865a <__umoddi3+0x272>
78008654:	ffe78313          	addi	t1,a5,-2
78008658:	98b6                	add	a7,a7,a3
7800865a:	41e888b3          	sub	a7,a7,t5
7800865e:	0308f7b3          	remu	a5,a7,a6
78008662:	0308d8b3          	divu	a7,a7,a6
78008666:	df07a5b3          	p.insert	a1,a5,15,16
7800866a:	03170733          	mul	a4,a4,a7
7800866e:	87c6                	mv	a5,a7
78008670:	00e5fc63          	bleu	a4,a1,78008688 <__umoddi3+0x2a0>
78008674:	95b6                	add	a1,a1,a3
78008676:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff001b>
7800867a:	00d5e763          	bltu	a1,a3,78008688 <__umoddi3+0x2a0>
7800867e:	00e5f563          	bleu	a4,a1,78008688 <__umoddi3+0x2a0>
78008682:	ffe88793          	addi	a5,a7,-2
78008686:	95b6                	add	a1,a1,a3
78008688:	0342                	slli	t1,t1,0x10
7800868a:	6f41                	lui	t5,0x10
7800868c:	00f36333          	or	t1,t1,a5
78008690:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x1b>
78008694:	00f37833          	and	a6,t1,a5
78008698:	01035313          	srli	t1,t1,0x10
7800869c:	8ff1                	and	a5,a5,a2
7800869e:	02f808b3          	mul	a7,a6,a5
780086a2:	8d99                	sub	a1,a1,a4
780086a4:	01065713          	srli	a4,a2,0x10
780086a8:	02f307b3          	mul	a5,t1,a5
780086ac:	8fbe                	mv	t6,a5
780086ae:	42e80fb3          	p.mac	t6,a6,a4
780086b2:	0108d813          	srli	a6,a7,0x10
780086b6:	987e                	add	a6,a6,t6
780086b8:	02e30333          	mul	t1,t1,a4
780086bc:	00f87363          	bleu	a5,a6,780086c2 <__umoddi3+0x2da>
780086c0:	937a                	add	t1,t1,t5
780086c2:	01085713          	srli	a4,a6,0x10
780086c6:	933a                	add	t1,t1,a4
780086c8:	6741                	lui	a4,0x10
780086ca:	177d                	addi	a4,a4,-1
780086cc:	00e87833          	and	a6,a6,a4
780086d0:	0842                	slli	a6,a6,0x10
780086d2:	00e8f733          	and	a4,a7,a4
780086d6:	9742                	add	a4,a4,a6
780086d8:	0065e663          	bltu	a1,t1,780086e4 <__umoddi3+0x2fc>
780086dc:	00659d63          	bne	a1,t1,780086f6 <__umoddi3+0x30e>
780086e0:	00e57b63          	bleu	a4,a0,780086f6 <__umoddi3+0x30e>
780086e4:	40c70633          	sub	a2,a4,a2
780086e8:	00c73733          	sltu	a4,a4,a2
780086ec:	40d30333          	sub	t1,t1,a3
780086f0:	40e30333          	sub	t1,t1,a4
780086f4:	8732                	mv	a4,a2
780086f6:	40e50733          	sub	a4,a0,a4
780086fa:	00e53533          	sltu	a0,a0,a4
780086fe:	406585b3          	sub	a1,a1,t1
78008702:	8d89                	sub	a1,a1,a0
78008704:	01d597b3          	sll	a5,a1,t4
78008708:	01c75733          	srl	a4,a4,t3
7800870c:	00e7e533          	or	a0,a5,a4
78008710:	01c5d5b3          	srl	a1,a1,t3
78008714:	b341                	j	78008494 <__umoddi3+0xac>

78008716 <test_kickoff>:
78008716:	78000537          	lui	a0,0x78000
7800871a:	1141                	addi	sp,sp,-16
7800871c:	12050513          	addi	a0,a0,288 # 78000120 <__DTOR_END__+0x100>
78008720:	c606                	sw	ra,12(sp)
78008722:	209d                	jal	78008788 <puts>
78008724:	78001537          	lui	a0,0x78001
78008728:	a8050513          	addi	a0,a0,-1408 # 78000a80 <pos_alloc_l2>
7800872c:	53b000ef          	jal	ra,78009466 <pos_alloc_dump>
78008730:	78001537          	lui	a0,0x78001
78008734:	a8450513          	addi	a0,a0,-1404 # 78000a84 <pos_alloc_l2+0x4>
78008738:	52f000ef          	jal	ra,78009466 <pos_alloc_dump>
7800873c:	780017b7          	lui	a5,0x78001
78008740:	4501                	li	a0,0
78008742:	a607ac23          	sw	zero,-1416(a5) # 78000a78 <pos_kernel_pmsis_exit_value>
78008746:	2061                	jal	780087ce <exit>

78008748 <main>:
78008748:	1141                	addi	sp,sp,-16
7800874a:	c606                	sw	ra,12(sp)
7800874c:	37e9                	jal	78008716 <test_kickoff>

7800874e <pos_libc_putc_stdout>:
7800874e:	f14027f3          	csrr	a5,mhartid
78008752:	f1402773          	csrr	a4,mhartid
78008756:	1a10f6b7          	lui	a3,0x1a10f
7800875a:	ca5797b3          	p.extractu	a5,a5,5,5
7800875e:	070e                	slli	a4,a4,0x3
78008760:	079e                	slli	a5,a5,0x7
78008762:	ee873733          	p.bclr	a4,a4,23,8
78008766:	97b6                	add	a5,a5,a3
78008768:	00a767a3          	p.sw	a0,a5(a4)
7800876c:	8082                	ret

7800876e <strchr>:
7800876e:	0ff5f593          	andi	a1,a1,255
78008772:	00054703          	lbu	a4,0(a0)
78008776:	87aa                	mv	a5,a0
78008778:	0505                	addi	a0,a0,1
7800877a:	00b70563          	beq	a4,a1,78008784 <strchr+0x16>
7800877e:	fb75                	bnez	a4,78008772 <strchr+0x4>
78008780:	c191                	beqz	a1,78008784 <strchr+0x16>
78008782:	4781                	li	a5,0
78008784:	853e                	mv	a0,a5
78008786:	8082                	ret

78008788 <puts>:
78008788:	1141                	addi	sp,sp,-16
7800878a:	c422                	sw	s0,8(sp)
7800878c:	c606                	sw	ra,12(sp)
7800878e:	842a                	mv	s0,a0
78008790:	0014450b          	p.lbu	a0,1(s0!)
78008794:	c119                	beqz	a0,7800879a <puts+0x12>
78008796:	3f65                	jal	7800874e <pos_libc_putc_stdout>
78008798:	bfe5                	j	78008790 <puts+0x8>
7800879a:	4529                	li	a0,10
7800879c:	3f4d                	jal	7800874e <pos_libc_putc_stdout>
7800879e:	40b2                	lw	ra,12(sp)
780087a0:	4422                	lw	s0,8(sp)
780087a2:	4501                	li	a0,0
780087a4:	0141                	addi	sp,sp,16
780087a6:	8082                	ret

780087a8 <pos_libc_fputc_locked>:
780087a8:	1141                	addi	sp,sp,-16
780087aa:	0ff57513          	andi	a0,a0,255
780087ae:	c606                	sw	ra,12(sp)
780087b0:	3f79                	jal	7800874e <pos_libc_putc_stdout>
780087b2:	40b2                	lw	ra,12(sp)
780087b4:	4501                	li	a0,0
780087b6:	0141                	addi	sp,sp,16
780087b8:	8082                	ret

780087ba <putchar>:
780087ba:	1141                	addi	sp,sp,-16
780087bc:	0ff57513          	andi	a0,a0,255
780087c0:	c606                	sw	ra,12(sp)
780087c2:	3771                	jal	7800874e <pos_libc_putc_stdout>
780087c4:	40b2                	lw	ra,12(sp)
780087c6:	4501                	li	a0,0
780087c8:	0141                	addi	sp,sp,16
780087ca:	8082                	ret

780087cc <pos_libc_prf_locked>:
780087cc:	a249                	j	7800894e <pos_libc_prf>

780087ce <exit>:
780087ce:	1101                	addi	sp,sp,-32
780087d0:	c62a                	sw	a0,12(sp)
780087d2:	ce06                	sw	ra,28(sp)
780087d4:	44b000ef          	jal	ra,7800941e <pos_init_stop>
780087d8:	4532                	lw	a0,12(sp)
780087da:	1a1047b7          	lui	a5,0x1a104
780087de:	c1f54533          	p.bset	a0,a0,0,31
780087e2:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_heap_size+0x1a0f40bc>
780087e6:	1a10a7b7          	lui	a5,0x1a10a
780087ea:	577d                	li	a4,-1
780087ec:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_heap_size+0x1a0f9824>
780087f0:	10500073          	wfi
780087f4:	bff5                	j	780087f0 <exit+0x22>

780087f6 <pos_io_start>:
780087f6:	4501                	li	a0,0
780087f8:	8082                	ret

780087fa <pos_io_stop>:
780087fa:	4501                	li	a0,0
780087fc:	8082                	ret

780087fe <printf>:
780087fe:	7139                	addi	sp,sp,-64
78008800:	d432                	sw	a2,40(sp)
78008802:	862a                	mv	a2,a0
78008804:	78008537          	lui	a0,0x78008
78008808:	d22e                	sw	a1,36(sp)
7800880a:	d636                	sw	a3,44(sp)
7800880c:	4589                	li	a1,2
7800880e:	1054                	addi	a3,sp,36
78008810:	7a850513          	addi	a0,a0,1960 # 780087a8 <pos_libc_fputc_locked>
78008814:	ce06                	sw	ra,28(sp)
78008816:	d83a                	sw	a4,48(sp)
78008818:	da3e                	sw	a5,52(sp)
7800881a:	dc42                	sw	a6,56(sp)
7800881c:	de46                	sw	a7,60(sp)
7800881e:	c636                	sw	a3,12(sp)
78008820:	3775                	jal	780087cc <pos_libc_prf_locked>
78008822:	40f2                	lw	ra,28(sp)
78008824:	6121                	addi	sp,sp,64
78008826:	8082                	ret

78008828 <_to_x>:
78008828:	7179                	addi	sp,sp,-48
7800882a:	d422                	sw	s0,40(sp)
7800882c:	d226                	sw	s1,36(sp)
7800882e:	ce4e                	sw	s3,28(sp)
78008830:	cc52                	sw	s4,24(sp)
78008832:	ca56                	sw	s5,20(sp)
78008834:	c85a                	sw	s6,16(sp)
78008836:	d606                	sw	ra,44(sp)
78008838:	d04a                	sw	s2,32(sp)
7800883a:	c65e                	sw	s7,12(sp)
7800883c:	84aa                	mv	s1,a0
7800883e:	89ae                	mv	s3,a1
78008840:	8a32                	mv	s4,a2
78008842:	8ab6                	mv	s5,a3
78008844:	842a                	mv	s0,a0
78008846:	4b25                	li	s6,9
78008848:	8656                	mv	a2,s5
7800884a:	4681                	li	a3,0
7800884c:	854e                	mv	a0,s3
7800884e:	85d2                	mv	a1,s4
78008850:	3e61                	jal	780083e8 <__umoddi3>
78008852:	85d2                	mv	a1,s4
78008854:	892a                	mv	s2,a0
78008856:	8656                	mv	a2,s5
78008858:	854e                	mv	a0,s3
7800885a:	4681                	li	a3,0
7800885c:	3881                	jal	780080ac <__udivdi3>
7800885e:	89aa                	mv	s3,a0
78008860:	8a2e                	mv	s4,a1
78008862:	02700713          	li	a4,39
78008866:	012b6363          	bltu	s6,s2,7800886c <_to_x+0x44>
7800886a:	4701                	li	a4,0
7800886c:	03090913          	addi	s2,s2,48
78008870:	974a                	add	a4,a4,s2
78008872:	00e40023          	sb	a4,0(s0)
78008876:	8dc9                	or	a1,a1,a0
78008878:	00140793          	addi	a5,s0,1
7800887c:	e195                	bnez	a1,780088a0 <_to_x+0x78>
7800887e:	00078023          	sb	zero,0(a5)
78008882:	40978533          	sub	a0,a5,s1
78008886:	0084ef63          	bltu	s1,s0,780088a4 <_to_x+0x7c>
7800888a:	50b2                	lw	ra,44(sp)
7800888c:	5422                	lw	s0,40(sp)
7800888e:	5492                	lw	s1,36(sp)
78008890:	5902                	lw	s2,32(sp)
78008892:	49f2                	lw	s3,28(sp)
78008894:	4a62                	lw	s4,24(sp)
78008896:	4ad2                	lw	s5,20(sp)
78008898:	4b42                	lw	s6,16(sp)
7800889a:	4bb2                	lw	s7,12(sp)
7800889c:	6145                	addi	sp,sp,48
7800889e:	8082                	ret
780088a0:	843e                	mv	s0,a5
780088a2:	b75d                	j	78008848 <_to_x+0x20>
780088a4:	0004c703          	lbu	a4,0(s1)
780088a8:	00044783          	lbu	a5,0(s0)
780088ac:	fee40fab          	p.sb	a4,-1(s0!)
780088b0:	00f480ab          	p.sb	a5,1(s1!)
780088b4:	bfc9                	j	78008886 <_to_x+0x5e>

780088b6 <_rlrshift>:
780088b6:	411c                	lw	a5,0(a0)
780088b8:	4154                	lw	a3,4(a0)
780088ba:	fc17b733          	p.bclr	a4,a5,30,1
780088be:	01f69613          	slli	a2,a3,0x1f
780088c2:	8385                	srli	a5,a5,0x1
780088c4:	8fd1                	or	a5,a5,a2
780088c6:	97ba                	add	a5,a5,a4
780088c8:	8285                	srli	a3,a3,0x1
780088ca:	00e7b733          	sltu	a4,a5,a4
780088ce:	9736                	add	a4,a4,a3
780088d0:	c11c                	sw	a5,0(a0)
780088d2:	c158                	sw	a4,4(a0)
780088d4:	8082                	ret

780088d6 <_ldiv5>:
780088d6:	4118                	lw	a4,0(a0)
780088d8:	4154                	lw	a3,4(a0)
780088da:	4615                	li	a2,5
780088dc:	00270793          	addi	a5,a4,2 # 10002 <__l1_heap_size+0x1e>
780088e0:	00e7b733          	sltu	a4,a5,a4
780088e4:	9736                	add	a4,a4,a3
780088e6:	02c755b3          	divu	a1,a4,a2
780088ea:	42b61733          	p.msu	a4,a2,a1
780088ee:	01d71693          	slli	a3,a4,0x1d
780088f2:	0037d713          	srli	a4,a5,0x3
780088f6:	8f55                	or	a4,a4,a3
780088f8:	02c75733          	divu	a4,a4,a2
780088fc:	01d75693          	srli	a3,a4,0x1d
78008900:	070e                	slli	a4,a4,0x3
78008902:	42e617b3          	p.msu	a5,a2,a4
78008906:	95b6                	add	a1,a1,a3
78008908:	02c7d7b3          	divu	a5,a5,a2
7800890c:	973e                	add	a4,a4,a5
7800890e:	00f737b3          	sltu	a5,a4,a5
78008912:	97ae                	add	a5,a5,a1
78008914:	c118                	sw	a4,0(a0)
78008916:	c15c                	sw	a5,4(a0)
78008918:	8082                	ret

7800891a <_get_digit>:
7800891a:	419c                	lw	a5,0(a1)
7800891c:	03000713          	li	a4,48
78008920:	02f05563          	blez	a5,7800894a <_get_digit+0x30>
78008924:	17fd                	addi	a5,a5,-1
78008926:	c19c                	sw	a5,0(a1)
78008928:	411c                	lw	a5,0(a0)
7800892a:	4729                	li	a4,10
7800892c:	4150                	lw	a2,4(a0)
7800892e:	02f706b3          	mul	a3,a4,a5
78008932:	02f737b3          	mulhu	a5,a4,a5
78008936:	c114                	sw	a3,0(a0)
78008938:	42c707b3          	p.mac	a5,a4,a2
7800893c:	01c7d713          	srli	a4,a5,0x1c
78008940:	c7c7b7b3          	p.bclr	a5,a5,3,28
78008944:	03070713          	addi	a4,a4,48
78008948:	c15c                	sw	a5,4(a0)
7800894a:	853a                	mv	a0,a4
7800894c:	8082                	ret

7800894e <pos_libc_prf>:
7800894e:	7135                	addi	sp,sp,-160
78008950:	c94a                	sw	s2,144(sp)
78008952:	c74e                	sw	s3,140(sp)
78008954:	c15a                	sw	s6,128(sp)
78008956:	dede                	sw	s7,124(sp)
78008958:	cf06                	sw	ra,156(sp)
7800895a:	cd22                	sw	s0,152(sp)
7800895c:	cb26                	sw	s1,148(sp)
7800895e:	c552                	sw	s4,136(sp)
78008960:	c356                	sw	s5,132(sp)
78008962:	dce2                	sw	s8,120(sp)
78008964:	dae6                	sw	s9,116(sp)
78008966:	d8ea                	sw	s10,112(sp)
78008968:	d6ee                	sw	s11,108(sp)
7800896a:	8b2a                	mv	s6,a0
7800896c:	8bae                	mv	s7,a1
7800896e:	8936                	mv	s2,a3
78008970:	4981                	li	s3,0
78008972:	00064503          	lbu	a0,0(a2) # 1000000 <__l1_heap_size+0xff001c>
78008976:	00160c13          	addi	s8,a2,1
7800897a:	c911                	beqz	a0,7800898e <pos_libc_prf+0x40>
7800897c:	02500793          	li	a5,37
78008980:	14f50363          	beq	a0,a5,78008ac6 <pos_libc_prf+0x178>
78008984:	85de                	mv	a1,s7
78008986:	9b02                	jalr	s6
78008988:	13f535e3          	p.bneimm	a0,-1,780092b2 <pos_libc_prf+0x964>
7800898c:	59fd                	li	s3,-1
7800898e:	40fa                	lw	ra,156(sp)
78008990:	446a                	lw	s0,152(sp)
78008992:	854e                	mv	a0,s3
78008994:	44da                	lw	s1,148(sp)
78008996:	494a                	lw	s2,144(sp)
78008998:	49ba                	lw	s3,140(sp)
7800899a:	4a2a                	lw	s4,136(sp)
7800899c:	4a9a                	lw	s5,132(sp)
7800899e:	4b0a                	lw	s6,128(sp)
780089a0:	5bf6                	lw	s7,124(sp)
780089a2:	5c66                	lw	s8,120(sp)
780089a4:	5cd6                	lw	s9,116(sp)
780089a6:	5d46                	lw	s10,112(sp)
780089a8:	5db6                	lw	s11,108(sp)
780089aa:	610d                	addi	sp,sp,160
780089ac:	8082                	ret
780089ae:	108d8463          	beq	s11,s0,78008ab6 <pos_libc_prf+0x168>
780089b2:	0fb46663          	bltu	s0,s11,78008a9e <pos_libc_prf+0x150>
780089b6:	fc0d8ce3          	beqz	s11,7800898e <pos_libc_prf+0x40>
780089ba:	0ecd8b63          	beq	s11,a2,78008ab0 <pos_libc_prf+0x162>
780089be:	8c52                	mv	s8,s4
780089c0:	000c4d83          	lbu	s11,0(s8)
780089c4:	78000737          	lui	a4,0x78000
780089c8:	13070513          	addi	a0,a4,304 # 78000130 <__DTOR_END__+0x110>
780089cc:	85ee                	mv	a1,s11
780089ce:	c232                	sw	a2,4(sp)
780089d0:	3b79                	jal	7800876e <strchr>
780089d2:	001c0a13          	addi	s4,s8,1
780089d6:	4612                	lw	a2,4(sp)
780089d8:	f979                	bnez	a0,780089ae <pos_libc_prf+0x60>
780089da:	02a00713          	li	a4,42
780089de:	10ed9463          	bne	s11,a4,78008ae6 <pos_libc_prf+0x198>
780089e2:	00092c83          	lw	s9,0(s2)
780089e6:	00490713          	addi	a4,s2,4
780089ea:	000cd663          	bgez	s9,780089f6 <pos_libc_prf+0xa8>
780089ee:	4785                	li	a5,1
780089f0:	41900cb3          	neg	s9,s9
780089f4:	cc3e                	sw	a5,24(sp)
780089f6:	000a4d83          	lbu	s11,0(s4)
780089fa:	893a                	mv	s2,a4
780089fc:	002c0a13          	addi	s4,s8,2
78008a00:	02e00713          	li	a4,46
78008a04:	547d                	li	s0,-1
78008a06:	00ed9f63          	bne	s11,a4,78008a24 <pos_libc_prf+0xd6>
78008a0a:	000a4703          	lbu	a4,0(s4)
78008a0e:	02a00793          	li	a5,42
78008a12:	10f71d63          	bne	a4,a5,78008b2c <pos_libc_prf+0x1de>
78008a16:	00092403          	lw	s0,0(s2)
78008a1a:	0a05                	addi	s4,s4,1
78008a1c:	0911                	addi	s2,s2,4
78008a1e:	000a4d83          	lbu	s11,0(s4)
78008a22:	0a05                	addi	s4,s4,1
78008a24:	78000737          	lui	a4,0x78000
78008a28:	85ee                	mv	a1,s11
78008a2a:	13870513          	addi	a0,a4,312 # 78000138 <__DTOR_END__+0x118>
78008a2e:	84ee                	mv	s1,s11
78008a30:	3b3d                	jal	7800876e <strchr>
78008a32:	10050e63          	beqz	a0,78008b4e <pos_libc_prf+0x200>
78008a36:	06c00693          	li	a3,108
78008a3a:	001a0c13          	addi	s8,s4,1
78008a3e:	000a4d83          	lbu	s11,0(s4)
78008a42:	0ed49963          	bne	s1,a3,78008b34 <pos_libc_prf+0x1e6>
78008a46:	009d9863          	bne	s11,s1,78008a56 <pos_libc_prf+0x108>
78008a4a:	001a4d83          	lbu	s11,1(s4)
78008a4e:	002a0c13          	addi	s8,s4,2
78008a52:	04c00493          	li	s1,76
78008a56:	06700693          	li	a3,103
78008a5a:	17b6e263          	bltu	a3,s11,78008bbe <pos_libc_prf+0x270>
78008a5e:	06500693          	li	a3,101
78008a62:	32ddfb63          	bleu	a3,s11,78008d98 <pos_libc_prf+0x44a>
78008a66:	04700693          	li	a3,71
78008a6a:	0fb6e563          	bltu	a3,s11,78008b54 <pos_libc_prf+0x206>
78008a6e:	04500713          	li	a4,69
78008a72:	32edf363          	bleu	a4,s11,78008d98 <pos_libc_prf+0x44a>
78008a76:	f00d8ce3          	beqz	s11,7800898e <pos_libc_prf+0x40>
78008a7a:	02500713          	li	a4,37
78008a7e:	02ed85e3          	beq	s11,a4,780092a8 <pos_libc_prf+0x95a>
78008a82:	85de                	mv	a1,s7
78008a84:	02500513          	li	a0,37
78008a88:	9b02                	jalr	s6
78008a8a:	f1f521e3          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
78008a8e:	85de                	mv	a1,s7
78008a90:	856e                	mv	a0,s11
78008a92:	9b02                	jalr	s6
78008a94:	eff52ce3          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
78008a98:	0989                	addi	s3,s3,2
78008a9a:	01b0006f          	j	780092b4 <pos_libc_prf+0x966>
78008a9e:	039d8163          	beq	s11,s9,78008ac0 <pos_libc_prf+0x172>
78008aa2:	009d8c63          	beq	s11,s1,78008aba <pos_libc_prf+0x16c>
78008aa6:	f1ad9ce3          	bne	s11,s10,780089be <pos_libc_prf+0x70>
78008aaa:	4705                	li	a4,1
78008aac:	c63a                	sw	a4,12(sp)
78008aae:	bf01                	j	780089be <pos_libc_prf+0x70>
78008ab0:	4785                	li	a5,1
78008ab2:	c83e                	sw	a5,16(sp)
78008ab4:	b729                	j	780089be <pos_libc_prf+0x70>
78008ab6:	4a85                	li	s5,1
78008ab8:	b719                	j	780089be <pos_libc_prf+0x70>
78008aba:	4705                	li	a4,1
78008abc:	ce3a                	sw	a4,28(sp)
78008abe:	b701                	j	780089be <pos_libc_prf+0x70>
78008ac0:	4785                	li	a5,1
78008ac2:	cc3e                	sw	a5,24(sp)
78008ac4:	bded                	j	780089be <pos_libc_prf+0x70>
78008ac6:	ce02                	sw	zero,28(sp)
78008ac8:	c802                	sw	zero,16(sp)
78008aca:	c602                	sw	zero,12(sp)
78008acc:	cc02                	sw	zero,24(sp)
78008ace:	4a81                	li	s5,0
78008ad0:	02300413          	li	s0,35
78008ad4:	02d00c93          	li	s9,45
78008ad8:	03000493          	li	s1,48
78008adc:	02b00d13          	li	s10,43
78008ae0:	02000613          	li	a2,32
78008ae4:	bdf1                	j	780089c0 <pos_libc_prf+0x72>
78008ae6:	fd0d8713          	addi	a4,s11,-48
78008aea:	46a5                	li	a3,9
78008aec:	4c81                	li	s9,0
78008aee:	f0e6e9e3          	bltu	a3,a4,78008a00 <pos_libc_prf+0xb2>
78008af2:	4725                	li	a4,9
78008af4:	4629                	li	a2,10
78008af6:	8a62                	mv	s4,s8
78008af8:	001a4d8b          	p.lbu	s11,1(s4!)
78008afc:	fd0d8693          	addi	a3,s11,-48
78008b00:	f0d760e3          	bltu	a4,a3,78008a00 <pos_libc_prf+0xb2>
78008b04:	87ee                	mv	a5,s11
78008b06:	42cc87b3          	p.mac	a5,s9,a2
78008b0a:	8c52                	mv	s8,s4
78008b0c:	fd078c93          	addi	s9,a5,-48
78008b10:	b7dd                	j	78008af6 <pos_libc_prf+0x1a8>
78008b12:	42b407b3          	p.mac	a5,s0,a1
78008b16:	8a3a                	mv	s4,a4
78008b18:	fd078413          	addi	s0,a5,-48
78008b1c:	8752                	mv	a4,s4
78008b1e:	0017478b          	p.lbu	a5,1(a4!)
78008b22:	fd078613          	addi	a2,a5,-48
78008b26:	fec6f6e3          	bleu	a2,a3,78008b12 <pos_libc_prf+0x1c4>
78008b2a:	bdd5                	j	78008a1e <pos_libc_prf+0xd0>
78008b2c:	4401                	li	s0,0
78008b2e:	46a5                	li	a3,9
78008b30:	45a9                	li	a1,10
78008b32:	b7ed                	j	78008b1c <pos_libc_prf+0x1ce>
78008b34:	06800693          	li	a3,104
78008b38:	f0d49fe3          	bne	s1,a3,78008a56 <pos_libc_prf+0x108>
78008b3c:	f09d9de3          	bne	s11,s1,78008a56 <pos_libc_prf+0x108>
78008b40:	002a0c13          	addi	s8,s4,2
78008b44:	001a4d83          	lbu	s11,1(s4)
78008b48:	04800493          	li	s1,72
78008b4c:	b729                	j	78008a56 <pos_libc_prf+0x108>
78008b4e:	8c52                	mv	s8,s4
78008b50:	4481                	li	s1,0
78008b52:	b711                	j	78008a56 <pos_libc_prf+0x108>
78008b54:	06300693          	li	a3,99
78008b58:	12dd8963          	beq	s11,a3,78008c8a <pos_libc_prf+0x33c>
78008b5c:	09b6e163          	bltu	a3,s11,78008bde <pos_libc_prf+0x290>
78008b60:	05800693          	li	a3,88
78008b64:	f0dd9fe3          	bne	s11,a3,78008a82 <pos_libc_prf+0x134>
78008b68:	06c00693          	li	a3,108
78008b6c:	6ad48b63          	beq	s1,a3,78009222 <pos_libc_prf+0x8d4>
78008b70:	07a00693          	li	a3,122
78008b74:	6ad48763          	beq	s1,a3,78009222 <pos_libc_prf+0x8d4>
78008b78:	04c00693          	li	a3,76
78008b7c:	6ad49363          	bne	s1,a3,78009222 <pos_libc_prf+0x8d4>
78008b80:	091d                	addi	s2,s2,7
78008b82:	c4093933          	p.bclr	s2,s2,2,0
78008b86:	00092583          	lw	a1,0(s2)
78008b8a:	00492603          	lw	a2,4(s2)
78008b8e:	00890a13          	addi	s4,s2,8
78008b92:	06f00713          	li	a4,111
78008b96:	00c4                	addi	s1,sp,68
78008b98:	6aed9563          	bne	s11,a4,78009242 <pos_libc_prf+0x8f4>
78008b9c:	680a8963          	beqz	s5,7800922e <pos_libc_prf+0x8e0>
78008ba0:	03000793          	li	a5,48
78008ba4:	04f10223          	sb	a5,68(sp)
78008ba8:	00c5e7b3          	or	a5,a1,a2
78008bac:	04510513          	addi	a0,sp,69
78008bb0:	68079063          	bnez	a5,78009230 <pos_libc_prf+0x8e2>
78008bb4:	040102a3          	sb	zero,69(sp)
78008bb8:	4901                	li	s2,0
78008bba:	4d85                	li	s11,1
78008bbc:	a061                	j	78008c44 <pos_libc_prf+0x2f6>
78008bbe:	07000693          	li	a3,112
78008bc2:	62dd8763          	beq	s11,a3,780091f0 <pos_libc_prf+0x8a2>
78008bc6:	09b6e563          	bltu	a3,s11,78008c50 <pos_libc_prf+0x302>
78008bca:	06e00693          	li	a3,110
78008bce:	5cdd8c63          	beq	s11,a3,780091a6 <pos_libc_prf+0x858>
78008bd2:	f9b6ebe3          	bltu	a3,s11,78008b68 <pos_libc_prf+0x21a>
78008bd6:	06900693          	li	a3,105
78008bda:	eadd94e3          	bne	s11,a3,78008a82 <pos_libc_prf+0x134>
78008bde:	06c00793          	li	a5,108
78008be2:	18f48463          	beq	s1,a5,78008d6a <pos_libc_prf+0x41c>
78008be6:	07a00793          	li	a5,122
78008bea:	18f48063          	beq	s1,a5,78008d6a <pos_libc_prf+0x41c>
78008bee:	04c00793          	li	a5,76
78008bf2:	16f49c63          	bne	s1,a5,78008d6a <pos_libc_prf+0x41c>
78008bf6:	091d                	addi	s2,s2,7
78008bf8:	c4093933          	p.bclr	s2,s2,2,0
78008bfc:	00092583          	lw	a1,0(s2)
78008c00:	00492a83          	lw	s5,4(s2)
78008c04:	00890a13          	addi	s4,s2,8
78008c08:	04410d93          	addi	s11,sp,68
78008c0c:	160ad663          	bgez	s5,78008d78 <pos_libc_prf+0x42a>
78008c10:	02d00793          	li	a5,45
78008c14:	40b005b3          	neg	a1,a1
78008c18:	04f10223          	sb	a5,68(sp)
78008c1c:	41500633          	neg	a2,s5
78008c20:	00b037b3          	snez	a5,a1
78008c24:	8e1d                	sub	a2,a2,a5
78008c26:	04510913          	addi	s2,sp,69
78008c2a:	854a                	mv	a0,s2
78008c2c:	46a9                	li	a3,10
78008c2e:	3eed                	jal	78008828 <_to_x>
78008c30:	47b2                	lw	a5,12(sp)
78008c32:	954a                	add	a0,a0,s2
78008c34:	41b50db3          	sub	s11,a0,s11
78008c38:	4905                	li	s2,1
78008c3a:	e789                	bnez	a5,78008c44 <pos_libc_prf+0x2f6>
78008c3c:	4742                	lw	a4,16(sp)
78008c3e:	e319                	bnez	a4,78008c44 <pos_libc_prf+0x2f6>
78008c40:	01fad913          	srli	s2,s5,0x1f
78008c44:	04045c63          	bgez	s0,78008c9c <pos_libc_prf+0x34e>
78008c48:	4401                	li	s0,0
78008c4a:	4a81                	li	s5,0
78008c4c:	4681                	li	a3,0
78008c4e:	a401                	j	78008e4e <pos_libc_prf+0x500>
78008c50:	07500693          	li	a3,117
78008c54:	f0dd8ae3          	beq	s11,a3,78008b68 <pos_libc_prf+0x21a>
78008c58:	07800693          	li	a3,120
78008c5c:	f0dd86e3          	beq	s11,a3,78008b68 <pos_libc_prf+0x21a>
78008c60:	07300713          	li	a4,115
78008c64:	e0ed9fe3          	bne	s11,a4,78008a82 <pos_libc_prf+0x134>
78008c68:	00490a13          	addi	s4,s2,4
78008c6c:	00092783          	lw	a5,0(s2)
78008c70:	00045663          	bgez	s0,78008c7c <pos_libc_prf+0x32e>
78008c74:	80000737          	lui	a4,0x80000
78008c78:	fff74413          	not	s0,a4
78008c7c:	86be                	mv	a3,a5
78008c7e:	4d81                	li	s11,0
78008c80:	59b41b63          	bne	s0,s11,78009216 <pos_libc_prf+0x8c8>
78008c84:	4901                	li	s2,0
78008c86:	4401                	li	s0,0
78008c88:	a819                	j	78008c9e <pos_libc_prf+0x350>
78008c8a:	00092783          	lw	a5,0(s2)
78008c8e:	00490a13          	addi	s4,s2,4
78008c92:	4d85                	li	s11,1
78008c94:	04f10223          	sb	a5,68(sp)
78008c98:	4901                	li	s2,0
78008c9a:	4401                	li	s0,0
78008c9c:	00dc                	addi	a5,sp,68
78008c9e:	41b40d33          	sub	s10,s0,s11
78008ca2:	9d4a                	add	s10,s10,s2
78008ca4:	4401                	li	s0,0
78008ca6:	4a81                	li	s5,0
78008ca8:	4681                	li	a3,0
78008caa:	040d6d33          	p.max	s10,s10,zero
78008cae:	4762                	lw	a4,24(sp)
78008cb0:	01bd0633          	add	a2,s10,s11
78008cb4:	40cc8cb3          	sub	s9,s9,a2
78008cb8:	e701                	bnez	a4,78008cc0 <pos_libc_prf+0x372>
78008cba:	84e6                	mv	s1,s9
78008cbc:	61904b63          	bgtz	s9,780092d2 <pos_libc_prf+0x984>
78008cc0:	012784b3          	add	s1,a5,s2
78008cc4:	60979d63          	bne	a5,s1,780092de <pos_libc_prf+0x990>
78008cc8:	84ea                	mv	s1,s10
78008cca:	14fd                	addi	s1,s1,-1
78008ccc:	63f4b563          	p.bneimm	s1,-1,780092f6 <pos_libc_prf+0x9a8>
78008cd0:	412d84b3          	sub	s1,s11,s2
78008cd4:	8726                	mv	a4,s1
78008cd6:	c295                	beqz	a3,78008cfa <pos_libc_prf+0x3ac>
78008cd8:	0007c503          	lbu	a0,0(a5)
78008cdc:	8dbe                	mv	s11,a5
78008cde:	00978833          	add	a6,a5,s1
78008ce2:	4625                	li	a2,9
78008ce4:	fd050593          	addi	a1,a0,-48
78008ce8:	41b80733          	sub	a4,a6,s11
78008cec:	62b67163          	bleu	a1,a2,7800930e <pos_libc_prf+0x9c0>
78008cf0:	8636                	mv	a2,a3
78008cf2:	62061c63          	bnez	a2,7800932a <pos_libc_prf+0x9dc>
78008cf6:	8f15                	sub	a4,a4,a3
78008cf8:	87ee                	mv	a5,s11
78008cfa:	020a8e63          	beqz	s5,78008d36 <pos_libc_prf+0x3e8>
78008cfe:	8dbe                	mv	s11,a5
78008d00:	00e78833          	add	a6,a5,a4
78008d04:	02e00613          	li	a2,46
78008d08:	001dc68b          	p.lbu	a3,1(s11!)
78008d0c:	85de                	mv	a1,s7
78008d0e:	c232                	sw	a2,4(sp)
78008d10:	8536                	mv	a0,a3
78008d12:	c036                	sw	a3,0(sp)
78008d14:	c442                	sw	a6,8(sp)
78008d16:	9b02                	jalr	s6
78008d18:	4612                	lw	a2,4(sp)
78008d1a:	4682                	lw	a3,0(sp)
78008d1c:	4822                	lw	a6,8(sp)
78008d1e:	c7f527e3          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
78008d22:	41b80733          	sub	a4,a6,s11
78008d26:	fec691e3          	bne	a3,a2,78008d08 <pos_libc_prf+0x3ba>
78008d2a:	86d6                	mv	a3,s5
78008d2c:	60d04e63          	bgtz	a3,78009348 <pos_libc_prf+0x9fa>
78008d30:	41570733          	sub	a4,a4,s5
78008d34:	87ee                	mv	a5,s11
78008d36:	c415                	beqz	s0,78008d62 <pos_libc_prf+0x414>
78008d38:	0007c503          	lbu	a0,0(a5)
78008d3c:	8dbe                	mv	s11,a5
78008d3e:	973e                	add	a4,a4,a5
78008d40:	4625                	li	a2,9
78008d42:	02e00693          	li	a3,46
78008d46:	fd050593          	addi	a1,a0,-48
78008d4a:	41b70ab3          	sub	s5,a4,s11
78008d4e:	60b67a63          	bleu	a1,a2,78009362 <pos_libc_prf+0xa14>
78008d52:	60d50863          	beq	a0,a3,78009362 <pos_libc_prf+0xa14>
78008d56:	8722                	mv	a4,s0
78008d58:	62e04363          	bgtz	a4,7800937e <pos_libc_prf+0xa30>
78008d5c:	408a8733          	sub	a4,s5,s0
78008d60:	87ee                	mv	a5,s11
78008d62:	843e                	mv	s0,a5
78008d64:	00e78ab3          	add	s5,a5,a4
78008d68:	ad25                	j	780093a0 <pos_libc_prf+0xa52>
78008d6a:	00092583          	lw	a1,0(s2)
78008d6e:	00490a13          	addi	s4,s2,4
78008d72:	41f5da93          	srai	s5,a1,0x1f
78008d76:	bd49                	j	78008c08 <pos_libc_prf+0x2ba>
78008d78:	47b2                	lw	a5,12(sp)
78008d7a:	c799                	beqz	a5,78008d88 <pos_libc_prf+0x43a>
78008d7c:	02b00793          	li	a5,43
78008d80:	04f10223          	sb	a5,68(sp)
78008d84:	8656                	mv	a2,s5
78008d86:	b545                	j	78008c26 <pos_libc_prf+0x2d8>
78008d88:	4742                	lw	a4,16(sp)
78008d8a:	c701                	beqz	a4,78008d92 <pos_libc_prf+0x444>
78008d8c:	02000793          	li	a5,32
78008d90:	bfc5                	j	78008d80 <pos_libc_prf+0x432>
78008d92:	8656                	mv	a2,s5
78008d94:	896e                	mv	s2,s11
78008d96:	bd51                	j	78008c2a <pos_libc_prf+0x2dc>
78008d98:	091d                	addi	s2,s2,7
78008d9a:	c4093933          	p.bclr	s2,s2,2,0
78008d9e:	00092583          	lw	a1,0(s2)
78008da2:	00492683          	lw	a3,4(s2)
78008da6:	800007b7          	lui	a5,0x80000
78008daa:	0155d613          	srli	a2,a1,0x15
78008dae:	00b69713          	slli	a4,a3,0xb
78008db2:	8f51                	or	a4,a4,a2
78008db4:	fff7c793          	not	a5,a5
78008db8:	05ae                	slli	a1,a1,0xb
78008dba:	8f7d                	and	a4,a4,a5
78008dbc:	00890a13          	addi	s4,s2,8
78008dc0:	d82e                	sw	a1,48(sp)
78008dc2:	0146d913          	srli	s2,a3,0x14
78008dc6:	da3a                	sw	a4,52(sp)
78008dc8:	e8b93933          	p.bclr	s2,s2,20,11
78008dcc:	0806d863          	bgez	a3,78008e5c <pos_libc_prf+0x50e>
78008dd0:	02d00693          	li	a3,45
78008dd4:	04d10223          	sb	a3,68(sp)
78008dd8:	04510493          	addi	s1,sp,69
78008ddc:	7ff00693          	li	a3,2047
78008de0:	0cd91363          	bne	s2,a3,78008ea6 <pos_libc_prf+0x558>
78008de4:	8f4d                	or	a4,a4,a1
78008de6:	fbfd8793          	addi	a5,s11,-65
78008dea:	00348513          	addi	a0,s1,3
78008dee:	eb49                	bnez	a4,78008e80 <pos_libc_prf+0x532>
78008df0:	4765                	li	a4,25
78008df2:	06f76f63          	bltu	a4,a5,78008e70 <pos_libc_prf+0x522>
78008df6:	6795                	lui	a5,0x5
78008df8:	e4978793          	addi	a5,a5,-439 # 4e49 <__cluster_text_size+0x4d01>
78008dfc:	00f49023          	sh	a5,0(s1)
78008e00:	04600793          	li	a5,70
78008e04:	04410913          	addi	s2,sp,68
78008e08:	00f48123          	sb	a5,2(s1)
78008e0c:	000481a3          	sb	zero,3(s1)
78008e10:	41250533          	sub	a0,a0,s2
78008e14:	4401                	li	s0,0
78008e16:	4a81                	li	s5,0
78008e18:	4681                	li	a3,0
78008e1a:	4732                	lw	a4,12(sp)
78008e1c:	4905                	li	s2,1
78008e1e:	eb09                	bnez	a4,78008e30 <pos_libc_prf+0x4e2>
78008e20:	47c2                	lw	a5,16(sp)
78008e22:	e799                	bnez	a5,78008e30 <pos_libc_prf+0x4e2>
78008e24:	04414903          	lbu	s2,68(sp)
78008e28:	fd390913          	addi	s2,s2,-45
78008e2c:	00193913          	seqz	s2,s2
78008e30:	1098                	addi	a4,sp,96
78008e32:	012707b3          	add	a5,a4,s2
78008e36:	fe47c783          	lbu	a5,-28(a5)
78008e3a:	015684b3          	add	s1,a3,s5
78008e3e:	94a2                	add	s1,s1,s0
78008e40:	fd078793          	addi	a5,a5,-48
78008e44:	4625                	li	a2,9
78008e46:	00a48db3          	add	s11,s1,a0
78008e4a:	46f66763          	bltu	a2,a5,780092b8 <pos_libc_prf+0x96a>
78008e4e:	47f2                	lw	a5,28(sp)
78008e50:	46078463          	beqz	a5,780092b8 <pos_libc_prf+0x96a>
78008e54:	41bc8d33          	sub	s10,s9,s11
78008e58:	00dc                	addi	a5,sp,68
78008e5a:	bd81                	j	78008caa <pos_libc_prf+0x35c>
78008e5c:	47b2                	lw	a5,12(sp)
78008e5e:	02b00693          	li	a3,43
78008e62:	fbad                	bnez	a5,78008dd4 <pos_libc_prf+0x486>
78008e64:	47c2                	lw	a5,16(sp)
78008e66:	00c4                	addi	s1,sp,68
78008e68:	dbb5                	beqz	a5,78008ddc <pos_libc_prf+0x48e>
78008e6a:	02000693          	li	a3,32
78008e6e:	b79d                	j	78008dd4 <pos_libc_prf+0x486>
78008e70:	679d                	lui	a5,0x7
78008e72:	e6978793          	addi	a5,a5,-407 # 6e69 <__cluster_text_size+0x6d21>
78008e76:	00f49023          	sh	a5,0(s1)
78008e7a:	06600793          	li	a5,102
78008e7e:	b759                	j	78008e04 <pos_libc_prf+0x4b6>
78008e80:	4765                	li	a4,25
78008e82:	00f76a63          	bltu	a4,a5,78008e96 <pos_libc_prf+0x548>
78008e86:	6791                	lui	a5,0x4
78008e88:	14e78793          	addi	a5,a5,334 # 414e <__cluster_text_size+0x4006>
78008e8c:	00f49023          	sh	a5,0(s1)
78008e90:	04e00793          	li	a5,78
78008e94:	bf85                	j	78008e04 <pos_libc_prf+0x4b6>
78008e96:	6799                	lui	a5,0x6
78008e98:	16e78793          	addi	a5,a5,366 # 616e <__cluster_text_size+0x6026>
78008e9c:	00f49023          	sh	a5,0(s1)
78008ea0:	06e00793          	li	a5,110
78008ea4:	b785                	j	78008e04 <pos_libc_prf+0x4b6>
78008ea6:	04600693          	li	a3,70
78008eaa:	00dd9463          	bne	s11,a3,78008eb2 <pos_libc_prf+0x564>
78008eae:	06600d93          	li	s11,102
78008eb2:	41f95613          	srai	a2,s2,0x1f
78008eb6:	00b966b3          	or	a3,s2,a1
78008eba:	8e59                	or	a2,a2,a4
78008ebc:	8ed1                	or	a3,a3,a2
78008ebe:	1a068c63          	beqz	a3,78009076 <pos_libc_prf+0x728>
78008ec2:	10090963          	beqz	s2,78008fd4 <pos_libc_prf+0x686>
78008ec6:	5752                	lw	a4,52(sp)
78008ec8:	800007b7          	lui	a5,0x80000
78008ecc:	c0290913          	addi	s2,s2,-1022
78008ed0:	8f5d                	or	a4,a4,a5
78008ed2:	da3a                	sw	a4,52(sp)
78008ed4:	4d01                	li	s10,0
78008ed6:	5779                	li	a4,-2
78008ed8:	10e94a63          	blt	s2,a4,78008fec <pos_libc_prf+0x69e>
78008edc:	17204163          	bgtz	s2,7800903e <pos_libc_prf+0x6f0>
78008ee0:	1808                	addi	a0,sp,48
78008ee2:	0905                	addi	s2,s2,1
78008ee4:	3ac9                	jal	780088b6 <_rlrshift>
78008ee6:	fe493de3          	p.bneimm	s2,4,78008ee0 <pos_libc_prf+0x592>
78008eea:	00045363          	bgez	s0,78008ef0 <pos_libc_prf+0x5a2>
78008eee:	4419                	li	s0,6
78008ef0:	0dfdf713          	andi	a4,s11,223
78008ef4:	04700693          	li	a3,71
78008ef8:	ca02                	sw	zero,20(sp)
78008efa:	02d71563          	bne	a4,a3,78008f24 <pos_libc_prf+0x5d6>
78008efe:	5775                	li	a4,-3
78008f00:	00ed4463          	blt	s10,a4,78008f08 <pos_libc_prf+0x5ba>
78008f04:	17a45c63          	ble	s10,s0,7800907c <pos_libc_prf+0x72e>
78008f08:	ffed8793          	addi	a5,s11,-2
78008f0c:	0ff7fd93          	andi	s11,a5,255
78008f10:	4c040863          	beqz	s0,780093e0 <pos_libc_prf+0xa92>
78008f14:	147d                	addi	s0,s0,-1
78008f16:	4c0a9563          	bnez	s5,780093e0 <pos_libc_prf+0xa92>
78008f1a:	00802933          	sgtz	s2,s0
78008f1e:	0ff97913          	andi	s2,s2,255
78008f22:	ca4a                	sw	s2,20(sp)
78008f24:	06600713          	li	a4,102
78008f28:	4aed9d63          	bne	s11,a4,780093e2 <pos_libc_prf+0xa94>
78008f2c:	008d0733          	add	a4,s10,s0
78008f30:	06600d93          	li	s11,102
78008f34:	4a075963          	bgez	a4,780093e6 <pos_libc_prf+0xa98>
78008f38:	4741                	li	a4,16
78008f3a:	d63a                	sw	a4,44(sp)
78008f3c:	4901                	li	s2,0
78008f3e:	4601                	li	a2,0
78008f40:	080006b7          	lui	a3,0x8000
78008f44:	dc32                	sw	a2,56(sp)
78008f46:	de36                	sw	a3,60(sp)
78008f48:	197d                	addi	s2,s2,-1
78008f4a:	15f93063          	p.bneimm	s2,-1,7800908a <pos_libc_prf+0x73c>
78008f4e:	5742                	lw	a4,48(sp)
78008f50:	56e2                	lw	a3,56(sp)
78008f52:	5652                	lw	a2,52(sp)
78008f54:	55f2                	lw	a1,60(sp)
78008f56:	96ba                	add	a3,a3,a4
78008f58:	00e6b733          	sltu	a4,a3,a4
78008f5c:	962e                	add	a2,a2,a1
78008f5e:	9732                	add	a4,a4,a2
78008f60:	da3a                	sw	a4,52(sp)
78008f62:	d836                	sw	a3,48(sp)
78008f64:	f6073733          	p.bclr	a4,a4,27,0
78008f68:	c711                	beqz	a4,78008f74 <pos_libc_prf+0x626>
78008f6a:	1808                	addi	a0,sp,48
78008f6c:	32ad                	jal	780088d6 <_ldiv5>
78008f6e:	1808                	addi	a0,sp,48
78008f70:	3299                	jal	780088b6 <_rlrshift>
78008f72:	0d05                	addi	s10,s10,1
78008f74:	06600713          	li	a4,102
78008f78:	14ed9d63          	bne	s11,a4,780090d2 <pos_libc_prf+0x784>
78008f7c:	8926                	mv	s2,s1
78008f7e:	13a04563          	bgtz	s10,780090a8 <pos_libc_prf+0x75a>
78008f82:	03000713          	li	a4,48
78008f86:	00e48023          	sb	a4,0(s1)
78008f8a:	00148913          	addi	s2,s1,1
78008f8e:	4681                	li	a3,0
78008f90:	120a8363          	beqz	s5,780090b6 <pos_libc_prf+0x768>
78008f94:	02e00593          	li	a1,46
78008f98:	00b90023          	sb	a1,0(s2)
78008f9c:	00190713          	addi	a4,s2,1
78008fa0:	420d0e63          	beqz	s10,780093dc <pos_libc_prf+0xa8e>
78008fa4:	12805463          	blez	s0,780090cc <pos_libc_prf+0x77e>
78008fa8:	41a00ab3          	neg	s5,s10
78008fac:	048acab3          	p.min	s5,s5,s0
78008fb0:	41540433          	sub	s0,s0,s5
78008fb4:	893a                	mv	s2,a4
78008fb6:	10805363          	blez	s0,780090bc <pos_libc_prf+0x76e>
78008fba:	5732                	lw	a4,44(sp)
78008fbc:	10e05063          	blez	a4,780090bc <pos_libc_prf+0x76e>
78008fc0:	106c                	addi	a1,sp,44
78008fc2:	1808                	addi	a0,sp,48
78008fc4:	c036                	sw	a3,0(sp)
78008fc6:	3a91                	jal	7800891a <_get_digit>
78008fc8:	00a900ab          	p.sb	a0,1(s2!)
78008fcc:	147d                	addi	s0,s0,-1
78008fce:	4682                	lw	a3,0(sp)
78008fd0:	b7dd                	j	78008fb6 <pos_libc_prf+0x668>
78008fd2:	197d                	addi	s2,s2,-1
78008fd4:	01f5d693          	srli	a3,a1,0x1f
78008fd8:	0706                	slli	a4,a4,0x1
78008fda:	8f55                	or	a4,a4,a3
78008fdc:	0586                	slli	a1,a1,0x1
78008fde:	fe075ae3          	bgez	a4,78008fd2 <pos_libc_prf+0x684>
78008fe2:	d82e                	sw	a1,48(sp)
78008fe4:	da3a                	sw	a4,52(sp)
78008fe6:	b5c5                	j	78008ec6 <pos_libc_prf+0x578>
78008fe8:	1808                	addi	a0,sp,48
78008fea:	30f1                	jal	780088b6 <_rlrshift>
78008fec:	55d2                	lw	a1,52(sp)
78008fee:	33333737          	lui	a4,0x33333
78008ff2:	33270713          	addi	a4,a4,818 # 33333332 <__l1_heap_size+0x3332334e>
78008ff6:	5642                	lw	a2,48(sp)
78008ff8:	0905                	addi	s2,s2,1
78008ffa:	feb767e3          	bltu	a4,a1,78008fe8 <pos_libc_prf+0x69a>
78008ffe:	4695                	li	a3,5
78009000:	02c6b733          	mulhu	a4,a3,a2
78009004:	1d7d                	addi	s10,s10,-1
78009006:	02c68633          	mul	a2,a3,a2
7800900a:	42b68733          	p.mac	a4,a3,a1
7800900e:	d832                	sw	a2,48(sp)
78009010:	4681                	li	a3,0
78009012:	da3a                	sw	a4,52(sp)
78009014:	800007b7          	lui	a5,0x80000
78009018:	fff7c793          	not	a5,a5
7800901c:	00e7f763          	bleu	a4,a5,7800902a <pos_libc_prf+0x6dc>
78009020:	ea068be3          	beqz	a3,78008ed6 <pos_libc_prf+0x588>
78009024:	d832                	sw	a2,48(sp)
78009026:	da3a                	sw	a4,52(sp)
78009028:	b57d                	j	78008ed6 <pos_libc_prf+0x588>
7800902a:	01f65593          	srli	a1,a2,0x1f
7800902e:	00171693          	slli	a3,a4,0x1
78009032:	00d5e733          	or	a4,a1,a3
78009036:	0606                	slli	a2,a2,0x1
78009038:	197d                	addi	s2,s2,-1
7800903a:	4685                	li	a3,1
7800903c:	bfe1                	j	78009014 <pos_libc_prf+0x6c6>
7800903e:	1808                	addi	a0,sp,48
78009040:	3859                	jal	780088d6 <_ldiv5>
78009042:	5642                	lw	a2,48(sp)
78009044:	5752                	lw	a4,52(sp)
78009046:	197d                	addi	s2,s2,-1
78009048:	0d05                	addi	s10,s10,1
7800904a:	4681                	li	a3,0
7800904c:	800007b7          	lui	a5,0x80000
78009050:	fff7c793          	not	a5,a5
78009054:	00e7f763          	bleu	a4,a5,78009062 <pos_libc_prf+0x714>
78009058:	e80682e3          	beqz	a3,78008edc <pos_libc_prf+0x58e>
7800905c:	d832                	sw	a2,48(sp)
7800905e:	da3a                	sw	a4,52(sp)
78009060:	bdb5                	j	78008edc <pos_libc_prf+0x58e>
78009062:	01f65593          	srli	a1,a2,0x1f
78009066:	00171693          	slli	a3,a4,0x1
7800906a:	00d5e733          	or	a4,a1,a3
7800906e:	0606                	slli	a2,a2,0x1
78009070:	197d                	addi	s2,s2,-1
78009072:	4685                	li	a3,1
78009074:	bfe1                	j	7800904c <pos_libc_prf+0x6fe>
78009076:	4d01                	li	s10,0
78009078:	4901                	li	s2,0
7800907a:	b59d                	j	78008ee0 <pos_libc_prf+0x592>
7800907c:	41a40433          	sub	s0,s0,s10
78009080:	ea0a96e3          	bnez	s5,78008f2c <pos_libc_prf+0x5de>
78009084:	06600d93          	li	s11,102
78009088:	bd49                	j	78008f1a <pos_libc_prf+0x5cc>
7800908a:	1828                	addi	a0,sp,56
7800908c:	84bff0ef          	jal	ra,780088d6 <_ldiv5>
78009090:	1828                	addi	a0,sp,56
78009092:	825ff0ef          	jal	ra,780088b6 <_rlrshift>
78009096:	bd4d                	j	78008f48 <pos_libc_prf+0x5fa>
78009098:	106c                	addi	a1,sp,44
7800909a:	1808                	addi	a0,sp,48
7800909c:	38bd                	jal	7800891a <_get_digit>
7800909e:	00a900ab          	p.sb	a0,1(s2!)
780090a2:	1d7d                	addi	s10,s10,-1
780090a4:	000d0563          	beqz	s10,780090ae <pos_libc_prf+0x760>
780090a8:	5732                	lw	a4,44(sp)
780090aa:	fee047e3          	bgtz	a4,78009098 <pos_libc_prf+0x74a>
780090ae:	300a9f63          	bnez	s5,780093cc <pos_libc_prf+0xa7e>
780090b2:	86ea                	mv	a3,s10
780090b4:	4d01                	li	s10,0
780090b6:	4a81                	li	s5,0
780090b8:	ec804ee3          	bgtz	s0,78008f94 <pos_libc_prf+0x646>
780090bc:	4752                	lw	a4,20(sp)
780090be:	eb31                	bnez	a4,78009112 <pos_libc_prf+0x7c4>
780090c0:	00c8                	addi	a0,sp,68
780090c2:	00090023          	sb	zero,0(s2)
780090c6:	40a90533          	sub	a0,s2,a0
780090ca:	bb81                	j	78008e1a <pos_libc_prf+0x4cc>
780090cc:	893a                	mv	s2,a4
780090ce:	4a81                	li	s5,0
780090d0:	b7f5                	j	780090bc <pos_libc_prf+0x76e>
780090d2:	106c                	addi	a1,sp,44
780090d4:	1808                	addi	a0,sp,48
780090d6:	845ff0ef          	jal	ra,7800891a <_get_digit>
780090da:	00a48023          	sb	a0,0(s1)
780090de:	03000713          	li	a4,48
780090e2:	00e50363          	beq	a0,a4,780090e8 <pos_libc_prf+0x79a>
780090e6:	1d7d                	addi	s10,s10,-1
780090e8:	000a9663          	bnez	s5,780090f4 <pos_libc_prf+0x7a6>
780090ec:	00148913          	addi	s2,s1,1
780090f0:	00805d63          	blez	s0,7800910a <pos_libc_prf+0x7bc>
780090f4:	02e00713          	li	a4,46
780090f8:	00248913          	addi	s2,s1,2
780090fc:	00e480a3          	sb	a4,1(s1)
78009100:	00805563          	blez	s0,7800910a <pos_libc_prf+0x7bc>
78009104:	5732                	lw	a4,44(sp)
78009106:	08e04663          	bgtz	a4,78009192 <pos_libc_prf+0x844>
7800910a:	47d2                	lw	a5,20(sp)
7800910c:	4a81                	li	s5,0
7800910e:	4681                	li	a3,0
78009110:	cf99                	beqz	a5,7800912e <pos_libc_prf+0x7e0>
78009112:	03000513          	li	a0,48
78009116:	fff90713          	addi	a4,s2,-1
7800911a:	00074583          	lbu	a1,0(a4)
7800911e:	08a58263          	beq	a1,a0,780091a2 <pos_libc_prf+0x854>
78009122:	02e00513          	li	a0,46
78009126:	4401                	li	s0,0
78009128:	00a59363          	bne	a1,a0,7800912e <pos_libc_prf+0x7e0>
7800912c:	893a                	mv	s2,a4
7800912e:	0dfdf713          	andi	a4,s11,223
78009132:	04500593          	li	a1,69
78009136:	f8b715e3          	bne	a4,a1,780090c0 <pos_libc_prf+0x772>
7800913a:	85ca                	mv	a1,s2
7800913c:	01b5812b          	p.sb	s11,2(a1!)
78009140:	02b00793          	li	a5,43
78009144:	000d5663          	bgez	s10,78009150 <pos_libc_prf+0x802>
78009148:	41a00d33          	neg	s10,s10
7800914c:	02d00793          	li	a5,45
78009150:	00f900a3          	sb	a5,1(s2)
78009154:	06300793          	li	a5,99
78009158:	01a7de63          	ble	s10,a5,78009174 <pos_libc_prf+0x826>
7800915c:	06400713          	li	a4,100
78009160:	02ed47b3          	div	a5,s10,a4
78009164:	00390593          	addi	a1,s2,3
78009168:	02ed6d33          	rem	s10,s10,a4
7800916c:	03078793          	addi	a5,a5,48 # 80000030 <pulp__FC+0x80000031>
78009170:	00f90123          	sb	a5,2(s2)
78009174:	47a9                	li	a5,10
78009176:	892e                	mv	s2,a1
78009178:	02fd4733          	div	a4,s10,a5
7800917c:	02fd68b3          	rem	a7,s10,a5
78009180:	03070713          	addi	a4,a4,48
78009184:	00e9012b          	p.sb	a4,2(s2!)
78009188:	03088893          	addi	a7,a7,48
7800918c:	011580a3          	sb	a7,1(a1)
78009190:	bf05                	j	780090c0 <pos_libc_prf+0x772>
78009192:	106c                	addi	a1,sp,44
78009194:	1808                	addi	a0,sp,48
78009196:	f84ff0ef          	jal	ra,7800891a <_get_digit>
7800919a:	00a900ab          	p.sb	a0,1(s2!)
7800919e:	147d                	addi	s0,s0,-1
780091a0:	b785                	j	78009100 <pos_libc_prf+0x7b2>
780091a2:	893a                	mv	s2,a4
780091a4:	bf8d                	j	78009116 <pos_libc_prf+0x7c8>
780091a6:	8a4a                	mv	s4,s2
780091a8:	04c00693          	li	a3,76
780091ac:	004a278b          	p.lw	a5,4(s4!)
780091b0:	02d48a63          	beq	s1,a3,780091e4 <pos_libc_prf+0x896>
780091b4:	0096c963          	blt	a3,s1,780091c6 <pos_libc_prf+0x878>
780091b8:	04800693          	li	a3,72
780091bc:	02d48063          	beq	s1,a3,780091dc <pos_libc_prf+0x88e>
780091c0:	0137a023          	sw	s3,0(a5)
780091c4:	a801                	j	780091d4 <pos_libc_prf+0x886>
780091c6:	06800693          	li	a3,104
780091ca:	fed49be3          	bne	s1,a3,780091c0 <pos_libc_prf+0x872>
780091ce:	874e                	mv	a4,s3
780091d0:	00e79023          	sh	a4,0(a5)
780091d4:	8952                	mv	s2,s4
780091d6:	8662                	mv	a2,s8
780091d8:	f9aff06f          	j	78008972 <pos_libc_prf+0x24>
780091dc:	874e                	mv	a4,s3
780091de:	00e78023          	sb	a4,0(a5)
780091e2:	bfcd                	j	780091d4 <pos_libc_prf+0x886>
780091e4:	41f9d713          	srai	a4,s3,0x1f
780091e8:	0137a023          	sw	s3,0(a5)
780091ec:	c3d8                	sw	a4,4(a5)
780091ee:	b7dd                	j	780091d4 <pos_libc_prf+0x886>
780091f0:	00092583          	lw	a1,0(s2)
780091f4:	77e1                	lui	a5,0xffff8
780091f6:	8307c793          	xori	a5,a5,-2000
780091fa:	46c1                	li	a3,16
780091fc:	4601                	li	a2,0
780091fe:	04610513          	addi	a0,sp,70
78009202:	04f11223          	sh	a5,68(sp)
78009206:	e22ff0ef          	jal	ra,78008828 <_to_x>
7800920a:	00490a13          	addi	s4,s2,4
7800920e:	00250d93          	addi	s11,a0,2
78009212:	4909                	li	s2,2
78009214:	bc05                	j	78008c44 <pos_libc_prf+0x2f6>
78009216:	0016c60b          	p.lbu	a2,1(a3!) # 8000001 <__l1_heap_size+0x7ff001d>
7800921a:	a60605e3          	beqz	a2,78008c84 <pos_libc_prf+0x336>
7800921e:	0d85                	addi	s11,s11,1
78009220:	b485                	j	78008c80 <pos_libc_prf+0x332>
78009222:	00490a13          	addi	s4,s2,4
78009226:	00092583          	lw	a1,0(s2)
7800922a:	4601                	li	a2,0
7800922c:	b29d                	j	78008b92 <pos_libc_prf+0x244>
7800922e:	8526                	mv	a0,s1
78009230:	46a1                	li	a3,8
78009232:	409504b3          	sub	s1,a0,s1
78009236:	df2ff0ef          	jal	ra,78008828 <_to_x>
7800923a:	00a48db3          	add	s11,s1,a0
7800923e:	4901                	li	s2,0
78009240:	b411                	j	78008c44 <pos_libc_prf+0x2f6>
78009242:	07500713          	li	a4,117
78009246:	00ed9863          	bne	s11,a4,78009256 <pos_libc_prf+0x908>
7800924a:	46a9                	li	a3,10
7800924c:	8526                	mv	a0,s1
7800924e:	ddaff0ef          	jal	ra,78008828 <_to_x>
78009252:	8daa                	mv	s11,a0
78009254:	b7ed                	j	7800923e <pos_libc_prf+0x8f0>
78009256:	8d26                	mv	s10,s1
78009258:	000a8963          	beqz	s5,7800926a <pos_libc_prf+0x91c>
7800925c:	7761                	lui	a4,0xffff8
7800925e:	83074713          	xori	a4,a4,-2000
78009262:	04e11223          	sh	a4,68(sp)
78009266:	04610d13          	addi	s10,sp,70
7800926a:	46c1                	li	a3,16
7800926c:	856a                	mv	a0,s10
7800926e:	dbaff0ef          	jal	ra,78008828 <_to_x>
78009272:	05800713          	li	a4,88
78009276:	02ed9263          	bne	s11,a4,7800929a <pos_libc_prf+0x94c>
7800927a:	87a6                	mv	a5,s1
7800927c:	45e5                	li	a1,25
7800927e:	0017c68b          	p.lbu	a3,1(a5!) # ffff8001 <pulp__FC+0xffff8002>
78009282:	f9f68613          	addi	a2,a3,-97
78009286:	0ff67613          	andi	a2,a2,255
7800928a:	00c5e563          	bltu	a1,a2,78009294 <pos_libc_prf+0x946>
7800928e:	1681                	addi	a3,a3,-32
78009290:	fed78fa3          	sb	a3,-1(a5)
78009294:	fff7c703          	lbu	a4,-1(a5)
78009298:	f37d                	bnez	a4,7800927e <pos_libc_prf+0x930>
7800929a:	409d0733          	sub	a4,s10,s1
7800929e:	00a70db3          	add	s11,a4,a0
780092a2:	001a9913          	slli	s2,s5,0x1
780092a6:	ba79                	j	78008c44 <pos_libc_prf+0x2f6>
780092a8:	85de                	mv	a1,s7
780092aa:	02500513          	li	a0,37
780092ae:	ed8ff06f          	j	78008986 <pos_libc_prf+0x38>
780092b2:	0985                	addi	s3,s3,1
780092b4:	8a4a                	mv	s4,s2
780092b6:	bf39                	j	780091d4 <pos_libc_prf+0x886>
780092b8:	00dc                	addi	a5,sp,68
780092ba:	4d01                	li	s10,0
780092bc:	bacd                	j	78008cae <pos_libc_prf+0x360>
780092be:	85de                	mv	a1,s7
780092c0:	02000513          	li	a0,32
780092c4:	c036                	sw	a3,0(sp)
780092c6:	c43e                	sw	a5,8(sp)
780092c8:	9b02                	jalr	s6
780092ca:	4682                	lw	a3,0(sp)
780092cc:	47a2                	lw	a5,8(sp)
780092ce:	ebf52f63          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
780092d2:	14fd                	addi	s1,s1,-1
780092d4:	fff4b5e3          	p.bneimm	s1,-1,780092be <pos_libc_prf+0x970>
780092d8:	99e6                	add	s3,s3,s9
780092da:	5cfd                	li	s9,-1
780092dc:	b2d5                	j	78008cc0 <pos_libc_prf+0x372>
780092de:	0017c50b          	p.lbu	a0,1(a5!)
780092e2:	85de                	mv	a1,s7
780092e4:	c036                	sw	a3,0(sp)
780092e6:	c43e                	sw	a5,8(sp)
780092e8:	9b02                	jalr	s6
780092ea:	4682                	lw	a3,0(sp)
780092ec:	47a2                	lw	a5,8(sp)
780092ee:	9df53be3          	p.bneimm	a0,-1,78008cc4 <pos_libc_prf+0x376>
780092f2:	e9aff06f          	j	7800898c <pos_libc_prf+0x3e>
780092f6:	85de                	mv	a1,s7
780092f8:	03000513          	li	a0,48
780092fc:	c036                	sw	a3,0(sp)
780092fe:	c43e                	sw	a5,8(sp)
78009300:	9b02                	jalr	s6
78009302:	4682                	lw	a3,0(sp)
78009304:	47a2                	lw	a5,8(sp)
78009306:	9df532e3          	p.bneimm	a0,-1,78008cca <pos_libc_prf+0x37c>
7800930a:	e82ff06f          	j	7800898c <pos_libc_prf+0x3e>
7800930e:	85de                	mv	a1,s7
78009310:	c232                	sw	a2,4(sp)
78009312:	c036                	sw	a3,0(sp)
78009314:	c442                	sw	a6,8(sp)
78009316:	9b02                	jalr	s6
78009318:	4612                	lw	a2,4(sp)
7800931a:	4682                	lw	a3,0(sp)
7800931c:	4822                	lw	a6,8(sp)
7800931e:	e7f52763          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
78009322:	0d85                	addi	s11,s11,1
78009324:	000dc503          	lbu	a0,0(s11)
78009328:	ba75                	j	78008ce4 <pos_libc_prf+0x396>
7800932a:	85de                	mv	a1,s7
7800932c:	03000513          	li	a0,48
78009330:	c232                	sw	a2,4(sp)
78009332:	c036                	sw	a3,0(sp)
78009334:	c43a                	sw	a4,8(sp)
78009336:	9b02                	jalr	s6
78009338:	4612                	lw	a2,4(sp)
7800933a:	4682                	lw	a3,0(sp)
7800933c:	4722                	lw	a4,8(sp)
7800933e:	167d                	addi	a2,a2,-1
78009340:	9bf539e3          	p.bneimm	a0,-1,78008cf2 <pos_libc_prf+0x3a4>
78009344:	e48ff06f          	j	7800898c <pos_libc_prf+0x3e>
78009348:	85de                	mv	a1,s7
7800934a:	03000513          	li	a0,48
7800934e:	c036                	sw	a3,0(sp)
78009350:	c43a                	sw	a4,8(sp)
78009352:	9b02                	jalr	s6
78009354:	4682                	lw	a3,0(sp)
78009356:	4722                	lw	a4,8(sp)
78009358:	16fd                	addi	a3,a3,-1
7800935a:	9df539e3          	p.bneimm	a0,-1,78008d2c <pos_libc_prf+0x3de>
7800935e:	e2eff06f          	j	7800898c <pos_libc_prf+0x3e>
78009362:	85de                	mv	a1,s7
78009364:	c232                	sw	a2,4(sp)
78009366:	c036                	sw	a3,0(sp)
78009368:	c43a                	sw	a4,8(sp)
7800936a:	9b02                	jalr	s6
7800936c:	4612                	lw	a2,4(sp)
7800936e:	4682                	lw	a3,0(sp)
78009370:	4722                	lw	a4,8(sp)
78009372:	e1f52d63          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
78009376:	0d85                	addi	s11,s11,1
78009378:	000dc503          	lbu	a0,0(s11)
7800937c:	b2e9                	j	78008d46 <pos_libc_prf+0x3f8>
7800937e:	85de                	mv	a1,s7
78009380:	03000513          	li	a0,48
78009384:	c43a                	sw	a4,8(sp)
78009386:	9b02                	jalr	s6
78009388:	4722                	lw	a4,8(sp)
7800938a:	177d                	addi	a4,a4,-1
7800938c:	9df536e3          	p.bneimm	a0,-1,78008d58 <pos_libc_prf+0x40a>
78009390:	dfcff06f          	j	7800898c <pos_libc_prf+0x3e>
78009394:	0014450b          	p.lbu	a0,1(s0!)
78009398:	85de                	mv	a1,s7
7800939a:	9b02                	jalr	s6
7800939c:	dff52863          	p.beqimm	a0,-1,7800898c <pos_libc_prf+0x3e>
780093a0:	408a87b3          	sub	a5,s5,s0
780093a4:	fef048e3          	bgtz	a5,78009394 <pos_libc_prf+0xa46>
780093a8:	994e                	add	s2,s2,s3
780093aa:	012d09b3          	add	s3,s10,s2
780093ae:	99a6                	add	s3,s3,s1
780093b0:	e39052e3          	blez	s9,780091d4 <pos_libc_prf+0x886>
780093b4:	99e6                	add	s3,s3,s9
780093b6:	1cfd                	addi	s9,s9,-1
780093b8:	e1fcaee3          	p.beqimm	s9,-1,780091d4 <pos_libc_prf+0x886>
780093bc:	85de                	mv	a1,s7
780093be:	02000513          	li	a0,32
780093c2:	9b02                	jalr	s6
780093c4:	fff539e3          	p.bneimm	a0,-1,780093b6 <pos_libc_prf+0xa68>
780093c8:	dc4ff06f          	j	7800898c <pos_libc_prf+0x3e>
780093cc:	02e00693          	li	a3,46
780093d0:	00d90023          	sb	a3,0(s2)
780093d4:	00190713          	addi	a4,s2,1
780093d8:	86ea                	mv	a3,s10
780093da:	4d01                	li	s10,0
780093dc:	4a81                	li	s5,0
780093de:	bed9                	j	78008fb4 <pos_libc_prf+0x666>
780093e0:	ca02                	sw	zero,20(sp)
780093e2:	00140713          	addi	a4,s0,1
780093e6:	46c1                	li	a3,16
780093e8:	d636                	sw	a3,44(sp)
780093ea:	04d74933          	p.min	s2,a4,a3
780093ee:	be81                	j	78008f3e <pos_libc_prf+0x5f0>

780093f0 <pos_init_start>:
780093f0:	1141                	addi	sp,sp,-16
780093f2:	c422                	sw	s0,8(sp)
780093f4:	78000437          	lui	s0,0x78000
780093f8:	c606                	sw	ra,12(sp)
780093fa:	00840413          	addi	s0,s0,8 # 78000008 <ctor_list+0x4>
780093fe:	2ae9                	jal	780095d8 <pos_irq_init>
78009400:	222d                	jal	7800952a <pos_allocs_init>
78009402:	28a9                	jal	7800945c <pos_sched_init>
78009404:	0044278b          	p.lw	a5,4(s0!)
78009408:	eb89                	bnez	a5,7800941a <pos_init_start+0x2a>
7800940a:	becff0ef          	jal	ra,780087f6 <pos_io_start>
7800940e:	300467f3          	csrrsi	a5,mstatus,8
78009412:	40b2                	lw	ra,12(sp)
78009414:	4422                	lw	s0,8(sp)
78009416:	0141                	addi	sp,sp,16
78009418:	8082                	ret
7800941a:	9782                	jalr	a5
7800941c:	b7e5                	j	78009404 <pos_init_start+0x14>

7800941e <pos_init_stop>:
7800941e:	1141                	addi	sp,sp,-16
78009420:	c422                	sw	s0,8(sp)
78009422:	78000437          	lui	s0,0x78000
78009426:	c606                	sw	ra,12(sp)
78009428:	01c40413          	addi	s0,s0,28 # 7800001c <dtor_list+0x4>
7800942c:	bceff0ef          	jal	ra,780087fa <pos_io_stop>
78009430:	0044278b          	p.lw	a5,4(s0!)
78009434:	e789                	bnez	a5,7800943e <pos_init_stop+0x20>
78009436:	40b2                	lw	ra,12(sp)
78009438:	4422                	lw	s0,8(sp)
7800943a:	0141                	addi	sp,sp,16
7800943c:	8082                	ret
7800943e:	9782                	jalr	a5
78009440:	bfc5                	j	78009430 <pos_init_stop+0x12>

78009442 <pos_cbsys_add>:
78009442:	00259793          	slli	a5,a1,0x2
78009446:	780015b7          	lui	a1,0x78001
7800944a:	a3058593          	addi	a1,a1,-1488 # 78000a30 <stack>
7800944e:	95be                	add	a1,a1,a5
78009450:	419c                	lw	a5,0(a1)
78009452:	c110                	sw	a2,0(a0)
78009454:	c154                	sw	a3,4(a0)
78009456:	c51c                	sw	a5,8(a0)
78009458:	c188                	sw	a0,0(a1)
7800945a:	8082                	ret

7800945c <pos_sched_init>:
7800945c:	780017b7          	lui	a5,0x78001
78009460:	a607a823          	sw	zero,-1424(a5) # 78000a70 <_edata>
78009464:	8082                	ret

78009466 <pos_alloc_dump>:
78009466:	1141                	addi	sp,sp,-16
78009468:	c422                	sw	s0,8(sp)
7800946a:	842a                	mv	s0,a0
7800946c:	78000537          	lui	a0,0x78000
78009470:	13c50513          	addi	a0,a0,316 # 7800013c <__DTOR_END__+0x11c>
78009474:	c226                	sw	s1,4(sp)
78009476:	c606                	sw	ra,12(sp)
78009478:	b10ff0ef          	jal	ra,78008788 <puts>
7800947c:	4000                	lw	s0,0(s0)
7800947e:	780004b7          	lui	s1,0x78000
78009482:	c00d                	beqz	s0,780094a4 <pos_alloc_dump+0x3e>
78009484:	4054                	lw	a3,4(s0)
78009486:	4010                	lw	a2,0(s0)
78009488:	85a2                	mv	a1,s0
7800948a:	16c48513          	addi	a0,s1,364 # 7800016c <__DTOR_END__+0x14c>
7800948e:	b70ff0ef          	jal	ra,780087fe <printf>
78009492:	405c                	lw	a5,4(s0)
78009494:	02879263          	bne	a5,s0,780094b8 <pos_alloc_dump+0x52>
78009498:	78000537          	lui	a0,0x78000
7800949c:	19850513          	addi	a0,a0,408 # 78000198 <__DTOR_END__+0x178>
780094a0:	ae8ff0ef          	jal	ra,78008788 <puts>
780094a4:	4422                	lw	s0,8(sp)
780094a6:	40b2                	lw	ra,12(sp)
780094a8:	4492                	lw	s1,4(sp)
780094aa:	78000537          	lui	a0,0x78000
780094ae:	1a450513          	addi	a0,a0,420 # 780001a4 <__DTOR_END__+0x184>
780094b2:	0141                	addi	sp,sp,16
780094b4:	ad4ff06f          	j	78008788 <puts>
780094b8:	4529                	li	a0,10
780094ba:	b00ff0ef          	jal	ra,780087ba <putchar>
780094be:	4040                	lw	s0,4(s0)
780094c0:	b7c9                	j	78009482 <pos_alloc_dump+0x1c>

780094c2 <pos_alloc_init>:
780094c2:	00758793          	addi	a5,a1,7
780094c6:	c407b7b3          	p.bclr	a5,a5,2,0
780094ca:	40b785b3          	sub	a1,a5,a1
780094ce:	c11c                	sw	a5,0(a0)
780094d0:	8e0d                	sub	a2,a2,a1
780094d2:	00c05763          	blez	a2,780094e0 <pos_alloc_init+0x1e>
780094d6:	c4063633          	p.bclr	a2,a2,2,0
780094da:	c390                	sw	a2,0(a5)
780094dc:	0007a223          	sw	zero,4(a5)
780094e0:	8082                	ret

780094e2 <pos_alloc>:
780094e2:	411c                	lw	a5,0(a0)
780094e4:	059d                	addi	a1,a1,7
780094e6:	c405b5b3          	p.bclr	a1,a1,2,0
780094ea:	4701                	li	a4,0
780094ec:	cb89                	beqz	a5,780094fe <pos_alloc+0x1c>
780094ee:	4394                	lw	a3,0(a5)
780094f0:	43d0                	lw	a2,4(a5)
780094f2:	00b6c863          	blt	a3,a1,78009502 <pos_alloc+0x20>
780094f6:	00b69b63          	bne	a3,a1,7800950c <pos_alloc+0x2a>
780094fa:	c719                	beqz	a4,78009508 <pos_alloc+0x26>
780094fc:	c350                	sw	a2,4(a4)
780094fe:	853e                	mv	a0,a5
78009500:	8082                	ret
78009502:	873e                	mv	a4,a5
78009504:	87b2                	mv	a5,a2
78009506:	b7dd                	j	780094ec <pos_alloc+0xa>
78009508:	c110                	sw	a2,0(a0)
7800950a:	bfd5                	j	780094fe <pos_alloc+0x1c>
7800950c:	00b78833          	add	a6,a5,a1
78009510:	40b685b3          	sub	a1,a3,a1
78009514:	00b82023          	sw	a1,0(a6)
78009518:	00c82223          	sw	a2,4(a6)
7800951c:	c701                	beqz	a4,78009524 <pos_alloc+0x42>
7800951e:	01072223          	sw	a6,4(a4) # ffff8004 <pulp__FC+0xffff8005>
78009522:	bff1                	j	780094fe <pos_alloc+0x1c>
78009524:	01052023          	sw	a6,0(a0)
78009528:	bfd9                	j	780094fe <pos_alloc+0x1c>

7800952a <pos_allocs_init>:
7800952a:	1141                	addi	sp,sp,-16
7800952c:	780015b7          	lui	a1,0x78001
78009530:	c606                	sw	ra,12(sp)
78009532:	c422                	sw	s0,8(sp)
78009534:	aa858793          	addi	a5,a1,-1368 # 78000aa8 <__l2_priv0_end>
78009538:	1c008637          	lui	a2,0x1c008
7800953c:	04c7c363          	blt	a5,a2,78009582 <pos_allocs_init+0x58>
78009540:	4581                	li	a1,0
78009542:	4601                	li	a2,0
78009544:	78001437          	lui	s0,0x78001
78009548:	a8040513          	addi	a0,s0,-1408 # 78000a80 <pos_alloc_l2>
7800954c:	3f9d                	jal	780094c2 <pos_alloc_init>
7800954e:	500005b7          	lui	a1,0x50000
78009552:	01858793          	addi	a5,a1,24 # 50000018 <__l2_shared_end>
78009556:	1c080637          	lui	a2,0x1c080
7800955a:	78001537          	lui	a0,0x78001
7800955e:	8e1d                	sub	a2,a2,a5
78009560:	01858593          	addi	a1,a1,24
78009564:	a8450513          	addi	a0,a0,-1404 # 78000a84 <pos_alloc_l2+0x4>
78009568:	3fa9                	jal	780094c2 <pos_alloc_init>
7800956a:	a8040513          	addi	a0,s0,-1408
7800956e:	4591                	li	a1,4
78009570:	3f8d                	jal	780094e2 <pos_alloc>
78009572:	40b2                	lw	ra,12(sp)
78009574:	4422                	lw	s0,8(sp)
78009576:	780017b7          	lui	a5,0x78001
7800957a:	a6a7ae23          	sw	a0,-1412(a5) # 78000a7c <pos_alloc_l1>
7800957e:	0141                	addi	sp,sp,16
78009580:	8082                	ret
78009582:	8e1d                	sub	a2,a2,a5
78009584:	aa858593          	addi	a1,a1,-1368
78009588:	bf75                	j	78009544 <pos_allocs_init+0x1a>

7800958a <pos_irq_set_handler>:
7800958a:	f14027f3          	csrr	a5,mhartid
7800958e:	477d                	li	a4,31
78009590:	ca5797b3          	p.extractu	a5,a5,5,5
78009594:	02e79e63          	bne	a5,a4,780095d0 <pos_irq_set_handler+0x46>
78009598:	30502773          	csrr	a4,mtvec
7800959c:	c0073733          	p.bclr	a4,a4,0,0
780095a0:	050a                	slli	a0,a0,0x2
780095a2:	8d89                	sub	a1,a1,a0
780095a4:	8d99                	sub	a1,a1,a4
780095a6:	c14586b3          	p.extract	a3,a1,0,20
780095aa:	06f00793          	li	a5,111
780095ae:	c1f6a7b3          	p.insert	a5,a3,0,31
780095b2:	d21586b3          	p.extract	a3,a1,9,1
780095b6:	d356a7b3          	p.insert	a5,a3,9,21
780095ba:	c0b586b3          	p.extract	a3,a1,0,11
780095be:	c146a7b3          	p.insert	a5,a3,0,20
780095c2:	cec585b3          	p.extract	a1,a1,7,12
780095c6:	cec5a7b3          	p.insert	a5,a1,7,12
780095ca:	00f56723          	p.sw	a5,a4(a0)
780095ce:	8082                	ret
780095d0:	002007b7          	lui	a5,0x200
780095d4:	43b8                	lw	a4,64(a5)
780095d6:	b7e9                	j	780095a0 <pos_irq_set_handler+0x16>

780095d8 <pos_irq_init>:
780095d8:	1a10a7b7          	lui	a5,0x1a10a
780095dc:	577d                	li	a4,-1
780095de:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_heap_size+0x1a0f9824>
780095e2:	f1402773          	csrr	a4,mhartid
780095e6:	780087b7          	lui	a5,0x78008
780095ea:	46fd                	li	a3,31
780095ec:	ca571733          	p.extractu	a4,a4,5,5
780095f0:	00078793          	mv	a5,a5
780095f4:	00d71763          	bne	a4,a3,78009602 <pos_irq_init+0x2a>
780095f8:	c007c7b3          	p.bset	a5,a5,0,0
780095fc:	30579073          	csrw	mtvec,a5
78009600:	8082                	ret
78009602:	00200737          	lui	a4,0x200
78009606:	c33c                	sw	a5,64(a4)
78009608:	8082                	ret

7800960a <pos_time_poweroff>:
7800960a:	1a10b7b7          	lui	a5,0x1a10b
7800960e:	0791                	addi	a5,a5,4
78009610:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_heap_size+0x1a0fb024>
78009614:	78001737          	lui	a4,0x78001
78009618:	a4f72423          	sw	a5,-1464(a4) # 78000a48 <pos_time_timer_count>
7800961c:	4501                	li	a0,0
7800961e:	8082                	ret

78009620 <pos_time_poweron>:
78009620:	780017b7          	lui	a5,0x78001
78009624:	a487a703          	lw	a4,-1464(a5) # 78000a48 <pos_time_timer_count>
78009628:	1a10b7b7          	lui	a5,0x1a10b
7800962c:	0791                	addi	a5,a5,4
7800962e:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_heap_size+0x1a0fb024>
78009632:	4501                	li	a0,0
78009634:	8082                	ret

78009636 <pos_time_timer_handler>:
78009636:	780016b7          	lui	a3,0x78001
7800963a:	a4868793          	addi	a5,a3,-1464 # 78000a48 <pos_time_timer_count>
7800963e:	43dc                	lw	a5,4(a5)
78009640:	1a10b737          	lui	a4,0x1a10b
78009644:	0711                	addi	a4,a4,4
78009646:	00872703          	lw	a4,8(a4) # 1a10b008 <__l1_heap_size+0x1a0fb024>
7800964a:	780015b7          	lui	a1,0x78001
7800964e:	78001637          	lui	a2,0x78001
78009652:	a705a803          	lw	a6,-1424(a1) # 78000a70 <_edata>
78009656:	a7462503          	lw	a0,-1420(a2) # 78000a74 <pos_sched_last>
7800965a:	80000e37          	lui	t3,0x80000
7800965e:	4881                	li	a7,0
78009660:	4301                	li	t1,0
78009662:	a4868693          	addi	a3,a3,-1464
78009666:	ffee4e13          	xori	t3,t3,-2
7800966a:	efb9                	bnez	a5,780096c8 <pos_time_timer_handler+0x92>
7800966c:	00030463          	beqz	t1,78009674 <pos_time_timer_handler+0x3e>
78009670:	a705a823          	sw	a6,-1424(a1)
78009674:	00088463          	beqz	a7,7800967c <pos_time_timer_handler+0x46>
78009678:	a6a62a23          	sw	a0,-1420(a2)
7800967c:	1a10b7b7          	lui	a5,0x1a10b
78009680:	08100713          	li	a4,129
78009684:	0791                	addi	a5,a5,4
78009686:	0006a223          	sw	zero,4(a3)
7800968a:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_heap_size+0x1a0fb01c>
7800968e:	f1402773          	csrr	a4,mhartid
78009692:	6785                	lui	a5,0x1
78009694:	46fd                	li	a3,31
78009696:	ca571733          	p.extractu	a4,a4,5,5
7800969a:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b8>
7800969e:	06d71463          	bne	a4,a3,78009706 <pos_time_timer_handler+0xd0>
780096a2:	1a10a737          	lui	a4,0x1a10a
780096a6:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_heap_size+0x1a0f9830>
780096aa:	8082                	ret
780096ac:	0007ae83          	lw	t4,0(a5)
780096b0:	0007a023          	sw	zero,0(a5)
780096b4:	00080763          	beqz	a6,780096c2 <pos_time_timer_handler+0x8c>
780096b8:	c11c                	sw	a5,0(a0)
780096ba:	853e                	mv	a0,a5
780096bc:	4885                	li	a7,1
780096be:	87f6                	mv	a5,t4
780096c0:	b76d                	j	7800966a <pos_time_timer_handler+0x34>
780096c2:	883e                	mv	a6,a5
780096c4:	4305                	li	t1,1
780096c6:	bfd5                	j	780096ba <pos_time_timer_handler+0x84>
780096c8:	03c7ae83          	lw	t4,60(a5)
780096cc:	41d70eb3          	sub	t4,a4,t4
780096d0:	fdde7ee3          	bleu	t4,t3,780096ac <pos_time_timer_handler+0x76>
780096d4:	00030463          	beqz	t1,780096dc <pos_time_timer_handler+0xa6>
780096d8:	a705a823          	sw	a6,-1424(a1)
780096dc:	00088463          	beqz	a7,780096e4 <pos_time_timer_handler+0xae>
780096e0:	a6a62a23          	sw	a0,-1420(a2)
780096e4:	c2dc                	sw	a5,4(a3)
780096e6:	1a10b6b7          	lui	a3,0x1a10b
780096ea:	0691                	addi	a3,a3,4
780096ec:	0086a603          	lw	a2,8(a3) # 1a10b008 <__l1_heap_size+0x1a0fb024>
780096f0:	5fdc                	lw	a5,60(a5)
780096f2:	40e78733          	sub	a4,a5,a4
780096f6:	9732                	add	a4,a4,a2
780096f8:	00e6a823          	sw	a4,16(a3)
780096fc:	08500793          	li	a5,133
78009700:	00f6a023          	sw	a5,0(a3)
78009704:	8082                	ret
78009706:	00204737          	lui	a4,0x204
7800970a:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
7800970e:	8082                	ret

78009710 <pos_time_init>:
78009710:	1141                	addi	sp,sp,-16
78009712:	c422                	sw	s0,8(sp)
78009714:	1a10b7b7          	lui	a5,0x1a10b
78009718:	78001437          	lui	s0,0x78001
7800971c:	c606                	sw	ra,12(sp)
7800971e:	a4840413          	addi	s0,s0,-1464 # 78000a48 <pos_time_timer_count>
78009722:	08300713          	li	a4,131
78009726:	0791                	addi	a5,a5,4
78009728:	00042223          	sw	zero,4(s0)
7800972c:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_heap_size+0x1a0fb01c>
78009730:	7800a5b7          	lui	a1,0x7800a
78009734:	8a258593          	addi	a1,a1,-1886 # 780098a2 <pos_time_timer_handler_asm>
78009738:	452d                	li	a0,11
7800973a:	3d81                	jal	7800958a <pos_irq_set_handler>
7800973c:	6785                	lui	a5,0x1
7800973e:	1a10a737          	lui	a4,0x1a10a
78009742:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b8>
78009746:	78009637          	lui	a2,0x78009
7800974a:	00840513          	addi	a0,s0,8
7800974e:	4681                	li	a3,0
78009750:	60a60613          	addi	a2,a2,1546 # 7800960a <pos_time_poweroff>
78009754:	4589                	li	a1,2
78009756:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_heap_size+0x1a0f9820>
7800975a:	31e5                	jal	78009442 <pos_cbsys_add>
7800975c:	01840513          	addi	a0,s0,24
78009760:	4422                	lw	s0,8(sp)
78009762:	40b2                	lw	ra,12(sp)
78009764:	78009637          	lui	a2,0x78009
78009768:	4681                	li	a3,0
7800976a:	62060613          	addi	a2,a2,1568 # 78009620 <pos_time_poweron>
7800976e:	458d                	li	a1,3
78009770:	0141                	addi	sp,sp,16
78009772:	b9c1                	j	78009442 <pos_cbsys_add>

78009774 <pos_uart_init>:
78009774:	780107b7          	lui	a5,0x78010
78009778:	1407a423          	sw	zero,328(a5) # 78010148 <__cluster_text_end>
7800977c:	8082                	ret

7800977e <pos_init_entry>:
7800977e:	cc101073          	csrw	0xcc1,zero
78009782:	f1402573          	csrr	a0,mhartid
78009786:	01f57593          	andi	a1,a0,31
7800978a:	500402b7          	lui	t0,0x50040
7800978e:	ff028293          	addi	t0,t0,-16 # 5003fff0 <__l2_shared_end+0x3ffd8>
78009792:	0002a023          	sw	zero,0(t0)
78009796:	00f57613          	andi	a2,a0,15
7800979a:	00060463          	beqz	a2,780097a2 <pos_init_entry+0x24>
7800979e:	8fffe06f          	j	7800809c <sync_loop>
780097a2:	ffff7297          	auipc	t0,0xffff7
780097a6:	2d628293          	addi	t0,t0,726 # 78000a78 <pos_kernel_pmsis_exit_value>
780097aa:	ffff7317          	auipc	t1,0xffff7
780097ae:	2fe30313          	addi	t1,t1,766 # 78000aa8 <__l2_priv0_end>
780097b2:	0002a023          	sw	zero,0(t0)
780097b6:	0291                	addi	t0,t0,4
780097b8:	fe62ede3          	bltu	t0,t1,780097b2 <pos_init_entry+0x34>
780097bc:	ffff7117          	auipc	sp,0xffff7
780097c0:	27410113          	addi	sp,sp,628 # 78000a30 <stack>
780097c4:	00000297          	auipc	t0,0x0
780097c8:	c2c28293          	addi	t0,t0,-980 # 780093f0 <pos_init_start>
780097cc:	000280e7          	jalr	t0
780097d0:	f1402573          	csrr	a0,mhartid
780097d4:	01f57593          	andi	a1,a0,31
780097d8:	500402b7          	lui	t0,0x50040
780097dc:	ff028293          	addi	t0,t0,-16 # 5003fff0 <__l2_shared_end+0x3ffd8>
780097e0:	4305                	li	t1,1
780097e2:	0062a023          	sw	t1,0(t0)
780097e6:	01b0606f          	j	78010000 <__cluster_text_start>
780097ea:	00000513          	li	a0,0
780097ee:	00000593          	li	a1,0
780097f2:	fffff397          	auipc	t2,0xfffff
780097f6:	f5638393          	addi	t2,t2,-170 # 78008748 <main>
780097fa:	000380e7          	jalr	t2
780097fe:	842a                	mv	s0,a0
78009800:	8522                	mv	a0,s0
78009802:	fffff297          	auipc	t0,0xfffff
78009806:	fcc28293          	addi	t0,t0,-52 # 780087ce <exit>
7800980a:	000280e7          	jalr	t0

7800980e <pos_irq_call_external_c_function>:
7800980e:	7119                	addi	sp,sp,-128
78009810:	c006                	sw	ra,0(sp)
78009812:	c20e                	sw	gp,4(sp)
78009814:	c412                	sw	tp,8(sp)
78009816:	c616                	sw	t0,12(sp)
78009818:	c81a                	sw	t1,16(sp)
7800981a:	ca1e                	sw	t2,20(sp)
7800981c:	d236                	sw	a3,36(sp)
7800981e:	d43a                	sw	a4,40(sp)
78009820:	d63e                	sw	a5,44(sp)
78009822:	d842                	sw	a6,48(sp)
78009824:	da46                	sw	a7,52(sp)
78009826:	dc72                	sw	t3,56(sp)
78009828:	de76                	sw	t4,60(sp)
7800982a:	c0fa                	sw	t5,64(sp)
7800982c:	c6fe                	sw	t6,76(sp)
7800982e:	000600e7          	jalr	a2
78009832:	4082                	lw	ra,0(sp)
78009834:	4192                	lw	gp,4(sp)
78009836:	4222                	lw	tp,8(sp)
78009838:	42b2                	lw	t0,12(sp)
7800983a:	4342                	lw	t1,16(sp)
7800983c:	43d2                	lw	t2,20(sp)
7800983e:	5692                	lw	a3,36(sp)
78009840:	5722                	lw	a4,40(sp)
78009842:	57b2                	lw	a5,44(sp)
78009844:	5842                	lw	a6,48(sp)
78009846:	58d2                	lw	a7,52(sp)
78009848:	5e62                	lw	t3,56(sp)
7800984a:	5ef2                	lw	t4,60(sp)
7800984c:	4f06                	lw	t5,64(sp)
7800984e:	4fb6                	lw	t6,76(sp)
78009850:	6109                	addi	sp,sp,128
78009852:	8482                	jr	s1

78009854 <pos_irq_call_external_c_function_full>:
78009854:	7119                	addi	sp,sp,-128
78009856:	c006                	sw	ra,0(sp)
78009858:	c20e                	sw	gp,4(sp)
7800985a:	c412                	sw	tp,8(sp)
7800985c:	c616                	sw	t0,12(sp)
7800985e:	c81a                	sw	t1,16(sp)
78009860:	ca1e                	sw	t2,20(sp)
78009862:	cc2a                	sw	a0,24(sp)
78009864:	ce2e                	sw	a1,28(sp)
78009866:	d236                	sw	a3,36(sp)
78009868:	d43a                	sw	a4,40(sp)
7800986a:	d63e                	sw	a5,44(sp)
7800986c:	d842                	sw	a6,48(sp)
7800986e:	da46                	sw	a7,52(sp)
78009870:	dc72                	sw	t3,56(sp)
78009872:	de76                	sw	t4,60(sp)
78009874:	c0fa                	sw	t5,64(sp)
78009876:	c6fe                	sw	t6,76(sp)
78009878:	000600e7          	jalr	a2
7800987c:	4082                	lw	ra,0(sp)
7800987e:	4192                	lw	gp,4(sp)
78009880:	4222                	lw	tp,8(sp)
78009882:	42b2                	lw	t0,12(sp)
78009884:	4342                	lw	t1,16(sp)
78009886:	43d2                	lw	t2,20(sp)
78009888:	4562                	lw	a0,24(sp)
7800988a:	45f2                	lw	a1,28(sp)
7800988c:	5692                	lw	a3,36(sp)
7800988e:	5722                	lw	a4,40(sp)
78009890:	57b2                	lw	a5,44(sp)
78009892:	5842                	lw	a6,48(sp)
78009894:	58d2                	lw	a7,52(sp)
78009896:	5e62                	lw	t3,56(sp)
78009898:	5ef2                	lw	t4,60(sp)
7800989a:	4f06                	lw	t5,64(sp)
7800989c:	4fb6                	lw	t6,76(sp)
7800989e:	6109                	addi	sp,sp,128
780098a0:	8482                	jr	s1

780098a2 <pos_time_timer_handler_asm>:
780098a2:	1161                	addi	sp,sp,-8
780098a4:	c032                	sw	a2,0(sp)
780098a6:	c226                	sw	s1,4(sp)
780098a8:	00000617          	auipc	a2,0x0
780098ac:	d8e60613          	addi	a2,a2,-626 # 78009636 <pos_time_timer_handler>
780098b0:	00000497          	auipc	s1,0x0
780098b4:	00c48493          	addi	s1,s1,12 # 780098bc <pos_time_timer_handler_asm_ret>
780098b8:	f9dff06f          	j	78009854 <pos_irq_call_external_c_function_full>

780098bc <pos_time_timer_handler_asm_ret>:
780098bc:	4492                	lw	s1,4(sp)
780098be:	4602                	lw	a2,0(sp)
780098c0:	0121                	addi	sp,sp,8
780098c2:	30200073          	mret

780098c6 <_endtext>:
	...

Disassembly of section .l2_data:

78010000 <__cluster_text_start>:
78010000:	f1402573          	csrr	a0,mhartid
78010004:	01f57593          	andi	a1,a0,31
78010008:	8115                	srli	a0,a0,0x5
7801000a:	000702b7          	lui	t0,0x70
7801000e:	00204337          	lui	t1,0x204
78010012:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
78010016:	4381                	li	t2,0
78010018:	0c759f63          	bne	a1,t2,780100f6 <pos_slave_start>
7801001c:	20000293          	li	t0,512
78010020:	00204337          	lui	t1,0x204
78010024:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
78010028:	87ff0417          	auipc	s0,0x87ff0
7801002c:	fdc40413          	addi	s0,s0,-36 # 4 <pos_cluster_pool>
78010030:	002049b7          	lui	s3,0x204
78010034:	4a09                	li	s4,2
78010036:	00000a97          	auipc	s5,0x0
7801003a:	02ea8a93          	addi	s5,s5,46 # 78010064 <pos_master_event>
7801003e:	ffff1b97          	auipc	s7,0xffff1
78010042:	a4ab8b93          	addi	s7,s7,-1462 # 78000a88 <pos_cluster>
78010046:	02c00393          	li	t2,44
7801004a:	02a383b3          	mul	t2,t2,a0
7801004e:	9b9e                	add	s7,s7,t2
78010050:	0bd1                	addi	s7,s7,20
78010052:	00000d17          	auipc	s10,0x0
78010056:	0e2d0d13          	addi	s10,s10,226 # 78010134 <pos_set_slave_stack>
7801005a:	001d6d13          	ori	s10,s10,1
7801005e:	30045073          	csrwi	mstatus,8
78010062:	a829                	j	7801007c <pos_master_loop>

78010064 <pos_master_event>:
78010064:	018b2b03          	lw	s6,24(s6)
78010068:	000b0a63          	beqz	s6,7801007c <pos_master_loop>

7801006c <pos_push_event_to_fc_retry>:
7801006c:	000ba283          	lw	t0,0(s7)
78010070:	06029c63          	bnez	t0,780100e8 <pos_push_event_to_fc_wait>
78010074:	016ba023          	sw	s6,0(s7)
78010078:	018ca023          	sw	s8,0(s9)

7801007c <pos_master_loop>:
7801007c:	00042b03          	lw	s6,0(s0)
78010080:	040b0d63          	beqz	s6,780100da <pos_master_sleep>

78010084 <pos_master_loop_update_next>:
78010084:	020b2e83          	lw	t4,32(s6)
78010088:	01d42023          	sw	t4,0(s0)
7801008c:	020b2f03          	lw	t5,32(s6)
78010090:	ffee9ae3          	bne	t4,t5,78010084 <pos_master_loop_update_next>

78010094 <pos_master_loop_exec_task>:
78010094:	004b2503          	lw	a0,4(s6)
78010098:	000b2283          	lw	t0,0(s6)
7801009c:	008b2103          	lw	sp,8(s6)
780100a0:	00cb2303          	lw	t1,12(s6)
780100a4:	010b2383          	lw	t2,16(s6)
780100a8:	024b2f03          	lw	t5,36(s6)
780100ac:	014b2f83          	lw	t6,20(s6)
780100b0:	80d6                	mv	ra,s5
780100b2:	911a                	add	sp,sp,t1
780100b4:	87ff0e17          	auipc	t3,0x87ff0
780100b8:	f7fe2223          	sw	t6,-156(t3) # 18 <_l1_preload_size>

780100bc <pos_no_stack_check>:
780100bc:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
780100c0:	21e9a023          	sw	t5,512(s3)
780100c4:	21e9a623          	sw	t5,524(s3)

780100c8 <pos_master_no_slave_barrier>:
780100c8:	000f2863          	p.beqimm	t5,0,780100d8 <pos_master_loop_no_slave>
780100cc:	09a9a023          	sw	s10,128(s3)
780100d0:	0879a023          	sw	t2,128(s3)
780100d4:	0829a023          	sw	sp,128(s3)

780100d8 <pos_master_loop_no_slave>:
780100d8:	8282                	jr	t0

780100da <pos_master_sleep>:
780100da:	0149a423          	sw	s4,8(s3)
780100de:	03c9e003          	p.elw	zero,60(s3)
780100e2:	0149a223          	sw	s4,4(s3)
780100e6:	bf59                	j	7801007c <pos_master_loop>

780100e8 <pos_push_event_to_fc_wait>:
780100e8:	0149a423          	sw	s4,8(s3)
780100ec:	03c9e003          	p.elw	zero,60(s3)
780100f0:	0149a223          	sw	s4,4(s3)
780100f4:	bfa5                	j	7801006c <pos_push_event_to_fc_retry>

780100f6 <pos_slave_start>:
780100f6:	00204937          	lui	s2,0x204
780100fa:	f14029f3          	csrr	s3,mhartid
780100fe:	01f9f993          	andi	s3,s3,31
78010102:	00000a17          	auipc	s4,0x0
78010106:	012a0a13          	addi	s4,s4,18 # 78010114 <pos_fork_return>
7801010a:	00000a97          	auipc	s5,0x0
7801010e:	00ea8a93          	addi	s5,s5,14 # 78010118 <pos_wait_for_dispatch>
78010112:	a019                	j	78010118 <pos_wait_for_dispatch>

78010114 <pos_fork_return>:
78010114:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

78010118 <pos_wait_for_dispatch>:
78010118:	08096283          	p.elw	t0,128(s2)
7801011c:	08096503          	p.elw	a0,128(s2)
78010120:	0012f313          	andi	t1,t0,1
78010124:	00031563          	bnez	t1,7801012e <pos_other_entry>

78010128 <pos_fork_entry>:
78010128:	000a00b3          	add	ra,s4,zero
7801012c:	8282                	jr	t0

7801012e <pos_other_entry>:
7801012e:	000a80b3          	add	ra,s5,zero
78010132:	8282                	jr	t0

78010134 <pos_set_slave_stack>:
78010134:	08096283          	p.elw	t0,128(s2)
78010138:	00098f13          	mv	t5,s3
7801013c:	02af0eb3          	mul	t4,t5,a0
78010140:	005e8133          	add	sp,t4,t0
78010144:	8082                	ret
	...

78010148 <__cluster_text_end>:
	...
