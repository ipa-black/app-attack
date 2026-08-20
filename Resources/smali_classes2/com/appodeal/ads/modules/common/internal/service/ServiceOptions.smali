.class public interface abstract Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;,
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;,
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;,
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;,
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;,
        Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0006\u000b\u000c\r\u000e\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u0082\u0001\u0006\u0011\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
        "",
        "connectorCallback",
        "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "getConnectorCallback",
        "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "isEventTrackingEnabled",
        "",
        "()Z",
        "isLoggingEnabled",
        "isRevenueTrackingEnabled",
        "Adjust",
        "Appsflyer",
        "FacebookAnalytics",
        "Firebase",
        "SentryAnalytics",
        "StackAnalytics",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Appsflyer;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Adjust;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$FacebookAnalytics;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$Firebase;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getConnectorCallback()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;
.end method

.method public abstract isEventTrackingEnabled()Z
.end method

.method public abstract isLoggingEnabled()Z
.end method

.method public abstract isRevenueTrackingEnabled()Z
.end method
