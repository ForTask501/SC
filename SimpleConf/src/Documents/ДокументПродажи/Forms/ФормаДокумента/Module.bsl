
&AtClient
Procedure ТоварыКоличествоOnChange(Item)
	ПересчитатьСуммуСтроки(Элементы.Товары.ТекущиеДанные);
EndProcedure

&AtClient
Procedure ТоварыЦенаOnChange(Item)
	ПересчитатьСуммуСтроки(Элементы.Товары.ТекущиеДанные);
EndProcedure

&AtClient
Procedure ПересчитатьСуммуСтроки(ТекСтрока)
	ТекСтрока.Сумма = ТекСтрока.Количество * ТекСтрока.Цена;
	Object.СуммаДокумента = Object.Товары.Total("Сумма");
EndProcedure
