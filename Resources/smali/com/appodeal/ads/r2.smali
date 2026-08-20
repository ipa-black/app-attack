.class public final Lcom/appodeal/ads/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/n$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l2;

.field public final synthetic b:Lcom/appodeal/ads/s2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/r2;->b:Lcom/appodeal/ads/s2;

    iput-object p2, p0, Lcom/appodeal/ads/r2;->a:Lcom/appodeal/ads/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/r2;->b:Lcom/appodeal/ads/s2;

    iget v1, v0, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {v0}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method

.method public final a(Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/r2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iput-object p2, v0, Lcom/appodeal/ads/l2;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 2
    iput-object p1, v0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    .line 3
    iget-object p2, v0, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/r2;->a:Lcom/appodeal/ads/l2;

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p2, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/r2;->b:Lcom/appodeal/ads/s2;

    iget p2, p1, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {p1}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method
