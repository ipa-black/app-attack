.class public Lcom/bytedance/adsdk/lottie/WAv;
.super Ljava/lang/Object;
.source "LottieImageAsset.java"


# instance fields
.field private final CJ:Ljava/lang/String;

.field private final Qhi:I

.field private Tgh:Landroid/graphics/Bitmap;

.field private final ac:Ljava/lang/String;

.field private final cJ:I

.field private final fl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/bytedance/adsdk/lottie/WAv;->Qhi:I

    .line 25
    iput p2, p0, Lcom/bytedance/adsdk/lottie/WAv;->cJ:I

    .line 26
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/WAv;->ac:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/bytedance/adsdk/lottie/WAv;->CJ:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/bytedance/adsdk/lottie/WAv;->fl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->Qhi:I

    return v0
.end method

.method public Qhi(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/WAv;->Tgh:Landroid/graphics/Bitmap;

    return-void
.end method

.method public Tgh()Landroid/graphics/Bitmap;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->Tgh:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->cJ:I

    return v0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/WAv;->fl:Ljava/lang/String;

    return-object v0
.end method
