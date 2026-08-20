.class public final enum Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;
.super Ljava/lang/Enum;
.source "VastMacro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

.field public static final enum Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

.field public static final enum ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

.field public static final enum cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

.field private static final synthetic fl:[Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    const-string v1, "ERRORCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    .line 21
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    const-string v2, "CONTENTPLAYHEAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    .line 26
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    const-string v3, "CACHEBUSTING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    .line 31
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    const-string v4, "ASSETURI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    .line 10
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->fl:[Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;
    .locals 1

    .line 10
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->fl:[Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/ROR/ac/cJ;

    return-object v0
.end method
