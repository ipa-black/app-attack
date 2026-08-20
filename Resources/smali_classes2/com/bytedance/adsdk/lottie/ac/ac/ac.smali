.class public Lcom/bytedance/adsdk/lottie/ac/ac/ac;
.super Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;
.source "ImageLayer.java"


# instance fields
.field private Gm:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final ROR:Landroid/graphics/Paint;

.field private final Sf:Landroid/graphics/Rect;

.field private final WAv:Lcom/bytedance/adsdk/lottie/WAv;

.field private final hm:Landroid/graphics/Rect;

.field private zc:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/fl;)V

    .line 25
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->ROR:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Sf:Landroid/graphics/Rect;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->hm:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->ROR()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/lottie/hm;->Tgh(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/WAv;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    return-void
.end method

.method private Sf()Landroid/graphics/Bitmap;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->zc:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/ac/fl;->ROR()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->cJ:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/lottie/hm;->fl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/WAv;->Tgh()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 68
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    if-eqz p2, :cond_0

    .line 69
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result p2

    .line 70
    iget-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/WAv;->Qhi()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/WAv;->cJ()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Qhi:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public cJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 42
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Sf()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    if-nez v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->ROR:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    iget-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Gm:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    if-eqz p3, :cond_1

    .line 50
    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->ROR:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->ROR()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 54
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Sf:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->cJ:Lcom/bytedance/adsdk/lottie/hm;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/hm;->CJ()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 56
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->hm:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/lottie/WAv;->Qhi()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->WAv:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/lottie/WAv;->cJ()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->hm:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->Sf:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->hm:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/ac;->ROR:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method
