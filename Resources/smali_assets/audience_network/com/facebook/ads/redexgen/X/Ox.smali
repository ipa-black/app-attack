.class public final Lcom/facebook/ads/redexgen/X/Ox;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oy;)V
    .locals 0

    .line 48093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Oy;Lcom/facebook/ads/redexgen/X/7D;)V
    .locals 0

    .line 48094
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ox;-><init>(Lcom/facebook/ads/redexgen/X/Oy;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 48095
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 48096
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Oy;->A01(Lcom/facebook/ads/redexgen/X/Oy;J)J

    .line 48097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A00(Lcom/facebook/ads/redexgen/X/Oy;)I

    .line 48098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A03(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    .line 48099
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oy;->A02(Lcom/facebook/ads/redexgen/X/Oy;)Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    .line 48100
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ox;->A00:Lcom/facebook/ads/redexgen/X/Oy;

    .line 48101
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oy;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 48102
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 48103
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9N(Ljava/lang/String;Ljava/util/Map;)V

    .line 48104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
