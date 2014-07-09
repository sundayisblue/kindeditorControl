<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" ValidateRequest="false"%>


<%@ Register Src="kindeditor/HtmlEditor.ascx" TagName="HtmlEditor" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server" name="example">
    <div>
        使用方法:

        <br />
        1. 解压zip文件，将所有文件复制到IIS的wwwroot/kindeditor目录下。

 
        <br />
        2. 将kindeditor/asp.net/bin目录下的dll文件复制到wwwroot/bin目录下。&nbsp; 
        <br />
        <br />
        <br />
        属性说明:<br />
        AllowFileUpload:true时显示文件上传按钮<br />
        AllowMediaUpload:true时显示视音频上传按钮<br />
        AllowFlashUpload:true时显示Flash上传按钮<br />
        AllowImageUpload:true时显示图片上传按钮<br />
        AllowFileManager:true时是否可以浏览服务器文件(浏览图片，视频等文件)<br />
        ReadOnly:true为只读模式<br />
        IsFirstLoad:是否是初始加载，加载多个kindeditor控件时,非第一个控件需设置IsFirstLoad=&quot;false&quot;属性<br />
        UrLstr:路径[默认路径../kindeditor],只设置一次即可。<br />
        EditorType:有（仅表情, 高级[默认], 普通, 文本, 视频）编辑器类型<br />
        Text:设置获取文本值<br />
        Width:宽度<br />
        Height:高度<br />
        LanguageType:国际化(English,简体中文[默认],繁體中文,Korean,Arabic)<br />
        <br />
        <br />
        <br />
        kindeditor 4.1.10<br />
        <asp:Button ID="Button1" runat="server" Text="显示高级输入框内输入到后台文本内容" onclick="Button1_Click" />
        <br />
        高级(可以在标签里面设置其属性，例如不能浏览服务器上传文件 AllowImageUpload="false") 
        <uc1:HtmlEditor ID="HtmlEditor1" runat="server" EditorType="高级" AllowImageUpload="false"  UrLstr="kindeditor" LanguageType="English" Width="800"  />
        <br>
        仅表情
        <uc1:HtmlEditor ID="HtmlEditor3" runat="server" EditorType="仅表情" IsFirstLoad="False" />
        <br>
        文本
        <uc1:HtmlEditor ID="HtmlEditor4" runat="server" EditorType="文本" IsFirstLoad="False" />
        <br>
        普通
        <uc1:HtmlEditor ID="HtmlEditor2" runat="server" EditorType="普通" IsFirstLoad="False" />
        <br>
        视频
        <uc1:HtmlEditor ID="HtmlEditor5" runat="server" EditorType="视频" IsFirstLoad="False" />
        <br>
        

    </div>
    </form>
</body>
</html>
