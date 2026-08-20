.class public abstract Lcom/appodeal/ads/service/ServiceError;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/service/ServiceError$Internal;,
        Lcom/appodeal/ads/service/ServiceError$InitializationTimeout;,
        Lcom/appodeal/ads/service/ServiceError$IAPValidationTimeout;,
        Lcom/appodeal/ads/service/ServiceError$PurchaseValidationServiceNotFound;,
        Lcom/appodeal/ads/service/ServiceError$Adjust;,
        Lcom/appodeal/ads/service/ServiceError$Appsflyer;,
        Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics;,
        Lcom/appodeal/ads/service/ServiceError$SentryAnalytics;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u001b\u0008\u0004\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u0082\u0001\u0008\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/appodeal/ads/service/ServiceError;",
        "",
        "componentName",
        "",
        "description",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getComponentName",
        "()Ljava/lang/String;",
        "getDescription",
        "Adjust",
        "Appsflyer",
        "FacebookAnalytics",
        "IAPValidationTimeout",
        "InitializationTimeout",
        "Internal",
        "PurchaseValidationServiceNotFound",
        "SentryAnalytics",
        "Lcom/appodeal/ads/service/ServiceError$Internal;",
        "Lcom/appodeal/ads/service/ServiceError$InitializationTimeout;",
        "Lcom/appodeal/ads/service/ServiceError$IAPValidationTimeout;",
        "Lcom/appodeal/ads/service/ServiceError$PurchaseValidationServiceNotFound;",
        "Lcom/appodeal/ads/service/ServiceError$Adjust;",
        "Lcom/appodeal/ads/service/ServiceError$Appsflyer;",
        "Lcom/appodeal/ads/service/ServiceError$FacebookAnalytics;",
        "Lcom/appodeal/ads/service/ServiceError$SentryAnalytics;",
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


# instance fields
.field private final componentName:Ljava/lang/String;

.field private final description:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/service/ServiceError;->componentName:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/service/ServiceError;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    :cond_1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/service/ServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/service/ServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/service/ServiceError;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/service/ServiceError;->description:Ljava/lang/String;

    return-object v0
.end method
