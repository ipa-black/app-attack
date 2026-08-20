.class public final Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;
.super Lcom/appodeal/ads/modules/libs/network/HttpError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/HttpError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoFill"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError;",
        "",
        "a",
        "Ljava/lang/String;",
        "getDescription",
        "()Ljava/lang/String;",
        "description",
        "",
        "b",
        "I",
        "getCode",
        "()I",
        "code",
        "",
        "rawResponse",
        "[B",
        "getRawResponse",
        "()[B",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;

.field public static final a:Ljava/lang/String;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;

    const-string v0, "no fill"

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;->a:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/modules/libs/network/HttpError;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    sget v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;->b:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResponse()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
