.class public final Lcom/appodeal/ads/y5;
.super Lcom/appodeal/ads/q;
.source "SourceFile"


# instance fields
.field public final c:Lcom/appodeal/ads/a;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/appodeal/ads/y5;-><init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/segments/g;Lcom/appodeal/ads/a;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;Z)V

    iput-object p2, p0, Lcom/appodeal/ads/y5;->c:Lcom/appodeal/ads/a;

    iput-boolean p3, p0, Lcom/appodeal/ads/y5;->d:Z

    return-void
.end method
