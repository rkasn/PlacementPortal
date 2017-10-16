<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Database_EditDelete_DB.aspx.cs" Inherits="New_folder_production_Database_EditDelete_DB" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><i class="fa fa-paw"></i><span>Gentelella Alela!</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>John Doe</h2>
                        </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i>Company <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="Company_Add_DB.aspx">Add</a></li>
                                        <li><a href="Vompany_EditDelete_DB.aspx">Edit / Delete</a></li>
                                        <li><a href="Company_History_DB.aspx">History</a></li>
                                        <li><a href="Company_View_DB.aspx">View</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i>Database <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="Database_Add_DB.aspx">Add</a></li>
                                        <li><a href="Database_EditDelete_DB.aspx">Edit / Delete</a></li>
                                        <li><a href="Database_View_DB.aspx">View</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-desktop"></i>Graphs <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="Graphs1.aspx">Graph 1</a></li>
                                        <li><a href="Graphs2.aspx">Graph 2</a></li>
                                        <li><a href="Geaphs3.aspx">Graph 3</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i>Email </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="images/img.jpg" alt="">John Doe
                   
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu pull-right">
                                    <li><a href="javascript:;">Profile</a></li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="badge bg-red pull-right">50%</span>
                                            <span>Settings</span>
                                        </a>
                                    </li>
                                    <li><a href="javascript:;">Help</a></li>
                                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i>Log Out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Student Registration</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Personal Details </h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="form1" class="form-horizontal form-label-left" runat="server">
                                        <div>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" ShowFooter="False" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                                <AlternatingRowStyle BackColor="#61A6F8" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Operations">
                                                        <EditItemTemplate>
                                                            <asp:ImageButton ID="ImgBtnUpdate" runat="server" CommandName="Update" Height="20px" ImageUrl="~/Images/Update2.png" ToolTip="Update" Width="20px" />
                                                            <asp:ImageButton ID="ImgBtCancel" runat="server" CommandName="Cancel" Height="20px" ImageUrl="~/Images/cancel .png" ToolTip="Cancel" Width="20px" />
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:ImageButton ID="ImgBtnAdd" runat="server" CommandName="AddNew" Height="20px" ImageUrl="~/Images/insert.png" ToolTip="AddNew" ValidationGroup="validation" Width="20px" />
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="ImgBtnEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Images/edit2.png" ToolTip="Edit" Width="20px" />
                                                            <asp:ImageButton ID="ImgBtnDelete" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/delete.png" ToolTip="Delete" Width="20px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="USN">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtUSN" runat="server" TextMode="MultiLine" Text='<%#Eval("usn")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUSN" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrName" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFtrName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblUSN" runat="server" Text='<%#Eval("usn")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Name">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtName" TextMode="MultiLine" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrDomain" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFtrDomain" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblName" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Father's Name">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtFatherName" TextMode="MultiLine" runat="server" Text='<%#Eval("father_name")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtFatherName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrVenue" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFtrVenue" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblFatherName" runat="server" Text='<%#Eval("father_name")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Date Of Birth">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtDOB" runat="server" TextMode="Date" Text='<%#Eval("dob")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtDOB" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrTOA" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtFtrTOA" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblDOB" runat="server" Text='<%#Eval("dob")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Gender">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtGender" runat="server" Text='<%#Eval("gender")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtGender" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrNOD" TextMode="Number" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtFtrNOD" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblGender" runat="server" Text='<%#Eval("gender")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Caste">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtCaste" runat="server" Text='<%#Eval("caste")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtCaste" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrStartDate" TextMode="Date" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtFtrStartDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblCaste" runat="server" Text='<%#Eval("caste")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Category">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TxtCategory" runat="server" Text='<%#Eval("category")%>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtCategory" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </EditItemTemplate>
                                                        <%--<FooterTemplate>
                                                            <asp:TextBox ID="TxtFtrEndDate" TextMode="Date" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtFtrEndDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                                                        </FooterTemplate>--%>
                                                        <ItemTemplate>
                                                            <asp:Label ID="LblCategory" runat="server" Text='<%#Eval("category")%>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <HeaderStyle BackColor="Blue" ForeColor="White" />
                                            </asp:GridView>
                                        </div>
                                        <asp:Label ID="LblResult" runat="server"></asp:Label>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page content -->
            <!-- footer content -->
            <footer>
                <div class="pull-right">
                    Database Add Element
         
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

</body>
</html>
