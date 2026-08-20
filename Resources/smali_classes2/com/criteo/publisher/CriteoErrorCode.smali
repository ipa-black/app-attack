.class public final enum Lcom/criteo/publisher/CriteoErrorCode;
.super Ljava/lang/Enum;
.source "CriteoErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/CriteoErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_INTERNAL_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_INVALID_REQUEST:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v1, "ERROR_CODE_NO_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    .line 27
    new-instance v1, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v2, "ERROR_CODE_NETWORK_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    .line 28
    new-instance v2, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v3, "ERROR_CODE_INVALID_REQUEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/criteo/publisher/CriteoErrorCode;

    .line 29
    new-instance v3, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v4, "ERROR_CODE_INTERNAL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    .line 24
    filled-new-array {v0, v1, v2, v3}, [Lcom/criteo/publisher/CriteoErrorCode;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/CriteoErrorCode;->$VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/CriteoErrorCode;
    .locals 1

    .line 24
    const-class v0, Lcom/criteo/publisher/CriteoErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/CriteoErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/CriteoErrorCode;
    .locals 1

    .line 24
    sget-object v0, Lcom/criteo/publisher/CriteoErrorCode;->$VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

    invoke-virtual {v0}, [Lcom/criteo/publisher/CriteoErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/CriteoErrorCode;

    return-object v0
.end method
