.class public final Lcom/facebook/ads/redexgen/X/Sl;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sh;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sh;)V
    .locals 0

    .line 53058
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q9;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 53059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sh;->A08(Lcom/facebook/ads/redexgen/X/Sh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sh;->A01(Lcom/facebook/ads/redexgen/X/Sh;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53060
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sh;->A01(Lcom/facebook/ads/redexgen/X/Sh;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 53061
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sh;->A05(Lcom/facebook/ads/redexgen/X/Sh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sh;->A05(Lcom/facebook/ads/redexgen/X/Sh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/N3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N3;->ABC()V

    .line 53063
    :cond_2
    return-void
.end method
