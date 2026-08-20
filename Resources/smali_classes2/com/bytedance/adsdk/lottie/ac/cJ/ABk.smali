.class public Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/ABk;

.field private final Qhi:Ljava/lang/String;

.field private final ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

.field private final fl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;Lcom/bytedance/adsdk/lottie/ac/Qhi/ABk;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->Qhi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 24
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    .line 25
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/ABk;

    .line 26
    iput-boolean p5, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->fl:Z

    return-void
.end method


# virtual methods
.method public CJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/ABk;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->CJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/ABk;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 50
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/HzH;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/HzH;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->ac:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/cJ;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/ABk;->fl:Z

    return v0
.end method
