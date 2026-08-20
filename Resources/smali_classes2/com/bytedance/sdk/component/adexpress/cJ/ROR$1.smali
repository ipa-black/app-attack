.class Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;
.super Ljava/lang/Object;
.source "NativeRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Sf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/cJ/ROR;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 40
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->cJ:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/ROR;)Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/ROR$1;->Qhi:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    return-void
.end method
