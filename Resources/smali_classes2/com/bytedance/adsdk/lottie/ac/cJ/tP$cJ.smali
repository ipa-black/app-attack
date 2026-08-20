.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ/tP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "cJ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    .line 39
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    .line 40
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    const-string v3, "BEVEL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    .line 37
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;
    .locals 1

    .line 37
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;
    .locals 1

    .line 37
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->CJ:[Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;

    return-object v0
.end method


# virtual methods
.method public Qhi()Landroid/graphics/Paint$Join;
    .locals 2

    .line 43
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$1;->cJ:[I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/lottie/ac/cJ/tP$cJ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 47
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    .line 45
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0
.end method
