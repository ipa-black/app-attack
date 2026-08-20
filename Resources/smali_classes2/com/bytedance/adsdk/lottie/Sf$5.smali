.class final Lcom/bytedance/adsdk/lottie/Sf$5;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/bytedance/adsdk/lottie/zc<",
        "Lcom/bytedance/adsdk/lottie/ROR;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic CJ:Ljava/lang/String;

.field final synthetic Qhi:Ljava/lang/ref/WeakReference;

.field final synthetic ac:I

.field final synthetic cJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->Qhi:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->cJ:Landroid/content/Context;

    iput p3, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->ac:I

    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->CJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/lottie/zc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/lottie/zc<",
            "Lcom/bytedance/adsdk/lottie/ROR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->Qhi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->cJ:Landroid/content/Context;

    .line 264
    :goto_0
    iget v1, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->ac:I

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/Sf$5;->CJ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/Sf;->cJ(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/lottie/zc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Sf$5;->Qhi()Lcom/bytedance/adsdk/lottie/zc;

    move-result-object v0

    return-object v0
.end method
