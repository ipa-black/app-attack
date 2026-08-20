.class public final Lcom/facebook/ads/redexgen/X/YJ;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YF;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YF;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YF;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 67821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Lcom/facebook/ads/redexgen/X/YF;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YJ;->A01:Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 67822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    .line 67824
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Lcom/facebook/ads/redexgen/X/YF;

    .line 67825
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A01:Lcom/facebook/ads/redexgen/X/JA;

    .line 67826
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KW;->A00(Lcom/facebook/ads/redexgen/X/JA;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 67827
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 67828
    :cond_0
    return-void
.end method
