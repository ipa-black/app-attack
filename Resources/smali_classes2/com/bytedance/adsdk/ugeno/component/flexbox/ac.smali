.class public Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;
.super Ljava/lang/Object;
.source "FlexLine.java"


# instance fields
.field ABk:I

.field CJ:I

.field Gm:F

.field HzH:Z

.field Qhi:I

.field ROR:I

.field Sf:I

.field Tgh:I

.field WAv:F

.field ac:I

.field cJ:I

.field fl:I

.field hm:I

.field hpZ:I

.field iMK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field kYc:Z

.field pA:I

.field zc:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 34
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->Qhi:I

    .line 36
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->cJ:I

    const/high16 v0, -0x80000000

    .line 38
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->ac:I

    .line 40
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->CJ:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->iMK:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->ROR:I

    return v0
.end method

.method Qhi(Landroid/view/View;IIII)V
    .locals 4

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/component/flexbox/cJ;

    .line 171
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->Qhi:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/component/flexbox/cJ;->ABk()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->Qhi:I

    .line 172
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->cJ:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/component/flexbox/cJ;->iMK()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->cJ:I

    .line 173
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->ac:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/component/flexbox/cJ;->pA()I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->ac:I

    .line 174
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->CJ:I

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/component/flexbox/cJ;->hpZ()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->CJ:I

    return-void
.end method

.method public cJ()I
    .locals 2

    .line 133
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->Sf:I

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/component/flexbox/ac;->hm:I

    sub-int/2addr v0, v1

    return v0
.end method
