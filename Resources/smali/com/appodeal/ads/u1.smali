.class public final Lcom/appodeal/ads/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/u1;->a:Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/u1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/appodeal/ads/u1;->a:Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;->onTrackError()V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/appodeal/ads/u1;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/appodeal/ads/u1;->a:Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;->onTrackSuccess(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/appodeal/ads/u1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/u1$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/u1;)V

    .line 1
    sget-object v1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/u1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/u1$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/u1;Lorg/json/JSONObject;)V

    .line 2
    sget-object p1, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
