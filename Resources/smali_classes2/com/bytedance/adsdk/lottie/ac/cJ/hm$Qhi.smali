.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

.field private static final synthetic fl:[Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    .line 9
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    const-string v2, "MASK_MODE_SUBTRACT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    .line 10
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    const-string v3, "MASK_MODE_INTERSECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    .line 11
    new-instance v3, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    const-string v4, "MASK_MODE_NONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    .line 7
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->fl:[Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;
    .locals 1

    .line 7
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;
    .locals 1

    .line 7
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->fl:[Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/hm$Qhi;

    return-object v0
.end method
