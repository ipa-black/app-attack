.class public final Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;
.super Lcom/appodeal/ads/modules/libs/network/HttpError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/libs/network/HttpError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkVersionNotSupported"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError;",
        "",
        "a",
        "[B",
        "getRawResponse",
        "()[B",
        "rawResponse",
        "",
        "b",
        "Ljava/lang/String;",
        "getDescription",
        "()Ljava/lang/String;",
        "description",
        "",
        "c",
        "I",
        "getCode",
        "()I",
        "code",
        "<init>",
        "([B)V",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/modules/libs/network/HttpError;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->a:[B

    const-string p1, "sdk version not supported"

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->b:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->c:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->c:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResponse()[B
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;->a:[B

    return-object v0
.end method
