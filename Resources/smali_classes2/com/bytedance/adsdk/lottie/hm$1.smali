.class Lcom/bytedance/adsdk/lottie/hm$1;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/lottie/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/lottie/hm;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/hm$1;->Qhi:Lcom/bytedance/adsdk/lottie/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/hm$1;->Qhi:Lcom/bytedance/adsdk/lottie/hm;

    invoke-static {p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/hm;)Lcom/bytedance/adsdk/lottie/ac/ac/cJ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/bytedance/adsdk/lottie/hm$1;->Qhi:Lcom/bytedance/adsdk/lottie/hm;

    invoke-static {p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi(Lcom/bytedance/adsdk/lottie/hm;)Lcom/bytedance/adsdk/lottie/ac/ac/cJ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/hm$1;->Qhi:Lcom/bytedance/adsdk/lottie/hm;

    invoke-static {v0}, Lcom/bytedance/adsdk/lottie/hm;->cJ(Lcom/bytedance/adsdk/lottie/hm;)Lcom/bytedance/adsdk/lottie/Tgh/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/Tgh/ac;->Tgh()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/lottie/ac/ac/cJ;->Qhi(F)V

    :cond_0
    return-void
.end method
