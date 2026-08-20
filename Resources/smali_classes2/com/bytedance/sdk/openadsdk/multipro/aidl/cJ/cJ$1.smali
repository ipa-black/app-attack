.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;
.super Ljava/lang/Object;
.source "DislikeClosedListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->onItemClickClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;->Qhi()V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;->Qhi:Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
