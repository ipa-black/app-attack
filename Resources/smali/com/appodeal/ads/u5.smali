.class public final Lcom/appodeal/ads/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/d0$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/u;

.field public final synthetic b:Lcom/appodeal/ads/z5;

.field public final synthetic c:Lcom/appodeal/ads/r5;

.field public final synthetic d:Lcom/appodeal/ads/x5;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/u;Lcom/appodeal/ads/z5;Lcom/appodeal/ads/r5;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u5;->d:Lcom/appodeal/ads/x5;

    iput-object p2, p0, Lcom/appodeal/ads/u5;->a:Lcom/appodeal/ads/u;

    iput-object p3, p0, Lcom/appodeal/ads/u5;->b:Lcom/appodeal/ads/z5;

    iput-object p4, p0, Lcom/appodeal/ads/u5;->c:Lcom/appodeal/ads/r5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/u5;->d:Lcom/appodeal/ads/x5;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "VisibilityTracker"

    const-string v2, "onViewShown"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u5;->a:Lcom/appodeal/ads/u;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 4
    iget-object v1, p0, Lcom/appodeal/ads/u5;->b:Lcom/appodeal/ads/z5;

    iget-object v2, p0, Lcom/appodeal/ads/u5;->c:Lcom/appodeal/ads/r5;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/b0;->j(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/u5;->d:Lcom/appodeal/ads/x5;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/x5;->a:Ljava/lang/String;

    .line 2
    const-string v1, "VisibilityTracker"

    const-string v2, "onViewTrackingFinished"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/u5;->a:Lcom/appodeal/ads/u;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 4
    iget-object v1, p0, Lcom/appodeal/ads/u5;->b:Lcom/appodeal/ads/z5;

    iget-object v2, p0, Lcom/appodeal/ads/u5;->c:Lcom/appodeal/ads/r5;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/b0;->i(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/l2;)V

    return-void
.end method
