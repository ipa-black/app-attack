.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ/tP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    .line 21
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    .line 22
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    .line 19
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;
    .locals 1

    .line 19
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;
    .locals 1

    .line 19
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;

    return-object v0
.end method


# virtual methods
.method public Qhi()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 25
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$1;->Qhi:[I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$Qhi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 32
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 27
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method
