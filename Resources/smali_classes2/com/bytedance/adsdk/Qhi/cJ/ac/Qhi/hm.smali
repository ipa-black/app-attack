.class public Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/hm;
.super Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;
.source "OperatorParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;",
            ">;",
            "Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;",
            ")I"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/hm;->Qhi(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/Qhi/cJ/fl/Qhi;->CJ(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;->Qhi(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1

    .line 19
    :cond_0
    new-instance p4, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/hm;->Qhi(ILjava/lang/String;)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/hm;->Qhi(ILjava/lang/String;)C

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [C

    const/4 v5, 0x0

    aput-char v0, v4, v5

    const/4 v0, 0x1

    aput-char v2, v4, v0

    invoke-direct {p4, v4}, Ljava/lang/String;-><init>([C)V

    .line 20
    invoke-static {p4}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    new-instance p1, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;

    invoke-static {p4}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;-><init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/2addr p2, v3

    return p2

    .line 25
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/hm;->Qhi(ILjava/lang/String;)C

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p4

    .line 26
    invoke-static {p4}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 27
    new-instance p1, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;

    invoke-static {p4}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;-><init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return v1

    .line 31
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "examine:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
