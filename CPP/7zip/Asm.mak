!IF "$(CPU)" == "ARM"
$(ASM_OBJS): ../../../../Asm/Arm/$(*B).asm
	$(COMPL_ASM)
!ELSEIF "$(CPU)" != "IA64" && "$(CPU)" != "MIPS" && "$(CPU)" != "ALPHA"
$(ASM_OBJS): ../../../../Asm/x86/$(*B).asm
	$(COMPL_ASM)
!ENDIF
