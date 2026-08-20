.class public Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;
.super Ljava/lang/Object;
.source "OperatorNode.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;


# instance fields
.field private final Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    return-object v0
.end method

.method public Qhi(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
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

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/HzH;->cJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
