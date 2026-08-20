.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;
.super Ljava/lang/Object;
.source "ValidateSlideUpTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private CJ:F

.field private final Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;

.field private ROR:F

.field private Tgh:F

.field private final ac:I

.field private final cJ:Z

.field private fl:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->ac:I

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;

    .line 24
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->cJ:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Tgh:F

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->ROR:F

    .line 38
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Tgh:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, ", mEndY: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->ROR:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "mEndX: "

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    .line 39
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->cJ:Z

    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;

    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;->Qhi()V

    goto :goto_0

    .line 46
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Tgh:F

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->CJ:F

    sub-float/2addr p1, p2

    .line 47
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->ROR:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->fl:F

    sub-float/2addr p2, v1

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 49
    const-string p2, "slideDistancePx: "

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/fl;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/adexpress/CJ/CQU;->cJ(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slideDistanceDp:"

    const-string v3, " and "

    const-string v4, "mSlideThreshold:"

    filled-new-array {v2, p2, v3, v4, v1}, [Ljava/lang/Object;

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->Qhi:Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;

    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/WAv;->Qhi()V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->CJ:F

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->fl:F

    .line 33
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->CJ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, ", mStartY: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/Qhi/hm;->fl:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "mStartX: "

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    :cond_3
    :goto_0
    return v0
.end method
