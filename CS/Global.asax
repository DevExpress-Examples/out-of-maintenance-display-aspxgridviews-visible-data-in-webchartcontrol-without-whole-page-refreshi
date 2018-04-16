<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup


        // Code that runs on the application startup
        // Specify the connection string, which is used to open a database. 
        // It's supposed that you've already created the Comments database within the App_Data folder.
        string conn = DevExpress.Xpo.DB.AccessConnectionProvider.GetConnectionString(
          Server.MapPath("~\\App_Data\\nwind.mdb"));
        DevExpress.Xpo.Metadata.XPDictionary dict = new DevExpress.Xpo.Metadata.ReflectionDictionary();
        // Initialize the XPO dictionary.
        dict.GetDataStoreSchema(typeof(nwind.Products).Assembly);
        DevExpress.Xpo.DB.IDataStore store = DevExpress.Xpo.XpoDefault.GetConnectionProvider(conn,
                                                                          DevExpress.Xpo.DB.AutoCreateOption.SchemaAlreadyExists);
        DevExpress.Xpo.XpoDefault.DataLayer = new DevExpress.Xpo.ThreadSafeDataLayer(dict, store);
        DevExpress.Xpo.XpoDefault.Session = null;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
