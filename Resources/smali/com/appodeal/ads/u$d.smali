.class public final Lcom/appodeal/ads/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/r;

.field public final synthetic b:Lcom/appodeal/ads/l;

.field public final synthetic c:Lcom/appodeal/ads/u;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$d;->c:Lcom/appodeal/ads/u;

    iput-object p2, p0, Lcom/appodeal/ads/u$d;->a:Lcom/appodeal/ads/r;

    iput-object p3, p0, Lcom/appodeal/ads/u$d;->b:Lcom/appodeal/ads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appodeal/ads/u$d;->c:Lcom/appodeal/ads/u;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/u$d;->a:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/u$d;->b:Lcom/appodeal/ads/l;

    sget-object v3, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
