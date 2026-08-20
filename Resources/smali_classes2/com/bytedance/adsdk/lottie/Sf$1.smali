.class final Lcom/bytedance/adsdk/lottie/Sf$1;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/lottie/Sf;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ABk;
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
.field final synthetic Qhi:Landroid/content/Context;

.field final synthetic ac:Ljava/lang/String;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->Qhi:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->cJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->ac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/adsdk/lottie/zc;
    .locals 4
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

    .line 127
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->Qhi:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/Tgh;->Qhi(Landroid/content/Context;)Lcom/bytedance/adsdk/lottie/CJ/Gm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->Qhi:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->cJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/lottie/CJ/Gm;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/zc;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->ac:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/zc;->Qhi()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/bytedance/adsdk/lottie/ac/Tgh;->Qhi()Lcom/bytedance/adsdk/lottie/ac/Tgh;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/lottie/Sf$1;->ac:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/zc;->Qhi()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/lottie/ROR;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/Tgh;->Qhi(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ROR;)V

    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/Sf$1;->Qhi()Lcom/bytedance/adsdk/lottie/zc;

    move-result-object v0

    return-object v0
.end method
