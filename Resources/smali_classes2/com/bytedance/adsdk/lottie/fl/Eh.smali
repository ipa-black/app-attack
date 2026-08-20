.class Lcom/bytedance/adsdk/lottie/fl/Eh;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method static Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 23
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result v3

    sget-object v4, Lcom/bytedance/adsdk/lottie/fl/aP;->Qhi:Lcom/bytedance/adsdk/lottie/fl/aP;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/bytedance/adsdk/lottie/fl/qMt;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;FLcom/bytedance/adsdk/lottie/fl/xyz;ZZ)Lcom/bytedance/adsdk/lottie/ROR/Qhi;

    move-result-object p0

    .line 25
    new-instance v0, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/WAv;-><init>(Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ROR/Qhi;)V

    return-object v0
.end method
