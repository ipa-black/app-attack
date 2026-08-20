.class final Lio/bidmachine/BidMachineAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/BidMachineAnalytics;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Le/b;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    invoke-static {p0, p1}, Lc/c;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lio/bidmachine/analytics/InitializeListener;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachineAnalytics;->initialize(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V
    .locals 3

    sget-object v0, Lio/bidmachine/BidMachineAnalytics;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V

    invoke-static {v0}, La/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackEvent(Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    invoke-static {p0}, Le/b;->a(Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method
