.class public abstract Lcom/appodeal/ads/modules/libs/network/HttpError;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$ConnectionError;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$InvalidAssets;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$AdapterNotFound;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$AdTypeNotSupportedInAdapter;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$Canceled;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectAdUnit;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectCreative;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$ShowFailed;,
        Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0010\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001dR\u0014\u0010\u0005\u001a\u00020\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\u0010\u001e\u001f !\"#$%&\'()*+,-\u00a8\u0006."
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/HttpError;",
        "",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "description",
        "",
        "getRawResponse",
        "()[B",
        "rawResponse",
        "",
        "getCode",
        "()I",
        "code",
        "AdTypeNotSupportedInAdapter",
        "AdapterNotFound",
        "Canceled",
        "ConnectionError",
        "IncorrectAdUnit",
        "IncorrectCreative",
        "InternalError",
        "InvalidAssets",
        "NoFill",
        "RequestError",
        "RequestVerificationFailed",
        "SdkVersionNotSupported",
        "ServerError",
        "ShowFailed",
        "TimeoutError",
        "UncaughtException",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$ConnectionError;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$InvalidAssets;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$AdapterNotFound;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$AdTypeNotSupportedInAdapter;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$Canceled;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectAdUnit;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectCreative;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$ShowFailed;",
        "Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/modules/libs/network/HttpError;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getRawResponse()[B
.end method
