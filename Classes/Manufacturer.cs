﻿using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class Manufacturer
{
    public int ManufacturerId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
