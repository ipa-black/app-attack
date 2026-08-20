.class public final Lcom/facebook/ads/redexgen/X/TJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TH;-><init>(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lj;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 54416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABt(Ljava/lang/String;)V
    .locals 2

    .line 54417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A01(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setProgress(I)V

    .line 54418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A06(Lcom/facebook/ads/redexgen/X/TH;Z)Z

    .line 54419
    return-void
.end method

.method public final ABv(Ljava/lang/String;)V
    .locals 2

    .line 54420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A06(Lcom/facebook/ads/redexgen/X/TH;Z)Z

    .line 54421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;->setUrl(Ljava/lang/String;)V

    .line 54422
    return-void
.end method

.method public final ACD(I)V
    .locals 1

    .line 54423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A05(Lcom/facebook/ads/redexgen/X/TH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A01(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mn;->setProgress(I)V

    .line 54425
    :cond_0
    return-void
.end method

.method public final ACI(Ljava/lang/String;)V
    .locals 1

    .line 54426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/Mm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;->setTitle(Ljava/lang/String;)V

    .line 54427
    return-void
.end method

.method public final ACK()V
    .locals 2

    .line 54428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:Lcom/facebook/ads/redexgen/X/Lj;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->AAR(I)V

    .line 54429
    return-void
.end method
