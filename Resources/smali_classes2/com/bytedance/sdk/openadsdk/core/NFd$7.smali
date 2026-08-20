.class Lcom/bytedance/sdk/openadsdk/core/NFd$7;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd;->initRenderFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$7;->Qhi:Lcom/bytedance/sdk/openadsdk/core/NFd;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;->Qhi()V

    :cond_0
    return-void
.end method
