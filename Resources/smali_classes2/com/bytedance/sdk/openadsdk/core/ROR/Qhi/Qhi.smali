.class public final enum Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;
.super Ljava/lang/Enum;
.source "VastErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum ROR:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum Tgh:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field public static final enum fl:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

.field private static final synthetic hm:[Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;


# instance fields
.field private final Sf:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "XML_PARSING_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v2, 0x1

    const/16 v3, 0x65

    const-string v4, "SCHEMA_VALIDATION_ERROR"

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 23
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v3, 0x2

    const/16 v4, 0x12d

    const-string v5, "WRAPPER_TIMEOUT"

    invoke-direct {v2, v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 29
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v4, 0x3

    const/16 v5, 0x12f

    const-string v6, "NO_ADS_VAST_RESPONSE"

    invoke-direct {v3, v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 35
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v5, 0x4

    const/16 v6, 0x190

    const-string v7, "GENERAL_LINEAR_AD_ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->fl:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 41
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v6, 0x5

    const/16 v7, 0x258

    const-string v8, "GENERAL_COMPANION_AD_ERROR"

    invoke-direct {v5, v8, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->Tgh:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 46
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    const/4 v7, 0x6

    const/16 v8, 0x384

    const-string v9, "UNDEFINED_ERROR"

    invoke-direct {v6, v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    .line 10
    filled-new-array/range {v0 .. v6}, [Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->hm:[Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->Sf:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;
    .locals 1

    .line 10
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->hm:[Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;

    return-object v0
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 61
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi;->Sf:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
