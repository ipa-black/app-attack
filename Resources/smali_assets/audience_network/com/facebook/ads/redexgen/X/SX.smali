.class public final Lcom/facebook/ads/redexgen/X/SX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/9D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 1

    .line 52546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52547
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Ljava/lang/ref/WeakReference;

    .line 52548
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9D;Lcom/facebook/ads/redexgen/X/9e;)V
    .locals 0

    .line 52549
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    return-void
.end method


# virtual methods
.method public final ABA(Z)V
    .locals 1

    .line 52550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9D;

    .line 52551
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/9D;
    if-eqz v0, :cond_0

    .line 52552
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9D;->A0B(Lcom/facebook/ads/redexgen/X/9D;Z)Z

    .line 52553
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A09(Lcom/facebook/ads/redexgen/X/9D;)V

    .line 52554
    :cond_0
    return-void
.end method
