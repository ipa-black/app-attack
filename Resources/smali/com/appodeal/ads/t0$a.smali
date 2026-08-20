.class public final Lcom/appodeal/ads/t0$a;
.super Lcom/appodeal/ads/x5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/x5<",
        "Lcom/appodeal/ads/w0;",
        "Lcom/appodeal/ads/v0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/a;->d:Lcom/appodeal/ads/a;

    invoke-direct {p0, v0}, Lcom/appodeal/ads/x5;-><init>(Lcom/appodeal/ads/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Lcom/appodeal/ads/BannerView;

    return p1
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/t0$d;

    invoke-direct {v0}, Lcom/appodeal/ads/t0$d;-><init>()V

    .line 1
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    return-void
.end method
