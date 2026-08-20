.class Lcom/appsgeyser/sdk/ads/AdsLoader$1;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdsLoader;->init(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader$1;->this$0:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 67
    invoke-static {}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->getInstance()Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->allowClick()V

    .line 68
    const-string v0, "AUTOCLICK_DETECT"

    const-string v1, "touch detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
