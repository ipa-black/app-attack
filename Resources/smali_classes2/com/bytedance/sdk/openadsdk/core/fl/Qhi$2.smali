.class Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "MSSdkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->cJ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;->Qhi:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;->cJ:Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/fl/Qhi;)Lcom/pgl/ssdk/ces/out/PglSSManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/fl/Qhi$2;->Qhi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pgl/ssdk/ces/out/PglSSManager;->setDeviceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
