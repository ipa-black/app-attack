.class public final enum Lcom/unity3d/services/core/request/metrics/AdOperationError;
.super Ljava/lang/Enum;
.source "AdOperationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/request/metrics/AdOperationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum already_showing:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum callback_error:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum callback_timeout:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum init_failed:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum internal:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum invalid:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum no_connection:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum no_fill:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum not_ready:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum player:Lcom/unity3d/services/core/request/metrics/AdOperationError;

.field public static final enum timeout:Lcom/unity3d/services/core/request/metrics/AdOperationError;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v1, "init_failed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/request/metrics/AdOperationError;->init_failed:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 5
    new-instance v1, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v2, "internal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/request/metrics/AdOperationError;->internal:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 6
    new-instance v2, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v3, "invalid"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/request/metrics/AdOperationError;->invalid:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 7
    new-instance v3, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v4, "no_fill"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/request/metrics/AdOperationError;->no_fill:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 8
    new-instance v4, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v5, "timeout"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/core/request/metrics/AdOperationError;->timeout:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 9
    new-instance v5, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v6, "not_ready"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/request/metrics/AdOperationError;->not_ready:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 10
    new-instance v6, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v7, "player"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/request/metrics/AdOperationError;->player:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 11
    new-instance v7, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v8, "no_connection"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/request/metrics/AdOperationError;->no_connection:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 12
    new-instance v8, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v9, "already_showing"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/core/request/metrics/AdOperationError;->already_showing:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 13
    new-instance v9, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v10, "callback_error"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/request/metrics/AdOperationError;->callback_error:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 14
    new-instance v10, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    const-string v11, "callback_timeout"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/unity3d/services/core/request/metrics/AdOperationError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/core/request/metrics/AdOperationError;->callback_timeout:Lcom/unity3d/services/core/request/metrics/AdOperationError;

    .line 3
    filled-new-array/range {v0 .. v10}, [Lcom/unity3d/services/core/request/metrics/AdOperationError;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/request/metrics/AdOperationError;->$VALUES:[Lcom/unity3d/services/core/request/metrics/AdOperationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/request/metrics/AdOperationError;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/request/metrics/AdOperationError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/request/metrics/AdOperationError;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/core/request/metrics/AdOperationError;->$VALUES:[Lcom/unity3d/services/core/request/metrics/AdOperationError;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/request/metrics/AdOperationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/request/metrics/AdOperationError;

    return-object v0
.end method
