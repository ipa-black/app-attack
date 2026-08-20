.class public final Lcom/facebook/ads/redexgen/X/6i;
.super Lcom/facebook/ads/redexgen/X/LE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jq;)V
    .locals 0

    .line 16018
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LE;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/LJ;)V
    .locals 2

    .line 16019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A02(Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16020
    return-void

    .line 16021
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/LJ;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 16022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A00(Lcom/facebook/ads/redexgen/X/Jq;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Lcom/facebook/ads/redexgen/X/6i;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0B(Lcom/facebook/ads/redexgen/X/Jq;Landroid/animation/AnimatorListenerAdapter;)V

    .line 16024
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16025
    check-cast p1, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6i;->A00(Lcom/facebook/ads/redexgen/X/LJ;)V

    return-void
.end method
