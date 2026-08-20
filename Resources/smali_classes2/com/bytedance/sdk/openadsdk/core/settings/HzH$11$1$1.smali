.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "TTSdkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;Ljava/lang/String;)V
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1708
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->cJ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
