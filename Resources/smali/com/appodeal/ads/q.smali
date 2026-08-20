.class public Lcom/appodeal/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/segments/g;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/segments/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appodeal/ads/q;-><init>(Lcom/appodeal/ads/segments/g;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/segments/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    iput-boolean p2, p0, Lcom/appodeal/ads/q;->b:Z

    return-void
.end method
