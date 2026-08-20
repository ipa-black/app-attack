.class public final enum Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getServiceName",
        "()Ljava/lang/String;",
        "serviceName",
        "b",
        "getClassName",
        "className",
        "Appsflyer",
        "Adjust",
        "FacebookAnalytics",
        "Firebase",
        "StackAnalytics",
        "SentryAnalytics",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum Adjust:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final enum Appsflyer:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final enum FacebookAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final enum Firebase:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final enum SentryAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final enum StackAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public static final synthetic c:[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const-string v1, "AppsFlyer"

    const-string v2, "com.appodeal.ads.services.appsflyer.AppsflyerService"

    const-string v3, "Appsflyer"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Appsflyer:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const/4 v2, 0x1

    const-string v3, "com.appodeal.ads.services.adjust.AdjustService"

    const-string v4, "Adjust"

    invoke-direct {v1, v4, v2, v4, v3}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Adjust:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    new-instance v2, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const-string v3, "Facebook Analytics"

    const-string v4, "com.appodeal.ads.services.facebook_analytics.FacebookAnalyticsService"

    const-string v5, "FacebookAnalytics"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->FacebookAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    new-instance v3, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const-string v4, "Firebase Analytics"

    const-string v5, "com.appodeal.ads.services.firebase.FirebaseService"

    const-string v6, "Firebase"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->Firebase:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    new-instance v4, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const-string v5, "Stack Analytics"

    const-string v6, "com.appodeal.ads.services.stack_analytics.StackAnalyticsService"

    const-string v7, "StackAnalytics"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->StackAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    new-instance v5, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const-string v6, "Sentry Analytics"

    const-string v7, "com.appodeal.ads.services.sentry_analytics.SentryAnalyticsService"

    const-string v8, "SentryAnalytics"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->SentryAnalytics:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    .line 1
    filled-new-array/range {v0 .. v5}, [Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->c:[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;
    .locals 1

    const-class v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->c:[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    return-object v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->a:Ljava/lang/String;

    return-object v0
.end method
