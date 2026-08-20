.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$2;
.super Ljava/lang/Object;
.source "ExpressInitHelper.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;->Qhi(Landroid/os/MessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$2;->Qhi:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zjb()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 133
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;-><init>()V

    .line 134
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;->Qhi(Z)V

    .line 135
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;->cJ()V

    .line 137
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ots()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;-><init>()V

    const/4 v2, 0x1

    .line 139
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;->Qhi(Z)V

    .line 140
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/cJ;->cJ()V

    :cond_1
    return v1
.end method
