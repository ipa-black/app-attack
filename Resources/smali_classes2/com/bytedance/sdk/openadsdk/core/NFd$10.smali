.class Lcom/bytedance/sdk/openadsdk/core/NFd$10;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tP$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ILjava/lang/String;)V
    .locals 1

    .line 1529
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/WAv/ac;->Qhi(ZLjava/util/List;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 2

    .line 1534
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1535
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p2, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->cJ:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->et()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1539
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/WAv/ac;->Qhi(ZLjava/util/List;)V

    return-void

    .line 1541
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$10;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/WAv/ac;->Qhi(ZLjava/util/List;)V

    const/4 p1, -0x3

    .line 1543
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(I)V

    .line 1544
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    return-void
.end method
