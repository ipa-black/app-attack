.class public abstract Lcom/appodeal/ads/service/ServiceError$SentryAnalytics;
.super Lcom/appodeal/ads/service/ServiceError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/service/ServiceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SentryAnalytics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/service/ServiceError$SentryAnalytics$NoDsnProvided;,
        Lcom/appodeal/ads/service/ServiceError$SentryAnalytics$NoEnvironmentProvided;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0005\u0006B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u0082\u0001\u0002\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/appodeal/ads/service/ServiceError$SentryAnalytics;",
        "Lcom/appodeal/ads/service/ServiceError;",
        "description",
        "",
        "(Ljava/lang/String;)V",
        "NoDsnProvided",
        "NoEnvironmentProvided",
        "Lcom/appodeal/ads/service/ServiceError$SentryAnalytics$NoDsnProvided;",
        "Lcom/appodeal/ads/service/ServiceError$SentryAnalytics$NoEnvironmentProvided;",
        "apd_public"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Sentry Analytics"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/appodeal/ads/service/ServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/service/ServiceError$SentryAnalytics;-><init>(Ljava/lang/String;)V

    return-void
.end method
