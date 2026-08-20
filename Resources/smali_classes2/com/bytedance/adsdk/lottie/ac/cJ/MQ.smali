.class public Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;
    }
.end annotation


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final Qhi:Ljava/lang/String;

.field private final Tgh:Z

.field private final ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

.field private final fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Qhi:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

    .line 39
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 40
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 41
    iput-object p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 42
    iput-boolean p6, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Tgh:Z

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 70
    new-instance p1, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;

    invoke-direct {p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;-><init>(Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;)V

    return-object p1
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Tgh()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Tgh:Z

    return v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

    return-object v0
.end method

.method public fl()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim Path: {start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->fl:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
