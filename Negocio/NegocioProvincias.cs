using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;

namespace Negocio
{
    public class NegocioProvincias
    {

        public DataTable getProvincias()
        {
            DaoProvincia dao = new DaoProvincia();
            return dao.ObtenerProvincias();
        }

    }
}
