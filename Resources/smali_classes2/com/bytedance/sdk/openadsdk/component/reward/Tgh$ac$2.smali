.class Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$2;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/fl$Qhi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 540
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->cJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac$2;->Qhi:Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Tgh$ac;->ac:Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Qhi;)V

    :cond_0
    return-void
.end method
