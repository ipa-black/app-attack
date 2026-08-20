.class final Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Qhi"
.end annotation


# instance fields
.field private final Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/lottie/Qhi/Qhi/iMK;",
            ">;"
        }
    .end annotation
.end field

.field private final cJ:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;


# direct methods
.method private constructor <init>(Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;)V
    .locals 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;->Qhi:Ljava/util/List;

    .line 409
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;-><init>(Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;)Ljava/util/List;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;->Qhi:Ljava/util/List;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/Qhi$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/Qhi/Qhi/EBS;

    return-object p0
.end method
