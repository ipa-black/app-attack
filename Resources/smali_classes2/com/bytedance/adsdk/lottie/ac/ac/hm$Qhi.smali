.class Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;
.super Ljava/lang/Object;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/ac/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field private Qhi:Ljava/lang/String;

.field private cJ:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->Qhi:Ljava/lang/String;

    const/4 v0, 0x0

    .line 612
    iput v0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->cJ:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/lottie/ac/ac/hm$1;)V
    .locals 0

    .line 610
    invoke-direct {p0}, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;-><init>()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;)F
    .locals 0

    .line 610
    iget p0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->cJ:F

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;)Ljava/lang/String;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->Qhi:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method Qhi(Ljava/lang/String;F)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->Qhi:Ljava/lang/String;

    .line 616
    iput p2, p0, Lcom/bytedance/adsdk/lottie/ac/ac/hm$Qhi;->cJ:F

    return-void
.end method
