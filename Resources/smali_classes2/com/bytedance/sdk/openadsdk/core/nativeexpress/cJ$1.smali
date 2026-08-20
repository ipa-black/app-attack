.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;
.super Ljava/lang/Object;
.source "BrandBannerController.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$Qhi;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    .line 116
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;)V

    return-void
.end method
