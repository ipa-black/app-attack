.class Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;
.super Ljava/lang/Object;
.source "UGenRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)V

    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/hpZ;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/hpZ;-><init>()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi(I)V

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;->NFd()Lcom/bytedance/adsdk/ugeno/core/HzH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/HzH;->Qhi(Lcom/bytedance/adsdk/ugeno/core/hpZ;)V

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->WAv()V

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;->ac(Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    return-void
.end method
