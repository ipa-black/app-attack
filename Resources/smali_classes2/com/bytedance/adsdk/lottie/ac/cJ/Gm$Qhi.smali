.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;
.super Ljava/lang/Enum;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ/Gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;


# instance fields
.field private final ac:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    .line 16
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    const-string v2, "POLYGON"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    .line 14
    filled-new-array {v0, v1}, [Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->ac:I

    return-void
.end method

.method public static Qhi(I)Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;
    .locals 5

    .line 25
    invoke-static {}, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->values()[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->ac:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;
    .locals 1

    .line 14
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;
    .locals 1

    .line 14
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/Gm$Qhi;

    return-object v0
.end method
