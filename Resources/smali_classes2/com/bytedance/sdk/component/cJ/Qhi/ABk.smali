.class public final enum Lcom/bytedance/sdk/component/cJ/Qhi/ABk;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/cJ/Qhi/ABk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CJ:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

.field public static final enum Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

.field private static final synthetic Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

.field public static final enum ac:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

.field public static final enum cJ:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;


# instance fields
.field private final fl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    .line 41
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    .line 51
    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    const-string v5, "SPDY_3"

    invoke-direct {v2, v5, v3, v4}, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    .line 53
    new-instance v3, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    const/4 v4, 0x3

    const-string v5, "h2"

    const-string v6, "HTTP_2"

    invoke-direct {v3, v6, v4, v5}, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->CJ:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    .line 29
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->fl:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/ABk;
    .locals 1

    .line 29
    const-class v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/cJ/Qhi/ABk;
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->Tgh:[Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->fl:Ljava/lang/String;

    return-object v0
.end method
