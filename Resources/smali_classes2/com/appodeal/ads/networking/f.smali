.class public final Lcom/appodeal/ads/networking/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$ConnectionError;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    goto/16 :goto_1

    :cond_1
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->RequestError:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ServerError:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_4
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$AdapterNotFound;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->AdapterNotFound:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$AdTypeNotSupportedInAdapter;

    if-eqz v0, :cond_6

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->AdTypeNotSupportedInAdapter:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_6
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$Canceled;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_7
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectAdUnit;

    if-eqz v0, :cond_8

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_8
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$IncorrectCreative;

    if-eqz v0, :cond_9

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectCreative:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_9
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$InvalidAssets;

    if-eqz v0, :cond_a

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_a
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$NoFill;

    if-eqz v0, :cond_b

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_b
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;

    if-eqz v0, :cond_c

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->RequestVerificationFailed:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_c
    instance-of v0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$SdkVersionNotSupported;

    if-eqz v0, :cond_d

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->SdkVersionNotSupported:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_d
    instance-of p0, p0, Lcom/appodeal/ads/modules/libs/network/HttpError$ShowFailed;

    if-eqz p0, :cond_e

    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ShowFailed:Lcom/appodeal/ads/networking/LoadingError;

    goto :goto_1

    :cond_e
    :goto_0
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    :goto_1
    return-object p0
.end method
