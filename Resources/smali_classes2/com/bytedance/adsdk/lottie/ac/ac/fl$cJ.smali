.class public final enum Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/ac/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "cJ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field private static final synthetic ROR:[Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field public static final enum Tgh:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

.field public static final enum fl:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 33
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->cJ:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 34
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v3, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 35
    new-instance v3, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v4, "LUMA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->CJ:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 36
    new-instance v4, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v5, "LUMA_INVERTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->fl:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 37
    new-instance v5, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->Tgh:Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    .line 31
    filled-new-array/range {v0 .. v5}, [Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->ROR:[Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;
    .locals 1

    .line 31
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;
    .locals 1

    .line 31
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->ROR:[Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/ac/fl$cJ;

    return-object v0
.end method
