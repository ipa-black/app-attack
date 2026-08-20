.class Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;
.super Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;
.source "RewardFullWebViewManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

.field private final ac:Landroid/view/View$OnClickListener;

.field private final cJ:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 1828
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->FQ:Landroid/app/Activity;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->fl:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->CJ:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 1829
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    .line 1830
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->cJ:Landroid/view/View;

    .line 1831
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->ac:Landroid/view/View$OnClickListener;

    .line 1832
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1833
    const-string p3, "close_auto_click"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    .line 1834
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "click_scence"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Qhi(Ljava/util/Map;)V

    .line 1837
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->Dww:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/fl;->ac()Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    .line 1839
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/cJ$Qhi;)V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;Z)V"
        }
    .end annotation

    .line 1844
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->ac:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1847
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->cJ:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1848
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->cJ:Landroid/view/View;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 1851
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 1852
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/Qhi;->PAe:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->c_()V

    return-void
.end method

.method public Qhi(Landroid/view/View;I)V
    .locals 0

    .line 1857
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->cJ:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1858
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->cJ:Landroid/view/View;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Qhi/hpZ$Qhi;->ac:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
