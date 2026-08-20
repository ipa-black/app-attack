.class public Lcom/bytedance/adsdk/ugeno/core/zc;
.super Ljava/lang/Object;
.source "UGenEvent.java"


# instance fields
.field private CJ:Lcom/bytedance/adsdk/ugeno/core/zc;

.field private Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private ac:Lorg/json/JSONObject;

.field private cJ:I

.field private fl:Lcom/bytedance/adsdk/ugeno/core/zc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/ugeno/core/zc;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ:Lcom/bytedance/adsdk/ugeno/core/zc;

    return-object v0
.end method

.method public Qhi()Lcom/bytedance/adsdk/ugeno/component/cJ;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ:I

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->CJ:Lcom/bytedance/adsdk/ugeno/core/zc;

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->ac:Lorg/json/JSONObject;

    return-void
.end method

.method public ac()Lorg/json/JSONObject;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->ac:Lorg/json/JSONObject;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ:I

    return v0
.end method

.method public cJ(Lcom/bytedance/adsdk/ugeno/core/zc;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->fl:Lcom/bytedance/adsdk/ugeno/core/zc;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UGenEvent{mWidget="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->Qhi:Lcom/bytedance/adsdk/ugeno/component/cJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->cJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/zc;->ac:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
