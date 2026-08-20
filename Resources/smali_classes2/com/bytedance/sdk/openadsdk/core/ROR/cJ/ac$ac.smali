.class final enum Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;
.super Ljava/lang/Enum;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

.field private static final synthetic ac:[Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

.field public static final enum cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 121
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    const-string v1, "TRACKING_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    .line 122
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    const-string v2, "QUARTILE_EVENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    .line 120
    filled-new-array {v0, v1}, [Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->ac:[Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;
    .locals 1

    .line 120
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;
    .locals 1

    .line 120
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->ac:[Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    return-object v0
.end method
