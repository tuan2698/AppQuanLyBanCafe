using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;




namespace BLL_ALL
{
    public class BanKhuVuc_BLL
    {
        QLBanCafeDataContext qlcf = new QLBanCafeDataContext();
        public BanKhuVuc_BLL() { }

        public List<Ban> getAllTableforArea( string makhu)
        {
            List<Ban> banlist = (from k in qlcf.Bans where k.MaKhuVuc.Equals(makhu) select k ).ToList();
            return banlist;
        }

        public List<KhuVuc> getAllKhuVuc()
        {
            List<KhuVuc> khulist = (from kh in qlcf.KhuVucs select kh).ToList();
            return khulist;
        }

        
    }
}
