.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/utils/Jma;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/Jma;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;Lcom/bytedance/sdk/openadsdk/utils/Jma;)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;->Qhi(Ljava/util/List;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$Qhi;->Qhi()V

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;->CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Tgh;)V

    return-void
.end method
