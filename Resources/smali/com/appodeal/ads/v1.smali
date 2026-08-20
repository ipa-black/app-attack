.class public final Lcom/appodeal/ads/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/v1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/appodeal/ads/segments/j;->b()Lcom/appodeal/ads/segments/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/segments/j;->b(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/v1;->a:Landroid/content/Context;

    sget-object v0, Lcom/appodeal/ads/segments/n;->a:Lkotlin/Lazy;

    .line 1
    sget-object v0, Lcom/appodeal/ads/segments/o;->a:Lcom/appodeal/ads/segments/o;

    invoke-static {p1, v0}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
