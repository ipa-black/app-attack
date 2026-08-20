.class Lcom/bytedance/sdk/openadsdk/activity/Qhi$1;
.super Ljava/lang/Object;
.source "AdScene.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/ac/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Qhi;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/activity/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Qhi;->bxS()Lcom/bytedance/sdk/openadsdk/activity/cJ;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/cJ;->Qhi(I)V

    return-void
.end method
