.class public Lcom/bytedance/adsdk/ugeno/core/cJ/ac;
.super Ljava/lang/Object;
.source "UGOnlyTapEvent.java"


# instance fields
.field private CJ:Landroid/content/Context;

.field private Qhi:F

.field private ac:Lcom/bytedance/adsdk/ugeno/core/zc;

.field private cJ:F

.field private fl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->CJ:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->ac:Lcom/bytedance/adsdk/ugeno/core/zc;

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/iMK;Lcom/bytedance/adsdk/ugeno/component/cJ;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 30
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->fl:Z

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 38
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->Qhi:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-gez p1, :cond_2

    iget p1, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->cJ:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_8

    .line 39
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->fl:Z

    goto :goto_1

    .line 44
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->fl:Z

    if-eqz v0, :cond_4

    .line 45
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->fl:Z

    return v2

    .line 48
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    .line 50
    iget v4, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->Qhi:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_6

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->cJ:F

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p3, v3

    if-ltz p3, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 54
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->ac:Lcom/bytedance/adsdk/ugeno/core/zc;

    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/iMK;->Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;Lcom/bytedance/adsdk/ugeno/core/iMK$cJ;Lcom/bytedance/adsdk/ugeno/core/iMK$Qhi;)V

    return v1

    .line 51
    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->fl:Z

    goto :goto_1

    .line 32
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->Qhi:F

    .line 33
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/cJ/ac;->cJ:F

    :cond_8
    :goto_1
    return v1
.end method
