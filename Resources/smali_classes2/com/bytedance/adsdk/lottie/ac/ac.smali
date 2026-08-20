.class public Lcom/bytedance/adsdk/lottie/ac/ac;
.super Ljava/lang/Object;
.source "Font.java"


# instance fields
.field private final CJ:F

.field private final Qhi:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final cJ:Ljava/lang/String;

.field private fl:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->Qhi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->cJ:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->ac:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->CJ:F

    return-void
.end method


# virtual methods
.method public CJ()Landroid/graphics/Typeface;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->fl:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Landroid/graphics/Typeface;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->fl:Landroid/graphics/Typeface;

    return-void
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac;->cJ:Ljava/lang/String;

    return-object v0
.end method
