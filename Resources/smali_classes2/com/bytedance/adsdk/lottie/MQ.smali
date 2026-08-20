.class public Lcom/bytedance/adsdk/lottie/MQ;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cJ:Z


# virtual methods
.method public Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/lottie/MQ;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/MQ;->cJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/MQ;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/MQ;->Qhi:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 103
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/lottie/MQ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/MQ;->cJ:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/MQ;->Qhi:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method
