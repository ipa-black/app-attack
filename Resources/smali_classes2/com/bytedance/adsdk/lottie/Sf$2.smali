.class final Lcom/bytedance/adsdk/lottie/Sf$2;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/Gm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/bytedance/adsdk/lottie/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/lottie/Gm<",
        "Lcom/bytedance/adsdk/lottie/ROR;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Sf$2;->Qhi:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Sf$2;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/lottie/ROR;)V
    .locals 1

    .line 653
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Sf$2;->Qhi:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/Sf$2;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 655
    invoke-static {}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 656
    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic Qhi(Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, Lcom/bytedance/adsdk/lottie/ROR;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/lottie/Sf$2;->Qhi(Lcom/bytedance/adsdk/lottie/ROR;)V

    return-void
.end method
