.class Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$1;
.super Ljava/lang/Object;
.source "MSSdkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->ac()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v1, "check_clz"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->bM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setCustomInfo(Ljava/util/Map;)V

    .line 164
    const-string v1, "custom info is: "

    filled-new-array {v1, v0}, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MSSdkImpl"

    const-string v2, "setCustomInfo"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->cJ(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
