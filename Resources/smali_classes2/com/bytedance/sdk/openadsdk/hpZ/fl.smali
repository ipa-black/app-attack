.class public final enum Lcom/bytedance/sdk/openadsdk/hpZ/fl;
.super Ljava/lang/Enum;
.source "NetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/hpZ/fl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum ROR:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum Tgh:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum ac:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum cJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field public static final enum fl:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

.field private static final synthetic hm:[Lcom/bytedance/sdk/openadsdk/hpZ/fl;


# instance fields
.field private Sf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v1, 0x0

    const-string v2, "2g"

    const-string v3, "TYPE_2G"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v2, 0x1

    const-string v3, "3g"

    const-string v4, "TYPE_3G"

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->cJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 6
    new-instance v2, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v3, 0x2

    const-string v4, "4g"

    const-string v5, "TYPE_4G"

    invoke-direct {v2, v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->ac:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 7
    new-instance v3, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v4, 0x3

    const-string v5, "5g"

    const-string v6, "TYPE_5G"

    invoke-direct {v3, v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 8
    new-instance v4, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v5, 0x4

    const-string v6, "wifi"

    const-string v7, "TYPE_WIFI"

    invoke-direct {v4, v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->fl:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 9
    new-instance v5, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v6, 0x5

    const-string v7, "mobile"

    const-string v8, "TYPE_MOBILE"

    invoke-direct {v5, v8, v6, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->Tgh:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 10
    new-instance v6, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    const/4 v7, 0x6

    const-string v8, "unknown"

    const-string v9, "TYPE_UNKNOWN"

    invoke-direct {v6, v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->ROR:Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    .line 3
    filled-new-array/range {v0 .. v6}, [Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->hm:[Lcom/bytedance/sdk/openadsdk/hpZ/fl;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->Sf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/fl;
    .locals 1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/hpZ/fl;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->hm:[Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/hpZ/fl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->Sf:Ljava/lang/String;

    return-object v0
.end method
