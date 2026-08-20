.class public final Lcom/appodeal/ads/utils/x$f;
.super Lcom/appodeal/ads/utils/x$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/utils/x;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/appodeal/ads/utils/w;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/x;Lcom/appodeal/ads/utils/w;I)V
    .locals 0

    iput-object p2, p0, Lcom/appodeal/ads/utils/x$f;->c:Lcom/appodeal/ads/utils/w;

    invoke-direct {p0, p1, p3}, Lcom/appodeal/ads/utils/x$d;-><init>(Lcom/appodeal/ads/utils/x;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/utils/x$d$a;)V
    .locals 2

    const-string v0, "sessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/utils/x$f;->c:Lcom/appodeal/ads/utils/w;

    invoke-virtual {v0}, Lcom/appodeal/ads/utils/w;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/utils/x$f;->c:Lcom/appodeal/ads/utils/w;

    invoke-virtual {v1}, Lcom/appodeal/ads/utils/w;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
