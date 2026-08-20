.class public final Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SentryAnalytics"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\u0008\u0012\u0006\u0010\u001d\u001a\u00020\u0011\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010)\u001a\u00020$\u0012\u0006\u0010/\u001a\u00020*\u0012\u0008\u0008\u0002\u00101\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u00103\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u00105\u001a\u00020\u0011\u0012\u0006\u0010;\u001a\u000206\u00a2\u0006\u0004\u0008<\u0010=R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0018\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u001a\u0010\u000cR\u0017\u0010\u001d\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0013\u001a\u0004\u0008\u001d\u0010\u0015R\u0017\u0010#\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0017\u0010)\u001a\u00020$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0017\u0010/\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001a\u00101\u001a\u00020\u00118\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00080\u0010\u0013\u001a\u0004\u00081\u0010\u0015R\u001a\u00103\u001a\u00020\u00118\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0013\u001a\u0004\u00083\u0010\u0015R\u001a\u00105\u001a\u00020\u00118\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00084\u0010\u0013\u001a\u0004\u00085\u0010\u0015R\u001a\u0010;\u001a\u0002068\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006>"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "",
        "b",
        "Ljava/lang/String;",
        "getSentryDsn",
        "()Ljava/lang/String;",
        "sentryDsn",
        "c",
        "getSentryEnvironment",
        "sentryEnvironment",
        "",
        "d",
        "Z",
        "getSentryCollectThreads",
        "()Z",
        "sentryCollectThreads",
        "e",
        "isSentryTrackingEnabled",
        "f",
        "getMdsReportUrl",
        "mdsReportUrl",
        "g",
        "isMdsEventTrackingEnabled",
        "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;",
        "h",
        "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;",
        "getDeviceData",
        "()Lcom/appodeal/ads/modules/common/internal/data/DeviceData;",
        "deviceData",
        "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;",
        "i",
        "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;",
        "getApplicationData",
        "()Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;",
        "applicationData",
        "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;",
        "j",
        "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;",
        "getUserPersonalData",
        "()Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;",
        "userPersonalData",
        "k",
        "isLoggingEnabled",
        "l",
        "isEventTrackingEnabled",
        "m",
        "isRevenueTrackingEnabled",
        "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "n",
        "Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "getConnectorCallback",
        "()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;",
        "connectorCallback",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

.field public final i:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

.field public final j:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sentryDsn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sentryEnvironment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mdsReportUrl"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceData"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPersonalData"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectorCallback"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->d:Z

    iput-boolean p5, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->e:Z

    iput-object p6, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->g:Z

    iput-object p8, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->h:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    iput-object p9, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->i:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    iput-object p10, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->j:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    iput-boolean p11, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->k:Z

    iput-boolean p12, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->l:Z

    iput-boolean p13, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->m:Z

    iput-object p14, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->n:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v14, v2

    goto :goto_0

    :cond_0
    move/from16 v14, p11

    :goto_0
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move v15, v2

    goto :goto_1

    :cond_1
    move/from16 v15, p12

    :goto_1
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move/from16 v16, v2

    goto :goto_2

    :cond_2
    move/from16 v16, p13

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v17, p14

    invoke-direct/range {v3 .. v17}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    return-void
.end method


# virtual methods
.method public final getApplicationData()Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->i:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    return-object v0
.end method

.method public getConnectorCallback()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->n:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getDeviceData()Lcom/appodeal/ads/modules/common/internal/data/DeviceData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->h:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    return-object v0
.end method

.method public final getMdsReportUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getSentryCollectThreads()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->d:Z

    return v0
.end method

.method public final getSentryDsn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSentryEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserPersonalData()Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->j:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    return-object v0
.end method

.method public isEventTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->l:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->k:Z

    return v0
.end method

.method public final isMdsEventTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->g:Z

    return v0
.end method

.method public isRevenueTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->m:Z

    return v0
.end method

.method public final isSentryTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$SentryAnalytics;->e:Z

    return v0
.end method
