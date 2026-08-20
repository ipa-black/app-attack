.class Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/ac$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Z)V

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/dislike/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/dislike/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/dislike/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/ac;->dismiss()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->ac(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V

    return-void
.end method

.method public Qhi(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 3

    .line 106
    const-string v0, "TTAdDislikeImpl"

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;->Qhi(ILjava/lang/String;)V

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDislikeSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 113
    const-string p2, "dislike callback selected error: "

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ac()V
    .locals 2

    .line 143
    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeOptionBack: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cJ()V
    .locals 3

    .line 131
    const-string v0, "onDislikeDismiss: "

    const-string v1, "TTAdDislikeImpl"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$2;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 137
    const-string v2, "dislike callback cancel error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
