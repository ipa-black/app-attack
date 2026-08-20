.class final Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;
.super Ljava/lang/Object;
.source "ActHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/act/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;->Qhi:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;)Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-void
.end method

.method public Qhi(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/Qhi$1;Landroidx/browser/customtabs/CustomTabsClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
