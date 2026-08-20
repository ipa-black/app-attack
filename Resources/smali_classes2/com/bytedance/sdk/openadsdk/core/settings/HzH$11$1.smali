.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1704
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1$1;

    const-string v1, "LoadLocalData"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method
