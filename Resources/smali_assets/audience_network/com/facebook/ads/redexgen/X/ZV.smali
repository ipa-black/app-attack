.class public abstract Lcom/facebook/ads/redexgen/X/ZV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/12;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeAdsManagerNativeAdapterListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Tp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Tp;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Tp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70626
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZV;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    .line 70627
    return-void
.end method

.method public final ABn(Lcom/facebook/ads/redexgen/X/a7;)V
    .locals 1

    .line 70628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZV;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A15()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZV;->A00:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A15()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Io;->AA4()V

    .line 70630
    :cond_0
    return-void
.end method

.method public final ABp(Lcom/facebook/ads/redexgen/X/a7;)V
    .locals 0

    .line 70631
    return-void
.end method

.method public final ABr(Lcom/facebook/ads/redexgen/X/a7;Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 0

    .line 70632
    return-void
.end method
