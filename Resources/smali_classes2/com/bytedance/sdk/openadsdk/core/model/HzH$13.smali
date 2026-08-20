.class Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;
.super Ljava/lang/Object;
.source "LandingPageModel.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/HzH;->Sf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 408
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 409
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HzH$13;->Qhi:Lcom/bytedance/sdk/openadsdk/core/model/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->qMt(Lcom/bytedance/sdk/openadsdk/core/model/HzH;)Lcom/bytedance/sdk/openadsdk/cJ/zc;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ(I)V

    :cond_0
    return-void
.end method
