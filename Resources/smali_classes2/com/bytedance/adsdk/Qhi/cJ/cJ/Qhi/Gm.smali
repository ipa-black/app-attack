.class public Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;
.super Ljava/lang/Object;
.source "MethodNode.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;


# instance fields
.field private Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

.field private ac:Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;

.field private cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->cJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;
    .locals 1

    .line 45
    sget-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/fl;

    return-object v0
.end method

.method public Qhi(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
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

    .line 28
    new-instance v0, Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;

    invoke-direct {v0}, Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->ac:Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;

    .line 29
    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;->Qhi(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 32
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v2, p1}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->Qhi(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->ac:Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;->Qhi([Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->ac:Lcom/bytedance/adsdk/Qhi/cJ/Qhi/Qhi;

    return-object p1
.end method

.method public Qhi([Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/Gm;->Qhi:[Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 54
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
