.class Lcom/bytedance/adsdk/cJ/Qhi$1$1;
.super Ljava/lang/Object;
.source "LottieAnimationWidget.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Qhi$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/cJ/Qhi$1;->Qhi(Lcom/bytedance/adsdk/lottie/WAv;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/lottie/WAv;

.field final synthetic ac:Lcom/bytedance/adsdk/cJ/Qhi$1;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/cJ/Qhi$1;Lcom/bytedance/adsdk/lottie/WAv;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->ac:Lcom/bytedance/adsdk/cJ/Qhi$1;

    iput-object p2, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->Qhi:Lcom/bytedance/adsdk/lottie/WAv;

    iput-object p3, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->cJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->Qhi:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/lottie/WAv;->Qhi()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->Qhi:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/WAv;->cJ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->ac:Lcom/bytedance/adsdk/cJ/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/adsdk/cJ/Qhi$1;->Qhi:Lcom/bytedance/adsdk/cJ/Qhi;

    invoke-static {v0}, Lcom/bytedance/adsdk/cJ/Qhi;->fl(Lcom/bytedance/adsdk/cJ/Qhi;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->ac:Lcom/bytedance/adsdk/cJ/Qhi$1;

    iget-object v0, v0, Lcom/bytedance/adsdk/cJ/Qhi$1;->Qhi:Lcom/bytedance/adsdk/cJ/Qhi;

    invoke-static {v0}, Lcom/bytedance/adsdk/cJ/Qhi;->ROR(Lcom/bytedance/adsdk/cJ/Qhi;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/bytedance/adsdk/cJ/Qhi$1$1;->Qhi:Lcom/bytedance/adsdk/lottie/WAv;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/lottie/WAv;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/adsdk/lottie/LottieAnimationView;->Qhi(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
