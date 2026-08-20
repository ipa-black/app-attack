.class public abstract Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;
.super Ljava/lang/Object;
.source "OperatorResultNode.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;


# instance fields
.field protected Qhi:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

.field protected ac:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

.field protected cJ:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;


# direct methods
.method protected constructor <init>(Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->ac:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/Qhi/cJ/CJ/Sf;
    .locals 1

    .line 28
    sget-object v0, Lcom/bytedance/adsdk/Qhi/cJ/CJ/hm;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/CJ/hm;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->ac:Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/Qhi/cJ/CJ/Tgh;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->cJ:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cJ(Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->cJ:Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi/kYc;->cJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
