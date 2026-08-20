.class public final Lcom/facebook/ads/redexgen/X/aD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aA;->A0B(ILcom/facebook/ads/redexgen/X/8B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aA;)V
    .locals 0

    .line 71942
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aD;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8x()V
    .locals 4

    .line 71943
    .local p1, "this":Lcom/facebook/ads/redexgen/X/aD;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A02(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/F3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A00()Ljava/lang/String;

    move-result-object v1

    .line 71944
    .local v0, "adChoice":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71945
    new-instance v3, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71946
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v2

    .line 71947
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    .line 71948
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A6B()Ljava/lang/String;

    move-result-object v0

    .line 71949
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KS;->A0E(Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/Xc;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 71950
    :cond_0
    return-void
.end method

.method public final AAs(Lcom/facebook/ads/redexgen/X/8v;)V
    .locals 4

    .line 71951
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aD;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Lcom/facebook/ads/redexgen/X/aD;Lcom/facebook/ads/redexgen/X/8v;)V

    .line 71952
    const-wide/16 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71953
    return-void
.end method

.method public final AB6()V
    .locals 0

    .line 71954
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aD;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method

.method public final ACm(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 71955
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aD;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method
