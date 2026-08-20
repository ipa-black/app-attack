.class Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/Tgh$Qhi;


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

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 0

    return-void
.end method

.method public Qhi(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;->Qhi(ILjava/lang/String;)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/CQU$Qhi;->Qhi()V

    :cond_1
    return-void
.end method

.method public ac()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi()V

    return-void
.end method

.method public cJ()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi()V

    return-void
.end method
