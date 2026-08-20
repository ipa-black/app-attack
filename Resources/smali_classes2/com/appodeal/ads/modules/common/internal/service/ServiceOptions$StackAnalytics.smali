.class public final Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;
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
    name = "StackAnalytics"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u0008\u0012\u0006\u0010\u0019\u001a\u00020\u000e\u0012\u0006\u0010\u001c\u001a\u00020\u0008\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010\'\u001a\u00020\"\u0012\u0006\u0010-\u001a\u00020(\u0012\u0006\u00103\u001a\u00020.\u0012\u0008\u0008\u0002\u00105\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u00107\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u00109\u001a\u00020\u001d\u0012\u0006\u0010?\u001a\u00020:\u00a2\u0006\u0004\u0008@\u0010AR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000cR\u0017\u0010\u0019\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0012R\u0017\u0010\u001c\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u001b\u0010\u000cR\u0017\u0010 \u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0017\u0010\'\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0017\u0010-\u001a\u00020(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0017\u00103\u001a\u00020.8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001a\u00105\u001a\u00020\u001d8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00084\u0010\u001f\u001a\u0004\u00085\u0010!R\u001a\u00107\u001a\u00020\u001d8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00086\u0010\u001f\u001a\u0004\u00087\u0010!R\u001a\u00109\u001a\u00020\u001d8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u00088\u0010\u001f\u001a\u0004\u00089\u0010!R\u001a\u0010?\u001a\u00020:8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\u00a8\u0006B"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;",
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
        "getReportUrl",
        "()Ljava/lang/String;",
        "reportUrl",
        "",
        "c",
        "J",
        "getReportSize",
        "()J",
        "reportSize",
        "d",
        "getReportLogLevel",
        "reportLogLevel",
        "e",
        "getReportIntervalMsec",
        "reportIntervalMsec",
        "f",
        "getCrashLogLevel",
        "crashLogLevel",
        "",
        "g",
        "Z",
        "isNativeTrackingEnabled",
        "()Z",
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
        "(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V",
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

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:J

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p16

    const-string v9, "context"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "reportUrl"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "reportLogLevel"

    invoke-static {p5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "crashLogLevel"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "deviceData"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "applicationData"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "userPersonalData"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "connectorCallback"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->a:Landroid/content/Context;

    iput-object v2, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->b:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->c:J

    iput-object v3, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->d:Ljava/lang/String;

    move-wide/from16 v1, p6

    iput-wide v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->e:J

    iput-object v4, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->f:Ljava/lang/String;

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->g:Z

    iput-object v5, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->h:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    iput-object v6, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->i:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    iput-object v7, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->j:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->k:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->l:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->m:Z

    iput-object v8, v0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->n:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move/from16 v16, v2

    goto :goto_0

    :cond_0
    move/from16 v16, p13

    :goto_0
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    move/from16 v17, p14

    :goto_1
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move/from16 v18, v2

    goto :goto_2

    :cond_2
    move/from16 v18, p15

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v19, p16

    invoke-direct/range {v3 .. v19}, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZLcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;ZZZLcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;)V

    return-void
.end method


# virtual methods
.method public final getApplicationData()Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->i:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    return-object v0
.end method

.method public getConnectorCallback()Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->n:Lcom/appodeal/ads/modules/common/internal/service/ConnectorCallback;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getCrashLogLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceData()Lcom/appodeal/ads/modules/common/internal/data/DeviceData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->h:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    return-object v0
.end method

.method public final getReportIntervalMsec()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->e:J

    return-wide v0
.end method

.method public final getReportLogLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportSize()J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->c:J

    return-wide v0
.end method

.method public final getReportUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserPersonalData()Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->j:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    return-object v0
.end method

.method public isEventTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->l:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->k:Z

    return v0
.end method

.method public final isNativeTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->g:Z

    return v0
.end method

.method public isRevenueTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions$StackAnalytics;->m:Z

    return v0
.end method
