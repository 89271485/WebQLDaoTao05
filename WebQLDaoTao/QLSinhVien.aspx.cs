﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class QLSinhVien : System.Web.UI.Page
    {
        SinhVienDAO svDAO=new SinhVienDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Page.IsPostBack)
            //{
            //    //Liên kết dữ liệu cho gvSinhVien
            //    LienKetDuLieu();
            //}
        }

        private void LienKetDuLieu()
        {
            //gvSinhVien.DataSource = svDAO.getAll();
            //gvSinhVien.DataBind();
        }
    }
}