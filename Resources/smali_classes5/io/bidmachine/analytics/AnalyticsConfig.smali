.class public Lio/bidmachine/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    int-to-long p1, p3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/analytics/AnalyticsConfig;->c:J

    iput p4, p0, Lio/bidmachine/analytics/AnalyticsConfig;->d:I

    iput p5, p0, Lio/bidmachine/analytics/AnalyticsConfig;->e:I

    iput-object p6, p0, Lio/bidmachine/analytics/AnalyticsConfig;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lio/bidmachine/analytics/AnalyticsConfig$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAnalyticsMetricConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->f:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEventBatchMaxSize()I
    .locals 1

    iget v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->e:I

    return v0
.end method

.method public getEventBatchSize()I
    .locals 1

    iget v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->d:I

    return v0
.end method

.method public getIntervalMs()J
    .locals 2

    iget-wide v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->c:J

    return-wide v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-object v0
.end method
