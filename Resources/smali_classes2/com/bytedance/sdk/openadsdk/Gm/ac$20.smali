.class Lcom/bytedance/sdk/openadsdk/Gm/ac$20;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/Gm/ac;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Gm/ac;Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$20;->cJ:Lcom/bytedance/sdk/openadsdk/Gm/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$20;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Gm/ac$20;->Qhi:Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    return-object v0
.end method
