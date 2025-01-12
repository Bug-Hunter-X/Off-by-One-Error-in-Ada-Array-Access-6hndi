```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in Arr'Range loop
      -- Incorrect way to access array elements when you don't know the exact index
      -- Ada uses 1-based indexing, so Arr(0) is wrong!
      if Arr(I) = 5 then
         Put_Line("Found 5 at index: " & Integer'Image(I));
      end if;
   end loop;
end Example;
```