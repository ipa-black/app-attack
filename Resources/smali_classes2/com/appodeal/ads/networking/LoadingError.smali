.class public final enum Lcom/appodeal/ads/networking/LoadingError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/networking/LoadingError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/appodeal/ads/networking/LoadingError;",
        "",
        "",
        "toString",
        "description",
        "Ljava/lang/String;",
        "Lcom/appodeal/ads/e0;",
        "requestResult",
        "Lcom/appodeal/ads/e0;",
        "getRequestResult",
        "()Lcom/appodeal/ads/e0;",
        "",
        "code",
        "I",
        "getCode",
        "()I",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V",
        "NoFill",
        "InternalError",
        "TimeoutError",
        "ConnectionError",
        "RequestError",
        "ServerError",
        "RequestVerificationFailed",
        "SdkVersionNotSupported",
        "InvalidAssets",
        "AdapterNotFound",
        "AdTypeNotSupportedInAdapter",
        "Canceled",
        "IncorrectAdunit",
        "IncorrectCreative",
        "ShowFailed",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum AdapterNotFound:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum Canceled:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum IncorrectCreative:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum InternalError:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum NoFill:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum RequestError:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum RequestVerificationFailed:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum SdkVersionNotSupported:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum ServerError:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

.field public static final enum TimeoutError:Lcom/appodeal/ads/networking/LoadingError;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;

.field private final requestResult:Lcom/appodeal/ads/e0;


# direct methods
.method private static final synthetic $values()[Lcom/appodeal/ads/networking/LoadingError;
    .locals 15

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v2, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v3, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v4, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v5, Lcom/appodeal/ads/networking/LoadingError;->ServerError:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v6, Lcom/appodeal/ads/networking/LoadingError;->RequestVerificationFailed:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v7, Lcom/appodeal/ads/networking/LoadingError;->SdkVersionNotSupported:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v8, Lcom/appodeal/ads/networking/LoadingError;->InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v9, Lcom/appodeal/ads/networking/LoadingError;->AdapterNotFound:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v10, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v11, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v12, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v13, Lcom/appodeal/ads/networking/LoadingError;->IncorrectCreative:Lcom/appodeal/ads/networking/LoadingError;

    sget-object v14, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    filled-new-array/range {v0 .. v14}, [Lcom/appodeal/ads/networking/LoadingError;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 20

    new-instance v6, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v4, Lcom/appodeal/ads/e0;->c:Lcom/appodeal/ads/e0;

    const-string v3, "no fill"

    const/4 v5, 0x2

    const-string v1, "NoFill"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v6, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v13, Lcom/appodeal/ads/e0;->e:Lcom/appodeal/ads/e0;

    const-string v10, "internal error"

    const/4 v12, 0x4

    const-string v8, "InternalError"

    const/4 v9, 0x1

    move-object v7, v0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v5, Lcom/appodeal/ads/e0;->d:Lcom/appodeal/ads/e0;

    const-string v4, "timeout error"

    const/4 v6, 0x3

    const-string v2, "TimeoutError"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "connection error"

    const/4 v6, 0x4

    const-string v2, "ConnectionError"

    const/4 v3, 0x3

    move-object v1, v0

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "request error"

    const-string v2, "RequestError"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "server error"

    const-string v2, "ServerError"

    const/4 v3, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->ServerError:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "request verification failed"

    const-string v2, "RequestVerificationFailed"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->RequestVerificationFailed:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "sdk version not supported"

    const-string v2, "SdkVersionNotSupported"

    const/4 v3, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->SdkVersionNotSupported:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v11, Lcom/appodeal/ads/e0;->h:Lcom/appodeal/ads/e0;

    const-string v10, "invalid assets"

    const/4 v12, 0x7

    const-string v8, "InvalidAssets"

    const/16 v9, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v5, Lcom/appodeal/ads/e0;->f:Lcom/appodeal/ads/e0;

    const-string v4, "adapter not found"

    const/16 v6, 0x8

    const-string v2, "AdapterNotFound"

    const/16 v3, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->AdapterNotFound:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v5, Lcom/appodeal/ads/e0;->g:Lcom/appodeal/ads/e0;

    const-string v10, "ad type not supported in adapter"

    const/16 v12, 0x9

    const-string v8, "AdTypeNotSupportedInAdapter"

    const/16 v9, 0xa

    move-object v7, v0

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v18, Lcom/appodeal/ads/e0;->i:Lcom/appodeal/ads/e0;

    const-string v17, "ad request canceled"

    const/16 v19, 0x2

    const-string v15, "Canceled"

    const/16 v16, 0xb

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "incorrect adunit"

    const/4 v6, 0x2

    const-string v2, "IncorrectAdunit"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    sget-object v11, Lcom/appodeal/ads/e0;->j:Lcom/appodeal/ads/e0;

    const-string v10, "incorrect creative"

    const/4 v12, 0x4

    const-string v8, "IncorrectCreative"

    const/16 v9, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectCreative:Lcom/appodeal/ads/networking/LoadingError;

    new-instance v0, Lcom/appodeal/ads/networking/LoadingError;

    const-string v4, "show failed"

    const/4 v6, 0x4

    const-string v2, "ShowFailed"

    const/16 v3, 0xe

    move-object v1, v0

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/appodeal/ads/networking/LoadingError;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    invoke-static {}, Lcom/appodeal/ads/networking/LoadingError;->$values()[Lcom/appodeal/ads/networking/LoadingError;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/networking/LoadingError;->$VALUES:[Lcom/appodeal/ads/networking/LoadingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/e0;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/networking/LoadingError;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/networking/LoadingError;->requestResult:Lcom/appodeal/ads/e0;

    iput p5, p0, Lcom/appodeal/ads/networking/LoadingError;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    const-class v0, Lcom/appodeal/ads/networking/LoadingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/networking/LoadingError;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->$VALUES:[Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/networking/LoadingError;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/networking/LoadingError;->code:I

    return v0
.end method

.method public final getRequestResult()Lcom/appodeal/ads/e0;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/LoadingError;->requestResult:Lcom/appodeal/ads/e0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/LoadingError;->description:Ljava/lang/String;

    return-object v0
.end method
