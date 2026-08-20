.class Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;
.super Ljava/lang/Object;
.source "PangleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/pangle/PangleAdapter;->onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/pangle/PangleAdapter;

.field final synthetic val$callback:Lio/bidmachine/NetworkInitializationCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ttAdConfig:Lcom/bytedance/sdk/openadsdk/TTAdConfig;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/pangle/PangleAdapter;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->this$0:Lio/bidmachine/ads/networks/pangle/PangleAdapter;

    iput-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$ttAdConfig:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    iput-object p4, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$callback:Lio/bidmachine/NetworkInitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;->val$ttAdConfig:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    new-instance v2, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;

    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1$1;-><init>(Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;)V

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lio/bidmachine/core/AdapterLogger;->logThrowable(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
