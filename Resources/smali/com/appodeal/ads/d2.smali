.class public final Lcom/appodeal/ads/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/n$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/d2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/d2;->a:Lcom/appodeal/ads/g2;

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/appodeal/ads/g2;->w:I

    .line 7
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->h()V

    .line 8
    iget-object v0, p0, Lcom/appodeal/ads/d2;->a:Lcom/appodeal/ads/g2;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/appodeal/ads/g2;->q:Z

    return-void
.end method

.method public final a(Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/d2;->a:Lcom/appodeal/ads/g2;

    .line 1
    iput-object p2, v0, Lcom/appodeal/ads/g2;->t:Lcom/explorestack/iab/vast/VastRequest;

    .line 2
    iget-object v1, v0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    .line 3
    iput-object p2, v1, Lcom/appodeal/ads/l2;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 4
    iput-object p1, v1, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->e()V

    return-void
.end method
