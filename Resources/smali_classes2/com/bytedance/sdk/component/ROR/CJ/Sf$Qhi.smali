.class public final enum Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ROR/CJ/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Qhi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

.field public static final enum Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

.field public static final enum ac:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

.field public static final enum cJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

.field private static final synthetic fl:[Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 15
    new-instance v1, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    const-string v2, "INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->cJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 16
    new-instance v2, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->ac:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 17
    new-instance v3, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    const-string v4, "OFF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->CJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 13
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->fl:[Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;
    .locals 1

    .line 13
    const-class v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;
    .locals 1

    .line 13
    sget-object v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->fl:[Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    return-object v0
.end method
