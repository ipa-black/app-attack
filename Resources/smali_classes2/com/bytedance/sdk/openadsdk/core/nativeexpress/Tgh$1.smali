.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Ljava/util/List;)Ljava/util/List;

    .line 134
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Ljava/util/List;)Ljava/util/List;

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->Qhi:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 136
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Lcom/bytedance/sdk/openadsdk/utils/Jma;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;ILjava/lang/String;)V

    .line 140
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 141
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method
