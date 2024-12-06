using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class PickupPoint
{
    public int PointId { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
