.class public final Lcom/facebook/ads/redexgen/X/SE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8x;
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
            "Lcom/facebook/ads/redexgen/X/8x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 1

    .line 51722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51723
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Ljava/lang/ref/WeakReference;

    .line 51724
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/92;)V
    .locals 0

    .line 51725
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    return-void
.end method


# virtual methods
.method public final ABA(Z)V
    .locals 1

    .line 51726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8x;

    .line 51727
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/8x;
    if-eqz v0, :cond_0

    .line 51728
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/8x;->A07(Lcom/facebook/ads/redexgen/X/8x;Z)Z

    .line 51729
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A05(Lcom/facebook/ads/redexgen/X/8x;)V

    .line 51730
    :cond_0
    return-void
.end method
