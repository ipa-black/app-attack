.class public Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "ActServiceConnection.java"


# instance fields
.field private mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/cJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/cJ;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/act/cJ;->Qhi(Landroidx/browser/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;->mConnectionCallback:Lcom/bytedance/sdk/openadsdk/core/act/cJ;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/act/cJ;->Qhi()V

    :cond_0
    return-void
.end method
