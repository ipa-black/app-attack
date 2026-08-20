.class public final Lcom/appodeal/ads/u$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/u$e;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/u$e;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/u$e;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/u$e$b;->a:Lcom/appodeal/ads/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/u$e$b;->a:Lcom/appodeal/ads/u$e;

    iget-object v1, v1, Lcom/appodeal/ads/u$e;->c:Lcom/appodeal/ads/u;

    .line 1
    iget-object v1, v1, Lcom/appodeal/ads/u;->f:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    .line 2
    invoke-virtual {v0, v1}, Lcom/appodeal/ads/n0;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)V

    return-void
.end method
