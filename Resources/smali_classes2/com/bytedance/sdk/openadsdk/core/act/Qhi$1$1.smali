.class Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;
.super Ljava/lang/Object;
.source "ActHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;->Qhi(Landroidx/browser/customtabs/CustomTabsClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroidx/browser/customtabs/CustomTabsClient;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;->Qhi:Landroidx/browser/customtabs/CustomTabsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 105
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;)V

    .line 121
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;->Qhi:Landroidx/browser/customtabs/CustomTabsClient;

    invoke-virtual {v3, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/browser/customtabs/CustomTabsSession;->isEngagementSignalsApiAvailable(Landroid/os/Bundle;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 127
    :try_start_1
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->ac(I)I

    .line 128
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v5}, Landroidx/browser/customtabs/CustomTabsSession;->setEngagementSignalsCallback(Landroidx/browser/customtabs/EngagementSignalsCallback;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->CJ(I)I

    goto :goto_1

    .line 133
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->ac(I)I

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 137
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_3

    .line 139
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v1

    move v1, v0

    move v0, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v1

    move v1, v0

    .line 142
    :goto_2
    const-string v3, "CustomTabsHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    move v0, v1

    .line 144
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "  signalsCallback="

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "pagact before  "

    const-string v4, "   api_Available="

    filled-new-array {v3, v4, v1, v2, v0}, [Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->CJ()Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->fl()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 148
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;->Qhi:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_4
    return-void
.end method
