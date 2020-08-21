using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace myproj.AccessLayer
{
    public class user
    {
        public static DataTable selectall()
        {
            SqlCommand cmd = new SqlCommand("select * from [User]");
            DataTable dt = DBlayer.select(cmd);
            return dt;

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static DataTable userselbyid(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from [User] where id=@uid");
            cmd.Parameters.AddWithValue("uid", id);
            DataTable dt = DBlayer.select(cmd);
            return dt;
        }
        /// <summary>
        /// admin select user with id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>

        public static DataTable adminselbyid(int id)
        {
            SqlCommand cmd = new SqlCommand("select fName,lName,email, userName,[image],[address],[status],phone from [User] where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            DataTable dt = DBlayer.select(cmd);
            return dt;
        }

        /// <summary>
        /// admin select all users
        /// </summary>
        /// <returns></returns>

        public static DataTable adminselall()
        {
            SqlCommand cmd = new SqlCommand("select id,fName,lName,email, userName,[image],[address],[status],phone from [User]");
            DataTable dt = DBlayer.select(cmd);
            return dt;
        }

        /// <summary>
        /// user insert his data
        /// </summary>
        /// <param name="fName"></param>
        /// <param name="lName"></param>
        /// <param name="email"></param>
        /// <param name="userName"></param>
        /// <param name="image"></param>
        /// <param name="address"></param>
        /// <param name="password"></param>
        /// <param name="isAdmin"></param>
        /// <param name="status"></param>
        /// <param name="phone"></param>
        /// <returns></returns>

        public static int insert(string fName, string lName, string email, string userName, string image, string address, string password, bool isAdmin, String status, string phone)
        {
            SqlCommand cmd = new SqlCommand("insert into [User] values(@fName,@lName,@email,@userName,@image,@address,@password,@isAdmin,@status,@phone)");
            cmd.Parameters.AddWithValue("fname", fName);
            cmd.Parameters.AddWithValue("lName", lName);
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("userName", userName);
            cmd.Parameters.AddWithValue("image", image);
            cmd.Parameters.AddWithValue("address", address);
            cmd.Parameters.AddWithValue("password", password);
            cmd.Parameters.AddWithValue("isAdmin", isAdmin);
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("phone", phone);
            int roweffect = DBlayer.DML(cmd);
            return (roweffect);

        }
        /// <summary>
        /// delete user by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>

        public static int delete(int id)
        {
            SqlCommand cmd = new SqlCommand("delete from [User] where id=@id");
            cmd.Parameters.AddWithValue("id", id);
            int roweffect = DBlayer.DML(cmd);
            return (roweffect);
        }
        /// <summary>
        /// user edit his data
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fName"></param>
        /// <param name="lName"></param>
        /// <param name="email"></param>
        /// <param name="userName"></param>
        /// <param name="image"></param>
        /// <param name="address"></param>
        /// <param name="password"></param>
        /// <param name="phone"></param>
        /// <returns></returns>

        public static int userupdate(int id, string fName, string lName, string email, string userName, string image, string address, string password, string phone)
        {
            SqlCommand cmd = new SqlCommand("update [User] set fName=@fName,lName=@lName,email=@email,userName=@userName,image=@image,address=@address,password=@password,phone=@phone where id=@id");
            cmd.Parameters.AddWithValue("fname", fName);
            cmd.Parameters.AddWithValue("lName", lName);
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("userName", userName);
            cmd.Parameters.AddWithValue("image", image);
            cmd.Parameters.AddWithValue("address", address);
            cmd.Parameters.AddWithValue("phone", phone);
            cmd.Parameters.AddWithValue("id", id);
            int roweffect = DBlayer.DML(cmd);
            return (roweffect);

        }
        /// <summary>
        /// admin updte user status
        /// </summary>
        /// <param name="id"></param>
        /// <param name="status"></param>
        /// <returns></returns>

        public static int adminupdate(int id, int status)
        {
            SqlCommand cmd = new SqlCommand("update [User] set status=@status where id=@id");
            cmd.Parameters.AddWithValue("status", status);
            cmd.Parameters.AddWithValue("id", id);
            int roweffect = DBlayer.DML(cmd);
            return (roweffect);

        }
        public static DataTable selectlog(string email, string password)
        {
            SqlCommand cmd = new SqlCommand("select id,email,password,isAdmin from [User] where email=@email and password=@password");
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);
            DataTable dt = DBlayer.select(cmd);
            return (dt);
        }
    }
}