.class final enum Lcom/bytedance/adsdk/lottie/hm$cJ;
.super Ljava/lang/Enum;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "cJ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/hm$cJ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/hm$cJ;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/hm$cJ;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/hm$cJ;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/hm$cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Lcom/bytedance/adsdk/lottie/hm$cJ;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/hm$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/hm$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/hm$cJ;

    .line 75
    new-instance v1, Lcom/bytedance/adsdk/lottie/hm$cJ;

    const-string v2, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/hm$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/hm$cJ;->cJ:Lcom/bytedance/adsdk/lottie/hm$cJ;

    .line 76
    new-instance v2, Lcom/bytedance/adsdk/lottie/hm$cJ;

    const-string v3, "RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/hm$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/hm$cJ;->ac:Lcom/bytedance/adsdk/lottie/hm$cJ;

    .line 73
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/lottie/hm$cJ;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/hm$cJ;->CJ:[Lcom/bytedance/adsdk/lottie/hm$cJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/hm$cJ;
    .locals 1

    .line 73
    const-class v0, Lcom/bytedance/adsdk/lottie/hm$cJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/hm$cJ;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/hm$cJ;
    .locals 1

    .line 73
    sget-object v0, Lcom/bytedance/adsdk/lottie/hm$cJ;->CJ:[Lcom/bytedance/adsdk/lottie/hm$cJ;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/hm$cJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/hm$cJ;

    return-object v0
.end method
