.class public final enum Lcom/bytedance/sdk/component/Qhi/Dww;
.super Ljava/lang/Enum;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/Qhi/Dww;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic CJ:[Lcom/bytedance/sdk/component/Qhi/Dww;

.field public static final enum Qhi:Lcom/bytedance/sdk/component/Qhi/Dww;

.field public static final enum ac:Lcom/bytedance/sdk/component/Qhi/Dww;

.field public static final enum cJ:Lcom/bytedance/sdk/component/Qhi/Dww;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/Qhi/Dww;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/Qhi/Dww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/Qhi/Dww;->Qhi:Lcom/bytedance/sdk/component/Qhi/Dww;

    .line 12
    new-instance v1, Lcom/bytedance/sdk/component/Qhi/Dww;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/Qhi/Dww;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/Qhi/Dww;->cJ:Lcom/bytedance/sdk/component/Qhi/Dww;

    .line 13
    new-instance v2, Lcom/bytedance/sdk/component/Qhi/Dww;

    const-string v3, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/Qhi/Dww;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/sdk/component/Qhi/Dww;->ac:Lcom/bytedance/sdk/component/Qhi/Dww;

    .line 10
    filled-new-array {v0, v1, v2}, [Lcom/bytedance/sdk/component/Qhi/Dww;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/Qhi/Dww;->CJ:[Lcom/bytedance/sdk/component/Qhi/Dww;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/Qhi/Dww;
    .locals 1

    .line 10
    const-class v0, Lcom/bytedance/sdk/component/Qhi/Dww;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/Qhi/Dww;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/Qhi/Dww;
    .locals 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/component/Qhi/Dww;->CJ:[Lcom/bytedance/sdk/component/Qhi/Dww;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/Qhi/Dww;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/Qhi/Dww;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/bytedance/sdk/component/Qhi/Dww;->ac:Lcom/bytedance/sdk/component/Qhi/Dww;

    if-ne p0, v0, :cond_0

    .line 44
    const-string v0, "private"

    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/Qhi/Dww;->cJ:Lcom/bytedance/sdk/component/Qhi/Dww;

    if-ne p0, v0, :cond_1

    .line 46
    const-string v0, "protected"

    return-object v0

    .line 48
    :cond_1
    const-string v0, "public"

    return-object v0
.end method
