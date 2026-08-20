.class final enum Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

.field public static final enum Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

.field private static final synthetic Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

.field public static final enum ac:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

.field public static final enum cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

.field public static final enum fl:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 398
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    .line 399
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    const-string v2, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    .line 400
    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    const-string v3, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    .line 401
    new-instance v3, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    const-string v4, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->CJ:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    .line 402
    new-instance v4, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    const-string v5, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->fl:Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    .line 397
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;
    .locals 1

    .line 397
    const-class v0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;
    .locals 1

    .line 397
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/cJ/Qhi/Sf$Qhi$Qhi;

    return-object v0
.end method
