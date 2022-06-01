Procedure Posting(Cancel,Mode)
	//{{__REGISTER_RECORD_WIZARD
	//This fragment was built by the wizard.
	//Warning! All manually made changes will be lost next time you use the wizard.

	// register Продажи
	RegisterRecords.Продажи.Write = True;
	For Each CurRowТовары In Товары Do
		Record = RegisterRecords.Продажи.Add();
		Record.Period = Date;
		Record.Контрагент = Контрагент;
		Record.Товар = CurRowТовары.Товар;
		Record.Количество = CurRowТовары.Количество;
		Record.Сумма = CurRowТовары.Сумма;
	EndDo;

	//}}__REGISTER_RECORD_WIZARD
EndProcedure