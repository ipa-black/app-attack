.class public Lcom/bytedance/adsdk/lottie/fl/fl;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method static CJ(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/Sf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/Sf;

    sget-object v1, Lcom/bytedance/adsdk/lottie/fl/js;->Qhi:Lcom/bytedance/adsdk/lottie/fl/js;

    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/Sf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;I)Lcom/bytedance/adsdk/lottie/ac/Qhi/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/ac;

    new-instance v1, Lcom/bytedance/adsdk/lottie/fl/hpZ;

    invoke-direct {v1, p2}, Lcom/bytedance/adsdk/lottie/fl/hpZ;-><init>(I)V

    .line 70
    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/ac;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Z)Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object p0

    return-object p0
.end method

.method public static Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Z)Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    if-eqz p2, :cond_0

    .line 33
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/bytedance/adsdk/lottie/fl/ABk;->Qhi:Lcom/bytedance/adsdk/lottie/fl/ABk;

    invoke-static {p0, p2, p1, v1}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;FLcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static Qhi(Landroid/util/JsonReader;FLcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            "Lcom/bytedance/adsdk/lottie/fl/xyz<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p2, p1, p3, v0}, Lcom/bytedance/adsdk/lottie/fl/EBS;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;FLcom/bytedance/adsdk/lottie/fl/xyz;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            "Lcom/bytedance/adsdk/lottie/fl/xyz<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/ROR/Qhi<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, p1, v0, p2, v1}, Lcom/bytedance/adsdk/lottie/fl/EBS;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;FLcom/bytedance/adsdk/lottie/fl/xyz;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static ROR(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;

    sget-object v1, Lcom/bytedance/adsdk/lottie/fl/Sf;->Qhi:Lcom/bytedance/adsdk/lottie/fl/Sf;

    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/Qhi;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static Tgh(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;

    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result v1

    sget-object v2, Lcom/bytedance/adsdk/lottie/fl/WAv;->Qhi:Lcom/bytedance/adsdk/lottie/fl/WAv;

    invoke-static {p0, v1, p1, v2}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;FLcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/Gm;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static ac(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;

    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result v1

    sget-object v2, Lcom/bytedance/adsdk/lottie/fl/NFd;->Qhi:Lcom/bytedance/adsdk/lottie/fl/NFd;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/bytedance/adsdk/lottie/fl/EBS;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;FLcom/bytedance/adsdk/lottie/fl/xyz;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/ROR;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static cJ(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;

    sget-object v1, Lcom/bytedance/adsdk/lottie/fl/tP;->Qhi:Lcom/bytedance/adsdk/lottie/fl/tP;

    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/fl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static fl(Landroid/util/JsonReader;Lcom/bytedance/adsdk/lottie/ROR;)Lcom/bytedance/adsdk/lottie/ac/Qhi/hm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Qhi/hm;

    .line 54
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Tgh/ROR;->Qhi()F

    move-result v1

    sget-object v2, Lcom/bytedance/adsdk/lottie/fl/zn;->Qhi:Lcom/bytedance/adsdk/lottie/fl/zn;

    invoke-static {p0, v1, p1, v2}, Lcom/bytedance/adsdk/lottie/fl/fl;->Qhi(Landroid/util/JsonReader;FLcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/fl/xyz;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/hm;-><init>(Ljava/util/List;)V

    return-object v0
.end method
