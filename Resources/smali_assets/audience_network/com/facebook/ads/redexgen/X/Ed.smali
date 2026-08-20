.class public final Lcom/facebook/ads/redexgen/X/Ed;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/Eh;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V
    .locals 0

    .line 31932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31933
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    .line 31934
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31935
    return-void
.end method
