.class Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;
.super Ljava/lang/Object;
.source "FullScreenVideoCache.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/fl;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:J

.field final synthetic Qhi:Z

.field final synthetic ROR:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

.field final synthetic Tgh:Ljava/lang/String;

.field final synthetic ac:J

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field final synthetic fl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/fl;ZLcom/bytedance/sdk/openadsdk/core/model/tP;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->ROR:Lcom/bytedance/sdk/openadsdk/component/reward/fl;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->ac:J

    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->CJ:J

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->fl:Ljava/lang/String;

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->Tgh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->Qhi:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->ac:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->CJ:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->fl:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(ZLcom/bytedance/sdk/openadsdk/core/model/tP;JJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 318
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ()Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/fl$3;->Tgh:Ljava/lang/String;

    .line 319
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v1

    .line 320
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Gm/Qhi/fl;

    move-result-object v0

    return-object v0
.end method
