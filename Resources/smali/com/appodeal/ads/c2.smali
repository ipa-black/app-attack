.class public final Lcom/appodeal/ads/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/m$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/g2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/c2;->a:Lcom/appodeal/ads/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "Video"

    const-string v2, "hasn\'t been loaded"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/c2;->a:Lcom/appodeal/ads/g2;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/appodeal/ads/g2;->w:I

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->h()V

    .line 5
    iget-object v0, p0, Lcom/appodeal/ads/c2;->a:Lcom/appodeal/ads/g2;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/appodeal/ads/g2;->q:Z

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/appodeal/ads/g2;->x:Ljava/lang/String;

    const-string v1, "Video"

    const-string v2, "has been loaded"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/c2;->a:Lcom/appodeal/ads/g2;

    iget-object v1, v0, Lcom/appodeal/ads/g2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iput-object p1, v1, Lcom/appodeal/ads/l2;->q:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/g2;->e()V

    return-void
.end method
