.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;
.super Ljava/lang/Enum;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    const-string v1, "LEFT_ALIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    .line 18
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    const-string v2, "RIGHT_ALIGN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    .line 19
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    const-string v3, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    .line 16
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;
    .locals 1

    .line 16
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;
    .locals 1

    .line 16
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ$Qhi;

    return-object v0
.end method
