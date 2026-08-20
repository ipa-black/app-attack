.class Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;)V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;)Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    return-void
.end method
