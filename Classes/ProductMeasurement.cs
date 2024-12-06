using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class ProductMeasurement
{
    public int MeasurementId { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
