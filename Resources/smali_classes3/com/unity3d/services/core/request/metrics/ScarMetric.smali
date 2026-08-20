.class public Lcom/unity3d/services/core/request/metrics/ScarMetric;
.super Ljava/lang/Object;
.source "ScarMetric.java"


# static fields
.field private static final HB_SIGNALS_FETCH_FAILURE:Ljava/lang/String; = "native_hb_signals_fetch_failure"

.field public static final HB_SIGNALS_FETCH_START:Ljava/lang/String; = "native_hb_signals_fetch_start"

.field private static final HB_SIGNALS_FETCH_SUCCESS:Ljava/lang/String; = "native_hb_signals_fetch_success"

.field private static final HB_SIGNALS_UPLOAD_FAILURE:Ljava/lang/String; = "native_hb_signals_upload_failure"

.field private static final HB_SIGNALS_UPLOAD_START:Ljava/lang/String; = "native_hb_signals_upload_start"

.field private static final HB_SIGNALS_UPLOAD_SUCCESS:Ljava/lang/String; = "native_hb_signals_upload_success"

.field private static final REASON:Ljava/lang/String; = "reason"

.field private static _fetchStartTime:J

.field private static _uploadStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTotalFetchTime()J
    .locals 5

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lcom/unity3d/services/core/request/metrics/ScarMetric;->_fetchStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTotalUploadTime()J
    .locals 5

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lcom/unity3d/services/core/request/metrics/ScarMetric;->_uploadStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hbSignalsFetchFailure(Ljava/lang/String;)Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 3

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v1, "reason"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance p0, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 53
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->getTotalFetchTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "native_hb_signals_fetch_failure"

    invoke-direct {p0, v2, v1, v0}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object p0
.end method

.method public static hbSignalsFetchStart()Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 3

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/unity3d/services/core/request/metrics/ScarMetric;->_fetchStartTime:J

    .line 32
    new-instance v0, Lcom/unity3d/services/core/request/metrics/Metric;

    const-string v1, "native_hb_signals_fetch_start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static hbSignalsFetchSuccess()Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 4

    .line 40
    new-instance v0, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 42
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->getTotalFetchTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "native_hb_signals_fetch_success"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static hbSignalsUploadFailure(Ljava/lang/String;)Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 3

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "reason"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p0, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 81
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->getTotalUploadTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "native_hb_signals_upload_failure"

    invoke-direct {p0, v2, v1, v0}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object p0
.end method

.method public static hbSignalsUploadStart()Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 3

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/unity3d/services/core/request/metrics/ScarMetric;->_uploadStartTime:J

    .line 60
    new-instance v0, Lcom/unity3d/services/core/request/metrics/Metric;

    const-string v1, "native_hb_signals_upload_start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public static hbSignalsUploadSuccess()Lcom/unity3d/services/core/request/metrics/Metric;
    .locals 4

    .line 68
    new-instance v0, Lcom/unity3d/services/core/request/metrics/Metric;

    .line 70
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/ScarMetric;->getTotalUploadTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "native_hb_signals_upload_success"

    invoke-direct {v0, v3, v1, v2}, Lcom/unity3d/services/core/request/metrics/Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method
