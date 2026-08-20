.class public Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;
.super Ljava/lang/Object;
.source "PAGAdViewInfo.java"


# instance fields
.field private final Qhi:I

.field private final ac:F

.field private final cJ:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->Qhi:I

    .line 16
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->cJ:I

    .line 17
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->ac:F

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    const-string v1, "width"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->Qhi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    const-string v1, "height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->cJ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Qhi;->ac:F

    float-to-double v1, p0

    const-string p0, "alpha"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method
