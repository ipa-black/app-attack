.class public Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
.implements Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

.field private final Qhi:Ljava/lang/String;

.field private final ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Tgh:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Z

.field private final fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ac:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Qhi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->Qhi:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->Tgh()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->cJ:Z

    .line 23
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->cJ()Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

    .line 24
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 25
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->Tgh:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/cJ/MQ;->fl()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;->Qhi()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    .line 28
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    .line 29
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V

    .line 33
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;->Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->Tgh:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    return-object v0
.end method

.method public Qhi()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ac:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;

    invoke-interface {v1}, Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;->Qhi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method Qhi(Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi$Qhi;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ac:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public Tgh()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->cJ:Z

    return v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->fl:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    return-object v0
.end method

.method cJ()Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/MQ$Qhi;

    return-object v0
.end method

.method public fl()Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;->ROR:Lcom/bytedance/adsdk/lottie/Qhi/cJ/Qhi;

    return-object v0
.end method
