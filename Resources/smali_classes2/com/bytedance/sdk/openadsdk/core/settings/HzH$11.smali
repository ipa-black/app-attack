.class Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;
.super Landroid/content/BroadcastReceiver;
.source "TTSdkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/HzH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

.field private final cJ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH;)V
    .locals 0

    .line 1700
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/HzH;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1701
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;->cJ:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;)Ljava/lang/Runnable;
    .locals 0

    .line 1700
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;->cJ:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1724
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$2;

    const-string v0, "setting_receiver"

    invoke-direct {p1, p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/HzH$11;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method
