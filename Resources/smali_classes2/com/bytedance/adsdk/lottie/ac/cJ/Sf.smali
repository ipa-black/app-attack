.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;
.super Ljava/lang/Enum;
.source "GradientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

.field private static final synthetic ac:[Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    .line 5
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    const-string v2, "RADIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    .line 3
    filled-new-array {v0, v1}, [Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;->ac:[Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;
    .locals 1

    .line 3
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;->ac:[Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/Sf;

    return-object v0
.end method
