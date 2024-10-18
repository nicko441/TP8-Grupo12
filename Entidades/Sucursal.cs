using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private int Id_Sucursal;
        private string NombreSucursal;
        private string DescripcionSucursal;
        private int Id_ProvinciaSucursal;
        private string DireccionSucursal;

        public Sucursal() { }

        public int getId_Sucursal()
        {
            return Id_Sucursal;
        }
        public void setId_Sucursal(int id_sucursal)
        {
         Id_Sucursal = id_sucursal;
        }
        public string getNombreSucursal() 
        { 
         return NombreSucursal;
        }
      
        public void setNombreSucursal(string nombresucursal)
        {
            NombreSucursal = nombresucursal;
        }
        public string getDescriptionSucursal()
        {
            return DescripcionSucursal;
        }
        public void setDescripcionSucursal(string descripcionsucursal)
        {
            DescripcionSucursal = descripcionsucursal;
        }
        public int getId_ProvinciaSucursal()
        {
            return Id_ProvinciaSucursal;
        }
        public void setId_ProvinciaSucursal(int idprovinciasucursal)
        {
            Id_ProvinciaSucursal = idprovinciasucursal;
        }
    
        public string getDireccionSucursal()
        {
            return DireccionSucursal;
        }
        public void setDireccionSucursal(string direccionsucursal)
        {
            DireccionSucursal= direccionsucursal;
        }
    
    
    }
}
