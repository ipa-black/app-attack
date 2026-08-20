.class Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;
.super Ljava/lang/Object;
.source "DynamicRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)Z

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Qhi(IILjava/lang/String;Z)V

    .line 79
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)V

    return-void

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->fl(I)V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Tgh(I)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->WAv()V

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->ac(Lcom/bytedance/sdk/component/adexpress/cJ/cJ;)Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    return-void
.end method
