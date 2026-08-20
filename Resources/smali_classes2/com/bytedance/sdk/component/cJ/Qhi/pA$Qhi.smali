.class public final enum Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;
.super Ljava/lang/Enum;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/pA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

.field private static final synthetic ac:[Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

.field public static final enum cJ:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    const-string v1, "STRING_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    const-string v2, "BYTE_ARRAY_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    .line 40
    filled-new-array {v0, v1}, [Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->ac:[Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;
    .locals 1

    .line 40
    const-class v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;
    .locals 1

    .line 40
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->ac:[Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    return-object v0
.end method
