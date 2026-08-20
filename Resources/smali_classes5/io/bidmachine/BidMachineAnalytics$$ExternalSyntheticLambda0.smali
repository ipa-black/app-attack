.class public final synthetic Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lio/bidmachine/analytics/AnalyticsConfig;

.field public final synthetic f$2:Lio/bidmachine/analytics/InitializeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/analytics/AnalyticsConfig;

    iput-object p3, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/analytics/InitializeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/analytics/AnalyticsConfig;

    iget-object v2, p0, Lio/bidmachine/BidMachineAnalytics$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/analytics/InitializeListener;

    invoke-static {v0, v1, v2}, Lio/bidmachine/BidMachineAnalytics;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/InitializeListener;)V

    return-void
.end method
