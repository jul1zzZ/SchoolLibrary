   M S B A M L   `   `   `  ????A  =School, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:School.PagesSchool.Pages  5      #    School.Pages.ServiceTablePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:School.Pages     5      -   5          N? Title$  ServiceTablePage??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      ?? 5      $??30 ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DataService??5   3      AutoGenerateColumns .  ??6   ?? *	Service+   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Наименование??6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6?      CellTemplate 5      ?? 5      .R?5      ?? $
??Wrap=?6(   $??Center=?6<   $??Center=?6W   ??6t   ?? *Name+5      5        5      $ Фото??6)    5      ?? 5      .R?5      ?? $	??100??6@   $	??100??6M   $
??Fill=?6Y   ??6$   ?? *
GetPhoto+6Y   5      5        5       $0 *Продолжительность, мин??6)   $ * 6I    5!      ?? 5"      .R?5#      ?? $??Center=?6B   $??Center=?6]   $
??Wrap=?6z   ??6(   ?? *
Duration+6z   5$      5&        5'      $ Цена??6)   $ * 67    5(      ?? 5)      .R?5*      ??  ??Name$ 
TxtPricecs??6?   $??Center=?6S   $??Center=?6n   $
??Wrap=?6?   ??6(   ?? *Price+6?   5+      5-        5.      $ Скидка??6)   $ * 69    5/      ?? 50      .R?51      ?? $??Center=?6A   $??Center=?6\   $
??Wrap=?6y   ??6(   ?? *	GetSale+6y   52      54        55      $  Редактировать??6)   $ * 6@    56      ?? 57      .R?58      ?? 	 ??Name$	 EditBtn??6%   -   5        $??* * *??58   6   $	??100??6F   $??30??6R   
???????
?????d?$??Center=?6?   $??Center=?6?   59      5;      5=      ?? 5>   
   -   5        $	 	DeleteBtn??5>      $??60??6$   $??30??6/   $??1??6;   $??Delete??6H   $??Center=?6Y   $??Right=?6t   
???????
?????d?$
??20 0q?6?   ?? 5?   
   -   5        $	 AddBtn??5?      $??60??6!   $??30??6,   $??1??68   $	??Add??6E   $??Center=?6S   $
??Left=?6n   
???????
?????d?$
??20 0q?6?   5@      5A      