using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace myproj.AccessLayer
{
    public class OrderDetails
    {
        //select All
        public static DataTable selectAll()
        {
            SqlCommand cmd = new SqlCommand("select D.* ,P.* from orderDetails D,product P where D.productid=P.id ");
            DataTable dt = DBlayer.select(cmd);
            return dt;

        }
        //select by id
        public static DataTable selById(int id)
        {
            SqlCommand cmd = new SqlCommand("select D.* ,P.* from orderDetails D,product P where D.productid=P.id and D.id=@Did");
            cmd.Parameters.AddWithValue("Did", id);

            return DBlayer.select(cmd);

        }
        //insert
        public static int insert(int orderId, int orderedPrice, int quantity, int productId)
        {
            SqlCommand cmd = new SqlCommand("insert into orderDetails values(@orderId ,@orderedPrice ,@quantity,@productId)");
            cmd.Parameters.AddWithValue("orderId", orderId);
            cmd.Parameters.AddWithValue("orderedPrice", orderedPrice);
            cmd.Parameters.AddWithValue("quantity", quantity);
            cmd.Parameters.AddWithValue("productId", productId);

            return DBlayer.DML(cmd);

        }
        //update
        public static int update(int orderId, int orderedPrice, int quantity, int productId)
        {
            SqlCommand cmd = new SqlCommand("update orderDetails set orderId=@orderId,orderPrice=@orderedPrice,quantity=@quantity,productId=@productId");
            cmd.Parameters.AddWithValue("orderId", orderId);
            cmd.Parameters.AddWithValue("orderedPrice", orderedPrice);
            cmd.Parameters.AddWithValue("quantity", quantity);
            cmd.Parameters.AddWithValue("productId", productId);

            return DBlayer.DML(cmd);

        }
        //delete
        public static int delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from orderDetails where id=@Did");
            cmd.Parameters.AddWithValue("Did", id);

            return DBlayer.DML(cmd);

        }

    }
}