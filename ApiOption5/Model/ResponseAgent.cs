using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ApiOption5.Model
{
   public class ResponseAgent
    { 
        public ResponseAgent (Agent agent)
        {
            this.ID = agent.ID;
            this.CompanyName = agent.CompanyName;
            this.IDAgentType = agent.IDAgentType;
            this.Address = agent.Address;
            this.INN = agent.INN;
            this.KPP = agent.KPP;
            this.IDDirectorName = agent.IDDirectorName;
            this.Phone = agent.Phone;
            this.Logotype = agent.Logotype;
            this.IDPriority = agent.IDPriority;
            this.IDPointOfSales = agent.IDPointOfSales;
            this.IDRole = agent.IDRole;   
        }
        public ResponseAgent() { }
        public int ID { get; set; }
        public string CompanyName { get; set; }
        public int IDAgentType { get; set; }
        public string Address { get; set; }
        public int INN { get; set; }
        public int KPP { get; set; }
        public int IDDirectorName { get; set; }
        public string Phone { get; set; }
        public string Logotype { get; set; }
        public int IDPriority { get; set; }
        public int IDPointOfSales { get; set; }
        public string IDRole { get; set; }
    }
}
