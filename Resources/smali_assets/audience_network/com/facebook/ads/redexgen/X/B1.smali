.class public final Lcom/facebook/ads/redexgen/X/B1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/B3;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B3;)V
    .locals 0

    .line 22705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22706
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B1;->A00:Landroid/os/Handler;

    .line 22707
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/B1;->A01:Lcom/facebook/ads/redexgen/X/B3;

    .line 22708
    return-void
.end method
