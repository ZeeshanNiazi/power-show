<%@ Register Tagprefix="obspl" Namespace="OboutInc.Splitter2" Assembly="obout_Splitter2_Net" %>
<%@ Page Language="vb" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script language="vb" runat="server">
	Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
		Dim oTree as obout_ASPTreeView_2_NET.Tree
		'build TreeView
		oTree = new obout_ASPTreeView_2_NET.Tree()
			
		dim Html as string
		
		oTree.AddRootNode("I am Root node!", "xpPanel.gif")
		
		Html = "<span style='cursor:pointer;'>Obout Inc</span>"
		oTree.Add("root", "r1", Html, nothing, nothing, nothing)
		
		Html = "<span style='cursor:pointer;'>Brooklyn Bridge</span>"
		oTree.Add("root", "r2", Html, true, nothing, nothing)
		
			Html = "<span style='cursor:pointer;'>Drawing</span>"
			oTree.Add("r2", "r2_0", Html, nothing, nothing, nothing)
		
			Html = "<span style='cursor:pointer;'>Picture</span>"
			oTree.Add("r2", "r2_1", Html, nothing, nothing, nothing)
		
		Html = "<span style='cursor:pointer;'>Pictures</span>"
		oTree.Add("root", "r3", Html, true, nothing, nothing)
		
			Html = "<span style='cursor:pointer;'>Obout Inc</span>"
			oTree.Add("r3", "r3_0", Html, nothing, nothing, nothing)
		
			Html = "<span style='cursor:pointer;'>My Pictures</span>"
			oTree.Add("r3", "r3_1", Html, nothing, nothing, nothing)

        oTree.FolderIcons = "../TreeView/tree2/icons"
        oTree.FolderScript = "../TreeView/tree2/script"
        oTree.FolderStyle = "../TreeView/tree2/style/Classic"
		
		oTree.SelectedId = "r1"
		
		treeView.Text = oTree.HTML()
	End Sub
</script>


<html>
	<head id="Head1" runat="server">
	    <title>obout ASP.NET Splitter examples</title>
    	   
        <style type="text/css">
            .tdText 
		    {
	            font:11px Verdana;
	            color:#333333;
            }
		</style>
	</head>
	<body>
	    <form id="Form1" runat="server">
	    <br />
		<span class="tdText"><b>ASP.NET Splitter - Control left panel from right panel</b></span>
	    <br /><br />
	         <a style="font-size:10pt;font-family:Tahoma" href="Default.aspx?type=VB">� Back to examples</a>
	        <br /><br />
		    <div style="width:686px;height:440px;border:1px solid #ebe9ed">
			    <obspl:Splitter StyleFolder="styles/default" id="splDV" runat="server" CookieDays="0">
				    <LeftPanel WidthMin="100" WidthMax="400">
					    <header height="40">
						    <div style="width:100%;height:100%;background-color:#e0e6ed" class="tdText" align="center">
						    <br />
						    optional left header
						    </div>
					    </header>
					    <content>
						    <div style="margin:5px;"> 
							    <asp:Literal id="treeView" runat="server" />
						    </div>
					    </content>
					    <footer height="40">
						    <div style="width:100%; height: 100%;background-color:#e0e6ed;" class="tdText" align="center">
						    <br />
						    optional left footer
						    </div>
					    </footer>
				    </LeftPanel>
				    <RightPanel>
				    <header height="50">
						    <div style="width:100%;height:100%;background-color:#ebe9ed" class="tdText" align="center">
						    <br />
						    optional right header
						    </div>
					    </header>
					    <content>
    <script type=">
	    function AddNode()
	    {
		    var nodeName = document.getElementById('txtNodeName').value;
		    var parentID = window.parent.tree_selected_id;
		    var nodeID =  + parseInt(window.parent.ob_getChildCount(window.parent.document.getElementById(parentID)) + 1);
		    ob_t2_Add(parentID, parentID + "_" + nodeID, "<span style='cursor:pointer'>" + nodeName + "</span>", null, "ball_blueS.gif", null);
	    }
    </script>
					    <div style="font:11px verdana; color: #333333; padding-left:20px; padding-top:20px;">
						    Add node to the treeview in left panel using button in right panel.
						    <br />
						    <br />
						    Node text: <input type='text' id='txtNodeName' value='New Node'  style="font:11px verdana;" />
						    &nbsp;<input type='button' value='Add' onclick='AddNode()' style="font:11px verdana;" />
						    <br /><br /><br />
					    </div>
					    </content>
					    <footer height="50">
						    <div style="width:100%;height:100%;background-color:#ebe9ed" class="tdText" align="center">
						    <br />
						    optional right footer
						    </div>
					    </footer>
				    </RightPanel>
			    </obspl:Splitter>
		    </div>
		 </form>
	</body>
</html>