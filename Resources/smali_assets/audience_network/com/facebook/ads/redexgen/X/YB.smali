.class public final Lcom/facebook/ads/redexgen/X/YB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y6;->A0L(Lcom/facebook/ads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/NativeAd;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Y6;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .line 67724
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8x()V
    .locals 0

    .line 67725
    return-void
.end method

.method public final AAs(Lcom/facebook/ads/redexgen/X/8v;)V
    .locals 4

    .line 67726
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/YC;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/YC;-><init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/8v;)V

    .line 67727
    const-wide/16 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67728
    return-void
.end method

.method public final AB6()V
    .locals 1

    .line 67729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A03(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A03(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/redexgen/X/8v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8v;->A08()V

    .line 67731
    :cond_0
    return-void
.end method

.method public final ACm(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 67732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A19()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y6;->A02(Lcom/facebook/ads/redexgen/X/Y6;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p1, p1}, Lcom/facebook/ads/redexgen/X/LD;->A06(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 67733
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 67734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/Y6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/NativeAd;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Y6;->A0K(Lcom/facebook/ads/redexgen/X/Y6;Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A12()Lcom/facebook/ads/redexgen/X/Tr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A12()Lcom/facebook/ads/redexgen/X/Tr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Tr;->onClick(Landroid/view/View;)V

    .line 67736
    :cond_0
    return-void
.end method
