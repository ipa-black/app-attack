.class Lcom/bytedance/sdk/openadsdk/component/ROR$3;
.super Ljava/lang/Object;
.source "TTAppOpenAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->czB()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 216
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v0

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 217
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;)V

    .line 219
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/fl/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/CJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ILcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 224
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    return-void

    .line 226
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->ac:Lcom/bytedance/sdk/openadsdk/component/ROR;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ROR$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/CQU;

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ROR;->cJ(Lcom/bytedance/sdk/openadsdk/component/ROR;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/CQU;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, -0x3

    .line 209
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 210
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method
