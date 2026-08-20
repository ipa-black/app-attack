.class public final Lcom/appodeal/ads/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/m$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l2;

.field public final synthetic b:Lcom/appodeal/ads/s2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/q2;->b:Lcom/appodeal/ads/s2;

    iput-object p2, p0, Lcom/appodeal/ads/q2;->a:Lcom/appodeal/ads/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/q2;->b:Lcom/appodeal/ads/s2;

    iget v1, v0, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {v0}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/q2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iput-object p1, v0, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/q2;->a:Lcom/appodeal/ads/l2;

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/q2;->b:Lcom/appodeal/ads/s2;

    iget v0, p1, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {p1}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method
