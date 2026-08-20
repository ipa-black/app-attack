.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;
.super Landroid/view/GestureDetector;
.source "ViewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;
    }
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;

.field private final cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 27
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;

    .line 28
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/model/Gm;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    if-nez v0, :cond_0

    .line 42
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->Qhi:F

    .line 45
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->cJ:F

    .line 46
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->ac:F

    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->CJ:F

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->fl:J

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->Tgh:J

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    .line 51
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    .line 52
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object v0

    .line 53
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 54
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ([I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->ROR:I

    .line 55
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->Sf:I

    .line 56
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->hm:I

    .line 57
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->zc:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    const-string p3, "vessel"

    .line 60
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 61
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->fl(Landroid/content/Context;)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 62
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ROR(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p2

    .line 63
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Tgh(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Gm$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/Gm;

    move-result-object p1

    return-object p1
.end method

.method Qhi()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;->Qhi()V

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH$Qhi;->cJ()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/HzH;->cJ:Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/ROR;->Qhi(Landroid/view/MotionEvent;)V

    .line 75
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
