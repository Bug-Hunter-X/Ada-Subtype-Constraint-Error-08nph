```ada
procedure Example_Solution is
   subtype My_Sub_Type is Integer range 1..10;
   X: My_Sub_Type := 1;
begin
   X := X + 1;
   -- Improved range check
   if X > My_Sub_Type'Last then
      raise Constraint_Error;
   end if;
   X := X + 1;
   if X > My_Sub_Type'Last then
      raise Constraint_Error; --This line will also raise Constraint_Error if X reaches higher than the upper limit 
   end if;
end Example_Solution;
```