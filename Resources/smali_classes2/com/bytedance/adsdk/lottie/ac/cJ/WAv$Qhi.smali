.class public final enum Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

.field private static final synthetic Tgh:[Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

.field public static final enum ac:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

.field public static final enum fl:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 17
    new-instance v1, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 18
    new-instance v2, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    const-string v3, "SUBTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 19
    new-instance v3, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    const-string v4, "INTERSECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 20
    new-instance v4, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    const-string v5, "EXCLUDE_INTERSECTIONS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->fl:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 15
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->Tgh:[Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static Qhi(I)Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 35
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0

    .line 33
    :cond_0
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->fl:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->CJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0

    .line 29
    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->ac:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0

    .line 25
    :cond_4
    sget-object p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->Qhi:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
    .locals 1

    .line 15
    const-class v0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
    .locals 1

    .line 15
    sget-object v0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->Tgh:[Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object v0
.end method
