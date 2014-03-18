using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mapa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Inicializamos el mapa con sus características
        GoogleMapForASPNet.GoogleMapObject.APIVersion = "2";
        GoogleMapForASPNet.GoogleMapObject.Width = "1000px";
        GoogleMapForASPNet.GoogleMapObject.Height = "600px";
        GoogleMapForASPNet.GoogleMapObject.ZoomLevel = 14;
        GoogleMapForASPNet.GoogleMapObject.CenterPoint = new GooglePoint("CenterPoint", 43.66619, -79.44268);
        GoogleMapForASPNet.GoogleMapObject.Points.Add(new GooglePoint("1", 43.65669, -79.45278));
    }
    protected void Carga_Unidades()
    {

    }
}