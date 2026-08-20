.class public final Lio/bidmachine/analytics/AnalyticsConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/AnalyticsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->d:I

    const/4 v0, 0x4

    iput v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->e:I

    const/16 v0, 0x8

    iput v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->f:I

    iput-object p1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAnalyticsMetricConfig(Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;)Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    .locals 1

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lio/bidmachine/analytics/AnalyticsConfig;
    .locals 9

    new-instance v8, Lio/bidmachine/analytics/AnalyticsConfig;

    iget-object v1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->b:Ljava/lang/String;

    iget v3, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->d:I

    iget v4, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->e:I

    iget v5, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->f:I

    iget-object v6, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->c:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;Lio/bidmachine/analytics/AnalyticsConfig$a;)V

    return-object v8
.end method

.method public setAnalyticsMetricConfigList(Ljava/util/List;)Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;",
            ">;)",
            "Lio/bidmachine/analytics/AnalyticsConfig$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setEventBatchSize(I)Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->setEventBatchSize(ILjava/lang/Integer;)Lio/bidmachine/analytics/AnalyticsConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEventBatchSize(ILjava/lang/Integer;)Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    .locals 1

    iput p1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->e:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    iput p1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->f:I

    return-object p0
.end method

.method public setIntervalSec(I)Lio/bidmachine/analytics/AnalyticsConfig$Builder;
    .locals 0

    iput p1, p0, Lio/bidmachine/analytics/AnalyticsConfig$Builder;->d:I

    return-object p0
.end method
