.class public final Lcom/appodeal/ads/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/p$b;,
        Lcom/appodeal/ads/utils/p$a;
    }
.end annotation


# direct methods
.method public static a(IZ)I
    .locals 0

    if-eqz p1, :cond_0

    int-to-float p0, p0

    const/high16 p1, 0x3fc00000    # 1.5f

    div-float/2addr p0, p1

    float-to-int p0, p0

    :cond_0
    const/16 p1, 0x2bc

    if-le p0, p1, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/appodeal/ads/f1;->o(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x4b0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
