.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;
.super Ljava/lang/Object;
.source "FeedBreakModel.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;


# instance fields
.field public CJ:I

.field public Qhi:J

.field public ac:I

.field public cJ:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->CJ:I

    return-void
.end method


# virtual methods
.method public Qhi(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->ac:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->Qhi:J

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    :try_start_0
    const-string v0, "total_duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->Qhi:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string v0, "buffers_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->cJ:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string v0, "break_reason"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->ac:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v0, "video_backup"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->CJ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    const-string v0, "FeedBreakModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cJ(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->CJ:I

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/fl;->cJ:J

    return-void
.end method
