.class public Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/cJ;
.super Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;
.source "DoubleAmpNode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    sget-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->ac:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;-><init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;)V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/cJ;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->Qhi(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/adsdk/Qhi/cJ/fl/cJ;->Qhi(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/cJ;->cJ:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->Qhi(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/adsdk/Qhi/cJ/fl/cJ;->Qhi(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/cJ;->cJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
