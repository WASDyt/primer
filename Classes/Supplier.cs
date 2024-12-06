﻿using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class Supplier
{
    public int SupplierId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
