.class public final Lcom/appodeal/ads/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/n;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/n;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/n$a;->a:Lcom/appodeal/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/n$a;->a:Lcom/appodeal/ads/n;

    iget-object v0, v0, Lcom/appodeal/ads/n;->a:Lcom/appodeal/ads/o;

    check-cast v0, Lcom/appodeal/ads/v;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/v;->f:Lcom/appodeal/ads/u;

    .line 2
    iget-object v1, v1, Lcom/appodeal/ads/u;->d:Lcom/appodeal/ads/b0;

    .line 3
    iget-object v2, v0, Lcom/appodeal/ads/v;->e:Lcom/appodeal/ads/r;

    iget-object v0, v0, Lcom/appodeal/ads/v;->d:Lcom/appodeal/ads/l;

    invoke-virtual {v1, v2, v0, p1}, Lcom/appodeal/ads/b0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method
