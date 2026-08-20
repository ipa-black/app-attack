.class public Lcom/bytedance/adsdk/lottie/ac/Tgh;
.super Ljava/lang/Object;
.source "LottieCompositionCache.java"


# static fields
.field private static final Qhi:Lcom/bytedance/adsdk/lottie/ac/Tgh;


# instance fields
.field private final cJ:Lcom/bytedance/adsdk/lottie/iMK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/lottie/iMK<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/Tgh;

    invoke-direct {v0}, Lcom/bytedance/adsdk/lottie/ac/Tgh;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ac/Tgh;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/bytedance/adsdk/lottie/iMK;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/lottie/iMK;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Tgh;->cJ:Lcom/bytedance/adsdk/lottie/iMK;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/adsdk/lottie/ac/Tgh;
    .locals 1

    .line 16
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/ac/Tgh;

    return-object v0
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ROR;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Tgh;->cJ:Lcom/bytedance/adsdk/lottie/iMK;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/lottie/iMK;->Qhi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/lottie/ROR;

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ROR;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/Tgh;->cJ:Lcom/bytedance/adsdk/lottie/iMK;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/lottie/iMK;->Qhi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
