.class public Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# instance fields
.field private final Qhi:Ljava/lang/String;

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;->Qhi:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 30
    new-instance p2, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/kYc;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/kYc;-><init>(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;)V

    return-object p2
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/iMK;->cJ:Lcom/bytedance/adsdk/lottie/ac/Qhi/iMK;

    return-object v0
.end method
