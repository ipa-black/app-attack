.class public final Lcom/appodeal/ads/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/segments/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u;-><init>(Lcom/appodeal/ads/b0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Lcom/appodeal/ads/segments/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/u;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$c;->a:Lcom/appodeal/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u$c;->a:Lcom/appodeal/ads/u;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/appodeal/ads/segments/g;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u$c;->a:Lcom/appodeal/ads/u;

    .line 2
    iput-object p1, v0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lcom/appodeal/ads/u;->m:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/appodeal/ads/segments/g;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/u$c;->a:Lcom/appodeal/ads/u;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/u;->l:Lcom/appodeal/ads/segments/g;

    return-object v0
.end method
