using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class Product
{
    public int ProductId { get; set; }

    public string? ProductArticleNumber { get; set; }

    public string? ProductName { get; set; }

    public string? ProductDescription { get; set; }

    public int? ProductCategoryId { get; set; }

    public int? ManufacturerId { get; set; }

    public float? ProductCost { get; set; }

    public int? ProductDiscountAmount { get; set; }

    public int? ProductQuantityInStock { get; set; }

    public int? MeasurementId { get; set; }

    public int? SupplierId { get; set; }

    public string? ProductPhoto { get; set; }

    public int? ProductDiscountMax { get; set; }

    public virtual Manufacturer? Manufacturer { get; set; }

    public virtual ProductMeasurement? Measurement { get; set; }

    public virtual ICollection<OrderProduct> OrderProducts { get; set; } = new List<OrderProduct>();

    public virtual ProductCategory? ProductCategory { get; set; }

    public virtual Supplier? Supplier { get; set; }
}
