﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HtmlEditor.ascx.cs" Inherits="Controls_HtmlEditor"  %>



<%=FirstLoadStr%>
	<script>
	    var editor;
	    KindEditor.ready(function (K) {
	        editor = K.create('#<%=Editor.ClientID %>', {
	            items : [<%=modeStr %>],
	            cssPath: '<%=UrLstr %>/plugins/code/prettify.css',
	            uploadJson: '<%=UrLstr %>/asp.net/upload_json.ashx',
	            fileManagerJson: '<%=UrLstr %>/asp.net/file_manager_json.ashx',
	            <%=AllStr%>    
	        });
	        <%=ReadOnlyStr%> 
	        prettyPrint();
	    });
	    
	    function getValue() {
	        // 同步数据后可以直接取得textarea的value，FineUI框架 button提交时先调用
	        editor.sync();
	    }
	</script>

<asp:TextBox runat="server" ID="Editor"  Width="20px" Height="20px"  TextMode="MultiLine" 
style="visibility:hidden;"></asp:TextBox>



