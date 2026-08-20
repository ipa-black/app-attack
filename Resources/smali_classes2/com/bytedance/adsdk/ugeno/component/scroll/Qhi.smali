.class public Lcom/bytedance/adsdk/ugeno/component/scroll/Qhi;
.super Lcom/bytedance/adsdk/ugeno/component/Qhi;
.source "UGScrollLayoutWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/component/Qhi<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/Qhi;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Sf()Lcom/bytedance/adsdk/ugeno/component/Qhi$Qhi;
    .locals 1

    .line 22
    new-instance v0, Lcom/bytedance/adsdk/ugeno/component/frame/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/component/frame/Qhi$Qhi;-><init>()V

    return-object v0
.end method

.method public synthetic ac()Landroid/view/View;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/scroll/Qhi;->tP()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public tP()Landroid/widget/ScrollView;
    .locals 2

    .line 16
    new-instance v0, Lcom/bytedance/adsdk/ugeno/component/scroll/UGScrollView;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/scroll/Qhi;->cJ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/component/scroll/UGScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/component/scroll/UGScrollView;->Qhi(Lcom/bytedance/adsdk/ugeno/ac;)V

    return-object v0
.end method
