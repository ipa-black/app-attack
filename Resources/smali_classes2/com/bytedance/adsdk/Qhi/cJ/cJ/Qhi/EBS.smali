.class public Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/EBS;
.super Ljava/lang/Object;
.source "SymbolNode.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;


# instance fields
.field private Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/EBS;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/EBS;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;

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

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/EBS;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/ROR;->Qhi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/EBS;->cJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
