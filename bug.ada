```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   X: My_Sub_Type := 1;
begin
   X := X + 1;
   if X > 10 then
      raise Constraint_Error;
   end if;
   X := X + 11; -- This line will raise Constraint_Error
end Example;
```