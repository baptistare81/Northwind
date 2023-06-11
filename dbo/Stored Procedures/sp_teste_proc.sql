create   procedure sp_teste_proc  
as  
begin  
 set nocount on  
  
 select top 100 * from Test  
  
 select * from Test  

 select * from Test WHERE ID >= 20078 AND ID <= 295078
end