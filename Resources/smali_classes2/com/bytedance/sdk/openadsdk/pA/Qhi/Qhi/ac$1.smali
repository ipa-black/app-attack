.class Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;
.super Lcom/bytedance/sdk/component/Sf/hm;
.source "GPDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;->Tgh()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;Ljava/lang/String;Z)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;->Qhi:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Sf/hm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/ac$1;->Qhi:Z

    const-string v1, "oem_store"

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_0
    const-string v0, "-2"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
