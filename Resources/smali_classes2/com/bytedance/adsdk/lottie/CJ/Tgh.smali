.class public final enum Lcom/bytedance/adsdk/lottie/CJ/Tgh;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/lottie/CJ/Tgh;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/adsdk/lottie/CJ/Tgh;

.field public static final enum Qhi:Lcom/bytedance/adsdk/lottie/CJ/Tgh;

.field public static final enum cJ:Lcom/bytedance/adsdk/lottie/CJ/Tgh;


# instance fields
.field public final ac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    const/4 v1, 0x0

    const-string v2, ".json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/adsdk/lottie/CJ/Tgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->Qhi:Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    .line 11
    new-instance v1, Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    const/4 v2, 0x1

    const-string v3, ".zip"

    const-string v4, "ZIP"

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/adsdk/lottie/CJ/Tgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->cJ:Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    .line 8
    filled-new-array {v0, v1}, [Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->CJ:[Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->ac:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/lottie/CJ/Tgh;
    .locals 1

    .line 8
    const-class v0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/lottie/CJ/Tgh;
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->CJ:[Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/lottie/CJ/Tgh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/lottie/CJ/Tgh;

    return-object v0
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".temp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/CJ/Tgh;->ac:Ljava/lang/String;

    return-object v0
.end method
