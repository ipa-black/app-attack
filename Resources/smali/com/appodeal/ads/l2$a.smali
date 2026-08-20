.class public final Lcom/appodeal/ads/l2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/l2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/l2$a;->a:Lcom/appodeal/ads/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandleError()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2$a;->a:Lcom/appodeal/ads/l2;

    .line 1
    invoke-virtual {v0}, Lcom/appodeal/ads/l2;->f()V

    return-void
.end method

.method public final onHandled()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l2$a;->a:Lcom/appodeal/ads/l2;

    .line 1
    invoke-virtual {v0}, Lcom/appodeal/ads/l2;->f()V

    return-void
.end method

.method public final processClick(Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/l2$a;->a:Lcom/appodeal/ads/l2;

    .line 1
    iget-object v1, v0, Lcom/appodeal/ads/l2;->c:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/l2;->b:Lcom/appodeal/ads/unified/UnifiedNativeAd;

    .line 3
    invoke-virtual {v1, v0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked(Lcom/appodeal/ads/unified/UnifiedNativeAd;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method
