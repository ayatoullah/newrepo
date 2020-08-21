using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace myproj.AccessLayer
{
    public class Order
    {
       
            public static DataTable SelectAll()
            {
                SqlCommand cmd = new SqlCommand("select  o.*, d.orderedPrice,d.quantity,p.[name] as productname    from [order] o, orderDetails d,product p where o.id=d.orderId and d.productId=p.id");
                //cmd.Parameters.AddWithValue("",)
                return DBlayer.select(cmd);
            }


            public static DataTable SelectById()
            {
                SqlCommand cmd = new SqlCommand("select o.*, d.* from order o , orderDetails d where o.id=@id and d.orderId=@orderId");
                return DBlayer.select(cmd);
            }
            public static int Delete(int id)
            {
                SqlCommand cm = new SqlCommand("delete from order where id=@id");
                cm.Parameters.AddWithValue("id", id);
                return DBlayer.DML(cm);
            }

        }
    }
