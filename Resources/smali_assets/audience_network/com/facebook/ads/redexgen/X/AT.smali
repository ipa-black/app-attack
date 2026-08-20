.class public final Lcom/facebook/ads/redexgen/X/AT;
.super Lcom/facebook/ads/redexgen/X/NY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AB;)V
    .locals 0

    .line 21704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NY;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 1

    .line 21705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/AB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AB;->A00(Lcom/facebook/ads/redexgen/X/AB;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21706
    return-void

    .line 21707
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/AB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AB;->A00(Lcom/facebook/ads/redexgen/X/AB;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ls;->onPause()V

    .line 21708
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 21709
    check-cast p1, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/6z;)V

    return-void
.end method
