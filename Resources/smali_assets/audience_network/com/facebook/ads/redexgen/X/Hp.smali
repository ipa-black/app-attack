.class public final Lcom/facebook/ads/redexgen/X/Hp;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 2

    .line 37443
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 37444
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A01()V

    .line 37445
    :cond_0
    return-void
.end method

.method public static A01()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 37446
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37447
    return-void
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 2

    .line 37448
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 37449
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Hp;->A03(Ljava/lang/String;)V

    .line 37450
    :cond_0
    return-void
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 37451
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 37452
    return-void
.end method
