<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhVien.aspx.cs" Inherits="WebQLDaoTao.QLSinhVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h1>Nội Dung Quản Lý Trang Sinh Viên</h1>
    <hr />
    <div class="table-responsive">
        <asp:GridView ID="gvSinhVien" runat="server" DataSourceID="odsSinhVien" AutoGenerateColumns="False" DataKeyNames="MaSV"
            CssClass="table table-bordered table-hover" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ControlStyle-Width="80px" ReadOnly="true" />
                <asp:BoundField DataField="hosv" HeaderText="Họ SV" ControlStyle-Width="150px" ControlStyle-CssClass="form-control" />
                <asp:BoundField DataField="tensv" HeaderText="Tên SV" ControlStyle-Width="90px" />

                <asp:TemplateField HeaderText="Phái">
                    <EditItemTemplate>
                        <asp:DropDownList ID="gioitinh" runat="server" SelectedValue='<%# Bind("gioitinh") %>'>
                            <asp:ListItem Text="Nam" Value="True"></asp:ListItem>
                            <asp:ListItem Text="Nữ" Value="False"></asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%# (bool) Eval("gioitinh")?"Nam":"Nữ" %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ngaysinh" HeaderText="Ngày Sinh" DataFormatString="{0: dd/MM/yyyy}" />
                <asp:BoundField DataField="noisinh" HeaderText="Nơi Sinh" />
                <asp:BoundField DataField="diachi" HeaderText="Địa Chỉ" />
                <asp:TemplateField HeaderText="Khoa">
                      <ItemTemplate>
                     <%# Eval("Makh") %>
                 </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="makh" runat="server"
                            DataSourceID="odsKhoa" DataTextField="TenKH" DataValueField="MaKH"
                            SelectedValue='<%# Bind("MaKH") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Image"
                    EditImageUrl="~/Contents/Images/Images/edit.gif" DeleteImageUrl="~/Contents/Images/Images/delete.gif"
                    UpdateImageUrl="~/Contents/Images/Images/OK.gif" CancelImageUrl="~/Contents/Images/Images/cancel.gif"
                    ItemStyle-Wrap="false" />
            </Columns>
            <PagerStyle CssClass="pager-style" HorizontalAlign="Center" />
        </asp:GridView>
    </div>
    <asp:ObjectDataSource ID="odsSinhVien" runat="server"
        DataObjectTypeName="WebQLDaoTao.Models.SinhVien"
        DeleteMethod="Delete"
        SelectMethod="getAll"
        TypeName="WebQLDaoTao.Models.SinhVienDAO"
        UpdateMethod="Update"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsKhoa" runat="server"
        SelectMethod="getAll"
        TypeName="WebQLDaoTao.Models.KhoaDAO"></asp:ObjectDataSource>
</asp:Content>
