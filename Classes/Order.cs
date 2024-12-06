using System;
using System.Collections.Generic;

namespace WpfAppTrade.Classes;

public partial class Order
{
    public int OrderId { get; set; }

    public DateTime OrderDate { get; set; }

    public DateTime DeliveryDate { get; set; }

    public int PickupPointId { get; set; }

    public int? ClientId { get; set; }

    public string? ReceiveCode { get; set; }

    public int? OrderStatusId { get; set; }

    public virtual ICollection<OrderProduct> OrderProducts { get; set; } = new List<OrderProduct>();

    public virtual OrderStatus? OrderStatus { get; set; }

    public virtual PickupPoint PickupPoint { get; set; } = null!;

    public virtual User PickupPointNavigation { get; set; } = null!;
}
