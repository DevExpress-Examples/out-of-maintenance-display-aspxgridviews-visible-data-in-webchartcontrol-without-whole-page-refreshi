<%@ Application Language="vb" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup


        ' Code that runs on the application startup
        ' Specify the connection string, which is used to open a database. 
        ' It's supposed that you've already created the Comments database within the App_Data folder.
        Dim conn As String = DevExpress.Xpo.DB.AccessConnectionProvider.GetConnectionString(Server.MapPath("~\App_Data\nwind.mdb"))
        Dim dict As DevExpress.Xpo.Metadata.XPDictionary = New DevExpress.Xpo.Metadata.ReflectionDictionary()
        ' Initialize the XPO dictionary.
        dict.GetDataStoreSchema(GetType(nwind.Products).Assembly)
        Dim store As DevExpress.Xpo.DB.IDataStore = DevExpress.Xpo.XpoDefault.GetConnectionProvider(conn, DevExpress.Xpo.DB.AutoCreateOption.SchemaAlreadyExists)
        DevExpress.Xpo.XpoDefault.DataLayer = New DevExpress.Xpo.ThreadSafeDataLayer(dict, store)
        DevExpress.Xpo.XpoDefault.Session = Nothing
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        '  Code that runs on application shutdown

    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs

    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started

    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.

    End Sub

</script>