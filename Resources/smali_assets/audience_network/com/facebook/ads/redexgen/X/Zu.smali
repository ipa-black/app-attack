.class public final Lcom/facebook/ads/redexgen/X/Zu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zt;->A0F(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zt;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zt;ILcom/facebook/ads/redexgen/X/Tp;)V
    .locals 0

    .line 71291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zu;->A01:Lcom/facebook/ads/redexgen/X/Zt;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Zu;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zu;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABA(Z)V
    .locals 2

    .line 71292
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zu;->A00:I

    if-nez v0, :cond_0

    .line 71293
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zu;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zu;->A01:Lcom/facebook/ads/redexgen/X/Zt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zt;->A04(Lcom/facebook/ads/redexgen/X/Zt;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1Z(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 71294
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zu;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 71295
    return-void
.end method
