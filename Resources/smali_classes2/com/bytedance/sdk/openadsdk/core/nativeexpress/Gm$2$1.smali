.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;
.super Ljava/lang/Object;
.source "ExpressInitHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;->CJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:[Landroid/os/MessageQueue;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;[Landroid/os/MessageQueue;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;->Qhi:[Landroid/os/MessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;->Qhi:[Landroid/os/MessageQueue;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;->cJ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2$1;->Qhi:[Landroid/os/MessageQueue;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;->Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm$2;Landroid/os/MessageQueue;)V

    return-void
.end method
