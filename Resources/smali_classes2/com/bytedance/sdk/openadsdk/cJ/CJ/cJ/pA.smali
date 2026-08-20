.class public Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;
.super Ljava/lang/Object;
.source "PlayErrorModel.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;


# instance fields
.field private final CJ:I

.field private Qhi:J

.field private final ac:I

.field private cJ:J

.field private final fl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->Qhi()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->ac:I

    .line 25
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->cJ()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->CJ:I

    .line 26
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/Qhi;->ac()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->fl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->Qhi:J

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    const-string v0, "buffers_time"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->Qhi:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v0, "total_duration"

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->cJ:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v0, "error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->ac:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v0, "extra_error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->CJ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v0, "error_message"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->fl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 50
    const-string v0, "PlayErrorModel"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cJ(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/pA;->cJ:J

    return-void
.end method
