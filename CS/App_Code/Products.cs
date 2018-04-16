using System;
using DevExpress.Xpo;
namespace nwind {

	public class Products : XPLiteObject {
		int fCategoryID;
		public int CategoryID {
			get { return fCategoryID; }
			set { SetPropertyValue<int>("CategoryID", ref fCategoryID, value); }
		}
		bool fDiscontinued;
		public bool Discontinued {
			get { return fDiscontinued; }
			set { SetPropertyValue<bool>("Discontinued", ref fDiscontinued, value); }
		}
		string fEAN13;
		[Size(12)]
		public string EAN13 {
			get { return fEAN13; }
			set { SetPropertyValue<string>("EAN13", ref fEAN13, value); }
		}
		int fProductID;
		[Key(true)]
		public int ProductID {
			get { return fProductID; }
			set { SetPropertyValue<int>("ProductID", ref fProductID, value); }
		}
		string fProductName;
		[Size(40)]
		public string ProductName {
			get { return fProductName; }
			set { SetPropertyValue<string>("ProductName", ref fProductName, value); }
		}
		string fQuantityPerUnit;
		[Size(20)]
		public string QuantityPerUnit {
			get { return fQuantityPerUnit; }
			set { SetPropertyValue<string>("QuantityPerUnit", ref fQuantityPerUnit, value); }
		}
		short fReorderLevel;
		public short ReorderLevel {
			get { return fReorderLevel; }
			set { SetPropertyValue<short>("ReorderLevel", ref fReorderLevel, value); }
		}
		int fSupplierID;
		public int SupplierID {
			get { return fSupplierID; }
			set { SetPropertyValue<int>("SupplierID", ref fSupplierID, value); }
		}
		decimal fUnitPrice;
		public decimal UnitPrice {
			get { return fUnitPrice; }
			set { SetPropertyValue<decimal>("UnitPrice", ref fUnitPrice, value); }
		}
		short fUnitsInStock;
		public short UnitsInStock {
			get { return fUnitsInStock; }
			set { SetPropertyValue<short>("UnitsInStock", ref fUnitsInStock, value); }
		}
		short fUnitsOnOrder;
		public short UnitsOnOrder {
			get { return fUnitsOnOrder; }
			set { SetPropertyValue<short>("UnitsOnOrder", ref fUnitsOnOrder, value); }
		}
		public Products(Session session) : base(session) { }
		public Products() : base(Session.DefaultSession) { }
		public override void AfterConstruction() { base.AfterConstruction(); }
	}

}
